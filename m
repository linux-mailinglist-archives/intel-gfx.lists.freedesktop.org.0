Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 639897E37EB
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Nov 2023 10:33:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E500910E123;
	Tue,  7 Nov 2023 09:32:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B85C810E123
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Nov 2023 09:32:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699349577; x=1730885577;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=r0Qg4DXya7l5kA3l9dANNBd1t+zIHwBmsZBbJNkfIbI=;
 b=Hg67K4Fh+bGNjeqcJHl7LSg5vKwiGn2HzVtnnfNK0Yiy9HFdxZiBUTlz
 uggqYboOKuXX02BplYVsJAFOC2ZuMhJn7HxA2lot1BQvXHybXqqLRAcHG
 Es9cEHidUKzU3Hn9pIL6ys/d64kJpnbQdoSMAj6jg8G81V+GJRFwpAmAe
 j8MjVbQR0VVAox0hGLKzDcvjCXpX1sf6LLcfaWHuh4xhws1haDdIKLrG5
 hCkxeDLrZ7HhRBa3Nh8lM1OZzWfalvP4Bh6z/3erlFYvVh9p3z9Yptrdz
 aFqzs7lSUIR/apFPIrnqJ2ZV4BEbHOBRwtLoLdsM50hREtQ30s2ipczpt A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="392343943"
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; d="scan'208";a="392343943"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2023 01:32:57 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10886"; a="766260162"
X-IronPort-AV: E=Sophos;i="6.03,283,1694761200"; d="scan'208";a="766260162"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Nov 2023 01:32:57 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 7 Nov 2023 01:32:56 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 7 Nov 2023 01:32:56 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 7 Nov 2023 01:32:56 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 7 Nov 2023 01:32:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XXA0uph56D9qFnd9KQ5jwDu11mRDfVP4f1dCGSlp9SIVKg7wFJd3PxiqiydJQbbefxNLBFqGyWPDDYYCzf0sl1hwIZuhxQffxRgA3VE0hmVjuU/wjaoYCxLx3Kam9GPU1DGlFX8VKg78p4VEyx44b/Z33IEG+iV77cRrhsUkupT31A1zAR+wnnU7hGhm5aWYTt7lhDQ9/C50lgXSI1nbkfDJJKPmUEOMag0IUpA6BEZMQzoeeaVWvpxXmVlA3jdw+7+dt+alQBVV6GM7A333e1Hl2ScWQpTXxPvetzHgPFWJrIs5nPoTzRIxtpR3Zj8dUGscz5eIc5Ri82ZUmwaTSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r0Qg4DXya7l5kA3l9dANNBd1t+zIHwBmsZBbJNkfIbI=;
 b=AMpLw9nu80uQBxlEQHnqG7UWelof+m03tB5xDQfSxjNdcFeJ2l9CofxReAa2Df2hYf9CVthRKp4f9f4bFdMXELlVjRwiunukWeTRA/rsu7nFDl1ZrUl3cr2n3Krb8wSQKXxaauOVAA3kYfRvrvGgfJU+F2wrnUR3npTGoq1U8C0v3vy1tiCQsfjWVSm6I7sZV3IvIRQt8oQbidTbMeFIjvFf8uy7infDoX5pRWMXiFGTTapezPVdZfDATLwh17mAY2N4f1VlfuW3Xtyk+eqQW4gc6BmA4tVteQJopenJeKJWxAKaItbor+tK+jv/E/PmfP40x7Xtpcwmx37NCq45Ew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH8PR11MB7120.namprd11.prod.outlook.com (2603:10b6:510:214::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6954.25; Tue, 7 Nov
 2023 09:32:48 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::968:3d25:bee3:71e5]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::968:3d25:bee3:71e5%7]) with mapi id 15.20.6954.029; Tue, 7 Nov 2023
 09:32:47 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v1 1/2] drm/i915/xe2lpd: check selective
 fetch is optimal in some cases
Thread-Index: AQHaDddUvNVQduVXOU+fbRAEjlMUsbBtv1UAgADftoA=
Date: Tue, 7 Nov 2023 09:32:47 +0000
Message-ID: <ee1bd0a6710a05f92894953237f44b9ea1cb3183.camel@intel.com>
References: <20231102215519.135847-1-vinod.govindapillai@intel.com>
 <20231102215519.135847-2-vinod.govindapillai@intel.com>
 <ZUlIlPtbb-Mmfb3g@intel.com>
