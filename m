Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C30F058A0F5
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Aug 2022 20:57:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5029A4017;
	Thu,  4 Aug 2022 18:57:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 741ADA37CC
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Aug 2022 18:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1659639409; x=1691175409;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=YK651oh8rt/MRIs3RpJRC4/RLawYQYSw7m4uE6vsGgc=;
 b=MAKq3SACiZqdpomAPwUDABZ/CFtXvlZZ3Y2diyBibzuDVT6aILK4123G
 Jvj0wcU7t5M/iBkRN0Zj242QuRbha3Vj8ZtSv742gyyH3FFr4Gu6A9Afh
 odyTZAKeF/Mj+kAzRt79J51vmef3e+eh+gGIdmygEHEa2C63rNCwK7pEn
 BLJwKKD1HWk/74sUPI+tHXb29DQr5mv1Fiqxae/7pKBD3tZPySuWxmY+p
 eGY1NE8dihBQHjC3OJFA+6o0+Uz44s5NHzrG/8Yy/zzy9lzV5v1hxhMMs
 QuCybnKjsYTM2yioUrQa9Bz+V6ADJ4/m19YyVStRtETRz9+Ykrp66AxIm A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10429"; a="376317042"
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="376317042"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Aug 2022 11:56:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,216,1654585200"; d="scan'208";a="636203684"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga001.jf.intel.com with ESMTP; 04 Aug 2022 11:56:47 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Thu, 4 Aug 2022 11:56:46 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Thu, 4 Aug 2022 11:56:46 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Thu, 4 Aug 2022 11:56:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hJ/59jqsoCBUvfV3lnhjYZDkCsr8FC8aWLcwMtt1UEql8B86OLJMEYiv+OKHqeTyrfeSZlqDQK3WwOdzmBdsA1XX8HLegzTRoJ1TQI9NG8nC/xmFLJxbwiGqZS+in+D3cP4+Y9Ns4tWZJnDQlNYBSYvWm3peQFSHzbF0tsbk8Q/3/tVNJXnS7NEyEB6ufAtusZ81VSGOOC5qEYt6C5dZXN54Yck3sndhawz3LaINf+r7WJvyUvyy0R89rz/ZfkxM51XKRdUA5BzGWplP6Vg4k3cmh2g3LBZ4h2nmkTDsaPBWCM8ituNnOX52KQQ/JWZys1JocYlym1QDx7P+a7VtWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YK651oh8rt/MRIs3RpJRC4/RLawYQYSw7m4uE6vsGgc=;
 b=f3vmCcQ3G7o215sL07NiaCPoM3exTzEADbiRkTXZlt5z9rZcsDbSkQ1IOyhEeaVThqA7/sbRYSCoHjYfl5eEuQjlsiMUpaK1DG6jgFeXrSkCO+77Q5R/VywyyVITAWJESnS54synsWFeln7ijV4JR4wufPqXvAiDE5gv1HUPYCFZ42mvV68PGUxvuASz2dGmfzCyCVMFtn3OBKGptMngn2rm8IbnJIGQCxII4jl5XD6yoTOLN0GX0b0hXTyHtQxXh6t1wqjq5gd2ZdzM+6pWtP13U0MSjMEKChvwl3tQwXWRH3xITwQDq95mKLWFcTBdSoNmgQANZkkHFrZz1o8ewg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5573.namprd11.prod.outlook.com (2603:10b6:8:3b::7) by
 DM6PR11MB3804.namprd11.prod.outlook.com (2603:10b6:5:13c::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5504.14; Thu, 4 Aug 2022 18:56:44 +0000
Received: from DM8PR11MB5573.namprd11.prod.outlook.com
 ([fe80::e9a1:388f:dd93:5505]) by DM8PR11MB5573.namprd11.prod.outlook.com
 ([fe80::e9a1:388f:dd93:5505%3]) with mapi id 15.20.5504.016; Thu, 4 Aug 2022
 18:56:44 +0000
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [PATCH 2/2] drm/i915: Only disable PMU on stop if not already
 closed
Thread-Index: AQHYp41BdZxkuXjvGUOYp7/eE2GBVK2ebkqAgACqcwA=
Date: Thu, 4 Aug 2022 18:56:43 +0000
Message-ID: <3fed807b5b6dc48ca1996b0df875e9a56d2e200f.camel@intel.com>
References: <20220803230325.137593-1-stuart.summers@intel.com>
 <20220803230325.137593-2-stuart.summers@intel.com>
 <e5e6bd39-de83-63bf-4798-8a58a5328720@linux.intel.com>
In-Reply-To: <e5e6bd39-de83-63bf-4798-8a58a5328720@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 45c6fc8c-a513-477e-1ed1-08da764b1302
x-ms-traffictypediagnostic: DM6PR11MB3804:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BectotUhP3V6bv5rJP1uuR2SbhjcC37vgz2P48B95q+jz8Az1PYJN8jOylGs2gq1MKRAx0g7kkI4OxZnqwS4qNxCU/Vjen5OHlc1APyYXXrOWRVeNFvHMMfoaryRLCUBEtQLxony/9S9HoGm4/8LdHpV4Zq+fDUONj0lfPnsIqYUtiUxFPZTKzWci0zezQ7JYX6K1abZviFyA4lz3F+YW63sHDNpbzB+W4S5jeY+vlN0683OTTk6ibFHlJJUhIF68Z+5MH/Ehxkbjfl/PIstEjPPujdsYgk2Sx8PTmkyKO1rMztBqibV2jTnB+7xZrOBQBZykuRRq85kHPifvSradGvuCSeZnOwRw5vz/ih9jOSj1fQBRCXy75QisjEaQWjKCDI00UxipgMYSPOZWdA8hfkLqVUkSWF5urwyFt45NJo8DBZMVCIizaXtXQ/3yBkYKO4KzYROs2X9RpDjo99wJruU7KuW4c/xva7yu02sSWOm6js89OCPTMl7UoYKKw9ivXc0OY2sO/mIsQZL6FdfCQnhU3g2r7wKXk9O/kmVGsSiHm0gVvz7CtwJVaw5oDbeiAfNmeB+6QIz1ymbfSzZsrGs1vhdQ3nVauLwR+KWueoh1xhzSR43PTee9YgMZjQZsn18cByKCDIK/sMEj71epeFnK51CVrGMNgniSV/wGL4FMJQO28WDZLU0Dv/PwmhiX1S+YS2kvgQ9TN56wEgzvc5PJxLrAWQjlKyD36yKcCh1H/LR/o2couHXOu52ePXPJVjRmV45UTZx0Jt/WqnD2EfHN+T/Khj8mpkNsdXbTFk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5573.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(396003)(346002)(136003)(39860400002)(366004)(54906003)(53546011)(6506007)(26005)(36756003)(82960400001)(2616005)(38100700002)(186003)(6486002)(8936002)(41300700001)(71200400001)(478600001)(122000001)(83380400001)(2906002)(86362001)(91956017)(5660300002)(6916009)(6512007)(316002)(38070700005)(4326008)(66476007)(8676002)(64756008)(76116006)(66446008)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TUJ3TFhTZkY4U2t5TW1NV3pIQmI4NkdHRUVFL2NpZ2xtZnM1RDZsM3NNVmJI?=
 =?utf-8?B?MnFyK1lKK0M0NGRScjVPL1FWcXE2cDdjZzk2aW5hYzVmZGFmSk5vZlFDcVMz?=
 =?utf-8?B?dW5tZUhpdHlBbDBtQkdPdFVVdFlZMFBuVlhwS3BqNmhja011Q0VicVZGUkFL?=
 =?utf-8?B?bGJ2YmxxYkxyS1RJVXVaRjNMZXl6UXl4OUtzSXlGb1k1UDFQd2g1ZG1NS1By?=
 =?utf-8?B?R3VlaHhXMDBUYTFVMW44ZjNFWnlEUURhUjdGaVJya1dxMGJMMG1DamNxRzZI?=
 =?utf-8?B?bVM5WG9pNzZZNnVldDhteC9Hc3h3T2Jsd0VxVjd3QWg0Qk5BSDFMejRPSXZu?=
 =?utf-8?B?MHkrenEyeUpwcnY3U3RXSEQvMzhoSDF2c0FSTGJXWTNQVit1NytUd1I1YjRw?=
 =?utf-8?B?cEs2K1AzVk0vNHpEM2RRbTRpRTNKQXJqTzUvMGlrM1NsMlJmbHNxVU8yaWhN?=
 =?utf-8?B?REhKM3NGWEhxb0pFRW9SQW5rTGwzTlhNSFlVeHNNWU1WWUFBQ0lrcnNsWDBi?=
 =?utf-8?B?OUpwR0pVd1BaQnNVSi9DTW5zc3RBZzAyNEl0YU5kZUlTWHo1REQzcjZqUlBJ?=
 =?utf-8?B?SDZLSGVMZElnUGUxRlBFeWlBb1FYVXFERDBMdllZa3Y1cmNZWTJVUE01eUlG?=
 =?utf-8?B?aEoxcEg0NXNnUEQ1UlZnMHJCMkdSNGx3eHFzNmFmUWNEbE5uYW5xVkZRV2sv?=
 =?utf-8?B?VHJZQ29vS0Q5eW50bjc5ZHUwYU13MEF3MVZpU1g3VmlGL3VRUEdUK3VKNGlp?=
 =?utf-8?B?UllUL3BoNjZjdHRUTFdzU2dZK3N1a0duTk1UWHRJZFRGOFpaQ01YNktjVi9s?=
 =?utf-8?B?aGYzWUxPK05yQUtPS0xheE0xZjFFNGE3MCtaWUdmWnJrT1RRL08wdUFIb3g0?=
 =?utf-8?B?dUJzVWVmN0M2eGlSSlpoNThyZU5Gdm1kajkxblc2YVFIMEFrYnZFVTVqSzdi?=
 =?utf-8?B?aU5ndlZwSkZBTmJuV0xsb3ZrMlNzV0ZsZHJrSEpKQVVvRXhFMlFUWWtSL2J0?=
 =?utf-8?B?RG9tb1hoa1FmTUxqNzRQaGttNTQxaHlhMDJST1lQcG9Nalp5NTlFTy9hQXZ6?=
 =?utf-8?B?aGh5aVpYTlNJc2taOFhQUHlIdUNvc1d5Mi9ScE0xM0VLeDdsbFd2d3hoZllw?=
 =?utf-8?B?T2MrZEc1VWVFMGI0NTRPbE9ydFFwbjVTU0tkMFNVSWVWMnl0Q0RpYzg0N25H?=
 =?utf-8?B?M1hPY2doYkd1SDhzMU1nbkpLMXl1QWNoaDdjdDhtcWFpMmtvOGRva3l6Skwz?=
 =?utf-8?B?NjRuVCtBOTBrVVhGNUxIdmtXTTVrVkh6NzZSTmhmUTJGNUJqcjJvZHdJcVUv?=
 =?utf-8?B?bm0xbDJsVkF2elFIcXg5d1VQRGQzcWZDQlJ6VWMrU0hRdUUrMEZNQ1Z0Z1JP?=
 =?utf-8?B?djh1U21TVkp1VzlhY2ZyeVdLS3pHZVdIT1p3VzlMcFM4c2R0Yy9PS3J2bEtJ?=
 =?utf-8?B?YjFIemRTRnFXRy9SSHBPS0VUU3p5WFZkVmxsdVZ5aFV1dzNwbkNmOFdJRFFN?=
 =?utf-8?B?am5PWExvZTJHQTdwRFg1N2EyWDVmUEVPRUJqUFFTK3IxRlNVVU5lVEhqd3Fp?=
 =?utf-8?B?QktzTGI4cHUxeERjMDJKUTJwczcvRUxZQ3ZvT0RQSTdpaExlVzFNSnBhNzZS?=
 =?utf-8?B?NXRHVWtLSkE2ZnVWeTdlK3pETjkrRzlyZXl2ZjYrUHR1UEJlSzZTTWkrR2Nz?=
 =?utf-8?B?ckVvRXRUcytac24wdmwra3NzY3NjN2ZPd09MN285TVhWa1o0aSt4NFBSbmJ5?=
 =?utf-8?B?OUJka1p5WW85ZEQ0emFQUmRrbkdjeEtVeldEUWVKMmlSSU1lODJmN2NDZXo4?=
 =?utf-8?B?bDZmdzJUNXZOOGFEWVhOeVQ5K0M4Qy9DODFsWTA0Y092NTNTeHAzanNWMVV4?=
 =?utf-8?B?RmZTelprTXcrUGFLenB0UitXc3UwbFdPUFpSYUVmckM2VFVpSVh4ejZYYjVH?=
 =?utf-8?B?eGx0K1RkdEczVzR1dEx5UjNuMUxmWGdVTGdYRzk5Wm8vVXRZeGxZR2MvUk82?=
 =?utf-8?B?RFhRK3M2UmFXVTNsdjV6YU1FRjN6S2VnVnlSUmhzbnQzU1FJRlFNaGxMd04z?=
 =?utf-8?B?QXI3RnN2bnpPNGprS3g2MkY4aXBKOTBYc250ajVCSXhuQkRiZjVpWXZaMzUr?=
 =?utf-8?B?YUNvTk0yOXNhV3VENmtYMHNGbThHZ0g5aWo0Mm9qMzlqWTZ1WnNrc2ZzS0Zk?=
 =?utf-8?B?Z2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FCD84438B313BB4DA704EC0B39FC121C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5573.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45c6fc8c-a513-477e-1ed1-08da764b1302
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Aug 2022 18:56:43.9408 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SciKURWemQ+GlYWnasfnxGqiwqr3b6i77NlEYOEZbwiSeYq/mmLlvvFujh8GQTlpMO8gANSinvYYcXnu/689RNXhGPNkopVdWTKwRS/pl+Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3804
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: Only disable PMU on stop if
 not already closed
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

T24gVGh1LCAyMDIyLTA4LTA0IGF0IDA5OjQ2ICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gT24gMDQvMDgvMjAyMiAwMDowMywgU3R1YXJ0IFN1bW1lcnMgd3JvdGU6DQo+ID4gVGhlcmUg
Y2FuIGJlIGEgcmFjZSBpbiB0aGUgUE1VIHByb2Nlc3MgdGVhcmRvd24gdnMgdGhlDQo+ID4gdGlt
ZSB3aGVuIHRoZSBkcml2ZXIgaXMgdW5ib3VuZCBpbiB3aGljaCB0aGUgdXNlciBhdHRlbXB0cw0K
PiA+IHRvIHN0b3AgdGhlIFBNVSBwcm9jZXNzLCBidXQgdGhlIGFjdHVhbCBkYXRhIHN0cnVjdHVy
ZQ0KPiA+IGluIHRoZSBrZXJuZWwgaXMgbm8gbG9uZ2VyIGF2YWlsYWJsZS4gQXZvaWQgdGhpcyB1
c2UtYWZ0ZXItZnJlZQ0KPiA+IGJ5IHNraXBwaW5nIHRoZSBQTVUgZGlzYWJsZSBpbiBpOTE1X3Bt
dV9ldmVudF9zdG9wKCkgd2hlbg0KPiA+IHRoZSBQTVUgaGFzIGFscmVhZHkgYmVlbiBjbG9zZWQv
dW5yZWdpc3RlcmVkIGJ5IHRoZSBkcml2ZXIuDQo+ID4gDQo+ID4gRml4ZXM6IGIwMGJjY2IzZjBi
YiAoImRybS9pOTE1L3BtdTogSGFuZGxlIFBDSSB1bmJpbmQiKQ0KPiA+IFN1Z2dlc3RlZC1ieTog
VHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGxpbnV4LmludGVsLmNvbT4NCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVycyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPg0KPiA+
IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYyB8IDggKysrKysrKysN
Cj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCA4IGluc2VydGlvbnMoKykNCj4gPiANCj4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYw0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wbXUuYw0KPiA+IGluZGV4IDk1OGIzNzEyM2JmMTIuLjBkMDJmMzM4MTE4
ZTQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9wbXUuYw0KPiA+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVfcG11LmMNCj4gPiBAQCAtNzYwLDkgKzc2
MCwxNyBAQCBzdGF0aWMgdm9pZCBpOTE1X3BtdV9ldmVudF9zdGFydChzdHJ1Y3QNCj4gPiBwZXJm
X2V2ZW50ICpldmVudCwgaW50IGZsYWdzKQ0KPiA+ICAgDQo+ID4gICBzdGF0aWMgdm9pZCBpOTE1
X3BtdV9ldmVudF9zdG9wKHN0cnVjdCBwZXJmX2V2ZW50ICpldmVudCwgaW50DQo+ID4gZmxhZ3Mp
DQo+ID4gICB7DQo+ID4gKwlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9DQo+ID4gKwkJ
Y29udGFpbmVyX29mKGV2ZW50LT5wbXUsIHR5cGVvZigqaTkxNSksIHBtdS5iYXNlKTsNCj4gPiAr
CXN0cnVjdCBpOTE1X3BtdSAqcG11ID0gJmk5MTUtPnBtdTsNCj4gPiArDQo+ID4gKwlpZiAocG11
LT5jbG9zZWQpDQo+ID4gKwkJZ290byBvdXQ7DQo+ID4gKw0KPiA+ICAgCWlmIChmbGFncyAmIFBF
UkZfRUZfVVBEQVRFKQ0KPiA+ICAgCQlpOTE1X3BtdV9ldmVudF9yZWFkKGV2ZW50KTsNCj4gPiAg
IAlpOTE1X3BtdV9kaXNhYmxlKGV2ZW50KTsNCj4gPiArb3V0Og0KPiA+ICAgCWV2ZW50LT5ody5z
dGF0ZSA9IFBFUkZfSEVTX1NUT1BQRUQ7DQo+ID4gICB9DQo+ID4gICANCj4gDQo+IExHVE0sIGFs
dGhvdWdoIEkgYW0gbm90IHN1cmUgd2hvIGZlZWxzIGNvbWZvcnRhYmxlIHRvIHItYiBzaW5jZSB3
ZQ0KPiBhbGwgDQo+IGtpbmQgb2Ygc3VnZ2VzdGVkIHRoZSBzYW1lIGZpeC4gOikNCj4gDQo+IEZX
SVc6DQo+IA0KPiBSZXZpZXdlZC1ieTogVHZydGtvIFVyc3VsaW4gPHR2cnRrby51cnN1bGluQGlu
dGVsLmNvbT4NCg0KVGhhbmtzIFR2cnRrbyEgSSdsbCB0cmFjayBkb3duIGFub3RoZXIgcmV2aWV3
ZXIgaGVyZSBhcyB3ZWxsIHRvIGNsb3NlDQp0aGF0IG91dCBiZWZvcmUgbWVyZ2luZy4NCg0KVGhh
bmtzLA0KU3R1YXJ0DQoNCj4gDQo+IFJlZ2FyZHMsDQo+IA0KPiBUdnJ0a28NCg==
