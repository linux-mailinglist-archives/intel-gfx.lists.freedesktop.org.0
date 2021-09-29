Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A777241CBB4
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Sep 2021 20:20:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 97DBF6E1F9;
	Wed, 29 Sep 2021 18:20:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7329D6E1F9
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Sep 2021 18:20:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10122"; a="225081421"
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="225081421"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Sep 2021 11:20:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,332,1624345200"; d="scan'208";a="520923232"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga001.jf.intel.com with SMTP; 29 Sep 2021 11:20:32 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Sep 2021 21:20:32 +0300
Date: Wed, 29 Sep 2021 21:20:32 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>,
 intel-gfx@lists.freedesktop.org
Message-ID: <YVSucKOlmzx4Uj8G@intel.com>
References: <20210923194617.69136-1-jose.souza@intel.com>
 <20210923194617.69136-4-jose.souza@intel.com>
 <5f2840af-93f9-3493-7e22-e6b88442d992@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5f2840af-93f9-3493-7e22-e6b88442d992@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/display/psr: Handle plane
 restrictions at every page flip
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

On Wed, Sep 29, 2021 at 08:50:12PM +0300, Gwan-gyeong Mun wrote:
> 
> 
> On 9/23/21 10:46 PM, José Roberto de Souza wrote:
> > PSR2 selective is not supported over rotated and scaled planes.
> > We had the rotation check in intel_psr2_sel_fetch_config_valid()
> > but that code path is only execute when a modeset is needed and
> > change those plane parameters do not require a modeset.
> > 
> > Also need to check those restricions in the second
> > for_each_oldnew_intel_plane_in_state() loop because the state could
> > only have a plane that is not affected by those restricitons but
> > the damaged area intersect with planes that has those restrictions,
> > so a full plane fetch is required.
> > 
> > BSpec: 55229
> > Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> > Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> > ---
> >   drivers/gpu/drm/i915/display/intel_psr.c | 45 ++++++++++++++----------
> >   1 file changed, 26 insertions(+), 19 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 1cc4130dec7b1..356e0e96abf4e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -720,11 +720,7 @@ tgl_dc3co_exitline_compute_config(struct intel_dp *intel_dp,
> >   static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
> >   					      struct intel_crtc_state *crtc_state)
> >   {
> > -	struct intel_atomic_state *state = to_intel_atomic_state(crtc_state->uapi.state);
> >   	struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> > -	struct intel_plane_state *plane_state;
> > -	struct intel_plane *plane;
> > -	int i;
> >   
> >   	if (!dev_priv->params.enable_psr2_sel_fetch &&
> >   	    intel_dp->psr.debug != I915_PSR_DEBUG_ENABLE_SEL_FETCH) {
> > @@ -739,14 +735,6 @@ static bool intel_psr2_sel_fetch_config_valid(struct intel_dp *intel_dp,
> >   		return false;
> >   	}
> >   
> > -	for_each_new_intel_plane_in_state(state, plane, plane_state, i) {
> > -		if (plane_state->uapi.rotation != DRM_MODE_ROTATE_0) {
> > -			drm_dbg_kms(&dev_priv->drm,
> > -				    "PSR2 sel fetch not enabled, plane rotated\n");
> > -			return false;
> > -		}
> > -	}
> > -
> >   	/* Wa_14010254185 Wa_14010103792 */
> >   	if (IS_TGL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_C0)) {
> >   		drm_dbg_kms(&dev_priv->drm,
> > @@ -1586,6 +1574,26 @@ static void cursor_area_workaround(const struct intel_plane_state *new_plane_sta
> >   	clip_area_update(pipe_clip, damaged_area);
> >   }
> >   
> > +/*
> > + * TODO: Not clear how to handle planes with negative position,
> > + * also planes are not updated if they have a negative X
> > + * position so for now doing a full update in this cases
> > + *
> > + * Plane scaling and rotation is not supported by selective fetch and both
> > + * properties can change without a modeset, so need to be check at every
> > + * atomic commmit.
> > + */
> > +static bool psr2_sel_fetch_plane_state_supported(const struct intel_plane_state *plane_state)
> > +{
> > +	if (plane_state->uapi.dst.y1 < 0 ||
> > +	    plane_state->uapi.dst.x1 < 0 ||
> intel_atomic_plane_check_clipping() function makes 
> plane_state->uapi.dst.x1 and plane_state->uapi.dst.y1 non-negative 
> values, so there is no need to deal with negative positions here.

Cursor can have negative coordinates as it's hardware that will do the
clipping for us.

> 
> And the rest of the changes look good to me.
> > +	    plane_state->scaler_id >= 0 ||
> > +	    plane_state->uapi.rotation != DRM_MODE_ROTATE_0)
> > +		return false;
> > +
> > +	return true;
> > +}
> > +
> >   int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> >   				struct intel_crtc *crtc)
> >   {
> > @@ -1618,13 +1626,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> >   		    !old_plane_state->uapi.visible)
> >   			continue;
> >   
> > -		/*
> > -		 * TODO: Not clear how to handle planes with negative position,
> > -		 * also planes are not updated if they have a negative X
> > -		 * position so for now doing a full update in this cases
> > -		 */
> > -		if (new_plane_state->uapi.dst.y1 < 0 ||
> > -		    new_plane_state->uapi.dst.x1 < 0) {
> > +		if (!psr2_sel_fetch_plane_state_supported(new_plane_state)) {
> >   			full_update = true;
> >   			break;
> >   		}
> > @@ -1703,6 +1705,11 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
> >   		if (!drm_rect_intersect(&inter, &new_plane_state->uapi.dst))
> >   			continue;
> >   
> > +		if (!psr2_sel_fetch_plane_state_supported(new_plane_state)) {
> > +			full_update = true;
> > +			break;
> > +		}
> > +
> >   		sel_fetch_area = &new_plane_state->psr2_sel_fetch_area;
> >   		sel_fetch_area->y1 = inter.y1 - new_plane_state->uapi.dst.y1;
> >   		sel_fetch_area->y2 = inter.y2 - new_plane_state->uapi.dst.y1;
> > 

-- 
Ville Syrjälä
Intel
