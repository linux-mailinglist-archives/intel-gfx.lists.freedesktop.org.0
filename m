Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6E826D4235
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Apr 2023 12:36:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B78210E171;
	Mon,  3 Apr 2023 10:36:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5838B10E171
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Apr 2023 10:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680518184; x=1712054184;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=uIxY2P30PpEHan4q/7Euqp0LKmBoNO7PXfMp5RQHsp4=;
 b=Ucw8YDbfekoFhpgJAN1Zpy14GcOWhUV9nAmxLMzX0jjiL7ENYrW+MnKs
 v3BgBr1yfv1bjJ6bWVoWNQso2h7/QjBTh4WqsXeC16NzaZkzrP7qgorUB
 qALnmr4LKj40VP5R/ZF/qpz4qZe5SJIFHWI1q7cvKVJYNSVfFrMRL4uz5
 WOoC/4JGZ9mF23uRNMYdoZzhAmHqSTYmb2Rl9EwUNthWDBnTZoxJJcM9A
 c33WJh/4KEBi3MQ94Cruiv7IW56pjwCTFUZXPg0EUv6JZp5kamrad+lwC
 8E87fjRnLcwJDs3iOtYHmN2qqpDbB/aB3IfxkFm1XwmPNQW8zHHxL2HXr Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="428150107"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="428150107"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 03:36:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10668"; a="718503186"
X-IronPort-AV: E=Sophos;i="5.98,314,1673942400"; d="scan'208";a="718503186"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2023 03:36:21 -0700
Date: Mon, 3 Apr 2023 13:36:18 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>
Message-ID: <ZCqsIr873BLPY40d@ideak-desk.fi.intel.com>
References: <20230327123433.896216-1-mika.kahola@intel.com>
 <20230327123433.896216-5-mika.kahola@intel.com>
 <ZCqmZXQmo3AxxEXj@ideak-desk.fi.intel.com>
 <MW4PR11MB7054DADDA5ECC1490A3772B2EF929@MW4PR11MB7054.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MW4PR11MB7054DADDA5ECC1490A3772B2EF929@MW4PR11MB7054.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915/mtl: Add Support for C10 PHY
 message bus and pll programming
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
Reply-To: imre.deak@intel.com
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 03, 2023 at 01:19:48PM +0300, Kahola, Mika wrote:
> > -----Original Message-----
> > From: Deak, Imre <imre.deak@intel.com>
> > Sent: Monday, April 3, 2023 1:12 PM
> > To: Kahola, Mika <mika.kahola@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Sripada, Radhakrishna
> > <radhakrishna.sripada@intel.com>; Shankar, Uma <uma.shankar@intel.com>;
> > Sousa, Gustavo <gustavo.sousa@intel.com>
> > Subject: Re: [PATCH 4/7] drm/i915/mtl: Add Support for C10 PHY message bus
> > and pll programming
> >
> > On Mon, Mar 27, 2023 at 03:34:30PM +0300, Mika Kahola wrote:
> > > From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> > >
> > > XELPDP has C10 and C20 phys from Synopsys to drive displays. Each phy
> > > has a dedicated PIPE 5.2 Message bus for configuration. This message
> > > bus is used to configure the phy internal registers.
> > >
> > > XELPDP has C10 phys to drive output to the EDP and the native output
> > > from the display engine. Add structures, programming hardware state
> > > readout logic. Port clock calculations are similar to DG2. Use the DG2
> > > formulae to calculate the port clock but use the relevant pll signals.
> > > Note: PHY lane 0 is always used for PLL programming.
> > >
> > > Add sequences for C10 phy enable/disable phy lane reset, powerdown
> > > change sequence and phy lane programming.
> > >
> > > Bspec: 64539, 64568, 64599, 65100, 65101, 65450, 65451, 67610, 67636
> >
> > Shouldn't the basic MTL DP/HDMI modeset sequences be part of this patchset? I
> > can't see how things would work otherwise. For DP it is the
> >
> > "drm/i915/mtl/display: Implement DisplayPort sequences"
> >
> > patch in the internal tree.
> 
> The idea was to get the eDP supported with this C10 series. We could
> go back to the original form and have all C10/C20/TBT patches in one
> series.

As this series enables eDP and HDMI on C10, the parts that make this
working should be in this patchset imo. C20 and TBT doesn't need to be,
but I don't see how eDP or HDMI on C10 would work if the modeset
sequence used for both C10 and C20 and both DP and HDMI modes is not
updated for MTL.

