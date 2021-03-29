Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0783434D4CE
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Mar 2021 18:23:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F316D89F43;
	Mon, 29 Mar 2021 16:22:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1EEA89E5F
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Mar 2021 16:22:57 +0000 (UTC)
IronPort-SDR: Ne2FIHV+UKMKpV/KPRgXslXbAAQvqFJAySUgZtrATMDNCPRuRFh4RzI8bRDO4jgv+6wYm6xao5
 H2s+SW6FB1HQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9938"; a="255577965"
X-IronPort-AV: E=Sophos;i="5.81,288,1610438400"; d="scan'208";a="255577965"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2021 09:22:56 -0700
IronPort-SDR: MIgdlvRvyqdga+di38MDBowESRMk9lb2vDRA5vL9tSgxpDQplGib8Daostveeqs04QE+EOKrS2
 KDJr+2xTAurw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,288,1610438400"; d="scan'208";a="444656705"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by fmsmga002.fm.intel.com with ESMTP; 29 Mar 2021 09:22:56 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 29 Mar 2021 09:22:55 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2106.2; Mon, 29 Mar 2021 09:22:55 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2106.2
 via Frontend Transport; Mon, 29 Mar 2021 09:22:55 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2106.2; Mon, 29 Mar 2021 09:22:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mBtcmGYTJUVhQDB3W42rfTV+9cOdxYliNuThZthBdgCyynKXxJs3Dfm+4SxVvi+2W8ywRccHqJsRu7pj6ZY89mPz9vV7cUh4g40Np51kAtKumdCjSYszEjfHM+33pYprk/UyjuGovqBlSKajuaGX0j9JP8D5mhv1CRzIhYIH4SncQ9+022BG1oHNqQBp7UJts49QNT8mR2u2t0mXywJdQQlA9I7fKSc4rx1CCBrRRUA0RwBzQO87p3hsvm9JVCUZ4xw+te5547iuFEOIC+uXNXfeKkZzTqqnXO2ZcNc8jI+4Azyj1HBt79f24H0kxq22oKRn+8GO4ZPzHzdGJKtjug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oUPCz+wh32JAe7P0cJmerFbLUEhkjy/YjUx7hCA0AjA=;
 b=JA+vjvOLwovYeWzCdRRBD5S8SILoTGfxHFV+2zO7ySnRlHBPi7tpHYvoDuZm1LL+GaIruiXGVpWLaqbBP6p5A/Wd6pTWMtqP2bepbJuuzhzZG6Cc9tn7OgaceWwtfAFcL1WGfFjnnrsuCH/LO8PD4PxE7Q0JDXHPL+5++E4+e8YE5L6M/NUjpvyWsj4TluYJVFRCHW2xxiUDdkiQRczW+YnneERlKSh2OcBltjF8ZZ5fWw/pDNl9Vsc/naVq7M+bB4foT4MIn6NbBGfE9sBptUMbKlSp+k/sRQY16ix4zOuk9qETnnzZ/s/VE8+F8O94L81rvGAJEk1aEyxxwqfHUA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oUPCz+wh32JAe7P0cJmerFbLUEhkjy/YjUx7hCA0AjA=;
 b=QRvR/AcPMpRJ9MWs5OblHYPEyGJSvT4QXzIFBuOt/Ss9y1i8G71XBORQKGzDAtwfWnOA2/BlYh9UAUJsaVQJBt/DU2e6CKPgfYjFD680l4slt28dujldVDUx068TTmQOHBNEP3a4F+E5A/QeRKNg6qEM5nW8/nCA3/ym9zbRObI=
Received: from CO1PR11MB5026.namprd11.prod.outlook.com (2603:10b6:303:9c::13)
 by MW3PR11MB4569.namprd11.prod.outlook.com (2603:10b6:303:54::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.26; Mon, 29 Mar
 2021 16:22:50 +0000
Received: from CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::7c75:c69a:694d:c0c]) by CO1PR11MB5026.namprd11.prod.outlook.com
 ([fe80::7c75:c69a:694d:c0c%7]) with mapi id 15.20.3977.033; Mon, 29 Mar 2021
 16:22:50 +0000
