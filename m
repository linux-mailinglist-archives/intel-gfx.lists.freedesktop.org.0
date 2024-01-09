Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5967382865C
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Jan 2024 13:58:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E291D10E055;
	Tue,  9 Jan 2024 12:58:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8A2AC10E055
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jan 2024 12:58:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704805081; x=1736341081;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=yireqOWOul3QDM43r3sEMG3nUQTqxQb5X3wDQk7Sqcg=;
 b=d1wgq8wDUfyQuJ8K0lSwF6jOoy7aBrkURn9lfgm/YAwTrjioKOnUAC2N
 dVReWGgfhjdrV64mO2O2kbzZAScHNkem30V7ZrbqTaFuGx2NwuPLzEZza
 tu/E1fx/HZhietMI8OooDwSs39Z/rl4k6K1C067PCd4l8wXirYKtyP80M
 YBzj6L49a1cLT8HzSNe3fMRiqlxLrr5RvYukvFVAn4Azcfej2f1fOGCYm
 FgcLKuSb7qLEik33GuwnNNRCR59YLNXTo5hPmD0q22lKuWgb3w5rbbkkj
 xcLtbF3YHsaW6U1ElY7qHKUV38x0fqcyKMa8XO/Al/PmeQmqOZp+71odC A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="19692370"
X-IronPort-AV: E=Sophos;i="6.04,182,1695711600"; d="scan'208";a="19692370"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2024 04:58:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10947"; a="900757091"
X-IronPort-AV: E=Sophos;i="6.04,182,1695711600"; d="scan'208";a="900757091"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2024 04:58:00 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 9 Jan 2024 04:58:00 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 9 Jan 2024 04:58:00 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 9 Jan 2024 04:57:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oFz9YAocT75g0ZX+rg4bU/sadW0qacq35ghsArHxP4f37z1oZQs/V1+z5z5CGNiVRrviuhNM2BtGF10iRSUhgofsYcOpwwokNt1ZB3ncKyohWgHw0D+Qz9k7P1UC/CeUaQ7MAnmWcFVBNoWgNhUkNQFo4tu5aUw3O4JsoWgxsvUfgdMoYICTUOsIc1ew4AobLaCAKEzAg24FPkl0HlWdi+9fYOPXDREPtX2I3vfOwQK3xcfeOYrTXnGGpZ38DcEt5iNjnhP4o2YtEm8hpMXwxp3lmyfQxcJCEejxTiN05zYkkoUeQPBhvpiWABLw7KYr2Nh8eZyOcLt9tevO1MHHWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yireqOWOul3QDM43r3sEMG3nUQTqxQb5X3wDQk7Sqcg=;
 b=LlFJKVtIOz3tdLRqD2YSiYfHr5Iw7ayK1cfyq0/Gc6wmClrm7a04gmxdU4colOJ8L073HIyQsYU9aGEVkazIm20vV0rvzNmiFHkr4tSPz3pzm/Rt/BZHfvyoiZsHQUcGU3tmlPjg7Ja7CCwvS3CJLykQnL5j/1ZZkLeD2nOaos8nV9BCkXrPUf+xcmK3gPgCWdOSqWMd+DIGL5qKIowgJq7gfvZCTRDJ3qwfLazjqjWaIZKydnVDjifWfqsmimtPMHtARKedsXg4QfEXXKuFXUw5HwsXsqt0ruVa2Zr9lDr69vx9hGwF8k9jUNLOp4V5rBFgGCrsqjrHR76Gvf+UYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by BY1PR11MB8007.namprd11.prod.outlook.com (2603:10b6:a03:525::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.23; Tue, 9 Jan
 2024 12:57:54 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::8b04:7396:7a40:f00d%7]) with mapi id 15.20.7159.020; Tue, 9 Jan 2024
 12:57:54 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 7/7] drm/i915/psr: Disable early transport by default
