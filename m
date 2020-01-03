Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id F0D5412FB10
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2020 18:01:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C52D16E110;
	Fri,  3 Jan 2020 17:01:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2CCCE6E110
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2020 17:01:56 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 03 Jan 2020 09:01:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,391,1571727600"; d="scan'208";a="216821626"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga008.fm.intel.com with ESMTP; 03 Jan 2020 09:01:55 -0800
Received: from fmsmsx116.amr.corp.intel.com (10.18.116.20) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 3 Jan 2020 09:01:55 -0800
Received: from fmsmsx107.amr.corp.intel.com ([169.254.6.96]) by
 fmsmsx116.amr.corp.intel.com ([169.254.2.67]) with mapi id 14.03.0439.000;
 Fri, 3 Jan 2020 09:01:55 -0800
From: "Ruhl, Michael J" <michael.j.ruhl@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/display: nuke skl workaround for
 pre-production hw
Thread-Index: AQHVt4HmGHiGtsHMo0+mAq3Pzhw6XKfZP9sg
Date: Fri, 3 Jan 2020 17:01:54 +0000
Message-ID: <14063C7AD467DE4B82DEDB5C278E8663EE161310@fmsmsx107.amr.corp.intel.com>
References: <20191220220650.16349-1-lucas.demarchi@intel.com>
In-Reply-To: <20191220220650.16349-1-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ctpclassification: CTP_NT
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiMDEyYTdmNTEtNjQxNS00OTc3LWFhZTUtNjk2Zjc0MTE1ZDBkIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoickdiMWQ1dVZJaGJWdEhcLzVWeU84NlVkM2I1SlwvbFpxelUxRGM5NTVrYWp4TjdVSjMwV2swUkUyXC9wWGNIS1JLRSJ9
dlp-product: dlpe-windows
dlp-version: 11.2.0.6
dlp-reaction: no-action
x-originating-ip: [10.1.200.106]
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: nuke skl workaround for
 pre-production hw
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

>-----Original Message-----
>From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Lucas
>De Marchi
>Sent: Friday, December 20, 2019 5:07 PM
>To: intel-gfx@lists.freedesktop.org
>Subject: [Intel-gfx] [PATCH] drm/i915/display: nuke skl workaround for pre-
>production hw
>
>According to intel_detect_preproduction_hw(), the SKL steeping D0 is

s/steeping/stepping/

?

M

>still pre-preproduction so we can nuke the additional workaround.
>
>While at it, nuke dangling new line.
>
>Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display.c | 9 +--------
> 1 file changed, 1 insertion(+), 8 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c
>b/drivers/gpu/drm/i915/display/intel_display.c
>index e6702b9b9117..4aa7dfa88c7c 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -16018,14 +16018,8 @@ static void intel_setup_outputs(struct
>drm_i915_private *dev_priv)
> 		if (intel_ddi_crt_present(dev_priv))
> 			intel_crt_init(dev_priv);
>
>-		/*
>-		 * Haswell uses DDI functions to detect digital outputs.
>-		 * On SKL pre-D0 the strap isn't connected, so we assume
>-		 * it's there.
>-		 */
> 		found = I915_READ(DDI_BUF_CTL(PORT_A)) &
>DDI_INIT_DISPLAY_DETECTED;
>-		/* WaIgnoreDDIAStrap: skl */
>-		if (found || IS_GEN9_BC(dev_priv))
>+		if (found)
> 			intel_ddi_init(dev_priv, PORT_A);
>
> 		/* DDI B, C, D, and F detection is indicated by the
>SFUSE_STRAP
>@@ -16046,7 +16040,6 @@ static void intel_setup_outputs(struct
>drm_i915_private *dev_priv)
> 		if (IS_GEN9_BC(dev_priv) &&
> 		    intel_bios_is_port_present(dev_priv, PORT_E))
> 			intel_ddi_init(dev_priv, PORT_E);
>-
> 	} else if (HAS_PCH_SPLIT(dev_priv)) {
> 		int found;
>
>--
>2.24.0
>
>_______________________________________________
>Intel-gfx mailing list
>Intel-gfx@lists.freedesktop.org
>https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
