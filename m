Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CCDB2A2BA7
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Nov 2020 14:37:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48BED6E2D8;
	Mon,  2 Nov 2020 13:37:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B8786E2D8
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Nov 2020 13:37:10 +0000 (UTC)
IronPort-SDR: rYxJs2Z8kJmuZ1kRcXPSEJ8U1iV1N2Q6+R9I6mxx1fGw3jGMBif/uhqlTbpcKUWIfcCFFssQKD
 OgO1B4ODFTBQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9792"; a="168099466"
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="168099466"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2020 05:37:09 -0800
IronPort-SDR: y1AnAeZwKkkPuLdyHSX0n+wEm5nkCBFKvAMFNbFJjW9DK3gVAlSAR9rqBx9ez102Mp00DW5Z+V
 dlyg55M6yKWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,445,1596524400"; d="scan'208";a="305450916"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga008.fm.intel.com with ESMTP; 02 Nov 2020 05:37:09 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 2 Nov 2020 05:37:08 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Mon, 2 Nov 2020 05:37:08 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Mon, 2 Nov 2020 05:37:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RKsI4O0kuOKgqUTbA5FMhfwTd+XnqOFF0Vhoa/SC6Cc+h3vHTPxrn8Po0VtfQO1luqPpyrWmjyXZ9+QjRuWCJWg7WvRaVYyJr2ckJrCFj/msvlmLnSI9eDWj/p/MtLxDdA62/MLMpt8p+yrhniZ4yGq9aUaPyiWA00LtcSZUp0MnqYRl0YVfh/FF3+kP3zoxSrrMNaXUcqpeYgxYps2MjNasbxrI6hs8K5OuGXzcruQYLuH/i+cJxdS/q02LD86sWbiJvET/UE7lgebveFj/g4SrwCKOT0sY//QI7LZ4hgDa2ZldAKBFf6EMvEKDfx24rmMGO944cPBebK7F7J6xng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K9KAy/IboW2urJDLxGD5ZGTrFT2vGEKYPoXGBmTNCe4=;
 b=i7f6mRrzAhqUoTYqvA3D2pNIVNMLy1Ns87G0RgKEK6oppvWKhH/+Wg+qIhFiCto7RhY+kl8chdM1UAoCu4boyL5jADOljRu0dosMzyMfhaEN0KMwUtG+UG/yx2fAty+TpDuoiIo2UqHR8Hh+RsWVlQzpuXlYZU5hkidq0Rrpct+jxlrlKcwFDX9NrP8co4PWhCi3lQ2CDQXy1eLfoHQ5AkC7yymxn3o25dTF89GklnNj1nmEHdIQnPmpjof2OpYXDcFkELnQ3PUdLMWg9nFQDxKf6IzfR+8B1eTeJ1PKHZc1JnqPwhBlgymgae61gncJjGhEYOKGFmaLDAAvRPtNXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K9KAy/IboW2urJDLxGD5ZGTrFT2vGEKYPoXGBmTNCe4=;
 b=vs6udl3+j+jkpvB0kY2ITW81X79YLH0rU+XalFG1N/MOOJj/7lPawWFIMsiIO4dHhN8OOn+Foe8GtgEUtv91wy+7VXXdC+jilTj6lxDDJcWickXmvMA/Tr6Xqbhhx/CPCpAxQmjorR+SNUW6hDkkCatlpZecHJFo5XOhMUiv1uE=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by BYAPR11MB3558.namprd11.prod.outlook.com (2603:10b6:a03:b3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.27; Mon, 2 Nov
 2020 13:37:06 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a%7]) with mapi id 15.20.3499.030; Mon, 2 Nov 2020
 13:37:06 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v2] drm/i915/rkl: new rkl ddc map for different PCH
Thread-Index: AQHWsR1BlNBAuabIUEaZRY3yHRa1cA==
Date: Mon, 2 Nov 2020 13:37:05 +0000
Message-ID: <BY5PR11MB43070170FA14C85862719C2CA3100@BY5PR11MB4307.namprd11.prod.outlook.com>
References: <20201028144312.12520-1-shawn.c.lee@intel.com>
 <20201030134137.30867-1-shawn.c.lee@intel.com>
 <20201030173530.GO627052@mdroper-desk1.amr.corp.intel.com>
 <BY5PR11MB43074CA0CF93E3C6608FC83CA3120@BY5PR11MB4307.namprd11.prod.outlook.com>
 <20201102061223.GS627052@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20201102061223.GS627052@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [1.169.150.250]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e48aaedd-e5e0-4917-ab6b-08d87f3463ad
