Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF75B493C8D
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Jan 2022 16:05:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7AE7610E18C;
	Wed, 19 Jan 2022 15:05:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E99510E1B8
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Jan 2022 15:05:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642604726; x=1674140726;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=aBk41UnjoVAUenAqQ5pPXoou2kkXaW9Kt7xq+FUrOTg=;
 b=Oy5CA1+teG3JNKRheNUh1879YbI0N1GxnxTZD5eGU3DRFbEbYGrAThQ6
 S3UHj7p1YlS8LpKFc1DuqSv3h3U5kwbwNvEj23CTbRq3UO8M9fBkRnQQt
 dkNLspCN3J+Ja706yaGhgAeiq5rum1EPihCTqkA5p0oguicLtlNcJLyPc
 bC52lSX8OCJ1cRtLRdCtO05ezofEP68kzJ8TY6TMdQlHJaRPhLA5UObwE
 ctbZ4x2petWQ2CCCPOsIcRqFSzCZQ+498JqA2ZdKZwwinhFYNi2fekyp4
 SSGN2vR8rF4W9wrsfqAMG50w67z411iRpFHXJVQk/S8Zk0Vx6B2R61w+B g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10231"; a="245282034"
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="245282034"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 07:05:25 -0800
X-IronPort-AV: E=Sophos;i="5.88,299,1635231600"; d="scan'208";a="532321258"
Received: from elenadel-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.50.196])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2022 07:05:23 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20211208150050.17230-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211208150050.17230-1-ville.syrjala@linux.intel.com>
Date: Wed, 19 Jan 2022 17:05:20 +0200
Message-ID: <87r193bwb3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove zombie async flip vt-d w/a
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

On Wed, 08 Dec 2021, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> This async flip vt-d w/a was moved to a different place in
> commit 7d396cacaea6 ("drm/i195: Make the async flip VT-d workaround
> dynamic") but the drm-intel-fixes cherry-pick commit b2d73debfdc1
> ("drm/i915: Extend the async flip VT-d w/a to skl/bxt") resurrected
> the original code as well. So now we have this w/a in two places.
> Remove the resurrected zombie code.
>
> Not done as a revert to hopefully prevent any kind of
> automagic stable backport.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/intel_pm.c | 12 ------------
>  1 file changed, 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel=
_pm.c
> index fe3787425780..31767c583cd0 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -78,8 +78,6 @@ struct intel_wm_config {
>=20=20
>  static void gen9_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
> -	enum pipe pipe;
> -
>  	if (HAS_LLC(dev_priv)) {
>  		/*
>  		 * WaCompressedResourceDisplayNewHashMode:skl,kbl
> @@ -93,16 +91,6 @@ static void gen9_init_clock_gating(struct drm_i915_pri=
vate *dev_priv)
>  			   SKL_DE_COMPRESSED_HASH_MODE);
>  	}
>=20=20
> -	for_each_pipe(dev_priv, pipe) {
> -		/*
> -		 * "Plane N strech max must be programmed to 11b (x1)
> -		 *  when Async flips are enabled on that plane."
> -		 */
> -		if (!IS_GEMINILAKE(dev_priv) && intel_vtd_active(dev_priv))
> -			intel_uncore_rmw(&dev_priv->uncore, CHICKEN_PIPESL_1(pipe),
> -					 SKL_PLANE1_STRETCH_MAX_MASK, SKL_PLANE1_STRETCH_MAX_X1);
> -	}
> -
>  	/* See Bspec note for PSR2_CTL bit 31, Wa#828:skl,bxt,kbl,cfl */
>  	intel_uncore_write(&dev_priv->uncore, CHICKEN_PAR1_1,
>  		   intel_uncore_read(&dev_priv->uncore, CHICKEN_PAR1_1) | SKL_EDP_PSR_=
FIX_RDWRAP);

--=20
Jani Nikula, Intel Open Source Graphics Center
