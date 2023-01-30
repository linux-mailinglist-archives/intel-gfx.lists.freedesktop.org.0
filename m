Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 498026813CA
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Jan 2023 15:52:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F08F10E26B;
	Mon, 30 Jan 2023 14:52:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E29CC10E26F
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Jan 2023 14:52:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675090333; x=1706626333;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=SYygb6tfoxmH4U8jZGQNUysnOhPtFF6nnNOle/ST3dg=;
 b=DE8Hv5R7N666yRXi76DMKXeiHFFAMQwib9Wa0R/R493Z3zkzAlZFGc6l
 kIOPbZhREUIaFi2xH+aw7ULd977CbemX4rAZAuw5u4xbNDsrYca4evdxa
 6YrDGHXKqnqY3TERdE/BTq8tcbKWc/vYA+dNF1vnxqJSoCQvUeGUCRljB
 CEY3pXA4z1ymknVsM4y6n3HrGDE52t/tqsSWwwO+XB5oh9mU6WRgUhEnT
 4K6UNgvRiJaNBZj6A55q9jurBUqJdHf8rIkmyT5ksipqd7YLxomyzf4eg
 zbJloQasm056Qku+Ydn8PJrqikgouu9VHEPQk+hJigFFe1Nv7SlRHLey1 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="307224274"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="307224274"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2023 06:52:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10606"; a="837990521"
X-IronPort-AV: E=Sophos;i="5.97,258,1669104000"; d="scan'208";a="837990521"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga005.jf.intel.com with ESMTP; 30 Jan 2023 06:52:05 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 30 Jan 2023 06:52:04 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 30 Jan 2023 06:52:04 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 30 Jan 2023 06:52:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U7NbBH0JS+GLfPf/a2voCCbkF302KlQmWnp+qnMo8SNcmsSdJAZeChiWiUwDiFinQNpeP3eqKlITJBXz3StlwlBKDX5mPwYzvAuqls5BqoYOIMSbsNDJNYMAVbP6FISDr5KK53lX1I+mYd0KtrKqee/cPSVETxv/t69ZhcsPoQG0k4rSVg8UYg+Q7tUTDWaKApv3T1hKmwp2vKbNTY0SNna0TGCP3iAcyUcyQMEl9PjSsmdK660F0wDuWWEszPGd54Tw8uQW8cV1Rx8bstBbvHorGSkQKT8noOATQDdsoNNQis0Q/Fq0yz2Wqsh4gR4hxe3rNZZ/hgrwoKnKS2Of1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SYygb6tfoxmH4U8jZGQNUysnOhPtFF6nnNOle/ST3dg=;
 b=VMqX6PZgGTEGl8SI7Ef3zAgr2PgFBvuVJvwnthdg7zlwiK1Z1BqPbjEhxAoI/SEaV6E23VvAc+Re+b/G7q7gS3xKCPFljN7mN7SuiHgE5tcIvH/Gl3AXpHrVyh7nhUloWT2RmshodS7AhKbbRr4uxAzXD0QrsXBi3OllfjkSI929gJbSSnI1dVmfa8AYuajALblI26ODZIIEur36/vQHc8ss0sZ+PurKkY4JX4NAInd4rwDCY6wu7GMx0BvhI6Aw+DC5MejxyFKVFrHvQbQlBJbu969W+W7Wn0DxNTsyY1UEOh2tnPAdq3aNyFjB53qb7l79EwSfl7CQKdDFvMdueg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA1PR11MB6710.namprd11.prod.outlook.com (2603:10b6:806:25a::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6043.28; Mon, 30 Jan
 2023 14:52:01 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6723:483:53a2:5569]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6723:483:53a2:5569%5]) with mapi id 15.20.6043.036; Mon, 30 Jan 2023
 14:52:01 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Coelho, Luciano" <luciano.coelho@intel.com>
Thread-Topic: [PATCH v3] drm/i915/psr: Split sel fetch plane configuration
 into arm and noarm
Thread-Index: AQHZNIHnznI27/8e3UqlGMXf74IPMq628sgAgAAY/oA=
Date: Mon, 30 Jan 2023 14:52:00 +0000
Message-ID: <c5d99b91d9de7b1c1bee320cfa97d43dc38290cd.camel@intel.com>
References: <20230130080651.3796929-1-jouni.hogander@intel.com>
 <07ecf9c1d76883b72de8d7047d69d829132d0496.camel@intel.com>
