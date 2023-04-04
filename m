Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C9BB6D6B16
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Apr 2023 20:03:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA47810E03C;
	Tue,  4 Apr 2023 18:03:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C81A10E03C
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Apr 2023 18:03:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680631400; x=1712167400;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=5Px6m4L9N/9uvblKEy7q1SqTcvjVj7jtb/GbyWFE/bs=;
 b=cBGBQt7RSvSzFnrFRSRN1GCrxg2djBqcdu3YvSMCw1UdNUf59tbMGlDr
 Oy4yqxoswBzp+Crkm001Fxu4EEw9vv0qmSxoq8OtDOSJIozLJV2Q7ThYx
 lBs0bL9TN40dM/D1leO2Bse4Mhi10rko7Kfty4mRu2ZhszJpf80GanY/c
 akmJV1PpOYO4UuLEWIB/k2dGJa75xqTNYjdq0GRrCxSBCzTPI1Mx+by5u
 B9tgnNwComun/la9Azc5X18rWrdrGdmi27yTHzBLBQeEUkrCZ50+js/dV
 sH/AeYTDjAZGoXaWAwoJkODUeQQaiarAbmd76BsBGOcQtDwJAMXMnWgaq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="342283375"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="342283375"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 11:03:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="688986867"
X-IronPort-AV: E=Sophos;i="5.98,318,1673942400"; d="scan'208";a="688986867"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2023 11:03:17 -0700
Date: Tue, 4 Apr 2023 21:03:14 +0300
From: Imre Deak <imre.deak@intel.com>
To: "Sripada, Radhakrishna" <radhakrishna.sripada@intel.com>
Message-ID: <ZCxhtF/ttLTpXyIG@ideak-desk.fi.intel.com>
References: <20230327123433.896216-1-mika.kahola@intel.com>
 <20230327123433.896216-5-mika.kahola@intel.com>
 <ZCRb90HL81lTTIms@ideak-desk.fi.intel.com>
 <MW4PR11MB7054D6DBF09E04B3E89268DEEF939@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZCwONC/frYg8QqEJ@ideak-desk.fi.intel.com>
 <MW4PR11MB7054ABBA1564C3558AB67064EF939@MW4PR11MB7054.namprd11.prod.outlook.com>
 <ZCwlxrm4MCZU7cQD@ideak-desk.fi.intel.com>
 <DM4PR11MB59717A07465A88779935469487939@DM4PR11MB5971.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DM4PR11MB59717A07465A88779935469487939@DM4PR11MB5971.namprd11.prod.outlook.com>
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

On Tue, Apr 04, 2023 at 07:50:00PM +0300, Sripada, Radhakrishna wrote:
> 
> 
> > -----Original Message-----
> > From: Deak, Imre <imre.deak@intel.com>
> > Sent: Tuesday, April 4, 2023 6:28 AM
> > To: Kahola, Mika <mika.kahola@intel.com>
> > Cc: intel-gfx@lists.freedesktop.org; Sripada, Radhakrishna
> > <radhakrishna.sripada@intel.com>; Shankar, Uma <uma.shankar@intel.com>;
> > Sousa, Gustavo <gustavo.sousa@intel.com>
> > Subject: Re: [PATCH 4/7] drm/i915/mtl: Add Support for C10 PHY message bus
> > and pll programming
> >
> > On Tue, Apr 04, 2023 at 04:01:55PM +0300, Kahola, Mika wrote:
> > > [...]
> > > > >
> > > > > > > +void intel_c10mpllb_readout_hw_state(struct intel_encoder *encoder,
> > > > > > > +                                struct intel_c10mpllb_state pll_state) {
> > > > > > > +   struct drm_i915_private *i915 = to_i915(encoder->base.dev);
> > > > > > > +   struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> > > > > > > +   bool lane_reversal = dig_port->saved_port_bits & DDI_BUF_PORT_REVERSAL;
> > > > > > > +   u8 lane = lane_reversal ? INTEL_CX0_LANE1 :
> > > > > > > +                             INTEL_CX0_LANE0;
> > > > > > > +   enum phy phy = intel_port_to_phy(i915, encoder->port);
> > > > > > > +   int i;
> > > > > > > +   u8 cmn, tx0;
> > > > > > > +
> > > > > > > +   /*
> > > > > > > +    * According to C10 VDR Register programming Sequence we need
> > > > > > > +    * to do this to read PHY internal registers from MsgBus.
> > > > > > > +    */
> > > > > > > +   intel_cx0_rmw(i915, encoder->port, lane, PHY_C10_VDR_CONTROL(1), 0,
> > > > > > > +                 C10_VDR_CTRL_MSGBUS_ACCESS, MB_WRITE_COMMITTED);
> > > > > > > +
> > > > > > > +   for (i = 0; i < ARRAY_SIZE(pll_state->pll); i++)
> > > > > > > +           pll_state->pll[i] = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_PLL(i));
> > > > > > > +
> > > > > > > +   cmn = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_CMN(0));
> > > > > > > +   tx0 = intel_cx0_read(i915, encoder->port, lane, PHY_C10_VDR_TX(0));
> > > > > >
> > > > > > The driver programs these registers, so why aren't they also stored
> > > > > > in the intell_c20pll_state struct?
> > > > >
> > > > > Maybe I'm not really following here but intel_c20pll_state has its own
> > > > > tx, cmn and mplla/mpllb stored.
> > > >
> > > > Yes, just typoed that, I meant struct intel_c10mpllb_state which
> > > > doesn't include tx and cmn.
> > >
> > > Yes, for C10 tx and cmn is missing. Maybe we could add those here as
> > > well. It seems that currently these are not necessary required but for
> > > the future use, these could be defined.
> >
> > These are needed already now to make the state computation / HW readout /
> > state checking work for these two params the same way they do for the
> > rest of PLL state.
>
> I believe C10 tx and cmn values are not changing across frequencies. Cmn only
> Changes for DP and HDMI so does it make sense to include in the pll structure?

They should be part of the atomic state. To save the bytes in the
precomputed tables they could be added to intel_cx0pll_state, something
like:

struct intel_cx0pll_state {
        union {
                struct {
                        struct intel_c10mpllb_state pllb;
                        u8 cmn;
                        u8 tx;
                } c10;
                struct intel_c20pll_state c20pll_state;
        };
};

--Imre
