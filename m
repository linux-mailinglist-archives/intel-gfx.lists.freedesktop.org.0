Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C491838878
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 09:07:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9EDF910E13B;
	Tue, 23 Jan 2024 08:07:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B9A110E65E
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 08:07:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705997225; x=1737533225;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bIJRzm9i4Y/ilSFpGFmLBx0yCLlDsPxDByuvBcJn1S8=;
 b=XvN6aiNOW6+8Lt5T4ZFxketGlbucBZx8WbbigjlwMm6vBvXm6Ky+zawL
 YgHlQ/b6UgihaW1aRubG9L7ENC69Ykp5g7JkaPRzW8UkhgXSIVdIHjruS
 Is+1yug9GJlzb8GZpxzm+OtIC67a+dFyAeGfbCoviy0n3rEK+VBzc2euv
 irkcVvieALho2/pNc0PbWE453r5jDw38saYFP5J8fDlkrFE9fgJvB3MgU
 AbdTJcIE9fLr7gqUeoIHZHsF9JakREftcGpjG2moVtMEMgzhMu4/KNWyx
 ZkrfZDAADsTu+d9GGTVqO9lZ+7jrP8SK49fsCD27C/HKuxIDNTRmwhmwE Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="1305677"
X-IronPort-AV: E=Sophos;i="6.05,213,1701158400"; 
   d="scan'208";a="1305677"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2024 00:07:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10961"; a="820002610"
X-IronPort-AV: E=Sophos;i="6.05,213,1701158400"; d="scan'208";a="820002610"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 23 Jan 2024 00:07:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 23 Jan 2024 10:07:00 +0200
Date: Tue, 23 Jan 2024 10:07:00 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: Re: [PATCH] drm/i915/psr: Request modeset on initial commit to
 compute PSR state
Message-ID: <Za9zpJKDG_EMfROZ@intel.com>
References: <20240123071103.2147760-1-jouni.hogander@intel.com>
 <Za9tpxLhbrexGEDG@intel.com>
 <83b0e2b52e2bc8ab1f1ba7f296d7d3b08a0be249.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <83b0e2b52e2bc8ab1f1ba7f296d7d3b08a0be249.camel@intel.com>
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Jan 23, 2024 at 07:57:00AM +0000, Hogander, Jouni wrote:
> On Tue, 2024-01-23 at 09:41 +0200, Ville Syrj�l� wrote:
> > On Tue, Jan 23, 2024 at 09:11:03AM +0200, Jouni H�gander wrote:
> > > We want to request full modeset in initial fast check to force PSR
> > > state
> > > computation. Otherwise PSR is not enabled on initial commit but on
> > > first
> > > commit with modeset or fastset. With this change Initial commit
> > > will still
> > > end up using fastset (unless something else requires full modeset)
> > > as PSR
> > > parameters are not anymore part of intel_pipe_config_compare.
> > 
> > I think I'd prefer to go the oppostie direction and try to get all
> > the full modeset stuff out from the initial commit. The only reason
> > the initial commit was introduced was to compute the plane states
> > due to lack of readout, and then it got extended due to various other
> > hacks. Our goal is to inherit the state from the BIOS so ideally
> > the whole initial_commit thing wouldn't even exist.
> 
> Bios doesn't enable PSR. Do you think this would be better approach ?:
> 
> https://patchwork.freedesktop.org/patch/575368/?series=129023&rev=1
> 
> What we just need is something triggering intel_psr_compute_config +
> psr enable. Maybe that could be separate function doing both and call
> that from intel_initial_commit. If/when we get rid of that
> intel_initial_commit: this function would be called by that new thing.

I don't think we should do anything at all. PSR will get enabled by the
first proper commit, if possible.

> 
> BR,
> 
> Jouni H�gander
> 
> > 
> > > 
> > > Cc: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > > 
> > > Fixes: a480dd59fe25 ("drm/i915/display: No need for full modeset
> > > due to psr")
> > > Signed-off-by: Jouni H�gander <jouni.hogander@intel.com>
> > > ---
> > > �drivers/gpu/drm/i915/display/intel_dp.c� | 8 ++++++++
> > > �drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
> > > �drivers/gpu/drm/i915/display/intel_psr.h | 3 +++
> > > �3 files changed, 11 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
> > > b/drivers/gpu/drm/i915/display/intel_dp.c
> > > index ab415f41924d..143981b91e8b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > > @@ -3326,6 +3326,14 @@ bool intel_dp_initial_fastset_check(struct
> > > intel_encoder *encoder,
> > > ����������������fastset = false;
> > > ��������}
> > > �
> > > +�������if (CAN_PSR(intel_dp)) {
> > > +���������������drm_dbg_kms(&i915->drm, "[ENCODER:%d:%s] Forcing
> > > full modeset to compute PSR state\
> > > +n",
> > > +�������������������������� encoder->base.base.id, encoder-
> > > >base.name);
> > > +���������������crtc_state->uapi.mode_changed = true;
> > > +���������������fastset = false;
> > > +�������}
> > > +
> > > ��������return fastset;
> > > �}
> > > �
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index 1010b8c405df..b6db7dbfaf1a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -173,9 +173,6 @@
> > > � * irrelevant for normal operation.
> > > � */
> > > �
> > > -#define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
> > > -������������������������� (intel_dp)->psr.source_support)
> > > -
> > > �#define CAN_PANEL_REPLAY(intel_dp) ((intel_dp)-
> > > >psr.sink_panel_replay_support && \
> > > ����������������������������������� (intel_dp)-
> > > >psr.source_panel_replay_support)
> > > �
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.h
> > > b/drivers/gpu/drm/i915/display/intel_psr.h
> > > index cde781df84d5..3d9920ebafab 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.h
> > > @@ -21,6 +21,9 @@ struct intel_encoder;
> > > �struct intel_plane;
> > > �struct intel_plane_state;
> > > �
> > > +#define CAN_PSR(intel_dp) ((intel_dp)->psr.sink_support && \
> > > +������������������������� (intel_dp)->psr.source_support)
> > > +
> > > �bool intel_encoder_can_psr(struct intel_encoder *encoder);
> > > �void intel_psr_init_dpcd(struct intel_dp *intel_dp);
> > > �void intel_psr_pre_plane_update(struct intel_atomic_state *state,
> > > -- 
> > > 2.34.1
> > 
> 

-- 
Ville Syrj�l�
Intel
