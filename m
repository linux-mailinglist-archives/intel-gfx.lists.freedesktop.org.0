Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FB2575ADD
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Jul 2022 07:21:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25595112A44;
	Fri, 15 Jul 2022 05:21:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4ACA112967
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Jul 2022 05:21:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1657862505; x=1689398505;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=JHnfi/+JWfx4IkRFJ46o7St2UaR7QF4iyL+Jhj91r18=;
 b=T6GZ/PvpDBWemZda6QWN51P48FDBFjmxDqMlYMexsR0thRpOE92/XgPM
 stwlLI/vjI9sMOmxltYQacGfQWpTjkCU/DakJkuve1OzLX4iqe09N8eAf
 0qI/Er8oWJRTtRdGMhdtzb7uLMG7N6AejScg92THPLGjeKLL1kwA77bVB
 OhGWU2q8DjP2bb7okX5lWEpu1no28dhFJde5RKVPEZ4OlN2h5RuzTd2/y
 l71JpRlXX0/daQ1+O6fcGaHfxCM0wd7GtnmTD9yYt724HPH/lJwRRsf9I
 3OsCVugy0hQAyTgLMJFVvUJWlrSTIAMWFwrT+E6sh8mPJ9ZcFBE6W5lDE Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10408"; a="347381459"
X-IronPort-AV: E=Sophos;i="5.92,272,1650956400"; d="scan'208";a="347381459"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jul 2022 22:21:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,272,1650956400"; d="scan'208";a="623716041"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga008.jf.intel.com with ESMTP; 14 Jul 2022 22:21:44 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Thu, 14 Jul 2022 22:21:43 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Thu, 14 Jul 2022 22:21:43 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Thu, 14 Jul 2022 22:21:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YkCtUrZ8V8537UAhWxZc3RlyTMJwN6f4cP/tUoPjfoAoHWmPRKKANo79wNfZG1FAtt6kcnLHa0z+MhsNCDtIDYKdVRo5Fnpx4uX33PiT52yzEfneEM9131F/5KA/292a1gz8D5v83VAM+Cs9EDLE5dzXj7FSfSm8jdnhgFDDrp29GawiUxA3BN1LpMmwyz+Sho+eNw7cJzPJb5bRAXhHjdeIHWsQnd1aG8vWLrLbFUBj7ShuSJ6/cUzSMeB0VPDIPSCxKhwHiFIvKCFw6WHNDhWXTHWnDuYgJTBSzXsKt9MmeL6nBjvNujKzsa79jCGaCv2yYjM4AIsZccx8QK/Eag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JHnfi/+JWfx4IkRFJ46o7St2UaR7QF4iyL+Jhj91r18=;
 b=b+MvLG9KX2JGo6FcsS66aQiVptJAwQBWB+JeKm126yQOYT8STvHsnorySgmHihskaVljyhxDUicJreLA/TkRlFVQN1voIuBOjrFCxINlgPVf0Rx38BmLjAIpOvzzuv848h6jrmm0JYH1qJfjHBglQwASRA8b7c2nI8eSWhNIDqzGrPFt1vogaVeVpDMF8pGwc+u4VQPCnwX3OHixC1jg5cS65g7PLoA+3ww9uvVx250fdYsJm5cVwc/0LQXv9lKUL6j3zL3VXzK1s5gDEK4nYFFiv5eTZ/Z2EHRd1ig/k2KzdbHjT6MwDqrF6L1Zra02SFeEMO8oi8HNee6wkfLDbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BYAPR11MB2807.namprd11.prod.outlook.com (2603:10b6:a02:c3::29) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5417.25; Fri, 15 Jul 2022 05:21:42 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95dc:fd09:6d3f:c52c]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::95dc:fd09:6d3f:c52c%3]) with mapi id 15.20.5438.012; Fri, 15 Jul 2022
 05:21:41 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Souza, Jose" <jose.souza@intel.com>
Thread-Topic: [PATCH 1/2] Revert "drm/i915/display: Ensure PSR gets disabled
 if no encoders in new state"