In-Reply-To: <ZUlIlPtbb-Mmfb3g@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu2 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH8PR11MB7120:EE_
x-ms-office365-filtering-correlation-id: 06c8d6f4-a715-4e05-9d6b-08dbdf7480f3
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zMUyXZA+3w3vW61XYXKBI2s9YKTo2scrnfDQ0wVixqbvQ1a30aCoa57NEkSiazmlRGm6/Sa4XmpKqf6PPB3/6sKXhJlRFbrED7s+sGqQakuf4OjMiLq+jCuERsAr7Z2tu5hNPbt4MMxqAxgN4gvq/HjOqexwN9n8W0+bikEeW3ZswVGT0JSWruu2OvD1tlh353UT0X6r6yQyL0djtaGxeOaXHl5c1QkY2zFnCdmEJL+/Z3opDwk44mgdzSg4ljm2UuenXgnrgYjMFFRkzdS1rdbZMDxfAlIbt/94YhqrylLKTvd07cJXxx6Irfpp/uC9zfag2aEjBl/y/By9V+iVIj/N1BnT2Pw/luKOXAFzd8Ifb/YDt3MofLiM30CMX1djP4q7v0145P4IbRqOzDbq1BI06LdlHIAX2Vy28ZfSjLfHOyt884HcVodJzs06zRadyauLC7943S9+jvKNaH7tARDS9hjP384qz0jtfBOE/mm3MCTlWgmwigE+iMcBSdqKCKZBW1nWw6QwL9SfmmksOtqSlbyeU8D27nQ5omefbQTRGfgnv5VJHIPvIBEMeRXunxxsYAmehVHfoCTzEeICyvcuZjofD5pZBvlomnH4QtKEU2bvnZEuGy4DXpxkokdR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(39860400002)(396003)(136003)(366004)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(71200400001)(26005)(83380400001)(36756003)(41300700001)(8676002)(86362001)(4326008)(8936002)(2906002)(38070700009)(91956017)(6486002)(6506007)(478600001)(316002)(82960400001)(6916009)(38100700002)(76116006)(122000001)(2616005)(66946007)(5660300002)(66556008)(66476007)(64756008)(66574015)(54906003)(6512007)(66446008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WFk2WEd1KzVWK24raWRhUE9yY1BjelNWcGtuUzgyajkrb2pPUmt2TWNEOGYv?=
 =?utf-8?B?bURpZTNKSWdZdFY0RjE4MnBBUzNsMjB4NDliMnpkSk9iM2IrWTdsVkxUcHlu?=
 =?utf-8?B?di9lM0UxVVpyWFJRcnNCMTBZeFF5U3FrZXJTV1FRSFYwY2VMa0IyQndxNGp3?=
 =?utf-8?B?Ti9pdGNaTno4dFlCSHJ0MVNRc2N1amIyNGNhZG93V0RWdi9ZU2Rwdm9YRUlF?=
 =?utf-8?B?OVNTeWhleWgxeGtub3JsVm80VzJkUk1wZ3RiYldXZlYzTmFRNmhmY0NOQjVJ?=
 =?utf-8?B?MlBDRW9mZDZ5ZDc4MWhXcmQ3SWFScVVQb2M3WFpqL3ppUFhwWENkUU5YaWFn?=
 =?utf-8?B?THhyb0dIalU3eFAxK0QzSElMUXlJYnAxMURIWEs4UjUrWEFrQzIzTm42SkQ4?=
 =?utf-8?B?WU5TT2JjaWJKSTM0UWdxb1QyVUo3YlF3NmlHQ0N5T2g3MFE0T3crZFpydWFu?=
 =?utf-8?B?TEM0MVRhSU1YdXVYeGFaZGR2SlF5YUNkZEorRFk5Y2FXMmtrZ3ZwSXI2RUF6?=
 =?utf-8?B?bDVEMm16LzBvQzNNV3Z1VWxxRTl4TnpTOGNzZHRUcklpb3RLQmt1K2djT1VD?=
 =?utf-8?B?cS96TjlyQkNmYWVhbGx3T1EraDJXci9vclRMWTh0clhHcDlodng3WHhSS2U4?=
 =?utf-8?B?bGJoNHFoa2xvR2pmdVlvTUpZYWJIeWFBYUgyR29GbWhqNzNURGliTEthbTJx?=
 =?utf-8?B?N01VeDdVUkttTC9QTWtrMTZRdnJTM1c3Yk1SZFoxcTVhVEp6N085YmZ6dGVX?=
 =?utf-8?B?NWYzbEkvZ3lVRTdJZU4rMTIxdVdXdVpvRFVyZmlFanA2NFpnYXpkVkhrMmQ3?=
 =?utf-8?B?UEZhazZlaVMydWRNL2hIRW1sRGFVTkU3MU16aTRKMDhDSXlsQUswaGdSc3gx?=
 =?utf-8?B?b09sekV6NlJNazVyRENkTzZ1Nk9DUDZ1dGgyd1R5eEVkZjJNeG5ncWtXZGdu?=
 =?utf-8?B?WWFDTEY5aE5wVEN1eFM1TU1ZenFDNlB2UHA3dE5FVnJVZzZzS3hHV0FRTFlo?=
 =?utf-8?B?eHRDbEQ1ZlZZZWZDbnd4OHlJdExIMDFEOEcxWHhTbUpXaFkxaEpqOHEwS1Vw?=
 =?utf-8?B?UVRGdjBmZFIwWEhnVHB3R2x4OTFBVXFla3B4ci9EQjFCNDlhaHlMRlN4NnRV?=
 =?utf-8?B?a3JIY3laYjhhRktIQ2xRdnc3SEZjMFFrMUxSUXpPbEszY1lwUmpQeTl6RDZI?=
 =?utf-8?B?TEROMVJyZFhMdG5LbE5PSkg4aFRMcS9QNExORTE2R1Q0eUR4QWZ2OUVSUFhW?=
 =?utf-8?B?a2lQaXlXTWZhK1ViUVJETmlPWkZjS284ZVFXQ0YxR20wVncvN3dHRXE0aXBk?=
 =?utf-8?B?N2g1YUR5RHZLME8yNHpJYmdsYUNMaHBacUlYUjhoellobFY5Y0Z3Z3lqNE90?=
 =?utf-8?B?K01qWEk2QjJDRkxYQWo5b1RHWmJmOVhjazZURUNNWFQ5Mk1aeUlmT0lBNm1x?=
 =?utf-8?B?Q3BZblcxM3JaUTl5Z0lLMTk4c3ZFRllScjFoZk9nQ1o0dzlzbDNsVlUwTHZh?=
 =?utf-8?B?c2w4YjdxbEZveGg3NHJEMkZWZWI5RHZCWCszRlBEYWpHc01IdXJmOVZRRUFS?=
 =?utf-8?B?c0FkdzRiVmFZSXR2eHJUWEFPQnJyNlYyS09NQW1IbUVzL1VOR2pSQWVYakFy?=
 =?utf-8?B?d0E5REdVZ256NzIzdDhMNmxFdEp3a3NxL2VsTmMxdEFGZWRxK3E5ZHg5aFd0?=
 =?utf-8?B?UVpyV05XMzF2b1hjemMycHdSUWpFeHlCalpjRDQyeWgzTkl2VHRDdEhOK1dH?=
 =?utf-8?B?N0RDZmVtWG5LSG1qMjNCZXJEUFpDY2ZDbGVVd08xUmsvQ0hONjZyVnZ4Q0p2?=
 =?utf-8?B?eTlYK013WTdRSGtMOFhFOXNCVmFoVFhtMjYzcnpHTXRWQ2tQY2ZqQXEzenAw?=
 =?utf-8?B?Qmp2R0xOTGFXV3h4UytybjFnQTZzZVBZVXFiTTZPSWcwM0dWa0RkZVNZUnpw?=
 =?utf-8?B?WEhsVU56MWtjYVV4UFZoWFU2aisxcThGWHlDbGdkSGVWczVTOURUM3dGaHFD?=
 =?utf-8?B?VVR0enhVbWdWelcyZnRONUIxVXJMNzBOVms5UU1OSGY2NnFKVFhWTnprQnUv?=
 =?utf-8?B?SlJyUVNSNmg0UFgyblp4ZDByYSswMitFcERmamRJUVkzL3NTWVNjY1EvUmRx?=
 =?utf-8?B?SHFCNEFlSHdnREtldHBZMGdCQ1JpN0RwSk5ITWtGbFl3SGU1STBINXFmM1Zv?=
 =?utf-8?Q?g/3CXDaEAZsIaSN5DBGW19o=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6901E5D586484644B08E57A7458DCF5C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 06c8d6f4-a715-4e05-9d6b-08dbdf7480f3
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2023 09:32:47.5272 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lvsJl+lv+uHrsK6Ts6JqzXyc81Q1V+42bntG3s/r2rSCcQlMDV6HDUff35S6GMjJmu07CQU4BFxNGSAAROsMaWWA31mQCor9MzMN9P9HaHs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7120
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v1 1/2] drm/i915/xe2lpd: check selective
 fetch is optimal in some cases
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
Cc: "Roper, Matthew D" <matthew.d.roper@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Syrjala,
 Ville" <ville.syrjala@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgVmlsbGUsCgpPbiBNb24sIDIwMjMtMTEtMDYgYXQgMjI6MTIgKzAyMDAsIFZpbGxlIFN5cmrD
