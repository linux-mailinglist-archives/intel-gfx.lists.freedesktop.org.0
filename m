Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F07429766A
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Oct 2020 20:08:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07B516E3CE;
	Fri, 23 Oct 2020 18:08:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2BBA6E3CE
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Oct 2020 18:08:37 +0000 (UTC)
IronPort-SDR: Ve0NINlxzZgeZumo91UM15HZZ+Nqc5G8YwfoDtNFvwKA7Ur7p8NIsMQHbwpJybb2ecGj5Qch8f
 AIcD+YrOPodg==
X-IronPort-AV: E=McAfee;i="6000,8403,9783"; a="147570687"
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="147570687"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2020 11:08:24 -0700
IronPort-SDR: 8mnwFWRbWlRAWWqBpV+jUaLIQrtkyC+6+wfo1sLZhmQ3NloQbxEWApwXVNKNVEkoy9zTfQxTMc
 NXzLXh0zML0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,409,1596524400"; d="scan'208";a="359669561"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.174])
 by FMSMGA003.fm.intel.com with SMTP; 23 Oct 2020 11:08:22 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 23 Oct 2020 21:08:21 +0300
Date: Fri, 23 Oct 2020 21:08:21 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20201023180821.GA6112@intel.com>
References: <20201023133420.12039-1-ville.syrjala@linux.intel.com>
 <20201023133420.12039-2-ville.syrjala@linux.intel.com>
 <20201023175724.jcmjndbmtr3rjhws@ldmartin-desk1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201023175724.jcmjndbmtr3rjhws@ldmartin-desk1>
X-Patchwork-Hint: comment
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 01/19] drm/i915: s/PORT_TC/TC_PORT_/
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
Cc: intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Oct 23, 2020 at 10:57:24AM -0700, Lucas De Marchi wrote:
> On Fri, Oct 23, 2020 at 04:34:02PM +0300, Ville Syrj=E4l=E4 wrote:
> >@@ -8352,19 +8352,19 @@ enum {
> > #define SDE_DDI_HOTPLUG_ICP(port)	(1 << ((port) + 16))
> > #define SDE_DDI_MASK_ICP		(SDE_DDI_HOTPLUG_ICP(PORT_B) | \
> > 					 SDE_DDI_HOTPLUG_ICP(PORT_A))
> >-#define SDE_TC_MASK_ICP			(SDE_TC_HOTPLUG_ICP(PORT_TC4) | \
> >-					 SDE_TC_HOTPLUG_ICP(PORT_TC3) | \
> >-					 SDE_TC_HOTPLUG_ICP(PORT_TC2) | \
> >-					 SDE_TC_HOTPLUG_ICP(PORT_TC1))
> >+#define SDE_TC_MASK_ICP			(SDE_TC_HOTPLUG_ICP(TC_PORT_4) | \
> >+					 SDE_TC_HOTPLUG_ICP(TC_PORT_3) | \
> >+					 SDE_TC_HOTPLUG_ICP(TC_PORT_2) | \
> >+					 SDE_TC_HOTPLUG_ICP(TC_PORT_1))
> =

> At some point we may also want to add *HOTPLUG* to these macros to
> signify what it really is.  For another day.

Hmm. I have a feeling I end up removing these before the end of the
series. Ah no, that was in a followup patch I played around with.
But I'm not convinced that patch (making the IIR readout mask
calculation also based on the encoders present) is actually a
necessary thing. I guess it would be if some if the hpd bits get
repurposed and we still want to share the irq handler between
platforms with conflicting bits.

> =

> =

> Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>
> =

> Lucas De Marchi
> =