Thread-Index: AQHYl5ORGlMMxAXU/UewU0ahVgkRqK1+5mCA
Date: Fri, 15 Jul 2022 05:21:41 +0000
Message-ID: <2389b4e6ec58fdeea3208830eed87891cf2c425f.camel@intel.com>
References: <20220714150755.154985-1-jose.souza@intel.com>
In-Reply-To: <20220714150755.154985-1-jose.souza@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2ae48645-cb46-4fee-5dfc-08da6621e6d4
x-ms-traffictypediagnostic: BYAPR11MB2807:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 32/fgAl6ClU0IpABmfhbGgKTP7WZf0l5oT1nwbTUjUD4qZKC04quxtUSZO/WCgZig/VUSNvrIzL3Qn0VOLnZa2Zfbh5K9yQ7tIgMcjDKvCNkbdnKdbgDSuXB28KawFcNM+O2cVYxLK1hnZTFwvhk89/aYzAON6pZv/kKFq7tsNFe4sxUaVVCXG4+IOFVOcNStl1Y2ZBjno3hRlOPy1Go0Sd9x60Dnod7+V4mBaBxLfqI/vqq1SXCLmvFmIhvLiowkbbETmosywkTmOLqRqlni/SxBgu/n/duYgV0NVBSYE5cDzC9ZXMslGiYXtzh1FdAvTi4K4Sg8UrtYesQs8qvZdGd5MURMin4Y0nv0mbmFDSwNovnAgOd902YR09Kr8KUKLhLswi8BVKZmCkkWhaIzW/5C18LnhajwarEfKv77g2HvvqV4QdWm7D4xlS0zjZs+wiCdDE4a8ntqx4mHb4J5MGGYX2F/Kqjtj2mONJM9WQgGLlWkjNQTl5tN0ihrlpToGhE4wqY8opv/tRgHATM7MeDPMGe82WgUBz5DjVhR1380fcfdZATs2EOJZU319Cd2iwT/mfQcigGXLG9l4V1P9JO2fMsWyEQcMkW5gZJKQVSwD7mh2AdvD8VVpxALTik/nc4ksvTDn2QqRAEo5KO3m9VbpK1JYyX3lvlZ32kZRjFrtyolCNbsfNEYxWYUnXW8R9BnYpOAUFUDHz63Xtal09UUXEOFChM+C1EfsLBryPSSfb1BwtCHxyRUJEzCQp2zdlnPZ4rsGvHHBfuwlQ9wFaoc3hkVik5tgR34SVx/z+Sb0PZbEXZ/XOSYx7hkmdn
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(136003)(346002)(39860400002)(366004)(376002)(396003)(5660300002)(66556008)(66476007)(66446008)(64756008)(4326008)(8936002)(8676002)(2906002)(122000001)(83380400001)(38100700002)(86362001)(36756003)(82960400001)(38070700005)(66946007)(71200400001)(6486002)(478600001)(91956017)(6636002)(110136005)(316002)(76116006)(2616005)(66574015)(107886003)(41300700001)(6506007)(6512007)(186003)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZGhQY1M0YlVCbHNHa2F1QmwrcW9MNy8vMyttemtBeUcvU3pYVm53dUZKMDJl?=
 =?utf-8?B?VitkMHo0ekVFdTNSYTc5bTh2dkthUHBJaVNIeUJlMVBaNzA2L2xvYzY1allE?=
 =?utf-8?B?T2lmbVcrU0E1b2p3U044OVEzZElvMUsvL3Rma3h0YmdqWFZwUWZSaldEbGRh?=
 =?utf-8?B?VCtxd21pTkFtcFhsM2o0aldQenZYemE0ZDIrSHlPMWlGdENwczdORHNRTzI0?=
 =?utf-8?B?Y01hR2xOMXJZM0xIR1NpNC9mdVdjK3pxdUlVTXRJMElzVFVTT080cTZmRCts?=
 =?utf-8?B?a1V6Y25yNlVvYzEycUsxNkVJTzJyVW5EK0lVZDFWQ2hCSmQwVk54SE1vZFk0?=
 =?utf-8?B?Skh2N2VSZWRGbXFKR04zZjg0Y3kxVDFGQ09GKzBteFI3VGtRakZYdVdWSjZP?=
 =?utf-8?B?TUJFQmdTbVJ1bit6L2JIRHV4Z2lySFhScW81eDc1cTVuNDUyalAxV01uRURo?=
 =?utf-8?B?YWhIdzFCdUlyVkxQK0VLb01Gcm9uYisxb1lST2UvVm1JSHFBUWlrTDlIT21N?=
 =?utf-8?B?S0NtUzBMNkVRK1M1SThQd05LZURMSytFcWUrWG5PVk1JdGN2SVhKbUdTUFhO?=
 =?utf-8?B?bE1aMUc3TzByVks2SmZueUpKMURlY0RDTm1SV1lrVDRlMWZmdGNrb3IxSjF5?=
 =?utf-8?B?YysybFJkMEV3T1c4ZHU1d01tbWFWNlErblFTRXNuSHlubktiRC9BMEpSTkNw?=
 =?utf-8?B?UzYxWkJlZHU5S0lqaXdtd0NxZEg1d0RnRm1wNkMvbnd1Y2tEMXJFdEI4Yy9N?=
 =?utf-8?B?SnpJTkhXVjRqaHpyR3dtQUVGTVFLYU5PbXQ1VzFuOVY4RGFqWVVBdnJHaGhY?=
 =?utf-8?B?SjQ5U2d5ejVvTXR0TzF6Vkl1SDRSRURHMEZnc2Q3STlZSEt5RDBhMG5MLzVX?=
 =?utf-8?B?K2F2Qk5XVzRUa1NZcml1aVdoVVZMbjBsbjZUek52dWFYQTR4cTNXM0JpN25Q?=
 =?utf-8?B?aTdMWm1kYlBLcCtSOTJUWktyblppN0hXZDFaWUIxMTdkQXFMMUtpbFVacjk3?=
 =?utf-8?B?ZE9YLzEyR3NmZmY5YXJJenlmRGVGYWswV3lPQlFPMHZwNkx4QjVCeW1ZUm5W?=
 =?utf-8?B?TWxyeDhNdUlnZkVVS1ZFS2d3WWp0MGZ4KzQxQUFxMWcxUE9WVGN4d3lEVHFK?=
 =?utf-8?B?UHBUZU9LZU9pcGRjU2hqVHI1bEhHUDlEbHVnT0loVUtNQWpjcDMvaDdVZTVi?=
 =?utf-8?B?K0NLRVNNVWsxTDlBUlRvK2RlanJJN3R6SHpyRk01U0FudzNWbHBueHBRUnZU?=
 =?utf-8?B?ODZRbUxWdkcvNnhESnk3dkcwY1Fqd2Erc0hIOTAwS0Y3Kzh4TnRiL1F2YUJC?=
 =?utf-8?B?Ti9hOUVDQzBWcDV2VmVXank4akFKRWU0bUdYN2xkWDN2WXR1MHJDN1RaQldJ?=
 =?utf-8?B?VWJtdTNUeHhqS1RBazM3REpmd1NYYTBWRHk1c3dJb01XclBrcU5MY0tjYnV6?=
 =?utf-8?B?Q2FwTE5WWSs5eHByM1dJODF3Q0dBWWNMZFgxeElnZEFTdGRsNG5qU1hoQXpn?=
 =?utf-8?B?WDBqOHVHZjRoaHFTWWZQa2EyRlBlUVA1dVNhRGRlSzlTM0E5OVR5dnlBQ2dN?=
 =?utf-8?B?Yk5MZmRVYm05d2hOVlh1MXR2cGVnS2VZckRXbjFtVWpNZmR2Njc3akY3WVov?=
 =?utf-8?B?VE5xRTJOVjM3bGxFM0s4TzNuTDJ6TkJOQzhEYU43MHdkVjVNZnIvQVBQSTcw?=
 =?utf-8?B?Y1IvWHJUaWxjV0Z2Nk9aTTZCRTFBUG1pbHNEZlJJZWhDK3JwYkNHOEZmeEtF?=
 =?utf-8?B?NXIvSlY3c1hJcFgvSW1ZTVFpSFdMSTVuZmZjSXk0eVE0cWt6VU5saUZJT3hZ?=
 =?utf-8?B?dHU5dGtUeGR3VzFIcGhQVHlLQ3BBUkNLOHZWMnZFWkpEK2YvRmdxZ1VYdHRG?=
 =?utf-8?B?QTRoTHhwS0Z1YnZNRkhjY1MwNUk4Q09QemREY3liNXF5eFhlcE15ZGVxeDNX?=
 =?utf-8?B?SEVRNUpDT0lsMEZYSmhTa09qeXVBV2Z6SkZiMnVFTmRDckExZ2g5Z3RJd1Ns?=
 =?utf-8?B?anFHNXZSRVp5SkxPelM5ZzRxeXI2ZjZJSlJ5SUpJa3V2c1A4M1JLNGRzVlA4?=
 =?utf-8?B?T3V0aDhlNTUyaFR3dGNGUmhrMnlzWlkyZytiL1hXSEEvVmRJNUNWOE4wOU1K?=
 =?utf-8?B?ODVPN2JDNDdXdnErVnpoRGJ6UnlReVJSM0Q2d0hTMDFDc0FjM1ZObkF5Q0V1?=
 =?utf-8?B?OHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <847529640C33BB4999EE22448E54C325@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ae48645-cb46-4fee-5dfc-08da6621e6d4
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2022 05:21:41.8509 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: K7iIEFmvvb7xztpWO/vzaZ1PLvTkXP1ECzXYQumkEpJA2JDUlTBvB3ERhkKS3Jo9XzIhA9xlx2KZrfwANqziUCWnrIFhvrMgabGKNjWZ3kA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2807
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] Revert "drm/i915/display: Ensure PSR
 gets disabled if no encoders in new state"
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