Thread-Topic: [PATCH 7/7] drm/i915/psr: Disable early transport by default
Thread-Index: AQHaMeBaHJWv3IAdxUKZx2PZdz+Oh7DRkxFg
Date: Tue, 9 Jan 2024 12:57:54 +0000
Message-ID: <MW4PR11MB70549E84E37783A801873E79EF6A2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20231218175004.52875-1-jouni.hogander@intel.com>
 <20231218175004.52875-8-jouni.hogander@intel.com>
In-Reply-To: <20231218175004.52875-8-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|BY1PR11MB8007:EE_
x-ms-office365-filtering-correlation-id: 18e57f62-9c80-40e4-0b66-08dc11129856
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5PtszOgtxPLRgVRXfNftch5LpolahdMANEKxmP22gkWjfTDKP/Lpa4xYqAppCaXOOtZCz7VVzjcU4AXpOeoiaIECsq6BOZOyJVLcVMoVaj1cr+uAMybblC6B7gfY5aflWKutfL62g0cxF8kWApD1PsNvdHGlICcU3wR7HBYFNYsuHWrizhn7I5AX6lQmLoBdfJx1oXlFoj4AmCteEGmoDtVcGLWmnJxtbOru2sJRtHSjzBj6+pXaCds6d2nmFLH3wwyQD0sSGZl9iIZEP/gfnOJy7d33ZIa3w6iLmvCApww6VqzNwaN/wfWMLq9xBqzsWU2/9drW7JjO417s2eQ4Kc05ODurLIhXq6+QVnqt2bwkuNBE6DsPQWvvelhEzX3tqP//aQHOHiZTFi5mzTV5zt+Xpy0eIO1C8yKVZxGV1qk+Bu00CXZNfLZGVLOU3gjVSbP9UKKgPh0mEVSvof+uAJEdoBi1AhTPJ1EZGkMJw/j9U0Jz8KdBFtU3iI5hvFB1QOxpU4z80zTOZUCkWPI/YJ/aWp6MaknIwzHEdy8+PtfCUoGuQYZ05AZemr5tq3VghGPNGh6LJOka+nsN2+5Y4asQO570Fgsx8uPcKwbw6jK+cuxcXVkkpoZk8tuSXiKk
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(136003)(39860400002)(396003)(366004)(376002)(230922051799003)(451199024)(64100799003)(186009)(1800799012)(83380400001)(26005)(66446008)(66946007)(64756008)(122000001)(38100700002)(76116006)(82960400001)(2906002)(41300700001)(66556008)(66476007)(71200400001)(53546011)(7696005)(6506007)(9686003)(478600001)(5660300002)(316002)(8936002)(8676002)(52536014)(110136005)(55016003)(33656002)(38070700009)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NlAxcGdOMFR0VXp4dW5QMnUzbnFCVmxpOUNWcWs1c2pJWVRqcXp3Q1ZaSlNK?=
 =?utf-8?B?cWRuRStOYll1SHpVVm92VWFpVDJvZk8yckZIY0Fwa1RtWDBTN3RNWkhqZDBH?=
 =?utf-8?B?OEJnb3R2YktaTWRFdjV2amJkTVhMVkFWWEFJQnhrM25oTTA0KzJJTG5SeHd5?=
 =?utf-8?B?VFNjR3ZLT1Y4eDc5aGNiOXRUN2l3elNTQjRnWkFUejNtbmxEb0xwNTZxQmY2?=
 =?utf-8?B?MWU0ZTNQV045SHJ3d0hRT2dLb1E1QmtYSXVhbXZUdk5jeVc0UE5HQUtRaWdG?=
 =?utf-8?B?QmRKMXprWDI2bEpWTzFFd3lhdGh0UDBQRW50VTBKdXNHSkMyNnJCMmlLbGt5?=
 =?utf-8?B?U3o3bGdUN3p6SEpKazN5SVZncUVxZW4zS0pEVFpqVEtmek1iRzFDNSt1YnlH?=
 =?utf-8?B?bUQwdjYxbmxLSWpnN1FRSzhmZlJxejdjendsM25UQ0oyV3lQREExTkpFalpN?=
 =?utf-8?B?Q3dRM3ZDYkNkWmZhSEVGaVMrOWY0T0RnY1dnUnZWNUh6c0NMM0xMZXpzK0lo?=
 =?utf-8?B?TkdwMXVPbXZ0dFc1UU5HZFlTcTRsVEk5bzUzSjNWT2tpNmg3dGhJRG5XemMy?=
 =?utf-8?B?SDJEMnJPaVUxZ1JDWWc5RlMxaW1hbjcvUzk3QW93ZWZLVC9obmN3Q29sazM5?=
 =?utf-8?B?eVVuUEtWQlAzNmg4d3p0TTVIbVhIL24xaTBudm5kSVJHb3VuUDRmYW5WOFRK?=
 =?utf-8?B?SWJGcTM3R1M2M01uN0V1SWVFQkxNN0syRVJRWmE0bW92SWxRWTUzTUJpZGNo?=
 =?utf-8?B?SENQMlpTSUxyLzdOZkFnRC9GOXgxWXEvbnRtNEZzdXppWTNuU3BpSUU0TlpP?=
 =?utf-8?B?NXJmNEoyY0RCTWo3d2w2TFNscHh4YUE0TXpva2pFeTQxQldXZThuQlZTR2pB?=
 =?utf-8?B?ZXN6WlEzcWVzNTJWM3JYa3NwV3NjTnZjUkxQZDAwZUpUNDNMbmNBTVc0dmlo?=
 =?utf-8?B?cVhLQkNvanJhcUluQ2pGSkhMR3pERzYxbUprdk9LU01VSmdVNnRhcmR5Y2F6?=
 =?utf-8?B?WElURkhxckJIS1pnUHJ5ZC82c05mNFlGQndGbkhMelhTM0dZeXYrVnBkVFFa?=
 =?utf-8?B?ajNyQks0VHNXQVVkckF5REpLSStFdnhGdlFaaFZPR05LTmxSMU5mUlg3WjUy?=
 =?utf-8?B?RG5CYVdZMEpKaTJOdVEyeExyNi9mMW9zV2VUSlkra1VMeHhJdFI1ZWdIK2o2?=
 =?utf-8?B?WnQ2a1IremRUQytENzFIZGlncnc1WHJYSjFoNXllU1hNMEhuTTVrTmM0YTB4?=
 =?utf-8?B?WEFkY0txWGlOeVBmbGprUURyaW1ac1luc3R4WWVPcFVXRjRkVlVjaXBlZkRP?=
 =?utf-8?B?U3NGcURVYm1IS29nNUhiN245cFNEYnJMbnBRQ2NXa0tSaFZWeDlvYlBOV2Vk?=
 =?utf-8?B?bU45UXBNT0FXNFJxR0NiV2JLMG9MbXBObXBXeDhwS3VUaDBTSVpwaUpzbS8y?=
 =?utf-8?B?czNmQzZvdTJhYjlrNjFKZ3J6OUQ1SGIrbkYrL0o5WkFrQStTbGRVaW5yd3lS?=
 =?utf-8?B?dlB0cmcxaWJBMnlEajBRTmVJWjV3dURsQUxEQkY3cEV0bkRDRDZUaHBZb2pU?=
 =?utf-8?B?RmczOHp6UEZUY25LQjdrWTd2QjZaRXdVTkRDQ2tGWWlWNGxLaExkSllWVjBl?=
 =?utf-8?B?cVZibmpJQ3hOekdBOC9PUEhtbkJSZGVkUUtVeXlkb3Fyb1UxT1ozV2k4Uml1?=
 =?utf-8?B?MWFRME9sVmx5ZDBmOEpIMGlETG1MRVhGVnpzSHNXbDN2eDdhUzBad2xOcnRu?=
 =?utf-8?B?YitTUUFwZTk5MndmMTg0Um14N0Z5UVNicEZDREdadCtDVXJUL1NhWmRXSjRx?=
 =?utf-8?B?ZE0rakloS2tFRWtpTURBaHRpeWRLT1k5UWVVZUYzaWtTaUF2ekhjTm40dzhy?=
 =?utf-8?B?b1VBcEE5cjBFVUlncytMWXM4WHVnR1U1Qi9ML3V0N2RrVUlnblhFS2c0U21n?=
 =?utf-8?B?OExWdEh4cWdadG0vZyt1cEJVMzFzbmFRT0cyQWJWLzg4UGI3cjVKRm81M0g0?=
 =?utf-8?B?MzdiN2tzdWhNdERURGt0VGpZM0xGL2FJZ3NNbmVUL3Fvb2N5Z3VIZGRvVEdx?=
 =?utf-8?B?Z3VYVnVZTEk1Wk5BTXFuQUhFK3AzZ3ZDS3orODI2ekJGRHN4WFlRaFFBa2Z1?=
 =?utf-8?Q?dNdYtKNONmxy+Wz3ZTRMc9+NM?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 18e57f62-9c80-40e4-0b66-08dc11129856
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jan 2024 12:57:54.2292 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: C6W113YYNP6SF8V81GDzXCAKIrix2ZoKm9Z1syB5ru30yq0iK3awHpR9P2ExGbnkw/uEqWJ8++Iu4W4yxJXovQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8007
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEpvdW5pIEjDtmdh
bmRlcg0KPiBTZW50OiBNb25kYXksIERlY2VtYmVyIDE4LCAyMDIzIDc6NTAgUE0NCj4gVG86IGlu
dGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDcvN10gZHJt
L2k5MTUvcHNyOiBEaXNhYmxlIGVhcmx5IHRyYW5zcG9ydCBieSBkZWZhdWx0DQo+IA0KPiBFYXJs
eSB0cmFuc3BvcnQgdmFsaWRhdGlvbiBpcyBjdXJyZW50bHkgaW5jb21wbGV0ZS4gRHVlIHRvIHRo
aXMgZGlzYWJsZSB0aGUgZmVhdHVyZSBieSBkZWZhdWx0Lg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1p
a2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSm91
bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDMgKysrDQo+ICAxIGZpbGUgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gaW5kZXggYzI5ZmQ3MDg2MDhhLi43ODM1YWZlZTQyODMgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBAQCAtMjg1MSw2ICsy
ODUxLDkgQEAgdm9pZCBpbnRlbF9wc3JfaW5pdChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0K
PiAgCWVsc2UNCj4gIAkJaW50ZWxfZHAtPnBzci5zb3VyY2Vfc3VwcG9ydCA9IHRydWU7DQo+IA0K
PiArCS8qIERpc2FibGUgZWFybHkgdHJhbnNwb3J0IGZvciBub3cgKi8NCj4gKwlpbnRlbF9kcC0+
cHNyLmRlYnVnIHw9IEk5MTVfUFNSX0RFQlVHX1NVX1JFR0lPTl9FVF9ESVNBQkxFOw0KPiArDQo+
ICAJLyogU2V0IGxpbmtfc3RhbmRieSB4IGxpbmtfb2ZmIGRlZmF1bHRzICovDQo+ICAJaWYgKERJ
U1BMQVlfVkVSKGRldl9wcml2KSA8IDEyKQ0KPiAgCQkvKiBGb3IgbmV3IHBsYXRmb3JtcyB1cCB0
byBUR0wgbGV0J3MgcmVzcGVjdCBWQlQgYmFjayBhZ2FpbiAqLw0KPiAtLQ0KPiAyLjM0LjENCg0K
