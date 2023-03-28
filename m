Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E37866CBDD0
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 13:33:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 53F0410E17C;
	Tue, 28 Mar 2023 11:33:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 397B510E17C
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 11:33:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680003207; x=1711539207;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=4rdrChSCltGsxE353P+dVUYg2EAr+MqFW1AkNNVOyzU=;
 b=Mhttgk3phNOsXROeBZRWwZWxOQYjIc5uJdYaZhq1dvMRczMm7puYFfty
 Jy6gagO7vU64n5NX/s/qHYtvoGp3EzBW9QFtST14UX3iP6hV4MLj+Nwld
 +iw7BPF1lIwTese1hHFZQRNrK8N4tw36aGqd9vh/kouhzPY8BsW4EcjJQ
 G0Okq7IKYc4NnDZGJOj9sPtP1xMptG8fpigRhHUIqjsqNpXbX8FfQVQug
 iAScNio6BwNS7StWqGZ+AcJnVgUdV2AKjc4lu42gZVoUutiSisfB9oJ61
 VrcMD2oBizoEsGQNtd0u87UgZOuck+iX0q/CNvWwOfyMUZqVFULFyszwM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="405476750"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="405476750"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2023 04:33:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="753110973"
X-IronPort-AV: E=Sophos;i="5.98,297,1673942400"; d="scan'208";a="753110973"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 28 Mar 2023 04:33:26 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 04:33:26 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Tue, 28 Mar 2023 04:33:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Tue, 28 Mar 2023 04:33:25 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.49) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Tue, 28 Mar 2023 04:33:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cTG/zMAaOGJt3RrBYz9nV+43DVsc2bc91oqS59u+PFPwnf+XShRCSePYw9r4xYlFjOvexPNE9F0RXdQUrE3vTrrRWxTnGqsQD0+fo9C0APhOWpXMumktQpwCU0nK+zwYXu2yUY/gU3C1jKShZbGjZ7PvC8ofJinaBKpF7xerKIsU9g+U9U/tt7Gwk9S24P5+m/ltR+Y5BL3x1HTjX1o6NbEUyeMaXBolKg/fe03u/0g/sbw4NLJKk+7mL0Tls5XXe+hi87h/7dWp9q1WpcIfDwXaNLvY3W93iuKNKh5MBuq8mqT9A2MfHqjf/WQtOdnznz5QxsWAqiko0OSqLOkmmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4rdrChSCltGsxE353P+dVUYg2EAr+MqFW1AkNNVOyzU=;
 b=IqF9EhT37QUnJKaq6s+Xxo/KbvaYhTtPHsNuAIv05LiEeOJLK9kH7HQFguvz2FzYKC/ZPLt0ucTQB90ONoCDmi6i+tkdV74UZU4vcngMjVm9771m5gYjIqnj3LyyTN86I3hp1zwTfEqOh6q92cUZSR2Lmq/RbJf1NQekIAw8L/JXq2vJJyUwcYqcns0qbgK2KxJIDzGsobVAooQVuXUG4ftdMCau4i/7dqBMyICN/1ev8f+ff7I0PwUkVvTzUSk8j53KwM9oAcVhNl4Zd3f56sMoQMfgwv0m56MYbmAK8paygBIcz+zFFTDAt28k6jHctPfPZVYcecyMsYTgLvIU/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BY1PR11MB8008.namprd11.prod.outlook.com (2603:10b6:a03:534::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6222.28; Tue, 28 Mar 2023 11:33:23 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::a238:46d2:74d3:28cb%5]) with mapi id 15.20.6222.032; Tue, 28 Mar 2023
 11:33:23 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [Intel-gfx] [PATCH v5 5/6] drm/i915/psr: Check that vblank is
 long enough for psr2
Thread-Index: AQHZXKnuGX3XSlkdcEuk4xhzAKdkMa8QFmmAgAACdYA=
Date: Tue, 28 Mar 2023 11:33:22 +0000
Message-ID: <7a8d35b4c4626468e7009cfc521509634ba38d07.camel@intel.com>
References: <20230322103412.123943-1-jouni.hogander@intel.com>
 <20230322103412.123943-6-jouni.hogander@intel.com>
 <ZCLOcVNENmYqJiW2@intel.com>
