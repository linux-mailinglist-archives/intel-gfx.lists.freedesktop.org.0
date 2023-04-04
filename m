Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AC7C36D62C1
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 15:27:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4829D10E140;
	Tue,  4 Apr 2023 13:27:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4153910E140
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 13:27:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680614861; x=1712150861;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=TNJunf0tcawLz0mgJgmMc66rdOblCWhs18nwPw27n+M=;
 b=lJYGVQCZFvyX6uyd7F2h8kT27rDa32BNTVMLdAwgnBlrb7pGoDWlYAE1
 x0blemHaPCnxaTNW7euRVex3yy+2jFk/KRvVOW+mou6/jlRxWc+R9gkG4
 vClkbI8GhH04fKyQ6arb62wJ5GmMhUQQSr2gRecliKKh+UwqwgHtlPT8U
 vVgcCBYy4WCLiA38rDP4HMNpnDQwhvHPCkPPhwH2sgXejwM/yYGZQKfwj
 +PGKbVe2BkX6HJR1xjgDPicy7cgX+M/gXWoCfR1yoqn+1qILnnMxnRbIg
 cwwvfjAt/I36xxPgE+4MjLLBnNHt7TEneaaAp74LTDX4h3CeU7xc2TP+v g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="369997539"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="369997539"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 06:27:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="663592517"
X-IronPort-AV: E=Sophos;i="5.98,317,1673942400"; d="scan'208";a="663592517"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 06:27:36 -0700
Date: Tue, 4 Apr 2023 16:27:34 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>
Message-ID: <ZCwlxrm4MCZU7cQD@ideak-desk.fi.intel.com>
References: <20230327123433.896216-1-mika.kahola@intel.com>
 <20230327123433.896216-5-mika.kahola@intel.com>
 <ZCRb90HL81lTTIms@ideak-desk.fi.intel.com>
 <MW4PR11MB7054D6DBF09E04B3E89268DEEF939@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZCwONC/frYg8QqEJ@ideak-desk.fi.intel.com>
 <MW4PR11MB7054ABBA1564C3558AB67064EF939@MW4PR11MB7054.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <MW4PR11MB7054ABBA1564C3558AB67064EF939@MW4PR11MB7054.namprd11.prod.outlook.com>
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

On Tue, Apr 04, 2023 at 04:01:55PM +0300, Kahola, Mika wrote:
> [...]
> > >
> > > > > +void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
> > > > > +                                struct intel_c10mpllb_state
> > > > > +*pll_state) {
> > > > > +   struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > > > > +   struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > > > > +   bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> > > > > +   u8 lane = lane_reversal ? INTEL_CX0_LANE1 :
> > > > > +                             INTEL_CX0_LANE0;
> > > > > +   enum phy phy = intel_port_to_phy(i915, encoder->port);
> > > > > +   int i;
> > > > > +   u8 cmn, tx0;
> > > > > +
> > > > > +   /*
> > > > > +    * According to C10 VDR Register programming Sequence we need
> > > > > +    * to do this to read PHY internal registers from MsgBus.
> > > > > +    */
> > > > > +   intel_cx0_rmw(i915, encoder->port, lane, PHY_C10_VDR_CONTROL(1), 0,
> > > > > +                 C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
> > > > > +
> > > > > +   for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
> > > > > +           pll_state->pll[i] = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_PLL(i));
> > > > > +
> > > > > +   cmn = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_CMN(0));
> > > > > +   tx0 = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_TX(0));
> > > >
> > > > The driver programs these registers, so why aren't they also stored
> > > > in the intell_c20pll_state struct?
> > >
> > > Maybe I'm not really following here but intel_c20pll_state has its own
> > > tx, cmn and mplla/mpllb stored.
> >
> > Yes, just typoed that, I meant struct intel_c10mpllb_state which
> > doesn't include tx and cmn.
>
> Yes, for C10 tx and cmn is missing. Maybe we could add those here as
> well. It seems that currently these are not necessary required but for
> the future use, these could be defined.

These are needed already now to make the state computation / HW readout /
state checking work for these two params the same way they do for the
rest of PLL state.

> > > > > +
> > > > > +   if (tx0 != C10_TX0_VAL || cmn != C10_CMN0_DP_VAL)
> > > > > +           drm_warn(&i915->drm, "Unexpected tx: %x or cmn: %x for phy: %c.\n",
> > > > > +                    tx0, cmn, phy_name(phy));
> > > >
> > > > Shouldn't PHY_C10_VDR_CONTROL(1)/C10_VDR_CTRL_MSGBUS_ACCESS be
> > > > cleared here?
> > >
> > > Usually this means that we are not accessing these values from the
> > > register. Was this in the spec that we would need to clear it?
> >
> > It does get cleared at the end of intel_c10_pll_program(), at least
> > from one of the PHY lanes, so was wondering why things are done
> > differently here. Yes, the spec doesn't require clearing it, but
> > then it should not be cleared at other places either (has related
> > comments on this in follow-up reviews).
> 
> To be consistent maybe we can clear this here as well.

If there is no need for it, let's follow the spec and not clear it at
any other spot either.

> 
> >
> > > > > +}
> > > > > +
