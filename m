Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 250A114C9F9
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2020 12:57:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75F256E321;
	Wed, 29 Jan 2020 11:57:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0AC06E321
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2020 11:57:42 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 29 Jan 2020 03:57:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,377,1574150400"; d="scan'208";a="309386944"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga001.jf.intel.com with SMTP; 29 Jan 2020 03:57:39 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Jan 2020 13:57:38 +0200
Date: Wed, 29 Jan 2020 13:57:38 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20200129115738.GU13686@intel.com>
References: <20200117150551.9836-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117150551.9836-1-jani.nikula@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH] drm/i915/debugfs: remove i915_dpcd file
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 17, 2020 at 05:05:51PM +0200, Jani Nikula wrote:
> We've long had the more generic /dev/drm_dp_auxN devices for the same
> purpose. Drop the redundant and limited DPCD debugfs file.
> =

> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/i915_debugfs.c | 64 -----------------------------
>  1 file changed, 64 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/i915_debugfs.c b/drivers/gpu/drm/i915/i=
915_debugfs.c
> index c05fa4205de8..e320b957b792 100644
> --- a/drivers/gpu/drm/i915/i915_debugfs.c
> +++ b/drivers/gpu/drm/i915/i915_debugfs.c
> @@ -4329,65 +4329,6 @@ int i915_debugfs_register(struct drm_i915_private =
*dev_priv)
>  					minor->debugfs_root, minor);
>  }
>  =

> -struct dpcd_block {
> -	/* DPCD dump start address. */
> -	unsigned int offset;
> -	/* DPCD dump end address, inclusive. If unset, .size will be used. */
> -	unsigned int end;
> -	/* DPCD dump size. Used if .end is unset. If unset, defaults to 1. */
> -	size_t size;
> -	/* Only valid for eDP. */
> -	bool edp;
> -};
> -
> -static const struct dpcd_block i915_dpcd_debug[] =3D {
> -	{ .offset =3D DP_DPCD_REV, .size =3D DP_RECEIVER_CAP_SIZE },
> -	{ .offset =3D DP_PSR_SUPPORT, .end =3D DP_PSR_CAPS },
> -	{ .offset =3D DP_DOWNSTREAM_PORT_0, .size =3D 16 },
> -	{ .offset =3D DP_LINK_BW_SET, .end =3D DP_EDP_CONFIGURATION_SET },
> -	{ .offset =3D DP_SINK_COUNT, .end =3D DP_ADJUST_REQUEST_LANE2_3 },
> -	{ .offset =3D DP_SET_POWER },
> -	{ .offset =3D DP_EDP_DPCD_REV },
> -	{ .offset =3D DP_EDP_GENERAL_CAP_1, .end =3D DP_EDP_GENERAL_CAP_3 },
> -	{ .offset =3D DP_EDP_DISPLAY_CONTROL_REGISTER, .end =3D DP_EDP_BACKLIGH=
T_FREQ_CAP_MAX_LSB },
> -	{ .offset =3D DP_EDP_DBC_MINIMUM_BRIGHTNESS_SET, .end =3D DP_EDP_DBC_MA=
XIMUM_BRIGHTNESS_SET },
> -};
> -
> -static int i915_dpcd_show(struct seq_file *m, void *data)
> -{
> -	struct drm_connector *connector =3D m->private;
> -	struct intel_dp *intel_dp =3D
> -		enc_to_intel_dp(intel_attached_encoder(to_intel_connector(connector)));
> -	u8 buf[16];
> -	ssize_t err;
> -	int i;
> -
> -	if (connector->status !=3D connector_status_connected)
> -		return -ENODEV;
> -
> -	for (i =3D 0; i < ARRAY_SIZE(i915_dpcd_debug); i++) {
> -		const struct dpcd_block *b =3D &i915_dpcd_debug[i];
> -		size_t size =3D b->end ? b->end - b->offset + 1 : (b->size ?: 1);
> -
> -		if (b->edp &&
> -		    connector->connector_type !=3D DRM_MODE_CONNECTOR_eDP)
> -			continue;
> -
> -		/* low tech for now */
> -		if (WARN_ON(size > sizeof(buf)))
> -			continue;
> -
> -		err =3D drm_dp_dpcd_read(&intel_dp->aux, b->offset, buf, size);
> -		if (err < 0)
> -			seq_printf(m, "%04x: ERROR %d\n", b->offset, (int)err);
> -		else
> -			seq_printf(m, "%04x: %*ph\n", b->offset, (int)err, buf);
> -	}
> -
> -	return 0;
> -}
> -DEFINE_SHOW_ATTRIBUTE(i915_dpcd);
> -
>  static int i915_panel_show(struct seq_file *m, void *data)
>  {
>  	struct drm_connector *connector =3D m->private;
> @@ -4552,11 +4493,6 @@ int i915_debugfs_connector_add(struct drm_connecto=
r *connector)
>  	if (!root)
>  		return -ENODEV;
>  =

> -	if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_DisplayPort ||
> -	    connector->connector_type =3D=3D DRM_MODE_CONNECTOR_eDP)
> -		debugfs_create_file("i915_dpcd", S_IRUGO, root,
> -				    connector, &i915_dpcd_fops);
> -
>  	if (connector->connector_type =3D=3D DRM_MODE_CONNECTOR_eDP) {
>  		debugfs_create_file("i915_panel_timings", S_IRUGO, root,
>  				    connector, &i915_panel_fops);
> -- =

> 2.20.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
