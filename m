Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5861A46C84D
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 00:35:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 986EF6E14D;
	Tue,  7 Dec 2021 23:35:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4192A6E040
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Dec 2021 23:35:11 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="237521194"
X-IronPort-AV: E=Sophos;i="5.87,295,1631602800"; d="scan'208";a="237521194"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 15:35:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,295,1631602800"; d="scan'208";a="605912926"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 07 Dec 2021 15:35:10 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 7 Dec 2021 15:35:09 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 7 Dec 2021 15:35:09 -0800
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 7 Dec 2021 15:35:09 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E9sy89rQbt2hN9QdutPU1nI4cOB9RyNxEvySwTJgYbPgDLku7OITDib0Og30SLCcJvIjwO9UAXSgsMtpPtgVyfvF2vJc0Qz55iXFzAQocPxCb2wpVP/WqyplP3iKnoX/aVIOnn8wN3/2r5df+JcVb/b353H6umeW8mCkPz+RJZFU32hjhnAhK48O/lpvCwzj6US9GmIuomHD3v5e0O/FJaqTR48k0cdhz9dTm0ZJl9lH6Wpt/O4HKhAcWs+Jg0xI93Mdh6an/BGZFMpaYvwzbB6jVzMVLi3FZtkIibNTsVUgtikVaV0KUpAhgp4DW1dkAd3FZvKd53+GdXjGXvYhqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vBnAEVc3jAs3LFxjadVKn91UYOjwvHwQk9ekKCGS2l8=;
 b=hPTeiEXYH0ce2Tu19IojbihsRLekjIqCzNkDp9vN6ac1ajjYdAImONBvDuzu3sdnrDaotOt3T5cz3+wlTA7e5MGdL25OqTqTxbcjKwkZPBIANpqtQbnhTPb+aVqD4UwaHbb58GqBvFZspw9nq2ieG9gXAJImsLT4Y16GUy/QQkqhNx2p26DTopGvzUsnnNix+sYmudd4WI1dRrmApsiX7zj16G31Pz3qhynHLmIt67rZtgxCeE6EY4+2O4mLv7nqwTFH2oB7qNoXtWLWJXm26GQqWrtq8hQP2ca5hw7XZHFWsraevOtOdwwogDEWlThV5XJ/5DrGOoYQFsPMBwXrmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vBnAEVc3jAs3LFxjadVKn91UYOjwvHwQk9ekKCGS2l8=;
 b=eX5eYYoAaSLVQqaTyGR9ghZkK6Rls8yL7bXVs4cbc3+7/BmPqMxQAEQbghYNBINqLYbsMaieOT2tr1NHiGS5ja2mEVf0gmOcuS4RwWuy11id3ghkY9bAMxE+iRojBMPBsS6EEJNcZDen5j4nRfzSVldIGwfXDQCBdhLpj8H5QeU=
Received: from BYAPR11MB3784.namprd11.prod.outlook.com (2603:10b6:a03:fe::10)
 by BYAPR11MB3383.namprd11.prod.outlook.com (2603:10b6:a03:1b::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.11; Tue, 7 Dec
 2021 23:35:06 +0000
Received: from BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14]) by BYAPR11MB3784.namprd11.prod.outlook.com
 ([fe80::2d25:f356:ac1e:ff14%6]) with mapi id 15.20.4755.022; Tue, 7 Dec 2021
 23:35:06 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "Brost, Matthew" <matthew.brost@intel.com>
Thread-Topic: [Intel-gfx] [RFC 4/7] drm/i915/guc: Add GuC's error state
 capture output structures.
Thread-Index: AQHX3/UdVgsr+BVLXkKZLcQdIhbLMKwnm0uAgAArSwA=
Date: Tue, 7 Dec 2021 23:35:06 +0000
Message-ID: <aff8bca22f4ce0af35c5f74bee75eb0e55e682de.camel@intel.com>
References: <20211122230402.2023576-1-alan.previn.teres.alexis@intel.com>
 <20211122230402.2023576-5-alan.previn.teres.alexis@intel.com>
 <20211207210129.GA16721@jons-linux-dev-box>
