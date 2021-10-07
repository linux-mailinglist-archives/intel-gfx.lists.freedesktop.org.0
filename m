Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCCC424CE6
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Oct 2021 07:53:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B03E76E830;
	Thu,  7 Oct 2021 05:52:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 50DB46E830
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Oct 2021 05:52:57 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="287055207"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="287055207"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 22:52:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="590026949"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 06 Oct 2021 22:52:55 -0700
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Wed, 6 Oct 2021 22:52:55 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Wed, 6 Oct 2021 22:52:55 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Wed, 6 Oct 2021 22:52:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hsZOgSPaybdY7ZHBZ6diP1eD+HOvQNQzmJ7XsjiZRVShb0aSNoZUn4f9b81xNyLwikzhFPcnFza2H6OR/mSQKBHJD+m9KqE2IK7tTJzev675hWKbwEupZW67BXH7RhtBVdbFwUllB+y1C8vurmQQJgGbFv6QZkkURV34jtGShmNLyL/hVMHxsl5EPs1a+eD/DZ3wz59E8EXGFVUBwIhs85O/5TuLikmpVOH+2APIKf/4B3cn37/AfS7ucW9OlBXsAcu8pnOn2fZ3YLCCIFcmn4z6nKFpFIYHb9Z12kHN4EfMwXl531stild99DH8LX7E9+ky9ADl4su+1SKUGbFNYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XUf0o2TLy+PWt2W2C67xYxiIMA2fCOxNcXkBiktSI3g=;
 b=UMt+dNCn4AA6Z4nUW3HDqZxD5wI1A9/5x0YNuTe723UjjTebz4u46NU4/C0dlhcdFD429FXFilVTH9WEfSTCRR9qQ4COkyQt11S7pmDidtVsyN1nHRAHst1lA8Rrexjsc1942rnwjnJZ+9ru2zmCavUXhuA5Z9w9bmVLBzIc6DJMQ8BqENX632CqRGUYDqU6stLdwMQP9bcAQfmrelNdP8vLxlEJqdSHvt3y74l7ycUhsf6Px1Fob6uT01rsnGUu+Khhgwg0407O/dFjhAyQWrKBq2vDln9v2+ZWD81Tx8shHPQHfgVi4bPqNFo4+7dEvlK7Bgimfwjh1x3qpYNS1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XUf0o2TLy+PWt2W2C67xYxiIMA2fCOxNcXkBiktSI3g=;
 b=q25GZMooxDcsEpm/h/hT/ilgWvfs6TFlsMiJROZnln+pnVkzuFWIRNbsRWHueY8iUk7M3lifBAS7ftXAu5stcD37T5h+xBof4rb1TdmXgHBsv1KlHIiHA00I0+QNV4YAYKZ6CL07UlGkvL4k8x72l12Gvk8EQo0ux52eRE+wKKU=
