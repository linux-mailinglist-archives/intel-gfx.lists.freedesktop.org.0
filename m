Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 575C67EDC4B
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Nov 2023 08:49:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CA65F10E249;
	Thu, 16 Nov 2023 07:49:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BDEF10E249
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Nov 2023 07:49:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700120987; x=1731656987;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WoQ50j6ovf9uU0yeE++DoVZFsfTfFJFftT/AkTKtLWA=;
 b=l3oeImMog2gv4txvMkJYemGfUbNshudwQIhYeHzoJrFfvcJ4cA2w67mG
 r3ZSBpmsHYAacs2BoI0zwYOFzlEwnxVy4nskEK91HwnkVFBnadj2kE+42
 fpAnbnRM0dQEtYvglc/K/QdzgL8Y57xJfkMJSVYyA3C3aLckShWfccL/X
 DGYN4JsbZNwbwMeqgkWvD1Xi1qvg0bbAgdNKFVk3WeDCcSy2rTh4UeAal
 BXr/Lo+mXQjONa3iKKtM3HlaX9N9KiKxSYiKewLQSPmNESELfORtFHBQX
 LyP2Dx6MhNraunLPTwy3/GrlkxmZ+cAySB2dUeCRZV3SpI0K43eyyrdON g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="394953679"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="394953679"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 23:49:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="741683074"
X-IronPort-AV: E=Sophos;i="6.03,307,1694761200"; d="scan'208";a="741683074"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Nov 2023 23:49:44 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Wed, 15 Nov 2023 23:49:42 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Wed, 15 Nov 2023 23:49:42 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Wed, 15 Nov 2023 23:49:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FWw9EJohsSd7wQeTWzjJRFWr2TsHRhnjkMa4ttTJrWjMRYmXWlIi1liTBkUT6Su2ULZmpicg0qVzcZYxEhECuc51I/vmC9GdULrjVf/V3yAbJarGRE4EK9RX2XkzRz9v9GdChYlctufrzvyuh+g7t2qCLjG65CefMdnz2c67ljsMctfSSJAGnVTpIZ/SBpbV1/Yaq6nsFvw4iG1iDNLRGXDttrjMGum5fgb7U20N9fj9O2thQ3XoWmgIs9SHqb2PSWw5WUDFSbXO7NkxY8+HP7xPKMc+HKt/U9G6Iz/xddj2WEr2ubjYlDedn4akFO16XAic1ILhG+AMctj09a91Dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WoQ50j6ovf9uU0yeE++DoVZFsfTfFJFftT/AkTKtLWA=;
 b=Rc4VVkpMF7tAnsvnD+QvPha6GMsdw42nTthHuoXWJL6tBP8PfCpDFcor5GELDXdBr75kA2E1bip3T/PTvbhr772f62TURuqR15Wh9oB6nkptDuc5M+rEUBD05D8P1RTV5udzrgCRV9rKgVQH5VTA83J536kJEO9KgpP2sibHvFQR09hMHYgDAlWAAnHRo+LadFQ3b/fEJzs5MGgnobDb5vlJHRj9QQxfVQipDbLbeoWcqFHH+BY7BCaLW/7OxIYywGXHQR4DBYB9PLyxXA0F93L5xcqR+t8TCAqJ10aItwfcFYeHdt275+ke/5wU5XxXfaX8ew8V/xOLUv0WFpR3OA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by SJ0PR11MB5102.namprd11.prod.outlook.com (2603:10b6:a03:2ac::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.20; Thu, 16 Nov
 2023 07:49:40 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d263:5be6:37e:bb45]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d263:5be6:37e:bb45%6]) with mapi id 15.20.7002.015; Thu, 16 Nov 2023
 07:49:40 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/3] drm/i915: Use vblank worker to unpin old
 legacy cursor fb safely
Thread-Index: AQHaEyJYQUPQuEknLUSVuk4v+nztdLB8lCNw
Date: Thu, 16 Nov 2023 07:49:40 +0000
Message-ID: <CY5PR11MB6344C633C0151E9C6D2C8349F4B0A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20231109153450.142185-1-maarten.lankhorst@linux.intel.com>
 <20231109153450.142185-2-maarten.lankhorst@linux.intel.com>