In-Reply-To: <20211207210129.GA16721@jons-linux-dev-box>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1ecb9845-1f2e-42d4-3323-08d9b9da336b
x-ms-traffictypediagnostic: BYAPR11MB3383:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <BYAPR11MB3383C2F095F6B48A03F7E8438A6E9@BYAPR11MB3383.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VL7sbOkClOpBZxk9GLZxRAZR4q5kNtoXQmqTIbEJS9d1M2QyGCuBr4s8G9KpPVy0E7LYuvH86jv593pe8bTUN1RXNC3sd+ArjMhqOSYfNakDBnMaks1H6O7mXUT79oKgvJBGmFtDp5mIDNdPNoPo2YDhJVhOxR9TVahdQoMIr0GMd2aStdD347bbBQClOEq2/qTJnH7+OJQIE/rUIy0EoZKGnWvAbarAaTmU446EfoRnF2bUNJiLBgiNG0pzcbsxecCiELTQUufYPDNcr5zATfUpRDuE4m66CR4dZWDJ1SKaha5z0FCp1yCjP+Poc4Ye+kuGQLBVsqObrjLdVDUw7tflED9DViEsZUtcsuyPOy8NczqBUfWixgp6CG/7OY0zEJJtGdnIylmPP6+FtChfpmX94rwvJ10DYpdGmfSMXJiPMsR5dtGclBYZC/WMrBInEttVtA+F3i4bf7IoNTvFWxzpAZmCmJcuXaRAYsKRDVb8IMBj6s2fQOnN4BpcjNiXconcByZopAsWnP7EyIdOGKVSYoxLAh+IVMadu59NQVzjBT/fP+9trCOCWEy0/dHZCKjXT9r/amEigsH1vxDgdELchjQTplsSmxNO5Otx4DW/5uKXH4d1SLevQ/bJHuJ8L7YnmNx6QoDYI9i1F7B8p4VqFHKFbYKB0+TLiAhdHVJRLku1uVcNLXEl904am1SzVBmTd8ngTBu/Dv16vr4pRg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3784.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(4326008)(37006003)(6486002)(82960400001)(8936002)(36756003)(8676002)(38070700005)(2906002)(316002)(122000001)(71200400001)(186003)(6636002)(86362001)(2616005)(6506007)(26005)(38100700002)(4744005)(508600001)(6512007)(76116006)(66476007)(66446008)(66946007)(5660300002)(66556008)(64756008)(6862004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?V1A5VUZERDhISnFKbWIvbEZ5M1ZlSUlVdjBNQ1B4ZyttUGRjNHVncEluTHdD?=
 =?utf-8?B?OEU3Y3B6NjZyeW9uNzFzSllDM2x2RkZzeHJXRUZKeGEyU0xmYnpBU0NjTW01?=
 =?utf-8?B?dkc1Znk3MXg4ekxtdXNlMGlSbC84S2R3UWYwL2taQVJhekM4aWQwM2FCRmFS?=
 =?utf-8?B?U1Z6VUJqN0Q3akhnR0lPdDhaemlWM2RTcEw4ZUhqRWpnS3hzL1pmMWtZOWFK?=
 =?utf-8?B?elJwR2VEN0JkazRCYVRmTC9xeUVUZTYrNW1zRGg5d1RxWDJkMEtOZmdidkVC?=
 =?utf-8?B?bzNVL3FRc0kyNGlLOFBkZDl4RXpGWWMycTBLbTFzamhZbXdPSVMzVStXOHc4?=
 =?utf-8?B?UkZ0OTgyOGgxUHZITnlrTDdmZVJJa3ZCQ3V5ekUyTEVVdGN4Q0RlQUtmVERw?=
 =?utf-8?B?Ump4eDFSd0ZDNXIwUGkyRjZzdldPMy9Eb2pzOTUwSzY4NzMxaS95M0NhMzF4?=
 =?utf-8?B?b2lPMjdPT2VjV0VNc1VlMTJsYTd1N3o4V3RyaUVrd0RwSGRFSjFkeHNVS0x0?=
 =?utf-8?B?ZVpjN3BhREJOV1pXbHd1L3JEbURjQzJLb1VJZWN2Nm1NM1FZOUJxZlRnVzlo?=
 =?utf-8?B?K1RIZGpnaVBmVThMVWdDV3RCYmNBWlhnc24vYUh1TTlmYmNxcFNneldBcWI5?=
 =?utf-8?B?cGxhdWdxdmE5VjJUSVc4YUlTUlBmbzFuMnVEQzVlK0RlSmFIdWltVWZtZmxV?=
 =?utf-8?B?cWlqT0l5dWlNVDZrOWFWRmJnV1FIOU5oNXJFVGFwVFBMazVzaU1SUk5sNjN5?=
 =?utf-8?B?b0tBbUQvU1hOMitwR2Rrci9BTm0zN3NnTjhiVkN4UTkySnBJN2NQQU5MVkkw?=
 =?utf-8?B?aWpvcnU1cDVDRjRTNGgwZzFiUm1Bd29NSzM4L0o1TlhZMTJZZWZIWkpWYjFN?=
 =?utf-8?B?eGZFZVV6SVJ4UGh0aXFucC8zK2VTSjZUcFl2V2VOUWRnYWEwUDYxL1Z6S3VG?=
 =?utf-8?B?YkdDRDVTejRmUEVsdk9lZXNmdmhROWh3dkZOblh2UjVhdi9TZzNDaVJENHIv?=
 =?utf-8?B?UzBxKy9zck8xcmxUbjdRRG1YdXJJZzhoS3BJMnZ0SFg0d05CSGxRbTBZcnNO?=
 =?utf-8?B?d011RE95eGMvK1lBQjdBekFKd3UxbnBHdUFUZW52SWpvUU5MS1AzRlhBdng1?=
 =?utf-8?B?M3BKUU1YSG4ybjl6RTlLRkExRnBLL1ZMQXpaYVRYTXF1cU9Ea3ZNUm5BTXdQ?=
 =?utf-8?B?ZU13MHZVY2x1alFsTWMyam1rK3FrbVdMTUxFVmxTajNOWC9RZVc4RkF1MFlz?=
 =?utf-8?B?Z0prZVhIM2Qvd0puOGM3SHhRaTBYdjRaeTM5ZkRsTHlBZ2ZGenVpNXhjTXc1?=
 =?utf-8?B?R2wyNTR5NEdYODVmQ2tIaHRHUmxGOEN6UEVCSEQ5R2hIZ2hzOWpDTHZKRjVz?=
 =?utf-8?B?VVlYQVJ0R3lsdDhBY1dWQUthNjhyV0hLaFlhTnN0ZzNLTGl6VzhSYi85cUdj?=
 =?utf-8?B?TXBYWWtObHhFNmd0Rjh2TnhLa3hyZTVuYzVEeHJJTjdGK0R0UjF4ZGZEOVo0?=
 =?utf-8?B?akIxb0tON0Yzc0gzbFhwcWVpME9WeW1Ddk9oaS9OMkRsQ3J4bWNtcnp6amhJ?=
 =?utf-8?B?UzVrbjU2SU1UdVhkeUtjUkIzQkN4OW1PQzBLMnEzcVd6ZGlBc1JqdDdweEFK?=
 =?utf-8?B?eC9kQnE4WitJWFhTWUw0M25CV2s0cEpDRmxWVkRkU01pRXMzQkh3bU9waDl6?=
 =?utf-8?B?ZmJBOUp6V2NsKzA2cTd6NFA3MnoyYUFrQ3ZlekxGNXBaU1p5d3dJT3BxN3hm?=
 =?utf-8?B?Qktic2RZRjJwQ0xpRGplMHord0t4WUZQREZJRFRmT0RXdlBaQkUzWjJMemtM?=
 =?utf-8?B?bHFScmZ3RjhabmF6WkJXV0swNDY2eHU0SmplUHRCS3NCb2JlWXFUa3NPUXFF?=
 =?utf-8?B?SDB5Sld4TjVIV0UvSXhkMUh5b0p1QXdPV1dRRFNqM09tTCtrWS9JYlh2NTVD?=
 =?utf-8?B?Y0JXa3I0RzZjVjlMRDRRZ05vNEdwREk3YkN0OHVHOEIyT0M2VkRMczhhNWk4?=
 =?utf-8?B?eEVnc0FycHRiUEpIN3dUc3RKRHpJbng1M1dvdGQxMGJ6Y1c4eDluMHpTSWVV?=
 =?utf-8?B?NHROWTFTTFA5dzYxU2RpeGNHNEdIS0dzRytJZmpzUHN0Y3p4aHdMbmRaNGdR?=
 =?utf-8?B?Z1psbCtncm1zV3BoejVVbXhFMWFqMWYveE5mZkkrMXZHbFlzdmhES2tkWitk?=
 =?utf-8?B?MnVOWmhnYjFucXJqZWVOTzZLWEVKRkdWSzF4d1pxV3IvUkJoM21UZUhubzc4?=
 =?utf-8?B?SUNsaFEwTDN1SElZUjQ1RkZxbE1ZaDhFNzdyYitzRXpFT1d3eWh0RC9JSWk5?=
 =?utf-8?B?b3pBQ0pYdXVFalFMU1dDK1NmR2ZBR3ptV1J6THducXVjMEttTEJHdz09?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <3F06939634523843A6CBA4E9D1AC3B67@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3784.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ecb9845-1f2e-42d4-3323-08d9b9da336b
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Dec 2021 23:35:06.4709 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kpNWWyz1Tu94WMmtA1E58MJBik4BypQDDiSg3obaJ0fLfbleH4gNYjNSHmHLg5470PBbahOaj/l7DkeCDwW3dUYlGu8xDI35BTZdBIbCIsLjjytwonSA6W3rNXl3Ft26
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3383
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 4/7] drm/i915/guc: Add GuC's error state
 capture output structures.
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

