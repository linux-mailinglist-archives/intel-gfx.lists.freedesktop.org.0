Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E3FF16D754F
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Apr 2023 09:27:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6726E10E02B;
	Wed,  5 Apr 2023 07:27:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5673E10E02B
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Apr 2023 07:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680679643; x=1712215643;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=50hrCO9fz/MoZu6yXrKU+xctS3Y49SNlAJcLioKmQKc=;
 b=PKth9X7ukozW6LExF6p0tMmllVgUhpg65RHnYEaOEV3qUvg7KtNpJROA
 yZf3JbeuhV5NhM0phCT6rfvo6IhoFEoN8Upegqtri9VlEe8yYfDdsi9BI
 bS7egwQPr76NX2lhKeLrGzek/U7MvakPklKdoQ7BhPzoRKexI2/e2VsuJ
 MDy3Q7tEEAee5J5sWaVvcrNdIbKcYp5VBBRUcdNb9cS1tMKewFyiKqnuM
 rf7aYH9A+WjrkU9OD6EYEmuvdK1XlyQwVtncp2W1L0Ft1YnlmRxzfv8mk
 0XDl1d00T8m0qkQtW4eQYm/RSylzz616ilbvsSDkEMPDlcBF7amofzQBs w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="326424828"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="326424828"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Apr 2023 00:27:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10670"; a="716932635"
X-IronPort-AV: E=Sophos;i="5.98,319,1673942400"; d="scan'208";a="716932635"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 05 Apr 2023 00:27:20 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 5 Apr 2023 00:27:20 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 5 Apr 2023 00:27:19 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 5 Apr 2023 00:27:19 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 5 Apr 2023 00:27:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K+4UOVXHPg8MMtrtplP7yMOlrnbjQjwQEYnOxY62ostQsQaxzaIL6LjUcnh+brbu1gzdEJG4XtSyeax+Jm0dFaalO+33Nm97F3rTWquSEfCTjzOQWedCtQHnLEsTJAnOoOJrlViqJ+DQNkuTqGd/iY4Xh27OucZT8pziZGB/xeoSGXaxSc3Q2fL5cZNDIpy7tpbbQaqy16wr/WTQuEJl53Yzm8bkOMVKwuo5Uda9L8Piynudf1FE7uMWxH7vBl3K7DrGsB8q3E5z/XIW/AKsMzcQZK+AuF/pepXU32ZnWkmxHSk6JpZY/m5GtKlG0I2n9/K4ef4XzLOFXzOm3siY2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=50hrCO9fz/MoZu6yXrKU+xctS3Y49SNlAJcLioKmQKc=;
 b=VRUD3AFyuPPqJduBE+1EzAni3rNfi3ZFbe432pKAB0/SSNZwtZdKCbS6fmZaMeOF1+xDdADb0q0nQukPnaHnmhvQ7hthkM7fKYjap9ppeAMG8zmGVdDOlf7fedqRBSSKhawHiF8w7MY0T8EemJ5MIKSoPehJKwuvaXJCz3LtHA6qtGSIse8C1Cqm4fgwMJF94Jd8lqAJLf3Mov0Dv7fcN7CxpOyeNj+3FN+PWw/G3tUOtTwAiaLz8YSJWdOEakQ+JViYXLkKd2T0P0n82Mde6H5qGa9P6i4Os3N8T5xkqdeRBZrrVceLp0TqCgY5J/D27ZwJ2c0B4E2QrRSa/1tFdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB1935.namprd11.prod.outlook.com (2603:10b6:300:10c::20)
 by PH8PR11MB7968.namprd11.prod.outlook.com (2603:10b6:510:25f::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6254.33; Wed, 5 Apr
 2023 07:27:12 +0000
Received: from MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f]) by MWHPR11MB1935.namprd11.prod.outlook.com
 ([fe80::47e0:df10:25c7:ce5f%7]) with mapi id 15.20.6254.035; Wed, 5 Apr 2023
 07:27:12 +0000
From: "Golani, Mitulkumar Ajitkumar" <mitulkumar.ajitkumar.golani@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 6/6] drm/i915/vrr: Allow VRR to be toggled
 during fastsets
