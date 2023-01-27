Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B8C67DF20
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 09:29:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D194610E402;
	Fri, 27 Jan 2023 08:29:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AFBD210E402
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 08:29:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674808182; x=1706344182;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=vXlqmrXFHA/ITPE1B0z5MMQc5TfbLaqy9HUcChkJrv8=;
 b=LihCYPuc2hqJdJcYU6r6/CiJmINRruLW4cM799XLPQuE2v2RAnW3nV6p
 OhtPE57PJqHO4J81QR8ZT+t4C9AAS4EAYuDIoA6kPjP6uk5m5XQnF9s0H
 ajBjG2tbkybepSk4KKQxOuVIjsjGqoyZtSwpH0gV+Uurw9CzNCIK/TwBK
 Fwdpj0l6O9AI3PjbhZEk97gWS/B68AFX3z8blNj8+HS4C9iUIMZYAT2Pg
 LqhiPx/PPInFMoDnjGRz7wk4c1trb7EkryQayhx+rImSqV8BKg97QTS02
 PEk7tcAGgY28d0f4HofCwElYKZyysoZ2Wmi1W8hn9VufN7V77O/P1344/ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="310665903"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="310665903"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2023 00:29:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10602"; a="640619137"
X-IronPort-AV: E=Sophos;i="5.97,250,1669104000"; d="scan'208";a="640619137"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga006.jf.intel.com with ESMTP; 27 Jan 2023 00:29:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 27 Jan 2023 00:29:41 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 27 Jan 2023 00:29:41 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 27 Jan 2023 00:29:41 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JcbjIp5yEYnBUQPjDEXH25qPJD1Pi5rGwxqPlRDsv4mHQQ+TEhy88JXhKEniOI4otl78Uaa4jT6sJ501clF1yz97c4zCp4vcI9WFH1ag2yaqSzxNUgJhFZ0mhdFCY63T1IzuJ05kVV5VPEgZYYsKzzEioYWbzeHl1ZKJuYBeBSHYCud8/qal29u4H4dYoXsOqMZvqCcmGiWv8oOWLw8Mm0YXTtYBkyqhJD4TyI1e6lxV6Q1+vpD1yq6rWmHebyWgDzKJ3IQSSSE2NiEZRp+aGksbMTHG+vp9TZjWaBCm3dVzOfjqYJXlx9NkxUoxwhktzEMLl7VYq+2DKIJjYdyWAA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vXlqmrXFHA/ITPE1B0z5MMQc5TfbLaqy9HUcChkJrv8=;
 b=kYn/A/eWeVrssJs73LKM+tTT0A32FI6dQVtIVqdDiXkzg2rTCILZKuNegH91USwY+fusgoQHKniRJcOo7811MB2m/QORyvvfhc1SjEMg0kgSfotu6ibaAFV47ZkBhO1KGSdbfoHHff1fUFPnXtE0wwj8WxOTuQfdbx58zEonSMaEm7ZPxKqgaXIqerrzj/GAkPCz2QUcn6Qafjz7X4vaVoys7xIjjFcpXJhyt0ku0miPLN7wtDvCJQcJduHVWrtt0SBGYVI7/ypkMwbUfDR7vmjaH94qdqXcm8ryep91Qt3CXB/CwSu1GehaWSYZtb30RtyQ1Fll7+SDr2qcv9GLUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MN2PR11MB4742.namprd11.prod.outlook.com (2603:10b6:208:26b::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.22; Fri, 27 Jan
 2023 08:29:39 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6723:483:53a2:5569]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6723:483:53a2:5569%6]) with mapi id 15.20.6043.022; Fri, 27 Jan 2023
 08:29:39 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "luca@coelho.fi" <luca@coelho.fi>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/psr: Split sel fetch plane
 configuration into arm and noarm
