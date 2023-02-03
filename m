Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F6C6890B0
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Feb 2023 08:21:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 359C910E70F;
	Fri,  3 Feb 2023 07:21:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 89ADF10E0BD
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Feb 2023 07:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675408892; x=1706944892;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=DRt4S7FzJYBXq6yTNKZGeR4rV8reIU9Kg25SNbuno68=;
 b=E0wToUn0cZx9PCavdp2VSqmHnM60KrDhbe2YeewZzN3s8oGWoVgs1E3D
 jCySExkH07JZ0JTvSpfAQAwT5os5no3DQHmitQZYFSmRWjjJrqNNj56fD
 2e+WrB7FHpcGeyoGNg2r01A3IWVc7BZsdf6Q0ATMz7l68EDyZfSYd/Ypk
 Akh4/g6NYQkHL91HNKpSoDkjhyI8X42Zk6YUn+VZ6O6IfFFK3ibsbc6uQ
 QacZkKXIiOIq4DHxIKmkcgQ3oY/qGy9t9SZ6GhWKG+0q1G6m4e93ho+l4
 3MRy0P6qzAmjtx74E7jb7xxRl2+bzRdl7RQgzTAm35uNsgZZENHIFu8Jr Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="308320807"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="308320807"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 23:21:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10609"; a="734228183"
X-IronPort-AV: E=Sophos;i="5.97,269,1669104000"; d="scan'208";a="734228183"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga004.fm.intel.com with ESMTP; 02 Feb 2023 23:21:31 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 23:21:30 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 2 Feb 2023 23:21:30 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 2 Feb 2023 23:21:30 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 2 Feb 2023 23:21:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Gd7LAXJ0tsetP2K87CCcm3feYCbSi6S8X48FpslhFhBGfRIyrxwtB5Ar49xI+Rcd7/WHL21msF/JCw8KIPPa/8kKSdr8KqtjA9PqNuNzJzDw7FZ4untyGfWF3CeOZQ+XeZWG/zuIax8Obl6/Wl4RQbiiM8qRlI+sw1uQYQv40LgxixPQrjqmKCaYFm6tAibPZPeO1+ngHhqJ2XN4iQBhOJechF349FqjEuOkvDaDiBz7Ux7UkEuc4DkMJCZc4u5+cewNi4d/lsUnaZznHvz7HH3rTfDBSTQn0McY30agsx9ZhkLcgeM48AssGAQOPJCaFfvj9/Ut1qQO6r4xsXIhTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DRt4S7FzJYBXq6yTNKZGeR4rV8reIU9Kg25SNbuno68=;
 b=Tr1nWanxgT/51mLuMGky7A+UyH5pNU7RB7mEdopJHPwYzRUj0yptV1fyMD3PCioLtjPMcNO466Bmz4uQUhkU9OYILy+wSSqZlWJSm4KmNgz9cALVFulHtUdf3/UZ9B3EvWMTs1ZfSLZeE04JTl/NDbOJZ5sbPWPBHNN9sTNL17dMWjShjWBTyrqkT+2vnadkr+oWcsBxOsBKugHLykFDFvs4AnkUIOEScBGhCUFn4ek1irhobVnD3pw5WMBuUd6AmvgacU/HUCszlOg4AixtUkd1VY/fSyMi9TpNmnFunTdP0xujBon7Mzamb06Cuyyk1vFI9Nw5vhOd6dJylONAOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 CH3PR11MB7250.namprd11.prod.outlook.com (2603:10b6:610:149::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.25; Fri, 3 Feb
 2023 07:21:28 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6723:483:53a2:5569]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::6723:483:53a2:5569%6]) with mapi id 15.20.6064.024; Fri, 3 Feb 2023
 07:21:28 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "tzimmermann@suse.de" <tzimmermann@suse.de>
Thread-Topic: [PATCH] drm/i915/fbdev: Implement wrappers for callbacks used by
 fbcon
