Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B56E26F1656
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Apr 2023 13:03:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ACDC10ECCC;
	Fri, 28 Apr 2023 11:03:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFB6F10ECC9
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Apr 2023 11:03:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682679832; x=1714215832;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HTflqytaQ3F47C0XoJ46ZI1X+CAt01LZXY0mryZZ42s=;
 b=OcLMHQLneT1U5/P/Ny7lAzxnhheA3vOIavkMoR50G8K5MhT4d/cP2Bed
 IRj7j9IqkrU6l6nNLo7cWUzPNcLTzuG2ZZimltVUOrdRi+MGWYhD++3Ap
 kL360m4UAERpkjpOkdMmA98I8/488sDh39dMXK1C9cNRHSt2ENoChVEHo
 kmPbmp4ZKurThbthWM1149z2oJpMR7tMRwas+/HGOs05esOc3LSgQ7lMj
 9bis5q+3boTQzkPLwX4YMNEQcnVWV0TGTf8fUXxzh1wnUJ27YTufAAyzM
 bH3cs2/G1Ogv3x6wqmY8ZwR/0P6Tt8y6u1zYUobW+8XCJ43KH5CwuXJDy A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="328053522"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="328053522"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2023 04:03:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10693"; a="784170461"
X-IronPort-AV: E=Sophos;i="5.99,234,1677571200"; d="scan'208";a="784170461"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by FMSMGA003.fm.intel.com with SMTP; 28 Apr 2023 04:03:49 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 28 Apr 2023 14:03:48 +0300
Date: Fri, 28 Apr 2023 14:03:48 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <ZEuoFFQ/dtyex2il@intel.com>
References: <20230421120307.24793-1-ville.syrjala@linux.intel.com>
 <20230421120307.24793-6-ville.syrjala@linux.intel.com>
 <7c0609b8b655f939c55350b97bb4aa7fe5c9d7ec.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <7c0609b8b655f939c55350b97bb4aa7fe5c9d7ec.camel@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 05/13] drm/i915/psr: Bring back HSW/BDW PSR
 AUX CH registers/setup
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

