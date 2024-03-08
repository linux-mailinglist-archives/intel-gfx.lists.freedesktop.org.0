Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C1D8875FB4
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Mar 2024 09:39:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E992410F900;
	Fri,  8 Mar 2024 08:39:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NFVg2jJK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8478610F8FF
 for <intel-gfx@lists.freedesktop.org>; Fri,  8 Mar 2024 08:39:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709887180; x=1741423180;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=x1PRfbzQv1oX5VM7g3Lvp8M+nvyJxJUbOpA7tJAlC1g=;
 b=NFVg2jJKt8WFp+Ldqsk8/qyg6Teu7f1Cn3oJu9lDZGzU4saHflJzPPbo
 M7w/wa/CW5aQFsBZY2YkUNfvPIst6Duw0u3/bgi1mHQZz0ySs6XEp1ppV
 KduZB2Hmv0nTBvQO6UwUlJFgO4ex8aJRP2soFwx04OEY3wO2AHUA5Hhf5
 v4Qze6b5/mx0dpSxWQ06ORCi1zNc9d9Ko6+xkqD53acj40uD29TISweNs
 3oIe0epwkkAfTuNnzY3yrcUPk9uBPtBmPgrBJyBT06+SeUmtrs0AnBw4j
 Rjidx3Vh20qMy/iAHebHFUigUE2Sw/dI5t8QG7rc3uvrbfJvX+TE2g0Ft Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4451391"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; 
   d="scan'208";a="4451391"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 00:39:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="47871763"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Mar 2024 00:39:40 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 8 Mar 2024 00:39:38 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 8 Mar 2024 00:39:38 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 8 Mar 2024 00:39:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Owz4L24G/k7RxhALeQtAwMNu+LixQ6OjNw/XQfNizwNV+Y04FJ7PivKgli64SWvQiDxaG5VNUpZb1lONfMfYSggxXpQSBal+CR8EIr9iJuVG6+/mK7J2ETIie9R5B37+rFZqblhSThaYCUiglx2r41fjScKcdkRg27ZzSZCbDVGI2hZ4GzbQt5YNiLzmyc6Ujta7bVuAVxsDw0UuKj6jyP2YdKUXkKTWdh1rXyck+qyowrVpuV31mE0k1l8T4ExzJ6bpQUgZGwi9KCV5yFy0RNnrOk5g0qMJ24TFyVCBpuGZ+LcWI+Mp5uTrdm6uhXYCCUIjUw9SxLHTmk9/vSAckA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=x1PRfbzQv1oX5VM7g3Lvp8M+nvyJxJUbOpA7tJAlC1g=;
 b=Ivc3JyKAUS33vd63sdS/iZaV2Fz2o/VICj9VFjUoE7BvxV/m1qxCdd+nhGWCHPj8x6CT85zEKeKgaCHTtZKu79ukhgmvTjAk3MXY9pHGZa9y2zbQx7PuBO/DT7x+FyDGA1zgJOXm871TkjPAlKuftbNIyF3Ii/YPjShVJNgN9cCZCl5CmX6JktOp14R2bcABx3T+wGrEUcKnu2qxsWRKwqsqQLKn28Uy5Lhw/ECKo9mHbA0ZEs05AypORZqiOW7rLwZNwHNlOlP/V3y52viiWd/WN+USbDvWSzz6VcpgFwj66JY38S4hgntfeuqAWxoeQm5DBQBzq/pcP1hMmiarcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SN7PR11MB6946.namprd11.prod.outlook.com (2603:10b6:806:2a9::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.24; Fri, 8 Mar
 2024 08:39:37 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::d317:e2a8:8e14:7bff%7]) with mapi id 15.20.7386.006; Fri, 8 Mar 2024
 08:39:36 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v4 4/5] drm/i915/psr: Add IO buffer wake times for
 LunarLake and beyond
Thread-Topic: [PATCH v4 4/5] drm/i915/psr: Add IO buffer wake times for
 LunarLake and beyond
Thread-Index: AQHab6E5qQdmg628jUGykI2KZRLsxbEshvEAgAECGQA=
Date: Fri, 8 Mar 2024 08:39:36 +0000
Message-ID: <0872bc7df38a15bd257dcdc1d54d5d4e1287f516.camel@intel.com>
References: <20240306083427.2040475-1-jouni.hogander@intel.com>
 <20240306083427.2040475-5-jouni.hogander@intel.com>
 <Zen2Rm3VDV9nSn3L@intel.com>
