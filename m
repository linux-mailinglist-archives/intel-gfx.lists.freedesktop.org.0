Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3BCE3DADFE
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jul 2021 23:02:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E0446EE75;
	Thu, 29 Jul 2021 21:02:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D44B6EE75
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jul 2021 21:02:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10060"; a="212966528"
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="212966528"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2021 14:02:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,279,1620716400"; d="scan'208";a="664554219"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by fmsmga006.fm.intel.com with ESMTP; 29 Jul 2021 14:02:28 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 29 Jul 2021 14:02:27 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.10 via Frontend Transport; Thu, 29 Jul 2021 14:02:27 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 29 Jul 2021 14:02:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=foGk8aPpRqK1IYMam87mvvcFjNpcn3jal/BTazplDy+4SHEoEcdB+d+sgCOIaQTkLvGYAap0vCJZWPplyLbGGs1uVa1RRTTZ/5YSNOiNHH0Wgo7hNAvPC5FALT8+8A5Pq7bwrIeilGD7n7sfgrKlI6vc1huTq02XHNb1AV1BTWiDh6vaoBzfQeILQ3VBheaXetJu21xgT/cwWrXw7L7NZTkssdcZlud3McMtk0LIhyUpRcj/7K7N+YoS1TVP7RJFlB2522M58V48X05YGVlKF19QKVpvjChzmAWhoCT1rbc4ww61e/pw5viNxC4ID6yh1e0XzM+Wtdp7hLpNdwMLTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0lq+zeTePoBHKBHBU0d4RFSTZv7UlshFRfgSlepgSt0=;
 b=KEEZ4vLYxi2bwscIBHJk6zqRtBzVBaGfIGyGs9GJeX4Op+/yELLMmnU3AWiPSWGm1KtohOZjNiFtym7LkXrG5BDC7WXmPcLKXzuwmxBEGnEc65GFsKdQH4AGhcloplc6VLO5JPw/gS/OicUwUCDn9BC3CQNnWcFceoekBOjbSDmF1DjYYe/qt/HbW2R6KHTnHLN2NpJEuDMYSwuxSBZiyKlClOuDzXcQlYScHK8a+meSioI2JUVCmoOU1PeHUf65oUnb8U4rlpP0HpvN0ArLxhp5/DPOZXSjdAl6v0R+nfLVndA1cE3+h3jwIbUAyMeDCmrmB4DeSEYlILR95t+3hA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0lq+zeTePoBHKBHBU0d4RFSTZv7UlshFRfgSlepgSt0=;
 b=eMxHQFwLJJPnK1Dm7XBBpmVKbCjHXctjf+FKsfeYD5NrLZxGoWxahhmp7kju9LlnIiy2apqHpDGTAwm0i9m2c9nUlyjyZrrzQOrgUR/O/UQwcYPqozdLIYM/7BoYrDpNWa6Z2zBJLFAsTBk64/Jl5BuvlGRf077Mo2ALMWdbXDQ=
Received: from MN2PR11MB4661.namprd11.prod.outlook.com (2603:10b6:208:26b::16)
 by MN2PR11MB4333.namprd11.prod.outlook.com (2603:10b6:208:195::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21; Thu, 29 Jul
 2021 21:02:26 +0000
Received: from MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::f97a:a66f:73be:c044]) by MN2PR11MB4661.namprd11.prod.outlook.com
 ([fe80::f97a:a66f:73be:c044%5]) with mapi id 15.20.4352.033; Thu, 29 Jul 2021
 21:02:26 +0000
From: "Yokoyama, Caz" <caz.yokoyama@intel.com>
To: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/6] drm/i915: Re-use gen11 forcewake read
 functions on gen12
Thread-Index: AQHXhDyGU15XeYzPXk6PbTxyGskbeKtacZUA
Date: Thu, 29 Jul 2021 21:02:25 +0000
Message-ID: <8681d683a9b6f17341fe76d8f595a19dadeee059.camel@intel.com>
References: <20210729054118.2458523-1-matthew.d.roper@intel.com>
 <20210729054118.2458523-3-matthew.d.roper@intel.com>
