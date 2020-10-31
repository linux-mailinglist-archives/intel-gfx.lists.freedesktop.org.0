Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D142A1330
	for <lists+intel-gfx@lfdr.de>; Sat, 31 Oct 2020 03:55:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AAAF6E0D2;
	Sat, 31 Oct 2020 02:55:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 594D46E0D2
 for <intel-gfx@lists.freedesktop.org>; Sat, 31 Oct 2020 02:55:40 +0000 (UTC)
IronPort-SDR: yZqkYyFWnuWmJj+HyiTTnXtQ6UpkSoa1Jjxz4llVj5kDypglwUGDlAK9yBbsgSAwMbLddZsY+o
 Yv6SG4lMYqSA==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="168823758"
X-IronPort-AV: E=Sophos;i="5.77,435,1596524400"; d="scan'208";a="168823758"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2020 19:55:39 -0700
IronPort-SDR: Ea/G9zWtYN8+wftj4HONojkkg6cQ7O0Si/+WFdAd4FefOSv7+IMgWJkPuhDncnIU60RLxEY3Op
 LHNl4pcf5FZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,435,1596524400"; d="scan'208";a="356774673"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 30 Oct 2020 19:55:39 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 30 Oct 2020 19:55:39 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 30 Oct 2020 19:55:38 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 30 Oct 2020 19:55:38 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (104.47.45.58) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.1713.5; Fri, 30 Oct 2020 19:55:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=N3vrAsdOBycnVff4W19Ju8hC4VENTmu/rq9REEDB/D/dGmiLJJA6d4AJ1Avg/UwhigknldCzrj9dvV4iIksc/0l9O/g0+rNU9TOQUPgVuOAq/18HIyjArNUfs1unTp9Tluui9hH5wU9UnLRUnjxKY8cjGmZvzA93ADpMe4837cK/CTFDwyr9oRwv3jImj1qjuMHQf45PPp32NaenJc0MSKM1L2/LY0PUCzBnZLn3RPOZMfjJYuTl51xHNIyvJcDI6MWHR8M4sxlKKSpymmECddkKyYj8c76RxZd8ihikG5t8t4bH2FrBhwovG6x1zPuR1ihiC9q2UOfdbLuZBauAwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rSHW7tjb4RZ8pGHylkywcxCpYqFbqibVmOfzAhRHJFM=;
 b=dGXphDidXhaH5rW4XptFlPmvxHA1ZRhnsGV7trFav87fpt98DzPLKVvQYHVN6l8vkBu8EGMc7aRtP/cNiZGNHKtuW+c+kpyPz32M/E7GTZYZ57ajNVtZov5s/UtE9uxBKlwig/kHj4x3aYGBq17nb0CKFUvpgWaN4QT4kZgAxwaFLZrIk10NgaBQUamCHXTB50CyGxwO6VBFhGtr4mc6QnS7KxxZjwl0lF/sxKERJV9Ek1vv4iKLDxDzb2MldHiNDMY4bkQ8FgVBgaWcOaas2J31mmriWI9gRo5Q99e9/Xou0lw1GMQX7JRKFU5jhmHDNYTXk9Qfu1AnwuaFfW0UlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rSHW7tjb4RZ8pGHylkywcxCpYqFbqibVmOfzAhRHJFM=;
 b=mDk2q8ZcmvLppuqQMs/3F9w150E8wnLgn5dY/q9AYuKGgfPwRekOnUIjW3HGwRoC9rV7tJY8hNqlt/sJs/O+TJ3MwGQJFRz4ywzglhI73kIrxFEfyiXBBZEIM/LnSYrDOWb0RPmmizCpjfyr5yHY1n3VYNhtsmRhG0ewfnwT4AA=
Received: from BY5PR11MB4307.namprd11.prod.outlook.com (2603:10b6:a03:1bd::27)
 by SJ0PR11MB5165.namprd11.prod.outlook.com (2603:10b6:a03:2ad::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3499.18; Sat, 31 Oct
 2020 02:55:35 +0000
Received: from BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a]) by BY5PR11MB4307.namprd11.prod.outlook.com
 ([fe80::f5ac:283:9981:823a%7]) with mapi id 15.20.3477.028; Sat, 31 Oct 2020
 02:55:35 +0000
From: "Lee, Shawn C" <shawn.c.lee@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>
Thread-Topic: [PATCH v2] drm/i915/rkl: new rkl ddc map for different PCH
Thread-Index: AQHWrsHvNvOEGcYAYEeYF5tqIJuFZqmwaJsAgACa14A=
Date: Sat, 31 Oct 2020 02:55:35 +0000
Message-ID: <BY5PR11MB43074CA0CF93E3C6608FC83CA3120@BY5PR11MB4307.namprd11.prod.outlook.com>
References: <20201028144312.12520-1-shawn.c.lee@intel.com>
 <20201030134137.30867-1-shawn.c.lee@intel.com>
 <20201030173530.GO627052@mdroper-desk1.amr.corp.intel.com>
