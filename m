Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFE264C305
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Dec 2022 05:06:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B51110E215;
	Wed, 14 Dec 2022 04:05:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 31B0010E215
 for <intel-gfx@lists.freedesktop.org>; Wed, 14 Dec 2022 04:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670990748; x=1702526748;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=r5IljRIbIW+1kMWTb6LDNyzyCR9VKtVv5EP4a67pF58=;
 b=Ei/NMtA39GgKvZRX63/4LkAggQa0T2DH6jj6s2T74jJfgmYcVRiHyWZ0
 vh78/XleXwY06zG5wj1GSE5tstdiFWNfBQWL0Uux+17uEv21TwKY5gm3l
 5jcWtTfbmnCd8oGYACpNYIz3PewdVDXgZZjP7mHE3cFSpRmGkpcftGNRF
 t8M8CRrsE33axKQ7nP2Bqe0Nm5VUukLSGcLhfma9YxlOvLb6Am78UaGqV
 KnUN7wbNMbEyKONMXIufaq0swJNpgF2i95sgnIvnDUAPYSI/Mfy72TqZd
 oL4mUCyy7et9dTbtUhigKFlDan8GKRE7aRwWnI0eSRJM7wZmwbTRT+6uN Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="305944806"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="305944806"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Dec 2022 20:05:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10560"; a="642366687"
X-IronPort-AV: E=Sophos;i="5.96,243,1665471600"; d="scan'208";a="642366687"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga007.jf.intel.com with ESMTP; 13 Dec 2022 20:05:47 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 20:05:47 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 13 Dec 2022 20:05:46 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 13 Dec 2022 20:05:46 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 13 Dec 2022 20:05:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ThpnADLoGrO3Jmo8OZVsn0Qw6bWMCAM7oWhE0aJkrPnLg4O0LiZWE8RJ9NCTgLB9m5O4MhJTaUvmuGm1kM1WbF9FB5eNypzZy3e/QO2k5sScoEUThOsiPfxjHM2d0UJar50rf8pHpyjqzczZVLzxIUlEbEelL4Hvf5XXLat/4nOO/nYY3sKMLZ+WdU1ObQXxb8mxQzOa6En6mhCkM7cxu1Lw+ftpssRu9jvRefdh7VfGUQPkuyIe/OpIPlHXmv7i3HpC9hM3xV8/6uyjD2S5lQrZjZ2+Iwl9lnfhGhPXZevMToXdrAlJhQuCrQJ+02AdJBUgJvUGCRCN9qWHLJGdrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r5IljRIbIW+1kMWTb6LDNyzyCR9VKtVv5EP4a67pF58=;
 b=SzPA1rlxVpy908rzaPzA9lKki/Q+gN8n+RbH2+yhI50zh7l4OduX0sN2mL8opU4NW9T1IJhfV7TA7eYi39C7a6zTdaBQ5OjgvqeYZUYtaNQsldwsS/GdP4uNmqrFM44R9BVRGhCuPQ0OPxDSrVY54s2/UagWUiSCl9F4Koy6BXcskUgxuJkwYzjfOv8kDmHHASXTSEAvXDijUTBTBVUQjXeF3RGxGZfR1gaZiwKXGyVVEc3Kk9x3Br6N+yOD2P2KoLvMKPHriKbuyieyvNfjz7QfM0PaG9dABse7KUP3//BX0PO769n+cp4r1/lXS8nH8wfeGjZNuyIpTM8GKQpIAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3170.namprd11.prod.outlook.com (2603:10b6:208:64::10)
 by CO1PR11MB4964.namprd11.prod.outlook.com (2603:10b6:303:9e::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.19; Wed, 14 Dec
 2022 04:05:44 +0000
Received: from BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::8189:b5f5:4397:3530]) by BL0PR11MB3170.namprd11.prod.outlook.com
 ([fe80::8189:b5f5:4397:3530%6]) with mapi id 15.20.5880.019; Wed, 14 Dec 2022
 04:05:44 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 5/7] drm/i915/vblank: use intel_de_read()
