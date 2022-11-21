Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B658632CE7
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Nov 2022 20:21:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E231310E331;
	Mon, 21 Nov 2022 19:21:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3708C10E196
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Nov 2022 19:21:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669058467; x=1700594467;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=surKUasnWe/MbVlC1UEuwYiGPcj67s9s8Saqy0tiFGg=;
 b=etHZrdhEmkxmwdXcByEIXSfqfQzsE6rdQTgbb8+5Rut6xbzLrnlNsf0+
 4dCyoBTi8psJwdgKFRtGGaQ+fZGgM+CtfK6M6dEhXVOnyq+Wfkg7Rngg9
 czq1HZRHCp9xuUDAFGWZ812mFXAC7XwAMR//Fyaqap0k5JhGfotW32o2A
 RgCd4lEhm1YCMUEXvZFnVEozRvwygnETxGlgz34eYF0QFsCI60zrpqg2A
 wXKfOvyQKOqdILskkRNrX6MljGAeEsnzWZBjSslR1wObjoy324dZ+58ur
 dSFUVxDngrQ+BrD+WSafbjeIMo2uPMzA7579ZSXj+lxVgKXfgBl4bRCp9 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="315464893"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="315464893"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2022 11:21:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="783562528"
X-IronPort-AV: E=Sophos;i="5.96,182,1665471600"; d="scan'208";a="783562528"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga001.fm.intel.com with ESMTP; 21 Nov 2022 11:21:06 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 11:21:05 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 21 Nov 2022 11:21:05 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 21 Nov 2022 11:21:05 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 21 Nov 2022 11:21:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BbewmnSa/9xt+cZltfiUTs4YSOgC2/a8MA2CCX3lxTWJ+TK7BweIlBfqxxJclRZ3WLHGEp8vdlcXEdK8M8qvF/2GK3+Wm2bdhGyyF9PXtTvEr5Rrc4gwku7inFrAoS/uRt3h19brNecjXf6ev3LdvD1odm2Qp99enWyoBy6/dkMYgG4KvHHJ9FrQKjjv8qeWqelAsjZV5FMhxcRNdsgWtGIay+gYQ1BorKQ+r0DY3y9ZeyF5MXvtceD9Xm2/LTynlKLMTCF/Qf0SXlnQJW9ZYqj2QLDCpdcs9fIfe2/bFdg6ZZ3BraupbDjog9oC7k5YtoPwZUSFWCNW4L6WdZNuSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=surKUasnWe/MbVlC1UEuwYiGPcj67s9s8Saqy0tiFGg=;
 b=KJh/SLIvpRXTKUKpmuyFXChWNO5ZERcHlVTXFzAlpQA9fjF/hCCiPrNSgUFhOW1qTskojNj9fQUDjEZkbyi4h+wdddJu6Kbiwpiw1EvRjnEsNvxSI9GzhTpVALhhGPC7jAWZJUxEsrCKUdN/N0tYAlD2IFNP9mC1Uhpbc48fmXMKynra/zSIFTDYHbSNMARObhGBJ9aJeMXXYGKO8Lrk+nlaf5Z6fwG4+3FyeYqDWTl1XQ6DYxXdWm4tv6czDvmCn/QJ95ZNJY5jePFr26Wd8ofWBJw5bXbBZk0yeXwmA89tUIZeNEL2vOhGipOLG32LDFjqD1iHpYvSnl9Jjk0Y2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 BL1PR11MB5494.namprd11.prod.outlook.com (2603:10b6:208:31d::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5834.15; Mon, 21 Nov
 2022 19:21:03 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::bbc2:ab8e:b98:feaf%8]) with mapi id 15.20.5834.015; Mon, 21 Nov 2022
 19:21:03 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "justonli@chromium.org" <justonli@chromium.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 2/2] drm/i915/pxp: Trigger the global
 teardown for before suspending
