Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1235FA3EA
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Oct 2022 21:05:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D13FC10E1EE;
	Mon, 10 Oct 2022 19:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69F6510E1EE
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Oct 2022 19:05:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665428749; x=1696964749;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=IytlJosgV7g6np+lWgxrP5O08BDJVoQxvX2+H9LeepQ=;
 b=mJtj6pyNcxmxvOtNNa/Kippo6uDPhHzeOIvqMsxpJdEGla8d5ibKnxW1
 yd3A2s5RldELr4Fd12ItXUTYa6vVYVoCcDH43TMaYot21zmCA68l+RsiS
 gAknGcN2oT3AxvDmGb4H96PAVODm0x5bgX+SfLjocfFn2CZDkOFfL5A+l
 ciUFM74M5RoBGi5Zrgojiee5I0tlkhEKGIi2Kp2+WPLWPf/tfz/BDwfoX
 aK4laJgu56UQlC50PH6x7uuIh6uKZQ3X+TIlpRWOtTcyp+kf4ZVLbNv29
 9hUdZSoZJmFoc4Y3KMi+Qwb51+1nius4aybLSB4JV/27SaCD5DpcX1jU1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="304300764"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="304300764"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2022 12:05:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="577157009"
X-IronPort-AV: E=Sophos;i="5.95,173,1661842800"; d="scan'208";a="577157009"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga003.jf.intel.com with ESMTP; 10 Oct 2022 12:05:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 10 Oct 2022 12:05:47 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 10 Oct 2022 12:05:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 10 Oct 2022 12:05:47 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 10 Oct 2022 12:05:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VKJUtqjedKED4nhAuVeo3c8AXQYdwGRbrBhs7z+ZLuC19JBKjZMNpyHZcrAMEwSXHLLDpiFSgugOXx6ZIziF4PaLLVKSQoOEzKcBza3rE/j+qld46Y0pso5LgQsp1BM2NKpCMCe4bK1+dXE9wqBF2F4/UhfHSr4dUOO+Rg/H/FPUcVcAzYZuuzAELiTqn+Y4ke+JPgyrl4dnuAgERP0FzdQYOpYrTHf2qNiCXR4Dg7NMk3kFyewoAn/ca7bMYPgwFTTrY2L74c1ZDlxyuQB6wALpmqPuafRF6qHfKUIib96nL5InvFm/f6hq+z0PaSxeTLvSFtbL0hnQNVgZCUvx0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IytlJosgV7g6np+lWgxrP5O08BDJVoQxvX2+H9LeepQ=;
 b=h1wXYXmzHaKxBKNwe3iDkR4oNsY3LApCSqGHLuHO1nraMmABfYFFhjgy0BN4XAzQ9A5/nZn0iG5la6ddTSTFAGHWxr/bHilY4xObCH3BIlxdkTMvbrxpWSm0PK3F71og42eCr2AWdxfBQLgHTlY0LZQXqQut+HJuC1FptSzcy2EiS+iD0BySkxiZiMCqd0ER2vDdjWitJrjP4Y2feZwWLteXTOmufdzR6XGzrCupjlt2MXV0BTY4IamWogWdoMEKIgHTL/AgLTnXVZ9kU26xHK0G98dhzwsBNS9JmclQrtFD8TFJ19PL5l2w25AGYyJXv8t6JxRW/JQeFNhT4/j9YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5751.namprd11.prod.outlook.com (2603:10b6:8:12::16) by
 PH7PR11MB5863.namprd11.prod.outlook.com (2603:10b6:510:135::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5676.34; Mon, 10 Oct
 2022 19:05:45 +0000
Received: from DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd]) by DM8PR11MB5751.namprd11.prod.outlook.com
 ([fe80::6f3a:c6aa:731c:d1fd%7]) with mapi id 15.20.5676.034; Mon, 10 Oct 2022
 19:05:45 +0000
From: "Teres Alexis, Alan Previn" <alan.previn.teres.alexis@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJtL2k5MTUvcHhwOiBQcmVw?=
 =?utf-8?Q?are_intel=5Fpxp_entry_points_for_MTL_(rev2)?=
Thread-Index: AQHY2bBQLMp+oSV3iEepX0i0yKgQuq4IA8gA
Date: Mon, 10 Oct 2022 19:05:45 +0000
Message-ID: <547d972f1d7c172619a1d7eec54d822f29ceffdf.camel@intel.com>
References: <20221006043834.606220-1-alan.previn.teres.alexis@intel.com>
 <166508039203.5836.6025903655820655008@emeril.freedesktop.org>
