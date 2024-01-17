Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 636D183048B
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Jan 2024 12:30:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B96010E6DB;
	Wed, 17 Jan 2024 11:30:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 91F9610E64A
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Jan 2024 11:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705491013; x=1737027013;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=oKtchAjzxMUgxTfaq6Q08yX/PV4wj0ofROPC9HWqS00=;
 b=XtSaahSVQ5VVZPSpP3YbHEM2k8iPAFjipxxkKyHMkdVU4rzhP4syWFr2
 ATEExe0CZbr/WYr2sU8kaES0nnSBsIxcgFlVWJJbxWVA6seQ8mv/rBwuf
 THgku1Nx6hdb3nPhqgVNyP35WX0nPJinrE9Fk5kJd23+3TAqaAuvjIp1r
 mRv7I0N6At9A9hbc6tazign4St+c+DVE6IQY0hbYtretLxP2K715yo24w
 UEnWh0MDdwrFNkrVr8Wt5NcqGea8sfoWHIE59ZIii6UKJDmH9aH2s5DWJ
 tx/qR3b6WYlVsMjgE0G0c8ULNFcWizqtfS+RnPeunrWDBc9inVI6/5ZbK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10955"; a="13499881"
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; d="scan'208";a="13499881"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2024 03:30:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.05,200,1701158400"; 
   d="scan'208";a="17309"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2024 03:30:13 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Wed, 17 Jan 2024 03:30:12 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Wed, 17 Jan 2024 03:30:12 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Wed, 17 Jan 2024 03:30:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CkdmUilkqCjVFeYivoCKh6DI2fIf5oJdUFFN0MKXAXpByUNcZhkj7b/BCsubAHHU8PgRiu1YBL9TAQNmESrg6nd2HvMlGfugjwUsiuVCByFpLr2woIiaO3/hgk9PHK5pTG7DFAgrRjhPkzQ4QhbZKOlRGLOzeeSUMCJFOGmcM9sXsRUfe6+mn19dU9Z/t8Hu4X8BJLBrd/aEP++CkaL+wmCGfXRlwCy5FHRnOGz6JFZeaRKO2Cx4u8zKh1zUOd9Pr/Nio1llUDEpmS3Hhp/tIePXPe3GNGMmE2XOTceYDOSvZScKVi8R1h5PojubhtlWN2QDVn2PZTr2PnfY3/CQag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oKtchAjzxMUgxTfaq6Q08yX/PV4wj0ofROPC9HWqS00=;
 b=P/ExMJcWi+uP6O4lIfp4AzzSYDOX3YNROAg0AHPxfAQb9/Wga5T9DxTGBsHnIpypptEJ4xB5x+gyGrbTlcv7FDLN8U+bksbQBOiG3lk0Eu6zn2jP4LZLbHL+fzEQ2tdQRFkO+1VHitq8jyMyUe+niCaP6dolkzzhbZ3RvRCO7e+XTNZJ46fxlB7p5M5KzLTOtrjAA/0A8S+qAqOnM4Lrs/JVKGefGh35ioreoOp9vuwbfORRcMPrJ2g0xURn1pwEaHMqimoBsbvmfskX9jUFxoJMIqIZGgk0chMahuzMu8hCXgCN2gNa1qybX5mhYMTEjLRF1ZuBFyBbY4tMupnAhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7202.23; Wed, 17 Jan
 2024 11:30:10 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::d720:57b4:c6ef:ddd8%4]) with mapi id 15.20.7181.019; Wed, 17 Jan 2024
 11:30:10 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 0/9] drm/i915: Cursor vblank evasion
