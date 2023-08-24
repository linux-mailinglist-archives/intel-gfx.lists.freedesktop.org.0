Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 68730786723
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 07:26:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 254D210E056;
	Thu, 24 Aug 2023 05:26:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 20F4E10E056;
 Thu, 24 Aug 2023 05:26:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692854789; x=1724390789;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=bLycFMdIckiD+hi7zl3O4ZYyx5cmj0iek8TU6vcMG9w=;
 b=HYjTGdSrtSi1ym6HXUEiyLGB8LwdGYHVgpzGSBR9GX7bkEqPiPjT8HWG
 TwbHZs/Zs+0BmHxJOiGE2gSMJzSkN5qtgGGQyzEjhIL/Bd0p/oTqK0kkS
 CWf5BIT2MHRfKfOEpS8BJ/Y+A7P5pNtZazfA3vBHwqat/b+ivyl5vUMIO
 u54pEl6jiEGYRt0w23/WbC796uxMOnD+pbi8UyVaDw7PBByIEvu6g2HgR
 B8VorpijgJ09ugATPaPRxTUxZRtFis+ljciNFJ8Qws7z8ARCFAJDPsWxP
 cvZhSCc/Bt4Pa9XGNsprMhlbzY5uZjaxyvQ480sTucfCLACoj64VkCsuR Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="359330079"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="359330079"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 22:26:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="771984561"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="771984561"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga001.jf.intel.com with ESMTP; 23 Aug 2023 22:26:18 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 22:26:18 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 22:26:17 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 22:26:17 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 22:26:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nk4b9BsbNlK0fl4jSMmzBearsq6IQaMRBRg+AUNT9lHKHw3g/Jb8GqEvU68OT1XI6d1tRK341uYR+qAWo3q9O0DJhxyjeVKjCE3cPbpUniFIfk5F+2gjUFFV4ewUWLqpo6qT/oeTSfGQnFeGpNeXlqtBaNodT19EjDQLyvGatKCt0Qnn9G9QJPejnghKTmX3JV+XAfmDfsi+4eg36RroK/yUry/qDAMNA2S2kr2tDHEwq+c1yG/HYK6B54huPW/AiqWuA0qVQLTqJOjxUlzEfqOHWpsoCVHBCu52ZqslhEwvq2CmIf9wAK9yCUCs9NyudOT17dJe+Gi3Z2PldY4c6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bLycFMdIckiD+hi7zl3O4ZYyx5cmj0iek8TU6vcMG9w=;
 b=hXIIcBbzfkcOk9vch9VRA1d+jxltB5JAz3P9F5m31heymz+9iytGftOMcG26CqYioOtDXyKFKtqmA6Lq7USX7rj5SGr+WheNkLVUhn47ldiyFuNkQ+qd4kREwt0EwO+aNVR37YeoK1VXv3Q3aGD0zazgMaKocvYTNm9su2Y2q6cLOO6Zh6+TC/qP4vR4z45kN5vi4oWKlSrS86P/+7WLtv0cgNPB0Up5smhouK2AB8MMx0NX8CVaZQhmv2w3Yak6QIIShJUhK6cncnjI46Lce3+m6S2ckeyCi5N0dPBpvWFb44uCP000AxL8IbtGA5vm6I22gVcA3WNprnUQ8vx2hw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB6750.namprd11.prod.outlook.com (2603:10b6:806:266::21)
 by SJ2PR11MB7573.namprd11.prod.outlook.com (2603:10b6:a03:4d2::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Thu, 24 Aug
 2023 05:26:15 +0000
Received: from SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419]) by SN7PR11MB6750.namprd11.prod.outlook.com
 ([fe80::88b:6fa5:dca0:2419%7]) with mapi id 15.20.6699.020; Thu, 24 Aug 2023
 05:26:15 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH 28/42] drm/i915/xe2lpd: enable odd size and panning for
 planar yuv on xe2lpd