Thread-Index: AQHZDjZThLXRLwkCzUO0A7uG7Zfdga5sxhgA
Date: Wed, 14 Dec 2022 04:05:44 +0000
Message-ID: <BL0PR11MB317010450C2C8FE0DFA3ABA8BAE09@BL0PR11MB3170.namprd11.prod.outlook.com>
References: <cover.1670855299.git.jani.nikula@intel.com>
 <8bfde2e1fce2e78d5b868290bc6ee62d4ff516fa.1670855299.git.jani.nikula@intel.com>
In-Reply-To: <8bfde2e1fce2e78d5b868290bc6ee62d4ff516fa.1670855299.git.jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3170:EE_|CO1PR11MB4964:EE_
x-ms-office365-filtering-correlation-id: 326d4a22-509f-4adc-f526-08dadd887947
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MlDFD3ODNxjEE0mTo0PuGMlt5I6ahyvwM4ZFJ0CU2dfckIqXqhcScxJEPIKsIr85q5fDM1QsmM6ihnX5X25klA8Fby4zxV/sY9Hqzm1zH4ZJKSg8CfpqXg7iArZ2ZZRZljffYcG5B9X/OcCuhcMVpHPPKo5he7rz9NakdHN/DaZyoi+Hz1U5PaJJ+rNkfX2RhPSQqHABD4VsXaF1TjNlVn18Cm8e4hjPTzFFWY5I/Jklg0QLqy5RxtztLM0uzmdGO80XwK58lBru9swO8/r0AuM9pVUHluK5UmSSyCfTA2zPFvFHm//Kg7QtRYDDm027lbYF4Wr4dzpfSf+zDcJ2kku7KOQ+InQOWezyEV+fnZc7wSS3pRSk4o5CbmYBe3dfLI3cjHs+sT4S30cQmo2FG9vHQ04mNLANDF9DX3hWi3KaPPvFhcX3oXg/pgZItUUHUK9v80IkxIbPXaPLxUKq67NtkBUrurGOmhYv7wOCKBbmC80ZSSa8aPZsEl2tYLdPWN/kbcmvtUdNO2LG4V3nJJtpHoWQD9NcrW9/fPdo3Z7x1dUiVs51LWwj1zTEDewYHD/dgLMmGrCPkQ6Tki2HPB/vwzbJP3tYchs5TLFpU+2gXjneq9Um+egohz+re3QYDug/dhbbKWykQYM6Gne4fidur8GX7KB6rVoEzd4e+cVg46w1HkpVxBT11o1uGPXMiEBoQILDM8BwxgQivGnBLg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3170.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(396003)(39860400002)(366004)(136003)(346002)(451199015)(186003)(38100700002)(26005)(478600001)(8936002)(83380400001)(76116006)(82960400001)(4326008)(66556008)(52536014)(66574015)(9686003)(7696005)(41300700001)(6506007)(66446008)(64756008)(86362001)(5660300002)(53546011)(38070700005)(71200400001)(66476007)(55236004)(66946007)(122000001)(110136005)(2906002)(33656002)(8676002)(316002)(107886003)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Vis2RmdTWUxWYVhSMThXYTZzSzBIcEJPMGszaER3TVJRd0tvc2VYUGRJbDAr?=
 =?utf-8?B?T3pIRzQ3NitSeWx4eFZpM0Q0dkhKVzR6Qkg0OGJXTkVPeXU5VFRNMG9CMGc4?=
 =?utf-8?B?Ympqc2FNTDNwSmVMdkk2UWZZejROZlU1dWhOS28vSWdaOTBzSm9DRE15bGJB?=
 =?utf-8?B?YnF6bjBkVzRncVhheEZmcUFtS0l4WmlzeFpzUU1CQWZIYUtBZ21YZk4ySGlh?=
 =?utf-8?B?WUZYdUY2SDZOUDVScWsvNjZPNjFraVFVeGlPVW5OVHNqeDhYQTdScWNCYlJ4?=
 =?utf-8?B?QlVNRzlGaVF5STFqdG1JK2FSd21BOVM2bXUzRVNzdDd0Smo2YmprUmNZVE9F?=
 =?utf-8?B?WEo0d0U4TUlUTWRaWXFuVThqelJtT2JYcFZ1Ukg0NWMzTUZYd1JsZmdtS0l0?=
 =?utf-8?B?QU1PdmlNZkJJRHZ4ck81MzBGQ3NINmdEcWJvUFlsUVBzQ29yMjJ5TS9XM2Rk?=
 =?utf-8?B?TVZ6K2dDYlBrNUUxZVk3dHVyRmJjTXJxK1NKRDg0Z3ZzSmh1YllQeTdUOWRJ?=
 =?utf-8?B?UlplOU1tdWdVVkdnNldPOXo2UnZEYU54VnBkNkdhYVNLSFB0Vm1GcWduYWxk?=
 =?utf-8?B?NHRmNERkRG5zc2FkMm5GUXhES0cyS0hwSTloQVZ0ZDZ0TlU4OERad242Y09v?=
 =?utf-8?B?SUdTSHF1bDUxcVliYTJid1l6cXAwTG9RcXFSUXlPdDY0dnJkalFKZ1BEMTIw?=
 =?utf-8?B?SDd0MjM0TU1Lay96cEVhcWExelY4YjI1eTZzNmhvQzhheUlrSEhESTVFWGdQ?=
 =?utf-8?B?NlhuUEd2dlRmTG1wNG9vOFczNG1KVnFoRkxQY1M3cHk3UythellPZTVFVGdO?=
 =?utf-8?B?Q041ZVVDZm56QStLc3VITFM5MzFGbkJwYmMzY0I1OEdWYmtDK2dLbEhITmZ0?=
 =?utf-8?B?Ylp0djQwQmFpUURzQm9SaE11RlI2NlJQamZQWkdhUHc2M0MvTjF5NXJzT0Nr?=
 =?utf-8?B?K2RzUWVsQ2t6bHNZL2lNY2ppajNtVUttZGhVVEFWZ1hidjRqczBLVTBCNmJL?=
 =?utf-8?B?dUVNQUZON20xU055K00wSTZjSUZ1c08ybmhiZ1daUVdSLzYwbVR5dTZCYVZH?=
 =?utf-8?B?YzBqS00yb2xuUGliU0IrS1NTOXZGaDBIUGc2UlljSW9FSzB0WSt6VlJMdmNh?=
 =?utf-8?B?bkpOZVI2dC90aTFBOHlmOUdhNjlwcyswVVlqNHhvc3hoek0zQ1NGS2VhK1lO?=
 =?utf-8?B?QjNpYkFObXF4RVEybDBxZXNTbmNaTFdQSVFBRmpOeW9YTXZDRm1mYkpHVnRv?=
 =?utf-8?B?S01rUjhxQmRlcE8xdjQzaCtoTVFyeGUwRjUzVGFpVEFFNlJnMnFKbGZ1RVBm?=
 =?utf-8?B?ck9GMlR6VjBLU01hcWZWTDlEL08rNGdWbVBGOGlOaEdPVGprazh4eE5rYmI3?=
 =?utf-8?B?QkxMZlNjZFpVU3RBbzNNMUdGYkFYTTZlb1VlNVpkUjQ0dmZ3M05MWW56Zm5B?=
 =?utf-8?B?UjY0aUM2ZHlqWlFhT2ltdVRPWVFKTmtPOHVDa0VGYlpOazRYdXlWdUdPZkRi?=
 =?utf-8?B?MW1LT1R1L1VCeUI4ZnVUMlZnSlBOTlRsU1BMTDN6NXYwM2gxNTZrVnZvTlAw?=
 =?utf-8?B?WXVSbWtBVFM3VkN5STVtRzl2Uk04MXpkYmVTWjBZOEJqU1RSRnRjV0J4VWRU?=
 =?utf-8?B?VHBYZzMzZno5UEJJclZScERuanhkcXVHTnBaYUNxcHRSWkNySCtPbEZWeXl2?=
 =?utf-8?B?QzFiU0RQbjV4OTJnT2d0MURJOFRySVozWCtTZUduSFFEcTJQdmFYbzlmYnNR?=
 =?utf-8?B?WENuMzdsR2hGVGpZWm1MY1JyMTFjVi8xKzczUTk2bk1LQjdEMjdUTGlCQUlp?=
 =?utf-8?B?YkNXSXF5aVUxVHlzazloeTNKb1c1QWt4cHhiL3lteWZDd2Q2cUJFZ3duN0k2?=
 =?utf-8?B?djU3bTFuMHE2cjVkTUg1UWMyVWJTeFhwU1NxTEdGd0hMV3AyY1lVWmFWSWlZ?=
 =?utf-8?B?MG1ud1BPdS8rcUMrcVc2SGh1U2hlNXI0dmtzWkxadDNUL1pIL3VCbS9CTEFS?=
 =?utf-8?B?T1BHcnVtQldWRlNJTTJ2SkpzU2FkamFCRTFLLzJYSHd3N3RUQjlQbVBYYjQv?=
 =?utf-8?B?UGNqUS9uK1BjZWFtWmIxRW5pV0tjYk9QK21sRzlEZFAxR0E0SlJ5VTJ3YTB2?=
 =?utf-8?Q?GMr73lDSxSqisSzAcKdJZdrYj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3170.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 326d4a22-509f-4adc-f526-08dadd887947
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Dec 2022 04:05:44.5927 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ti60DLQJQGmkBgaEiEfUdI/iAKg2KqHoxkbYlE3LCdqa6cErn1vC8ysS4vc2yAhA24JRSWAysouLdCnWWFU9wA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4964
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 5/7] drm/i915/vblank: use intel_de_read()
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
Cc: "Nikula, Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEphbmkNCj4gTmlr
dWxhDQo+IFNlbnQ6IE1vbmRheSwgRGVjZW1iZXIgMTIsIDIwMjIgNzo1OSBQTQ0KPiBUbzogaW50
ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxhLCBKYW5pIDxqYW5pLm5p
a3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhdIFtQQVRDSCA1LzddIGRybS9p
OTE1L3ZibGFuazogdXNlIGludGVsX2RlX3JlYWQoKQ0KPiANCj4gVXNlIHRoZSBpbnRlbF9kZV8q
IGZ1bmN0aW9ucyBmb3IgZGlzcGxheSByZWdpc3RlcnMuDQo+IA0KPiBDYzogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogSmFu
aSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCj4gLS0tDQpSZXZpZXdlZC1ieTogQXJ1
biBSIE11cnRoeSA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+DQoNClRoYW5rcyBhbmQgUmVnYXJk
cywNCkFydW4gUiBNdXJ0aHkNCi0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3ZibGFuay5jIHwgMiArLQ0KPiAgMSBmaWxlIGNoYW5nZWQs
IDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYw0KPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfdmJsYW5rLmMNCj4gaW5kZXggYWVjNzc1OGVmOTE3Li5jZjEy
MTU2MzFiMjcgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfdmJsYW5rLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92
YmxhbmsuYw0KPiBAQCAtMTM3LDcgKzEzNyw3IEBAIHUzMiBnNHhfZ2V0X3ZibGFua19jb3VudGVy
KHN0cnVjdCBkcm1fY3J0YyAqY3J0YykNCj4gIAlpZiAoIXZibGFuay0+bWF4X3ZibGFua19jb3Vu
dCkNCj4gIAkJcmV0dXJuIDA7DQo+IA0KPiAtCXJldHVybiBpbnRlbF91bmNvcmVfcmVhZCgmZGV2
X3ByaXYtPnVuY29yZSwNCj4gUElQRV9GUk1DT1VOVF9HNFgocGlwZSkpOw0KPiArCXJldHVybiBp
bnRlbF9kZV9yZWFkKGRldl9wcml2LCBQSVBFX0ZSTUNPVU5UX0c0WChwaXBlKSk7DQo+ICB9DQo+
IA0KPiAgc3RhdGljIHUzMiBpbnRlbF9jcnRjX3NjYW5saW5lc19zaW5jZV9mcmFtZV90aW1lc3Rh
bXAoc3RydWN0IGludGVsX2NydGMNCj4gKmNydGMpDQo+IC0tDQo+IDIuMzQuMQ0KDQo=
