Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 368BB79AB73
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Sep 2023 23:09:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D80810E1E8;
	Mon, 11 Sep 2023 21:09:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3D71610E1E5
 for <intel-gfx@lists.freedesktop.org>; Mon, 11 Sep 2023 21:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694466574; x=1726002574;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Lkkd7D0c5PR31Of4+27kBpi/QwywxpNYnSV+PIjk4Xs=;
 b=aye2q4mjz4CiNsIooJzWuUA14bfnaFoOaoI82wzxumUIRwLdTJZ1aYD1
 0mYQJIqOMp5hWTQQ2ZJYbVokVOOLPZL1bqIuXHPOnTH5k+/Q/Ol08AVcx
 8D1SvJCQhl0ZV5pi2h8TEkCAs3GNxcHGKJQKl8/FsDPeUkir3FNm9NNRN
 qoeOxv829MRYB+2rkrfiII3q/8OBI20nZSw0wakHffyr9AHlNKLM3xXKQ
 cOjAYqEuZqLStfATgPh2ITkVFQhcU9ebQhN3Ngvsu89mHT4/sK2CBGhfu
 Jt7mtG9MpNguxCl+1/sJk2F2QPDLKWm1duiir5xsthEFCDio+aCn/0IBf w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="377118154"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="377118154"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 14:09:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="833649669"
X-IronPort-AV: E=Sophos;i="6.02,244,1688454000"; d="scan'208";a="833649669"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Sep 2023 14:09:32 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 14:09:31 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Mon, 11 Sep 2023 14:09:30 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Mon, 11 Sep 2023 14:09:30 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Mon, 11 Sep 2023 14:09:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kM/EadblaYFhFLS1T0gmUkbbvUK1eeCJL1vW7enFDR9QbawFCGw5UWL6vcnC9l+fUJik1oiqC0Xdt7bCZqyZ0wocRaRrTw87kOi22fEmNmnErElSNzYjtOj9lZlKaYmSIzbaUepELxwGNmTu4fWLxcczj6AUI/4Vkh9DpxhehQAJh2SSyKz20cQ9xg6ZZiO1JFWdml/3Vj20uZYln7q2gjPMa9UcJLgjN6vgsoCVaMT+zFwOEXXrBxFMZLPgk5aUK/aKf3nA8l0x8gY/f7xN4Q9lkHvbdkLTSLEAyo/5o8LyeZ0e4K5XlpTIYbFgcb0fdDFao93pjpmy8YQ3hfpJKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lkkd7D0c5PR31Of4+27kBpi/QwywxpNYnSV+PIjk4Xs=;
 b=EIm6ws2I3wMXbWCOtMC9YYNK8OUxH0fmBe4fRUXuZ004k9NX08foNAKlMOs2LFt4EM/6xqjN0AUQJLbuc1qDEoV5zmONE5k8TyXNLzEtnbVWE7/QvuDXPqwvc1Ykz88VVh8W3nzgsd1S74sO7xp1reeyDfLqRFzLRTSef6jGhsgms6KeH35hkEshv4i64tfeKSyh3bZNgCIGBcQhteu97nikH0PxThgEsM+EOwW0z/CNFe46V4WW3KrqfCxK/RLIm2lbouO1eEFwb/I+Ez4wwNofjmk4F50n5Kec7DlTfUoozBbfjUW2+7O+s8b4OGD4s6FOoM9mdqs7CNWIIRZYiA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6745.34; Mon, 11 Sep 2023 21:09:21 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::42bc:8d57:e26f:ecd4%3]) with mapi id 15.20.6768.029; Mon, 11 Sep 2023
 21:09:21 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 11/19] drm/i915/dsb: Don't use DSB to load
 the LUTs during full modeset
