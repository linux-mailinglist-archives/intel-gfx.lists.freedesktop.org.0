Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A930983965
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Sep 2024 00:00:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC7518981D;
	Mon, 23 Sep 2024 22:00:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="S4wqXtI8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31C848981D
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 22:00:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727128802; x=1758664802;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=QP3QyVbSGsE1Sg0kJZLVqCJaadQhTvge3G2nuIrbXPM=;
 b=S4wqXtI8wQLc3PuKmQsgM9O7X1DtI5yaj5k3O1FsxQSSV/vABodBibrA
 TcHPF9gsQBCRMgvUgaHY3EJaajtwcjDokcJni/UWuf0aRqnIN3vj3pkMf
 m9nmJ88AgNIl/kvzoJ4/x/F8WNNrpRFx5kG1TTuJtQp/UsILvdhH65dqm
 Ou8BmVUE12Z2tVGnmpCBJdwi2iibwL1dSZhdv8TuiAYKAib0+s8HdGIKG
 xH8eO2N+pIP6bE71EmB57xjM2vauifynJukXUd+x43esW5QOPkxq5r2aI
 6W7WCIdWyxfdPhkRhsyh5r4oz9Dm+sxrqQJRRqegk50cx6Py0NYfqM88g Q==;
X-CSE-ConnectionGUID: oPQqvHIMRWajJX+zDdaxkg==
X-CSE-MsgGUID: j2Gwg4m8Rf29cy+XlCKQfg==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="25962641"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="25962641"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 15:00:02 -0700
X-CSE-ConnectionGUID: +3BEO0uvRNGHR/sj425XjQ==
X-CSE-MsgGUID: /VKwgOpARDiXt211w7hZrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71342864"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 15:00:00 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 24 Sep 2024 00:59:59 +0300
Date: Tue, 24 Sep 2024 00:59:59 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 5/7] drm/i915: Move the dodgy pre-g4x wm stuff into i9xx_wm
Message-ID: <ZvHk3weWgg6eReeV@intel.com>
References: <20240916162413.8555-1-ville.syrjala@linux.intel.com>
 <20240916162413.8555-6-ville.syrjala@linux.intel.com>
 <cd2ab25264a47c9ad0eaf9d3573a1bc752dc19ac.camel@intel.com>
 <ZvGmyjCKibQywb9a@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZvGmyjCKibQywb9a@intel.com>
X-Patchwork-Hint: comment
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

