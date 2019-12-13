Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 092E311EBD6
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 21:28:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E79506EDB5;
	Fri, 13 Dec 2019 20:28:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 571D16EDB5
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 20:28:52 +0000 (UTC)
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 Dec 2019 12:28:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,311,1571727600"; d="scan'208";a="211474318"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by fmsmga007.fm.intel.com with SMTP; 13 Dec 2019 12:28:49 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Dec 2019 22:28:49 +0200
Date: Fri, 13 Dec 2019 22:28:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Manasi Navare <manasi.d.navare@intel.com>
Message-ID: <20191213202849.GF1208@intel.com>
References: <20191211211425.17821-1-manasi.d.navare@intel.com>
 <20191211211425.17821-3-manasi.d.navare@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211211425.17821-3-manasi.d.navare@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
> +	 * Here we assume all tiles belong to the same tile group for now.
> +	 */
> +	for_each_new_connector_in_state(&state->base, connector, connector_stat=
e, i) {
> +		if (connector->has_tile) {
> +			if (!tile_group_id)
> +				tile_group_id =3D connector->tile_group->id;

Isn't 0 a valid tile group id?

> +			num_tiled_conns++;
> +		}

This whole thing looks confused. Should it not just look for the same
tile group as what the current connector belongs to?

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

This whole thing seems kinda overly complicated. I suggest it should
just blindly go through all connectors of the same tile group and pick
the lowest transcoder as the master, which is the logic Jose is using
for MST. Except I guess we have to special case the EDP transcoder
for port sync since it can't be a slave. So a simple numeric comparison
won't quite do like used for MST.

And then we should probably move this thing to the encoder
.compute_config(). I suppose it should look in the end something like:

compute_config() {
	...
	crtc_state->master =3D compute_master_transcoder();
	crtc_state->slaves =3D 0;
	if (master_transcoder =3D=3D cpu_transcoder)
		crtc_state->master =3D INVALID;
		crtc_state->slave =3D compute_slave_transcoders();
	}
}

That keeps it very readable and avoids the confusing stuff of
comptue_config() for one pipe randomly mutating the states of
the other pipes.

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
