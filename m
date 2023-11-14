Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC807EB131
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Nov 2023 14:48:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D01810E207;
	Tue, 14 Nov 2023 13:48:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EE9C210E207
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Nov 2023 13:48:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699969688; x=1731505688;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=ODM27uUTdxEY449YJqlN12iAikEJEHpVzpTMFPpVP6o=;
 b=lpYCKeInkxltZ4xw2qMAm+VXzKkw/Fryf6FbVupLlmQuj6InLzVAqKOy
 4NsqgpSReWtknH/Kfqz9WSJFPVFmdbZIEvHet7Nx6EdQQtfR9lZfRNEeY
 K9/y1OPWNK78q3VPNeVK18fWKqjNf3+pQ2chuNt+vtwWn1anWErHB4f0q
 aPYDvkKXiJSGSoXchCx4iDN6YmAXXgHSXVQbwqyNvZDiiKm1gcSiH3wso
 rT3otnNZgn8dGxc4e1LSF9dpPf0QUfRaYgxxZOFGGXJWm/aluXybAiV7o
 2W5olRg68dVPxVBgF9BDu67J4hrquazeewoeR/9PHc8qA4mVqNWnOk5+S g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="387818371"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="387818371"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2023 05:48:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="1011921014"
X-IronPort-AV: E=Sophos;i="6.03,302,1694761200"; d="scan'208";a="1011921014"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Nov 2023 05:48:07 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 14 Nov 2023 05:48:06 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 14 Nov 2023 05:48:06 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 14 Nov 2023 05:48:06 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BaggsV60b7QnW5tHAQeYdGp3qca7YzkZ9u7hBwoMb9cmOjfYjUitYzXoiPBI7jqhufT7q+zusHNb1aTagM1/jrQ3bpRafSHNBBMkgfpaMNHvDntiakNFhMA+HoTi77PMA7s+tjOrsORuBxGgQ3GAgwBxf2MAQj74YjPXoSuCvfxHDtFskFuHCfu8kjih/gpWzt/qfKnFXUY8wIAmewjDo+xHvScd7tO0ERCY5eEYi3GjwY00waJFDA5k9dPgIjtMUg6muwdXXaPLN0PyGGbKJMkih1c9ELO+JSfgVd6Nk9n2Kfa322eKBVPFvxScISwUeIAA0JKSSJikelC33meXRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ODM27uUTdxEY449YJqlN12iAikEJEHpVzpTMFPpVP6o=;
 b=A8bXoXMnxNiba01yMfIshRYdwwVcs0AzN9NDLUPOAsQldZC7+Uirdx2qm/I9lrAB8GOUFJcupuuvIIqCXFG56Va98h4vs/4106kFKL8VUdldE00lpfGvCRtj9aZNbKJR68WmsaQp1mb09OqumeTQuQ5jESNpxVZvugXaAqAdCaRBdn60dTToL/prrvPGqlcOspiNDmt+KzW4IjFZ6zbiHnZZLcs0+NUGZc3vEC4dp+NXplnzqATfZZwfE98DPkV/Bzk4T+4jzzKNyNExZGyqUXogAlmfv66rFqf5V9juadbRqA9qPh/wny6FD///DPZEaZk4WudErfRJhUwYYNgV+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH0PR11MB5268.namprd11.prod.outlook.com (2603:10b6:610:e3::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6977.31; Tue, 14 Nov 2023 13:48:05 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::ea97:f0a2:fffc:b892%3]) with mapi id 15.20.6977.029; Tue, 14 Nov 2023
 13:48:04 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Thread-Topic: [PATCH] drm/i915/display: Remove dead code around
 intel_atomic_helper->free_list
Thread-Index: AQHaE6/cutuWBocBEEawPVDuRegKkbB5hzkAgABTxgA=
Date: Tue, 14 Nov 2023 13:48:04 +0000
Message-ID: <7ede43b2174f088419df55c6c6733a52cb0efbbd.camel@intel.com>
References: <20231110082455.3061913-1-jouni.hogander@intel.com>
 <ZVM0TAMROaONQWEF@intel.com>