On Mon, Sep 23, 2024 at 08:35:06PM +0300, Ville Syrj�l� wrote:
> On Sun, Sep 22, 2024 at 10:40:32AM +0000, Govindapillai, Vinod wrote:
> > On Mon, 2024-09-16 at 19:24 +0300, Ville Syrjala wrote:
> > > From: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > > 
> > > As with other watermark calculations, the dodgy pre-g4x
> > > update_wm_{pre,post} flag calcultion would like to know
> > Typo: calculation
> > > if a modeset is about to happen or not, and technically
> > > later stages in the atomic_check() may still flag one.
> > > In practice that shouldn't happen as we don't have dynamic
> > > CDCLK implemented for these old platforms.
> > > 
> > > Regardless it'll be nice to move this old cruft out from
> > > the supposedly platform agnostic plane code.
> > > 
> > > Signed-off-by: Ville Syrj�l� <ville.syrjala@linux.intel.com>
> > 
> > > ---
> > > �drivers/gpu/drm/i915/display/i9xx_wm.c������� | 74 +++++++++++++++++++
> > > �.../gpu/drm/i915/display/intel_atomic_plane.c | 36 ---------
> > > �2 files changed, 74 insertions(+), 36 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> > > index 3151a31a5653..15ed3b810947 100644
> > > --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> > > +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> > > @@ -705,6 +705,76 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
> > > ��������}
> > > �}
> > > �
> > > +static bool i9xx_wm_need_update(const struct intel_plane_state *old_plane_state,
> > > +�������������������������������const struct intel_plane_state *new_plane_state)
> > > +{
> > > +�������/* Update watermarks on tiling or size changes. */
> > > +�������if (old_plane_state->uapi.visible != new_plane_state->uapi.visible)
> > > +���������������return true;
> > > +
> > > +�������if (!old_plane_state->hw.fb || !new_plane_state->hw.fb)
> > > +���������������return false;
> > > +
> > > +�������if (old_plane_state->hw.fb->modifier != new_plane_state->hw.fb->modifier ||
> > > +���������� old_plane_state->hw.rotation != new_plane_state->hw.rotation ||
> > > +���������� drm_rect_width(&old_plane_state->uapi.src) != drm_rect_width(&new_plane_state-
> > > >uapi.src) ||
> > > +���������� drm_rect_height(&old_plane_state->uapi.src) != drm_rect_height(&new_plane_state-
> > > >uapi.src) ||
> > > +���������� drm_rect_width(&old_plane_state->uapi.dst) != drm_rect_width(&new_plane_state-
> > > >uapi.dst) ||
> > > +���������� drm_rect_height(&old_plane_state->uapi.dst) != drm_rect_height(&new_plane_state-
> > > >uapi.dst))
> > > +���������������return true;
> > > +
> > > +�������return false;
> > > +}
> > > +
> > > +static void i9xx_wm_compute(struct intel_crtc_state *new_crtc_state,
> > > +�������������������������� const struct intel_plane_state *old_plane_state,
> > > +�������������������������� const struct intel_plane_state *new_plane_state)
> > > +{
> > > +�������bool turn_off, turn_on, visible, was_visible, mode_changed;
> > > +
> > > +�������mode_changed = intel_crtc_needs_modeset(new_crtc_state);
> > > +�������was_visible = old_plane_state->uapi.visible;
> > > +�������visible = new_plane_state->uapi.visible;
> > > +
> > > +�������if (!was_visible && !visible)
> > > +���������������return;
> > > +
> > > +�������turn_off = was_visible && (!visible || mode_changed);
> > > +�������turn_on = visible && (!was_visible || mode_changed);
> > > +
> > > +�������/* FIXME nuke when all wm code is atomic */
> > > +�������if (turn_on) {
> > > +���������������new_crtc_state->update_wm_pre = true;
> > > +�������} else if (turn_off) {
> > > +���������������new_crtc_state->update_wm_post = true;
> > > +�������} else if (i9xx_wm_need_update(old_plane_state, new_plane_state)) {
> > > +���������������/* FIXME bollocks */
> > > +���������������new_crtc_state->update_wm_pre = true;
> > > +���������������new_crtc_state->update_wm_post = true;
> > > +�������}
> > > +}
> > > +
> > > +static int i9xx_compute_watermarks(struct intel_atomic_state *state,
> > > +��������������������������������� struct intel_crtc *crtc)
> > > +{
> > > +�������struct intel_crtc_state *new_crtc_state =
> > > +���������������intel_atomic_get_new_crtc_state(state, crtc);
> > > +�������const struct intel_plane_state *old_plane_state;
> > > +�������const struct intel_plane_state *new_plane_state;
> > > +�������struct intel_plane *plane;
> > > +�������int i;
> > > +
> > > +�������for_each_oldnew_intel_plane_in_state(state, plane, old_plane_state,
> > > +������������������������������������������� new_plane_state, i) {
> > > +���������������if (plane->pipe != crtc->pipe)
> > > +�����������������������continue;
> > > +
> > > +���������������i9xx_wm_compute(new_crtc_state, old_plane_state, new_plane_state);
> > > +�������}
> > > +
> > > +�������return 0;
> > > +}
> > > +
> > > �/*
> > > � * Documentation says:
> > > � * "If the line size is small, the TLB fetches can get in the way of the
> > > @@ -4056,18 +4126,22 @@ static const struct intel_wm_funcs g4x_wm_funcs = {
> > > �};
> > > �
> > > �static const struct intel_wm_funcs pnv_wm_funcs = {
> > > +�������.compute_watermarks = i9xx_compute_watermarks,
> > > ��������.update_wm = pnv_update_wm,
> > > �};
> > > �
> > > �static const struct intel_wm_funcs i965_wm_funcs = {
> > > +�������.compute_watermarks = i9xx_compute_watermarks,
> > > ��������.update_wm = i965_update_wm,
> > > �};
> > > �
> > > �static const struct intel_wm_funcs i9xx_wm_funcs = {
> > > +�������.compute_watermarks = i9xx_compute_watermarks,
> > > ��������.update_wm = i9xx_update_wm,
> > > �};
> > > �
> > > �static const struct intel_wm_funcs i845_wm_funcs = {
> > > +�������.compute_watermarks = i9xx_compute_watermarks,
> > > ��������.update_wm = i845_update_wm,
> > > �};
> > > �
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > index 2aeb4cd5b5a1..33fec36ec0bd 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > @@ -392,28 +392,6 @@ void intel_plane_set_invisible(struct intel_crtc_state *crtc_state,
> > > ��������plane_state->uapi.visible = false;
> > > �}
> > > �
> > > -/* FIXME nuke when all wm code is atomic */
> > > -static bool intel_wm_need_update(const struct intel_plane_state *old_plane_state,
> > > -������������������������������� const struct intel_plane_state *new_plane_state)
> > > -{
> > > -�������/* Update watermarks on tiling or size changes. */
> > > -�������if (old_plane_state->uapi.visible != new_plane_state->uapi.visible)
> > > -���������������return true;
> > > -
> > > -�������if (!old_plane_state->hw.fb || !new_plane_state->hw.fb)
> > > -���������������return false;
> > > -
> > > -�������if (old_plane_state->hw.fb->modifier != new_plane_state->hw.fb->modifier ||
> > > -���������� old_plane_state->hw.rotation != new_plane_state->hw.rotation ||
> > > -���������� drm_rect_width(&old_plane_state->uapi.src) != drm_rect_width(&new_plane_state-
> > > >uapi.src) ||
> > > -���������� drm_rect_height(&old_plane_state->uapi.src) != drm_rect_height(&new_plane_state-
> > > >uapi.src) ||
> > > -���������� drm_rect_width(&old_plane_state->uapi.dst) != drm_rect_width(&new_plane_state-
> > > >uapi.dst) ||
> > > -���������� drm_rect_height(&old_plane_state->uapi.dst) != drm_rect_height(&new_plane_state-
> > > >uapi.dst))
> > > -���������������return true;
> > > -
> > > -�������return false;
> > > -}
> > > -
> > > �static bool intel_plane_is_scaled(const struct intel_plane_state *plane_state)
> > > �{
> > > ��������int src_w = drm_rect_width(&plane_state->uapi.src) >> 16;
> > > @@ -602,20 +580,6 @@ static int intel_plane_atomic_calc_changes(const struct intel_crtc_state
> > > *old_cr
> > > ���������������������� was_visible, visible,
> > > ���������������������� turn_off, turn_on, mode_changed);
> > > �
> > > -�������if (turn_on) {
> > > -���������������if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
> > > -�����������������������new_crtc_state->update_wm_pre = true;
> > > -�������} else if (turn_off) {
> > > -���������������if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv))
> > > -�����������������������new_crtc_state->update_wm_post = true;
> > > -�������} else if (intel_wm_need_update(old_plane_state, new_plane_state)) {
> > > -���������������if (DISPLAY_VER(dev_priv) < 5 && !IS_G4X(dev_priv)) {
> > > -�����������������������/* FIXME bollocks */
> > > -�����������������������new_crtc_state->update_wm_pre = true;
> > > -�����������������������new_crtc_state->update_wm_post = true;
> > > -���������������}
> > > -�������}
> > > -
> > 
> > With this change, update_wm_pre/post flag will move from intel_atomic_check_planes() to
> > intel_atomic_check_crtcs() which will call compute_watermarks() and update the flag. Just wanted to
> > clarify if this is expected.
> 
> That is the whole point of the patch.

Well, I suppose not quite the whole point, but most of it.
The other purpose was just to get this stuff out from the
platform agnostic code.

-- 
Ville Syrj�l�
Intel
