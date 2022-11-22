Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F595633A8D
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 11:50:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E713410E039;
	Tue, 22 Nov 2022 10:50:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC6C910E039;
 Tue, 22 Nov 2022 10:50:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669114243; x=1700650243;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=hTmJOcb2/F7Ns1JLBwhouIBn1IhO1I7OWMGVPOceiuo=;
 b=VXfi/QW28fc+/PX7fGlCqBww5Po7JrSIxucL+LxvxPe0AU2WWXVM+eSH
 iZncjyDpVUuKQCAM0KhAbmtrbTZPGSZNhMpQr60IK/UebrM8IYET4FcGu
 Ztk2cB+09gB2gF0p5706qfSyRtqvsnDXSDBTP1FdnAnR37ta38WvJ/Wom
 jpUxb+ne/BkEvfVcfc97x7ySVjSVdu16kuQPs1X/IPbGQYAahZrXt5WZ9
 YBTc553cw0w6VqujgC+yFrTeVJzn3HgbzjAf/EpdLegjjI5NcWryyUVfm
 mfbw38PWstppjn/pggqDt0n/KVUcW/OUThIIfyQO8bNjMXA+/J0uyESlN w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="312489079"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="312489079"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 02:50:43 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="970428712"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="970428712"
Received: from camorino-mobl.ger.corp.intel.com (HELO [10.213.209.233])
 ([10.213.209.233])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 02:50:40 -0800
Message-ID: <6a465c20-b0a7-4beb-6d1b-4ff66a29975f@linux.intel.com>
Date: Tue, 22 Nov 2022 10:50:38 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Content-Language: en-US
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
References: <20221121145655.75141-1-janusz.krzysztofik@linux.intel.com>
 <20221121145655.75141-3-janusz.krzysztofik@linux.intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20221121145655.75141-3-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v3 2/2] drm/i915: Never return 0 if not all
 requests retired
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
Cc: Daniel Vetter <daniel@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@intel.com>, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <andrzej.hajda@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 21/11/2022 14:56, Janusz Krzysztofik wrote:
> Users of intel_gt_retire_requests_timeout() expect 0 return value on
> success.  However, we have no protection from passing back 0 potentially
> returned by a call to dma_fence_wait_timeout() when it succedes right
> after its timeout has expired.

Is this talking about a potential weakness, or ambiguous kerneldoc, of 
dma_fence_wait_timeout, dma_fence_default_wait and 
i915_request_wait_timeout? They appear to say 0 return means timeout, 
implying unsignaled fence. In other words signaled must return positive 
remaining timeout. Implementations seems to allow a race which indeed 
appears that return 0 and signaled fence is possible.

If dma_fence_wait can indeed return 0 even when a request is signaled, 
then how is timeout ?: -ETIME below correct? It isn't a chance for false 
negative in its' callers?

Regards,

Tvrtko

> Replace 0 with -ETIME before potentially using the timeout value as return
> code, so -ETIME is returned if there are still some requests not retired
> after timeout, 0 otherwise.
> 
> v3: Use conditional expression, more compact but also better reflecting
>      intention standing behind the change.
> 
> v2: Move the added lines down so flush_submission() is not affected.
> 
> Fixes: f33a8a51602c ("drm/i915: Merge wait_for_timelines with retire_request")
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Cc: stable@vger.kernel.org # v5.5+
> ---
>   drivers/gpu/drm/i915/gt/intel_gt_requests.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_requests.c b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> index edb881d756309..1dfd01668c79c 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_requests.c
> @@ -199,7 +199,7 @@ out_active:	spin_lock(&timelines->lock);
>   	if (remaining_timeout)
>   		*remaining_timeout = timeout;
>   
> -	return active_count ? timeout : 0;
> +	return active_count ? timeout ?: -ETIME : 0;
>   }
>   
>   static void retire_work_handler(struct work_struct *work)
