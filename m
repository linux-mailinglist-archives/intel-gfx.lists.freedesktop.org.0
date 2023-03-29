Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DDCA86CF285
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 20:54:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5278A10E185;
	Wed, 29 Mar 2023 18:54:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0F7210E185
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 18:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680116063; x=1711652063;
 h=date:from:to:subject:message-id:references:mime-version:
 content-transfer-encoding:in-reply-to;
 bh=kzZ54ljR25kuOUEroDqzP1/7+9HLkgmSzuIfhQXpCHE=;
 b=M7p/86uYE0hq8EMeat4NCmh0+I19gP7dAsQIbcIXn9J6FnMNbg0alw8m
 fNojmFy+w9SBspVkFK+zKlHlIRS/EaLfQDo7fRG42rIRqU10pE5K/pafv
 6ThiSEut7KCCJsdWJxKUvWtwd147vualp768KmH2EqnC9O5JFFSZGwPlU
 CNzeUBIjRKmpp5Tgce7SA3XcT3BNXEph1Ggl+TTLxerjRxZlDb6bO9dj4
 vkVijq4TOtCIrcYbzfcyRwBo/PNK0dyPBzY+dLxqvmeQu9xYH0GgQHQuG
 71eSheMCan2GAF6tSsAyBXV8VeMwMeWMNxbI/YIUFMgm+pc1uHcIAAWCN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="339698039"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="339698039"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 11:54:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="661729132"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="661729132"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga006.jf.intel.com with SMTP; 29 Mar 2023 11:54:20 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 21:54:19 +0300
Date: Wed, 29 Mar 2023 21:54:19 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <ZCSJW8GUB9IgdP9z@intel.com>
References: <20230328093042.7469-1-ville.syrjala@linux.intel.com>
 <20230328093042.7469-6-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230328093042.7469-6-ville.syrjala@linux.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 5/8] drm/i915/psr: Define more PSR mask bits
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

