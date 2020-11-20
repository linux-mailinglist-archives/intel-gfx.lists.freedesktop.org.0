Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAFE2BA044
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Nov 2020 03:21:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BCE46E864;
	Fri, 20 Nov 2020 02:21:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5873D6E864
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Nov 2020 02:21:07 +0000 (UTC)
IronPort-SDR: WkF6fCzvwMwt6UnFo8XoPP4Q8OgvGacPbFWyOaV7pqQvG47DDUHhkhcLN9AMBevnLaO+MLmeeM
 wP5aYlbVr6VQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9810"; a="159170906"
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="159170906"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Nov 2020 18:21:06 -0800
IronPort-SDR: OrgDmaSQmAcyiw5emQKnQRJY7RcFI+fqDbmml5prw/OZikm1LjU87zsx6YJmE29Un6JkX2D6CB
 ThzfPyl36OXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,354,1599548400"; d="scan'208";a="360264055"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 19 Nov 2020 18:21:05 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 19 Nov 2020 18:21:05 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 19 Nov 2020 18:21:05 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Thu, 19 Nov 2020 18:21:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FRFzViDA3ROkGHRM2FOPNdo84soD4WKHr70gXxL7BcgICZgt7yy1J1HbByWmZ0sBtAPoDA1xRUsQdiof1/13adMH9ciEnYy/Cil9eAM+EBr7iS57mm7V8bFvNta/hDn7bDaOWZd79OusnS86S0nD/rennuWUBwmpk92B6iT/cw1OmMEgVTG2qycx0AZkgng+JZ8Rjv3L4XccjBEtAHX/4TqLJpqOefup09WDPzng1Ff4AViNa3xRqx/WuRCyvf2gV0jK+TKhtQx4RiWnRh0J6yTaJIoM2AmZbxTdpqgiMPWN6ugalhEbEuN7UJJKfN1+csTtQbAhMcXvWfFXD1/k2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RtdzbiqWOExruSxuX8s2z/1Y63iy75JdQm5GmvupttQ=;
 b=JxG4YEoYksptkq1ePRPcv73lW8+M9l3cdaaFS3/QO9x6+spM2dXVXOwdu75C0t6ocwjqF3udLVwaJa2z7ov6wK9+jvzLVRKIYjrVYtEgmyXukYqrNCt8qrxOtMq1h7W/ojz/qrVcyD0wWxZjKrNBS69Gd6A7aC/4f7R5TdsZS7/I20wjIMM06sKEJHXq9L8koF8bfekEKH2fCGdYwXNB1rCWqg8pZMLXqLtAm+siYaSHT+iXmbp79zmx9uCWcHYpTwKfMM4w+UEQsw9QT5ekAv+VnxPDkCuYrpY6FGNzpbdmlNouMZ3j6yyHoxfMERyxqIYFWIrp2Ibu4cusPesUaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RtdzbiqWOExruSxuX8s2z/1Y63iy75JdQm5GmvupttQ=;
 b=bAsi6HTUD2F6jepJZxg1mgbr1Klg/NegWwg6dPBo/dbUxwGOtVjkxchQ2JT3p/NYOw6i3mNsJU5Bn08+3CYmWOIcFrAfKcDISDBw62R7zfzXAV9fyykLal+mkYJWzQbw7ZKwgl9PmGrWlJECXXwlFg3xVjTwIovF8CBgRi96kIU=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by SJ0PR11MB4877.namprd11.prod.outlook.com (2603:10b6:a03:2d9::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3589.22; Fri, 20 Nov
 2020 02:21:03 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a%7]) with mapi id 15.20.3564.033; Fri, 20 Nov 2020
 02:21:03 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH v5] drm/i915/rkl: new rkl ddc map for different PCH
Thread-Index: AQHWvOz9dXz+KWleQEG8SHlh6B3YRanQI+SAgAAn2JA=
Date: Fri, 20 Nov 2020 02:21:02 +0000
Message-ID: <BY5PR11MB43072207412FC3A08BB5D3FAA3FF0@BY5PR11MB4307.namprd11.prod.outlook.com>
References: <20201028144312.12520-1-shawn.c.lee@intel.com>
 <20201117142629.28729-1-shawn.c.lee@intel.com>
 <20201119235117.GY2099117@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20201119235117.GY2099117@mdroper-desk1.amr.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
authentication-results: lists.freedesktop.org; dkim=none (message not signed)
 header.d=none; lists.freedesktop.org;
 dmarc=none action=none header.from=intel.com;
