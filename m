Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 09CDF666496
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jan 2023 21:10:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10CB310E7FA;
	Wed, 11 Jan 2023 20:10:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com
 [IPv6:2607:f8b0:4864:20::130])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFEE010E7FA
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 20:10:01 +0000 (UTC)
Received: by mail-il1-x130.google.com with SMTP id g2so8431762ila.4
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Jan 2023 12:10:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=RPGWltECFvTSAO9IDV39SyYnrdQ8DKpWZ2MTChQ7D0s=;
 b=KrEuqvJfhr+1i8OCAdlytD7l4HLCO8SoWDbYHRIFW4+s8kTMxU8XVcPeQHxfNSh/o6
 EqoXuseVeHKu6RL8C+NPWF9dqRKConxofNzd1Xmzc/vwWw9nJFWNKRGPjzNfW9y5YS/N
 /BxgUB2puBrCN5pomwukaaGvrADFeWZmVsEuo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=RPGWltECFvTSAO9IDV39SyYnrdQ8DKpWZ2MTChQ7D0s=;
 b=3YLTD2gNuhW9pjYzRMO1Xq7ZjHSKU0EVqLIMGN60LtVi85d/ffhZue/XTQSWOBhnzk
 HmxgqOSUI+rsS/NUZ+0+N5yN9OOqPZ5nBNFJOzD1MIflKEn0idLLx0VC/9U062fTpQla
 NmA8cxJOc/ibddsdGt8fvXAGIOS04aNe8hdAmRkhzXb6JgqBVCHrP4CHHKW94LRrzuFJ
 ZDApAqkaON++p83okB/Tq+tXDTFGyALje/ptUPa057AvV6xBaqMpnFr+4uTPViKuZvDl
 FGIW8fqgthWkX6bxH27yppiLoQK9asMl3AQbHAwOPpToulZ6lYjTkWMiOFzD1pU3mnnt
 /aig==
X-Gm-Message-State: AFqh2kpKzXnK8acLzRlRYsaINBKupQjM/3WZWtxL+R/Hw1b680UkhN57
 EpIqpzh2X0b0zF8pIu7QIU41YQ==
X-Google-Smtp-Source: AMrXdXvXlUUypHPsrdRO1oMP+8k7CiTvNQgVoIHXpuBjwNm6Z6beJiFrAqKvoMMOyI8xydNW6fNWqA==
X-Received: by 2002:a92:dd82:0:b0:30b:fb79:2a2d with SMTP id
 g2-20020a92dd82000000b0030bfb792a2dmr40200476iln.4.1673467800845; 
 Wed, 11 Jan 2023 12:10:00 -0800 (PST)
Received: from chromium.org ([2620:15c:183:200:632c:a4be:969f:51ab])
 by smtp.gmail.com with ESMTPSA id
 b12-20020a056e02184c00b002faf6559e90sm4693523ilv.51.2023.01.11.12.10.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Jan 2023 12:10:00 -0800 (PST)
Date: Wed, 11 Jan 2023 13:09:59 -0700
From: Drew Davenport <ddavenport@chromium.org>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y78Xl/Bi0Aby0iEm@chromium.org>
References: <20230104124448.7418-1-juhapekka.heikkila@gmail.com>
 <Y77FVOCTCWcUI1D+@intel.com> <Y77/40mfSjw28HS9@chromium.org>
 <Y78Qbk4V0hfN2h/D@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y78Qbk4V0hfN2h/D@intel.com>
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