Thread-Index: AQHY+uWN8SqFG03TA0eOKkcHNoHIi65Ju1GAgAAMXoA=
Date: Mon, 21 Nov 2022 19:21:03 +0000
Message-ID: <2f78d181d379f585b6977ec91222082092184097.camel@intel.com>
References: <20221118003631.1523764-1-alan.previn.teres.alexis@intel.com>
 <20221118003631.1523764-3-alan.previn.teres.alexis@intel.com>
 <ad22ed76ec1b7f9bc397df05977dfd655558aa8b.camel@chromium.org>
In-Reply-To: <ad22ed76ec1b7f9bc397df05977dfd655558aa8b.camel@chromium.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.4-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|BL1PR11MB5494:EE_
x-ms-office365-filtering-correlation-id: ffb538e9-9b17-4b5e-0d9f-08dacbf587dc
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: UrMcaqieuDrQhAibxKiu1tLYM+JccQx1HBQuvXx6YJEBwULtNivdotQdC9vNWD7BxeslfXC5P7BqhFBgclbW8+T561KxKI9zkyvYq9dPMquNxxnvywoRkAU55NnXZ0NICuL+NibK9+sHyIpjUOOhzMxjYGBX840I80oYdF+Eq4mx6VsogPcsp/vDBR/NcTHcQE0dJWMv4CkHnNesOLczUBzmiePwaECrGHeLxyPbEj/IKBjUHxjjg0cW6fwj3+pHNb3oF16kPMg0syWzvaC0JuJKAFr0u5PFn2jM8BdCJSPHl8QXaaw/j/u727nRpPEruEv8KSc8fCwNInezjbFj3zJWeaEOdDYRI7syKArVh8jVBz4OGxbs5yFthM4IAJJbIl6J9IvqVLy/6skYjGfP8rrQ2dNSITvMnjEuR8Ua/9JLdKtw4a6kE1unpBdvahVeXCFaac7nEmCw/orSZu4cquI2BRZMAPHG9d5c34f10cW/JIOLrpoZcNBQ/YFIc/R/9UI+Zn7RnRKVKozM2S3PY9xBXrhJDL5SeiMAJl9w/vg0N1+wFDK9AFes1V+E0tjsgwkXafT1yyA59357tuOv2pYCnVR2hdiAHLpficMbJDQ7m7E5bM0BGNUWQxzVR1VheaW4qv/+bD19WwdLNXWwFl3UC+qEnhKo5DZLSSTNPTSf5N+KnPP+qxfifRcA3kHSOyZbG63aNML11XBVEpNJTQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(376002)(396003)(136003)(346002)(451199015)(76116006)(66946007)(91956017)(66556008)(6512007)(8676002)(64756008)(66446008)(6506007)(26005)(66476007)(316002)(110136005)(41300700001)(2616005)(36756003)(71200400001)(478600001)(6486002)(38100700002)(82960400001)(4001150100001)(2906002)(122000001)(15650500001)(83380400001)(8936002)(186003)(5660300002)(38070700005)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aU5qU21HdFZCVFphVzN0SUJoQ1NJNlh3TEovdUNxMUhJM2FNbncxd21ybHpX?=
 =?utf-8?B?V1pTMFJwQzkrbUVEMmFsN1pQeEFvb0hiWmhzam81QXl3OFlUaWx0RkZKVlMr?=
 =?utf-8?B?UjNTeFNoRjJQVzBEUTRoMURJT1NKQmlOWU5FTUsyZDI5MFZ1dTRRMFh5OUlh?=
 =?utf-8?B?YjRZRTlLdytMNVpVSHE2TTIzMnBlb1Y4YlFKQUUxZnRmZ3NBWXR1SGV4dFRF?=
 =?utf-8?B?SWVENUJDTTltQStaNmF1VUtrM0NKSlpxVzBCKzNIYUdIWjZnQjlrcEhFVm9G?=
 =?utf-8?B?MTQyM1ZhbVUrV1hqVHNWK1k0Tm0wSXZ3V0Y2Zll3SE1SU3hPT1psN0xxcEUw?=
 =?utf-8?B?S2I3N3VLRG1vU2wyYTZISnVBT0hBcy9hZWZldjRMV0NFVXdaQjdyMEVnNVdw?=
 =?utf-8?B?RzBBWkJJV25PVFhUUlVLbHpzZHV5YmFSVWJtVGdHM1hHN1BycVNqbDZTbkgz?=
 =?utf-8?B?UDdzR3BJem5JSlBXYVBLWUozck9vMzM5M1J5MGR2Zk1heStUZVJxT0FUZjAx?=
 =?utf-8?B?ODZLWjN3VkYxNlBzYVo5dVYrdG12ZTBUcUEwTUZsZEpocHhVM0M2aVY1Q0hS?=
 =?utf-8?B?NlRrNTk1NzRNbmlTSUNHaExJNlNqTXJjOWVkczhnY1hHZ2hycDg5Tjc5b1pL?=
 =?utf-8?B?MXFKYmlLSkJ5S3ZYWUN2R0V1TUNJem9jQUdTTkx5T3NMUnZUTXl0d09TMk83?=
 =?utf-8?B?bUxCZFZHZFNINTFubWtJcnZFWkM1NWJoTktqM2xYdnB3RzgwRWdsK1RVZloz?=
 =?utf-8?B?K1JzRjlSOU5CRUpYYktoQUgyUVIxTGhQY0ZFdTNwdWo3ektpVlp0ZUo5eXZL?=
 =?utf-8?B?VVQ5YmM0SDJaYnU2eUtEMmUxQTk5VnpabVNHQ2tuVnpKYUZ0QkRSbFd4elN3?=
 =?utf-8?B?NDNHSVR3Q0lIWllwQ3dzL2VyRTYyOXp2a0NDb1FIKzJTbWJ5c2F6enpMQkpZ?=
 =?utf-8?B?NmpFOUtqRERLc094enNQa0M2YnRRdXQxWXgxMHlPYVJMV0ExaTNGZzRSV1BJ?=
 =?utf-8?B?UlEyRXZ1WGIvTlI4MWFLektZeWV4TFJVWmFZNHp5NEdDMVl1WmEzUjY0RU1x?=
 =?utf-8?B?S05Ra21uMFV3TDNaYWltQXlkdTNTYkJyV0Z4aGJacDhlQUtpS3V5QzVIekxL?=
 =?utf-8?B?TTBXTTJKZW5Ca0tMWmU2N1RtQ3JDSFVrdmw4WEt4Zm5BOU5DMTI0YjJ2YzRR?=
 =?utf-8?B?T05RWkF6Z1FrK2Ywd2p3Y0xiQjRyVGtvbGJjSCtIeTVNNHlUSjl5V3plT3E0?=
 =?utf-8?B?MitnS1VCblh6dG1PaXZkWlZNQTdrTDBlZkI5bG10cWI5V1B2aGFGMFJjOW0z?=
 =?utf-8?B?dThOTzdVb2c1MWZUQTE0MUJNWDFZcTgvRmpvZFZyaEp3Z0p5cDFJdDBjbksr?=
 =?utf-8?B?d09sbWQwWjVYZFRpd1J6SzM0Qy85MjNTN1NXaU9PdzZTSS9lekpyaUI0ekxM?=
 =?utf-8?B?eEZETmwxaTMrUnRnUVJGSkF6YzIxTFkxcVFPYmNDanV2UUw5YUswNEJaVFU2?=
 =?utf-8?B?Y2NKd2g0ZGx4b2VqdjZXdCttVm1pVHc0NHBPNmo2SStGRTZDemNPRUM0ZnhT?=
 =?utf-8?B?Qmx4ckJ1d2JFNnB2VzdGcE95VGF1WFllSFloOFRvRjBUZ01vdVhNSUtMWUJP?=
 =?utf-8?B?SFEzMm41S3BmMldxR2V3UGp2SXVkWlJDNE14UDRBNjUzU0N6VW5GQ3IvdjV6?=
 =?utf-8?B?eG8rTjJUOXlWQzRqR3NjMG5oaFJ2cGxvZ0srcjZ1Y3lhaVpPZGFhSnMvWFE0?=
 =?utf-8?B?NEgveVhYREo3OVNzRHYvQ0tpRFB5em9pbWFZSGN0OS91NnFzc1lRNmpoMDRv?=
 =?utf-8?B?ekUvTFRKMDdUNXQ4b2NEWlB4T2F6bTFoVFR4b05xMkZZNm5FZXdkRVRsRTJE?=
 =?utf-8?B?a3U5KzhFcjI1YzhYT294V3M1bXhaYzRpVkl6RGtxVVB4blFmMDU1N3JXeVhS?=
 =?utf-8?B?V2YwR0xMa0xldWxFYlVxY2h0bm5jTGRpZ01sMGFWcmhjSHBzVDV2WFlHa2VT?=
 =?utf-8?B?WkdyTmtvZHpEYks3eHNpbGtaYUNUdDhkSmZaOUN0WVJSY09nVXNqUHhTaENn?=
 =?utf-8?B?c0dPcGx3RDNmQ2N6a2N3dnh5cTJzTHBtM3l0Ym1haWF1Snpxbm0yeWZzUjRR?=
 =?utf-8?B?aWtXUlJXSzZMTlRQd0FhbWRqQTdURlJXSnUrSlc2MWY3SC9qRHNLUk16NThS?=
 =?utf-8?Q?r/TufAXxhPCoLfFrf+3i+/U=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <82ACDB14DE511345A424C29B7DEAF9F1@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ffb538e9-9b17-4b5e-0d9f-08dacbf587dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2022 19:21:03.2805 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9GTP/oSOM5+ea8bV9YHxIMmWTbUdQCGVKdF+0R7TWO9zrx9FgATn3M2mvW0FWzaU1/h2eFInub/VnD2MJJe8tSIWbbTRNwUa6BkZjbS6RscxH7+cuDqKW20s7ACPsvUJ
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5494
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/pxp: Trigger the global
 teardown for before suspending
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