In-Reply-To: <Zen2Rm3VDV9nSn3L@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SN7PR11MB6946:EE_
x-ms-office365-filtering-correlation-id: 5d53a205-23a1-4310-a299-08dc3f4b4995
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: J+IadrvmGx8RQGio3tKSUSUjZQuk7/al1ObQ7a5zD8DEuyJIMl/GvkWx9WrLlnpQf/KyVABBcTsPRXEbJcPFF41S06rYVxcE2qR/ny/CBqeXV8pYhv1yp5r2muGOpYB6yX3BUoftTOQW9bWB5wcL/zpm9ca5+Xq76Ex92JEq5S9J3LnX5lVxScER+nnQb2GZT8UxHTLqydkUJ1uxKbycOjKKyJ6zzR/u9rXFxB7qB8HrYK0HSSUB6tDw02ngPJDN5axoLFYxGhf9GULD+SfGJyIRxnSPSZ9qbH6hj8ejopizuCIshIZNyLLQsd/Vu813ezV7DvDXrW3qWCUp5V65iSlQ7iYYdQfjFoQwDTEX5QBe2t3IZCaG7cYawhzV/tfolF5iTcviNoJC6/ChygPjVVa1ic2ncbDKd8oxNHWu8aS0nSCRjHBs3epMB6sCXcThPRJMdLSlAcUWDWU5x9PFfK3wixvZn7JxB4zvJAET7SnwBs1O9anEpDVaMC2EJItCouvW42p+d70bTe9lskUuVwmFdaCxmRhojhCorSGfMGFjAdRXHLWI4M6CxCtjdRSEWTj9QetMts7XU6JDQ9fv+niluDXi5UXHZwDEnHb29BuZ0SIJ7sIh2my1inq8ct9iDElKYjP03QCcI7MP0v1UnekssC1zK9s1ls7qRLl2Pv/zRlapC/e908SBK/JlyANXupkeVe6RQ+ZEhitOGjssng==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SitHczgxWkVHR0xwcHhLQndrZ1NHRGNxcUFWKzhsdytXd3A2N0VFNWxtQWFE?=
 =?utf-8?B?RkR0SmxsY2tYSjNYYkRlUFhsQVQzRVdMQytIVTg2S0V6VHNWUXI0UlcvektD?=
 =?utf-8?B?WngvcldLL1k5L0VGY0d5MUpVdUU4MkF5ZDJCWVhXc2lRK0phL2dFd0lUQ0h4?=
 =?utf-8?B?NGJETXN0a2luMStBSEhXZ2k1bmtBTUFqY1VTR1h6Z0dKYTZxb2dnNmRydGp3?=
 =?utf-8?B?MGcyWXdaa2pRSWtORUhvZm1Tdnh2Q29aYTA4VFRPRzNvQ1RoTm1DK1RoV3hh?=
 =?utf-8?B?K2sxSU9nZHJOaXF4VUtxaGplYjVVZzdVUE50c000VmhRVkV6T3lUZVVxOCtB?=
 =?utf-8?B?a0cwUy9NOUtJS21ORkI3R2xhZms5TUpvRjkzQUVwcnQ3VHlGemVJNHo0Q2Fz?=
 =?utf-8?B?ZmJkQzlybnNZSlVZTU15YTdkTHZvQi91Tnl5WjRKZFMyV1VhcTZRVHEzbW1M?=
 =?utf-8?B?andud2hUYkZSdHY5N1llMnkvU01UY0dvTVJVMUtnQkV6Y1d3VlNOdFhGcWdJ?=
 =?utf-8?B?OG96dlhDb3lsemdMdkR0NnYxNG1VaE52RC9oUUxEcmlLOEhrTGs5Q2xaK2hT?=
 =?utf-8?B?NkxxZE9vMGF2RkF2QnBGd1NuTXlQWTRQMHFsaTBZNDdwL3RjVmlDZkp2ZmNk?=
 =?utf-8?B?aDhxOTRRdmpuc0dJdHRHRVpIRnpLcVJDMS9Hakd1QldnZmVnancwQzREeVRS?=
 =?utf-8?B?T3NaTVg1RkRqOFN5U0hEb0VjTENSd1ducFBMSlpiaGY4VUpNWGdDWnA4MlI3?=
 =?utf-8?B?NlV1Sk4vVzVsU0k5VGhNaHgwekttbFV1WDhOK2YzbXdoSkd3aTZ1cGNWVUQ4?=
 =?utf-8?B?U3BlR1VRN3NSOXcxOWtwWm9BN1lraVlhL3FGWlVEZmNpTy9mcGVLbFUzOGNr?=
 =?utf-8?B?T3ZJTE1XYWNvSE9VZDkrR1Q0Qk9SRVhRblRTK284b2tETVBNZzFjZWxuRjgx?=
 =?utf-8?B?UHhNZyswV2szUFMyU1Y2RG5aYno3dnFMMDlHc2Q1UksxZUJpVEJUZUV1RnU5?=
 =?utf-8?B?OVoybVd2ai9yZzgvSzJiVzMwVUc2ZEVuUjBoSWdiUFlKamdKUmJucGoxSXFz?=
 =?utf-8?B?WEJReXppWW0yS29WYUZSZ3VUcDkvd1ZlMUI5WklsNjRhQ0l4WE1aaVVaci9D?=
 =?utf-8?B?OHErSWdxQisvWGJGTGlwWkoySUZEYlptbWlxdnlBZ3NPWXpSQnp1ejAwRE9Z?=
 =?utf-8?B?S3hZanVEMWRhS2lFTHBiS29CclVkdlljTEFYb2QyUFJZWm1tTStEamVXNVA1?=
 =?utf-8?B?SXgraWg1M1Nvd3JkZmhtNFlhQjNJdGNBcEo5NGZjNHZ5eXNlaFJkZGM4Mksy?=
 =?utf-8?B?QlZVcitua1JLNEZZM2hpR3V5ZGxUZU5FL2FXTG5qN1l6SHpJTitYQ000R3dR?=
 =?utf-8?B?WEhYdjIvZXZSd0hXVHdQUlI5d1k5MlZ4N3gzZ2FQY053Q2VOYml6SDZGMTEy?=
 =?utf-8?B?Znp5N3ZlQ25USzRiZ29PS1I2NnVYR1hLSFlnaWtQU3IzKzBjTDRreWlqU0E3?=
 =?utf-8?B?ekZRUXF2NlNnSGdpRmpJOUtoVDhuQkRhS0hnOU4xbjVnSkpFckJaZERteWtt?=
 =?utf-8?B?anFpNlo1ZS9hWHNaYlRlbVk4TzdlREhrUTAwMU5zY3E4VkduT0szbjQwdU9H?=
 =?utf-8?B?Tm1kcVFiaTczeC85Y245dFJtV20xaVM5UndRRlZTbFZ4VzVQS0Q5ODRZMVZz?=
 =?utf-8?B?aVQ5NkdZL2VEWDlqZVhvREx2dXliMFNhK1M2QlVpeDhGRGQzV1RzRVAxbTZZ?=
 =?utf-8?B?NmI1cjdkRnU4MGNMeTBjdEtieCtJMkxrckVrSDNIY1ltWHRUT3ZVKzgwa3Mx?=
 =?utf-8?B?U1B0UE82RkVRYUF3c3o2UWlZNitNR3Q4TzdFMCtwM3RUT2dvYWU3NGJvcVBB?=
 =?utf-8?B?SG1lVG1nbytnWk02L1Arb1Q1OG13Z0M0UDdSWDFNQ1NYYTNFWlA1bTQrUkl6?=
 =?utf-8?B?d2Yrd25DNWMvbjVwKzk5dldKcXhyRUhvZTFuSlhWMHRleUNBdUNPbk85ajF3?=
 =?utf-8?B?WmtEblBWVGJNZVM3U2xSUzBmaE1PODBsb01oTVU0czFtU0hOMnZwU1FoeGxI?=
 =?utf-8?B?VFNuV1JPZ2pLcG56Nm1zU1RnWEpkOFhRZVZRaFpJZUlmMlpWMExQNnEydUJh?=
 =?utf-8?B?dzhBVlA1SGtpTXVwb3IyTUlwWjg5UHJvVms1V3VMcXVGbTlXdEJ5T09nVk5h?=
 =?utf-8?B?eFE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <901493FECB319A43ABCE83F2FCE842CF@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5d53a205-23a1-4310-a299-08dc3f4b4995
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2024 08:39:36.9302 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: x09hYE1oQvmWTp9NqIBPXIB0q2m6RDoAYq2a3gbdnbpyfIjIjWjQJlCflq0nGHh8k2mH7z5I9vN5Pdk/c1HsJEgYEWntSsf350TtVy8SFyw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6946
X-OriginatorOrg: intel.com
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVGh1LCAyMDI0LTAzLTA3IGF0IDE5OjE1ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFdlZCwgTWFyIDA2LCAyMDI0IGF0IDEwOjM0OjI2QU0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBJTyBidWZmZXIgd2FrZSB0aW1lIHVzZWQgZm9yIElPIHdha2UgY2Fs
Y3VsYXRpb24gaXMgZGVwZW5kZW50IG9uDQo+ID4gcG9ydCBjbG9jaw0KPiA+IG9uIEx1bmFyTGFr
ZSBhbmQgYmV5b25kLiBUYWtlIHRoaXMgaW50byBhY2NvdW50IGluDQo+ID4gZ2V0X2lvX2J1ZmZl
cl93YWtlX3RpbWUuDQo+ID4gDQo+ID4gQnNwZWM6IDY1NDUwDQo+ID4gDQo+ID4gU2lnbmVkLW9m
Zi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0t
DQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIHwgOSArKysr
KysrKy0NCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24o
LSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiA+IGluZGV4IGUxZGYwZWNlOWZhMy4uZTg0MTBlNzcwZGE4IDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTExNjAsNiArMTE2
MCw5IEBAIHN0YXRpYyBib29sIF9sbmxfY29tcHV0ZV9hbHBtX3BhcmFtcyhzdHJ1Y3QNCj4gPiBp
bnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gwqAgKiBUaGlzIGlzIG5vdCBkaXJlY3RseSBtZW50aW9u
ZWQgaW4gQnNwZWMuIFRoZXJlIGFyZSA1MCB1cyBpbw0KPiA+IHdha2UgdGltZSBhbmQgMzINCj4g
PiDCoCAqIHVzIGZhc3Qgd2FrZSB0aW1lLiBDbGVhcmx5IHByZWhhcmdlIHB1bHNlcyBhcmUgbm90
IChpbXByb3Blcmx5KQ0KPiA+IGluY2x1ZGVkIGluDQo+ID4gwqAgKiAzMiB1cyBmYXN0IHdha2Ug
dGltZS4gNTAgdXMgLSAzMiB1cyA9IDE4IHVzLg0KPiA+ICsgKg0KPiA+ICsgKiBGb3IgRElTUExB
WV9WRVIgPj0gMjANCj4gPiArICogUkJSIDE1dXMsIEhCUjEgMTF1cywgaGlnaGVyIHJhdGVzIDEw
dXMNCj4gPiDCoCAqLw0KPiA+IMKgc3RhdGljIGludCBnZXRfaW9fYnVmZmVyX3dha2VfdGltZShj
b25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlKQ0KPiA+IMKgew0K
PiA+IEBAIC0xMTY3LDggKzExNzAsMTIgQEAgc3RhdGljIGludCBnZXRfaW9fYnVmZmVyX3dha2Vf
dGltZShjb25zdA0KPiA+IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKQ0KPiA+
IMKgDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA8IDEyKQ0KPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDE4Ow0KPiA+IC3CoMKgwqDC
oMKgwqDCoGVsc2UNCj4gPiArwqDCoMKgwqDCoMKgwqBlbHNlIGlmIChESVNQTEFZX1ZFUihpOTE1
KSA8IDIwIHx8IGNydGNfc3RhdGUtPnBvcnRfY2xvY2sgPg0KPiA+IDI3MDAwMCkNCj4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiAxMDsNCj4gPiArwqDCoMKgwqDCoMKg
wqBlbHNlIGlmIChjcnRjX3N0YXRlLT5wb3J0X2Nsb2NrID4gMTYyMDAwKQ0KPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMTE7DQo+ID4gK8KgwqDCoMKgwqDCoMKgZWxz
ZQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMTU7DQo+IA0KPiBU
aGF0J3MgZ2V0dGluZyByYXRoZXIgbWVzc3kuIEkgdGhpbmsgaGF2aW5nIHNlcGFyYXRlIGZ1bmN0
aW9ucyBmb3IgDQo+IHNrbCB2cy4gdGdsIHZzLiBtdGwgKGFzc3VtaW5nIHRoZSB2ZXI9PTIwIGlz
IG10bCkgd291bGQgYmUgY2xlYW5lci4NCg0KdmVyID09IDIwID09IGxubA0KdmVyID09IDE0ID09
IG10bA0KDQpTbyB5b3UgYXJlIHRoaW5raW5nIGdldF9pb19idWZmZXJfd2FrZV90aW1lIHdvdWxk
IGRvOg0KDQogCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+PSAyMCkNCiAJCWxubF9nZXRfaW9fYnVm
ZmVyX3dha2VfdGltZSgpOw0KCWVsc2UgaWYgKERJU1BMQVlfVkVSKGk5MTUpID49IDEyKQ0KICAg
ICAgICAgICAgICAgIHRnbF9nZXRfaW9fYnVmZmVyX3dha2VfdGltZSgpOw0KICAgICAgICBlbHNl
DQoJCXNrbF9nZXRfYnVmZmVyX3dha2VfdGltZSgpOw0KDQo/DQoNCkJSLA0KDQpKb3VuaSBIw7Zn
YW5kZXINCg0KPiBBbmQgdGhlIG9ubHkgb25lIG9mIHRob3NlIHRoYXQgSSB0aGluayBkZXNlcnZl
cyBhIGNvbW1lbnQgaXMgc2tsDQo+IHNpbmNlIA0KPiB0aGVyZSB3ZSBkb24ndCBnZXQgYSBwcm9w
ZXIgdmFsdWUgZnJvbSBic3BlYyBkaXJlY3RseS4NCj4gDQo+ID4gwqB9DQo+ID4gwqANCj4gPiDC
oHN0YXRpYyBib29sIF9jb21wdXRlX2FscG1fcGFyYW1zKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxf
ZHAsDQo+ID4gLS0gDQo+ID4gMi4zNC4xDQo+IA0KDQo=