In-Reply-To: <07ecf9c1d76883b72de8d7047d69d829132d0496.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA1PR11MB6710:EE_
x-ms-office365-filtering-correlation-id: 67723dd0-03a3-44a1-515d-08db02d18b29
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: INUtr7SNQ00fZfTL+rESTX8EvqXIl+xTOJPZkTBcpfcGd8LqkDFEH0REHitb+aM3ufX2Q+V1Pni4HewJXX5fvPA0+Ia8t/D8FknB98qCBNS5fGryDdIRUHvOBgzhLdiNn7XwhzkgSRDnsvlqY3W4Q255582Nx+jYhRMsYbEqhQKA4e9ZnV0l/PrlqvmTcvq5jpmImDAo25bo0JWa/a5ovYcAIW/RcetoU3UKZwSuUsb4EwQTr5UcOuzX7jtf1xm6NH0PdUCguCI13A6Vl6ZOKpDKsBjp5ljMYi//RSJtGy6CWBTaNWcBoK/iie85nwEGlG0ErovgPLyFUGrz7w6FXDNK1g7ONKf/1TLXjb7XrbaCQ0zKG9g8LK8XYnK8Ykh+E0fghoyB9zkIjo6ScrXx55jEpWFB9f9ZMZq0y5UHH0xojyWHF1lyRF+qouT2ofpALG8mJuNnyS6hOz7U+WtcoHRo1Y+Y+MxQajlXAx4f5RZyOgERgEOEuy75rTHGL+wvT2aSvdWkrdTqc2F3dg0TMfJ4JQbLib/cpGdAoM9VolfEB4NJGjbX4oHUgvKN7S/GJc5ABqAGp/nV08FyKcCoU5yud6eKhnweEMqGQmcPrDENWbs9Tcaxdeny1CtKbMR7ft+0ehqF96qne604BEYy7gsCev59XVNUPLMVq1e0GFIzcxAW5L0GQSnnfpqAzwv56djDEzms2GJXomKWRfGqVA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(136003)(376002)(346002)(366004)(396003)(451199018)(91956017)(41300700001)(66476007)(66556008)(66446008)(64756008)(83380400001)(66946007)(76116006)(8676002)(4326008)(316002)(122000001)(6512007)(186003)(36756003)(2906002)(66574015)(54906003)(6636002)(5660300002)(110136005)(478600001)(86362001)(71200400001)(6506007)(8936002)(82960400001)(38070700005)(2616005)(38100700002)(6486002)(26005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UjgzSExEQ2VRVHN1aFk4YVVXVDEyRngwL1h3ZE9SOTFtelpPRzVsYTBHVzNi?=
 =?utf-8?B?L2hZNStHZkFFZkt6eDAxZGZMWFJMS3F2eTV0bW9PendSaTBUc3RwQmFqcXVs?=
 =?utf-8?B?S3BuZzhtRU0vWjBwTTRNSXlweEs2NDBzbXdrclkrY0d5TDVVU2JGUVpDbkJB?=
 =?utf-8?B?bUplNFZ3OHh3TlhVT0YvclNBRTdySDlOZGJpeFhwdFFSMkYwbTdabkhrODA0?=
 =?utf-8?B?MHF5Z2ZIUUJhK1lQV0lyV2xQVGJYbFlWUXV5ODE2cldZejVmRTRnK0RleUY3?=
 =?utf-8?B?U0xCbjF4SldsOUFQN0NSWUlCOHhkcUVtQllsR0RqRHpZRFhIVUlZdFpYT2RB?=
 =?utf-8?B?SlY1aGcvcTBHWUdQbUI1QlFLaTdJdE5Gd29FZmNvUFpYbFMzQjNJVG14dDdE?=
 =?utf-8?B?eFQvcmtQZm9WU3F4TkY1NStjbGFMTEZlR215T2ZzcFQvdEFTZ0FpdXY1c3NH?=
 =?utf-8?B?UzRYUHVvOFVobGxHTTErV2g1OGQvOVlPaXE0ditObEIvNTh5Qk51VG9iK1Y3?=
 =?utf-8?B?bUZPbFBFdE96TXlPSmxVOFdqa0s3djY0VDREaWN3Mkt6Yy9KQ2JwTkRVQUV6?=
 =?utf-8?B?a0lRVzJmYVlZZmdmRFBUMXVMVWE3RHo2L1RjR0pJaEkrYncxT2tpNGNaQ1dG?=
 =?utf-8?B?bC84dlBPWHNPRTRURUZPcG0zK1BnYlMwWHovQko1cGpicmlUK1Jzc2R4RVRl?=
 =?utf-8?B?N0w2MXJQTEpod2p1NkZHQnNsTjg1OHpHRmdnamFiN0d1bVYxa1Avd0s2cGtN?=
 =?utf-8?B?Qlc5RXNyYzRWdlViRko5L0ZRT0RCMURrS2RtS0ErUzhmdzZrMEF2R1dUVytN?=
 =?utf-8?B?aWUvTUk2cXlXN0xYVUkvVFdtYTNIY25BSHlJSFdDSVpMM0x6MXJtVk5RdkdD?=
 =?utf-8?B?aGNVTWE0UWRPWE1ONTA4U05KR2hZdUVoZ2Vvei9oa3pCaXh6VXNIdVRIV01Y?=
 =?utf-8?B?QlZ5V0RyOVJreDhlQXVDbnBGQUpsS05YMkVpM0Uyc1YvK1huZHVTWUtjUkxZ?=
 =?utf-8?B?OXhhODRYSHN6dmZ2WThHbjRFeFVCRTM2T3BUY3dBcHJHOWNnQnNwU1JEemRT?=
 =?utf-8?B?NTV1bkhpc1hHR2RRY0hQdm1qNnRTZVZJWElEbmw1N2IxdlNEeWVxWjNwR080?=
 =?utf-8?B?aTEzWHdzOFhYY0FyV0dRdjkzK3R2R2V3UWh1SnBsZGZ1S2dtN0V3ZmxaNWg4?=
 =?utf-8?B?SFRXUkpUTEk5NjZKWFAxUVhMc2FLQUFGT3oveENWTU5qTXRWNmlkZGZWbXRp?=
 =?utf-8?B?M2hRdDlGQ002SkYyVWd1Z0JNL0J2SjZybGtJaXpPdC8xRE11VC9rd1hUalNF?=
 =?utf-8?B?SHV1SjF3QlRlb1RtSWJwbTExMmJlME1SVER3QkhwZWNEdVhhT1ZtREpzRzVu?=
 =?utf-8?B?cXljZ3pFbjJHZUpHdjJuMXRkcmJJUitDOWpKS3ZscjlGeW5kQmhpek8zckdV?=
 =?utf-8?B?S2dLRUVKMTVPd096SEMyMTB1TDhHcU55NmUzREJwcXRKMDdPZjNIdk05MS8w?=
 =?utf-8?B?UlQvMHYzWmhKNGRDam9mUlRUSnNaQis4UHFmYVdZRmNLcUc3STQ5U2RwZFZF?=
 =?utf-8?B?WXJhek5nUWpZa1JybW4zYjBWbk5sdzh4SkZWc3BJMnZEMHZ2YjlGYjgzNFpo?=
 =?utf-8?B?KzNMVk9xYnd2QWFNMktHRTZKZ281MVc1TDFyNTE5NVd1UWVLSjhkSjJPZDJp?=
 =?utf-8?B?d21uamhDU2Y4U05VMWhLc2tPTHVJYjZ0TkhBaHpONk1qdkcyRFpDb3R0RFZa?=
 =?utf-8?B?WUJUSElxOFJlYU1tVjFYRWowR2VmMGFSa2VXVzNXd0ttSE5ETWhqZjRyd1dO?=
 =?utf-8?B?UkNZeE9kTlYyeHB5cGhSektXSUlHZmhCRUEzNGdMVm9FNFVFNzl1RVJpTGFK?=
 =?utf-8?B?OXJGOU5GWVZDbm0rcXNvL3l0dU9lQWMzSXBlQXZiS0pFaU9UcUJ1VURQUGl6?=
 =?utf-8?B?ODZGWFA4SHZkVE1tdDdNNDVQenhOaDFtUUR2TjFLazRFcEpNY2NjcHU4dlZV?=
 =?utf-8?B?QXk2Y2lnME1PV3VqeUxDa045cmphd1dsSHRicXZ2d0hlWERQMXNNeFdXR1dR?=
 =?utf-8?B?WkpXdUxJMmYySFprUUlWeVNoMkZZR1pKc25ON3F4NTcvekIwUVVNT0dEQlJp?=
 =?utf-8?B?UWowSmIzYmZiNFZlYytDbktYa250bE5qVGNieXZkVTJKdHhlNU9pOEx3UEZh?=
 =?utf-8?B?cWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A5898B5FEE0AE2439B1F0D2275B8B815@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 67723dd0-03a3-44a1-515d-08db02d18b29
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Jan 2023 14:52:00.9062 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tNXJCBfPaEp2n7gaQ3CWVC+FMLd74YfYCQ5d/ekVrjYo7vRk88tW8qHP78b6l8rfnEra8AEmsB65gFMQrs1oFKtHo27vuH8K2pI/IV7JXKs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6710
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/psr: Split sel fetch plane
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

