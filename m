Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52FE57D4AE0
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Oct 2023 10:51:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B2B6D10E2FF;
	Tue, 24 Oct 2023 08:51:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC5BB10E2FF
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Oct 2023 08:51:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698137472; x=1729673472;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=D/GFBN1MWNGt0M8zu8i4cu3z1dnouLZvzs+wGwTxf78=;
 b=LggEBuyYt9Tw0GecSImCIVOt+C2FyGrmStPmLZPge00CbRYJ6OsZ+OFL
 nGccSyz5ovDpxL3HwqS69jMmX0kBJJ8MHrpSgWZcAKsm9KU+nRm3Dr+NG
 tUTHTNW0Jvm/Fl4McQh4E3EX8jrfZTZ4QeslQh8vGwUdO/EHXw7fuoneq
 I8h/Am0Ts04IDXktfhzN3oBZFuv9oPOknSwhQ50V0QF+JPtJTgvvlw2WX
 51lGNZYjyw5lDbuQ/8w1o3PSJVpS5mDjDNEG/d5STYFT1cqFkvhT2U/5X
 MwE19nLJt5L8Da5cN8kAEI9VYfcS05pb0eKQ4LRcG1RAGUUrWDE4kgjKD A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="451245929"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="451245929"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 01:51:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10872"; a="931969738"