In-Reply-To: <ZVM0TAMROaONQWEF@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH0PR11MB5268:EE_
x-ms-office365-filtering-correlation-id: 9428aa7c-7e27-4ab6-8bf1-08dbe5185384
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TEg+6FYAv/8rxurSckq4jtz6u8fLZq41QY3VLo+kV3hBYZUl8BoED2V7qYnB2v7S3YB+yYKjI4a5yyr5sF8v3bSAnkCKIl6I8sOw7rYBXCMZP30S7hBIfwA687Q6vT7VbiqUNKzt+V4SYPPnl+RcUqhzzljs98MsmN5N8C/GISSS69Y+THeH8A2iD3UjmqovLUuoqfvLTcmJSsOi/V5RuM+8wJXRz3ntagViCUMc/obGciylkQXHfglyqVq6P6L60C5PxkqhPyMacgbUJ+8gNR9rZ3Yx7Ds7Yle9uppddUHUKus5Rg8cFZgF846tM7O+46qGPmfbHSGPLPFz3jG7entOmaAefqguKgq+bDLssDYn6i+HXEWX27eNhibETz46HhHO8G5pXDLSURfh61efTpNxMYW7I76ckLywVGvmbqvD1fB9KbnM+jjkc3UNE9os/xO7L5Bgg4obXcKia6rzrxaO74J8u9IyhEKWI/qAjCGQuGDfocfOeANVjCYzQhPeTce/eUIDKv/wT5J2I1NFpzF8KdkccGQSuUB07vZbCC3PZEnruTJToa3FUXmR/4AZNCGoQ9RNaFogar3QCKUvBaJja338SsfDXGglFVEaB/0hu+YqaZwj4ftnDkNF/xFN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(366004)(39860400002)(346002)(376002)(396003)(230922051799003)(451199024)(1800799009)(186009)(64100799003)(66556008)(26005)(66574015)(71200400001)(6506007)(2616005)(6512007)(83380400001)(8936002)(5660300002)(4326008)(8676002)(41300700001)(2906002)(4001150100001)(316002)(6486002)(478600001)(6916009)(91956017)(64756008)(66446008)(66946007)(76116006)(66476007)(86362001)(122000001)(36756003)(82960400001)(38100700002)(38070700009);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NDEzNlM4U3Q0dURXeHFRZjEzREY1MHRzRHVoWmpaS2ZDQlZYajNKNFkxSmRJ?=
 =?utf-8?B?MmpBckJBMS9CZVlPUkVVYXIzUXNUbGdFMXNMa0tqMVJOQkt3K2kyZEVibmhk?=
 =?utf-8?B?aGRTUHpFeEREU3hKazZEUTFtdTVkSVlEcWVDcmFsM2tWRTdPRVZ0VGVDbHhD?=
 =?utf-8?B?dUN1Nk1VcUtOMXZOSkMxSzcvWDRrMjlNUldYRnFSMWtkbkFFMW4rOUhQUGZX?=
 =?utf-8?B?YjhLZVZRRkRnbEc5U01BYWRSK2doUFdiV3h1aVZZSStUemxFais4YkxQbFp1?=
 =?utf-8?B?a2FDSjdEQkZIK2h0akw2dnV5eWNEOXNuWHNMTGVSc0lNVVZlUElIQnpldUlU?=
 =?utf-8?B?WVlvNVI3QzVVa1h2VnRWNURYUEk5cG1KTGRPbC85K3psSHdtMlVPUSttam5D?=
 =?utf-8?B?U0xIc1VtV3hYREl2YjNmb1luRjFpRnAwdTZSMlpNVlVidmhGTm5MSVhMVVFK?=
 =?utf-8?B?d2NTVXl2cCtiUzFFaFd5MjgwNWdFV0h3MlpUTktrTjY3bEt0eXZ4a0lCemY4?=
 =?utf-8?B?cTBMOG9uVnVaMVhqaDU0WUVmQUk5RHVDVFI4ZjFOWW03VU5UaTk4TFNEcE5Z?=
 =?utf-8?B?ZVRWRTBaVmlyL0hEOThTbnordXdGVzRCa2JsajA2WDJOWEc0YlVNL21lUDdE?=
 =?utf-8?B?SFhZaVJyRzNIQUJUbE9wakxJZVJuN2VYaC92bndob2ZlNHEzY28zQkg4dUNq?=
 =?utf-8?B?TXFKdHd0N0x3eFZCWDNiRzdSVkVKUFRScFd0djBrVkl3c1ZQS3NDZ2tLaFh6?=
 =?utf-8?B?ZHNOSVFMVXdYSXNrMUhDTnRycG5RaTZGOUVvN0VOZmZESHFtcXNEVXFYUnVX?=
 =?utf-8?B?SERZRml5OHIvVytrTERMdWJLeldjK2RlMElOVlRBdlkrY3pTVm9FemtvY1p1?=
 =?utf-8?B?d2VJU1g2TGF4a2dOQmN2eFNnVlBYMWwrRmtLYVp1NlAxblRZdXBKVHdCbkJB?=
 =?utf-8?B?ODlzRmNUYUxLeER0NzhsOThUTkRKU1ZvSFFXeGdWM3IxM0xkSDlteklzcUxs?=
 =?utf-8?B?UUlGQksvb1NvSEpJZEhhRlpHdTU4Sjc4K0RaamhGMTY0Z0F5aGNWaTVMc0gy?=
 =?utf-8?B?cDRSNkNEekZuRFZwam1aQU9acE5EeUZXTysvbHZLOFc1cFBMY0JxRnJtYkta?=
 =?utf-8?B?WlFEOEFKS09IU2luWEJFQkpGTFJFRUVaZkVvZkx2T2pDU1M1WlFZRURJK1Jh?=
 =?utf-8?B?bk8zd1dLRElkUVR3VUVxYXhCZzFQblR5bkpRSzVqRzIxNDBnOXgwT0pPdTQ4?=
 =?utf-8?B?OFhiWTUxaGM5N2F3bWEyVVpRY2dNYk5SQlFUSXFpYmt4MHhuMk1lWGd0U29t?=
 =?utf-8?B?aG4wL2FEWmR3TElIZVA4aVNUV3BTRHh3cmVBL1RqaWh5SUJWRWxRSlI0ejV0?=
 =?utf-8?B?Y0tsRE1BZWJNVzJMcXFoSkFQM0plYlZSM3Fzd1MzNG1iTmlISTFoY1hRa09j?=
 =?utf-8?B?ZFluUktwTFhoK1IwcUxCL0FTdXZGNWlNeVp4L1l6Sm1sRnV1T2pScm1VajF4?=
 =?utf-8?B?VGxvRVltcjNLYklkSUMzYnVPWWRnWWVlVitVdGVUUHp4eTNPaXFrU3AxcStM?=
 =?utf-8?B?dlN4ZG8rZk45bE0xYmF6TFVqN0ppUy9JK25LTDJUSXFnOFp5MWFoajFKazI4?=
 =?utf-8?B?SFRMcGJmcDQxVUNYVWhIbnNNSENqdkFJMHVTSGRUTGlJS3ZLLzNEQjB0TGtH?=
 =?utf-8?B?dkU4R0grRTFDSjJUSWNzOGV4aVprTDgxMWFNT1ZJYXpFSExrT0s3SXhYV0Ri?=
 =?utf-8?B?TXJHcUZlaVZTYitXZXpBOVBvaldsc21vZno2b2phekNIVkpTd0NUem1hUTNu?=
 =?utf-8?B?YkVqcHdSTGt1WjkrNnErUTdxbFAzVXhZRjF6M3lxNmFMd1F3bHp0NEhsYkRC?=
 =?utf-8?B?UGpaNWEybGtUcDB0YS9iczRyYjhJVVNiMWg0OGk0QnhNb3ZVWTVpTDQzU1Bn?=
 =?utf-8?B?cUlGbFd1dnBlaDdYS3hxYU1IbldvTHlxL3NBNmx3SGtLS2hva2NVYWlVVjFt?=
 =?utf-8?B?VndoaXV6OGpSaVZVdStDMUcrK05WZGZrR0JLMXlCeGNldE00cjh5QXpUQzho?=
 =?utf-8?B?cVBxb3ArTmsxeTV3Y1ZaejQ3K3FtRmhCTzdnRlJCSUIwVmgxR2VMZ0JZeHhF?=
 =?utf-8?B?RVlMRElBYzFwTUNtVzhhT0Rpa2J5b2xSenYybmh1Si93TVNrdzNlYmUzdzhG?=
 =?utf-8?B?MEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BB6BF9881C5A2244B082DCF0C8D2F6D5@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9428aa7c-7e27-4ab6-8bf1-08dbe5185384
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2023 13:48:04.6180 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rYXjya2CFKgE6fLW5LE0bsOcfz61PR1dIq+m1VRZ10SyvNhmVzNNVNPmcHGj2qaj09wkXk8k/mHbUu3jJRLk3wFeRKNanBDOffVQip9j40k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5268
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Remove dead code around
 intel_atomic_helper->free_list
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