On Tue, Mar 28, 2023 at 12:30:39PM +0300, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> Define more of the PSR mask bits, and describe in detail
> what some of them do. Even if we don't set them all from
> the driver they can be very useful during PSR debugging.
> Having to trawl through bspec every time to find them is
> not fun, and re-reverse engineering the behaviour every
> time is time consuming (even if a bit more fun than spec
> trawling).
> 
> v2: Moar bits
>     Put the description into a comment to be easily available
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_psr.c | 85 ++++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h          | 27 ++++++--
>  drivers/gpu/drm/i915/intel_pm.c          |  4 +-
>  3 files changed, 109 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 9e5ffe4eac6f..142cd174475e 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -84,6 +84,91 @@
>   * use page flips.
>   */
>  
> +/*
> + * Description of PSR mask bits:
> + *
> + * EDP_PSR_DEBUG[16]/EDP_PSR_DEBUG_MASK_DISP_REG_WRITE (hsw-skl):
> + *
> + *  When unmasked (nearly) all display register writes (eg. even
> + *  SWF) trigger a PSR exit. Some registers are excluded from this
> + *  and they have a more specific mask (described below). On icl+
> + *  this bit no longer exists and is effectively always set.
> + *
> + * PIPE_MISC[21]/PIPE_MISC_PSR_MASK_PIPE_REG_WRITE (skl+):
> + *
> + *  When unmasked (nearly) all pipe/plane register writes
> + *  trigger a PSR exit. Some plane registers are excluded from this
> + *  and they have a more specific mask (described below).
> + *
> + * CHICKEN_PIPESL_1[11]/SKL_PSR_MASK_PLANE_FLIP (skl+):
> + * PIPE_MISC[23]/PIPE_MISC_PSR_MASK_PRIMARY_FLIP (bdw):
> + * EDP_PSR_DEBUG[23]/EDP_PSR_DEBUG_MASK_PRIMARY_FLIP (hsw):
> + *
> + *  When unmasked PRI_SURF/PLANE_SURF writes trigger a PSR exit.
> + *  SPR_SURF/CURBASE are not included in this and instead are
> + *  controlled by PIPE_MISC_PSR_MASK_PIPE_REG_WRITE (skl+) or
> + *  EDP_PSR_DEBUG_MASK_DISP_REG_WRITE (hsw/bdw).
> + *
> + * PIPE_MISC[22]/PIPE_MISC_PSR_MASK_SPRITE_ENABLE (bdw):
> + * EDP_PSR_DEBUG[21]/EDP_PSR_DEBUG_MASK_SPRITE_ENABLE (hsw):
> + *
> + *  When unmasked PSR is blocked as long as the sprite
> + *  plane is enabled. skl+ with their universal planes no
> + *  longer have a mask bit like this, and no plane being
> + *  enabledb blocks PSR.
> + *
> + * PIPE_MISC[21]/PIPE_MISC_PSR_MASK_CURSOR_MOVE (bdw):
> + * EDP_PSR_DEBUG[20]/EDP_PSR_DEBUG_MASK_CURSOR_MOVE (hsw):
> + *
> + *  When umasked CURPOS writes trigger a PSR exit. On skl+
> + *  this doesn't exit but CURPOS is included in the
> + *  PIPE_MISC_PSR_MASK_PIPE_REG_WRITE mask.
> + *
> + * PIPE_MISC[20]/PIPE_MISC_PSR_MASK_VBLANK_VSYNC_INT (bdw+):
> + * EDP_PSR_DEBUG[19]/EDP_PSR_DEBUG_MASK_VBLANK_VSYNC_INT (hsw):
> + *
> + *  When unmasked PSR is blocked as long as vblank and/or vsync
> + *  interrupt is unmasked in IMR *and* enabled in IER.
> + *
> + * CHICKEN_TRANS[30]/SKL_UNMASK_VBL_TO_PIPE_IN_SRD (skl+):
> + * CHICKEN_PAR1_1[15]/HSW_MASK_VBL_TO_PIPE_IN_SRD (hsw/bdw):
> + *
> + *  Selectcs whether PSR exit generates an extra vblank before
> + *  the first frame is transmitted. Also note the opposite polarity
> + *  if the bit on hsw/bdw vs. skl+ (masked==generate the extra vblank,
> + *  unmasked==do not generate the extra vblank).
> + *
> + *  With DC states enabled the extra vblank happens after link training,
> + *  with DC states disabled it happens immediately upuon PSR exit trigger.
> + *  No idea as of now why there is a difference. HSW/BDW (which don't
> + *  even have DMC) always generate it after link training. Go figure.
> + *
> + *  Unfortunately CHICKEN_TRANS itself seems to be double buffered
> + *  and thus won't latch until the first vblank. So with DC states
> + *  enabled the register effctively uses the reset value during DC5
> + *  exit+PSR exit sequence, and thus the bit does nothing until
> + *  latched by the vblank that it was trying to prevent from being
> + *  generated in the first place. So we should probably call this
> + *  one a chicken/egg bit instead on skl+.
> + *
> + *  In standby mode (as opposed to link-off) this makes no difference
> + *  as the timing generator keeps running the whole time generating
> + *  normal periodic vblanks.
> + *
> + *  WaPsrDPAMaskVBlankInSRD asks us to set the bit on hsw/bdw,
> + *  and doing so makes the behaviour match the skl+ reset value.
> + *
> + * CHICKEN_PIPESL_1[0]/BDW_UNMASK_VBL_TO_REGS_IN_SRD (bdw):
> + * CHICKEN_PIPESL_1[15]/HSW_UNMASK_VBL_TO_REGS_IN_SRD (hsw):
> + *
> + *  Effect unknown. WaPsrDPRSUnmaskVBlankInSRD says to set the
> + *  bit, but not apparent change in hardware behaviour either
> + *  way.

Actually there is a very clear effect on BDW; no vblanks whatsoever
after PSR exit if the bit is not set. Only noticed when I tested
after allowing the machine to enter PC8+ (which apparently clobbers
a lot of chicken bits, including this one).

-- 
Ville Syrjälä
Intel