In-Reply-To: <20210729054118.2458523-3-matthew.d.roper@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 71a02dea-facf-4154-a1dc-08d952d42b42
x-ms-traffictypediagnostic: MN2PR11MB4333:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB433330E4AEAF86E624EF20B89FEB9@MN2PR11MB4333.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4xsrADBI3ndWVG8g/jpcEzjxbUumSWwDESukP+jZVjV64M5AjlUidZeuA84lRIGNJp+gf1gJipfbE2AxcODfz5v2mak6Q+4A4JQwHepSVlCX1iKNcSugFRyNrt3kiKbNBDPsBGkg81SEXEqViBAgo9s7SZAQI/1L5UIoci4lCvf6uQ4hy+B5hTm8Zue5QAS2AEZynaWHuYZQXbxJhsUVq0g89K5645nHiIEg0HlaLG5Cp5tnlDBk+MUwZz3N3Cb+/yu7hSed3CMAeEQlvNJGqbFlItryknjMPqadLmuj1MVFHVREEsaSFSziUh8XUJB/nUWUuiS8J0rWVRAiOko2pEeRS1liptskDVJzjHzyG4apU7MlGUekRbgEqmjpdaPYMRYvr5NMAMqWDJdYd17CBMWeUjBrDeX8JW3ikJkepbHQqWN+Noks36Qh7VW1lUEpo9eahLO20DsiPleumkzzNDiqCPDtnAs8oniSBsYINDt/oHYLcscVnMopt362lpEndh2VetKNJJuI2wC3ip0eICfAlp6T0Wi3Z4gBZmSXWnX8dGyCPNKm8a6eRdkrTyEm6mC7Fcu0808xVR9yNEI3sOG/ICWSrXLiAVmelXYFDAWAect30vOmza8RY6Y2c09nVEpDMU16kYWek38Yp9dmvrwmbQkG0EFMbs6n+qFh/7Me7PM381mQ3IEcB+ak4Celek40QyR3VXsSihCGwhwC8Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN2PR11MB4661.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39860400002)(136003)(376002)(366004)(396003)(346002)(6506007)(8676002)(6486002)(83380400001)(38100700002)(26005)(71200400001)(122000001)(38070700005)(2616005)(36756003)(6512007)(64756008)(110136005)(76116006)(66476007)(66556008)(66446008)(91956017)(66946007)(2906002)(478600001)(316002)(8936002)(86362001)(5660300002)(186003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SFppNEZWWXk0OVFxTmtkT2VHMFozZlJrWnFneUZ4bmJmM2IvWGsrd05sMGUv?=
 =?utf-8?B?WjRHV0c5NEkwbXNiU2lRaVVDRDZScHpKdkNveGpQNG9xTm1QaHJQc044YUhr?=
 =?utf-8?B?QWpWQ2w2VHJTb05lRXQ3R01zazZWdkVjRk00K3FzWE1aUUVGM29YK1N0K1VU?=
 =?utf-8?B?ek0xSlMrMG1wS2ZyZ0hJenJZTkh2SGdHMWFBOTB3d3UxVDdwQmhueWk1WGRP?=
 =?utf-8?B?WFhoV3p4b1VDdWo4bkc4NnJuMVk1M3VwUkx2TzduWG52bzdiMk5MaHg0MDlD?=
 =?utf-8?B?STlrNDhRRzAxZnhsR3Zjdk5ReXpyRE9nUUtGSHoxaHBRN0VCUkFUR2h0Rkl2?=
 =?utf-8?B?Tm1VN3lmK2NGeW92eW5HVXRKM2YyTCtYcmpOTEE0Qm45aUN4OFZqRGhxOVhV?=
 =?utf-8?B?M0QwdXdRM2pBQVZMVFpiTytrZXlycTlsTFRjQW5lSVFPNWVnU0hHSW1Xa3Nx?=
 =?utf-8?B?emtTZHBpTDU5cnVaQzdWQkRhTnhhY0ZxUGdiRXllTk9FbjEyU1dwNVZLb2Ix?=
 =?utf-8?B?d2lFQmkrYkpaWVRBK0JlNnFERUpwR0JwbkJNdFVnQ0xUWXpJQXVrR1RhcFN1?=
 =?utf-8?B?NHlvZnpSc1lnTThSd0xIZUR3VlNRVS9UM0NvMWlSTnlMbW43VkkzTitzZVdP?=
 =?utf-8?B?enZUR0o4Um8zdzdDckRjd2dMQjd3RllGRDc3NVJseExUT25MWUdKSm5RcHJl?=
 =?utf-8?B?dmRuYjJ3QXBJMTlzb1cxN0ZHUnpES0hDaTQ3aXo4VFJqbjViRE9KQlhuTExO?=
 =?utf-8?B?Y3BTT2xENEpWc20zNU1HMll3aWFmMVVXL05KODhYeTQwYnBXckI4Y3E4MlZR?=
 =?utf-8?B?Tzllbm5MV2Jka1AyQlJDcEhrdXMzWXRUQXpDcnZjQnEwVlo3YUZuS3VFbVBN?=
 =?utf-8?B?YXBRS1hmUDYzZlFSUU9jd3V5cnpuNGswdXBRanpiQTY1ODlncDhEUmw3NXdK?=
 =?utf-8?B?U3BSZCt1TXVrTmQ2K1Y4a09xR3EyUzBNaW5rTnhBbWJCbXA1cXlkRk1LajJD?=
 =?utf-8?B?VFBWSURpbDlaMlBGTWx4KysvU3Z4WFJubDVtdjVEVDdIVmlTUXVNWjNJZmxK?=
 =?utf-8?B?UE83cTU5VFVZa1BpMVA4V0hQQ0wrWVBDZnJhbWpZL3M1cmRVcTBqcXgyM1V6?=
 =?utf-8?B?NmlKRHdQc1VqbDB3U0FCNXhuUzJyL2djQUZUa0o3MkRybWM3dnRoYmFTSkNk?=
 =?utf-8?B?K2NxbFhnMWNuNVB6YVhYSm05ZzlBcWt4akFEVnQ1U2NITUg1MGdUZkpwVGdQ?=
 =?utf-8?B?bVdaNW1qZHVqWXpGdiswZXBKcm05QkE3YXBpaGJ0V2J4UjZ3ZldvWVlZOEJY?=
 =?utf-8?B?bnhDN3ordlFJYTNZMFAyNlpSVUVma1BicE8reHM4ZVptZHFXQnE2QjZ5aEdW?=
 =?utf-8?B?cEdLVm53TXd4VHI0bDVrZVZLZW5yMDZQb3crNnYwcmpUU0I0bG9NaXVHTTJI?=
 =?utf-8?B?ZE9PeFZjcnVITHNJRmJQODMzTTV5aWtoUHphOXFJYUdKcmNydzhMMmJXemFW?=
 =?utf-8?B?ZU5YakNmWDY1SitqRlV0UXBjQTNlNW1ST3hFYzdLa0lzaEVrcVlRYnpvRDN5?=
 =?utf-8?B?NFQ5QWlIZDFNWEplK2xUZk9UV2g2RitobHExalg2aVlIUlQ2M0pRVk1zT0NM?=
 =?utf-8?B?K0lLWmZ3UXhjalR6am9PNkVtUUdUSC91Q0ZCYm9vZGowZUkxeWVDcDdVTjBO?=
 =?utf-8?B?SS8rWW9lQTR3b0NjK2J0bm9UZWNWL2ZLa1JHWWZyd2ZEZFlpSm96ZnJyY3Jk?=
 =?utf-8?Q?6Og62spB6d7W5Exg2iPWtS+iOTq9Id+AcLDujOr?=
Content-ID: <AE48CF3052AA154C84E2DE15E86FA747@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN2PR11MB4661.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71a02dea-facf-4154-a1dc-08d952d42b42
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Jul 2021 21:02:26.0224 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YOJul8wIvOAwnwNQEJ0dKQ2ahZiMcldSb1YWwf3p8rRGJezvv5/eI0H2uGO6iuz4n01Cubzh2ps3EwymPAgyEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4333
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/6] drm/i915: Re-use gen11 forcewake read
 functions on gen12
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

