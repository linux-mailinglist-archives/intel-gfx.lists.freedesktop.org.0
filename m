Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A97D57D29F3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Oct 2023 08:11:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56C4610E14C;
	Mon, 23 Oct 2023 06:10:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6759B10E14C
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Oct 2023 06:10:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698041455; x=1729577455;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=ri57YxwdP9X+adZ5YyqzpXWEnRitjifaGLYgId6/AIE=;
 b=jj9hg7ZUn5V4QeL9BxPA9hljFFqBzc4X7ndQVBSgW4h648Hp23hn9bhV
 f0WTA39DfpnH/kWDcfPVQbAwV1c8hNh29frl0SbDeCf20YCYZtwVAsdd6
 OtGI4W7T5G29csS0PbWGbk9DiNVdOx1Bm4LM3r5efISZhCByjp38/lhHX
 iBLJeL84VkUGkvYZEb87GAqkLSsgR6pWtp2fXrXDFz/BdEidfWJRUIKY9
 rrTX2Kq0lFqDVEyzGUIMdqMfetZgzI5N2hsTcKJPdIo6MwIfb5aNAGNOx
 ZryeYxGN0moIMjVJlseo68eOYjfjJZ20QwYKPPeMSSdGmFes75qUU4ze1 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="472988857"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="472988857"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2023 23:10:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10871"; a="881645170"
X-IronPort-AV: E=Sophos;i="6.03,244,1694761200"; d="scan'208";a="881645170"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Oct 2023 23:10:54 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 22 Oct 2023 23:10:54 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Sun, 22 Oct 2023 23:10:53 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Sun, 22 Oct 2023 23:10:53 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Sun, 22 Oct 2023 23:10:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dYI9CwdszMN5oMs89kMEWfF0/SnGFnj1O6j73kKRjBWZNTNcz53Mz1cWgp9z165IhoTKI5UsXFQNjV+2IX7Uaz9O/jz2bTumP/aHfx3j1ibzIq5irlW8y47XqJP9+p1MfFHOSPZ/Jpm/SKBTZbVhGSOAnk42CV5sSavh8s8YrEDyK0WHNs8Ym3/TI8/me0C+2E80N+/eqzOCxDOLFagUbumWPim3nXJCP0wWUerXgDTTEVhjTpgZUnBFg9dpRFyvt/8Y9X/gMPWfZcRBt2y+5MPdlfR11LtcBBa1KHWe9wZNCBucGgej/4j1PqK7qULTh7ix28h/H2nnE9Jf6/w9ww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ri57YxwdP9X+adZ5YyqzpXWEnRitjifaGLYgId6/AIE=;
 b=MNqlTNEKKxdZjZcmROzHyFGGw0mVce6e+YBBe8BK2oR6KjgWdjCu5MfObtwlj0fyINU2/99E26j1nSLmtn+Ws3BpszSegmQGUDgAe+jFhFy2Ijoo1w9qGzigshSxhiLefswWcHbRn9YenfXu/4LCnWD+R8+0oN9M3xCsTKkwyOANrBUQoDmE7wi6kcEpmaP3AABxqlBJ8bvw5GSNf8ttEymBGdqjlNqesM1s2x/CCcmtNecIi1YABbxwVcUXg/zNUYtjGAreRn1xBGJVaCiQ+tcU2KnM4Z00HfG5OFe12eLmGo36+9vSXNcrjgbwAftgiT1BWOj6vxVGy+z1xcigsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CY5PR11MB6390.namprd11.prod.outlook.com (2603:10b6:930:39::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6907.26; Mon, 23 Oct 2023 06:10:50 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.6907.028; Mon, 23 Oct 2023
 06:10:50 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "juhapekka.heikkila@gmail.com" <juhapekka.heikkila@gmail.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH 1/2] drm/i915/display: Move releasing gem
 object away from fb tracking
Thread-Index: AQHZ/Nzan4qVCsUxrkucMQB1whJSHbBSuFmAgAQ9QgA=
Date: Mon, 23 Oct 2023 06:10:49 +0000
Message-ID: <be1d9fe019b28555de583eba6ff4909e0ffd24d4.camel@intel.com>
References: <20231012072158.4115795-1-jouni.hogander@intel.com>
 <20231012072158.4115795-2-jouni.hogander@intel.com>
 <1d4c8a42-275a-4983-b579-4928f91de8a1@gmail.com>
