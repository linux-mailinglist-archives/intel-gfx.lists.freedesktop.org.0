Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 357AA894CBE
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 09:37:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C26C310FAF0;
	Tue,  2 Apr 2024 07:37:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UM+f/fEz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5417A10E3B7
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 07:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712043462; x=1743579462;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=7hxgs7LzKECFEMW70WufGUzCqConI08FRN48kpeb1RA=;
 b=UM+f/fEzAJEJkh97UOVCMLmYanWjNbNmE2a0K98ztofRwgHdGQaIkIRM
 6pCiRLfjBgnIgK5qVxwH0LtkiMjXOOv9GUSNfeoBRdX1Y9YiV4EyVuYT/
 A9YPIGk2JaMcLYwRnp+MtnS33lv85aZrQFuGuvtrOTmUUTRyldP3LZSwA
 P6fYyYv/YMN9LraOTFyHvZ3/5QwAGU9iIwjnw3sQ6ge8nd+cNr+O5WbEx
 fJ0Q6+Dw/c4tFzRmoVCX3VL69Z1nA6GKp8Snz2dg75EBX+Mg1OZGz08NZ
 wW83MC9m5G5DV1iMV4v6fV1nX3ftvBygJxwlH8/SsFSeWeaQUvRvmb/Lu w==;
X-CSE-ConnectionGUID: QujLbaYUTs+GxtJYrdOqAQ==
X-CSE-MsgGUID: IjxQ99JeSzakOC+6whTX5A==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="11014760"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="11014760"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 00:37:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="22419657"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Apr 2024 00:37:38 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Apr 2024 00:37:37 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Apr 2024 00:37:37 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 2 Apr 2024 00:37:37 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 2 Apr 2024 00:37:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gg2/dmfXts9RQ6DeEENn9tQb11TVJYu7qi+C+RLSDT7jJps8IGLl7zH8bMP/yc0xKboj72Zu59ZXL3Pw5jDBMlCHHr4OCcqjNkyi1Md/LSD5PBbJbBWZDCnar4+TOuYhL0H3b2nfPEp7lJW9g98+T7kZnKFsOl2WBv9OgJL/xL4h/8TXkRGZ6Ovk06+xQZtAZgCqDY9J1gdCrsvHKYIZoqFfjtiG/nz8BVOLCVR2WtBvIQV6EYQQ61zRZyEJdpkAUcpNh4/d/GO6TsokvKtpnTUKXmsupy5ii4iVNEJNUdLITkLcxghysJl7ZqDg04C1YofKbfO+ultP0fOLOVwu6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7hxgs7LzKECFEMW70WufGUzCqConI08FRN48kpeb1RA=;
 b=fy3vthekOm+oGubp3N0c3oZpca9LIHOFXeDa/dnc92XOwIgAkZby0b8sCX4nfez5AQ23nhengnWspO7aCnoJNmn9X72PX6KW5Rt1qY+WAyoM5e8fzFJdebPwAM3agSfaiXcxmagAHX9SQ7qgYIDjq5IW1BweAZNPZ3TePlvZXlrwLcO0dLtJzndOlm/epaIdCOtcRyqORGiriHc9iFf693ht+DP+eS8HHAdYgHFUomKLvDmpQHItGU+nfOMXaH+tS+u1Z1T1qmzYVq8xWgqpADz2Xdc6b56d20I1scIXcMqU5fxK+IdC+iuQaU8nkVNjg/ZqlupFQPAYgrfa191Hmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by PH7PR11MB8549.namprd11.prod.outlook.com (2603:10b6:510:308::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.21; Tue, 2 Apr
 2024 07:37:34 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::8c48:8239:4927:e833]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::8c48:8239:4927:e833%4]) with mapi id 15.20.7452.019; Tue, 2 Apr 2024
 07:37:34 +0000
From: "Srinivas, Vidya" <vidya.srinivas@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 22/22] drm/i915: Use debugfs_create_bool() for
 "i915_bigjoiner_force_enable"
Thread-Topic: [PATCH 22/22] drm/i915: Use debugfs_create_bool() for
 "i915_bigjoiner_force_enable"
Thread-Index: AQHagXZ1RtiMJhoeykG881t7jDo4O7FUnhzA
Date: Tue, 2 Apr 2024 07:37:34 +0000
Message-ID: <PH7PR11MB8252E141B2FBBF42B2EC4110893E2@PH7PR11MB8252.namprd11.prod.outlook.com>
References: <20240329011254.24160-1-ville.syrjala@linux.intel.com>
 <20240329011254.24160-23-ville.syrjala@linux.intel.com>
