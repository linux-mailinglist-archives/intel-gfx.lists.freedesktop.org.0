Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADFA8268E8
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Jan 2024 08:51:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2A6F10E182;
	Mon,  8 Jan 2024 07:51:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8D6A10E182
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Jan 2024 07:51:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704700313; x=1736236313;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=qBBAK1FJIinPJOqUnXR/UknemBamuAhrnGpYPpquMAs=;
 b=VQwY0WQ4T8RizdFg1etNg2HLXXGuqwdOG1IW6rkGiEdjowF5Qni9uUyI
 2ntc9aVFUh9KWH/V32EdqGPV5XpiCbq9rEJt9exCQ7nBbexAVk+PrUnGB
 wIDMz3jntKZ8h8+oWrVOiEPjuX8G4N/D2H/vZuxYXxAkkvunsT/IPE3XV
 8kMxXS1NYtsOIrTVRTq8YAeugB8qHdbv2ubC/d/fXtJ4cl438cRRGCtdR
 g+nWZvaH0fto0eUTkVYGfpzz3aKAVKaqTvjT14q2EORdM24hfNr/UeNta
 YSJe60q712pVyCQ1WL14BgrbbFQ+50rqMkv2aOTAG6n8hBtmjRujrOHZN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="11163805"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="11163805"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jan 2024 23:51:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10946"; a="1028325052"
X-IronPort-AV: E=Sophos;i="6.04,340,1695711600"; d="scan'208";a="1028325052"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Jan 2024 23:51:52 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Sun, 7 Jan 2024 23:51:51 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Sun, 7 Jan 2024 23:51:51 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Sun, 7 Jan 2024 23:51:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=R/u9DeqCQzMgaeyjSCIcfeCy/OiY9+2HbPWe2rZz//7NeMyWkULLNN6PKBQw7rTXJ0qCNtETY7sUCuSALcehDcB+0rhD/ua1Z2HdUR0riKyxTnESUpY8N6Z5EucKyh7IIDYvvBr1W2HIHHXXk8fQw/p3FaRUiWD41Y+Z+z6IoQPpsMuSmQ3m9DRB6z3XQN1TRNIppVTRt0ZIiRMbI5AWWFeh97Ltrle0FpJLByiN/lvLGBTs/KZyeJzhRB0UKrMpF6VMMvuINRsLwVasAue/7PRXhYDrrcXtHEcVg4o9W3u1eelnaG7PdeddLFOa0IAsOS68XeV9N7BRQPCnHIkwfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qBBAK1FJIinPJOqUnXR/UknemBamuAhrnGpYPpquMAs=;
 b=nTMitwiOBggCFlh7IgvJWhjzTmrNR2E4dmyaIyoPhPXIHCMb/MMsk3ZY0DwmU2FPiRFOALoSegsQmJWYtlTLDlHllFSluU/OfOYh5GA3Wf2Qg4kOESX1wSGGv2yfkd4/PvPO66LUImgSuE0d+vvayc3lTMlkeJOqUHoIfIhqH0QWeQDO64nUr3PiuQc6n0CMlkSZEI4R185fKJtGCtqg8NG+LeKit3eK/jaugvEciodQsxTRunAqJK4mscqBSLncRd4lHO6ypQyz/2u6AuKkW4o1Ty8tTW5mhYB1oY5F4lIiJs1dpr5wuwkyV8zTzimZSyzWBQ5yc1V3xQ7IFhsE9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA0PR11MB4718.namprd11.prod.outlook.com (2603:10b6:806:98::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7159.21; Mon, 8 Jan 2024 07:51:49 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::dde1:91ce:98c6:d737%7]) with mapi id 15.20.7159.020; Mon, 8 Jan 2024
 07:51:49 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Deak, Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 06/12] drm/i915: Suspend the framebuffer console earlier
 during system suspend
Thread-Topic: [PATCH 06/12] drm/i915: Suspend the framebuffer console earlier
 during system suspend
Thread-Index: AQHaPuhRYuu56eIsvUuhagaSqQWQk7DPkTQA
Date: Mon, 8 Jan 2024 07:51:49 +0000
Message-ID: <b3810762608eb4a154f76a3015595f2402021baf.camel@intel.com>
References: <20240104083008.2715733-1-imre.deak@intel.com>
 <20240104083008.2715733-7-imre.deak@intel.com>
