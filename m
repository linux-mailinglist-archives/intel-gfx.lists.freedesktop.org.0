Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1A67972DE
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Sep 2023 15:41:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EC0A10E238;
	Thu,  7 Sep 2023 13:41:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4583410E238
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Sep 2023 13:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694094077; x=1725630077;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tIfMXYijMtmwdFLwL8xV+lO5SMtSX4A2SGlxw/ijXL8=;
 b=aYdYE31vAybBAWmfarGbN4UF5tgqIqTuiZNBahtqaJebD6ScBdOLbekb
 erXlCHXKkg/2VPzMsRpIEH/5FPnxw1sSyPbZgYCVvFZ3m/tIrvB5Ej4Ty
 AgANTc1A3ZIviGMqXC7wg4bS1hL2Di34XOc5VH98lCVWpUHC+F5Hyxk/M
 vEap8BmLNkzwPLpZOgGdnRCGeCg3CKHCjGCTVR+PBTwPpdZ7INdT+ebtU
 CfgkMa5/yuiHy1Yf3JJpTGTsQC/2pUVDAvMBlNdGP2Nb9VxlwBdwnAmCp
 +sW5x+XuMVkr8e6zl6Co1oVCHQ0/y8pGqbhPneJUp35uJo3rorrgtbAmu A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="374745733"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="374745733"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 06:41:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10826"; a="988778811"
X-IronPort-AV: E=Sophos;i="6.02,235,1688454000"; d="scan'208";a="988778811"
Received: from mmalyshx-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.35.13])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2023 06:41:14 -0700
Date: Thu, 7 Sep 2023 15:41:11 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Nirmoy Das <nirmoy.das@intel.com>
Message-ID: <ZPnS9+0exyFPAYue@ashyti-mobl2.lan>
References: <20230906113121.30472-1-nirmoy.das@intel.com>
 <20230906113121.30472-3-nirmoy.das@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230906113121.30472-3-nirmoy.das@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/5] drm/i915: Create a kernel context for
 GGTT updates
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
Cc: chris.p.wilson@linux.intel.com, intel-gfx@lists.freedesktop.org,
 matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Nirmoy,

[...]

> +	/* mark the bind context's availability status */
> +	bool bind_context_ready;

Do we need some locking here?

>  	/**
>  	 * pinned_contexts_list: List of pinned contexts. This list is only
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c b/drivers/gpu/drm/i915/gt/intel_gt.c
> index 449f0b7fc843..cd0ff1597db9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> @@ -1019,3 +1019,21 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
>  	else
>  		return I915_MAP_WC;
>  }
> +
> +void intel_gt_bind_context_set_ready(struct intel_gt *gt, bool ready)
> +{
> +	struct intel_engine_cs *engine = gt->engine[BCS0];
> +
> +	if (engine && engine->bind_context)
> +		engine->bind_context_ready = ready;
> +}
> +
> +bool intel_gt_is_bind_context_ready(struct intel_gt *gt)
> +{
> +	struct intel_engine_cs *engine = gt->engine[BCS0];
> +
> +	if (engine)
> +		return engine->bind_context_ready;
> +
> +	return false;
> +}
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 239848bcb2a4..9e70e625cebc 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -180,4 +180,6 @@ enum i915_map_type intel_gt_coherent_map_type(struct intel_gt *gt,
>  					      struct drm_i915_gem_object *obj,
>  					      bool always_coherent);
>  
> +void intel_gt_bind_context_set_ready(struct intel_gt *gt, bool ready);
> +bool intel_gt_is_bind_context_ready(struct intel_gt *gt);

Can you put all this part in patch 4 or make it a separate patch?

Andi
