Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C79624164
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 12:28:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCCEC10E137;
	Thu, 10 Nov 2022 11:28:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ECCBB10E137
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 11:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668079703; x=1699615703;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=QqJwMiMJ+TzMCAosPtEuGD4t94LJbpZKxUCSPsuxlaA=;
 b=AsfqH5aaLHlx10BiQAhZOCqwjbJ3W95lkFMJzhoQoROLDPSa3U1iELP2
 6K9hkVySOzaYfcL8HMo2RcO+Pzc68s3ueVg3IPqanCwC4vBEPq41IiDqc
 6XhzKJirW62RODtyjYK/gX0uLetDLLv2ionlt5wVh265/prmsOlAX5uvU
 NWXcMYzBRt87ZvW21qVK65hcz/X3+ePFC5Vm1y1p2ydLjtvtyKCXq0DEo
 Ngdu4/q9Kbh6M/sVYluto7qa+O/K8U5yzOI+lssHmgIcWrtiY1FwAt0sl
 5nm3/cSbIVwVkUfS2jdSIWa9Hkf3+5l8UmgLW9hZlYtcih3NuFjf/uQmK g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="397581150"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="397581150"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 03:28:23 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10526"; a="812009562"
X-IronPort-AV: E=Sophos;i="5.96,153,1665471600"; d="scan'208";a="812009562"
Received: from psikora-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.17.110])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 03:28:22 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20221110053724.14701-1-anusha.srivatsa@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221110053724.14701-1-anusha.srivatsa@intel.com>
Date: Thu, 10 Nov 2022 13:28:19 +0200
Message-ID: <87o7tf59rg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add missing checks for
 cdclk crawling
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

On Wed, 09 Nov 2022, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> cdclk_sanitize() function was written assuming vco was a signed integer.
> vco gets assigned to -1 (essentially ~0) for the case where PLL
> might be enabled and vco is not a frequency that will ever
> get used. In such a scenario the right thing to do is disable the
> PLL and re-enable it again with a valid frequency.
> However the vco is declared as a unsigned variable.
> With the above assumption, driver takes crawl path when not needed.
> Add explicit check to not crawl in the case of an invalid PLL.
>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Suggested-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 2 ++
>  drivers/gpu/drm/i915/display/intel_cdclk.h | 1 +
>  2 files changed, 3 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm=
/i915/display/intel_cdclk.c
> index 8a9031012d74..91112d266763 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1962,6 +1962,8 @@ static bool intel_cdclk_can_crawl(struct drm_i915_p=
rivate *dev_priv,
>  	if (!HAS_CDCLK_CRAWL(dev_priv))
>  		return false;
>=20=20
> +	if (intel_pll_is_unknown(a->vco))
> +		return false;
>  	/*
>  	 * The vco and cd2x divider will change independently
>  	 * from each, so we disallow cd2x change when crawling.
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm=
/i915/display/intel_cdclk.h
> index c674879a84a5..6eb83d806f11 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> @@ -80,6 +80,7 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state =
*state);
>  	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i=
915(state->base.dev)->display.cdclk.obj))
>  #define intel_atomic_get_new_cdclk_state(state) \
>  	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i=
915(state->base.dev)->display.cdclk.obj))
> +#define intel_pll_is_unknown(vco)	((vco) =3D=3D ~0)

Why here? What does a pll function do in intel_cdclk.h?

BR,
Jani.

>=20=20
>  int intel_cdclk_init(struct drm_i915_private *dev_priv);

--=20
Jani Nikula, Intel Open Source Graphics Center
