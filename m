Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C661724AC9
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 20:07:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 019A010E14B;
	Tue,  6 Jun 2023 18:07:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D69910E14B
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 18:07:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686074846; x=1717610846;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YydFIfxX8U0Wt9zzsdJyy8xOzzjfDx1vBr8DXJCPatY=;
 b=fukbZJmrrF+cV3aobKTENkJh6qQ4xMKagT8AP0esDu31TzqrXCFV186h
 Vzh3TH29/1VHKpXjqUeP98XAhuRvlUnEkcEaHKEpqaDdXUn/bBxPQRz13
 u9XDB1Vj215syd3OndzPBmzUtVqkXgSS7XZxrrJfFm+lD/l/Nk8cCQDGt
 V2ATERVISTGwbNLbHzQyke/bUsg+8Z0BY8LvVPD79Bs3O2deryG+d+SDN
 4ynRuO026DWaLavME2cfF8WAJHwDeQQBfTthJ3hRclc6wBEdT0fnzx7fA
 WxffLjPAU4Hs1ONq4qNt6OSI2LcKDDx2I85ITvtzre3vRPo77p9hso+Bc w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="337121331"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="337121331"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 11:07:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="955880007"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="955880007"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP; 06 Jun 2023 11:07:23 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 6 Jun 2023 11:07:22 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 6 Jun 2023 11:07:22 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 6 Jun 2023 11:07:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jPwCZLW95ARjDVbM5al9eVywFAIujh9t+qWVuoIB8GpfNWkyERJprW1SbBLo7Og0WiNm7qz0PSNcXtzZ31m+zn5X+hfvIooppy8fb73vm+6RkVcKCXLWUubJT5Uz3dXHRdqWe3+Wius7eDtlfRrJCK0KJu5kbbTswq8ukpasf0mNmdzbTAotCNkcDw1e1xei0CTuzUyYlReJ+zKobAQSflU4HTPAfH3/ooOir47t5FzaM/30s0xiv1Zia/gSEVHKpNjN77RE9clx6mLBtT/4coC7qBkaVMpqGHpBOh06BhTnOlMGEniSI2xFwx5ga12hcZwI3UlMqP9GGjM4U1TMvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YydFIfxX8U0Wt9zzsdJyy8xOzzjfDx1vBr8DXJCPatY=;
 b=bGWbXtSeoU5pSkRX0O2KI8/BolJyTs508Ufc2TpCxuTpXdeCJfDhzT2eOfSA+EvVJONu9+xDAceIDONRJaodZcf+QfLyUj/BGOMqZydodVupUdtUWRVDhKWAGkyd6czfiIF3dUAiYulU40PfwLC48ZU3Wl6m6t4SoBQ7/vmFmw/X2eAjf0IuxCkh8Am0nT5pJ/Vdeb3EtL4lQT+jqTlSi361wG775SiACflCgD2g02RfoYMWKbBMi2HYrozrXzspyw4VF3J6ZOFMpMTJroyihaSTpnRUlavBJL+4Prcrhyq9mpJzyvFLB7qlzaTEIJ6uu9ZYQqpa5/UnN5Oil3NIRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH7PR11MB6030.namprd11.prod.outlook.com (2603:10b6:510:1d1::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Tue, 6 Jun
 2023 18:07:20 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::749a:b0c8:4930:5a2]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::749a:b0c8:4930:5a2%6]) with mapi id 15.20.6477.016; Tue, 6 Jun 2023
 18:07:20 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "dan.carpenter@linaro.org" <dan.carpenter@linaro.org>
Thread-Topic: [PATCH] drm/i915/gsc: Fix error code in
 intel_gsc_uc_heci_cmd_submit_nonpriv()
