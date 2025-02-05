Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A40D1A29172
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 15:51:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3F0AD10E1EC;
	Wed,  5 Feb 2025 14:51:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bHFuu5QU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 866CA10E1E4;
 Wed,  5 Feb 2025 14:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738767069; x=1770303069;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=EY66mrNLtPH76VnatY6wzkEwmLd8oTFleXbC9MHTUhk=;
 b=bHFuu5QUQZu3tZxUWY+gWo+RnIwOMau+TLoRmwJOVwaPU4VWT1O0xO1j
 QFFFcnvnxa2h67tVlJcwIGWsrzs1DVFv0m3Bh+vQ9QFzupv8o57tP5NJ7
 RcI0XNQnETBDdBDi5RV0pOaMV+cWulKKuCevVNnul29kv9iTnPSZyrkz8
 7o1Iz5d1xaCbDM1NaDMhHqUkxOzs5GCbPfW5uY2LVFUUbhqW4ujiOXq6H
 MDw1R87BhoQ04ATBrte1rXwS2v0iZlSJqP4Qn4LIZLXJcFVJBPj4WM0zb
 tU/gbQeU26xn3TKZrcFMozN4dP4yJpS8PSewKH/dQWi0bPMT08jGyyAWG w==;
X-CSE-ConnectionGUID: l+IbGwzIRPSLWoBOQzoYSg==
X-CSE-MsgGUID: O9p2Z0FMStGueVEqkBC4MA==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="49951166"
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="49951166"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 06:51:08 -0800
X-CSE-ConnectionGUID: V7Vx2SX9TFWZ/5iylrbpAA==
X-CSE-MsgGUID: cCeKz1SPTP2JEo5FPzezmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,261,1732608000"; d="scan'208";a="110704727"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 06:51:06 -0800
Date: Wed, 5 Feb 2025 16:52:04 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Imre Deak <imre.deak@gmail.com>
Subject: Re: [PATCH 11/17] drm/i915/ddi: Sanitize DDI_BUF_CTL register
 definitions
Message-ID: <Z6N7FNfBqbWuLWLK@ideak-desk.fi.intel.com>
References: <20250129200221.2508101-1-imre.deak@intel.com>
 <20250129200221.2508101-12-imre.deak@intel.com>
 <87cyfw4kqv.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87cyfw4kqv.fsf@intel.com>
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Feb 05, 2025 at 02:52:08PM +0200, Jani Nikula wrote:
> On Wed, 29 Jan 2025, Imre Deak <imre.deak@intel.com> wrote:
> > From: Imre Deak <imre.deak@gmail.com>
> >
> > Align the DDI_BUF_CTL register flag definitions with how this is done
> > elsewhere.
> >
> > Signed-off-by: Imre Deak <imre.deak@gmail.com>
> > ---
> >  drivers/gpu/drm/i915/i915_reg.h | 22 ++++++++++++----------
> >  1 file changed, 12 insertions(+), 10 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> > index 7fe4e71fc08ec..5cee6a96270af 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -3621,27 +3621,29 @@ enum skl_power_gate {
> >  #define _DDI_BUF_CTL_B				0x64100
> >  /* Known as DDI_CTL_DE in MTL+ */
> >  #define DDI_BUF_CTL(port) _MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B)
> > -#define  DDI_BUF_CTL_ENABLE			(1 << 31)
> > +#define  DDI_BUF_CTL_ENABLE			REG_BIT(31)
> >  #define  XE2LPD_DDI_BUF_D2D_LINK_ENABLE		REG_BIT(29)
> >  #define  XE2LPD_DDI_BUF_D2D_LINK_STATE		REG_BIT(28)
> > -#define  DDI_BUF_TRANS_SELECT(n)	((n) << 24)
> > -#define  DDI_BUF_EMP_MASK			(0xf << 24)
> > -#define  DDI_BUF_PHY_LINK_RATE(r)		((r) << 20)
> > +#define  DDI_BUF_EMP_MASK			REG_GENMASK(27, 24)
> > +#define  DDI_BUF_TRANS_SELECT(n)		REG_FIELD_PREP(DDI_BUF_EMP_MASK, n)
> > +#define  DDI_BUF_PHY_LINK_RATE_MASK		REG_GENMASK(23, 20)
> > +#define  DDI_BUF_PHY_LINK_RATE(r)		REG_FIELD_PREP(DDI_BUF_PHY_LINK_RATE_MASK, r)
> 
> Ville has been advocating wrapping macro arguments in parens also in
> these cases, and I'm starting to lean that way too.

That is parens around 'r' above, ok I suppose that's more robust (in
case the called macros don't use parens when required). 

> Other than that,
> 
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> 
> 
> >  #define  DDI_BUF_PORT_DATA_MASK			REG_GENMASK(19, 18)
> >  #define  DDI_BUF_PORT_DATA_10BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 0)
> >  #define  DDI_BUF_PORT_DATA_20BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 1)
> >  #define  DDI_BUF_PORT_DATA_40BIT		REG_FIELD_PREP(DDI_BUF_PORT_DATA_MASK, 2)
> > -#define  DDI_BUF_PORT_REVERSAL			(1 << 16)
> > +#define  DDI_BUF_PORT_REVERSAL			REG_BIT(16)
> >  #define  DDI_BUF_LANE_STAGGER_DELAY_MASK	REG_GENMASK(15, 8)
> >  #define  DDI_BUF_LANE_STAGGER_DELAY(symbols)	REG_FIELD_PREP(DDI_BUF_LANE_STAGGER_DELAY_MASK, \
> >  							       symbols)
> > -#define  DDI_BUF_IS_IDLE			(1 << 7)
> > +#define  DDI_BUF_IS_IDLE			REG_BIT(7)
> >  #define  DDI_BUF_CTL_TC_PHY_OWNERSHIP		REG_BIT(6)
> > -#define  DDI_A_4_LANES				(1 << 4)
> > -#define  DDI_PORT_WIDTH(width)			(((width) == 3 ? 4 : ((width) - 1)) << 1)
> > -#define  DDI_PORT_WIDTH_MASK			(7 << 1)
> > +#define  DDI_A_4_LANES				REG_BIT(4)
> > +#define  DDI_PORT_WIDTH_MASK			REG_GENMASK(3, 1)
> > +#define  DDI_PORT_WIDTH(width)			REG_FIELD_PREP(DDI_PORT_WIDTH_MASK, \
> > +							       (width) == 3 ? 4 : (width) - 1)
> >  #define  DDI_PORT_WIDTH_SHIFT			1
> > -#define  DDI_INIT_DISPLAY_DETECTED		(1 << 0)
> > +#define  DDI_INIT_DISPLAY_DETECTED		REG_BIT(0)
> >  
> >  /* DDI Buffer Translations */
> >  #define _DDI_BUF_TRANS_A		0x64E00
> 
> -- 
> Jani Nikula, Intel