VGhhbmtzIGZvciB0aGUgY29uZGl0aW9uYWwgUnZiIC0gd2lsbCBnZXQgdGhhdCBmaXhlZCBvbiBu
ZXh0IHJldi4NCg0KT24gVHVlLCAyMDIxLTEyLTA3IGF0IDEzOjAxIC0wODAwLCBNYXR0aGV3IEJy
b3N0IHdyb3RlOg0KPiBPbiBNb24sIE5vdiAyMiwgMjAyMSBhdCAwMzowMzo1OVBNIC0wODAwLCBB
bGFuIFByZXZpbiB3cm90ZToNCj4gPiANCj4gPiAgDQo+ID4gK3N0cnVjdCBpbnRlbF9ndWNfY2Fw
dHVyZV9vdXRfZGF0YV9oZWFkZXIgew0KPiA+ICsJdTMyIHJlc2VydmVkMTsNCj4gPiArCXUzMiBp
bmZvOw0KPiA+ICsJCSNkZWZpbmUgR1VDX0NBUFRVUkVfREFUQUhEUl9TUkNfVFlQRSBHRU5NQVNL
KDMsIDApIC8qIGFzIHBlciBlbnVtIGd1Y19jYXB0dXJlX3R5cGUgKi8NCj4gPiArCQkjZGVmaW5l
IEdVQ19DQVBUVVJFX0RBVEFIRFJfU1JDX0NMQVNTIEdFTk1BU0soNywgNCkgLyogYXMgcGVyIEdV
Q19NQVhfRU5HSU5FX0NMQVNTRVMgKi8NCj4gPiArCQkjZGVmaW5lIEdVQ19DQVBUVVJFX0RBVEFI
RFJfU1JDX0lOU1RBTkNFIEdFTk1BU0soMTEsIDgpDQo+ID4gKwl1MzIgbHJjYTsgLyogaWYgdHlw
ZS1pbnN0YW5jZSwgTFJDQSAoYWRkcmVzcykgdGhhdCBodW5nLCBlbHNlIHNldCB0byB+MCAqLw0K
PiA+ICsJdTMyIGd1Y19jdHhfaWQ7IC8qIGlmIHR5cGUtaW5zdGFuY2UsIGNvbnRleHQgaW5kZXgg
b2YgaHVuZyBjb250ZXh0LCBlbHNlIHNldCB0byB+MCAqLw0KPiANCj4gcy9ndWNfY3R4X2lkL2d1
Y19pZA0KPiANCj4gV2l0aCBfX3BhY2tlZCAocGVyIEphbmkncyBmZWVkYmFjaykgYXMgd2VsbDoN
Cj4gDQo+IFJldmlld2VkLWJ5OiBNYXR0aGV3IEJyb3N0IDxtYXR0aGV3LmJyb3N0QGludGVsLmNv
bT4NCj4gDQo=