From: "Gao, Fred" <fred.gao@intel.com>
To: "Vudum, Lakshminarayana" <lakshminarayana.vudum@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: =?utf-8?B?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIHZmaW8vcGNpOiBBZGQgc3Vw?=
 =?utf-8?Q?port_for_opregion_v2.0+_(rev5)?=
Thread-Index: AQHXIbqaXfHY4B4o8UW2QY/Ux3rr9aqakZzQgACZNACAAAD7oA==
Date: Mon, 29 Mar 2021 16:22:49 +0000
Message-ID: <CO1PR11MB5026C291000E5C1BF70D64D29D7E9@CO1PR11MB5026.namprd11.prod.outlook.com>
References: <20201202171249.17083-1-fred.gao@intel.com>
 <161670632639.15545.18267924720650476934@emeril.freedesktop.org>
 <CO1PR11MB502634D68A7ABCC7D224708F9D7E9@CO1PR11MB5026.namprd11.prod.outlook.com>
 <4989359ab71e44daaf74369f22f9881c@intel.com>
In-Reply-To: <4989359ab71e44daaf74369f22f9881c@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.5.1.3
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.198.147.212]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ea0e44d6-aecf-4822-3f11-08d8f2cee59a
x-ms-traffictypediagnostic: MW3PR11MB4569:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MW3PR11MB4569654C439AF19CE4DE86D79D7E9@MW3PR11MB4569.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: DZaZkE1W29GB8ZOHclz4DEHkBzUuElZ/u2O6jK1w+Q2q2DKPXuavPtFTzqwwUzFOKh7KJELsqJ/ZDNyASl3xcFUTdMLtMumQZ5ilIArRLm0lcfD27qnUN83pDsYeAiDJEvFeOJJ5Qz6cGqVsfMDpiYr3gRtkeOEU9c6DsNfFjgcNWQS8RCBj/MmbfQ9RzGkqTGFpEaTWA2osMBD49+wM2mCRA2RzHwNRVIc8UWzNnq7vPkrv4E3BEDZ9YMALehxGy4yTvC/lKkco3aEIqyqUXP6l7AhxWDVe9DXC25v6fMC+/ugY+TJRzqZxHEgVwMiLiPU6hVl3m3rpzW2IYkuu4RBCQkbjO+WyHR5N71DfkK1ajR9s5uaUPMiNkgcYx5BEq9cZAb/b1fT9i05vd+gkM8GBtVDlgxIULIxXOxfjFXrAL56Q5rqgfrfJO8KtorAvF9asfjvf1U+Ae9wYaoG5UhI2dqXQsl86cMllvxhbbiojIH0RuxJCDT0qBq9TIRjcpSSPpLSLFAYMsNx58Eq6GQQaG2F4LnwL41mdWPwKsJttgfHEkeVs1l3fzjzziluaSNWXmKraYydAaQX23YIrr3LVh48km5uUCVCXrgDCO9zA+ts+bbPn1+e0MTEx0nVb2x8UDNMN/KR+Yn2LX+ly0AlDtkoqWMFvZXjvpLyyZGf0zdYkoP/Yg87BZAoc4366
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5026.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(346002)(39860400002)(136003)(396003)(376002)(107886003)(71200400001)(8936002)(5660300002)(4326008)(110136005)(9686003)(66946007)(7696005)(2906002)(316002)(38100700001)(966005)(186003)(55016002)(86362001)(64756008)(66556008)(478600001)(26005)(33656002)(83380400001)(52536014)(66476007)(76116006)(53546011)(66446008)(6506007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?WjN3MTgydlluYnhQMlhGQmxWUjRtb1JxaWpncEhMZ2hBdTYzNzlDcDNwdTRz?=
 =?utf-8?B?VXE2d1VvenFtU2EwN09kbnZwU0picHAzbHEvRnpCc0UwVkVrcVo0SnVOUUda?=
 =?utf-8?B?RGdJcktXZDZFaDJuQWdpVDg5M3g1dE9JUzVUdWZuN3FPM1hqblBSZklVWmxo?=
 =?utf-8?B?d3ZBQ0M5ekFZSXdyVkt6THAxeDNvNmhJS1hhY3loZkgrMVlFLzNaZjNJOU9H?=
 =?utf-8?B?VjNyVms0bXV0N20wUHRzSUs3NCt5ZlowUnZ2Vkk5enVBTVgxOUNDSmFabCs5?=
 =?utf-8?B?T2RtNkRhNVphSnFFcFp5djM3OXpkenhzcm1ZcFFCS0ZKSm5kUDJBd01kU1RN?=
 =?utf-8?B?Z09aNU5GZzVtdUhKL3I3Y3FFakx5bTlWa3hqWmE5MTl5UG1QNngybmVOaUFW?=
 =?utf-8?B?TGI5Q3J2S2h4QjM0ZWp4L05Tb2FyN0JSM3VMU0tOU2Y0ZGN6b2pMYUNaU3ds?=
 =?utf-8?B?bElLM2xGR0dVWjFCYUlRa0lMbUV2WklMd2tKUEVxMWhTQWwxV0lxU3paM1BS?=
 =?utf-8?B?UUZJZ3cxSHcwaG1WOE94UXJGaVlOVEdvSCtqczgrTzhiM2dWcGVCbjVFQmhI?=
 =?utf-8?B?N3hDY2d4YVZSU3ZYYjlQOVBhNFpieS9Iem8xeFc0MHBOd09mWjVjU0hQRUdy?=
 =?utf-8?B?bnJiK2F4VDBuRWE4WW9oZFdRY1hMdjIyaURLTTZiWUtKMmhpQTl0dUdIMFlK?=
 =?utf-8?B?M05QTmo2S2dORTRPa0pEdGZQMFA1SnUvTVVjYWp1ek5rU3FqRm9EQkluRXpl?=
 =?utf-8?B?Nm5HL3AxZTNNelZlaFlSay9UZFNmZUpZbWpWRFZSZFI4andjRm1uNUppUDJ0?=
 =?utf-8?B?VTM1Q01mVTljUE92Q2lydjNiT0hVY3hYNWwveU9aamhtVXp3dG5kYTNGa1Ew?=
 =?utf-8?B?aE5yUEF2SEFSTzZTRGVuNFVQWHdFYXQzOWNXYWhzQjdudEI0eDdrU3pFSjhw?=
 =?utf-8?B?Vy9jUm11UkExNk80S3FaMXV1eUk2cmF0NFRscDlpTlgvVEhOZExLeEVOOURM?=
 =?utf-8?B?cTZaaGsrZzdLSEpsSlM2RWdHVWFPSGtiZVBLYjRBeGZJMVhwT0Q5L0NtWnBF?=
 =?utf-8?B?OW9sRXhURlhVM2N6VXR4Y2xUUG01M080aGtXNEQ0RDJvMEhWMWJ0clBMV1Ax?=
 =?utf-8?B?dGNNMnlaS1BFc2NWVXQ1cDRBMTgyeWRRd0ZtWGE0Mmpic1B6S2lEeWNWWWRu?=
 =?utf-8?B?Z3BVbmJuc3E4SHoyV2Y3ZE9pd05BK0doaWdWWXdIcWhoMkJBeWZYajZ3Smpp?=
 =?utf-8?B?QW45cXZsLytDSE9wUHFWN0VMUi9rbHZFeHZCMDA5d1dJVTRYMjM1ZXNwQWFa?=
 =?utf-8?B?R0dPTDdVMGgwZmdoS21oRFFHNk10dTh5Sm5FR3NFNHRUN01ZZXdlYUNYbHIv?=
 =?utf-8?B?dUcyREVHenJENnVXMitHRFVKWWZLV0RZRVFkankxRU5Rek9EWEgwNXI0R3Va?=
 =?utf-8?B?TUw3UFFLTFVKZDRZMGNYWTdhV25oaU8rOXBFSjlwZnJKQVhCY0RtcU9ZTEx5?=
 =?utf-8?B?Y0V1UDMxdndSTnlEMkJVblV4dmxRd256a1RWV1lEV0ZWRDNESmNUbUJnYWo4?=
 =?utf-8?B?WTd3VW9hbDRGNnlEdjBJZ3FDZDZEbTVkMmJtenZOQ1oyb3lCOFVzOGNIT09U?=
 =?utf-8?B?QnVLN1BqT3U5ZElHUlhNd2FodUdRL09WTTJ5TEE5T2ZGVzhsU1JTdVlKcjBl?=
 =?utf-8?B?YmxpNHJPemhtOGpNY0xDdWQvN1A2OWV2ZHovMDRnUDFnQ01rd0E1azc2ZUsz?=
 =?utf-8?Q?rbiYGXMaIE3LyGllGkU1O/CnA52QbwfXT7bPOZW?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5026.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ea0e44d6-aecf-4822-3f11-08d8f2cee59a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2021 16:22:50.1066 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Z0XmkzEDzGmJivdXEm2+YVAjdlETplOcd1x8dZbnHE+LeV3xT/Z6ztcXBEOoEkFOGl3vVO9+Z/+qnt+JtRlhEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4569
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] 
 =?utf-8?b?4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIHZm?=
 =?utf-8?q?io/pci=3A_Add_support_for_opregion_v2=2E0+_=28rev5=29?=
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
Cc: "Wang, Zhenyu Z" <zhenyu.z.wang@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

