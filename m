Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CAF715AD9
	for <lists+intel-gfx@lfdr.de>; Tue, 30 May 2023 11:58:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F4F910E141;
	Tue, 30 May 2023 09:58:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B70C10E141
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 09:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685440701; x=1716976701;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=2TOoDJ64+4XEE1FDPnGjr7ifWQsAowOPmvFAjc0gOXE=;
 b=HLpCwLP6QDjbpgzQ0y33W+HHCCyiRvsJXSjiFu1h5mp0IIOwKxB1f1Vk
 mo5m494D7fye5SVluEQcGNLlY6rhHSip12sQyL/3jq4dl+q01EHrWzDW2
 SXCIR0MQFPJrXiIdV+UAXffUtygPynLDXiHE4MiNOhmZefD+EY45U7HBc
 ZyRpYaJRDhG/YZXh7Q9EcDP58SV/YC+qPY5etBIjnZF9cuKvKscY1hk7L
 IMTjUumV15SjyKer82vkQly9FDmxzaI2H/+ckIMFDMeOLDoCCH4Lnwk0E
 CSSOJhPnpwzV0FSIhidEVcUkmIGhCuy3ulX+pDQwrcBBKSJkGlse5X9ir w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="420629909"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="420629909"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2023 02:58:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10725"; a="796212767"
X-IronPort-AV: E=Sophos;i="6.00,203,1681196400"; d="scan'208";a="796212767"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 30 May 2023 02:58:20 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Tue, 30 May 2023 02:58:19 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Tue, 30 May 2023 02:58:19 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.107)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Tue, 30 May 2023 02:58:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Tt3cw6uG+lnY09ilzSgadinym86jXW1ij6TyKRcMyWy/QZ+P60SsdQNcFBUhLY8IqeBxUtBud9pbLXA5UsIyOajMeDbohdi0ucmj70xSG35mVLcWW77HPmYj1G7ra0KK1yt8FTG1yylwbjtBxMFfYqgVzVhclhwn7rmt5A1/7e3kLCAnjDgLbT8/HnSJ7Yd0OIMSz1c8OO1Ovrykzoff2SsNYWDA52qiBzIUwOIbFGDfMSlrmxIWPxl5MfpC5I+MQNjRzk/0pFnLlGi0xCw7+34skvulE0YcEBa4rsgoOzRxK6aaBGlGcEA2Yp+8I30d7KLbfXmsX6H90k0xU9mECQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2TOoDJ64+4XEE1FDPnGjr7ifWQsAowOPmvFAjc0gOXE=;
 b=aCSaaExYB4iWsA9RRv//bG9M/IDQtnhNeA9CBIyzj5oXFODKaZgcNHavAWTAOfsOR3jwKUIsoYUUwwNlNM3O0xVAmlKyAzp5Rn8rPMQgQZOGGbz45VgKS1LG0vuz7bqlO8tEJpodoJVBfsBdl9HeO7RcpMVyS4ubxBNfaVAT2Q/M0uJBcHQ+026ik5PMp6pPu0Ok5eMLJIJoGjkybZNowl4esP6giRanfES7WEUf8pE98yDgEzffJzoBYVV2OYRLQaga4iWrFQ25KAIc21y0PG9muKp5A/VSsvWeo5Pahg8fzb+sC+17p1n6CcYHzA0wu1T25KMawhyv4W8RoZF3OA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 DM4PR11MB8179.namprd11.prod.outlook.com (2603:10b6:8:18e::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6433.23; Tue, 30 May 2023 09:58:17 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::2796:34e3:dbb9:fe97%6]) with mapi id 15.20.6433.022; Tue, 30 May 2023
 09:58:17 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915: Use 18 fast wake fast wake AUX
 sync len
Thread-Index: AQHZki2fF/g/ZBtYDEyvuPBE2W/Hk69yigKAgAAMJAA=
Date: Tue, 30 May 2023 09:58:17 +0000
Message-ID: <889bf98abd0b86f8aebcebaad58ff19d54d73da8.camel@intel.com>
References: <20230529130028.2193945-1-jouni.hogander@intel.com>
 <87ilcagoza.fsf@intel.com>