Thread-Index: AQHZ1eSWIF4vZI1exEOgVk9Hpc5S4a/44xNg
Date: Thu, 24 Aug 2023 05:26:15 +0000
Message-ID: <SN7PR11MB675049D06F0AAB4CFE7718E0E31DA@SN7PR11MB6750.namprd11.prod.outlook.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-29-lucas.demarchi@intel.com>
In-Reply-To: <20230823170740.1180212-29-lucas.demarchi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SN7PR11MB6750:EE_|SJ2PR11MB7573:EE_
x-ms-office365-filtering-correlation-id: 31a8b550-edaa-49f8-f41c-08dba462a2f9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cGx94xhroiES7vkdtAMAgQIxbefX28IB8e4ZxpvNqEkLR0Me5YW2fBJG6m5r7OTtS718d9qQrq4yqPsUEFo7bgFv1tgdBtSHQg+OfPTDgaA4f85iRISLhdHujrqaKWSJ1087zjQKUc6j9rEiOmqA36YV/t/FRjGl9F+oc/0LboT6gqzk3ilToAgK4M6LWUiYBJEu7yjV9Z9FmUOq6ivx2xtcKQcrdtL1KMsy6Ja+6q3FCWuDu9zbVFZ3cNLkFbQySI3Gi+pzHA2A3ApzDuXkwvarp/DR5hFOliw19gkuuYvl+oylAEBpvy4a2saMhnp24vlQB7k0imetaA0cEcB9iyPlOQfEF/6/mAsz9NZRribbvol+BSRkfV4JFrfVQtmpyNNFundvE/kJF/s7imaj0M4p2n/irwJCJl9ioCszK5n8A806KF2pD+mbhr5k0GjpnObZHuSRr2KFMv+20rxY/JuZ2QUclLyzlZU5zc2JokYeW+1egvSl5ya5Dqsb3Z19uMj4ssEtVsEmOIefcinbRopolmYNhimTqDWjWSnEIN9fSVIF12Bm4QRnKMaujHe7VZAWBqwAQcmh9Ba+UgWqR3AVnY8b5J/QXqJTEjnkhcplfPoilkBGAxCgcNAxz16F
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB6750.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(346002)(39860400002)(136003)(396003)(451199024)(1800799009)(186009)(76116006)(66946007)(64756008)(66476007)(66446008)(66556008)(110136005)(5660300002)(107886003)(41300700001)(316002)(2906002)(478600001)(52536014)(86362001)(450100002)(8936002)(4326008)(8676002)(122000001)(38070700005)(38100700002)(71200400001)(9686003)(6506007)(7696005)(82960400001)(33656002)(55016003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dkNOeVIvZUN3NEk1TzUzKzhxdVl0SFZqdVgwaE1qY2JaWEgwNlJzM2EwTlZE?=
 =?utf-8?B?MTJNMW1hWlIvSzJrZGdaYUJFSm5jblRXWFBWa0JCL1RIZnRuaFZ3U2FtL2tm?=
 =?utf-8?B?S3VBNjl4Si9KckhUOFo3M1BReXBJOWlKQUQyYWI2c3NzelRHV3Z2MnJrd2w2?=
 =?utf-8?B?anFRU1M3bU1pMFFZd2dCejVuck9mMGxWL1V1Zld1ZkJWTnc5N083RFdJb0pw?=
 =?utf-8?B?OUhUTXJoY3BJNURZQkxoVDNtTlNPNDI0SXVZMk8vK2lZRFVxYmk2dklvaTdr?=
 =?utf-8?B?clhaenJzd3VnUVdKTWtqUWEzK2FMWGRoazVuUStvc2xvMGJUSXdPYkZIVjEr?=
 =?utf-8?B?UGtkeEQyTjR1Wllha1J3UGZGeHN0TldyZzc2TkJFcDVqMm1nM0dHQW9hejdk?=
 =?utf-8?B?SkZDNFNiN1hvQktnT3JQZUZ2Ti81YlFMV0ZDUW9iWHBSRnBWeVM4bGR5M01C?=
 =?utf-8?B?bFJ4SlhMbFR6a1grSWVJa1VMQUVwV3lEWVlMNUxBbmt4NTQwLzVodUliSWhP?=
 =?utf-8?B?QnM2Y1NNdHQ5Y3ByWDZ3ZkFUK3dKUjkzL3NKZ0M2OG80VS9Sc0ZReXpJMFRh?=
 =?utf-8?B?bWtxYncvdnhVVnNid1kwZEFxWmZmZk96WnB2eGt2TGU3VlhRQjdQL3cxVGpY?=
 =?utf-8?B?YmFhUmtVRkZHQzVaQVJ6NkpIT2doeUM0blpXQmoyNXYwd2xzVlMxN2NES0R5?=
 =?utf-8?B?Q3hmYUVueUhETFhwV29qT1EvWEVWRXBhZHdCb21tOGp4SlJ1Mkxrc3crOWdz?=
 =?utf-8?B?TUZORjlVZEdVYVlaWmQvOVlYRzZNNlN0YmFjOW1UVnFjblkvWmIrTTM5OHhX?=
 =?utf-8?B?c0RZNDZydnNPOEtyMUxjRnZLS1hNV3NndTZ2U0x1ek5HdTZkL2VMa3BzemJK?=
 =?utf-8?B?OFI1Q2dmT0Y1WXRaMDRycXZlSXk4c1ZEYi81OFhBalBKOEZwLzljbmY2cUk0?=
 =?utf-8?B?TnpXcDZyaktaZzdhaWswWWcxN3RXbExNL0E4NVNwaitmdWJPY3VrdHpTOUJY?=
 =?utf-8?B?cWRVRUo2Y3NoZHhoTkxlR1cwblhHdFh5eUlCd1k2MXo1MjRPUkFXZHhkZmJF?=
 =?utf-8?B?OWwrbFZWdDVVMWRBT0U1aGc5YlZONThWenVicTNrbFhQUkR6R1RGRHRNOFpT?=
 =?utf-8?B?ckZuUjVtQzMwSFEzNnFCa2xhVExjblVRcnpPd3VGOUg5TnR3U28xRDhDQmNP?=
 =?utf-8?B?NEFuMEdndlpiMnBiSTY4MjM4c3VWUlQwZDJza2IzRWRieUZ5M1k3enVXb0NN?=
 =?utf-8?B?RVhJSWxWNmlib0lLRmx1N0JFQVlFYXRqSzFZMWVRY284TmFXQm10VFkwbXFt?=
 =?utf-8?B?S2FtMTVBdzkyeTBUdFRnWFJPR3JSb3BJMUZkeWRYNDFHQXVJWVB0N1NTUHM1?=
 =?utf-8?B?elJWZjU4eFBVZWo2L2podEtOZk9GcDNrdFhXMmV3ME5HSHdzYThmZ2dIcTJu?=
 =?utf-8?B?OWVCVm0zNFBTYlJFYUxuWXoxUHJZdnBnYWZMdGJadVQrbFRNNjB4bTBLdnN5?=
 =?utf-8?B?bjRSV3V4YmJJZ0pZM0kyQWlzOCsxYkNJU0dQNjYxWjlUM3JxRUZySTAvRTlk?=
 =?utf-8?B?MUJ6OFJqbjcxTDZ6azNkZVZUdFI3RzR0cnAvd3RZNGlFenB3VXRBUE9yeU53?=
 =?utf-8?B?T0pSelZwNjlCSHhsWHJEUm5zNk9EeVN2L1J1Tm9tM05mUmR5dXFjS3A0bldj?=
 =?utf-8?B?d1NPNTVaWCt6ZVlHS1FLcVhuanRock0rcktrU3hWeW1SaHcyd2xtb3hBTDlJ?=
 =?utf-8?B?Z3VhMTFiTlhWTE9kUlNSSDJkWXdZUWx0RGQzQndWMWFQTzJkajdmNHRjczdC?=
 =?utf-8?B?Sk1rTWNIRTgyQ1U3ZnhQUlhrVFpYWTljVGxEQ01keWlOeFRTQmVzUXl1UGN3?=
 =?utf-8?B?VVBHSlFFaGVzYnFObjNJVWtTOEVBVHZEYzQ5UGdZdkQ4aHpiR2t0eWFKcGNa?=
 =?utf-8?B?dkRldW5BWkNjSG5vcFM0dGlwbWQ5Y2tXZC90N2pZOHNKN0VnV1orbVNLR2py?=
 =?utf-8?B?QW5mTUhpbitJbFNmT1JsN2JvbTdlNmZUMHBmNDA2MzZZL1ZOQkkwMzB2clF1?=
 =?utf-8?B?d3cvMCtDWjlRLzIrcTNFYU1wSHE2dWtKN2J1bzZKS2hDNmRwTjVCKzk0Zmd0?=
 =?utf-8?Q?gRDz6myPTRPNJS+vsVUy/gA4T?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB6750.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 31a8b550-edaa-49f8-f41c-08dba462a2f9
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 05:26:15.0591 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Aezp+wS/NjNzfuU8udQ2KxiEAXzMY805+2zaUdVvZHT8+hMntL77+9I2AO4J3hY21pC7oeSDJXfYCmS69iHiiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7573
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 28/42] drm/i915/xe2lpd: enable odd size and
 panning for planar yuv on xe2lpd
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
Cc: "Heikkila, Juha-pekka" <juha-pekka.heikkila@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiBTdWJqZWN0OiBbUEFUQ0ggMjgvNDJdIGRybS9pOTE1L3hlMmxwZDogZW5hYmxlIG9kZCBzaXpl
IGFuZCBwYW5uaW5nIGZvcg0KPiBwbGFuYXIgeXV2IG9uIHhlMmxwZA0KPiANCj4gRnJvbTogSnVo
YS1QZWtrYSBIZWlra2lsw6QgPGp1aGEtcGVra2EuaGVpa2tpbGFAaW50ZWwuY29tPg0KPiANCj4g
RW5hYmxlIG9kZCBzaXplIGFuZCBwYW5uaW5nIGZvciBwbGFuYXIgeXV2IGZvcm1hdHMuDQo+IA0K
PiBDYzogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNpZ25lZC1v
ZmYtYnk6IEp1aGEtUGVra2EgSGVpa2tpbMOkIDxqdWhhLXBla2thLmhlaWtraWxhQGludGVsLmNv
bT4NCj4gU2lnbmVkLW9mZi1ieTogTHVjYXMgRGUgTWFyY2hpIDxsdWNhcy5kZW1hcmNoaUBpbnRl
bC5jb20+DQpNYXliZSBhZGQgdGhlIEJzcGVjLyBIU0QgcmVmZXJlbmNlIGluIGhlcmUgb3RoZXJ3
aXNlDQpMR1RNDQoNClJldmlld2VkLWJ5OiBTdXJhaiBLYW5kcGFsIDxzdXJhai5rYW5kcGFsQGlu
dGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0
b21pY19wbGFuZS5jIHwgOCArKysrKysrKw0KPiAgMSBmaWxlIGNoYW5nZWQsIDggaW5zZXJ0aW9u
cygrKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljX3BsYW5lLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2F0b21pY19wbGFuZS5jDQo+IGluZGV4IGZiMTNmMGJiOGM1Mi4uZGE2ZWU3ZjA2NzVhIDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFu
ZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3Bs
YW5lLmMNCj4gQEAgLTk4Niw2ICs5ODYsMTQgQEAgaW50IGludGVsX3BsYW5lX2NoZWNrX3NyY19j
b29yZGluYXRlcyhzdHJ1Y3QNCj4gaW50ZWxfcGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlKQ0KPiAg
CWlmIChmYi0+Zm9ybWF0LT5mb3JtYXQgPT0gRFJNX0ZPUk1BVF9SR0I1NjUgJiYgcm90YXRlZCkg
ew0KPiAgCQloc3ViID0gMjsNCj4gIAkJdnN1YiA9IDI7DQo+ICsJfSBlbHNlIGlmIChESVNQTEFZ
X1ZFUihpOTE1KSA+PSAyMCAmJg0KPiArCQlpbnRlbF9mb3JtYXRfaW5mb19pc195dXZfc2VtaXBs
YW5hcihmYi0+Zm9ybWF0LCBmYi0NCj4gPm1vZGlmaWVyKSkgew0KPiArCQkvKg0KPiArCQkgKiBU
aGlzIGFsbG93IE5WMTIgYW5kIFAweHggZm9ybWF0cyB0byBoYXZlIG9kZCBzaXplIGFuZC9vcg0K
PiBvZGQNCj4gKwkJICogc291cmNlIGNvb3JkaW5hdGVzIG9uIERJU1BMQVlfVkVSKGk5MTUpID49
IDIwDQo+ICsJCSAqLw0KPiArCQloc3ViID0gMTsNCj4gKwkJdnN1YiA9IDE7DQo+ICAJfSBlbHNl
IHsNCj4gIAkJaHN1YiA9IGZiLT5mb3JtYXQtPmhzdWI7DQo+ICAJCXZzdWIgPSBmYi0+Zm9ybWF0
LT52c3ViOw0KPiAtLQ0KPiAyLjQwLjENCg0K
