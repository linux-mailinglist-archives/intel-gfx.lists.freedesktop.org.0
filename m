Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9AC36D5F6D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 13:47:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 39F4A10E18B;
	Tue,  4 Apr 2023 11:47:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 77E6110E23D
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 11:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680608826; x=1712144826;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=qd+N96DYnvr8uKGdXu7uUE/Gwa4ScPYOUyPuV1DemSQ=;
 b=SFtyCkRmHRqetyEu7/Jw4aiOrOe0x/vJOGQDu+wHk0tKUvZV4inp2LZR
 HSTF5u4elDRIljwCY84PPtSTcu+WLoj0t6kNg/ZBRFDM1DAGElebzWEwP
 39Ugtk3OQYt354BtBa5ZXxZkJzDTTT8p6c1+EtVkOfgnpJJ3rkIlwZ5GK
 wf9bsHk5FJ6aoVmmpfm4gLTTER48x+ZUSb4OGlTKG5CLI5PyHpvzSBmqT
 qgvEHXvrKqLr6IKwjc61L7m0K/w0TlFk4dvkQ6gGs77MHUocqSszexzy9
 +N2lIdv0xJrpcPqAVOuL4ueOgYGokNRYumfHbaMIgWM7R//CmIkA159kJ Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="369973593"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="369973593"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 04:47:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10669"; a="750891962"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="750891962"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 04:47:03 -0700
Date: Tue, 4 Apr 2023 14:47:00 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>
Message-ID: <ZCwONC/frYg8QqEJ@ideak-desk.fi.intel.com>
References: <20230327123433.896216-1-mika.kahola@intel.com>
 <20230327123433.896216-5-mika.kahola@intel.com>
 <ZCRb90HL81lTTIms@ideak-desk.fi.intel.com>
 <MW4PR11MB7054D6DBF09E04B3E89268DEEF939@MW4PR11MB7054.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MW4PR11MB7054D6DBF09E04B3E89268DEEF939@MW4PR11MB7054.namprd11.prod.outlook.com>
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

