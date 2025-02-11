Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA5F8A3166B
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 21:10:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8930310E745;
	Tue, 11 Feb 2025 20:10:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hjd+XrxT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53E6E10E745;
 Tue, 11 Feb 2025 20:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739304613; x=1770840613;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=3QmQNvz5GlFYsCfk43i0E0xPDFKRw/liAA81RlduhhE=;
 b=hjd+XrxTTGSyXmA63v+ySKsbJexQPiYAFazAYe5yNs/OgROYZ5cOhBLc
 msE+OdmWgfp69KODUJaKj/bhFX/fVgzlILC5Jivktgkkv5o0NBj/n3Y94
 XgYwcKdDo4OfhGQsoXRO2nCcpomDlAZlIfDJ3gYFV7aUfIpaWEbRaO74G
 qI6IGD9byu6ElH+OvPTq/gafmJRLT0xhBqAwkwgTTJk6ZQ7ZtO9yCVKmB
 iWhJ0lzNe8fNjd/rBWtQcZixmI3hsDJn4NmedJaT3UtBrEMOEWPF39HgU
 DWH2QWi/WvZ92h88XSb53yTw1qS37olKXtlF7zA+DGuBS9q9S2FfvI+ot Q==;
X-CSE-ConnectionGUID: FOZwjZC+Q5CcICDoGSzyTA==
X-CSE-MsgGUID: KjbHYaZiTVuceRJrVp3bQg==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="42787657"
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="42787657"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 12:10:12 -0800
X-CSE-ConnectionGUID: xR0MlVInQ2+xAbzaGcsUMQ==
X-CSE-MsgGUID: a2hBiMxhRIy9BA7SFSQwyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,278,1732608000"; d="scan'208";a="112831448"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Feb 2025 12:10:09 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 11 Feb 2025 22:10:08 +0200
Date: Tue, 11 Feb 2025 22:10:08 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v6 07/12] drm/i915/psr: Changes for PSR2_MAN_TRK_CTL
 handling when DSB is in use
Message-ID: <Z6uuoANVyxsbLVYJ@intel.com>
References: <20250127102846.1237560-1-jouni.hogander@intel.com>
 <20250127102846.1237560-8-jouni.hogander@intel.com>
 <Z6oouL3AYZ-JQ7xd@intel.com>
 <0808c3a03225ff734ea3fade879a1b5a39bf67e6.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0808c3a03225ff734ea3fade879a1b5a39bf67e6.camel@intel.com>
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

On Tue, Feb 11, 2025 at 06:24:24AM +0000, Hogander, Jouni wrote:
> On Mon, 2025-02-10 at 18:26 +0200, Ville Syrjälä wrote:
> > On Mon, Jan 27, 2025 at 12:28:41PM +0200, Jouni Högander wrote:
> > > Do needed changes to handle PSR2_MAN_TRK_CTL correctly when DSB is
> > > in use:
> > > 
> > > 1. Write PSR2_MAN_TRK_CTL in commit_pipe_pre_planes only when not
> > > using
> > >    DSB.
> > > 2. Add PSR2_MAN_TRK_CTL writing into DSB commit in
> > >    intel_atomic_dsb_finish.
> > > 
> > > Taking PSR lock over DSB commit is not needed because
> > > PSR2_MAN_TRK_CTL is
> > > now written only by DSB.
> > > 
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > Reviewed-by: Animesh Manna <animesh.manna@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_display.c | 5 ++++-
> > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > > b/drivers/gpu/drm/i915/display/intel_display.c
> > > index aed35f203fd8d..5db2af86d0c8a 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > > @@ -7143,7 +7143,8 @@ static void commit_pipe_pre_planes(struct
> > > intel_atomic_state *state,
> > >  			intel_pipe_fastset(old_crtc_state,
> > > new_crtc_state);
> > >  	}
> > >  
> > > -	intel_psr2_program_trans_man_trk_ctl(NULL,
> > > new_crtc_state);
> > > +	if (!new_crtc_state->use_dsb)
> > > +		intel_psr2_program_trans_man_trk_ctl(NULL,
> > > new_crtc_state);
> > 
> > commit_pipe_pre_planes() is not called when use_dsb==true.
> 
> Couple of lines earlier in same function there is this:
> 
> 	if (!modeset && !new_crtc_state->use_dsb) {
> 
> I followed that in here. Do you still think I should remove checking
> use_dsb from my patch?

Hmm, I guess it was some leftover from some of my earlier attempts
at reusing more of the existing commit path. We could remove it from
there as well for the time being. I suppose we could stick a few
drm_WARN_ON(use_dsb)s into commit_pipe_{pre,post}_planes() and
intel_pipe_update_{start,end}() to make it clear they aren't used
by the full DSB path.

At some point we need to attempt to refactor this stuff into some
kind of more sensible form. But as long as we can't do all the
relevant programming on the DSB it's a bit hard to see what the
end result should look like.

-- 
Ville Syrjälä
Intel