In-Reply-To: <1d4c8a42-275a-4983-b579-4928f91de8a1@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CY5PR11MB6390:EE_
x-ms-office365-filtering-correlation-id: 79306cd3-76f0-435a-9c96-08dbd38ece09
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: gh5eBCcE8UrfLgkQlW9+5BzC7TKrVYRYoosH71PlEqnPMNMEwyqthh2HB0Kp7GKjt5tpCe9TxqO+D3+UP6Yl8PuimHgS3KWncp+N0puLRI4DJBn2d4iVREULb4dxJJGoP0V7vZGTZUtBNaUHEAgz0KsxGbGxcDNTpyGoU0Vx8raivIFtVl9ljG71JCadGn5NM2/D9PIp1Rz1lq/5FJQTpxH/zGPDhg5JPif0rNpsj+g58/XUYZu1toUfrLRJIe+rrTeMH+lXRwtEmMwcgjlE7Syi96SG1BihAC1HTX5WQoGv2QJ6XgkjeIhlcfME3fsXMnJC4ELjPVYopPhULNFoVq9J7sI0Pec17mZnD7HJRac1pxhrS5PcnN/J2X/wMZX6tB9pl6WmPOz9Ygd1yl6h3FWi350yAl7yIK48NRx4hogX3EmNeUFCvPaD45DqafD2QDC0sOXWmQ1GSrQ2GqOxT14L6KaEjFN09hKceQ7oHEd0VKRjB5uMKWYS2nP36dfcqyruzzHx3EdkJmRaYx9B1A/E3aTl914rW/g/fhVq8ONArrJo4G4/MfvFSzNhNYP7xkIDqjoBcR9Ln8DwUvS7Kwlgy/tf1UL+s2ik3XUlDSlLyjLPqvMUDqC7mn0tke1A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(396003)(136003)(39860400002)(366004)(230922051799003)(451199024)(186009)(64100799003)(1800799009)(36756003)(38070700009)(316002)(66476007)(91956017)(66556008)(66946007)(64756008)(110136005)(76116006)(86362001)(38100700002)(122000001)(82960400001)(66446008)(83380400001)(26005)(2616005)(66574015)(71200400001)(6512007)(6506007)(4001150100001)(2906002)(478600001)(6486002)(41300700001)(5660300002)(8936002)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dkZ3czFtT1RFaTlmaU9Rc3B0TzRtZGJOZHBrUUtYTyt5K0Z5Q2FuN2tNWDRn?=
 =?utf-8?B?aVR2TVFGRVRwTGx6NUU0OUJvN3BXZUlBUTRxOGdTZWxKekpVNHRyUWZtUTNm?=
 =?utf-8?B?Nm13Z3NiZU1OWEtNOUljbUY1TUR0M3FHUk90ZjNTaXE0UmhsMzN2anRyOEpG?=
 =?utf-8?B?SFJRWFkwYjlnMTBVY2NLai9malNERHE0UW42Q3dsRDZZSTZTVHlZUmUwUndX?=
 =?utf-8?B?M1hJaXBRbFVLeUhhbGZKQUhQeW5wdVBjdENYUzlDZjVRZC9uNy9kSGkxT1dn?=
 =?utf-8?B?Wkg5RkpqbytRb1pubms2a0pQYzVsY0MzdGN3WWJCb0xKNEYrK04vczNoWEND?=
 =?utf-8?B?MFVyT1U3b1VSM0g4S1FacGRxTC95SzRDaGRGL1h5N0pNRzhFMnBaRlNIMXN6?=
 =?utf-8?B?TW1TZ3pYejFPaENIWlJ2UGpLd29kSCtzQXN6NkUrTnk3T0tkZkEvWEFnY2NJ?=
 =?utf-8?B?WGI2MWNKS0t1TTZZU1M1Z1c2Rko5UFZRYXBGcEM2NngrbFhld0tmOGI3QVph?=
 =?utf-8?B?SWRvTWFWTEVqREpqVHlqbUdNOCs4MEJTdE5Sb1pEUVZ2U2xmemRPNi95Tm0z?=
 =?utf-8?B?ODE0L3lzK2hUaVdlR1Zid1ZKNkh6aVUyMmg4di9IU1I4cVpjWFhRYkoydFox?=
 =?utf-8?B?RytSekdCenpBR2thNngxYms5VmIySEIxNnJ2UzdBb0tvYlIrbC9NelJlb1hv?=
 =?utf-8?B?QmpKcGxocGN2TTR3T0M3Y04wakE1Vy9kUEVrMWI2U1hvaXlSN3hCbHQxZ242?=
 =?utf-8?B?Z2FWQk5oVWJyeDJCNzE3dElDRWpHZzZHcUt5SjU1STRISGpBQWFTb3lOazVa?=
 =?utf-8?B?M1hKTWxiTjQ2czFpNjJObmxsNTFxTFBvdXJ3V1B1NXJJT1NrR0FPLzc3MnJk?=
 =?utf-8?B?Q28xZGxESjF4Um9mZlJKRVBua1RoS2hiaE5PRURSNTVrUFhsbXE0ZENQUXR0?=
 =?utf-8?B?WEkwUTNkMzdEU3pYZmRIaWhLWUFVQ3h0T05jN0JrZ3pNdUhpZnFYTDYxTmNK?=
 =?utf-8?B?dmdYRDQrN28zRGVubDFSbW9lVi9NckV3b0RmRUphTERzUTBKVHRXUGdXUnIz?=
 =?utf-8?B?RTVFWEoyY255a2tSYndvTFdKaWltQlhxZWtKcDZnUHo3ckVFK2tjWmRLZUgv?=
 =?utf-8?B?QmZabXJFRDlvTENxam1JZWV4eWgyaWwwY1E5ZUdVeURZMTVDNURNcGpFMC9i?=
 =?utf-8?B?eHc1TitBbU8wa1NaZjFqUWY1OTdRRkw3ZDA2RlBEOHJEaVFCcXZ5eFBHNy9C?=
 =?utf-8?B?MzArRTdITVlzdTNkQlNNUGsyTEx3MFEwS3R6OUNZQUNNRk9xdUVvMG12Z1g0?=
 =?utf-8?B?N2tBR3E0ZkQvVVRuYlBJZVkvZGlQSkxkUVUwQU1Kd3JPZzNkMVArOFYwdW5w?=
 =?utf-8?B?cXdLeEVhOFpSRUpoWGhyMmF5cUUrWXN1Ni9DV2pmRnVoaGd2WWdraUVWOWNN?=
 =?utf-8?B?bXVrWHBtNUdBN3A2blhGUGM1QXZTTnNMU1pYNkFwbUdNam4xclpjakQyNEhs?=
 =?utf-8?B?bUtCQTZSSzh5cVBaMldpNUg0cW81a21zOWJLT0NRbUV2Z214Wkx0UzVrdHpU?=
 =?utf-8?B?V2Jzclp5VlhxUk94R205Y2p3dW95dGdBS0RPNFllYlhuOUFmZzhpOUkxV0tI?=
 =?utf-8?B?RTM5eTlVZTRxTTJhbTJ2OFpGNFl0MXdWR3ptSVRBeWJnQVNPd0gydDduTmdh?=
 =?utf-8?B?cDcxdzBrUUhwbXhtTlVZR2lOMGo3NW5BNHJKSHB5TEtNYkxjaDB1bStDeU1z?=
 =?utf-8?B?TjRMcmI3T0FJVmxuNWpUTnNnTUNXZU9jTk1VTXh2bVZRanVtTEdvYjEzOW0x?=
 =?utf-8?B?amRxZ1FFdHB0NVo0YUZ3VWlNSUJDSlBISzhRcTV4am04L1hBZDQ5cXRJRU1j?=
 =?utf-8?B?RzBCaG0vYTJUamd5aHU5TkdkRm1OSEhmaFFxMTJiSFg0UCtCcUV5bDF3L3ZR?=
 =?utf-8?B?dXpEQ01JcXRTM25OY1BDclBFcU1zRkFrZGZBbTZVWXZvRUhNb1liLzhmS1Ri?=
 =?utf-8?B?ZlEzZExTR2tLZGcrWE5RbU8zVmpRT0FaVTZkdUtQUXN5a08ycFRqTHp2L3py?=
 =?utf-8?B?RDdYZWJJWldFSzBxTmpEd1BUZWFCNVhhQkgxQ2FSY2tUZkZpUW9RZWkyYlQy?=
 =?utf-8?B?RlBaWGptak90S2NLSjNBUk1keWJyMkVML3JUTVZEUStKVWlYSjJHTUxPSjNu?=
 =?utf-8?B?L2c9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <911A87E6D2E11D408F4E87613070FE4F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79306cd3-76f0-435a-9c96-08dbd38ece09
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Oct 2023 06:10:49.8398 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: AhLrDPDKc1PHKkUOC9/tlAg5698PlKOMFM5mB2Sgcuj/pyHN5vhTQdYXtqX++KtcPam0UnnPNf2+Hi/47hK9VFKivUw7vlRca8eubEU8nO4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6390
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Move releasing gem
 object away from fb tracking
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