On Tue, Apr 04, 2023 at 01:43:20PM +0300, Kahola, Mika wrote:
> [...]
> > > +static int __intel_cx0_read(struct drm_i915_private *i915, enum port port,
> > > +                      int lane, u16 addr, u32 *val)
> > > +{
> > > +   enum phy phy = intel_port_to_phy(i915, port);
> > > +   int ack;
> > > +
> > > +   /* Wait for pending transactions.*/
> > > +   if (intel_de_wait_for_clear(i915, XELPDP_PORT_M2P_MSGBUS_CTL(port, lane - 1),
> > > +				      XELPDP_PORT_M2P_TRANSACTION_PENDING,
> > > +                               XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> > > +           drm_dbg_kms(&i915->drm, "PHY %c Timeout waiting for previous transaction to complete. Reset the bus and retry.\n", phy_name(phy));
> > > +           intel_cx0_bus_reset(i915, port, lane);
> >
> > Does bspec describe somewhere that this reset is needed?
>
> I think this plays on the safe side. If transaction is not completed
> withing reasonable time, we set the bus in known state. What would be
> the alternative? Just leave the bus state as is?

Not sure, since it's not specified; neither it is clear if it has
side-effects. In any case as I understand someone has actually seen this
being required after a transaction times out. If so please add a comment
both to here and to the 3-time retry loop, that neither of these are
required by the spec, but used as a workaround for these timeouts. (Also
I guess we'd need open HSD/bspec tickets for such WAs we came up with).

> > > +           return -ETIMEDOUT;
> > > +   }
> > > +
>
> [...]
>
> > > +void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
> > > +                                struct intel_c10mpllb_state *pll_state)
> > > +{
> > > +   struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > > +   struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > > +   bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> > > +   u8 lane = lane_reversal ? INTEL_CX0_LANE1 :
> > > +                             INTEL_CX0_LANE0;
> > > +   enum phy phy = intel_port_to_phy(i915, encoder->port);
> > > +   int i;
> > > +   u8 cmn, tx0;
> > > +
> > > +   /*
> > > +    * According to C10 VDR Register programming Sequence we need
> > > +    * to do this to read PHY internal registers from MsgBus.
> > > +    */
> > > +   intel_cx0_rmw(i915, encoder->port, lane, PHY_C10_VDR_CONTROL(1), 0,
> > > +                 C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
> > > +
> > > +   for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
> > > +           pll_state->pll[i] = intel_cx0_read(i915, encoder->port, lane,
> > > +                                              PHY_C10_VDR_PLL(i));
> > > +
> > > +   cmn = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_CMN(0));
> > > +   tx0 = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_TX(0));
> >
> > The driver programs these registers, so why aren't they also stored in
> > the intell_c20pll_state struct?
>
> Maybe I'm not really following here but intel_c20pll_state has its own
> tx, cmn and mplla/mpllb stored.

Yes, just typoed that, I meant struct intel_c10mpllb_state which doesn't
include tx and cmn.

> > > +
> > > +   if (tx0 != C10_TX0_VAL || cmn != C10_CMN0_DP_VAL)
> > > +           drm_warn(&i915->drm, "Unexpected tx: %x or cmn: %x for phy: %c.\n",
> > > +                    tx0, cmn, phy_name(phy));
> >
> > Shouldn't PHY_C10_VDR_CONTROL(1)/C10_VDR_CTRL_MSGBUS_ACCESS be
> > cleared here?
>
> Usually this means that we are not accessing these values from the
> register. Was this in the spec that we would need to clear it?

It does get cleared at the end of intel_c10_pll_program(), at least from
one of the PHY lanes, so was wondering why things are done differently
here. Yes, the spec doesn't require clearing it, but then it should not
be cleared at other places either (has related comments on this in
follow-up reviews).

> > > +}
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
> >
> > Would be clearer by stg like:
> >               /* Using x MHz reference */
> >               cmn0 = C10_CMN0_REF_RANGE(1) | C10_CMN0_REF_CLK_MPLLB_DIV(2);
>
> Ok. I will do the change.
> 
> >
> > > +   }
> > > +
> > > +   intel_cx0_write(i915, encoder->port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
> > > +                   C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
> >
> > For DP-alt MFD the PHY lane not owned by display shouldn't be
> > programmed, no?
>
> The spec says that with pin assignment D the lane 0 is owned by
> display. Lane 1 is owned by USB and shouldn't be programmed as the PHY
> will not respond.

Right, but both lanes are programmed. So would need a "FIXME: program only 
lane 0 for DP-alt / MFD" comment.

> > > +   /* Custom width needs to be programmed to 0 for both the phy lanes */
> > > +   intel_cx0_rmw(i915, encoder->port, INTEL_CX0_BOTH_LANES,
> > > +                 PHY_C10_VDR_CUSTOM_WIDTH, 0x3, 0, MB_WRITE_COMMITTED);
> >
> > The above hard-coded values should have a macro definiton.
>
> Ok. I add these values as definitions
> 
> > > +   intel_cx0_rmw(i915, encoder->port, follower_lane, PHY_C10_VDR_CONTROL(1),
> > > +                 C10_VDR_CTRL_MASTER_LANE, C10_VDR_CTRL_UPDATE_CFG,
> > > +                 MB_WRITE_COMMITTED);
> > > +
> > > +   /* Program the pll values only for the master lane */
> > > +   for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
> > > +           /* If not using ssc pll[4] through pll[8] must be 0*/
> > > +           intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_PLL(i),
> > > +                           (!use_ssc && (i > 3 && i < 9)) ? 0 : pll_state->pll[i],
> >
> > pll_state->pll should be setup already intel_c10mpllb_calc_state()
> > taking into account SSC as well.
>
> Yes, I will need this state calculation fixed.
> 
> > > +                           (i % 4) ? MB_WRITE_UNCOMMITTED : MB_WRITE_COMMITTED);
> > > +
> > > +   intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_CMN(0), cmn0, MB_WRITE_COMMITTED);
> > > +   intel_cx0_write(i915, encoder->port, master_lane, PHY_C10_VDR_TX(0), C10_TX0_VAL, MB_WRITE_COMMITTED);
> >
> > Instead of C10_TX0_VAL the flags programmed should be better described
> > here as cmn0 above.
> Ok. I'll try to fix this.
> 
> >
> > > +   intel_cx0_rmw(i915, encoder->port, master_lane, PHY_C10_VDR_CONTROL(1),
> > > +                 C10_VDR_CTRL_MSGBUS_ACCESS, C10_VDR_CTRL_MASTER_LANE |
> > > +                 C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
> > > +}
>
> [...]
>
> > > +static void intel_cx0_powerdown_change_sequence(struct drm_i915_private *i915,
> > > +                                           enum port port,
> > > +                                           u8 lane, u8 state)
> > > +{
> > > +   enum phy phy = intel_port_to_phy(i915, port);
> > > +
> > > +   intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> > > +                XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK | XELPDP_LANE1_POWERDOWN_NEW_STATE_MASK,
> > > +                intel_cx0_get_powerdown_state(lane, state));
> > > +   intel_de_rmw(i915, XELPDP_PORT_BUF_CTL2(port),
> > > +                XELPDP_LANE0_POWERDOWN_UPDATE | XELPDP_LANE1_POWERDOWN_UPDATE,
> > > +                intel_cx0_get_powerdown_update(lane));
> >
> > The spec says (65451):
> > "Only update powerdown for one port at a time.  Wait for powerdown
> > update to finish for one port before initiating update on another port."
> >
> > both could be updated at the same time if a non-zero stagger delay was
> > programmed, but for C10/C20 it must be programmed as 0.
>
> So this needs to be updated so that we update one port and wait for
> transaction to complete before updating the second port.

