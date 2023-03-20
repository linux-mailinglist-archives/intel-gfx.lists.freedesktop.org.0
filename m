Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C22D46C11CE
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Mar 2023 13:23:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B6CA10E052;
	Mon, 20 Mar 2023 12:23:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9B44F10E052
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Mar 2023 12:23:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679315035; x=1710851035;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=aaIRBbLWUXmbYqOs9fMleBxCraULF+b0NbUiB2X4iA0=;
 b=h7kLe8g/mvOGBL9nZbKcvK8gVcRnV0MRqQ8f1gkwq3MmoIIlV2EMWvsY
 m4YaoaeM3vonEs+uaLVwIzTsAPPLYNST5/fp7S1S9S6iBEvuOEyAdmzrK
 Ju4CZVB2WxL8AkYG6LBQuCoyYdVV+iDPWtFKh3CVmwxRIWuptVln8XP9t
 6RBJ767VNzsHoXQf1rtQwNmMXYZuNFKtyikJI5d+iP721jfQmLKLQrpuo
 SLoXW5KtpLDk3T/EPj2KRFURnv0rVhC4H0uzfBkUtJI2CUTTxEfQQfq6N
 EK6gdCz7vv/TpymmPe3XkngWblb1yWj3df4v15AxiFuzt/g/nDJp6HcvJ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="337364468"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="337364468"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Mar 2023 05:23:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10654"; a="824461362"
X-IronPort-AV: E=Sophos;i="5.98,274,1673942400"; d="scan'208";a="824461362"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga001.fm.intel.com with SMTP; 20 Mar 2023 05:23:52 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 Mar 2023 14:23:51 +0200
Date: Mon, 20 Mar 2023 14:23:51 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZBhQV4jUAD1UbvMn@intel.com>
References: <20230320095438.17328-1-ville.syrjala@linux.intel.com>
 <20230320095438.17328-7-ville.syrjala@linux.intel.com>
 <ZBhJyClkzHgf2xjJ@ideak-desk.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZBhJyClkzHgf2xjJ@ideak-desk.fi.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/psr: Define more PSR mask bits
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
Cc: Drew Davenport <ddavenport@chromium.org>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Mar 20, 2023 at 02:05:46PM +0200, Imre Deak wrote:
> On Mon, Mar 20, 2023 at 11:54:38AM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Define more of the PSR mask bits. Even if we don't set them
> > from the driver they can be very useful during PSR debugging.
> > Having to trawl through bspec every time to find them is
> > not fun.
> > 
> > The particularly interesting bits are:
> > 
> > - PIPE_MISC[21]/PIPE_MISC_PSR_MASK_PIPE_REG_WRITE
> > 
> >   Normally most, if not all, pipe/plane registers (even the
> >   noarm ones) trigger a PSR exit. This stops that, leaving
> >   only PLANE_SURF (or so it seems) to do the triggering
> > 
> > - CHICKEN_TRANS[30]/NO_VBLANK_MASK_IN_DEEP_PSR
> > 
> >   Stops PSR exit from generating an extra vblank before the
> >   first frame is transmitted.
> > 
> >   Looks like with DC states enabled the extra vblank happens
> >   after link traning, with DC states disabled it seems to happen
> >   immediately. No idea as of now why there is a difference.
> > 
> >   Unfortunately CHICKEN_TRANS itself seems to be double buffered
> >   and thus won't latch until the first vblank. So with DC states
> >   enabled the register effctively uses the reset value during DC5
> >   exit+PSR exit sequence, and thus the bit does nothing until
> >   latched by the vblank that it was trying to prevent from being
> >   generated in the first place. So we should probably call this one
> >   a chicken/egg bit instead.
> > 
> >   TODO: should confirm what this does when using PSR standby
> >         mode instead of deep/link-off mode...
> > 
> > Cc: Manasi Navare <navaremanasi@google.com>
> > Cc: Drew Davenport <ddavenport@chromium.org>
> > Cc: Imre Deak <imre.deak@intel.com>
> > Cc: Jouni Högander <jouni.hogander@intel.com>
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h | 10 ++++++++--
> >  1 file changed, 8 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index d22ffd7a32dc..383c532320f9 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -2205,6 +2205,7 @@
> >  #define   EDP_PSR_DEBUG_MASK_LPSP              (1 << 27)
> >  #define   EDP_PSR_DEBUG_MASK_MEMUP             (1 << 26)
> >  #define   EDP_PSR_DEBUG_MASK_HPD               (1 << 25)
> > +#define   EDP_PSR_DEBUG_MASK_FBC_MODIFY        (1 << 24)
> >  #define   EDP_PSR_DEBUG_MASK_DISP_REG_WRITE    (1 << 16) /* Reserved in ICL+ */
> >  #define   EDP_PSR_DEBUG_EXIT_ON_PIXEL_UNDERRUN (1 << 15) /* SKL+ */
> >  
> > @@ -3500,8 +3501,13 @@
> >  #define   PIPE_MISC_YUV420_ENABLE		REG_BIT(27) /* glk+ */
> >  #define   PIPE_MISC_YUV420_MODE_FULL_BLEND	REG_BIT(26) /* glk+ */
> >  #define   PIPE_MISC_HDR_MODE_PRECISION		REG_BIT(23) /* icl+ */
> 
> 'Allow Double Buffer Update Disable' BIT(24) on tgl+ looks also related
> to these flags.

