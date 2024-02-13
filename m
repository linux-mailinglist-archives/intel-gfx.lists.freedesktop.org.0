Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 453E1852C2E
	for <lists+intel-gfx@lfdr.de>; Tue, 13 Feb 2024 10:21:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9BF1D10E03F;
	Tue, 13 Feb 2024 09:21:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dM4Z/Bf3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B98D10E03F
 for <intel-gfx@lists.freedesktop.org>; Tue, 13 Feb 2024 09:21:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1707816096; x=1739352096;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=4y9cCw1Rhvu4POEc2EgQGLt23T/23hbcN3dwvLfY7ro=;
 b=dM4Z/Bf3TknoARcc+9HaNLMiXu7rnMBaNj7rn2pozweqaVVIfqv/Pt4N
 6oQxyK6k8UcANWpJX3H6mn61ovMYGX+qeqkWfKWjSVLAFBTJnRA3FH5BR
 baLmlLWK4S5XUcgbxQuY/Ai1K0nQCDPlEKwB/qXPqZROIxnuJfBBp0cKp
 w8bZKi7KyIv7kLZ3DSc5c0uwQZSJTdDk0tQVmNoyoNElvLIWqLV4BYUxD
 mVx2mWgsxzRZbLNcoBTGcPzvFDDe6dkuxfk0STtzPTksuqNseTChNMHF3
 Laj1T12LJIfDY518JXQIzebXIgVcQv4IUECLGs0JjFNeMC4QZPDZ2zUdd g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10982"; a="19228166"
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; d="scan'208";a="19228166"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 01:21:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,156,1705392000"; 
   d="scan'208";a="3209372"
Received: from snasibli-mobl2.ccr.corp.intel.com (HELO localhost)
 ([10.252.44.50])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Feb 2024 01:21:31 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org
Cc: stanislav.lisovskiy@intel.com, ville.syrjala@linux.intel.com
Subject: Re: [PATCH] drm/i915: Add bigjoiner force enable option to debugfs
In-Reply-To: <20240212125011.66174-1-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240212125011.66174-1-uma.shankar@intel.com>
Date: Tue, 13 Feb 2024 11:21:28 +0200
Message-ID: <87mss490tj.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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

On Mon, 12 Feb 2024, Uma Shankar <uma.shankar@intel.com> wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>
> For validation purposes, it might be useful to be able to
> force Bigjoiner mode, even if current dotclock/resolution
> do not require that.
> Lets add such to option to debugfs.
>
> v2: - Apparently intel_dp_need_bigjoiner can't be used, when
>       debugfs entry is created so lets just check manually
>       the DISPLAY_VER.
>
> v3: - Switch to intel_connector from drm_connector(Jani Nikula)
>     - Remove redundant modeset lock(Jani Nikula)
>     - Use kstrtobool_from_user for boolean value(Jani Nikula)
>
> v4: - Apply the changes to proper function(Jani Nikula)
>
> v5: - Removed unnecessary check from i915_bigjoiner_enable_show
>       (Ville Syrj=C3=A4l=C3=A4)
>     - Added eDP connector check to intel_connector_debugfs_add
>       (Ville Syrj=C3=A4l=C3=A4)
>     - Removed debug message in order to prevent dmesg flooding
>       (Ville Syrj=C3=A4l=C3=A4)
>
> v6: - Assume now always that m->private is intel_connector
>     - Fixed other similar conflicts
>
> v7: - Move bigjoiner force option to intel_connector(Ville Syrj=C3=A4l=C3=
=A4)
>     - Use DEFINE_SHOW_STORE_ATTRIBUTE instead of defining fops
>       manually.(Ville Syrj=C3=A4l=C3=A4)
>
> v8: - Pass intel_connector to debugfs_create_file, instead of drm_connect=
or.
>       (Jani Nikula)
>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

Acked-by: Jani Nikula <jani.nikula@intel.com>


> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 47 +++++++++++++++++++
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  4 +-
>  3 files changed, 52 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 6f2d13c8ccf7..a962b48bcf13 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1391,6 +1391,20 @@ out:	drm_modeset_unlock(&i915->drm.mode_config.con=
nection_mutex);
>  	return ret;
>  }
>=20=20
> +static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
> +{
> +	struct intel_connector *connector =3D m->private;
> +	struct drm_crtc *crtc;
> +
> +	crtc =3D connector->base.state->crtc;
> +	if (connector->base.status !=3D connector_status_connected || !crtc)
> +		return -ENODEV;
> +
> +	seq_printf(m, "Bigjoiner enable: %d\n", connector->force_bigjoiner_enab=
le);
> +
> +	return 0;
> +}
> +
>  static ssize_t i915_dsc_output_format_write(struct file *file,
>  					    const char __user *ubuf,
>  					    size_t len, loff_t *offp)
> @@ -1412,6 +1426,30 @@ static ssize_t i915_dsc_output_format_write(struct=
 file *file,
>  	return len;
>  }
>=20=20
> +static ssize_t i915_bigjoiner_enable_write(struct file *file,
> +					   const char __user *ubuf,
> +					   size_t len, loff_t *offp)
> +{
> +	struct seq_file *m =3D file->private_data;
> +	struct intel_connector *connector =3D m->private;
> +	struct drm_crtc *crtc;
> +	bool bigjoiner_en =3D 0;
> +	int ret;
> +
> +	crtc =3D connector->base.state->crtc;
> +	if (connector->base.status !=3D connector_status_connected || !crtc)
> +		return -ENODEV;
> +
> +	ret =3D kstrtobool_from_user(ubuf, len, &bigjoiner_en);
> +	if (ret < 0)
> +		return ret;
> +
> +	connector->force_bigjoiner_enable =3D bigjoiner_en;
> +	*offp +=3D len;
> +
> +	return len;
> +}
> +
>  static int i915_dsc_output_format_open(struct inode *inode,
>  				       struct file *file)
>  {
> @@ -1505,6 +1543,8 @@ static const struct file_operations i915_dsc_fracti=
onal_bpp_fops =3D {
>  	.write =3D i915_dsc_fractional_bpp_write
>  };
>=20=20
> +DEFINE_SHOW_STORE_ATTRIBUTE(i915_bigjoiner_enable);
> +
>  /*
>   * Returns the Current CRTC's bpc.
>   * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
> @@ -1586,6 +1626,13 @@ void intel_connector_debugfs_add(struct intel_conn=
ector *connector)
>  				    connector, &i915_dsc_fractional_bpp_fops);
>  	}
>=20=20
> +	if (DISPLAY_VER(i915) >=3D 11 &&
> +	    (connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
> +	     connector_type =3D=3D DRM_MODE_CONNECTOR_eDP)) {
> +		debugfs_create_file("i915_bigjoiner_force_enable", 0644, root,
> +				    connector, &i915_bigjoiner_enable_fops);
> +	}
> +
>  	if (connector_type =3D=3D DRM_MODE_CONNECTOR_DSI ||
>  	    connector_type =3D=3D DRM_MODE_CONNECTOR_eDP ||
>  	    connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 01eb6e4e6049..0d4012097db1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -626,6 +626,8 @@ struct intel_connector {
>=20=20
>  	struct intel_dp *mst_port;
>=20=20
> +	bool force_bigjoiner_enable;
> +
>  	struct {
>  		struct drm_dp_aux *dsc_decompression_aux;
>  		u8 dsc_dpcd[DP_DSC_RECEIVER_CAP_SIZE];
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 5045c34a16be..217196196e50 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1205,11 +1205,13 @@ bool intel_dp_need_bigjoiner(struct intel_dp *int=
el_dp,
>  			     int hdisplay, int clock)
>  {
>  	struct drm_i915_private *i915 =3D dp_to_i915(intel_dp);
> +	struct intel_connector *connector =3D intel_dp->attached_connector;
>=20=20
>  	if (!intel_dp_can_bigjoiner(intel_dp))
>  		return false;
>=20=20
> -	return clock > i915->max_dotclk_freq || hdisplay > 5120;
> +	return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
> +	       connector->force_bigjoiner_enable;
>  }
>=20=20
>  static enum drm_mode_status

--=20
Jani Nikula, Intel
