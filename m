Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB3132F8B9
	for <lists+intel-gfx@lfdr.de>; Sat,  6 Mar 2021 08:16:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03F106E12E;
	Sat,  6 Mar 2021 07:16:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3272F6E12E
 for <intel-gfx@lists.freedesktop.org>; Sat,  6 Mar 2021 07:16:20 +0000 (UTC)
IronPort-SDR: 4rbTmn4Oa4zx5yQYdztJ76/EEiuUUGDfgjM1DwPlgg2GCiZv0c/YX2iL7ybTPXvs5lP0ub3lb9
 Mb+c3tJzz6nw==
X-IronPort-AV: E=McAfee;i="6000,8403,9914"; a="187839728"
X-IronPort-AV: E=Sophos;i="5.81,227,1610438400"; d="scan'208";a="187839728"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2021 23:16:18 -0800
IronPort-SDR: Gle6t9vVAsT0KCf4qRK6RoCfjjR6OuVMIyoZoVCzxBicCF2doXwWWu7Hq7uQfY7NX3HULqtwaE
 9Kddi+71C46A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,227,1610438400"; d="scan'208";a="429707424"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by fmsmga004.fm.intel.com with ESMTP; 05 Mar 2021 23:16:18 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 5 Mar 2021 23:16:18 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Fri, 5 Mar 2021 23:16:17 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Fri, 5 Mar 2021 23:16:17 -0800
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (104.47.38.57) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Fri, 5 Mar 2021 23:16:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gXRBF4qiL+TfbqDTwSwzopGK+ez6IT4LduR7RQHJQjd/PxiGDUkJxWR74HDoPRDrd3JTPfexpR939BXOqT5m4gHKZ1fnnDfIzwRxZzc89nijQkL/U4vLNvqfen8bbamP2xzxPRXH+vTHC9nBTf1sobebsdoI8t3VpfjSMT5JayTAkiBEtOAmYumu8rDi/C67cRenhpWVvTTB1pAI7sMjhT5ocLsfi22PKVCyW7TsMWYPskgkLpMnIGXftHNzsrqyhRVwOad/X7vrpZesZ1LQ0T3ioiXoeN1rKw2/WL/WVEc4bGhprDHFsUMfpsJw0QJGRtkbCOIvHdjga3pK9hdcaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QMEpL5uMgGEBYsHBAHmbr1TgxkgB4m7SD2QH4O+CJ8I=;
 b=BMLXFDMEgL094q86VDwrYymEx3s4XSyuOBQM01iLM1VGXc9tAMHl7ioPsTFkK/6haGKUvQKSPdRreMcbDcoAfJjgEbb8Z+/F0ilT41TB/J4rr50man1iBio+9Qjru0IeyjuLv0xHRW7O547jhpfQ2jkd1AfryFYqdzl6q7+YRKG9CGLCFI5p+qQmxQFxUkWReC6HI33ajyrhAt2X5mSmQ3PmLMrpELcGMvOfzwwMRc/Vz+aJa5cvBWPVIWSkveJX4fnpYnJI++x1zE0mQGvOpt027y3xFsryx34+G9KMgo8WiUTI6oFMAFfJ9RGe5jd7SKmPfLsGGOtfcy+gH383Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QMEpL5uMgGEBYsHBAHmbr1TgxkgB4m7SD2QH4O+CJ8I=;
 b=vc6Q5C4yu/XtPf25fa8kWXwbJeP4lNqQRVZQxktUxp4c6Yg7KSNyLVaheiddpV7L+mTAd0BnwUJYCqR9m6uYoE5YtT64W9BwJUR8EHmMv9oTcP0HRXi3z3u1p1qHRLRZyxhje9yB7uCMhgbhoN5ajDAUvosXdbWDfWzN+PCVh1o=
Received: from SA2PR11MB4969.namprd11.prod.outlook.com (2603:10b6:806:111::12)
 by SN6PR11MB3454.namprd11.prod.outlook.com (2603:10b6:805:c1::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3890.23; Sat, 6 Mar
 2021 07:16:08 +0000
Received: from SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119]) by SA2PR11MB4969.namprd11.prod.outlook.com
 ([fe80::781d:e956:8a67:f119%6]) with mapi id 15.20.3868.040; Sat, 6 Mar 2021
 07:16:08 +0000
