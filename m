Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EB92A8C44E2
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 18:13:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5084910E5C2;
	Mon, 13 May 2024 16:13:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YYXN2VIb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 30B2910E5C2
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 16:13:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715616807; x=1747152807;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qV+z8vGirDCBzdryXf8qO9JHewjSyUITTjqzmEQs61Q=;
 b=YYXN2VIbIVmfd3D9MIy+8Rfv5UDxP3S8hecvTF4f1oKXTJsRuaXNX5fL
 ltwLMe0EnBYG4Y4c0o4haPCncK0qnuaRCBpwsU2N+f9FlviG2YvDvJ/Ly
 rUMLBOYS3exoB45FeVVGIsh+DgBVmSkQcjSUGyZT5JwvBZHMm6OE0/ryF
 3FIEGo8uCIEas9gqeQ5nzSmlmzAmUC1FiAKdU0e0mpMchlIffhyjGYbWV
 7vrDc4MEc+535SbDU/VrgBcISaRLdVIgzVJ5plEs1bcMDjQQnduQ9sfcD
 hX30CVtOGH7/8PMXs0S03DBvuIbhTX22mHwELHKqcMoK3PV8YWdKf80K2 w==;
X-CSE-ConnectionGUID: iUpkrMNQSRK21hKy0oP/bg==
X-CSE-MsgGUID: fxjXXB8LR8+rtJKDV/7eIA==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="22137774"
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="22137774"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 09:13:26 -0700
X-CSE-ConnectionGUID: Xz2b79HzQrC43uBqxboJeQ==
X-CSE-MsgGUID: 0+lMQbB+RE+UE1Qq2olxZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,158,1712646000"; d="scan'208";a="30369174"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 13 May 2024 09:13:24 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 13 May 2024 19:13:23 +0300
Date: Mon, 13 May 2024 19:13:23 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 10/16] drm/i915: Shuffle the skl+ plane register
 definitions
Message-ID: <ZkI8I7jUSmR5WzjQ@intel.com>
References: <20240510152329.24098-1-ville.syrjala@linux.intel.com>
 <20240510152329.24098-11-ville.syrjala@linux.intel.com>
 <877cfyeyt0.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <877cfyeyt0.fsf@intel.com>
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

On Mon, May 13, 2024 at 02:28:11PM +0300, Jani Nikula wrote:
> On Fri, 10 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Rearrange the plane skl+ universal plane register definitions:
> > - keep everything related to the same register in one place
> > - sort based on register offset
> > - unify the whitespace/etc a bit
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  .../i915/display/skl_universal_plane_regs.h   | 502 ++++++++----------
> >  1 file changed, 207 insertions(+), 295 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> > index 0558d97614e1..0ad14727e334 100644
> > --- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> > +++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
> > @@ -9,8 +9,6 @@
> >  #include "intel_display_reg_defs.h"
> >  
> >  #define _PLANE_CTL_1_A				0x70180
> > -#define _PLANE_CTL_2_A				0x70280
> > -#define _PLANE_CTL_3_A				0x70380
> >  #define   PLANE_CTL_ENABLE			REG_BIT(31)
> >  #define   PLANE_CTL_ARB_SLOTS_MASK		REG_GENMASK(30, 28) /* icl+ */
> >  #define   PLANE_CTL_ARB_SLOTS(x)		REG_FIELD_PREP(PLANE_CTL_ARB_SLOTS_MASK, (x)) /* icl+ */
> > @@ -74,59 +72,132 @@
> >  #define   PLANE_CTL_ROTATE_90			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 1)
> >  #define   PLANE_CTL_ROTATE_180			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 2)
> >  #define   PLANE_CTL_ROTATE_270			REG_FIELD_PREP(PLANE_CTL_ROTATE_MASK, 3)
> 
> This is a painful patch to review (in part because some newline removals
> throw off --color-moved) so I want to check something first.
> 
> Shouldn't the above register *content* definitions be...
> 
> > +#define _PLANE_CTL_2_A				0x70280
> > +#define _PLANE_CTL_1_B				0x71180
> > +#define _PLANE_CTL_2_B				0x71280
> > +#define _PLANE_CTL_1(pipe)		_PIPE(pipe, _PLANE_CTL_1_A, _PLANE_CTL_1_B)
> > +#define _PLANE_CTL_2(pipe)		_PIPE(pipe, _PLANE_CTL_2_A, _PLANE_CTL_2_B)
> > +#define PLANE_CTL(pipe, plane)		_MMIO_PLANE(plane, _PLANE_CTL_1(pipe), _PLANE_CTL_2(pipe))
> 
> ...here after all the register *offset* definitions, not right after the
> plane 1 / pipe A register offset macro? Ditto for a bunch of the other
> changes here.

Shrug. I don't think we have any real consistency in how these
things are laid out. Sometimes the bits are defined after the
_FOO_A, sometimes after all the _FOO_?, and sometimes after FOO().

I guess we should try to standardize on one of those. And I suppose
it should be that last option of those three (which is what you
suggest as well) since we don't always have any intermediate _FOO
defines at all. I can respin with that.

-- 
Ville Syrjälä
Intel