On Wed, Jan 11, 2023 at 09:39:26PM +0200, Ville Syrjälä wrote:
> On Wed, Jan 11, 2023 at 11:28:51AM -0700, Drew Davenport wrote:
> > On Wed, Jan 11, 2023 at 04:19:00PM +0200, Ville Syrjälä wrote:
> > > On Wed, Jan 04, 2023 at 02:44:48PM +0200, Juha-Pekka Heikkila wrote:
> > > > intel_adjusted_rate() didn't take into account src rectangle
> > > > can be less than 1 in width or height.
> > > 
> > > This should not get called in those cases. What does the
> > > backtrace look like?
> > 
> > In my repro of this issue, the backtrace looks as follows:
> > 
> > [  180.798331] RIP: 0010:intel_plane_pixel_rate+0x4a/0x53
> > [  180.798336] Code: <snip long line>
> > [  180.798338] RSP: 0018:ffffb080ce4179b8 EFLAGS: 00010246
> > [  180.798341] RAX: ffffffffffffffff RBX: ffff98cd22a24000 RCX: 0000000000000a00
> > [  180.798343] RDX: 0000000000000000 RSI: ffff98cccbae7000 RDI: 0000000000000000
> > [  180.798346] RBP: ffffb080ce4179b8 R08: 0000000000087780 R09: 0000000000000002
> > [  180.798348] R10: 0000000000000a00 R11: 0000000000000000 R12: 0000000000000000
> > [  180.798350] R13: ffff98cd0e495400 R14: ffff98ccc34e0000 R15: ffff98cccbae7000
> > [  180.798352] FS:  00007b84119b5000(0000) GS:ffff98d02f900000(0000) knlGS:0000000000000000
> > [  180.798354] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [  180.798357] CR2: 00007ffc2d5e4080 CR3: 00000001042ee006 CR4: 0000000000770ee0
> > [  180.798359] PKRU: 55555554
> > [  180.798361] Call Trace:
> > [  180.798364]  <TASK>
> > [  180.798366]  intel_plane_atomic_check_with_state+0x1fd/0x6ea
> > [  180.798370]  ? intel_plane_atomic_check+0x11b/0x145
> > [  180.798373]  intel_atomic_check_planes+0x263/0x7ce
> > [  180.798376]  ? drm_atomic_helper_check_modeset+0x189/0x923
> > [  180.798380]  intel_atomic_check+0x14e4/0x184d
> > [  180.798382]  ? intel_rps_mark_interactive+0x23/0x6a
> > [  180.798386]  drm_atomic_check_only+0x3ec/0x98f
> > [  180.798391]  drm_atomic_commit+0xa2/0x105
> > [  180.798394]  ? drm_atomic_set_fb_for_plane+0x96/0xa5
> > [  180.798397]  drm_atomic_helper_update_plane+0xdc/0x11f
> > [  180.798400]  drm_mode_setplane+0x236/0x30c
> > [  180.798404]  ? drm_any_plane_has_format+0x51/0x51
> > [  180.798407]  drm_ioctl_kernel+0xda/0x14d
> > [  180.798411]  drm_ioctl+0x27e/0x3b4
> > [  180.798414]  ? drm_any_plane_has_format+0x51/0x51
> > [  180.798418]  __se_sys_ioctl+0x7a/0xbc
> > [  180.798421]  do_syscall_64+0x55/0x9d
> > [  180.798424]  ? exit_to_user_mode_prepare+0x3c/0x8b
> > [  180.798427]  entry_SYSCALL_64_after_hwframe+0x61/0xcb
> > 
> > If this function shouldn't be called in such a case, then perhaps
> > I should revist my original attempt at fixing this in
> > https://patchwork.freedesktop.org/patch/516060 by rejecting such a
> > configuration?
> 
> I'm saying that this should be impossible already. At least
> I can't immediately see anything that could call this with
> an invisible plane.

In my repro case, I called drmModeSetPlane with the src_h parameter set
to 65535 (so the largest 16.16 number that's less than one). This got
through any existing checks on the height of the src rect, resulting in
the divide-by-zero error in intel_plane_pixel_rate.

While investigating this, I tried setting src_h to 0, but this
configuration got rejected somewhere along the line before it got
through the intel_plane_pixel_rate.

> 
> > 
> > I'll respond to Alan on that thread.
> > 
> > > 
> > > > 
> > > > Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
> > > > ---
> > > >  drivers/gpu/drm/i915/display/intel_atomic_plane.c | 8 +++++---
> > > >  1 file changed, 5 insertions(+), 3 deletions(-)
> > > > 
> > > > diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > index 10e1fc9d0698..a9948e8d3543 100644
> > > > --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
> > > > @@ -144,7 +144,7 @@ unsigned int intel_adjusted_rate(const struct drm_rect *src,
> > > >  				 const struct drm_rect *dst,
> > > >  				 unsigned int rate)
> > > >  {
> > > > -	unsigned int src_w, src_h, dst_w, dst_h;
> > > > +	unsigned int src_w, src_h, dst_w, dst_h, dst_wh;
> > > >  
> > > >  	src_w = drm_rect_width(src) >> 16;
> > > >  	src_h = drm_rect_height(src) >> 16;
> > > > @@ -155,8 +155,10 @@ unsigned int intel_adjusted_rate(const struct drm_rect *src,
> > > >  	dst_w = min(src_w, dst_w);
> > > >  	dst_h = min(src_h, dst_h);
> > > >  
> > > > -	return DIV_ROUND_UP_ULL(mul_u32_u32(rate, src_w * src_h),
> > > > -				dst_w * dst_h);
> > > > +	/* in case src contained only fractional part */
> > > > +	dst_wh = max(dst_w * dst_h, (unsigned) 1);
> > > > +
> > > > +	return DIV_ROUND_UP_ULL(mul_u32_u32(rate, src_w * src_h), dst_wh);
> > > >  }
> > > >  
> > > >  unsigned int intel_plane_pixel_rate(const struct intel_crtc_state *crtc_state,
> > > > -- 
> > > > 2.37.3
> > > 
> > > -- 
> > > Ville Syrjälä
> > > Intel
> 
> -- 
> Ville Syrjälä
> Intel
