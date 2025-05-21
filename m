Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A450ABFC76
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 19:43:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 30DAA10E72C;
	Wed, 21 May 2025 17:43:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="knNteiCl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05A1510E72C;
 Wed, 21 May 2025 17:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747849426; x=1779385426;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=WUWDaThu4V/TCRS3x0YGmjdCIWoipYk3guX/zl4EGxk=;
 b=knNteiClGNuBzmthBe0HQ/S6dsNviFlFBbwW92rPxKdktsPiWDlWHeNJ
 VJ9Kx0RO39ZXAKKFgEwjnaG4mYqOcy4c1hGdsZCl0TrLTsjQZNAWEcOq/
 2+meQlv8jvkdj5BwgdCAbKm9qzEo/S2ezKwh4CmDoXymAClOlEQgXAIqq
 VK6UbApG5UXgGK/GYsikkUVjtGJ0WW0l2Uwc/jWfVe8TJ/5CNoHhyqen6
 tNmYNDIWUG+QLRvVB4G58azUnDz4tXoX7q4BJwimI7E0y8Qc0kHEV2qVD
 6+OnXkKwxJ8H9GT47PBIxpirEBFxaepOpXcBbcQhiOay0BpFnYWjiWmod w==;
X-CSE-ConnectionGUID: nQbp8DgKRO+npAc4XW85xw==
X-CSE-MsgGUID: cPE+QrjuQTqnL+nJ/4EaqQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="49982787"
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="49982787"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 10:43:43 -0700
X-CSE-ConnectionGUID: RHwG/1BjTFaO6XAMF+1FJw==
X-CSE-MsgGUID: r0uO9fvPQe6KRgpFWYRELQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,304,1739865600"; d="scan'208";a="145312209"
Received: from oandoniu-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.244.255])
 by orviesa005.jf.intel.com with SMTP; 21 May 2025 10:43:41 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 21 May 2025 20:43:40 +0300
Date: Wed, 21 May 2025 20:43:40 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 06/12] drm/i915/dmc: Define flip queue related PIPEDMC
 registers
Message-ID: <aC4QzGuf16FmMyM6@intel.com>
References: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
 <20250516113408.11689-7-ville.syrjala@linux.intel.com>
 <DM4PR11MB636093C0D6A9D736281E3E17F49DA@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB636093C0D6A9D736281E3E17F49DA@DM4PR11MB6360.namprd11.prod.outlook.com>
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

