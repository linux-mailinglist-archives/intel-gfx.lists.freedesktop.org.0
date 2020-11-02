Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0698F2A2492
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 07:12:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE0DA89A60;
	Mon,  2 Nov 2020 06:12:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2328C89A60
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 06:12:30 +0000 (UTC)
IronPort-SDR: sThw+pHvmNeyAP1jkG4CNMhO7PURpMXtlvIPAw8dW32yCS2A6zWVdgdXTve/fEXA9VbwJmT34L
 C4Xa4LP2+8oQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9792"; a="156618958"
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="156618958"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2020 22:12:25 -0800
IronPort-SDR: XUv+Je/0ORsN7Srsl+D5vt/Gw5ISbSC0/8ylopLo6m0iAiTwKLprTx7AHHTut/WDy07CzL7s0Y
 J4wMidWRO8/w==
X-IronPort-AV: E=Sophos;i="5.77,444,1596524400"; d="scan'208";a="526575569"
Received: from mdroper-desk1.fm.intel.com (HELO
 mdroper-desk1.amr.corp.intel.com) ([10.1.27.168])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2020 22:12:24 -0800
Date: Sun, 1 Nov 2020 22:12:23 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "20201030134137.30867-1-shawn.c.lee@intel.com"
 <20201030134137.30867-1-shawn.c.lee@intel.com>