In-Reply-To: <20201030173530.GO627052@mdroper-desk1.amr.corp.intel.com>
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
x-ms-office365-filtering-correlation-id: ec742118-77d2-4e94-17ce-08d87d4870a8
x-ms-traffictypediagnostic: SJ0PR11MB5165:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SJ0PR11MB516518BDDA89259C54D66569A3120@SJ0PR11MB5165.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: PBFPeYPjhGDgxy4FFlqSzIGIVfj3DZyoQfUdqduNnVSrWJdjj1ctg/x4afN1utBNoUuzvG/c70eA3yFWYrPsKOPAK50H4W6VTlyaijBI1YGPRoYVzhk0BuemhMRMULwS50S5qHAcMAPw3K90WCSQdUDMr6FFMy4+fQR+VZYriJv99y5Rl1ZM3BxVQTQlhkRyVImOZsaCMEGeZ25JjtJK6osqDiVDdMIaDz+gFAQfm1g+hXzdSLz1pDhpV95efqworxYQfgjcOk0GySmPwaG63q5N84sMlLEeCTkzS3Yzh97FuqmXzBqt73H7EbshjJdjHgNYCM1S7CLZ3oi7UygiVJYVJc2EJS2bqkdWX+D1nudXkOzUWUDGv/vXZtIKhGqbcjRS57xIy2Xy+M5E9MYRMH7dAdqQ/msy97QNjYYozOg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BY5PR11MB4307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(396003)(376002)(39860400002)(346002)(366004)(66476007)(5660300002)(52536014)(71200400001)(66446008)(64756008)(54906003)(86362001)(26005)(66946007)(83380400001)(76116006)(66556008)(33656002)(6506007)(9686003)(186003)(8796002)(8936002)(2906002)(316002)(478600001)(966005)(6636002)(55016002)(4326008)(8676002)(6862004)(7696005)(226253002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 3Z13D31zyKLWikG5b+XmS4z0syktmjl5sre/JLM3ava7zxplxJpyRMrH1ij8rO10xQpvM8ysRP3ugo+xzjvleqi4pJci1edsMsU9k/YWNpcZSXUeG0fZTsKXbk0I78JwUWczbTqvCsWuU0aC41bvttQnsE/F2QLwfi7tuIWfi31Q/lPLvpDvzZXmZDbdfOQ+nM2sMIk1ubEG0T9/gPzbKGCdyjcPUymvAaSicOvq2vZlfPhxq53XXdbdrokJ7jHB7ny7N+gN+LKhJYFMzayPh94Um2TGAKugHONp3hfX+ZhtE3neY5btKcyxjRMJOqg9vgTkXpC4JfR8FPfMDF5prq9JZU0tr7rv+3p6whGRRATHL9ffMkgh/BvVJTyTv+h5LdpQXKmRftEriYd1Na73XgAcAj8ubIdt0emnQEg++d3WbaY4L7VD/Ind9elF/2b4Fqrx2EHA2uqOkqMRe6hVccLZvHtqvfDPqjhhci30F1gzC782MhmeOpY72pC5ISc0r5AV4313NKWgQWAcy89tII2dj3eGjcTbPzPVJXeAWNoowZyeaDyJjLp9AFOYqYprkTwtp7Z0hLFnpd5wmK0zV1bHuSvCBJeApYhlWu9dqeROFPpkwwSFnQV5Z1iGtMQBpeNO/qTTYJs55/rS6l59cA==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BY5PR11MB4307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ec742118-77d2-4e94-17ce-08d87d4870a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2020 02:55:35.1508 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QTlT331RQvI4mEEkgGVNjvfp+8wh3/jRAiDA0d1pPeZ+e3jRYCzUple2z1TYrccfucRCRYxFB1Ro+8j9dLIvYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5165
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
Cc: "Chiou, Cooper" <cooper.chiou@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On Fri, Oct. 30, 2020, 5:35 p.m., Matt Roper wrote:
>On Fri, Oct 30, 2020 at 09:41:37PM +0800, Lee Shawn C wrote:
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
>>  drivers/gpu/drm/i915/display/intel_bios.c     | 20 +++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_vbt_defs.h |  4 ++++
>>  2 files changed, 24 insertions(+)
>> 
>> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c 
>> b/drivers/gpu/drm/i915/display/intel_bios.c
>> index 0a309645fe06..ca9426e1768a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bios.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
>> @@ -1623,6 +1623,18 @@ static const u8 icp_ddc_pin_map[] = {
>>  	[TGL_DDC_BUS_PORT_6] = GMBUS_PIN_14_TC6_TGP,  };
>>  
>> +static const u8 rkl_pch_tgp_ddc_pin_map[] = {
>> +	[RKL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
>> +	[RKL_DDC_BUS_DDI_D] = GMBUS_PIN_9_TC1_ICP,
>> +	[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_10_TC2_ICP, };
>> +
>> +static const u8 rkl_pch_cmp_ddc_pin_map[] = {
>> +	[RKL_DDC_BUS_DDI_B] = GMBUS_PIN_2_BXT,
>> +	[RKL_DDC_BUS_DDI_D] = GMBUS_PIN_3_BXT,
>> +	[RKL_DDC_BUS_DDI_E] = GMBUS_PIN_4_CNP, };
>> +
>>  static u8 map_ddc_pin(struct drm_i915_private *dev_priv, u8 vbt_pin)  
>> {
>>  	const u8 *ddc_pin_map;
>> @@ -1630,6 +1642,14 @@ static u8 map_ddc_pin(struct drm_i915_private 
>> *dev_priv, u8 vbt_pin)
>>  
>>  	if (INTEL_PCH_TYPE(dev_priv) >= PCH_DG1) {
>>  		return vbt_pin;
>> +	} else if (IS_ROCKETLAKE(dev_priv)) {
>> +		if (INTEL_PCH_TYPE(dev_priv) >= PCH_TGP) {
>> +			ddc_pin_map = rkl_pch_tgp_ddc_pin_map;
>> +			n_entries = ARRAY_SIZE(rkl_pch_tgp_ddc_pin_map);
>> +		} else {
>> +			ddc_pin_map = rkl_pch_cmp_ddc_pin_map;
>> +			n_entries = ARRAY_SIZE(rkl_pch_cmp_ddc_pin_map);
>> +		}
>>  	} else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP) {
>>  		ddc_pin_map = icp_ddc_pin_map;
>>  		n_entries = ARRAY_SIZE(icp_ddc_pin_map); diff --git 
>> a/drivers/gpu/drm/i915/display/intel_vbt_defs.h 
>> b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> index 49b4b5fca941..2df009996128 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vbt_defs.h
>> @@ -319,6 +319,10 @@ enum vbt_gmbus_ddi {
>>  	ICL_DDC_BUS_DDI_A = 0x1,
>>  	ICL_DDC_BUS_DDI_B,
>>  	TGL_DDC_BUS_DDI_C,
>> +	RKL_DDC_BUS_DDI_B = 0x1,
>> +	RKL_DDC_BUS_DDI_C,
>> +	RKL_DDC_BUS_DDI_D,
>> +	RKL_DDC_BUS_DDI_E,
>
>These definitions don't really make sense; according to the VBT definition in the bspec (20124), the symbolic names map to different VBT input values depending on which PCH is paired with RKL.  E.g., VBT value of "2" refers to PHY-C when using a CMP PCH, but refers to PHY-B when using a TGP PCH.
>
>From what I can see, RKL+TGP is already handled properly today in the code and doesn't need any special handling.  The patch here would actually break it, because it would associate the wrong pins to outputs (and fail to associate anything at all with PHY-B [vbt value 2]).
>
>For RKL+CMP, we do need a change to the code to pick valid output pins in the range 1-4 rather than 1,2,9,A, but it doesn't look like the mapping being added here is quite right for that either.  CMP is a derivative of CNP, so I believe we should be following the "CNL-PCH"
>column of the VBT definition.
>
>
>Matt
>

Hi Matt, 

Thanks for your comments! Below is EFP configuration from vbt. And we know there is no real port "C" on physical hardware with TGP-PCH.
EFP1 : DisplayPort-B
EFP2 : HDMI-C
EFP3 : HDMI-D
EFP4 : no device

Below messages came from customer board with latest drm-tip kernel (5.10.0-rc1+). Port D/E will be mapped to ddc pin 0x3/0x9 according to icp_ddc_pin_map[].
But port D/E should map to 0x9/0xa on TGP-PCH.
Oct 23 18:39:14 ubuntu kernel: i915 0000:00:02.0: [drm:intel_bios_port_aux_ch [i915]] using AUX D for port D (platform default)
Oct 23 18:39:14 ubuntu kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCODER:201:DDI D]
Oct 23 18:39:14 ubuntu kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Using DDC pin 0x3 for port D (VBT)
Oct 23 18:39:14 ubuntu kernel: i915 0000:00:02.0: [drm:intel_bios_port_aux_ch [i915]] using AUX E for port E (platform default)
Oct 23 18:39:14 ubuntu kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCODER:205:DDI E]
Oct 23 18:39:14 ubuntu kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Using DDC pin 0x9 for port E (VBT)

This is what we got after applied this change.
Oct 28 18:18:47 ubuntu kernel: i915 0000:00:02.0: [drm:intel_bios_port_aux_ch [i915]] using AUX D for port D (platform default)
Oct 28 18:18:47 ubuntu kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCODER:201:DDI D]
Oct 28 18:18:47 ubuntu kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Using DDC pin 0x9 for port D (VBT)
Oct 28 18:18:47 ubuntu kernel: i915 0000:00:02.0: [drm:intel_bios_port_aux_ch [i915]] using AUX E for port E (platform default)
Oct 28 18:18:47 ubuntu kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Adding HDMI connector on [ENCODER:205:DDI E]
Oct 28 18:18:47 ubuntu kernel: i915 0000:00:02.0: [drm:intel_hdmi_init_connector [i915]] Using DDC pin 0xa for port E (VBT)

Best regards,
Shawn

>>  	ICL_DDC_BUS_PORT_1 = 0x4,
>>  	ICL_DDC_BUS_PORT_2,
>>  	ICL_DDC_BUS_PORT_3,
>> --
>> 2.28.0
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