Thread-Index: AQHZL9PHkiyOwbIUTEKBP1QsoS39q66tfs4AgA9hywA=
Date: Fri, 3 Feb 2023 07:21:27 +0000
Message-ID: <29978ffbbffd810a380c8d0606fffb31c8f007dd.camel@intel.com>
References: <20230124091046.2500682-1-jouni.hogander@intel.com>
 <7f8b8d4d-b122-bff7-a458-985061bf1b4c@suse.de>
In-Reply-To: <7f8b8d4d-b122-bff7-a458-985061bf1b4c@suse.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|CH3PR11MB7250:EE_
x-ms-office365-filtering-correlation-id: 6f8740d3-6e8e-425d-5757-08db05b743d7
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Mak3/dAfdYMwMxGp6crjw4PxSnbcgCo5pLGicO0SIX+q/TD9BFWnZXPvIXjbsmPR61laTg0v6uWg8+URI9CLxAOK5SzHktxOY4gS2kah71pMWA4HYLAo7eAB2yO4el/FixEjbqtTd0n3rZFbRHyV5sSItEHvH9ZcluZWfeMQ0CzFN8ouCHQjBwVfnfxv9Qe/TZgnnK4cfdN4cHJLE/Rk3nMb2MVVtQNnkuG/+vAQCGhO4OlqRzXgAoYU66RU3cUrCBsjCbrraZSq1BR9ntZVAB88IZBUaShOMG1AkHO8gVDeTiw6YMlJpuBTu9wnq4T9mqkgwX8I7ILM/fgqYuu8TsrEj3B0p/OWLNMtqHooKlCV04yGPY6gsye4Ipyfw1NBb8LxbVXV+40EbZcqVjqfj6J5+JWVFQEIGkGQTvJke0J/SpHgNKCY6pfKR+v/Ej6IAlSQ+U5vh9bf0qcHyJ2z0rUMIrTsDFQrGpS3id/PELy3R7Q2R/SUh/SubGM5jzJR1cIRl9zHq4XrSXU5IgbEvwFotpAiG8qKKR9sfdgoYjCGsCZKl1JLkPdYQKawClJxrPunEHFRAibaRdPPpufzZVBmHFIRoSG8ExqSoIq7BvLuYXhwzSYORzSz14YTQh3LdBbVsN18KzsHw5LBF8lHw9clWxNJyV55Eecu7A1kE0ItTKvFkgGl64uXwpBtHHGB9aKJigh6aRoqZXiheg9Heg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(39860400002)(396003)(346002)(136003)(376002)(366004)(451199018)(6486002)(6512007)(71200400001)(86362001)(478600001)(26005)(2616005)(186003)(66476007)(76116006)(91956017)(66946007)(64756008)(41300700001)(4326008)(66446008)(82960400001)(66556008)(6506007)(8936002)(66574015)(36756003)(83380400001)(122000001)(316002)(8676002)(38100700002)(38070700005)(2906002)(110136005)(54906003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZUhRVjVjZUFxQ29SRDByaTAvVUMxdC9QRFE5NmZScitHeU1ybS81SEZiL1N1?=
 =?utf-8?B?eWxDTVZZTmx6cHROYmprV2h6NjBtOGhLQzJtNEJNTDNNak52aFBhNTZDSXFO?=
 =?utf-8?B?bGlUV2ZITXZsbVJGT3YzalhpUFNDWTc2aG9ZVlZ6Q0Z0R1JEQWMrMFlQdUdY?=
 =?utf-8?B?U2tQckpBN3A5OVJBclpidXZYTlo3N083UVIxQ3pFa2ozWnIxeWlSUllEeCtT?=
 =?utf-8?B?MEZ4R2RCSk9JRXVKR3Y1Q0JIUzdiazloSytHK1B0eE1icjkzaVcxaFV3WTQr?=
 =?utf-8?B?blFGZmJoRVpnZ1VkZGNSb0tNU2ZJaHQyS0xUSlhVbHhqUjZobFoxN0Q2bVAz?=
 =?utf-8?B?cHQwbXFCUUJhSGJEVDZWY2svWjUwcHJHTzVpVDZ4ZUc3SDVhaWJNZ0hTUDVa?=
 =?utf-8?B?cXBVWmpHNjBuNmwwZjU5UXVvQVp0SEFDK1NtT1JVRVdwazVVUDM4ejljQWd3?=
 =?utf-8?B?UklJNllON1lYQ2wwaGFqY29JaTNwalBzd2Ira2Fkb1ZMelJUSTJ3dFU5UUxX?=
 =?utf-8?B?ai9Ud01oaG1zMWxXaTA4MHRONEhkZzhwWmJJRFNTU3V0b0JGaFIwcTVJUzFL?=
 =?utf-8?B?TmJlYnRxR1ZPalh5NHNTTndWMG9mend2SUNlQmJFMi9XSmRUSm4waUxpWDlk?=
 =?utf-8?B?Ukw2Tk9TL21vb3E0Y3F3VTQyU01QZmZucmRzZkpqMENtbWhHQ3pEZWl6cjdD?=
 =?utf-8?B?Vzd6emM3U3JLM0lOYW5zN1U1Ly8wb2U5TlFSV1daVXMrNWZPemJKNDhXZE5H?=
 =?utf-8?B?NEJjZk5RS3oyTHp4VUg0WVRaM1ZXNTMveW1UdEhrb05tNnc4V3JnRU5ZMkdY?=
 =?utf-8?B?SWpna0poTHQ5a0EvbUlHc3ZZNUFpNFNwQkhncUhHRi9aQXAwMGc5Ung5QVpl?=
 =?utf-8?B?Tm9VWTh0d2l2b2FHRUhjb3o2a1lQdXJISklkcXdyek90Ykk0OTMrUnRnSU1O?=
 =?utf-8?B?YUFScFZpK0NSYlQwS1hDSGFaUDAzeVJNMlRPOEZlaUVKOFVkMGg3QlRZV3hq?=
 =?utf-8?B?NVpHMTYzblQ1R3EvSW5WdU1xQlRFUmNTZU90VnVUMW9NVWE5d1hQMm5QRzlT?=
 =?utf-8?B?ZVh1TVFGRkQ2MDY2OUZkeDQ2SFdEcE0vS01EV1c2bnlzU2ovUHRDRGRpNy9X?=
 =?utf-8?B?Y3dQK3pTdE1VNkVrbUxNbEdlZlZkdUM3eWJicW9lUG5taXRyQXI2YkZ6NVZM?=
 =?utf-8?B?UklGMlVyMXZWN3BxUWxPMlhGY3FyTVJSZzh6NUR3YUM2aVVHUERQK211VlEz?=
 =?utf-8?B?TGdiRjBOZnJPdGJRazdQS1h1bHZVQWliUWptbjJ3Wm5kaC9ma1I5a3QyNEJh?=
 =?utf-8?B?a2Z1QTFJUSszWDJqZ1Q3Mk5LV3V3UHFTSjlSMVFjN1Y0V1hwN1Ftcnc2REQ3?=
 =?utf-8?B?c1I4VTFDcVNSYWtKMDg5YlM3SE1OZHB5VjR4bzFBT3NXUFBSZE1lTjA2S29m?=
 =?utf-8?B?VzlKamh2Y2Rlc3BVWWZZL2w1dG14M2VLUkU2VGcwYUI1N2ZNcXNJMnRDK3ZN?=
 =?utf-8?B?RE5UelFRcjJUc2daOEtrRUpUZmgrYk8yNWxPUDlIcW52ZFlFay9JTXh6SHN4?=
 =?utf-8?B?UXVqNHJTcnZvaXJkcUpUbGZyNTRvNFpCSHdaakFSRWdDc2xTdlo4VzJTalJ3?=
 =?utf-8?B?MzZWbnRhUmgxZlBFckFNZGNFVTVFVDY4RWFPNDVRcnM0S2Q2YWpLWS95eCtP?=
 =?utf-8?B?ZGNHN1YyOTR3dnJOQk9ZYkMvcU5pRjFxL3I4NFV2bUtBSFdEWGF5cldsR3Fa?=
 =?utf-8?B?TThzOFdZeWdyTzVDdGxScmpadjBzNDRiZEpLMzJnME9pTzZEWDVWOFpKUzIr?=
 =?utf-8?B?bW9SR1N2dUk4KzdCekZWRW9KaXQxN2JYQVpRVjQ2aUZSU21RY3VhaXhlRTNS?=
 =?utf-8?B?OEhqc3NEZUc4RndCOVRRdTczeHQweDRBaXYxWDhEK0MyRUNrcXNtYmsyUFlK?=
 =?utf-8?B?b2FQZURXSm9hdXdOUWp6di9YNkV0TEk2UUtPMTQ0YThZKzhZOG80djlHWFRr?=
 =?utf-8?B?WnAxeVFuTFdLU0RnRDlHcG1UUkg5Wk9wOGcyOFlUckZqSFA1TVdXRE9SVm9u?=
 =?utf-8?B?ZTF6ZUJPSjVqaW1ZTXNDS3pydVVUbHgvZzgveFRVa3gxbHR0VzRlSHpmOC92?=
 =?utf-8?B?VUUvYk5SbE5QTktpR0NmRUIzcVRXcCs5VTJmcXhsVVJQUDlRVjZuRnU4Z1hs?=
 =?utf-8?B?dEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <4CE794AD535123448FDAD3D0DB6C5AC9@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6f8740d3-6e8e-425d-5757-08db05b743d7
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Feb 2023 07:21:27.8241 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: G6htlxF3TSR1PP0J8+hSB2lMlVE/u3ROw7oOMH8Aau+PZUVjONLVzxnkpgJbx0cbVeJlnmUK1nJcPMka3MZbIaTfCDSaBPJ7njjBFZbd6jY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7250
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/fbdev: Implement wrappers for
 callbacks used by fbcon
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
Cc: "Nikula,
 Jani" <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

T24gVHVlLCAyMDIzLTAxLTI0IGF0IDEzOjI3ICswMTAwLCBUaG9tYXMgWmltbWVybWFubiB3cm90
ZToNCj4gSGkNCj4gDQo+IEFtIDI0LjAxLjIzIHVtIDEwOjEwIHNjaHJpZWIgSm91bmkgSMO2Z2Fu
ZGVyOg0KPiA+IEFmdGVyIGRpc2Nvbm5lY3RpbmcgZGFtYWdlIHdvcmtlciBmcm9tIHVwZGF0ZSBs
b2dpYyBvdXIgZGlydHkNCj4gPiBjYWxsYmFjaw0KPiA+IGlzIG5vdCBjYWxsZWQgb24gZmJjb24g
ZXZlbnRzLiBUaGlzIGlzIGNhdXNpbmcgcHJvYmxlbXMgdG8gZmVhdHVyZXMNCj4gPiAoUFNSLCBG
QkMsIERSUlMpIHJlbHlpbmcgb24gZGlydHkgY2FsbGJhY2sgZ2V0dGluZyBjYWxsZWQgYW5kDQo+
ID4gYnJlYWtpbmcNCj4gPiBmYiBjb25zb2xlIHdoZW4gdGhlc2UgZmVhdHVyZXMgYXJlIGluIHVz
ZS4NCj4gPiANCj4gPiBJbXBsZW1lbnQgd3JhcHBlcnMgZm9yIGNhbGxiYWNrcyB1c2VkIGJ5IGZi
Y29uIGFuZCBjYWxsIG91ciBkaXJ0eQ0KPiA+IGNhbGxiYWNrIGluIHRob3NlLg0KPiA+IA0KPiA+
IEZpeGVzOiBmMjMxYWY0OThjMjkgKCJkcm0vZmItaGVscGVyOiBEaXNjb25uZWN0IGRhbWFnZSB3
b3JrZXIgZnJvbQ0KPiA+IHVwZGF0ZSBsb2dpYyIpDQo+ID4gQ2M6IFZpbGxlIFN5cmrDpGzDpCA8
dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gQ2M6IFRob21hcyBaaW1tZXJtYW5u
IDx0emltbWVybWFubkBzdXNlLmRlPg0KPiA+IENjOiBKYW5pIE5pa3VsYSA8amFuaS5uaWt1bGFA
aW50ZWwuY29tPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9n
YW5kZXJAaW50ZWwuY29tPg0KPiANCj4gVGhpcyBpcyB0aGUgYmV0dGVyIHNvbHV0aW9uIHdydCB3
aGF0IGZiZGV2IHdhbnRzLg0KDQpUaGVyZSB3YXMgYSBmYWlsdXJlIGZyb20gdGVzdGluZyByb2Jv
dC4gZHJpdmVycy90dHkvdnQvdnQuYyBpcyB1c2luZw0Kc3BpbmxvY2sgYW5kIGluIG91ciBkaXJ0
eSBjYWxsYmFjayB3ZSBhcmUgdGFraW5nIG11dGV4Lg0KDQpEbyB5b3UgaGF2ZSBhbnkgc3VnZ2Vz
dGlvbnM/IFNoYWxsIHdlIGZhbGxiYWNrIHRvIG9yaWdpbmFsIGZpeCB3aGljaA0Kd2FzIHNldHRp
bmcgdGhlIGRpcnR5IGNhbGxiYWNrIHdoZXJlIGNhbGwgaXMgbWFkZSBmcm9tIHdvcmtxdWV1ZT8N
Cg0KPiANCj4gQWNrZWQtYnk6IFRob21hcyBaaW1tZXJtYW5uIDx0emltbWVybWFubkBzdXNlLmRl
Pg0KPiANCj4gQmVzdCByZWdhcmRzDQo+IFRob21hcw0KPiANCj4gPiAtLS0NCj4gPiDCoCBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMgfCA1Mw0KPiA+ICsrKysrKysr
KysrKysrKysrKysrLS0NCj4gPiDCoCAxIGZpbGUgY2hhbmdlZCwgNDkgaW5zZXJ0aW9ucygrKSwg
NCBkZWxldGlvbnMoLSkNCj4gPiANCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9mYmRldi5jDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2ZiZGV2LmMNCj4gPiBpbmRleCAxOWYzYjVkOTJhNTUuLmIxNjUzNjI0NTUyZSAx
MDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2
LmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2ZiZGV2LmMN
Cj4gPiBAQCAtNzcsNiArNzcsMTggQEAgc3RhdGljIHZvaWQgaW50ZWxfZmJkZXZfaW52YWxpZGF0
ZShzdHJ1Y3QNCj4gPiBpbnRlbF9mYmRldiAqaWZiZGV2KQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqBp
bnRlbF9mcm9udGJ1ZmZlcl9pbnZhbGlkYXRlKHRvX2Zyb250YnVmZmVyKGlmYmRldiksDQo+ID4g
T1JJR0lOX0NQVSk7DQo+ID4gwqAgfQ0KPiA+IMKgIA0KPiA+ICtzdGF0aWMgdm9pZCBpbnRlbF9m
YmRldl9kaXJ0eShzdHJ1Y3QgZmJfaW5mbyAqaW5mbykNCj4gPiArew0KPiA+ICvCoMKgwqDCoMKg
wqDCoHN0cnVjdCBkcm1fZmJfaGVscGVyICpoZWxwZXIgPSBpbmZvLT5wYXI7DQo+ID4gKw0KPiA+
ICvCoMKgwqDCoMKgwqDCoC8qDQo+ID4gK8KgwqDCoMKgwqDCoMKgICogSW50ZWxfZmIgZGlydHkg
aW1wbGVtZW50YXRpb24gZG9lc24ndCB1c2UgZGFtYWdlIGNsaXBzIC0NCj4gPiA+DQo+ID4gK8Kg
wqDCoMKgwqDCoMKgICogbm8gbmVlZCB0byBwYXNzIHRoZW0gaGVyZQ0KPiA+ICvCoMKgwqDCoMKg
wqDCoCAqLw0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmIChoZWxwZXItPmZiLT5mdW5jcy0+ZGlydHkp
DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGhlbHBlci0+ZmItPmZ1bmNzLT5k
aXJ0eShoZWxwZXItPmZiLCBOVUxMLCAwLCAwLA0KPiA+IE5VTEwsIDApOw0KPiA+ICt9DQo+ID4g
Kw0KPiA+IMKgIHN0YXRpYyBpbnQgaW50ZWxfZmJkZXZfc2V0X3BhcihzdHJ1Y3QgZmJfaW5mbyAq
aW5mbykNCj4gPiDCoCB7DQo+ID4gwqDCoMKgwqDCoMKgwqDCoHN0cnVjdCBkcm1fZmJfaGVscGVy
ICpmYl9oZWxwZXIgPSBpbmZvLT5wYXI7DQo+ID4gQEAgLTkxLDYgKzEwMywzOSBAQCBzdGF0aWMg
aW50IGludGVsX2ZiZGV2X3NldF9wYXIoc3RydWN0IGZiX2luZm8NCj4gPiAqaW5mbykNCj4gPiDC
oMKgwqDCoMKgwqDCoMKgcmV0dXJuIHJldDsNCj4gPiDCoCB9DQo+ID4gwqAgDQo+ID4gK3N0YXRp
YyBzc2l6ZV90IGludGVsX2ZiZGV2X3dyaXRlKHN0cnVjdCBmYl9pbmZvICppbmZvLCBjb25zdCBj
aGFyDQo+ID4gX191c2VyICpidWYsDQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHNpemVfdCBjb3VudCwgbG9mZl90ICpw
cG9zKQ0KPiA+ICt7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50IHJldDsNCj4gPiArDQo+ID4gK8Kg
wqDCoMKgwqDCoMKgcmV0ID0gZHJtX2ZiX2hlbHBlcl9jZmJfd3JpdGUoaW5mbywgYnVmLCBjb3Vu
dCwgcHBvcyk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKHJldCA+IDApDQo+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2ZiZGV2X2RpcnR5KGluZm8pOw0KPiA+ICsNCj4g
PiArwqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0Ow0KPiA+ICt9DQo+ID4gKw0KPiA+ICtzdGF0aWMg
dm9pZCBpbnRlbF9mYmRldl9maWxscmVjdChzdHJ1Y3QgZmJfaW5mbyAqaW5mbywNCj4gPiArwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBjb25zdCBzdHJ1Y3QgZmJfZmlsbHJlY3QgKnJlY3QpDQo+ID4gK3sNCj4gPiArwqDCoMKg
wqDCoMKgwqBkcm1fZmJfaGVscGVyX2NmYl9maWxscmVjdChpbmZvLCByZWN0KTsNCj4gPiArwqDC
oMKgwqDCoMKgwqBpbnRlbF9mYmRldl9kaXJ0eShpbmZvKTsNCj4gPiArfQ0KPiA+ICsNCj4gPiAr
c3RhdGljIHZvaWQgaW50ZWxfZmJkZXZfY29weWFyZWEoc3RydWN0IGZiX2luZm8gKmluZm8sDQo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGZiX2NvcHlhcmVhICphcmVhKQ0KPiA+ICt7DQo+ID4g
K8KgwqDCoMKgwqDCoMKgZHJtX2ZiX2hlbHBlcl9jZmJfY29weWFyZWEoaW5mbywgYXJlYSk7DQo+
ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZmJkZXZfZGlydHkoaW5mbyk7DQo+ID4gK30NCj4gPiAr
DQo+ID4gK3N0YXRpYyB2b2lkIGludGVsX2ZiZGV2X2ltYWdlYmxpdChzdHJ1Y3QgZmJfaW5mbyAq
aW5mbywNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IGZiX2ltYWdlICppbWFnZSkNCj4gPiArew0K
PiA+ICvCoMKgwqDCoMKgwqDCoGRybV9mYl9oZWxwZXJfY2ZiX2ltYWdlYmxpdChpbmZvLCBpbWFn
ZSk7DQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxfZmJkZXZfZGlydHkoaW5mbyk7DQo+ID4gK30N
Cj4gPiArDQo+ID4gwqAgc3RhdGljIGludCBpbnRlbF9mYmRldl9ibGFuayhpbnQgYmxhbmssIHN0
cnVjdCBmYl9pbmZvICppbmZvKQ0KPiA+IMKgIHsNCj4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0
IGRybV9mYl9oZWxwZXIgKmZiX2hlbHBlciA9IGluZm8tPnBhcjsNCj4gPiBAQCAtMTI1LDEwICsx
NzAsMTAgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCBmYl9vcHMgaW50ZWxmYl9vcHMgPSB7DQo+ID4g
wqDCoMKgwqDCoMKgwqDCoERSTV9GQl9IRUxQRVJfREVGQVVMVF9PUFMsDQo+ID4gwqDCoMKgwqDC
oMKgwqDCoC5mYl9zZXRfcGFyID0gaW50ZWxfZmJkZXZfc2V0X3BhciwNCj4gPiDCoMKgwqDCoMKg
wqDCoMKgLmZiX3JlYWQgPSBkcm1fZmJfaGVscGVyX2NmYl9yZWFkLA0KPiA+IC3CoMKgwqDCoMKg
wqDCoC5mYl93cml0ZSA9IGRybV9mYl9oZWxwZXJfY2ZiX3dyaXRlLA0KPiA+IC3CoMKgwqDCoMKg
wqDCoC5mYl9maWxscmVjdCA9IGRybV9mYl9oZWxwZXJfY2ZiX2ZpbGxyZWN0LA0KPiA+IC3CoMKg
wqDCoMKgwqDCoC5mYl9jb3B5YXJlYSA9IGRybV9mYl9oZWxwZXJfY2ZiX2NvcHlhcmVhLA0KPiA+
IC3CoMKgwqDCoMKgwqDCoC5mYl9pbWFnZWJsaXQgPSBkcm1fZmJfaGVscGVyX2NmYl9pbWFnZWJs
aXQsDQo+ID4gK8KgwqDCoMKgwqDCoMKgLmZiX3dyaXRlID0gaW50ZWxfZmJkZXZfd3JpdGUsDQo+
ID4gK8KgwqDCoMKgwqDCoMKgLmZiX2ZpbGxyZWN0ID0gaW50ZWxfZmJkZXZfZmlsbHJlY3QsDQo+
ID4gK8KgwqDCoMKgwqDCoMKgLmZiX2NvcHlhcmVhID0gaW50ZWxfZmJkZXZfY29weWFyZWEsDQo+
ID4gK8KgwqDCoMKgwqDCoMKgLmZiX2ltYWdlYmxpdCA9IGludGVsX2ZiZGV2X2ltYWdlYmxpdCwN
Cj4gPiDCoMKgwqDCoMKgwqDCoMKgLmZiX3Bhbl9kaXNwbGF5ID0gaW50ZWxfZmJkZXZfcGFuX2Rp
c3BsYXksDQo+ID4gwqDCoMKgwqDCoMKgwqDCoC5mYl9ibGFuayA9IGludGVsX2ZiZGV2X2JsYW5r
LA0KPiA+IMKgIH07DQo+IA0KPiAtLSANCj4gVGhvbWFzIFppbW1lcm1hbm4NCj4gR3JhcGhpY3Mg
RHJpdmVyIERldmVsb3Blcg0KPiBTVVNFIFNvZnR3YXJlIFNvbHV0aW9ucyBHZXJtYW55IEdtYkgN
Cj4gTWF4ZmVsZHN0ci4gNSwgOTA0MDkgTsO8cm5iZXJnLCBHZXJtYW55DQo+IChIUkIgMzY4MDks
IEFHIE7DvHJuYmVyZykNCj4gR2VzY2jDpGZ0c2bDvGhyZXI6IEl2byBUb3Rldg0KDQo=
