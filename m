Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A1AB8750AA9
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jul 2023 16:17:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2476F10E549;
	Wed, 12 Jul 2023 14:17:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB2BD10E54C
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jul 2023 14:17:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689171469; x=1720707469;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=AuyVEcooSblYkH7mRERhhbmTItjlfBoVyrwir1rOEF4=;
 b=K1C1i8V32LXsHGJzhA1mlXUCKdaeVJsl0vn0zqDpxQQ2v0Ifn5hC/m5G
 UA/nvbc1UmOKBIvJjGbB8SSdRdLugIkBr8S12caOKIaefhXY/zqyAKLGW
 gWdfzTf2JXfJdeGn1rCcpES+FPxZblzyviHsUTuwM7AsQjGqMK74fBOFj
 /TT557NrAJsE2XTRoKwYKEAyWNJFcSJdedBsnH3aipQNUHNnxDOLeySqT
 a7hE6p0SXg/BAB/GEDZjPpDr1W9uUjoVQk1Twto3gWKac0WhNt9v9NT7f
 W91UG7m+caeWCaMHT8e8zp3eYus+H/tACVM5ol1f/9KCoprCYZOR0O92L A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="367517306"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="367517306"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 07:17:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10769"; a="895645498"
X-IronPort-AV: E=Sophos;i="6.01,199,1684825200"; d="scan'208";a="895645498"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.49.252])
 ([10.252.49.252])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jul 2023 07:17:47 -0700
Message-ID: <2fcc7f87-c94a-e593-e76d-1f8b79827509@linux.intel.com>
Date: Wed, 12 Jul 2023 16:17:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Andi Shyti <andi.shyti@linux.intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
References: <20230627094327.134775-1-andi.shyti@linux.intel.com>
 <20230627094327.134775-3-andi.shyti@linux.intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20230627094327.134775-3-andi.shyti@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v2 2/4] drm/i915/gt: Ensure memory quiesced
 before invalidation
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
Cc: Intel GFX <intel-gfx@lists.freedesktop.org>,
 Matt Roper <matthew.d.roper@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Andi and Jonathan,

On 6/27/2023 11:43 AM, Andi Shyti wrote:
> From: Jonathan Cavitt <jonathan.cavitt@intel.com>
>
> All memory traffic must be quiesced before requesting
> an aux invalidation on platforms that use Aux CCS.
>
> Fixes: 972282c4cf24 ("drm/i915/gen12: Add aux table invalidate for all engines")
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Signed-off-by: Andi Shyti <andi.shyti@linux.intel.com>
> Cc: <stable@vger.kernel.org> # v5.8+
> ---
>   drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 7 +++++++
>   1 file changed, 7 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index 563efee055602..e10e1ad0e841f 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -202,6 +202,13 @@ int gen12_emit_flush_rcs(struct i915_request *rq, u32 mode)
>   {
>   	struct intel_engine_cs *engine = rq->engine;
>   
> +	/*
> +	 * Aux invalidations on Aux CCS platforms require
> +	 * memory traffic is quiesced prior.

I see that we are doing aux inval on EMIT_INVALIDATE so it make sense to

  do if ((mode & EMIT_INVALIDATE) && !HAS_FLAT_CCS(engine->i915) )

> +	 */
> +	if (!HAS_FLAT_CCS(engine->i915))
> +		mode |= EMIT_FLUSH;

I think this generic EMIT_FLUSH is not enough. I seeing some missing 
flags for PIPE_CONTROL

As per https://gfxspecs.intel.com/Predator/Home/Index/43904. It makes 
sense to move this to a

new function given the complexity of PIPE_CONTROL flags requires for this.


Regards,

Nirmoy


> +
>   	if (mode & EMIT_FLUSH) {
>   		u32 flags = 0;
>   		int err;
