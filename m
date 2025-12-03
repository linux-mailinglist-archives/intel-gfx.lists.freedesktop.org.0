Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 467CBC9F658
	for <lists+intel-gfx@lfdr.de>; Wed, 03 Dec 2025 16:08:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 86B4A10E8AC;
	Wed,  3 Dec 2025 15:08:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HqZSHDhe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DFB4810E8AC;
 Wed,  3 Dec 2025 15:08:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764774511; x=1796310511;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=w/QH5w6cgHfOqxKjvxx5ZiCizJ2quamKlzUFWhow/Nc=;
 b=HqZSHDheDKWOGPX31AQu+7+mXJkgr4WxMfU6y4I3QvAqic7/miYXzHmK
 gg+WsKlmWjCUhMKQ3D+HEdHdVhRCCMlK/LseDB3lyyEPdarPbRKSjX0JD
 BdW/MXnMn1Gp8uhiFK1blf7Yd3aP2jO82Gg0E4PeKapV1GN1jTU6yuw70
 Cho1YgjwYeYDfllRJ6MIC3Faq6pAsyFRuX5TO/VvOioDl8yQ3vHEocSoD
 78PlnO1E0fBW7F8S+TaX+hDTOzP3GQKHKAPVfejAs8gfkmKbjINPVP79Y
 V0PUxrwP2OiB3GHk3eLmr2MckACyU9iP0r1O5ZjIIKa88MGPtAsScP0fW Q==;
X-CSE-ConnectionGUID: tjOx+tA0Tl6CilLlA6B1lw==
X-CSE-MsgGUID: Uaws/8YySoGle0v4ieD+aQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11631"; a="66658004"
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="66658004"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 07:08:31 -0800
X-CSE-ConnectionGUID: jKZarvr2TAiV070XvUKchg==
X-CSE-MsgGUID: nWfnIAKjRUKoe8oZuyctSA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,246,1758610800"; d="scan'208";a="194738415"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.70])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2025 07:08:24 -0800
Date: Wed, 3 Dec 2025 17:08:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 2/3] drm/i915/psr: Perform full frame update on async
 flip
Message-ID: <aTBSYy78qNjFoOOt@intel.com>
References: <20251201132457.624358-1-jouni.hogander@intel.com>
 <20251201132457.624358-3-jouni.hogander@intel.com>
 <aTA5icuJ6UeHdH6g@intel.com>
 <ccbbcdf01c45dba368a8b98cd1fc19ffc90aa0f1.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ccbbcdf01c45dba368a8b98cd1fc19ffc90aa0f1.camel@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Wed, Dec 03, 2025 at 01:58:23PM +0000, Hogander, Jouni wrote:
> On Wed, 2025-12-03 at 15:22 +0200, Ville Syrjälä wrote:
> > On Mon, Dec 01, 2025 at 03:24:56PM +0200, Jouni Högander wrote:
> > > According to bspec selective fetch is not supported with async
> > > flips and
> > > instructing full frame update on async flip.
> > > 
> > > v3:
> > >   - rebase
> > >   - fix old_crtc_state->pipe_srcsz_early_tpt
> > >   - fix using intel_atomic_get_new_crtc_state
> > > v2:
> > >   - check also crtc_state->async_flip_planes in
> > >     psr2_sel_fetch_plane_state_supported
> > > 
> > > Bspec: 55229
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_psr.c | 72 ++++++++++++++------
> > > ----
> > >  1 file changed, 41 insertions(+), 31 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index 15ef3b6caad6..53cf292247d7 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -2728,13 +2728,20 @@ intel_psr2_sel_fetch_et_alignment(struct
> > > intel_atomic_state *state,
> > >   * Plane scaling and rotation is not supported by selective fetch
> > > and both
> > >   * properties can change without a modeset, so need to be check at
> > > every
> > >   * atomic commit.
> > > + *
> > > + * If plane was having async flip previously we can't use
> > > selective
> > > + * fetch as we don't know if the flip is completed.
> > >   */
> > > -static bool psr2_sel_fetch_plane_state_supported(const struct
> > > intel_plane_state *plane_state)
> > > +static bool psr2_sel_fetch_plane_state_supported(const struct
> > > intel_crtc_state *old_crtc_state,
> > > +						 const struct
> > > intel_plane_state *plane_state)
> > >  {
> > > +	struct intel_plane *plane = to_intel_plane(plane_state-
> > > >uapi.plane);
> > > +
> > >  	if (plane_state->uapi.dst.y1 < 0 ||
> > >  	    plane_state->uapi.dst.x1 < 0 ||
> > >  	    plane_state->scaler_id >= 0 ||
> > > -	    plane_state->hw.rotation != DRM_MODE_ROTATE_0)
> > > +	    plane_state->hw.rotation != DRM_MODE_ROTATE_0 ||
> > > +	    old_crtc_state->async_flip_planes & plane->id)
> > 
> > Why are you looking at the old crtc state? There should be nothing of
> > interest to us there.
> 
> To continue keeping CFF bit set if previous update was async flip. This
> is how I understood it (please correct):
> 
> 0. syncronous update
> 
> 1. async_flip:
>    new_crtc_state->async_flip_planes != 0
>    old_crtc_state->async_flip_planes == 0
>    crtc_state->uapi.async_flip == true)
>    -> full frame update
> 
> 2. async_flip:
>    new_crtc_state->async_flip_planes != 0
>    old_crtc_state->async_flip_planes != 0
>    crtc_state->uapi.async_flip == true
>    -> full frame update
> 
> 3. syncronous update
>    new_crtc_state->async_flip_planes == 0
>    old_crtc_state->async_flip_planes != 0
>    crtc_state->uapi.async_flip == false
>    -> full frame update
> 
> 4. syncronous update
>    new_crtc_state->async_flip_planes == 0
>    old_crtc_state->async_flip_planes == 0
>    crtc_state->uapi.async_flip == false
>    -> selective update
> 
> > 
> > >  		return false;
> > >  
> > >  	return true;
> > > @@ -2749,7 +2756,8 @@ static bool
> > > psr2_sel_fetch_plane_state_supported(const struct intel_plane_state
> > >   */
> > >  static bool psr2_sel_fetch_pipe_state_supported(const struct
> > > intel_crtc_state *crtc_state)
> > >  {
> > > -	if (crtc_state->scaler_state.scaler_id >= 0)
> > > +	if (crtc_state->scaler_state.scaler_id >= 0 ||
> > > +	    crtc_state->uapi.async_flip)
> > 
> > I think just checking crtc_state->async_flip_planes!=0 here should be
> > sufficient.
> 
> I'm doing this to handle step 1. above. Alternatively I could check
> both new_crtc_state->async_flip_planes and old_crtc_state-
> >async_flip_planes. When using crtc_state->uapi.async_flip I can decide
> earlier.
> 
> > The rest of the patch seems unnecessary.
> 
> No need to handle selective update where planes having pending async
> flip are not involved?

There won't be pending flips of any kind. We whole CRTC commit queue
is handled in a strict FIFO order (apart from the legacy cursor
special case).

-- 
Ville Syrjälä
Intel