VGhhbmtzIGZvciB0aGUgcXVpY2sgaGVscC4NClRlc3Qgb2YgRmkuQ0kuRE9DUyBpcyBzdGlsbCBm
YWlsZWQgYWx0aG91Z2ggd2UgZG8gbm90IGNoYW5nZSBhbnkgY29kZSBpbiBpOTE1LiANCg0KPiAt
LS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWdWR1bSwgTGFrc2htaW5hcmF5YW5h
IDxsYWtzaG1pbmFyYXlhbmEudnVkdW1AaW50ZWwuY29tPg0KPiBTZW50OiBUdWVzZGF5LCBNYXJj
aCAzMCwgMjAyMSAxMjoyMCBBTQ0KPiBUbzogR2FvLCBGcmVkIDxmcmVkLmdhb0BpbnRlbC5jb20+
OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBXYW5nLCBaaGVueXUgWiA8
emhlbnl1Lnoud2FuZ0BpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJFOiDinJcgRmkuQ0kuRE9DUzog
d2FybmluZyBmb3IgdmZpby9wY2k6IEFkZCBzdXBwb3J0IGZvciBvcHJlZ2lvbg0KPiB2Mi4wKyAo
cmV2NSkNCj4gDQo+IEZhaWx1cmUgaXMgcmVwb3J0ZWQuIEl0J3Mgbm93IHNob3dpbmcgYXMgc3Vj
Y2Vzcy4NCj4gDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEdhbywgRnJl
ZCA8ZnJlZC5nYW9AaW50ZWwuY29tPg0KPiBTZW50OiBNb25kYXksIE1hcmNoIDI5LCAyMDIxIDEy
OjEyIEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBWdWR1bSwgTGFr
c2htaW5hcmF5YW5hDQo+IDxsYWtzaG1pbmFyYXlhbmEudnVkdW1AaW50ZWwuY29tPg0KPiBDYzog
V2FuZywgWmhlbnl1IFogPHpoZW55dS56LndhbmdAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSRTog
4pyXIEZpLkNJLkRPQ1M6IHdhcm5pbmcgZm9yIHZmaW8vcGNpOiBBZGQgc3VwcG9ydCBmb3Igb3By
ZWdpb24NCj4gdjIuMCsgKHJldjUpDQo+IA0KPiBIaSwgTGFrc2htaToNCj4gDQo+IENhbiB1IGhl
bHAgb24gdGhpcyBmYWlsdXJlIGFnYWluLA0KPiB0aGUgb25seSBkaWZmZXJlbmNlIGJldHdlZW4g
dmVyc2lvbiA1JiA0IGlzIHRoZSBjb21tZW50cy4NCj4gVGhhbmtzIGluIGFkdmFuY2UuDQo+IA0K
PiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogUGF0Y2h3b3JrIDxwYXRj
aHdvcmtAZW1lcmlsLmZyZWVkZXNrdG9wLm9yZz4NCj4gPiBTZW50OiBGcmlkYXksIE1hcmNoIDI2
LCAyMDIxIDU6MDUgQU0NCj4gPiBUbzogR2FvLCBGcmVkIDxmcmVkLmdhb0BpbnRlbC5jb20+DQo+
ID4gQ2M6IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gPiBTdWJqZWN0OiDinJcg
RmkuQ0kuRE9DUzogd2FybmluZyBmb3IgdmZpby9wY2k6IEFkZCBzdXBwb3J0IGZvciBvcHJlZ2lv
bg0KPiA+IHYyLjArDQo+ID4gKHJldjUpDQo+ID4NCj4gPiA9PSBTZXJpZXMgRGV0YWlscyA9PQ0K
PiA+DQo+ID4gU2VyaWVzOiB2ZmlvL3BjaTogQWRkIHN1cHBvcnQgZm9yIG9wcmVnaW9uIHYyLjAr
IChyZXY1KQ0KPiA+IFVSTCAgIDogaHR0cHM6Ly9wYXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nl
cmllcy84NDQ5NC8NCj4gPiBTdGF0ZSA6IHdhcm5pbmcNCj4gPg0KPiA+ID09IFN1bW1hcnkgPT0N
Cj4gPg0KPiA+ICQgbWFrZSBodG1sZG9jcyAyPiYxID4gL2Rldi9udWxsIHwgZ3JlcCBpOTE1DQo+
ID4gLi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9nZW0vaTkxNV9nZW1fc2hyaW5rZXIuYzoxMDI6IHdh
cm5pbmc6IEZ1bmN0aW9uDQo+ID4gcGFyYW1ldGVyIG9yIG1lbWJlciAnd3cnIG5vdCBkZXNjcmli
ZWQgaW4gJ2k5MTVfZ2VtX3NocmluaycNCj4gPiAuL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2k5MTVf
Y21kX3BhcnNlci5jOjE0MjA6IHdhcm5pbmc6IEV4Y2Vzcw0KPiA+IGZ1bmN0aW9uIHBhcmFtZXRl
ciAndHJhbXBvbGluZScgZGVzY3JpcHRpb24gaW4gJ2ludGVsX2VuZ2luZV9jbWRfcGFyc2VyJw0K
PiA+IC4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9jbWRfcGFyc2VyLmM6MTQyMDogd2Fybmlu
ZzogRnVuY3Rpb24NCj4gPiBwYXJhbWV0ZXIgb3IgbWVtYmVyICdqdW1wX3doaXRlbGlzdCcgbm90
IGRlc2NyaWJlZCBpbg0KPiA+ICdpbnRlbF9lbmdpbmVfY21kX3BhcnNlcicNCj4gPiAuL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfY21kX3BhcnNlci5jOjE0MjA6IHdhcm5pbmc6IEZ1bmN0aW9u
DQo+ID4gcGFyYW1ldGVyIG9yIG1lbWJlciAnc2hhZG93X21hcCcgbm90IGRlc2NyaWJlZCBpbg0K
PiA+ICdpbnRlbF9lbmdpbmVfY21kX3BhcnNlcicNCj4gPiAuL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2k5MTVfY21kX3BhcnNlci5jOjE0MjA6IHdhcm5pbmc6IEZ1bmN0aW9uDQo+ID4gcGFyYW1ldGVy
IG9yIG1lbWJlciAnYmF0Y2hfbWFwJyBub3QgZGVzY3JpYmVkIGluDQo+ID4gJ2ludGVsX2VuZ2lu
ZV9jbWRfcGFyc2VyJw0KPiA+IC4vZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9jbWRfcGFyc2Vy
LmM6MTQyMDogd2FybmluZzogRXhjZXNzDQo+ID4gZnVuY3Rpb24gcGFyYW1ldGVyICd0cmFtcG9s
aW5lJyBkZXNjcmlwdGlvbiBpbiAnaW50ZWxfZW5naW5lX2NtZF9wYXJzZXInDQo+ID4NCj4gL2hv
bWUvY2lkcm0va2VybmVsL0RvY3VtZW50YXRpb24vZ3B1L2k5MTU6MjI6IC4vZHJpdmVycy9ncHUv
ZHJtL2k5MTUvaQ0KPiA+IG50ZWxfcnVudGltZV9wbS5jOjQyMzogV0FSTklORzogSW5saW5lIHN0
cm9uZyBzdGFydC1zdHJpbmcgd2l0aG91dA0KPiA+IGVuZC0gc3RyaW5nLg0KPiA+DQo+IA0KPiAN
Cg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KSW50ZWwt
Z2Z4IG1haWxpbmcgbGlzdApJbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8v
bGlzdHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vaW50ZWwtZ2Z4Cg==