x-originating-ip: [118.167.7.251]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 66c6361e-e57b-480a-6569-08d88cfaedc4
x-ms-traffictypediagnostic: SJ0PR11MB4877:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB4877ABC528E1B8ADE45BD7E3A3FF0@SJ0PR11MB4877.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:669;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZZWxCRdSbKGue9IHEijEeeLvERUUxOdIfkiVrmEIdDvP0b16WaH9Q8CtwL4NJeQ7X8v/r+nWgh3IvA34+r9zFHiMihpWwF4UjOw6F+bYxf+Lw1IvmhJLcFFHfbmxWCbtduT0RvJCdTEtvy/6Ft3KsJDDT0px3UkJeA6rwphfJGTNAshiFv3JxRoIZfQz1wu5QrUAiKPNqA/I4JmVdSd5zYNzE4uokZcFH5793qW7xPW0XaY2RWxD8Maw9cyl0kNtwPhcKndCOUoIpcXSSyRlfMzXa8jgCovmXezD/lubzymPnwsBoWWhWytEt960NixE6ooj/GR6ReFOO3PeCFKH+MS1tDp2TvPx6B11sikDGYhU6jRfp04BBCbDea3uLKygG+ehROR4VnSeQuNzwrw3oEgBberygqx6AwpjECUZZ34=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(396003)(39860400002)(376002)(346002)(33656002)(6506007)(6636002)(55236004)(8796002)(8936002)(8676002)(86362001)(4326008)(54906003)(110136005)(55016002)(316002)(71200400001)(83380400001)(9686003)(966005)(7696005)(52536014)(478600001)(2906002)(76116006)(66946007)(66556008)(64756008)(5660300002)(66446008)(66476007)(26005)(186003)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: IWm0sYdyHKadGIwXplsZ3NfQpGiHtovBdIf5JOgb9SPrOsYwss0UnMMVw2qYxVD+6j2iVOy0i7Z/2116HMAFjAcI3EaD6imvXKcXhzYr5oO6osm/7Entas8Y6d5bIS+xp6E3mVeIRFIuLgN00A2mLDKC4oyX46GonK9HBNDYsho38y05gTy5Zp+P4NQ0b8wyXyq3A+LhvRpvscDlzGGqqdkGsh+2yOrEyWgpJZWyxsekKu7Gb+q+l8LFVl/AEs9DSGtLkG1ECAcnDLWz5whHY6GCioEGuq8n1EFnawgxliio3PiUjlaP5KUFpZnHCU87g/OHNXiXvr8VknlwpLEtLxjke0BME2ZAPcod2EcSh6b14yKUzrkY1q1pyp2J+6zwEoYaxrWouW6RytAbHMpxOiSjc5lDIkYwkj7MrWZ7ULGyoA00ReUr+P5pLvba3/lGuHAK0HJ1i1rNZvZcczSbscRcn5BAWvxx6h4z2z2ErG6a+kLbFInHUVUlpiuHbBif/OPPe2HKgvk4MTt+IY1Po3JcSHVdKR472hVTDqZYIPjL7EjR4L95qY+Ylgvqv8pxSqOVyZ9C3LZLH5ABlnMAN0K8mRUmMbiwuIM/N+itmfB06odcfFxnIRPyEGuHM2DyC4z/JKB7/LE2WQL6K9OH8A==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66c6361e-e57b-480a-6569-08d88cfaedc4
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Nov 2020 02:21:03.0010 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: jA4iSaQtPmA21zLg5JujuS53zIoupfuG2SGgQYLgLB0qGoobqyr20vWKaDzJoOhps7GGM+1sS70+CgjOLJS5ig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4877
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5] drm/i915/rkl: new rkl ddc map for
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
Reply-To: "20201117142629.28729-1-shawn.c.lee@intel.com"
 <20201117142629.28729-1-shawn.c.lee@intel.com>
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov. 19, 2020 at 11:51 PM, Matt Roper wrote:
>On Tue, Nov 17, 2020 at 10:26:29PM +0800, Lee Shawn C wrote:
>> After boot into kernel. Driver configured ddc pin mapping based on 
>> predefined table in parse_ddi_port(). Now driver configure rkl ddc pin 
>> mapping depends on icp_ddc_pin_map[]. Then this table will give 
>> incorrect gmbus port number to cause HDMI can't work.
>> 
>> Refer to commit cd0a89527d06 ("drm/i915/rkl: Add DDC pin mapping").
>> Create two ddc pin table for rkl TGP and CMP pch. Then HDMI can works 
>> properly on rkl.
>> 
>> v2: update patch based on latest dinq branch.
>> v3: update ddc table for RKL+TGP sku.
>>     RKL+CNP sku will load cnp_ddc_pin_map[] setting.
>> v4: modify the if/else judgment to avoid nesting.
>> v5: fix typo in v4.
>> 
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Cc: Aditya Swarup <aditya.swarup@intel.com>
>> Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: Cooper Chiou <cooper.chiou@intel.com>
>> Cc: Khaled Almahallawy <khaled.almahallawy@intel.com>
>> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/2577
>> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
>
>Do you plan to follow up with a separate patch to fix the CMP handling in rkl_port_to_ddc_pin that I mentioned previously?  I want to make sure that part doesn't fall through the cracks.
>

Do you mean the modification like this in rkl_port_to_ddc_pin()? If so, I will commit a separate patch to fix it later.

return GMBUS_PIN_1_BXT + phy - 1;

Best regards,
Shawn

>
>Matt
>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bios.c     | 10 ++++++++++
>>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  2 ++
>>  2 files changed, 12 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c 
>> b/drivers/gpu/drm/i915/display/intel_bios.c
>> index 4cc949b228f2..cf2fba490b7b 100644
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
>> @@ -1630,6 +1637,9 @@ static u8 map_ddc_pin(struct drm_i915_private 
>> *dev_priv, u8 vbt_pin)
>>  
>>  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1) {
>>  		return vbt_pin;
>> +	} else if (IS_ROCKETLAKE(dev_priv) && INTEL_PCH_TYPE(dev_priv) == PCH_TGP) {
>> +		ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
>> +		n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
>>  	} else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
>>  		ddc_pin_map = icp_ddc_pin_map;
>>  		n_entries = ARRAY_SIZE(icp_ddc_pin_map); diff --git 
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
