Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B6E34B2CB5
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Feb 2022 19:21:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9C26A10E9F2;
	Fri, 11 Feb 2022 18:21:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA1A010E9F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Feb 2022 18:21:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644603709; x=1676139709;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=zk6Ox4rvhtt8saQqS+0AsREichY+NV6vIsZxUrmeujc=;
 b=IVoCHOe3Vi7xEhVh0hs1cjNLjmunTpei1stn4E6MX9bqUWIMzlh4044x
 4fxCMXNV64WxAyJ3bkGmz4u6xX038SgQg4SDaZwl44kFBSgkrUmSLGvhv
 ulgSyYS18970pZENZkwp0SfjG/zBrWMlLkhiicH1nJNXAPEJaH4hyAxyh
 x1ZwaWNub1/62iKRBukNVkgNYBZk0AXAuNbYmWQNyeQcVHcg+qGxAEHad
 jIJpUxGRL0R/zivxFluhoQY+p7os2HKw9nT9Naas/xD4efC8+le/WjFLx
 JgNqRbxR0myhQxS9C1R4Tapor73Iw0RjIT5xa8To1gF9PYAz4P8yDRXnV A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10255"; a="229748275"
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600"; d="scan'208";a="229748275"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 10:21:48 -0800
X-IronPort-AV: E=Sophos;i="5.88,361,1635231600"; d="scan'208";a="527044287"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2022 10:21:46 -0800
Date: Fri, 11 Feb 2022 20:21:42 +0200
From: Imre Deak <imre.deak@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>
Message-ID: <20220211182142.GB513586@ideak-desk.fi.intel.com>
References: <20220208113656.179823-1-imre.deak@intel.com>
 <20220208113656.179823-10-imre.deak@intel.com>
 <a7a79401c8f9f616bfcc20131fa615df760ba3f6.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a7a79401c8f9f616bfcc20131fa615df760ba3f6.camel@intel.com>
Subject: Re: [Intel-gfx] [PATCH v2 09/26] drm/i915: Move per-platform power
 well hooks to intel_display_power_well.c
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

On Fri, Feb 11, 2022 at 05:47:21PM +0200, Hogander, Jouni wrote:
> On Tue, 2022-02-08 at 13:36 +0200, Imre Deak wrote:
> > Move the implementation of platform specific power well hooks to
> > intel_display_power_well.c, to reduce the clutter in
> > intel_display_power.c.
> 
> In these hooks you are also moving some of the mutex_locking/unlocking
> into intel_display_power_well.c. Maybe some mention here which
> functions are expected being called with powerdomain mutex held?

Yes, chv_phy_powergate_ch/lanes() which need to access a PHY register,
used both for toggling power wells and for power gating unused PHY
lanes. Will add a comment about this.

Also forgot to move the the declaration for these to
intel_display_power_well.h, will fix that up.