Reviewed-by: Caz Yokoyama <caz.yokoyama@intel.com>
-caz

On Wed, 2021-07-28 at 22:41 -0700, Matt Roper wrote:
> The forcewake read logic is identical between gen11 and gen12, only
> the
> forcewake table data (which is tracked separately) differs; there's
> no
> need to generate a separate set of gen12 read functions when the
> gen11
> functions will work just as well.
> 
> We'll keep the separate write functions for now since the generated
> code
> directly references different shadow tables between the two
> platforms.
> 
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> ---
>  drivers/gpu/drm/i915/intel_uncore.c | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/intel_uncore.c
> b/drivers/gpu/drm/i915/intel_uncore.c
> index bca548c81572..ea910f7ee635 100644
> --- a/drivers/gpu/drm/i915/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/intel_uncore.c
> @@ -945,9 +945,6 @@ static const struct intel_forcewake_range
> __vlv_fw_ranges[] = {
>  #define __gen11_fwtable_reg_read_fw_domains(uncore, offset) \
>  	find_fw_domain(uncore, offset)
>  
> -#define __gen12_fwtable_reg_read_fw_domains(uncore, offset) \
> -	find_fw_domain(uncore, offset)
> -
>  /* *Must* be sorted by offset! See intel_shadow_table_check(). */
>  static const i915_reg_t gen8_shadowed_regs[] = {
>  	RING_TAIL(RENDER_RING_BASE),	/* 0x2000 (base) */
> @@ -1617,7 +1614,6 @@ __gen_read(func, 16) \
>  __gen_read(func, 32) \
>  __gen_read(func, 64)
>  
> -__gen_reg_read_funcs(gen12_fwtable);
>  __gen_reg_read_funcs(gen11_fwtable);
>  __gen_reg_read_funcs(fwtable);
>  __gen_reg_read_funcs(gen6);
> @@ -2091,7 +2087,7 @@ static int uncore_forcewake_init(struct
> intel_uncore *uncore)
>  	} else if (GRAPHICS_VER(i915) >= 12) {
>  		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen12_fw_ranges);
>  		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen12_fwtable);
> -		ASSIGN_READ_MMIO_VFUNCS(uncore, gen12_fwtable);
> +		ASSIGN_READ_MMIO_VFUNCS(uncore, gen11_fwtable);
>  	} else if (GRAPHICS_VER(i915) == 11) {
>  		ASSIGN_FW_DOMAINS_TABLE(uncore, __gen11_fw_ranges);
>  		ASSIGN_WRITE_MMIO_VFUNCS(uncore, gen11_fwtable);
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
