Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B307A32EEC
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 19:53:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E0EB10E967;
	Wed, 12 Feb 2025 18:53:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZruEOxYq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B9B010E960;
 Wed, 12 Feb 2025 18:53:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739386382; x=1770922382;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tLfcv997DcIyEXikigRXDGgfzBhPb7jQYK8XtyEIz+4=;
 b=ZruEOxYqsCB6aQIaVuIiwxZ2C9HswF1/bOPdxfS3iogA5ZoqPVVHYD/z
 7fVYaZras6K/GCy25hTszjVTTIIeV62sgXKUxmsBFoOzgere4E4ulEIq/
 rl9p+t+sXOpr99Yxk+JTjzKVTkXFgdLi7YQ1T+S1PwDiNUgCpmcMshahY
 DfR4lyqn2yAFYYkX1vtfYdH4VO1vt6jOJw0Wqd5tk17UJhQsuEryOoM3P
 XTwkeyhV7Hemf4czq6v2Ur8pnwTJSwa9sRrz2kGagP7NeLzPyQSuMTltX
 RlEYRkPgIoPvqwqHh5NFMFPw1mmw7V+rBtM7sQKrvk8TQe4hun4wk4fgD g==;
X-CSE-ConnectionGUID: TklSVxsTR7CRUyVc9VHmpQ==
X-CSE-MsgGUID: jnzMcY8XSOuJtw5cjoOtjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="40325759"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="40325759"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 10:53:01 -0800
X-CSE-ConnectionGUID: GwLD/TU/S2ekn0hjRT1R+w==
X-CSE-MsgGUID: g+FFZQy3RR+fsdRlZB96Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="113105797"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Feb 2025 10:52:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 12 Feb 2025 20:52:57 +0200
Date: Wed, 12 Feb 2025 20:52:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v7 13/13] drm/i915/psr: Allow DSB usage when PSR is enabled
Message-ID: <Z6zuCf810-kO2gYF@intel.com>
References: <20250212075742.995022-1-jouni.hogander@intel.com>
 <20250212075742.995022-15-jouni.hogander@intel.com>
 <Z6y1s4Unvrx0Vn8z@intel.com>
 <98c28e897fe049bc9751d0afaf80c7b7bdce1750.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <98c28e897fe049bc9751d0afaf80c7b7bdce1750.camel@intel.com>
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

On Wed, Feb 12, 2025 at 06:22:21PM +0000, Hogander, Jouni wrote:
> On Wed, 2025-02-12 at 16:52 +0200, Ville Syrjälä wrote:
> > On Wed, Feb 12, 2025 at 09:57:42AM +0200, Jouni Högander wrote:
> > > Now as we have correct PSR2_MAN_TRK_CTL handling in place we can
> > > allow DSB
> > > usage also when PSR is enabled for LunarLake onwards.
> > > 
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > Reviewed-by: Animesh Manna <animesh.manna@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index 0ba85623835c..a6966a664d87 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -7698,6 +7698,7 @@ static void intel_atomic_dsb_prepare(struct
> > > intel_atomic_state *state,
> > >  static void intel_atomic_dsb_finish(struct intel_atomic_state
> > > *state,
> > >  				    struct intel_crtc *crtc)
> > >  {
> > > +	struct intel_display *display = to_intel_display(state);
> > >  	const struct intel_crtc_state *old_crtc_state =
> > >  		intel_atomic_get_old_crtc_state(state, crtc);
> > >  	struct intel_crtc_state *new_crtc_state =
> > > @@ -7713,7 +7714,7 @@ static void intel_atomic_dsb_finish(struct
> > > intel_atomic_state *state,
> > >  	new_crtc_state->use_dsb =
> > >  		new_crtc_state->update_planes &&
> > >  		!new_crtc_state->do_async_flip &&
> > > -		!new_crtc_state->has_psr &&
> > > +		(DISPLAY_VER(display) >= 20 || !new_crtc_state-
> > > >has_psr) &&
> > 
> > Couldn't we also do it for !selective_fetch on earlier platforms?
> 
> I was thinking this as well, but I haven't tested it. I'm concerned are
> of frontbuffer invalidates/flushes. There we are disabling PSR. I'm not
> sure if it would be ok to do that while DSB update is ongoing.

As long as we don't touch any PSR registers via the DSB I don't
really see why it shouldn't work. Whether the PSR exit gets 
triggered by the DSB, some random event, of the PSR code poking
at the control register or CURSURFLIVE it shouldn't really matter.

But better smoke test it first before flipping the switch I guess.

-- 
Ville Syrjälä
Intel
