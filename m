Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4E67D0C33
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Oct 2023 11:44:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 72F0510E0EB;
	Fri, 20 Oct 2023 09:44:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE23410E5A5
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 09:44:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697795082; x=1729331082;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=Ni/sMg3G4jO3qGfGvDEarYhBlVolZAU2mwmGLu6+jbo=;
 b=csfje3w869u3IHFaMMDKIl2hyD6vabY3wItIpOODGp/uvgRpFbWH3zJS
 7VCNYOeNyQ9cQuGPkkiRfXc192IBQQrVdqu141V5WdNcZy9SzRpPLiti3
 /sQi8CuSR/pjdobDDsERmhmRHUD1uqcVfAKuit5AJ19K3qhrp7Y1hg5Rb
 fYUu3wCnCkICIj7haWnetL36C2oB6PCfEKzjEQnBFYOytkX3bhRdwb4pz
 0eRhUbxRJPJR7rq5tNbX035fzpB6c1accpauMD/+ScTnq4PKW24XLuUA1
 5snrh7HxFRoA+5CbdYsc5SnTo02JsG5xF5N7M3VutR44dNkqaa/XJeRe3 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="371539980"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="371539980"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Oct 2023 02:44:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10868"; a="757405507"
X-IronPort-AV: E=Sophos;i="6.03,238,1694761200"; d="scan'208";a="757405507"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Oct 2023 02:44:36 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 02:44:35 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 20 Oct 2023 02:44:35 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 20 Oct 2023 02:44:35 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Fri, 20 Oct 2023 02:44:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Mgx+TDXoBxOwS/883nnVSI5sjGDo6XI9ts1li19wS8GAfYeJyGnWsOsDtsnHpMb1t7nsP5Y5rxq0A0BSUGqHwMFKh7aqf9Dax8FHQUtY5ESYNLhviARESf6GVnkkA0Kqx+9FB7mndh8o6LO7PgFdVxmwB5v+yfBvpQSrV9Mq8o7oLxdk/JwxIt/z+wSO539vXX7LRIzGMgyCRhFFHA4txfGeNimWqOPqnT4RyxFZ5E9y/fHyqLHVRzk5CHTQQygpwCJMjmIQLud6/yA2l2tlBmN69Z2uJOnL1ATx71wBGlKq93+UIFgW6qp0cOB3wRPkmkEo6tQiICwcuOgTUGUdFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ni/sMg3G4jO3qGfGvDEarYhBlVolZAU2mwmGLu6+jbo=;
 b=fNMge6V7xoj7bntoXjM9WA1XedL1277pRQHC5pvpG/aEki7NuiwLehUYysl0CdpQRMZ74frbq8ICiyApNzr8uP8qQwLv1VvaPKE1RqpnRwuwjR1kawBxVjIPYCJ5xZHjDcAShGze6DjKqRizhz03ET3pmTWSmA/lojJenR4paFfdS2AlQpugDiFcwIma/rjbKuFNJsZg1HxwVgPnnzetzxzrl7vBX77e4lU706oe4MjCaYo2h0PX7ImfPe6Sgs5zO6H8BHm7BMkgZVMIOJQ/Drna25trDLkk0ld5PEicFB20CSE0KpF17JJ2a/I/6CvWF9H5PgOYexIaPstjACHigA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DS7PR11MB6078.namprd11.prod.outlook.com (2603:10b6:8:86::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.23; Fri, 20 Oct 2023 09:44:31 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::483:8093:febb:f038]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::483:8093:febb:f038%4]) with mapi id 15.20.6907.022; Fri, 20 Oct 2023
 09:44:31 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "maarten.lankhorst@linux.intel.com" <maarten.lankhorst@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/display: Use dma_fence interfaces instead of
 i915_sw_fence
Thread-Index: AQHaAAf3GD4Fye2n6kWtqzjInBAftrBPshgAgAAalwCAAAz5AIACmlKA
Date: Fri, 20 Oct 2023 09:44:31 +0000
Message-ID: <58cab73aea0940d0fb2eef14685783a239a8376a.camel@intel.com>
References: <20231016080803.3313020-1-jouni.hogander@intel.com>
 <ZS_72os_326uj8ty@intel.com>
 <eb76fa53-a5b7-24ab-6902-1828e689deed@linux.intel.com>
 <ZTAdCnY7C9Br2YSy@intel.com>