Thread-Index: AQHZMKoWASGhdOrVbk6AerpMyP62Ja6wkamAgAFf/wA=
Date: Fri, 27 Jan 2023 08:29:39 +0000
Message-ID: <e5b09c05d98f8d31ae78c0ac6b1e5af4d5758b8a.camel@intel.com>
References: <20230125104439.1662832-1-jouni.hogander@intel.com>
 <5a3fd9d547723c726b0f170e894cf471e7eb8ae1.camel@coelho.fi>
In-Reply-To: <5a3fd9d547723c726b0f170e894cf471e7eb8ae1.camel@coelho.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MN2PR11MB4742:EE_
x-ms-office365-filtering-correlation-id: b9f058ce-b51b-4142-9a43-08db0040a19c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gzTWe6/KrRRU56ZIB+ARj9RC9B1YVT8W2LU/geJj7fMS+Q5LFRDIbaUjGNVnDafoeXYB/c7wrxKRoTQ5/1IcmzmV+6kV2n4EzfwPOV+pfFU7U7lWowEdl6d2drHG3iXN/RxffmNR0/DRoN9wCgcxyHNmBVz9PSDxVQVpITTFngtjrf4GAQcTdpY0bNUx7s/2FPNOmG5Ke8JDZTghHPBG8w252YqWsTYu1HomOAhns6NruFAQ5u28XB1IZqcx8i6J4QnVagm9ej26xy05eTsVxA7zmWP2ThlgxB1evFglLk9XeaSkmZlY0piVpga2iIkQShIQp2SUw8lSOE8+G4y3j1b+oPO8QV0wzyE0FRk7iWat7NGZyhKgFL37m0a0VcHGMfl4npdGsO8Wq2mXn4tYuIYcQsY85ZiOUMHiYsDHmYXDp0Z5wLlZbgPevVhPvZSkFarp0pqMAGw20l6EiWu59KMUF2dtGxzpFskg7yu93RDI7vCqAKkLgWDZMn73jOrnxoBk8M9mi0s1CzY0IIXDFDf6bEHmyuf+be+LH7+Y3fAQYNLmzjIVvrOPl3VABSiz6Wu95HjiRH0LTGNL3LmJWpztkWJcGLbtXyzBJFA4KZI7HISo/vsMIbjbPZIbNgFdAa+JvweYrjg2CcKQ8r5MkqpplZMmjkWbrAz2ApT85R7liG9AV+mHRiRYZI8u4VgT
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(366004)(136003)(376002)(346002)(396003)(39860400002)(451199018)(41300700001)(8936002)(26005)(66574015)(86362001)(66556008)(316002)(76116006)(82960400001)(83380400001)(38070700005)(122000001)(36756003)(110136005)(71200400001)(91956017)(38100700002)(64756008)(66946007)(8676002)(66446008)(66476007)(6512007)(2616005)(478600001)(186003)(6486002)(6506007)(2906002)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TkN2R3ZBb0NRbW5kZG12TjFDb1BidVFtclFGY3R3Tml0UGRhOEh5M0JqQmpn?=
 =?utf-8?B?d0tMS3hBdkJ0N2sxMmZRbXV5eExRQTJZL3ptbUNzaTR5NGNSK0padFFUS3l4?=
 =?utf-8?B?dU9QcGdBMysvOTlOczdaMTRYOXZJaFcwZ04zdkc3UWl1d3duVGdBaTJXMUMv?=
 =?utf-8?B?eDIyclMwYjFIeGJVWkdxZlZHbS8rWitwUFh3bTFhZmZTYTFqSFdtR1ZYWXlB?=
 =?utf-8?B?dVEwUndsQXp5L2JlVWhrMk4xVDhRQ0JkU2lLRkNDMlMyaUxLdW4ya21QVW1E?=
 =?utf-8?B?NGwyNm4rVVZ0eEowRGx3eXZsN2Q5eGl0WlN4eEZ0UHpIUGhjNUlHOXZPVEFU?=
 =?utf-8?B?dWhUTUhtY255U1gybDIvZVBuMlZCVHRTWGVBQmpyYjF5alpnWDN6N1l0U2hp?=
 =?utf-8?B?Z2JaNHNpTDVTcE41emxvMHBPYkZWeHkyU21sMWx0OEZIYit4MjJpSVNaVHZC?=
 =?utf-8?B?TExyUEhSbk5kSXpjSm9XZnhFU2J5dnpid0JQSVRIQmtPOEFUSXhtdDVFSnYr?=
 =?utf-8?B?ajg4ZzVsS2hQdDVla1d6eWZQMGZiekpVOEZDRndwM292VHkxUU9XNWE2ZHN3?=
 =?utf-8?B?STNHeTFGd2oxQ3grZjhURCtDWlY4eXZLU2lCNElHaStzT1JHM1ZqS3hHSFhh?=
 =?utf-8?B?a1RqT21DQ21nZGpUNWxqV1ZkQmJsVS9ITkJSR3lTeHdzOFN1VHQySFcyNGMz?=
 =?utf-8?B?andFU29pRmJkRVZFMlJEdTVCOCtEN0R5Tzh2bUN0dkpTaEEzOUllbnM0Q0cw?=
 =?utf-8?B?STJXcEhFYlZiNTRpRDRYZFhQK3U4RlJTSUZORXFkTDV4SUJxUjVGVVc5ZkpR?=
 =?utf-8?B?SGN2cEQwaFc3TE5SVEJIN3AwQ1Zmb1d2RkNsRjhDdnpnZi95dVJuQUprYzlz?=
 =?utf-8?B?ZDNoTlA3eGt3QS9OK0dLZk56R3ZmeTFvejFodFkwMk1kRlNPMC9zeXMxeDBl?=
 =?utf-8?B?NnVPM3dVSXBxTWgvTzRCZ3dsM0FFSE5HTUMydTRVazBCTkhoNlZIKy85MmFw?=
 =?utf-8?B?S3g2eHpXU20yeTR0OTNzMk9YcHo4clF5NjJacXVzbTlzUTFYNlNUZ3Vib1VX?=
 =?utf-8?B?ZGl4cHViWmVhbEJYeWoxWk1vZGliY1M3aVRCVnpTNXRBQWM3aWprVis1NjN5?=
 =?utf-8?B?aU45ellCU1JKYXFMS1lCR09sN005UTJrVWdKY2d5ODlsUnJPcVRFS2hpYzRN?=
 =?utf-8?B?SitNeUtLSDE4L1Q2blhiLzYveE95SlBkVEg0WlZLMGpuSjJjRmZ5bkpaY0c3?=
 =?utf-8?B?aUhrUEMwTDgyOTFVaDFMLzBqOVorLytRZFhEZzZXc2V4Y3dacTdtNCtMc0ZJ?=
 =?utf-8?B?Q09hNmhDOVo2RVhNVVRCdDJLVDlweWd5RzJtVGNXOUdsMkZNbUMyVzR0NEZr?=
 =?utf-8?B?M0tCSStIbTFYSXJzWTAzbGt2TG9rUUVrR0l0cnlXWU44U2F6RXE1bVhUQzY3?=
 =?utf-8?B?Nm9oVVBoeU5UMG5LZ1g3NHFTaU1OUGtBOHp3U2tZOTJvdWpSYTMrWlNlWVhO?=
 =?utf-8?B?d1U0a2JLTlVUcDJtUU9ZUUFrMTJzY1g0K2Vab1duTHBaMnNrb2VWOGFjQkht?=
 =?utf-8?B?WFBuM1lyL3lzd2ordVAvTkE3L0FzZm95ZUR6RjJRamMrRlZVSjB5aGdZL2hr?=
 =?utf-8?B?Vy9WSjYycEdqT1BVeUNtVmt3VC9mRHk4THB2U0FpUHVCZyt6Mk1OeVg1cVBR?=
 =?utf-8?B?ck5GUnJwV1hKcTFDRjdxVUQ0NE83ZEIvcUpwSDR0Rko4MHZEV0s5WEd6dmsx?=
 =?utf-8?B?Rm9lUmxqWENLc21mREg0TCtaRmtZMkJ2dVNBQU00c0Z1b2RVY0JIVDJkSHk2?=
 =?utf-8?B?VTlPeWEvdk1hTkREOWU5aFBieUYwZWRxdlc5dmJGODNKb20yZ2c0L1lkSjFs?=
 =?utf-8?B?UDNzdnNwalF5Z3NvelVzdjFLck1obHFmOUh6YzRKaU10MnVkeUw5T0dVdUFY?=
 =?utf-8?B?TjFTdWhHNXFLQ0IvTXZwS2Myb0F3dHlxU2s1NGl2V0krMEZmMldUSEpiUmNM?=
 =?utf-8?B?Y2NzUGFqd3BGOVhNMlpyNU9Cclc4WDhhenArL0dMN2xhR3p5dnd6UW1Wa2tM?=
 =?utf-8?B?bzNNemZjVUZVMGpCTG5McXU5YXd3NnhnbGZlVjlYMVNSR1FxYkd6TkptOTZh?=
 =?utf-8?B?ZnBjYnBBUjdpVWJodGwzOFJlTll1T1l6TjE3NjdYWUZxMTJBc2U5azVyVDlR?=
 =?utf-8?B?dHc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2D9053BD1E06154ABDC96FF4A996D575@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9f058ce-b51b-4142-9a43-08db0040a19c
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2023 08:29:39.2202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NEfjDjiIjYoCga9MnJ0JoxrCK4MUFBtDKglSfnISVjDfZ0atjiCQEHV4FKfQ/MTmGDacW+EdK/LxnLHblw+/A+lg6/6Ht94aoe9D36vS63A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4742
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/psr: Split sel fetch plane
 configuration into arm and noarm
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