Thread-Index: AQHZmKtSDZBvytKEqk2nYKfTqtcsvrAWtqDw
Date: Mon, 11 Sep 2023 21:09:21 +0000
Message-ID: <DM4PR11MB6360AF69D77901EF60753337F4F2A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
 <20230606191504.18099-12-ville.syrjala@linux.intel.com>
In-Reply-To: <20230606191504.18099-12-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MN0PR11MB6059:EE_
x-ms-office365-filtering-correlation-id: 4cacaa86-2819-4e6b-c1ee-08dbb30b5e83
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: INq/opvoghsLtdWycgtOmUfqJGfkU7PDK5b3Uf4Kx3shfkoKj6xlAoWL8hzSgaXzlpZNma421ozlPJQ9B7ewoBgbZGmCXh+P+LDYuIbfnN3oB6f+dWOEeGyXMbZSjxQy0ilyv7T9VyglKJZMyEMd5LWdaJX0VMHLgUxNRF34IoSTJVVfLY/xR24H68T7JvYJGZAOGEQKhuod2LQWwQS0KUVKJEuohOgqfxYfIWO+LPbxZf63jt7Hx3iXw59zaFXKGSGBqolBCo4GS4xZyjWnAdvHzLNdRgZKvjz8ikNE4f1V5O26KU+jH8C1nwinkiTUYMXjrCIpup7kee8BJVBeASs3EoGYkEv8Gqu6Al/hdF3+GxbZcohJW/lSQMNP+ac19r8Se0bb+dDlbrq4yhAGzVRDTNqwINoqnvzExIgZYJRryB20Bb080xBAKoLWqfT41FUYeCCQNb+EqmSdEYCpxLvPTBJ2nyCLTgY+QU0w9azUjA9Iii3hhsdylpFonVQ+LchIYSz64sA+1U85O+6Q1vVrfxtLtbxBhqhd/tRKePHF5/E0KAB03yuw2qKYuoB+Ob1v0uNZufXcvkeY3K9l5qOLpP+QinZa8qUrizCyMjukz2ltjdWgOthGXogxaYhy
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(366004)(136003)(346002)(376002)(39860400002)(451199024)(1800799009)(186009)(8936002)(7696005)(66476007)(66446008)(76116006)(110136005)(478600001)(122000001)(55016003)(53546011)(66556008)(9686003)(41300700001)(64756008)(6506007)(316002)(26005)(52536014)(5660300002)(83380400001)(8676002)(71200400001)(66946007)(2906002)(86362001)(82960400001)(33656002)(38100700002)(38070700005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?RFBqQ1U5VDJzanl3QUllQmxHU1ZBUk5RbW1WblpXOUlGZmo3ZTMwSklvNUNp?=
 =?utf-8?B?QUlnZm9wRVhoOUJEU1J0QnZPeDN3NHBGRU0rTGJMZjBDbHcrdFF4OFk4MTd0?=
 =?utf-8?B?RjV0cXZFNU1CT1ZlbU01bmExZFZyVUlZU1pBdW5xYnJyODFwVzE2Zm1Ebmds?=
 =?utf-8?B?aWt2UXVvc3pMeXVWalBEc3FzTE9QL2QraVlFT2VLMytVTkE1TDJrL1Z2RFhV?=
 =?utf-8?B?UXpNaEozdGppZ1R2azdoT2c1S2V2Rk5BQTh5dzJBdTlRcUNCVDA1c2Y3dy83?=
 =?utf-8?B?ajVGS3FkNzVlZVNjVHFBL1JpdW5ya2JsTlg1T256YWl1MXNyaWZ3cGtjSk4r?=
 =?utf-8?B?aFROby9HdlVzSmU5RDd3TFRyMmVGMkNvSUtaTEM2YUU3UzY5RVlLRHdobWdO?=
 =?utf-8?B?N0owcFV1VVJkSDZxUWpSVDZXay9ybXAxdTlpTjFyTjJPZm5BRVVlYjdCMGs2?=
 =?utf-8?B?OE1Dc3pDdktTRDVDbmd2V0pSdTQ2Vk05M2JpT05IalRpLzhkT1hJLzhsMVVy?=
 =?utf-8?B?OGtGbVlCRWdYQncvcUQ4WnUyOEVlMllzVkVRMkxOckZNYXUxYmxtRTBvU09q?=
 =?utf-8?B?NDdRZTdWNEdFeHo4RitlU051ODVISWRSMXdudHVYNXJNQkhFSVZ4bjNEQlZ1?=
 =?utf-8?B?VjE1UjdRdVYxTHJZdU1TcS84ZlhNQ0xONkdWRUVKOHR4Vk1wVyswS1JoU0Ri?=
 =?utf-8?B?WWFVMjNybW9qTEMveFBlMk84dnBaM095QmtVWUVLY0hGdWRoL1hCUWJPVVUy?=
 =?utf-8?B?R3RSaFd6YURvb04rMDBZSVVTR09DVThRamd4cHVvMFJhZ05heCtoYTBHTDZq?=
 =?utf-8?B?MlBXUURxRUcyYXhJZFdZTWo2WmUyR0J4WjBQOE5ua2FIRVliNmlMbnRNUFRP?=
 =?utf-8?B?Mnh0TEVsNzBxYTRhdzRXQWw2NWJES09WcGQvREdrQ0dvUHVaY2liMm16S3Ri?=
 =?utf-8?B?SE5iRldBdGNoYm9ZRVVUSWxLQ0NCNXpXSW1LN01Nc3J0RE1PVUJrWE43eU1o?=
 =?utf-8?B?ZmFLS3VNZ2NPTERWbFZCTE1BS29LWHlFQVhQeDJROHEvM0w5UFVEUHpJcGlk?=
 =?utf-8?B?dDQ3UG9CNE1GdkJNRHdzQ1pzNTlOajFoRmV3Wll1YXBoOVZrMnN3dEw0Qm1r?=
 =?utf-8?B?TDR0Ykk2TnkxemVUWElhN2RYTmJEeHpJMGRTSndqbWRmejFlSys2Q2hseDlm?=
 =?utf-8?B?dGZ6ZjE2elQwMWJzYkU3VnQzNm5rdFpCZVAyYXRiR094QUNmNDlFY0lmM1NX?=
 =?utf-8?B?SUFSWUhHYW5ROE1QUFFGM0N0dyt0aWkxUXF4WSs0K2psRUlBemwzRWJjZWg1?=
 =?utf-8?B?MmUxLy9rZWhXL01UU01Pbmp3ZTVxYmZJWklscUE3SzBXM0ROc0dzUjFueS9K?=
 =?utf-8?B?SnhMNUJTSzVBVXg1YlN6OElaYy9RUWt0SHZ0OWJOSWF6SUs5aWNWeDVYUUdk?=
 =?utf-8?B?RXNadlg2ZndiVjVqYXhHTXBRNDhTRDNXVmZSUmdJaFlqR2wwdHlxeTQwS3BL?=
 =?utf-8?B?Z0xpd256b3VLUVpTeGtXN2p6NGNFdjQxbFVQSXRXVThNWXVJbitNelUvMkJX?=
 =?utf-8?B?eUdycTVCTFExS1NlYkRWMytxc281cFVtRVZnQStWTldkN2RxUXJHUlRqbnd5?=
 =?utf-8?B?ZlRadUYxMmhTWGt6bGZGWDd0Y1ZZdUNneFFCMktSTHR3eE1mWVAzdi9rMG5D?=
 =?utf-8?B?OU55NTc3cDRWSFhFQk1GdHNtYkpqYkN6U3BkUWpCTEFGVDhmc3c3N2lLLzRj?=
 =?utf-8?B?SktvV1ZzOGtaaXBZc1FsMVBlVm54VndCbVYvTlhjUWV4V3IyYTNqZXJ1U0lN?=
 =?utf-8?B?OG1EczVyTFNMK0hjbjRyL2N3ZnpVWTJ3N0JsajJrQXhqcE1DY29hTG8yMmJO?=
 =?utf-8?B?QkhMb3hENVY2TGswUFdDUEhJcjdQdW5xTitGRUdHdTNwbGdYK3VqUDhjb01S?=
 =?utf-8?B?RUt6WjNlUXZBTzVhK3phQWhBdnc1b050TVZoUFBpQ2FBQ0ZiK0ExU1JqTGtx?=
 =?utf-8?B?YUFMNVFPbmtGSHRWeEU1M0FLK2lsZytkQ2VGSTN1d3FVejY4YndyUTJzc3N3?=
 =?utf-8?B?bi9wMEkza2dPUm9GRERiRHg1OGxQVm0wV0xYQzZjMkZrR09JU3Jhcm5lOHJZ?=
 =?utf-8?Q?P/mWOemZvvqIscpoP0OCXnQ39?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cacaa86-2819-4e6b-c1ee-08dbb30b5e83
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2023 21:09:21.4336 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VzMYPZdajh0LDsAS9f/BCmfT/Bj5x74WdNr6PY3OVLS7icyixWBFeUtnGwJJ55V5bKdLm4A7OLZ0dxaEbinwiw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6059
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 11/19] drm/i915/dsb: Don't use DSB to
 load the LUTs during full modeset
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA3LCAyMDIzIDEyOjQ1IEFNDQo+IFRv
OiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFtJbnRlbC1nZnhd
IFtQQVRDSCB2MiAxMS8xOV0gZHJtL2k5MTUvZHNiOiBEb24ndCB1c2UgRFNCIHRvIGxvYWQgdGhl
DQo+IExVVHMgZHVyaW5nIGZ1bGwgbW9kZXNldA0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOkbMOk
IDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFVzaW5nIHRoZSBEU0IgZm9y
IExVVCBsb2FkaW5nIGR1cmluZyBmdWxsIG1vZGVzZXRzIHdvdWxkIHJlcXVpcmUgc29tZSBhY3R1
YWwNCj4gdGhvdWdoLiBMZXQncyBqdXN0IHVzZSBtbWlvIGZvciB0aGUgdGltZSBiZWluZy4NCg0K
TG9va3MgR29vZCB0byBtZS4NClJldmlld2VkLWJ5OiBVbWEgU2hhbmthciA8dW1hLnNoYW5rYXJA
aW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9jb2xvci5jIHwgNCArKysrDQo+ICAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRp
b25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jb2xvci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5jDQo+IGluZGV4IDJkNTY0MGFhYjRkOC4uMmRiOWQxZDZkYWRkIDEwMDY0NA0KPiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IEBAIC0xODA1LDYgKzE4MDUs
MTAgQEAgdm9pZCBpbnRlbF9jb2xvcl9wcmVwYXJlX2NvbW1pdChzdHJ1Y3QNCj4gaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gIAkvKiBGSVhNRSBEU0IgaGFzIGlzc3VlcyBsb2FkaW5n
IExVVHMsIGRpc2FibGUgaXQgZm9yIG5vdyAqLw0KPiAgCXJldHVybjsNCj4gDQo+ICsJaWYgKCFj
cnRjX3N0YXRlLT5ody5hY3RpdmUgfHwNCj4gKwkgICAgaW50ZWxfY3J0Y19uZWVkc19tb2Rlc2V0
KGNydGNfc3RhdGUpKQ0KPiArCQlyZXR1cm47DQo+ICsNCj4gIAlpZiAoIWNydGNfc3RhdGUtPnBy
ZV9jc2NfbHV0ICYmICFjcnRjX3N0YXRlLT5wb3N0X2NzY19sdXQpDQo+ICAJCXJldHVybjsNCj4g
DQo+IC0tDQo+IDIuMzkuMw0KDQo=