Thread-Index: AQHZmFAJBhtJ4PFcek6IoppIV21Ue69+EtYA
Date: Tue, 6 Jun 2023 18:07:19 +0000
Message-ID: <15829bd2d58a7439d416e2e36c5c4a17281b9fc2.camel@intel.com>
References: <ZH7sr+Vs4zOQoouU@moroto>
In-Reply-To: <ZH7sr+Vs4zOQoouU@moroto>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.46.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH7PR11MB6030:EE_
x-ms-office365-filtering-correlation-id: 4a7ddf21-163e-4430-5e13-08db66b8debb
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Os6P6M6ZvWIsCASv823rlWpWjuqJDVeMQB0FuMAR61nFHoy3SSBQaOr5GULXc9QjGuT65xVyYewoFdxDCv7EAgeWVKGvQAtyiaFrl7owRB7pP/4sQiL4rMp00IjbufoLdRkw6DE+1Oosesmo6pEdfennZN2Eh6CLIxs9XRnsef/YiY4BlPaQBDqrL4CO6J8FTZZuRXKz0IghgJW6oqzhv2qbfK6W8SHdTnuLoIaK7zYIKJPcixcd5wu4RAlqGdXes/V5DTv/bGybQPLZbYnwsC/RyXDkOIm7t46iORGP1ZzKORf7Wm3lMoQzFRJmK0klFDz3q2120UYotPWYKHsF3UREJSxemoNRjhcNlR6JunjBBV0g4tuhblVrMKczky+vHOQi5DAN+0hZegrdBP3B9P82vtJCJJdV7ozHa133q+I9po+o7raLvPeVJnWCDvxLudx7WYhTRUUEUd2qGala6cTDoIJjHxmsyVdON6CSj7NplyjECQNwjCxy2Ff14nIzADIR/f5QK3Fkv2QlxcS36yF1xMUH/GyzoeIQ7XSfpCQqMtFbajiYtLjlJ+sY0+SmmHGMtP6yNcduffl2AGkvzOOYgANWq4ukfgJWRPkbFDk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(396003)(346002)(366004)(376002)(39860400002)(451199021)(6506007)(6512007)(26005)(36756003)(83380400001)(122000001)(38070700005)(86362001)(38100700002)(82960400001)(186003)(2616005)(54906003)(41300700001)(2906002)(66446008)(478600001)(91956017)(66946007)(76116006)(66476007)(6916009)(4326008)(8936002)(64756008)(8676002)(316002)(5660300002)(71200400001)(6486002)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?czljdVQrMXFUMGFXcFFuYi83aW9wNDJXM3VLODRPZVBzZWxDdm1uRGw1cW5Y?=
 =?utf-8?B?WXZ6bjFuQUpnWXhBdDBwbFVhbS85dkljQ1dmRCt1VGRTTnhjUWQrQ2c4S01n?=
 =?utf-8?B?czNsWUZBMmhoOGVnUUsxWDFGSnVmVmVGQkdlY2w3bEdUa05ITXorQ253dFFL?=
 =?utf-8?B?cU1kNkV2RDlmZnhQbHkxeXJrdXBkNEhaTXc0NjVYbmNXVmVlUWo5RTd4MW5L?=
 =?utf-8?B?R3JSUjU3TG1OQzhWTTFQeU5FVGUxcUhTaWpyaE5Mc2M4NVExVlp4c1hVaGwz?=
 =?utf-8?B?cnF5SnN4NzBpZU5NSFJHQ3ptVzZRNnR4cFBET1VjNFB6ejByV1Y0UE1zWm9h?=
 =?utf-8?B?cktBaHQ1ZFZtZ21MeXJQTk8wOG42eDdqL2RlNE5TTUE2OExuWjl4ekt0Rity?=
 =?utf-8?B?SFNWdW1La1Z1dU0xb2Y2ZEI5TjdJUEtueUphVWJPZE5ZYUJXbU1nZjJ0Ull5?=
 =?utf-8?B?VloreXhkdGpIN3ZPMFNzTThsOXArL0hxZ0RNRGYrUCtwSzRZZnhtK084c3Fq?=
 =?utf-8?B?VXNGaE1ZanpsWGQzRVFpVktZOW12NzlGQmU3OWhvYTIxUHNhSVRkVTlYYUVk?=
 =?utf-8?B?Y2krR2tIcE5rQWk5ZkRMRzRxWkJNalZ4SnRCT0VJSzZiZlhXTVVHSjdaUTNU?=
 =?utf-8?B?dUY1SjNmVmxlclpOYW5WUnFSVGVzM3BJYWdETjBTZ2tQUS9GRmJlSkhMUzhu?=
 =?utf-8?B?UlI4TmtLMDUwTy9pdThrckkxSWNPOXVKd280bHFnK0tnb0hzY2ZEeHlwMzhL?=
 =?utf-8?B?OEQvYysxdSs3T2cyYm1OK2t5ZUtYdGFzODBZWTRnbzBrRGhKUVN0eUNKSjNO?=
 =?utf-8?B?L3UvYW1UTjkxSzhsUzBCaDRiby9VaUZEY3R2c0Jyc214MGdLNWwwV3FxREdF?=
 =?utf-8?B?MENJL2lBYmcralZONUh2NU5qR1NRamhqZzg4N0lTQTYrL1Q4UmF1VlV0ZVFV?=
 =?utf-8?B?WU50U2d3dUFZYWRaZW40dWEzdVhibkZGUzlMT1pFSDY4YmYyY2ZQd3JTRGQ1?=
 =?utf-8?B?RHRBM2RWWlJkQURJeTNBb3M3R3l4OXdvWmVOSmFXYlFyMzFqb1V6OGF1bTUy?=
 =?utf-8?B?WVVoeVlEWFlDYTRYeGI0NWFEMVFkaW4rVkV2QSt1SXg2L0hhZWF5WlhTRHpU?=
 =?utf-8?B?T2s1Nmc5Qk0zN0xlVWlsNmwrQ0ZYQldRNStISXUzN2JqZkYwZ1MrMWFGT0ls?=
 =?utf-8?B?SUlCM0EyTjdQTEpKYnMvTFg4K0FrYlcxZmdYbHVXZGpnUVZqdHNMTkxFZ2Vi?=
 =?utf-8?B?c3NNeUdSQUdsbUUwb0Uwb1VHeFhqTFhaL1Q4cWxrSFFBTm9nWWpXaTFWSzJS?=
 =?utf-8?B?ZFN0bHRtdVl4TGIwQ0lqZ3NBTGNjZW11MHF1NWYrQWlJeDZWVCtmZDFKdCtO?=
 =?utf-8?B?VkJSNFZHcWdzWDJob2NyNzQxejF1VXVDOTRyODllS09pcE9Fb2ExZnNNWW5x?=
 =?utf-8?B?VzN5YXNpZm4yQmYwaUpNSGdhVlBrYUp3a3Z2dDYwYXRNNFRRKzZkaDF6SEhN?=
 =?utf-8?B?MGZ3N0EwWTIyemg0T1JPTHhYZGlXY1hZMElkc3RnZElIZVhRTFRtWEFzMWlo?=
 =?utf-8?B?dWVLYlRtTFczU01KUDkrTnJhV3A2TTcyMmVoRG1hbG1LZjNrQ3pmRWpqbkgy?=
 =?utf-8?B?UGVzOVlkMDhqZHU4M3ZsNnppZXZKUjRGcGttWDVLZ3g4QWVwMGR1V3QzQmRT?=
 =?utf-8?B?ZWN3Y2ozd214UUNlbHFoTkZ4eWdRUVk0UGp6TjFPNm01Z3VaU0xCMi9HMjhK?=
 =?utf-8?B?VkRTUW9KSmN3KzVrYzBpNTNPeWd4S2xwUmNqV2d6UWMwZTVJUUpnV0tRZlBU?=
 =?utf-8?B?YXVLMFNnTFJ0eVhXQzdLMzBySkp6L1dmL0ErZ0lRSjMrV1BGNVZhTzBaVTF0?=
 =?utf-8?B?aG9URWgzb1YreGZKYzZMWnEyeHIya0JSc2lBOXp2OS9JUG5vODlSTnZ5OFEr?=
 =?utf-8?B?anNadlNpVGs1THkwR0tNSldVMFQ1TENiQVN0VzF2RjZSUk9QMEJheGpINzNw?=
 =?utf-8?B?d3ludy81ViszYWJQSmdGa0pINTd1NmVibXl1Z1V4R3RDUGF6SmhydnJWSmx1?=
 =?utf-8?B?b0x4aE52Ty80dGRBaGNRdEhDdTZyalNOT1FqNWZGNWNYSCs0MTRneDVUNHVn?=
 =?utf-8?B?Z3dEVnFISk9lWm5tdGtIa1M1VWppMFBqK1I5ZUhLZDBTREwyRWE1OE04NDZK?=
 =?utf-8?Q?DeEWa8Hg5tlPoU8OsJmRzdo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A7FA5AB683A8564088DCDD24BA697BE2@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4a7ddf21-163e-4430-5e13-08db66b8debb
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2023 18:07:19.9681 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GX6E50jzAopWvO+72nYF+b31ZlvQqDKcTDjZFJpeqKU3+sq4k/FzCf97jpaYfcUgUCK1rjUZIrJpjpmr/MK1arcl4GRABbdWe87szYm04SePuSvFw3HudCi9hlKZ+uRk
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6030
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gsc: Fix error code in
 intel_gsc_uc_heci_cmd_submit_nonpriv()
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>,
 "airlied@gmail.com" <airlied@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhdCB3YXMgbXkgYmFkLCBpIGNvdWxkIGhhdmUgc3dvcmQgaSdkIGZpeGVkIHRoYXQgYmVmb3Jl