Thread-Index: AQHZW2tdCsHmHHVh0Um/XLzz3hVVX68caPyg
Date: Wed, 5 Apr 2023 07:27:11 +0000
Message-ID: <MWHPR11MB193572439AE295EDCD68404DB2909@MWHPR11MB1935.namprd11.prod.outlook.com>
References: <20230320203352.19515-1-ville.syrjala@linux.intel.com>
 <20230320203352.19515-7-ville.syrjala@linux.intel.com>
In-Reply-To: <20230320203352.19515-7-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB1935:EE_|PH8PR11MB7968:EE_
x-ms-office365-filtering-correlation-id: a7c913bb-ee12-4a63-7ae3-08db35a72c34
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y6JUWA/jOvH7JTSTEGwusPy9tAswUou2OxRJL8POyU4W24LXRUi/gupWY/f8JlEmPcsn3p+zNqPb7NXlcbjCOZGlCmsG9kfXLWHBrW9vVGTWEQ9krzP0A6rGlZFU58yP/lOn7PoaRvQ+rqYOtLinuMHf7KSaicnlOEf1BAkUIR+Yq8gBCdGX97ROZwdXJKa2klWxsF9VYFuGCeX9adYtrK3of1C3sOYUal8wvI8fHGbbKuZK9RTXsYw9LJDW7UqsNBiJuu5z05kzINrHDhuBXogTQs9UHfSaoF/4GhiOGAdi+/Z37aK1/euMtltt/chZD4p1PGWMqMjMP/9zKviT6ChXUGvaV7eeTYxadvyAMZLYj5ccRrqGdNnLHrWshu1la9s4dIk+8PU4cYDquqKvlcp+Op0GWVa0gdUZF9d2oD2CmrMPvpiQR+mgccU2bc8K0Cod/k/LCLUrOdOi/aJ7qIZsF3DhcfiA85VoojpN91DlDjTDO6gjSqNE3GUpK5MnmWNIt2Gw1de7SqbsRWPVMnzBKFDo2GE6lC09JNh6S8Aq/ivjBdTavF2VlcKCZrjz
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1935.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(136003)(346002)(376002)(366004)(451199021)(55016003)(4326008)(66556008)(64756008)(66476007)(8676002)(66446008)(76116006)(66946007)(122000001)(6916009)(478600001)(52536014)(316002)(8936002)(5660300002)(41300700001)(38100700002)(82960400001)(186003)(83380400001)(53546011)(66574015)(71200400001)(966005)(6506007)(9686003)(86362001)(33656002)(2906002)(38070700005)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cENXeDRveG5LT05FK3VTU1dqQWw3YUdjekNzcnBpbTZ4aWFkY0twZStYdUI2?=
 =?utf-8?B?ZWQ1VU42YkE4eG5NTzhUQ05DTlNGR0hMa3VUdFM0bFFTdVRYajhFclBQcEFL?=
 =?utf-8?B?MFFSZHI3akw4TnhOQWVIbVpKamNkTThua2Q1MFBvQWtnVnp1OUljSFZFMnNF?=
 =?utf-8?B?SVFiMXJXL2xya3pnd1FCbERhYkpvbm9SdUZuNUpKd0FqL2V0dUxDQVFoMjg4?=
 =?utf-8?B?VHhSVlhKWmQ1bmVBdjdkV0tYWWZpMUxUcE5YZVIwaVc0T2R5aTFFVndScEN5?=
 =?utf-8?B?VjgxTEpDT3V3bXpkN0xlTk9BQWNZVitwNjNuaVFzUW9GT1JEcjZPbTl2ZE9Q?=
 =?utf-8?B?UVhabi9vTFpwT25sQjJ6MVd1d3N6OUFlR3hWaGYraXkxTjJnNm92S0piVzcy?=
 =?utf-8?B?RkRvY085cDBVVDZoR2cxZzI5eTYwa29BeERQa1p3YkFFQlVEWGZGdlZVcHlu?=
 =?utf-8?B?dS95NkFGaC9udFVsWkpkNFVWdnZmVVBza3FZNHU5N3dJRjltOGEvWVAxUzky?=
 =?utf-8?B?cldnaVVKeVI2aGpLVXZPRWdMUExtL21MaWZOdk56QURraFN1c1I0enRnQWx2?=
 =?utf-8?B?YW1XZkRnTDZndmJVdXBOZDZhU2p2UEVVN01XMFN2WGNVNGVWRzNWTkVPNHN0?=
 =?utf-8?B?cGNheUovM2xzOUZtTmlPYzZ1Nnk0MmFXcTBabUdkbmdJMW84b0VFU1R4OFNH?=
 =?utf-8?B?MHB5QlhRMUhnYVBzajhZMWxVenFnNUJYdThhNnZBb3pDL1NmWHFaakFqM21z?=
 =?utf-8?B?S3FyMUE5NXVLT1hlRFcwNFhqb0FVTVh6U3ZsVjErWTA0THFuclc4V1FJaGVX?=
 =?utf-8?B?R0xrSnZGTGpnQnRqZHg4UDlOZzc2WXU4TUVaODdGSTFrUVpHMU5NSmRyek5H?=
 =?utf-8?B?UHB4MFU4c0J4SzY2UU1wQUlES3cvRDZxa3JtNU1rd0JkNmoyUXhnUmtiZnRW?=
 =?utf-8?B?bWp6RWF0ZG0vVFIzcDIzV2RIYVdnbElwYzJ1a29WeWZxMHVJNmZBbzVZTjNj?=
 =?utf-8?B?ZEF1QlRvYWdCZUZCZWs4YksxMFlvczU2RmRXdDc0cWxPL0ZPdmNEc3VQd2Nt?=
 =?utf-8?B?QVZ2Qmd1M3FtWXptNXl0Y0w4bnRSdVJTL1VYejEvdC95ZGJ5U0UrZ21tMzhI?=
 =?utf-8?B?RytoVk94ckxNN0FPbms1OGZqdmMyYWI1b21ON0N3Q3Z3OHJORFdRQktnaHVQ?=
 =?utf-8?B?RUdUWXB4RFFML0NvTFpiK1poblhGMzBGRVJaSnI2SUIya2lBN1QrTnhNazdI?=
 =?utf-8?B?cjE3dFVydDFZaVB4dHNBbHI3aTRDOTRJeEVnakVVeFJiTEY0Y0NMQ0EycmZw?=
 =?utf-8?B?ZTFQWnZyNEJPN2cxdHl0TkYxelM1SVJFQWlodTFqSjlmczRpVDF4NjJPNzdW?=
 =?utf-8?B?dnVwR2RPZ05hM1MxRTZEMDQ0Uk1qbFJHVW5xS1RKRVJXaGZpbHQ3VUwrQzJx?=
 =?utf-8?B?OE9IMlZUT2liVVRSRnlUdkJHSk92V0x3bzVlWjRvWFI0blJvTk9BY29kaGcy?=
 =?utf-8?B?YmtjUWQ5ZE9EN1FJMzhyNHhLWkJTSWdFR2VOazF1aGQxcHJwamVOZTN0Zzg2?=
 =?utf-8?B?THBXd2tDV3g4cEgzZUt4QVVGUEw5c3VZajBLeHR1QUZmdjlxMDF2cUFyWHJF?=
 =?utf-8?B?SHpXOTZ1aFZwcEM2dUVOMWFTc2xWSnF6RFZndG9WaHY1WTFYUHFXU01LTTVL?=
 =?utf-8?B?QVZ2QkRXNVpyUkFmd3FBdDh6cDIxNy9PeHoxaWg0b1RrR2JZWEE5YmpSU0ZI?=
 =?utf-8?B?emtWd0djYkZsRTI1NWtHYUUyZnppSk9heTllYzZxNXZIb0ZqNnlnREVWckU1?=
 =?utf-8?B?eDhUUE5QUXNqdEdVQ2o5TURwd1AvSTB6bnZha1V2a0lvL0RIWWl4NmlVUHE1?=
 =?utf-8?B?VDdzOFIwcTgyWkJaa0toTTBkOW8ySEt1ZGlGdzhjeW1sZ1JyOXpudkNXdGdO?=
 =?utf-8?B?WnVacXRWYlVkeE9JWHF6L0h1SUpaYnd0L2lrY2pXcktrOFIvRG5zNW1JcE9k?=
 =?utf-8?B?TTh0MTlGWWVhdlBEdTFiZzZ3SE0zbUFPTnU2RklSYVMvaWlRTkF4YWtja2Zx?=
 =?utf-8?B?cmM5Q1YzSEQxVkdoWkhMci9icld1OWVIWGNSejJiUGFnRE5lZ2JLMHpVTHhj?=
 =?utf-8?B?QzZ4bmMwYUprb3FyQ1M4MVZISmpaQkVOV1JZYzE2bVpPbU1IZ3pJUkQzUGQ5?=
 =?utf-8?B?Y05nWHpKWGphVnNvLzJTcXJGNkNaQ0c5QWJjSXg2cHFNMDJ6MDVkOTEva1Yy?=
 =?utf-8?Q?4LcFoaEA/9tsI57apIa6+Zl0WCRjCd+VBqPB7fBOjM=3D?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1935.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a7c913bb-ee12-4a63-7ae3-08db35a72c34
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Apr 2023 07:27:12.0206 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZKwVCYXzX/NHp3Oyuyq29gcH1un5JM18saf9yWvmw2bAPSj2fMEbj4UXnUu76ooZHFJNY0rsgn1+ubPw0fuWqh0ypmYaq7AqzA8evYWD0ka6dCB3Ltby3kSf3jjwqUz3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7968
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/6] drm/i915/vrr: Allow VRR to be toggled
 during fastsets
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IDIxIE1hcmNoIDIwMjMgMDI6MDQNCj4gVG86IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENIIDYvNl0g
ZHJtL2k5MTUvdnJyOiBBbGxvdyBWUlIgdG8gYmUgdG9nZ2xlZCBkdXJpbmcNCj4gZmFzdHNldHMN
Cj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5j
b20+DQo+IA0KPiBOb3cgdGhhdCBWUlIgZW5hYmxlL2Rpc2FibGUgYXJlIGNhbGxlZCBmcm9tIGNv
bnZlbmllbnQgcGxhY2VzIGl0IGlzIHRyaXZpYWwgdG8NCj4gYWxsb3cgaXQgdG8gY2hhbmdlIHN0
YXRlIGR1cmluZyBmYXN0c2V0cy4NCj4gTWFrZSBpdCBzby4NCj4gDQo+IENsb3NlczogaHR0cHM6
Ly9naXRsYWIuZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy83NTQyDQo+IFNpZ25l
ZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+
DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMg
fCAzICsrLQ0KPiAgMSBmaWxlIGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigt
KQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5
LmMNCj4gaW5kZXggY2VmZDlmMmUxMzMxLi4wNzc0M2IyZDJlZjAgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBAIC01ODQ5LDcgKzU4
NDksOCBAQCBpbnRlbF9waXBlX2NvbmZpZ19jb21wYXJlKGNvbnN0IHN0cnVjdA0KPiBpbnRlbF9j
cnRjX3N0YXRlICpjdXJyZW50X2NvbmZpZywNCj4gIAlQSVBFX0NPTkZfQ0hFQ0tfSShzcGxpdHRl
ci5saW5rX2NvdW50KTsNCj4gIAlQSVBFX0NPTkZfQ0hFQ0tfSShzcGxpdHRlci5waXhlbF9vdmVy
bGFwKTsNCj4gDQo+IC0JUElQRV9DT05GX0NIRUNLX0JPT0wodnJyLmVuYWJsZSk7DQo+ICsJaWYg
KCFmYXN0c2V0KQ0KPiArCQlQSVBFX0NPTkZfQ0hFQ0tfQk9PTCh2cnIuZW5hYmxlKTsNCg0KY2hh
bmdlcyBMR1RNLiANClRoYW5rcw0KIA0KUmV2aWV3ZWQtYnk6IE1pdHVsIEdvbGFuaSA8bWl0dWxr
dW1hci5haml0a3VtYXIuZ29sYW5pQGludGVsLmNvbT4NCg0KPiAgCVBJUEVfQ09ORl9DSEVDS19J
KHZyci52bWluKTsNCj4gIAlQSVBFX0NPTkZfQ0hFQ0tfSSh2cnIudm1heCk7DQo+ICAJUElQRV9D
T05GX0NIRUNLX0kodnJyLmZsaXBsaW5lKTsNCj4gLS0NCj4gMi4zOS4yDQoNCg==