In-Reply-To: <166508039203.5836.6025903655820655008@emeril.freedesktop.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.44.1-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5751:EE_|PH7PR11MB5863:EE_
x-ms-office365-filtering-correlation-id: b8453ec4-d41d-4d6d-27f4-08daaaf26f55
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HuNZwNPpQoK10rcWQPtz1wFWvnWV0DeV/dLqu7F/PFiI/k+P5UTYEuv+wsCHMUaw47lVbo14Zfswcp58RtB8lZnB10JQA0jnP1OnMZhwarIhEAzZ5+sl9h+JKZzfKbMdYAbMf0FIPrJvRnd++0UrnuQrZT1pmiNEXAL/uPB6nP+UNqQKNw4PrXu2urP0OQHsa5x+CiVFIYxNSjkVYz8nwWB8+VOhY2uuv/wqSywy1Xr4n1p9W27Se31OS6m2vI4w2chXOgyv4LFkPI6mHDUYpCTNjw0QLV5ly9tyWN0YInvvOY4Vjgc70kCeu+UhTBZjP0vQp1dq/6KtMh17HiBUPwou2dmJ8TWybE1tf834AqCIDCFzhMnGku48YCB12gV/oocbWRV2l8pKVGcbSAsms46Siu2GKMjGQaPMbtdPoLTFqlvGbxldCSZU4L298GOl3CHf5IUkOM75uvMem9YRhvQj7ra2yKd3EG/uoEvQNVZ3337VT85yfekrUw2U0ClcEOJDArHH4BUlsvfPGRuyrvQpGyJ1fVg+hBMugQFF2y6Au1ycdQWjj+8Gu5KDhufFVlramkvYz4bDbSZfn3Y8O7aRSYTIVrSIw6CNY1G7xy8SYhZZvRdEwSuHxZmkLQ+xNceLbZDO+ay/qqLI13tNq81N9kEHRAINok0GGhydw8ncPlXvQvVbLT0AnE1BsdB+D6p9n/IL1evZnJ7SzaAg16b7fDOaWspOyOcWkg700CYAgtlgJNGFPmbfFcGYfUmDT4/MqtuyNezvUGLVw4qUr8GwFg7I50JMcxEfwOxOStc=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5751.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(346002)(376002)(136003)(39860400002)(451199015)(478600001)(82960400001)(122000001)(316002)(41300700001)(64756008)(76116006)(66476007)(66446008)(19627235002)(66946007)(6916009)(91956017)(66556008)(26005)(2616005)(38100700002)(186003)(2906002)(83380400001)(6512007)(8936002)(5660300002)(6486002)(38070700005)(86362001)(6506007)(71200400001)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RnA5dHZNZS9OYWJMMVk2QXU5KzVRcjdXMjU3bWt3Wnd5b01qcWN3bHVWbGdr?=
 =?utf-8?B?LzV0MlJBQmhrTVAyUjNUaU52R3c2SUhLZU5jWUM5aGNQSGhybm9QdTV4THJJ?=
 =?utf-8?B?dWRweXI4c1ZoYlFWdnBnTGNIaXFzRXFUQmpnRmN4Yk1paGlNckNYWkM1ank4?=
 =?utf-8?B?dHZ3SmFsTXJCM0RVS1JvVGJyUitBRi8ycVFkTmRBWThJeTJCVzRqd2oxejBP?=
 =?utf-8?B?NDNERHJPLzVYV2taWTVwRjZZc01Gd0RVb2huNGVma2JSVjhzRjRoTzRVc3B5?=
 =?utf-8?B?UFF3b2R1bmJ5WkdPK05qTjRmK0JZOWViWEdIQ0pnYjJhOTRlNlpHMUtxUTBn?=
 =?utf-8?B?WTZ5N00rT25tbDRqVzJMYkVseVd0OEliYVhIVmYxK1lRTTNQUTJIZUhKeWVM?=
 =?utf-8?B?bUN4Y0JKempKYjhmcmZ6YWR1MERyVGxNOTFheEdZNkhOdTVETk9tTTNNNmN3?=
 =?utf-8?B?bGg4Qno2YisvUHptT1cyRnk4N1JRdFhkSjNoVStiYmxGa0lJdDhmZHBFNy9E?=
 =?utf-8?B?OFNBMVhlS3dZS0VLQ01USnJWVjZQSklHRjdjWlQrdCtpdmRjTDlZZWNjZHQy?=
 =?utf-8?B?RFExR3NtMGVDSkxlaEEyQlhyNllHSnV1OEtpNEZ0MHJhOFBIUE9JUjB3a0Vr?=
 =?utf-8?B?dW5UQlk4Q3g3N2FNT3AzRXJ5QWt2eit5YUMwU1gxanJWMGdHbjZLTytYNm9Q?=
 =?utf-8?B?MVZ0amRhc2pqSXBlV3NNVUtQN3FyVGowNHpmdWtsb1pKRkhsRlJ6SnV4K2lt?=
 =?utf-8?B?WG5xZG0raU9ibFhlVldaQlpyVjQzd3dDalZheTMrQ2xMUXV5UXNyWUpYYmgr?=
 =?utf-8?B?VklMWFBPV2NZU1JNWStEN1llczcyZmc0NVdxWEo1d050RW5yZGplcEdoaVNx?=
 =?utf-8?B?Q0pJWUE5cFpLZXBBV1phQ0t3dGdlL0V5VGdKVFY4QVMwU3FOV0htYWovaGxK?=
 =?utf-8?B?VEVVK0xHMmRBMzY3QVpCaWZ3WnJ5QS9rL1hMSDM2M0Q5bmZyS2prL1d4UGw0?=
 =?utf-8?B?dWt5ek8xaXBsbitoUjdTWUlVLzA0Q29ybUt4ZGl1YU9BVkljODZJK0pNWm1o?=
 =?utf-8?B?TUdZL2VTVklYdVhWQndUc0xDaHRKdEEzdktIL2dsUGZiQ2ZBdTdYbHh6Zi9s?=
 =?utf-8?B?T3hjQUJnMmQ3UUpHUU1qbmYxU3pQZ2xnREc5OHpWbUpUUVJaRk8zMVVVSWRl?=
 =?utf-8?B?ZWlRazEwOGNqaWl5bVprK3Q5cFVpQXJ4ZU5idVFvWTEzNnUzbVE0ZEthbHg0?=
 =?utf-8?B?Ty9pcGlQTEdBaHJEbGp2SytmaDZ3WmE1VmxLUmczaHRaa2pob3BYdWUydWJZ?=
 =?utf-8?B?NytUd3dFKy9pcXlnbElncTRoUG9SbzRZcU9RYy80ZktldUoxV0Z4VzJVUTIy?=
 =?utf-8?B?YlRCbFdQT3RNQmNibUxKY210eWZobEs0SDhSS2JvNFNZWThpcUp0ZU5sMVJZ?=
 =?utf-8?B?b2FkcElYSkFDV0hZOGZ6d21HZU9HaVFpc3A3Z1VBY24yUDB3L0MrSnZuL25S?=
 =?utf-8?B?a2dwTjJVUHNpL1Bla01JTWZBVS9EVnhTdTlnaW4vMzFaT081ZHNJM1dzNjZR?=
 =?utf-8?B?R0Z2R2I1VVlpeTZhcnFJWjYvU2p5Y1BZVE5wVnRXazhmOWhHeHVEajlKUHJz?=
 =?utf-8?B?ODVKeXhyWTJJa2JySGFkbitVSmpXbzIwYXh1QUJlUzVIRU9NeFVlQ09IRFVO?=
 =?utf-8?B?NTlySEo2ejNaMU1xR3BwS0dLQUNzOFFaVnhKZVVWdTF4OCt0NVlyWElWN0NV?=
 =?utf-8?B?dHE5dFNCT3lsUWcwNGxRQjFZT2l4SC9JRjZ1ZG1COHhNam1uT0lzQ0pxRHF2?=
 =?utf-8?B?bmNxQ1ZTbTVyeit2ZTk5Um5XVzQ0bmVrN0xFOVJaaGlYYkRIazVBL3BoTkpF?=
 =?utf-8?B?d0xTaU9VeW42aFRsbVhoakxIakg3SXRGVE91OGVvYkZWUDA3QUpRRG5XVnhr?=
 =?utf-8?B?Qnh2cXhnM2YxVGc1blZIcFdiZzlnVi9sQzRaeG1WdGRZS0RaY3ZGb0d2N2ll?=
 =?utf-8?B?Q3hLeXF2QjhEQzgrZ2lvazdZMXU4ZVRla2tIcFhHbXk5NTROSzlHNHFsVEVl?=
 =?utf-8?B?ZFNkQkJrb0RLNWlDOWk3MW9zWXM2S25uYTFBOGwxNjRoR0J0TkVpSnlpb3dB?=
 =?utf-8?B?bFRFdzhRdFlzZ2E1K1ZBRXZMcUsxeDVTTEF6bmxFN25EeEdEaXJpU2tiWjU3?=
 =?utf-8?Q?UcREmc30xZgKQSw+azAdz+I=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <962B0EF7F836304A99F9E971621DF57D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5751.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8453ec4-d41d-4d6d-27f4-08daaaf26f55
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2022 19:05:45.2693 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: RWRTZAGLDO3npMb9FocshWDNBqMCEG67w4/o41Su1b3XQmlZGeU6EUoqnFY1avnRKm6wIaN6dt0khUhvbiCipRmCzE/XwhcdyvU/5yS3BeDqwcDbdkXYSdOABNSnslt9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB5863
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLklHVDogZmFpbHVyZSBmb3IgZHJt?=
 =?utf-8?q?/i915/pxp=3A_Prepare_intel=5Fpxp_entry_points_for_MTL_=28rev2?=
 =?utf-8?q?=29?=
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