In-Reply-To: <87ilcagoza.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|DM4PR11MB8179:EE_
x-ms-office365-filtering-correlation-id: c9cd5ba1-5f93-4250-98a6-08db60f4646b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: A6jSzngbNteYX0xIss8tP0o0vAdPlYmY91GR3erxUg0bRdzELQiuSOhVFKzg20PKzV832vppNsnD5q5VAacBrdIAn+qdM1dZF5O6bKzW2b0o2RR9md/A7QPdLruXdr/Fok1j5IkmLBImQd7RL+pgCHToRLtfRE7UrHxxQUzVtErll3cy6XYCILHaOFlkxgIdJqyjm7InQxOjiCDL4MsAkb+YbyWkkcyrCupQ0F9wHmGKN5Gs6kmFtVg9aBhwlLD+oxAtRC14z13S009INhJuFhgPfkKpE/lXwlMLz4Fo0im8jz7lh8XSWbR+kyxCpYZRSdABN2FMmpO6dLqj+eKRlI2lO5IA73VOG3IX/xHm59cl66flUQHR1Yb/3FbPKqdNZeN0F5A40b1kevEQV4jTyV3WcjeAGYLyjMD4UlYLkFzOniBtfpLoU9TqpHtBrEm6UWwMsaV0t+eyhn8irqqhvfUP7I9443QU7mzAgVjTbEGAbSNIt+cQS7AdA2xcDDAAwDX+h/hso6Ihx7jIscHnR4wchMVFtBAPbnNgShCJbxp5ST03NQ3mSpiZe0fA/Wg+
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(376002)(396003)(366004)(346002)(39860400002)(451199021)(966005)(186003)(2616005)(38100700002)(41300700001)(83380400001)(6506007)(6512007)(26005)(66574015)(6486002)(478600001)(71200400001)(110136005)(82960400001)(66476007)(66556008)(66946007)(64756008)(66446008)(122000001)(76116006)(91956017)(316002)(5660300002)(8676002)(8936002)(2906002)(86362001)(38070700005)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c3NLOTRqR2dISEpzeDNRcmo2bjBRZmx2SCtHbmt3KzhRMzFPVVJKcVpNVmRv?=
 =?utf-8?B?a2RxdmZqSndCcjEydG9VbDlScWRJU2NvMkFmakFQRWlNWjM3VTRNVXFaVk5k?=
 =?utf-8?B?YTNvZXQwZTZZVmhGangzOWZyd1QwcnlERmVKd21WRlpGMndGcXJub2hHYlhz?=
 =?utf-8?B?TVp6aGdHSHRXb3pMZzltT210blNUOHBTZ2FuK1RTbUVNcUtOc21IUmphN0Zk?=
 =?utf-8?B?RGhHNmwzQy9kYmpXR3VqcU9IODd3aGlqeUFPT2RCRGdJSS95YkdZd3VESmhF?=
 =?utf-8?B?Mng1eE1lT3hGcTh4SGNtdWgxRlVxUGx4em1PUlk1aFVlcW9weXRWc2JTcTF6?=
 =?utf-8?B?ZWdVYXQxQkMrVk9jSzF0cGVmVDZmWEFhandEUC9JZmc5SVFpUHdTaHN6djV0?=
 =?utf-8?B?V0RPYUtONUwyS0ZrSjFFRUdhcUh6MFNLcjd5S29qbVUyS3dpRnZiQUdhTG9l?=
 =?utf-8?B?cVNRM3RkSFkrejZLMklaVkpIVTVoRDl6VnBqVm1hY3JCQXV6VGxNY3ZFaWRC?=
 =?utf-8?B?YkFOYzVZZjRibzhUamprVnh0aHlpMW5nSmZGcklNd1d2aWxnTUk3QVdxWHdz?=
 =?utf-8?B?Z1puZncwY0hLQmVCeFN4bG94T0lGTFRzSUlBbjZJdzFZR2lmV2FJVXUyZC9r?=
 =?utf-8?B?QjlEZ0dqUHlHNGpkb3F0L1VsMWl3MzNma3RnNEZYN2Z5azBLUFB6Wi83VGwx?=
 =?utf-8?B?T05qL2lLTWlkZ2pWeUxWSkRzalA1VzNJSjJaRXdKZUFTZjdqZjZkMi9RcXdy?=
 =?utf-8?B?Zk5HaXVPcGJoSXFCRVlnd3RJeUEvMFhFYkxjTDNhNlNvNnZYM2RjTnVQY0pa?=
 =?utf-8?B?TmY5d3lzWkRSV0VuUXVCTTArRlVLTHNFVlI4WEpGWUlnOHVreFhtSmk0UlVN?=
 =?utf-8?B?QTM2bjBkaXE3UTBuQ3VGOUJodG1Hc2tSeDhuUlBzWTRWN2VCelRwOHRzQnJa?=
 =?utf-8?B?eUM4UlhHam9MNDRCUlNmcHBXSGZ2Zkp1R3NuOHZRbDE4Tkh3bnYxYkE4Vng1?=
 =?utf-8?B?ekVLU0tXc0NRS3VkTWNMTlJNaUhFdWdrK09PVFd0OWlUUmtHdUtPdm5YTWRR?=
 =?utf-8?B?aGxDcUtOL1NXZWR0NTJ0U1VwdWhNZUpGVTV0YTRXZGF5cklBeFFYN2tNZjl3?=
 =?utf-8?B?WGxhV2doVnRkanZINHFkRjZILzdWMENra1RTZURBK3Z5MFpxY1IwQkpBb0Va?=
 =?utf-8?B?bFcvN1ZvRG5sTjhrQ1c1ZmZXbjZHWnkvKzJmaHRHbEVSRWU2Z0NBRHJUWGJ6?=
 =?utf-8?B?aWVoTk0rMDJ5ODFmRmRBcHdCRjBOcTk5WUFyaHhLaW5BbWVBRkl6dnpuV2M0?=
 =?utf-8?B?bldueTkvNE9lQ1E2eHdYRi94amRkc055MFFTNU84S2YyQTFDa0VmY2J3cWg5?=
 =?utf-8?B?bnVoVEgrbEpXWkFHYXRBcjRod001VFg2NmxvQml2SVk4Zm83b2YwUXVGL0ZZ?=
 =?utf-8?B?QjVORDRZcGNhYTBXeVhmT2d5R2VrcjdpYWdOUkpFMGpsZDFkRDFreGFsb1Vr?=
 =?utf-8?B?bVZSNnUvbnJDaUZUcU01RFBCQmhxM2c0NUpsWFNPd09SZWNSbGJLWERkaFJU?=
 =?utf-8?B?ODg2K3JoZ0ZxTHdBeThHbENGS0ZDMGxnT3ZVR3RPZElPRjMrQmZycGxaOWdw?=
 =?utf-8?B?SE85dlJKOFlSQWhvam5SbURFa0dLRncwR2VNTVplMEdDYlY5b0tiNGx3QUh4?=
 =?utf-8?B?dlhRUGczNE8xSmFCUE9ZZEtTalNacWJMMUpDYmQxQmkyUjRoUXk3Y2k0LzV2?=
 =?utf-8?B?WDVzZmNCOHBEaUhIYU5kRGFuMkdJZ3E1dWFUcS85ODA4MURPVjZuMktrM0dJ?=
 =?utf-8?B?SnIrd0VxaEJDQk05eHdQdUhVVlJJMmJHTkpuTnl4YU9wVGhwZXJoYlFoSmVP?=
 =?utf-8?B?UnJlaHR5US8xSitKQnRrL3lGbHRTL0gxcG8rSmdFODVhdm5Vd1FwUnJJdjUv?=
 =?utf-8?B?VWtMeXJvbXBVeVpRN1lDVnA4YlU1bHh6TXpPRVYrU0crSTlrTVBSdE9ENmw3?=
 =?utf-8?B?Uk1UTU40RmZHM3ROTnhpaXhiWHUzdHRqVDBRUjlxMUdZSjh1WFRSV1d4T0kr?=
 =?utf-8?B?bEExZ2xBY1ZMQXpwdDlqbG8zcWtGYnVuWng2NGJzam5kOUNRMm1yWmRoeXFN?=
 =?utf-8?B?VGswZGt0Y3AvaDRvVzRWcjdUS3M1K0lkRktJME14NlpXWlZHcWI0TjM1U2w4?=
 =?utf-8?B?T0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <7BE489876BE7F045B527E906602E41D7@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9cd5ba1-5f93-4250-98a6-08db60f4646b
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 May 2023 09:58:17.6105 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cjEpFjErgo6O0m4enk+PnIbRWZqmzaflURJQeUKrAo1PL5KEbMdez6QQd7E3iwoXhT8yTsaKDZTQENvRm3ntvrmYCCMvkTquksyNC6jacnE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB8179
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Use 18 fast wake fast wake AUX
 sync len
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