T24gVHVlLCAyMDIzLTExLTE0IGF0IDEwOjQ4ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIEZyaSwgTm92IDEwLCAyMDIzIGF0IDEwOjI0OjU1QU0gKzAyMDAsIEpvdW5pIEjDtmdh
bmRlciB3cm90ZToNCj4gPiBBZnRlciBzd2l0Y2hpbmcgdG8gZGlyZWN0bHkgdXNpbmcgZG1hX2Zl
bmNlIGluc3RlYWQgb2YNCj4gPiBpOTE1X3N3X2ZlbmNlIHdlDQo+ID4gaGF2ZSBsZWZ0IHNvbWUg
ZGVhZCBjb2RlIGFyb3VuZCBpbnRlbF9hdG9taWNfaGVscGVyLT5mcmVlX2xpc3QuDQo+ID4gUmVt
b3ZlIHRoYXQNCj4gPiBkZWFkIGNvZGUuDQo+ID4gDQo+ID4gU2lnbmVkLW9mZi1ieTogSm91bmkg
SMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gLS0tDQo+ID4gwqBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuY8KgIHwgMjAgLS0tLS0tLS0t
LS0tLS0tDQo+ID4gLS0tLQ0KPiA+IMKgLi4uL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rp
c3BsYXlfY29yZS5oIHzCoCA2IC0tLS0tLQ0KPiA+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV9kcml2ZXIuY8KgwqAgfMKgIDcgLS0tLS0tLQ0KPiA+IMKgMyBmaWxlcyBjaGFu
Z2VkLCAzMyBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheS5jDQo+ID4gaW5kZXggM2VmZmFmY2JiNDExLi4zODdh
Y2YyMWI3OTQgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kaXNwbGF5LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYw0KPiA+IEBAIC03MDg2LDI0ICs3MDg2LDYgQEAgc3RhdGljIHZvaWQNCj4g
PiBza2xfY29tbWl0X21vZGVzZXRfZW5hYmxlcyhzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpz
dGF0ZSkNCj4gPiDCoMKgwqDCoMKgwqDCoMKgZHJtX1dBUk5fT04oJmRldl9wcml2LT5kcm0sIHVw
ZGF0ZV9waXBlcyk7DQo+ID4gwqB9DQo+ID4gwqANCj4gPiAtc3RhdGljIHZvaWQgaW50ZWxfYXRv
bWljX2hlbHBlcl9mcmVlX3N0YXRlKHN0cnVjdCBkcm1faTkxNV9wcml2YXRlDQo+ID4gKmRldl9w
cml2KQ0KPiA+IC17DQo+ID4gLcKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2F0b21pY19zdGF0
ZSAqc3RhdGUsICpuZXh0Ow0KPiA+IC3CoMKgwqDCoMKgwqDCoHN0cnVjdCBsbGlzdF9ub2RlICpm
cmVlZDsNCj4gPiAtDQo+ID4gLcKgwqDCoMKgwqDCoMKgZnJlZWQgPSBsbGlzdF9kZWxfYWxsKCZk
ZXZfcHJpdi0NCj4gPiA+ZGlzcGxheS5hdG9taWNfaGVscGVyLmZyZWVfbGlzdCk7DQo+ID4gLcKg
wqDCoMKgwqDCoMKgbGxpc3RfZm9yX2VhY2hfZW50cnlfc2FmZShzdGF0ZSwgbmV4dCwgZnJlZWQs
IGZyZWVkKQ0KPiANCj4gc3RhdGUuZnJlZWQgaXMgYWxzbyBkZWFkLg0KDQpUaGFuayB5b3UgZm9y
IHBvaW50aW5nIHRoaXMgb3V0LiBQbGVhc2UgY2hlY2sgdmVyc2lvbiAyLiBvZiBteSBwYXRjaA0K
d2hpY2ggaXMgYWRkcmVzc2luZyB0aGlzIG9uZSBhcyB3ZWxsLg0KDQpCUiwNCg0KSm91bmkgSMO2
Z2FuZGVyDQoNCj4gDQoNCg==