IHRoZSBmaW5hbCByZXYuIFRoYW5rcyBmb3IgZml4aW5nIHRoaXMuDQpuaXQ6IGJlbG93IGZ1bmN0
aW9uIGFwcGxpZXMgdG8gTVRMIG9ubHkgd2hpY2ggYXQgdGhlIG1vbWVudCBpcyBzdGlsbCBmb3Jj
ZS1wcm9iZWQsIHNvIG5vdCBzdXJlIGlmIHRoZSBmaXhlcyB0YWcgaXMgc2lnbmlmaWNhbnQuDQoN
ClJldmlld2VkLWJ5OiBBbGFuIFByZXZpbiA8YWxhbi5wcmV2aW4udGVyZXMuYWxleGlzQGludGVs
LmNvbT4NCg0KT24gVHVlLCAyMDIzLTA2LTA2IGF0IDExOjIyICswMzAwLCBEYW4gQ2FycGVudGVy
IHdyb3RlOg0KPiBUaGlzIHNob3VsZCByZXR1cm4gbmVnYXRpdmUgLUVBR0FJTiBpbnN0ZWFkIG9m
IHBvc2l0aXZlIEVBR0FJTi4NCj4gDQo+IEZpeGVzOiBlNWUxZTZkMjhlYmMgKCJkcm0vaTkxNS9w
eHA6IEFkZCBNVEwgaGVscGVycyB0byBzdWJtaXQgSGVjaS1DbWQtUGFja2V0IHRvIEdTQyIpDQo+
IFNpZ25lZC1vZmYtYnk6IERhbiBDYXJwZW50ZXIgPGRhbi5jYXJwZW50ZXJAbGluYXJvLm9yZz4N
Cj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91Yy9pbnRlbF9nc2NfdWNfaGVjaV9j
bWRfc3VibWl0LmMgfCAyICstDQo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEg
ZGVsZXRpb24oLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9ndC91
Yy9pbnRlbF9nc2NfdWNfaGVjaV9jbWRfc3VibWl0LmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9n
dC91Yy9pbnRlbF9nc2NfdWNfaGVjaV9jbWRfc3VibWl0LmMNCj4gaW5kZXggNTc5YzBmNWExNDM4
Li40MjIxOGFlNmVmMTMgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2d0L3Vj
L2ludGVsX2dzY191Y19oZWNpX2NtZF9zdWJtaXQuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9ndC91Yy9pbnRlbF9nc2NfdWNfaGVjaV9jbWRfc3VibWl0LmMNCj4gQEAgLTIwMiw3ICsy
MDIsNyBAQCBpbnRlbF9nc2NfdWNfaGVjaV9jbWRfc3VibWl0X25vbnByaXYoc3RydWN0IGludGVs
X2dzY191YyAqZ3NjLA0KPiAgCQkJaWYgKCsrdHJpYWxzIDwgMTApDQo+ICAJCQkJZ290byByZXRy
eTsNCj4gIAkJCWVsc2UNCj4gLQkJCQllcnIgPSBFQUdBSU47DQo+ICsJCQkJZXJyID0gLUVBR0FJ
TjsNCg0K
