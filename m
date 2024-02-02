Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0392847ABC
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Feb 2024 21:51:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B23FD10E77D;
	Fri,  2 Feb 2024 20:51:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mXTNqfOB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD4AD10E77D
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Feb 2024 20:51:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706907095; x=1738443095;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=fuLkd7UBi2cDEKSbk5WySG/Mj/4blYmWObMU0JwtkWc=;
 b=mXTNqfOB5nBMaz1kRjNcqXBdrkxBoNjOiLFTCj1psIbKnBK2IpcrxZ1Y
 ohL0d4eEAAnum5UPxZQ/EZ5fNCS76VUlYRUajX9yAaPsAHR192bNQ+Xjd
 WHhQ3b5+9QNL93QPXjYyLH93CfJFysD54+3h2Pwr6lLq7qZWEbo0ydlom
 TZOmW7jFz0eY4GKxJ5HCAYr/CvyuFnzchRErhPBdjJlSmzAZjrAHzKhg/
 gQFvzGSasS/wt/zRPt337Zysr6lhHZ8ve5f0kHql2/XgRMpgVdfpGsxcY
 cpXHw8mjy2KPi/nyrNyJV8NE69E6UII0QCvCh9ON5vcXUE2Hp1qrAKBNk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10971"; a="25696529"
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="25696529"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2024 12:51:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,238,1701158400"; d="scan'208";a="37583657"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Feb 2024 12:51:34 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 12:51:32 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 2 Feb 2024 12:51:32 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 2 Feb 2024 12:51:32 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 2 Feb 2024 12:51:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LSs89uLa0mbyCi2S8X5OFhunAKLZzNxm2m8lSXh1uMx37DFryQVjF50T0dTuF5wvaT4hU/b6xFHl3We+tjVamikIucWwfy4h4OWov7zJ7RPnNiYXT5/Dn3BZM4HAoYMIVRKsximbboU3WPSDF/TRx8Whr5HYTHj1fFgZ0Z9ZeTX5K7bc+3/+vhVEc4w3V/wNXkCgikU2R+PyuU7v/IXgab3/o+wDMHsqqmear8ypEEon2x0Pg/0WhhZZCF7KLtak5KbKyNxnj+EE15GDlBev7Eq5V1Xd/UBCSZlwZ+1YFXZ9//Pmku00awZJJL/rBP/wcjC0+fa9hWaviiuRPR58VA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fuLkd7UBi2cDEKSbk5WySG/Mj/4blYmWObMU0JwtkWc=;
 b=ldLhkydDhmlluGlsrfH+t7B+TLn56bYTNQgD7z3LTY0ppWnqmuJMl5oQuYPVxOAkDbGIjCIG10TORbCqmtkTRvZF8XPwyetP4781BIJ9d6LBySng1o/ph/8vPQZkawrJQawkcvGKoe4zkKvKKjOZKOPMErSQDS04qIyRZfX1x30D6QLf+ZaA5hIW3lU+OMoiNIJWNehCx3QidJx/JRW0TLbbgKLBEJ3YGw6+RUs/kHlC9sGnxcmg28JK2Y0REC4V4KodkcES1zRU/k50ue4FzyRzWKpMzwqM8R/c/Jo2677sBbP42XJuR3t4ogmufEB42THrLMXpgOBLL8QZlCCZVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22)
 by CY8PR11MB6988.namprd11.prod.outlook.com (2603:10b6:930:54::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.29; Fri, 2 Feb
 2024 20:51:29 +0000
Received: from DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::98c3:e090:252e:7967]) by DM4PR11MB8179.namprd11.prod.outlook.com
 ([fe80::98c3:e090:252e:7967%4]) with mapi id 15.20.7249.027; Fri, 2 Feb 2024
 20:51:29 +0000
