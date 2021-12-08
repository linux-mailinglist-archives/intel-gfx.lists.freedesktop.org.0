Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1092C46CB35
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Dec 2021 03:54:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 745A26E093;
	Wed,  8 Dec 2021 02:54:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E49D6E093
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Dec 2021 02:54:34 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10191"; a="225001948"
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="225001948"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2021 18:54:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,296,1631602800"; d="scan'208";a="611940277"
Received: from orsmsx605.amr.corp.intel.com ([10.22.229.18])
 by orsmga004.jf.intel.com with ESMTP; 07 Dec 2021 18:54:33 -0800
Received: from orsmsx604.amr.corp.intel.com (10.22.229.17) by
 ORSMSX605.amr.corp.intel.com (10.22.229.18) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 7 Dec 2021 18:54:33 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 7 Dec 2021 18:54:33 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.104)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 7 Dec 2021 18:54:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aGwqfH5NOExKTkyiAJRuBFn7o8p3Yq2O6VVqAwbonQAlVEJezPw2Lx6j5yf952ITvcUcAeuWhst/U/r/+McFVqy1Mf2oYJLyuRIG0z40w/+i1nWYJjsTfeyo0drE5gTX2LMb6Xrew+zOBGAhj05bFUzsezC3WPbYsgyw1j958I+bpjtzAkgyX4+cm7wtYmX9V6B6YjXwqsoFJ0Wbur0rOYVD1NWxzeY8Q+FJD856ir7YwIIeTV+QOkg6diGp6dpE8xRYAtrKJ2h1NX6SWdsVNXqVlWTrPeAptchLuecefQlKOno7oeY5cI5H+OUecHFTkxGxt5ZK3BALwGEJYdw0sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J0B6zy7A4sv8LftOMBhxT0kp9x+iCR6EIv5XfPToxRo=;
 b=iAZbkm7p2IkVmG5eJae4lPqG2qur4HQmg2nenlyTXCqh4NWLuaxnB93A60MWvHdzKjJn6/usQVclbFd1WwYF++hdECgFcMgHVBV2W+jbXRTsvi+QIwlk8EH/DNnGMh5gVTrscByRpmQ99MxXvZiUxSlsnaqBs10Q1UbltCIka1pasUYsq0TwNK9DrkchdjtggQfwiszQB5fDsMDijEuu9agEJcUwooLbPXFQbZumwvIucU3afjub5DzSBVeLZdEIvUaUhGpCk3RyQxQ2YOxqjb63IQRvwGC4a0mEYFi3QUbEj8yqK7TXDnOKvozq37jIdZAT5bBDWwNHqMdVu+WeHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J0B6zy7A4sv8LftOMBhxT0kp9x+iCR6EIv5XfPToxRo=;
 b=Eh61+WjEZBwc3YfS+Q41mMYWh6G7zcX9svTOa/unfY/tsOVxhCpTwa0kNaGAOdRs/bXAn2amCaIBDbMh2Y1QT4aZGeAxezjkCPMr5MgD8BW+SiXZKgFEy8gM4r60kMXBTStjlGmj/dU12HDoKpbCI6SDrKlp0XWJtOv76qWBkUY=
Received: from CO1PR11MB5169.namprd11.prod.outlook.com (2603:10b6:303:95::19)
 by MWHPR11MB1950.namprd11.prod.outlook.com (2603:10b6:300:112::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4755.21; Wed, 8 Dec
 2021 02:54:31 +0000
Received: from CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e8b9:8f6d:8519:72ca]) by CO1PR11MB5169.namprd11.prod.outlook.com
 ([fe80::e8b9:8f6d:8519:72ca%7]) with mapi id 15.20.4778.012; Wed, 8 Dec 2021
 02:54:31 +0000
From: "Tolakanahalli Pradeep, Madhumitha"
 <madhumitha.tolakanahalli.pradeep@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>
Thread-Topic: [Intel-gfx] [PATCH] drm/i915/dmc: Change DMC FW size on ADL-P
Thread-Index: AQHX6xN5qnQR7tOmskiy+Y5pVCsp2KwmlZQAgAFSHAA=
Date: Wed, 8 Dec 2021 02:54:30 +0000
Message-ID: <ee330af8f5dbcc319e2b1d66c5ae03eaecf1ac90.camel@intel.com>
References: <20211207023718.322349-1-madhumitha.tolakanahalli.pradeep@intel.com>
 <20211207064422.if3bq2e2wolzcryz@ldmartin-desk2>