DQoNCk9uIE1vbiwgMjAyMi0xMS0yMSBhdCAxMDozOSAtMDgwMCwgSnVzdG9uIExpIHdyb3RlOg0K
PiBPbiBUaHUsIDIwMjItMTEtMTcgYXQgMTY6MzYgLTA4MDAsIEFsYW4gUHJldmluIHdyb3RlOg0K
PiA+IEEgZHJpdmVyIGJ1ZyB3YXMgcmVjZW50bHkgZGlzY292ZXJlZCB3aGVyZSB0aGUgc2VjdXJp
dHkgZmlybXdhcmUgd2FzDQo+ID4gcmVjZWl2aW5nIGludGVybmFsIEhXIHNpZ25hbHMgaW5kaWNh
dGluZyB0aGF0IHNlc3Npb24ga2V5IGV4cGlyYXRpb25zDQo+ID4gaGFkIG9jY3VycmVkLiBBcmNo
aXRlY3R1cmFsbHksIHRoZSBmaXJtd2FyZSB3YXMgZXhwZWN0aW5nIGEgcmVzcG9uc2UNCj4gPiBm
cm9tIHRoZSBHdUMgdG8gYWNrbm93bGVkZ2UgdGhlIGV2ZW50IHdpdGggdGhlIGZpcm13YXJlIHNp
ZGUuDQo+ID4gSG93ZXZlciB0aGUgT1Mgd2FzIGluIGEgc3VzcGVuZGVkIHN0YXRlIGFuZCBHdUMg
aGFkIGJlZW4gcmVzZXQuDQo+ID4gSW50ZXJuYWwgc3BlY2lmaWNhdGlvbnMgYWN0dWFsbHkgcmVx
dWlyZWQgdGhlIGRyaXZlciB0byBlbnN1cmUNCj4gPiB0aGF0IGFsbCBhY3RpdmUgc2Vzc2lvbnMg
YmUgcHJvcGVybHkgY2xlYW5lZCB1cCBpbiBzdWNoIGNhc2VzIHdoZXJlDQo+ID4gdGhlIHN5c3Rl
bSBpcyBzdXNwZW5kZWQgYW5kIHRoZSBHdUMgcG90ZW50aWFsbHkgdW5hYmxlIHRvIHJlc3BvbmQu
DQo+ID4gDQo+ID4gVGhpcyBwYXRjaCBhZGRzIHRoZSBnbG9iYWwgdGVhcmRvd24gY29kZSBpbiBp
OTE1J3Mgc3VzcGVuZF9wcmVwYXJlDQo+ID4gY29kZSBwYXRoLg0KPiA+IA0KQWxhbjpbc25pcF0N
Cg0KPiA+ICt2b2lkIGludGVsX3B4cF9lbmQoc3RydWN0IGludGVsX3B4cCAqcHhwKQ0KPiA+ICt7
DQo+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSBweHBf
dG9fZ3QocHhwKS0+aTkxNTsNCj4gPiArwqDCoMKgwqDCoMKgwqBpbnRlbF93YWtlcmVmX3Qgd2Fr
ZXJlZjsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKCFpbnRlbF9weHBfaXNfZW5hYmxl
ZChweHApKQ0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47DQo+ID4g
Kw0KPiA+ICvCoMKgwqDCoMKgwqDCoHdha2VyZWYgPSBpbnRlbF9ydW50aW1lX3BtX2dldCgmaTkx
NS0+cnVudGltZV9wbSk7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoG11dGV4X2xvY2soJnB4
cC0+YXJiX211dGV4KTsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKF9fcHhwX2dsb2Jh
bF90ZWFyZG93bl9sb2NrZWQocHhwLCB0cnVlKSkNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgZHJtX2RiZygmKHB4cF90b19ndChweHApKS0+aTkxNS0+ZHJtLCAiUFhQIGVuZCB0
aW1lZA0KPiA+IG91dFxuIik7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoG11dGV4X3VubG9j
aygmcHhwLT5hcmJfbXV0ZXgpOw0KPiA+ICsNCj4gPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9weHBf
ZmluaV9odyhweHApOw0KPiANCj4gSXMgaW50ZWxfcHhwX3N1c3BlbmQoKSBzdGlsbCBuZWVkZWQg
dGhlbiBpZiB3ZSBhbHJlYWR5IGZpbmlfaHcoKSBoZXJlDQo+IGFuZCBtYXJrIGludmFsaWRhdGlv
biBpbiBpbnRlbF9weHBfdGVybWluYXRlKCk/DQo+IA0KDQpHb29kIGNhdGNoIC0gbG9va3MgbGlr
ZSB3ZSBtaWdodCBub3QgbmVlZCBpbnRlbF9weHBfc3VzcGVuZC4gQnV0IEknbGwgdmVyaWZ5IHRo
YXQgZm9yIHlvdS4NCkFsc28sIGxvb2tzIGxpa2UgaSBmb3Jnb3QgdG8gaW5jbHVkZSBhIG5vbi1D
T05GSUdfRFJNX0k5MTVfUFhQIHZlcnNpb24gb2YgaW50ZWxfcHhwX2VuZCB3aGljaCB3YXMgY2F1
c2luZyB0aGUgYnVpbGQNCmZhaWx1cmUuIFdpbGwgcmVzZW5kLg0KDQpCdHcsIHRoYW5rcyBmb3Ig
cmV2aWV3aW5nIHRoaXMgSnVzdG9uLCBpIGhhZCBjYydkIHlvdSBiZWNhdXNlIG9mIHRoZSBpbXBh
Y3QgdG8gc3VzcGVuZC1yZXN1bWUgZmxvd3MgYW5kIEkgYmVsaWV2ZSB5b3UNCmhhdmUgaGFkIHBy
aW9yIGV4cGVyaWVuY2UgZGVidWdnaW5nIGlzc3VlcyB3aXRoIHRoYXQgYW5kIHJ1bnRpbWUtc3Vz
cGVuZC9yZXN1bWUuIERvIHlvdSBhbnkgb3RoZXIgaXNzdWVzIHdpdGggdGhpcw0KY2hhbmdlPw0K
DQouLi5hbGFuDQo=