X-IronPort-AV: E=Sophos;i="6.03,247,1694761200"; d="scan'208";a="931969738"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2023 01:51:11 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 01:51:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 01:51:09 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 24 Oct 2023 01:51:09 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 24 Oct 2023 01:51:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZynFDQqRcLGjUttVmtxi+xPyqR6UCvlTsYmCgpd75RKwklaJCpzUamDRinYyE1QhYS4c2Hi2xHkQrJdCPVGe5jd8izWLjYyxkkMi1B2JcaWdfOFaL/skhwlH+HgwUlvJIMbB4CPaBRASt78K4yld+uQf5iuSxlgpqPwt7Tyuz+jMfSTWvsAG4yTTSUVzbjcyeQ/0ctM7sTe22mxmfe290UWo8WGxVuykl0dyNBE+CB27xZfCbIY/cewdbaZMvnSgA+O5rvpAh7eIMlFep81YwXPiVxftYeGa1PT2b1cRlqbJO2Pi+zn2dY1lCynMdlO9GkzKjpVjmQMpHQF9PPkx1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D/GFBN1MWNGt0M8zu8i4cu3z1dnouLZvzs+wGwTxf78=;
 b=ABf4HM6jGx+JA2jRK+lxAogdEvOoLFIQzMLLt+C3uAihC1Pm8XlW/ghtTQa3LnljkOI8tPfUAzE4mcn5T5MjHNIlNYHArPKgIGQPJmDnL4HhhpwZ40k5YUUH/MtuE9pbitXTqWth6/fXJlHZ1rYl9tyyddzZNz8bczhLDxJeKIqTsxhghuTJq8O92g+YqGUP39LeE4HwYrE8ZlIbRU8mEGR3y42uJYt8ZXr+0wGZq0sq5cb69oOVsSv8sYwYxXTYLLOFd1qcAjBzen+ZwtNZT7ip1NHegWwM65jdDo4Kcu6lL+U6Tq604zb/qanbxbqvwtKxRpbeV8/XBMr5UqPFRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB8598.namprd11.prod.outlook.com (2603:10b6:510:2fd::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.31; Tue, 24 Oct
 2023 08:51:03 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.6907.028; Tue, 24 Oct 2023
 08:51:03 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "luca@coelho.fi" <luca@coelho.fi>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Thread-Topic: [Intel-gfx] [PATCH v2 24/24] drm/i915/display: Use same
 permissions for enable_sagv as for rest
Thread-Index: AQHaACJsbKuiH/ZGJkC7YwAl8YJ7SrBXc+SAgAE6RQA=
Date: Tue, 24 Oct 2023 08:51:03 +0000
Message-ID: <c9e5a54c56a1855cdca2f5e390dad48acc3ff5f3.camel@intel.com>
References: <20231016111658.3432581-1-jouni.hogander@intel.com>
 <20231016111658.3432581-25-jouni.hogander@intel.com>
 <51352e16166514540e90e7ef2c7a07fb42d47241.camel@coelho.fi>
In-Reply-To: <51352e16166514540e90e7ef2c7a07fb42d47241.camel@coelho.fi>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB8598:EE_
x-ms-office365-filtering-correlation-id: 5cb1c037-1691-436c-97f2-08dbd46e5a63
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: X3ub572MMrt0aGLBQYYmi9pmsqynFcG2Adv2ogl7xgpVG5rwjE/q9FeEqqcjImVK1AcOoO/bZabAIKFfIBJ6Nlb9q8aePDyfuuCvDT313bU6Yp3RcklzrJM5zEtKe5Iunu7SYr3/yyptorxt+kdJxrH8bfiJwWYMZqGz7BdWKBVGVgzhho2UXuGCAPxmKgnlunxp2ZswvXpBzbRt28Aqq4LAXTMcFpykAiIj7P/LfTuE4pZukXHmPRLsSeYONHuB7Onbnm45gmSRIDQnKcv+63rSXVbdcDDKM4c4KAT5M20qnHjlKAieOXb+/QcqgEngFKQujJBl+88wIB324l5+4wmsd6bjDyRjvZ+n2zOmUm3rgJJVpydnrIxYVv8f7MKWJhxdIrEOVl5dpUTovRSiW1Ss2mv0L8gWHIg1T3qlN9KJ4mkt7sjQYK8pOA7punTZ6G6yHqETKDjt1obZH62MiIhsmeAHmzpl6C1MpbCUwmaylsTXZ0Oc8y+udbJ0kTu1myz9oUpqtAgXY7M8JO9ZNMdLwLwqDtk3ohVmK0kMlIgWHp5agdeKQw1zlEjc8XrwYKN7CrpDks/DNMgSIDVfYegl/y5WxsvDqAXS9soPrHk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(39860400002)(366004)(396003)(346002)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(2616005)(26005)(71200400001)(6506007)(64756008)(83380400001)(5660300002)(41300700001)(8936002)(4001150100001)(2906002)(6486002)(66574015)(478600001)(8676002)(66556008)(76116006)(66946007)(91956017)(66476007)(110136005)(66446008)(316002)(82960400001)(122000001)(86362001)(38100700002)(38070700009)(6512007)(36756003);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NmlNNXB1RXZFR2VuV1F1ZzJQOW41S05ML1p4Wko3Mk1maE5iMGE0RWNGZU9L?=
 =?utf-8?B?TzZCTjZEQUVwNGdVeUN5ZmZJVlJvK3hCKzA2ZEtHT2hWUEd6VTNoQ0NzSFpB?=
 =?utf-8?B?OU1veVRiaVRPZVZoOStRbytWN1ZhMzZFSTFhL0doTEl2MHpBOXFWZDdqb2wx?=
 =?utf-8?B?emJmYXpUamVPdmNZZUQ5NHkvT2FJOGtZUTg5U0p6bFVJRjkzZ2pFUlowMXp3?=
 =?utf-8?B?OHA2bk15cGJOWU5NdmxQMkRNemdZOHRoL2RDUUF4WVVIdGFTRXNlVTRBWkVC?=
 =?utf-8?B?SzNyczluK3NmVThiTEFtSFZWYnFLV1N1bmtGaU5hV2ZFWmU0N2o4ZzRLblcw?=
 =?utf-8?B?UlZWQXJZTTJ0RkFPL1U1TmhhUGlyKzNyY2ZqZjhQTTlaak00Y3JNeHNPandW?=
 =?utf-8?B?M2VZSnBGeE5lQkx3bjduZ2tYTDZPN3FCQVk4YzJqOStGYkxzcDJGS21rUVlM?=
 =?utf-8?B?bDFTeUNjKzhqMkhLL2prdEJQU2M0UUVTMVpsNVFoeTZrVituOENiWnVRT0gr?=
 =?utf-8?B?TVo2di9XMWROL1J0WHBPcm9PWDZaTFVTWDNiNlZEMjEyclcrLzNPT3hZNDlG?=
 =?utf-8?B?elhqUU1MUVAxZVhZZXM1N3owZ1Y1U0s0MXJWMmxjNVNLZUJHYnBTclV4M0hm?=
 =?utf-8?B?OEc1SjBwOEJtL1VWTGRxZkp6WWdDSVE5WEFXTThldVJncXB2dFB0akxFSkht?=
 =?utf-8?B?cGR2bVJyWWJaajB3cW1hdWpBa2NDcWVGb0tWK1dwMHJ3R3lMaTc5cUFEWklS?=
 =?utf-8?B?dm81S2p1ODVIRlJmQ2xwNzVoS3hGc3diOFBla0RpSTRJTk9scmpNb2YvSGxP?=
 =?utf-8?B?akRmcml2RHJEd21UM1UvK3hoalkvaVh0ZVkweTE2Nm9nYmhBa0xqdDlmVFZY?=
 =?utf-8?B?L3hhaU84TjJuNDZIWHExbTJlbUdFN1o1ODBPOU5tbXVkUDNOenVLak0rN0xG?=
 =?utf-8?B?YnBZSW1oR2pNbkRwVzR5dlFpN2x4MnZDNDB3SVNCNWt3bk9qcWpMLzJVMUg2?=
 =?utf-8?B?T29CMWZQWFpsUjcxaDdKZWtyYlJuR2Z6a0F6N2Jhd0REOTZDd1hDUnlpWFJp?=
 =?utf-8?B?dzVoN3laZXFIMDFqZURSUlpqanBva3B2c01CY0RZRjdMRnJHa1VtcXpubSt4?=
 =?utf-8?B?Sis4WVZscWlXb2E3MjliM2I2U2FIUmQzclRZRkhYK2hoYXVRcCttbGcwdmZK?=
 =?utf-8?B?bzc1dEZSWCtuSEVyNS95dTZ1UXpBRzdKcmFodHVGbVFZU05PeEVZMVhxRjBP?=
 =?utf-8?B?cEgvZUY3cG82YVU5RFJITk1oVUFnTkF6VnI5ZzdnVlgxVGpvSFNza3lrcmRs?=
 =?utf-8?B?SzcvYm1vRDVCczVPWlhXblVvLzdwdFBSeFlMc3dyVUZXZXAxbkQrYklVeXpG?=
 =?utf-8?B?SGZwdHQ2TlgxNzU1dEtHRmJGUlY4N2wxVXZBQXUyQzhjNUp1OUJKcjdJN0lE?=
 =?utf-8?B?S1FiR2J0Sk0yUi9paGc1am9PY2EySEhlTHdVYUIrc0xFVHEyeDAxdzlmeWp5?=
 =?utf-8?B?WEhLMnYxM05xQ1N4bnZBSEZQRVY0SXNzcWJzZ3FSbjhiVlpjWVpDS3RrK1hN?=
 =?utf-8?B?OXMyM0lCaHlKeDIvNVZhTHhwNitFOWtGZE5ld052KzlrcXdGSmRQb3hiQ0NP?=
 =?utf-8?B?dlUrYmp1ejB3VFNIZG1pdUkxVUJVa2ZTV0NkU29QOFR4RVNLK0dhb2J0NE5o?=
 =?utf-8?B?ZjczQUcya3ZCVTBXQVhkd2hwN1Z5N3JreGhVQllFcjNFcWs3SUJvZWFxZGp6?=
 =?utf-8?B?OTlqWGpkalBXcXpjYnZSditCU1doS3g5bFZZQWV1eC9KYWxXMCszWGR2aEJV?=
 =?utf-8?B?cFRGekVNeXJyOW96TENOcUloZTV3bm1nMmJzeVJhWEZBOS9vY1NxVzR1UWRK?=
 =?utf-8?B?eE1jOERtcmVFWU9Jc0E5S2w5UGhEdDlKdUV2T3hHVmVGUTdEb0M1WWsweW4v?=
 =?utf-8?B?Uk81V25TSWhZaktURDF2cmxsOGhzbnloK09MQkJHK3dmODROb1hjNEhYOFkv?=
 =?utf-8?B?T3RFMFZacThqMnlBcFdEakJWU01XajBoM3phL2NjMkFZTXQyQTFDMml4aml2?=
 =?utf-8?B?QmE1U1RzcFllRDhPUkpvR0w4ZHRVTjZocmU3U0FRYlFRNG5mR2NGUXllKy92?=
 =?utf-8?B?NVhRaTlpbm1CWXE2Nzcza2pxRWlCdC9VdlF6UExlVnpReEZEeHBBTll5RFln?=
 =?utf-8?B?NkE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <9AA3E8E516275E47B1AD7B9E5A3E2A1C@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cb1c037-1691-436c-97f2-08dbd46e5a63
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Oct 2023 08:51:03.1003 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pwu7WWjrQIR/c7FrMLrXL38YvP0bu7BeVFvs9mLPQQRfTJjoSx5tPQiybYBV/JoQiUe4g6YOpe2+AaIs0NHUsOvZ7CsSuw3D9xg0v7LtQXY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8598
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 24/24] drm/i915/display: Use same
 permissions for enable_sagv as for rest
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