From: "Chiou, Cooper" <cooper.chiou@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v3] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
Thread-Index: AQHXDy9TNUpQng5a8UOTNIkE1rTbjqpzjp4AgAAB8gCAACvUAIAA2R2AgACOaACAADGngIAAMJ3wgAAM94CAAP+lPw==
Date: Sat, 6 Mar 2021 07:16:08 +0000
Message-ID: <D9634BC4-3594-4CB5-8F38-553CC63D63E1@intel.com>
References: <20200916180745.627-1-cooper.chiou@intel.com>
 <20210302062700.6025-1-cooper.chiou@intel.com>
 <0c8ef2fb-34b0-98ea-12bb-fc300172799c@linux.intel.com>
 <161484956454.28586.15932692857365863465@build.alporthouse.com>
 <161485897632.28586.2630377954645968923@build.alporthouse.com>
 <161490560153.13701.1838349946598091390@build.alporthouse.com>
 <40dd702b-c71c-0b99-93e6-0e120ef7715d@linux.intel.com>
 <161494684568.15221.13792200139079395463@build.alporthouse.com>
 <SA2PR11MB49696180125900E3CCB090049D969@SA2PR11MB4969.namprd11.prod.outlook.com>,
 <194e43a3-2425-f5de-a8db-ad86bac19a66@linux.intel.com>
In-Reply-To: <194e43a3-2425-f5de-a8db-ad86bac19a66@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: chris-wilson.co.uk; dkim=none (message not signed)
 header.d=none;chris-wilson.co.uk; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [2402:7500:4d0:21d4:d999:2a9a:23c4:a12]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 1740f346-3f2c-4dd5-e1a9-08d8e06fb6dc