In-Reply-To: <20240104083008.2715733-7-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA0PR11MB4718:EE_
x-ms-office365-filtering-correlation-id: f4b86181-8c7f-44b8-e527-08dc101eab9d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jxZoltaLbOBWGHe0DyBrdudpg+kUjwpz2R9d/jYaRZPplMe3i4gzlFKMjIrEdtf4OTjH1qlA6yx58zoa7PSxVxJH82maVer9c4MIzkbR9wmDfhKWdrRWhxg/zbOALL0Z3qrPSjLqZ0bpfgFDNONVXRaAdVTQCdBROB71y9JkHTAlNyVqBMw86iFy7cSEDGJhS44PaX338WcG+sd+dBoyi84cv7rNUJLUM0QywmsbIWzUNrlQ4o+J66g3nKYS8rg9sWR5V+Rf0teOg6mhLUjRz8gog2J9/cH+NQ5AlS6cSCAVods1N5zi3y1qbROSyZ9TOcyeoTGNQCqNNx2hcd52A0/mcc1Du3/D1Hn3Foy0qnv7YZOfWbVvwFl6debqlDVBluGLsAzlEX22oDranuY2CeFHzeSdWDv0Uw+nTwmYvdu4AKrhv53ch9NDdxrV5vjRlZMsaxeyIcjiupgnCDociwgw+C9sQQIh2q1Uv49v+jcqtjQDDwyBuJNTiZafUt7E9tpKotJXkY5nVNE0vOaemSC0AjGVO+8Htpgkws1PKB4+EieX/UkqWZqBVcAOcZl00YFv4EvPGNgE31LGnk20x0C2hVotudppxh8vyyDO74xMc/Ie+2CBuiyx0ctksV+/
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(396003)(376002)(366004)(136003)(230922051799003)(186009)(1800799012)(64100799003)(451199024)(26005)(2616005)(71200400001)(478600001)(6486002)(6506007)(6512007)(83380400001)(66574015)(5660300002)(15650500001)(2906002)(41300700001)(64756008)(66446008)(66476007)(66556008)(6636002)(76116006)(316002)(91956017)(8676002)(110136005)(8936002)(38070700009)(66946007)(38100700002)(122000001)(36756003)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TnpBbVpVRXA3UUllVEg4ZVVkMkNNamFMZ0J6K0szeGhCSEdza1NZcWJid0Jv?=
 =?utf-8?B?dytQZkhFUDJINFN4SmJvZjdlU2VkZnFRT21ybkFJSzhuNFpINWZHTmlYVTZw?=
 =?utf-8?B?ZDJ2SDFaR2krMHZjTHNCMEsydSt5MVhmY21OWjc2ZlJaMmJwVHRyNkE3Wk1v?=
 =?utf-8?B?WEVpSXJoK3h5MlArcittWlgraEpmeWtEcTQxRTR6WHNBNEkzV0pVOC9nMm81?=
 =?utf-8?B?OHBwV200KzhQajUyY1RNWXluTUgxUk9qejNIZFIvTktPRUhlY0FMU2t3SllG?=
 =?utf-8?B?eG9nOFdCRHZrbk8xUnhCaG5hTGVMMmdVOXM1SlRYK2hqVU5YRWJCdExNVERI?=
 =?utf-8?B?dHVJMnFGa0k4bUxMVSt6NUVDU2xhRkVOQ01lOWNqREZ5QThqZExRNThJSFVL?=
 =?utf-8?B?aVJYRGdiMStmUTNKNEFnWHplR2dIY0x2UGtJTUhwb1NNdmFISEdMR2dnV0tr?=
 =?utf-8?B?NUdtQnB2WG9IMTdUclVyMDRwYTlmODRhRXo5MUY2aTVabUVISEkvNy9qZ2wz?=
 =?utf-8?B?eVZnL0MzNU00RVdJQmp5SW13eHhXNGRWVW5rbUgvWTMzRFJQTzJpWFB2Mmxy?=
 =?utf-8?B?MzQ4b0ZRV1hGZCtOL2xsQXg5RmZ2SXA0elEybnJweUlDYkJZQUF0SXk1YUJs?=
 =?utf-8?B?cVliS2dQNDQxM0UwbDdkcEdnY1JXZDBkLy9PY2pCbVhrUnZPMmxmWENiR0dY?=
 =?utf-8?B?M016eEduV3M3bFFPTHdHWlllcXdiZTUxOEsyV1FKN2pOeU1UaDRXMjVRa3FM?=
 =?utf-8?B?d2F1aGtYOUk2cEpWYVRwYkl3TWpOVDRTWSt3U2FRUjhNYWVUMEkxMW5UMlhr?=
 =?utf-8?B?TldESE5TQlczUUFzbXVDUFRKODlPUDdJdTRINTVUU3hSN3hMZE5KQXMxRGs3?=
 =?utf-8?B?NDEzM3U3QVRGMi9kYnJkQWJRYzlBSGRLdUlNaDRGZTV4RmtYamduQTg0ekk0?=
 =?utf-8?B?MXJCcWVxSi9NWWR1NytCbXphdFVwbVoxZ2FxalZVMUV4aHdYdG00K1UzVkxk?=
 =?utf-8?B?N0pHR2E0ZWkxbGlKbis3Tkt4M3Y4UnZLUjF6R1lqV1F2L2s5cW9iV0ZJMkFU?=
 =?utf-8?B?eFVPS09CQWJ2UE9yNjhMbEd4d0xpWklGdWFwNGtJTGlidmx0aFhQWmxYZTNx?=
 =?utf-8?B?S2hwWlcveXBib082OGg5eEdMb2F0UUVuaTJzWE1NcFMwY2RkZTF5c2N4cjR1?=
 =?utf-8?B?cndEMlQxL2lUMzdvalRZMDhIdGtUUWZsTktCbE85Q1pmMkxLSUpBYWY1eUlq?=
 =?utf-8?B?dVFLbExld0cxQnd6UnlpTnNTYUZrVlo3Z2pnSWhUNjZhVGlvNCt2U1B3NWox?=
 =?utf-8?B?ZTQwTXlRTnFaRnI0VGlTS2JxaGFIV3cwaE96ME1Kd0hHRGFuZW4vVEFDRTNN?=
 =?utf-8?B?TFIvT0FWNkVvQ0Z4TldVRHZzeWFvVGU2SmtWNWlTQ2RuMmJhU3hZSWFWM2hP?=
 =?utf-8?B?eWJOQ3M2aUVOY0RLNzZMaE00UjN2N0FhRjdGY1pkb3VHVjJ6TnA5b1R0bDdt?=
 =?utf-8?B?MURkTmJjemwxcllsWXNIa2NlVjdpdFhXSWZ3MVBIYU5PcEg3MjlyRjNHVmo0?=
 =?utf-8?B?a2swWVVHWXpCN1dtMjlxQTl1NHFvakFZak9rUWh2cnhac05TSEFPeWtZV0hJ?=
 =?utf-8?B?b1lvTmRmd2hpbE5WVm5pWHZ1V0xvYUw5a1FWcll3bXN6RUZuODNPakt6REFN?=
 =?utf-8?B?NE1TdkszODVNWWhuMGJyUGFzV1MvYisvVHFqT3hpckViSlZJbnljTzhVQW1W?=
 =?utf-8?B?QkNMTXRrbXRRMGFNYjRVbWxmNmlIR0RrTjFpT2g3bTd0dXVub2lTTnIxRFhq?=
 =?utf-8?B?dTVTeEQvYjZERmdSY3dGTnkrMENVWW5Yd2UzaXZDT1A4K2RUQVhUZS9yZGZi?=
 =?utf-8?B?TGxIMFlGSW1MekU2SlE5Vmk0c3l6OG5XK29oSkVWTk53MFV4dFprQW5WSkhh?=
 =?utf-8?B?alNYVWUzK2k1KzkvaE5WZ0MyVzFJSS9QUTdlaEtZdjJyb1R3UU9jaXg4cXI5?=
 =?utf-8?B?ZzNIWlJ5ZFhwN1kzUmlKaVU2UEErMGtpZGZPV3BKTUxzaXFLMmFmN3dxZHFw?=
 =?utf-8?B?V3E0OVhMdDM4K25Wc05FdTh1SytzRHpNallJT0Y2UE4rSTV3RnhQeElocnk3?=
 =?utf-8?B?RjIzNWo5QS9GdDZqSnZMUEJ3UWlSSUxvUUxWaDVRNFg5eWpQY1QrbGJYUkhS?=
 =?utf-8?B?S0E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <5F2DC51130E5924FA334855C5BEC3C7D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4b86181-8c7f-44b8-e527-08dc101eab9d
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2024 07:51:49.3687 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pYJJILfiRnBIcDFScmwEXk5Sp87QK6uJf4RLCzJerX6IPBqtizDiz67rzoruQpk4IHfNBXKO9QgUnz2PeThTODriu5bvp7/ip80XhbJ9VwU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4718
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

