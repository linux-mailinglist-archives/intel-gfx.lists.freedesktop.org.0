Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8700E477319
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Dec 2021 14:27:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B200A10F3F7;
	Thu, 16 Dec 2021 13:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A48B10F259
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Dec 2021 13:27:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10199"; a="325770139"
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; d="scan'208";a="325770139"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 05:27:34 -0800
X-IronPort-AV: E=Sophos;i="5.88,211,1635231600"; d="scan'208";a="519250371"
Received: from jsarha-mobl.ger.corp.intel.com (HELO [10.249.254.10])
 ([10.249.254.10])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2021 05:27:32 -0800
Message-ID: <77c95e21-747a-87d8-4145-f37f75e76e18@linux.intel.com>
Date: Thu, 16 Dec 2021 14:27:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.0
Content-Language: en-US
To: "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m?= <thomas.hellstrom@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] PM: sleep: Avoid calling put_device() under
 dpm_list_mtx
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 LKML <linux-kernel@vger.kernel.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi, Rafael,

On 11/4/21 18:26, Rafael J. Wysocki wrote:
> It is generally unsafe to call put_device() with dpm_list_mtx held,
> because the given device's release routine may carry out an action
> depending on that lock which then may deadlock, so modify the
> system-wide suspend and resume of devices to always drop dpm_list_mtx
> before calling put_device() (and adjust white space somewhat while
> at it).
>
> For instance, this prevents the following splat from showing up in
> the kernel log after a system resume in certain configurations:


<snip>


> @@ -1748,21 +1769,27 @@ int dpm_suspend(pm_message_t state)
>   		struct device *dev = to_device(dpm_prepared_list.prev);
>   
>   		get_device(dev);
> +
>   		mutex_unlock(&dpm_list_mtx);
>   
>   		error = device_suspend(dev);
>   
>   		mutex_lock(&dpm_list_mtx);
> +
>   		if (error) {
>   			pm_dev_err(dev, state, "", error);
>   			dpm_save_failed_dev(dev_name(dev));
> -			put_device(dev);
> -			break;
> -		}
> -		if (!list_empty(&dev->power.entry))
> +		} else if (!list_empty(&dev->power.entry)) {
>   			list_move(&dev->power.entry, &dpm_suspended_list);
> +		}
> +
> +		mutex_unlock(&dpm_list_mtx);
> +
>   		put_device(dev);
> -		if (async_error)
> +
> +		mutex_lock(&dpm_list_mtx);
> +
> +		if (error || async_error)
>   			break;
>   	}
>   	mutex_unlock(&dpm_list_mtx);
> @@ -1879,6 +1906,7 @@ int dpm_prepare(pm_message_t state)
>   		struct device *dev = to_device(dpm_list.next);
>   
>   		get_device(dev);
> +
>   		mutex_unlock(&dpm_list_mtx);
>   
>   		trace_device_pm_callback_start(dev, "", state.event);
> @@ -1886,21 +1914,23 @@ int dpm_prepare(pm_message_t state)
>   		trace_device_pm_callback_end(dev, error);
>   
>   		mutex_lock(&dpm_list_mtx);
> -		if (error) {
> -			if (error == -EAGAIN) {
> -				put_device(dev);
> -				error = 0;
> -				continue;
> -			}
> +
> +		if (!error) {
> +			dev->power.is_prepared = true;
> +			if (!list_empty(&dev->power.entry))
> +				list_move_tail(&dev->power.entry, &dpm_prepared_list);
> +		} else if (error == -EAGAIN) {
> +			error = 0;
> +		} else {
>   			dev_info(dev, "not prepared for power transition: code %d\n",
>   				 error);
> -			put_device(dev);
> -			break;

It appears the above break disappeared.


>   		}
> -		dev->power.is_prepared = true;
> -		if (!list_empty(&dev->power.entry))
> -			list_move_tail(&dev->power.entry, &dpm_prepared_list);
> +
> +		mutex_unlock(&dpm_list_mtx);
> +
>   		put_device(dev);

Should be

                  if (error)

                         break;

Here?

Symptoms is if we return an error from the device prepare callback, we 
end up spinning forever with little clue what's going on.


> +
> +		mutex_lock(&dpm_list_mtx);
>   	}
>   	mutex_unlock(&dpm_list_mtx);
>   	trace_suspend_resume(TPS("dpm_prepare"), state.event, false);

Thanks,

Thomas


