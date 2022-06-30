Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 14C9956228D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jun 2022 21:04:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5656110FE0B;
	Thu, 30 Jun 2022 19:04:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 07BB6112A95
 for <intel-gfx@lists.freedesktop.org>; Thu, 30 Jun 2022 19:04:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656615861; x=1688151861;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ad6wIo3zPQOMNhBuXGk85sw7jjaqcbL85hTpxWPFBPM=;
 b=m3F/WyHp6f6aNpKA2N7vLGR7+TIfAPohgCI85t0dIPhz8BTKH+Up+YJ4
 g9fuqk4BGh7cH9ofYnsj3IxRufnZdFFAthIVM0OW9sFE5oexIwBUfBmu4
 36A+F7GYM+poGOUOyw2Tsa5A0wD7RlEBkDcj7U9g6wKK21w7PheZ6RaWF
 kndWBk1DRQP4x2R5e2ZhDwh3Ju1Sio8rbxyOTAT6sTcRQ24kdi3NLWofR
 7NgYFkq0a9EGEWYU+3Ab/zT653NOdoTPKJxRpConcNVWO4ZV20aa/jhjp
 jzX/O9WGkjoVkELS4RWv6RV6IAg8pqUvtF5F+1uHXJoZdPApC1pSjiqBb g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10394"; a="307950502"
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="307950502"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2022 12:04:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,235,1650956400"; d="scan'208";a="733744609"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 30 Jun 2022 12:04:20 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 30 Jun 2022 12:04:19 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 30 Jun 2022 12:04:19 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 30 Jun 2022 12:04:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dsYKiRG3E2L81rY3i4Cs5dnm/e/OtKHbHBYSy6wlx4KNtD7jM1owAuOYYhc8Zp91AjF2h/o7qPGRQ7nfc0apYxOOK2qqbpmJqPL8NykPZm608mOjZ6DHP8u8YF2qjvTUFaqnfRz84erlw179AsF8ZOLX5MrL2YrP9FxaYhHVHI565dWRtK3lmdyhSCJu357L/6/Q7jskELRPQm/MNMmOeRrPV6PhJzOTutENH05+zJ/ixC2TJqcd1DwUM79qKUlZVhN2hO8jNggi78bTuGzjRngmUchnbfGbQjEn2BMNCgbS94L4Ni1CBYJVgLga172aaFxCm4YXjxgh6PozneRL5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ad6wIo3zPQOMNhBuXGk85sw7jjaqcbL85hTpxWPFBPM=;
 b=bEvbcS3gekDkvZS6Gp1CRImKe4Qre4Jag0qhHRSHA9ePY9ufY5Epb89npVcyUksmZbirXYGBTf3JmqSr49p5LtY1G7OTH/mf97d06VJHNpKntWt9DLs5mOVVBEJYTSnihKSoVcF0axrWxOF3dWsnhJj48K7HHUTP5WlZenGBS0lgr1UiFfjsyVgT2h2irvLg/xko6pw6BujrnS2HOlS59rGWeNrXbDM/wPqJUUQCoZ6MB//nnfijYCdVg354tOnSyfybIF+FHGRMkdclAzcWps4F6UMkcPJ+S4oYNZlNqzqF7jn+OT+Ts76/1yUoiXxqHk2jPftq/Z/onE8EtQYKsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5573.namprd11.prod.outlook.com (2603:10b6:8:3b::7) by
 DM6PR11MB4252.namprd11.prod.outlook.com (2603:10b6:5:201::26) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5395.15; Thu, 30 Jun 2022 19:04:18 +0000
Received: from DM8PR11MB5573.namprd11.prod.outlook.com
 ([fe80::d861:ec75:9bb6:e417]) by DM8PR11MB5573.namprd11.prod.outlook.com
 ([fe80::d861:ec75:9bb6:e417%9]) with mapi id 15.20.5395.014; Thu, 30 Jun 2022
 19:04:18 +0000
From: "Summers, Stuart" <stuart.summers@intel.com>
To: "tvrtko.ursulin@linux.intel.com" <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Fix NPD in PMU during driver
 teardown
