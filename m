Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A3E826B8B
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 11:25:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE7CA10E220;
	Mon,  8 Jan 2024 10:25:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 98CA510E220
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 10:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704709547; x=1736245547;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=MbnjWOO65sRntiyfBJyvlrPni81sdwTOk2zgmWBfYss=;
 b=WB1SrEK86v5DtlGWMj+QCMGezRE0PyKj2DfWTZMYj6laB94wJk+n7ODt
 imL9n7EnKDVMsKCGaDoTv6N2BO8jJ+b5+/n1mXTEbs5PB/sPVC7TT6mKV
 6T+f26IxWkhi3+J6T5k/7NJoK6J2TatDlnx4Js5ZDMKQYZF9j3JMsa5bZ
 xo9IGf3DeZf8Z4tKj0ugpfIZv02eOoHtjUTLDE7Co6o6IxVaK2k2zIgbp
 ee9+xAUbz+/HcS40+IXmUYc+koNNANthv9bUJrXDXmUkYdkKPuM+HfFt4
 Ar7+ivfpKmapimo1wyz+uDJffc2aVwzfxqpb7TDHBr5GyFKG0klrPhuez Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="429028872"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="429028872"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2024 02:25:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="904763862"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="904763862"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Jan 2024 02:25:18 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 8 Jan 2024 02:25:17 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 8 Jan 2024 02:25:17 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 8 Jan 2024 02:25:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yb9/gC0isdzAxZN/wyZLw/286IH25YyWDT1p56mxZsMboNiRi9O6pC+pAU1UMGMJWs2sVFq+QpibW37XupVWyLsYM8amHvGp3qS/szhitOQBIZNT1QrQkHjk2c1kBktihbXGcsh6ibUNdCL/3sD9I4oH4hBbRUpWXVpFJMghOMHJKDh7YGLk30+DFwhC8C+MEXzDPBnF65r226tiEl7LJ3D98F2vLH3YQKiqbSPsToc0m11W6rRergdB+0L6IvCJrRsJVHufQLrjfEw5RjaIHTXeUEwYdVEJvfQBmd2DbQGQX3KUFwRMsBo+t45LZ578bSxuLc6I7Zl/kqpjbZ0MJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MbnjWOO65sRntiyfBJyvlrPni81sdwTOk2zgmWBfYss=;
 b=aDBfu2pZg4rHV/XUpIDUPz6enOnXGirvQa5mkH3h7/QBhJq4ipcD0cGtLzzO1Y1+6+hY3k2XcqtW6rzVtC2Pid4B9Azd3Pv4MWjbFV2zE2JKUnEsXYJQGOBiMXqfpxlX5O5I6dWm/TqbInDzQkmEjARiVf3APd/MECBkdr4FS3yaL8+yxWuBxgE7kfb0iacuSxQWKaDjY1xDqUfac+6i6Re1oxjUQjdUCtq67GEKYss8S7Ds5Fn3HaBWOV6iI6LBEDpxQP19vlKsXy4lxYS0h+hJJ8QlmkXwuyPH2ipEd7cLhJm7mlgxRXdlEcV41Y2+uYzWGBGa0LnA17327aq5zQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB5008.namprd11.prod.outlook.com (2603:10b6:a03:2d5::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.21; Mon, 8 Jan
 2024 10:25:15 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 10:25:15 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 11/12] drm/i915: Filter out glitches on HPD lines during
 hotplug detection
Thread-Topic: [PATCH 11/12] drm/i915: Filter out glitches on HPD lines during
 hotplug detection
Thread-Index: AQHaPunIvAb+hcexa0qdvaY2BJ2QN7DPvBsA
Date: Mon, 8 Jan 2024 10:25:15 +0000
Message-ID: <d6044f57ebbc0fe17ec6e36fef02cdb881af891e.camel@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
 <20240104083008.2715733-12-imre.deak@intel.com>