In-Reply-To: <ZCLOcVNENmYqJiW2@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BY1PR11MB8008:EE_
x-ms-office365-filtering-correlation-id: d3950995-2970-40e9-b35c-08db2f803cfe
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +AA1EXv2PCnJn31gjcMM+80BY/tcAmDvBVFiv24BKlEwX14hle62whAfG5y++xOcGeiYV9wtg6VosaQMolXX7e8u7zBWNGoJDhbwp3WAAcU9NVt3L5EOg4l782Y9aaECdL9FmeYogTmRAqv3hZoWxcO6aaztFovCXV5AvesMab+sniB6WV1uA8vi9RgApHZrGbbnQJNp2A+bEKMOCO+30gy7eFsUks1juXw7aBvNMrui8iFKCI+jt9cJ23HGngfKcdJjhih0g0ajGaomBg8ZK0k02EfDHNTsxTIZ7de1QayGdBvUu1f1I3nBCrBwIohaStLCdL+HKZoundSj5l/BmRGuUlMmn9KlmSRM3D6OGRws6oaTR6LZbJlpNP7ckZkoVtqgtl9ZPyr/8bl5YL3/8LmtK1kVxBFXmJVxsJZyjMnm4aKwUdryXufTVWk7CtBeoaAyUtieIjMuUZiPPxLeSbCLM78ay4p6fG04LV4lpQcYCaX0Fnjks3o+tWCPriZnuMSwbjmuu/PAOPZ3pYxxv/vF80px2hJ3ilA+AWGSOlWIB/JNBmKroS8GLjqsvGfvZuVITaI9FNFPvJ2ALLYemjg2p2f1pA+QKF+ZWcAyHjDuv6nn6w06Cf6OFi3qJz15
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(39860400002)(346002)(396003)(136003)(376002)(451199021)(91956017)(83380400001)(2616005)(41300700001)(36756003)(86362001)(38100700002)(5660300002)(6486002)(122000001)(66446008)(8936002)(82960400001)(478600001)(71200400001)(76116006)(66946007)(66556008)(64756008)(2906002)(8676002)(6916009)(66476007)(6512007)(4326008)(6506007)(186003)(38070700005)(316002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?L3Z6S0xpWXI2cktUNEN4dGlCNUMvYzhnZ3NvSjNXRnJyTjNUYVVpTXNCa3gw?=
 =?utf-8?B?MVBTWnU2TWY2WWxKOXJqemlSaUY5OTRuZmVtU3FrZ3RXTmloYTZDZHA3Q1JG?=
 =?utf-8?B?NGhKTm9YWDhPVnR5cXM2YlhuL09wQlZmY2FlelBET0lDeEd6KzI5OG40ZmpN?=
 =?utf-8?B?UG81Z0Q3UEpYelVTR09HWmx0MHp4ZkZVNEIzMmN0akpjR2FYdWY4MGZHdXUy?=
 =?utf-8?B?ODI2UGZwZXhKb3YxUWd6VXdVREpYdmlVOG9zNk1CWUhXdVF4Y1lpYkJaamty?=
 =?utf-8?B?VUdJME8wN0gwMENTcnY0VHVIbWZxdWRiMjMxM3l1NXhXdTVsYXBHVW9xdDd0?=
 =?utf-8?B?WEFnTjFPZUM0a1pxbVRnbWJJcXF4RllMdndqQ016NE52TmdDL3N6WlVQdldX?=
 =?utf-8?B?aW41N292cFkwUVR1NFhucVp3b1VDSjNVT3ZRSzdBQzFxMmQ1ZmlrYUdsekZj?=
 =?utf-8?B?OVlyVTNPaFdsQ1AzSE5NNTcwaktnQ1pHTUlZYTN0Q0NRYVp1dUdCUXBGMyto?=
 =?utf-8?B?SXJEd3lKL0U0b1NzMmdsYU0wdnNWUVdRUFlqcm1zNVVHaEVvaUhHblB5cGc1?=
 =?utf-8?B?SHExL1lTc0g5U2ljWXZyTVArNU5TMjh1Y1daL1NUWjBBb3JWNERNUlpKWCt3?=
 =?utf-8?B?cmtVdlZxUXNwRXZIaFk2dGxQMC9VamJKWWl3andnaGwyR1VRd1JOQXVmNlJL?=
 =?utf-8?B?eWwzMHptdTl1L3hHcFp2VnBuNjlrUitXTWVKTkhYSlFRaU9Kb2pMTVFpRUlV?=
 =?utf-8?B?TFNRUk5YL3lITGdjSlYxTFRlUXJaL3ZmZGVWcWpCME9zbnBZWmRmK0tRM3Aw?=
 =?utf-8?B?U0lXTFo3SFRXZFp2VzM5MHJZcnJjN21xZGlkM0thcVVWcUlwejVSeFVuSlU5?=
 =?utf-8?B?dDZKd3JWRzRmRmdNMUJ2S1lsZkl1aVJOWVljbWtmZjZmS2Jaek9Tc2hIamRR?=
 =?utf-8?B?Nm1zS3BHK3dETzNqdUlLL2RMU082aTRtWWNCL0ZEL3MxZk84YUVyNDlOSzZk?=
 =?utf-8?B?c0VRVDdKaXl3OWRkcng0b2JMZC9qWTZVM3NWTmt3cTdEL3pIdXdRb0F6cmVU?=
 =?utf-8?B?VGxJT1k1WGRyRzRiOWo1K3BvcmF5a2tweE56cWV2L1FMN3ltT0Zsa2dsZVRl?=
 =?utf-8?B?bEczY003SERmbmEvY2RmWEpCWFE5VmNPa25qRHhZYnBNWE9KSTNoOVhFcFFB?=
 =?utf-8?B?VnAwWXN2YW9PaENyTWsxeE9aNk8vYUIzc0RqWUVDWkZGNXFjWHBoZ3JtSlJ5?=
 =?utf-8?B?U1JxY29EbHpSbGZlaGJ1OTgyOEhiNHcvMnlzK1IyMVZQaElhZ1NoVHEzbVZM?=
 =?utf-8?B?M3RNT1BDaHh1cS83eElYTzhvUUF3ME82WENwQlA5Zi9Qd1paWW1LSStvd3g5?=
 =?utf-8?B?eUFhU1hCelFJNk5iR24xU1c5WG4xeXZKZnZGaS9OYkN2bnFjLzFuNXR5dFRx?=
 =?utf-8?B?TzJGbzNMQllkOWV5R1RFSXl2QkYweG0zeDUyQ2VDcms0dXVRQ1VENkVUMTFl?=
 =?utf-8?B?RFFJMlZOc1ljczdaejBvcXZvYjRPSzB0cENTaGtWYVN0VCtQOFE1b2dON0VP?=
 =?utf-8?B?Y0RjYzVyRjdLMENPbFZrdzl0bmQzM0NtRXhkTS9GOTl2cUZqVGQxeTlUUm9N?=
 =?utf-8?B?NGVmcWJRMFNKNHR1SUlQenNRZEk0TzVZOExyaVVrL0lqTFNwOFNxK0JId0g0?=
 =?utf-8?B?OXpLRGRURExFd2txbnMveTVFbU1uTnhwOHpaZnloanppb2NVWmhkVzEvOVlj?=
 =?utf-8?B?d0pEM0hSQjVFSGMxQjI5UnBxOTdERXZReDBDM085d3paZC8yMGxQQURyS2NI?=
 =?utf-8?B?R3ljV1NUa1hFS2dST1RhR2lyZTZIVDdFUnRWNXZ0dTF3QWI5Z0lMN2IzL3lh?=
 =?utf-8?B?Y0kyQWlFY0trekh3VTh2a0VQbW1DU0MwTnZOQnNvL2RrMEdMdmpmZ09ubG5K?=
 =?utf-8?B?WVQxNWdUaFRsNk5vdDZQaTc5bkpsSUpKQ2dKUWxwUVV1U3BZU29oenUvV3lm?=
 =?utf-8?B?VWhVYjIrUk5tTlFGKzZOb3FwT1BIQzhwOTV2QWV3OFA2Yys2NHJHUjZHd2N2?=
 =?utf-8?B?amFjOHVxemhHcVdhdTQyZ2FabHR0Ky9yUTBWaTJtNVRINDRYRjB5Mm5rY0ti?=
 =?utf-8?B?Z0hZZ0R5Tlg3RmR3SG1Xc3Ric3RDMWtOWmZLU2Y1YW96SGN2bW1IaHJVK0dF?=
 =?utf-8?B?UHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <FB0CCD1E102EFC40AC6CB35892FC1101@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d3950995-2970-40e9-b35c-08db2f803cfe
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2023 11:33:22.8691 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dEH77p65V2eajS4/GbNLCtbRuJ4VW2EGBCYb5ELGWgYcRa21IrQ01BV0TVPiDFNPIGvzACV8U/cIf+RTAIi11Xu3xPhLxbZfpwoG5wcfUbY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8008
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v5 5/6] drm/i915/psr: Check that vblank is
 long enough for psr2
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

