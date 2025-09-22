Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D092DB9182D
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Sep 2025 15:49:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 66BB810E4AF;
	Mon, 22 Sep 2025 13:49:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hTd4pc4E";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4A2210E1CE;
 Mon, 22 Sep 2025 13:49:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758548991; x=1790084991;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=U0nSVcVam5Q6PA4ukl8fFv0ix5rVSQluPriHihrcV10=;
 b=hTd4pc4EobVZgpUWxmtLp0kP1gCdhNvGT0wU+qkBTeo7raiti1uNWjzD
 im9bgP/QwMg5XgR8uN3Ur+XaUi4XwJgyPhK98LQYwTR/ovnWzhlz0bhJG
 XYXoMQd03V6ok+my9RRb4F+tOE3MoKJHZhaqdbFS9jR5iZRP/oUUVnmcQ
 8YE4MQAntjKwHAKaV2qxB6LIT2OQbBOskrIgmZAAd33pd2fAiFnAQY2Yq
 1oUgMnUL/bUWkQLYBGbkMDibRkdA4ZQmok6ExRbzwurhtFaAOEJ42V7b3
 ESKtjb3alykDUOtO/oL2GaerHCKHa1YlXhWWmj3EjRvyHvgHot8Izldle g==;
X-CSE-ConnectionGUID: M8WB5nkbSFaiLPW158xxlg==
X-CSE-MsgGUID: J3ESVOYORe6JMWB8gSYC0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11561"; a="64633528"
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="64633528"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 06:49:50 -0700
X-CSE-ConnectionGUID: BBt5VDV7R0OciGdVgJLvhw==
X-CSE-MsgGUID: XvmD7qX+TJa2e9nI/DCRIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,285,1751266800"; d="scan'208";a="180882645"
Received: from ijarvine-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.115])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Sep 2025 06:49:49 -0700
Date: Mon, 22 Sep 2025 16:49:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 8/9] drm/i915/display: Wait for scl start instead of
 dsb_wait_vblanks
Message-ID: <aNFT-vRMO4si-cuf@intel.com>
References: <20250921043535.2012978-1-ankit.k.nautiyal@intel.com>
 <20250921043535.2012978-9-ankit.k.nautiyal@intel.com>
 <aNEkV70k8Nv1WFzW@intel.com>
 <2a4fe894-d4ad-44a9-912f-578394f6d2fa@intel.com>
 <aNFSs8KBN3Fzyasz@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aNFSs8KBN3Fzyasz@intel.com>
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

