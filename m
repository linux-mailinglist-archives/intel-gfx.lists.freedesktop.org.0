Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 69CA15BE006
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Sep 2022 10:31:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA59910E157;
	Tue, 20 Sep 2022 08:31:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0149E10E157
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Sep 2022 08:31:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663662671; x=1695198671;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=aKO8eqE8+rX26EfuK65aZotiQAx6PpXvc8QZF5ITi1c=;
 b=hPHeZzBKoPwiDX55GLjodtJ+o7ICd9yowF9eEpBr5/CBkCV2SZXNEKW1
 8/X7wYhnRVhaTqYR5TEVs5i/MMlqpHTSFzpZHcxNjJJsvxRb7qvNQvEJ8
 eBDzkYTTvpQRGLAlfUvFw/PaTEL3WZnfrbv1+lzn2+Su6IWpX3VZ47f7t
 rHUr90jyipcrNA0o005ghjSuB1cIQ9RY+XehZCxkDw8BhMOfFbSnZJljk
 NIF4sNzixWrMdkJbGrMb7K+tWpCWZtGjDXAu/lrf80eqyQniBoEf75aKG
 UcnzyYgm0lTvVUVOj6cTothGqC/JeqobJw9EIaj6geNN0c46427xaBHly A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10475"; a="385921974"
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; d="scan'208";a="385921974"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Sep 2022 01:31:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,330,1654585200"; d="scan'208";a="618829339"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga002.jf.intel.com with ESMTP; 20 Sep 2022 01:31:10 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 01:31:09 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 20 Sep 2022 01:31:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 20 Sep 2022 01:31:09 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.103)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 20 Sep 2022 01:31:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H43A+GiH4bjtONvCy0juZSQTwz6RozlQ+iu9Q12XwZpS3eZFfagnbPQWgZ3dpg6DyC4wDoQqDHvs6mXKrTUIDcsN6h9LxHibCAfVS1w9Pht7qr5Hkp2FrjT9Brs8bfYybbAL+Cn8oHeIcjX91n2VKfNnbhkaD/Yj+eXJX8jCOKqHj9BmAIfmVxrOstlIGjvVH8OxbiZcXWm6DUOwWuttWkWUpwf0Jd8Q2x/Rm8q0VuXZnOF74Ntg6OLiiqBMQKlVLjozFDUM67xK25RIC8uy96GzzsXt18zvAgyFXdWSnYYhvgzRiEekf+NWZX6MXXdafbhRTugopLtx6ULJSXNaVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aKO8eqE8+rX26EfuK65aZotiQAx6PpXvc8QZF5ITi1c=;
 b=cluBNK6+OvTCPr22HJIyYD9DGflif565O/yqMpE/e0woa0nvExKkrh8JSGdmEBVHf46BJsuzpjEdKdWsLNAcJKItyGKdHdLOLFE39CYml6eod8JLEEmNCO6Hl7cn6HPsIgC8Q5r15B3sMUtXMloG50CCto5u9W4YokXAKs9qfKbZRYIi3oJZPRUWg/pKP/3BrrEn27jRmUJ9430EmXquieorUZ0tW1TQwXhg6enK/i8/mr15kzB+p/u+PJrWxfavT1WMg51a8IW3bmWcVKw6ZKIKPMYRayamBb3UdR+zBVhX55Wy/JyA1toOg1BeUixxkV7AH3WZ/33bdtyEsF3Ucw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 (2603:10b6:301:51::10) by DM6PR11MB4513.namprd11.prod.outlook.com
 (2603:10b6:5:2a2::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5654.14; Tue, 20 Sep
 2022 08:31:07 +0000
Received: from MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::549e:abb2:40dc:6591]) by MWHPR1101MB2157.namprd11.prod.outlook.com
 ([fe80::549e:abb2:40dc:6591%10]) with mapi id 15.20.5632.021; Tue, 20 Sep
 2022 08:31:07 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/fbc: Move flip_pending assignmnt
