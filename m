Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66BC92B1314
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 01:14:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CCC9C8910D;
	Fri, 13 Nov 2020 00:14:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 018026E283
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 00:14:20 +0000 (UTC)
IronPort-SDR: BSqo7uy/yUXJAdVpfTTmVHJE+IfepR+NWkLXKaBj1mNhMWSGFAlJIAVkZvmndXOtBF62O1ASyt
 89WbXs0aLItw==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="167821809"
X-IronPort-AV: E=Sophos;i="5.77,473,1596524400"; d="scan'208";a="167821809"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2020 16:14:19 -0800
IronPort-SDR: 4N4/VMveHhd1HfYWCHc6ZlftUjiFjTcSK/83JYWfSs/QWwNcpdOpC9U8qjHlbSrb51vfdk9S17
 kxwejKB0nGNw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,473,1596524400"; d="scan'208";a="361159326"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga002.fm.intel.com with ESMTP; 12 Nov 2020 16:14:19 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 12 Nov 2020 16:14:19 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 12 Nov 2020 16:14:19 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.56) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 12 Nov 2020 16:14:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IxxClYpfJTrYyxs9F5XrsOdeHjLdXOcfT1gV7NSD0cdx9On3qGAl8OVSmk201Ly+2FVmQykSNHu3Lxq5moakhXaCfgXlEmCBpRYR4gBBf2uz2AaonRJN1Jkjj9+crnLXq2+sqcurNsZQKcp5su2C6HchmDax+CFAlqEmA62s3SAIH+9BXAnozJqaH3wLnMWo1+3GqnRNl7daiggvOtQu41VKUBERtoZVPwZKBd7Xt3P9SlWaCEI3rwmACRN08laxI4pJ+vAnhb97ZNOOSd6N3bNBrb5Su93EKAt/dkoYD25VG3rphpxl4wQwC3I2mJMaxq8s7RVNL+Nkbfq80xl0SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3hSzpVeOHFHyDDajz/Hdi1k9byIzZ4qOi5Cy0P0EDOo=;
 b=SLFL7BeBhOPR6wcl+ZSodRnBAkxetjq2C8kxlNbsPQWhV0FcOftIUlJiw/O8dU7ST4nRK0TUxzQoZWP5NE81pWKxHPHp8epADtApMSHSfiX88r/Tq1EzWZfzbn7+smVxAt8Wg3iWTZoKsj2WAFEghodVGWmqzwpLCUov4oGhsv0Psfiz8zpoBsGz4pwf7b9Bs7wM7iXbxhEKImW73g3+SHuEO7+mv6KiHZC8poDAWUWcvlqOnbIdLrpVT36REZ6ZO/h7CoIx7+vwswsjPugyy0t1FcTWW6jMeC8O56vDQKPwlLoKivKVJfsbouEtruMNUa8IIBT6Y4vvgQKricIHlg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3hSzpVeOHFHyDDajz/Hdi1k9byIzZ4qOi5Cy0P0EDOo=;
 b=jikoP28+EefkTbHXmlUupkjDox5zYFw44+FH91KSF3djAWG41zfxdUrXq+MyIiTrLDwirKocV7BmsqOgYQK4KXRpZHAFmyRTLO4N5zdPKw9sK+dNzujXOUOE/qoK13ngtR9A3InZh1Uhczojo4WFfh+isVEWiFarbHu3o+czsMk=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by SJ0PR11MB5039.namprd11.prod.outlook.com (2603:10b6:a03:2da::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.25; Fri, 13 Nov
 2020 00:14:17 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a%7]) with mapi id 15.20.3541.025; Fri, 13 Nov 2020
 00:14:17 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH v3] drm/i915/rkl: new rkl ddc map for different PCH
Thread-Index: AQHWsR90vFlYnwTn2Uqbfd7HyHC42qnFO9AAgAADtoA=
Date: Fri, 13 Nov 2020 00:14:16 +0000
Message-ID: <BY5PR11MB43076AAD3C72283797D76328A3E60@BY5PR11MB4307.namprd11.prod.outlook.com>
References: <20201028144312.12520-1-shawn.c.lee@intel.com>
 <20201102135614.857-1-shawn.c.lee@intel.com>
 <20201112235334.GF627052@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20201112235334.GF627052@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [118.167.3.53]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f7303bb4-4087-4fe3-734b-08d887690f40