In-Reply-To: <20240104083008.2715733-12-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB5008:EE_
x-ms-office365-filtering-correlation-id: 897cff95-538a-48ad-b51c-08dc10341afb
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DKCcXx298kVyP4Zfi8Z5ZXNPjSbnwl/UAUuG5zb2VylUhAoPCkjzlO9Cpwv2Z6ZkGlsU8aiX1GfpzjmNuo7Ixqa4wHhxN9UUL5NBEk8dfiAi15BTvP/9A8WDi5b+1nK/W5A/Ce+Wnc5XOsOTf73wkb//MEwSVeyeeW6osESi/5iOCmC5lujDE7eBMnSDK0BX8pn86iqjQUUqi3hVDaVlTgslLiMJoZDyA6HCL7IDoCXGHndaXxRGK0rNlOHymZKato0WT7vP49xjtmPXevH4LYbSKMiYQYCM20BNdykZjgjGbBvWr/k+jo3iSUu4KrnlsvFGBu+mctU12KPDLsjR4dxHX6AiNpVQVVGuF54V651TkVSj54UnmZevGZV6H41kISrHXwhRGC5iUMdY7lSPoxs8ZV9xJ6lGqVfHvxnFNTBgbjCWpdPDeID0zclFD784f6pDUONsY9sUHF1RIOOd0IpZv2czO06Oz5pHyQpa8GrVrnSVNkQ/XIJE6M8IcBGAxc/cBnM9gp9z8VY6/0OJSVcux2EdnNyMkBvzmP+1Gq/MgCtK4cAtFh37hC6OokxmmIqezF9frUyUP1JnqkTTLP28cx3sB49qmym3b363f2xJRqyJS9o3fpzsFP/nmwHh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(376002)(366004)(136003)(396003)(230922051799003)(64100799003)(186009)(451199024)(1800799012)(110136005)(122000001)(91956017)(6636002)(316002)(86362001)(71200400001)(66556008)(6486002)(76116006)(66446008)(66946007)(64756008)(478600001)(66476007)(38100700002)(82960400001)(26005)(2616005)(6512007)(6506007)(66574015)(83380400001)(8676002)(2906002)(5660300002)(36756003)(41300700001)(38070700009)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?VkU4S0U1VjBrZXdTWEFFMm1IWlZ3VmkvMDhmWE9DUWJpdUlaWGxxU1FHcUk4?=
 =?utf-8?B?T3lLdzZiUEpvbE5LT3o5c1hrZVd1dFdyWDk2YVdqay9oTEJ0VXN3YVRLMjdN?=
 =?utf-8?B?Mm5WNGZYck5QcFBmNlZSUERFcGN6N3FsVHVvUVRvaHpCS0Era3VyT3lxc1Np?=
 =?utf-8?B?YUhSalBaL1JoUk1LT2hXNGRvVU1zcHpDVER2VTNyMHVFbGJJYXJvT0xobnUy?=
 =?utf-8?B?TVBIR3BuY1loeE54VGt4dnpIc3hEMkJacFJnQTh6bit4MGRmdTFXNFllZ0JP?=
 =?utf-8?B?b2psV1JEdFRaelVjWmVDZTlSdFNXMXdHQ1gwOG9qSlZXWVhFbXpqWDVHSDdW?=
 =?utf-8?B?TzYvbG4zQTFCb0FLNTVmY0cwK1U2TmxkcHlSOEFJZkhEREtPbU9TSnBQOEdI?=
 =?utf-8?B?bjRZTjdwRkgxclJJeHZJTVhSaFoyZWg5eHlMSXpTeksycFZPYmo4eTVPWHRB?=
 =?utf-8?B?WWZ5RGc2OTVRVWlmNmNVdnh1eVByQTZpQm0yN1RRR1g1VEQ1MG1scUs5Q3Fs?=
 =?utf-8?B?UUJiTVAzK0hxajVTeGhIckl4RE9SNmp1MWhLVU5LWGtHbVJNd003TVBFRGdP?=
 =?utf-8?B?a3R4V2l2SkFhV3RhYzM1NG9OMDJqb05LMUgvQ2JGbTVWbVUvQXVRNVdDM3BK?=
 =?utf-8?B?T2I0N3RiQkV3dml2U1krWjBndjh2S0hmSlJ3aHowVEhpWVhnVEsyN3lYZElv?=
 =?utf-8?B?NU5aM1QyT2s0Z0Y4OHRnZXZpVytsSkxDTjVMczF5QkhiMitIdmZ6SVNKQmNX?=
 =?utf-8?B?REsrcXd1OUMzcFp6WkNaaXJjRHZiZUYvZEEyZlgvM0lLRlJEc3NpbVVZUUhs?=
 =?utf-8?B?YjRDaWwyUFRTZmRVSW15eElZVElOcG1EMUIzQVNKMDljSmRJMWZGM1FpVnpV?=
 =?utf-8?B?d0ZsM01HYmZoem1lQmlLQ3NYZTNBeFlLSjYxamYySFBreUorZW4zN1FOeGdX?=
 =?utf-8?B?d0lIa2lqRnBMNXBaZ241OGZSWjc5ZWNSZ2djVzQ2dDJ5SlFSSGNZRzJ6dXVj?=
 =?utf-8?B?blR0Zm5pQXBMVUdQaC85d1FUeWd0RXVQNERXa2ZxYTc0UUt6L2c0N2pCcHla?=
 =?utf-8?B?Y2VIcndXMHpDOXBMVGVZN3phVm9VSHVpRzFrT0JDbnIvekFTZXpjSkdmSU5G?=
 =?utf-8?B?MnJQZjVlaWRlbW5HTi9FOForZTFUcGF3ZmVWZ0llRjdCZ3R0TW85cFVHNVQz?=
 =?utf-8?B?eUxobEtTNEFYb202S1NDRmVlRFdIa3V6dVNDaDMwTSt5UndDZ21LOW50Zk40?=
 =?utf-8?B?TlI2U2VIdEVET0oxMTdNdVJUbDZJcTJFekExeFRneTVwQjJHOGk5K0dIZmdi?=
 =?utf-8?B?WVYrc1Y5Sk1QQjVzRVJEK3FqaDQ5WEJnUFFFYzFWNmpWb0dpUHlFOEJvL0ho?=
 =?utf-8?B?aGVrcm1VaVZlTzFnWkI0M3lJeUkwS1NuT1FCTzJOWk14NTFiYkI4MWplWVZZ?=
 =?utf-8?B?bHdZQ1VXcjhsVkJBSEYvZk5CL0h1VExSTXpyQTB3NXg0N2x5eTdTZWFzWS9v?=
 =?utf-8?B?V0lEUGtIUWt1eGg1M1N2N045TStqdmlackpNb1VFSGY0cmRkM3VpMzBvSFRX?=
 =?utf-8?B?eHIxVW1Oa0VTd29lTDlVaEI0S2c3eThYNHNOc1RvbG9OOEkwZUczeHBYL2pp?=
 =?utf-8?B?TG9qVlg3c2xENmRScDNpd2F4Mnc3enhJUWFlK1Q5TkhDM3N1SFVmL1I5akI5?=
 =?utf-8?B?aUlvUUloN0Z4cy9PZWhxSUNRYXFNZ05zclhHM3F0TjhrRHN4SHdESjVhY1R1?=
 =?utf-8?B?cnVHMFkxREZtTHFiREFzTlVQekNwaFp4Y1lUbzVkVE5oYncxTG1qaFJLT2JK?=
 =?utf-8?B?VGlTOHBDLy84OWVzdllEZk96Q0FpNjRqNDVyMEVoRHJyQWtPSW1UOHZkUysr?=
 =?utf-8?B?WGJnOUV0OXAzME1PYkZvcjdvYi8vRlpleVRCNkJUa0JRMlBYMHMweS9kZUhh?=
 =?utf-8?B?SGs1NVJvM0lsTUZ1U1YxSGo3c3hOV2Z5cTNLVUJJN3hyUGpLVDcybUs1cGlV?=
 =?utf-8?B?dEQ4aWdRS1lkdWJMYmdneUpXblBxeUsxN1AyTmFUUVR1OWoySDQ4UHNaVnR3?=
 =?utf-8?B?eVAzMml3dW9vNEZpT1hBR1psOXZBZktaRHA1WTJuaEVwVVdVUFdxbGhyaW90?=
 =?utf-8?B?a2pUZ0VSbDFhL0pXU1M2ajQxR3k5aWFOaU9WWU0rc3NOdjFjdjVuVFhaRGJt?=
 =?utf-8?B?VEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <43EC9E5605D4684581A5E0F14D45AE6B@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 897cff95-538a-48ad-b51c-08dc10341afb
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2024 10:25:15.6457 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: t3cYcyJYkAJeB2PTF1hK4lM//5yz80gwTdOKzCReQwoemtxr0GRHI7d1SOLRIIAodms8Frp7zsxvFi83QrlTdLMmeUbk74exwKRkW+lx208=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5008
X-OriginatorOrg: intel.com
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

