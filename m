Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xB3DHR4cMWr/bgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 11:49:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8AC868DB1D
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 11:49:17 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=bWh3C92G;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61DE510E684;
	Tue, 16 Jun 2026 09:49:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E2AF510E684
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2026 09:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781603356; x=1813139356;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=cmKxJ/xGy2Oqmt1hfnqreIMVaXKTgcEoxM/llKW1wZ4=;
 b=bWh3C92Gz+XuURGs78cF6QD2NJ7AINCkB7ZR4UJ1NLEQQZ+BgtadED71
 umE/op22lHz687txANvVFgvB542Sgzlf3ECa0J+FpZW+LVh2wb1Xu16/k
 RirqARXcMSgQHE9OdAU5yt4E13l6RhYJFifdQdUrlnrgtU083y9HG+dPQ
 WENRpI6r5NLQRmQQ0PBjlVsVmMsWXHYl8wRDy+lH15GtWpJLvITm6UnRr
 FcuN9oUhfylj3wP+TG1XJtG0NXSe1l2qstfDNIh+MwlAxxwhqiXY5ZJA7
 ZcimpH+IGKVUmH9z6w98w+kVFRXqfG2DRFJLJBQwsJWlsouFg9LkAy2u/ Q==;
X-CSE-ConnectionGUID: JvMFXUnvSb+YmgtNtJGAlw==
X-CSE-MsgGUID: drHeKB8DTqaZWMw8xEKugw==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="82426798"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="82426798"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 02:49:16 -0700
X-CSE-ConnectionGUID: XO216blcQE6d3FNCX1L2Dw==
X-CSE-MsgGUID: lRe42UaTShuXTh/S2KcZ8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="252031519"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 02:49:16 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 02:49:15 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 16 Jun 2026 02:49:15 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.62)
 by edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 16 Jun 2026 02:49:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IsH4xpP4K8Tcm6HyjW2y1yWPFAg0EADHF68bxihbf+yDZYTPS2fGpG59Vnc5NPsk78GeCGbzNKZnLr63Xo+bRhKjaBD3UDRf5w6DtgKNdfYzJXeun7Wj3w7iCNMAV4Z9qsvDrNfUVvejGzOTEN2u2/IatIQ7989CxzbHd4QExAGWmsi0j7xxAvsgcXt2oAA46R9W9pFZm/sjaqQTPtUII7ZP1jcZ4WJgRcoFBR8kky3IiLsymJ6QYpL3dPcb8TJxepYZQvGHrybp4xKlkkfOVagK9i5HpPmgcOP1oWeJJx+PinmnlVHF7xfdKBw9uyIU2K+01T0aNvlck7+lNsiWRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cmKxJ/xGy2Oqmt1hfnqreIMVaXKTgcEoxM/llKW1wZ4=;
 b=ocXoI7gKMrcvB4rntVNOkGDTwPGJP2ZgrUaXSzq7zOMxFm9d6Y2T6s6j8xkC6sGbZ9Q9Mdzeus9ZMi8p+heFA3cNOdg+zHdShnQdXwS/qq24WhTpEqulXWy7R+X61uEjG0pAR3Q63E5tsRdN81W2necaNIV80Ax+kb2G5zrpEdNUwBniEY6QNmS8CRKHayB0THr+b6nwuLFIMXmMnNuv4WIZMoPz/Ae9jHs/8O1JGD0UT+hTgzlvyWIKT5ASgm/1K873p57TuzHqHtzQNWnIkhlTPynAiJ2A7EhF10z0q3w0r9e3zsVAEO0MJqkkVRx868z/5XGsyYl++6iMV3pCcw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH3PPFAB4263235.namprd11.prod.outlook.com
 (2603:10b6:518:1::d41) by CY5PR11MB6485.namprd11.prod.outlook.com
 (2603:10b6:930:33::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.113.18; Tue, 16 Jun
 2026 09:49:07 +0000
Received: from PH3PPFAB4263235.namprd11.prod.outlook.com
 ([fe80::62cf:3d13:b91:6a5b]) by PH3PPFAB4263235.namprd11.prod.outlook.com
 ([fe80::62cf:3d13:b91:6a5b%5]) with mapi id 15.21.0113.015; Tue, 16 Jun 2026
 09:49:07 +0000
From: "Saarinen, Jani" <jani.saarinen@intel.com>
To: Simon Richter <Simon.Richter@hogyros.de>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: Three monitors on HD4000
Thread-Topic: Three monitors on HD4000
Thread-Index: AQHc/XCnZ2y39Q0IBEGPA+atG3xxybZA7tiQ
Date: Tue, 16 Jun 2026 09:49:07 +0000
Message-ID: <PH3PPFAB4263235C6D9DCFB983019C4E02BE0E52@PH3PPFAB4263235.namprd11.prod.outlook.com>
References: <3a304a3e-42d0-4123-8013-fd1ca2c7f88d@hogyros.de>
In-Reply-To: <3a304a3e-42d0-4123-8013-fd1ca2c7f88d@hogyros.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH3PPFAB4263235:EE_|CY5PR11MB6485:EE_
x-ms-office365-filtering-correlation-id: bac8783c-627d-4e39-0b47-08decb8c8225
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|23010399003|56012099006|5023799004|11063799006|3023799007|6133799003|22082099003|38070700021|18002099003;
x-microsoft-antispam-message-info: uKwIVVOlubqJ3GdPA2T9FhRMuZHOx/J88Te2MQ7lIcFnUDzczTPjYT7DhYej1YCcxIgKnw/+Eddz17a8rume6R9/6yLx4Ob+0ePxyLfpSzgEe4Wmg+jRlrgi5kPlKmT7npl7kE7VkedpF3PUG7nTSGKacuuebO48P/EL46dlGeibt14VlrKELVTWfQZsbHyQV9JaOL6iFW8n20MX6j+wjdWZErOxDssF7azAu5qllHL4XOTkuZ48sZX8ophztHgwxZoYPIIYNnL+IRnF0gNF3R5bmNVt/aRxMYQjsb0sBMzlm+1qwQCg0lLJEFkRK94CDEh+rgh1ovQaK+xVVsj955qRhkduQrM8yQDFNob/+jwaF9HfrRWzfdsOOlG7+C42LeBGLgUccAI7oxgmztd1pvIDJIhi+sYDSpX6dGC977vrlm7EiKm1iAAFD72Q0M5yrQ+BIzhCjadU1atdn52LlixxW1KW3U6zhujLjnv9rWKGoY8/YoISO8HTvHVZTI2CwwkW4w160Z59D7D3rMpGwsfNYPwanrmuzP9gj3e2f+FlHc5NIlHwfkdPvS5RXPvV4E1YMqz9o6V3SAH7rweRl2AQxCcxU8ssG8qRyFBNKCnSreY0P5D/YQ/8m/tKf86mMT0SJUYtzmKzwuAf9z9uIrG7Frr8M6VxfrXugpdealwsiLifdE0s6ORUQZHB3IvBmBlZJTw7Z2G8aOjtqRkVeQ==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH3PPFAB4263235.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(23010399003)(56012099006)(5023799004)(11063799006)(3023799007)(6133799003)(22082099003)(38070700021)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZTJnSnU2UExLRU50MURtcmNSQmFVSFZ2OXU5UFVTOE45N281a3hpdnAwMjg5?=
 =?utf-8?B?WjJxcVhyeFdnbzlhNXdZZE0wVXJYQXJsemY2NTA2MDBUSzRvS2dlWkdGcEVv?=
 =?utf-8?B?akJoRE1KWTY4Uk4vTDFxdDJlTHMrM3ZhRGoxbmN1R0tSOCs4QVlnSFdOVGRU?=
 =?utf-8?B?bnd1c3cwNjZvcE1HR2d6ZUw5VUdjU2VGUTVSK3QwNjV4bFNWZCs2ODR5Qllx?=
 =?utf-8?B?M0ZFdzdtbHlHeTlmam9IRXdYZXRRVHlHL1czT1FKektEcGRFb2lweTZGSHNB?=
 =?utf-8?B?bXlpUnE3MkM2S1RPWDhCZ05uZFlsRjI2dE1lcHJYdlpqM0NHMGxUV2lUaVQ4?=
 =?utf-8?B?U3hlMm94ZmlkRDg4Rm9zUHBJZ2FUai9FbEYvVGRYazlBQlAvRFZuZ1dpZVo0?=
 =?utf-8?B?ZzljaGFoMnAyd1pRSVNhbTVhdmVWaTlJRitJVzBmM3BwRy9vamduK0d0Zmlm?=
 =?utf-8?B?SzlrWnNmNGVGSGpuVSs2Nlg4c1BuRHZpc0pLU3FycVBqb20vdGxUQWJ1ZkhH?=
 =?utf-8?B?a2xkRWl6bG1DWlNLcThFUGtyQ2F5K2I1MElUMTlWa3JudDF6ckVMNE52WWhC?=
 =?utf-8?B?TTRKdUxrU2o4QU9kNHdReHcvcjJrNUNSaVhKR0V6SnhTMDFJYkRkZEpyUHpy?=
 =?utf-8?B?c1pQa2dPMHJkRHIydUtvMitzMnJyeEZyOHB2QnhMTG15NjAwaGtkcXp0bm5C?=
 =?utf-8?B?bkYvOXF2YmNlbElWemdTNmJaUm9SdXp3RGp4TE5SRjBoVk52Q1MrOFRXUTJG?=
 =?utf-8?B?aWtFKzZWV0ZnVllIcjdlcVlZMGhhZXZ0MG9EZm9SajFHRjNBYWVZR1BtNDl1?=
 =?utf-8?B?OWhMM3g4VFUzMU10ak9DWHZ3Yk55QzlvZ1J0RTZuREpMU3IxNWdkTFczYTd2?=
 =?utf-8?B?bnRaUEUvUFNLTExEWThHT0RjdlM3RE9jL1FMdGZISWx5NzFKcUMzNW15ZUtP?=
 =?utf-8?B?UGZjSWhkdEgxYWptY2dEczVaSTlpWUcreS9GSTFwMWdsN1J2NDd5d1A1Q0to?=
 =?utf-8?B?c1pkTkZmZFljeFVsY0phYUxqdXoya0pJMllwWnYyYjdjL3J6WE1ReTlRbXFw?=
 =?utf-8?B?Z3dzbnJzN24yYVdoeTg2RkJHbWMraE9pREtlSU5DNnhKR1haY3cxbkwvdCtx?=
 =?utf-8?B?NXQ5QUNESVN1VGUzdG03cVZaM2h3Rm9HUEhWMXZqREFKc2FYc3ZJNWQxYWlP?=
 =?utf-8?B?REZVRGhVcUpSSjlCV0V3TTJpNDVNcWdCb3U4bkNyU3BadzV3N1NMOU9BblJ6?=
 =?utf-8?B?WUcwUzloZmdjKzZucWthS0wxczVmeDRhb3BjTis0aEhHZm1oMVJCTGtXUDE3?=
 =?utf-8?B?YjZvLzJ1bVp2NXdxL3o1VzAvQ3ZZVk94Y1B6RTNHdW4zYjh2U2F4WlM4a1cx?=
 =?utf-8?B?U2gvTHhXMGp0MzRWTWxEUDJNcUhPVDE0K1NaNWV1R1pqSXd3NmgxazEwVHBV?=
 =?utf-8?B?cUtCWU53bVJJdGJaTGkyWVR2c3dCaVVDRmE4L1FmZDNCOUVuZHI0STl6eGZx?=
 =?utf-8?B?eERGeFdBV2ZCc1d5aFlVTmtXNVhSaTNkVlhTa3EvVnBaMlRaODJPQW9OYU5V?=
 =?utf-8?B?L1lBdUNVbmU2d2E3U1lpdkI0d0d4WGZtUjBiVC84MnVrZEY2Yy9INnJ1WWRH?=
 =?utf-8?B?NWp6THUrcWduV3k1ZjdlY2JMb29hajF2MDZtanV0emFFaWFocTlPc2tFREpD?=
 =?utf-8?B?RVI2bWZpN2VnQzJ5ZXJ6R1AzRnJlOXcrWDJ4QmRuUktFaHVNWTBrZ2F1Zy9L?=
 =?utf-8?B?SDNidUpwSFdrOVozTVFpME9OWlVtcy91NGJvN3JpcUJNZGpKdFVnQTVuZzYz?=
 =?utf-8?B?dUxDUkkvTVNCYWdvMkxCVThZMGlSVzBtc2MyeG5pVy9LWjNOc3FmdUVUYm1P?=
 =?utf-8?B?eWYrbEl0K1E2WnJOK1plVlZtZ2h3aFFrV3M0QllBTmFkOGZ5cTJaR2thMWpm?=
 =?utf-8?B?eVZsSVdxNTZJSGJKQ0NHaGVrZStmY3NSNm5oUmtGMGtsU3FvQzk3bmJBMDZJ?=
 =?utf-8?B?TzJoRVRMeEJGLyswSGo5TjczcUc2TVU2QUtldy9QT3ZZQ2dJR2FjNXhMOGdO?=
 =?utf-8?B?akEzMy8zR0NpSzBmL1l3akpRTmljV2JYNHFjaUtzVHJvUjNXRnZjQTJHd3NW?=
 =?utf-8?B?NktYVVB5VUhGaHVoaUx3azVXWVBrZ2cvU0JnUzNoeW44MEkzdVVVOStGZTUv?=
 =?utf-8?B?SUxpZnZ5RUtGR01xN0I0Rjgvb2RodDViR3ZUY3laYWx1RnhxcXhPOVMvbXpP?=
 =?utf-8?B?OUZnTnhyQUpseUJvdkVhdmpITU01L3lzU3BtbmVDa3BBSlM5VGovMkhUNTNZ?=
 =?utf-8?B?VU9RamF5ZWc4RXI2MHJXbDAwU0RPa2g4UVM1M21OeGhZUHRTdnVzQT09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: AokUzVCRXvNKAbpGLpybkLqFEeTy70xJVkTIiSdFT35PFL4lbOayDpMz/ileUtsnuxIyr6iEygj7HJvhb+vsgaBzhXa5zV7kXtaoaFCTQKj1uQplFhvChcJg1TjB0VHA1Wf1K3uTFFbebpAZzjhM8pt2s8V7bCgNev427CFUIy3HNSMe+5T6+sXVz07HrlMlZTndYfSURTXFZEw6kxhyA+JT7q++qPsjx8wdPbPtAArRVgpprLAJgkkhsaXJlJAY316Cwmh6It+l/x5MjqqWKbE+vhqjzaqvy1JBhgACKhdnIDfnHkRTrR+txD4h5V7ivTe/MyEyjwGy775DkmlHCQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH3PPFAB4263235.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bac8783c-627d-4e39-0b47-08decb8c8225
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jun 2026 09:49:07.2219 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M8ePbA1m0WLt1j6/WU3UonfUjp/samZ9Oacaqq6QOM9k7fiBNV2MTeMTt+aAW7AlQIYADhhzyyl6dxIpHyLe2A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6485
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,intel.com:dkim,intel.com:from_mime,PH3PPFAB4263235.namprd11.prod.outlook.com:mid];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:Simon.Richter@hogyros.de,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[jani.saarinen@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[jani.saarinen@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: D8AC868DB1D

SGksIA0KDQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IEludGVsLWdmeCA8
aW50ZWwtZ2Z4LWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgU2lt
b24NCj4gUmljaHRlcg0KPiBTZW50OiBUdWVzZGF5LCAxNiBKdW5lIDIwMjYgMTIuMDUNCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogVGhyZWUgbW9uaXRv
cnMgb24gSEQ0MDAwDQo+IA0KPiBIaSwNCj4gDQo+IEkganVzdCBkdXN0ZWQgb2ZmIGFuIG9sZCBp
Ny0zNjEwUU0gbGFwdG9wLCB3aGljaCBzZWVtIHRvIGhhdmUgbG9zdCBpdHMgYWJpbGl0eQ0KPiB0
byBkcml2ZSB0d28gZXh0ZXJuYWwgbW9uaXRvcnMgaW4gYWRkaXRpb24gdG8gdGhlIGludGVybmFs
IGRpc3BsYXkgYXQgc29tZQ0KPiBwb2ludCBpbiB0aGUgbGFzdCB5ZWFycy4NCj4gDQo+IEluaXRp
YWxseSwgdGhlIFggc2VydmVyIHN0YXJ0cyBmaW5lLCBhbmQgSSBnZXQgYSA1NzQweDEwODAgY29u
ZmlndXJhdGlvbiB3aXRoIHRocmVlDQo+IG91dHB1dHMsIGJ1dCB0aGUgbGFzdCBvbmUgZG9lcyBu
b3Qgd29yay4gQXR0ZW1wdGluZyB0byBjaGFuZ2UgdGhlIG9yZGVyIG9mDQo+IG1vbml0b3JzIGdp
dmVzIGEgY3J0YyBjb25maWd1cmF0aW9uIGVycm9yLg0KPiANCj4gVGhlIGhhcmR3YXJlIGhhcyB0
d28gcGl4ZWwgY2xvY2sgZ2VuZXJhdG9ycyBhbmQgdGhyZWUgY3J0Y3MsIHNvIHRoaXMgc2hvdWxk
IGJlDQo+IHBvc3NpYmxlIGFzIGxvbmcgYXMgYm90aCBleHRlcm5hbCBtb25pdG9ycyBhcmUgdXNp
bmcgdGhlIHNhbWUgbW9kZSBvdmVyIHRoZQ0KPiBzYW1lIGludGVyZmFjZSwgYW5kIGl0IHVzZWQg
dG8gd29yayBpbiB0aGUgcGFzdC4NCj4gDQo+IEhvdyB3b3VsZCBJIHN0YXJ0IGRlYnVnZ2luZyB0
aGlzPw0KDQpTdGFydCBmcm9tIHJlcG9ydGluZyBuZXcgaXNzdWUgdXNpbmcgaW5mb3JtYXRpb24g
b24gbGluayBbMV0gcHJvdmlkZWQuIA0KDQpbMV0gOiBodHRwczovL2RybS5wYWdlcy5mcmVlZGVz
a3RvcC5vcmcvaW50ZWwtZG9jcy9ob3ctdG8tZmlsZS1pOTE1LWJ1Z3MuaHRtbA0KPiANCj4gICAg
IFNpbW9uDQoNCkJyLA0KSmFuaQ0K