> > #define SDE_DDI_MASK_TGP		(SDE_DDI_HOTPLUG_ICP(PORT_C) | \
> > 					 SDE_DDI_HOTPLUG_ICP(PORT_B) | \
> > 					 SDE_DDI_HOTPLUG_ICP(PORT_A))
> >-#define SDE_TC_MASK_TGP			(SDE_TC_HOTPLUG_ICP(PORT_TC6) | \
> >-					 SDE_TC_HOTPLUG_ICP(PORT_TC5) | \
> >-					 SDE_TC_HOTPLUG_ICP(PORT_TC4) | \
> >-					 SDE_TC_HOTPLUG_ICP(PORT_TC3) | \
> >-					 SDE_TC_HOTPLUG_ICP(PORT_TC2) | \
> >-					 SDE_TC_HOTPLUG_ICP(PORT_TC1))
> >+#define SDE_TC_MASK_TGP			(SDE_TC_HOTPLUG_ICP(TC_PORT_6) | \
> >+					 SDE_TC_HOTPLUG_ICP(TC_PORT_5) | \
> >+					 SDE_TC_HOTPLUG_ICP(TC_PORT_4) | \
> >+					 SDE_TC_HOTPLUG_ICP(TC_PORT_3) | \
> >+					 SDE_TC_HOTPLUG_ICP(TC_PORT_2) | \
> >+					 SDE_TC_HOTPLUG_ICP(TC_PORT_1))
> >
> > #define SDEISR  _MMIO(0xc4000)
> > #define SDEIMR  _MMIO(0xc4004)
> >@@ -8449,15 +8449,15 @@ enum {
> >
> > #define ICP_DDI_HPD_ENABLE_MASK		(SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_B) |=
 \
> > 					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_A))
> >-#define ICP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(PORT_TC4) | \
> >-					 ICP_TC_HPD_ENABLE(PORT_TC3) | \
> >-					 ICP_TC_HPD_ENABLE(PORT_TC2) | \
> >-					 ICP_TC_HPD_ENABLE(PORT_TC1))
> >+#define ICP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(TC_PORT_4) | \
> >+					 ICP_TC_HPD_ENABLE(TC_PORT_3) | \
> >+					 ICP_TC_HPD_ENABLE(TC_PORT_2) | \
> >+					 ICP_TC_HPD_ENABLE(TC_PORT_1))
> > #define TGP_DDI_HPD_ENABLE_MASK		(SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_C) |=
 \
> > 					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_B) | \
> > 					 SHOTPLUG_CTL_DDI_HPD_ENABLE(PORT_A))
> >-#define TGP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(PORT_TC6) | \
> >-					 ICP_TC_HPD_ENABLE(PORT_TC5) | \
> >+#define TGP_TC_HPD_ENABLE_MASK		(ICP_TC_HPD_ENABLE(TC_PORT_6) | \
> >+					 ICP_TC_HPD_ENABLE(TC_PORT_5) | \
> > 					 ICP_TC_HPD_ENABLE_MASK)
> >
> > #define _PCH_DPLL_A              0xc6014
> >@@ -10315,9 +10315,9 @@ enum skl_power_gate {
> > #define ICL_DPCLKA_CFGCR0			_MMIO(0x164280)
> > #define  ICL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)	(1 << _PICK(phy, 10, 11, 24=
))
> > #define  RKL_DPCLKA_CFGCR0_DDI_CLK_OFF(phy)	REG_BIT((phy) + 10)
> >-#define  ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port)	(1 << ((tc_port) < PORT_=
TC4 ? \
> >+#define  ICL_DPCLKA_CFGCR0_TC_CLK_OFF(tc_port)	(1 << ((tc_port) < TC_PO=
RT_4 ? \
> > 						       (tc_port) + 12 : \
> >-						       (tc_port) - PORT_TC4 + 21))
> >+						       (tc_port) - TC_PORT_4 + 21))
> > #define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_SHIFT(phy)	((phy) * 2)
> > #define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL_MASK(phy)	(3 << ICL_DPCLKA_CFGCR=
0_DDI_CLK_SEL_SHIFT(phy))
> > #define  ICL_DPCLKA_CFGCR0_DDI_CLK_SEL(pll, phy)	((pll) << ICL_DPCLKA_C=
FGCR0_DDI_CLK_SEL_SHIFT(phy))
> >-- =

> >2.26.2
> >

-- =

Ville Syrj=E4l=E4
Intel
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
