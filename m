Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94B32C9042E
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Nov 2025 23:02:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1549010E822;
	Thu, 27 Nov 2025 22:02:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZtmYcs2j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5850F10E822;
 Thu, 27 Nov 2025 22:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764280942; x=1795816942;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=aPLG3TTU72yV8b/UXlahUVqgS/iG7Aw9mTC9c/gajlw=;
 b=ZtmYcs2jOknY+wAZL7HaobDFnfXz+fdOx6k1bht/A9FJHcAGEIgxdrwv
 hZy3hiqXo4f1mRyrFmq429Koi7GWRI3pt77yAPfYOFpYxE+TtC8oI6xwX
 aV+UpSQ2whXtdLPVigKkNbjrBQ5UZLkFK4Uwa7MojsIOhm1RywYzX2bnj
 161qh6lECJzn6wG8pndpsgBpEzJ/cAlVRIISXM00SsvD++aqOha0P9iYc
 T1CniYSjmt6+B6S7y4/rOmd8+60srhdMkiDwGXF80u+TrXvm7tcALO1it
 2pUxMMK+02I0ZLn8WfhwnHfZf0ViVWyHHCcQHpbPjVlOlKrytD2xSizFs Q==;
X-CSE-ConnectionGUID: N5aYB3r4SZ6/NvKr5sP4+A==
X-CSE-MsgGUID: u1uD0TzASXahy/sYyjna5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="76955164"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="76955164"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 14:02:22 -0800
X-CSE-ConnectionGUID: yhuObwsfR+yhf17yCa7EhA==
X-CSE-MsgGUID: nxlHoQu3SXONi50lRO/gYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="198425072"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.140])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2025 14:02:15 -0800
Date: Fri, 28 Nov 2025 00:02:12 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 2/4] drm/i915/psr: Perform vblank evasion on async flip
 as well for PSR
Message-ID: <aSjKZA17cooYM9Uv@intel.com>
References: <20251125063253.328023-1-jouni.hogander@intel.com>
 <20251125063253.328023-3-jouni.hogander@intel.com>
 <aSYdX7eGVOMapiJ7@intel.com>
 <dbaa6e77740c23604420d9ff5031cddc4bd37108.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <dbaa6e77740c23604420d9ff5031cddc4bd37108.camel@intel.com>
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

On Thu, Nov 27, 2025 at 10:57:09AM +0000, Hogander, Jouni wrote:
> On Tue, 2025-11-25 at 23:19 +0200, Ville Syrjälä wrote:
> > On Tue, Nov 25, 2025 at 08:32:51AM +0200, Jouni Högander wrote:
> > > PSR2_MAN_TRK_CTL[SF Continuous full frame] is sampled on the rising
> > > edge of
> > > delayed vblank. SW must ensure this bit is not changing around
> > > that. Due to
> > > this PSR2 Selective Fetch needs vblank evasion.
> > > 
> > > Currently vblank evasion is not done on async flip. Perform it in
> > > case
> > > required by PSR.
> > > 
> > > Bspec: 50424
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_crtc.c | 6 ++++--
> > >  1 file changed, 4 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > index 153ff4b4b52c..42c4ce07f8c0 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_crtc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
> > > @@ -433,7 +433,8 @@ static bool intel_crtc_needs_vblank_work(const
> > > struct intel_crtc_state *crtc_sta
> > >  		(intel_crtc_needs_color_update(crtc_state) &&
> > >  		 !HAS_DOUBLE_BUFFERED_LUT(display)) &&
> > >  		!intel_color_uses_dsb(crtc_state) &&
> > > -		!crtc_state->use_dsb;
> > > +		!crtc_state->use_dsb &&
> > > +		!crtc_state->do_async_flip;
> > >  }
> > >  
> > >  static void intel_crtc_vblank_work(struct kthread_work *base)
> > > @@ -539,7 +540,8 @@ void intel_pipe_update_start(struct
> > > intel_atomic_state *state,
> > >  	if (new_crtc_state->do_async_flip) {
> > >  		intel_crtc_prepare_vblank_event(new_crtc_state,
> > >  						&crtc-
> > > >flip_done_event);
> > > -		return;
> > > +		if (!intel_psr_needs_evasion(new_crtc_state))
> > > +			return;
> > 
> > I don't think we want hack this into such low level code. We
> > anyway convert the first async flip to a sync flip (see
> > intel_plane_do_async_flip()), so that's when you should disable
> > selective fetch, and keep it disabled afterwards as long as
> > async flips are being requested for the plane by userspace.
> 
> Isn't async flip always initiated by user space (uapi.async_flip == 1)?
> Are you concerned on this sequence:
> 
> 1. async flip on primary plane (full frame update)
> 2. normal flip on secondary plane (selective fetch/update)
> 3. async flip on primary plane (full frame update)
> 
> Is there some problem in performing selective fetch/update on step 2?
> Please note that we are not disabling PSR2 at step 2. We are just
> performing 1 selective fetch/update in between there.

That selective update may pull in planes that are doing async flips
currently, and I'm certain we don't have the code to update the state
tracking to indicate that they're no longer in, what I like to think
as, "async flip mode". I suppose the distinction might not matter
too much for these platforms (assuming has_sel_fetch and
need_async_flip_toggle_wa don't overlap), but we should still keep
the code consistent to make it easier to understand.

I suppose you could handle it correctly by clearing async_flip_planes
in appropriate places, but I still don't like adding yet another
special case to the commit codepaths. I think that code is
complex enough already.

-- 
Ville Syrjälä
Intel