x-ms-traffictypediagnostic: SN6PR11MB3454:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB345412B1F5E10976B4FBF9D39D959@SN6PR11MB3454.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: qSSmKWHDI3bP0s75H4UA7boN5LqPDLDG3c/Zvm2yLGPkaf9smmFrIn6icr8uEZ6QMmY6RrAt2duLrb9T5Kfe/A/9erEv7wFZzzdqEEcdvBNPcxCC+NeIvIfkV3IjZLLMUzEfJvo/N4eHlRFU9AFMvyhWYuOymv0PZihpdk59j/EtZrY8b1hSitUSyxpYQxyzz7T50VrBcgvGcJsy/HnRQM1HDnjRVVSqbZBjDVn7vP0uI82llBg/CODIHJuXrpeEU6y4NLR1m4eEeJZ8Ipe9Org996wwVzga2tgJipX67Gu1IQ+l0QtFVmYp55BiR82kl0lxsYstqUQMQOmjjkyDF1eSi9I1+q6ExGfimDr6C9Zr6/V8oxpuoWmxHfauDEIar2i8FvgriCsTnnhXCBmtPlxTpRAX88JZiU3oH12S+vcofPOXojtWv26QK2wSOq9thmNYC0DxRFtzwBxpq/ywfAvRZ60cjcbBCNXNSlh0r1ieg5uMnIke6Cw3IbkE/8EiLEGImDwrxp/lzg4oDx/+Dy1qj8wHR3N/1grZXtTFLKpaWNuqXbESbzSBT2yp8m9dnTIUau0556bTdWPbWygBM0sNxnQVUX4EEGubQ0u+qZTVMtFYC9gX1Q+atX0zw50KfAsA7oKVwezrJcO5OhkmSw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA2PR11MB4969.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(6029001)(346002)(376002)(39860400002)(136003)(366004)(396003)(91956017)(6512007)(66946007)(36756003)(86362001)(54906003)(6916009)(478600001)(83380400001)(5660300002)(64756008)(4326008)(6486002)(33656002)(2906002)(53546011)(8936002)(66556008)(6506007)(8676002)(2616005)(186003)(66446008)(76116006)(316002)(4744005)(66476007)(71200400001)(213903007)(45980500001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?TGw4bkNlUmtPRy9TNnNJd3hWNGVqNzYyWTNscEY1NzV6aTEvalB5V24reHVs?=
 =?utf-8?B?QWV6ZTIvREJNaXhnMkdrTElyU01wd29lekt0aGJPSFVOeGhNOHVkYXVPZDRU?=
 =?utf-8?B?REhMWjhpa0xWWWpqc2ErLzdpV2xZb1QzV3VrRDFnUi95aEFIdTJPNzR1aTI2?=
 =?utf-8?B?TWluL01PbThoMHAvVU5kbStEamFjRlQ1UExIZHVTYzN1Vzd1N1pPQ0JMd2Ns?=
 =?utf-8?B?RWZ0ZExNSkJSZ0hQaGIrUDFTM3E5OEg4cnFWRnV5RDhYUTZiYzRjcHhsK21T?=
 =?utf-8?B?Z1h3OXlVTmZQU1RWMjFRL2Y5YXBWTTZ2SHFuSEg2VWMzYThPcUIyUmg1bkRE?=
 =?utf-8?B?UFMwcHNybUtZNW02aC9wS08vS0k1K1JSaThWb3drS2h4SFlHRHpRNElZZEZO?=
 =?utf-8?B?Z0l5WkZMa09UR3RWSlFzY0ZPOFRVMXU0STVjMDg1dkI3cGpaV2pYczVsbmRF?=
 =?utf-8?B?N3R2cHcrVUNwZWJZN3cxdWlyeDVDSEM2d2lQeWxVZ0k4REIxeG5vOFQ3MGdM?=
 =?utf-8?B?Y2x2bm4wU2x0RUU0QzJGN2R2bHkzSUUvaFVCQjdNb0QrNUtLVW1qRmRVaWJi?=
 =?utf-8?B?blk1QU5OeUFBMWtPbjdVdUE3TW5HNUZWZ3Irdy9uNTNuN3JyMlNvM2R0a3lS?=
 =?utf-8?B?cG9Mdkx1S1JKVmJhYkdFbDV3T1ZRMGVBZEh2bEcvYzRreUNrNlFCMlhRWHU5?=
 =?utf-8?B?V1dEb3BFc3c4bVBMM2ZiYTg4UW9ZZnJ5V1VGWE10aGx1Zm5GN0dwZVIwOVNh?=
 =?utf-8?B?c2FNaENGZHU5SDNoUDlyTTdpNEhBZFpHTEJyaWg0Q3hvVVhnWE42YzVRVWJM?=
 =?utf-8?B?UFZVTkVtcFpteHM0Nk9oS3lTYm5rVzFlMXd0eUpiOUhGclRkZ0M0UFRBZ0E4?=
 =?utf-8?B?cTIrc3FpL1kzSXhSRmNJWFcrTVRCMkVaTklnMUZ4RnlsaHBSMTdRK2dlR0E4?=
 =?utf-8?B?RnhHRTg0T09tVHg2R3FIeHlTWVJTNVNiYi9UOGtXR2JIbzhNUVpTNWkzMG5E?=
 =?utf-8?B?SkZpZy9VSVJIRkpzYUMyeDFNbmJwNC90d0ZtSm4yWHpiUk1NQ2FBclZpNG9x?=
 =?utf-8?B?V3I2TlIzV2drRGpVTCttL3pzSDM0dGJ1SUYwd2RRYWE2aExMSjhJMzV1K0N0?=
 =?utf-8?B?eVpLemwway9vcCt6L3A0YmF4VmxKMUgvZE1FNG9qVEpkeHNwOHovRGVaZmZF?=
 =?utf-8?B?UG1LSlRDMTZPYmU3VTJOZm1wbmNjN1cwYzg3a2x1dkRxYUdqR3FCT2RIUlNM?=
 =?utf-8?B?YVVxVUswRUEwY1pLK1VOQlpIODAvdy8rNzhJYWI3OEVURTV6NTlXNk5uYmhF?=
 =?utf-8?B?K3EyYmJXTFA1c0FZem9CZ0Z4OVA0N0UrQXJYMjQyczBtUk93amQ3blhlUnFn?=
 =?utf-8?B?M3RhVnlTR3hxMldEMVl6Y3d3SUU4S2tkMkFGWkYxTDg4S21vVXpDZS80RElJ?=
 =?utf-8?B?YVRUa1lhWFlWbE9HdVZBYWdMOGQyTWdybFRDRHJFYm1lTEVQUDRvd0FSa0FU?=
 =?utf-8?B?aG9FN0ZLRnZUZ3ZIemRtZzJlME00cGJpd1gzKytzNmhmVlZHMnU0MFBsc3dm?=
 =?utf-8?B?S1VYUHBhZTdocWgrUXkxa1JXTG5udWRPc2E4WFBOV3BvM0xwYlk1a08wOExB?=
 =?utf-8?B?TjkwdUVZeGFtWXV3Q21aNUhsQ25iQUU1NDFhaWpsbmZYNURlOEd5bHZDQWg2?=
 =?utf-8?B?cmV2eW0wL2tESkJLdnlwNjVrSU1HQmx4d2RXaU95ZkIvYWRwc2hpdVNvZ3pY?=
 =?utf-8?B?dGRkOExCY1E3YjA5S0JhbG53NmNkUXhXMm1xYUlnM3hzNGVkSGViQjFzWTVJ?=
 =?utf-8?B?ei94YkNlOEFCeHVYTFdwRmhwclFjTEJ5aUozMnNlVnRoUDdqaThUTnlIWEx5?=
 =?utf-8?Q?lweYH6rng43fV?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SA2PR11MB4969.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1740f346-3f2c-4dd5-e1a9-08d8e06fb6dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Mar 2021 07:16:08.5750 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: S0zAdE7Iur11wxbfWTlMtYOSLBVUsrj2jTK5nJUJXnkEspMRD3Lrmj4e23RrCNIqhPVaU9WC4yd/yrcwoawikw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB3454
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915: Enable
 WaProgramMgsrForCorrectSliceSpecificMmioReads for Gen9
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Chen,
 Rong A" <rong.a.chen@intel.com>, "Tseng, William" <william.tseng@intel.com>,
 Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SGkgUm9uZywNClBsZWFzZSBoZWxwIHRvIHRyaWdnZXIgM0QgcGVyZm9ybWFuY2UgdGVzdCBvbiBz
ZXZlcmFsIEdlbjkgQ0kgdGVzdCBib3hlcyB3aGljaCBkaWZmZXJlbnQgZnVzaW5nIHNrdSB3aXRo
L3dpdGhvdXQg4oCccGF0Y2ggdjXigJ0uIFRoYW5rcywNCg0KQmVzdCBSZWdhcmRzLA0KQ29vcGVy
DQoNCj4gT24gTWFyIDYsIDIwMjEsIGF0IDEyOjAxIEFNLCBUdnJ0a28gVXJzdWxpbiA8dHZydGtv
LnVyc3VsaW5AbGludXguaW50ZWwuY29tPiB3cm90ZToNCj4gDQo+IO+7vw0KPj4gT24gMDUvMDMv
MjAyMSAxNToyNCwgQ2hpb3UsIENvb3BlciB3cm90ZToNCj4+IEFmdGVyIHN3aXRjaGVkIHRvIGZm
cyBmcm9tIGZscyBpbiAicGF0Y2ggdjUiKGh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9y
Zy9zZXJpZXMvODE3NjQvI3JldjcpLCBub3cgQ0kgcmVzdWx0IGlzIFBBU1Mgbm8gcmVncmVzc2lv
biBpbiB3YV92ZXJpZnkgd2FybmluZy4NCj4+IEBDaGVuLCBSb25nDQo+PiBDb3VsZCB5b3UgcGxl
YXNlIHJ1biDigJxwaG9yb25peC10ZXN0LXN1aXRlLnN1cGVydHV4a2FydC4xMDI0eDc2OC5GdWxs
c2NyZWVuLlVsdGltYXRlLjEuR3JhblBhcmFkaXNvSXNsYW5kLmZyYW1lc19wZXJfc2Vjb25k4oCd
IHdpdGggdGhpcyBsYXRlc3QgcGF0Y2ggdjUgb24gdGVzdCBib3ggdG8gc2VlIGlmIGFueSBwZXJm
b3JtYW5jZSBpbXBhY3QuIA0KPiANCj4gV2UgbmVlZCB0ZXN0aW5nIG9uIG1vcmUgdGhhdCBvbmUg
Ym94IEknbSBhZnJhaWQuIE5lZWQgdG8gY292ZXIgZGlmZmVyZW50IGZ1c2luZyBjb25maWdzIG9m
IEdlbjkgd2l0aCBhbmQgd2l0aG91dCB0aGUgcGF0Y2guIEkgZG9uJ3QgaGF2ZSBhbnkgdXNlZnVs
IGlkZWFzIG9uIGhvdyB0byBkbyBpdCB0aG91Z2guIDooDQo+IA0KPiBSZWdhcmRzLA0KPiANCj4g
VHZydGtvDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpJ
bnRlbC1nZnggbWFpbGluZyBsaXN0CkludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcKaHR0
cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9pbnRlbC1nZngK