Received: from CO1PR11MB4833.namprd11.prod.outlook.com (2603:10b6:303:99::13)
 by MWHPR11MB1933.namprd11.prod.outlook.com (2603:10b6:300:110::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4587.18; Thu, 7 Oct
 2021 05:52:47 +0000
Received: from CO1PR11MB4833.namprd11.prod.outlook.com
 ([fe80::7963:6713:37b0:c2dd]) by CO1PR11MB4833.namprd11.prod.outlook.com
 ([fe80::7963:6713:37b0:c2dd%9]) with mapi id 15.20.4587.020; Thu, 7 Oct 2021
 05:52:47 +0000
From: "Li, Juston" <juston.li@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Vivi, Rodrigo"
 <rodrigo.vivi@intel.com>, "Gupta, Anshuman" <anshuman.gupta@intel.com>,
 "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Thread-Topic: [PATCH 1/4] drm/i915: Move the pxp plane state computation
Thread-Index: AQHXuw3l8fSjbJzF0UaRO5XI5/A/GqvHCP4A
Date: Thu, 7 Oct 2021 05:52:47 +0000
Message-ID: <8c6ec163d2a7a82da19887026fb75c3e1bfe30df.camel@intel.com>
References: <20211006235704.28894-1-ville.syrjala@linux.intel.com>
 <20211006235704.28894-2-ville.syrjala@linux.intel.com>
In-Reply-To: <20211006235704.28894-2-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.38.4 (3.38.4-1.fc33) 
authentication-results: linux.intel.com; dkim=none (message not signed)
 header.d=none;linux.intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 05cd784c-e194-41dc-d79d-08d98956b0c6
x-ms-traffictypediagnostic: MWHPR11MB1933:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB1933BEED8E8368381041312CFDB19@MWHPR11MB1933.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IAEeOlF269CPVY+tvCLC5HOckh02vnddBhSsIbtUTe7ii3jzXNTTc80tcdW9dZdSs3xvO7tkl+RLNuNTn6RbjsPgKFNqLAPkEI5akXI/tHJRW/1niwNcdjc3E7pj44PRc66XZIeQ+xINCUrY9qZySo1N2/rDbpqyxvlpOeXXxiiIGmq/ju2MU6Gf23aazINlV6enfVNT9noyk4SCLse0zCgp/cHMNVbwn6mazLL4GdZiIND+RtF8ZpZ6QLQ1Hg0Lld4Y7/L2DfMfwUqCi5L16LFz3J5dvheJGCD3IdEaM65kD0RAgythZyz1rhztZeiKBXTcY451FR7KMvZcCoejyL2dRjAfBOVFVvSS9vKgknU1qp7hf3K6DuR4x0U/6brAM8u6w5aKSdej4qMvEBBy6xxeJ94NkZXwqNwiVEI3vbcPvVsCs3L6W5QVle1Eew+cpYQpmqqJ5uv7VKEnnn8zrO9P1L+gH2LSIS3wjLCli6MgLk3ZDxza0p5Vv6J7odKeN+Dc90sbmtIV8Gk0986is77bVUO+R8KQZ0a4w3B71FU8beS1jQfIcn8y57OCX52DBZm5kQGUYzmBOPjRCzh1gdws0uKpAKpmAmjGZ+pQUohJkNTu9+yMqksLuCTZwd9iGrk8JGex09I0qKNvymz7cgpUSnTf1EbJ/jtXtPRoH4vCKOjHxqB9A/nEOvnE4y7NFlbqrucUqrnRqS8X3KH7cw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4833.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(4326008)(122000001)(83380400001)(2906002)(38100700002)(8676002)(8936002)(508600001)(66574015)(186003)(64756008)(36756003)(6512007)(66946007)(66446008)(66476007)(6506007)(5660300002)(71200400001)(66556008)(76116006)(86362001)(6486002)(26005)(38070700005)(54906003)(110136005)(2616005)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aHRXTHc3QzV3aVVFd3QxS1FLY2VHeU9FTExqc0ROZFBQeE1PL3VDRC9aZm52?=
 =?utf-8?B?STdSWjJBTUdyRG9tWHBBQmNSS04vZmJPNmhuZlBSOHZCMjNGS1ZqZU1xcTdq?=
 =?utf-8?B?VmdPYVFTZDFLVkl4M1B0aW9JRVhpRndUKzdNc3ZmSnVGdG5pZHQ0dE8wSmxL?=
 =?utf-8?B?OHNiZ2lZbkJza3kyaFZHSkNGY1NLc0FjR25HYTBxaUhhSkZGS2ZUWGtsMk9z?=
 =?utf-8?B?SjRCRmNYcEJLcHJDeHhrMXB0SzR3SFE1eGo2OGZiRTRaUG03UWtNcjZjUUNh?=
 =?utf-8?B?eFV1UlpSNjY5YnMrRFdnU25vaEl6aTQ0Rld0ejU3Y1lwVWdoWVBTNFEwdlFI?=
 =?utf-8?B?c0lqRER6T3pXekRWVG80MGlNOTJoNldwQzdmaFFtUmdVRDc2TG9RTTBSU1Vp?=
 =?utf-8?B?MjExZk43aFFlMUpMbmtheVh6WFdJeXk4c2UzT0s3WUZFc0RHM3ZuS1p6cmlo?=
 =?utf-8?B?WGZ1K0paYVNxNzdjYzRqT0FkUTdmS1VZaVdrVjVpcURvN3RSb0xmd1hHeU12?=
 =?utf-8?B?amZYY3AvdS9BKzdHTXBRdklxSGd1cWpnWVRDZ0svRmxpa3FZNDRUT2MzT2dn?=
 =?utf-8?B?ZVZIdjVUZDZsQzJlQm5GU2JCYVBJQ3QrWUhKUnVhY3BDbmZ5azNPSXZEKy83?=
 =?utf-8?B?clk1NkdBM1JJY0FvaHlZN2o5WTh4S0p4Z0xnY3d5NTExNTlGR2licmlVWEZG?=
 =?utf-8?B?VDFwL2FKbEJPT1dnaWdVaktvb2wrWVh6L0RLSTd4eklSVFA2ZHBJNkdnN3E5?=
 =?utf-8?B?R0VYMXBGUU5za29KS2VpaUdkU3E4bk9IdjJDOE53UFdwcW1sKy8wWmZQb3lS?=
 =?utf-8?B?a3hTK01KTVJldE5Wcks0ckcwM3RvR25EZU5CNW02RHlqeUljYUJqc3RNT1hQ?=
 =?utf-8?B?ZlQvNTR2OUxTZUw0ZmR0TWVnL2JpYmU0K1d3U0pndlBzN0w2a2g1MDg2U216?=
 =?utf-8?B?WVdKZHBuRWE0U2N6SUJPd1JEMlpvSGtwclFuNFV3MkdyL0pYdHdHL2k2L2Vs?=
 =?utf-8?B?RWtkVGJYMEd6dlVUZUlWZ0ZHdXJTcW1keGxvaVpXc1FmZEc0bkFiNWE5dkMw?=
 =?utf-8?B?RjRZTE16SW8yNzdFSDF3OFRYYXZaYTNDTlBJcTdlMFhCT2Nva205RTdLZU92?=
 =?utf-8?B?dEZnQW1ISStsZ1FySEhPMHRpbE4vbURvYTJVdDRhSGQzaG9janNQeG16K0hy?=
 =?utf-8?B?MmdtTXhrTUR4aGR4UXFnK2FrdjZLWitCTmliSlF1QWkyaGdBejZ5YkpPRDBy?=
 =?utf-8?B?amYyRmsvNHBkSlA3REVSMEIwZi95ZWhWMmFveENpcjNPUlpjTXZRc1ZvRDVZ?=
 =?utf-8?B?SXZ2MjZZN1JzOGFwTzVRamZ5NTRhVUd5bXM3azZ4N0tLbnpuR2dMSVRjd3lJ?=
 =?utf-8?B?SU4zckR5dmVyQkc5RHpSNlZPTDZ2Tjhlclh2ZzhCN293dFNFSkdpdDNPdEZD?=
 =?utf-8?B?OWNkM3JqemJqSFl3d1puUnI3QWVVa2NxL3FYaVFtcEk4dDhNNkxrZEtZc3Qx?=
 =?utf-8?B?VFZrL2svdDZFNHlQdHJIWWtNNFBQR2M1NE1ndHhXT0w1T1ZBeWlOeHJEWUNq?=
 =?utf-8?B?VzFvRHdnSnM2b0RyeTNwTWtiWDlPdXlPMm90cldZMnYrUXR3NXVLMnBzZnAx?=
 =?utf-8?B?TlcrTThZN2lIRm5mTDI5N3JxL1lPNi9UUEN5S2Q3cVZIMU8rcWdLUllZSU83?=
 =?utf-8?B?MXlUUStXYldzYm41Y252WUVWME40T0pCNVJlT283dDI2T2wvbjRXSmhFY1dj?=
 =?utf-8?Q?SoV3yxBbQAPFf1OHAw+bMMO7NjE5neMHrUVMqCx?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9C2301A1BB488144A5700714C7021430@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4833.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 05cd784c-e194-41dc-d79d-08d98956b0c6
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2021 05:52:47.4773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: MJTXEPIAqBOnwDSl9w0JaRkbPI0niXIy5jQLEhGCj5vuDpNjOhOBWyRdq6MNCs+qZsYbi+yoHbuHdkH5dfWtpA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1933
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Move the pxp plane state
 computation
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

T24gVGh1LCAyMDIxLTEwLTA3IGF0IDAyOjU3ICswMzAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gTm8gcmVhbCByZWFzb24gdG8gaGF2ZSB0aGlzIHB4cCBzdGF0ZSBjb21wdXRhdGlvbiBp
bg0KPiBpbnRlbF9hdG9taWNfY2hlY2tfcGxhbmVzKCkuIEp1c3Qgc3R1ZmYgaXQgaW50byBza2xf
cGxhbmVfY2hlY2soKS4NCj4gDQo+IFRoZXJlIHdhcyBhbHNvIHNvbWUgZnVubnkgc3RhdGUgY29w
eWluZyBiZWluZyBkb25lIGZyb20gdGhlDQo+IG9sZCBwbGFuZSBzdGF0ZSB0byB0aGUgbmV3IHBs
YW5lIHN0YXRlIHdoZW4gdGhlIHBsYW5lIGlzIGFueXdheQ0KPiBkaXNhYmxlZC4NCj4gDQo+IFRo
ZSBvbmUgdGhpbmcgd2UgcHJlc3VtYWJseSBtdXN0IHJlbWVtYmVyIHRvIGRvIGlzIGNvcHkNCj4g
b3ZlciB0aGUgZGVjcnlwdCBzdGF0ZSB3aGVuIGFzc2lnbmluZyBhIFkgcGxhbmUgZm9yIHBsYW5h
cg0KPiBZQ2JDciBzY2Fub3V0LCBzbyB0aGF0IHRoZSBZIHBsYW5lJ3MgUExBTkVfU1VSRiB3aWxs
IGdldCB0aGUNCj4gYXBwcm9wcmlhdGUgYml0IHNldC4gVGhlIGZvcmNlX2JsYWNrIHRoaW5nIHNo
b3VsZCBub3QgbWF0dGVyDQo+IGFzIEknbSBwcmV0dHkgc3VyZSBhbGwgdGhhdCBzdHVmZiBpcyBp
Z25vcmVkIGZvciB0aGUgWSBwbGFuZS4NCj4gSSBzdXBwb3NlIHRoaXMgd2FzIHRoZSByZWFzb24g
Zm9yIHRoZSBvZGQgcGxhY2VtZW50IGZvciB0aGUNCj4gc3RhdGUgY29tcHV0YXRpb24sIGJ1dCBJ
IHNlZSBubyByZWFzb24gdG8gZGV2aWF0ZSBmcm9tIHRoZQ0KPiBzdGFuZGFyZCB3YXkgb2YgZG9p
bmcgdGhlc2UgdGhpbmdzLiBUaGlzIGFsc28gZ3VhcmFudGVlcw0KPiB0aGF0IHdlIGRvbid0IGNh
bGN1bGF0ZSB0aGluZ3MgZGlmZmVyZW50bHkgYmV0d2VlbiB0aGUNCj4gbGlua2VkIFVWIGFuZCBZ
IHBsYW5lLg0KPiANCj4gQ2M6IEFuc2h1bWFuIEd1cHRhIDxhbnNodW1hbi5ndXB0YUBpbnRlbC5j
b20+DQo+IENjOiBEYW5pZWxlIENlcmFvbG8gU3B1cmlvIDxkYW5pZWxlLmNlcmFvbG9zcHVyaW9A
aW50ZWwuY29tPg0KPiBDYzogSnVzdG9uIExpIDxqdXN0b24ubGlAaW50ZWwuY29tPg0KPiBDYzog
Um9kcmlnbyBWaXZpIDxyb2RyaWdvLnZpdmlAaW50ZWwuY29tPg0KPiBDYzogVW1hIFNoYW5rYXIg
PHVtYS5zaGFua2FyQGludGVsLmNvbT4NCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+IMKgZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmPCoCB8IDMxICstLS0tLS0tLS0tLS0tLS0t
DQo+IC0tDQo+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jwqDC
oMKgIHwgMTUgKysrKysrKysrDQo+IMKgMiBmaWxlcyBjaGFuZ2VkLCAxNiBpbnNlcnRpb25zKCsp
LCAzMCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGlzcGxheS5jDQo+IGluZGV4IDRmMGJhZGIxMWJiYi4uYmI0NTg3MmNiNjE5IDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXku
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0K
PiBAQCAtNzEsOCArNzEsNiBAQA0KPiDCoCNpbmNsdWRlICJndC9pbnRlbF9ycHMuaCINCj4gwqAj
aW5jbHVkZSAiZ3QvZ2VuOF9wcGd0dC5oIg0KPiDCoA0KPiAtI2luY2x1ZGUgInB4cC9pbnRlbF9w
eHAuaCINCj4gLQ0KPiDCoCNpbmNsdWRlICJnNHhfZHAuaCINCj4gwqAjaW5jbHVkZSAiZzR4X2hk
bWkuaCINCj4gwqAjaW5jbHVkZSAiaTkxNV9kcnYuaCINCj4gQEAgLTY2NjIsNiArNjY2MCw3IEBA
IHN0YXRpYyBpbnQgaWNsX2NoZWNrX252MTJfcGxhbmVzKHN0cnVjdA0KPiBpbnRlbF9jcnRjX3N0
YXRlICpjcnRjX3N0YXRlKQ0KPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGxpbmtl
ZF9zdGF0ZS0+Y3RsID0gcGxhbmVfc3RhdGUtPmN0bCB8DQo+IFBMQU5FX0NUTF9ZVVY0MjBfWV9Q
TEFORTsNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsaW5rZWRfc3RhdGUtPmNv
bG9yX2N0bCA9IHBsYW5lX3N0YXRlLT5jb2xvcl9jdGw7DQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgbGlua2VkX3N0YXRlLT52aWV3ID0gcGxhbmVfc3RhdGUtPnZpZXc7DQo+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsaW5rZWRfc3RhdGUtPmRlY3J5cHQgPSBwbGFu
ZV9zdGF0ZS0+ZGVjcnlwdDsNCg0KQWhoIHRoaXMgd2FzIHdoYXQgd2Ugd2VyZSBtaXNzaW5nIGJl
Zm9yZS4NCg0KVGhlIGNvbXB1dGF0aW9uIHdhcyBvcmlnaW5hbGx5IGluIHNrbF9wbGFuZV9jaGVj
aygpIGJ1dCB0byBnZXQgaXQNCndvcmtpbmcgSSBtb3ZlZCBpdCB0byBpbnRlbF9hdG9taWNfY2hl
Y2tfcGxhbmVzKCkgYWZ0ZXINCmljbF9jaGVja19udjEyX3BsYW5lcygpIHNvIHRoYXQgaXQgd291
bGQgc2V0IHRoYXQgcGxhbmUncyBkZWNyeXB0IGZsYWcNCmFzIHdlbGwsIG5vdCBrbm93aW5nIEkg
Y291bGQganVzdCBkbyB0aGlzLg0KDQpSZXZpZXdlZC1ieTogSnVzdG9uIExpIDxqdXN0b24ubGlA
aW50ZWwuY29tPg0KDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfcGxh
bmVfY29weV9od19zdGF0ZShsaW5rZWRfc3RhdGUsIHBsYW5lX3N0YXRlKTsNCj4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBsaW5rZWRfc3RhdGUtPnVhcGkuc3JjID0gcGxhbmVfc3Rh
dGUtPnVhcGkuc3JjOw0KPiBAQCAtOTAyNCwyOCArOTAyMywxMyBAQCBzdGF0aWMgaW50DQo+IGlu
dGVsX2JpZ2pvaW5lcl9hZGRfYWZmZWN0ZWRfcGxhbmVzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3Rh
dGUgKnN0YXRlKQ0KPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIDA7DQo+IMKgfQ0KPiDCoA0KPiAt
c3RhdGljIGJvb2wgYm9faGFzX3ZhbGlkX2VuY3J5cHRpb24oc3RydWN0IGRybV9pOTE1X2dlbV9v
YmplY3QgKm9iaikNCj4gLXsNCj4gLcKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9pOTE1X3ByaXZh
dGUgKmk5MTUgPSB0b19pOTE1KG9iai0+YmFzZS5kZXYpOw0KPiAtDQo+IC3CoMKgwqDCoMKgwqDC
oHJldHVybiBpbnRlbF9weHBfa2V5X2NoZWNrKCZpOTE1LT5ndC5weHAsIG9iaiwgZmFsc2UpID09
IDA7DQo+IC19DQo+IC0NCj4gLXN0YXRpYyBib29sIHB4cF9pc19ib3JrZWQoc3RydWN0IGRybV9p
OTE1X2dlbV9vYmplY3QgKm9iaikNCj4gLXsNCj4gLcKgwqDCoMKgwqDCoMKgcmV0dXJuIGk5MTVf
Z2VtX29iamVjdF9pc19wcm90ZWN0ZWQob2JqKSAmJg0KPiAhYm9faGFzX3ZhbGlkX2VuY3J5cHRp
b24ob2JqKTsNCj4gLX0NCj4gLQ0KPiDCoHN0YXRpYyBpbnQgaW50ZWxfYXRvbWljX2NoZWNrX3Bs
YW5lcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gwqB7DQo+IMKgwqDCoMKg
wqDCoMKgwqBzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqZGV2X3ByaXYgPSB0b19pOTE1KHN0YXRl
LT5iYXNlLmRldik7DQo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAq
b2xkX2NydGNfc3RhdGUsICpuZXdfY3J0Y19zdGF0ZTsNCj4gwqDCoMKgwqDCoMKgwqDCoHN0cnVj
dCBpbnRlbF9wbGFuZV9zdGF0ZSAqcGxhbmVfc3RhdGU7DQo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1
Y3QgaW50ZWxfcGxhbmUgKnBsYW5lOw0KPiAtwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfcGxh
bmVfc3RhdGUgKm5ld19wbGFuZV9zdGF0ZTsNCj4gLcKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVs
X3BsYW5lX3N0YXRlICpvbGRfcGxhbmVfc3RhdGU7DQo+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3Qg
aW50ZWxfY3J0YyAqY3J0YzsNCj4gLcKgwqDCoMKgwqDCoMKgY29uc3Qgc3RydWN0IGRybV9mcmFt
ZWJ1ZmZlciAqZmI7DQo+IMKgwqDCoMKgwqDCoMKgwqBpbnQgaSwgcmV0Ow0KPiDCoA0KPiDCoMKg
wqDCoMKgwqDCoMKgcmV0ID0gaWNsX2FkZF9saW5rZWRfcGxhbmVzKHN0YXRlKTsNCj4gQEAgLTkw
OTMsMTkgKzkwNzcsNiBAQCBzdGF0aWMgaW50IGludGVsX2F0b21pY19jaGVja19wbGFuZXMoc3Ry
dWN0DQo+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUpDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiByZXQ7DQo+IMKgwqDCoMKgwqDCoMKg
wqB9DQo+IMKgDQo+IC3CoMKgwqDCoMKgwqDCoGZvcl9lYWNoX25ld19pbnRlbF9wbGFuZV9pbl9z
dGF0ZShzdGF0ZSwgcGxhbmUsIHBsYW5lX3N0YXRlLCBpKQ0KPiB7DQo+IC3CoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBuZXdfcGxhbmVfc3RhdGUgPQ0KPiBpbnRlbF9hdG9taWNfZ2V0X25l
d19wbGFuZV9zdGF0ZShzdGF0ZSwgcGxhbmUpOw0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgb2xkX3BsYW5lX3N0YXRlID0NCj4gaW50ZWxfYXRvbWljX2dldF9vbGRfcGxhbmVfc3Rh
dGUoc3RhdGUsIHBsYW5lKTsNCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGZiID0g
bmV3X3BsYW5lX3N0YXRlLT5ody5mYjsNCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oGlmIChmYikgew0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoG5ld19wbGFuZV9zdGF0ZS0+ZGVjcnlwdCA9DQo+IGJvX2hhc192YWxpZF9lbmNyeXB0aW9u
KGludGVsX2ZiX29iaihmYikpOw0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoG5ld19wbGFuZV9zdGF0ZS0+Zm9yY2VfYmxhY2sgPQ0KPiBweHBfaXNfYm9y
a2VkKGludGVsX2ZiX29iaihmYikpOw0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
fSBlbHNlIHsNCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqBuZXdfcGxhbmVfc3RhdGUtPmRlY3J5cHQgPSBvbGRfcGxhbmVfc3RhdGUtDQo+ID5kZWNyeXB0
Ow0KPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoG5ld19w
bGFuZV9zdGF0ZS0+Zm9yY2VfYmxhY2sgPSBvbGRfcGxhbmVfc3RhdGUtDQo+ID5mb3JjZV9ibGFj
azsNCj4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoH0NCj4gLcKgwqDCoMKgwqDCoMKg
fQ0KPiAtDQo+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gMDsNCj4gwqB9DQo+IMKgDQo+IGRpZmYg
LS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUu
Yw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5j
DQo+IGluZGV4IGEwZTUzYTNiMjY3YS4uMWZjYjQxOTQyYzdlIDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF91bml2ZXJzYWxfcGxhbmUuYw0KPiBAQCAt
MTczNyw2ICsxNzM3LDE4IEBAIHN0YXRpYyBib29sIHNrbF9mYl9zY2FsYWJsZShjb25zdCBzdHJ1
Y3QNCj4gZHJtX2ZyYW1lYnVmZmVyICpmYikNCj4gwqDCoMKgwqDCoMKgwqDCoH0NCj4gwqB9DQo+
IMKgDQo+ICtzdGF0aWMgYm9vbCBib19oYXNfdmFsaWRfZW5jcnlwdGlvbihzdHJ1Y3QgZHJtX2k5
MTVfZ2VtX29iamVjdCAqb2JqKQ0KPiArew0KPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgZHJtX2k5
MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5MTUob2JqLT5iYXNlLmRldik7DQo+ICsNCj4gK8KgwqDC
oMKgwqDCoMKgcmV0dXJuIGludGVsX3B4cF9rZXlfY2hlY2soJmk5MTUtPmd0LnB4cCwgb2JqLCBm
YWxzZSkgPT0gMDsNCj4gK30NCj4gKw0KPiArc3RhdGljIGJvb2wgcHhwX2lzX2JvcmtlZChzdHJ1
Y3QgZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqKQ0KPiArew0KPiArwqDCoMKgwqDCoMKgwqByZXR1
cm4gaTkxNV9nZW1fb2JqZWN0X2lzX3Byb3RlY3RlZChvYmopICYmDQo+ICFib19oYXNfdmFsaWRf
ZW5jcnlwdGlvbihvYmopOw0KPiArfQ0KPiArDQo+IMKgc3RhdGljIGludCBza2xfcGxhbmVfY2hl
Y2soc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+IMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGludGVsX3BsYW5l
X3N0YXRlICpwbGFuZV9zdGF0ZSkNCj4gwqB7DQo+IEBAIC0xNzgxLDYgKzE3OTMsOSBAQCBzdGF0
aWMgaW50IHNrbF9wbGFuZV9jaGVjayhzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSwNCj4gwqDCoMKgwqDCoMKgwqDCoGlmIChyZXQpDQo+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgcmV0dXJuIHJldDsNCj4gwqANCj4gK8KgwqDCoMKgwqDCoMKgcGxhbmVfc3Rh
dGUtPmRlY3J5cHQgPQ0KPiBib19oYXNfdmFsaWRfZW5jcnlwdGlvbihpbnRlbF9mYl9vYmooZmIp
KTsNCj4gK8KgwqDCoMKgwqDCoMKgcGxhbmVfc3RhdGUtPmZvcmNlX2JsYWNrID0gcHhwX2lzX2Jv
cmtlZChpbnRlbF9mYl9vYmooZmIpKTsNCj4gKw0KPiDCoMKgwqDCoMKgwqDCoMKgLyogSFcgb25s
eSBoYXMgOCBiaXRzIHBpeGVsIHByZWNpc2lvbiwgZGlzYWJsZSBwbGFuZSBpZg0KPiBpbnZpc2li
bGUgKi8NCj4gwqDCoMKgwqDCoMKgwqDCoGlmICghKHBsYW5lX3N0YXRlLT5ody5hbHBoYSA+PiA4
KSkNCj4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBwbGFuZV9zdGF0ZS0+dWFwaS52
aXNpYmxlID0gZmFsc2U7DQoNCg==