Thread-Index: AQHYhNO3TQ7gHuy/ZEeZh8H5MrYACK3ojNww
Date: Tue, 20 Sep 2022 08:31:06 +0000
Message-ID: <MWHPR1101MB215792ACF80EEB113C5E349BEF4C9@MWHPR1101MB2157.namprd11.prod.outlook.com>
References: <20220620182917.10765-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20220620182917.10765-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR1101MB2157:EE_|DM6PR11MB4513:EE_
x-ms-office365-filtering-correlation-id: 4bfeedaf-d929-471d-f7e4-08da9ae276a9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aJxod6HUoCLAVXRK63/i2OCG+9AbJUcsOro06eJ8MjkMnUJFRNpEWx+wku7BmRUPn0vXCeNAsZlYlBKw30ZaSuk93ERXqmQPzYDzbQJY2nvTCxEkRHswOyvMpsJCrR1CliBaDYh1nHHtURwWkBrdEpwJ98vx/8F6GvKKWVpW+REAH6xAnYesRv2dnTWUeAFGejHQzDACTKvJlubNoBzXsPXTr1PtkZuJ+YFcDtmUnY+EWaf70gJF2qrlh1NTAD32Jeuti0RBGKYok5tpuN2RFzSsLhOhHyzstPN8N2eqKR4cxnc/zXLVr7LEj7eGNqaTBp5UIpNOCWZEHHtlatjF/lecmcJlHUGl78V275vD52NOryz2k4UHOlAH6boXVaKuxvmaam15ZU/NR0J5b6NRq//kJmf7GGd3oduy3XJrIME324N52w6E37A8IMzCWH1u0nSvju7J2XPeF+7P3pTTMgxDyXAu30/NZty/uVYMgnsuYy71O5rFZ/hwRBijIPY2SCtpJs2XAqe4UebRVkVtpw25U47GL0hMDa3FFChIzpE7ZoexJ/b4jikj/fcGQln+faUW22U89Tb0icsWc0YoKXqsMZgZo0+1st9Oizb3DUUEruNSqFlD7IdZ1/VgOMEpEfLcQDTomqCDCz47f6284IOprCxeZ/Mb6/lkA/ayLjeWGJiVS6o7k3jJAVnD+KbTFMhj6B82Zpc90WiVuxp2Mfzf3tpNUytvTtHV3a9Mf7us4ZhEbn++xs4UIMSYvhhguDmdOM0n6nxtxj6skI0k9Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR1101MB2157.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(396003)(366004)(136003)(376002)(346002)(451199015)(7696005)(6506007)(53546011)(86362001)(41300700001)(8676002)(64756008)(66446008)(8936002)(26005)(52536014)(66476007)(38070700005)(66556008)(478600001)(33656002)(71200400001)(66946007)(76116006)(110136005)(55016003)(316002)(186003)(2906002)(66574015)(83380400001)(122000001)(5660300002)(9686003)(82960400001)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M2NZdTBER3lzVUpyNkE4cDd3NmIzQ1A4ZWtNc3p2WGJudE81ZEN6aHdkaXNl?=
 =?utf-8?B?OUtteVl1T01FWm1Yd2ZOQnRlekFKWFZCUzhVM1VoMnF0N3hvcU52TVdYZ0Jy?=
 =?utf-8?B?WjlKMGk1RmxBbDlDZndBSFJoWjUvdUR6cDhSUkRmdGZQbW9rRXk1TFIrK3Z0?=
 =?utf-8?B?enV3cHExUXpITGVBeVUreU5RWFRLQXkvaDlzMVJyTmh6Wk05S0tDSXhTMHFN?=
 =?utf-8?B?ZXZIUjdxelJ5REMzUHNqbk83SXRGWlFnTmVFUmh6TEIrekN2cC9zWkdJNnpz?=
 =?utf-8?B?MncrRGpFLzMyN2tVV1p5UVFoTmQxclk2OVZMaUxJRTFqUiszNWdkelRqRU93?=
 =?utf-8?B?V0RadW1XSVpMN0ZLNDhUQTBtQzFBL1VqM3RXamQxaXB5dzFCNVFiVWhOYzBM?=
 =?utf-8?B?bEVWT3YyV1owSS9pMEx4OFZHVkhPajg1RUhPSi9qSkp0Zm5aTDVINmNnNThy?=
 =?utf-8?B?N0NjOWdyUXdEendoWXRsRnkzNEx1RFNXeTBpU1RoeFQ5d2NFbHRiMEw2M2Zk?=
 =?utf-8?B?WlNSMlV5dFVVRnc1OXB5MW9rNDM0S1p0NndiejNsdHFWS0NURkRwVlh4SCt6?=
 =?utf-8?B?VG44VUpxdUdIZmJlUk8wcEVoWUtZTnc5cHBQM2VQNmJKRlQ5MmcvQk9PUVY5?=
 =?utf-8?B?RGNtQ29zWWVVTi84cDRoK3BzL1MzUzlxbENBa1dCNFIvTnliSFdEV1VIZjU1?=
 =?utf-8?B?TmRZZUtXbjgyaDk0a2JFeFFmVGpxcEpLbXZPb0twV1Vyb2ZQSHJvK1lsWHNZ?=
 =?utf-8?B?bWEzZWEvZU9MZy9yR3VOcUQwc0NXMVcrVkRMVzUwYkdtWkxrSTJiNFJrTGJv?=
 =?utf-8?B?eThBQ3pFSzRQQ2Q4YU9rejIvYVo5alVQYVBDVVZqQ1dZOExwdmwra2lGV2My?=
 =?utf-8?B?VUJqcmlhbDArYnhSbEhnWVBLdi9HVzBoNHRrU1BsU0JqczRuL2FQZGJBcVZ2?=
 =?utf-8?B?RHN6c1lrYTc4UnljREc2SGdzZ05leWYyaDlBQVpUbmQ3QkU4djVTLzVJTU5D?=
 =?utf-8?B?WVJpWENQVmJZSERNR3p6b2dYdXA2Z3hiZXFNWmFybmtaU0lOeVo2WG1HRW1s?=
 =?utf-8?B?YWZScFpTNlc3OUE2SEs3Ymhidm1jMHhGMHhhRUJLeFVYV0loV2FYRUJwVm4w?=
 =?utf-8?B?Q2F3T3JpYmFsc1VKVUxDdVpWY1ZJNzNoL1BINy9KVkN0VS96L1NiUWJQTFZP?=
 =?utf-8?B?V3hXSVNsL0NVbkd2R2UrUzNzZkZVRWJpeWZQQklpMncvc29JSEtodWRZUG9w?=
 =?utf-8?B?bkNnZC9wUnU4NUpITmhGN2RVdzc2SVlLTXRHcUIwSmxRUzZ2VTFVR3FETlV4?=
 =?utf-8?B?Sm1DVmpGTlpFbzV0Y1BuaHFzM1BzUzNCRnZ3dzlObCsyQ29OMkpmZGJPbVo4?=
 =?utf-8?B?REJtYTVEVURQOFZiQnloNUFZZ3F2K0E1Ly9FZ1RtVWN6WE90cUlSNkxRaXlh?=
 =?utf-8?B?T1QwYTlNUytzTFVkVG10VXEwUHVDLzBRd00rWThnMzVTR0ZmWHYwL1VyQUhW?=
 =?utf-8?B?blBEdk5mVktKNlB2U3FaZ3ZycTJEV0Q0c3QvOUd4NEJ4ZWgvWUdQYmt1VUtx?=
 =?utf-8?B?VEtjMWhCcURpTHlHMWRyYXIwUVkwNGNlK1lKQkNXMU9tOS9WQmFGUjNsb2VY?=
 =?utf-8?B?T1JQVFp3ZzhGS3g3QkdtT2lxdGlCTG5KZit6RmMzYzZXQUhDTHgxNkZ0WSt1?=
 =?utf-8?B?ZFo0MTl0akZnb1EyTndLVFh6SlhuT0hKYmF2RUQzZzV5R1UxdkdBUExIVSta?=
 =?utf-8?B?azFmVWNmTFJNNTJHbEVZbVRyL1RFSTN1b0h3QnE3cnRBNHM1WDlDQTVQVUpV?=
 =?utf-8?B?Q3BlQzR4M09kcEtCSDVHb080a2REd3ROU2VpQWxBWkxNa0d4bnFqcUZDN3Bm?=
 =?utf-8?B?RjlzOWRsZnc0Z3hXZWZlWHlab1ZZVHVvZ29yMUJERUVZMnAvNG51MUcwaXNX?=
 =?utf-8?B?SXh6SUszTEFHTmhTM0p5d0kwbEZTdDQ5UnVFaHVoZTFuYUlGcGFTc1ZlN21K?=
 =?utf-8?B?U1RvWks2VjdTUThkZnRIdXlVTVg3WEdPNFFhQzFwalVHbERNOWdvemZTRHRi?=
 =?utf-8?B?YjdybjJrWEtEKzM2MGEvcENVanVzb05GcnNQTHhQckpxcHVCQmFIS3EvaGdW?=
 =?utf-8?Q?1eMRCwq47f18cWUxdd3xyLbD/?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR1101MB2157.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4bfeedaf-d929-471d-f7e4-08da9ae276a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Sep 2022 08:31:06.9858 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mNPv/VgUeFzSA0MITXfbTKcCJz/PGtDFIpvrLxt4F7KbFgEO2Kv3zY0r2ZKN+7H1PplHKGYfBpKh1oOa94NiBg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4513
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/fbc: Move flip_pending
 assignmnt
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIFZpbGxlDQo+IFN5
cmphbGENCj4gU2VudDogTW9uZGF5LCBKdW5lIDIwLCAyMDIyIDk6MjkgUE0NCj4gVG86IGludGVs
LWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW0ludGVsLWdmeF0gW1BBVENI
IDEvMl0gZHJtL2k5MTUvZmJjOiBNb3ZlIGZsaXBfcGVuZGluZyBhc3NpZ25tbnQNCj4gDQo+IEZy
b206IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0K
PiBNb3ZlIHRoZSBmbGlwX3BlbmRpbmcgYXNzaWdubWVudCBpbnRvIF9faW50ZWxfZmJjX3Bvc3Rf
dXBkYXRlKCkgZnJvbQ0KPiBpbnRlbF9mYmNfcG9zdF91cGRhdGUoKS4gTm93IG1pcnJvcnMgdGhl
IHByZV91cGRhdGUoKSBzaWRlLg0KPiANCj4gVGhlIG9ubHkgcmVhc29uIHRoZSBhc3NpZ25tZW50
IHdhcyBpbiB0aGUgaGlnaGVyIGxldmVsIGZ1bmN0aW9uIGlzIHRoYXQgd2UgdXNlZA0KPiB0byBj
YWxsIF9faW50ZWxfZmJjX3Bvc3RfdXBkYXRlKCkgZnJvbSBlbHNld2hlcmUgYXMgd2VsbC4gVGhh
dCBnb3QgY2xlYW5lZCB1cCBpbg0KPiBjb21taXQgYjM5ZDJjNjIwMjQyICgiZHJtL2k5MTUvZmJj
Og0KPiBDYWxsIGludGVsX2ZiY19hY3RpdmF0ZSgpIGRpcmVjdGx5IGZyb20gZnJvbnRidWZmZXIg
Zmx1c2giKQ0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRl
bC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2ZiYy5jIHwgNiArKystLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlvbnMo
KyksIDMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZmJjLmMNCj4gaW5kZXggOGI4MDcyODRjZGUxLi43NzY2OWUwM2I5ZjcgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZmJjLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mYmMuYw0KPiBAQCAtMTI5Niw2ICsx
Mjk2LDggQEAgc3RhdGljIHZvaWQgX19pbnRlbF9mYmNfcG9zdF91cGRhdGUoc3RydWN0IGludGVs
X2ZiYw0KPiAqZmJjKQ0KPiANCj4gIAlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCAhbXV0ZXhfaXNf
bG9ja2VkKCZmYmMtPmxvY2spKTsNCj4gDQo+ICsJZmJjLT5mbGlwX3BlbmRpbmcgPSBmYWxzZTsN
Cj4gKw0KPiAgCWlmICghZmJjLT5idXN5X2JpdHMpDQo+ICAJCWludGVsX2ZiY19hY3RpdmF0ZShm
YmMpOw0KPiAgCWVsc2UNCj4gQEAgLTEzMTcsMTAgKzEzMTksOCBAQCB2b2lkIGludGVsX2ZiY19w
b3N0X3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gDQo+ICAJ
CW11dGV4X2xvY2soJmZiYy0+bG9jayk7DQo+IA0KPiAtCQlpZiAoZmJjLT5zdGF0ZS5wbGFuZSA9
PSBwbGFuZSkgew0KPiAtCQkJZmJjLT5mbGlwX3BlbmRpbmcgPSBmYWxzZTsNCj4gKwkJaWYgKGZi
Yy0+c3RhdGUucGxhbmUgPT0gcGxhbmUpDQo+ICAJCQlfX2ludGVsX2ZiY19wb3N0X3VwZGF0ZShm
YmMpOw0KPiAtCQl9DQo+IA0KPiAgCQltdXRleF91bmxvY2soJmZiYy0+bG9jayk7DQo+ICAJfQ0K
PiAtLQ0KPiAyLjM1LjENCg0K
