Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F11AA6BCB45
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Mar 2023 10:44:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 739CF10E0F2;
	Thu, 16 Mar 2023 09:44:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4BBBA10E0F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 09:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678959885; x=1710495885;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Wp6NZIc74K/WM5VNmaYG2CFOx3mzKWOv/j78NTpsJ7A=;
 b=RTpBZGwnOrbRSgoRXXbR7pfftZgByRqOUasqgCSrkVYBw3JmvmHaLgIM
 F4zjhdO5yrBNwyaLUnN/IywcvconXNSRghVgvtYulwy4Roh8VLKmVkNxw
 ISYrR95Uz63FPiEr+vuc/brt91MY6fcEZqJZaDyS+anMpN04HOn1lb2pd
 aEJpI282i/vC9YiK09XBLh1PV4uD0bHZ8laAk0RgU9vM61iUoCHwtH8+3
 Wz05FN9iOIDVdnnje2CSf/KALY3gmfet21n6TZPAAkZnCMxwyo2B9d7dU
 yZ8WkMREhLwVVnKL5T16JN6iuKLzB+eAUX5zgu4hlLrvIPZYM4HBSvSFe w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="339468386"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="339468386"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 02:44:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="710028778"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="710028778"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 16 Mar 2023 02:44:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 16 Mar 2023 11:44:41 +0200
Date: Thu, 16 Mar 2023 11:44:41 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <ZBLlCQOB11u8IadA@intel.com>
References: <20230314130255.23273-1-ville.syrjala@linux.intel.com>
 <20230314130255.23273-4-ville.syrjala@linux.intel.com>
 <e69701372c2527fbfb67011a08b0322e4933f3c3.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e69701372c2527fbfb67011a08b0322e4933f3c3.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915: Define more pipe timestamp
 registers
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

On Thu, Mar 16, 2023 at 08:43:12AM +0000, Hogander, Jouni wrote:
> On Tue, 2023-03-14 at 15:02 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Add definitions for various pipe timestamp registers:
> > - frame timestamp (last start of vblank) (g4x+), already had this
> > defined
> > - flip timestamp (when SURF was last written) (g4x+)
> > - flipdone timestamp (when last flipdone was signalled) (tgl+)
> > 
> > Note that on pre-tgl the flip related timestamps are only updated
> > for primary plane flips, but on tgl+ we can select which plane
> > updates them (via PIPE_MISC2). Let's define those related bits
> > as well.
> > 
> > Curiously VLV/CHV do not have the frame/flip timestamp registers,
> > despite all the other related registers being inherited from g4x.
> > This means we can get rid of the pipe_offsets[] usage for these,
> > and thus the implicit dev_priv is gone as well.
> 
> According to bspec these exist in VLV (Bspec: 8264, 8261) ?

It is lying to you.

> 
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h | 18 +++++++++++++++++-
> >  1 file changed, 17 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h
> > index a383397ebeca..66b6f451b80a 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -3526,6 +3526,8 @@
> >  #define   PIPE_MISC2_BUBBLE_COUNTER_MASK       REG_GENMASK(31, 24)
> >  #define  
> > PIPE_MISC2_BUBBLE_COUNTER_SCALER_EN  REG_FIELD_PREP(PIPE_MISC2_BUBBLE
> > _COUNTER_MASK, 80)
> >  #define  
> > PIPE_MISC2_BUBBLE_COUNTER_SCALER_DIS REG_FIELD_PREP(PIPE_MISC2_BUBBLE
> > _COUNTER_MASK, 20)
> > +#define  
> > PIPE_MISC2_FLIP_INFO_PLANE_SEL_MASK          REG_GENMASK(2, 0) /*
> > tgl+ */
> > +#define  
> > PIPE_MISC2_FLIP_INFO_PLANE_SEL(plane_id)     REG_FIELD_PREP(PIPE_MISC
> > 2_FLIP_INFO_PLANE_SEL_MASK, (plane_id))
> >  #define PIPE_MISC2(pipe)               _MMIO_PIPE(pipe,
> > _PIPE_MISC2_A, _PIPE_MISC2_B)
> >  
> >  /* Skylake+ pipe bottom (background) color */
> > @@ -7545,9 +7547,23 @@ enum skl_power_gate {
> >  #define  GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_SHIFT  12
> >  #define  GEN9_TIMESTAMP_OVERRIDE_US_COUNTER_DENOMINATOR_MASK   (0xf
> > << 12)
> >  
> > +/* g4x+, except vlv/chv! */
> >  #define _PIPE_FRMTMSTMP_A              0x70048
> > +#define _PIPE_FRMTMSTMP_B              0x71048
> >  #define PIPE_FRMTMSTMP(pipe)           \
> > -                       _MMIO_PIPE2(pipe, _PIPE_FRMTMSTMP_A)
> > +       _MMIO_PIPE(pipe, _PIPE_FRMTMSTMP_A, _PIPE_FRMTMSTMP_B)
> > +
> > +/* g4x+, except vlv/chv! */
> > +#define _PIPE_FLIPTMSTMP_A             0x7004C
> > +#define _PIPE_FLIPTMSTMP_B             0x7104C
> > +#define PIPE_FLIPTMSTMP(pipe)          \
> > +       _MMIO_PIPE(pipe, _PIPE_FLIPTMSTMP_A, _PIPE_FLIPTMSTMP_B)
> > +
> > +/* tgl+ */
> 
> This is mentioned in pre tgl documentation as well? (Bspec: 29591)

I think that is only a leftover artifact from before the
gen12+ split. If you set the filter to ICLLP (or earlier)
the register should disappear for you.

> 
> > +#define _PIPE_FLIPDONETMSTMP_A         0x70054
> > +#define _PIPE_FLIPDONETMSTMP_B         0x71054
> > +#define PIPE_FLIPDONETIMSTMP(pipe)     \
> > +       _MMIO_PIPE(pipe, _PIPE_FLIPDONETMSTMP_A,
> > _PIPE_FLIPDONETMSTMP_B)
> >  
> >  #define GGC                            _MMIO(0x108040)
> >  #define   GMS_MASK                     REG_GENMASK(15, 8)
> 
> BR,
> 
> Jouni Högander

-- 
Ville Syrjälä
Intel