> > More things below, besides my earlier review comments.
> >
> > > [...]
> > > +
> > > +static void intel_c10_pll_program(struct drm_i915_private *i915,
> > > +                             const struct intel_crtc_state *crtc_state,
> > > +                             struct intel_encoder *encoder)
> > > +{
> > > +   const struct intel_c10mpllb_state *pll_state = &crtc_state->c10mpllb_state;
> > > +   struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > > +   bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> > > +   u8 master_lane = lane_reversal ? INTEL_CX0_LANE1 :
> > > +                                    INTEL_CX0_LANE0;
> > > +   u8 follower_lane = lane_reversal ? INTEL_CX0_LANE0 :
> > > +                                      INTEL_CX0_LANE1;
> > > +
> > > +   int i;
> > > +   struct intel_dp *intel_dp;
> > > +   bool use_ssc = false;
> > > +   u8 cmn0 = 0;
> > > +
> > > +   if (intel_crtc_has_dp_encoder(crtc_state)) {
> > > +           intel_dp = enc_to_intel_dp(encoder);
> > > +           use_ssc = (intel_dp->dpcd[DP_MAX_DOWNSPREAD] &
> > > +                     DP_MAX_DOWNSPREAD_0_5);
> > > +
> > > +           if (!intel_panel_use_ssc(i915))
> > > +                   use_ssc = false;
> > > +
> > > +           cmn0 = C10_CMN0_DP_VAL;
> > > +   }
> > > +
> > > +   intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
> > > +                   C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
> > > +   /* Custom width needs to be programmed to 0 for both the phy lanes */
> > > +   intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES,
> > > +                 PHY_C10_VDR_CUSTOM_WIDTH, 0x3, 0, MB_WRITE_COMMITTED);
> > > +   intel_cx0_rmw(i915, encoder->port, follower_lane, PHY_C10_VDR_CONTROL(1),
> > > +                 C10_VDR_CTRL_MASTER_LANE, C10_VDR_CTRL_UPDATE_CFG,
> > > +                 MB_WRITE_COMMITTED);
> > > +
> > > +   /* Program the pll values only for the master lane */
> > > +   for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
> > > +           /* If not using ssc pll[4] through pll[8] must be 0*/
> > > +           intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_PLL(i),
> >
> > This programs the PLL via the INTEL_CX0_LANE1 lane in the lane_reversal=true
> > case. However, I haven't found any trace of this being correct in the spec. It just
> > says that PLL must be programmed via
> > INTEL_CX0_LANE0 in all the cases, so both for lane_reversal and !lane_reversal
> > (see Bspec/64539 "Phy Lane and Transmitter Usage"
> > table/"Lane for message bus PLL programming" column).
> >
> > > +                           (!use_ssc && (i > 3 && i < 9)) ? 0 : pll_state->pll[i],
> > > +                           (i % 4) ? MB_WRITE_UNCOMMITTED : MB_WRITE_COMMITTED);
> > > +
> > > +   intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_CMN(0), cmn0, MB_WRITE_COMMITTED);
> > > +   intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_TX(0), C10_TX0_VAL, MB_WRITE_COMMITTED);
> > > +   intel_cx0_rmw(i915, encoder->port, master_lane, PHY_C10_VDR_CONTROL(1),
> > > +                 C10_VDR_CTRL_MSGBUS_ACCESS, C10_VDR_CTRL_MASTER_LANE |
> > > +                 C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
> >
> > For all the above writes, programming INTEL_CX0_LANE1 looks incorrect in the
> > lane_reversal=true case, should program INTEL_CX0_LANE0 instead.
> 
> So in any case we should program INTEL_CX0_LANE0?

That's what the spec says at least, so I don't see a reason to not
follow that.

> [...]
> > > +
> > >  /*
> > >   * Local integer constant expression version of is_power_of_2().
> > >   */
> > > @@ -74,6 +102,23 @@
> > >            BUILD_BUG_ON_ZERO(!IS_POWER_OF_2((__mask) + (1ULL << __bf_shf(__mask)))) + \
> > >
> > > BUILD_BUG_ON_ZERO(__builtin_choose_expr(__is_constexpr(__val),
> > > (~((__mask) >> __bf_shf(__mask)) & (__val)), 0))))
> > >
> > > +/**
> > > + * REG_FIELD_PREP8() - Prepare a u8 bitfield value
> > > + * @__mask: shifted mask defining the field's length and position
> > > + * @__val: value to put in the field
> > > + *
> > > + * Local copy of FIELD_PREP8() to generate an integer constant expression, force
> >
> > The above is FIELD_PREP() only.
> 
> So use FIELD_PREP() instead of FIELD_PREP8()?

Yes, there is no FIELD_PREP8(), so I assume the reference was about
FIELD_PREP().

--Imre