pGzDpCB3cm90ZToKPiBPbiBUaHUsIE5vdiAwMiwgMjAyMyBhdCAxMTo1NToxOFBNICswMjAwLCBW
aW5vZCBHb3ZpbmRhcGlsbGFpIHdyb3RlOgo+ID4gSWYgYm90aCBQU1IyICsgRkJDIGlzIHN1cHBv
cnRlZCwgaW4gY2FzZXMgd2hlcmUgdGhlIHNlbGVjdGl2ZQo+ID4gZmV0Y2ggYXJlYSBpcyBncmVh
dGVyIHRoYW4gMjUlIG9mIHRoZSBzY3JlZW4gYXJlYSwgRkJDIG1pZ2h0Cj4gPiBiZSBtb3JlIGVm
ZmljaWVudC4KPiAKPiAibWlnaHQgYmUgbW9yZSBlZmZpY2llbnQiIGlzIGEgdmVyeSB3ZWFrIGp1
c3RpZmljYXRpb24uCgpUaGF0IGlzIGEgcG9vciBjaG9pY2Ugb2Ygd29yZGluZyBmcm9tIG1lISBJ
IHdpbGwgdXBkYXRlIQoKVGhlIGZlYXR1cmUgSEFTIGhhcyBkb2N1bWVudGVkIHBvd2VyIGFzc2Vz
c21lbnQgaW5mb3JtYXRpb24KCkJSClZpbm9kCj4gCj4gVGhpcyBzb3J0IG9mIHN0dWZmIHdvdWxk
IHJlYWxseSBuZWVkIHRvIGJlIGFjY29tcGFuaWVkIGJ5IAo+IHNvbWUgYWN0dWFsIHBvd2VyIG51
bWJlcnMgKGZvciBzb21lIGFjdHVhbGx5IHJlYXNvbmFibGUKPiB3b3JrbG9hZHMpIHRvIGp1c3Rp
ZnkgdGhlIGV4dHJhIGNvbXBsaWNhdGlvbi4KPiAKPiA+IFNvIGhhdmUgYSBwb3NzaWJpbGl0eSB0
byBjaGVjayB0aGlzIGFuZCBhZGQKPiA+IHByb3Zpc2lvbiB0byBlbmFibGUgRkJDIGluIHN1Y2gg
Y2FzZXMuCj4gPiAKPiA+IEJzcGVjOiA2ODg4MQo+ID4gU2lnbmVkLW9mZi1ieTogVmlub2QgR292
aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+Cj4gPiAtLS0KPiA+IMKg
Li4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5owqDCoMKgIHzCoCAxICsK
PiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAg
fCA0MiArKysrKysrKysrKysrKysrLS0tCj4gPiDCoDIgZmlsZXMgY2hhbmdlZCwgMzggaW5zZXJ0
aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gPiBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gPiBpbmRleCAwNDdmZTNm
ODkwNWEuLmJjYzVmZDhkOGEwMCAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaAo+ID4gQEAgLTEyMDcsNiArMTIwNyw3
IEBAIHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlIHsKPiA+IMKgwqDCoMKgwqDCoMKgwqBib29sIGhh
c19wc3I7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgYm9vbCBoYXNfcHNyMjsKPiA+IMKgwqDCoMKgwqDC
oMKgwqBib29sIGVuYWJsZV9wc3IyX3NlbF9mZXRjaDsKPiA+ICvCoMKgwqDCoMKgwqDCoGJvb2wg
ZnVsbF9mcmFtZV9mZXRjaDsKPiA+IMKgwqDCoMKgwqDCoMKgwqBib29sIHJlcV9wc3IyX3NkcF9w
cmlvcl9zY2FubGluZTsKPiA+IMKgwqDCoMKgwqDCoMKgwqBib29sIHdtX2xldmVsX2Rpc2FibGVk
Owo+ID4gwqDCoMKgwqDCoMKgwqDCoHUzMiBkYzNjb19leGl0bGluZTsKPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jIGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gaW5kZXggZWNkMjRhMGI4NmNiLi42Y2Iz
MmZkMjlkMTAgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3Bzci5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5jCj4gPiBAQCAtMTk4NywxMCArMTk4NywzNSBAQCBzdGF0aWMgYm9vbCBwc3IyX3NlbF9mZXRj
aF9waXBlX3N0YXRlX3N1cHBvcnRlZChjb25zdCBzdHJ1Y3QKPiA+IGludGVsX2NydGNfc3RhdGUg
KmMKPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gdHJ1ZTsKPiA+IMKgfQo+ID4gwqAKPiA+ICsv
Kgo+ID4gKyAqIENoZWNrIHNlbGVjdGl2ZSBmZXRjaCBpcyBvcHRpbXVtCj4gPiArICoKPiA+ICsg
KiBDb21wYXJlIHNlbGVjdGl2ZSBmZXRjaCBhcmVhIHcuci50IHNjcmVlbiBzaXplIGluIGNhc2Ug
Ym90aCBGQkMgYW5kIFBTUjIKPiA+ICsgKiBpcyBzdXBwb3J0ZWQuIElmIHRoZSBzZWxlY3RpdmUg
ZmV0Y2ggYXJlYSBpcyBtb3JlIHRoYW4gMjUlIG9mIHNjcmVlbgo+ID4gKyAqIHNpemUsIEZCQyBp
cyBtaWdodCBiZSBtb3JlIGVmZmljaWVudCB0aGFuIFBTUjIuIFNvIGZvcmNlIGZ1bGwgZnJhbWUK
PiA+ICsgKiB1cGRhdGUuCj4gPiArICovCj4gPiArc3RhdGljIGJvb2wgcHNyMl9zZWxfZmV0Y2hf
bm90X29wdGltYWwoc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUsCj4gPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAgc3RydWN0IGRybV9yZWN0ICpzZWxfZmV0Y2gsCj4gPiArwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgc3RydWN0IGRybV9yZWN0ICpzcmMpCj4gPiArewo+ID4gK8KgwqDCoMKgwqDCoMKgaW50IHNj
cmVlbl9hcmVhLCBzZWxmZXRjaF9hcmVhOwo+ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgLyogVGhp
cyBpcyBuZWVkZWQgd2hlcmUgRkJDICsgUFNSIGNhbiBiZSBzdXBwb3J0ZWQgKi8KPiA+ICvCoMKg
wqDCoMKgwqDCoGlmIChESVNQTEFZX1ZFUihpOTE1KSA8IDIwIHx8ICFpOTE1LT5kaXNwbGF5LnBh
cmFtcy5lbmFibGVfZmJjIHx8Cj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgIUhBU19GQkMoaTkx
NSkpCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOwo+ID4g
Kwo+ID4gK8KgwqDCoMKgwqDCoMKgc2VsZmV0Y2hfYXJlYSA9IGRybV9yZWN0X2hlaWdodChzZWxf
ZmV0Y2gpICogZHJtX3JlY3Rfd2lkdGgoc2VsX2ZldGNoKTsKPiA+ICvCoMKgwqDCoMKgwqDCoHNj
cmVlbl9hcmVhID0gZHJtX3JlY3RfaGVpZ2h0KHNyYykgKiBkcm1fcmVjdF93aWR0aChzcmMpOwo+
ID4gKwo+ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIERJVl9ST1VORF9DTE9TRVNUKHNjcmVlbl9h
cmVhLCBzZWxmZXRjaF9hcmVhKSA8PSA0Owo+ID4gK30KPiA+ICsKPiA+IMKgaW50IGludGVsX3Bz
cjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YykKPiA+IMKgewo+ID4gLcKgwqDCoMKgwqDC
oMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0gdG9faTkxNShzdGF0ZS0+YmFz
ZS5kZXYpOwo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUg
PSB0b19pOTE1KHN0YXRlLT5iYXNlLmRldik7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPSBpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0
YXRlKHN0YXRlLCBjcnRjKTsKPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX3JlY3QgcGlw
ZV9jbGlwID0geyAueDEgPSAwLCAueTEgPSAtMSwgLngyID0gSU5UX01BWCwgLnkyID0gLTEgfTsK
PiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm5ld19wbGFuZV9z
dGF0ZSwgKm9sZF9wbGFuZV9zdGF0ZTsKPiA+IEBAIC0yMDgyLDcgKzIxMDcsNyBAQCBpbnQgaW50
ZWxfcHNyMl9zZWxfZmV0Y2hfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRl
LAo+ID4gwqDCoMKgwqDCoMKgwqDCoCAqIGNhbGN1bGF0aW9uIGZvciB0aG9zZS4KPiA+IMKgwqDC
oMKgwqDCoMKgwqAgKi8KPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAocGlwZV9jbGlwLnkxID09IC0x
KSB7Cj4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2luZm9fb25jZSgmZGV2
X3ByaXYtPmRybSwKPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1faW5mb19v
bmNlKCZpOTE1LT5kcm0sCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgICJTZWxlY3RpdmUgZmV0Y2ggYXJlYSBjYWxjdWxhdGlvbiBm
YWlsZWQgaW4gcGlwZSAlY1xuIiwKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGlwZV9uYW1lKGNydGMtPnBpcGUpKTsKPiA+IMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZnVsbF91cGRhdGUgPSB0cnVlOwo+ID4gQEAg
LTIwOTIsOSArMjExNyw5IEBAIGludCBpbnRlbF9wc3IyX3NlbF9mZXRjaF91cGRhdGUoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoGdvdG8gc2tpcF9zZWxfZmV0Y2hfc2V0X2xvb3A7Cj4gPiDCoAo+ID4gwqDCoMKgwqDC
oMKgwqDCoC8qIFdhXzE0MDE0OTcxNDkyICovCj4gPiAtwqDCoMKgwqDCoMKgwqBpZiAoKElTX0RJ
U1BMQVlfSVBfU1RFUChkZXZfcHJpdiwgSVBfVkVSKDE0LCAwKSwgU1RFUF9BMCwgU1RFUF9CMCkg
fHwKPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgIElTX0FMREVSTEFLRV9QKGRldl9wcml2KSB8
fCBJU19USUdFUkxBS0UoZGV2X3ByaXYpKSAmJgo+ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgIGNy
dGNfc3RhdGUtPnNwbGl0dGVyLmVuYWJsZSkKPiA+ICvCoMKgwqDCoMKgwqDCoGlmICgoSVNfRElT
UExBWV9JUF9TVEVQKGk5MTUsIElQX1ZFUigxNCwgMCksIFNURVBfQTAsIFNURVBfQjApIHx8Cj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBJU19BTERFUkxBS0VfUChpOTE1KSB8fCBJU19USUdF
UkxBS0UoaTkxNSkpICYmCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBjcnRjX3N0YXRlLT5z
cGxpdHRlci5lbmFibGUpCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHBpcGVf
Y2xpcC55MSA9IDA7Cj4gPiDCoAo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldCA9IGRybV9hdG9taWNf
YWRkX2FmZmVjdGVkX3BsYW5lcygmc3RhdGUtPmJhc2UsICZjcnRjLT5iYXNlKTsKPiA+IEBAIC0y
MTQ5LDcgKzIxNzQsMTQgQEAgaW50IGludGVsX3BzcjJfc2VsX2ZldGNoX3VwZGF0ZShzdHJ1Y3Qg
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwKPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgfQo+ID4gwqDCoMKgwqDCoMKgwqDCoH0KPiA+IMKgCj4gPiArwqDCoMKgwqDCoMKgwqBp
ZiAoZnVsbF91cGRhdGUpCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZ290byBz
a2lwX3NlbF9mZXRjaF9zZXRfbG9vcDsKPiA+ICsKPiA+ICvCoMKgwqDCoMKgwqDCoGZ1bGxfdXBk
YXRlID0gcHNyMl9zZWxfZmV0Y2hfbm90X29wdGltYWwoaTkxNSwgJnBpcGVfY2xpcCwKPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICZjcnRjX3N0YXRlLT5waXBlX3Ny
Yyk7Cj4gPiArCj4gPiDCoHNraXBfc2VsX2ZldGNoX3NldF9sb29wOgo+ID4gK8KgwqDCoMKgwqDC
oMKgY3J0Y19zdGF0ZS0+ZnVsbF9mcmFtZV9mZXRjaCA9IGZ1bGxfdXBkYXRlOwo+ID4gwqDCoMKg
wqDCoMKgwqDCoHBzcjJfbWFuX3Rya19jdGxfY2FsYyhjcnRjX3N0YXRlLCAmcGlwZV9jbGlwLCBm
dWxsX3VwZGF0ZSk7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDA7Cj4gPiDCoH0KPiA+IC0t
IAo+ID4gMi4zNC4xCj4gCgo=