T24gTW9uLCAyMDIzLTAxLTMwIGF0IDEzOjIyICswMDAwLCBDb2VsaG8sIEx1Y2lhbm8gd3JvdGU6
DQo+IE9uIE1vbiwgMjAyMy0wMS0zMCBhdCAxMDowNiArMDIwMCwgSm91bmkgSMO2Z2FuZGVyIHdy
b3RlOg0KPiA+IFNFTF9GRVRDSF9DVEwgcmVnaXN0ZXJzIGFyZSBhcm1lZCBpbW1lZGlhdGVseSB3
aGVuIHBsYW5lIGlzDQo+ID4gZGlzYWJsZWQuDQo+ID4gU0VMX0ZFVENIXyogaW5zdGFuY2VzIG9m
IHBsYW5lIGNvbmZpZ3VyYXRpb24gYXJlIHVzZWQgd2hlbiBkb2luZw0KPiA+IHNlbGVjdGl2ZSB1
cGRhdGUgYW5kIG5vcm1hbCBwbGFuZSByZWdpc3RlciBpbnN0YW5jZXMgZm9yIGZ1bGwNCj4gPiB1
cGRhdGVzLg0KPiA+IEN1cnJlbnRseSBhbGwgU0VMX0ZFVENIXyogcmVnaXN0ZXJzIGFyZSB3cml0
dGVuIGFzIGEgcGFydCBvZiBub2FybQ0KPiA+IHBsYW5lIGNvbmZpZ3VyYXRpb24uIElmIG5vYXJt
IGFuZCBhcm0gcGxhbmUgY29uZmlndXJhdGlvbiBhcmUgbm90DQo+ID4gaGFwcGVuaW5nIHdpdGhp
biBzYW1lIHZibGFuayB3ZSBtYXkgZW5kIHVwIGhhdmluZyBwbGFuZSBhcyBhIHBhcnQNCj4gPiBv
Zg0KPiA+IHNlbGVjdGl2ZSB1cGRhdGUgYmVmb3JlIGl0J3MgUExBTkVfU1VSRiByZWdpc3RlciBp
cyB3cml0dGVuLg0KPiA+IA0KPiA+IEZpeCB0aGlzIGJ5IHNwbGl0dGluZyBwbGFuZSBzZWxlY3Rp
dmUgZmV0Y2ggY29uZmlndXJhdGlvbiBpbnRvIGFybQ0KPiA+IGFuZA0KPiA+IG5vYXJtIHZlcnNp
b25zIGFuZCBjYWxsIHRoZW0gYWNjb3JkaW5nbHkuIFdyaXRlIFNFTF9GRVRDSF9DVEwgaW4NCj4g
PiBhcm0NCj4gPiB2ZXJzaW9uLg0KPiA+IA0KPiA+IHYzOg0KPiA+IMKgLSBhZGQgYXJtIHN1ZmZp
eCBpbnRvIGludGVsX3BzcjJfZGlzYWJsZV9wbGFuZV9zZWxfZmV0Y2gNCj4gPiB2MjoNCj4gPiDC
oC0gZHJvcCBjb2xvcl9wbGFuZSBwYXJhbWV0ZXIgZnJvbSBhcm0gcGFydA0KPiA+IMKgLSBkZXZf
cHJpdiAtPiBpOTE1IGluIGFybSBwYXJ0DQo+ID4gDQo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gQ2M6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IENjOiBNaWthIEthaG9sYSA8bWlrYS5r
YWhvbGFAaW50ZWwuY29tPg0KPiA+IENjOiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3Zp
bmRhcGlsbGFpQGludGVsLmNvbT4NCj4gPiBDYzogU3RhbmlzbGF2IExpc292c2tpeSA8c3Rhbmlz
bGF2Lmxpc292c2tpeUBpbnRlbC5jb20+DQo+ID4gQ2M6IEx1Y2EgQ29lbGhvIDxsdWNpYW5vLmNv
ZWxob0BpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3Vu
aS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gUmV2aWV3ZWQtYnk6IEpvc8OpIFJvYmVydG8gZGUg
U291emEgPGpvc2Uuc291emFAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiANCj4gUmV2aWV3ZWQtYnk6
IEx1Y2EgQ29lbGhvIDxsdWNpYW5vLmNvZWxob0BpbnRlbC5jb20+DQoNClRoYW5rIHlvdSwgdGhp
cyBpcyBub3cgbWVyZ2VkLg0KDQo+IA0KPiAtLQ0KPiBDaGVlcnMsDQo+IEx1Y2EuDQoNCg==