In-Reply-To: <ZTAdCnY7C9Br2YSy@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DS7PR11MB6078:EE_
x-ms-office365-filtering-correlation-id: 6dbc4ccd-9b13-4be0-6289-08dbd15128df
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Ts6DKjSt3/BMevDTCbb/ptt4VrgVR3VJqWf0omc1KncSCxDi1gXMezHIOtz+qYBgzFCUrGmJmUqbrBT4ksJLKm3ywIoH05QtDP4jK07NfJLyLIrJGAacA2H0vCshukZ3NSAOv2V51nZtcwkSVwqvZZTbSvxhgcvEUoPuB9sy+AMEFhENtzH2WDIJtDr+lx7klXJfUKjn1We7Eg/CUhCK73pg9HO93O/k4e23F3FXrSk/OUtZhJQd7zKL58rYjti61KteXfZONAQkhuKSYz57gBd7YnwK7/f8Z2UD8UWdTL47bnCKrHYVJtGyiqRKDtisT+LV8WgS9JfNnmaGBCKqJXO17rqMYQP+Gj86RZ+PYfii1SQ9xYF6KEioEZhnsNLOO4Yru7WKPoS4sgziKOW3KMWgwjMC7Zuoj46P5UmpFEtNMn89/A0gevbOI//CAytKwPhyHrqna+JCVsKO0TUvB0iwcZNUdqWscnQRycrd5QRVK6r1CAJA/ej9bbnXcFCy1ErjKnwPxWgtzufVLS/41jDTW8RoEVNM/1+oDUlH43aJj1dogt1BjBaSvZpavzvAkRhmHDW+hFkAaVpFb1VfGVb8l8lWqZ2q09aLbh1s6KxTS2fJpbZjORM4K3V/wODY
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(376002)(346002)(39860400002)(136003)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(86362001)(4326008)(316002)(66446008)(64756008)(110136005)(91956017)(76116006)(66476007)(41300700001)(54906003)(66946007)(6506007)(6512007)(66556008)(478600001)(36756003)(5660300002)(6486002)(8676002)(4001150100001)(8936002)(53546011)(122000001)(2906002)(38100700002)(71200400001)(83380400001)(26005)(82960400001)(2616005)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OWFmQXhQdUE3SjJESlZCMDQ1VnNFcy8vMjhiTVhyQURUVkQ1TzdXcGNDY3dF?=
 =?utf-8?B?WUV2Q0ovV0RMWHFRV05jeE1FQ094R0hhcXpiNGpwYjVEdFhQZy80cER0aGta?=
 =?utf-8?B?RGNtd0JheG52SWczalprRHNNbVIzTHU1Z21VRmgvRUNPdnZtZmVGMElCY2NE?=
 =?utf-8?B?cG9KKzI2bFVXVUJyWUpUeWY5Tk9ZeERtcTBGVEIva1dJSWxFdE9CcGV3OSt4?=
 =?utf-8?B?b3g0WVkwdEs4c2hnejh4UmxkdGRrejhQcm9UY2UxZWczcXZyVE55dllrU0la?=
 =?utf-8?B?RVA0NGtVMGlmczBWRHR1SXlXMXFVYkxscXl2QVJyNkJEOWlZbHBHVlhTQ1VE?=
 =?utf-8?B?RlJCdHpKSU5kc3pzeCtkNGx1eXB5T1FGaTh0U1FzaTd3K2V6MWtaWUwxSlI3?=
 =?utf-8?B?TWxxbzFOSlp4SE5uWXRXUmRMTzdsUGpuYnQvdzU5L2RxWXpBaEZKT2h4Zy9E?=
 =?utf-8?B?M1Y3MTNuc2pBY2dQeWt0bnk1akFLODdZcTBxUnk5YjMzTStsVkI5TG5PdUtM?=
 =?utf-8?B?VVM5aHl1SkNQL2ZHaWEvNGVaYVJMdEpZNm9XczhHWGZoVFBKQ2ZScjBqWlB1?=
 =?utf-8?B?UDE0TEtWRTVONHhNdlErektqd0F3NHozcjU0K0kyeWpSbVU2YU9jcDQvRnMx?=
 =?utf-8?B?UlFuT1NnMnVNYnVMNUgvRG9mbWxGTFRkdGhTdEhaNXdOcTRiZDdERm5ySmRI?=
 =?utf-8?B?eGs1eS9TdGV2ZDg4L2NsellRMmZWNnpmUmRtYXZPVk1waDRjSndrSHczSkUz?=
 =?utf-8?B?TWU5aGFzdStNM0tTMHpyNUVNUUhPSG5wOC8yK3JZeUZTQk50UmhWSm90V1J1?=
 =?utf-8?B?QTFaRHl5UmFybFdmMENwalFXWnBkK1ZWSUt2S2M4NjAraVYwQTVSNzhaSDhw?=
 =?utf-8?B?NVhKcGVxajI2ckZSWlpFczk4MnFQWmJFVFVUM01WSWoyR21RZjlHRGdXZUd5?=
 =?utf-8?B?alF1TWpBMEJiU28xZFJKMHA3TnY2bEJMSktEaE1RWktKZTFiK3dHSG0rSzRY?=
 =?utf-8?B?VExnTG5jL2pkYmZ2UTFlU1Vmc1FQSFVVUlNaWmNqYXNLNFpJNHM3QndHYXl0?=
 =?utf-8?B?L2JzaTRXMWp2dm5GMFZoK1JyZ053OFVIUWF5cGp4L08wREVMa2ZWQnF1RWdN?=
 =?utf-8?B?OEJ0UkdyR3ZhZjdkWCt2UFlzK2lNd1RMc0pvTEo2N0cwNW1HdEQzaytZbWVK?=
 =?utf-8?B?Mk1PdWVzL21oRWVvNlovengvWGRUWVBJYjBWUGU1dy9DSzF0azhDTnVyNVpC?=
 =?utf-8?B?eC9NUG1ObDR6ZVY5SHkvSUxVemtLai9aZlYzWnVaaG5hKzFwTU1OL1pIanNy?=
 =?utf-8?B?VmQzSDB4clBSZUpwM2VXY2hEemZOUGtFVjc0R1ZwTFNNZHo4bWE4UHNiS0Jn?=
 =?utf-8?B?b1FhY01DaGFpSmRJM3dmSHBFNlRUYXRTWmVRSkRCZDh2VklNamVxZHlFdGp1?=
 =?utf-8?B?UEVQc3R0YUhYTUFRemtqSVpqMXM4RlFmbUhRaUswaXlZcUN3empJeDZUdlpS?=
 =?utf-8?B?RVAxNnNRdjl0eE9UeDVoUktCcThURWRpLzVZN2FUWmI4dFBwZjg2SzYrbVZT?=
 =?utf-8?B?K0xNSHBGSkt2SmUzcTF2WkRPL1hnejRzZ3NzNzVsaEYwbmh3QWFjM24vMTVM?=
 =?utf-8?B?d3kxNWVlbFcrTW9YalFyc0lORVdLRVFaOS8zY0hkWVRzY3daeVd2RlVPZTRr?=
 =?utf-8?B?WGRkLzhPMmw4cTdDdlFWckV2UStoOXJNZHZrVEtwK2JUL1FPMkpmY1V4K2ZH?=
 =?utf-8?B?TFAwTUZZSGlpSHlna2xjdUxlZVRXc1pLU05Fc2I1OUlId1puU2dCNDBlZ1hu?=
 =?utf-8?B?NXNYaW9YZ3VaaVRHYndYZlZ6eWJqbjMwUVFFTW1NNkFOUjBZVU84aERuN2Z4?=
 =?utf-8?B?ZjhobmhoN3VrMW1Jemx1aGQrRUtGQWN5VjhBNC95ZTJuT0FUWVFHbHA4cWtu?=
 =?utf-8?B?Y05yQ1Q0MmtKRDFrMGVubXRnOXo1aERxMjN1Rm02SlR6Skl1UWtUV1VHaitD?=
 =?utf-8?B?MzE0ZE4xR3B6cWVBMWNGR3pQaTU5OWFBYXFBRVk1OXZuL1R2TmlZdXRYYmNV?=
 =?utf-8?B?SWxaZnZuK3hqelh4cWlWWk1Wclo0V3RqcXRkYTZDN3hRTEJEdDc4RDhweUVY?=
 =?utf-8?B?M2luaVFVUEI1QTV2clpjTUdjRjNmMVk1dnVEejdmMVRJa25NQVNJSE5JcDVn?=
 =?utf-8?B?MlE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <85DA6E9577AAEC4E80BD13BD47F44627@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dbc4ccd-9b13-4be0-6289-08dbd15128df
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Oct 2023 09:44:31.0861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yP5IYnRL01D4Wc3xGhKx4wkMIO5EXwQie0P9uikHDqSDMS9U96KJ7xc5sa1E5kOV/ameuDyf0D9Y4Dlm6DzWTN/R8KbwImgwHzog9GGjtkI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6078
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Use dma_fence interfaces
 instead of i915_sw_fence
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gV2VkLCAyMDIzLTEwLTE4IGF0IDIwOjU5ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gV2VkLCBPY3QgMTgsIDIwMjMgYXQgMDc6MTM6MTJQTSArMDIwMCwgTWFhcnRlbiBMYW5r
aG9yc3Qgd3JvdGU6Cj4gPiAKPiA+IAo+ID4gT24gMjAyMy0xMC0xOCAxNzozOCwgVmlsbGUgU3ly
asOkbMOkIHdyb3RlOgo+ID4gPiBPbiBNb24sIE9jdCAxNiwgMjAyMyBhdCAxMTowODowM0FNICsw
MzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6Cj4gPiA+ID4gV2UgYXJlIHByZXBhcmluZyBmb3Ig
WGUgZHJpdmVyLiBYZSBkcml2ZXIgZG9lc24ndCBoYXZlCj4gPiA+ID4gaTkxNV9zd19mZW5jZQo+
ID4gPiA+IGltcGxlbWVudGF0aW9uLiBMZXRzIGRyb3AgaTkxNV9zd19mZW5jZSB1c2FnZSBmcm9t
IGRpc3BsYXkgY29kZQo+ID4gPiA+IGFuZAo+ID4gPiA+IHVzZSBkbWFfZmVuY2UgaW50ZXJmYWNl
cyBkaXJlY3RseS4KPiA+ID4gPiAKPiA+ID4gPiBGb3IgdGhpcyBwdXJwb3NlIHN0YWNrIGRtYSBm
ZW5jZXMgZnJvbSByZWxhdGVkIG9iamVjdHMgaW50byBvbGQKPiA+ID4gPiBhbmQgbmV3Cj4gPiA+
ID4gcGxhbmUgc3RhdGVzIHVzaW5nIGRybV9nZW1fcGxhbmVfaGVscGVyX3ByZXBhcmVfZmIuIFRo
ZW4gd2FpdAo+ID4gPiA+IGZvciB0aGVzZQo+ID4gPiA+IHN0YWNrZWQgZmVuY2VzIGR1cmluZyBh
dG9taWMgY29tbWl0Lgo+ID4gPiA+IAo+ID4gPiA+IFRoZXJlIGlzIG5vIGJlIG5lZWQgZm9yIHNl
cGFyYXRlIEdQVSByZXNldCBoYW5kbGluZyBpbgo+ID4gPiA+IGludGVsX2F0b21pY19jb21taXRf
ZmVuY2Vfd2FpdCBhcyB0aGUgZmVuY2VzIGFyZSBzaWduYWxlZCB3aGVuCj4gPiA+ID4gR1BVIGhh
bmcgaXMKPiA+ID4gPiBkZXRlY3RlZCBhbmQgR1BVIGlzIGJlaW5nIHJlc2V0Lgo+ID4gPiA+IAo+
ID4gPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pgo+ID4gPiA+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXgu
aW50ZWwuY29tPgo+ID4gPiA+IENjOiBKb3PDqSBSb2JlcnRvIGRlIFNvdXphIDxqb3NlLnNvdXph
QGludGVsLmNvbT4KPiA+ID4gPiAKPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5k
ZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiA+ID4gPiAtLS0KPiA+ID4gPiDCoCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pYy5jwqDCoCB8wqAgMyAtCj4gPiA+
ID4gwqAgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFuZS5jIHwgNDkg
KysrLS0tLS0tLQo+ID4gPiA+IC0tCj4gPiA+ID4gwqAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kaXNwbGF5LmPCoCB8IDc4ICsrKysrKy0tLS0KPiA+ID4gPiAtLS0tLS0tLS0K
PiA+ID4gPiDCoCAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmjCoMKg
wqAgfMKgIDIgLQo+ID4gPiA+IMKgIDQgZmlsZXMgY2hhbmdlZCwgMzcgaW5zZXJ0aW9ucygrKSwg
OTUgZGVsZXRpb25zKC0pCj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMKPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMKPiA+ID4gPiBpbmRleCA1ZDE4MTQ1ZGEyNzku
LmVjMGQ1MTY4YjUwMyAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F0b21pYy5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9hdG9taWMuYwo+ID4gPiA+IEBAIC0zMzEsOSArMzMxLDYgQEAgdm9pZCBp
bnRlbF9hdG9taWNfc3RhdGVfZnJlZShzdHJ1Y3QKPiA+ID4gPiBkcm1fYXRvbWljX3N0YXRlICpf
c3RhdGUpCj4gPiA+ID4gwqAgCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGRybV9hdG9taWNfc3Rh
dGVfZGVmYXVsdF9yZWxlYXNlKCZzdGF0ZS0+YmFzZSk7Cj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDC
oGtmcmVlKHN0YXRlLT5nbG9iYWxfb2Jqcyk7Cj4gPiA+ID4gLQo+ID4gPiA+IC3CoMKgwqDCoMKg
wqDCoGk5MTVfc3dfZmVuY2VfZmluaSgmc3RhdGUtPmNvbW1pdF9yZWFkeSk7Cj4gPiA+ID4gLQo+
ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBrZnJlZShzdGF0ZSk7Cj4gPiA+ID4gwqAgfQo+ID4gPiA+
IMKgIAo+ID4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2F0b21pY19wbGFuZS5jCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2F0b21pY19wbGFuZS5jCj4gPiA+ID4gaW5kZXggYjEwNzQzNTA2MTZjLi5kNGY5MTY4
ZWM0MmMgMTAwNjQ0Cj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9hdG9taWNfcGxhbmUuYwo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfYXRvbWljX3BsYW5lLmMKPiA+ID4gPiBAQCAtMzIsNiArMzIsNyBAQAo+ID4g
PiA+IMKgwqAgKi8KPiA+ID4gPiDCoCAKPiA+ID4gPiDCoCAjaW5jbHVkZSA8ZHJtL2RybV9hdG9t
aWNfaGVscGVyLmg+Cj4gPiA+ID4gKyNpbmNsdWRlIDxkcm0vZHJtX2dlbV9hdG9taWNfaGVscGVy
Lmg+Cj4gPiA+ID4gwqAgI2luY2x1ZGUgPGRybS9kcm1fYmxlbmQuaD4KPiA+ID4gPiDCoCAjaW5j
bHVkZSA8ZHJtL2RybV9mb3VyY2MuaD4KPiA+ID4gPiDCoCAKPiA+ID4gPiBAQCAtMTAzNSw3ICsx
MDM2LDcgQEAgaW50ZWxfcHJlcGFyZV9wbGFuZV9mYihzdHJ1Y3QgZHJtX3BsYW5lCj4gPiA+ID4g
Kl9wbGFuZSwKPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUgPQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdG9faW50
ZWxfYXRvbWljX3N0YXRlKG5ld19wbGFuZV9zdGF0ZS0KPiA+ID4gPiA+dWFwaS5zdGF0ZSk7Cj4g
PiA+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUocGxhbmUtCj4gPiA+ID4gPmJhc2UuZGV2KTsKPiA+ID4gPiAtwqDCoMKgwqDCoMKg
wqBjb25zdCBzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKm9sZF9wbGFuZV9zdGF0ZSA9Cj4gPiA+
ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlICpvbGRfcGxhbmVfc3Rh
dGUgPQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfYXRvbWlj
X2dldF9vbGRfcGxhbmVfc3RhdGUoc3RhdGUsIHBsYW5lKTsKPiA+ID4gPiDCoMKgwqDCoMKgwqDC
oMKgc3RydWN0IGRybV9pOTE1X2dlbV9vYmplY3QgKm9iaiA9Cj4gPiA+ID4gaW50ZWxfZmJfb2Jq
KG5ld19wbGFuZV9zdGF0ZS0+aHcuZmIpOwo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qg
ZHJtX2k5MTVfZ2VtX29iamVjdCAqb2xkX29iaiA9Cj4gPiA+ID4gaW50ZWxfZmJfb2JqKG9sZF9w
bGFuZV9zdGF0ZS0+aHcuZmIpOwo+ID4gPiA+IEBAIC0xMDU3LDU2ICsxMDU4LDMwIEBAIGludGVs
X3ByZXBhcmVfcGxhbmVfZmIoc3RydWN0IGRybV9wbGFuZQo+ID4gPiA+ICpfcGxhbmUsCj4gPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKiBUaGlzIHNob3VsZCBvbmx5IGZh
aWwgdXBvbiBhIGh1bmcgR1BVLCBpbgo+ID4gPiA+IHdoaWNoIGNhc2Ugd2UKPiA+ID4gPiDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAqIGNhbiBzYWZlbHkgY29udGludWUuCj4gPiA+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgKi8KPiA+ID4gPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKG5ld19jcnRjX3N0YXRlICYmCj4gPiA+ID4gaW50ZWxf
Y3J0Y19uZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSkgewo+ID4gPiA+IC3CoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0ID0KPiA+ID4gPiBpOTE1X3N3
X2ZlbmNlX2F3YWl0X3Jlc2VydmF0aW9uKCZzdGF0ZS0+Y29tbWl0X3JlYWR5LAo+ID4gPiA+IC3C
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAKPiA+ID4gPiBvbGRfb2JqLT5iYXNlLnJlc3YsCj4gPiA+ID4gLcKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoAo+ID4gPiA+
IGZhbHNlLCAwLAo+ID4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAKPiA+ID4gPiBHRlBfS0VSTkVMKTsKPiA+ID4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaWYgKG5ld19jcnRjX3N0YXRlICYmCj4gPiA+
ID4gaW50ZWxfY3J0Y19uZWVkc19tb2Rlc2V0KG5ld19jcnRjX3N0YXRlKSAmJgo+ID4gPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgIWRtYV9yZXN2X3Rlc3Rfc2lnbmFs
ZWQob2xkX29iai0+YmFzZS5yZXN2LAo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAKPiA+ID4gPiBkbWFfcmVzdl91c2FnZV9ydyhmYWxzZSkpKSB7Cj4gPiA+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXQgPQo+ID4gPiA+IGRybV9n
ZW1fcGxhbmVfaGVscGVyX3ByZXBhcmVfZmIoX3BsYW5lLCAmb2xkX3BsYW5lX3N0YXRlLQo+ID4g
PiA+ID51YXBpKTsKPiA+ID4gCj4gPiA+IFRoaXMgSSB0aGluayBpcyBicm9rZW4uIFRoZSBvbGQg
cGxhbmUgc3RhdGUgYW5kIGl0cyBmZW5jZSBjYW4KPiA+ID4gc3RpbGwgYmUKPiA+ID4gaW4gdXNl
IGJ5IHRoZSBwcmV2aW91cyBjb21taXQsIHNvIHdlIGNhbm5vdCBtdXRhdGUgaXQgaGVyZS4gVGh1
cwo+ID4gPiB3ZQo+ID4gPiByZWFsbHkgbmVlZCB0byBnZXQgdGhlIGltcGxpY2l0IGZlbmNlIGZy
b20gdGhlIG9sZCBmYiBjaGFpbmVkCj4gPiA+IGludG8gdGhlCj4gPiA+IG5ldyBwbGFuZSBzdGF0
ZSdzIGZlbmNlLgo+ID4gSXMgaXQgZXZlbiBuZWVkZWQgdGhvdWdoPyBJZiBuZXdfcGxhbmVfc3Rh
dGUgYWx3YXlzIGNhbGxzCj4gPiBwcmVwYXJlX2ZiLgo+IAo+IEl0J3MgZXhwbGFpbmVkIGluIHRo
ZSBjb21tZW50LgoKVGhhbmsgeW91IFZpbGxlIGFuZCBNYWFydGVuIGZvciBjaGVja2luZyBteSBw
YXRjaC4gSSBoYXZlIGFkZHJlc3NlZApWaWxsZXMgY29tbWVudCBhYm91dCBvbGQgcGxhbmUgc3Rh
dGUgZmVuY2UuIFBsZWFzZSBjaGVjayBuZXcgdmVyc2lvbi4KCkJSLAoKSm91bmkgSMO2Z2FuZGVy
Cgo+IAoK
