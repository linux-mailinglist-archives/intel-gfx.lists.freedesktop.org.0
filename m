Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BABC3188B16
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Mar 2020 17:50:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 191336E2E9;
	Tue, 17 Mar 2020 16:50:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95EBA6E2E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Mar 2020 16:50:07 +0000 (UTC)
IronPort-SDR: g3ghVszKOZAY+I9bYiBThGBof474U3hcdsidGCIpwwpz1EdaUoVKXThK3hRw6efJZxUacVMN6R
 y0Tphgqqk8wA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 09:50:06 -0700
IronPort-SDR: GKwLi1yc+lJi8EHiWwNg0XYP8pdTZUyQz23SDDvScSJkJhLXeSyBNGZ8d+j4AbrIjjZean3w7K
 kGuSuZ5mGQFg==
X-IronPort-AV: E=Sophos;i="5.70,565,1574150400"; d="scan'208";a="417603955"
Received: from sitzik-mobl.ger.corp.intel.com (HELO [10.252.54.144])
 ([10.252.54.144])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2020 09:50:05 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200317163208.30010-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <2a5f1822-8d2e-5d7e-2588-af1f91b9af1d@linux.intel.com>
Date: Tue, 17 Mar 2020 16:50:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200317163208.30010-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Always reschedule the new
 heartbeat
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 17/03/2020 16:32, Chris Wilson wrote:
> In order to better respond to new heartbeat intervals given via sysfs,
> always reprogramme an active heartbeat upon change (i.e. use
> mod_delayed_work to reschedule rather than queue_delayed_work which
> ignores an already active work.)
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> index dd825718e4e5..5136c8bf112d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_heartbeat.c
> @@ -31,7 +31,7 @@ static bool next_heartbeat(struct intel_engine_cs *engine)
>   	delay = msecs_to_jiffies_timeout(delay);
>   	if (delay >= HZ)
>   		delay = round_jiffies_up_relative(delay);
> -	schedule_delayed_work(&engine->heartbeat.work, delay);
> +	mod_delayed_work(system_wq, &engine->heartbeat.work, delay);
>   
>   	return true;
>   }
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

What about the transition from disabled (or long) preempt timeout to a 
normal one?

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