T24gTW9uLCAyMDIzLTEwLTIzIGF0IDE3OjA2ICswMzAwLCBMdWNhIENvZWxobyB3cm90ZToNCj4g
T24gTW9uLCAyMDIzLTEwLTE2IGF0IDE0OjE2ICswMzAwLCBKb3VuaSBIw7ZnYW5kZXIgd3JvdGU6
DQo+ID4gR2VuZXJhbGx5IHdlIGhhdmUgd3JpdGFibGUgZGV2aWNlIHBhcmFtZXRlcnMgaW4gZGVi
dWdmcy4gTm8gbmVlZA0KPiA+IHRvIGFsbG93IHdyaXRpbmcgbW9kdWxlIHBhcmFtZXRlcnMuDQo+
ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXlfcGFyYW1zLmMgfCAyICstDQo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMSBpbnNl
cnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3BhcmFtcy5jDQo+ID4gYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmMNCj4gPiBpbmRleCA4
ZTYzNTNjMWMyNWUuLjA3N2YyZGVlMjk3NSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmMNCj4gPiArKysgYi9kcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfcGFyYW1zLmMNCj4gPiBAQCAtNTAs
NyArNTAsNyBAQCBpbnRlbF9kaXNwbGF5X3BhcmFtX25hbWVkX3Vuc2FmZShlbmFibGVfZGMsIGlu
dCwNCj4gPiAwNDAwLA0KPiA+IMKgaW50ZWxfZGlzcGxheV9wYXJhbV9uYW1lZF91bnNhZmUoZW5h
YmxlX2RwdCwgYm9vbCwgMDQwMCwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgIkVuYWJsZSBkaXNwbGF5
IHBhZ2UgdGFibGUgKERQVCkgKGRlZmF1bHQ6IHRydWUpIik7DQo+ID4gwqANCj4gPiAtaW50ZWxf
ZGlzcGxheV9wYXJhbV9uYW1lZF91bnNhZmUoZW5hYmxlX3NhZ3YsIGJvb2wsIDA2MDAsDQo+ID4g
K2ludGVsX2Rpc3BsYXlfcGFyYW1fbmFtZWRfdW5zYWZlKGVuYWJsZV9zYWd2LCBib29sLCAwNDAw
LA0KPiA+IMKgwqDCoMKgwqDCoMKgwqAiRW5hYmxlIHN5c3RlbSBhZ2VudCB2b2x0YWdlL2ZyZXF1
ZW5jeSBzY2FsaW5nIChTQUdWKQ0KPiA+IChkZWZhdWx0OiB0cnVlKSIpOw0KPiA+IMKgDQo+ID4g
wqBpbnRlbF9kaXNwbGF5X3BhcmFtX25hbWVkX3Vuc2FmZShkaXNhYmxlX3Bvd2VyX3dlbGwsIGlu
dCwgMDQwMCwNCj4gDQo+IFRoaXMsIGFzIHdlbGwgYXMgb3RoZXIgc2ltaWxhciBjaGFuZ2VzIHRo
cm91Z2hvdXQgdGhpcyBzZXJpZXMsIGNvdWxkDQo+IGJlDQo+IGNvbnRyb3ZlcnNpYWwsIHNpbmNl
IGl0J3MgYSB1c2Vyc3BhY2UgQVBJIGNoYW5nZSBvZiBzb3J0cy7CoCBJdCB1c2VkDQo+IHRvDQo+
IGJlIHBvc3NpYmxlIHRvIHdyaXRlIGJ1dCBpdCB3b24ndCBiZSBhbnltb3JlLsKgIEJ1dCwgYXMg
d2UgZGlzY3Vzc2VkDQo+IG9mZmxpbmUsIGl0IHNob3VsZG4ndCBiZSBwcm9ibGVtLCBiZWNhdXNl
IHByb2JhYmx5IG5vYm9keSBpcyB3cml0aW5nDQo+IHRvDQo+IHRoZW0sIGFuZCBtb3N0IGxpa2Vs
eSBkb2luZyBzbyB3b3VsZG4ndCBoYXZlIHRoZSBleHBlY3RlZCByZXN1bHQsDQo+IHNpbmNlDQo+
IHRoZSBkZXZpY2UgY29waWVzIHdlcmUgbm90IGdldHRpbmcgdXBkYXRlZC4NCj4gDQo+IFJldmll
d2VkLWJ5OiBMdWNhIENvZWxobyA8bHVjaWFuby5jb2VsaG9AaW50ZWwuY29tPg0KDQpUaGFuayB5
b3UgTHVjYS4gSSBhY3R1YWxseSBtb3ZlZCB0aGlzIGNoYW5nZSB0byBwYXRjaCAxMSBkdWUgdG8g
eW91cg0KY29tbWVudCB0aGVyZSBhbmQgYWRkZWQgeW91ciByYiB0YWcgdGhlcmUuIEkgd2FzIHBs
YW5uaW5nIHRvIGRyb3AgdGhpcw0KcGF0Y2guIEFyZSB5b3UgZmluZSB3aXRoIHRoaXM/DQoNCkJS
LA0KDQpKb3VuaSBIw7ZnYW5kZXINCj4gDQo+IC0tDQo+IENoZWVycywNCj4gTHVjYS4NCg0K