In-Reply-To: <20211207064422.if3bq2e2wolzcryz@ldmartin-desk2>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.42.1 (3.42.1-1.fc35) 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e451c7cc-c408-4d6b-a01b-08d9b9f60ec8
x-ms-traffictypediagnostic: MWHPR11MB1950:EE_
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-microsoft-antispam-prvs: <MWHPR11MB19508AA918C521DA78B2C5CCC76F9@MWHPR11MB1950.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HWwPpSlDz5bvB5uFn4XPfe2vmrRHcgTsTf+6J8VO5nCcmeVqSM6DHYmzCH+yobo/TUEngS57Jh2tXHqBkJpa6upi05Z90B+Pfdw2LOWWouXY0XEiscJ0WWXuf7TMpmJ9i3JWjIbYZdmqXi8VdAHRLKycY7UMsMHwQ0ObyDeNk+EHpGK62owmGfJM6vbSOtT/UN11iwtypXrXVAP8y58zrFW1fhAPQu0YSt8UR1ec6Qg6LGh3cAhu4MNvNHVLoegrK6teE6rVhntXgnNgh6/AUtQ/DlX5xBFXhXXPzSUJ21yifR2BcEQ8rC/pRp4UgdtG9mGKByMGTgqX9jrC4rFuSsC8/Loh3cWXJsBWNOA5+idp2444/c/3rDpopEnr7uy3YCQH028txW+dLK284LeDS/D+7Qqicr0NHBjTj6rAk0+gkyr6h/fVf2vYiTtBfUF3zqr1NT9jEwZfx4xqs7AR8i3e+SlPC6Oen16o6Bkfg8lymEzcJCh3zY2kyno/T53mf15IVR+ptMqQ3wUcoemmkVx9eTvNb05EGCdgzTKVi1N+cxfzyKYhMLZQl3FCgaNpW8M83HkjbHTGnqJQR+vb7dHdkFUQpCkU5YjTUZqyFEoL9kF5qNEAf1gZB4eVaaMD4Qk0MFbu93H/rM1RrH6mnKtn8KBjVyksD4MdJQgKyBQ8AHp/G29+gZ2mZR3L3TKnlmaUndFPMvprGUJWIrf8XA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5169.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(6636002)(86362001)(316002)(5660300002)(6512007)(66446008)(110136005)(66946007)(4744005)(36756003)(71200400001)(186003)(4326008)(2616005)(66476007)(76116006)(64756008)(66556008)(38070700005)(6486002)(83380400001)(38100700002)(8936002)(122000001)(2906002)(6506007)(508600001)(82960400001)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TkdxUlp3TDlsZXRBRWJ4dDE4L1Y4QmMwaFhqRytIR3htWEI4YjU4RHdZdnlm?=
 =?utf-8?B?Skc0RDRKS3FVeDRvd2xIeENqaFh6Qm1MODVsM1BReWhsM3dlSTFQN1dUbjEz?=
 =?utf-8?B?MU5RWnk2ZkVReGNhdnRDMDFESWtlRkM0cjNoTXh5THhNdnUrRXJETWlUb0VD?=
 =?utf-8?B?aG94dTdQUTNLK296UEpxSEYyNGlyYTE4MDZtcGs2aWswMVRydjBCTEdqM3FB?=
 =?utf-8?B?RHEyOEZYYy8xYVJTUGl4Y2FsV0pQWTIrUzd1Q3BpVW1RdyszcHRUN0I5SEJD?=
 =?utf-8?B?TXlHd0tnVUNTcnZvSVhianhSaGJZeUJ1RVV3Ti9CU0JsSGFXVHdwWkQwV0NS?=
 =?utf-8?B?bDhOYWt1QUZBM3gxUE1OR0J1Mm5YdlRlb2hxRjREWE1IcHdsakNtMXovNmtT?=
 =?utf-8?B?UFgxditCQ1lwcXBuamNpaHVxZVhmbTArcUZWRUgrbUZSTFNMOStEYlFNYUxu?=
 =?utf-8?B?c1pvallVNVorZmZmaDIydWJMZUwxb0lLWHRyNDJLNTNNWU9jZ0VsMnR2Z0lE?=
 =?utf-8?B?a1hSQmRFS3poUzMxdUE2dm5pVTZVMFQ0Y09aRVNQcml2cEx1amlzV2s1MFQv?=
 =?utf-8?B?N085MXFBM1VKaW5VVGN2UnQ5MHIyZ3Y2c1VWdTFlUGIwNEl3YVdhQXpZRHho?=
 =?utf-8?B?K1MrNkNUYTlnNk5LaHZIdHFXa0xmNU1hZmJUeXU1Q25EbmFGTGl6b3ZLUFlw?=
 =?utf-8?B?dWR4cFE5djBWYzBzL3R1cDhNdkJGK3FxcVhBR2krK1hUUFlrSVp0M0t1VElM?=
 =?utf-8?B?TnNtYmRGT0ViVHhSNFBOd0xOY2llZmlLK1lmUDlkOGQ2R3VaTStrbkI1Y1lR?=
 =?utf-8?B?cHlRK2lKTHArVUpLU202TEdpUS90U3ZKT0xhWUJKQWdPUUxiTWhDRVZ3ZTJX?=
 =?utf-8?B?ODEvY1dFb1VJY0tzRUYvRndmbzU3M2JOcnpVSEpiVXA0d3lIVk9BbTV2ekZw?=
 =?utf-8?B?aGQ3cVR6RzM2WU5tYk5XejRFb0NYWk15ZFYxS2RVSFh6YTJkdjZEb3RrQ05n?=
 =?utf-8?B?WnRZVUNPT2NpRC8zRHE4cUJRT0oxU1NyZTd3MVloT3RxNDB1WFZaRzFpdjF3?=
 =?utf-8?B?cUFGc3cray9sVmpIdld0OFl6TjB4UHFBbDVEdm4xWkZkNk40czZ3OXBVQWpY?=
 =?utf-8?B?ZmpEdURuR3RuU0hsYkkzZXlIK2x1TFFXbWEvRUhwdFRyeCtnVE9BWCtlQk9D?=
 =?utf-8?B?Y1l1TXpHOHpFQlpHUGJXWkc2RHdKbElIS0FUaUNIelI0NXQ3M1ByVmZJVlhq?=
 =?utf-8?B?Mk41bWlnMFVOd2lmc092b3hVV0crTHJuSW9XdUpZRXVQRzZGeEswdmJRRDNV?=
 =?utf-8?B?ZkJrQ2sxeG8vNFR3OWw3OTZEaSszRlVhbjdrSUptT3JIa2dUcHJxb3Q5dFBk?=
 =?utf-8?B?bWhBTzVySFNXWW5wQnJjbUlGTTJjc1JsRTRMaW9RelJham4wNVZaUzJuY1Zp?=
 =?utf-8?B?czNXTGVUUXJyNk5xSVJnazZKQUphSnJINFU1SWRySW9RRk8wYU1mWFVXQXla?=
 =?utf-8?B?b2U5VWJPUCtKelo0TUZiek9SSkFXU2dlTEQzMUwvV0ZHd3dOOTVQbjlGbENW?=
 =?utf-8?B?VzIwbHplRUltekVXQkJlRThBWWpyb3VuczdHS0REdU92elNzRGFGRklZbHpJ?=
 =?utf-8?B?L0VIaW1meHBFYks2ZmtnZ1F3RUJOMU80RTFYTEY5LzYvNWdiTDZVdE9QQ1l3?=
 =?utf-8?B?bkNoQnZEQWUrcVhRc0g4T3lrUFJvTEZVaTdReWcrU29EVm9vblRHbXBsa0Ix?=
 =?utf-8?B?RHN4ejUyREVPU2FHaStzTlVyV25YSVV4dlR0NEIyR2F5VERaTlcrS0F2QW41?=
 =?utf-8?B?RU1IU1pWRXVoRjNJSHQ2NGVuK203NWNPNnlTL1V5ZzdJU3hrVGcrSWxVS2lP?=
 =?utf-8?B?UTgrbEpTTVZNNko2b0pSM25ZbnZrZkdzS2FEVkJZSUhHWVRNSGFZQmNEZmNW?=
 =?utf-8?B?aHlnekNaeTFKV1IzWFNQZURoL2l6b2toWFhrQWJqU1JRUXc0SHdHemJPQzRy?=
 =?utf-8?B?T0FoZ0NyRkNDeWJTOVY2aXRBL3NVbEFjUVZuSlhpZ1hrVFdxbU41VEF3NGpW?=
 =?utf-8?B?WkdEQ3ozY1YrVlpMS1o1dm5aREdyaVZiQ1lrUC93KzJvci9lb050MWM2MEJH?=
 =?utf-8?B?ZG5DQUluLzFpZmI3VnRvVTRHY3Y2eVFPa1RkL2Z4ZmQ3ekNZRWk1L0VLVVM2?=
 =?utf-8?B?Wm9rTFVLaDZISXhRUmFaTnU0OTlobWVZandBUWhzb1dJNWNIUFc4YnBRTVZM?=
 =?utf-8?B?ZHVqUHJQVVd5WU1Kb3JYeEprTm9wSEpQcHpyVjhveUdxZzllaXIzVzhvWDlF?=
 =?utf-8?B?Z2dGcnRuU1RQSGRDWWJDY2ZTVjFmRmNWd29DZnRCYWVPaW1wenY2dExOdlJl?=
 =?utf-8?Q?3hdjWIze/SAPtM0iRFQmup97ht2Sux5IvguZ+K3JcNijZ?=