On Sun, May 18, 2025 at 07:41:06PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-xe <intel-xe-bounces@lists.freedesktop.org> On Behalf Of Ville Syrjala
> > Sent: Friday, May 16, 2025 5:04 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org
> > Subject: [PATCH 06/12] drm/i915/dmc: Define flip queue related PIPEDMC
> > registers
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Add the register definitions for a bunch of flip queue related PIPEDMC registers.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc_regs.h | 172 +++++++++++++++++-
> >  1 file changed, 171 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > index d8e715677454..613160a1f9f2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> > @@ -6,7 +6,7 @@
> >  #ifndef __INTEL_DMC_REGS_H__
> >  #define __INTEL_DMC_REGS_H__
> > 
> > -#include "i915_reg_defs.h"
> > +#include "intel_display_reg_defs.h"
> > 
> >  enum dmc_event_id {
> >  	DMC_EVENT_TRUE = 0x0,
> > @@ -287,6 +287,17 @@ enum pipedmc_event_id {
> >  #define MTL_PIPEDMC_CONTROL		_MMIO(0x45250)
> >  #define  PIPEDMC_ENABLE_MTL(pipe)	REG_BIT(((pipe) - PIPE_A) * 4)
> > 
> > +#define _PIPEDMC_LOAD_HTP_A		0x5f000
> > +#define _PIPEDMC_LOAD_HTP_B		0x5f400
> > +#define PIPEDMC_LOAD_HTP(pipe)		_MMIO_PIPE((pipe),
> > _PIPEDMC_LOAD_HTP_A, _PIPEDMC_LOAD_HTP_B)
> > +
> > +#define _PIPEDMC_CTL_A		0x5f064
> > +#define _PIPEDMC_CTL_B		0x5f464
> > +#define PIPEDMC_CTL(pipe)		_MMIO_PIPE((pipe), _PIPEDMC_CTL_A,
> > _PIPEDMC_CTL_B)
> > +#define   PIPEDMC_HALT			REG_BIT(31)
> > +#define   PIPEDMC_STEP			REG_BIT(27)
> > +#define   PIPEDMC_CLOCKGATE		REG_BIT(23)
> > +
> >  #define _PIPEDMC_STATUS_A		0x5f06c
> >  #define _PIPEDMC_STATUS_B		0x5f46c
> >  #define PIPEDMC_STATUS(pipe)		_MMIO_PIPE((pipe),
> > _PIPEDMC_STATUS_A, _PIPEDMC_STATUS_B)
> > @@ -298,6 +309,139 @@ enum pipedmc_event_id {
> >  #define   PIPEDMC_INT_VECTOR_FLIPQ_PROG_DONE
> > 	REG_FIELD_PREP(PIPEDMC_INT_VECTOR_MASK, 0xff) /*
> > Wa_16018781658:lnl[a0] */
> >  #define   PIPEDMC_EVT_PENDING		REG_GENMASK(7, 0)
> > 
> > +#define _PIPEDMC_FQ_CTRL_A		0x5f078
> > +#define _PIPEDMC_FQ_CTRL_B		0x5f478
> > +#define PIPEDMC_FQ_CTRL(pipe)		_MMIO_PIPE((pipe),
> > _PIPEDMC_FQ_CTRL_A, _PIPEDMC_FQ_CTRL_B)
> > +#define   PIPEDMC_FQ_CTRL_ENABLE	REG_BIT(31)
> > +#define   PIPEDMC_FQ_CTRL_BUSY		REG_BIT(30)
> > +#define   PIPEDMC_FQ_CTRL_ASYNC		REG_BIT(29)
> > +#define   PIPEDMC_FQ_CTRL_PREEMPT	REG_BIT(0)
> > +
> > +#define _PIPEDMC_FQ_STATUS_A		0x5f098
> > +#define _PIPEDMC_FQ_STATUS_B		0x5f498
> > +#define PIPEDMC_FQ_STATUS(pipe)		_MMIO_PIPE((pipe),
> > _PIPEDMC_FQ_STATUS_A, _PIPEDMC_FQ_STATUS_B)
> > +#define   PIPEDMC_FQ_STATUS_BUSY		REG_BIT(31)
> > +#define   PIPEDMC_FQ_STATUS_W2_LIVE_STATUS	REG_BIT(1)
> > +#define   PIPEDMC_FQ_STATUS_W1_LIVE_STATUS	REG_BIT(0)
> > +
> > +#define _PIPEDMC_FPQ_ATOMIC_TP_A	0x5f0a0
> > +#define _PIPEDMC_FPQ_ATOMIC_TP_B	0x5f4a0
> > +#define PIPEDMC_FPQ_ATOMIC_TP(pipe)	_MMIO_PIPE((pipe),
> > _PIPEDMC_FPQ_ATOMIC_TP_A, _PIPEDMC_FPQ_ATOMIC_TP_B)
> > +#define   PIPEDMC_FPQ_PLANEQ_3_TP_MASK	REG_GENMASK(31, 26)
> > +#define   PIPEDMC_FPQ_PLANEQ_3_TP(tail)
> > 	REG_FIELD_PREP(PIPEDMC_FPQ_PLANEQ_3_TP_MASK, (tail))
> > +#define   PIPEDMC_FPQ_PLANEQ_2_TP_MASK	REG_GENMASK(24, 19)
> > +#define   PIPEDMC_FPQ_PLANEQ_2_TP(tail)
> > 	REG_FIELD_PREP(PIPEDMC_FPQ_PLANEQ_2_TP_MASK, (tail))
> > +#define   PIPEDMC_FPQ_PLANEQ_1_TP_MASK	REG_GENMASK(17, 12)
> > +#define   PIPEDMC_FPQ_PLANEQ_1_TP(tail)
> > 	REG_FIELD_PREP(PIPEDMC_FPQ_PLANEQ_1_TP_MASK, (tail))
> > +#define   PIPEDMC_FPQ_FASTQ_TP_MASK	REG_GENMASK(10, 6)
> > +#define   PIPEDMC_FPQ_FASTQ_TP(tail)
> > 	REG_FIELD_PREP(PIPEDMC_FPQ_FASTQ_TP_MASK, (tail))
> > +#define   PIPEDMC_FPQ_GENERALQ_TP_MASK	REG_GENMASK(4, 0)
> > +#define   PIPEDMC_FPQ_GENERALQ_TP(tail)
> > 	REG_FIELD_PREP(PIPEDMC_FPQ_GENERALQ_TP_MASK, (tail))
> > +
> > +#define _PIPEDMC_FPQ_LINES_TO_W1_A	0x5f0a4
> > +#define _PIPEDMC_FPQ_LINES_TO_W1_B	0x5f4a4
> > +#define PIPEDMC_FPQ_LINES_TO_W1		_MMIO_PIPE((pipe),
> > _PIPEDMC_FPQ_LINES_TO_W1_A, _PIPEDMC_FPQ_LINES_TO_W1_B)
> > +
> > +#define _PIPEDMC_FPQ_LINES_TO_W2_A	0x5f0a8
> > +#define _PIPEDMC_FPQ_LINES_TO_W2_B	0x5f4a8
> > +#define PIPEDMC_FPQ_LINES_TO_W2		_MMIO_PIPE((pipe),
> > _PIPEDMC_FPQ_LINES_TO_W2_A, _PIPEDMC_FPQ_LINES_TO_W2_B)
> > +
> > +#define _PIPEDMC_SCANLINECMP_A		0x5f11c
> > +#define _PIPEDMC_SCANLINECMP_B		0x5f51c
> > +#define PIPEDMC_SCANLINECMP(pipe)	_MMIO_PIPE((pipe),
> > _PIPEDMC_SCANLINECMP_A, _PIPEDMC_SCANLINECMP_B)
> > +#define   PIPEDMC_SCANLINECMP_EN	REG_BIT(31)
> > +#define   PIPEDMC_SCANLINE_NUMBER	REG_GENMASK(27, 0)
> 
> The scanline number seems to be 0:20 for LNL/PTL, can you please re-check once. It's extended
> to 27 for later platforms.