In-Reply-To: <20240329011254.24160-23-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB8252:EE_|PH7PR11MB8549:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aV13nAHL+oMZFwyDkGrrPYaPNHBJ4qE/HDRUjOemS5Ahph/9nw+rbmuBNXLnafzz7PtqYcTl66vYJYQe93XUj8Fiy+Q7630I45mgUotmNXWViwbtIZxIxkxAtrJNZDvVOliY31p2emQAmREAc8cthY24yyM6uTqiyHckUexA7j0lI7lyFxqzocra00kLR+qlW4dmspo02Mn8pP1nnFLoB/UOiFmR8qXXwkestJ9qzZklbJlF52VcgdTcNdV4pwueyGpvDSW61ooG8udxqzgZT4+ZlSkF7YfZpW4iZQF1xjmRhbY55LnA7vNBNczJv5hmBIwRveU4olwR6piTOMymfqv8wuqH75WAs6bnf84oNYxnulvIZFjRlpTWXFabAIh+6zcCPw6Tlbnva/tZ0s4xMveyxNFUeei6Sfk7aoC5SKdKXOw5LVEUzH5lDjARcaDq49KrH8IaGCbwFwopmuGPLVetu9f5Wo7GANYWcQTtlG/DgaLHiza3mFVwiX/gopOjglHWiaEInnXAORXFYha9PhnSySqwfBT24n82OfhMQt/nyz3gtohPL/WQkoJq5ryBT9to775Lk2Rzw8IKuQYvjhDOI9X1scV/vzLfZJFa/6DCHfvNIgLfse6hHQ6XJ5j3f7i9U4wzy0ieOgocnUhktYHjSKy7EKxKgv0uJIVtIbs=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?REFLaEVQenJGVjZXNWFLWENlbkhudmphQmZYeXJITFlrZmpMOERoc0QrbGFH?=
 =?utf-8?B?N01HWTY4RElkVU0wajVQNWg0ZVEzYjRQTEVFdzJ0Ynp0bk5LVzhTQ0w4TEZs?=
 =?utf-8?B?UlR4akVwYzRWT0xNVHpQaEtWeDVZRFRUdWc2K1EyVHVRZU9BcFhia2tiaitV?=
 =?utf-8?B?a2Q4eTBaOFJpODlNd2M0WGQ1Ujh4cUNxS01zZ05CcmpuUmFXRkNUNU0vQUwv?=
 =?utf-8?B?NE8velFuemZLRVJOWlRCcTN3L25YTVpJbDFPODEzWFNwM1UxOVVXaFUxQ0Yz?=
 =?utf-8?B?RllWaHkwczB5a2hramZBVDFYWEN6ZkYzQ2NwaGdIS2REQWJZNHVQMTZxS0to?=
 =?utf-8?B?TnBjem5VNFRUWWhGSCt2bm9UeW1rcVcwMXg5Ty9CUVkyTDk5MzArZFdkaVRq?=
 =?utf-8?B?aTZBNnhuTFg3S0wwWU5DUkR4TDEyZm5LSWdrWHV0c0NMOEJ0SmdqZnZ3enhx?=
 =?utf-8?B?bHRlcnl4MEpKL0czUWE1MFQ5Z0FlVzhNeHc4YlNCV1I2K0VtR3FCSzREenov?=
 =?utf-8?B?MCtCdTJURXBEZ3R0VTY2RTN0ZzdnUGtEMWV3TEZKaWlJYXFtLzdkZ1JtbnJm?=
 =?utf-8?B?ZnpES2ZVbmgxbC95VkdpQjBVcjI5TEtCQnhTb0dpRkg4MkNraVBwd3V1V3B1?=
 =?utf-8?B?VnJpNEpoRmhZWWdyVGk5czI2amlMYndHUG1pODVHdlpXZzdicVV5aGt4NTNU?=
 =?utf-8?B?a2ZtdFpsd3U5eDg3bVRPemMyZkJUZ25ibGtIUXZKY0V4Rm43dkluakRLNUYr?=
 =?utf-8?B?aGRRdFhaSG5GUXRWQU5CUWw4cjJTSDRXck1GMnhORmgxZDJSS09GdnZoUVhU?=
 =?utf-8?B?OUIzaUpnNFNSbHlxTXc2YUdxQlFwUjlkYXNyM25oMjVGblVkWE5BOWlnL2NP?=
 =?utf-8?B?OFpEZWc0K1JsL3VGWmtYQWlRWWNtSHQrMkN2SDdwVkMyR1ZZMlRvMXdhMjFk?=
 =?utf-8?B?b2JzT2pjMmRPdGxHSVZoOGxndzRodVpsZEFHYmtUbTV0UlB6NjBwUnUxYlBk?=
 =?utf-8?B?ZDlxSTdaQUN5L2MydjhzQ05OeENmaUJvZ3VkcG16QWRQeTZBWTk1T1pobENO?=
 =?utf-8?B?NHd0MEdqcGRHUGlRSjRIQjk0M2N1VEVOUTd2VUtFWUluSGh4YkI4dVA0RkFS?=
 =?utf-8?B?YmVQL090Qm9sdGxOR25jRnR6djlpdFhhVXJtL1loZVJvQnlUYmRNSENzWmh0?=
 =?utf-8?B?OFBVZTVnS3hndjBOcEJxVkVjRnovWElueXVvVWVmdTR2S0hSd3RKL3grRm9k?=
 =?utf-8?B?MTYvTUtDUm9pT2MzRFlJak02SDZ4WmN3NGFGWXRNUFZ6TWRwc1lJZ002NGVs?=
 =?utf-8?B?cUowNFRZWjNsbm9YQ1pqOGRDYjFQUnp6SzRCSTNuNFJXMnp4YlVLUURUbDZh?=
 =?utf-8?B?UUlUU1lWeTZ4SHdGbWRneldvWUtZeFVEQ3ZQYVZCc1dYb0Noak5hRWR3emVG?=
 =?utf-8?B?U2JrU2RnTXFRNnRsSWRmcUZpbW85TmorVUN1bTY2VUgyM0tTR21hRTQ3dFRy?=
 =?utf-8?B?dlptaHZmMGZwS01ISlMreDZPdXYwYTAzSEtsZEFKQUZ1dEI5cTNUNEVSeFFE?=
 =?utf-8?B?aUpCR0dGajE1dE9WbjJ2OEVtQ1Q3Z3BWWnYxaEo0RWRaR0hwQVE1b3F0Ky90?=
 =?utf-8?B?VUh4dXoxVklyNWpMaGcwVmNMNDllMDV6VEYwSG40VzJReER0bGw2U2pvRWdD?=
 =?utf-8?B?bmQ1YTJXalU4dWtWZ0xyZkEzSlBVMEJNOHBxY2FWVGFicHdKaXN4amNFbUgx?=
 =?utf-8?B?NTB0ODZmRkdTQXhGcWszdkZ6b1o4WTMvYUlLK1UwTVNmUkE5R0REdzBtbmky?=
 =?utf-8?B?eUFMUm5PUG0yZ3V2eEkxMTVJVGJ5MURZTzRsdFVRbVpadEhzQjFUNjdOMjJJ?=
 =?utf-8?B?MDh5NHlNQ1NzcFEyR2tzd1laVFR1VEhSMjc5STZ0N055WjZoUW9GZWlXOFZU?=
 =?utf-8?B?UVdtV2daQk9oNTV5cUlCRWlMd082eHlDNC95SkRuMlNnNDN0SGtKODc5QkhM?=
 =?utf-8?B?Sm0vNWNveVlvTVRuVVlaV01Fakh5ZngxaGZRbXI4SDZuT2taUUh1ZDk0ZU1t?=
 =?utf-8?B?UTdmMHJlNkplSVpDUnY3ZVNnT214QWhBMDM1SUFRbmhtZTdtc01hdnFhWUJC?=
 =?utf-8?Q?pKSiRke/Bp382f4ph8rw6Rgcj?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3051bd06-7b14-4200-53da-08dc52e7c32b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2024 07:37:34.5002 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: deJ0CrHjH1JF5HOqUmX6ZL9COy17mv60jsK/bdAAn5zRIm3bBSdh1mO/+bi61DUhSSumFnlCXaA6JdmTefQKMZj26Sj8dSPNhbiiipkgcsk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB8549
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

