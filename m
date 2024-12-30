Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 24E229FE90D
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 17:24:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA07E10E51C;
	Mon, 30 Dec 2024 16:24:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EkWd3nLf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7546B10E37F;
 Mon, 30 Dec 2024 16:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735575876; x=1767111876;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=1fbSu8m5ob6RGfDqWKCgVjprmXdfu3w8sPGCBBAEunw=;
 b=EkWd3nLfmZz+8UeefGfbp6fYSluqyyYjLK3bHFDkI0/1wQzUBraB16py
 gDGs1uqkoeRwI9R5noKdHHtbfe55ZHt21fz/n2ts6+UxYsOwRrqAmcwiE
 LMa4GXMdAdFINicVjYLqDpbOdxtaqgfDqfvXGJK6SrFhW9CvD/D+Nyl5U
 dbhdeZTZ9TTrw9UdhaBogHtOyvOyVwkeBAZbneDGx/m+rS8Z0OM/48DDB
 QftjEBxRelmvs1b+MZ/MRwl7h+MoYX18Oyubg6DIH0u5l8jtNUUWS+IuA
 2mnPB3GVAN/W3ZGF6iDiBCC7PWinv3zt31KrjwdD+QTLUo1HDKQ8JYrTz w==;
X-CSE-ConnectionGUID: rdfI1hR7QkCXBbhZXYfY/Q==
X-CSE-MsgGUID: UQXGR3pNQq6lki/wOEGKqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="46546094"
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="46546094"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 08:24:36 -0800
X-CSE-ConnectionGUID: v+LAo7cVSeGe+veRg24RSw==
X-CSE-MsgGUID: B+oxAEzpR82DRcoqjkwoJg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="105463462"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 08:24:34 -0800
Date: Mon, 30 Dec 2024 18:25:22 +0200
From: Imre Deak <imre.deak@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Cc: Mika Kahola <mika.kahola@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Subject: Re: [PATCH v2] drm/i915/display: UHBR rates for Thunderbolt
Message-ID: <Z3LJcrbMHUdN96Ao@ideak-desk.fi.intel.com>
References: <20241217143440.572308-1-mika.kahola@intel.com>
 <Z2LirmqeUmqLw17A@ideak-desk.fi.intel.com>
 <173507410892.1822.16575771169046539832@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <173507410892.1822.16575771169046539832@intel.com>
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