T24gVGh1LCAyMDIyLTA3LTE0IGF0IDA4OjA3IC0wNzAwLCBKb3PDqSBSb2JlcnRvIGRlIFNvdXph
IHdyb3RlOg0KPiBUaGlzIHBhdGNoZXMgZml4ZXMgYSBpc3N1ZSBidXQgbm90IGluIHRoZSByaWdo
dCB3YXkgYXMNCj4gZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoKSB3aWxsIGlu
dGVyYXRlIG92ZXIgYWxsIENSVENzDQo+IG5vdCBvbmx5IHRoZSBjcnRjIHBhc3NlZCBhcyBwYXJh
bWV0ZXIsIGFsc28gdGhpcyB0d28gZm9yX2VhY2ggbG9vcHMNCj4gYXJlIG5vdCBuZWNlc3Nhcnkg
YW5kIG9ubHkgbWFrZSBjb2RlIGhhcmRlciB0byB1bmRlcnN0YW5kLg0KDQpSZXZpZXdlZC1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IA0KPiBQcm9wZXIg
Zml4IHdpbGwgYmUgZGlzY3Vzc2VkIGluIHRoZSBuZXh0IHBhdGNoLg0KPiANCj4gVGhpcyByZXZl
cnRzIGNvbW1pdCA3NWY2NjQ5MDNkODY3Mjg5NzMzM2I4NmJiNDUwMzM1ZWM2NDg2YWQ1Lg0KPiAN
Cj4gQ2M6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBDYzog
U3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+IFNp
Z25lZC1vZmYtYnk6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCA1
MyArKysrKysrKysrLS0tLS0tLS0tLQ0KPiAtLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMjIgaW5z
ZXJ0aW9ucygrKSwgMzEgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggOTA1OTlkZDFjYjFiNS4uZTZhODcwNjQxY2Qy
NSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBA
IC0xODYzLDQ1ICsxODYzLDM2IEBAIHZvaWQgaW50ZWxfcHNyX3ByZV9wbGFuZV91cGRhdGUoc3Ry
dWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ICAJCQkJc3RydWN0IGludGVsX2Ny
dGMgKmNydGMpDQo+ICB7DQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0b19p
OTE1KHN0YXRlLT5iYXNlLmRldik7DQo+IC0Jc3RydWN0IGludGVsX2NydGNfc3RhdGUgKm5ld19j
cnRjX3N0YXRlLCAqb2xkX2NydGNfc3RhdGU7DQo+IC0JaW50IGk7DQo+ICsJY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiArCQlpbnRlbF9hdG9taWNfZ2V0X25l
d19jcnRjX3N0YXRlKHN0YXRlLCBjcnRjKTsNCj4gKwlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5j
b2RlcjsNCj4gIA0KPiAgCWlmICghSEFTX1BTUihpOTE1KSkNCj4gIAkJcmV0dXJuOw0KPiAgDQo+
IC0JZm9yX2VhY2hfb2xkbmV3X2ludGVsX2NydGNfaW5fc3RhdGUoc3RhdGUsIGNydGMsDQo+IG9s
ZF9jcnRjX3N0YXRlLA0KPiAtCQkJCQkgICAgbmV3X2NydGNfc3RhdGUsIGkpIHsNCj4gLQkJc3Ry
dWN0IGludGVsX2VuY29kZXIgKmVuY29kZXI7DQo+IC0JCXUzMiBvbGRfbmV3X2VuY29kZXJfbWFz
ayA9IG9sZF9jcnRjX3N0YXRlLQ0KPiA+dWFwaS5lbmNvZGVyX21hc2sgfA0KPiAtCQkJbmV3X2Ny
dGNfc3RhdGUtPnVhcGkuZW5jb2Rlcl9tYXNrOw0KPiAtDQo+IC0JCWZvcl9lYWNoX2ludGVsX2Vu
Y29kZXJfbWFza193aXRoX3BzcihzdGF0ZS0+YmFzZS5kZXYsDQo+IGVuY29kZXIsDQo+IC0JCQkJ
CQkgICAgIG9sZF9uZXdfZW5jb2Rlcl9tYQ0KPiBzaykgew0KPiAtCQkJc3RydWN0IGludGVsX2Rw
ICppbnRlbF9kcCA9DQo+IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gLQkJCXN0cnVjdCBp
bnRlbF9wc3IgKnBzciA9ICZpbnRlbF9kcC0+cHNyOw0KPiAtCQkJYm9vbCBuZWVkc190b19kaXNh
YmxlID0gZmFsc2U7DQo+ICsJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl9tYXNrX3dpdGhfcHNyKHN0
YXRlLT5iYXNlLmRldiwgZW5jb2RlciwNCj4gKwkJCQkJICAgICBjcnRjX3N0YXRlLQ0KPiA+dWFw
aS5lbmNvZGVyX21hc2spIHsNCj4gKwkJc3RydWN0IGludGVsX2RwICppbnRlbF9kcCA9IGVuY190
b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gKwkJc3RydWN0IGludGVsX3BzciAqcHNyID0gJmludGVs
X2RwLT5wc3I7DQo+ICsJCWJvb2wgbmVlZHNfdG9fZGlzYWJsZSA9IGZhbHNlOw0KPiAgDQo+IC0J
CQltdXRleF9sb2NrKCZwc3ItPmxvY2spOw0KPiArCQltdXRleF9sb2NrKCZwc3ItPmxvY2spOw0K
PiAgDQo+IC0JCQkvKg0KPiAtCQkJICogUmVhc29ucyB0byBkaXNhYmxlOg0KPiAtCQkJICogLSBQ
U1IgZGlzYWJsZWQgaW4gbmV3IHN0YXRlDQo+IC0JCQkgKiAtIEFsbCBwbGFuZXMgd2lsbCBnbyBp
bmFjdGl2ZQ0KPiAtCQkJICogLSBDaGFuZ2luZyBiZXR3ZWVuIFBTUiB2ZXJzaW9ucw0KPiAtCQkJ
ICogLSBFbmNvZGVyIGlzbid0IHByZXNlbnQgaW4gbmV3IG1hc2sNCj4gLQkJCSAqLw0KPiAtCQkJ
bmVlZHNfdG9fZGlzYWJsZSB8PQ0KPiBpbnRlbF9jcnRjX25lZWRzX21vZGVzZXQobmV3X2NydGNf
c3RhdGUpOw0KPiAtCQkJbmVlZHNfdG9fZGlzYWJsZSB8PSAhbmV3X2NydGNfc3RhdGUtPmhhc19w
c3I7DQo+IC0JCQluZWVkc190b19kaXNhYmxlIHw9ICFuZXdfY3J0Y19zdGF0ZS0NCj4gPmFjdGl2
ZV9wbGFuZXM7DQo+IC0JCQluZWVkc190b19kaXNhYmxlIHw9IG5ld19jcnRjX3N0YXRlLT5oYXNf
cHNyMiAhPQ0KPiBwc3ItPnBzcjJfZW5hYmxlZDsNCj4gLQkJCW5lZWRzX3RvX2Rpc2FibGUgfD0g
IShuZXdfY3J0Y19zdGF0ZS0NCj4gPnVhcGkuZW5jb2Rlcl9tYXNrICYNCj4gLQkJCQkJICAgICAg
ZHJtX2VuY29kZXJfbWFzaygmKGVuY29kZQ0KPiByKS0+YmFzZSkpOw0KPiArCQkvKg0KPiArCQkg
KiBSZWFzb25zIHRvIGRpc2FibGU6DQo+ICsJCSAqIC0gUFNSIGRpc2FibGVkIGluIG5ldyBzdGF0
ZQ0KPiArCQkgKiAtIEFsbCBwbGFuZXMgd2lsbCBnbyBpbmFjdGl2ZQ0KPiArCQkgKiAtIENoYW5n
aW5nIGJldHdlZW4gUFNSIHZlcnNpb25zDQo+ICsJCSAqLw0KPiArCQluZWVkc190b19kaXNhYmxl
IHw9DQo+IGludGVsX2NydGNfbmVlZHNfbW9kZXNldChjcnRjX3N0YXRlKTsNCj4gKwkJbmVlZHNf
dG9fZGlzYWJsZSB8PSAhY3J0Y19zdGF0ZS0+aGFzX3BzcjsNCj4gKwkJbmVlZHNfdG9fZGlzYWJs
ZSB8PSAhY3J0Y19zdGF0ZS0+YWN0aXZlX3BsYW5lczsNCj4gKwkJbmVlZHNfdG9fZGlzYWJsZSB8
PSBjcnRjX3N0YXRlLT5oYXNfcHNyMiAhPSBwc3ItDQo+ID5wc3IyX2VuYWJsZWQ7DQo+ICANCj4g
LQkJCWlmIChwc3ItPmVuYWJsZWQgJiYgbmVlZHNfdG9fZGlzYWJsZSkNCj4gLQkJCQlpbnRlbF9w
c3JfZGlzYWJsZV9sb2NrZWQoaW50ZWxfZHApOw0KPiArCQlpZiAocHNyLT5lbmFibGVkICYmIG5l
ZWRzX3RvX2Rpc2FibGUpDQo+ICsJCQlpbnRlbF9wc3JfZGlzYWJsZV9sb2NrZWQoaW50ZWxfZHAp
Ow0KPiAgDQo+IC0JCQltdXRleF91bmxvY2soJnBzci0+bG9jayk7DQo+IC0JCX0NCj4gKwkJbXV0
ZXhfdW5sb2NrKCZwc3ItPmxvY2spOw0KPiAgCX0NCj4gIH0NCj4gIA0KDQo=