The later stuff seems uncertain, so I'll drop these to 21 bits
for now.

> 
> > +#define _PIPEDMC_SCANLINECMPLOWER_A	0x5f120
> > +#define _PIPEDMC_SCANLINECMPLOWER_B	0x5f520
> > +#define PIPEDMC_SCANLINECMPLOWER(pipe)	_MMIO_PIPE((pipe),
> > _PIPEDMC_SCANLINECMPLOWER_A, _PIPEDMC_SCANLINECMPLOWER_B)
> > +#define   PIPEDMC_SCANLINEINRANGECMP_EN		REG_BIT(31)
> > +#define   PIPEDMC_SCANLINEOUTRANGECMP_EN	REG_BIT(30)
> > +#define   PIPEDMC_SCANLINE_LOWER_MASK		REG_GENMASK(27, 0)
> 
> This as well.
> 
> > +#define   PIPEDMC_SCANLINE_LOWER(scanline)
> > 	REG_FIELD_PREP(PIPEDMC_SCANLINE_LOWER_MASK, (scanline))
> > +
> > +#define _PIPEDMC_SCANLINECMPUPPER_A	0x5f124
> > +#define _PIPEDMC_SCANLINECMPUPPER_B	0x5f524
> > +#define PIPEDMC_SCANLINECMPUPPER(pipe)	_MMIO_PIPE((pipe),
> > _PIPEDMC_SCANLINECMPUPPER_A, _PIPEDMC_SCANLINECMPUPPER_B)
> > +#define   PIPEDMC_SCANLINE_UPPER_MASK	REG_GENMASK(27, 0)
> 
> Same as above.
> 
> > +#define   PIPEDMC_SCANLINE_UPPER(scanline)
> > 	REG_FIELD_PREP(PIPEDMC_SCANLINE_UPPER_MASK, (scanline))
> > +
> > +#define _MMIO_PIPEDMC_FPQ(pipe, fq_id, \
> > +			  reg_fpq1_a, reg_fpq2_a, reg_fpq3_a, reg_fpq4_a, \
> > +			  reg_fpq1_b, reg_fpq2_b, reg_fpq3_b, reg_fpq4_b) \
> > +	_MMIO(_PICK_EVEN_2RANGES((fq_id), INTEL_FLIPQ_PLANE_3, \
> > +				 _PIPE((pipe), (reg_fpq1_a), (reg_fpq1_b)), \
> > +				 _PIPE((pipe), (reg_fpq2_a), (reg_fpq2_b)), \
> > +				 _PIPE((pipe), (reg_fpq3_a), (reg_fpq3_b)), \
> > +				 _PIPE((pipe), (reg_fpq4_a), (reg_fpq4_b))))
> > +
> > +#define _PIPEDMC_FPQ1_HP_A		0x5f128
> > +#define _PIPEDMC_FPQ2_HP_A		0x5f138
> > +#define _PIPEDMC_FPQ3_HP_A		0x5f168
> > +#define _PIPEDMC_FPQ4_HP_A		0x5f174
> > +#define _PIPEDMC_FPQ5_HP_A		0x5f180
> > +#define _PIPEDMC_FPQ1_HP_B		0x5f528
> > +#define _PIPEDMC_FPQ2_HP_B		0x5f538
> > +#define _PIPEDMC_FPQ3_HP_B		0x5f568
> > +#define _PIPEDMC_FPQ4_HP_B		0x5f574
> > +#define _PIPEDMC_FPQ5_HP_B		0x5f580
> 
> This entry 5 is not used, is it intentional ?