SGVsbG8gVmlsbGUsIFRoYW5rIHlvdSB2ZXJ5IG11Y2ggZm9yIHRoZSBzZXJpZXMuIDZLIGRldGVj
dHMgZmluZSBhbmQgd29ya3MuDQpUZXN0ZWQtYnk6IFZpZHlhIFNyaW5pdmFzIDx2aWR5YS5zcmlu
aXZhc0BpbnRlbC5jb20+DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTog
SW50ZWwtZ2Z4IDxpbnRlbC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJl
aGFsZiBPZiBWaWxsZQ0KPiBTeXJqYWxhDQo+IFNlbnQ6IEZyaWRheSwgTWFyY2ggMjksIDIwMjQg
Njo0MyBBTQ0KPiBUbzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJqZWN0
OiBbUEFUQ0ggMjIvMjJdIGRybS9pOTE1OiBVc2UgZGVidWdmc19jcmVhdGVfYm9vbCgpIGZvcg0K
PiAiaTkxNV9iaWdqb2luZXJfZm9yY2VfZW5hYmxlIg0KPiANCj4gRnJvbTogVmlsbGUgU3lyasOk
bMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFRoZXJlIGlzIG5vIHJl
YXNvbiB0byBtYWtlIHRoaXMgZGVidWdmcyBmaWxlIGZvciBhIHNpbXBsZSBib29sZWFuIHNvDQo+
IGNvbXBsaWNhdGVkLiBKdXN0IHVzZSBkZWJ1Z2ZzX2NyZWF0ZV9ib29sKCkuDQo+IA0KPiBTaWdu
ZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29t
Pg0KPiAtLS0NCj4gIC4uLi9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5j
ICB8IDQ0ICstLS0tLS0tLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlv
bnMoKyksIDQyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMNCj4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jDQo+IGluZGV4IGI5OWMwMjRi
MDkzNC4uM2UzNjQ4OTFkY2QwIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfZGVidWdmcy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZWJ1Z2ZzLmMNCj4gQEAgLTE0MDIsMjAgKzE0MDIs
NiBAQCBvdXQ6CWRybV9tb2Rlc2V0X3VubG9jaygmaTkxNS0NCj4gPmRybS5tb2RlX2NvbmZpZy5j
b25uZWN0aW9uX211dGV4KTsNCj4gIAlyZXR1cm4gcmV0Ow0KPiAgfQ0KPiANCj4gLXN0YXRpYyBp
bnQgaTkxNV9iaWdqb2luZXJfZW5hYmxlX3Nob3coc3RydWN0IHNlcV9maWxlICptLCB2b2lkICpk
YXRhKSAtew0KPiAtCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciA9IG0tPnByaXZh
dGU7DQo+IC0Jc3RydWN0IGRybV9jcnRjICpjcnRjOw0KPiAtDQo+IC0JY3J0YyA9IGNvbm5lY3Rv
ci0+YmFzZS5zdGF0ZS0+Y3J0YzsNCj4gLQlpZiAoY29ubmVjdG9yLT5iYXNlLnN0YXR1cyAhPSBj
b25uZWN0b3Jfc3RhdHVzX2Nvbm5lY3RlZCB8fCAhY3J0YykNCj4gLQkJcmV0dXJuIC1FTk9ERVY7
DQo+IC0NCj4gLQlzZXFfcHJpbnRmKG0sICJCaWdqb2luZXIgZW5hYmxlOiAlZFxuIiwgY29ubmVj
dG9yLQ0KPiA+Zm9yY2VfYmlnam9pbmVyX2VuYWJsZSk7DQo+IC0NCj4gLQlyZXR1cm4gMDsNCj4g
LX0NCj4gLQ0KPiAgc3RhdGljIHNzaXplX3QgaTkxNV9kc2Nfb3V0cHV0X2Zvcm1hdF93cml0ZShz
dHJ1Y3QgZmlsZSAqZmlsZSwNCj4gIAkJCQkJICAgIGNvbnN0IGNoYXIgX191c2VyICp1YnVmLA0K
PiAgCQkJCQkgICAgc2l6ZV90IGxlbiwgbG9mZl90ICpvZmZwKQ0KPiBAQCAtMTQzNywzMCArMTQy
Myw2IEBAIHN0YXRpYyBzc2l6ZV90IGk5MTVfZHNjX291dHB1dF9mb3JtYXRfd3JpdGUoc3RydWN0
DQo+IGZpbGUgKmZpbGUsDQo+ICAJcmV0dXJuIGxlbjsNCj4gIH0NCj4gDQo+IC1zdGF0aWMgc3Np
emVfdCBpOTE1X2JpZ2pvaW5lcl9lbmFibGVfd3JpdGUoc3RydWN0IGZpbGUgKmZpbGUsDQo+IC0J
CQkJCSAgIGNvbnN0IGNoYXIgX191c2VyICp1YnVmLA0KPiAtCQkJCQkgICBzaXplX3QgbGVuLCBs
b2ZmX3QgKm9mZnApDQo+IC17DQo+IC0Jc3RydWN0IHNlcV9maWxlICptID0gZmlsZS0+cHJpdmF0
ZV9kYXRhOw0KPiAtCXN0cnVjdCBpbnRlbF9jb25uZWN0b3IgKmNvbm5lY3RvciA9IG0tPnByaXZh
dGU7DQo+IC0Jc3RydWN0IGRybV9jcnRjICpjcnRjOw0KPiAtCWJvb2wgYmlnam9pbmVyX2VuID0g
MDsNCj4gLQlpbnQgcmV0Ow0KPiAtDQo+IC0JY3J0YyA9IGNvbm5lY3Rvci0+YmFzZS5zdGF0ZS0+
Y3J0YzsNCj4gLQlpZiAoY29ubmVjdG9yLT5iYXNlLnN0YXR1cyAhPSBjb25uZWN0b3Jfc3RhdHVz
X2Nvbm5lY3RlZCB8fCAhY3J0YykNCj4gLQkJcmV0dXJuIC1FTk9ERVY7DQo+IC0NCj4gLQlyZXQg
PSBrc3RydG9ib29sX2Zyb21fdXNlcih1YnVmLCBsZW4sICZiaWdqb2luZXJfZW4pOw0KPiAtCWlm
IChyZXQgPCAwKQ0KPiAtCQlyZXR1cm4gcmV0Ow0KPiAtDQo+IC0JY29ubmVjdG9yLT5mb3JjZV9i
aWdqb2luZXJfZW5hYmxlID0gYmlnam9pbmVyX2VuOw0KPiAtCSpvZmZwICs9IGxlbjsNCj4gLQ0K
PiAtCXJldHVybiBsZW47DQo+IC19DQo+IC0NCj4gIHN0YXRpYyBpbnQgaTkxNV9kc2Nfb3V0cHV0
X2Zvcm1hdF9vcGVuKHN0cnVjdCBpbm9kZSAqaW5vZGUsDQo+ICAJCQkJICAgICAgIHN0cnVjdCBm
aWxlICpmaWxlKQ0KPiAgew0KPiBAQCAtMTU1NCw4ICsxNTE2LDYgQEAgc3RhdGljIGNvbnN0IHN0
cnVjdCBmaWxlX29wZXJhdGlvbnMNCj4gaTkxNV9kc2NfZnJhY3Rpb25hbF9icHBfZm9wcyA9IHsN
Cj4gIAkud3JpdGUgPSBpOTE1X2RzY19mcmFjdGlvbmFsX2JwcF93cml0ZSAgfTsNCj4gDQo+IC1E
RUZJTkVfU0hPV19TVE9SRV9BVFRSSUJVVEUoaTkxNV9iaWdqb2luZXJfZW5hYmxlKTsNCj4gLQ0K
PiAgLyoNCj4gICAqIFJldHVybnMgdGhlIEN1cnJlbnQgQ1JUQydzIGJwYy4NCj4gICAqIEV4YW1w
bGUgdXNhZ2U6IGNhdCAvc3lzL2tlcm5lbC9kZWJ1Zy9kcmkvMC9jcnRjLTAvaTkxNV9jdXJyZW50
X2JwYw0KPiBAQCAtMTY0MCw4ICsxNjAwLDggQEAgdm9pZCBpbnRlbF9jb25uZWN0b3JfZGVidWdm
c19hZGQoc3RydWN0DQo+IGludGVsX2Nvbm5lY3RvciAqY29ubmVjdG9yKQ0KPiAgCWlmIChESVNQ
TEFZX1ZFUihpOTE1KSA+PSAxMSAmJg0KPiAgCSAgICAoY29ubmVjdG9yX3R5cGUgPT0gRFJNX01P
REVfQ09OTkVDVE9SX0Rpc3BsYXlQb3J0IHx8DQo+ICAJICAgICBjb25uZWN0b3JfdHlwZSA9PSBE
Uk1fTU9ERV9DT05ORUNUT1JfZURQKSkgew0KPiAtCQlkZWJ1Z2ZzX2NyZWF0ZV9maWxlKCJpOTE1
X2JpZ2pvaW5lcl9mb3JjZV9lbmFibGUiLCAwNjQ0LA0KPiByb290LA0KPiAtCQkJCSAgICBjb25u
ZWN0b3IsICZpOTE1X2JpZ2pvaW5lcl9lbmFibGVfZm9wcyk7DQo+ICsJCWRlYnVnZnNfY3JlYXRl
X2Jvb2woImk5MTVfYmlnam9pbmVyX2ZvcmNlX2VuYWJsZSIsIDA2NDQsDQo+IHJvb3QsDQo+ICsJ
CQkJICAgICZjb25uZWN0b3ItPmZvcmNlX2JpZ2pvaW5lcl9lbmFibGUpOw0KPiAgCX0NCj4gDQo+
ICAJaWYgKGNvbm5lY3Rvcl90eXBlID09IERSTV9NT0RFX0NPTk5FQ1RPUl9EU0kgfHwNCj4gLS0N
Cj4gMi40My4yDQoNCg==
