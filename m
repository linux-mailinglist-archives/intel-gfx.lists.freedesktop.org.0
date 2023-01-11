Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BF05F6663D4
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 20:39:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C0FC10E7F1;
	Wed, 11 Jan 2023 19:39:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ABE1E10E7F1
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 19:39:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673465970; x=1705001970;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=4HYHWn5J9GcU3GWYwOko65Ujy2yrNww8NN1++1lyoEw=;
 b=HwzXVcu3dxPOeEOZc5bmuZ69Bz/N8SMbzp2cDhpv9V3BylLkiVpwH4uH
 Dc4LKeH1d5WBKoXpvdx8MamFA0sLbxca2RiJr2PrFrU5cM4o5uypLbKU2
 FTHowJ4NFyIC15zgev85dJnf5n3pSCgZcv7E0rIBDLaglS790hBBnQC7Z
 SQ/BwOh0iLQphO05IRuii5pbnyuY0RhWw4N/mhqOaKlXmWAwjmgK2rllZ
 ZKz2Yi/u2wmT68kpys+dru2tYv4GVNHn/nQOdad/swK4+RMlVKVOSawu2
 1zpXHs5QtfDwzuvSayOm13cjKyoUcHsLLqlFg+3emA1+fzHyBKbafrOqg w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="385829265"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="385829265"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 11:39:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="650870771"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="650870771"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 11 Jan 2023 11:39:27 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Jan 2023 21:39:26 +0200
Date: Wed, 11 Jan 2023 21:39:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Drew Davenport <ddavenport@chromium.org>
Message-ID: <Y78Qbk4V0hfN2h/D@intel.com>
References: <20230104124448.7418-1-juhapekka.heikkila@gmail.com>
 <Y77FVOCTCWcUI1D+@intel.com> <Y77/40mfSjw28HS9@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y77/40mfSjw28HS9@chromium.org>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: assume some pixelrate for
 src smaller than 1
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 11, 2023 at 11:28:51AM -0700, Drew Davenport wrote:
> On Wed, Jan 11, 2023 at 04:19:00PM +0200, Ville Syrjälä wrote:
> > On Wed, Jan 04, 2023 at 02:44:48PM +0200, Juha-Pekka Heikkila wrote:
> > > intel_adjusted_rate() didn't take into account src rectangle
> > > can be less than 1 in width or height.
> > 
> > This should not get called in those cases. What does the
> > backtrace look like?
> 
> In my repro of this issue, the backtrace looks as follows:
> 
> [  180.798331] RIP: 0010:intel_plane_pixel_rate+0x4a/0x53
> [  180.798336] Code: <snip long line>
> [  180.798338] RSP: 0018:ffffb080ce4179b8 EFLAGS: 00010246
> [  180.798341] RAX: ffffffffffffffff RBX: ffff98cd22a24000 RCX: 0000000000000a00
> [  180.798343] RDX: 0000000000000000 RSI: ffff98cccbae7000 RDI: 0000000000000000
> [  180.798346] RBP: ffffb080ce4179b8 R08: 0000000000087780 R09: 0000000000000002
> [  180.798348] R10: 0000000000000a00 R11: 0000000000000000 R12: 0000000000000000
> [  180.798350] R13: ffff98cd0e495400 R14: ffff98ccc34e0000 R15: ffff98cccbae7000
> [  180.798352] FS:  00007b84119b5000(0000) GS:ffff98d02f900000(0000) knlGS:0000000000000000
> [  180.798354] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> [  180.798357] CR2: 00007ffc2d5e4080 CR3: 00000001042ee006 CR4: 0000000000770ee0
> [  180.798359] PKRU: 55555554
> [  180.798361] Call Trace:
> [  180.798364]  <TASK>
> [  180.798366]  intel_plane_atomic_check_with_state+0x1fd/0x6ea
> [  180.798370]  ? intel_plane_atomic_check+0x11b/0x145
> [  180.798373]  intel_atomic_check_planes+0x263/0x7ce
> [  180.798376]  ? drm_atomic_helper_check_modeset+0x189/0x923
> [  180.798380]  intel_atomic_check+0x14e4/0x184d
> [  180.798382]  ? intel_rps_mark_interactive+0x23/0x6a
> [  180.798386]  drm_atomic_check_only+0x3ec/0x98f
> [  180.798391]  drm_atomic_commit+0xa2/0x105
> [  180.798394]  ? drm_atomic_set_fb_for_plane+0x96/0xa5
> [  180.798397]  drm_atomic_helper_update_plane+0xdc/0x11f
> [  180.798400]  drm_mode_setplane+0x236/0x30c
> [  180.798404]  ? drm_any_plane_has_format+0x51/0x51
> [  180.798407]  drm_ioctl_kernel+0xda/0x14d
> [  180.798411]  drm_ioctl+0x27e/0x3b4
> [  180.798414]  ? drm_any_plane_has_format+0x51/0x51
> [  180.798418]  __se_sys_ioctl+0x7a/0xbc
> [  180.798421]  do_syscall_64+0x55/0x9d
> [  180.798424]  ? exit_to_user_mode_prepare+0x3c/0x8b
> [  180.798427]  entry_SYSCALL_64_after_hwframe+0x61/0xcb
> 
> If this function shouldn't be called in such a case, then perhaps
> I should revist my original attempt at fixing this in
> https://patchwork.freedesktop.org/patch/516060 by rejecting such a
> configuration?

I'm saying that this should be impossible already. At least
I can't immediately see anything that could call this with
an invisible plane.

> 
> I'll respond to Alan on that thread.
> 
> > 
> > > 
> > > Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 +++++---
> > >  1 file changed, 5 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > index 10e1fc9d0698..a9948e8d3543 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > @@ -144,7 +144,7 @@ unsigned int intel_adjusted_rate(const struct drm_rect *src,
> > >  				 const struct drm_rect *dst,
> > >  				 unsigned int rate)
> > >  {
> > > -	unsigned int src_w, src_h, dst_w, dst_h;
> > > +	unsigned int src_w, src_h, dst_w, dst_h, dst_wh;
> > >  
> > >  	src_w = drm_rect_width(src) >> 16;
> > >  	src_h = drm_rect_height(src) >> 16;
> > > @@ -155,8 +155,10 @@ unsigned int intel_adjusted_rate(const struct drm_rect *src,
> > >  	dst_w = min(src_w, dst_w);
> > >  	dst_h = min(src_h, dst_h);
> > >  
> > > -	return DIV_ROUND_UP_ULL(mul_u32_u32(rate, src_w * src_h),
> > > -				dst_w * dst_h);
> > > +	/* in case src contained only fractional part */
> > > +	dst_wh = max(dst_w * dst_h, (unsigned) 1);
> > > +
> > > +	return DIV_ROUND_UP_ULL(mul_u32_u32(rate, src_w * src_h), dst_wh);
> > >  }
> > >  
> > >  unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
> > > -- 
> > > 2.37.3
> > 
> > -- 
> > Ville Syrjälä
> > Intel

-- 
Ville Syrjälä
Intel