On Mon, Sep 22, 2025 at 04:44:19PM +0300, Ville Syrjälä wrote:
> On Mon, Sep 22, 2025 at 07:04:49PM +0530, Nautiyal, Ankit K wrote:
> > 
> > On 9/22/2025 3:56 PM, Ville Syrjälä wrote:
> > > On Sun, Sep 21, 2025 at 10:05:34AM +0530, Ankit Nautiyal wrote:
> > >> Until LNL, intel_dsb_wait_vblanks() waits for the undelayed vblank start.
> > >> However, from PTL onwards, it waits for the start of the safe window,
> > >> defined by the number of lines programmed in TRANS_SET_CONTEXT_LATENCY.
> > >> This change was introduced to move the SCL window out of the vblank region,
> > >> supporting modes with higher refresh rates and smaller vblanks.
> > >>
> > >> As a result, on PTL+ platforms, the DSB wait for vblank completes exactly
> > >> SCL lines earlier than the undelayed vblank start. Since we use
> > >> intel_dsb_wait_vblanks() to time the send push operation, this causes
> > >> issues when SCL lines are non-zero.
> > >>
> > >> Instead of relying on the helper, instruct the DSB to wait from
> > >> (undelayed vblank start - SCL) to (delayed vblank start - SCL) before
> > >> sending the push. This approach works for both pre-PTL and PTL+ platforms.
> > >>
> > >> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > >> ---
> > >>   drivers/gpu/drm/i915/display/intel_display.c |  2 +-
> > >>   drivers/gpu/drm/i915/display/intel_dsb.c     | 16 ++++++++++++++++
> > >>   drivers/gpu/drm/i915/display/intel_dsb.h     |  2 ++
> > >>   3 files changed, 19 insertions(+), 1 deletion(-)
> > >>
> > >> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > >> index bfeec3706f35..8d78037d5a2a 100644
> > >> --- a/drivers/gpu/drm/i915/display/intel_display.c
> > >> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > >> @@ -7265,7 +7265,7 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
> > >>   				new_crtc_state->dsb_color);
> > >>   
> > >>   	if (new_crtc_state->use_dsb && !intel_color_uses_chained_dsb(new_crtc_state)) {
> > >> -		intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
> > >> +		intel_dsb_wait_for_scl_start(state, new_crtc_state->dsb_commit);
> > >>   
> > >>   		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
> > >>   		intel_dsb_wait_for_scl_lines(state, new_crtc_state->dsb_commit);
> > >> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> > >> index 400dcc87a992..e94a05cc8c82 100644
> > >> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > >> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > >> @@ -826,6 +826,22 @@ void intel_dsb_wait_for_scl_lines(struct intel_atomic_state *state,
> > >>   	intel_dsb_wait_usec(dsb, usecs);
> > >>   }
> > >>   
> > >> +void intel_dsb_wait_for_scl_start(struct intel_atomic_state *state,
> > >> +				  struct intel_dsb *dsb)
> > >> +{
> > >> +	struct intel_crtc *crtc = dsb->crtc;
> > >> +	const struct intel_crtc_state *crtc_state =
> > >> +		intel_pre_commit_crtc_state(state, crtc);
> > >> +	int undelayed_vblank_start = crtc_state->hw.adjusted_mode.crtc_vdisplay;
> > >> +	int delayed_vblank_start = crtc_state->hw.adjusted_mode.crtc_vblank_start;
> > >> +	int start, end;
> > >> +
> > >> +	start = undelayed_vblank_start - crtc_state->set_context_latency;
> > >> +	end = delayed_vblank_start - crtc_state->set_context_latency;
> > > For these we perhaps want something like:
> > >
> > > intel_vrr_safe_window_start()
> > > {
> > > 	if (ptl+)
> > > 		return crtc_vdisplay - set_context_latency;
> > > 	else
> > > 		return crtc_vdisplay;
> > > }
> > >
> > > intel_vrr_vmin_safe_window_end()
> > > {
> > > 	intel_vrr_vmin_vblank_start() - set_context_latency;
> > > }
> > >
> > >> +
> > >> +	intel_dsb_wait_scanline_out(state, dsb, start, end);
> > > And I suspect we want to do this just before the usec wait in
> > > intel_dsb_wait_vblank_delay() (for the VRR case only). No need
> > > to bother higher level code with this, I think.
> > 
> > Ok sure. I will re-arrange this and use the suggested functions for VRR 
> > case.
> > 
> > On quick checking, it seems we need to use start -1 in :
> > 
> > intel_dsb_wait_scanline_out(state, dsb, start -1, end);
> > 
> > I tested with initializing with bigger value (like 5 instead of 1).
> > 
> >  From the dsb utility which you had shared, also we see that it gives 
> > (vactive - scl - 1) as the safe window live status change for PTL.
> 
> The hardware scanline numbers are always off by one (or two) when
> compared to our more sensible software numbers (see
> intel_crtc_scanline_offset()). On this level we're always
> thinking in terms of the sotfware numbers, and dsb_scanline_to_hw()
> will then do the necessary adjustment for us.

I suppose to make our lives easier we could make intel_display_poller
adjust the scanline numbers in a similar fashion. Though we might
want to make that optional so that we can also have it use the
raw hardware numbers as well. I'll see if I can cook up something...

-- 
Ville Syrjälä
Intel