x-ms-traffictypediagnostic: SJ0PR11MB5039:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB503948F1DC8E998B22F704BFA3E60@SJ0PR11MB5039.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1468;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2RuygZ1L4P42WvHwcFAuQmdlODq36r7QcLfRw2pTLlwtvTzVx3pPk5Im5A02JxYPFy2BrF8t21khJh9yHNpwmYIRZtcu++v514kXCU4BWhVmeHuyVhfvaGxEu1jUkJ6YmG8pEDubhhn1F5hP3RW3/Tyby8Mhlo+nydkYQNeoD126ZrFoIwUihULWwGPPjmlhwy884rE2bCGDXUtB5Lsz8o3BKF9DnTRqamYL1uyhe/JFlUzMFTXnvE67IIECVkne8TsEMd7C+0TQuYqJQLInCAnIs/rUAXLS1X4ghn+0Q1wTYoedtA4724Droui+NDRWocblYM9m/Y+0BtbquTfgMPbep6+wDHxY5f9D2oTIeAnN3q7QU1xtAxhwiahbrliAL2livJVPVpBUGvBGB0wLvu1VavckuR5k7Xx8RS7bqB0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(376002)(396003)(366004)(136003)(346002)(186003)(9686003)(7696005)(8796002)(6506007)(83380400001)(4326008)(86362001)(8676002)(478600001)(52536014)(26005)(54906003)(966005)(55236004)(316002)(8936002)(55016002)(5660300002)(2906002)(64756008)(71200400001)(33656002)(66946007)(66476007)(66446008)(76116006)(66556008)(110136005)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: dy5jrkBRXWx2gP5ZVNqYskJRCzhA+0cVkjLPkJDNYaXSQB+LbJqdzXdWzAm7i2BhLwPYXYju55s9INuWe/xPzDU2d8wMGxkCXxaEDdlzjF/l4sHhydqi0H01qUb1cRuFg8llPi1zAw4dPxWM2lGBlpMbtseomgYJXZ+rOrbgsaI9KeHf4TTC6aYLZ5zY+x4FcENEEnXY2eEDUz1GYobJ/NKgV49FpsfSVsgrn4oL9Br4SE5VfS2z54japJ8hcB6oAug904UBpDIw8k0vVl2xrsYbAYpuG85ShlUJZEqZjLnDcdqc0eUFcahPhf+MK7Z9GFCyMObRvOBYbTc0Nc9ZaIsOOJoWTDvDUoJ7/mz/W9G1y7sGpCnNvkbKnwb1Hx5ONjbn0v64tg7o17cL2rCcQ60pQbFgyPz/28JWqyilNqLkjrywR4D90p1xBJnQO6w6HwyD/Gg7KjJyeQ9EtrEs0njwOMWxrEi11fuUWOh9Z6COIs0PetnD/0XbyGG6XmsQCvJYcNbcV4DFjxcHmHM/+48DteaFweA1g/jizT4Bwk3ErkMqCxXMxVQhSNUhsu/gD07E4bC+A58IiY3So+HAPerZohFOrx6tgMuinEd4ZR70SFNYdqZWsj9PgEMOqxkg6b/aOV9a1Vmyo29b49kh4w==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f7303bb4-4087-4fe3-734b-08d887690f40
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2020 00:14:16.9243 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 08pf7/E/ieHoNap4BTEfBMQxlvGyRVbv5F+qgyapwJZqI4YFkjtlgl9UzSwQ9GPAwcGvEb73USmfeRj5aI5FVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5039
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/rkl: new rkl ddc map for
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
Reply-To: "20201102135614.857-1-shawn.c.lee@intel.com"
 <20201102135614.857-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov. 12, 2020, 11:53 p.m., Matt Roper wrote:
>On Mon, Nov 02, 2020 at 09:56:14PM +0800, Lee Shawn C wrote:
>> After boot into kernel. Driver configured ddc pin mapping based on 
>> predefined table in parse_ddi_port(). Now driver configure rkl ddc pin 
>> mapping depends on icp_ddc_pin_map[]. Then this table will give 
>> incorrect gmbus port number to cause HDMI can't work.
>> 
>> Refer to commit d0a89527d06 ("drm/i915/rkl: Add DDC pin mapping").
>> Create two ddc pin table for rkl TGP and CMP pch. Then HDMI can works 
>> properly on rkl.
>> 
>> v2: update patch based on latest dinq branch.
>> v3: update ddc table for RKL+TGP sku.
>>     RKL+CNP sku will load cnp_ddc_pin_map[] setting.
>> 
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Aditya Swarup <aditya.swarup@intel.com>
>> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2577
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c     | 16 ++++++++++++++--
>>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  2 ++
>>  2 files changed, 16 insertions(+), 2 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c 
>> b/drivers/gpu/drm/i915/display/intel_bios.c
>> index 4cc949b228f2..4de991bafd10 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -1623,6 +1623,13 @@ static const u8 icp_ddc_pin_map[] = {
>>  	[TGL_DDC_BUS_PORT_6] = GMBUS_PIN_14_TC6_TGP,  };
>>  
>> +static const u8 rkl_pch_tgp_ddc_pin_map[] = {
>> +	[ICL_DDC_BUS_DDI_A] = GMBUS_PIN_1_BXT,
>> +	[ICL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
>> +	[RKL_DDC_BUS_DDI_D] = GMBUS_PIN_9_TC1_ICP,
>> +	[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_10_TC2_ICP, };
>> +
>>  static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)  
>> {
>>  	const u8 *ddc_pin_map;
>> @@ -1631,8 +1638,13 @@ static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)
>>  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1) {
>>  		return vbt_pin;
>>  	} else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
>> -		ddc_pin_map = icp_ddc_pin_map;
>> -		n_entries = ARRAY_SIZE(icp_ddc_pin_map);
>> +		if (IS_ROCKETLAKE(dev_priv)) {
>> +			ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
>> +			n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
>
>It's probably best to just keep this at the top-level of the if/else chain rather than nesting.
>
>        ...
>        } else if (IS_ROCKETLAKE(dev_priv) && INTEL_PCH_TYPE(dev_priv) == PCH_TGP) {
>                ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
>                n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
>        } else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
>        ...

Thanks, Matt! I will modify the code like this.

>
>The RKL+CMP pairing will still fall through to the PCH_CNP case properly if we do this.
>
>Also, I think we still need an update to rkl_port_to_ddc_pin() to handle the CMP case properly when the VBT doesn't specify a valid pin to use with the output.  I.e., the final return should be
>
>        return GMBUS_PIN_1_BXT + phy - 1;
>
>since by default CNP/CMP's DDI-B should start with an input to the mapping table of 1 rather than 2 (according to bspec 20124).
>

So, it looks like we need additioal patch to fix it. Do you know who will help on this? Thanks!

Best regards,
Shawn

>
>Matt
>
>
>> +		} else {
>> +			ddc_pin_map = icp_ddc_pin_map;
>> +			n_entries = ARRAY_SIZE(icp_ddc_pin_map);
>> +		}
>>  	} else if (HAS_PCH_CNP(dev_priv)) {
>>  		ddc_pin_map = cnp_ddc_pin_map;
>>  		n_entries = ARRAY_SIZE(cnp_ddc_pin_map); diff --git 
>> a/drivers/gpu/drm/i915/display/intel_vbt_defs.h 
>> b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> index 49b4b5fca941..187ec573de59 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> @@ -319,6 +319,8 @@ enum vbt_gmbus_ddi {
>>  	ICL_DDC_BUS_DDI_A = 0x1,
>>  	ICL_DDC_BUS_DDI_B,
>>  	TGL_DDC_BUS_DDI_C,
>> +	RKL_DDC_BUS_DDI_D = 0x3,
>> +	RKL_DDC_BUS_DDI_E,
>>  	ICL_DDC_BUS_PORT_1 = 0x4,
>>  	ICL_DDC_BUS_PORT_2,
>>  	ICL_DDC_BUS_PORT_3,
>> --
>> 2.17.1
>> 
>
>-- 
>Matt Roper
>Graphics Software Engineer
>VTT-OSGC Platform Enablement
>Intel Corporation
>(916) 356-2795
>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