x-ms-traffictypediagnostic: BYAPR11MB3558:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB3558A63E4E3DF1E6422867F1A3100@BYAPR11MB3558.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IQ0z0JHH+iuWgMVLVNakzEyFkQLPV2SZWBKmxW6l4+oLzVZEPmLRumpqmbkZNsP5isYQ21S4RIpK7qKGtyvSNo/vig+AXbdhA2fpdeoizqniYlgjcOva5q4haS8GD+OUsHa8xG3VCVESRQvdwHvGW/6MUtQFOI7R4neCrBeoZIGwe3i737FaUEnmmz0TtPdNnGCHPqXTVNyCcbIEgt9uiAZ/RoZmHh1LDXqdDLXuKzNNzzcBaPtT5rFIM0c2mqUGLojFQdaZcBXAXTUWzNyHPPX98clXgB0Ya2jMHVKSJ5ze90od/I55ysFOM4kWd2gtF6pHynU3WL3iRHbrTwLtghCfnqbmf+jpS5Vpvck+HzlxbsFzacNkxaNT8BHG6PZ5VvtrN4lf95Jl3GqKC0XWYIcfSJO5JvnymAc2hPKaPDs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(346002)(376002)(366004)(396003)(966005)(2906002)(6506007)(26005)(53546011)(8676002)(4326008)(316002)(478600001)(186003)(52536014)(5660300002)(9686003)(76116006)(86362001)(66446008)(66476007)(66556008)(64756008)(66946007)(55016002)(71200400001)(110136005)(83380400001)(54906003)(7696005)(8796002)(8936002)(33656002)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: X8fJTKWrm5FmE/kO/LXobgZ/sRelVx3+qp7czCXv6FZsQ1pqj9QPBZe6uUmkt8GA8r2dIHRmmZhSsNmlGZEbizbM4yZehgj2s+zj/x2BzY6pwFPgcsXJyoUQnOSdqQMJBuzmNwo4tUst3NsiguTNzV51RcDQbXANW+2FBPQMPumwEzcO2bkMVwDTzyRPfvSYYEsA1hQtdIXf/iOGQo/q+YnEALjZ9c932k9d/qHGBqB7802FE26d1DZJ9ov65lofVBEJjhSYuPO0w/epmy1ew4dkE+kYm/wIxO5/odQhUGWW2N243T3DqK4XAnpgWQxZUtJniDoskS7Cwl9lU7+5kZsjmeNMbRYk5JCbAhzDRgyqyvGMr5j0Xtx+2YaRkC92D3fcLV8+9cGTmQFCdzvLWWdx8QWAn/vedTwaybBDv0AXWdEy+tYMyK52ivBUxmJu/C1clBk5RSfi+yxubkySmLrCDD7PfnQymjIz/PVk2aZoH5FTyVCjQcNp4tV/SJVCct8j8lGTtSzpvxZZjHcqdYtwGhVFTssvAcvPrKtvaxtlXdGoplC1Wi5NnmqLp9U6ChxiBiudIqAmUYFhkgtZORcwgYVnC+XAV3EXNdUJFGNr8jxnPgL7pIUuCF7AfPz8EGfLSxOwP2AuTk+2ZFpy7g==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e48aaedd-e5e0-4917-ab6b-08d87f3463ad
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Nov 2020 13:37:05.7929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: s+0c2ELoU83ifLWeNKlV5AZN4h/CzPALsuMWwL934pFkDUcmg47kP4khrvFkUdxSZrj6ewKnIXbvrJN3jU+yvA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3558
X-OriginatorOrg: intel.com
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
Reply-To: "20201030134137.30867-1-shawn.c.lee@intel.com"
 <20201030134137.30867-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Mon, November 2, 2020 2:12 PM Matt Roper wrote:
>On Fri, Oct 30, 2020 at 07:55:35PM -0700, Lee, Shawn C wrote:
>> On Fri, Oct. 30, 2020, 5:35 p.m., Matt Roper wrote:
>> >On Fri, Oct 30, 2020 at 09:41:37PM +0800, Lee Shawn C wrote:
>> >> After boot into kernel. Driver configured ddc pin mapping based on 
>> >> predefined table in parse_ddi_port(). Now driver configure rkl ddc 
>> >> pin mapping depends on icp_ddc_pin_map[]. Then this table will give 
>> >> incorrect gmbus port number to cause HDMI can't work.
>> >>
>> >> Refer to commit d0a89527d06 ("drm/i915/rkl: Add DDC pin mapping").
>> >> Create two ddc pin table for rkl TGP and CMP pch. Then HDMI can 
>> >> works properly on rkl.
>> >>
>> >> v2: update patch based on latest dinq branch.
>> >>
>> >> Cc: Matt Roper <matthew.d.roper@intel.com>
>> >> Cc: Aditya Swarup <aditya.swarup@intel.com>
>> >> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> >> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> >> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> >> Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
>> >> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2577
>> >> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> >> ---
>> >>  drivers/gpu/drm/i915/display/intel_bios.c     | 20 +++++++++++++++++++
>> >>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  4 ++++
>> >>  2 files changed, 24 insertions(+)
>> >>
>> >> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c
>> >> b/drivers/gpu/drm/i915/display/intel_bios.c
>> >> index 0a309645fe06..ca9426e1768a 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> >> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> >> @@ -1623,6 +1623,18 @@ static const u8 icp_ddc_pin_map[] = {  
>> >> [TGL_DDC_BUS_PORT_6] = GMBUS_PIN_14_TC6_TGP,  };
>> >>
>> >> +static const u8 rkl_pch_tgp_ddc_pin_map[] = { [RKL_DDC_BUS_DDI_B] 
>> >> += GMBUS_PIN_2_BXT, [RKL_DDC_BUS_DDI_D] = GMBUS_PIN_9_TC1_ICP, 
>> >> +[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_10_TC2_ICP, };
>> >> +
>> >> +static const u8 rkl_pch_cmp_ddc_pin_map[] = { [RKL_DDC_BUS_DDI_B] 
>> >> += GMBUS_PIN_2_BXT, [RKL_DDC_BUS_DDI_D] = GMBUS_PIN_3_BXT, 
>> >> +[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_4_CNP, };
>> >> +
>> >>  static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 
>> >> vbt_pin) {  const u8 *ddc_pin_map; @@ -1630,6 +1642,14 @@ static u8 
>> >> map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
>> >>
>> >>  if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1) {  return vbt_pin;
>> >> +} else if (IS_ROCKETLAKE(dev_priv)) { if (INTEL_PCH_TYPE(dev_priv) 
>> >> +>= PCH_TGP) { ddc_pin_map = rkl_pch_tgp_ddc_pin_map; n_entries = 
>> >> +ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
>> >> +} else {
>> >> +ddc_pin_map = rkl_pch_cmp_ddc_pin_map; n_entries = 
>> >> +ARRAY_SIZE(rkl_pch_cmp_ddc_pin_map);
>> >> +}
>> >>  } else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {  ddc_pin_map = 
>> >> icp_ddc_pin_map;  n_entries = ARRAY_SIZE(icp_ddc_pin_map); diff 
>> >> --git a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> >> b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> >> index 49b4b5fca941..2df009996128 100644
>> >> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> >> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> >> @@ -319,6 +319,10 @@ enum vbt_gmbus_ddi {  ICL_DDC_BUS_DDI_A = 0x1,  
>> >> ICL_DDC_BUS_DDI_B,  TGL_DDC_BUS_DDI_C,
>> >> +RKL_DDC_BUS_DDI_B = 0x1,
>> >> +RKL_DDC_BUS_DDI_C,
>> >> +RKL_DDC_BUS_DDI_D,
>> >> +RKL_DDC_BUS_DDI_E,
>> >
>> >These definitions don't really make sense; according to the VBT definition in the bspec (20124), the symbolic names map to different VBT input values depending on which PCH is paired with RKL.  E.g., VBT value of "2" refers to PHY-C when using a CMP PCH, but refers to PHY-B when using a TGP PCH.
>> >
>> >From what I can see, RKL+TGP is already handled properly today in the code and doesn't need any special handling.  The patch here would actually break it, because it would associate the wrong pins to outputs (and fail to associate anything at all with PHY-B [vbt value 2]).
>> >
>> >For RKL+CMP, we do need a change to the code to pick valid output pins in the range 1-4 rather than 1,2,9,A, but it doesn't look like the mapping being added here is quite right for that either.  CMP is a derivative of CNP, so I believe we should be following the "CNL-PCH"
>> >column of the VBT definition.
>> >
>> >
>> >Matt
>> >
>> 
>> Hi Matt,
>> 
>> Thanks for your comments! Below is EFP configuration from vbt. And we 
>> know there is no real port "C" on physical hardware with TGP-PCH.
>
>The terminology gets somewhat confusing, so just for clarity, the outputs on RKL in general are:
>
>          DDI-A (aka PORT-A) <-> PHY-A
>          DDI-B (aka PORT-B) <-> PHY-B
>        DDI-TC1 (aka PORT-D) <-> PHY-C
>        DDI-TC2 (aka PORT-E) <-> PHY-D
>
>Note that on recent platforms where the DDI and PHY are separate blocks we try to use the term "port" to refer to the DDI.  And based on their register offsets, we treat DDI-TC1 and DDI-TC2 as ports D and E in i915, even though that's not something the bspec does.
>
>It looks like the proper table for RKL+TGP should actually be:
>
>        static const u8 rkl_pch_tgp_ddc_pin_map[] = {
>                [1] = GMBUS_PIN_1_BXT,
>                [2] = GMBUS_PIN_2_BXT,
>                [3] = GMBUS_PIN_9_TC1_ICP,
>                [4] = GMBUS_PIN_10_TC2_ICP,
>        }
>

Thanks for clarification! I will update table like this.

>i.e., basically the same as what you had, but we do need to handle the input value '1' too since we can legitimately drive HDMI on all four of the outputs when using a TGP PCH.
>
>When we're instead working on a RKL+CMP platform DDI-A output (if
>present) will always be eDP; there's no support for HDMI in that case.
>So for RKL+CMP the gmbus pin mapping needs to be
>
>        0x1 (DDI-B) -> 0x1
>        0x2 (DDI-C) -> 0x2
>        0x3 (DDI-D) -> 0x4
>
>The cnp_ddc_pin_map[] table that we already have in the code should handle that properly, so there's no need for special RKL+CMP handling; we can just let it fall through to the existing HAS_PCH_CNP() branch.

OK! If RKL+CMP sku, driver will load cnp_ddc_pin_map[] just like original design. The new table will be removed.

>However I think rkl_port_to_ddc_pin() is off by one for the values it's returning on CMP; we need to fix that so that cases where the VBT doesn't specify a valid DDC pin.
>

Looks like we need some changes in rkl_port_to_ddc_pin() like below. What do you think?
	if (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP && phy > PHY_C)
		return GMBUS_PIN_9_TC1_ICP + phy - PHY_D;

>
>Matt
>
>> EFP1 : DisplayPort-B
>> EFP2 : HDMI-C
>> EFP3 : HDMI-D
>> EFP4 : no device
>> 
>> Below messages came from customer board with latest drm-tip kernel (5.10.0-rc1+). Port D/E will be mapped to ddc pin 0x3/0x9 according to icp_ddc_pin_map[].
>> But port D/E should map to 0x9/0xa on TGP-PCH.
>> Oct 23 18:39:14 ubuntu kernel: i915 0000:00:02.0: 
>> [drm:intel_bios_port_aux_ch [i915]] using AUX D for port D (platform 
>> default) Oct 23 18:39:14 ubuntu kernel: i915 0000:00:02.0: 
>> [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on 
>> [ENCODER:201:DDI D] Oct 23 18:39:14 ubuntu kernel: i915 0000:00:02.0: 
>> [drm:intel_hdmi_init_connector [i915]] Using DDC pin 0x3 for port D 
>> (VBT) Oct 23 18:39:14 ubuntu kernel: i915 0000:00:02.0: 
>> [drm:intel_bios_port_aux_ch [i915]] using AUX E for port E (platform 
>> default) Oct 23 18:39:14 ubuntu kernel: i915 0000:00:02.0: 
>> [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on 
>> [ENCODER:205:DDI E] Oct 23 18:39:14 ubuntu kernel: i915 0000:00:02.0: 
>> [drm:intel_hdmi_init_connector [i915]] Using DDC pin 0x9 for port E 
>> (VBT)
>> 
>> This is what we got after applied this change.
>> Oct 28 18:18:47 ubuntu kernel: i915 0000:00:02.0: 
>> [drm:intel_bios_port_aux_ch [i915]] using AUX D for port D (platform 
>> default) Oct 28 18:18:47 ubuntu kernel: i915 0000:00:02.0: 
>> [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on 
>> [ENCODER:201:DDI D] Oct 28 18:18:47 ubuntu kernel: i915 0000:00:02.0: 
>> [drm:intel_hdmi_init_connector [i915]] Using DDC pin 0x9 for port D 
>> (VBT) Oct 28 18:18:47 ubuntu kernel: i915 0000:00:02.0: 
>> [drm:intel_bios_port_aux_ch [i915]] using AUX E for port E (platform 
>> default) Oct 28 18:18:47 ubuntu kernel: i915 0000:00:02.0: 
>> [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on 
>> [ENCODER:205:DDI E] Oct 28 18:18:47 ubuntu kernel: i915 0000:00:02.0: 
>> [drm:intel_hdmi_init_connector [i915]] Using DDC pin 0xa for port E 
>> (VBT)
>> 
>> Best regards,
>> Shawn
>> 
>> >>  ICL_DDC_BUS_PORT_1 = 0x4,
>> >>  ICL_DDC_BUS_PORT_2,
>> >>  ICL_DDC_BUS_PORT_3,
>> >> --
>> >> 2.28.0
>> >>
>> >
>> >--
>> >Matt Roper
>> >Graphics Software Engineer
>> >VTT-OSGC Platform Enablement
>> >Intel Corporation
>> >(916) 356-2795
>> >
>
>--
>Matt Roper
>Graphics Software Engineer
>VTT-OSGC Platform Enablement
>Intel Corporation
>(916) 356-2795

Best regards,
Shawn
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
