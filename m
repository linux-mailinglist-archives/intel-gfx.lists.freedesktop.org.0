Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBDA18032A
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2020 17:24:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CF9F6E8B0;
	Tue, 10 Mar 2020 16:24:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CB136E8AC;
 Tue, 10 Mar 2020 16:24:03 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 Mar 2020 09:24:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; d="scan'208";a="236089460"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by orsmga008.jf.intel.com with SMTP; 10 Mar 2020 09:23:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 10 Mar 2020 18:23:57 +0200
Date: Tue, 10 Mar 2020 18:23:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20200310162357.GM13686@intel.com>
References: <20200309213940.27965-1-manasi.d.navare@intel.com>
 <20200309213940.27965-2-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309213940.27965-2-manasi.d.navare@intel.com>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v5 2/2] drm/edid: Add function to parse EDID
 descriptors for adaptive sync limits
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
Cc: intel-gfx@lists.freedesktop.org, Harry Wentland <harry.wentland@amd.com>,
 Kazlauskas Nicholas <Nicholas.Kazlauskas@amd.com>,
 dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 09, 2020 at 02:39:40PM -0700, Manasi Navare wrote:
> Adaptive Sync is a VESA feature so add a DRM core helper to parse
> the EDID's detailed descritors to obtain the adaptive sync monitor range.
> Store this info as part fo drm_display_info so it can be used
> across all drivers.
> This part of the code is stripped out of amdgpu's function
> amdgpu_dm_update_freesync_caps() to make it generic and be used
> across all DRM drivers
> =

> v5:
> * Use the renamed flags
> v4:
> * Use is_display_descriptor() (Ville)
> * Name the monitor range flags (Ville)
> v3:
> * Remove the edid parsing restriction for just DP (Nicholas)
> * Use drm_for_each_detailed_block (Ville)
> * Make the drm_get_adaptive_sync_range function static (Harry, Jani)
> v2:
> * Change vmin and vmax to use u8 (Ville)
> * Dont store pixel clock since that is just a max dotclock
> and not related to VRR mode (Manasi)
> =

> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Cc: Harry Wentland <harry.wentland@amd.com>
> Cc: Clinton A Taylor <clinton.a.taylor@intel.com>
> Cc: Kazlauskas Nicholas <Nicholas.Kazlauskas@amd.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> Reviewed-by: Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
> ---
>  drivers/gpu/drm/drm_edid.c  | 44 +++++++++++++++++++++++++++++++++++++
>  include/drm/drm_connector.h | 22 +++++++++++++++++++
>  2 files changed, 66 insertions(+)
> =

> diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
> index ad41764a4ebe..24b76ae58fdd 100644
> --- a/drivers/gpu/drm/drm_edid.c
> +++ b/drivers/gpu/drm/drm_edid.c
> @@ -4938,6 +4938,47 @@ static void drm_parse_cea_ext(struct drm_connector=
 *connector,
>  	}
>  }
>  =

> +static
> +void get_adaptive_sync_range(struct detailed_timing *timing,
> +			     void *info_adaptive_sync)

closure/data/c is what everyone else calls this. Why are we being
different?

> +{
> +	struct drm_adaptive_sync_info *adaptive_sync =3D info_adaptive_sync;
> +	const struct detailed_non_pixel *data =3D &timing->data.other_data;
> +	const struct detailed_data_monitor_range *range =3D &data->data.range;
> +
> +	if (!is_display_descriptor((const u8 *)timing, EDID_DETAIL_MONITOR_RANG=
E))
> +		return;
> +
> +	/*
> +	 * Check for flag range limits only. If flag =3D=3D 1 then
> +	 * no additional timing information provided.
> +	 * Default GTF, GTF Secondary curve and CVT are not
> +	 * supported
> +	 */
> +	if (range->flags !=3D DRM_EDID_RANGE_LIMITS_ONLY_FLAG)
> +		return;
> +
> +	adaptive_sync->min_vfreq =3D range->min_vfreq;
> +	adaptive_sync->max_vfreq =3D range->max_vfreq;
> +}
> +
> +static
> +void drm_get_adaptive_sync_range(struct drm_connector *connector,
> +				 const struct edid *edid)
> +{
> +	struct drm_display_info *info =3D &connector->display_info;
> +
> +	if (!version_greater(edid, 1, 1))
> +		return;
> +
> +	drm_for_each_detailed_block((u8 *)edid, get_adaptive_sync_range,
> +				    &info->adaptive_sync);
> +
> +	DRM_DEBUG_KMS("Adaptive Sync refresh rate range is %d Hz - %d Hz\n",
> +		      info->adaptive_sync.min_vfreq,
> +		      info->adaptive_sync.max_vfreq);

This seems a bit misleading since these are just the limits from the
range descriptor. We don't know whether adaptive is supported or not.

> +}
> +
>  /* A connector has no EDID information, so we've got no EDID to compute =
quirks from. Reset
>   * all of the values which would have been set from EDID
>   */
> @@ -4960,6 +5001,7 @@ drm_reset_display_info(struct drm_connector *connec=
tor)
>  	memset(&info->hdmi, 0, sizeof(info->hdmi));
>  =

>  	info->non_desktop =3D 0;
> +	memset(&info->adaptive_sync, 0, sizeof(info->adaptive_sync));
>  }
>  =

>  u32 drm_add_display_info(struct drm_connector *connector, const struct e=
did *edid)
> @@ -4975,6 +5017,8 @@ u32 drm_add_display_info(struct drm_connector *conn=
ector, const struct edid *edi
>  =

>  	info->non_desktop =3D !!(quirks & EDID_QUIRK_NON_DESKTOP);
>  =

> +	drm_get_adaptive_sync_range(connector, edid);
> +
>  	DRM_DEBUG_KMS("non_desktop set to %d\n", info->non_desktop);
>  =

>  	if (edid->revision < 3)
> diff --git a/include/drm/drm_connector.h b/include/drm/drm_connector.h
> index 0df7a95ca5d9..2b22c0fa42c4 100644
> --- a/include/drm/drm_connector.h
> +++ b/include/drm/drm_connector.h
> @@ -254,6 +254,23 @@ enum drm_panel_orientation {
>  	DRM_MODE_PANEL_ORIENTATION_RIGHT_UP,
>  };
>  =

> +/**
> + * struct drm_adaptive_sync_info - Panel's Adaptive Sync capabilities for
> + * &drm_display_info
> + *
> + * This struct is used to store a Panel's Adaptive Sync capabilities
> + * as parsed from EDID's detailed monitor range descriptor block.
> + *
> + * @min_vfreq: This is the min supported refresh rate in Hz from
> + *             EDID's detailed monitor range.
> + * @max_vfreq: This is the max supported refresh rate in Hz from
> + *             EDID's detailed monitor range
> + */
> +struct drm_adaptive_sync_info {
> +	u8 min_vfreq;
> +	u8 max_vfreq;
> +};
> +
>  /*
>   * This is a consolidated colorimetry list supported by HDMI and
>   * DP protocol standard. The respective connectors will register
> @@ -473,6 +490,11 @@ struct drm_display_info {
>  	 * @non_desktop: Non desktop display (HMD).
>  	 */
>  	bool non_desktop;
> +
> +	/**
> +	 * @adaptive_sync: Adaptive Sync capabilities of the DP/eDP sink
> +	 */
> +	struct drm_adaptive_sync_info adaptive_sync;
>  };
>  =

>  int drm_display_info_set_bus_formats(struct drm_display_info *info,
> -- =

> 2.19.1

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
