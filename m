Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6526C3727
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Mar 2023 17:41:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D268410E7E9;
	Tue, 21 Mar 2023 16:41:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8D8610E7E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Mar 2023 16:41:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679416893; x=1710952893;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=td3IjsD8p/J+t3iaTPLHSmIFnQIDjQzvF9lnQQiBfBY=;
 b=Dl/DK25msdwBUueYx8p9Btp8W0WxPB75roPMmghpwX7/hUcQyg7pGESm
 HZEYiYg8XKVwQ5K2QZ+CO/4bsQvOoiXqpI6zzTHEl3w01lsp9d29pQ9Ei
 /H4tqUv2ZOyHC2ePtjFvuPmRYgKZ5HqWPZN9PgZJP+3zFZlAapsZOj6Er
 sPuwpa0lnkh47qtj82Y06DHKIQMhf65W5ZrpjpRsvOFQ4StfZcZNZh/Pa
 AnCBR3MAD5Xfo4kxHa025NkRyrVM4BRyHzk46UIzYpyoBDIEvRTtFBlWf
 h2zmgpRS9w4+URYYEaxMvyr/BRNzeB0bznSwPvpLAz/zR+jZipb0drJWd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="403880055"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="403880055"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2023 09:41:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10656"; a="714061006"
X-IronPort-AV: E=Sophos;i="5.98,279,1673942400"; d="scan'208";a="714061006"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga001.jf.intel.com with SMTP; 21 Mar 2023 09:41:30 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 21 Mar 2023 18:41:29 +0200
Date: Tue, 21 Mar 2023 18:41:29 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <ZBneOZk2vsvCZzHB@intel.com>
References: <20230320165945.3564891-1-jouni.hogander@intel.com>
 <20230320165945.3564891-4-jouni.hogander@intel.com>
 <ZBnQmxYHDiii0FGn@intel.com>
 <3949ac3ef5e631323813faac33053d144d02b810.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3949ac3ef5e631323813faac33053d144d02b810.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v3 3/4] drm/i915/psr: Check that vblank is
 long enough for psr2
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

On Tue, Mar 21, 2023 at 04:14:57PM +0000, Hogander, Jouni wrote:
> On Tue, 2023-03-21 at 17:43 +0200, Ville Syrjälä wrote:
> > On Mon, Mar 20, 2023 at 06:59:44PM +0200, Jouni Högander wrote:
> > > Ensure vblank >= psr2 vblank
> > > where
> > > Psr2 vblank = PSR2_CTL Block Count Number maximum line count.
> > > 
> > > Bspec: 71580, 49274
> > > 
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_psr.c | 8 ++++++++
> > >  1 file changed, 8 insertions(+)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > > b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index 1050d777a108..1b40d9c73c18 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -958,6 +958,14 @@ static bool intel_psr2_config_valid(struct
> > > intel_dp *intel_dp,
> > >                 return false;
> > >         }
> > >  
> > > +       /* Vblank >= PSR2_CTL Block Count Number maximum line count
> > > */
> > > +       if (crtc_state->hw.adjusted_mode.crtc_vblank_end -
> > > +           crtc_state->hw.adjusted_mode.crtc_vblank_start < 12) {
> > 
> > Why 12? Shouldn't it be based on the wake_lines/BLOCK_COUNT_NUM
> > stuff?
> 
> I took this directly from Bspec. I think your suggestions make sense. I
> will experiment them and come back on this.

BTW the other thing that might be a bit unclear here is whether
we care about the transcoder's full vblank length, or the pipe's
vblank length (as reduced by the delayed vblank stuff).

If you're experimenting with this then changing the vblank
delay can be done live with intel_reg (on tgl just alter
TRANS_VBLANK.vblanl_start, on adl+ alter TRANS_SET_CONTEXT_LATENCY).

When doing stuff like this I always just run eg. 'testdisplay -o <id>,0'
to quiesce the driver as much as possible, and then
'export IGT_NO_FORCEWAKE=1' before poking the registers with
intel_reg avoid the debugfs forcewake stuff from perturbing the
system either.

Using that approach it should be possible to determine which vblank
length actually matters. Though you do need to be careful about
the pkg-c latency/prefill stuff when increasing the vblank delay.
So might also need to disable wm1+ (and maybe also sagv) leaving
only wm0 enabled. That would allow you to push the pipe's delayed
start of vblank very close to the end of vblank without getting
underruns.

-- 
Ville Syrjälä
Intel