Thread-Index: AQHYi+ig6uBFJQ9yv0SF7ER7Y6beQq1nwNsAgACPs4A=
Date: Thu, 30 Jun 2022 19:04:18 +0000
Message-ID: <b3c5df0d4b4f8821f30c7c8bc7dd54b03932ce3d.camel@intel.com>
References: <d88ae0c8d7dda0d17ad52e48c4c2352df71fe85d.1656528043.git.stuart.summers@intel.com>
 <3935ddd5-45e8-e38d-320d-d608aa4ba9bd@linux.intel.com>
In-Reply-To: <3935ddd5-45e8-e38d-320d-d608aa4ba9bd@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 34241da8-4b34-4688-23bf-08da5acb554d
x-ms-traffictypediagnostic: DM6PR11MB4252:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: W1U846NB1nZfkglAr/BK0cXp1UqwHVqUwlsGS19rjt9sj77n1+2H/n7hiZsCQ4afNb8mKipdgz/kk2g2sIQJCrJ4W3+LmZgqdgA/X0L3CaHnVp7J8nVngmBp9ymxnTNAUQ5kv5YIcb8n9SYbNNi05mZQiP/0iRgI++4VG3knTA3+pruQNuhL5Lmb/9bwJ1xNsg5gjN9TP800XHYKTmB2xIbuV3KKnMXzF3BynCrIUzG7fAm9Jc9am5o7j33DKVwhw6MyoRRCZ8apyhdTOxZv7YSjWKMAsiVObLqrrG/IMohTbQXLVGLWtbeRQ9Efpj/p9R35eh8btpKO6KkpMnXU9NRtKmDjK44+hS5jiNzdSHOrnv1HciRn0S9asPyZZVcGie0HXfzAPFAmd9zVHbOVB1GC3saU8/eq9kifnzBoeuw47fy7yQsuUZmVZeAfJ0El8MFWQOvrAPEBvOVf87QlrTQnsm5VvX30jNJ5iDjTnm2D9e+zplNp8LOLHxctBpclDdmK1x+vrD8I8dOfc6jvaFYYe7mHjmbbJdNSpo87vy8INuOZnTks9jGG5+pPwLiSZLrG4ijRtpWBxyXrtDkaGCnka7sYx0YAr8tVGB1n57ILxfaBOyMXlQmrwg3wn+ZpcPB+XKmnW0Ri9HJMgNr0s0anUqtTvixVSAynUDB5Oho80LZHLoqE9v8wjiLO5CjSzSB7Ntfzf09XYBGLWuCup4hRSVoQghyIf/0CVh9JgKi28cqBB2VOx4LM0e7xwUms17rvsVWtMSFDXACwzdj0/l5AWhdOK/TaUsBnulpdobjESG9H7sE9mM1szqiS+xhN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5573.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(346002)(136003)(376002)(396003)(82960400001)(2616005)(38070700005)(122000001)(66946007)(66556008)(66476007)(66446008)(64756008)(8676002)(91956017)(4326008)(86362001)(53546011)(26005)(41300700001)(6506007)(76116006)(5660300002)(6512007)(8936002)(316002)(6916009)(186003)(38100700002)(71200400001)(6486002)(83380400001)(478600001)(36756003)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VEJqVEE5bXViS3pRTTN1d3JMcEw3aU45RXhmVXFZWVVFL0NsK3Y2bjVCTmFE?=
 =?utf-8?B?T2c1NXI1YmlFOGpJb3ZMRkpyNjZ1ZjM4bXdMTmVyZW1Db3BsUHlDM3p0MjNo?=
 =?utf-8?B?aUFCVElneHYydjIrNDBOOXFaZTRuVzZZVncyeGVsKytkOUQ0YWQwQzhZSDBw?=
 =?utf-8?B?Sjd4dEJobHVMakplTGY3VUN1Lyt5VlRtWFBZMW95QVduMEdzdnJGNGNEMEpO?=
 =?utf-8?B?WEROSTJwSmdCQ2xsMnFzUm1RdGhOYmxReU9kcFFuUHRFVXo0eUhwSFQzTWxL?=
 =?utf-8?B?aEhlbFprTk8xdlEzdzFISTVNSFM4VU5Hc2I3cldnSkdqWmNDYU9UWGxsSGpD?=
 =?utf-8?B?Z20zSS95UDZpR2lneTg4UEEwYWREdzNPKzBhVUN0VFlvN2lFUjdQNTEwYS9F?=
 =?utf-8?B?UDhrWFB4MkJQR2E4UVlKMmhEZWcweEhUSjJ6T1o2VlZ1ZVVweGRDQXlCUFBw?=
 =?utf-8?B?alhHL2k3ZVVzNVJwbmlibFYrYmVaVVVmTDlRSmdWemE1U2JpZWRwbHZEQnRQ?=
 =?utf-8?B?TEl0c2d6R3NRNDhNTGxqSEZMdVY5bmlBZlJzRjFOVllpVFphTFBsb3NYc0pL?=
 =?utf-8?B?ckdFRXlXQ2w4VVhhenpCdGI5djNpZGxpaGp4WkZnMlVWVHRlZEV4Z3h2WUM3?=
 =?utf-8?B?NEpJMFNYZFpUTDFEVVQ0b0NEU1UxRFA2b2RKU3k5YytTa2tTcmVYU25IcWtF?=
 =?utf-8?B?c0I2UTdmT05saG54d1RSRm11Wkkvc25MVStRYXFncDZVaUt5RnpUOEFTSTRF?=
 =?utf-8?B?QUkxTG13ZUcwTmtsOSszM2FaaEFBRkxVSHZpODlTRHNjQ3hlTnlGSmUzK09B?=
 =?utf-8?B?dzFQL1JYdndOcWVhWlRWZElseUgzRkVSWWxDUW4rZytCNDV4ODErRzFmVWto?=
 =?utf-8?B?Vy9oMWZJRkRyTnZJTysvQ0xOVHBhMHpsbjFvYVlhQ2xBZS9ORlA4dmVkenRD?=
 =?utf-8?B?anA1Z2ZZbTFobGk1MWhIMHM2QkMvU1hDSUl0bzVjTmNIV28rN1lDZlJocDYz?=
 =?utf-8?B?SFRVeXMxMi9tR3hERmdQWGtWdzNESnhDVXdtZkV1cGdRQ2Vxd2V0bVBxVnZD?=
 =?utf-8?B?cmVQTUhJQ2o4ZWF3ZWR6aWNGeVUycXpzTjVmSFdvNnRBdGpDanNOaTdsa2py?=
 =?utf-8?B?bkZTMHNMMkF0R2pFUjJ3dk5jdUdnUnlHQWdLVm5LMDZkMml6V0ZGQk54YXBW?=
 =?utf-8?B?VWJVYW9GMkIxbHhhS0JtL0t1VGtxOE9zSDdOVjFwUEJhbTZvcFpPdEo0c1NX?=
 =?utf-8?B?NmtRT3JYYk1TL1BXOURhM3lSeVFyUEFyclN0cDQrdWNBN3FjenlNNXV1MW1E?=
 =?utf-8?B?cTY3OGJIaVlGa2ZUZG1seG54ZEdxeUNJNHRHUzJVSUZCblBGeTN5L3VCbmtW?=
 =?utf-8?B?RGRpZmhQWmFGc0Uwd0MzWVRFTmIzKzFBeW9HTmdLazR2RWhyTW5YOFhaVEdi?=
 =?utf-8?B?TGNmMHVkdTdFQzN1USs3dmpmcGVGMEtoN2ZQVEI2TXNRNUg1N3o5STNlS0xR?=
 =?utf-8?B?em1UZnc3b0c1SWJpNlpsdjh5djRWOEZzLzJtM3BoVTlZTGZXb202SllUYnJX?=
 =?utf-8?B?YzF1SVd2MzVGT3J0WG44MVVjVEdFMWRZR2ZZQk1xRnl0M0tRY2tvSUVpbUZu?=
 =?utf-8?B?TlNVWFEvZStkdDYwSWY4cVlqbS9KaEZFdTlhYlliUlpWdjlrRlB4Zi96Umkr?=
 =?utf-8?B?OXljam4yRUxBSS8wRHNBNEltY3NKZzF6UUIvZ3ZNdlRBVWFRcXF4VWkyYkxD?=
 =?utf-8?B?RUdiWWlFRFZUMEZUNjRSYXp2RTF1Mm1HS1h2MWphL01lMGh3aUE5NzdvU3ZG?=
 =?utf-8?B?MkJrT1R2dDJQQUhxT250OER1anQ0RkVTK1g5K2VrdzhrYXVtdS9nT3lrc29s?=
 =?utf-8?B?UWFuVzZNSGo0S1h0ejUrOVhMM3ZEbkliMGMzWW5GdGVUVjgySEtobWx0WkVl?=
 =?utf-8?B?c3dKNkxna1ZJeGxWTFVFNVRsTWYrcnhsSHNhSkxxUGloWExlZnhQREEyV1A3?=
 =?utf-8?B?SGk0ZEZXYkE3U1lJSHlvRWlDdEVQK3djVXlWZTR6NVVnMkFpR3A5MDFjWTNU?=
 =?utf-8?B?d0hyK1c1MXN0VkhFZW9tUEJFNTB0STRPakRncWdmc1hpUm9WWWttQzFySUV6?=
 =?utf-8?B?eVBYcjRXQ3cvejFJTlBVL1hpTlpqa09HbmN0WVpJOXR6Qld4V29zSXpYaTRT?=
 =?utf-8?B?Vnc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <930C53BD64E1CF4190C3D755C2B78930@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5573.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34241da8-4b34-4688-23bf-08da5acb554d
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jun 2022 19:04:18.2013 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kWFcVcybGDSJvZ1tomuA3k1zWihiZpajChUsrAI4RStcqf13xYSbukRqo9ivEJ5jlftXWprWKxgrxQDVF95sB+p9Wsh5ahY2ZtMISomTZvc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4252
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix NPD in PMU during driver
 teardown
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