Message-ID: <20201102061223.GS627052@mdroper-desk1.amr.corp.intel.com>
References: <20201028144312.12520-1-shawn.c.lee@intel.com>
 <20201030134137.30867-1-shawn.c.lee@intel.com>
 <20201030173530.GO627052@mdroper-desk1.amr.corp.intel.com>
 <BY5PR11MB43074CA0CF93E3C6608FC83CA3120@BY5PR11MB4307.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BY5PR11MB43074CA0CF93E3C6608FC83CA3120@BY5PR11MB4307.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/rkl: new rkl ddc map for
 different PCH
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 30, 2020 at 07:55:35PM -0700, Lee, Shawn C wrote:
> 
> On Fri, Oct. 30, 2020, 5:35 p.m., Matt Roper wrote:
> >On Fri, Oct 30, 2020 at 09:41:37PM +0800, Lee Shawn C wrote:
> >> After boot into kernel. Driver configured ddc pin mapping based on
> >> predefined table in parse_ddi_port(). Now driver configure rkl ddc pin
> >> mapping depends on icp_ddc_pin_map[]. Then this table will give
> >> incorrect gmbus port number to cause HDMI can't work.
> >>
> >> Refer to commit d0a89527d06 ("drm/i915/rkl: Add DDC pin mapping").
> >> Create two ddc pin table for rkl TGP and CMP pch. Then HDMI can works
> >> properly on rkl.
> >>
> >> v2: update patch based on latest dinq branch.
> >>
> >> Cc: Matt Roper <matthew.d.roper@intel.com>
> >> Cc: Aditya Swarup <aditya.swarup@intel.com>
> >> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
> >> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> >> Cc: Cooper Chiou <cooper.chiou@intel.com>
> >> Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
> >> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2577
> >> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> >> ---
> >>  drivers/gpu/drm/i915/display/intel_bios.c     | 20 +++++++++++++++++++
> >>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  4 ++++
> >>  2 files changed, 24 insertions(+)
> >>
> >> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
> >> b/drivers/gpu/drm/i915/display/intel_bios.c
> >> index 0a309645fe06..ca9426e1768a 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> >> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> >> @@ -1623,6 +1623,18 @@ static const u8 icp_ddc_pin_map[] = {
> >>  [TGL_DDC_BUS_PORT_6] = GMBUS_PIN_14_TC6_TGP,  };
> >>
> >> +static const u8 rkl_pch_tgp_ddc_pin_map[] = {
> >> +[RKL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
> >> +[RKL_DDC_BUS_DDI_D] = GMBUS_PIN_9_TC1_ICP,
> >> +[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_10_TC2_ICP, };
> >> +
> >> +static const u8 rkl_pch_cmp_ddc_pin_map[] = {
> >> +[RKL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
> >> +[RKL_DDC_BUS_DDI_D] = GMBUS_PIN_3_BXT,
> >> +[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_4_CNP, };
> >> +
> >>  static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
> >> {
> >>  const u8 *ddc_pin_map;
> >> @@ -1630,6 +1642,14 @@ static u8 map_ddc_pin(struct drm_i915_private
> >> *dev_priv, u8 vbt_pin)
> >>
> >>  if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1) {
> >>  return vbt_pin;
> >> +} else if (IS_ROCKETLAKE(dev_priv)) {
> >> +if (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP) {
> >> +ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
> >> +n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
> >> +} else {
> >> +ddc_pin_map = rkl_pch_cmp_ddc_pin_map;
> >> +n_entries = ARRAY_SIZE(rkl_pch_cmp_ddc_pin_map);
> >> +}
> >>  } else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
> >>  ddc_pin_map = icp_ddc_pin_map;
> >>  n_entries = ARRAY_SIZE(icp_ddc_pin_map); diff --git
> >> a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> >> b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> >> index 49b4b5fca941..2df009996128 100644
> >> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> >> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
> >> @@ -319,6 +319,10 @@ enum vbt_gmbus_ddi {
> >>  ICL_DDC_BUS_DDI_A = 0x1,
> >>  ICL_DDC_BUS_DDI_B,
> >>  TGL_DDC_BUS_DDI_C,
> >> +RKL_DDC_BUS_DDI_B = 0x1,
> >> +RKL_DDC_BUS_DDI_C,
> >> +RKL_DDC_BUS_DDI_D,
> >> +RKL_DDC_BUS_DDI_E,
> >
> >These definitions don't really make sense; according to the VBT definition in the bspec (20124), the symbolic names map to different VBT input values depending on which PCH is paired with RKL.  E.g., VBT value of "2" refers to PHY-C when using a CMP PCH, but refers to PHY-B when using a TGP PCH.
> >
> >From what I can see, RKL+TGP is already handled properly today in the code and doesn't need any special handling.  The patch here would actually break it, because it would associate the wrong pins to outputs (and fail to associate anything at all with PHY-B [vbt value 2]).
> >
> >For RKL+CMP, we do need a change to the code to pick valid output pins in the range 1-4 rather than 1,2,9,A, but it doesn't look like the mapping being added here is quite right for that either.  CMP is a derivative of CNP, so I believe we should be following the "CNL-PCH"
> >column of the VBT definition.
> >
> >
> >Matt
> >
> 
> Hi Matt,
> 
> Thanks for your comments! Below is EFP configuration from vbt. And we
> know there is no real port "C" on physical hardware with TGP-PCH.

The terminology gets somewhat confusing, so just for clarity, the
outputs on RKL in general are:

          DDI-A (aka PORT-A) <-> PHY-A
          DDI-B (aka PORT-B) <-> PHY-B
        DDI-TC1 (aka PORT-D) <-> PHY-C
        DDI-TC2 (aka PORT-E) <-> PHY-D

Note that on recent platforms where the DDI and PHY are separate blocks
we try to use the term "port" to refer to the DDI.  And based on their
register offsets, we treat DDI-TC1 and DDI-TC2 as ports D and E in i915,
even though that's not something the bspec does.

It looks like the proper table for RKL+TGP should actually be:

        static const u8 rkl_pch_tgp_ddc_pin_map[] = {
                [1] = GMBUS_PIN_1_BXT,
                [2] = GMBUS_PIN_2_BXT,
                [3] = GMBUS_PIN_9_TC1_ICP,
                [4] = GMBUS_PIN_10_TC2_ICP,
        }

i.e., basically the same as what you had, but we do need to handle the
input value '1' too since we can legitimately drive HDMI on all four of
the outputs when using a TGP PCH.

When we're instead working on a RKL+CMP platform DDI-A output (if
present) will always be eDP; there's no support for HDMI in that case.
So for RKL+CMP the gmbus pin mapping needs to be

        0x1 (DDI-B) -> 0x1
        0x2 (DDI-C) -> 0x2
        0x3 (DDI-D) -> 0x4

The cnp_ddc_pin_map[] table that we already have in the code should
handle that properly, so there's no need for special RKL+CMP handling;
we can just let it fall through to the existing HAS_PCH_CNP() branch.
However I think rkl_port_to_ddc_pin() is off by one for the values it's
returning on CMP; we need to fix that so that cases where the VBT
doesn't specify a valid DDC pin.


Matt

> EFP1 : DisplayPort-B
> EFP2 : HDMI-C
> EFP3 : HDMI-D
> EFP4 : no device
> 
> Below messages came from customer board with latest drm-tip kernel (5.10.0-rc1+). Port D/E will be mapped to ddc pin 0x3/0x9 according to icp_ddc_pin_map[].
> But port D/E should map to 0x9/0xa on TGP-PCH.
> Oct 23 18:39:14 ubuntu kernel: i915 0000:00:02.0: [drm:intel_bios_port_aux_ch [i915]] using AUX D for port D (platform default)
> Oct 23 18:39:14 ubuntu kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCODER:201:DDI D]
> Oct 23 18:39:14 ubuntu kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Using DDC pin 0x3 for port D (VBT)
> Oct 23 18:39:14 ubuntu kernel: i915 0000:00:02.0: [drm:intel_bios_port_aux_ch [i915]] using AUX E for port E (platform default)
> Oct 23 18:39:14 ubuntu kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCODER:205:DDI E]
> Oct 23 18:39:14 ubuntu kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Using DDC pin 0x9 for port E (VBT)
> 
> This is what we got after applied this change.
> Oct 28 18:18:47 ubuntu kernel: i915 0000:00:02.0: [drm:intel_bios_port_aux_ch [i915]] using AUX D for port D (platform default)
> Oct 28 18:18:47 ubuntu kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCODER:201:DDI D]
> Oct 28 18:18:47 ubuntu kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Using DDC pin 0x9 for port D (VBT)
> Oct 28 18:18:47 ubuntu kernel: i915 0000:00:02.0: [drm:intel_bios_port_aux_ch [i915]] using AUX E for port E (platform default)
> Oct 28 18:18:47 ubuntu kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCODER:205:DDI E]
> Oct 28 18:18:47 ubuntu kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Using DDC pin 0xa for port E (VBT)
> 
> Best regards,
> Shawn
> 
> >>  ICL_DDC_BUS_PORT_1 = 0x4,
> >>  ICL_DDC_BUS_PORT_2,
> >>  ICL_DDC_BUS_PORT_3,
> >> --
> >> 2.28.0
> >>
> >
> >--
> >Matt Roper
> >Graphics Software Engineer
> >VTT-OSGC Platform Enablement
> >Intel Corporation
> >(916) 356-2795
> >

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