T24gVGh1LCAyMDI0LTAxLTA0IGF0IDEwOjMwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEds
aXRjaGVzIGRlYXNzZXJ0aW5nIHRoZSBjb25uZWN0b3IgSFBEIGxpbmUgY2FuIGxlYWQgdG8gaW5j
b3JyZWN0bHkNCj4gZGV0ZWN0aW5nIGEgZGlzY29ubmVjdCBldmVudCAoYSBnbGl0Y2ggYXNzZXJ0
aW5nIHRoZSBsaW5lIHdpbGwgb25seQ0KPiBjYXVzZSBhIHJlZHVuZGFudCBjb25uZWN0LT5kaXNj
b25uZWN0IHRyYW5zaXRpb24pLiBUaGUgc291cmNlIG9mIHN1Y2gNCj4gYQ0KPiBnbGl0Y2ggY2Fu
IGJlIG5vaXNlIG9uIHRoZSBsaW5lIG9yIGEgMC41bXMtMW1zIE1TVCBJUlFfSFBEIHB1bHNlLg0K
PiBUeXBlQw0KPiBwb3J0cyBpbiB0aGUgRFAtYWx0IG9yIFRCVC1hbHQgbW9kZSBmaWx0ZXIgb3V0
IHRoZXNlIGdsaXRjaGVzDQo+IGluZXJuYWxseSwNCj4gYnV0IGZvciBvdGhlcnMgdGhlIGRyaXZl
ciBoYXMgdG8gZG8gdGhpcy4gTWFrZSBpdCBzbyBieSBwb2xsaW5nIHRoZQ0KPiBIUEQNCj4gbGlu
ZSBvbiB0aGVzZSBjb25uZWN0b3JzIGZvciA0IG1zLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSW1y
ZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2Fu
ZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIHwgMTMgKysrKysrKysrKystLQ0KPiDCoGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYyB8wqAgOSArKysrKysrKysNCj4gwqBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmggfMKgIDEgKw0KPiDCoDMgZmls
ZXMgY2hhbmdlZCwgMjEgaW5zZXJ0aW9ucygrKSwgMiBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gYi9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gaW5kZXggZjA0OTI2ZDRhYTgw
ZC4uNzdiYTZkZTZiYTA4NyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcC5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZHAuYw0KPiBAQCAtNTQ2MCwxMSArNTQ2MCwyMCBAQCBib29sDQo+IGludGVsX2RpZ2l0YWxf
cG9ydF9jb25uZWN0ZWRfbG9ja2VkKHN0cnVjdCBpbnRlbF9lbmNvZGVyICplbmNvZGVyKQ0KPiDC
oHsNCj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICpkZXZfcHJpdiA9
IHRvX2k5MTUoZW5jb2Rlci0NCj4gPmJhc2UuZGV2KTsNCj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVj
dCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0ID0NCj4gZW5jX3RvX2RpZ19wb3J0KGVuY29k
ZXIpOw0KPiArwqDCoMKgwqDCoMKgwqBib29sIGlzX2dsaXRjaF9mcmVlID0NCj4gaW50ZWxfdGNf
cG9ydF9oYW5kbGVzX2hwZF9nbGl0Y2hlcyhkaWdfcG9ydCk7DQo+IMKgwqDCoMKgwqDCoMKgwqBi
b29sIGlzX2Nvbm5lY3RlZCA9IGZhbHNlOw0KPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfd2FrZXJl
Zl90IHdha2VyZWY7DQo+IMKgDQo+IC3CoMKgwqDCoMKgwqDCoHdpdGhfaW50ZWxfZGlzcGxheV9w
b3dlcihkZXZfcHJpdiwgUE9XRVJfRE9NQUlOX0RJU1BMQVlfQ09SRSwNCj4gd2FrZXJlZikNCj4g
LcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGlzX2Nvbm5lY3RlZCA9IGRpZ19wb3J0LT5j
b25uZWN0ZWQoZW5jb2Rlcik7DQo+ICvCoMKgwqDCoMKgwqDCoHdpdGhfaW50ZWxfZGlzcGxheV9w
b3dlcihkZXZfcHJpdiwgUE9XRVJfRE9NQUlOX0RJU1BMQVlfQ09SRSwNCj4gd2FrZXJlZikgew0K
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdW5zaWduZWQgbG9uZyB3YWl0X2V4cGly
ZXMgPSBqaWZmaWVzICsNCj4gbXNlY3NfdG9famlmZmllc190aW1lb3V0KDQpOw0KPiArDQo+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkbyB7DQo+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaXNfY29ubmVjdGVkID0gZGlnX3BvcnQtPmNvbm5l
Y3RlZChlbmNvZGVyKTsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBpZiAoaXNfY29ubmVjdGVkIHx8IGlzX2dsaXRjaF9mcmVlKQ0KPiArwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBicmVh
azsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqB1c2xl
ZXBfcmFuZ2UoMTAsIDMwKTsNCj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0gd2hp
bGUgKHRpbWVfYmVmb3JlKGppZmZpZXMsIHdhaXRfZXhwaXJlcykpOw0KPiArwqDCoMKgwqDCoMKg
wqB9DQo+IMKgDQo+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gaXNfY29ubmVjdGVkOw0KPiDCoH0N
Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0K
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBpbmRleCA4MGFl
ZDllODc5MjdhLi5mMzQ3NDNlNmVlZWQyIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX3RjLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF90Yy5jDQo+IEBAIC0xMjIsNiArMTIyLDE1IEBAIGJvb2wgaW50ZWxfdGNfcG9y
dF9pbl9sZWdhY3lfbW9kZShzdHJ1Y3QNCj4gaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkN
Cj4gwqDCoMKgwqDCoMKgwqDCoHJldHVybiBpbnRlbF90Y19wb3J0X2luX21vZGUoZGlnX3BvcnQs
IFRDX1BPUlRfTEVHQUNZKTsNCj4gwqB9DQo+IMKgDQo+ICtib29sIGludGVsX3RjX3BvcnRfaGFu
ZGxlc19ocGRfZ2xpdGNoZXMoc3RydWN0IGludGVsX2RpZ2l0YWxfcG9ydA0KPiAqZGlnX3BvcnQp
DQo+ICt7DQo+ICvCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1ID0g
dG9faTkxNShkaWdfcG9ydC0NCj4gPmJhc2UuYmFzZS5kZXYpOw0KPiArwqDCoMKgwqDCoMKgwqBl
bnVtIHBoeSBwaHkgPSBpbnRlbF9wb3J0X3RvX3BoeShpOTE1LCBkaWdfcG9ydC0+YmFzZS5wb3J0
KTsNCj4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX3RjX3BvcnQgKnRjID0gdG9fdGNfcG9y
dChkaWdfcG9ydCk7DQo+ICsNCj4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuIGludGVsX3BoeV9pc190
YyhpOTE1LCBwaHkpICYmICF0Yy0+bGVnYWN5X3BvcnQ7DQo+ICt9DQo+ICsNCj4gwqAvKg0KPiDC
oCAqIFRoZSBkaXNwbGF5IHBvd2VyIGRvbWFpbnMgdXNlZCBmb3IgVEMgcG9ydHMgZGVwZW5kaW5n
IG9uIHRoZQ0KPiDCoCAqIHBsYXRmb3JtIGFuZCBUQyBtb2RlIChsZWdhY3ksIERQLWFsdCwgVEJU
KToNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMu
aA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuaA0KPiBpbmRleCA5
MzZmYTJkYWFhNzRhLi4yNmM0MjY1MzY4YzFhIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3RjLmgNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF90Yy5oDQo+IEBAIC0xNSw2ICsxNSw3IEBAIHN0cnVjdCBpbnRlbF9lbmNv
ZGVyOw0KPiDCoGJvb2wgaW50ZWxfdGNfcG9ydF9pbl90YnRfYWx0X21vZGUoc3RydWN0IGludGVs
X2RpZ2l0YWxfcG9ydA0KPiAqZGlnX3BvcnQpOw0KPiDCoGJvb2wgaW50ZWxfdGNfcG9ydF9pbl9k
cF9hbHRfbW9kZShzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0DQo+ICpkaWdfcG9ydCk7DQo+IMKg
Ym9vbCBpbnRlbF90Y19wb3J0X2luX2xlZ2FjeV9tb2RlKHN0cnVjdCBpbnRlbF9kaWdpdGFsX3Bv
cnQNCj4gKmRpZ19wb3J0KTsNCj4gK2Jvb2wgaW50ZWxfdGNfcG9ydF9oYW5kbGVzX2hwZF9nbGl0
Y2hlcyhzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0DQo+ICpkaWdfcG9ydCk7DQo+IMKgDQo+IMKg
Ym9vbCBpbnRlbF90Y19wb3J0X2Nvbm5lY3RlZChzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
cik7DQo+IMKgDQoNCg==
