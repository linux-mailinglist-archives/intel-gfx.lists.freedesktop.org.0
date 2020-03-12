Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A8E0B182D76
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2020 11:27:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C3E656E15B;
	Thu, 12 Mar 2020 10:27:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A68B6E120
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Mar 2020 10:27:11 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 03:27:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,544,1574150400"; d="scan'208";a="266291238"
Received: from unknown (HELO [10.252.53.213]) ([10.252.53.213])
 by fmsmga004.fm.intel.com with ESMTP; 12 Mar 2020 03:27:10 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200311133047.30696-1-chris@chris-wilson.co.uk>
 <20200311133047.30696-3-chris@chris-wilson.co.uk>
From: Lionel Landwerlin <lionel.g.landwerlin@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
 Swindon SN3 1RJ
Message-ID: <bf01c5c6-b90d-0c1d-528c-36f421b601bf@intel.com>
Date: Thu, 12 Mar 2020 12:27:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200311133047.30696-3-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 03/12] drm/i915/perf: Schedule oa_config
 after modifying the contexts
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

On 11/03/2020 15:30, Chris Wilson wrote:
> @@ -2729,16 +2772,19 @@ static const struct i915_perf_stream_ops i915_oa_stream_ops = {
>   
>   static int i915_perf_stream_enable_sync(struct i915_perf_stream *stream)
>   {
> -	struct i915_request *rq;
> +	struct i915_active *active;
> +	int err;
>   
> -	rq = stream->perf->ops.enable_metric_set(stream);
> -	if (IS_ERR(rq))
> -		return PTR_ERR(rq);
> +	active = i915_active_create();
> +	if (!active)
> +		return -ENOMEM;
>   
> -	i915_request_wait(rq, 0, MAX_SCHEDULE_TIMEOUT);
> -	i915_request_put(rq);
> +	err = stream->perf->ops.enable_metric_set(stream, active);
> +	if (err == 0)
> +		i915_active_wait(active, TASK_UNINTERRUPTIBLE);
>   
> -	return 0;
> +	i915_active_put(active);
> +	return err;
>   }
>   
>   /**

No point in capturing the return value of i915_active_wait()?


-Lionel

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