> One inline comment below.
> 
> >
> > No functional change.
> >
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> > ---
> >  .../drm/i915/display/intel_display_power.c    | 1759 -------------
> > ---
> >  .../i915/display/intel_display_power_well.c   | 1817
> > +++++++++++++++++
> >  .../i915/display/intel_display_power_well.h   |   57 +-
> >  3 files changed, 1839 insertions(+), 1794 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c
> > b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 61eaacdac5af2..3414013e7f449 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -7,23 +7,15 @@
> >  #include "i915_irq.h"
> >  #include "intel_cdclk.h"
> >  #include "intel_combo_phy.h"
> > -#include "intel_combo_phy_regs.h"
> > -#include "intel_crt.h"
> >  #include "intel_de.h"
> >  #include "intel_display_power.h"
> >  #include "intel_display_power_well.h"
> >  #include "intel_display_types.h"
> >  #include "intel_dmc.h"
> > -#include "intel_dpio_phy.h"
> > -#include "intel_dpll.h"
> > -#include "intel_hotplug.h"
> >  #include "intel_pch_refclk.h"
> >  #include "intel_pcode.h"
> >  #include "intel_pm.h"
> > -#include "intel_pps.h"
> >  #include "intel_snps_phy.h"
> > -#include "intel_tc.h"
> > -#include "intel_vga.h"
> >  #include "vlv_sideband.h"
> >
> >  const char *
> > @@ -232,604 +224,6 @@ bool intel_display_power_is_enabled(struct
> > drm_i915_private *dev_priv,
> >       return ret;
> >  }
> >
> > -/*
> > - * Starting with Haswell, we have a "Power Down Well" that can be
> > turned off
> > - * when not needed anymore. We have 4 registers that can request the
> > power well
> > - * to be enabled, and it will only be disabled if none of the
> > registers is
> > - * requesting it to be enabled.
> > - */
> > -static void hsw_power_well_post_enable(struct drm_i915_private
> > *dev_priv,
> > -                                    u8 irq_pipe_mask, bool has_vga)
> > -{
> > -     if (has_vga)
> > -             intel_vga_reset_io_mem(dev_priv);
> > -
> > -     if (irq_pipe_mask)
> > -             gen8_irq_power_well_post_enable(dev_priv,
> > irq_pipe_mask);
> > -}
> > -
> > -static void hsw_power_well_pre_disable(struct drm_i915_private
> > *dev_priv,
> > -                                    u8 irq_pipe_mask)
> > -{
> > -     if (irq_pipe_mask)
> > -             gen8_irq_power_well_pre_disable(dev_priv,
> > irq_pipe_mask);
> > -}
> > -
> > -#define ICL_AUX_PW_TO_CH(pw_idx)     \
> > -     ((pw_idx) - ICL_PW_CTL_IDX_AUX_A + AUX_CH_A)
> > -
> > -#define ICL_TBT_AUX_PW_TO_CH(pw_idx) \
> > -     ((pw_idx) - ICL_PW_CTL_IDX_AUX_TBT1 + AUX_CH_C)
> > -
> > -static enum aux_ch icl_aux_pw_to_ch(const struct i915_power_well
> > *power_well)
> > -{
> > -     int pw_idx = power_well->desc->hsw.idx;
> > -
> > -     return power_well->desc->hsw.is_tc_tbt ?
> > ICL_TBT_AUX_PW_TO_CH(pw_idx) :
> > -                                              ICL_AUX_PW_TO_CH(pw_id
> > x);
> > -}
> > -
> > -static struct intel_digital_port *
> > -aux_ch_to_digital_port(struct drm_i915_private *dev_priv,
> > -                    enum aux_ch aux_ch)
> > -{
> > -     struct intel_digital_port *dig_port = NULL;
> > -     struct intel_encoder *encoder;
> > -
> > -     for_each_intel_encoder(&dev_priv->drm, encoder) {
> > -             /* We'll check the MST primary port */
> > -             if (encoder->type == INTEL_OUTPUT_DP_MST)
> > -                     continue;
> > -
> > -             dig_port = enc_to_dig_port(encoder);
> > -             if (!dig_port)
> > -                     continue;
> > -
> > -             if (dig_port->aux_ch != aux_ch) {
> > -                     dig_port = NULL;
> > -                     continue;
> > -             }
> > -
> > -             break;
> > -     }
> > -
> > -     return dig_port;
> > -}
> > -
> > -static enum phy icl_aux_pw_to_phy(struct drm_i915_private *i915,
> > -                               const struct i915_power_well
> > *power_well)
> > -{
> > -     enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
> > -     struct intel_digital_port *dig_port =
> > aux_ch_to_digital_port(i915, aux_ch);
> > -
> > -     return intel_port_to_phy(i915, dig_port->base.port);
> > -}
> > -
> > -static void hsw_wait_for_power_well_enable(struct drm_i915_private
> > *dev_priv,
> > -                                        struct i915_power_well
> > *power_well,
> > -                                        bool timeout_expected)
> > -{
> > -     const struct i915_power_well_regs *regs = power_well->desc-
> > >ops->regs;
> > -     int pw_idx = power_well->desc->hsw.idx;
> > -     int enable_delay = power_well->desc->hsw.fixed_enable_delay;
> > -
> > -     /*
> > -      * For some power wells we're not supposed to watch the status
> > bit for
> > -      * an ack, but rather just wait a fixed amount of time and then
> > -      * proceed.  This is only used on DG2.
> > -      */
> > -     if (IS_DG2(dev_priv) && enable_delay) {
> > -             usleep_range(enable_delay, 2 * enable_delay);
> > -             return;
> > -     }
> > -
> > -     /* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us.
> > */
> > -     if (intel_de_wait_for_set(dev_priv, regs->driver,
> > -                               HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
> > -             drm_dbg_kms(&dev_priv->drm, "%s power well enable
> > timeout\n",
> > -                         intel_power_well_name(power_well));
> > -
> > -             drm_WARN_ON(&dev_priv->drm, !timeout_expected);
> > -
> > -     }
> > -}
> > -
> > -static u32 hsw_power_well_requesters(struct drm_i915_private
> > *dev_priv,
> > -                                  const struct i915_power_well_regs
> > *regs,
> > -                                  int pw_idx)
> > -{
> > -     u32 req_mask = HSW_PWR_WELL_CTL_REQ(pw_idx);
> > -     u32 ret;
> > -
> > -     ret = intel_de_read(dev_priv, regs->bios) & req_mask ? 1 : 0;
> > -     ret |= intel_de_read(dev_priv, regs->driver) & req_mask ? 2 :
> > 0;
> > -     if (regs->kvmr.reg)
> > -             ret |= intel_de_read(dev_priv, regs->kvmr) & req_mask ?
> > 4 : 0;
> > -     ret |= intel_de_read(dev_priv, regs->debug) & req_mask ? 8 : 0;
> > -
> > -     return ret;
> > -}
> > -
> > -static void hsw_wait_for_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > -                                         struct i915_power_well
> > *power_well)
> > -{
> > -     const struct i915_power_well_regs *regs = power_well->desc-
> > >ops->regs;
> > -     int pw_idx = power_well->desc->hsw.idx;
> > -     bool disabled;
> > -     u32 reqs;
> > -
> > -     /*
> > -      * Bspec doesn't require waiting for PWs to get disabled, but
> > still do
> > -      * this for paranoia. The known cases where a PW will be forced
> > on:
> > -      * - a KVMR request on any power well via the KVMR request
> > register
> > -      * - a DMC request on PW1 and MISC_IO power wells via the BIOS
> > and
> > -      *   DEBUG request registers
> > -      * Skip the wait in case any of the request bits are set and
> > print a
> > -      * diagnostic message.
> > -      */
> > -     wait_for((disabled = !(intel_de_read(dev_priv, regs->driver) &
> > -                            HSW_PWR_WELL_CTL_STATE(pw_idx))) ||
> > -              (reqs = hsw_power_well_requesters(dev_priv, regs,
> > pw_idx)), 1);
> > -     if (disabled)
> > -             return;
> > -
> > -     drm_dbg_kms(&dev_priv->drm,
> > -                 "%s forced on (bios:%d driver:%d kvmr:%d
> > debug:%d)\n",
> > -                 intel_power_well_name(power_well),
> > -                 !!(reqs & 1), !!(reqs & 2), !!(reqs & 4), !!(reqs &
> > 8));
> > -}
> > -
> > -static void gen9_wait_for_power_well_fuses(struct drm_i915_private
> > *dev_priv,
> > -                                        enum skl_power_gate pg)
> > -{
> > -     /* Timeout 5us for PG#0, for other PGs 1us */
> > -     drm_WARN_ON(&dev_priv->drm,
> > -                 intel_de_wait_for_set(dev_priv, SKL_FUSE_STATUS,
> > -                                       SKL_FUSE_PG_DIST_STATUS(pg),
> > 1));
> > -}
> > -
> > -static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
> > -                               struct i915_power_well *power_well)
> > -{
> > -     const struct i915_power_well_regs *regs = power_well->desc-
> > >ops->regs;
> > -     int pw_idx = power_well->desc->hsw.idx;
> > -     u32 val;
> > -
> > -     if (power_well->desc->hsw.has_fuses) {
> > -             enum skl_power_gate pg;
> > -
> > -             pg = DISPLAY_VER(dev_priv) >= 11 ?
> > ICL_PW_CTL_IDX_TO_PG(pw_idx) :
> > -                                              SKL_PW_CTL_IDX_TO_PG(p
> > w_idx);
> > -
> > -             /* Wa_16013190616:adlp */
> > -             if (IS_ALDERLAKE_P(dev_priv) && pg == SKL_PG1)
> > -                     intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
> > DISABLE_FLR_SRC);
> > -
> > -             /*
> > -              * For PW1 we have to wait both for the PW0/PG0 fuse
> > state
> > -              * before enabling the power well and PW1/PG1's own
> > fuse
> > -              * state after the enabling. For all other power wells
> > with
> > -              * fuses we only have to wait for that PW/PG's fuse
> > state
> > -              * after the enabling.
> > -              */
> > -             if (pg == SKL_PG1)
> > -                     gen9_wait_for_power_well_fuses(dev_priv,
> > SKL_PG0);
> > -     }
> > -
> > -     val = intel_de_read(dev_priv, regs->driver);
> > -     intel_de_write(dev_priv, regs->driver,
> > -                    val | HSW_PWR_WELL_CTL_REQ(pw_idx));
> > -
> > -     hsw_wait_for_power_well_enable(dev_priv, power_well, false);
> > -
> > -     if (power_well->desc->hsw.has_fuses) {
> > -             enum skl_power_gate pg;
> > -
> > -             pg = DISPLAY_VER(dev_priv) >= 11 ?
> > ICL_PW_CTL_IDX_TO_PG(pw_idx) :
> > -                                              SKL_PW_CTL_IDX_TO_PG(p
> > w_idx);
> > -             gen9_wait_for_power_well_fuses(dev_priv, pg);
> > -     }
> > -
> > -     hsw_power_well_post_enable(dev_priv,
> > -                                power_well->desc->hsw.irq_pipe_mask,
> > -                                power_well->desc->hsw.has_vga);
> > -}
> > -
> > -static void hsw_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > -                                struct i915_power_well *power_well)
> > -{
> > -     const struct i915_power_well_regs *regs = power_well->desc-
> > >ops->regs;
> > -     int pw_idx = power_well->desc->hsw.idx;
> > -     u32 val;
> > -
> > -     hsw_power_well_pre_disable(dev_priv,
> > -                                power_well->desc-
> > >hsw.irq_pipe_mask);
> > -
> > -     val = intel_de_read(dev_priv, regs->driver);
> > -     intel_de_write(dev_priv, regs->driver,
> > -                    val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
> > -     hsw_wait_for_power_well_disable(dev_priv, power_well);
> > -}
> > -
> > -static void
> > -icl_combo_phy_aux_power_well_enable(struct drm_i915_private
> > *dev_priv,
> > -                                 struct i915_power_well *power_well)
> > -{
> > -     const struct i915_power_well_regs *regs = power_well->desc-
> > >ops->regs;
> > -     int pw_idx = power_well->desc->hsw.idx;
> > -     enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
> > -     u32 val;
> > -
> > -     drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
> > -
> > -     val = intel_de_read(dev_priv, regs->driver);
> > -     intel_de_write(dev_priv, regs->driver,
> > -                    val | HSW_PWR_WELL_CTL_REQ(pw_idx));
> > -
> > -     if (DISPLAY_VER(dev_priv) < 12) {
> > -             val = intel_de_read(dev_priv, ICL_PORT_CL_DW12(phy));
> > -             intel_de_write(dev_priv, ICL_PORT_CL_DW12(phy),
> > -                            val | ICL_LANE_ENABLE_AUX);
> > -     }
> > -
> > -     hsw_wait_for_power_well_enable(dev_priv, power_well, false);
> > -
> > -     /* Display WA #1178: icl */
> > -     if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <=
> > ICL_PW_CTL_IDX_AUX_B &&
> > -         !intel_bios_is_port_edp(dev_priv, (enum port)phy)) {
> > -             val = intel_de_read(dev_priv,
> > ICL_AUX_ANAOVRD1(pw_idx));
> > -             val |= ICL_AUX_ANAOVRD1_ENABLE |
> > ICL_AUX_ANAOVRD1_LDO_BYPASS;
> > -             intel_de_write(dev_priv, ICL_AUX_ANAOVRD1(pw_idx),
> > val);
> > -     }
> > -}
> > -
> > -static void
> > -icl_combo_phy_aux_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > -                                  struct i915_power_well
> > *power_well)
> > -{
> > -     const struct i915_power_well_regs *regs = power_well->desc-
> > >ops->regs;
> > -     int pw_idx = power_well->desc->hsw.idx;
> > -     enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
> > -     u32 val;
> > -
> > -     drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
> > -
> > -     val = intel_de_read(dev_priv, ICL_PORT_CL_DW12(phy));
> > -     intel_de_write(dev_priv, ICL_PORT_CL_DW12(phy),
> > -                    val & ~ICL_LANE_ENABLE_AUX);
> > -
> > -     val = intel_de_read(dev_priv, regs->driver);
> > -     intel_de_write(dev_priv, regs->driver,
> > -                    val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
> > -
> > -     hsw_wait_for_power_well_disable(dev_priv, power_well);
> > -}
> > -
> > -#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> > -
> > -static void icl_tc_port_assert_ref_held(struct drm_i915_private
> > *dev_priv,
> > -                                     struct i915_power_well
> > *power_well,
> > -                                     struct intel_digital_port
> > *dig_port)
> > -{
> > -     if (drm_WARN_ON(&dev_priv->drm, !dig_port))
> > -             return;
> > -
> > -     if (DISPLAY_VER(dev_priv) == 11 &&
> > intel_tc_cold_requires_aux_pw(dig_port))
> > -             return;
> > -
> > -     drm_WARN_ON(&dev_priv->drm, !intel_tc_port_ref_held(dig_port));
> > -}
> > -
> > -#else
> > -
> > -static void icl_tc_port_assert_ref_held(struct drm_i915_private
> > *dev_priv,
> > -                                     struct i915_power_well
> > *power_well,
> > -                                     struct intel_digital_port
> > *dig_port)
> > -{
> > -}
> > -
> > -#endif
> > -
> > -#define TGL_AUX_PW_TO_TC_PORT(pw_idx)        ((pw_idx) -
> > TGL_PW_CTL_IDX_AUX_TC1)
> > -
> > -static void icl_tc_cold_exit(struct drm_i915_private *i915)
> > -{
> > -     int ret, tries = 0;
> > -
> > -     while (1) {
> > -             ret = snb_pcode_write_timeout(i915,
> > ICL_PCODE_EXIT_TCCOLD, 0,
> > -                                           250, 1);
> > -             if (ret != -EAGAIN || ++tries == 3)
> > -                     break;
> > -             msleep(1);
> > -     }
> > -
> > -     /* Spec states that TC cold exit can take up to 1ms to complete
> > */
> > -     if (!ret)
> > -             msleep(1);
> > -
> > -     /* TODO: turn failure into a error as soon i915 CI updates ICL
> > IFWI */
> > -     drm_dbg_kms(&i915->drm, "TC cold block %s\n", ret ? "failed" :
> > -                 "succeeded");
> > -}
> > -
> > -static void
> > -icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> > -                              struct i915_power_well *power_well)
> > -{
> > -     enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
> > -     struct intel_digital_port *dig_port =
> > aux_ch_to_digital_port(dev_priv, aux_ch);
> > -     const struct i915_power_well_regs *regs = power_well->desc-
> > >ops->regs;
> > -     bool is_tbt = power_well->desc->hsw.is_tc_tbt;
> > -     bool timeout_expected;
> > -     u32 val;
> > -
> > -     icl_tc_port_assert_ref_held(dev_priv, power_well, dig_port);
> > -
> > -     val = intel_de_read(dev_priv, DP_AUX_CH_CTL(aux_ch));
> > -     val &= ~DP_AUX_CH_CTL_TBT_IO;
> > -     if (is_tbt)
> > -             val |= DP_AUX_CH_CTL_TBT_IO;
> > -     intel_de_write(dev_priv, DP_AUX_CH_CTL(aux_ch), val);
> > -
> > -     val = intel_de_read(dev_priv, regs->driver);
> > -     intel_de_write(dev_priv, regs->driver,
> > -                    val | HSW_PWR_WELL_CTL_REQ(power_well->desc-
> > >hsw.idx));
> > -
> > -     /*
> > -      * An AUX timeout is expected if the TBT DP tunnel is down,
> > -      * or need to enable AUX on a legacy TypeC port as part of the
> > TC-cold
> > -      * exit sequence.
> > -      */
> > -     timeout_expected = is_tbt ||
> > intel_tc_cold_requires_aux_pw(dig_port);
> > -     if (DISPLAY_VER(dev_priv) == 11 &&
> > intel_tc_cold_requires_aux_pw(dig_port))
> > -             icl_tc_cold_exit(dev_priv);
> > -
> > -     hsw_wait_for_power_well_enable(dev_priv, power_well,
> > timeout_expected);
> > -
> > -     if (DISPLAY_VER(dev_priv) >= 12 && !is_tbt) {
> > -             enum tc_port tc_port;
> > -
> > -             tc_port = TGL_AUX_PW_TO_TC_PORT(power_well->desc-
> > >hsw.idx);
> > -             intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
> > -                            HIP_INDEX_VAL(tc_port, 0x2));
> > -
> > -             if (intel_de_wait_for_set(dev_priv,
> > DKL_CMN_UC_DW_27(tc_port),
> > -                                       DKL_CMN_UC_DW27_UC_HEALTH,
> > 1))
> > -                     drm_warn(&dev_priv->drm,
> > -                              "Timeout waiting TC uC health\n");
> > -     }
> > -}
> > -
> > -static void
> > -icl_aux_power_well_enable(struct drm_i915_private *dev_priv,
> > -                       struct i915_power_well *power_well)
> > -{
> > -     enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
> > -
> > -     if (intel_phy_is_tc(dev_priv, phy))
> > -             return icl_tc_phy_aux_power_well_enable(dev_priv,
> > power_well);
> > -     else if (IS_ICELAKE(dev_priv))
> > -             return icl_combo_phy_aux_power_well_enable(dev_priv,
> > -                                                        power_well);
> > -     else
> > -             return hsw_power_well_enable(dev_priv, power_well);
> > -}
> > -
> > -static void
> > -icl_aux_power_well_disable(struct drm_i915_private *dev_priv,
> > -                        struct i915_power_well *power_well)
> > -{
> > -     enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
> > -
> > -     if (intel_phy_is_tc(dev_priv, phy))
> > -             return hsw_power_well_disable(dev_priv, power_well);
> > -     else if (IS_ICELAKE(dev_priv))
> > -             return icl_combo_phy_aux_power_well_disable(dev_priv,
> > -                                                         power_well)
> > ;
> > -     else
> > -             return hsw_power_well_disable(dev_priv, power_well);
> > -}
> > -
> > -/*
> > - * We should only use the power well if we explicitly asked the
> > hardware to
> > - * enable it, so check if it's enabled and also check if we've
> > requested it to
> > - * be enabled.
> > - */
> > -static bool hsw_power_well_enabled(struct drm_i915_private
> > *dev_priv,
> > -                                struct i915_power_well *power_well)
> > -{
> > -     const struct i915_power_well_regs *regs = power_well->desc-
> > >ops->regs;
> > -     enum i915_power_well_id id = power_well->desc->id;
> > -     int pw_idx = power_well->desc->hsw.idx;
> > -     u32 mask = HSW_PWR_WELL_CTL_REQ(pw_idx) |
> > -                HSW_PWR_WELL_CTL_STATE(pw_idx);
> > -     u32 val;
> > -
> > -     val = intel_de_read(dev_priv, regs->driver);
> > -
> > -     /*
> > -      * On GEN9 big core due to a DMC bug the driver's request bits
> > for PW1
> > -      * and the MISC_IO PW will be not restored, so check instead
> > for the
> > -      * BIOS's own request bits, which are forced-on for these power
> > wells
> > -      * when exiting DC5/6.
> > -      */
> > -     if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv) &&
> > -         (id == SKL_DISP_PW_1 || id == SKL_DISP_PW_MISC_IO))
> > -             val |= intel_de_read(dev_priv, regs->bios);
> > -
> > -     return (val & mask) == mask;
> > -}
> > -
> > -static void assert_can_enable_dc9(struct drm_i915_private *dev_priv)
> > -{
> > -     drm_WARN_ONCE(&dev_priv->drm,
> > -                   (intel_de_read(dev_priv, DC_STATE_EN) &
> > DC_STATE_EN_DC9),
> > -                   "DC9 already programmed to be enabled.\n");
> > -     drm_WARN_ONCE(&dev_priv->drm,
> > -                   intel_de_read(dev_priv, DC_STATE_EN) &
> > -                   DC_STATE_EN_UPTO_DC5,
> > -                   "DC5 still not disabled to enable DC9.\n");
> > -     drm_WARN_ONCE(&dev_priv->drm,
> > -                   intel_de_read(dev_priv, HSW_PWR_WELL_CTL2) &
> > -                   HSW_PWR_WELL_CTL_REQ(SKL_PW_CTL_IDX_PW_2),
> > -                   "Power well 2 on.\n");
> > -     drm_WARN_ONCE(&dev_priv->drm, intel_irqs_enabled(dev_priv),
> > -                   "Interrupts not disabled yet.\n");
> > -
> > -      /*
> > -       * TODO: check for the following to verify the conditions to
> > enter DC9
> > -       * state are satisfied:
> > -       * 1] Check relevant display engine registers to verify if
> > mode set
> > -       * disable sequence was followed.
> > -       * 2] Check if display uninitialize sequence is initialized.
> > -       */
> > -}
> > -
> > -static void assert_can_disable_dc9(struct drm_i915_private
> > *dev_priv)
> > -{
> > -     drm_WARN_ONCE(&dev_priv->drm, intel_irqs_enabled(dev_priv),
> > -                   "Interrupts not disabled yet.\n");
> > -     drm_WARN_ONCE(&dev_priv->drm,
> > -                   intel_de_read(dev_priv, DC_STATE_EN) &
> > -                   DC_STATE_EN_UPTO_DC5,
> > -                   "DC5 still not disabled.\n");
> > -
> > -      /*
> > -       * TODO: check for the following to verify DC9 state was
> > indeed
> > -       * entered before programming to disable it:
> > -       * 1] Check relevant display engine registers to verify if
> > mode
> > -       *  set disable sequence was followed.
> > -       * 2] Check if display uninitialize sequence is initialized.
> > -       */
> > -}
> > -
> > -static void gen9_write_dc_state(struct drm_i915_private *dev_priv,
> > -                             u32 state)
> > -{
> > -     int rewrites = 0;
> > -     int rereads = 0;
> > -     u32 v;
> > -
> > -     intel_de_write(dev_priv, DC_STATE_EN, state);
> > -
> > -     /* It has been observed that disabling the dc6 state sometimes
> > -      * doesn't stick and dmc keeps returning old value. Make sure
> > -      * the write really sticks enough times and also force rewrite
> > until
> > -      * we are confident that state is exactly what we want.
> > -      */
> > -     do  {
> > -             v = intel_de_read(dev_priv, DC_STATE_EN);
> > -
> > -             if (v != state) {
> > -                     intel_de_write(dev_priv, DC_STATE_EN, state);
> > -                     rewrites++;
> > -                     rereads = 0;
> > -             } else if (rereads++ > 5) {
> > -                     break;
> > -             }
> > -
> > -     } while (rewrites < 100);
> > -
> > -     if (v != state)
> > -             drm_err(&dev_priv->drm,
> > -                     "Writing dc state to 0x%x failed, now 0x%x\n",
> > -                     state, v);
> > -
> > -     /* Most of the times we need one retry, avoid spam */
> > -     if (rewrites > 1)
> > -             drm_dbg_kms(&dev_priv->drm,
> > -                         "Rewrote dc state to 0x%x %d times\n",
> > -                         state, rewrites);
> > -}
> > -
> > -static u32 gen9_dc_mask(struct drm_i915_private *dev_priv)
> > -{
> > -     u32 mask;
> > -
> > -     mask = DC_STATE_EN_UPTO_DC5;
> > -
> > -     if (DISPLAY_VER(dev_priv) >= 12)
> > -             mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6
> > -                                       | DC_STATE_EN_DC9;
> > -     else if (DISPLAY_VER(dev_priv) == 11)
> > -             mask |= DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
> > -     else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> > -             mask |= DC_STATE_EN_DC9;
> > -     else
> > -             mask |= DC_STATE_EN_UPTO_DC6;
> > -
> > -     return mask;
> > -}
> > -
> > -static void gen9_sanitize_dc_state(struct drm_i915_private
> > *dev_priv)
> > -{
> > -     u32 val;
> > -
> > -     if (!HAS_DISPLAY(dev_priv))
> > -             return;
> > -
> > -     val = intel_de_read(dev_priv, DC_STATE_EN) &
> > gen9_dc_mask(dev_priv);
> > -
> > -     drm_dbg_kms(&dev_priv->drm,
> > -                 "Resetting DC state tracking from %02x to %02x\n",
> > -                 dev_priv->dmc.dc_state, val);
> > -     dev_priv->dmc.dc_state = val;
> > -}
> > -
> > -/**
> > - * gen9_set_dc_state - set target display C power state
> > - * @dev_priv: i915 device instance
> > - * @state: target DC power state
> > - * - DC_STATE_DISABLE
> > - * - DC_STATE_EN_UPTO_DC5
> > - * - DC_STATE_EN_UPTO_DC6
> > - * - DC_STATE_EN_DC9
> > - *
> > - * Signal to DMC firmware/HW the target DC power state passed in
> > @state.
> > - * DMC/HW can turn off individual display clocks and power rails
> > when entering
> > - * a deeper DC power state (higher in number) and turns these back
> > when exiting
> > - * that state to a shallower power state (lower in number). The HW
> > will decide
> > - * when to actually enter a given state on an on-demand basis, for
> > instance
> > - * depending on the active state of display pipes. The state of
> > display
> > - * registers backed by affected power rails are saved/restored as
> > needed.
> > - *
> > - * Based on the above enabling a deeper DC power state is
> > asynchronous wrt.
> > - * enabling it. Disabling a deeper power state is synchronous: for
> > instance
> > - * setting %DC_STATE_DISABLE won't complete until all HW resources
> > are turned
> > - * back on and register state is restored. This is guaranteed by the
> > MMIO write
> > - * to DC_STATE_EN blocking until the state is restored.
> > - */
> > -static void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32
> > state)
> > -{
> > -     u32 val;
> > -     u32 mask;
> > -
> > -     if (!HAS_DISPLAY(dev_priv))
> > -             return;
> > -
> > -     if (drm_WARN_ON_ONCE(&dev_priv->drm,
> > -                          state & ~dev_priv->dmc.allowed_dc_mask))
> > -             state &= dev_priv->dmc.allowed_dc_mask;
> > -
> > -     val = intel_de_read(dev_priv, DC_STATE_EN);
> > -     mask = gen9_dc_mask(dev_priv);
> > -     drm_dbg_kms(&dev_priv->drm, "Setting DC state from %02x to
> > %02x\n",
> > -                 val & mask, state);
> > -
> > -     /* Check if DMC is ignoring our DC state requests */
> > -     if ((val & mask) != dev_priv->dmc.dc_state)
> > -             drm_err(&dev_priv->drm, "DC state mismatch (0x%x ->
> > 0x%x)\n",
> > -                     dev_priv->dmc.dc_state, val & mask);
> > -
> > -     val &= ~mask;
> > -     val |= state;
> > -
> > -     gen9_write_dc_state(dev_priv, val);
> > -
> > -     dev_priv->dmc.dc_state = val & mask;
> > -}
> > -
> >  static u32
> >  sanitize_target_dc_state(struct drm_i915_private *dev_priv,
> >                        u32 target_dc_state)
> > @@ -855,65 +249,6 @@ sanitize_target_dc_state(struct drm_i915_private
> > *dev_priv,
> >       return target_dc_state;
> >  }
> >
> > -static void tgl_enable_dc3co(struct drm_i915_private *dev_priv)
> > -{
> > -     drm_dbg_kms(&dev_priv->drm, "Enabling DC3CO\n");
> > -     gen9_set_dc_state(dev_priv, DC_STATE_EN_DC3CO);
> > -}
> > -
> > -static void tgl_disable_dc3co(struct drm_i915_private *dev_priv)
> > -{
> > -     u32 val;
> > -
> > -     drm_dbg_kms(&dev_priv->drm, "Disabling DC3CO\n");
> > -     val = intel_de_read(dev_priv, DC_STATE_EN);
> > -     val &= ~DC_STATE_DC3CO_STATUS;
> > -     intel_de_write(dev_priv, DC_STATE_EN, val);
> > -     gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
> > -     /*
> > -      * Delay of 200us DC3CO Exit time B.Spec 49196
> > -      */
> > -     usleep_range(200, 210);
> > -}
> > -
> > -static void bxt_enable_dc9(struct drm_i915_private *dev_priv)
> > -{
> > -     assert_can_enable_dc9(dev_priv);
> > -
> > -     drm_dbg_kms(&dev_priv->drm, "Enabling DC9\n");
> > -     /*
> > -      * Power sequencer reset is not needed on
> > -      * platforms with South Display Engine on PCH,
> > -      * because PPS registers are always on.
> > -      */
> > -     if (!HAS_PCH_SPLIT(dev_priv))
> > -             intel_pps_reset_all(dev_priv);
> > -     gen9_set_dc_state(dev_priv, DC_STATE_EN_DC9);
> > -}
> > -
> > -static void bxt_disable_dc9(struct drm_i915_private *dev_priv)
> > -{
> > -     assert_can_disable_dc9(dev_priv);
> > -
> > -     drm_dbg_kms(&dev_priv->drm, "Disabling DC9\n");
> > -
> > -     gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
> > -
> > -     intel_pps_unlock_regs_wa(dev_priv);
> > -}
> > -
> > -static void assert_dmc_loaded(struct drm_i915_private *dev_priv)
> > -{
> > -     drm_WARN_ONCE(&dev_priv->drm,
> > -                   !intel_de_read(dev_priv,
> > -                                  DMC_PROGRAM(dev_priv-
> > >dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
> > -                                  "DMC program storage start is
> > NULL\n");
> > -     drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv,
> > DMC_SSP_BASE),
> > -                   "DMC SSP Base Not fine\n");
> > -     drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv,
> > DMC_HTP_SKL),
> > -                   "DMC HTP Not fine\n");
> > -}
> > -
> >  /**
> >   * intel_display_power_set_target_dc_state - Set target dc state.
> >   * @dev_priv: i915 device
> > @@ -958,912 +293,8 @@ void
> > intel_display_power_set_target_dc_state(struct drm_i915_private
> > *dev_priv,
> >       mutex_unlock(&power_domains->lock);
> >  }
> >
> > -static void assert_can_enable_dc5(struct drm_i915_private *dev_priv)
> > -{
> > -     enum i915_power_well_id high_pg;
> > -
> > -     /* Power wells at this level and above must be disabled for DC5
> > entry */
> > -     if (DISPLAY_VER(dev_priv) == 12)
> > -             high_pg = ICL_DISP_PW_3;
> > -     else
> > -             high_pg = SKL_DISP_PW_2;
> > -
> > -     drm_WARN_ONCE(&dev_priv->drm,
> > -                   intel_display_power_well_is_enabled(dev_priv,
> > high_pg),
> > -                   "Power wells above platform's DC5 limit still
> > enabled.\n");
> > -
> > -     drm_WARN_ONCE(&dev_priv->drm,
> > -                   (intel_de_read(dev_priv, DC_STATE_EN) &
> > -                    DC_STATE_EN_UPTO_DC5),
> > -                   "DC5 already programmed to be enabled.\n");
> > -     assert_rpm_wakelock_held(&dev_priv->runtime_pm);
> > -
> > -     assert_dmc_loaded(dev_priv);
> > -}
> > -
> > -static void gen9_enable_dc5(struct drm_i915_private *dev_priv)
> > -{
> > -     assert_can_enable_dc5(dev_priv);
> > -
> > -     drm_dbg_kms(&dev_priv->drm, "Enabling DC5\n");
> > -
> > -     /* Wa Display #1183: skl,kbl,cfl */
> > -     if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
> > -             intel_de_write(dev_priv, GEN8_CHICKEN_DCPR_1,
> > -                            intel_de_read(dev_priv,
> > GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);
> > -
> > -     gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC5);
> > -}
> > -
> > -static void assert_can_enable_dc6(struct drm_i915_private *dev_priv)
> > -{
> > -     drm_WARN_ONCE(&dev_priv->drm,
> > -                   intel_de_read(dev_priv, UTIL_PIN_CTL) &
> > UTIL_PIN_ENABLE,
> > -                   "Backlight is not disabled.\n");
> > -     drm_WARN_ONCE(&dev_priv->drm,
> > -                   (intel_de_read(dev_priv, DC_STATE_EN) &
> > -                    DC_STATE_EN_UPTO_DC6),
> > -                   "DC6 already programmed to be enabled.\n");
> > -
> > -     assert_dmc_loaded(dev_priv);
> > -}
> > -
> > -static void skl_enable_dc6(struct drm_i915_private *dev_priv)
> > -{
> > -     assert_can_enable_dc6(dev_priv);
> > -
> > -     drm_dbg_kms(&dev_priv->drm, "Enabling DC6\n");
> > -
> > -     /* Wa Display #1183: skl,kbl,cfl */
> > -     if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
> > -             intel_de_write(dev_priv, GEN8_CHICKEN_DCPR_1,
> > -                            intel_de_read(dev_priv,
> > GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);
> > -
> > -     gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
> > -}
> > -
> > -static void hsw_power_well_sync_hw(struct drm_i915_private
> > *dev_priv,
> > -                                struct i915_power_well *power_well)
> > -{
> > -     const struct i915_power_well_regs *regs = power_well->desc-
> > >ops->regs;
> > -     int pw_idx = power_well->desc->hsw.idx;
> > -     u32 mask = HSW_PWR_WELL_CTL_REQ(pw_idx);
> > -     u32 bios_req = intel_de_read(dev_priv, regs->bios);
> > -
> > -     /* Take over the request bit if set by BIOS. */
> > -     if (bios_req & mask) {
> > -             u32 drv_req = intel_de_read(dev_priv, regs->driver);
> > -
> > -             if (!(drv_req & mask))
> > -                     intel_de_write(dev_priv, regs->driver, drv_req
> > | mask);
> > -             intel_de_write(dev_priv, regs->bios, bios_req & ~mask);
> > -     }
> > -}
> > -
> > -static void bxt_dpio_cmn_power_well_enable(struct drm_i915_private
> > *dev_priv,
> > -                                        struct i915_power_well
> > *power_well)
> > -{
> > -     bxt_ddi_phy_init(dev_priv, power_well->desc->bxt.phy);
> > -}
> > -
> > -static void bxt_dpio_cmn_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > -                                         struct i915_power_well
> > *power_well)
> > -{
> > -     bxt_ddi_phy_uninit(dev_priv, power_well->desc->bxt.phy);
> > -}
> > -
> > -static bool bxt_dpio_cmn_power_well_enabled(struct drm_i915_private
> > *dev_priv,
> > -                                         struct i915_power_well
> > *power_well)
> > -{
> > -     return bxt_ddi_phy_is_enabled(dev_priv, power_well->desc-
> > >bxt.phy);
> > -}
> > -
> > -static void bxt_verify_ddi_phy_power_wells(struct drm_i915_private
> > *dev_priv)
> > -{
> > -     struct i915_power_well *power_well;
> > -
> > -     power_well = lookup_power_well(dev_priv,
> > BXT_DISP_PW_DPIO_CMN_A);
> > -     if (intel_power_well_refcount(power_well) > 0)
> > -             bxt_ddi_phy_verify_state(dev_priv, power_well->desc-
> > >bxt.phy);
> > -
> > -     power_well = lookup_power_well(dev_priv,
> > VLV_DISP_PW_DPIO_CMN_BC);
> > -     if (intel_power_well_refcount(power_well) > 0)
> > -             bxt_ddi_phy_verify_state(dev_priv, power_well->desc-
> > >bxt.phy);
> > -
> > -     if (IS_GEMINILAKE(dev_priv)) {
> > -             power_well = lookup_power_well(dev_priv,
> > -                                            GLK_DISP_PW_DPIO_CMN_C);
> > -             if (intel_power_well_refcount(power_well) > 0)
> > -                     bxt_ddi_phy_verify_state(dev_priv,
> > -                                              power_well->desc-
> > >bxt.phy);
> > -     }
> > -}
> > -
> > -static bool gen9_dc_off_power_well_enabled(struct drm_i915_private
> > *dev_priv,
> > -                                        struct i915_power_well
> > *power_well)
> > -{
> > -     return ((intel_de_read(dev_priv, DC_STATE_EN) &
> > DC_STATE_EN_DC3CO) == 0 &&
> > -             (intel_de_read(dev_priv, DC_STATE_EN) &
> > DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0);
> > -}
> > -
> > -static void gen9_assert_dbuf_enabled(struct drm_i915_private
> > *dev_priv)
> > -{
> > -     u8 hw_enabled_dbuf_slices =
> > intel_enabled_dbuf_slices_mask(dev_priv);
> > -     u8 enabled_dbuf_slices = dev_priv->dbuf.enabled_slices;
> > -
> > -     drm_WARN(&dev_priv->drm,
> > -              hw_enabled_dbuf_slices != enabled_dbuf_slices,
> > -              "Unexpected DBuf power power state (0x%08x, expected
> > 0x%08x)\n",
> > -              hw_enabled_dbuf_slices,
> > -              enabled_dbuf_slices);
> > -}
> > -
> > -static void gen9_disable_dc_states(struct drm_i915_private
> > *dev_priv)
> > -{
> > -     struct intel_cdclk_config cdclk_config = {};
> > -
> > -     if (dev_priv->dmc.target_dc_state == DC_STATE_EN_DC3CO) {
> > -             tgl_disable_dc3co(dev_priv);
> > -             return;
> > -     }
> > -
> > -     gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
> > -
> > -     if (!HAS_DISPLAY(dev_priv))
> > -             return;
> > -
> > -     intel_cdclk_get_cdclk(dev_priv, &cdclk_config);
> > -     /* Can't read out voltage_level so can't use
> > intel_cdclk_changed() */
> > -     drm_WARN_ON(&dev_priv->drm,
> > -                 intel_cdclk_needs_modeset(&dev_priv->cdclk.hw,
> > -                                           &cdclk_config));
> > -
> > -     gen9_assert_dbuf_enabled(dev_priv);
> > -
> > -     if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> > -             bxt_verify_ddi_phy_power_wells(dev_priv);
> > -
> > -     if (DISPLAY_VER(dev_priv) >= 11)
> > -             /*
> > -              * DMC retains HW context only for port A, the other
> > combo
> > -              * PHY's HW context for port B is lost after DC
> > transitions,
> > -              * so we need to restore it manually.
> > -              */
> > -             intel_combo_phy_init(dev_priv);
> > -}
> > -
> > -static void gen9_dc_off_power_well_enable(struct drm_i915_private
> > *dev_priv,
> > -                                       struct i915_power_well
> > *power_well)
> > -{
> > -     gen9_disable_dc_states(dev_priv);
> > -}
> > -
> > -static void gen9_dc_off_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > -                                        struct i915_power_well
> > *power_well)
> > -{
> > -     if (!intel_dmc_has_payload(dev_priv))
> > -             return;
> > -
> > -     switch (dev_priv->dmc.target_dc_state) {
> > -     case DC_STATE_EN_DC3CO:
> > -             tgl_enable_dc3co(dev_priv);
> > -             break;
> > -     case DC_STATE_EN_UPTO_DC6:
> > -             skl_enable_dc6(dev_priv);
> > -             break;
> > -     case DC_STATE_EN_UPTO_DC5:
> > -             gen9_enable_dc5(dev_priv);
> > -             break;
> > -     }
> > -}
> > -
> > -static void i9xx_power_well_sync_hw_noop(struct drm_i915_private
> > *dev_priv,
> > -                                      struct i915_power_well
> > *power_well)
> > -{
> > -}
> > -
> > -static void i9xx_always_on_power_well_noop(struct drm_i915_private
> > *dev_priv,
> > -                                        struct i915_power_well
> > *power_well)
> > -{
> > -}
> > -
> > -static bool i9xx_always_on_power_well_enabled(struct
> > drm_i915_private *dev_priv,
> > -                                          struct i915_power_well
> > *power_well)
> > -{
> > -     return true;
> > -}
> > -
> > -static void i830_pipes_power_well_enable(struct drm_i915_private
> > *dev_priv,
> > -                                      struct i915_power_well
> > *power_well)
> > -{
> > -     if ((intel_de_read(dev_priv, PIPECONF(PIPE_A)) &
> > PIPECONF_ENABLE) == 0)
> > -             i830_enable_pipe(dev_priv, PIPE_A);
> > -     if ((intel_de_read(dev_priv, PIPECONF(PIPE_B)) &
> > PIPECONF_ENABLE) == 0)
> > -             i830_enable_pipe(dev_priv, PIPE_B);
> > -}
> > -
> > -static void i830_pipes_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > -                                       struct i915_power_well
> > *power_well)
> > -{
> > -     i830_disable_pipe(dev_priv, PIPE_B);
> > -     i830_disable_pipe(dev_priv, PIPE_A);
> > -}
> > -
> > -static bool i830_pipes_power_well_enabled(struct drm_i915_private
> > *dev_priv,
> > -                                       struct i915_power_well
> > *power_well)
> > -{
> > -     return intel_de_read(dev_priv, PIPECONF(PIPE_A)) &
> > PIPECONF_ENABLE &&
> > -             intel_de_read(dev_priv, PIPECONF(PIPE_B)) &
> > PIPECONF_ENABLE;
> > -}
> > -
> > -static void i830_pipes_power_well_sync_hw(struct drm_i915_private
> > *dev_priv,
> > -                                       struct i915_power_well
> > *power_well)
> > -{
> > -     if (intel_power_well_refcount(power_well) > 0)
> > -             i830_pipes_power_well_enable(dev_priv, power_well);
> > -     else
> > -             i830_pipes_power_well_disable(dev_priv, power_well);
> > -}
> > -
> > -static void vlv_set_power_well(struct drm_i915_private *dev_priv,
> > -                            struct i915_power_well *power_well, bool
> > enable)
> > -{
> > -     int pw_idx = power_well->desc->vlv.idx;
> > -     u32 mask;
> > -     u32 state;
> > -     u32 ctrl;
> > -
> > -     mask = PUNIT_PWRGT_MASK(pw_idx);
> > -     state = enable ? PUNIT_PWRGT_PWR_ON(pw_idx) :
> > -                      PUNIT_PWRGT_PWR_GATE(pw_idx);
> > -
> > -     vlv_punit_get(dev_priv);
> > -
> > -#define COND \
> > -     ((vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_STATUS) & mask) ==
> > state)
> > -
> > -     if (COND)
> > -             goto out;
> > -
> > -     ctrl = vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_CTRL);
> > -     ctrl &= ~mask;
> > -     ctrl |= state;
> > -     vlv_punit_write(dev_priv, PUNIT_REG_PWRGT_CTRL, ctrl);
> > -
> > -     if (wait_for(COND, 100))
> > -             drm_err(&dev_priv->drm,
> > -                     "timeout setting power well state %08x
> > (%08x)\n",
> > -                     state,
> > -                     vlv_punit_read(dev_priv,
> > PUNIT_REG_PWRGT_CTRL));
> > -
> > -#undef COND
> > -
> > -out:
> > -     vlv_punit_put(dev_priv);
> > -}
> > -
> > -static void vlv_power_well_enable(struct drm_i915_private *dev_priv,
> > -                               struct i915_power_well *power_well)
> > -{
> > -     vlv_set_power_well(dev_priv, power_well, true);
> > -}
> > -
> > -static void vlv_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > -                                struct i915_power_well *power_well)
> > -{
> > -     vlv_set_power_well(dev_priv, power_well, false);
> > -}
> > -
> > -static bool vlv_power_well_enabled(struct drm_i915_private
> > *dev_priv,
> > -                                struct i915_power_well *power_well)
> > -{
> > -     int pw_idx = power_well->desc->vlv.idx;
> > -     bool enabled = false;
> > -     u32 mask;
> > -     u32 state;
> > -     u32 ctrl;
> > -
> > -     mask = PUNIT_PWRGT_MASK(pw_idx);
> > -     ctrl = PUNIT_PWRGT_PWR_ON(pw_idx);
> > -
> > -     vlv_punit_get(dev_priv);
> > -
> > -     state = vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_STATUS) &
> > mask;
> > -     /*
> > -      * We only ever set the power-on and power-gate states,
> > anything
> > -      * else is unexpected.
> > -      */
> > -     drm_WARN_ON(&dev_priv->drm, state != PUNIT_PWRGT_PWR_ON(pw_idx)
> > &&
> > -                 state != PUNIT_PWRGT_PWR_GATE(pw_idx));
> > -     if (state == ctrl)
> > -             enabled = true;
> > -
> > -     /*
> > -      * A transient state at this point would mean some unexpected
> > party
> > -      * is poking at the power controls too.
> > -      */
> > -     ctrl = vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_CTRL) & mask;
> > -     drm_WARN_ON(&dev_priv->drm, ctrl != state);
> > -
> > -     vlv_punit_put(dev_priv);
> > -
> > -     return enabled;
> > -}
> > -
> > -static void vlv_init_display_clock_gating(struct drm_i915_private
> > *dev_priv)
> > -{
> > -     u32 val;
> > -
> > -     /*
> > -      * On driver load, a pipe may be active and driving a DSI
> > display.
> > -      * Preserve DPOUNIT_CLOCK_GATE_DISABLE to avoid the pipe
> > getting stuck
> > -      * (and never recovering) in this case.
> > intel_dsi_post_disable() will
> > -      * clear it when we turn off the display.
> > -      */
> > -     val = intel_de_read(dev_priv, DSPCLK_GATE_D);
> > -     val &= DPOUNIT_CLOCK_GATE_DISABLE;
> > -     val |= VRHUNIT_CLOCK_GATE_DISABLE;
> > -     intel_de_write(dev_priv, DSPCLK_GATE_D, val);
> > -
> > -     /*
> > -      * Disable trickle feed and enable pnd deadline calculation
> > -      */
> > -     intel_de_write(dev_priv, MI_ARB_VLV,
> > -                    MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE);
> > -     intel_de_write(dev_priv, CBR1_VLV, 0);
> > -
> > -     drm_WARN_ON(&dev_priv->drm, RUNTIME_INFO(dev_priv)->rawclk_freq
> > == 0);
> > -     intel_de_write(dev_priv, RAWCLK_FREQ_VLV,
> > -                    DIV_ROUND_CLOSEST(RUNTIME_INFO(dev_priv)-
> > >rawclk_freq,
> > -                                      1000));
> > -}
> > -
> > -static void vlv_display_power_well_init(struct drm_i915_private
> > *dev_priv)
> > -{
> > -     struct intel_encoder *encoder;
> > -     enum pipe pipe;
> > -
> > -     /*
> > -      * Enable the CRI clock source so we can get at the
> > -      * display and the reference clock for VGA
> > -      * hotplug / manual detection. Supposedly DSI also
> > -      * needs the ref clock up and running.
> > -      *
> > -      * CHV DPLL B/C have some issues if VGA mode is enabled.
> > -      */
> > -     for_each_pipe(dev_priv, pipe) {
> > -             u32 val = intel_de_read(dev_priv, DPLL(pipe));
> > -
> > -             val |= DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
> > -             if (pipe != PIPE_A)
> > -                     val |= DPLL_INTEGRATED_CRI_CLK_VLV;
> > -
> > -             intel_de_write(dev_priv, DPLL(pipe), val);
> > -     }
> > -
> > -     vlv_init_display_clock_gating(dev_priv);
> > -
> > -     spin_lock_irq(&dev_priv->irq_lock);
> > -     valleyview_enable_display_irqs(dev_priv);
> > -     spin_unlock_irq(&dev_priv->irq_lock);
> > -
> > -     /*
> > -      * During driver initialization/resume we can avoid restoring
> > the
> > -      * part of the HW/SW state that will be inited anyway
> > explicitly.
> > -      */
> > -     if (dev_priv->power_domains.initializing)
> > -             return;
> > -
> > -     intel_hpd_init(dev_priv);
> > -     intel_hpd_poll_disable(dev_priv);
> > -
> > -     /* Re-enable the ADPA, if we have one */
> > -     for_each_intel_encoder(&dev_priv->drm, encoder) {
> > -             if (encoder->type == INTEL_OUTPUT_ANALOG)
> > -                     intel_crt_reset(&encoder->base);
> > -     }
> > -
> > -     intel_vga_redisable_power_on(dev_priv);
> > -
> > -     intel_pps_unlock_regs_wa(dev_priv);
> > -}
> > -
> > -static void vlv_display_power_well_deinit(struct drm_i915_private
> > *dev_priv)
> > -{
> > -     spin_lock_irq(&dev_priv->irq_lock);
> > -     valleyview_disable_display_irqs(dev_priv);
> > -     spin_unlock_irq(&dev_priv->irq_lock);
> > -
> > -     /* make sure we're done processing display irqs */
> > -     intel_synchronize_irq(dev_priv);
> > -
> > -     intel_pps_reset_all(dev_priv);
> > -
> > -     /* Prevent us from re-enabling polling on accident in late
> > suspend */
> > -     if (!dev_priv->drm.dev->power.is_suspended)
> > -             intel_hpd_poll_enable(dev_priv);
> > -}
> > -
> > -static void vlv_display_power_well_enable(struct drm_i915_private
> > *dev_priv,
> > -                                       struct i915_power_well
> > *power_well)
> > -{
> > -     vlv_set_power_well(dev_priv, power_well, true);
> > -
> > -     vlv_display_power_well_init(dev_priv);
> > -}
> > -
> > -static void vlv_display_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > -                                        struct i915_power_well
> > *power_well)
> > -{
> > -     vlv_display_power_well_deinit(dev_priv);
> > -
> > -     vlv_set_power_well(dev_priv, power_well, false);
> > -}
> > -
> > -static void vlv_dpio_cmn_power_well_enable(struct drm_i915_private
> > *dev_priv,
> > -                                        struct i915_power_well
> > *power_well)
> > -{
> > -     /* since ref/cri clock was enabled */
> > -     udelay(1); /* >10ns for cmnreset, >0ns for sidereset */
> > -
> > -     vlv_set_power_well(dev_priv, power_well, true);
> > -
> > -     /*
> > -      * From VLV2A0_DP_eDP_DPIO_driver_vbios_notes_10.docx -
> > -      *  6.  De-assert cmn_reset/side_reset. Same as VLV X0.
> > -      *   a. GUnit 0x2110 bit[0] set to 1 (def 0)
> > -      *   b. The other bits such as sfr settings / modesel may all
> > -      *      be set to 0.
> > -      *
> > -      * This should only be done on init and resume from S3 with
> > -      * both PLLs disabled, or we risk losing DPIO and PLL
> > -      * synchronization.
> > -      */
> > -     intel_de_write(dev_priv, DPIO_CTL,
> > -                    intel_de_read(dev_priv, DPIO_CTL) |
> > DPIO_CMNRST);
> > -}
> > -
> > -static void vlv_dpio_cmn_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > -                                         struct i915_power_well
> > *power_well)
> > -{
> > -     enum pipe pipe;
> > -
> > -     for_each_pipe(dev_priv, pipe)
> > -             assert_pll_disabled(dev_priv, pipe);
> > -
> > -     /* Assert common reset */
> > -     intel_de_write(dev_priv, DPIO_CTL,
> > -                    intel_de_read(dev_priv, DPIO_CTL) &
> > ~DPIO_CMNRST);
> > -
> > -     vlv_set_power_well(dev_priv, power_well, false);
> > -}
> > -
> >  #define POWER_DOMAIN_MASK (GENMASK_ULL(POWER_DOMAIN_NUM - 1, 0))
> >
> > -#define BITS_SET(val, bits) (((val) & (bits)) == (bits))
> > -
> > -static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
> > -{
> > -     struct i915_power_well *cmn_bc =
> > -             lookup_power_well(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
> > -     struct i915_power_well *cmn_d =
> > -             lookup_power_well(dev_priv, CHV_DISP_PW_DPIO_CMN_D);
> > -     u32 phy_control = dev_priv->chv_phy_control;
> > -     u32 phy_status = 0;
> > -     u32 phy_status_mask = 0xffffffff;
> > -
> > -     /*
> > -      * The BIOS can leave the PHY is some weird state
> > -      * where it doesn't fully power down some parts.
> > -      * Disable the asserts until the PHY has been fully
> > -      * reset (ie. the power well has been disabled at
> > -      * least once).
> > -      */
> > -     if (!dev_priv->chv_phy_assert[DPIO_PHY0])
> > -             phy_status_mask &= ~(PHY_STATUS_CMN_LDO(DPIO_PHY0,
> > DPIO_CH0) |
> > -                                  PHY_STATUS_SPLINE_LDO(DPIO_PHY0,
> > DPIO_CH0, 0) |
> > -                                  PHY_STATUS_SPLINE_LDO(DPIO_PHY0,
> > DPIO_CH0, 1) |
> > -                                  PHY_STATUS_CMN_LDO(DPIO_PHY0,
> > DPIO_CH1) |
> > -                                  PHY_STATUS_SPLINE_LDO(DPIO_PHY0,
> > DPIO_CH1, 0) |
> > -                                  PHY_STATUS_SPLINE_LDO(DPIO_PHY0,
> > DPIO_CH1, 1));
> > -
> > -     if (!dev_priv->chv_phy_assert[DPIO_PHY1])
> > -             phy_status_mask &= ~(PHY_STATUS_CMN_LDO(DPIO_PHY1,
> > DPIO_CH0) |
> > -                                  PHY_STATUS_SPLINE_LDO(DPIO_PHY1,
> > DPIO_CH0, 0) |
> > -                                  PHY_STATUS_SPLINE_LDO(DPIO_PHY1,
> > DPIO_CH0, 1));
> > -
> > -     if (intel_power_well_is_enabled(dev_priv, cmn_bc)) {
> > -             phy_status |= PHY_POWERGOOD(DPIO_PHY0);
> > -
> > -             /* this assumes override is only used to enable lanes
> > */
> > -             if ((phy_control & PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY0,
> > DPIO_CH0)) == 0)
> > -                     phy_control |= PHY_CH_POWER_DOWN_OVRD(0xf,
> > DPIO_PHY0, DPIO_CH0);
> > -
> > -             if ((phy_control & PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY0,
> > DPIO_CH1)) == 0)
> > -                     phy_control |= PHY_CH_POWER_DOWN_OVRD(0xf,
> > DPIO_PHY0, DPIO_CH1);
> > -
> > -             /* CL1 is on whenever anything is on in either channel
> > */
> > -             if (BITS_SET(phy_control,
> > -                          PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY0,
> > DPIO_CH0) |
> > -                          PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY0,
> > DPIO_CH1)))
> > -                     phy_status |= PHY_STATUS_CMN_LDO(DPIO_PHY0,
> > DPIO_CH0);
> > -
> > -             /*
> > -              * The DPLLB check accounts for the pipe B + port A
> > usage
> > -              * with CL2 powered up but all the lanes in the second
> > channel
> > -              * powered down.
> > -              */
> > -             if (BITS_SET(phy_control,
> > -                          PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY0,
> > DPIO_CH1)) &&
> > -                 (intel_de_read(dev_priv, DPLL(PIPE_B)) &
> > DPLL_VCO_ENABLE) == 0)
> > -                     phy_status |= PHY_STATUS_CMN_LDO(DPIO_PHY0,
> > DPIO_CH1);
> > -
> > -             if (BITS_SET(phy_control,
> > -                          PHY_CH_POWER_DOWN_OVRD(0x3, DPIO_PHY0,
> > DPIO_CH0)))
> > -                     phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY0,
> > DPIO_CH0, 0);
> > -             if (BITS_SET(phy_control,
> > -                          PHY_CH_POWER_DOWN_OVRD(0xc, DPIO_PHY0,
> > DPIO_CH0)))
> > -                     phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY0,
> > DPIO_CH0, 1);
> > -
> > -             if (BITS_SET(phy_control,
> > -                          PHY_CH_POWER_DOWN_OVRD(0x3, DPIO_PHY0,
> > DPIO_CH1)))
> > -                     phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY0,
> > DPIO_CH1, 0);
> > -             if (BITS_SET(phy_control,
> > -                          PHY_CH_POWER_DOWN_OVRD(0xc, DPIO_PHY0,
> > DPIO_CH1)))
> > -                     phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY0,
> > DPIO_CH1, 1);
> > -     }
> > -
> > -     if (intel_power_well_is_enabled(dev_priv, cmn_d)) {
> > -             phy_status |= PHY_POWERGOOD(DPIO_PHY1);
> > -
> > -             /* this assumes override is only used to enable lanes
> > */
> > -             if ((phy_control & PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY1,
> > DPIO_CH0)) == 0)
> > -                     phy_control |= PHY_CH_POWER_DOWN_OVRD(0xf,
> > DPIO_PHY1, DPIO_CH0);
> > -
> > -             if (BITS_SET(phy_control,
> > -                          PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY1,
> > DPIO_CH0)))
> > -                     phy_status |= PHY_STATUS_CMN_LDO(DPIO_PHY1,
> > DPIO_CH0);
> > -
> > -             if (BITS_SET(phy_control,
> > -                          PHY_CH_POWER_DOWN_OVRD(0x3, DPIO_PHY1,
> > DPIO_CH0)))
> > -                     phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY1,
> > DPIO_CH0, 0);
> > -             if (BITS_SET(phy_control,
> > -                          PHY_CH_POWER_DOWN_OVRD(0xc, DPIO_PHY1,
> > DPIO_CH0)))
> > -                     phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY1,
> > DPIO_CH0, 1);
> > -     }
> > -
> > -     phy_status &= phy_status_mask;
> > -
> > -     /*
> > -      * The PHY may be busy with some initial calibration and
> > whatnot,
> > -      * so the power state can take a while to actually change.
> > -      */
> > -     if (intel_de_wait_for_register(dev_priv, DISPLAY_PHY_STATUS,
> > -                                    phy_status_mask, phy_status,
> > 10))
> > -             drm_err(&dev_priv->drm,
> > -                     "Unexpected PHY_STATUS 0x%08x, expected 0x%08x
> > (PHY_CONTROL=0x%08x)\n",
> > -                     intel_de_read(dev_priv, DISPLAY_PHY_STATUS) &
> > phy_status_mask,
> > -                     phy_status, dev_priv->chv_phy_control);
> > -}
> > -
> > -#undef BITS_SET
> > -
> > -static void chv_dpio_cmn_power_well_enable(struct drm_i915_private
> > *dev_priv,
> > -                                        struct i915_power_well
> > *power_well)
> > -{
> > -     enum dpio_phy phy;
> > -     enum pipe pipe;
> > -     u32 tmp;
> > -
> > -     drm_WARN_ON_ONCE(&dev_priv->drm,
> > -                      power_well->desc->id !=
> > VLV_DISP_PW_DPIO_CMN_BC &&
> > -                      power_well->desc->id !=
> > CHV_DISP_PW_DPIO_CMN_D);
> > -
> > -     if (power_well->desc->id == VLV_DISP_PW_DPIO_CMN_BC) {
> > -             pipe = PIPE_A;
> > -             phy = DPIO_PHY0;
> > -     } else {
> > -             pipe = PIPE_C;
> > -             phy = DPIO_PHY1;
> > -     }
> > -
> > -     /* since ref/cri clock was enabled */
> > -     udelay(1); /* >10ns for cmnreset, >0ns for sidereset */
> > -     vlv_set_power_well(dev_priv, power_well, true);
> > -
> > -     /* Poll for phypwrgood signal */
> > -     if (intel_de_wait_for_set(dev_priv, DISPLAY_PHY_STATUS,
> > -                               PHY_POWERGOOD(phy), 1))
> > -             drm_err(&dev_priv->drm, "Display PHY %d is not power
> > up\n",
> > -                     phy);
> > -
> > -     vlv_dpio_get(dev_priv);
> > -
> > -     /* Enable dynamic power down */
> > -     tmp = vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW28);
> > -     tmp |= DPIO_DYNPWRDOWNEN_CH0 | DPIO_CL1POWERDOWNEN |
> > -             DPIO_SUS_CLK_CONFIG_GATE_CLKREQ;
> > -     vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW28, tmp);
> > -
> > -     if (power_well->desc->id == VLV_DISP_PW_DPIO_CMN_BC) {
> > -             tmp = vlv_dpio_read(dev_priv, pipe, _CHV_CMN_DW6_CH1);
> > -             tmp |= DPIO_DYNPWRDOWNEN_CH1;
> > -             vlv_dpio_write(dev_priv, pipe, _CHV_CMN_DW6_CH1, tmp);
> > -     } else {
> > -             /*
> > -              * Force the non-existing CL2 off. BXT does this
> > -              * too, so maybe it saves some power even though
> > -              * CL2 doesn't exist?
> > -              */
> > -             tmp = vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW30);
> > -             tmp |= DPIO_CL2_LDOFUSE_PWRENB;
> > -             vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW30, tmp);
> > -     }
> > -
> > -     vlv_dpio_put(dev_priv);
> > -
> > -     dev_priv->chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(phy);
> > -     intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
> > -                    dev_priv->chv_phy_control);
> > -
> > -     drm_dbg_kms(&dev_priv->drm,
> > -                 "Enabled DPIO PHY%d (PHY_CONTROL=0x%08x)\n",
> > -                 phy, dev_priv->chv_phy_control);
> > -
> > -     assert_chv_phy_status(dev_priv);
> > -}
> > -
> > -static void chv_dpio_cmn_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > -                                         struct i915_power_well
> > *power_well)
> > -{
> > -     enum dpio_phy phy;
> > -
> > -     drm_WARN_ON_ONCE(&dev_priv->drm,
> > -                      power_well->desc->id !=
> > VLV_DISP_PW_DPIO_CMN_BC &&
> > -                      power_well->desc->id !=
> > CHV_DISP_PW_DPIO_CMN_D);
> > -
> > -     if (power_well->desc->id == VLV_DISP_PW_DPIO_CMN_BC) {
> > -             phy = DPIO_PHY0;
> > -             assert_pll_disabled(dev_priv, PIPE_A);
> > -             assert_pll_disabled(dev_priv, PIPE_B);
> > -     } else {
> > -             phy = DPIO_PHY1;
> > -             assert_pll_disabled(dev_priv, PIPE_C);
> > -     }
> > -
> > -     dev_priv->chv_phy_control &= ~PHY_COM_LANE_RESET_DEASSERT(phy);
> > -     intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
> > -                    dev_priv->chv_phy_control);
> > -
> > -     vlv_set_power_well(dev_priv, power_well, false);
> > -
> > -     drm_dbg_kms(&dev_priv->drm,
> > -                 "Disabled DPIO PHY%d (PHY_CONTROL=0x%08x)\n",
> > -                 phy, dev_priv->chv_phy_control);
> > -
> > -     /* PHY is fully reset now, so we can enable the PHY state
> > asserts */
> > -     dev_priv->chv_phy_assert[phy] = true;
> > -
> > -     assert_chv_phy_status(dev_priv);
> > -}
> > -
> > -static void assert_chv_phy_powergate(struct drm_i915_private
> > *dev_priv, enum dpio_phy phy,
> > -                                  enum dpio_channel ch, bool
> > override, unsigned int mask)
> > -{
> > -     enum pipe pipe = phy == DPIO_PHY0 ? PIPE_A : PIPE_C;
> > -     u32 reg, val, expected, actual;
> > -
> > -     /*
> > -      * The BIOS can leave the PHY is some weird state
> > -      * where it doesn't fully power down some parts.
> > -      * Disable the asserts until the PHY has been fully
> > -      * reset (ie. the power well has been disabled at
> > -      * least once).
> > -      */
> > -     if (!dev_priv->chv_phy_assert[phy])
> > -             return;
> > -
> > -     if (ch == DPIO_CH0)
> > -             reg = _CHV_CMN_DW0_CH0;
> > -     else
> > -             reg = _CHV_CMN_DW6_CH1;
> > -
> > -     vlv_dpio_get(dev_priv);
> > -     val = vlv_dpio_read(dev_priv, pipe, reg);
> > -     vlv_dpio_put(dev_priv);
> > -
> > -     /*
> > -      * This assumes !override is only used when the port is
> > disabled.
> > -      * All lanes should power down even without the override when
> > -      * the port is disabled.
> > -      */
> > -     if (!override || mask == 0xf) {
> > -             expected = DPIO_ALLDL_POWERDOWN | DPIO_ANYDL_POWERDOWN;
> > -             /*
> > -              * If CH1 common lane is not active anymore
> > -              * (eg. for pipe B DPLL) the entire channel will
> > -              * shut down, which causes the common lane registers
> > -              * to read as 0. That means we can't actually check
> > -              * the lane power down status bits, but as the entire
> > -              * register reads as 0 it's a good indication that the
> > -              * channel is indeed entirely powered down.
> > -              */
> > -             if (ch == DPIO_CH1 && val == 0)
> > -                     expected = 0;
> > -     } else if (mask != 0x0) {
> > -             expected = DPIO_ANYDL_POWERDOWN;
> > -     } else {
> > -             expected = 0;
> > -     }
> > -
> > -     if (ch == DPIO_CH0)
> > -             actual = val >> DPIO_ANYDL_POWERDOWN_SHIFT_CH0;
> > -     else
> > -             actual = val >> DPIO_ANYDL_POWERDOWN_SHIFT_CH1;
> > -     actual &= DPIO_ALLDL_POWERDOWN | DPIO_ANYDL_POWERDOWN;
> > -
> > -     drm_WARN(&dev_priv->drm, actual != expected,
> > -              "Unexpected DPIO lane power down: all %d, any %d.
> > Expected: all %d, any %d. (0x%x = 0x%08x)\n",
> > -              !!(actual & DPIO_ALLDL_POWERDOWN),
> > -              !!(actual & DPIO_ANYDL_POWERDOWN),
> > -              !!(expected & DPIO_ALLDL_POWERDOWN),
> > -              !!(expected & DPIO_ANYDL_POWERDOWN),
> > -              reg, val);
> > -}
> > -
> > -bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum dpio_phy phy,
> > -                       enum dpio_channel ch, bool override)
> > -{
> > -     struct i915_power_domains *power_domains = &dev_priv->power_domains;
> > -     bool was_override;
> > -
> > -     mutex_lock(&power_domains->lock);
> > -
> > -     was_override = dev_priv->chv_phy_control & PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
> > -
> > -     if (override == was_override)
> > -             goto out;
> > -
> > -     if (override)
> > -             dev_priv->chv_phy_control |= PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
> > -     else
> > -             dev_priv->chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
> > -
> > -     intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
> > -                    dev_priv->chv_phy_control);
> > -
> > -     drm_dbg_kms(&dev_priv->drm,
> > -                 "Power gating DPIO PHY%d CH%d
> > (DPIO_PHY_CONTROL=0x%08x)\n",
> > -                 phy, ch, dev_priv->chv_phy_control);
> > -
> > -     assert_chv_phy_status(dev_priv);
> > -
> > -out:
> > -     mutex_unlock(&power_domains->lock);
> > -
> > -     return was_override;
> > -}
> > -
> > -void chv_phy_powergate_lanes(struct intel_encoder *encoder,
> > -                          bool override, unsigned int mask)
> > -{
> > -     struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> > -     struct i915_power_domains *power_domains = &dev_priv-
> > >power_domains;
> > -     enum dpio_phy phy =
> > vlv_dig_port_to_phy(enc_to_dig_port(encoder));
> > -     enum dpio_channel ch =
> > vlv_dig_port_to_channel(enc_to_dig_port(encoder));
> > -
> > -     mutex_lock(&power_domains->lock);
> > -
> > -     dev_priv->chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD(0xf, phy,
> > ch);
> > -     dev_priv->chv_phy_control |= PHY_CH_POWER_DOWN_OVRD(mask, phy,
> > ch);
> > -
> > -     if (override)
> > -             dev_priv->chv_phy_control |=
> > PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
> > -     else
> > -             dev_priv->chv_phy_control &=
> > ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
> > -
> > -     intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
> > -                    dev_priv->chv_phy_control);
> > -
> > -     drm_dbg_kms(&dev_priv->drm,
> > -                 "Power gating DPIO PHY%d CH%d lanes 0x%x
> > (PHY_CONTROL=0x%08x)\n",
> > -                 phy, ch, mask, dev_priv->chv_phy_control);
> > -
> > -     assert_chv_phy_status(dev_priv);
> > -
> > -     assert_chv_phy_powergate(dev_priv, phy, ch, override, mask);
> > -
> > -     mutex_unlock(&power_domains->lock);
> > -}
> > -
> > -static bool chv_pipe_power_well_enabled(struct drm_i915_private
> > *dev_priv,
> > -                                     struct i915_power_well
> > *power_well)
> > -{
> > -     enum pipe pipe = PIPE_A;
> > -     bool enabled;
> > -     u32 state, ctrl;
> > -
> > -     vlv_punit_get(dev_priv);
> > -
> > -     state = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) &
> > DP_SSS_MASK(pipe);
> > -     /*
> > -      * We only ever set the power-on and power-gate states,
> > anything
> > -      * else is unexpected.
> > -      */
> > -     drm_WARN_ON(&dev_priv->drm, state != DP_SSS_PWR_ON(pipe) &&
> > -                 state != DP_SSS_PWR_GATE(pipe));
> > -     enabled = state == DP_SSS_PWR_ON(pipe);
> > -
> > -     /*
> > -      * A transient state at this point would mean some unexpected
> > party
> > -      * is poking at the power controls too.
> > -      */
> > -     ctrl = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) &
> > DP_SSC_MASK(pipe);
> > -     drm_WARN_ON(&dev_priv->drm, ctrl << 16 != state);
> > -
> > -     vlv_punit_put(dev_priv);
> > -
> > -     return enabled;
> > -}
> > -
> > -static void chv_set_pipe_power_well(struct drm_i915_private
> > *dev_priv,
> > -                                 struct i915_power_well *power_well,
> > -                                 bool enable)
> > -{
> > -     enum pipe pipe = PIPE_A;
> > -     u32 state;
> > -     u32 ctrl;
> > -
> > -     state = enable ? DP_SSS_PWR_ON(pipe) : DP_SSS_PWR_GATE(pipe);
> > -
> > -     vlv_punit_get(dev_priv);
> > -
> > -#define COND \
> > -     ((vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) &
> > DP_SSS_MASK(pipe)) == state)
> > -
> > -     if (COND)
> > -             goto out;
> > -
> > -     ctrl = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM);
> > -     ctrl &= ~DP_SSC_MASK(pipe);
> > -     ctrl |= enable ? DP_SSC_PWR_ON(pipe) : DP_SSC_PWR_GATE(pipe);
> > -     vlv_punit_write(dev_priv, PUNIT_REG_DSPSSPM, ctrl);
> > -
> > -     if (wait_for(COND, 100))
> > -             drm_err(&dev_priv->drm,
> > -                     "timeout setting power well state %08x
> > (%08x)\n",
> > -                     state,
> > -                     vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM));
> > -
> > -#undef COND
> > -
> > -out:
> > -     vlv_punit_put(dev_priv);
> > -}
> > -
> > -static void chv_pipe_power_well_sync_hw(struct drm_i915_private
> > *dev_priv,
> > -                                     struct i915_power_well
> > *power_well)
> > -{
> > -     intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
> > -                    dev_priv->chv_phy_control);
> > -}
> > -
> > -static void chv_pipe_power_well_enable(struct drm_i915_private
> > *dev_priv,
> > -                                    struct i915_power_well
> > *power_well)
> > -{
> > -     chv_set_pipe_power_well(dev_priv, power_well, true);
> > -
> > -     vlv_display_power_well_init(dev_priv);
> > -}
> > -
> > -static void chv_pipe_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > -                                     struct i915_power_well
> > *power_well)
> > -{
> > -     vlv_display_power_well_deinit(dev_priv);
> > -
> > -     chv_set_pipe_power_well(dev_priv, power_well, false);
> > -}
> > -
> >  static u64 __async_put_domains_mask(struct i915_power_domains
> > *power_domains)
> >  {
> >       return power_domains->async_put_domains[0] |
> > @@ -3043,27 +1474,6 @@ intel_display_power_put_mask_in_set(struct
> > drm_i915_private *i915,
> >  #define XELPD_DDI_IO_TC3_POWER_DOMAINS               BIT_ULL(POWER_D
> > OMAIN_PORT_DDI_IO_TC3)
> >  #define XELPD_DDI_IO_TC4_POWER_DOMAINS               BIT_ULL(POWER_D
> > OMAIN_PORT_DDI_IO_TC4)
> >
> > -static const struct i915_power_well_ops
> > i9xx_always_on_power_well_ops = {
> > -     .sync_hw = i9xx_power_well_sync_hw_noop,
> > -     .enable = i9xx_always_on_power_well_noop,
> > -     .disable = i9xx_always_on_power_well_noop,
> > -     .is_enabled = i9xx_always_on_power_well_enabled,
> > -};
> > -
> > -static const struct i915_power_well_ops chv_pipe_power_well_ops = {
> > -     .sync_hw = chv_pipe_power_well_sync_hw,
> > -     .enable = chv_pipe_power_well_enable,
> > -     .disable = chv_pipe_power_well_disable,
> > -     .is_enabled = chv_pipe_power_well_enabled,
> > -};
> > -
> > -static const struct i915_power_well_ops chv_dpio_cmn_power_well_ops
> > = {
> > -     .sync_hw = i9xx_power_well_sync_hw_noop,
> > -     .enable = chv_dpio_cmn_power_well_enable,
> > -     .disable = chv_dpio_cmn_power_well_disable,
> > -     .is_enabled = vlv_power_well_enabled,
> > -};
> > -
> >  static const struct i915_power_well_desc i9xx_always_on_power_well[]
> > = {
> >       {
> >               .name = "always-on",
> > @@ -3074,13 +1484,6 @@ static const struct i915_power_well_desc
> > i9xx_always_on_power_well[] = {
> >       },
> >  };
> >
> > -static const struct i915_power_well_ops i830_pipes_power_well_ops =
> > {
> > -     .sync_hw = i830_pipes_power_well_sync_hw,
> > -     .enable = i830_pipes_power_well_enable,
> > -     .disable = i830_pipes_power_well_disable,
> > -     .is_enabled = i830_pipes_power_well_enabled,
> > -};
> > -
> >  static const struct i915_power_well_desc i830_power_wells[] = {
> >       {
> >               .name = "always-on",
> > @@ -3097,35 +1500,6 @@ static const struct i915_power_well_desc
> > i830_power_wells[] = {
> >       },
> >  };
> >
> > -static const struct i915_power_well_regs hsw_power_well_regs = {
> > -     .bios   = HSW_PWR_WELL_CTL1,
> > -     .driver = HSW_PWR_WELL_CTL2,
> > -     .kvmr   = HSW_PWR_WELL_CTL3,
> > -     .debug  = HSW_PWR_WELL_CTL4,
> > -};
> > -
> > -static const struct i915_power_well_ops hsw_power_well_ops = {
> > -     .regs = &hsw_power_well_regs,
> > -     .sync_hw = hsw_power_well_sync_hw,
> > -     .enable = hsw_power_well_enable,
> > -     .disable = hsw_power_well_disable,
> > -     .is_enabled = hsw_power_well_enabled,
> > -};
> > -
> > -static const struct i915_power_well_ops gen9_dc_off_power_well_ops =
> > {
> > -     .sync_hw = i9xx_power_well_sync_hw_noop,
> > -     .enable = gen9_dc_off_power_well_enable,
> > -     .disable = gen9_dc_off_power_well_disable,
> > -     .is_enabled = gen9_dc_off_power_well_enabled,
> > -};
> > -
> > -static const struct i915_power_well_ops bxt_dpio_cmn_power_well_ops
> > = {
> > -     .sync_hw = i9xx_power_well_sync_hw_noop,
> > -     .enable = bxt_dpio_cmn_power_well_enable,
> > -     .disable = bxt_dpio_cmn_power_well_disable,
> > -     .is_enabled = bxt_dpio_cmn_power_well_enabled,
> > -};
> > -
> >  static const struct i915_power_well_desc hsw_power_wells[] = {
> >       {
> >               .name = "always-on",
> > @@ -3167,27 +1541,6 @@ static const struct i915_power_well_desc
> > bdw_power_wells[] = {
> >       },
> >  };
> >
> > -static const struct i915_power_well_ops vlv_display_power_well_ops =
> > {
> > -     .sync_hw = i9xx_power_well_sync_hw_noop,
> > -     .enable = vlv_display_power_well_enable,
> > -     .disable = vlv_display_power_well_disable,
> > -     .is_enabled = vlv_power_well_enabled,
> > -};
> > -
> > -static const struct i915_power_well_ops vlv_dpio_cmn_power_well_ops
> > = {
> > -     .sync_hw = i9xx_power_well_sync_hw_noop,
> > -     .enable = vlv_dpio_cmn_power_well_enable,
> > -     .disable = vlv_dpio_cmn_power_well_disable,
> > -     .is_enabled = vlv_power_well_enabled,
> > -};
> > -
> > -static const struct i915_power_well_ops vlv_dpio_power_well_ops = {
> > -     .sync_hw = i9xx_power_well_sync_hw_noop,
> > -     .enable = vlv_power_well_enable,
> > -     .disable = vlv_power_well_disable,
> > -     .is_enabled = vlv_power_well_enabled,
> > -};
> > -
> >  static const struct i915_power_well_desc vlv_power_wells[] = {
> >       {
> >               .name = "always-on",
> > @@ -3569,34 +1922,6 @@ static const struct i915_power_well_desc
> > glk_power_wells[] = {
> >       },
> >  };
> >
> > -static const struct i915_power_well_regs icl_aux_power_well_regs = {
> > -     .bios   = ICL_PWR_WELL_CTL_AUX1,
> > -     .driver = ICL_PWR_WELL_CTL_AUX2,
> > -     .debug  = ICL_PWR_WELL_CTL_AUX4,
> > -};
> > -
> > -static const struct i915_power_well_ops icl_aux_power_well_ops = {
> > -     .regs = &icl_aux_power_well_regs,
> > -     .sync_hw = hsw_power_well_sync_hw,
> > -     .enable = icl_aux_power_well_enable,
> > -     .disable = icl_aux_power_well_disable,
> > -     .is_enabled = hsw_power_well_enabled,
> > -};
> > -
> > -static const struct i915_power_well_regs icl_ddi_power_well_regs = {
> > -     .bios   = ICL_PWR_WELL_CTL_DDI1,
> > -     .driver = ICL_PWR_WELL_CTL_DDI2,
> > -     .debug  = ICL_PWR_WELL_CTL_DDI4,
> > -};
> > -
> > -static const struct i915_power_well_ops icl_ddi_power_well_ops = {
> > -     .regs = &icl_ddi_power_well_regs,
> > -     .sync_hw = hsw_power_well_sync_hw,
> > -     .enable = hsw_power_well_enable,
> > -     .disable = hsw_power_well_disable,
> > -     .is_enabled = hsw_power_well_enabled,
> > -};
> > -
> >  static const struct i915_power_well_desc icl_power_wells[] = {
> >       {
> >               .name = "always-on",
> > @@ -3810,90 +2135,6 @@ static const struct i915_power_well_desc
> > icl_power_wells[] = {
> >       },
> >  };
> >
> > -static void
> > -tgl_tc_cold_request(struct drm_i915_private *i915, bool block)
> > -{
> > -     u8 tries = 0;
> > -     int ret;
> > -
> > -     while (1) {
> > -             u32 low_val;
> > -             u32 high_val = 0;
> > -
> > -             if (block)
> > -                     low_val =
> > TGL_PCODE_EXIT_TCCOLD_DATA_L_BLOCK_REQ;
> > -             else
> > -                     low_val =
> > TGL_PCODE_EXIT_TCCOLD_DATA_L_UNBLOCK_REQ;
> > -
> > -             /*
> > -              * Spec states that we should timeout the request after
> > 200us
> > -              * but the function below will timeout after 500us
> > -              */
> > -             ret = snb_pcode_read(i915, TGL_PCODE_TCCOLD, &low_val,
> > &high_val);
> > -             if (ret == 0) {
> > -                     if (block &&
> > -                         (low_val &
> > TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED))
> > -                             ret = -EIO;
> > -                     else
> > -                             break;
> > -             }
> > -
> > -             if (++tries == 3)
> > -                     break;
> > -
> > -             msleep(1);
> > -     }
> > -
> > -     if (ret)
> > -             drm_err(&i915->drm, "TC cold %sblock failed\n",
> > -                     block ? "" : "un");
> > -     else
> > -             drm_dbg_kms(&i915->drm, "TC cold %sblock succeeded\n",
> > -                         block ? "" : "un");
> > -}
> > -
> > -static void
> > -tgl_tc_cold_off_power_well_enable(struct drm_i915_private *i915,
> > -                               struct i915_power_well *power_well)
> > -{
> > -     tgl_tc_cold_request(i915, true);
> > -}
> > -
> > -static void
> > -tgl_tc_cold_off_power_well_disable(struct drm_i915_private *i915,
> > -                                struct i915_power_well *power_well)
> > -{
> > -     tgl_tc_cold_request(i915, false);
> > -}
> > -
> > -static void
> > -tgl_tc_cold_off_power_well_sync_hw(struct drm_i915_private *i915,
> > -                                struct i915_power_well *power_well)
> > -{
> > -     if (intel_power_well_refcount(power_well) > 0)
> > -             tgl_tc_cold_off_power_well_enable(i915, power_well);
> > -     else
> > -             tgl_tc_cold_off_power_well_disable(i915, power_well);
> > -}
> > -
> > -static bool
> > -tgl_tc_cold_off_power_well_is_enabled(struct drm_i915_private
> > *dev_priv,
> > -                                   struct i915_power_well
> > *power_well)
> > -{
> > -     /*
> > -      * Not the correctly implementation but there is no way to just
> > read it
> > -      * from PCODE, so returning count to avoid state mismatch
> > errors
> > -      */
> > -     return intel_power_well_refcount(power_well);
> > -}
> > -
> > -static const struct i915_power_well_ops tgl_tc_cold_off_ops = {
> > -     .sync_hw = tgl_tc_cold_off_power_well_sync_hw,
> > -     .enable = tgl_tc_cold_off_power_well_enable,
> > -     .disable = tgl_tc_cold_off_power_well_disable,
> > -     .is_enabled = tgl_tc_cold_off_power_well_is_enabled,
> > -};
> > -
> >  static const struct i915_power_well_desc tgl_power_wells[] = {
> >       {
> >               .name = "always-on",
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index 2a0fb9d9c60f2..a92bb807f1972 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -4,7 +4,58 @@
> >   */
> >
> >  #include "i915_drv.h"
> > +#include "i915_irq.h"
> > +#include "intel_combo_phy.h"
> > +#include "intel_combo_phy_regs.h"
> > +#include "intel_crt.h"
> > +#include "intel_de.h"
> >  #include "intel_display_power_well.h"
> > +#include "intel_display_types.h"
> > +#include "intel_dpio_phy.h"
> > +#include "intel_dpll.h"
> > +#include "intel_hotplug.h"
> > +#include "intel_pcode.h"
> > +#include "intel_pm.h"
> > +#include "intel_pps.h"
> > +#include "intel_vga.h"
> > +#include "intel_tc.h"
> > +#include "vlv_sideband.h"
> > +#include "vlv_sideband_reg.h"
> > +
> > +struct i915_power_well_regs {
> > +     i915_reg_t bios;
> > +     i915_reg_t driver;
> > +     i915_reg_t kvmr;
> > +     i915_reg_t debug;
> > +};
> > +
> > +struct i915_power_well_ops {
> > +     const struct i915_power_well_regs *regs;
> > +     /*
> > +      * Synchronize the well's hw state to match the current sw
> > state, for
> > +      * example enable/disable it based on the current refcount.
> > Called
> > +      * during driver init and resume time, possibly after first
> > calling
> > +      * the enable/disable handlers.
> > +      */
> > +     void (*sync_hw)(struct drm_i915_private *i915,
> > +                     struct i915_power_well *power_well);
> > +     /*
> > +      * Enable the well and resources that depend on it (for example
> > +      * interrupts located on the well). Called after the 0->1
> > refcount
> > +      * transition.
> > +      */
> > +     void (*enable)(struct drm_i915_private *i915,
> > +                    struct i915_power_well *power_well);
> > +     /*
> > +      * Disable the well and resources that depend on it. Called
> > after
> > +      * the 1->0 refcount transition.
> > +      */
> > +     void (*disable)(struct drm_i915_private *i915,
> > +                     struct i915_power_well *power_well);
> > +     /* Returns the hw enabled state. */
> > +     bool (*is_enabled)(struct drm_i915_private *i915,
> > +                        struct i915_power_well *power_well);
> > +};
> >
> >  struct i915_power_well *
> >  lookup_power_well(struct drm_i915_private *i915,
> > @@ -111,3 +162,1769 @@ int intel_power_well_refcount(struct
> > i915_power_well *power_well)
> >  {
> >       return power_well->count;
> >  }
> > +
> > +/*
> > + * Starting with Haswell, we have a "Power Down Well" that can be
> > turned off
> > + * when not needed anymore. We have 4 registers that can request the
> > power well
> > + * to be enabled, and it will only be disabled if none of the
> > registers is
> > + * requesting it to be enabled.
> > + */
> > +static void hsw_power_well_post_enable(struct drm_i915_private
> > *dev_priv,
> > +                                    u8 irq_pipe_mask, bool has_vga)
> > +{
> > +     if (has_vga)
> > +             intel_vga_reset_io_mem(dev_priv);
> > +
> > +     if (irq_pipe_mask)
> > +             gen8_irq_power_well_post_enable(dev_priv,
> > irq_pipe_mask);
> > +}
> > +
> > +static void hsw_power_well_pre_disable(struct drm_i915_private
> > *dev_priv,
> > +                                    u8 irq_pipe_mask)
> > +{
> > +     if (irq_pipe_mask)
> > +             gen8_irq_power_well_pre_disable(dev_priv,
> > irq_pipe_mask);
> > +}
> > +
> > +#define ICL_AUX_PW_TO_CH(pw_idx)     \
> > +     ((pw_idx) - ICL_PW_CTL_IDX_AUX_A + AUX_CH_A)
> > +
> > +#define ICL_TBT_AUX_PW_TO_CH(pw_idx) \
> > +     ((pw_idx) - ICL_PW_CTL_IDX_AUX_TBT1 + AUX_CH_C)
> > +
> > +static enum aux_ch icl_aux_pw_to_ch(const struct i915_power_well
> > *power_well)
> > +{
> > +     int pw_idx = power_well->desc->hsw.idx;
> > +
> > +     return power_well->desc->hsw.is_tc_tbt ?
> > ICL_TBT_AUX_PW_TO_CH(pw_idx) :
> > +                                              ICL_AUX_PW_TO_CH(pw_id
> > x);
> > +}
> > +
> > +static struct intel_digital_port *
> > +aux_ch_to_digital_port(struct drm_i915_private *dev_priv,
> > +                    enum aux_ch aux_ch)
> > +{
> > +     struct intel_digital_port *dig_port = NULL;
> > +     struct intel_encoder *encoder;
> > +
> > +     for_each_intel_encoder(&dev_priv->drm, encoder) {
> > +             /* We'll check the MST primary port */
> > +             if (encoder->type == INTEL_OUTPUT_DP_MST)
> > +                     continue;
> > +
> > +             dig_port = enc_to_dig_port(encoder);
> > +             if (!dig_port)
> > +                     continue;
> > +
> > +             if (dig_port->aux_ch != aux_ch) {
> > +                     dig_port = NULL;
> > +                     continue;
> > +             }
> > +
> > +             break;
> > +     }
> > +
> > +     return dig_port;
> > +}
> > +
> > +static enum phy icl_aux_pw_to_phy(struct drm_i915_private *i915,
> > +                               const struct i915_power_well
> > *power_well)
> > +{
> > +     enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
> > +     struct intel_digital_port *dig_port =
> > aux_ch_to_digital_port(i915, aux_ch);
> > +
> > +     return intel_port_to_phy(i915, dig_port->base.port);
> > +}
> > +
> > +static void hsw_wait_for_power_well_enable(struct drm_i915_private
> > *dev_priv,
> > +                                        struct i915_power_well
> > *power_well,
> > +                                        bool timeout_expected)
> > +{
> > +     const struct i915_power_well_regs *regs = power_well->desc-
> > >ops->regs;
> > +     int pw_idx = power_well->desc->hsw.idx;
> > +     int enable_delay = power_well->desc->hsw.fixed_enable_delay;
> > +
> > +     /*
> > +      * For some power wells we're not supposed to watch the status
> > bit for
> > +      * an ack, but rather just wait a fixed amount of time and then
> > +      * proceed.  This is only used on DG2.
> > +      */
> > +     if (IS_DG2(dev_priv) && enable_delay) {
> > +             usleep_range(enable_delay, 2 * enable_delay);
> > +             return;
> > +     }
> > +
> > +     /* Timeout for PW1:10 us, AUX:not specified, other PWs:20 us.
> > */
> > +     if (intel_de_wait_for_set(dev_priv, regs->driver,
> > +                               HSW_PWR_WELL_CTL_STATE(pw_idx), 1)) {
> > +             drm_dbg_kms(&dev_priv->drm, "%s power well enable
> > timeout\n",
> > +                         intel_power_well_name(power_well));
> > +
> > +             drm_WARN_ON(&dev_priv->drm, !timeout_expected);
> > +
> > +     }
> > +}
> > +
> > +static u32 hsw_power_well_requesters(struct drm_i915_private
> > *dev_priv,
> > +                                  const struct i915_power_well_regs
> > *regs,
> > +                                  int pw_idx)
> > +{
> > +     u32 req_mask = HSW_PWR_WELL_CTL_REQ(pw_idx);
> > +     u32 ret;
> > +
> > +     ret = intel_de_read(dev_priv, regs->bios) & req_mask ? 1 : 0;
> > +     ret |= intel_de_read(dev_priv, regs->driver) & req_mask ? 2 :
> > 0;
> > +     if (regs->kvmr.reg)
> > +             ret |= intel_de_read(dev_priv, regs->kvmr) & req_mask ?
> > 4 : 0;
> > +     ret |= intel_de_read(dev_priv, regs->debug) & req_mask ? 8 : 0;
> > +
> > +     return ret;
> > +}
> > +
> > +static void hsw_wait_for_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > +                                         struct i915_power_well
> > *power_well)
> > +{
> > +     const struct i915_power_well_regs *regs = power_well->desc-
> > >ops->regs;
> > +     int pw_idx = power_well->desc->hsw.idx;
> > +     bool disabled;
> > +     u32 reqs;
> > +
> > +     /*
> > +      * Bspec doesn't require waiting for PWs to get disabled, but
> > still do
> > +      * this for paranoia. The known cases where a PW will be forced
> > on:
> > +      * - a KVMR request on any power well via the KVMR request
> > register
> > +      * - a DMC request on PW1 and MISC_IO power wells via the BIOS
> > and
> > +      *   DEBUG request registers
> > +      * Skip the wait in case any of the request bits are set and
> > print a
> > +      * diagnostic message.
> > +      */
> > +     wait_for((disabled = !(intel_de_read(dev_priv, regs->driver) &
> > +                            HSW_PWR_WELL_CTL_STATE(pw_idx))) ||
> > +              (reqs = hsw_power_well_requesters(dev_priv, regs,
> > pw_idx)), 1);
> > +     if (disabled)
> > +             return;
> > +
> > +     drm_dbg_kms(&dev_priv->drm,
> > +                 "%s forced on (bios:%d driver:%d kvmr:%d
> > debug:%d)\n",
> > +                 intel_power_well_name(power_well),
> > +                 !!(reqs & 1), !!(reqs & 2), !!(reqs & 4), !!(reqs &
> > 8));
> > +}
> > +
> > +static void gen9_wait_for_power_well_fuses(struct drm_i915_private
> > *dev_priv,
> > +                                        enum skl_power_gate pg)
> > +{
> > +     /* Timeout 5us for PG#0, for other PGs 1us */
> > +     drm_WARN_ON(&dev_priv->drm,
> > +                 intel_de_wait_for_set(dev_priv, SKL_FUSE_STATUS,
> > +                                       SKL_FUSE_PG_DIST_STATUS(pg),
> > 1));
> > +}
> > +
> > +static void hsw_power_well_enable(struct drm_i915_private *dev_priv,
> > +                               struct i915_power_well *power_well)
> > +{
> > +     const struct i915_power_well_regs *regs = power_well->desc-
> > >ops->regs;
> > +     int pw_idx = power_well->desc->hsw.idx;
> > +     u32 val;
> > +
> > +     if (power_well->desc->hsw.has_fuses) {
> > +             enum skl_power_gate pg;
> > +
> > +             pg = DISPLAY_VER(dev_priv) >= 11 ?
> > ICL_PW_CTL_IDX_TO_PG(pw_idx) :
> > +                                              SKL_PW_CTL_IDX_TO_PG(p
> > w_idx);
> > +
> > +             /* Wa_16013190616:adlp */
> > +             if (IS_ALDERLAKE_P(dev_priv) && pg == SKL_PG1)
> > +                     intel_de_rmw(dev_priv, GEN8_CHICKEN_DCPR_1, 0,
> > DISABLE_FLR_SRC);
> > +
> > +             /*
> > +              * For PW1 we have to wait both for the PW0/PG0 fuse
> > state
> > +              * before enabling the power well and PW1/PG1's own
> > fuse
> > +              * state after the enabling. For all other power wells
> > with
> > +              * fuses we only have to wait for that PW/PG's fuse
> > state
> > +              * after the enabling.
> > +              */
> > +             if (pg == SKL_PG1)
> > +                     gen9_wait_for_power_well_fuses(dev_priv,
> > SKL_PG0);
> > +     }
> > +
> > +     val = intel_de_read(dev_priv, regs->driver);
> > +     intel_de_write(dev_priv, regs->driver,
> > +                    val | HSW_PWR_WELL_CTL_REQ(pw_idx));
> > +
> > +     hsw_wait_for_power_well_enable(dev_priv, power_well, false);
> > +
> > +     if (power_well->desc->hsw.has_fuses) {
> > +             enum skl_power_gate pg;
> > +
> > +             pg = DISPLAY_VER(dev_priv) >= 11 ?
> > ICL_PW_CTL_IDX_TO_PG(pw_idx) :
> > +                                              SKL_PW_CTL_IDX_TO_PG(p
> > w_idx);
> > +             gen9_wait_for_power_well_fuses(dev_priv, pg);
> > +     }
> > +
> > +     hsw_power_well_post_enable(dev_priv,
> > +                                power_well->desc->hsw.irq_pipe_mask,
> > +                                power_well->desc->hsw.has_vga);
> > +}
> > +
> > +static void hsw_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > +                                struct i915_power_well *power_well)
> > +{
> > +     const struct i915_power_well_regs *regs = power_well->desc-
> > >ops->regs;
> > +     int pw_idx = power_well->desc->hsw.idx;
> > +     u32 val;
> > +
> > +     hsw_power_well_pre_disable(dev_priv,
> > +                                power_well->desc-
> > >hsw.irq_pipe_mask);
> > +
> > +     val = intel_de_read(dev_priv, regs->driver);
> > +     intel_de_write(dev_priv, regs->driver,
> > +                    val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
> > +     hsw_wait_for_power_well_disable(dev_priv, power_well);
> > +}
> > +
> > +static void
> > +icl_combo_phy_aux_power_well_enable(struct drm_i915_private
> > *dev_priv,
> > +                                 struct i915_power_well *power_well)
> > +{
> > +     const struct i915_power_well_regs *regs = power_well->desc-
> > >ops->regs;
> > +     int pw_idx = power_well->desc->hsw.idx;
> > +     enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
> > +     u32 val;
> > +
> > +     drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
> > +
> > +     val = intel_de_read(dev_priv, regs->driver);
> > +     intel_de_write(dev_priv, regs->driver,
> > +                    val | HSW_PWR_WELL_CTL_REQ(pw_idx));
> > +
> > +     if (DISPLAY_VER(dev_priv) < 12) {
> > +             val = intel_de_read(dev_priv, ICL_PORT_CL_DW12(phy));
> > +             intel_de_write(dev_priv, ICL_PORT_CL_DW12(phy),
> > +                            val | ICL_LANE_ENABLE_AUX);
> > +     }
> > +
> > +     hsw_wait_for_power_well_enable(dev_priv, power_well, false);
> > +
> > +     /* Display WA #1178: icl */
> > +     if (pw_idx >= ICL_PW_CTL_IDX_AUX_A && pw_idx <=
> > ICL_PW_CTL_IDX_AUX_B &&
> > +         !intel_bios_is_port_edp(dev_priv, (enum port)phy)) {
> > +             val = intel_de_read(dev_priv,
> > ICL_AUX_ANAOVRD1(pw_idx));
> > +             val |= ICL_AUX_ANAOVRD1_ENABLE |
> > ICL_AUX_ANAOVRD1_LDO_BYPASS;
> > +             intel_de_write(dev_priv, ICL_AUX_ANAOVRD1(pw_idx),
> > val);
> > +     }
> > +}
> > +
> > +static void
> > +icl_combo_phy_aux_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > +                                  struct i915_power_well
> > *power_well)
> > +{
> > +     const struct i915_power_well_regs *regs = power_well->desc-
> > >ops->regs;
> > +     int pw_idx = power_well->desc->hsw.idx;
> > +     enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
> > +     u32 val;
> > +
> > +     drm_WARN_ON(&dev_priv->drm, !IS_ICELAKE(dev_priv));
> > +
> > +     val = intel_de_read(dev_priv, ICL_PORT_CL_DW12(phy));
> > +     intel_de_write(dev_priv, ICL_PORT_CL_DW12(phy),
> > +                    val & ~ICL_LANE_ENABLE_AUX);
> > +
> > +     val = intel_de_read(dev_priv, regs->driver);
> > +     intel_de_write(dev_priv, regs->driver,
> > +                    val & ~HSW_PWR_WELL_CTL_REQ(pw_idx));
> > +
> > +     hsw_wait_for_power_well_disable(dev_priv, power_well);
> > +}
> > +
> > +#if IS_ENABLED(CONFIG_DRM_I915_DEBUG_RUNTIME_PM)
> > +
> > +static void icl_tc_port_assert_ref_held(struct drm_i915_private
> > *dev_priv,
> > +                                     struct i915_power_well
> > *power_well,
> > +                                     struct intel_digital_port
> > *dig_port)
> > +{
> > +     if (drm_WARN_ON(&dev_priv->drm, !dig_port))
> > +             return;
> > +
> > +     if (DISPLAY_VER(dev_priv) == 11 &&
> > intel_tc_cold_requires_aux_pw(dig_port))
> > +             return;
> > +
> > +     drm_WARN_ON(&dev_priv->drm, !intel_tc_port_ref_held(dig_port));
> > +}
> > +
> > +#else
> > +
> > +static void icl_tc_port_assert_ref_held(struct drm_i915_private
> > *dev_priv,
> > +                                     struct i915_power_well
> > *power_well,
> > +                                     struct intel_digital_port
> > *dig_port)
> > +{
> > +}
> > +
> > +#endif
> > +
> > +#define TGL_AUX_PW_TO_TC_PORT(pw_idx)        ((pw_idx) -
> > TGL_PW_CTL_IDX_AUX_TC1)
> > +
> > +static void icl_tc_cold_exit(struct drm_i915_private *i915)
> > +{
> > +     int ret, tries = 0;
> > +
> > +     while (1) {
> > +             ret = snb_pcode_write_timeout(i915,
> > ICL_PCODE_EXIT_TCCOLD, 0,
> > +                                           250, 1);
> > +             if (ret != -EAGAIN || ++tries == 3)
> > +                     break;
> > +             msleep(1);
> > +     }
> > +
> > +     /* Spec states that TC cold exit can take up to 1ms to complete
> > */
> > +     if (!ret)
> > +             msleep(1);
> > +
> > +     /* TODO: turn failure into a error as soon i915 CI updates ICL
> > IFWI */
> > +     drm_dbg_kms(&i915->drm, "TC cold block %s\n", ret ? "failed" :
> > +                 "succeeded");
> > +}
> > +
> > +static void
> > +icl_tc_phy_aux_power_well_enable(struct drm_i915_private *dev_priv,
> > +                              struct i915_power_well *power_well)
> > +{
> > +     enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
> > +     struct intel_digital_port *dig_port =
> > aux_ch_to_digital_port(dev_priv, aux_ch);
> > +     const struct i915_power_well_regs *regs = power_well->desc-
> > >ops->regs;
> > +     bool is_tbt = power_well->desc->hsw.is_tc_tbt;
> > +     bool timeout_expected;
> > +     u32 val;
> > +
> > +     icl_tc_port_assert_ref_held(dev_priv, power_well, dig_port);
> > +
> > +     val = intel_de_read(dev_priv, DP_AUX_CH_CTL(aux_ch));
> > +     val &= ~DP_AUX_CH_CTL_TBT_IO;
> > +     if (is_tbt)
> > +             val |= DP_AUX_CH_CTL_TBT_IO;
> > +     intel_de_write(dev_priv, DP_AUX_CH_CTL(aux_ch), val);
> > +
> > +     val = intel_de_read(dev_priv, regs->driver);
> > +     intel_de_write(dev_priv, regs->driver,
> > +                    val | HSW_PWR_WELL_CTL_REQ(power_well->desc-
> > >hsw.idx));
> > +
> > +     /*
> > +      * An AUX timeout is expected if the TBT DP tunnel is down,
> > +      * or need to enable AUX on a legacy TypeC port as part of the
> > TC-cold
> > +      * exit sequence.
> > +      */
> > +     timeout_expected = is_tbt ||
> > intel_tc_cold_requires_aux_pw(dig_port);
> > +     if (DISPLAY_VER(dev_priv) == 11 &&
> > intel_tc_cold_requires_aux_pw(dig_port))
> > +             icl_tc_cold_exit(dev_priv);
> > +
> > +     hsw_wait_for_power_well_enable(dev_priv, power_well,
> > timeout_expected);
> > +
> > +     if (DISPLAY_VER(dev_priv) >= 12 && !is_tbt) {
> > +             enum tc_port tc_port;
> > +
> > +             tc_port = TGL_AUX_PW_TO_TC_PORT(power_well->desc-
> > >hsw.idx);
> > +             intel_de_write(dev_priv, HIP_INDEX_REG(tc_port),
> > +                            HIP_INDEX_VAL(tc_port, 0x2));
> > +
> > +             if (intel_de_wait_for_set(dev_priv,
> > DKL_CMN_UC_DW_27(tc_port),
> > +                                       DKL_CMN_UC_DW27_UC_HEALTH,
> > 1))
> > +                     drm_warn(&dev_priv->drm,
> > +                              "Timeout waiting TC uC health\n");
> > +     }
> > +}
> > +
> > +static void
> > +icl_tc_phy_aux_power_well_disable(struct drm_i915_private *dev_priv,
> > +                               struct i915_power_well *power_well)
> > +{
> > +     enum aux_ch aux_ch = icl_aux_pw_to_ch(power_well);
> > +     struct intel_digital_port *dig_port =
> > aux_ch_to_digital_port(dev_priv, aux_ch);
> > +
> > +     icl_tc_port_assert_ref_held(dev_priv, power_well, dig_port);
> > +
> > +     hsw_power_well_disable(dev_priv, power_well);
> > +}
> > +
> > +static void
> > +icl_aux_power_well_enable(struct drm_i915_private *dev_priv,
> > +                       struct i915_power_well *power_well)
> > +{
> > +     enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
> > +
> > +     if (intel_phy_is_tc(dev_priv, phy))
> > +             return icl_tc_phy_aux_power_well_enable(dev_priv,
> > power_well);
> > +     else if (IS_ICELAKE(dev_priv))
> > +             return icl_combo_phy_aux_power_well_enable(dev_priv,
> > +                                                        power_well);
> > +     else
> > +             return hsw_power_well_enable(dev_priv, power_well);
> > +}
> > +
> > +static void
> > +icl_aux_power_well_disable(struct drm_i915_private *dev_priv,
> > +                        struct i915_power_well *power_well)
> > +{
> > +     enum phy phy = icl_aux_pw_to_phy(dev_priv, power_well);
> > +
> > +     if (intel_phy_is_tc(dev_priv, phy))
> > +             return icl_tc_phy_aux_power_well_disable(dev_priv,
> > power_well);
> > +     else if (IS_ICELAKE(dev_priv))
> > +             return icl_combo_phy_aux_power_well_disable(dev_priv,
> > +                                                         power_well)
> > ;
> > +     else
> > +             return hsw_power_well_disable(dev_priv, power_well);
> > +}
> > +
> > +/*
> > + * We should only use the power well if we explicitly asked the
> > hardware to
> > + * enable it, so check if it's enabled and also check if we've
> > requested it to
> > + * be enabled.
> > + */
> > +static bool hsw_power_well_enabled(struct drm_i915_private
> > *dev_priv,
> > +                                struct i915_power_well *power_well)
> > +{
> > +     const struct i915_power_well_regs *regs = power_well->desc-
> > >ops->regs;
> > +     enum i915_power_well_id id = power_well->desc->id;
> > +     int pw_idx = power_well->desc->hsw.idx;
> > +     u32 mask = HSW_PWR_WELL_CTL_REQ(pw_idx) |
> > +                HSW_PWR_WELL_CTL_STATE(pw_idx);
> > +     u32 val;
> > +
> > +     val = intel_de_read(dev_priv, regs->driver);
> > +
> > +     /*
> > +      * On GEN9 big core due to a DMC bug the driver's request bits
> > for PW1
> > +      * and the MISC_IO PW will be not restored, so check instead
> > for the
> > +      * BIOS's own request bits, which are forced-on for these power
> > wells
> > +      * when exiting DC5/6.
> > +      */
> > +     if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv) &&
> > +         (id == SKL_DISP_PW_1 || id == SKL_DISP_PW_MISC_IO))
> > +             val |= intel_de_read(dev_priv, regs->bios);
> > +
> > +     return (val & mask) == mask;
> > +}
> > +
> > +static void assert_can_enable_dc9(struct drm_i915_private *dev_priv)
> > +{
> > +     drm_WARN_ONCE(&dev_priv->drm,
> > +                   (intel_de_read(dev_priv, DC_STATE_EN) &
> > DC_STATE_EN_DC9),
> > +                   "DC9 already programmed to be enabled.\n");
> > +     drm_WARN_ONCE(&dev_priv->drm,
> > +                   intel_de_read(dev_priv, DC_STATE_EN) &
> > +                   DC_STATE_EN_UPTO_DC5,
> > +                   "DC5 still not disabled to enable DC9.\n");
> > +     drm_WARN_ONCE(&dev_priv->drm,
> > +                   intel_de_read(dev_priv, HSW_PWR_WELL_CTL2) &
> > +                   HSW_PWR_WELL_CTL_REQ(SKL_PW_CTL_IDX_PW_2),
> > +                   "Power well 2 on.\n");
> > +     drm_WARN_ONCE(&dev_priv->drm, intel_irqs_enabled(dev_priv),
> > +                   "Interrupts not disabled yet.\n");
> > +
> > +      /*
> > +       * TODO: check for the following to verify the conditions to
> > enter DC9
> > +       * state are satisfied:
> > +       * 1] Check relevant display engine registers to verify if
> > mode set
> > +       * disable sequence was followed.
> > +       * 2] Check if display uninitialize sequence is initialized.
> > +       */
> > +}
> > +
> > +static void assert_can_disable_dc9(struct drm_i915_private
> > *dev_priv)
> > +{
> > +     drm_WARN_ONCE(&dev_priv->drm, intel_irqs_enabled(dev_priv),
> > +                   "Interrupts not disabled yet.\n");
> > +     drm_WARN_ONCE(&dev_priv->drm,
> > +                   intel_de_read(dev_priv, DC_STATE_EN) &
> > +                   DC_STATE_EN_UPTO_DC5,
> > +                   "DC5 still not disabled.\n");
> > +
> > +      /*
> > +       * TODO: check for the following to verify DC9 state was
> > indeed
> > +       * entered before programming to disable it:
> > +       * 1] Check relevant display engine registers to verify if
> > mode
> > +       *  set disable sequence was followed.
> > +       * 2] Check if display uninitialize sequence is initialized.
> > +       */
> > +}
> > +
> > +static void gen9_write_dc_state(struct drm_i915_private *dev_priv,
> > +                             u32 state)
> > +{
> > +     int rewrites = 0;
> > +     int rereads = 0;
> > +     u32 v;
> > +
> > +     intel_de_write(dev_priv, DC_STATE_EN, state);
> > +
> > +     /* It has been observed that disabling the dc6 state sometimes
> > +      * doesn't stick and dmc keeps returning old value. Make sure
> > +      * the write really sticks enough times and also force rewrite
> > until
> > +      * we are confident that state is exactly what we want.
> > +      */
> > +     do  {
> > +             v = intel_de_read(dev_priv, DC_STATE_EN);
> > +
> > +             if (v != state) {
> > +                     intel_de_write(dev_priv, DC_STATE_EN, state);
> > +                     rewrites++;
> > +                     rereads = 0;
> > +             } else if (rereads++ > 5) {
> > +                     break;
> > +             }
> > +
> > +     } while (rewrites < 100);
> > +
> > +     if (v != state)
> > +             drm_err(&dev_priv->drm,
> > +                     "Writing dc state to 0x%x failed, now 0x%x\n",
> > +                     state, v);
> > +
> > +     /* Most of the times we need one retry, avoid spam */
> > +     if (rewrites > 1)
> > +             drm_dbg_kms(&dev_priv->drm,
> > +                         "Rewrote dc state to 0x%x %d times\n",
> > +                         state, rewrites);
> > +}
> > +
> > +static u32 gen9_dc_mask(struct drm_i915_private *dev_priv)
> > +{
> > +     u32 mask;
> > +
> > +     mask = DC_STATE_EN_UPTO_DC5;
> > +
> > +     if (DISPLAY_VER(dev_priv) >= 12)
> > +             mask |= DC_STATE_EN_DC3CO | DC_STATE_EN_UPTO_DC6
> > +                                       | DC_STATE_EN_DC9;
> > +     else if (DISPLAY_VER(dev_priv) == 11)
> > +             mask |= DC_STATE_EN_UPTO_DC6 | DC_STATE_EN_DC9;
> > +     else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> > +             mask |= DC_STATE_EN_DC9;
> > +     else
> > +             mask |= DC_STATE_EN_UPTO_DC6;
> > +
> > +     return mask;
> > +}
> > +
> > +void gen9_sanitize_dc_state(struct drm_i915_private *dev_priv)
> > +{
> > +     u32 val;
> > +
> > +     if (!HAS_DISPLAY(dev_priv))
> > +             return;
> > +
> > +     val = intel_de_read(dev_priv, DC_STATE_EN) &
> > gen9_dc_mask(dev_priv);
> > +
> > +     drm_dbg_kms(&dev_priv->drm,
> > +                 "Resetting DC state tracking from %02x to %02x\n",
> > +                 dev_priv->dmc.dc_state, val);
> > +     dev_priv->dmc.dc_state = val;
> > +}
> > +
> > +/**
> > + * gen9_set_dc_state - set target display C power state
> > + * @dev_priv: i915 device instance
> > + * @state: target DC power state
> > + * - DC_STATE_DISABLE
> > + * - DC_STATE_EN_UPTO_DC5
> > + * - DC_STATE_EN_UPTO_DC6
> > + * - DC_STATE_EN_DC9
> > + *
> > + * Signal to DMC firmware/HW the target DC power state passed in
> > @state.
> > + * DMC/HW can turn off individual display clocks and power rails
> > when entering
> > + * a deeper DC power state (higher in number) and turns these back
> > when exiting
> > + * that state to a shallower power state (lower in number). The HW
> > will decide
> > + * when to actually enter a given state on an on-demand basis, for
> > instance
> > + * depending on the active state of display pipes. The state of
> > display
> > + * registers backed by affected power rails are saved/restored as
> > needed.
> > + *
> > + * Based on the above enabling a deeper DC power state is
> > asynchronous wrt.
> > + * enabling it. Disabling a deeper power state is synchronous: for
> > instance
> > + * setting %DC_STATE_DISABLE won't complete until all HW resources
> > are turned
> > + * back on and register state is restored. This is guaranteed by the
> > MMIO write
> > + * to DC_STATE_EN blocking until the state is restored.
> > + */
> > +void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32 state)
> > +{
> > +     u32 val;
> > +     u32 mask;
> > +
> > +     if (!HAS_DISPLAY(dev_priv))
> > +             return;
> > +
> > +     if (drm_WARN_ON_ONCE(&dev_priv->drm,
> > +                          state & ~dev_priv->dmc.allowed_dc_mask))
> > +             state &= dev_priv->dmc.allowed_dc_mask;
> > +
> > +     val = intel_de_read(dev_priv, DC_STATE_EN);
> > +     mask = gen9_dc_mask(dev_priv);
> > +     drm_dbg_kms(&dev_priv->drm, "Setting DC state from %02x to
> > %02x\n",
> > +                 val & mask, state);
> > +
> > +     /* Check if DMC is ignoring our DC state requests */
> > +     if ((val & mask) != dev_priv->dmc.dc_state)
> > +             drm_err(&dev_priv->drm, "DC state mismatch (0x%x ->
> > 0x%x)\n",
> > +                     dev_priv->dmc.dc_state, val & mask);
> > +
> > +     val &= ~mask;
> > +     val |= state;
> > +
> > +     gen9_write_dc_state(dev_priv, val);
> > +
> > +     dev_priv->dmc.dc_state = val & mask;
> > +}
> > +
> > +static void tgl_enable_dc3co(struct drm_i915_private *dev_priv)
> > +{
> > +     drm_dbg_kms(&dev_priv->drm, "Enabling DC3CO\n");
> > +     gen9_set_dc_state(dev_priv, DC_STATE_EN_DC3CO);
> > +}
> > +
> > +static void tgl_disable_dc3co(struct drm_i915_private *dev_priv)
> > +{
> > +     u32 val;
> > +
> > +     drm_dbg_kms(&dev_priv->drm, "Disabling DC3CO\n");
> > +     val = intel_de_read(dev_priv, DC_STATE_EN);
> > +     val &= ~DC_STATE_DC3CO_STATUS;
> > +     intel_de_write(dev_priv, DC_STATE_EN, val);
> > +     gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
> > +     /*
> > +      * Delay of 200us DC3CO Exit time B.Spec 49196
> > +      */
> > +     usleep_range(200, 210);
> > +}
> > +
> > +static void assert_dmc_loaded(struct drm_i915_private *dev_priv)
> > +{
> > +     drm_WARN_ONCE(&dev_priv->drm,
> > +                   !intel_de_read(dev_priv,
> > +                                  DMC_PROGRAM(dev_priv-
> > >dmc.dmc_info[DMC_FW_MAIN].start_mmioaddr, 0)),
> > +                                  "DMC program storage start is
> > NULL\n");
> > +     drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv,
> > DMC_SSP_BASE),
> > +                   "DMC SSP Base Not fine\n");
> > +     drm_WARN_ONCE(&dev_priv->drm, !intel_de_read(dev_priv,
> > DMC_HTP_SKL),
> > +                   "DMC HTP Not fine\n");
> > +}
> > +
> > +static void assert_can_enable_dc5(struct drm_i915_private *dev_priv)
> > +{
> > +     enum i915_power_well_id high_pg;
> > +
> > +     /* Power wells at this level and above must be disabled for DC5
> > entry */
> > +     if (DISPLAY_VER(dev_priv) == 12)
> > +             high_pg = ICL_DISP_PW_3;
> > +     else
> > +             high_pg = SKL_DISP_PW_2;
> > +
> > +     drm_WARN_ONCE(&dev_priv->drm,
> > +                   intel_display_power_well_is_enabled(dev_priv,
> > high_pg),
> > +                   "Power wells above platform's DC5 limit still
> > enabled.\n");
> > +
> > +     drm_WARN_ONCE(&dev_priv->drm,
> > +                   (intel_de_read(dev_priv, DC_STATE_EN) &
> > +                    DC_STATE_EN_UPTO_DC5),
> > +                   "DC5 already programmed to be enabled.\n");
> > +     assert_rpm_wakelock_held(&dev_priv->runtime_pm);
> > +
> > +     assert_dmc_loaded(dev_priv);
> > +}
> > +
> > +void gen9_enable_dc5(struct drm_i915_private *dev_priv)
> > +{
> > +     assert_can_enable_dc5(dev_priv);
> > +
> > +     drm_dbg_kms(&dev_priv->drm, "Enabling DC5\n");
> > +
> > +     /* Wa Display #1183: skl,kbl,cfl */
> > +     if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
> > +             intel_de_write(dev_priv, GEN8_CHICKEN_DCPR_1,
> > +                            intel_de_read(dev_priv,
> > GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);
> > +
> > +     gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC5);
> > +}
> > +
> > +static void assert_can_enable_dc6(struct drm_i915_private *dev_priv)
> > +{
> > +     drm_WARN_ONCE(&dev_priv->drm,
> > +                   intel_de_read(dev_priv, UTIL_PIN_CTL) &
> > UTIL_PIN_ENABLE,
> > +                   "Backlight is not disabled.\n");
> > +     drm_WARN_ONCE(&dev_priv->drm,
> > +                   (intel_de_read(dev_priv, DC_STATE_EN) &
> > +                    DC_STATE_EN_UPTO_DC6),
> > +                   "DC6 already programmed to be enabled.\n");
> > +
> > +     assert_dmc_loaded(dev_priv);
> > +}
> > +
> > +void skl_enable_dc6(struct drm_i915_private *dev_priv)
> > +{
> > +     assert_can_enable_dc6(dev_priv);
> > +
> > +     drm_dbg_kms(&dev_priv->drm, "Enabling DC6\n");
> > +
> > +     /* Wa Display #1183: skl,kbl,cfl */
> > +     if (DISPLAY_VER(dev_priv) == 9 && !IS_BROXTON(dev_priv))
> > +             intel_de_write(dev_priv, GEN8_CHICKEN_DCPR_1,
> > +                            intel_de_read(dev_priv,
> > GEN8_CHICKEN_DCPR_1) | SKL_SELECT_ALTERNATE_DC_EXIT);
> > +
> > +     gen9_set_dc_state(dev_priv, DC_STATE_EN_UPTO_DC6);
> > +}
> > +
> > +void bxt_enable_dc9(struct drm_i915_private *dev_priv)
> > +{
> > +     assert_can_enable_dc9(dev_priv);
> > +
> > +     drm_dbg_kms(&dev_priv->drm, "Enabling DC9\n");
> > +     /*
> > +      * Power sequencer reset is not needed on
> > +      * platforms with South Display Engine on PCH,
> > +      * because PPS registers are always on.
> > +      */
> > +     if (!HAS_PCH_SPLIT(dev_priv))
> > +             intel_pps_reset_all(dev_priv);
> > +     gen9_set_dc_state(dev_priv, DC_STATE_EN_DC9);
> > +}
> > +
> > +void bxt_disable_dc9(struct drm_i915_private *dev_priv)
> > +{
> > +     assert_can_disable_dc9(dev_priv);
> > +
> > +     drm_dbg_kms(&dev_priv->drm, "Disabling DC9\n");
> > +
> > +     gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
> > +
> > +     intel_pps_unlock_regs_wa(dev_priv);
> > +}
> > +
> > +static void hsw_power_well_sync_hw(struct drm_i915_private
> > *dev_priv,
> > +                                struct i915_power_well *power_well)
> > +{
> > +     const struct i915_power_well_regs *regs = power_well->desc-
> > >ops->regs;
> > +     int pw_idx = power_well->desc->hsw.idx;
> > +     u32 mask = HSW_PWR_WELL_CTL_REQ(pw_idx);
> > +     u32 bios_req = intel_de_read(dev_priv, regs->bios);
> > +
> > +     /* Take over the request bit if set by BIOS. */
> > +     if (bios_req & mask) {
> > +             u32 drv_req = intel_de_read(dev_priv, regs->driver);
> > +
> > +             if (!(drv_req & mask))
> > +                     intel_de_write(dev_priv, regs->driver, drv_req
> > | mask);
> > +             intel_de_write(dev_priv, regs->bios, bios_req & ~mask);
> > +     }
> > +}
> > +
> > +static void bxt_dpio_cmn_power_well_enable(struct drm_i915_private
> > *dev_priv,
> > +                                        struct i915_power_well
> > *power_well)
> > +{
> > +     bxt_ddi_phy_init(dev_priv, power_well->desc->bxt.phy);
> > +}
> > +
> > +static void bxt_dpio_cmn_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > +                                         struct i915_power_well
> > *power_well)
> > +{
> > +     bxt_ddi_phy_uninit(dev_priv, power_well->desc->bxt.phy);
> > +}
> > +
> > +static bool bxt_dpio_cmn_power_well_enabled(struct drm_i915_private
> > *dev_priv,
> > +                                         struct i915_power_well
> > *power_well)
> > +{
> > +     return bxt_ddi_phy_is_enabled(dev_priv, power_well->desc-
> > >bxt.phy);
> > +}
> > +
> > +static void bxt_verify_ddi_phy_power_wells(struct drm_i915_private
> > *dev_priv)
> > +{
> > +     struct i915_power_well *power_well;
> > +
> > +     power_well = lookup_power_well(dev_priv,
> > BXT_DISP_PW_DPIO_CMN_A);
> > +     if (intel_power_well_refcount(power_well) > 0)
> > +             bxt_ddi_phy_verify_state(dev_priv, power_well->desc-
> > >bxt.phy);
> > +
> > +     power_well = lookup_power_well(dev_priv,
> > VLV_DISP_PW_DPIO_CMN_BC);
> > +     if (intel_power_well_refcount(power_well) > 0)
> > +             bxt_ddi_phy_verify_state(dev_priv, power_well->desc-
> > >bxt.phy);
> > +
> > +     if (IS_GEMINILAKE(dev_priv)) {
> > +             power_well = lookup_power_well(dev_priv,
> > +                                            GLK_DISP_PW_DPIO_CMN_C);
> > +             if (intel_power_well_refcount(power_well) > 0)
> > +                     bxt_ddi_phy_verify_state(dev_priv,
> > +                                              power_well->desc-
> > >bxt.phy);
> > +     }
> > +}
> > +
> > +static bool gen9_dc_off_power_well_enabled(struct drm_i915_private
> > *dev_priv,
> > +                                        struct i915_power_well
> > *power_well)
> > +{
> > +     return ((intel_de_read(dev_priv, DC_STATE_EN) &
> > DC_STATE_EN_DC3CO) == 0 &&
> > +             (intel_de_read(dev_priv, DC_STATE_EN) &
> > DC_STATE_EN_UPTO_DC5_DC6_MASK) == 0);
> > +}
> > +
> > +static void gen9_assert_dbuf_enabled(struct drm_i915_private
> > *dev_priv)
> > +{
> > +     u8 hw_enabled_dbuf_slices =
> > intel_enabled_dbuf_slices_mask(dev_priv);
> > +     u8 enabled_dbuf_slices = dev_priv->dbuf.enabled_slices;
> > +
> > +     drm_WARN(&dev_priv->drm,
> > +              hw_enabled_dbuf_slices != enabled_dbuf_slices,
> > +              "Unexpected DBuf power power state (0x%08x, expected
> > 0x%08x)\n",
> > +              hw_enabled_dbuf_slices,
> > +              enabled_dbuf_slices);
> > +}
> > +
> > +void gen9_disable_dc_states(struct drm_i915_private *dev_priv)
> > +{
> > +     struct intel_cdclk_config cdclk_config = {};
> > +
> > +     if (dev_priv->dmc.target_dc_state == DC_STATE_EN_DC3CO) {
> > +             tgl_disable_dc3co(dev_priv);
> > +             return;
> > +     }
> > +
> > +     gen9_set_dc_state(dev_priv, DC_STATE_DISABLE);
> > +
> > +     if (!HAS_DISPLAY(dev_priv))
> > +             return;
> > +
> > +     intel_cdclk_get_cdclk(dev_priv, &cdclk_config);
> > +     /* Can't read out voltage_level so can't use
> > intel_cdclk_changed() */
> > +     drm_WARN_ON(&dev_priv->drm,
> > +                 intel_cdclk_needs_modeset(&dev_priv->cdclk.hw,
> > +                                           &cdclk_config));
> > +
> > +     gen9_assert_dbuf_enabled(dev_priv);
> > +
> > +     if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
> > +             bxt_verify_ddi_phy_power_wells(dev_priv);
> > +
> > +     if (DISPLAY_VER(dev_priv) >= 11)
> > +             /*
> > +              * DMC retains HW context only for port A, the other
> > combo
> > +              * PHY's HW context for port B is lost after DC
> > transitions,
> > +              * so we need to restore it manually.
> > +              */
> > +             intel_combo_phy_init(dev_priv);
> > +}
> > +
> > +static void gen9_dc_off_power_well_enable(struct drm_i915_private
> > *dev_priv,
> > +                                       struct i915_power_well
> > *power_well)
> > +{
> > +     gen9_disable_dc_states(dev_priv);
> > +}
> > +
> > +static void gen9_dc_off_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > +                                        struct i915_power_well
> > *power_well)
> > +{
> > +     if (!intel_dmc_has_payload(dev_priv))
> > +             return;
> > +
> > +     switch (dev_priv->dmc.target_dc_state) {
> > +     case DC_STATE_EN_DC3CO:
> > +             tgl_enable_dc3co(dev_priv);
> > +             break;
> > +     case DC_STATE_EN_UPTO_DC6:
> > +             skl_enable_dc6(dev_priv);
> > +             break;
> > +     case DC_STATE_EN_UPTO_DC5:
> > +             gen9_enable_dc5(dev_priv);
> > +             break;
> > +     }
> > +}
> > +
> > +static void i9xx_power_well_sync_hw_noop(struct drm_i915_private
> > *dev_priv,
> > +                                      struct i915_power_well
> > *power_well)
> > +{
> > +}
> > +
> > +static void i9xx_always_on_power_well_noop(struct drm_i915_private
> > *dev_priv,
> > +                                        struct i915_power_well
> > *power_well)
> > +{
> > +}
> > +
> > +static bool i9xx_always_on_power_well_enabled(struct
> > drm_i915_private *dev_priv,
> > +                                          struct i915_power_well
> > *power_well)
> > +{
> > +     return true;
> > +}
> > +
> > +static void i830_pipes_power_well_enable(struct drm_i915_private
> > *dev_priv,
> > +                                      struct i915_power_well
> > *power_well)
> > +{
> > +     if ((intel_de_read(dev_priv, PIPECONF(PIPE_A)) &
> > PIPECONF_ENABLE) == 0)
> > +             i830_enable_pipe(dev_priv, PIPE_A);
> > +     if ((intel_de_read(dev_priv, PIPECONF(PIPE_B)) &
> > PIPECONF_ENABLE) == 0)
> > +             i830_enable_pipe(dev_priv, PIPE_B);
> > +}
> > +
> > +static void i830_pipes_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > +                                       struct i915_power_well
> > *power_well)
> > +{
> > +     i830_disable_pipe(dev_priv, PIPE_B);
> > +     i830_disable_pipe(dev_priv, PIPE_A);
> > +}
> > +
> > +static bool i830_pipes_power_well_enabled(struct drm_i915_private
> > *dev_priv,
> > +                                       struct i915_power_well
> > *power_well)
> > +{
> > +     return intel_de_read(dev_priv, PIPECONF(PIPE_A)) &
> > PIPECONF_ENABLE &&
> > +             intel_de_read(dev_priv, PIPECONF(PIPE_B)) &
> > PIPECONF_ENABLE;
> > +}
> > +
> > +static void i830_pipes_power_well_sync_hw(struct drm_i915_private
> > *dev_priv,
> > +                                       struct i915_power_well
> > *power_well)
> > +{
> > +     if (intel_power_well_refcount(power_well) > 0)
> > +             i830_pipes_power_well_enable(dev_priv, power_well);
> > +     else
> > +             i830_pipes_power_well_disable(dev_priv, power_well);
> > +}
> > +
> > +static void vlv_set_power_well(struct drm_i915_private *dev_priv,
> > +                            struct i915_power_well *power_well, bool
> > enable)
> > +{
> > +     int pw_idx = power_well->desc->vlv.idx;
> > +     u32 mask;
> > +     u32 state;
> > +     u32 ctrl;
> > +
> > +     mask = PUNIT_PWRGT_MASK(pw_idx);
> > +     state = enable ? PUNIT_PWRGT_PWR_ON(pw_idx) :
> > +                      PUNIT_PWRGT_PWR_GATE(pw_idx);
> > +
> > +     vlv_punit_get(dev_priv);
> > +
> > +#define COND \
> > +     ((vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_STATUS) & mask) ==
> > state)
> > +
> > +     if (COND)
> > +             goto out;
> > +
> > +     ctrl = vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_CTRL);
> > +     ctrl &= ~mask;
> > +     ctrl |= state;
> > +     vlv_punit_write(dev_priv, PUNIT_REG_PWRGT_CTRL, ctrl);
> > +
> > +     if (wait_for(COND, 100))
> > +             drm_err(&dev_priv->drm,
> > +                     "timeout setting power well state %08x
> > (%08x)\n",
> > +                     state,
> > +                     vlv_punit_read(dev_priv,
> > PUNIT_REG_PWRGT_CTRL));
> > +
> > +#undef COND
> > +
> > +out:
> > +     vlv_punit_put(dev_priv);
> > +}
> > +
> > +static void vlv_power_well_enable(struct drm_i915_private *dev_priv,
> > +                               struct i915_power_well *power_well)
> > +{
> > +     vlv_set_power_well(dev_priv, power_well, true);
> > +}
> > +
> > +static void vlv_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > +                                struct i915_power_well *power_well)
> > +{
> > +     vlv_set_power_well(dev_priv, power_well, false);
> > +}
> > +
> > +static bool vlv_power_well_enabled(struct drm_i915_private
> > *dev_priv,
> > +                                struct i915_power_well *power_well)
> > +{
> > +     int pw_idx = power_well->desc->vlv.idx;
> > +     bool enabled = false;
> > +     u32 mask;
> > +     u32 state;
> > +     u32 ctrl;
> > +
> > +     mask = PUNIT_PWRGT_MASK(pw_idx);
> > +     ctrl = PUNIT_PWRGT_PWR_ON(pw_idx);
> > +
> > +     vlv_punit_get(dev_priv);
> > +
> > +     state = vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_STATUS) &
> > mask;
> > +     /*
> > +      * We only ever set the power-on and power-gate states,
> > anything
> > +      * else is unexpected.
> > +      */
> > +     drm_WARN_ON(&dev_priv->drm, state != PUNIT_PWRGT_PWR_ON(pw_idx)
> > &&
> > +                 state != PUNIT_PWRGT_PWR_GATE(pw_idx));
> > +     if (state == ctrl)
> > +             enabled = true;
> > +
> > +     /*
> > +      * A transient state at this point would mean some unexpected
> > party
> > +      * is poking at the power controls too.
> > +      */
> > +     ctrl = vlv_punit_read(dev_priv, PUNIT_REG_PWRGT_CTRL) & mask;
> > +     drm_WARN_ON(&dev_priv->drm, ctrl != state);
> > +
> > +     vlv_punit_put(dev_priv);
> > +
> > +     return enabled;
> > +}
> > +
> > +static void vlv_init_display_clock_gating(struct drm_i915_private
> > *dev_priv)
> > +{
> > +     u32 val;
> > +
> > +     /*
> > +      * On driver load, a pipe may be active and driving a DSI
> > display.
> > +      * Preserve DPOUNIT_CLOCK_GATE_DISABLE to avoid the pipe
> > getting stuck
> > +      * (and never recovering) in this case.
> > intel_dsi_post_disable() will
> > +      * clear it when we turn off the display.
> > +      */
> > +     val = intel_de_read(dev_priv, DSPCLK_GATE_D);
> > +     val &= DPOUNIT_CLOCK_GATE_DISABLE;
> > +     val |= VRHUNIT_CLOCK_GATE_DISABLE;
> > +     intel_de_write(dev_priv, DSPCLK_GATE_D, val);
> > +
> > +     /*
> > +      * Disable trickle feed and enable pnd deadline calculation
> > +      */
> > +     intel_de_write(dev_priv, MI_ARB_VLV,
> > +                    MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE);
> > +     intel_de_write(dev_priv, CBR1_VLV, 0);
> > +
> > +     drm_WARN_ON(&dev_priv->drm, RUNTIME_INFO(dev_priv)->rawclk_freq
> > == 0);
> > +     intel_de_write(dev_priv, RAWCLK_FREQ_VLV,
> > +                    DIV_ROUND_CLOSEST(RUNTIME_INFO(dev_priv)-
> > >rawclk_freq,
> > +                                      1000));
> > +}
> > +
> > +static void vlv_display_power_well_init(struct drm_i915_private
> > *dev_priv)
> > +{
> > +     struct intel_encoder *encoder;
> > +     enum pipe pipe;
> > +
> > +     /*
> > +      * Enable the CRI clock source so we can get at the
> > +      * display and the reference clock for VGA
> > +      * hotplug / manual detection. Supposedly DSI also
> > +      * needs the ref clock up and running.
> > +      *
> > +      * CHV DPLL B/C have some issues if VGA mode is enabled.
> > +      */
> > +     for_each_pipe(dev_priv, pipe) {
> > +             u32 val = intel_de_read(dev_priv, DPLL(pipe));
> > +
> > +             val |= DPLL_REF_CLK_ENABLE_VLV | DPLL_VGA_MODE_DIS;
> > +             if (pipe != PIPE_A)
> > +                     val |= DPLL_INTEGRATED_CRI_CLK_VLV;
> > +
> > +             intel_de_write(dev_priv, DPLL(pipe), val);
> > +     }
> > +
> > +     vlv_init_display_clock_gating(dev_priv);
> > +
> > +     spin_lock_irq(&dev_priv->irq_lock);
> > +     valleyview_enable_display_irqs(dev_priv);
> > +     spin_unlock_irq(&dev_priv->irq_lock);
> > +
> > +     /*
> > +      * During driver initialization/resume we can avoid restoring
> > the
> > +      * part of the HW/SW state that will be inited anyway
> > explicitly.
> > +      */
> > +     if (dev_priv->power_domains.initializing)
> > +             return;
> > +
> > +     intel_hpd_init(dev_priv);
> > +     intel_hpd_poll_disable(dev_priv);
> > +
> > +     /* Re-enable the ADPA, if we have one */
> > +     for_each_intel_encoder(&dev_priv->drm, encoder) {
> > +             if (encoder->type == INTEL_OUTPUT_ANALOG)
> > +                     intel_crt_reset(&encoder->base);
> > +     }
> > +
> > +     intel_vga_redisable_power_on(dev_priv);
> > +
> > +     intel_pps_unlock_regs_wa(dev_priv);
> > +}
> > +
> > +static void vlv_display_power_well_deinit(struct drm_i915_private
> > *dev_priv)
> > +{
> > +     spin_lock_irq(&dev_priv->irq_lock);
> > +     valleyview_disable_display_irqs(dev_priv);
> > +     spin_unlock_irq(&dev_priv->irq_lock);
> > +
> > +     /* make sure we're done processing display irqs */
> > +     intel_synchronize_irq(dev_priv);
> > +
> > +     intel_pps_reset_all(dev_priv);
> > +
> > +     /* Prevent us from re-enabling polling on accident in late
> > suspend */
> > +     if (!dev_priv->drm.dev->power.is_suspended)
> > +             intel_hpd_poll_enable(dev_priv);
> > +}
> > +
> > +static void vlv_display_power_well_enable(struct drm_i915_private
> > *dev_priv,
> > +                                       struct i915_power_well
> > *power_well)
> > +{
> > +     vlv_set_power_well(dev_priv, power_well, true);
> > +
> > +     vlv_display_power_well_init(dev_priv);
> > +}
> > +
> > +static void vlv_display_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > +                                        struct i915_power_well
> > *power_well)
> > +{
> > +     vlv_display_power_well_deinit(dev_priv);
> > +
> > +     vlv_set_power_well(dev_priv, power_well, false);
> > +}
> > +
> > +static void vlv_dpio_cmn_power_well_enable(struct drm_i915_private
> > *dev_priv,
> > +                                        struct i915_power_well
> > *power_well)
> > +{
> > +     /* since ref/cri clock was enabled */
> > +     udelay(1); /* >10ns for cmnreset, >0ns for sidereset */
> > +
> > +     vlv_set_power_well(dev_priv, power_well, true);
> > +
> > +     /*
> > +      * From VLV2A0_DP_eDP_DPIO_driver_vbios_notes_10.docx -
> > +      *  6.  De-assert cmn_reset/side_reset. Same as VLV X0.
> > +      *   a. GUnit 0x2110 bit[0] set to 1 (def 0)
> > +      *   b. The other bits such as sfr settings / modesel may all
> > +      *      be set to 0.
> > +      *
> > +      * This should only be done on init and resume from S3 with
> > +      * both PLLs disabled, or we risk losing DPIO and PLL
> > +      * synchronization.
> > +      */
> > +     intel_de_write(dev_priv, DPIO_CTL,
> > +                    intel_de_read(dev_priv, DPIO_CTL) |
> > DPIO_CMNRST);
> > +}
> > +
> > +static void vlv_dpio_cmn_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > +                                         struct i915_power_well
> > *power_well)
> > +{
> > +     enum pipe pipe;
> > +
> > +     for_each_pipe(dev_priv, pipe)
> > +             assert_pll_disabled(dev_priv, pipe);
> > +
> > +     /* Assert common reset */
> > +     intel_de_write(dev_priv, DPIO_CTL,
> > +                    intel_de_read(dev_priv, DPIO_CTL) &
> > ~DPIO_CMNRST);
> > +
> > +     vlv_set_power_well(dev_priv, power_well, false);
> > +}
> > +
> > +#define POWER_DOMAIN_MASK (GENMASK_ULL(POWER_DOMAIN_NUM - 1, 0))
> > +
> > +#define BITS_SET(val, bits) (((val) & (bits)) == (bits))
> > +
> > +static void assert_chv_phy_status(struct drm_i915_private *dev_priv)
> > +{
> > +     struct i915_power_well *cmn_bc =
> > +             lookup_power_well(dev_priv, VLV_DISP_PW_DPIO_CMN_BC);
> > +     struct i915_power_well *cmn_d =
> > +             lookup_power_well(dev_priv, CHV_DISP_PW_DPIO_CMN_D);
> > +     u32 phy_control = dev_priv->chv_phy_control;
> > +     u32 phy_status = 0;
> > +     u32 phy_status_mask = 0xffffffff;
> > +
> > +     /*
> > +      * The BIOS can leave the PHY is some weird state
> > +      * where it doesn't fully power down some parts.
> > +      * Disable the asserts until the PHY has been fully
> > +      * reset (ie. the power well has been disabled at
> > +      * least once).
> > +      */
> > +     if (!dev_priv->chv_phy_assert[DPIO_PHY0])
> > +             phy_status_mask &= ~(PHY_STATUS_CMN_LDO(DPIO_PHY0,
> > DPIO_CH0) |
> > +                                  PHY_STATUS_SPLINE_LDO(DPIO_PHY0,
> > DPIO_CH0, 0) |
> > +                                  PHY_STATUS_SPLINE_LDO(DPIO_PHY0,
> > DPIO_CH0, 1) |
> > +                                  PHY_STATUS_CMN_LDO(DPIO_PHY0,
> > DPIO_CH1) |
> > +                                  PHY_STATUS_SPLINE_LDO(DPIO_PHY0,
> > DPIO_CH1, 0) |
> > +                                  PHY_STATUS_SPLINE_LDO(DPIO_PHY0,
> > DPIO_CH1, 1));
> > +
> > +     if (!dev_priv->chv_phy_assert[DPIO_PHY1])
> > +             phy_status_mask &= ~(PHY_STATUS_CMN_LDO(DPIO_PHY1,
> > DPIO_CH0) |
> > +                                  PHY_STATUS_SPLINE_LDO(DPIO_PHY1,
> > DPIO_CH0, 0) |
> > +                                  PHY_STATUS_SPLINE_LDO(DPIO_PHY1,
> > DPIO_CH0, 1));
> > +
> > +     if (intel_power_well_is_enabled(dev_priv, cmn_bc)) {
> > +             phy_status |= PHY_POWERGOOD(DPIO_PHY0);
> > +
> > +             /* this assumes override is only used to enable lanes
> > */
> > +             if ((phy_control & PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY0,
> > DPIO_CH0)) == 0)
> > +                     phy_control |= PHY_CH_POWER_DOWN_OVRD(0xf,
> > DPIO_PHY0, DPIO_CH0);
> > +
> > +             if ((phy_control & PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY0,
> > DPIO_CH1)) == 0)
> > +                     phy_control |= PHY_CH_POWER_DOWN_OVRD(0xf,
> > DPIO_PHY0, DPIO_CH1);
> > +
> > +             /* CL1 is on whenever anything is on in either channel
> > */
> > +             if (BITS_SET(phy_control,
> > +                          PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY0,
> > DPIO_CH0) |
> > +                          PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY0,
> > DPIO_CH1)))
> > +                     phy_status |= PHY_STATUS_CMN_LDO(DPIO_PHY0,
> > DPIO_CH0);
> > +
> > +             /*
> > +              * The DPLLB check accounts for the pipe B + port A
> > usage
> > +              * with CL2 powered up but all the lanes in the second
> > channel
> > +              * powered down.
> > +              */
> > +             if (BITS_SET(phy_control,
> > +                          PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY0,
> > DPIO_CH1)) &&
> > +                 (intel_de_read(dev_priv, DPLL(PIPE_B)) &
> > DPLL_VCO_ENABLE) == 0)
> > +                     phy_status |= PHY_STATUS_CMN_LDO(DPIO_PHY0,
> > DPIO_CH1);
> > +
> > +             if (BITS_SET(phy_control,
> > +                          PHY_CH_POWER_DOWN_OVRD(0x3, DPIO_PHY0,
> > DPIO_CH0)))
> > +                     phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY0,
> > DPIO_CH0, 0);
> > +             if (BITS_SET(phy_control,
> > +                          PHY_CH_POWER_DOWN_OVRD(0xc, DPIO_PHY0,
> > DPIO_CH0)))
> > +                     phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY0,
> > DPIO_CH0, 1);
> > +
> > +             if (BITS_SET(phy_control,
> > +                          PHY_CH_POWER_DOWN_OVRD(0x3, DPIO_PHY0,
> > DPIO_CH1)))
> > +                     phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY0,
> > DPIO_CH1, 0);
> > +             if (BITS_SET(phy_control,
> > +                          PHY_CH_POWER_DOWN_OVRD(0xc, DPIO_PHY0,
> > DPIO_CH1)))
> > +                     phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY0,
> > DPIO_CH1, 1);
> > +     }
> > +
> > +     if (intel_power_well_is_enabled(dev_priv, cmn_d)) {
> > +             phy_status |= PHY_POWERGOOD(DPIO_PHY1);
> > +
> > +             /* this assumes override is only used to enable lanes
> > */
> > +             if ((phy_control & PHY_CH_POWER_DOWN_OVRD_EN(DPIO_PHY1,
> > DPIO_CH0)) == 0)
> > +                     phy_control |= PHY_CH_POWER_DOWN_OVRD(0xf,
> > DPIO_PHY1, DPIO_CH0);
> > +
> > +             if (BITS_SET(phy_control,
> > +                          PHY_CH_POWER_DOWN_OVRD(0xf, DPIO_PHY1,
> > DPIO_CH0)))
> > +                     phy_status |= PHY_STATUS_CMN_LDO(DPIO_PHY1,
> > DPIO_CH0);
> > +
> > +             if (BITS_SET(phy_control,
> > +                          PHY_CH_POWER_DOWN_OVRD(0x3, DPIO_PHY1,
> > DPIO_CH0)))
> > +                     phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY1,
> > DPIO_CH0, 0);
> > +             if (BITS_SET(phy_control,
> > +                          PHY_CH_POWER_DOWN_OVRD(0xc, DPIO_PHY1,
> > DPIO_CH0)))
> > +                     phy_status |= PHY_STATUS_SPLINE_LDO(DPIO_PHY1,
> > DPIO_CH0, 1);
> > +     }
> > +
> > +     phy_status &= phy_status_mask;
> > +
> > +     /*
> > +      * The PHY may be busy with some initial calibration and
> > whatnot,
> > +      * so the power state can take a while to actually change.
> > +      */
> > +     if (intel_de_wait_for_register(dev_priv, DISPLAY_PHY_STATUS,
> > +                                    phy_status_mask, phy_status,
> > 10))
> > +             drm_err(&dev_priv->drm,
> > +                     "Unexpected PHY_STATUS 0x%08x, expected 0x%08x
> > (PHY_CONTROL=0x%08x)\n",
> > +                     intel_de_read(dev_priv, DISPLAY_PHY_STATUS) &
> > phy_status_mask,
> > +                     phy_status, dev_priv->chv_phy_control);
> > +}
> > +
> > +#undef BITS_SET
> > +
> > +static void chv_dpio_cmn_power_well_enable(struct drm_i915_private
> > *dev_priv,
> > +                                        struct i915_power_well
> > *power_well)
> > +{
> > +     enum dpio_phy phy;
> > +     enum pipe pipe;
> > +     u32 tmp;
> > +
> > +     drm_WARN_ON_ONCE(&dev_priv->drm,
> > +                      power_well->desc->id !=
> > VLV_DISP_PW_DPIO_CMN_BC &&
> > +                      power_well->desc->id !=
> > CHV_DISP_PW_DPIO_CMN_D);
> > +
> > +     if (power_well->desc->id == VLV_DISP_PW_DPIO_CMN_BC) {
> > +             pipe = PIPE_A;
> > +             phy = DPIO_PHY0;
> > +     } else {
> > +             pipe = PIPE_C;
> > +             phy = DPIO_PHY1;
> > +     }
> > +
> > +     /* since ref/cri clock was enabled */
> > +     udelay(1); /* >10ns for cmnreset, >0ns for sidereset */
> > +     vlv_set_power_well(dev_priv, power_well, true);
> > +
> > +     /* Poll for phypwrgood signal */
> > +     if (intel_de_wait_for_set(dev_priv, DISPLAY_PHY_STATUS,
> > +                               PHY_POWERGOOD(phy), 1))
> > +             drm_err(&dev_priv->drm, "Display PHY %d is not power
> > up\n",
> > +                     phy);
> > +
> > +     vlv_dpio_get(dev_priv);
> > +
> > +     /* Enable dynamic power down */
> > +     tmp = vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW28);
> > +     tmp |= DPIO_DYNPWRDOWNEN_CH0 | DPIO_CL1POWERDOWNEN |
> > +             DPIO_SUS_CLK_CONFIG_GATE_CLKREQ;
> > +     vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW28, tmp);
> > +
> > +     if (power_well->desc->id == VLV_DISP_PW_DPIO_CMN_BC) {
> > +             tmp = vlv_dpio_read(dev_priv, pipe, _CHV_CMN_DW6_CH1);
> > +             tmp |= DPIO_DYNPWRDOWNEN_CH1;
> > +             vlv_dpio_write(dev_priv, pipe, _CHV_CMN_DW6_CH1, tmp);
> > +     } else {
> > +             /*
> > +              * Force the non-existing CL2 off. BXT does this
> > +              * too, so maybe it saves some power even though
> > +              * CL2 doesn't exist?
> > +              */
> > +             tmp = vlv_dpio_read(dev_priv, pipe, CHV_CMN_DW30);
> > +             tmp |= DPIO_CL2_LDOFUSE_PWRENB;
> > +             vlv_dpio_write(dev_priv, pipe, CHV_CMN_DW30, tmp);
> > +     }
> > +
> > +     vlv_dpio_put(dev_priv);
> > +
> > +     dev_priv->chv_phy_control |= PHY_COM_LANE_RESET_DEASSERT(phy);
> > +     intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
> > +                    dev_priv->chv_phy_control);
> > +
> > +     drm_dbg_kms(&dev_priv->drm,
> > +                 "Enabled DPIO PHY%d (PHY_CONTROL=0x%08x)\n",
> > +                 phy, dev_priv->chv_phy_control);
> > +
> > +     assert_chv_phy_status(dev_priv);
> > +}
> > +
> > +static void chv_dpio_cmn_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > +                                         struct i915_power_well
> > *power_well)
> > +{
> > +     enum dpio_phy phy;
> > +
> > +     drm_WARN_ON_ONCE(&dev_priv->drm,
> > +                      power_well->desc->id !=
> > VLV_DISP_PW_DPIO_CMN_BC &&
> > +                      power_well->desc->id !=
> > CHV_DISP_PW_DPIO_CMN_D);
> > +
> > +     if (power_well->desc->id == VLV_DISP_PW_DPIO_CMN_BC) {
> > +             phy = DPIO_PHY0;
> > +             assert_pll_disabled(dev_priv, PIPE_A);
> > +             assert_pll_disabled(dev_priv, PIPE_B);
> > +     } else {
> > +             phy = DPIO_PHY1;
> > +             assert_pll_disabled(dev_priv, PIPE_C);
> > +     }
> > +
> > +     dev_priv->chv_phy_control &= ~PHY_COM_LANE_RESET_DEASSERT(phy);
> > +     intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
> > +                    dev_priv->chv_phy_control);
> > +
> > +     vlv_set_power_well(dev_priv, power_well, false);
> > +
> > +     drm_dbg_kms(&dev_priv->drm,
> > +                 "Disabled DPIO PHY%d (PHY_CONTROL=0x%08x)\n",
> > +                 phy, dev_priv->chv_phy_control);
> > +
> > +     /* PHY is fully reset now, so we can enable the PHY state
> > asserts */
> > +     dev_priv->chv_phy_assert[phy] = true;
> > +
> > +     assert_chv_phy_status(dev_priv);
> > +}
> > +
> > +static void assert_chv_phy_powergate(struct drm_i915_private
> > *dev_priv, enum dpio_phy phy,
> > +                                  enum dpio_channel ch, bool
> > override, unsigned int mask)
> > +{
> > +     enum pipe pipe = phy == DPIO_PHY0 ? PIPE_A : PIPE_C;
> > +     u32 reg, val, expected, actual;
> > +
> > +     /*
> > +      * The BIOS can leave the PHY is some weird state
> > +      * where it doesn't fully power down some parts.
> > +      * Disable the asserts until the PHY has been fully
> > +      * reset (ie. the power well has been disabled at
> > +      * least once).
> > +      */
> > +     if (!dev_priv->chv_phy_assert[phy])
> > +             return;
> > +
> > +     if (ch == DPIO_CH0)
> > +             reg = _CHV_CMN_DW0_CH0;
> > +     else
> > +             reg = _CHV_CMN_DW6_CH1;
> > +
> > +     vlv_dpio_get(dev_priv);
> > +     val = vlv_dpio_read(dev_priv, pipe, reg);
> > +     vlv_dpio_put(dev_priv);
> > +
> > +     /*
> > +      * This assumes !override is only used when the port is
> > disabled.
> > +      * All lanes should power down even without the override when
> > +      * the port is disabled.
> > +      */
> > +     if (!override || mask == 0xf) {
> > +             expected = DPIO_ALLDL_POWERDOWN | DPIO_ANYDL_POWERDOWN;
> > +             /*
> > +              * If CH1 common lane is not active anymore
> > +              * (eg. for pipe B DPLL) the entire channel will
> > +              * shut down, which causes the common lane registers
> > +              * to read as 0. That means we can't actually check
> > +              * the lane power down status bits, but as the entire
> > +              * register reads as 0 it's a good indication that the
> > +              * channel is indeed entirely powered down.
> > +              */
> > +             if (ch == DPIO_CH1 && val == 0)
> > +                     expected = 0;
> > +     } else if (mask != 0x0) {
> > +             expected = DPIO_ANYDL_POWERDOWN;
> > +     } else {
> > +             expected = 0;
> > +     }
> > +
> > +     if (ch == DPIO_CH0)
> > +             actual = val >> DPIO_ANYDL_POWERDOWN_SHIFT_CH0;
> > +     else
> > +             actual = val >> DPIO_ANYDL_POWERDOWN_SHIFT_CH1;
> > +     actual &= DPIO_ALLDL_POWERDOWN | DPIO_ANYDL_POWERDOWN;
> > +
> > +     drm_WARN(&dev_priv->drm, actual != expected,
> > +              "Unexpected DPIO lane power down: all %d, any %d.
> > Expected: all %d, any %d. (0x%x = 0x%08x)\n",
> > +              !!(actual & DPIO_ALLDL_POWERDOWN),
> > +              !!(actual & DPIO_ANYDL_POWERDOWN),
> > +              !!(expected & DPIO_ALLDL_POWERDOWN),
> > +              !!(expected & DPIO_ANYDL_POWERDOWN),
> > +              reg, val);
> > +}
> > +
> > +bool chv_phy_powergate_ch(struct drm_i915_private *dev_priv, enum
> > dpio_phy phy,
> > +                       enum dpio_channel ch, bool override)
> > +{
> > +     struct i915_power_domains *power_domains = &dev_priv-
> > >power_domains;
> > +     bool was_override;
> > +
> > +     mutex_lock(&power_domains->lock);
> 
> Not really in scope of this patch, but why this mutex is taken? This
> function is not touching any power_well/power_domain reference counts
> or other internal data?

Yes, power_domains->lock protects the power domain/well state, here it
was just borrowed to protect the register state (DISPLAY_PHY_CONTROL,
dev_priv->chv_phy_control) used both for power well control and PHY lane
power gating. I suppose the alternative would've been a dedicated lock
for these, but nothing justified adding it, so the existing lock was
just borrowed.

> > +
> > +     was_override = dev_priv->chv_phy_control &
> > PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
> > +
> > +     if (override == was_override)
> > +             goto out;
> > +
> > +     if (override)
> > +             dev_priv->chv_phy_control |=
> > PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
> > +     else
> > +             dev_priv->chv_phy_control &=
> > ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
> > +
> > +     intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
> > +                    dev_priv->chv_phy_control);
> > +
> > +     drm_dbg_kms(&dev_priv->drm,
> > +                 "Power gating DPIO PHY%d CH%d
> > (DPIO_PHY_CONTROL=0x%08x)\n",
> > +                 phy, ch, dev_priv->chv_phy_control);
> > +
> > +     assert_chv_phy_status(dev_priv);
> > +
> > +out:
> > +     mutex_unlock(&power_domains->lock);
> > +
> > +     return was_override;
> > +}
> > +
> > +void chv_phy_powergate_lanes(struct intel_encoder *encoder,
> > +                          bool override, unsigned int mask)
> > +{
> > +     struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> > +     struct i915_power_domains *power_domains = &dev_priv-
> > >power_domains;
> > +     enum dpio_phy phy =
> > vlv_dig_port_to_phy(enc_to_dig_port(encoder));
> > +     enum dpio_channel ch =
> > vlv_dig_port_to_channel(enc_to_dig_port(encoder));
> > +
> > +     mutex_lock(&power_domains->lock);
> > +
> > +     dev_priv->chv_phy_control &= ~PHY_CH_POWER_DOWN_OVRD(0xf, phy,
> > ch);
> > +     dev_priv->chv_phy_control |= PHY_CH_POWER_DOWN_OVRD(mask, phy,
> > ch);
> > +
> > +     if (override)
> > +             dev_priv->chv_phy_control |=
> > PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
> > +     else
> > +             dev_priv->chv_phy_control &=
> > ~PHY_CH_POWER_DOWN_OVRD_EN(phy, ch);
> > +
> > +     intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
> > +                    dev_priv->chv_phy_control);
> > +
> > +     drm_dbg_kms(&dev_priv->drm,
> > +                 "Power gating DPIO PHY%d CH%d lanes 0x%x
> > (PHY_CONTROL=0x%08x)\n",
> > +                 phy, ch, mask, dev_priv->chv_phy_control);
> > +
> > +     assert_chv_phy_status(dev_priv);
> > +
> > +     assert_chv_phy_powergate(dev_priv, phy, ch, override, mask);
> > +
> > +     mutex_unlock(&power_domains->lock);
> > +}
> > +
> > +static bool chv_pipe_power_well_enabled(struct drm_i915_private
> > *dev_priv,
> > +                                     struct i915_power_well
> > *power_well)
> > +{
> > +     enum pipe pipe = PIPE_A;
> > +     bool enabled;
> > +     u32 state, ctrl;
> > +
> > +     vlv_punit_get(dev_priv);
> > +
> > +     state = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) &
> > DP_SSS_MASK(pipe);
> > +     /*
> > +      * We only ever set the power-on and power-gate states,
> > anything
> > +      * else is unexpected.
> > +      */
> > +     drm_WARN_ON(&dev_priv->drm, state != DP_SSS_PWR_ON(pipe) &&
> > +                 state != DP_SSS_PWR_GATE(pipe));
> > +     enabled = state == DP_SSS_PWR_ON(pipe);
> > +
> > +     /*
> > +      * A transient state at this point would mean some unexpected
> > party
> > +      * is poking at the power controls too.
> > +      */
> > +     ctrl = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) &
> > DP_SSC_MASK(pipe);
> > +     drm_WARN_ON(&dev_priv->drm, ctrl << 16 != state);
> > +
> > +     vlv_punit_put(dev_priv);
> > +
> > +     return enabled;
> > +}
> > +
> > +static void chv_set_pipe_power_well(struct drm_i915_private
> > *dev_priv,
> > +                                 struct i915_power_well *power_well,
> > +                                 bool enable)
> > +{
> > +     enum pipe pipe = PIPE_A;
> > +     u32 state;
> > +     u32 ctrl;
> > +
> > +     state = enable ? DP_SSS_PWR_ON(pipe) : DP_SSS_PWR_GATE(pipe);
> > +
> > +     vlv_punit_get(dev_priv);
> > +
> > +#define COND \
> > +     ((vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM) &
> > DP_SSS_MASK(pipe)) == state)
> > +
> > +     if (COND)
> > +             goto out;
> > +
> > +     ctrl = vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM);
> > +     ctrl &= ~DP_SSC_MASK(pipe);
> > +     ctrl |= enable ? DP_SSC_PWR_ON(pipe) : DP_SSC_PWR_GATE(pipe);
> > +     vlv_punit_write(dev_priv, PUNIT_REG_DSPSSPM, ctrl);
> > +
> > +     if (wait_for(COND, 100))
> > +             drm_err(&dev_priv->drm,
> > +                     "timeout setting power well state %08x
> > (%08x)\n",
> > +                     state,
> > +                     vlv_punit_read(dev_priv, PUNIT_REG_DSPSSPM));
> > +
> > +#undef COND
> > +
> > +out:
> > +     vlv_punit_put(dev_priv);
> > +}
> > +
> > +static void chv_pipe_power_well_sync_hw(struct drm_i915_private
> > *dev_priv,
> > +                                     struct i915_power_well
> > *power_well)
> > +{
> > +     intel_de_write(dev_priv, DISPLAY_PHY_CONTROL,
> > +                    dev_priv->chv_phy_control);
> > +}
> > +
> > +static void chv_pipe_power_well_enable(struct drm_i915_private
> > *dev_priv,
> > +                                    struct i915_power_well
> > *power_well)
> > +{
> > +     chv_set_pipe_power_well(dev_priv, power_well, true);
> > +
> > +     vlv_display_power_well_init(dev_priv);
> > +}
> > +
> > +static void chv_pipe_power_well_disable(struct drm_i915_private
> > *dev_priv,
> > +                                     struct i915_power_well
> > *power_well)
> > +{
> > +     vlv_display_power_well_deinit(dev_priv);
> > +
> > +     chv_set_pipe_power_well(dev_priv, power_well, false);
> > +}
> > +
> > +static void
> > +tgl_tc_cold_request(struct drm_i915_private *i915, bool block)
> > +{
> > +     u8 tries = 0;
> > +     int ret;
> > +
> > +     while (1) {
> > +             u32 low_val;
> > +             u32 high_val = 0;
> > +
> > +             if (block)
> > +                     low_val =
> > TGL_PCODE_EXIT_TCCOLD_DATA_L_BLOCK_REQ;
> > +             else
> > +                     low_val =
> > TGL_PCODE_EXIT_TCCOLD_DATA_L_UNBLOCK_REQ;
> > +
> > +             /*
> > +              * Spec states that we should timeout the request after
> > 200us
> > +              * but the function below will timeout after 500us
> > +              */
> > +             ret = snb_pcode_read(i915, TGL_PCODE_TCCOLD, &low_val,
> > &high_val);
> > +             if (ret == 0) {
> > +                     if (block &&
> > +                         (low_val &
> > TGL_PCODE_EXIT_TCCOLD_DATA_L_EXIT_FAILED))
> > +                             ret = -EIO;
> > +                     else
> > +                             break;
> > +             }
> > +
> > +             if (++tries == 3)
> > +                     break;
> > +
> > +             msleep(1);
> > +     }
> > +
> > +     if (ret)
> > +             drm_err(&i915->drm, "TC cold %sblock failed\n",
> > +                     block ? "" : "un");
> > +     else
> > +             drm_dbg_kms(&i915->drm, "TC cold %sblock succeeded\n",
> > +                         block ? "" : "un");
> > +}
> > +
> > +static void
> > +tgl_tc_cold_off_power_well_enable(struct drm_i915_private *i915,
> > +                               struct i915_power_well *power_well)
> > +{
> > +     tgl_tc_cold_request(i915, true);
> > +}
> > +
> > +static void
> > +tgl_tc_cold_off_power_well_disable(struct drm_i915_private *i915,
> > +                                struct i915_power_well *power_well)
> > +{
> > +     tgl_tc_cold_request(i915, false);
> > +}
> > +
> > +static void
> > +tgl_tc_cold_off_power_well_sync_hw(struct drm_i915_private *i915,
> > +                                struct i915_power_well *power_well)
> > +{
> > +     if (intel_power_well_refcount(power_well) > 0)
> > +             tgl_tc_cold_off_power_well_enable(i915, power_well);
> > +     else
> > +             tgl_tc_cold_off_power_well_disable(i915, power_well);
> > +}
> > +
> > +static bool
> > +tgl_tc_cold_off_power_well_is_enabled(struct drm_i915_private
> > *dev_priv,
> > +                                   struct i915_power_well
> > *power_well)
> > +{
> > +     /*
> > +      * Not the correctly implementation but there is no way to just
> > read it
> > +      * from PCODE, so returning count to avoid state mismatch
> > errors
> > +      */
> > +     return intel_power_well_refcount(power_well);
> > +}
> > +
> > +
> > +const struct i915_power_well_ops i9xx_always_on_power_well_ops = {
> > +     .sync_hw = i9xx_power_well_sync_hw_noop,
> > +     .enable = i9xx_always_on_power_well_noop,
> > +     .disable = i9xx_always_on_power_well_noop,
> > +     .is_enabled = i9xx_always_on_power_well_enabled,
> > +};
> > +
> > +const struct i915_power_well_ops chv_pipe_power_well_ops = {
> > +     .sync_hw = chv_pipe_power_well_sync_hw,
> > +     .enable = chv_pipe_power_well_enable,
> > +     .disable = chv_pipe_power_well_disable,
> > +     .is_enabled = chv_pipe_power_well_enabled,
> > +};
> > +
> > +const struct i915_power_well_ops chv_dpio_cmn_power_well_ops = {
> > +     .sync_hw = i9xx_power_well_sync_hw_noop,
> > +     .enable = chv_dpio_cmn_power_well_enable,
> > +     .disable = chv_dpio_cmn_power_well_disable,
> > +     .is_enabled = vlv_power_well_enabled,
> > +};
> > +
> > +const struct i915_power_well_ops i830_pipes_power_well_ops = {
> > +     .sync_hw = i830_pipes_power_well_sync_hw,
> > +     .enable = i830_pipes_power_well_enable,
> > +     .disable = i830_pipes_power_well_disable,
> > +     .is_enabled = i830_pipes_power_well_enabled,
> > +};
> > +
> > +static const struct i915_power_well_regs hsw_power_well_regs = {
> > +     .bios   = HSW_PWR_WELL_CTL1,
> > +     .driver = HSW_PWR_WELL_CTL2,
> > +     .kvmr   = HSW_PWR_WELL_CTL3,
> > +     .debug  = HSW_PWR_WELL_CTL4,
> > +};
> > +
> > +const struct i915_power_well_ops hsw_power_well_ops = {
> > +     .regs = &hsw_power_well_regs,
> > +     .sync_hw = hsw_power_well_sync_hw,
> > +     .enable = hsw_power_well_enable,
> > +     .disable = hsw_power_well_disable,
> > +     .is_enabled = hsw_power_well_enabled,
> > +};
> > +
> > +const struct i915_power_well_ops gen9_dc_off_power_well_ops = {
> > +     .sync_hw = i9xx_power_well_sync_hw_noop,
> > +     .enable = gen9_dc_off_power_well_enable,
> > +     .disable = gen9_dc_off_power_well_disable,
> > +     .is_enabled = gen9_dc_off_power_well_enabled,
> > +};
> > +
> > +const struct i915_power_well_ops bxt_dpio_cmn_power_well_ops = {
> > +     .sync_hw = i9xx_power_well_sync_hw_noop,
> > +     .enable = bxt_dpio_cmn_power_well_enable,
> > +     .disable = bxt_dpio_cmn_power_well_disable,
> > +     .is_enabled = bxt_dpio_cmn_power_well_enabled,
> > +};
> > +
> > +const struct i915_power_well_ops vlv_display_power_well_ops = {
> > +     .sync_hw = i9xx_power_well_sync_hw_noop,
> > +     .enable = vlv_display_power_well_enable,
> > +     .disable = vlv_display_power_well_disable,
> > +     .is_enabled = vlv_power_well_enabled,
> > +};
> > +
> > +const struct i915_power_well_ops vlv_dpio_cmn_power_well_ops = {
> > +     .sync_hw = i9xx_power_well_sync_hw_noop,
> > +     .enable = vlv_dpio_cmn_power_well_enable,
> > +     .disable = vlv_dpio_cmn_power_well_disable,
> > +     .is_enabled = vlv_power_well_enabled,
> > +};
> > +
> > +const struct i915_power_well_ops vlv_dpio_power_well_ops = {
> > +     .sync_hw = i9xx_power_well_sync_hw_noop,
> > +     .enable = vlv_power_well_enable,
> > +     .disable = vlv_power_well_disable,
> > +     .is_enabled = vlv_power_well_enabled,
> > +};
> > +
> > +static const struct i915_power_well_regs icl_aux_power_well_regs = {
> > +     .bios   = ICL_PWR_WELL_CTL_AUX1,
> > +     .driver = ICL_PWR_WELL_CTL_AUX2,
> > +     .debug  = ICL_PWR_WELL_CTL_AUX4,
> > +};
> > +
> > +const struct i915_power_well_ops icl_aux_power_well_ops = {
> > +     .regs = &icl_aux_power_well_regs,
> > +     .sync_hw = hsw_power_well_sync_hw,
> > +     .enable = icl_aux_power_well_enable,
> > +     .disable = icl_aux_power_well_disable,
> > +     .is_enabled = hsw_power_well_enabled,
> > +};
> > +
> > +static const struct i915_power_well_regs icl_ddi_power_well_regs = {
> > +     .bios   = ICL_PWR_WELL_CTL_DDI1,
> > +     .driver = ICL_PWR_WELL_CTL_DDI2,
> > +     .debug  = ICL_PWR_WELL_CTL_DDI4,
> > +};
> > +
> > +const struct i915_power_well_ops icl_ddi_power_well_ops = {
> > +     .regs = &icl_ddi_power_well_regs,
> > +     .sync_hw = hsw_power_well_sync_hw,
> > +     .enable = hsw_power_well_enable,
> > +     .disable = hsw_power_well_disable,
> > +     .is_enabled = hsw_power_well_enabled,
> > +};
> > +
> > +const struct i915_power_well_ops tgl_tc_cold_off_ops = {
> > +     .sync_hw = tgl_tc_cold_off_power_well_sync_hw,
> > +     .enable = tgl_tc_cold_off_power_well_enable,
> > +     .disable = tgl_tc_cold_off_power_well_disable,
> > +     .is_enabled = tgl_tc_cold_off_power_well_is_enabled,
> > +};
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > index 9a3756fdcf7fc..2c0e53fb976c4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.h
> > @@ -36,41 +36,6 @@ enum i915_power_well_id {
> >       TGL_DISP_PW_TC_COLD_OFF,
> >  };
> >
> > -struct i915_power_well_regs {
> > -     i915_reg_t bios;
> > -     i915_reg_t driver;
> > -     i915_reg_t kvmr;
> > -     i915_reg_t debug;
> > -};
> > -
> > -struct i915_power_well_ops {
> > -     const struct i915_power_well_regs *regs;
> > -     /*
> > -      * Synchronize the well's hw state to match the current sw
> > state, for
> > -      * example enable/disable it based on the current refcount.
> > Called
> > -      * during driver init and resume time, possibly after first
> > calling
> > -      * the enable/disable handlers.
> > -      */
> > -     void (*sync_hw)(struct drm_i915_private *i915,
> > -                     struct i915_power_well *power_well);
> > -     /*
> > -      * Enable the well and resources that depend on it (for example
> > -      * interrupts located on the well). Called after the 0->1
> > refcount
> > -      * transition.
> > -      */
> > -     void (*enable)(struct drm_i915_private *i915,
> > -                    struct i915_power_well *power_well);
> > -     /*
> > -      * Disable the well and resources that depend on it. Called
> > after
> > -      * the 1->0 refcount transition.
> > -      */
> > -     void (*disable)(struct drm_i915_private *i915,
> > -                     struct i915_power_well *power_well);
> > -     /* Returns the hw enabled state. */
> > -     bool (*is_enabled)(struct drm_i915_private *i915,
> > -                        struct i915_power_well *power_well);
> > -};
> > -
> >  struct i915_power_well_desc {
> >       const char *name;
> >       bool always_on;
> > @@ -150,4 +115,26 @@ const char *intel_power_well_name(struct
> > i915_power_well *power_well);
> >  u64 intel_power_well_domains(struct i915_power_well *power_well);
> >  int intel_power_well_refcount(struct i915_power_well *power_well);
> >
> > +void gen9_enable_dc5(struct drm_i915_private *dev_priv);
> > +void skl_enable_dc6(struct drm_i915_private *dev_priv);
> > +void gen9_sanitize_dc_state(struct drm_i915_private *dev_priv);
> > +void gen9_set_dc_state(struct drm_i915_private *dev_priv, u32
> > state);
> > +void gen9_disable_dc_states(struct drm_i915_private *dev_priv);
> > +void bxt_enable_dc9(struct drm_i915_private *dev_priv);
> > +void bxt_disable_dc9(struct drm_i915_private *dev_priv);
> > +
> > +extern const struct i915_power_well_ops
> > i9xx_always_on_power_well_ops;
> > +extern const struct i915_power_well_ops chv_pipe_power_well_ops;
> > +extern const struct i915_power_well_ops chv_dpio_cmn_power_well_ops;
> > +extern const struct i915_power_well_ops i830_pipes_power_well_ops;
> > +extern const struct i915_power_well_ops hsw_power_well_ops;
> > +extern const struct i915_power_well_ops gen9_dc_off_power_well_ops;
> > +extern const struct i915_power_well_ops bxt_dpio_cmn_power_well_ops;
> > +extern const struct i915_power_well_ops vlv_display_power_well_ops;
> > +extern const struct i915_power_well_ops vlv_dpio_cmn_power_well_ops;
> > +extern const struct i915_power_well_ops vlv_dpio_power_well_ops;
> > +extern const struct i915_power_well_ops icl_aux_power_well_ops;
> > +extern const struct i915_power_well_ops icl_ddi_power_well_ops;
> > +extern const struct i915_power_well_ops tgl_tc_cold_off_ops;
> > +
> >  #endif
> 
> BR,
> 
> Jouni H�gander
> 