x-ms-exchange-antispam-messagedata-1: Ewb5Tdupm8tcogO7kuMmVcGCuZRnahrvjfE=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B97A2BACB3386843BAB93C25C5C9531F@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5169.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e451c7cc-c408-4d6b-a01b-08d9b9f60ec8
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2021 02:54:30.9274 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0iiI/q3SAPyvHvYjG6ymbCHU1oTz0jS7mdhvB6P8WF4z1lP938G46831HbF5YXikVLjvZZMrTGouA/Zt09W8MPrERsY5QZzXsNaecugwgWr6AwqOoJdlqZUNc+uWQEbUxB2SJ1NCd92ZN6tVBDxW9Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1950
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dmc: Change DMC FW size on ADL-P
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

QEx1Y2FzIFRoYW5rcyBmb3IgdGhlIFItYi4NCg0KVGhlIEJTcGVjIGlzIGN1cnJlbnRseSBtaXNz
aW5nIHNpemUgcmVsYXRlZCBpbmZvLCB3ZSdyZSB3b3JraW5nIG9uDQpnZXR0aW5nIGl0IGFkZGVk
Lg0KDQpTdHJhbmdlIGluZGVlZCB0aGF0IHYyLjEyIHdhcyBhYm92ZSAyNGtCLg0KDQpAQW51c2hh
LCBkbyB5b3UgcmVjYWxsIGFueSBzaXplIHJlbGF0ZWQgaXNzdWVzIGZvciB2Mi4xMj8NCg0KLSBN
YWRodW1pdGhhDQoNCk9uIE1vbiwgMjAyMS0xMi0wNiBhdCAyMjo0NCAtMDgwMCwgTHVjYXMgRGUg
TWFyY2hpIHdyb3RlOg0KPiBPbiBNb24sIERlYyAwNiwgMjAyMSBhdCAwNjozNzoxOFBNIC0wODAw
LCBNYWRodW1pdGhhIFRvbGFrYW5haGFsbGkNCj4gUHJhZGVlcCB3cm90ZToNCj4gPiBJbmNyZWFz
ZSB0aGUgc2l6ZSBvZiBETUMgb24gQURMLVAgdG8gYWNjb3VudCBmb3Igc3VwcG9ydCBvZg0KPiA+
IG5ldyBmZWF0dXJlcyBpbiB0aGUgY3VycmVudC91cGNvbWluZyBETUMgdmVyc2lvbnMuDQo+IA0K
PiBJIHdhcyB0cnlpbmcgdG8gZmluZCBhbnl0aGluZyByZWxhdGVkIG9uIEJzcGVjIDQ5MTkzIGFu
ZCA0OTE5NCwgYnV0DQo+IGRpZG4ndCBmaW5kIGFueXRoaW5nIHJlbGF0ZWQgdG8gc2l6ZS4NCj4g
DQo+IEhvd2V2ZXIgSSBzZWUgYWRsLXAgMi4xMiBmaXJtd2FyZSBpcyBhbHJlYWR5IGFib3ZlIHRo
ZSBwcmV2aW91cyAyNGtCLg0KPiBIb3cgZGlkIHdlIGV2ZXIgbG9hZGVkIERNQz8gWWVzLCB0aGlz
IGlzIG5vdCB0aGUgZmlsZSBzaXplLCBidXQNCj4gcmF0aGVyDQo+IHRoZSBwYXlsb2FkIHNpemUs
IGJ1dCBBRkFJQ1MgdGhlIHJlc3Qgc2hvdWxkIGFjY291bnQgZm9yIGxlc3MgdGhhbg0KPiAxaywN
Cj4gc28gaXQgZG9lc24ndCBtYWtlIGEgcmVhbCBkaWZmZXJlbmNlLg0KPiANCj4gRm9yIHRoaXMg
c3BlY2lmaWMgY2hhbmdlOg0KPiANCj4gDQo+IFJldmlld2VkLWJ5OiBMdWNhcyBEZSBNYXJjaGkg
PGx1Y2FzLmRlbWFyY2hpQGludGVsLmNvbT4NCj4gDQo+IHRoYW5rcw0KPiBMdWNhcyBEZSBNYXJj
aGkNCg0K