T24gRnJpLCAyMDIzLTEwLTIwIGF0IDE2OjI2ICswMzAwLCBKdWhhLVBla2thIEhlaWtraWxhIHdy
b3RlOg0KPiBSZXZpZXdlZC1ieTogSnVoYS1QZWtrYSBIZWlra2lsYSA8anVoYXBla2thLmhlaWtr
aWxhQGdtYWlsLmNvbT4NCg0KVGhhbmsgeW91IEpQIGZvciBjaGVja2luZyBteSBwYXRjaGVzLiBU
aGVzZSBhcmUgbm93IG1lcmdlZC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KPiANCj4gT24g
MTIuMTAuMjAyMyAxMC4yMSwgSm91bmkgSMO2Z2FuZGVyIHdyb3RlOg0KPiA+IEFzIGEgcHJlcGFy
YXRpb24gZm9yIFhlIHdlIHdhbnQgdG8gcmVtb3ZlIGFsbCBpOTE1X2dlbV9vYmplY3QNCj4gPiBk
ZXRhaWxzIGF3YXkNCj4gPiBmcm9tIGZyb250YnVmZmVyIHRhY2tpbmcgY29kZS4gRHVlIHRvIHRo
aXMgbW92ZSByZWxlYXNpbmcgZ2VtDQo+ID4gb2JqZWN0DQo+ID4gcmVmZXJlbmNlIHRvIGk5MTVf
Z2VtX29iamVjdF9zZXRfZnJvbnRidWZmZXIuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqAg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jwqDCoMKgwqDC
oMKgIHwgMiAtLQ0KPiA+IMKgIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmpl
Y3RfZnJvbnRidWZmZXIuaCB8IDEgKw0KPiA+IMKgIDIgZmlsZXMgY2hhbmdlZCwgMSBpbnNlcnRp
b24oKyksIDIgZGVsZXRpb25zKC0pDQo+ID4gDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZnJvbnRidWZmZXIuYw0KPiA+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jDQo+ID4gaW5kZXggZWM0NjcxNmIy
ZjQ5Li4yZWEzN2MwNDE0YTkgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mcm9udGJ1ZmZlci5jDQo+ID4gQEAgLTI2NSw4ICsyNjUsNiBAQCBz
dGF0aWMgdm9pZCBmcm9udGJ1ZmZlcl9yZWxlYXNlKHN0cnVjdCBrcmVmDQo+ID4gKnJlZikNCj4g
PiDCoMKgwqDCoMKgwqDCoMKgc3Bpbl91bmxvY2soJmludGVsX2JvX3RvX2k5MTUob2JqKS0NCj4g
PiA+ZGlzcGxheS5mYl90cmFja2luZy5sb2NrKTsNCj4gPiDCoCANCj4gPiDCoMKgwqDCoMKgwqDC
oMKgaTkxNV9hY3RpdmVfZmluaSgmZnJvbnQtPndyaXRlKTsNCj4gPiAtDQo+ID4gLcKgwqDCoMKg
wqDCoMKgaTkxNV9nZW1fb2JqZWN0X3B1dChvYmopOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBrZnJl
ZV9yY3UoZnJvbnQsIHJjdSk7DQo+ID4gwqAgfQ0KPiA+IMKgIA0KPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fb2JqZWN0X2Zyb250YnVmZmVyLmgNCj4g
PiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfZnJvbnRidWZmZXIu
aA0KPiA+IGluZGV4IGU1ZTg3MGI2ZjE4Ni4uOWZiZjE0ODY3YTJhIDEwMDY0NA0KPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfZnJvbnRidWZmZXIuaA0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2dlbS9pOTE1X2dlbV9vYmplY3RfZnJvbnRi
dWZmZXIuaA0KPiA+IEBAIC04OSw2ICs4OSw3IEBAIGk5MTVfZ2VtX29iamVjdF9zZXRfZnJvbnRi
dWZmZXIoc3RydWN0DQo+ID4gZHJtX2k5MTVfZ2VtX29iamVjdCAqb2JqLA0KPiA+IMKgIA0KPiA+
IMKgwqDCoMKgwqDCoMKgwqBpZiAoIWZyb250KSB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqBSQ1VfSU5JVF9QT0lOVEVSKG9iai0+ZnJvbnRidWZmZXIsIE5VTEwpOw0KPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBkcm1fZ2VtX29iamVjdF9wdXQoaW50ZWxf
Ym9fdG9fZHJtX2JvKG9iaikpOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqB9IGVsc2UgaWYgKHJjdV9h
Y2Nlc3NfcG9pbnRlcihvYmotPmZyb250YnVmZmVyKSkgew0KPiA+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgY3VyID0gcmN1X2RlcmVmZXJlbmNlX3Byb3RlY3RlZChvYmotPmZyb250
YnVmZmVyLA0KPiA+IHRydWUpOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
a3JlZl9nZXQoJmN1ci0+cmVmKTsNCj4gDQoNCg==
