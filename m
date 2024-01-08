Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 453B0826B64
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 11:14:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BD65B10E1DB;
	Mon,  8 Jan 2024 10:14:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BE5110E1A1
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 10:14:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704708851; x=1736244851;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=iR9W8AavgMbaD3z7YStw6/P8HaVHhNXHFmItQfE6Rk8=;
 b=P9KV/NP6vbnD7XJ6Fcpde4PA00896eTOy+Ba4D1PC3WKNGvnF6nK/oOG
 hjylRTVD5klkk3gIO8iBYcAJrC18Y4KV0eIPnh1oIGaA9AtdYTd5AtMk3
 IqZ81ARCPk82EFoDIobYcYHM6vGy+SUwbvoFVU9TfxVD4QlwgNxKQx/SM
 blNYY4WSjN6PfsXt7oO/Uf7imsiP0H31iEle5QwFwTNxuB9aJLP2vvoJt
 vCw7ynB07NQtf7obPGh8JFObAe7NI4MhchmpJciXJCw4UxdZR27AAs0Wm
 dmPOpCpHIN5ErNyQDa6gx19abgPHu4Mwbl3CrznVxGOifGqxFEL+q4JUn Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="395008751"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="395008751"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 02:14:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="774455311"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="774455311"
Received: from iboscu-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.36.120])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 02:14:08 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm/i915: Add bigjoiner force enable option to debugfs
In-Reply-To: <20240108085830.18584-2-stanislav.lisovskiy@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240108085830.18584-1-stanislav.lisovskiy@intel.com>
 <20240108085830.18584-2-stanislav.lisovskiy@intel.com>
Date: Mon, 08 Jan 2024 12:14:06 +0200
Message-ID: <87bk9wxhch.fsf@intel.com>
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

On Mon, 08 Jan 2024, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wr=
ote:
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
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 59 +++++++++++++++++++
>  .../drm/i915/display/intel_display_types.h    |  2 +
>  drivers/gpu/drm/i915/display/intel_dp.c       |  3 +-
>  3 files changed, 63 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drive=
rs/gpu/drm/i915/display/intel_display_debugfs.c
> index 915420d0cef8f..aa95ecf2458ee 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -1414,6 +1414,22 @@ out:	drm_modeset_unlock(&dev->mode_config.connecti=
on_mutex);
>  	return ret;
>  }
>=20=20
> +static int i915_bigjoiner_enable_show(struct seq_file *m, void *data)
> +{
> +	struct intel_connector *connector =3D to_intel_connector(m->private);

This expects m->private to be struct drm_connector *.

> +	struct intel_encoder *encoder =3D intel_attached_encoder(connector);
> +	struct intel_dp *intel_dp;
> +
> +	if (!encoder)
> +		return -ENODEV;
> +
> +	intel_dp =3D enc_to_intel_dp(encoder);
> +
> +	seq_printf(m, "Bigjoiner enable: %d\n", intel_dp->force_bigjoiner_enabl=
e);
> +
> +	return 0;
> +}
> +
>  static ssize_t i915_dsc_output_format_write(struct file *file,
>  					    const char __user *ubuf,
>  					    size_t len, loff_t *offp)
> @@ -1435,12 +1451,39 @@ static ssize_t i915_dsc_output_format_write(struc=
t file *file,
>  	return len;
>  }
>=20=20
> +static ssize_t i915_bigjoiner_enable_fops_write(struct file *file,
> +						const char __user *ubuf,
> +						size_t len, loff_t *offp)
> +{
> +	struct seq_file *m =3D file->private_data;
> +	struct intel_connector *connector =3D m->private;

While this one expects it to be struct intel_connector *.

> +	struct intel_encoder *encoder =3D intel_attached_encoder(connector);
> +	struct intel_dp *intel_dp =3D enc_to_intel_dp(encoder);
> +	bool bigjoiner_en =3D 0;

Please initialize bools with true/false, not 0.

> +	int ret;
> +
> +	ret =3D kstrtobool_from_user(ubuf, len, &bigjoiner_en);
> +	if (ret < 0)
> +		return ret;
> +
> +	intel_dp->force_bigjoiner_enable =3D bigjoiner_en;
> +	*offp +=3D len;
> +
> +	return len;
> +}
> +
>  static int i915_dsc_output_format_open(struct inode *inode,
>  				       struct file *file)
>  {
>  	return single_open(file, i915_dsc_output_format_show, inode->i_private);
>  }
>=20=20
> +static int i915_bigjoiner_enable_open(struct inode *inode,
> +				      struct file *file)
> +{
> +	return single_open(file, i915_bigjoiner_enable_show, inode->i_private);
> +}
> +
>  static const struct file_operations i915_dsc_output_format_fops =3D {
>  	.owner =3D THIS_MODULE,
>  	.open =3D i915_dsc_output_format_open,
> @@ -1529,6 +1572,15 @@ static const struct file_operations i915_dsc_fract=
ional_bpp_fops =3D {
>  	.write =3D i915_dsc_fractional_bpp_write
>  };
>=20=20
> +static const struct file_operations i915_bigjoiner_enable_fops =3D {
> +	.owner =3D THIS_MODULE,
> +	.open =3D i915_bigjoiner_enable_open,
> +	.read =3D seq_read,
> +	.llseek =3D seq_lseek,
> +	.release =3D single_release,
> +	.write =3D i915_bigjoiner_enable_fops_write
> +};
> +
>  /*
>   * Returns the Current CRTC's bpc.
>   * Example usage: cat /sys/kernel/debug/dri/0/crtc-0/i915_current_bpc
> @@ -1611,6 +1663,13 @@ void intel_connector_debugfs_add(struct intel_conn=
ector *intel_connector)
>  				    connector, &i915_dsc_fractional_bpp_fops);
>  	}
>=20=20
> +	if (DISPLAY_VER(dev_priv) >=3D 11 &&
> +	    (intel_connector->base.connector_type =3D=3D DRM_MODE_CONNECTOR_Dis=
playPort ||
> +	     intel_connector->base.connector_type =3D=3D DRM_MODE_CONNECTOR_eDP=
)) {
> +		debugfs_create_file("i915_bigjoiner_force_enable", 0644, root,
> +				    &intel_connector->base, &i915_bigjoiner_enable_fops);
> +	}
> +
>  	if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_DSI ||
>  	    connector->connector_type =3D=3D DRM_MODE_CONNECTOR_eDP ||
>  	    connector->connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||

You're on some old baseline. Please rebase.

> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers=
/gpu/drm/i915/display/intel_display_types.h
> index 9a44350ba05dd..559302ff79c1a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1764,6 +1764,8 @@ struct intel_dp {
>  	bool is_mst;
>  	int active_mst_links;
>=20=20
> +	bool force_bigjoiner_enable;
> +
>  	/* connector directly attached - won't be use for modeset in mst world =
*/
>  	struct intel_connector *attached_connector;
>=20=20
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i9=
15/display/intel_dp.c
> index 54bd0bffa9f08..5b8411b9fc30b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1172,7 +1172,8 @@ bool intel_dp_need_bigjoiner(struct intel_dp *intel=
_dp,
>  	if (!intel_dp_can_bigjoiner(intel_dp))
>  		return false;
>=20=20
> -	return clock > i915->max_dotclk_freq || hdisplay > 5120;
> +	return clock > i915->max_dotclk_freq || hdisplay > 5120 ||
> +	       intel_dp->force_bigjoiner_enable;
>  }
>=20=20
>  static enum drm_mode_status

--=20
Jani Nikula, Intel
