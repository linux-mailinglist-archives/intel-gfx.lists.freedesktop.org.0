Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BBA11DB6F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 02:03:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AA5D6E248;
	Fri, 13 Dec 2019 01:03:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 137716E248
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 01:03:08 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Dec 2019 17:03:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,307,1571727600"; d="scan'208";a="239141111"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
 by fmsmga004.fm.intel.com with ESMTP; 12 Dec 2019 17:03:07 -0800
Date: Thu, 12 Dec 2019 17:03:07 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20191213010307.GS85422@mdroper-desk1.amr.corp.intel.com>
References: <20191211211425.17821-1-manasi.d.navare@intel.com>
 <20191211211425.17821-3-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211211425.17821-3-manasi.d.navare@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/dp: Make port sync mode
 assignments only if all tiles present
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

On Wed, Dec 11, 2019 at 01:14:24PM -0800, Manasi Navare wrote:
> Add an extra check before making master slave assignments for tiled
> displays to make sure we make these assignments only if all tiled
> connectors are present. If not then initialize the state to defaults
> so it does a normal non tiled modeset without transcoder port sync.
> =

> Bugzilla: https://gitlab.freedesktop.org/drm/intel/issues/5
> Cc: Ville Syrj=E4l=E4 <ville.syrjala@linux.intel.com>
> Signed-off-by: Manasi Navare <manasi.d.navare@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 28 ++++++++++++++++++--
>  1 file changed, 26 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/d=
rm/i915/display/intel_display.c
> index 7263eaa66cda..c0a2dab3fe67 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -12048,6 +12048,12 @@ static bool c8_planes_changed(const struct intel=
_crtc_state *new_crtc_state)
>  	return !old_crtc_state->c8_planes !=3D !new_crtc_state->c8_planes;
>  }
>  =

> +static void initialize_trans_port_sync_mode_state(struct intel_crtc_stat=
e *crtc_state)

"reset" rather than "initialize" might be more consistent with similar
things elsewhere in the driver?

> +{
> +	crtc_state->master_transcoder =3D INVALID_TRANSCODER;
> +	crtc_state->sync_mode_slaves_mask =3D 0;
> +}
> +
>  static int icl_add_sync_mode_crtcs(struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_crtc *crtc =3D crtc_state->uapi.crtc;
> @@ -12059,11 +12065,22 @@ static int icl_add_sync_mode_crtcs(struct intel=
_crtc_state *crtc_state)
>  	struct drm_crtc *master_crtc =3D NULL;
>  	struct drm_crtc_state *master_crtc_state;
>  	struct intel_crtc_state *master_pipe_config;
> -	int i, tile_group_id;
> +	int i, tile_group_id =3D 0, num_tiled_conns =3D 0;
>  =

>  	if (INTEL_GEN(dev_priv) < 11)
>  		return 0;
>  =

> +	/* If all tiles not present do not make master slave assignments

This comment seems like it should go farther down the function; this
block isn't directly responsible for master/slave assignments, so it's a
bit confusing here.  Also, you might want to clarify what "present"
means in this case.  E.g., explain that since you've already added all
tiles of the same monitor to the transaction (earlier in
intel_atomic_check), then if the number of tiles in the tile group is
smaller than the size of the tile group it means that at least one of
the tiles isn't active.

> +	 * Here we assume all tiles belong to the same tile group for now.

Should this sentence be a FIXME:?  If we plug in 2x 2-tile monitors on
TGL, this would be problematic, right?

The logic changes seem correct (if we assume that only a single tiled
monitor is in use), so

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>


Matt

> +	 */
> +	for_each_new_connector_in_state(&state->base, connector, connector_stat=
e, i) {
> +		if (connector->has_tile) {
> +			if (!tile_group_id)
> +				tile_group_id =3D connector->tile_group->id;
> +			num_tiled_conns++;
> +		}
> +	}
> +
>  	/*
>  	 * In case of tiled displays there could be one or more slaves but ther=
e is
>  	 * only one master. Lets make the CRTC used by the connector correspond=
ing
> @@ -12077,8 +12094,15 @@ static int icl_add_sync_mode_crtcs(struct intel_=
crtc_state *crtc_state)
>  		if (!connector->has_tile)
>  			continue;
>  		if (crtc_state->hw.mode.hdisplay !=3D connector->tile_h_size ||
> -		    crtc_state->hw.mode.vdisplay !=3D connector->tile_v_size)
> +		    crtc_state->hw.mode.vdisplay !=3D connector->tile_v_size) {
> +			initialize_trans_port_sync_mode_state(crtc_state);
>  			return 0;
> +		}
> +		if (connector->tile_group->id =3D=3D tile_group_id &&
> +		    num_tiled_conns < connector->num_h_tile * connector->num_v_tile) {
> +			initialize_trans_port_sync_mode_state(crtc_state);
> +			return 0;
> +		}
>  		if (connector->tile_h_loc =3D=3D connector->num_h_tile - 1 &&
>  		    connector->tile_v_loc =3D=3D connector->num_v_tile - 1)
>  			continue;
> -- =

> 2.19.1
> =

> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx

-- =

Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