From: "Souza, Jose" <jose.souza@intel.com>
To: "juhapekka.heikkila@gmail.com" <juhapekka.heikkila@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
Thread-Topic: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
Thread-Index: AQHaT6LAvEsnEI7RAEOrEiVG2hUjGLDqpxiAgAAHpQCAAAMPgIAM4hyA
Date: Fri, 2 Feb 2024 20:51:29 +0000
Message-ID: <17a867f9176dac4c29cbc4c78785884fed5199ac.camel@intel.com>
References: <20240125152502.294564-1-juhapekka.heikkila@gmail.com>
 <c7209d47d99a35d08a96e6a302595e4854b1d543.camel@intel.com>
 <78627f64-0f6e-430b-a954-30bec402b132@gmail.com>
 <6e06b068a1a9bef7baa7da6536c5c8846a9f127d.camel@intel.com>
In-Reply-To: <6e06b068a1a9bef7baa7da6536c5c8846a9f127d.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB8179:EE_|CY8PR11MB6988:EE_
x-ms-office365-filtering-correlation-id: 33441a93-f0ef-4b2b-5055-08dc2430bb0c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fFTRxV8w4AE8Q/GpbH5m8G8G+WigF1TPQVfW17CqBtAURnctZV5Z/wlgbgI78219FJM3Qi7nZfO4sgJQ6wIApRhBBtULGm5hxBGOwli7ZQWr9Be8e5AwlYwg9JOCj5ZNkMKkxZSrKeb9xKJTNH9sr7xwYDVjIHvbuaLC8UVf7V/3FZ3xNFH01hQOrWf9rzjvaA+B/7IPHgw6mPKO06u+GPB9pzt8tt6gOirs5/2gRFUACsCp3RceX9t7c/MFfQacc0Hx8nRDUwvDfQqngH4SruVFyfhvwqy5/Zz11H0Af6S0HhC9v8EUUb1GQ73dC3OkGBBNPPIfjuoUiAz2llw90EeyWT9xe1bSZrqpZV1or+Uvg8kYjva7ZypM9MKWw7pdnWaBvElEoBbRs/PHohQ/BnT9BVdKlAI9aRKF6WAOLRs+Zfzi02bi7J4noSZesYuCKRfvnQzg4z82SX2ixooZ8DzRBQ6ur2cdRGR2z9qz/9r6l3UHkSO/ogDLAFcWjTjHiqbHaUYCPnNjVW/12Fyz970KHpR/WI57v+IvMd0T8N8+nSSYHn/oNGoLfN4xyiJ9jCLhb8iTP8qbWmbaY9f5G0N5wgIkei0v1kSUUABw8zo=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB8179.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(396003)(366004)(136003)(376002)(230922051799003)(1800799012)(451199024)(64100799003)(186009)(41300700001)(83380400001)(36756003)(82960400001)(86362001)(38070700009)(122000001)(5660300002)(4326008)(26005)(2616005)(6512007)(38100700002)(76116006)(478600001)(66446008)(6486002)(66556008)(2906002)(66946007)(110136005)(71200400001)(6506007)(64756008)(966005)(8936002)(316002)(8676002)(66476007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SFJ5SWVZcHNXdXFOU2piaTNGby9xRjNoQTY2Zll0RkY0b0JVN2Q3UksrSlpX?=
 =?utf-8?B?b1o2OE0xOGNPdVAzMHJhcTBWUEJpVHRRNWc2Y0V5Nmw1UllSUGVQVlhGbE55?=
 =?utf-8?B?YVN2NDdRcStlcEJnUzBGVTg0bno5SFIvZWJ1UEFBWkp5a1BRWXZoUlBRZ2pM?=
 =?utf-8?B?eTM1SmdieUwwWHlhaHdvQ1BxZjROZ0tFblBxVWNHVk9YZ2dsZG41M1BUZFdZ?=
 =?utf-8?B?VE1JMFJ0OW9rSmE4K1k5S0lCSTNiaGFPalF0QmJrZXVmM0lRVFdCeE05Y2R0?=
 =?utf-8?B?bUJxVmRRL0kxQlFWZTJ2OVlIdk5jMWI1RCtFNE5xbW5QUGxxTy9nV1dkOUo1?=
 =?utf-8?B?bE42Z0RJTG5HNk80VngwSkJiN053SFc0dElndXV3eFZxS3ZEQU5BSGhqbDFV?=
 =?utf-8?B?UFNhRGVYZ1l6Q1B1cmRLaXhjYUhBU0lrWXIwUmRlRGxqbStBc2I2SGRSMXVz?=
 =?utf-8?B?TGQxKzZrMUErZk1kV1U4eUEwSTl0M2gxMXpvVGhpaXY0M3kxaElNUHBjaTlo?=
 =?utf-8?B?VWdPQ1RVbkNCa0NidG8rM2J6dGNFUnZudnBuZGdTYUVLRGpKTDhaNGZRNlhs?=
 =?utf-8?B?S0NoNm5KL3RyYTQwcmMyMHpmSWUyRFk0THlhU3M1UXl2UDZJOUtEUm5UdTBO?=
 =?utf-8?B?VTdoY1N6Z0RWNGYzbGs2TkltZXJvcm5iZHA0ZHpFRFRDQ2daMTZZZFZkVHBR?=
 =?utf-8?B?QXYxK0VSNEY3S09BRnUvZnJVRkxsNmZxTmtnSE9yTFRwNW1MSDVrNHBydzRz?=
 =?utf-8?B?N0JtZFdCTzJ2WkVzRHRVdTIzbGFWL2V1Q0w4Q3ZzbWR2bEhMV2ZjZW5FUlA0?=
 =?utf-8?B?dzMvb3QyYitnUFd4UkpQWDdhaTc4MHVKc3BzWCtzTzBPanVtTDFxWDd3TlhK?=
 =?utf-8?B?c3I0ZjVrSmYzNDRkMFoxZnh2NE9Ua1U0cWtFRGh1bG9Ka1BNbTRIWXRTaHcw?=
 =?utf-8?B?em90UjBNQzNwUG1lNFFSTy9RR0wzc0ExRzY2ZWYyNVRCSWZGLzdHRWoxbVpE?=
 =?utf-8?B?b08vaGtCOGZTZXFqZm9kbUpUdVVqM0lmaVFBZDFGSmRwR0RTL2VGWE8vVEsw?=
 =?utf-8?B?eEFlbTBKdWNMUmJEMDZtdE0rV3p3OFhGUUJKeFlLK3AvM1NRcHlhVXRXcHk0?=
 =?utf-8?B?QWhqRUdUVUNYMkJmcGpZSUxncFY0ZmJBb090TlJMUERLUlRhV1piK3lmd1d2?=
 =?utf-8?B?R1l6Qkxrcjg5Y1hjRG4zSUhNcjJkNHBPYnVnUkYyMG80Um5wbDhYZVNjbUxl?=
 =?utf-8?B?MnhWQzZLaFNyREtFVTNsbDFIRmRPQzFuSWFROWJ6cmFiWHN2S3p0K2VTTS90?=
 =?utf-8?B?OTJ0emtsU0dkMmhxUVAxZUJMTFpYcEltZlErNG9EL0tGbHMvNlc2RzdldkVN?=
 =?utf-8?B?aitWZW9sMlQ1cXRicXhkd3B1SEppbnFWcFYzYnY1S2dsbldTLzZXdVEzN09D?=
 =?utf-8?B?WnE2aVMvUmtNZVlnOXMrM3IrRDhaYmtuVzVLZitsMjc0S0kveEZicnFnQzJK?=
 =?utf-8?B?N1RaZUk3TmlhOEFndjkxdUFDTTRJWHVZVG56S1grN0d5VWYwcUZLTXcyU2NG?=
 =?utf-8?B?eXNPdHRDTWhrTzJodW5zSlBiRlpFblVEcFZ2Y2tKbGxtNTQzRUUxVURRT3l5?=
 =?utf-8?B?L1NTL1VlTC82ZjJLY3RscFQ0T3oyZkVuS0QzWGVsVE1RVGhoaURsMHZkN2Uw?=
 =?utf-8?B?MWxnSFQwZFZwcWlFRDNCbGxoUE02elFMempvK0tGeTQ4VzQ4SUpWT2RsOEFZ?=
 =?utf-8?B?QVZYSXlZN2hlUStCYTl3NlNVTklwWkhZOHVmT1VYNWNFaWdESHcreGwvSDVa?=
 =?utf-8?B?WUtPZXpTek94T0JZWld4MGZKcmlmU0M1MGJIWStXbndjcG54dEZiNytQaEkx?=
 =?utf-8?B?clZlQzh2OHJjTi8zcG4yQWlkOVpXTEF5QkVwVzV4eW9PUHRpVmdjMng2Wkc3?=
 =?utf-8?B?K1pENndVUG5XUjNSaHJPdVhKMFRlbmlHNjBDNXBWelgvKzJhV1lublpZcHhr?=
 =?utf-8?B?L3NXN1lvZHh0UmNJbWlvUWppTXNxK1lGU1NLZXBER0NoNFd4MyswSk5Lcy9s?=
 =?utf-8?B?d0ZwT0U1VTNDcld2U21kNWNlTzVkajA1NzZqRGt6MEVpbkYxUmhsMTZtc2Nw?=
 =?utf-8?B?OEZrL1k1ck91ZytFSWhHazBXeDZLb0psL0MzLzdlbUJXVFQ0MFB5RzM1R0RH?=
 =?utf-8?B?U1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7A50B74E7EFA3848AFEA2540AE07669D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB8179.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 33441a93-f0ef-4b2b-5055-08dc2430bb0c
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Feb 2024 20:51:29.4876 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: d1bNTNJwCIXyCpRvp4Vf6MOrSnF++80jaaUyh5LyibONrA15tP6KKd0/sR7wqxLp9j20MI+Z3lMKjbT6Lo+Zgg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6988
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

T24gVGh1LCAyMDI0LTAxLTI1IGF0IDA4OjA3IC0wODAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBPbiBUaHUsIDIwMjQtMDEtMjUgYXQgMTc6NTYgKzAyMDAsIEp1aGEtUGVra2Eg
SGVpa2tpbGEgd3JvdGU6DQo+ID4gT24gMjUuMS4yMDI0IDE3LjI4LCBTb3V6YSwgSm9zZSB3cm90
ZToNCj4gPiA+IE9uIFRodSwgMjAyNC0wMS0yNSBhdCAxNzoyNSArMDIwMCwgSnVoYS1QZWtrYSBI
ZWlra2lsYSB3cm90ZToNCj4gPiA+ID4gQXV4Q0NTIGZyYW1lYnVmZmVycyBkb24ndCB3b3JrIG9u
IFhlIGRyaXZlciBoZW5jZSBkaXNhYmxlIHRoZW0NCj4gPiA+ID4gZnJvbSBwbGFuZSBjYXBhYmls
aXRpZXMgdW50aWwgdGhleSBhcmUgZml4ZWQuIEZsYXRDQ1MgZnJhbWVidWZmZXJzDQo+ID4gPiA+
IHdvcmsgYW5kIHRoZXkgYXJlIGxlZnQgZW5hYmxlZC4gQ0NTIGlzIGxlZnQgdW50b3VjaGVkIGZv
ciBpOTE1DQo+ID4gPiA+IGRlcml2ZXIuDQo+ID4gPiA+IA0KPiA+ID4gPiBDbG9zZXM6IGh0dHBz
Oi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9kcm0veGUva2VybmVsLy0vaXNzdWVzLzkzMw0KPiA+
ID4gPiBTaWduZWQtb2ZmLWJ5OiBKdWhhLVBla2thIEhlaWtraWxhIDxqdWhhcGVra2EuaGVpa2tp
bGFAZ21haWwuY29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYyB8IDggKysrKysrKysNCj4gPiA+ID4gICAx
IGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCspDQo+ID4gPiA+IA0KPiA+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMg
Yi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiA+
ID4gPiBpbmRleCA1MTFkYzE1NDQ4NTQuLjE1MjFkODI5NTI1YSAxMDA2NDQNCj4gPiA+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4g
PiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3Bs
YW5lLmMNCj4gPiA+ID4gQEAgLTIyOTAsNiArMjI5MCwxNCBAQCBzdGF0aWMgdTggc2tsX2dldF9w
bGFuZV9jYXBzKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiA+ID4gPiAgIAlpZiAo
SEFTXzRUSUxFKGk5MTUpKQ0KPiA+ID4gPiAgIAkJY2FwcyB8PSBJTlRFTF9QTEFORV9DQVBfVElM
SU5HXzQ7DQo+ID4gPiA+ICAgDQo+ID4gPiA+ICsJLyoNCj4gPiA+ID4gKwkgKiBGSVhNRTogQmVs
b3cgaWYoSVNfRU5BQkxFRChDT05GSUdfSTkxNSkuLikgaXMgYmVjYXVzZSBYZSBkcml2ZXINCj4g
PiA+ID4gKwkgKiBjYW4ndCB1c2UgQXV4Q0NTIGZyYW1lYnVmZmVycy4gT25jZSB0aGV5IGFyZSBm
aXhlZCB0aGlzIG5lZWQgdG8gYmUNCj4gPiA+ID4gKwkgKiByZW1vdmVkLg0KPiA+ID4gPiArCSAq
Lw0KPiA+ID4gPiArCWlmICghSVNfRU5BQkxFRChDT05GSUdfSTkxNSkgJiYgIUhBU19GTEFUX0ND
UyhpOTE1KSkNCj4gPiA+ID4gKwkJcmV0dXJuIGNhcHM7DQo+ID4gPiA+ICsNCj4gPiA+IA0KPiA+
ID4gZnVuY3Rpb25hbCBidXQgbG9va3Mgb2RkLg0KPiA+ID4gd291bGQgcmF0aGVyIGFkZCBhIGNo
ZWNrIGluc2lkZSBvZiBnZW4xMl9wbGFuZV9oYXNfbWNfY2NzKCkgb3IgJ2lmICgoIUlTX0VOQUJM
RUQoQ09ORklHX0k5MTUpICYmICFIQVNfRkxBVF9DQ1MoaTkxNSkpICYmIGdlbjEyX3BsYW5lX2hh
c19tY19jY3MoaTkxNSwNCj4gPiA+IHBsYW5lX2lkKSknDQo+ID4gDQo+ID4gSGkgSm9zZSwNCj4g
PiANCj4gPiBub3Qgc3VyZSBJIHVuZGVyc3Rvb2QgeW91ciBpZGVhLiBIZXJlIG5lZWQgdG8gYmUg
ZGlzYWJsZWQgYWxsIHZlcnNpb25zIA0KPiA+IG9mIGF1eCBjY3MgZm9yIFhlLCBub3QganVzdCBt
YyBjY3MuDQo+IA0KPiBhaCBtaXNwbGFjZSB0aGlzIHRoaXMuLi5wbGVhc2UgaWdub3JlLg0KPiAN
Cj4gdGhpcyBpcyBmaW5lIGZvciBzb21ldGhpbmcgdGhhdCB3aWxsIGJlIGZpeGVkIHNvb24uDQo+
IA0KPiBSZXZpZXdlZC1ieTogSm9zw6kgUm9iZXJ0byBkZSBTb3V6YSA8am9zZS5zb3V6YUBpbnRl
bC5jb20+DQoNCnBpbmchDQpzb21ldGhpbmcgaXMgaG9sZGluZyBmcm9tIGJlaW5nIG1lcmdlZD8N
Cg0KPiANCj4gDQo+IA0KPiA+IA0KPiA+ID4gDQo+ID4gPiA+ICAgCWlmIChza2xfcGxhbmVfaGFz
X3JjX2NjcyhpOTE1LCBwaXBlLCBwbGFuZV9pZCkpIHsNCj4gPiA+ID4gICAJCWNhcHMgfD0gSU5U
RUxfUExBTkVfQ0FQX0NDU19SQzsNCj4gPiA+ID4gICAJCWlmIChESVNQTEFZX1ZFUihpOTE1KSA+
PSAxMikNCj4gPiA+IA0KPiA+IA0KPiANCg0K