T24gVGh1LCAyMDI0LTAxLTA0IGF0IDEwOjMwICswMjAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IFN1
c3BlbmQgdGhlIEZCIGNvbnNvbGUgZWFybHkgZHVyaW5nIHN5c3RlbSBzdXNwZW5kIHRvIHByZXZl
bnQgbmV3IEZCDQo+IHByb2JlL21vZGVzZXQgY3ljbGVzIGludGVyZmVyaW5nIHdpdGggdGhlIEhX
IHVuaW5pdGlhbGl6YXRpb24gc3RlcHMNCj4gaW4gYQ0KPiBzaW1pbGFyIHdheSBhcyBkdXJpbmcg
ZHJpdmVyIHNodXRkb3duIGFzIGRlc2NyaWJlZCBpbiB0aGUgcHJldmlvdXMNCj4gcGF0Y2guDQo+
IA0KPiBTaWduZWQtb2ZmLWJ5OiBJbXJlIERlYWsgPGltcmUuZGVha0BpbnRlbC5jb20+DQoNClJl
dmlld2VkLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCg0K
PiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jIHwgMyArLS0NCj4g
wqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2ZXIuYw0KPiBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2k5MTVfZHJpdmVyLmMNCj4gaW5kZXggOTI2OWI0ODUxMzdjZS4uMTY2
NDc2OTQ4Yzg5NiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvaTkxNV9kcml2
ZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9pOTE1X2RyaXZlci5jDQo+IEBAIC0x
MDgxLDYgKzEwODEsNyBAQCBzdGF0aWMgaW50IGk5MTVfZHJtX3N1c3BlbmQoc3RydWN0IGRybV9k
ZXZpY2UNCj4gKmRldikNCj4gwqDCoMKgwqDCoMKgwqDCoC8qIFdlIGRvIGEgbG90IG9mIHBva2lu
ZyBpbiBhIGxvdCBvZiByZWdpc3RlcnMsIG1ha2Ugc3VyZQ0KPiB0aGV5IHdvcmsNCj4gwqDCoMKg
wqDCoMKgwqDCoCAqIHByb3Blcmx5LiAqLw0KPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfcG93ZXJf
ZG9tYWluc19kaXNhYmxlKGRldl9wcml2KTsNCj4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZmJkZXZf
c2V0X3N1c3BlbmQoZGV2LCBGQklORk9fU1RBVEVfU1VTUEVOREVELCB0cnVlKTsNCj4gwqDCoMKg
wqDCoMKgwqDCoGlmIChIQVNfRElTUExBWShkZXZfcHJpdikpDQo+IMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgZHJtX2ttc19oZWxwZXJfcG9sbF9kaXNhYmxlKGRldik7DQo+IMKgDQo+
IEBAIC0xMTA0LDggKzExMDUsNiBAQCBzdGF0aWMgaW50IGk5MTVfZHJtX3N1c3BlbmQoc3RydWN0
IGRybV9kZXZpY2UNCj4gKmRldikNCj4gwqDCoMKgwqDCoMKgwqDCoG9wcmVnaW9uX3RhcmdldF9z
dGF0ZSA9IHN1c3BlbmRfdG9faWRsZShkZXZfcHJpdikgPyBQQ0lfRDEgOg0KPiBQQ0lfRDNjb2xk
Ow0KPiDCoMKgwqDCoMKgwqDCoMKgaW50ZWxfb3ByZWdpb25fc3VzcGVuZChkZXZfcHJpdiwgb3By
ZWdpb25fdGFyZ2V0X3N0YXRlKTsNCj4gwqANCj4gLcKgwqDCoMKgwqDCoMKgaW50ZWxfZmJkZXZf
c2V0X3N1c3BlbmQoZGV2LCBGQklORk9fU1RBVEVfU1VTUEVOREVELCB0cnVlKTsNCj4gLQ0KPiDC
oMKgwqDCoMKgwqDCoMKgZGV2X3ByaXYtPnN1c3BlbmRfY291bnQrKzsNCj4gwqANCj4gwqDCoMKg
wqDCoMKgwqDCoGludGVsX2RtY19zdXNwZW5kKGRldl9wcml2KTsNCg0K