We don't need it for the macro since it's (fortunately)
at a suitable offset from the previous entry. It's also
for the "fast queue" which isn't used, so technically could
just nuke it. But since the firmware still has all the code
for it I figured I might as well document them all.

> 
> > +#define PIPEDMC_FPQ_HP(pipe, fq_id)	_MMIO_PIPEDMC_FPQ((pipe), (fq_id), \
> > +
> > _PIPEDMC_FPQ1_HP_A, _PIPEDMC_FPQ2_HP_A, \
> > +
> > _PIPEDMC_FPQ3_HP_A, _PIPEDMC_FPQ4_HP_A, \
> > +
> > _PIPEDMC_FPQ1_HP_B, _PIPEDMC_FPQ2_HP_B, \
> > +
> > _PIPEDMC_FPQ3_HP_B, _PIPEDMC_FPQ4_HP_B)
> > +
> > +#define _PIPEDMC_FPQ1_TP_A		0x5f12c
> > +#define _PIPEDMC_FPQ2_TP_A		0x5f13c
> > +#define _PIPEDMC_FPQ3_TP_A		0x5f16c
> > +#define _PIPEDMC_FPQ4_TP_A		0x5f178
> > +#define _PIPEDMC_FPQ5_TP_A		0x5f184
> > +#define _PIPEDMC_FPQ1_TP_B		0x5f52c
> > +#define _PIPEDMC_FPQ2_TP_B		0x5f53c
> > +#define _PIPEDMC_FPQ3_TP_B		0x5f56c
> > +#define _PIPEDMC_FPQ4_TP_B		0x5f578
> > +#define _PIPEDMC_FPQ5_TP_B		0x5f584
> > +#define PIPEDMC_FPQ_TP(pipe, fq_id)	_MMIO_PIPEDMC_FPQ((pipe), (fq_id), \
> > +
> > _PIPEDMC_FPQ1_TP_A, _PIPEDMC_FPQ2_TP_A, \
> > +
> > _PIPEDMC_FPQ3_TP_A, _PIPEDMC_FPQ4_TP_A, \
> > +
> > _PIPEDMC_FPQ1_TP_B, _PIPEDMC_FPQ2_TP_B, \
> > +
> > _PIPEDMC_FPQ3_TP_B, _PIPEDMC_FPQ4_TP_B)
> > +
> > +#define _PIPEDMC_FPQ1_CHP_A		0x5f130
> > +#define _PIPEDMC_FPQ2_CHP_A		0x5f140
> > +#define _PIPEDMC_FPQ3_CHP_A		0x5f170
> > +#define _PIPEDMC_FPQ4_CHP_A		0x5f17c
> > +#define _PIPEDMC_FPQ5_CHP_A		0x5f188
> > +#define _PIPEDMC_FPQ1_CHP_B		0x5f530
> > +#define _PIPEDMC_FPQ2_CHP_B		0x5f540
> > +#define _PIPEDMC_FPQ3_CHP_B		0x5f570
> > +#define _PIPEDMC_FPQ4_CHP_B		0x5f57c
> > +#define _PIPEDMC_FPQ5_CHP_B		0x5f588
> > +#define PIPEDMC_FPQ_CHP(pipe, fq_id)	_MMIO_PIPEDMC_FPQ((pipe), (fq_id), \
> > +
> > _PIPEDMC_FPQ1_CHP_A, _PIPEDMC_FPQ2_CHP_A, \
> > +
> > _PIPEDMC_FPQ3_CHP_A, _PIPEDMC_FPQ4_CHP_A, \
> > +
> > _PIPEDMC_FPQ1_CHP_B, _PIPEDMC_FPQ2_CHP_B, \
> > +
> > _PIPEDMC_FPQ3_CHP_B, _PIPEDMC_FPQ4_CHP_B)
> > +
> > +#define _PIPEDMC_FPQ_TS_A		0x5f134
> > +#define _PIPEDMC_FPQ_TS_B		0x5f534
> > +#define PIPEDMC_FPQ_TS(pipe)		_MMIO_PIPE((pipe),
> > _PIPEDMC_FPQ_TS_A, _PIPEDMC_FPQ_TS_B)
> > +
> > +#define _PIPEDMC_SCANLINE_RO_A		0x5f144
> > +#define _PIPEDMC_SCANLINE_RO_B		0x5f544
> > +#define PIPEDMC_SCANLINE_RO(pipe)	_MMIO_PIPE((pipe),
> > _PIPEDMC_SCANLINE_RO_A, _PIPEDMC_SCANLINE_RO_B)
> > +
> > +#define _PIPEDMC_FPQ_CTL1_A		0x5f160
> > +#define _PIPEDMC_FPQ_CTL1_B		0x5f560
> > +#define PIPEDMC_FPQ_CTL1(pipe)		_MMIO_PIPE((pipe),
> > _PIPEDMC_FPQ_CTL1_A, _PIPEDMC_FPQ_CTL1_B)
> > +#define   PIPEDMC_SW_DMC_WAKE		REG_BIT(0)
> > +
> > +#define _PIPEDMC_FPQ_CTL2_A		0x5f164
> > +#define _PIPEDMC_FPQ_CTL2_B		0x5f564
> > +#define PIPEDMC_FPQ_CTL2(pipe)		_MMIO_PIPE((pipe),
> > _PIPEDMC_FPQ_CTL2_A, _PIPEDMC_FPQ_CTL2_B)
> > +#define   PIPEDMC_DMC_INT_AT_DELAYED_VBLANK	REG_BIT(1)
> > +#define   PIPEDMC_W1_DMC_WAKE			REG_BIT(0)
> > +
> >  #define _PIPEDMC_INTERRUPT_A		0x5f190 /* lnl+ */
> >  #define _PIPEDMC_INTERRUPT_B		0x5f590 /* lnl+ */
> >  #define PIPEDMC_INTERRUPT(pipe)		_MMIO_PIPE((pipe),
> > _PIPEDMC_INTERRUPT_A, _PIPEDMC_INTERRUPT_B)
> > @@ -394,4 +538,30 @@ enum pipedmc_event_id {
> >  #define  DMC_WAKELOCK_CTL_REQ	 REG_BIT(31)
> >  #define  DMC_WAKELOCK_CTL_ACK	 REG_BIT(15)
> > 
> > +#define DMC_FQ_W2_PTS_CFG_SEL	_MMIO(0x8f240)
> > +#define   PIPE_D_DMC_W2_PTS_CONFIG_SELECT_MASK
> > 	REG_GENMASK(25, 24)
> 
> This is extended to 3 bit 24:26, please check once.

Doesn't really matter for now as we don't have that many pipes,
but might as well use the wider masks I guess.

> 
> > +#define   PIPE_D_DMC_W2_PTS_CONFIG_SELECT(pipe)
> > 	REG_FIELD_PREP(PIPE_D_DMC_W2_PTS_CONFIG_SELECT_MASK,
> > (pipe))
> > +#define   PIPE_C_DMC_W2_PTS_CONFIG_SELECT_MASK
> > 	REG_GENMASK(17, 16)
> 
> This as well, 16:18
> 
> > +#define   PIPE_C_DMC_W2_PTS_CONFIG_SELECT(pipe)
> > 	REG_FIELD_PREP(PIPE_C_DMC_W2_PTS_CONFIG_SELECT_MASK,
> > (pipe))
> > +#define   PIPE_B_DMC_W2_PTS_CONFIG_SELECT_MASK
> > 	REG_GENMASK(9, 8)
> 
> This is 8:10
> 
> > +#define   PIPE_B_DMC_W2_PTS_CONFIG_SELECT(pipe)
> > 	REG_FIELD_PREP(PIPE_B_DMC_W2_PTS_CONFIG_SELECT_MASK,
> > (pipe))
> > +#define   PIPE_A_DMC_W2_PTS_CONFIG_SELECT_MASK
> > 	REG_GENMASK(1, 0)
> 
> This is 0:2.
> 
> > +#define   PIPE_A_DMC_W2_PTS_CONFIG_SELECT(pipe)
> > 	REG_FIELD_PREP(PIPE_A_DMC_W2_PTS_CONFIG_SELECT_MASK,
> > (pipe))
> > +
> > +/* planel/general flip queue entries */
> > +#define PIPEDMC_FQ_RAM(start_mmioaddr, i)	_MMIO((start_mmioaddr) + (i)
> > * 4)
> > +/* DW0 pts */
> > +/* DW1 head */
> > +/* DW2 size/etc. */
> > +#define FQ_INTERRUPT		REG_BIT(31)
> > +#define FQ_DSB_ID_MASK		REG_GENMASK(30, 29)
> > +#define FQ_DSB_ID(dsb_id)	REG_FIELD_PREP(FQ_DSB_ID_MASK, (dsb_id))
> > +#define FQ_EXECUTED		REG_BIT(28)
> > +#define FQ_DSB_SIZE_MASK	REG_GENMASK(15, 0)
> > +#define FQ_DSB_SIZE(size)	REG_FIELD_PREP(FQ_DSB_SIZE_MASK, (size))
> > +/* DW3 reserved (plane queues) */
> > +/* DW3 second DSB head (general queue) */
> > +/* DW4 second DSB size/etc. (general queue) */
> > +/* DW5 reserved (general queue) */
> > +
> >  #endif /* __INTEL_DMC_REGS_H__ */
> > --
> > 2.49.0
> 

-- 
Ville Syrjälä
Intel