T24gVHVlLCAyMDIzLTAzLTI4IGF0IDE0OjI0ICswMzAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
Cj4gT24gV2VkLCBNYXIgMjIsIDIwMjMgYXQgMTI6MzQ6MTFQTSArMDIwMCwgSm91bmkgSMO2Z2Fu
ZGVyIHdyb3RlOgo+ID4gRW5zdXJlIHZibGFuayA+PSBwc3IyIHZibGFuawo+ID4gd2hlcmUKPiA+
IFBzcjIgdmJsYW5rID0gUFNSMl9DVEwgQmxvY2sgQ291bnQgTnVtYmVyIG1heGltdW0gbGluZSBj
b3VudC4KPiA+IAo+ID4gQnNwZWM6IDcxNTgwLCA0OTI3NAo+ID4gCj4gPiB2MjogVXNlIGNhbGN1
bGF0ZWQgYmxvY2sgY291bnQgbnVtYmVyIG1heGltdW0gbGluZSBjb3VudAo+ID4gCj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4KPiAK
PiBSZXZpZXdlZC1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT4KPiAKPiBXZSBzZWVtIHRvIGJlIGFsc28gbWlzc2luZyB0aGUgIlBTUjIgbGluZSB0aW1l
IiBjaGVjaz8KClRoYXQgaXMgdGFrZW4gY2FyZSBpbiBpbnRlbF9wc3IuYzpfY29tcHV0ZV9wc3Iy
X3dha2VfdGltZXMuCgo+IAo+ID4gLS0tCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMgfCA5ICsrKysrKysrKwo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgOSBpbnNl
cnRpb25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX3Bzci5jCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMKPiA+IGluZGV4IDRiN2M5NDZhOWEyNS4uYjUzYzcxYzA2MTA1IDEwMDY0NAo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYwo+ID4gQEAgLTk2OCw2ICs5Njgs
MTUgQEAgc3RhdGljIGJvb2wgaW50ZWxfcHNyMl9jb25maWdfdmFsaWQoc3RydWN0Cj4gPiBpbnRl
bF9kcCAqaW50ZWxfZHAsCj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVy
biBmYWxzZTsKPiA+IMKgwqDCoMKgwqDCoMKgwqB9Cj4gPiDCoAo+ID4gK8KgwqDCoMKgwqDCoMKg
LyogVmJsYW5rID49IFBTUjJfQ1RMIEJsb2NrIENvdW50IE51bWJlciBtYXhpbXVtIGxpbmUgY291
bnQKPiA+ICovCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAoY3J0Y19zdGF0ZS0+aHcuYWRqdXN0ZWRf
bW9kZS5jcnRjX3ZibGFua19lbmQgLQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgIGNydGNfc3Rh
dGUtPmh3LmFkanVzdGVkX21vZGUuY3J0Y192Ymxhbmtfc3RhcnQgPAo+ID4gK8KgwqDCoMKgwqDC
oMKgwqDCoMKgIHBzcjJfYmxvY2tfY291bnRfbGluZXMoaW50ZWxfZHApKSB7Cj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgZHJtX2RiZ19rbXMoJmRldl9wcml2LT5kcm0sCj4gPiAr
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiUFNS
MiBub3QgZW5hYmxlZCwgdG9vIHNob3J0IHZibGFuawo+ID4gdGltZVxuIik7Cj4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIGZhbHNlOwo+ID4gK8KgwqDCoMKgwqDCoMKg
fQo+ID4gKwo+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChIQVNfUFNSMl9TRUxfRkVUQ0goZGV2X3By
aXYpKSB7Cj4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlmICghaW50ZWxfcHNy
Ml9zZWxfZmV0Y2hfY29uZmlnX3ZhbGlkKGludGVsX2RwLAo+ID4gY3J0Y19zdGF0ZSkgJiYKPiA+
IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICFIQVNfUFNSX0hXX1RSQUNL
SU5HKGRldl9wcml2KSkgewo+ID4gLS0gCj4gPiAyLjM0LjEKPiAKCg==