In-Reply-To: <20231109153450.142185-2-maarten.lankhorst@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|SJ0PR11MB5102:EE_
x-ms-office365-filtering-correlation-id: 3108f852-70f2-425b-9de9-08dbe67896d3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oe+1zGGpiciOb7fBDfqw+Od9Q2r+uzO4ugAQFjwXKIHmW0qR3upiY9zNbXVIY7RNEzoZ3yCboO83KXJvrwewHg/U2i4VTGKfIVd4am9ovjcWqlXe4I1N4oWUhZsABlt7cSLGeKDvd5SfMcZBr+wWcUZSdpAiw3KJBvbqJ5LyzPXiuW18UwUUouv3cCKykSZBzaGLz5+Sl0zf2COWWDHtUcJeqCXqj4tBBkp1X12HgQTMM1safg71MeZC7YZ7sIiRDZIfMup2eFdmgGqJfb2ZB5uz50Xbpkm5dz+8ckG8DWseMQMoEdHxrTc/Gd5x75SBhSvBbYJO9Z1zHZDVBIaQwSMEMG7NVszHuwIo4ELyrum1N7zmQQ/3I33/GnGDkFfxl7jR7QzecgeNgH31BViiWQSpDcHbMPkdI5XBaaaa3VXLn9TT7CL8gFKl5M/nDk9SsKwOidDN1w00ZYR1/c/bG2Vn28SPk6MGo6P7JBztU3LZh36PwmkaKD7Jbm6/Va6aal8UVcG+86CNxFAce49hPa3LPR/FItOqEykjHgAxmNna5P1QLXwLo9tpJpfpWeZB+HGaCESHh9Csg5B8QEE78IqA/fzUkAWcGFQKKjnD75Udj7rPAUnlsN26Tp7/3FIc
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(346002)(39860400002)(376002)(136003)(396003)(230922051799003)(186009)(451199024)(1800799009)(64100799003)(38070700009)(41300700001)(38100700002)(6506007)(7696005)(53546011)(52536014)(316002)(5660300002)(8676002)(55016003)(66476007)(26005)(76116006)(64756008)(66446008)(66556008)(110136005)(66946007)(82960400001)(122000001)(8936002)(33656002)(478600001)(83380400001)(86362001)(71200400001)(9686003)(2906002)(66574015);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?KzRKN3k5OUpjZXdQZ0FpYTNkaU41cDM2ZU96UllrazZTK0ZDT1RzVm5uc3VJ?=
 =?utf-8?B?azUwUGdqWGN6S3NXSy9wdFRMOHFBb3ZJV044U0dDOEJSaXBiMnpIb01YVFdh?=
 =?utf-8?B?bC9JTnJnTGRYOFhRM05KV2FXeFI2UlhaVHdrdi9ndjBMZXZmY1ExUVFDUnhs?=
 =?utf-8?B?aW9aNTAyd25YVUUyN2wyRTBTeE8wanpCVFZWY2tGWHlHU0xpZHFmQ2l3OHM1?=
 =?utf-8?B?b1k5ZXBXdDFKb0VLLy85OVJ2WmVLVXZxajZxUmRiaC82TEQ0bjBvMUM1V0g1?=
 =?utf-8?B?Ym1UMmJRK3p6c0pjUVVYL2JWcWNpcHZoQk9wbGJINm04VlUzMzJlOTh1KzEx?=
 =?utf-8?B?SWhCSHlhZ2FCT2ZPNEtKODFFMmtMbEUwek5COUxVZFJCeTdOVGhWaTA4NFJF?=
 =?utf-8?B?OWtRZUtuQU5Gd2tOYVhFdzBHWi83ZUp3TWJ1SkhTL0VZZnRZTlpQYVoxUUhQ?=
 =?utf-8?B?cGFaQkptVnBzUDkyTkN6QWU3bnpGL08raWgxa0c2MjFOWHJEcldRYkxWa2ho?=
 =?utf-8?B?cVJIbVcvRFRmTm1TTVhrUzAxdFVVZXl2UUJnbm9rU3Jyd0dqZTBjY3pCWXhT?=
 =?utf-8?B?RUxlYmZMb3JtUTlnOGdFdTNTK3pHRWgxSXRzcTMrbHdCVmVrblc3L3M1THRF?=
 =?utf-8?B?Y0h4ZjYwdytCVEIraW5Da20xNHVIaHQ0bWRYenVVM1dGRE4yU3hCSFpWODlw?=
 =?utf-8?B?VlNSRGREMmF5TFAyd0I0YzJLZzFhQ2kyWmxOTDJtQUlJZDB2WmhBc2pucTY3?=
 =?utf-8?B?ZEg2SWtmV3RqWjVqQWZCMDArL2pib1h4WThnd2FqQ0dvOUNKM1EvaFR5TDkw?=
 =?utf-8?B?Z3R6QXF6d1B3SU5EMDV4YzNyd0lZVXhxRjJkZUFjaTdXL05SbXVzQm0vdXoy?=
 =?utf-8?B?SktoaWVINllaT1RzbTloZDZvdDVNU1VzSklJdTJNSGp6bnF3ZDV4a2JtU1JM?=
 =?utf-8?B?MlkyMmNxa0VRby9lLzFoSEc4aU5mU3F5TG5wVW5QTXBhMkpycGl0Y1pmcnNW?=
 =?utf-8?B?djhMSS83MkU1OE1YVisrYnhUZVJtOVhyQTBITTdvVlpKTm9aOWY1WlNod0N4?=
 =?utf-8?B?ajQzSjlXLytiTnNldjRrRkNXMEttcW1QeUlDK1RWUjV2UkpBdXFsbWNPT2Rz?=
 =?utf-8?B?R2xyS3BEODB2Um0vTWpxRWR2Y2QwWGlRK0E0a0pQcnpjVU80N2NWaU1yamVO?=
 =?utf-8?B?NUZsajYzM0lLa0ZEZXRidmpuTW1ORUliS0RzSEJZV25xUlFTUC9uZCt1NGd6?=
 =?utf-8?B?b1NWWElIRW1BS3JVbEVtNWdSaE1lRkd1RjNGdWZiVUhjUlp1NGpLUVNkLzBs?=
 =?utf-8?B?bHAvTy9yYnRhWXFGcS9LM1JlY1lBMVM3bWxOcTNmVUVTWnQ4YkFCNFYwN0Nt?=
 =?utf-8?B?WVMrRWIzZHc3L1lNWXo0MHRlNW9ydjhjUXdlM1I0VDlRYmFoNGFzOE5LWUgv?=
 =?utf-8?B?MzcrODlweWQzYWFlMnVSTHFoMzBDamVBVTBzRENjZDZTa0x5Q1BiZk9PMlc1?=
 =?utf-8?B?Q05KSnJiUktaMEliZ0lvQWFCZllFbCtkY3FXUlJwM1oxNDYwdDE5K1dHSExC?=
 =?utf-8?B?N1hnMVVOcU1MK1RsemlJVXVlcW9zRmdvRVNNQ0o4Si8xanhLMDZwaSsrTzIw?=
 =?utf-8?B?R3BvVE92MjVsUXZ2eWlYcmxrdmhLTm9YSWFKK1NOT2ZMQlZnbkpIK2VpSFpx?=
 =?utf-8?B?anRBMnN3ZTJjRnFkL3Z5cUI4ejJsd3dWb2Z6ckxoclpDV2Q0YkJvYkhJVFhj?=
 =?utf-8?B?YXBwOFlQaTNtYTVpaGpSR1lMR0FHQ2ovYTdIcVBCYzBRMjdneElKSFZsSHBl?=
 =?utf-8?B?M3Z1TWdwWnBFeHUzSE91dEQ3YWZTa3RZYnpHdEE1R1hieHBKU3kvVjErUFcy?=
 =?utf-8?B?cHRYSGlRRUlFNldiU0lEUTg4aVF2UVdsczl1c3FVYS9CbVRaS2lEOVRQeUdo?=
 =?utf-8?B?Z0ExL0tzNXQwQWJvckJoOTI0eWVOVFdXOFJoVW5QTG9YNTZiUUswRU5YdFVm?=
 =?utf-8?B?KzFuQldTOHA4RTlpdnJnOGFKQkdxNUIwQlc5RTB4TlVDWUlXUXJhQkFkOW9y?=
 =?utf-8?B?aVZYb1V4OFBTZ0JmOHQwVFRyNm0zUDNlRTRDNWw2djJpR2dvRGR3N1Y4QTc2?=
 =?utf-8?Q?c8iI0ssWVX+4x8ItdkMDmLhXb?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3108f852-70f2-425b-9de9-08dbe67896d3
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Nov 2023 07:49:40.3374 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qObc8JhsX8+OXOSP1ckouCXYLQ+WL6vezd9XnPJovKwJk6WFUTkp8fn0MO6APgMlFjRKhGV1OjfWLqmzrSXHYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5102
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Use vblank worker to unpin
 old legacy cursor fb safely
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
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBNYWFydGVu
DQo+IExhbmtob3JzdA0KPiBTZW50OiBUaHVyc2RheSwgTm92ZW1iZXIgOSwgMjAyMyA5OjA1IFBN
DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRl
bC1nZnhdIFtQQVRDSCAyLzNdIGRybS9pOTE1OiBVc2UgdmJsYW5rIHdvcmtlciB0byB1bnBpbiBv
bGQgbGVnYWN5DQo+IGN1cnNvciBmYiBzYWZlbHkNCj4gDQo+IEZyb206IFZpbGxlIFN5cmrDpGzD
pCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBUaGUgY3Vyc29yIGhhcmR3
YXJlIG9ubHkgZG9lcyBzeW5jIHVwZGF0ZXMsIGFuZCB0aHVzIHRoZSBoYXJkd2FyZSB3aWxsIGJl
DQo+IHNjYW5uaW5nIG91dCBmcm9tIHRoZSBvbGQgZmIgdW50aWwgdGhlIG5leHQgc3RhcnQgb2Yg
dmJsYW5rLg0KPiBTbyBpbiBvcmRlciB0byBtYWtlIHRoZSBsZWdhY3kgY3Vyc29yIGZhc3RwYXRo
IGFjdHVhbGx5IHNhZmUgd2Ugc2hvdWxkIG5vdCB1bnBpbg0KPiB0aGUgb2xkIGZiIHVudGlsIHdl
J3JlIHN1cmUgdGhlIGhhcmR3YXJlIGhhcyBjZWFzZWQgYWNjZXNzaW5nIGl0LiBUaGUgc2ltcGxl
c3QNCj4gYXBwcm9hY2ggaXMgdG8ganVzdCB1c2UgYSB2Ymxhbmsgd29yayBoZXJlIHRvIGRvIHRo
ZSBkZWxheWVkIHVucGluLg0KPiANCj4gTm90IDEwMCUgc3VyZSBpdCdzIGEgZ29vZCBpZGVhIHRv
IHB1dCB0aGlzIG9udG8gdGhlIHNhbWUgaGlnaCBwcmlvcml0eSB2YmxhbmsNCj4gd29ya2VyIGFz
IGVnLiBvdXIgdGltaW5nIGNyaXRpY2FsIGdhbW1hIHVwZGF0ZXMuDQo+IEJ1dCBsZXQncyBrZWVw
IGl0IHNpbXBsZSBmb3Igbm93LCBhbmQgaXQgd2UgbGF0ZXIgZGlzY292ZXIgdGhhdCB0aGlzIGlz
IGNhdXNpbmcNCj4gcHJvYmxlbXMgd2UgY2FuIHRoaW5rIGFib3V0IGFkZGluZyBhIGxvd2VyIHBy
aW9yaXR5IHdvcmtlciBmb3Igc3VjaCB0aGluZ3MuDQo+IA0KPiBUaGlzIHBhdGNoIGlzIHNsaWdo
dGx5IHJld29ya2VkIGJ5IE1hYXJ0ZW4NCj4gDQo+IENjOiBNYWFydGVuIExhbmtob3JzdCA8bWFh
cnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiBTaWduZWQtb2ZmLWJ5
OiBNYWFydGVuIExhbmtob3JzdCA8bWFhcnRlbi5sYW5raG9yc3RAbGludXguaW50ZWwuY29tPg0K
PiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMgICB8
IDM3ICsrKysrKysrKysrKysrKystLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheS5jICB8ICAzICsrDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmggICAgfCAgMyArKw0KPiAgMyBmaWxlcyBjaGFuZ2VkLCAzOCBpbnNlcnRp
b25zKCspLCA1IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2N1cnNvci5jDQo+IGluZGV4IGIzNDJmYWQxODBjYTUuLjE3MjhlY2Q1Y2M3
ODIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vy
c29yLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3Iu
Yw0KPiBAQCAtNjAzLDYgKzYwMywxNyBAQCBzdGF0aWMgYm9vbCBpbnRlbF9jdXJzb3JfZm9ybWF0
X21vZF9zdXBwb3J0ZWQoc3RydWN0DQo+IGRybV9wbGFuZSAqX3BsYW5lLA0KPiAgCXJldHVybiBm
b3JtYXQgPT0gRFJNX0ZPUk1BVF9BUkdCODg4ODsNCj4gIH0NCj4gDQo+ICtzdGF0aWMgdm9pZCBp
bnRlbF9jdXJzb3JfdW5waW5fd29yayhzdHJ1Y3Qga3RocmVhZF93b3JrICpiYXNlKSB7DQo+ICsJ
c3RydWN0IGRybV92Ymxhbmtfd29yayAqd29yayA9IHRvX2RybV92Ymxhbmtfd29yayhiYXNlKTsN
Cj4gKwlzdHJ1Y3QgaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlID0NCj4gKwkJY29udGFp
bmVyX29mKHdvcmssIHR5cGVvZigqcGxhbmVfc3RhdGUpLCB1bnBpbl93b3JrKTsNCj4gKwlzdHJ1
Y3QgaW50ZWxfcGxhbmUgKnBsYW5lID0gdG9faW50ZWxfcGxhbmUocGxhbmVfc3RhdGUtPnVhcGku
cGxhbmUpOw0KPiArDQo+ICsJaW50ZWxfcGxhbmVfdW5waW5fZmIocGxhbmVfc3RhdGUpOw0KPiAr
CWludGVsX3BsYW5lX2Rlc3Ryb3lfc3RhdGUoJnBsYW5lLT5iYXNlLCAmcGxhbmVfc3RhdGUtPnVh
cGkpOyB9DQo+ICsNCj4gIHN0YXRpYyBpbnQNCj4gIGludGVsX2xlZ2FjeV9jdXJzb3JfdXBkYXRl
KHN0cnVjdCBkcm1fcGxhbmUgKl9wbGFuZSwNCj4gIAkJCSAgIHN0cnVjdCBkcm1fY3J0YyAqX2Ny
dGMsDQo+IEBAIC02ODgsOSArNjk5LDE0IEBAIGludGVsX2xlZ2FjeV9jdXJzb3JfdXBkYXRlKHN0
cnVjdCBkcm1fcGxhbmUgKl9wbGFuZSwNCj4gIAlpZiAocmV0KQ0KPiAgCQlnb3RvIG91dF9mcmVl
Ow0KPiANCj4gLQlyZXQgPSBpbnRlbF9wbGFuZV9waW5fZmIobmV3X3BsYW5lX3N0YXRlKTsNCj4g
LQlpZiAocmV0KQ0KPiAtCQlnb3RvIG91dF9mcmVlOw0KPiArCWlmIChuZXdfcGxhbmVfc3RhdGUt
PnVhcGkuZmIgIT0gb2xkX3BsYW5lX3N0YXRlLT51YXBpLmZiKSB7DQo+ICsJCXJldCA9IGludGVs
X3BsYW5lX3Bpbl9mYihuZXdfcGxhbmVfc3RhdGUpOw0KPiArCQlpZiAocmV0KQ0KPiArCQkJZ290
byBvdXRfZnJlZTsNCj4gKwl9IGVsc2Ugew0KPiArCQkvKiBtYWdpYyB0cmljayAqLw0KDQpQbGVh
c2UgYWRkIHNvbWUgY29tbWVudCBvbiB0aGUgcmF0aW9uYWxlIGZvciBjaGFuZ2UNCg0KPiArCQlz
d2FwKG5ld19wbGFuZV9zdGF0ZS0+Z2d0dF92bWEsIG9sZF9wbGFuZV9zdGF0ZS0+Z2d0dF92bWEp
Ow0KPiArCX0NCj4gDQo+ICAJaW50ZWxfZnJvbnRidWZmZXJfZmx1c2godG9faW50ZWxfZnJvbnRi
dWZmZXIobmV3X3BsYW5lX3N0YXRlLT5ody5mYiksDQo+ICAJCQkJT1JJR0lOX0NVUlNPUl9VUERB
VEUpOw0KPiBAQCAtNzMwLDE0ICs3NDYsMjUgQEAgaW50ZWxfbGVnYWN5X2N1cnNvcl91cGRhdGUo
c3RydWN0IGRybV9wbGFuZSAqX3BsYW5lLA0KPiANCj4gIAlsb2NhbF9pcnFfZW5hYmxlKCk7DQo+
IA0KPiAtCWludGVsX3BsYW5lX3VucGluX2ZiKG9sZF9wbGFuZV9zdGF0ZSk7DQo+ICsJaWYgKG9s
ZF9wbGFuZV9zdGF0ZS0+dWFwaS5mYiAhPSBuZXdfcGxhbmVfc3RhdGUtPnVhcGkuZmIpIHsNCj4g
KwkJZHJtX3ZibGFua193b3JrX2luaXQoJm9sZF9wbGFuZV9zdGF0ZS0+dW5waW5fd29yaywgJmNy
dGMtDQo+ID5iYXNlLA0KPiArCQkJCSAgICAgaW50ZWxfY3Vyc29yX3VucGluX3dvcmspOw0KPiAr
DQo+ICsJCWRybV92Ymxhbmtfd29ya19zY2hlZHVsZSgmb2xkX3BsYW5lX3N0YXRlLT51bnBpbl93
b3JrLA0KPiArDQo+IGRybV9jcnRjX2FjY3VyYXRlX3ZibGFua19jb3VudCgmY3J0Yy0+YmFzZSkg
KyAxLA0KPiArCQkJCQkgZmFsc2UpOw0KPiArDQo+ICsJCW9sZF9wbGFuZV9zdGF0ZSA9IE5VTEw7
DQo+ICsJfSBlbHNlIHsNCj4gKwkJaW50ZWxfcGxhbmVfdW5waW5fZmIob2xkX3BsYW5lX3N0YXRl
KTsNCg0KQ291bGQgaXQgbm90IGNhdXNlIGFuIGlzc3VlIHdpdGggcmVmZXJlbmNlIGNvdW50cywg
aGVyZSB3ZSBhcmUgaW52b2tpbmcgdGhlDQp1bnBpbl9mYiBidXQgaXRzIHJlc3BlY3RpdmUgcGlu
IGNhbGwgaXMgcmVwbGFjZWQgd2l0aCBhIGdnZ3R0X3ZtYSBzd2FwIG9wZXJhdGlvbi4NCmludGVs
X3VucGluX2ZiX3ZtYSB3aWxsIGdldCBjYWxsZWQgd2hpY2ggd2lsbCB0cnkgdG8gbG93ZXIgdGhl
IHJlZiBjb3VudC4NCg0KPiArCX0NCj4gDQo+ICBvdXRfZnJlZToNCj4gIAlpZiAobmV3X2NydGNf
c3RhdGUpDQo+ICAJCWludGVsX2NydGNfZGVzdHJveV9zdGF0ZSgmY3J0Yy0+YmFzZSwgJm5ld19j
cnRjX3N0YXRlLT51YXBpKTsNCj4gIAlpZiAocmV0KQ0KPiAgCQlpbnRlbF9wbGFuZV9kZXN0cm95
X3N0YXRlKCZwbGFuZS0+YmFzZSwgJm5ld19wbGFuZV9zdGF0ZS0NCj4gPnVhcGkpOw0KPiAtCWVs
c2UNCj4gKwllbHNlIGlmIChvbGRfcGxhbmVfc3RhdGUpDQo+ICAJCWludGVsX3BsYW5lX2Rlc3Ry
b3lfc3RhdGUoJnBsYW5lLT5iYXNlLCAmb2xkX3BsYW5lX3N0YXRlLQ0KPiA+dWFwaSk7DQo+ICAJ
cmV0dXJuIHJldDsNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheS5jDQo+IGluZGV4IDNlZmZhZmNiYjQxMWEuLjliNDM4MTBmOWE5MzQgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+IEBA
IC02NCw2ICs2NCw3IEBADQo+ICAjaW5jbHVkZSAiaW50ZWxfY3J0LmgiDQo+ICAjaW5jbHVkZSAi
aW50ZWxfY3J0Yy5oIg0KPiAgI2luY2x1ZGUgImludGVsX2NydGNfc3RhdGVfZHVtcC5oIg0KPiAr
I2luY2x1ZGUgImludGVsX2N1cnNvci5oIg0KDQpUaGlzIGNhbiBiZSBkcm9wcGVkLg0KDQo+ICAj
aW5jbHVkZSAiaW50ZWxfZGRpLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZGUuaCINCj4gICNpbmNs
dWRlICJpbnRlbF9kaXNwbGF5X2RyaXZlci5oIg0KPiBAQCAtNjg4Myw2ICs2ODg0LDggQEAgc3Rh
dGljIHZvaWQgaW50ZWxfY29tbWl0X21vZGVzZXRfZGlzYWJsZXMoc3RydWN0DQo+IGludGVsX2F0
b21pY19zdGF0ZSAqc3RhdGUpDQo+IA0KPiAgCQlpbnRlbF9wcmVfcGxhbmVfdXBkYXRlKHN0YXRl
LCBjcnRjKTsNCj4gIAkJaW50ZWxfY3J0Y19kaXNhYmxlX3BsYW5lcyhzdGF0ZSwgY3J0Yyk7DQo+
ICsNCj4gKwkJZHJtX3ZibGFua193b3JrX2ZsdXNoX2FsbCgmY3J0Yy0+YmFzZSk7DQo+ICAJfQ0K
PiANCj4gIAkvKiBPbmx5IGRpc2FibGUgcG9ydCBzeW5jIGFuZCBNU1Qgc2xhdmVzICovIGRpZmYg
LS1naXQNCj4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oDQo+IGluZGV4IDkyNmJmOWMxYTNlZGUuLjZkMjdjZmI0ZjA4ZTcgMTAwNjQ0DQo+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+
IEBAIC03MDksNiArNzA5LDkgQEAgc3RydWN0IGludGVsX3BsYW5lX3N0YXRlIHsNCj4gDQo+ICAJ
c3RydWN0IGludGVsX2ZiX3ZpZXcgdmlldzsNCj4gDQo+ICsJLyogZm9yIGxlZ2FjeSBjdXJzb3Ig
ZmIgdW5waW4gKi8NCj4gKwlzdHJ1Y3QgZHJtX3ZibGFua193b3JrIHVucGluX3dvcms7DQo+ICsN
Cj4gIAkvKiBQbGFuZSBweHAgZGVjcnlwdGlvbiBzdGF0ZSAqLw0KPiAgCWJvb2wgZGVjcnlwdDsN
Cj4gDQo+IC0tDQo+IDIuMzkuMg0KDQo=
