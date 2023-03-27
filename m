Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A1D6CA925
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 17:37:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4387A10E38B;
	Mon, 27 Mar 2023 15:37:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1001A10E38F
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 15:37:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679931457; x=1711467457;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=21YiSRM6MiQNs3To0uPqnr2P8ie4NxWCmohYNTnL37A=;
 b=NYLGp5JIs75AjPIXLEgg5UaxyHKpF1WceVDBER5T+BT58gbD9CGiS7Pt
 qehCVfCmLBx9apwwkynmgcnyDQvb7oGnxDgq9dR7ejIHj5fNgNFoiT24d
 Zdp543pth4qNKwq2fCp3jgaSAcN/HGm26e6Xl1v6HCt5w70RWEUIflFmX
 T9AtgV1bU0OI1N/B5vMZy1yDDwyv9oUjNJsQ7QUkaR1QYjZ18nDEKYT+b
 YbyFQRwcBT3WJVuHArSzr7NbKzv89GY/qDMus9RQXUMYVWXf3UTKhjA4V
 u8jOiX4H/JAR3OVhLRuX2FjnMlyitdJ65sVLucC5oqlAG0GgRu2dKvEcx A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="324184877"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="324184877"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 08:37:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="633654453"
X-IronPort-AV: E=Sophos;i="5.98,295,1673942400"; d="scan'208";a="633654453"
Received: from mstancu-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.49.51])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 08:37:09 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20230327133942.22063-1-ville.syrjala@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20230327133942.22063-1-ville.syrjala@linux.intel.com>
Date: Mon, 27 Mar 2023 18:37:07 +0300
Message-ID: <87ilem5hp8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/ips: Make IPS debugfs per-crtc
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
> IPS is a per-pipe feature, so let's move the debugfs stuff
> under the crtc directory, and only register it when IPS
> is actually available.
>
> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>

Yay!

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
>  drivers/gpu/drm/i915/display/hsw_ips.c            | 15 +++++++--------
>  drivers/gpu/drm/i915/display/hsw_ips.h            |  3 +--
>  .../gpu/drm/i915/display/intel_display_debugfs.c  |  2 +-
>  3 files changed, 9 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.c b/drivers/gpu/drm/i91=
5/display/hsw_ips.c
> index 2910f5d0f3e2..47209c858c32 100644
> --- a/drivers/gpu/drm/i915/display/hsw_ips.c
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.c
> @@ -270,12 +270,10 @@ void hsw_ips_get_config(struct intel_crtc_state *cr=
tc_state)
>=20=20
>  static int hsw_ips_debugfs_status_show(struct seq_file *m, void *unused)
>  {
> -	struct drm_i915_private *i915 =3D m->private;
> +	struct intel_crtc *crtc =3D m->private;
> +	struct drm_i915_private *i915 =3D to_i915(crtc->base.dev);
>  	intel_wakeref_t wakeref;
>=20=20
> -	if (!HAS_IPS(i915))
> -		return -ENODEV;
> -
>  	wakeref =3D intel_runtime_pm_get(&i915->runtime_pm);
>=20=20
>  	seq_printf(m, "Enabled by kernel parameter: %s\n",
> @@ -297,10 +295,11 @@ static int hsw_ips_debugfs_status_show(struct seq_f=
ile *m, void *unused)
>=20=20
>  DEFINE_SHOW_ATTRIBUTE(hsw_ips_debugfs_status);
>=20=20
> -void hsw_ips_debugfs_register(struct drm_i915_private *i915)
> +void hsw_ips_crtc_debugfs_add(struct intel_crtc *crtc)
>  {
> -	struct drm_minor *minor =3D i915->drm.primary;
> +	if (!hsw_crtc_supports_ips(crtc))
> +		return;
>=20=20
> -	debugfs_create_file("i915_ips_status", 0444, minor->debugfs_root,
> -			    i915, &hsw_ips_debugfs_status_fops);
> +	debugfs_create_file("i915_ips_status", 0444, crtc->base.debugfs_entry,
> +			    crtc, &hsw_ips_debugfs_status_fops);
>  }
> diff --git a/drivers/gpu/drm/i915/display/hsw_ips.h b/drivers/gpu/drm/i91=
5/display/hsw_ips.h
> index 7ed6061874f7..4eb83b350791 100644
> --- a/drivers/gpu/drm/i915/display/hsw_ips.h
> +++ b/drivers/gpu/drm/i915/display/hsw_ips.h
> @@ -8,7 +8,6 @@
>=20=20
>  #include <linux/types.h>
>=20=20
> -struct drm_i915_private;
>  struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
> @@ -23,6 +22,6 @@ bool hsw_crtc_state_ips_capable(const struct intel_crtc=
_state *crtc_state);
>  int hsw_ips_compute_config(struct intel_atomic_state *state,
>  			   struct intel_crtc *crtc);
>  void hsw_ips_get_config(struct intel_crtc_state *crtc_state);
> -void hsw_ips_debugfs_register(struct drm_i915_private *i915);
> +void hsw_ips_crtc_debugfs_add(struct intel_crtc *crtc);
>=20=20
>  #endif /* __HSW_IPS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index cc5026272558..d5715ccc37f0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1092,7 +1092,6 @@ void intel_display_debugfs_register(struct drm_i915=
_private *i915)
>  				 ARRAY_SIZE(intel_display_debugfs_list),
>  				 minor->debugfs_root, minor);
>=20=20
> -	hsw_ips_debugfs_register(i915);
>  	intel_dmc_debugfs_register(i915);
>  	intel_fbc_debugfs_register(i915);
>  	intel_hpd_debugfs_register(i915);
> @@ -1461,6 +1460,7 @@ void intel_crtc_debugfs_add(struct intel_crtc *crtc)
>  	crtc_updates_add(crtc);
>  	intel_drrs_crtc_debugfs_add(crtc);
>  	intel_fbc_crtc_debugfs_add(crtc);
> +	hsw_ips_crtc_debugfs_add(crtc);
>=20=20
>  	debugfs_create_file("i915_current_bpc", 0444, root, crtc,
>  			    &i915_current_bpc_fops);

--=20
Jani Nikula, Intel Open Source Graphics Center