On Tue, Dec 24, 2024 at 06:01:48PM -0300, Gustavo Sousa wrote:
> Quoting Imre Deak (2024-12-18 11:56:46-03:00)
> >On Tue, Dec 17, 2024 at 04:34:40PM +0200, Mika Kahola wrote:
> >> tbt-alt mode is missing uhbr rates 10G and 20G. This requires
> >> requires pll clock rates 312.5 MHz and 625 MHz to be added,
> >> respectively. The uhbr rates are supported only form PTL+
> >> platforms.
> >> 
> >> v2: Add drm_WARN_ON() to check if port clock is not supported by
> >>     the platform (Imre)
> >>     Combine forward ungate with mask parameter (Imre)
> >>     Rename XE3LPDP_* to XE3D_* (Imre)
> >
> >I highly disagree with the usage of the XE[23]{D,LPD,LPDP} etc. ciphers
> >in the driver in general, instead of the human readable MTL, LNL, PTL
> >etc., the human readable versions actually serving the intended purpose
> >of reminding a reader what exact platform the code they read is about.
> >
> >I still don't know and haven't managed to figure out from the spec what
> >either XE3LPDP or XE3D is about, looks like this same clock select field
> >width is used by other XE3 platforms as well. So imo let's stick with
> >the XE3 prefix used already elsewhere in the driver (no need to resend
> >the patch just for that). With that:
> 
> One argument for using the XE* prefixes (e.g. XE3LPD for Xe3_LPD, which
> is PTL's display) is that, technically speaking, the deltas are
> associated to the IP rather than the whole platform.
> 
> For the recent display IPs, the same display IP could theoretically be
> used in different platforms. I believe that became true starting with
> Xe_LPD+ (MTL's display). Conversely, it could also be possible that
> different SKUs of a platform X could be using different display IPs.
> And the driver figures out which display it is driving via GMD IDs.
> 
> As such, I personally prefer the more accurate IP-based naming rather
> than platform-based for stuff that is tied to the IP.

Ftr, the xeX-YYZW terminology decoded (IIUC):

xe: Exascale for Everyone
X:  -,2,3,4 (microarchitecture 1,2,3,4)
YY: LP,HP (Low Power, High Power)
Z:  C,D,G,M (IP: Compute, Display, Graphics, Media)
W:  -,P (?)

I still don't know what is the last P in XELPDP for instance. I also
suspect that more letters/numbers will be needed to distinguish between
IPs, if the categories above are not enough for this.

Imo, the first thing one wants to know when reading the code is which
actual platform(s) (i.e. DG2, MeteorLake, LunarLake, PantherLake) the
given code applies to. Using the XE terminology in the code is just an
extra burden in this (first decode xeX-YYZW based on the above, then map
this to all the actual platforms using the IP).

I still think it's better to follow the existing rule to use instead the
first platform where the IP appeared.

> --
> Gustavo Sousa
> 
> >
> >Reviewed-by: Imre Deak <imre.deak@intel.com>
> >
> >> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  | 39 +++++++++++++++++--
> >>  .../gpu/drm/i915/display/intel_cx0_phy_regs.h |  4 ++
> >>  2 files changed, 39 insertions(+), 4 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> index cc734079c3b8..a8e0450c0378 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> >> @@ -3070,7 +3070,10 @@ int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
> >>  
> >>          val = intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port));
> >>  
> >> -        clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
> >> +        if (DISPLAY_VER(display) >= 30)
> >> +                clock = REG_FIELD_GET(XE3D_DDI_CLOCK_SELECT_MASK, val);
> >> +        else
> >> +                clock = REG_FIELD_GET(XELPDP_DDI_CLOCK_SELECT_MASK, val);
> >>  
> >>          drm_WARN_ON(display->drm, !(val & XELPDP_FORWARD_CLOCK_UNGATE));
> >>          drm_WARN_ON(display->drm, !(val & XELPDP_TBT_CLOCK_REQUEST));
> >> @@ -3085,13 +3088,18 @@ int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder)
> >>                  return 540000;
> >>          case XELPDP_DDI_CLOCK_SELECT_TBT_810:
> >>                  return 810000;
> >> +        case XELPDP_DDI_CLOCK_SELECT_TBT_312_5:
> >> +                return 1000000;
> >> +        case XELPDP_DDI_CLOCK_SELECT_TBT_625:
> >> +                return 2000000;
> >>          default:
> >>                  MISSING_CASE(clock);
> >>                  return 162000;
> >>          }
> >>  }
> >>  
> >> -static int intel_mtl_tbt_clock_select(int clock)
> >> +static int intel_mtl_tbt_clock_select(struct intel_display *display,
> >> +                                      int clock)
> >>  {
> >>          switch (clock) {
> >>          case 162000:
> >> @@ -3102,6 +3110,18 @@ static int intel_mtl_tbt_clock_select(int clock)
> >>                  return XELPDP_DDI_CLOCK_SELECT_TBT_540;
> >>          case 810000:
> >>                  return XELPDP_DDI_CLOCK_SELECT_TBT_810;
> >> +        case 1000000:
> >> +                if (DISPLAY_VER(display) < 30) {
> >> +                        drm_WARN_ON(display->drm, "UHBR10 not supported for the platform\n");
> >> +                        return XELPDP_DDI_CLOCK_SELECT_TBT_162;
> >> +                }
> >> +                return XELPDP_DDI_CLOCK_SELECT_TBT_312_5;
> >> +        case 2000000:
> >> +                if (DISPLAY_VER(display) < 30) {
> >> +                        drm_WARN_ON(display->drm, "UHBR20 not supported for the platform\n");
> >> +                        return XELPDP_DDI_CLOCK_SELECT_TBT_162;
> >> +                }
> >> +                return XELPDP_DDI_CLOCK_SELECT_TBT_625;
> >>          default:
> >>                  MISSING_CASE(clock);
> >>                  return XELPDP_DDI_CLOCK_SELECT_TBT_162;
> >> @@ -3114,15 +3134,26 @@ static void intel_mtl_tbt_pll_enable(struct intel_encoder *encoder,
> >>          struct intel_display *display = to_intel_display(encoder);
> >>          enum phy phy = intel_encoder_to_phy(encoder);
> >>          u32 val = 0;
> >> +        u32 mask;
> >>  
> >>          /*
> >>           * 1. Program PORT_CLOCK_CTL REGISTER to configure
> >>           * clock muxes, gating and SSC
> >>           */
> >> -        val |= XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(crtc_state->port_clock));
> >> +
> >> +        if (DISPLAY_VER(display) >= 30) {
> >> +                mask = XE3D_DDI_CLOCK_SELECT_MASK;
> >> +                val |= XE3D_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(display, crtc_state->port_clock));
> >> +        } else {
> >> +                mask = XELPDP_DDI_CLOCK_SELECT_MASK;
> >> +                val |= XELPDP_DDI_CLOCK_SELECT(intel_mtl_tbt_clock_select(display, crtc_state->port_clock));
> >> +        }
> >> +
> >> +        mask |= XELPDP_FORWARD_CLOCK_UNGATE;
> >>          val |= XELPDP_FORWARD_CLOCK_UNGATE;
> >> +
> >>          intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port),
> >> -                     XELPDP_DDI_CLOCK_SELECT_MASK | XELPDP_FORWARD_CLOCK_UNGATE, val);
> >> +                     mask, val);
> >>  
> >>          /* 2. Read back PORT_CLOCK_CTL REGISTER */
> >>          val = intel_de_read(display, XELPDP_PORT_CLOCK_CTL(display, encoder->port));
> >> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> >> index c685479c9756..bf95ac234b2b 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> >> @@ -187,7 +187,9 @@
> >>  #define   XELPDP_TBT_CLOCK_REQUEST                        REG_BIT(19)
> >>  #define   XELPDP_TBT_CLOCK_ACK                                REG_BIT(18)
> >>  #define   XELPDP_DDI_CLOCK_SELECT_MASK                        REG_GENMASK(15, 12)
> >> +#define   XE3D_DDI_CLOCK_SELECT_MASK                        REG_GENMASK(16, 12)
> >>  #define   XELPDP_DDI_CLOCK_SELECT(val)                        REG_FIELD_PREP(XELPDP_DDI_CLOCK_SELECT_MASK, val)
> >> +#define   XE3D_DDI_CLOCK_SELECT(val)                        REG_FIELD_PREP(XE3D_DDI_CLOCK_SELECT_MASK, val)
> >>  #define   XELPDP_DDI_CLOCK_SELECT_NONE                        0x0
> >>  #define   XELPDP_DDI_CLOCK_SELECT_MAXPCLK                0x8
> >>  #define   XELPDP_DDI_CLOCK_SELECT_DIV18CLK                0x9
> >> @@ -195,6 +197,8 @@
> >>  #define   XELPDP_DDI_CLOCK_SELECT_TBT_270                0xd
> >>  #define   XELPDP_DDI_CLOCK_SELECT_TBT_540                0xe
> >>  #define   XELPDP_DDI_CLOCK_SELECT_TBT_810                0xf
> >> +#define   XELPDP_DDI_CLOCK_SELECT_TBT_312_5                0x18
> >> +#define   XELPDP_DDI_CLOCK_SELECT_TBT_625                0x19
> >>  #define   XELPDP_FORWARD_CLOCK_UNGATE                        REG_BIT(10)
> >>  #define   XELPDP_LANE1_PHY_CLOCK_SELECT                        REG_BIT(8)
> >>  #define   XELPDP_SSC_ENABLE_PLLA                        REG_BIT(1)
> >> -- 
> >> 2.43.0
> >>
