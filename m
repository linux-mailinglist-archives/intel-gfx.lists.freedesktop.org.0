Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 12477431217
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Oct 2021 10:24:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8D856E091;
	Mon, 18 Oct 2021 08:24:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C66C76E091
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Oct 2021 08:24:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10140"; a="208991516"
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="208991516"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 01:24:27 -0700
X-IronPort-AV: E=Sophos;i="5.85,381,1624345200"; d="scan'208";a="493492531"
Received: from foboril-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.44.188])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2021 01:24:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Matthew Brost <matthew.brost@intel.com>
In-Reply-To: <20211015091129.83226-1-rodrigo.vivi@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211015091129.83226-1-rodrigo.vivi@intel.com>
Date: Mon, 18 Oct 2021 11:24:21 +0300
Message-ID: <87pms2u4ei.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Clean-up bonding debug message.
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

On Fri, 15 Oct 2021, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> We should stop using the gen name and the "+" to reference
> the newer platforms.
> And on this case specifically we can simplify the debug
> message even further.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Matthew Brost <matthew.brost@intel.com>
> Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_context.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> index d225d3dd0b40..30759b651180 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
> @@ -479,7 +479,7 @@ set_proto_ctx_engines_bond(struct i915_user_extension __user *base, void *data)
>  	if (GRAPHICS_VER(i915) >= 12 && !IS_TIGERLAKE(i915) &&
>  	    !IS_ROCKETLAKE(i915) && !IS_ALDERLAKE_S(i915)) {
>  		drm_dbg(&i915->drm,
> -			"Bonding on gen12+ aside from TGL, RKL, and ADL_S not supported\n");
> +			"Bonding not supported on this platform\n");
>  		return -ENODEV;
>  	}

-- 
Jani Nikula, Intel Open Source Graphics Center