T24gVGh1LCAyMDIzLTAxLTI2IGF0IDEzOjI5ICswMjAwLCBMdWNhIENvZWxobyB3cm90ZToNCj4g
T24gV2VkLCAyMDIzLTAxLTI1IGF0IDEyOjQ0ICswMjAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+ID4gPiBTRUxfRkVUQ0hfQ1RMIHJlZ2lzdGVycyBhcmUgYXJtZWQgaW1tZWRpYXRlbHkgd2hl
biBwbGFuZSBpcw0KPiA+ID4gZGlzYWJsZWQuDQo+ID4gPiBTRUxfRkVUQ0hfKiBpbnN0YW5jZXMg
b2YgcGxhbmUgY29uZmlndXJhdGlvbiBhcmUgdXNlZCB3aGVuIGRvaW5nDQo+ID4gPiBzZWxlY3Rp
dmUgdXBkYXRlIGFuZCBub3JtYWwgcGxhbmUgcmVnaXN0ZXIgaW5zdGFuY2VzIGZvciBmdWxsDQo+
ID4gPiB1cGRhdGVzLg0KPiA+ID4gQ3VycmVudGx5IGFsbCBTRUxfRkVUQ0hfKiByZWdpc3RlcnMg
YXJlIHdyaXR0ZW4gYXMgYSBwYXJ0IG9mDQo+ID4gPiBub2FybQ0KPiA+ID4gcGxhbmUgY29uZmln
dXJhdGlvbi4gSWYgbm9hcm0gYW5kIGFybSBwbGFuZSBjb25maWd1cmF0aW9uIGFyZSBub3QNCj4g
PiA+IGhhcHBlbmluZyB3aXRoaW4gc2FtZSB2Ymxhbmsgd2UgbWF5IGVuZCB1cCBoYXZpbmcgcGxh
bmUgYXMgYSBwYXJ0DQo+ID4gPiBvZg0KPiA+ID4gc2VsZWN0aXZlIHVwZGF0ZSBiZWZvcmUgaXQn
cyBQTEFORV9TVVJGIHJlZ2lzdGVyIGlzIHdyaXR0ZW4uDQo+ID4gPiANCj4gPiA+IEZpeCB0aGlz
IGJ5IHNwbGl0dGluZyBwbGFuZSBzZWxlY3RpdmUgZmV0Y2ggY29uZmlndXJhdGlvbiBpbnRvDQo+
ID4gPiBhcm0gYW5kDQo+ID4gPiBub2FybSB2ZXJzaW9ucyBhbmQgY2FsbCB0aGVtIGFjY29yZGlu
Z2x5LiBXcml0ZSBTRUxfRkVUQ0hfQ1RMIGluDQo+ID4gPiBhcm0NCj4gPiA+IHZlcnNpb24uDQo+
ID4gPiANCj4gPiA+IENjOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiA+ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUgU291emEgPGpvc2Uuc291emFAaW50
ZWwuY29tPg0KPiA+ID4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+
ID4gPiBDYzogVmlub2QgR292aW5kYXBpbGxhaSA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5j
b20+DQo+ID4gPiBDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3RhbmlzbGF2Lmxpc292c2tpeUBp
bnRlbC5jb20+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhv
Z2FuZGVyQGludGVsLmNvbT4NCj4gPiA+IC0tLQ0KPiANCj4gTG9va3MgZmluZSB0byBtZS4gQSBj
b3VwbGUgb2Ygbml0cGlja3MuDQo+IA0KPiANCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jdXJzb3IuY8KgwqAgfMKgIDIgKy0NCj4gPiA+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDCoMKgwqAgfCAyOQ0KPiA+ID4gKysrKysr
KysrKysrKystLS0tLQ0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3Bzci5owqDCoMKgwqDCoCB8wqAgNiArKystDQo+ID4gPiDCoC4uLi9kcm0vaTkxNS9kaXNwbGF5
L3NrbF91bml2ZXJzYWxfcGxhbmUuY8KgwqDCoCB8wqAgNCArKy0NCj4gPiA+IMKgNCBmaWxlcyBj
aGFuZ2VkLCAzMCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkNCj4gPiA+IA0KPiA+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3Vyc29yLmMN
Cj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYw0KPiA+
ID4gaW5kZXggZDE5MGZhMGQzOTNiLi41MDIzMmNlYzQ4ZTAgMTAwNjQ0DQo+ID4gPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jDQo+ID4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2N1cnNvci5jDQo+ID4gPiBAQCAtNTMy
LDcgKzUzMiw3IEBAIHN0YXRpYyB2b2lkIGk5eHhfY3Vyc29yX3VwZGF0ZV9hcm0oc3RydWN0DQo+
ID4gPiBpbnRlbF9wbGFuZSAqcGxhbmUsDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoHNrbF93cml0ZV9jdXJzb3Jfd20ocGxhbmUsIGNydGNfc3RhdGUpOw0KPiA+ID4gwqAN
Cj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpZiAocGxhbmVfc3RhdGUpDQo+ID4gPiAtwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfcHNyMl9wcm9ncmFtX3BsYW5lX3NlbF9mZXRjaChw
bGFuZSwNCj4gPiA+IGNydGNfc3RhdGUsIHBsYW5lX3N0YXRlLCAwKTsNCj4gPiA+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9wc3IyX3Byb2dyYW1fcGxhbmVfc2VsX2ZldGNo
X2FybShwbGFuZSwNCj4gPiA+IGNydGNfc3RhdGUsIHBsYW5lX3N0YXRlLCAwKTsNCj4gDQo+IFRo
aXMgZ29lcyB3ZWxsIG92ZXIgODAgY2hhcnMuwqAgRXZlbiB0aG91Z2ggaXQncyBhY2NlcHRlZCB0
byBnbyBvdmVyDQo+IHRoYXQgbm93YWRheXMsIEkgdGhpbmsgaXQncyBzdGlsbCBwcmVmZXJyZWQg
dG8ga2VlcCBpdCBzaG9ydGVyIGFuZA0KPiB0aGlzDQo+IGxpbmUgaXMgZWFzaWx5IGJyZWFrYWJs
ZS4NCj4gDQo+IA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGVsc2UNCj4gPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfcHNyMl9kaXNhYmxlX3BsYW5lX3NlbF9mZXRjaChw
bGFuZSwNCj4gPiA+IGNydGNfc3RhdGUpOw0KPiA+ID4gwqANCj4gPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiA+IGluZGV4IDdkNGExNWEyODNh
MC4uNjNiNzljNjExOTMyIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9wc3IuYw0KPiA+ID4gQEAgLTE1NTksNyArMTU1OSwyNiBAQCB2b2lkDQo+ID4g
PiBpbnRlbF9wc3IyX2Rpc2FibGVfcGxhbmVfc2VsX2ZldGNoKHN0cnVjdCBpbnRlbF9wbGFuZSAq
cGxhbmUsDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfZGVfd3JpdGVfZncoZGV2X3ByaXYs
IFBMQU5FX1NFTF9GRVRDSF9DVEwocGlwZSwNCj4gPiA+IHBsYW5lLT5pZCksIDApOw0KPiA+ID4g
wqB9DQo+ID4gPiDCoA0KPiA+ID4gLXZvaWQgaW50ZWxfcHNyMl9wcm9ncmFtX3BsYW5lX3NlbF9m
ZXRjaChzdHJ1Y3QgaW50ZWxfcGxhbmUNCj4gPiA+ICpwbGFuZSwNCj4gPiA+ICt2b2lkIGludGVs
X3BzcjJfcHJvZ3JhbV9wbGFuZV9zZWxfZmV0Y2hfYXJtKHN0cnVjdCBpbnRlbF9wbGFuZQ0KPiA+
ID4gKnBsYW5lLA0KPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGNvbnN0IHN0cnVjdA0KPiA+
ID4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqBjb25zdCBzdHJ1Y3QNCj4gPiA+IGludGVsX3BsYW5lX3N0YXRlICpwbGFuZV9zdGF0ZSwN
Cj4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnQgY29sb3JfcGxhbmUpDQo+ID4gPiArew0K
PiA+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmRldl9wcml2ID0g
dG9faTkxNShwbGFuZS0NCj4gPiA+ID5iYXNlLmRldik7DQo+IA0KPiBTaG91bGQgeW91IHVzZSBp
OTE1IGluc3RlYWQgb2YgZGV2X3ByaXY/IEkndmUgaGVhcmQgYW5kIHJlYWQNCj4gZWxzZXdoZXJl
DQo+IHRoYXQgdGhpcyBpcyBnZW5lcmFsbHkgYSBkZXNpcmVkIGNoYW5nZS7CoCBNdWNoIGVhc2ll
ciB0byB1c2UgYWx3YXlzDQo+IHRoZQ0KPiBzYW1lIGxvY2FsIG5hbWUgZm9yIHRoaXMga2luZCBv
ZiB0aGluZy7CoCBUaG91Z2ggdGhpcyBmaWxlIGlzIGFscmVhZHkNCj4gaW50ZXJzcGVyc2VkIHdp
dGggYm90aCB2ZXJzaW9ucy4uLg0KPiANCj4gUmVnYXJkbGVzcyBvZiB0aGVzZSBuaXRwaWNrcyAo
Y2hhbmdlIHRoZW0gaWYgeW91IHdhbnQpOg0KDQpUaGFuayB5b3UgTHVjYSBmb3IgY2hlY2tpbmcg
bXkgcGF0Y2guIFNlbnQgbmV3IHZlcnNpb24gYWRkcmVzc2luZyB5b3VyDQpjb21tZW50cy4NCg0K
DQo+IFJldmlld2VkLWJ5OiBMdWNhIENvZWxobyA8bHVjaWFuby5jb2VsaG9AaW50ZWwuY29tPg0K
PiANCj4gLS0NCj4gQ2hlZXJzLA0KPiBMdWNhLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoN
Cg==