Yes.

> > > +
> > > +   /* Update Timeout Value */
> > > +   if (__intel_de_wait_for_register(i915, XELPDP_PORT_BUF_CTL2(port),
> > > +					   intel_cx0_get_powerdown_update(lane), 0,
> > > +					   XELPDP_PORT_POWERDOWN_UPDATE_TIMEOUT_US, 0, NULL))
> > > +           drm_warn(&i915->drm, "PHY %c failed to bring out of Lane reset after %dus.\n",
> > > +                    phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
> > > +}
> > > +
>
> [...]
>
> > > +
> > > +static void intel_c10_program_phy_lane(struct drm_i915_private *i915,
> > > +                                  struct intel_encoder *encoder, int lane_count,
> > > +                                  bool lane_reversal)
> > > +{
> > > +   u8 l0t1, l0t2, l1t1, l1t2;
> > > +   bool dp_alt_mode = intel_tc_port_in_dp_alt_mode(enc_to_dig_port(encoder));
> > > +   enum port port = encoder->port;
> > > +
> > > +   intel_cx0_rmw(i915, port, INTEL_CX0_BOTH_LANES, PHY_C10_VDR_CONTROL(1),
> > > +                 C10_VDR_CTRL_MSGBUS_ACCESS, C10_VDR_CTRL_MSGBUS_ACCESS,
> > > +                 MB_WRITE_COMMITTED);
> >
> > TODO: DP-alt MFD case where only one PHY lane should be programmed.
>
> TODO comment here or should I add the fix for DP-alt MFD case here?

I think it could be fixed up later with all other places programming now
both PHY lanes unconditionally, adding only a TODO: comment here for now.

--Imre

> 
> >
> > > +
> > > +   l0t1 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2));
> > > +   l0t2 = intel_cx0_read(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2));
> > > +   l1t1 = intel_cx0_read(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(1, 2));
> > > +   l1t2 = intel_cx0_read(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(2, 2));
> > > +
> >
> > Would be clearer setting here CONTROL2_DISABLE_SINGLE_TX in all of
> > l[0/1]t[1/2], and then
> >
> > > +   if (lane_reversal) {
> > > +           switch (lane_count) {
> > > +           case 1:
> >                       l1t1 &= ~CONTROL2_DISABLE_SINGLE_TX;
> >                       break;
> >
> >                       etc. for 2,3,4 lanes and then
> >
> > > +                   /* Disable MLs 1(lane0), 2(lane0), 3(lane1) */
> > > +                   intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(1, 2),
> > > +                                   l1t1 | CONTROL2_DISABLE_SINGLE_TX,
> > > +                                   MB_WRITE_COMMITTED);
> > > +                   fallthrough;
> >
> >
> > > +           case 2:
> > > +                   /* Disable MLs 1(lane0), 2(lane0) */
> > > +                   intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2),
> > > +                                   l0t2 | CONTROL2_DISABLE_SINGLE_TX,
> > > +                                   MB_WRITE_COMMITTED);
> > > +                   fallthrough;
> > > +           case 3:
> > > +                   /* Disable MLs 1(lane0) */
> > > +                   intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2),
> > > +                                   l0t1 | CONTROL2_DISABLE_SINGLE_TX,
> > > +                                   MB_WRITE_COMMITTED);
> > > +                   break;
> > > +           }
> > > +   } else {
> > > +           switch (lane_count) {
> > > +           case 1:
> > > +                   if (dp_alt_mode) {
> > > +                           /* Disable MLs 1(lane0), 3(lane1), 4(lane1) */
> > > +                           intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(1, 2),
> > > +                                           l0t1 | CONTROL2_DISABLE_SINGLE_TX,
> > > +                                           MB_WRITE_COMMITTED);
> > > +                   } else {
> > > +                           /* Disable MLs 2(lane0), 3(lane1), 4(lane1) */
> > > +                           intel_cx0_write(i915, port, INTEL_CX0_LANE0, PHY_CX0_TX_CONTROL(2, 2),
> > > +                                           l0t2 | CONTROL2_DISABLE_SINGLE_TX,
> > > +                                           MB_WRITE_COMMITTED);
> > > +                   }
> > > +                   fallthrough;
> > > +           case 2:
> > > +                   /* Disable MLs 3(lane1), 4(lane1) */
> > > +                   intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(1, 2),
> > > +                                   l1t1 | CONTROL2_DISABLE_SINGLE_TX,
> > > +                                   MB_WRITE_COMMITTED);
> > > +                   fallthrough;
> > > +           case 3:
> > > +                   /* Disable MLs 4(lane1) */
> > > +                   intel_cx0_write(i915, port, INTEL_CX0_LANE1, PHY_CX0_TX_CONTROL(2, 2),
> > > +                                   l1t2 | CONTROL2_DISABLE_SINGLE_TX,
> > > +                                   MB_WRITE_COMMITTED);
> > > +                   break;
> > > +           }
> > > +   }
> >
> > write here PHY_CX0_LANE[0/1], PHY_CX0_TX_CONTROL([1/2], 2)
> Ok.
> 
> >
> > > +
> > > +   if (intel_is_c10phy(i915, intel_port_to_phy(i915, port))) {
> >
> > This check is not needed, as we get here only for C10 PHY.
> Right. I will remove that.
> 
> >
> > > +           intel_cx0_rmw(i915, port, INTEL_CX0_LANE1, PHY_C10_VDR_CONTROL(1),
> > > +                         C10_VDR_CTRL_UPDATE_CFG | C10_VDR_CTRL_MSGBUS_ACCESS,
> >
> > Should the above clear C10_VDR_CTRL_MASTER_LANE?
> >
> > > +                         C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
> > > +           intel_cx0_rmw(i915, port, INTEL_CX0_LANE0, PHY_C10_VDR_CONTROL(1),
> > > +                         C10_VDR_CTRL_UPDATE_CFG |  C10_VDR_CTRL_MSGBUS_ACCESS,
> > > +                         C10_VDR_CTRL_MASTER_LANE | C10_VDR_CTRL_UPDATE_CFG, MB_WRITE_COMMITTED);
> > > +   }
> > > +}
