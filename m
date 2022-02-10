Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E90C84B1906
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 00:07:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8DB710E123;
	Thu, 10 Feb 2022 23:07:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F70210E123
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Feb 2022 23:07:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644534441; x=1676070441;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=ldev3h2nNVedDUaQ/gxsd4VNE8Nybe0aje10rj5ElEM=;
 b=nVV8MWgsLEpAjjuf0ylHy6jFv1QrQgQSUSkDe8cUDE1PnpXvwE9xmyCZ
 vY0+w8mGV02Vbq3JeAqhFrWDAsmsATiSEOkaB74+sAhVESoqTEZlLwbOO
 efYMGI2cTZleumFp/xbC4XW/Hn3EtN9TFzB8V8iNMqbb3xMJnJFXIQMoU
 u1EdjiGIJEG2hBWdNnJAvN8n0EojNArYfe7v0kyIga/L9mQvl4Ng1Adkb
 MCevziH+oVbA+2LYeatnlrqgHM+AJUTq1Sqm2EO5KIukp+zhL2PP1xF5v
 ilr68jvOQtu1nJztJafxpyz1zbOzuVoGpkeOsp4xIJDIZ+eFhDOt5ttP/ A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10254"; a="237015591"
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="237015591"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 15:07:20 -0800
X-IronPort-AV: E=Sophos;i="5.88,359,1635231600"; d="scan'208";a="774046676"
Received: from jjmurray-mobl.amr.corp.intel.com (HELO msatwood-mobl)
 ([10.209.24.65])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2022 15:07:19 -0800
Date: Thu, 10 Feb 2022 15:07:05 -0800
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>;,
 intel-gfx@lists.freedesktop.org
Message-ID: <20220210230705.GC4707@msatwood-mobl>
References: <20220208104524.2516209-1-lucas.demarchi@intel.com>
 <20220208104524.2516209-7-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220208104524.2516209-7-lucas.demarchi@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 06/18] drm/i915/guc: Convert golden
 context init to iosys_map
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Feb 08, 2022 at 02:45:12AM -0800, Lucas De Marchi wrote:
> Now the map is saved during creation, so use it to initialize the
> golden context, reading from shmem and writing to either system or IO
> memory.
> 
> v2: Do not use a map iterator: add an offset to keep track of
> destination
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Cc: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c | 26 ++++++++++------------
>  1 file changed, 12 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> index 9bf9096b8337..b5b3a39f0c28 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_ads.c
> @@ -473,18 +473,16 @@ static struct intel_engine_cs *find_engine_state(struct intel_gt *gt, u8 engine_
>  
>  static void guc_init_golden_context(struct intel_guc *guc)
>  {
> -	struct __guc_ads_blob *blob = guc->ads_blob;
>  	struct intel_engine_cs *engine;
>  	struct intel_gt *gt = guc_to_gt(guc);
> -	u32 addr_ggtt, offset;
> -	u32 total_size = 0, alloc_size, real_size;
> +	unsigned long offset;
> +	u32 addr_ggtt, total_size = 0, alloc_size, real_size;
>  	u8 engine_class, guc_class;
> -	u8 *ptr;
>  
>  	if (!intel_uc_uses_guc_submission(&gt->uc))
>  		return;
>  
> -	GEM_BUG_ON(!blob);
> +	GEM_BUG_ON(iosys_map_is_null(&guc->ads_map));
>  
>  	/*
>  	 * Go back and fill in the golden context data now that it is
> @@ -492,15 +490,13 @@ static void guc_init_golden_context(struct intel_guc *guc)
>  	 */
>  	offset = guc_ads_golden_ctxt_offset(guc);
>  	addr_ggtt = intel_guc_ggtt_offset(guc, guc->ads_vma) + offset;
> -	ptr = ((u8 *)blob) + offset;
>  
>  	for (engine_class = 0; engine_class <= MAX_ENGINE_CLASS; ++engine_class) {
>  		if (engine_class == OTHER_CLASS)
>  			continue;
>  
>  		guc_class = engine_class_to_guc_class(engine_class);
> -
> -		if (!blob->system_info.engine_enabled_masks[guc_class])
> +		if (!ads_blob_read(guc, system_info.engine_enabled_masks[guc_class]))
>  			continue;
>  
>  		real_size = intel_engine_context_size(gt, engine_class);
> @@ -511,18 +507,20 @@ static void guc_init_golden_context(struct intel_guc *guc)
>  		if (!engine) {
>  			drm_err(&gt->i915->drm, "No engine state recorded for class %d!\n",
>  				engine_class);
> -			blob->ads.eng_state_size[guc_class] = 0;
> -			blob->ads.golden_context_lrca[guc_class] = 0;
> +			ads_blob_write(guc, ads.eng_state_size[guc_class], 0);
> +			ads_blob_write(guc, ads.golden_context_lrca[guc_class], 0);
>  			continue;
>  		}
>  
> -		GEM_BUG_ON(blob->ads.eng_state_size[guc_class] !=
> +		GEM_BUG_ON(ads_blob_read(guc, ads.eng_state_size[guc_class]) !=
>  			   real_size - LRC_SKIP_SIZE);
> -		GEM_BUG_ON(blob->ads.golden_context_lrca[guc_class] != addr_ggtt);
> +		GEM_BUG_ON(ads_blob_read(guc, ads.golden_context_lrca[guc_class]) != addr_ggtt);
> +
>  		addr_ggtt += alloc_size;
>  
> -		shmem_read(engine->default_state, 0, ptr, real_size);
> -		ptr += alloc_size;
> +		shmem_read_to_iosys_map(engine->default_state, 0, &guc->ads_map,
> +					offset, real_size);
> +		offset += alloc_size;
>  	}
>  
>  	GEM_BUG_ON(guc->ads_golden_ctxt_size != total_size);
> -- 
> 2.35.1
> 