On Fri, Apr 28, 2023 at 10:18:34AM +0000, Hogander, Jouni wrote:
> Hello,
> 
> Please check my inline comments below.
> 
> On Fri, 2023-04-21 at 15:02 +0300, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Reintroduce the special PSR AUX CH setup for hsw/bdw. Not all
> > of it was even removed (BDW AUX data registers were left behind).
> > Update the code to use REG_BIT() & co. while at it.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_aux.c   |  2 +-
> >  drivers/gpu/drm/i915/display/intel_dp_aux.h   |  4 ++
> >  drivers/gpu/drm/i915/display/intel_psr.c      | 61
> > +++++++++++++++++++
> >  drivers/gpu/drm/i915/display/intel_psr_regs.h | 11 ++++
> >  4 files changed, 77 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > index abf77ba76972..847fd6bfa7e4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> > @@ -14,7 +14,7 @@
> >  #include "intel_pps.h"
> >  #include "intel_tc.h"
> >  
> > -static u32 intel_dp_aux_pack(const u8 *src, int src_bytes)
> > +u32 intel_dp_aux_pack(const u8 *src, int src_bytes)
> >  {
> >         int i;
> >         u32 v = 0;
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.h
> > b/drivers/gpu/drm/i915/display/intel_dp_aux.h
> > index 138e340f94ee..3bc529a23dd6 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_aux.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.h
> > @@ -6,6 +6,8 @@
> >  #ifndef __INTEL_DP_AUX_H__
> >  #define __INTEL_DP_AUX_H__
> >  
> > +#include <linux/types.h>
> > +
> >  enum aux_ch;
> >  struct intel_dp;
> >  struct intel_encoder;
> > @@ -15,4 +17,6 @@ void intel_dp_aux_init(struct intel_dp *intel_dp);
> >  
> >  enum aux_ch intel_dp_aux_ch(struct intel_encoder *encoder);
> >  
> > +u32 intel_dp_aux_pack(const u8 *src, int src_bytes);
> > +
> >  #endif /* __INTEL_DP_AUX_H__ */
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
> > b/drivers/gpu/drm/i915/display/intel_psr.c
> > index 7f748c7a71f3..2ff6f75c2bee 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > @@ -288,6 +288,24 @@ static i915_reg_t psr_iir_reg(struct
> > drm_i915_private *dev_priv,
> >                 return EDP_PSR_IIR;
> >  }
> >  
> > +static i915_reg_t psr_aux_ctl_reg(struct drm_i915_private *dev_priv,
> > +                                 enum transcoder cpu_transcoder)
> > +{
> > +       if (DISPLAY_VER(dev_priv) >= 8)
> > +               return EDP_PSR_AUX_CTL(cpu_transcoder);
> > +       else
> > +               return HSW_SRD_AUX_CTL;
> > +}
> > +
> > +static i915_reg_t psr_aux_data_reg(struct drm_i915_private
> > *dev_priv,
> > +                                  enum transcoder cpu_transcoder,
> > int i)
> > +{
> > +       if (DISPLAY_VER(dev_priv) >= 8)
> > +               return EDP_PSR_AUX_DATA(cpu_transcoder, i);
> > +       else
> > +               return HSW_SRD_AUX_DATA(i);
> > +}
> > +
> >  static void psr_irq_control(struct intel_dp *intel_dp)
> >  {
> >         struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> > @@ -512,6 +530,42 @@ void intel_psr_init_dpcd(struct intel_dp
> > *intel_dp)
> >         }
> >  }
> >  
> > +static void hsw_psr_setup_aux(struct intel_dp *intel_dp)
> > +{
> > +       struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> > +       enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
> > +       u32 aux_clock_divider, aux_ctl;
> > +       static const u8 aux_msg[] = {
> > +               [0] = (DP_AUX_NATIVE_WRITE << 4) | ((DP_SET_POWER >>
> > 16) & 0xf),
> > +               [1] = (DP_SET_POWER >> 8) & 0xff,
> > +               [2] = DP_SET_POWER & 0xff,
> > +               [3] = 1 - 1,
> > +               [4] = DP_SET_POWER_D0,
> > +       };
> 
> Could you please add some description or provide some pointer which
> would help to parse what you are doing here?

It's just crafting a DP_SET_POWER=D0 DPCD write by hand.

I was thinking of refactoring the AUX msg packing code
to make thig something like
 struct drm_dp_aux_msg {
 	...
 };
 intel_dp_aux_pack_msg(msg)
but that would require some actual though so not something
I want to do in this patch. So for now I just restored
this to (more or less) what we had before.

> 
> > +       int i;
> > +
> > +       BUILD_BUG_ON(sizeof(aux_msg) > 20);
> > +       for (i = 0; i < sizeof(aux_msg); i += 4)
> > +               intel_de_write(dev_priv,
> > +                              psr_aux_data_reg(dev_priv,
> > cpu_transcoder, i >> 2),
> > +                              intel_dp_aux_pack(&aux_msg[i],
> > sizeof(aux_msg) - i));
> > +
> > +       aux_clock_divider = intel_dp->get_aux_clock_divider(intel_dp,
> > 0);
> > +
> > +       /* Start with bits set for DDI_AUX_CTL register */
> > +       aux_ctl = intel_dp->get_aux_send_ctl(intel_dp,
> > sizeof(aux_msg),
> > +                                            aux_clock_divider);
> > +
> > +       /* Select only valid bits for SRD_AUX_CTL */
> > +       aux_ctl &= EDP_PSR_AUX_CTL_TIME_OUT_MASK |
> > +               EDP_PSR_AUX_CTL_MESSAGE_SIZE_MASK |
> > +               EDP_PSR_AUX_CTL_PRECHARGE_2US_MASK |
> > +               EDP_PSR_AUX_CTL_BIT_CLOCK_2X_MASK;
> 
> How about using definitions from
> drivers/gpu/drm/i915/display/intel_dp_aux_regs.h?

I suppose we could define the bits as
 #define EPD_PSR_FOO DP_AUX_CH_CTL_FOO
instead of defining them with REG_BIT() & co. direclty,
to make it clear they are identical.

> Or just refer these
> being identical definitions to aux_send_ctl bits?
> 
> > +
> > +       intel_de_write(dev_priv, psr_aux_ctl_reg(dev_priv,
> > cpu_transcoder),
> > +                      aux_ctl);
> > +}
> > +
> >  static void intel_psr_enable_sink(struct intel_dp *intel_dp)
> >  {
> >         struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
> > @@ -1318,6 +1372,13 @@ static void intel_psr_enable_source(struct
> > intel_dp *intel_dp,
> >         enum transcoder cpu_transcoder = intel_dp->psr.transcoder;
> >         u32 mask;
> >  
> > +       /*
> > +        * Only HSW and BDW have PSR AUX registers that need to be
> > setup.
> > +        * SKL+ use hardcoded values PSR AUX transactions
> > +        */
> > +       if (DISPLAY_VER(dev_priv) < 9)
> > +               hsw_psr_setup_aux(intel_dp);
> > +
> >         /*
> >          * Per Spec: Avoid continuous PSR exit by masking MEMUP and
> > HPD also
> >          * mask LPSP to avoid dependency on other drivers that might
> > block
> > diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> > b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> > index 998f638ee182..5e54817b6a0f 100644
> > --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> > @@ -80,6 +80,17 @@
> >  #define   EDP_PSR_PRE_ENTRY(trans)     (TGL_PSR_PRE_ENTRY
> > <<           \
> >                                          _EDP_PSR_TRANS_SHIFT(trans))
> >  
> > +#define
> > HSW_SRD_AUX_CTL                                _MMIO(0x64810)
> > +#define _SRD_AUX_CTL_A                         0x60810
> > +#define _SRD_AUX_CTL_EDP                       0x6f810
> > +#define EDP_PSR_AUX_CTL(tran)                  _MMIO_TRANS2(tran,
> > _SRD_AUX_CTL_A)
> > +#define  
> > EDP_PSR_AUX_CTL_TIME_OUT_MASK                REG_GENMASK(27, 26)
> > +#define   EDP_PSR_AUX_CTL_MESSAGE_SIZE_MASK    REG_GENMASK(24, 20)
> > +#define   EDP_PSR_AUX_CTL_PRECHARGE_2US_MASK   REG_GENMASK(19, 16)
> > +#define   EDP_PSR_AUX_CTL_ERROR_INTERRUPT      REG_BIT(11)
> > +#define   EDP_PSR_AUX_CTL_BIT_CLOCK_2X_MASK    REG_GENMASK(10, 0)
> > +
> > +#define HSW_SRD_AUX_DATA(i)                    _MMIO(0x64814 + (i) *
> > 4) /* 5 registers */
> >  #define _SRD_AUX_DATA_A                                0x60814
> >  #define _SRD_AUX_DATA_EDP                      0x6f814
> >  #define EDP_PSR_AUX_DATA(tran, i)              _MMIO_TRANS2(tran,
> > _SRD_AUX_DATA_A + (i) * 4) /* 5 registers */
> 
> BR,
> 
> Jouni Högander
> 

-- 
Ville Syrjälä
Intel