T24gVGh1LCAyMDIyLTA2LTMwIGF0IDExOjI5ICswMTAwLCBUdnJ0a28gVXJzdWxpbiB3cm90ZToN
Cj4gT24gMjkvMDYvMjAyMiAxOTo0NiwgU3R1YXJ0IFN1bW1lcnMgd3JvdGU6DQo+ID4gSW4gdGhl
IGRyaXZlciB0ZWFyZG93biwgd2UgYXJlIHVucmVnaXN0ZXJpbmcgdGhlIGd0IHByaW9yDQo+ID4g
dG8gdW5yZWdpc3RlcmluZyB0aGUgUE1VLiBUaGlzIG1lYW5zIHRoZXJlIGlzIGEgc21hbGwgd2lu
ZG93DQo+ID4gb2YgdGltZSBpbiB3aGljaCB0aGUgYXBwbGljYXRpb24gY2FuIHJlcXVlc3QgbWV0
cmljcyBmcm9tIHRoZQ0KPiA+IFBNVSwgc29tZSBvZiB3aGljaCBhcmUgY2FsbGluZyBpbnRvIHRo
ZSB1YXBpIGVuZ2luZXMgbGlzdCwNCj4gPiB3aGlsZSB0aGUgZW5naW5lcyBhcmUgbm90IGF2YWls
YWJsZS4gSW4gdGhpcyBjYXNlIHdlIGNhbg0KPiA+IHNlZSBudWxsIHBvaW50ZXIgZGVyZWZlcmVu
Y2VzLg0KPiA+IA0KPiA+IFByZXZlbnQgdGhpcyBieSBzaW1wbHkgY2hlY2tpbmcgaWYgdGhlIGVu
Z2luZXMgYXJlIHByZXNlbnQNCj4gPiB3aGVuIHRob3NlIFBNVSBldmVudHMgY29tZSB0aHJvdWdo
LiBQcmludCBhIGRlYnVnIG1lc3NhZ2UNCj4gPiBpbmRpY2F0aW5nIHdoZW4gdGhleSBhcmVuJ3Qg
YXZhaWxhYmxlLg0KPiANCj4gT2J2aW91cyBxdWVzdGlvbiAtIGNhbiB3ZSBqdXN0IG1vdmUgUE1V
IHVucmVnaXN0ZXIgUE1VIHRvIGJlZm9yZSANCj4gdW5yZWdpc3RlciBHVD8NCg0KV2VsbCBJIHdh
bnRlZCB0byBwdXNoIHRoZSB3b3JrYXJvdW5kIGFzYXAgdG8gZ2V0IGZlZWRiYWNrLiBJIHN1Ym1p
dHRlZA0KdG8gdHJ5Ym90IGluIHBhcmFsbGVsIGFuZCBpdCBsb29rcyB2YWxpZC4gSSBhZ3JlZSB0
aGF0J3MgYSBtb3JlIHZhbGlkDQpzb2x1dGlvbiwgYnV0IElNTyB3ZSBzaG91bGQgaGF2ZSB0aGVz
ZSBjaGVja3MgYW55d2F5Lg0KDQpBdCBhbnkgcmF0ZSwgSSdsbCByZXN1Ym1pdCB3aXRoIHRoZSBt
b3ZlIG9mIHRoZSByZWdpc3RyYXRpb25zLg0KDQpUaGFua3MsDQpTdHVhcnQNCg0KPiANCj4gUmVn
YXJkcywNCj4gDQo+IFR2cnRrbw0KPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBTdHVhcnQgU3VtbWVy
cyA8c3R1YXJ0LnN1bW1lcnNAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICAgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wbXUuYyB8IDcyICsrKysrKysrKysrKysrKysrKystLS0tLS0tLS0NCj4g
PiAtLS0tLQ0KPiA+ICAgMSBmaWxlIGNoYW5nZWQsIDQyIGluc2VydGlvbnMoKyksIDMwIGRlbGV0
aW9ucygtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1
X3BtdS5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X3BtdS5jDQo+ID4gaW5kZXgg
OTU4YjM3MTIzYmYxLi43OTZhMWQ4ZTM2ZjIgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaTkxNV9wbXUuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
cG11LmMNCj4gPiBAQCAtNjcwLDIxICs2NzAsMjggQEAgc3RhdGljIHZvaWQgaTkxNV9wbXVfZW5h
YmxlKHN0cnVjdCBwZXJmX2V2ZW50DQo+ID4gKmV2ZW50KQ0KPiA+ICAgCWlmIChpc19lbmdpbmVf
ZXZlbnQoZXZlbnQpKSB7DQo+ID4gICAJCXU4IHNhbXBsZSA9IGVuZ2luZV9ldmVudF9zYW1wbGUo
ZXZlbnQpOw0KPiA+ICAgCQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7DQo+ID4gLQ0K
PiA+IC0JCWVuZ2luZSA9IGludGVsX2VuZ2luZV9sb29rdXBfdXNlcihpOTE1LA0KPiA+IC0JCQkJ
CQkgIGVuZ2luZV9ldmVudF9jbGFzcyhldg0KPiA+IGVudCksDQo+ID4gLQkJCQkJCSAgZW5naW5l
X2V2ZW50X2luc3RhbmNlDQo+ID4gKGV2ZW50KSk7DQo+ID4gLQ0KPiA+IC0JCUJVSUxEX0JVR19P
TihBUlJBWV9TSVpFKGVuZ2luZS0+cG11LmVuYWJsZV9jb3VudCkgIT0NCj4gPiAtCQkJICAgICBJ
OTE1X0VOR0lORV9TQU1QTEVfQ09VTlQpOw0KPiA+IC0JCUJVSUxEX0JVR19PTihBUlJBWV9TSVpF
KGVuZ2luZS0+cG11LnNhbXBsZSkgIT0NCj4gPiAtCQkJICAgICBJOTE1X0VOR0lORV9TQU1QTEVf
Q09VTlQpOw0KPiA+IC0JCUdFTV9CVUdfT04oc2FtcGxlID49IEFSUkFZX1NJWkUoZW5naW5lLQ0K
PiA+ID5wbXUuZW5hYmxlX2NvdW50KSk7DQo+ID4gLQkJR0VNX0JVR19PTihzYW1wbGUgPj0gQVJS
QVlfU0laRShlbmdpbmUtPnBtdS5zYW1wbGUpKTsNCj4gPiAtCQlHRU1fQlVHX09OKGVuZ2luZS0+
cG11LmVuYWJsZV9jb3VudFtzYW1wbGVdID09IH4wKTsNCj4gPiAtDQo+ID4gLQkJZW5naW5lLT5w
bXUuZW5hYmxlIHw9IEJJVChzYW1wbGUpOw0KPiA+IC0JCWVuZ2luZS0+cG11LmVuYWJsZV9jb3Vu
dFtzYW1wbGVdKys7DQo+ID4gKwkJdTggY2xhc3MgPSBlbmdpbmVfZXZlbnRfY2xhc3MoZXZlbnQp
Ow0KPiA+ICsJCXU4IGluc3RhbmNlID0gZW5naW5lX2V2ZW50X2luc3RhbmNlKGV2ZW50KTsNCj4g
PiArDQo+ID4gKwkJZW5naW5lID0gaW50ZWxfZW5naW5lX2xvb2t1cF91c2VyKGk5MTUsIGNsYXNz
LA0KPiA+IGluc3RhbmNlKTsNCj4gPiArCQlpZiAoZW5naW5lKSB7DQo+ID4gKwkJCUJVSUxEX0JV
R19PTihBUlJBWV9TSVpFKGVuZ2luZS0NCj4gPiA+cG11LmVuYWJsZV9jb3VudCkgIT0NCj4gPiAr
CQkJCSAgICAgSTkxNV9FTkdJTkVfU0FNUExFX0NPVU5UKTsNCj4gPiArCQkJQlVJTERfQlVHX09O
KEFSUkFZX1NJWkUoZW5naW5lLT5wbXUuc2FtcGxlKSAhPQ0KPiA+ICsJCQkJICAgICBJOTE1X0VO
R0lORV9TQU1QTEVfQ09VTlQpOw0KPiA+ICsJCQlHRU1fQlVHX09OKHNhbXBsZSA+PQ0KPiA+ICsJ
CQkJICAgQVJSQVlfU0laRShlbmdpbmUtDQo+ID4gPnBtdS5lbmFibGVfY291bnQpKTsNCj4gPiAr
CQkJR0VNX0JVR19PTihzYW1wbGUgPj0NCj4gPiArCQkJCSAgIEFSUkFZX1NJWkUoZW5naW5lLT5w
bXUuc2FtcGxlKSk7DQo+ID4gKwkJCUdFTV9CVUdfT04oZW5naW5lLT5wbXUuZW5hYmxlX2NvdW50
W3NhbXBsZV0gPT0NCj4gPiB+MCk7DQo+ID4gKw0KPiA+ICsJCQllbmdpbmUtPnBtdS5lbmFibGUg
fD0gQklUKHNhbXBsZSk7DQo+ID4gKwkJCWVuZ2luZS0+cG11LmVuYWJsZV9jb3VudFtzYW1wbGVd
Kys7DQo+ID4gKwkJfSBlbHNlIHsNCj4gPiArCQkJZHJtX2RiZygmaTkxNS0+ZHJtLA0KPiA+ICsJ
CQkJIkludmFsaWQgZW5naW5lIGV2ZW50OiB7IGNsYXNzOiVkLA0KPiA+IGluc3Q6JWQgfVxuIiwN
Cj4gPiArCQkJCWNsYXNzLCBpbnN0YW5jZSk7DQo+ID4gKwkJfQ0KPiA+ICAgCX0NCj4gPiAgIA0K
PiA+ICAgCXNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJnBtdS0+bG9jaywgZmxhZ3MpOw0KPiA+IEBA
IC03MTQsMjEgKzcyMSwyNiBAQCBzdGF0aWMgdm9pZCBpOTE1X3BtdV9kaXNhYmxlKHN0cnVjdA0K
PiA+IHBlcmZfZXZlbnQgKmV2ZW50KQ0KPiA+ICAgCWlmIChpc19lbmdpbmVfZXZlbnQoZXZlbnQp
KSB7DQo+ID4gICAJCXU4IHNhbXBsZSA9IGVuZ2luZV9ldmVudF9zYW1wbGUoZXZlbnQpOw0KPiA+
ICAgCQlzdHJ1Y3QgaW50ZWxfZW5naW5lX2NzICplbmdpbmU7DQo+ID4gLQ0KPiA+IC0JCWVuZ2lu
ZSA9IGludGVsX2VuZ2luZV9sb29rdXBfdXNlcihpOTE1LA0KPiA+IC0JCQkJCQkgIGVuZ2luZV9l
dmVudF9jbGFzcyhldg0KPiA+IGVudCksDQo+ID4gLQkJCQkJCSAgZW5naW5lX2V2ZW50X2luc3Rh
bmNlDQo+ID4gKGV2ZW50KSk7DQo+ID4gLQ0KPiA+IC0JCUdFTV9CVUdfT04oc2FtcGxlID49IEFS
UkFZX1NJWkUoZW5naW5lLQ0KPiA+ID5wbXUuZW5hYmxlX2NvdW50KSk7DQo+ID4gLQkJR0VNX0JV
R19PTihzYW1wbGUgPj0gQVJSQVlfU0laRShlbmdpbmUtPnBtdS5zYW1wbGUpKTsNCj4gPiAtCQlH
RU1fQlVHX09OKGVuZ2luZS0+cG11LmVuYWJsZV9jb3VudFtzYW1wbGVdID09IDApOw0KPiA+IC0N
Cj4gPiAtCQkvKg0KPiA+IC0JCSAqIERlY3JlbWVudCB0aGUgcmVmZXJlbmNlIGNvdW50IGFuZCBj
bGVhciB0aGUgZW5hYmxlZA0KPiA+IC0JCSAqIGJpdG1hc2sgd2hlbiB0aGUgbGFzdCBsaXN0ZW5l
ciBvbiBhbiBldmVudCBnb2VzDQo+ID4gYXdheS4NCj4gPiAtCQkgKi8NCj4gPiAtCQlpZiAoLS1l
bmdpbmUtPnBtdS5lbmFibGVfY291bnRbc2FtcGxlXSA9PSAwKQ0KPiA+IC0JCQllbmdpbmUtPnBt
dS5lbmFibGUgJj0gfkJJVChzYW1wbGUpOw0KPiA+ICsJCXU4IGNsYXNzID0gZW5naW5lX2V2ZW50
X2NsYXNzKGV2ZW50KTsNCj4gPiArCQl1OCBpbnN0YW5jZSA9IGVuZ2luZV9ldmVudF9pbnN0YW5j
ZShldmVudCk7DQo+ID4gKw0KPiA+ICsJCWVuZ2luZSA9IGludGVsX2VuZ2luZV9sb29rdXBfdXNl
cihpOTE1LCBjbGFzcywNCj4gPiBpbnN0YW5jZSk7DQo+ID4gKwkJaWYgKGVuZ2luZSkgew0KPiA+
ICsJCQlHRU1fQlVHX09OKHNhbXBsZSA+PSBBUlJBWV9TSVpFKGVuZ2luZS0NCj4gPiA+cG11LmVu
YWJsZV9jb3VudCkpOw0KPiA+ICsJCQlHRU1fQlVHX09OKHNhbXBsZSA+PSBBUlJBWV9TSVpFKGVu
Z2luZS0NCj4gPiA+cG11LnNhbXBsZSkpOw0KPiA+ICsJCQlHRU1fQlVHX09OKGVuZ2luZS0+cG11
LmVuYWJsZV9jb3VudFtzYW1wbGVdID09DQo+ID4gMCk7DQo+ID4gKw0KPiA+ICsJCQkvKg0KPiA+
ICsJCQkgKiBEZWNyZW1lbnQgdGhlIHJlZmVyZW5jZSBjb3VudCBhbmQgY2xlYXIgdGhlDQo+ID4g
ZW5hYmxlZA0KPiA+ICsJCQkgKiBiaXRtYXNrIHdoZW4gdGhlIGxhc3QgbGlzdGVuZXIgb24gYW4g
ZXZlbnQNCj4gPiBnb2VzIGF3YXkuDQo+ID4gKwkJCSAqLw0KPiA+ICsJCQlpZiAoLS1lbmdpbmUt
PnBtdS5lbmFibGVfY291bnRbc2FtcGxlXSA9PSAwKQ0KPiA+ICsJCQkJZW5naW5lLT5wbXUuZW5h
YmxlICY9IH5CSVQoc2FtcGxlKTsNCj4gPiArCQl9IGVsc2Ugew0KPiA+ICsJCQlkcm1fZGJnKCZp
OTE1LT5kcm0sDQo+ID4gKwkJCQkiSW52YWxpZCBlbmdpbmUgZXZlbnQ6IHsgY2xhc3M6JWQsDQo+
ID4gaW5zdDolZCB9XG4iLA0KPiA+ICsJCQkJY2xhc3MsIGluc3RhbmNlKTsNCj4gPiArCQl9DQo+
ID4gICAJfQ0KPiA+ICAgDQo+ID4gICAJR0VNX0JVR19PTihiaXQgPj0gQVJSQVlfU0laRShwbXUt
PmVuYWJsZV9jb3VudCkpOw0K