T24gVHVlLCAyMDIzLTA1LTMwIGF0IDEyOjE0ICswMzAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gTW9uLCAyOSBNYXkgMjAyMywgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IEhXIGRlZmF1bHQgZm9yIHdha2Ugc3luYyBwdWxzZXMgaXMgMTgu
IDEwIHByZWNhcmdlIGFuZCA4IHByZWFtYmxlLg0KPiA+IFRoZXJlIGlzDQo+ID4gbm8gcmVhc29u
IHRvIGNoYW5nZSB0aGlzIGVzcGVjaWFsbHkgYXMgaXQgaXMgY2F1c2luZyBwcm9ibGVtcyB3aXRo
DQo+ID4gY2VydGFpbg0KPiA+IGVEUCBwYW5lbHMuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gRml4ZXM6IDYw
NWY3YzczMTMzMyAoImRybS9pOTE1OiBGaXggZmFzdCB3YWtlIEFVWCBzeW5jIGxlbiIpDQo+IA0K
PiBEdWUgdG8gdGhlIGNoZXJyeS1waWNrcyBJIHRoaW5rIGl0J3MgYmV0dGVyIHRvIHJlZmVyZW5j
ZSBlMWM3MWY4ZjkxODANCj4gKCJkcm0vaTkxNTogRml4IGZhc3Qgd2FrZSBBVVggc3luYyBsZW4i
KSB3aGljaCBoYXMgYmVlbiBiYWNrcG9ydGVkIHRvDQo+IHN0YWJsZS4gV2UgbmVlZCB0aGlzIGZp
eCB0byBnbyB3aGVyZXZlciB0aGF0J3MgYmVlbiBiYWNrcG9ydGVkLg0KDQpPaywgSSB3aWxsIGNo
YW5nZSB0aGlzLg0KDQo+IA0KPiBXaGF0IGhhcHBlbnMgaWYgd2UgdXNlIGNjOiBzdGFibGUgYW5k
IHRoaXMgZ2V0cyBiYWNrcG9ydGVkIHRvIGENCj4ga2VybmVsDQo+IHRoYXQgZG9lcyAqbm90KiBo
YXZlICJkcm0vaTkxNTogRml4IGZhc3Qgd2FrZSBBVVggc3luYyBsZW4iPyBBbnkgaGFybQ0KPiBp
bg0KPiB0aGF0Pw0KDQpPdXIgY3VycmVudCB1bmRlcnN0YW5kaW5nIGlzIHRoYXQgd2Ugc2hvdWxk
IHVzZSAxMCBzeW5jIHB1bHNlcyBmb3INCnByZWNoYXJnZS4gV2hpY2ggaXMgYWN0dWFsbHkgdGhl
IEhXIGRlZmF1bHQuIE9yaWdpbmFsIHZhbHVlIG91ciBkcml2ZXINCndhcyB3cml0aW5nIGJlZm9y
ZSAiZHJtL2k5MTU6IEZpeCBmYXN0IHdha2UgQVVYIHN5bmMgbGVuIiB3YXMgY2xlYXJseQ0Kd3Jv
bmcgLT4gSXQgc2hvdWxkIGJlIHJpZ2h0IHRoaW5nIHRvIGRvIHRvIGJhY2twb3J0IHRoaXMgZXZl
biBpZg0KcHJldmlvdXMgYWRqdXN0bWVudCAoImRybS9pOTE1OiBGaXggZmFzdCB3YWtlIEFVWCBz
eW5jIGxlbiIpIGRvZXNuJ3QNCmV4aXN0Lg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4g
DQo+IEJSLA0KPiBKYW5pLg0KPiANCj4gDQo+IA0KPiA+IENsb3NlczogaHR0cHM6Ly9naXRsYWIu
ZnJlZWRlc2t0b3Aub3JnL2RybS9pbnRlbC8tL2lzc3Vlcy84NDc1DQo+ID4gLS0tDQo+ID4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jIHwgMiArLQ0KPiA+IMKg
MSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4gDQo+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMN
Cj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBfYXV4LmMNCj4gPiBp
bmRleCAwYzI3ZGI4YWU0ZjEuLjE5N2M2ZTgxZGIxNCAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2F1eC5jDQo+ID4gKysrIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9hdXguYw0KPiA+IEBAIC0xMjksNyArMTI5LDcg
QEAgc3RhdGljIGludCBpbnRlbF9kcF9hdXhfc3luY19sZW4odm9pZCkNCj4gPiDCoA0KPiA+IMKg
c3RhdGljIGludCBpbnRlbF9kcF9hdXhfZndfc3luY19sZW4odm9pZCkNCj4gPiDCoHsNCj4gPiAt
wqDCoMKgwqDCoMKgwqBpbnQgcHJlY2hhcmdlID0gMTY7IC8qIDEwLTE2ICovDQo+ID4gK8KgwqDC
oMKgwqDCoMKgaW50IHByZWNoYXJnZSA9IDEwOyAvKiAxMC0xNiAqLw0KPiA+IMKgwqDCoMKgwqDC
oMKgwqBpbnQgcHJlYW1ibGUgPSA4Ow0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKgwqDCoHJldHVy
biBwcmVjaGFyZ2UgKyBwcmVhbWJsZTsNCj4gDQoNCg==
