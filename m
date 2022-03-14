Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B3B2B4D7EA8
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Mar 2022 10:33:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F240E10E0F4;
	Mon, 14 Mar 2022 09:33:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B09E10E0F4
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Mar 2022 09:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647250387; x=1678786387;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=4y4eEEDMf3vM+84VJI3h1P1l8MKR2CY9wQm7CIPK1E4=;
 b=jj82pZ12HxOYcPXH/QR2XlxViA8iaVluMyUCoKp+HIZqVSvjLdmOfwg3
 cHHIvCP9ofMUxlqSOtgAVnEOCZbaj8dzGZD3a5QonhLlic7WZ5yB/LvsV
 svgl+AgtbkSHgHegF6Rbw8+2WjAkwrVs+nE8WOUSMDBIMPP+bfuhH1iaV
 lqIS7Hm25NLe2mF2ePdGjC6FMZ2sZtKICyv4vah3jZfaq+YUs9svJBO0w
 arzf09Df4b+JhQfsdAFArkw4b7b4bCeslH3X8C+3xIRxZFTrXOQ7tXjqq
 KRnjY7LAouuhr/Aw1FwvCP4tDJMJ67/vwZWXC5XAg7o/KicJwgqBl4TnX g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10285"; a="256166634"
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="256166634"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 02:33:06 -0700
X-IronPort-AV: E=Sophos;i="5.90,180,1643702400"; d="scan'208";a="556330445"
Received: from vmanav-mobl.ger.corp.intel.com (HELO localhost) ([10.252.55.47])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2022 02:33:05 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ashutosh Dixit <ashutosh.dixit@intel.com>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20220311200027.33701-1-ashutosh.dixit@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220311200027.33701-1-ashutosh.dixit@intel.com>
Date: Mon, 14 Mar 2022 11:33:03 +0200
Message-ID: <87k0cwx4j4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Drop redundant IS_VALLEYVIEW
 check in __get_rc6()
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

On Fri, 11 Mar 2022, Ashutosh Dixit <ashutosh.dixit@intel.com> wrote:
> Because VLV_GT_RENDER_RC6 == GEN6_GT_GFX_RC6, the IS_VALLEYVIEW() check is
> not needed. Neither is the check present in other code paths which call
> intel_rc6_residency_ns() (in functions gen6_drpc(), rc6_residency() and
> rc6_residency_ms_show()).

How about removing the dupe register macro while at it so no new users
show up?

BR,
Jani.

>
> Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pmu.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index cfc21042499d..3e3b09588fd3 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -148,10 +148,7 @@ static u64 __get_rc6(struct intel_gt *gt)
>  	struct drm_i915_private *i915 = gt->i915;
>  	u64 val;
>  
> -	val = intel_rc6_residency_ns(&gt->rc6,
> -				     IS_VALLEYVIEW(i915) ?
> -				     VLV_GT_RENDER_RC6 :
> -				     GEN6_GT_GFX_RC6);
> +	val = intel_rc6_residency_ns(&gt->rc6, GEN6_GT_GFX_RC6);
>  
>  	if (HAS_RC6p(i915))
>  		val += intel_rc6_residency_ns(&gt->rc6, GEN6_GT_GFX_RC6p);

-- 
Jani Nikula, Intel Open Source Graphics Center