Thread-Topic: [PATCH 0/9] drm/i915: Cursor vblank evasion
Thread-Index: AQHaLa63QKJQL65bsk2n43Z9AffrpbDeFLYw
Date: Wed, 17 Jan 2024 11:30:10 +0000
Message-ID: <CY5PR11MB6344AB8C492AEEA3E2700F53F4722@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
In-Reply-To: <20231213102519.13500-1-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|PH8PR11MB8287:EE_
x-ms-office365-filtering-correlation-id: 438bbc20-3e78-4133-6e56-08dc174faa17
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Uxk/uKIwXvdkL2GuAAdG/ijrfuumrtnaZiX2pkArimHlEbn/afGyF+BkP+gkEqxvJ2oVf4EgqZx8SCzGB+rtcBZulcAtUw/RsabqiYtZL8OtlSHgvdGAiWDd5Gt/f65fFet/wTNku2gnL4EHqql12qly3F+TfSZMsvZT5WlTJJtzRewE8NlAEFz7byyT22d9ObIkx3oAB82YCTOJymuN7Yn2TOh6JUrNcno05hpsxlCZnLU1+st6Q817vnMnUs0LlCohBs2RAg3f79UCBB28amku1ftbmktYTeMbTLRdeSfALYLDavhVO/GKwvZUmk4wzP70+1fRKQ/Y4/DHQb5n/BbzaTwPKi8e8/KnBsHFZtYO82uIBMnkr4wBwaA6ChQs4ep5x8RZTNstx6CRJFDLvEnXYlVz0kf7gpwKSS0fSTUl8WeoLvyh+MshFMdg0MNhQgcniXzdmlp16CHdKAaPeO1gp6E13o7HIkcrKLDLeQ23UtaouFWDN7n5cbF5YAK9U7iTX7bDn0xamv5ihnVI9MQzC/EkNMwltYsQsf0v4NnS5++BDOyLyPeXaYR6bWdJHcrF98efvRaL0hEU4t1OH9/RHKSGUoEjywOFHD8CyW2NH61bER4hpAg7QjycKWzZwWYTIH0BjZst0/zx5lPgRv2IeLWB0uBsWVyu0hD96jQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(39860400002)(366004)(396003)(376002)(346002)(230922051799003)(230273577357003)(230173577357003)(451199024)(64100799003)(186009)(1800799012)(41300700001)(122000001)(38100700002)(83380400001)(38070700009)(33656002)(86362001)(82960400001)(316002)(76116006)(110136005)(64756008)(66446008)(66476007)(66556008)(52536014)(66946007)(5660300002)(2906002)(8936002)(26005)(71200400001)(478600001)(53546011)(7696005)(9686003)(6506007)(8676002)(55016003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NUdNMVpEeHl2bllzSmg2RndNbUE0R3ZXUUF0Uno4NXJxaTlQVk9VV0kxbThN?=
 =?utf-8?B?Q2R1MzBhUlFYdHR5OTZvd1MvbjNLTnM5blg0RjRlOGFnYllrMHVvRkp4amdz?=
 =?utf-8?B?eWhoamFERFBlMS8wWmh5ZllyaWZTeldJcUJtZVJyc3RUQ3MxYUFxRmVYeHlL?=
 =?utf-8?B?V0hEcVRJc3haWmFoR1VkMkVIanhibXV2QXN1NTVqSk1zZng5NjFXNVA5ZzI1?=
 =?utf-8?B?REo1MXdrN25GN0ZybmRiUzZ1OW9FVjJVL3VkRDJjWktEdWZPMFVXR0pjMlJv?=
 =?utf-8?B?aFdndUZJUk1Yc2VLTDQyRWQyaFZ4K3Foa053K1hhVHZEVUsyYzlBV3ZwYmpC?=
 =?utf-8?B?M2E3SEU0ZFdjM2VrRTVTV3kxYklkd2I3MUN5UHUrbGM5K1ZUVWkvL0t1L3Zm?=
 =?utf-8?B?ajFGQU9reTZLNkh2QzduajJ6d0diSFMvSXVQMXlLOG5iZXl6VnRzQkxyVjJC?=
 =?utf-8?B?cHFRS3orNGhGOXM4ZDFvcDRBYVhNaElmOEtRblpIWi9UWmtZOG0va3Urb0Vj?=
 =?utf-8?B?dnlId1NFU1FzQXdDOWFmOWhBYW5EeVJRQW0zU3djUHBZY3lDVkhVN0xFK2RE?=
 =?utf-8?B?c2hYWEdmbFE1N3pZKzE5VVZSSWx2THNyVzAvQVpZKytPbW9xMlRxblJnenVs?=
 =?utf-8?B?N1V5c2pubERpUWZWY3NNSXZRakxaeDJwR2RvMWh2TEdFYXYzWlpXVXV1QTRD?=
 =?utf-8?B?ZEJYcEd1YnVZcEE4V1B2NEVYUGRtczFOaGc2WGNHVHdoUTVEOTZJcHVrcFhm?=
 =?utf-8?B?VysybEh1UHhTOGRvWE94VVlvNWZpRWFZMjN1YXArbEtURVZadE9pZndna1hy?=
 =?utf-8?B?MU5sVHZYdWtBZVRHdUp6QkxNcmRjSk43N3JOUGNoaGVzVDVXVTQ3bE0ydHh2?=
 =?utf-8?B?aEVJdEYrd1R1bDl5Y2E4b2FkTSsyVnd3akExdWJUaDdXMkxhdWQ3Q1BKT2lY?=
 =?utf-8?B?QjRCWTV5RlY2ZTBQeFhZSHlOTjhVU28wRjBzQWFTSzBsZkRtelhRNU5JQmxq?=
 =?utf-8?B?R3ZJdHZwVUdDYzRGRUlYUHNyeGdqWVl0VStlMzFUY0svd1NtalIzOG5UWEJz?=
 =?utf-8?B?YncrbVRXb2RUWHI3ajhheGo1QkhTSU9pVks0SGVOWE9QbEtobGZnSGR0MHdL?=
 =?utf-8?B?ZXFxZVRBUEtlRk9URGI5bkxEMUdGWWpzalFmR212V1B6SVBqU0ttNUNsZ0hS?=
 =?utf-8?B?cHlkOCttaFVqLzBEOFRIN1djalNNNXBxYkZWZXZ0Z1FxMFF0K01RTDZFSUF6?=
 =?utf-8?B?cmIySVZwUWI2OGhNdDlWVTJYZnFqdWFLV1M4M2FtM1NyUFQwTk9DQlpoK3F2?=
 =?utf-8?B?dFZyMXJ1N0w4ajNLZ2dPdWtYWllSSmVmUzJUUHY4WVlGV0xXbGZsOFVKN0hn?=
 =?utf-8?B?aTh3dStjSVMxZkN0RkhSSW5FeEN5VDRIRWVKN0ZmaFNSdVJaL1R1NktPZys3?=
 =?utf-8?B?NUEwdjBiby93a2tNS1pnVFFneTdJSDlxdFVycHllRm81MFhiRWEwbHZDWFBW?=
 =?utf-8?B?TFMybXZRUGZ5QkxMZVl1L0hiTjM1ZnV2SklBT3hhTWZvcTNFMG5pdzU4Q3Iz?=
 =?utf-8?B?dUxkSmNpUDA3UjVMQzRaZUNaU0V1dU5TK1Z0cGM3Z0dRVkVuNHo3dy81SDNl?=
 =?utf-8?B?ZTc0M0xodVFLQkxuQWMwU3pFb0JCcHA4djhjNjRTR0lUTFJ5aXBIRnYrZjlC?=
 =?utf-8?B?ZDU3Q29Rb1ZFZTdjeXJ1UytBSUhoWEJTdkFMS3gwNEVkMHgvOTMwU0hIaDEw?=
 =?utf-8?B?TDVXZW1ZNVJuZG9vQzF5OHpaaVJNREJLaC9LbytqQzlIRVVFZFdUb1hxeS8w?=
 =?utf-8?B?RUVFQjhJaHI5UWhHRXFDcFdvam1DSHpoYmlQdEVEVFpjWHM1Vy9NaTd4SVlj?=
 =?utf-8?B?MlZIYkdWWjcwRFFBQnEzV1VuWHlmSnFzOWVUMnNnT0lUV3BLS2pLWUpxckhp?=
 =?utf-8?B?WWJUMGpjbXBGeHNxVXR1TzlUSUZlYklPaUYySWwvZjI2RFl4MXdSSmlVRWpy?=
 =?utf-8?B?cnpYNVZTL3pWaEJ1T0lwcEZCVGlqcUZsc2xkeEIycjh4MVNxb0JtYTB6K1FO?=
 =?utf-8?B?M254SkNpMFEzNkhta1NRdVg4dHozeGhjd2o3Y25xVVZlaGh2ZGEyVzgzeXFE?=
 =?utf-8?Q?ocnpHMG5MCvv1PZSvl2wL59/l?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 438bbc20-3e78-4133-6e56-08dc174faa17
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2024 11:30:10.3225 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h198sEYAMm8mJRrgVrRyIG/U+GpvkN7qmao8Emwp9LCUgT1sF0BZ9F05V4x8YatJO58m4YGxBtFCOlkvZjo4dA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB8287
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgRGVjZW1iZXIgMTMsIDIwMjMgMzo1NSBQTQ0K
PiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0OiBbUEFUQ0gg
MC85XSBkcm0vaTkxNTogQ3Vyc29yIHZibGFuayBldmFzaW9uDQo+IA0KPiBGcm9tOiBWaWxsZSBT
eXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gTVRMIHNlZW1z
IHZlcnkgZ29vZCBhdCByYWNpbmcgdGhlIGN1cnNvciBtYWlsYm94IHVwZGF0ZXMgYWdhaW5zdCB0
aGUgdmJsYW5rLA0KPiBjYXVzaW5nIHRoaW5ncyB0byBub3QgbGF0Y2ggZm9yIGxvbmcgZW5vdWdo
IHRvIGNhdXNlIEdUVCBmYXVsdHMuIEF0dGVtcHQgdG8gaG9vaw0KPiB1cCB2YmxhbmsgZXZhc2lv
bnMgaW50byB0aGUgbGVnYWN5IGN1cnNvciBwYXRoIHRvIGF2b2lkIHRoaXMuDQo+IA0KPiBBbHNv
IHJldmVydCBhIGRhbmdlcm91cyB3bS9kZGIgY2hhbmdlIHJlbGF0ZWQgdG8gY3Vyc29ycy4NCg0K
SSBoYXZlIGFscmVhZHkgUkInZWQgdGhlIGNoYW5nZXMgaW4gdGhlIHNlcmllcyBidXQgc29tZWhv
dyBwYXRjaHdvcmsgaGFkIGlzc3VlcyBhbmQNCm5vdCByZWZsZWN0aW5nIHRoZSBzYW1lLg0KDQpG
V0lXLCB0aGlzIHNlcmllcyBpcw0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmth
ckBpbnRlbC5jb20+DQoNClBsZWFzZSBtZXJnZSBvbmNlIHRoZSBDSSByZXN1bHRzIHNob3cgZ3Jl
ZW4sIHNlZW1zIG9uZSB0ZXN0DQppZ3RAa21zX2N1cnNvcl9sZWdhY3lAdG9ydHVyZS1tb3ZlQHBp
cGUtYSB0aHJvd2luZyBzb21lIHdhcm5pbmdzLg0KDQpSZWdhcmRzLA0KVW1hIFNoYW5rYXINCg0K
PiBWaWxsZSBTeXJqw6Rsw6QgKDkpOg0KPiAgIGRybS9pOTE1OiBEZWNvdXBsZSBpbnRlbF9jcnRj
X3ZibGFua19ldmFkZV9zY2FubGluZXMoKSBmcm9tIGF0b21pYw0KPiAgICAgY29tbWl0cw0KPiAg
IGRybS9pOTE1OiBSZW9yZGVyIGRybV92YmxhbmtfcHV0KCkgdnMuIG5lZWRfdmx2X2RzaV93YQ0K
PiAgIGRybS9pOTE1OiBJbnRyb2R1Y2Ugc3RydWN0IGludGVsX3ZibGFua19ldmFkZV9jdHgNCj4g
ICBkcm0vaTkxNTogSW5jbHVkZSBuZWVkX3Zsdl9kc2lfd2EgaW4gaW50ZWxfdmJsYW5rX2V2YWRl
X2N0eA0KPiAgIGRybS9pOTE1OiBFeHRyYWN0IGludGVsX3ZibGFua19ldmFkZSgpDQo+ICAgZHJt
L2k5MTU6IE1vdmUgdGhlIG1pbi9tYXggc2NhbmxpbmUgc2FuaXR5IGNoZWNrIGludG8NCj4gICAg
IGludGVsX3ZibGFua19ldmFkZSgpDQo+ICAgZHJtL2k5MTU6IE1vdmUgaW50ZWxfdmJsYW5rX2V2
YWRlKCkgJiBjby4gaW50byBpbnRlbF92YmxhbmsuYw0KPiAgIGRybS9pOTE1OiBQZXJmb3JtIHZi
bGFuayBldmFzaW9uIGFyb3VuZCBsZWdhY3kgY3Vyc29yIHVwZGF0ZXMNCj4gICBSZXZlcnQgImRy
bS9pOTE1L3hlMmxwZDogVHJlYXQgY3Vyc29yIHBsYW5lIGFzIHJlZ3VsYXIgcGxhbmUgZm9yIERE
Qg0KPiAgICAgYWxsb2NhdGlvbiINCj4gDQo+ICAuLi4vZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljX3BsYW5lLmMgfCAgIDYgKy0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfY3J0Yy5jICAgICB8IDEyOCArKy0tLS0tLS0tLS0tLS0tLQ0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jdXJzb3IuYyAgIHwgIDE2ICsrLQ0KPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuYyAgIHwgMTMwICsrKysrKysrKysr
KysrKysrKw0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF92YmxhbmsuaCAg
IHwgIDEyICsrDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRlcm1hcmsu
YyAgfCAgMTYgKy0tDQo+ICA2IGZpbGVzIGNoYW5nZWQsIDE3MCBpbnNlcnRpb25zKCspLCAxMzgg
ZGVsZXRpb25zKC0pDQo+IA0KPiAtLQ0KPiAyLjQxLjANCg0K