Not directly. It controls whether DOUBLE_BUFFER_CTL will disable
the double buffer latching at vblank for a given hw unit (PSR or
no PSR). Most hw units have their own 'Allow Double Buffer Update
Disable' bit in one of their registers. If and then we start to
use DOUBLE_BUFFER_CTL we have to track down all those bits and
set them.

> 
> The patchset looks ok to me:
> Reviewed-by: Imre Deak <imre.deak@intel.com>

Thanks.

> 
> > +#define   PIPE_MISC_PSR_MASK_PRIMARY_FLIP	REG_BIT(23) /* bdw only */
> > +#define   PIPE_MISC_PSR_MASK_SPRITE_ENABLE	REG_BIT(22) /* bdw only */
> > +#define   PIPE_MISC_PSR_MASK_PIPE_REG_WRITE	REG_BIT(21) /* skl+ */
> > +#define   PIPE_MISC_PSR_MASK_CURSOR_MOVE	REG_BIT(21) /* bdw only */
> > +#define   PIPE_MISC_PSR_MASK_VBLANK_VSYNC_INT	REG_BIT(20)
> >  #define   PIPE_MISC_OUTPUT_COLORSPACE_YUV	REG_BIT(11)
> > -#define   PIPE_MISC_PIXEL_ROUNDING_TRUNC		REG_BIT(8) /* tgl+ */
> > +#define   PIPE_MISC_PIXEL_ROUNDING_TRUNC	REG_BIT(8) /* tgl+ */
> >  /*
> >   * For Display < 13, Bits 5-7 of PIPE MISC represent DITHER BPC with
> >   * valid values of: 6, 8, 10 BPC.
> > @@ -5550,7 +5556,7 @@
> >  #define MTL_CHICKEN_TRANS(trans)	_MMIO_TRANS((trans), \
> >  						    _MTL_CHICKEN_TRANS_A, \
> >  						    _MTL_CHICKEN_TRANS_B)
> > -
> > +#define  NO_VBLANK_MASK_IN_DEEP_PSR	REG_BIT(30) /* skl+ */
> >  #define  HSW_FRAME_START_DELAY_MASK	REG_GENMASK(28, 27)
> >  #define  HSW_FRAME_START_DELAY(x)	REG_FIELD_PREP(HSW_FRAME_START_DELAY_MASK, x)
> >  #define  VSC_DATA_SEL_SOFTWARE_CONTROL	REG_BIT(25) /* GLK */
> > -- 
> > 2.39.2
> > 

-- 
Ville Syrjälä
Intel