SSBkb250IGJlbGlldmUgZWl0aGVyIG9mIHRoZXNlIGZhaWx1cmVzIGFyZSByZWxhdGVkIHRvIG15
IGNoYW5nZXMgYXMgSUNMIGFuZCBTS0wgZG9lc24ndCBzdXBwb3J0IFBYUCBhbmQgYWZ0ZXIgcmUt
DQpsb29raW5nIGF0IHRoZSBjaGFuZ2UgdG8gImludGVsX3B4cF9pc19lbmFibGVkIiwgSSBhbSBj
b25maWRlbnQgaXQgcmVtYWlucyBjb25zaXN0ZW50IHdpdGggcHJpb3IgY29kZSBpbiB0aGF0IGl0
IHdvdWxkDQpyZXR1cm4gRkFMU0UgZm9yIGFueSBIVyB3aXRob3V0IFBYUCBzdXBwb3J0IGFmdGVy
IGl0IGNoZWNrcyAicHhwLT5jZSIgbGlrZSBiZWZvcmUuDQouLi5hbGFuDQoNCg0KT24gVGh1LCAy
MDIyLTEwLTA2IGF0IDE4OjE5ICswMDAwLCBQYXRjaHdvcmsgd3JvdGU6DQo+IFBhdGNoIERldGFp
bHMNCj4gU2VyaWVzOmRybS9pOTE1L3B4cDogUHJlcGFyZSBpbnRlbF9weHAgZW50cnkgcG9pbnRz
IGZvciBNVEwNCj4gKHJldjIpVVJMOmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9z
ZXJpZXMvMTA5NDI5L1N0YXRlOmZhaWx1cmUNCj4gRGV0YWlsczpodHRwczovL2ludGVsLWdmeC1j
aS4wMS5vcmcvdHJlZS9kcm0tdGlwL1BhdGNod29ya18xMDk0Mjl2Mi9pbmRleC5odG1sDQo+IENJ
IEJ1ZyBMb2cgLSBjaGFuZ2VzIGZyb20gQ0lfRFJNXzEyMjIxX2Z1bGwgLT4gUGF0Y2h3b3JrXzEw
OTQyOXYyX2Z1bGxTdW1tYXJ5UG9zc2libGUgbmV3IGlzc3Vlcw0KPiBIZXJlIGFyZSB0aGUgdW5r
bm93biBjaGFuZ2VzIHRoYXQgbWF5IGhhdmUgYmVlbiBpbnRyb2R1Y2VkIGluIFBhdGNod29ya18x
MDk0Mjl2Ml9mdWxsOg0KPiBDSSBjaGFuZ2VzUG9zc2libGUgcmVncmVzc2lvbnMgKiBib290OnNo
YXJkLWljbGI6IChQQVNTLCBQQVNTLCBQQVNTLCBQQVNTLCBQQVNTLCBQQVNTLCBQQVNTLCBQQVNT
LCBQQVNTLCBQQVNTLCBQQVNTLCBQQVNTLCBQQVNTLCBQQVNTLCBQQVNTLCBQQVNTLA0KPiAgICBQ
QVNTLCBQQVNTLCBQQVNTLCBQQVNTLCBQQVNTLCBQQVNTLCBQQVNTLCBQQVNTLCBQQVNTKSAtPiAo
UEFTUywgUEFTUywgUEFTUywgUEFTUywgUEFTUywgUEFTUywgUEFTUywgUEFTUywgUEFTUywgUEFT
UywNCj4gICAgUEFTUywgUEFTUywgUEFTUywgUEFTUywgUEFTUywgUEFTUywgUEFTUywgUEFTUywg
UEFTUywgUEFTUywgRkFJTCwgUEFTUywgUEFTUywgUEFTUywgUEFTUykNCj4gSUdUIGNoYW5nZXNQ
b3NzaWJsZSByZWdyZXNzaW9ucyAqIGlndEBrbXNfc2VxdWVuY2VAcXVldWUtaWRsZUBlZHAtMS1w
aXBlLWI6c2hhcmQtc2tsOiBQQVNTIC0+IEZBSUwgKzEgc2ltaWxhciBpc3N1ZQ0KPiBTdXBwcmVz
c2VkDQoNCg==
