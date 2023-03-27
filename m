Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6080F6CA928
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 17:37:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C231B10E38F;
	Mon, 27 Mar 2023 15:37:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB94A10E38F
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 15:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679931462; x=1711467462;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=v9fx4M2ZreyOHlyEvzfEvarP0WBkkr9bZ4dKS6b9m7U=;
 b=CXpeJaalPYqQLqGB9ZObtnZlX3XuzEj9sr8LKWKJSNtJn6BkaMu7Y+2L
 THs88EhF9hIyW63e/rsTlgGhnFCMojq0Z3LN7C+UOmJF3GL9hguBjkBIH
 mRSpozQfoKLF+xXKGtfrxzvfq1hOK7D/HfhWaFgQn9je3pSJTSwL7cH66
 dHmuYuq5REo5M3+/XhfvwWDr01vjmdHmE/I4SH2EWE5J03/oYcWlSrTy0
 f7PTroQdnnfKl06v2c5PxarVjhGPUeaG8BYd35Lg2WF317JBvSPQ/5gfQ
 bykYMBPN6gX0V51rBAGKaKICnwJ+axSuqLYzDtKlKMZOYxo6Q6SHd90bC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="324184957"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="324184957"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 08:37:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="633654553"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="633654553"
Received: from mstancu-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.49.51])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 08:37:20 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230327133942.22063-2-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230327133942.22063-1-ville.syrjala@linux.intel.com>
 <20230327133942.22063-2-ville.syrjala@linux.intel.com>
Date: Mon, 27 Mar 2023 18:37:18 +0300
Message-ID: <87fs9q5hox.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/ips: Add i915_ips_false_color
 debugfs file
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

On Mon, 27 Mar 2023, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Similar to FBC let's expose an debugfs file to control
> IPS false color. Enabling this provides an immediate visual
> feedback on whether IPS is working or not.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/hsw_ips.c        | 58 ++++++++++++++++++-
>  .../gpu/drm/i915/display/intel_display_core.h |  4 ++
>  drivers/gpu/drm/i915/i915_reg.h               |  3 +-
>  3 files changed, 62 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i91=
5/display/hsw_ips.c
> index 47209c858c32..8eca0de065b6 100644
> --- a/drivers/gpu/drm/i915/display/hsw_ips.c
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> @@ -14,6 +14,7 @@ static void hsw_ips_enable(const struct intel_crtc_stat=
e *crtc_state)
>  {
>  	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>  	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	u32 val;
>=20=20
>  	if (!crtc_state->ips_enabled)
>  		return;
> @@ -26,10 +27,15 @@ static void hsw_ips_enable(const struct intel_crtc_st=
ate *crtc_state)
>  	drm_WARN_ON(&i915->drm,
>  		    !(crtc_state->active_planes & ~BIT(PLANE_CURSOR)));
>=20=20
> +	val =3D IPS_ENABLE;
> +
> +	if (i915->display.ips.false_color)
> +		val |=3D IPS_FALSE_COLOR;
> +
>  	if (IS_BROADWELL(i915)) {
>  		drm_WARN_ON(&i915->drm,
>  			    snb_pcode_write(&i915->uncore, DISPLAY_IPS_CONTROL,
> -					    IPS_ENABLE | IPS_PCODE_CONTROL));
> +					    val | IPS_PCODE_CONTROL));
>  		/*
>  		 * Quoting Art Runyan: "its not safe to expect any particular
>  		 * value in IPS_CTL bit 31 after enabling IPS through the
> @@ -37,7 +43,7 @@ static void hsw_ips_enable(const struct intel_crtc_stat=
e *crtc_state)
>  		 * so we need to just enable it and continue on.
>  		 */
>  	} else {
> -		intel_de_write(i915, IPS_CTL, IPS_ENABLE);
> +		intel_de_write(i915, IPS_CTL, val);
>  		/*
>  		 * The bit only becomes 1 in the next vblank, so this wait here
>  		 * is essentially intel_wait_for_vblank. If we don't have this
> @@ -268,6 +274,51 @@ void hsw_ips_get_config(struct intel_crtc_state *crt=
c_state)
>  	}
>  }
>=20=20
> +static int hsw_ips_debugfs_false_color_get(void *data, u64 *val)
> +{
> +	struct intel_crtc *crtc =3D data;
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +
> +	*val =3D i915->display.ips.false_color;
> +
> +	return 0;
> +}
> +
> +static int hsw_ips_debugfs_false_color_set(void *data, u64 val)
> +{
> +	struct intel_crtc *crtc =3D data;
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
> +	struct intel_crtc_state *crtc_state;
> +	int ret;
> +
> +	ret =3D drm_modeset_lock(&crtc->base.mutex, NULL);
> +	if (ret)
> +		return ret;
> +
> +	i915->display.ips.false_color =3D val;
> +
> +	crtc_state =3D to_intel_crtc_state(crtc->base.state);
> +
> +	if (!crtc_state->hw.active)
> +		goto unlock;
> +
> +	if (crtc_state->uapi.commit &&
> +	    !try_wait_for_completion(&crtc_state->uapi.commit->hw_done))
> +		goto unlock;
> +
> +	hsw_ips_enable(crtc_state);
> +
> + unlock:
> +	drm_modeset_unlock(&crtc->base.mutex);
> +
> +	return ret;
> +}
> +
> +DEFINE_DEBUGFS_ATTRIBUTE(hsw_ips_debugfs_false_color_fops,
> +			 hsw_ips_debugfs_false_color_get,
> +			 hsw_ips_debugfs_false_color_set,
> +			 "%llu\n");
> +
>  static int hsw_ips_debugfs_status_show(struct seq_file *m, void *unused)
>  {
>  	struct intel_crtc *crtc =3D m->private;
> @@ -300,6 +351,9 @@ void hsw_ips_crtc_debugfs_add(struct intel_crtc *crtc)
>  	if (!hsw_crtc_supports_ips(crtc))
>  		return;
>=20=20
> +	debugfs_create_file("i915_ips_false_color", 0644, crtc->base.debugfs_en=
try,
> +			    crtc, &hsw_ips_debugfs_false_color_fops);
> +
>  	debugfs_create_file("i915_ips_status", 0444, crtc->base.debugfs_entry,
>  			    crtc, &hsw_ips_debugfs_status_fops);
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/=
gpu/drm/i915/display/intel_display_core.h
> index 0b5509f268a7..e36f88a39b86 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> @@ -418,6 +418,10 @@ struct intel_display {
>  		u32 state;
>  	} hti;
>=20=20
> +	struct {
> +		bool false_color;
> +	} ips;
> +
>  	struct {
>  		struct i915_power_domains domains;
>=20=20
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_=
reg.h
> index f79e8a544f51..9362c42788ef 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1397,7 +1397,8 @@
>  #define IVB_FBC_RT_BASE_UPPER		_MMIO(0x7024)
>=20=20
>  #define IPS_CTL		_MMIO(0x43408)
> -#define   IPS_ENABLE	(1 << 31)
> +#define   IPS_ENABLE		REG_BIT(31)
> +#define   IPS_FALSE_COLOR	REG_BIT(4)
>=20=20
>  #define MSG_FBC_REND_STATE(fbc_id)	_MMIO_PIPE((fbc_id), 0x50380, 0x50384)
>  #define   FBC_REND_NUKE			REG_BIT(2)

--=20
Jani Nikula, Intel Open Source Graphics Center
