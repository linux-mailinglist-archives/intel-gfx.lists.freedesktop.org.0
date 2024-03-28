Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F23E88FC69
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 11:06:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B482E10F856;
	Thu, 28 Mar 2024 10:06:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lJ2v5raL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 16A681123B1
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 10:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711620416; x=1743156416;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:mime-version: content-transfer-encoding;
 bh=Jw84Skv0Bsvd94to/JFjd0+v37JKVIBfk6if5oAEkjE=;
 b=lJ2v5raLYhVwoZD1Qznj+u/0/ROhsqwiFhjC0QX7WRYgcOvmDesR/fxw
 0VvPCkGCbO3bn2Y1pS43ONRfRo55yxlWAFuVKMhonGrmLziBLtJ0jGAY8
 SEpTKD0DbvV6zT8BScIcaD+5ZJwz8tjlBK3L+bXtzAfbVWIq3lnpJYjfn
 c44w/UMSN3I1fZtFAwF9Nb3+B9hAcOzmypV4k9pCQaAvLGljnp/mSxmt2
 +/tHQGruzvqU53ZmtI/kfbXKznWx0nN53eG8A2A5/nbmZH3H2rLqDxhuq
 Wzzm+VwUPXYC+AxADTqYtK/vNyiNvMdPnwTjMVuNiVv6n9cEGQTy0U4Wr w==;
X-CSE-ConnectionGUID: PPF7tBx6TzCKzkesaOBBzQ==
X-CSE-MsgGUID: gcTLE2YlRY+8sBwu9hLR8A==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="24254624"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="24254624"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 03:06:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="16674187"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 03:06:55 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 03:06:54 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 03:06:54 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 03:06:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SdQICdAmSxfAom5MSH8RWtlLF1niAyIoBpvMs6mvV1cgUnntdMpQMy66bQCANN/zf0pAb9TU10splf78rN+WbUQP4kK3FhOdabHqN5CcsJhbGXExHArmvKOpdY4JwzfRO8nvE3QWMJopsp8jpAPvWyAvHzGg3t/Qpccmlg1goRNZlif12/FZ56E40AeXd6/73cS/dl2w9RIpjH4ZV8qQaM8ZkQTgO+9+KUSE66rXYsAvyQFYwjIY7Xz4euzGE7exC8eA+PdjD2sNuqVQwdo9sz4zVABCxiCjqV7W81JCnRWw02Anl5ycLeYvNWmq6sJmx+5MefmnzFCIa2GJZxn52A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bzZdo5XKQ3rapLuQIg/PgAayjqJEkalrCiKgPH5AKHM=;
 b=VcRpfiL4hoUYlGfN10LqMv81ni1PF6nyAsepLmKfrUz0W8a/BdGA+eQz0lIyaqY0gKygG6uJR02uIcIyIBzEPkcvb7+tjCLAsxojx17IK1N1UXCIAnkxLgDsnnG6bpmIo6K+Ae8q2CaiKkE66UNYcKGS480CpXnr1gMOdPrNxrt6w55yCFfSJ2TDeWORR9aD6pcwShKy9N/QMnCdO/G7AycE4CfzkScU7uR8wu5CetFK/eGJbLiEQReWIjsi6FaZIwDxFJcObbpfWdfVbP/pdyKhpC6yxR1Lx8mlsyQUeKpEDOigTzQYnopc9tA5WnqKDUCn29poE8MXEEnpCHc0CQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB6445.namprd11.prod.outlook.com (2603:10b6:8:c6::11) by
 DS0PR11MB7683.namprd11.prod.outlook.com (2603:10b6:8:df::10) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.33; Thu, 28 Mar 2024 10:06:51 +0000
Received: from DS0PR11MB6445.namprd11.prod.outlook.com
 ([fe80::d967:14ba:eb4a:34a1]) by DS0PR11MB6445.namprd11.prod.outlook.com
 ([fe80::d967:14ba:eb4a:34a1%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 10:06:51 +0000
From: "Krzysztofik, Janusz" <janusz.krzysztofik@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Nilawar, Badal" <badal.nilawar@intel.com>, "Gupta, Anshuman"
 <anshuman.gupta@intel.com>, "Vivi, Rodrigo" <rodrigo.vivi@intel.com>, "Roper, 
 Matthew D" <matthew.d.roper@intel.com>
Subject: Re: [PATCH] drm/i915/hwmon: Remove i915_hwmon_unregister() during
 driver unbind
Thread-Topic: [PATCH] drm/i915/hwmon: Remove i915_hwmon_unregister() during
 driver unbind
Thread-Index: AQHaf3n7Ydsbg1mKpU+uCEWYKc/NUrFKij+AgAB1vYCAAE+qgIAAvoWAgADiLgA=
Date: Thu, 28 Mar 2024 10:06:51 +0000
Message-ID: <2114685.bB369e8A3T@jkrzyszt-mobl2.ger.corp.intel.com>
References: <20240326124838.3049215-1-badal.nilawar@intel.com>
 <5934737.MhkbZ0Pkbq@jkrzyszt-mobl2.ger.corp.intel.com>
 <85frwb5s3k.wl-ashutosh.dixit@intel.com>
In-Reply-To: <85frwb5s3k.wl-ashutosh.dixit@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB6445:EE_|DS0PR11MB7683:EE_
x-ms-office365-filtering-correlation-id: b8ecdda5-11fc-48d4-4eca-08dc4f0ec9b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: t7RZgbra8fNL+ZMgJSWCw+P6cmeGlMXHvjHE/6y/iI1kIAfk98iyQP/TwrUhMQ8abGEc+iDK9lN/BWfsM+nxSLp8MtBA3werJo/SZbhfrLctLeHzbgYAKHWFDGHbH8B0clBf6nKFpwFJDaPZ9sp0nLVzEkaB3dxQwBlrKNbf449uzsp+rpUbeJVRu6Z573JmiJzzDiLd2kFSC3o/b9g6AZ0SXg/aSD4RcX+01CkEbHRo8Ww7Gb8t8dik6iefWdv/IvGeQ9v2zvimIvg6yrupRapNIkp1U4SeJwDXmz+pleE1F/3lmeSaylkzbwO3EoAAhJq4rVdKDOvJ2WkgeVCDY08UfXE/vP/cbN0tFyj6n6uLpcLrC42N/6lvP6tKDbOTaer1wHRjDGrg2AkLn5VNry9JytqEzWzAX9Lw/jR3MfZPw/eUeoaBqjJ1+/a98CmtIfig6sB7i/07MKHgU/7E1gC++oByuN3+43Pw99GIwoNzkuPnJXYdIQK/wTxPIL5EQQltNbHUnYDWEopfQLZLvGkuAL98MIBB9T/873agi7WR9C04e9E8EhSSC4jLZzTt3Q3pItAjze4MBAFBD80OXY275rnqDdzCELmfjQTLQp/rQNogFcq4eG3Jaxu3SbvE71Ip88lKOniEnCrA121yorvbq4KuRep5LRvv/VM27jkeNTP9uWZ/NAX8BoCi7wE02Y2WS9HMiPQHuySS2utxIPeFdl4LEdc0TunKSnbBnNQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB6445.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(376005)(1800799015)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TnpvWkNrUWlTWFdjaGQraHlaQVlPODREY1JEdFdlRHBkZ1dBaW1nRTRBZHdL?=
 =?utf-8?B?ajhneU5ybW5OQjhReTludXJpdE51Umd6ZVFFL2tQT2lsU3hwNm0zTVoxNWJO?=
 =?utf-8?B?NDlIVTZjSDVqU2NlN1krRDZxZ0NCV0RGcng0Ty9SMGQ3bDFGZW9xcVpQS3Rv?=
 =?utf-8?B?NlpRcVZJcFBzQmZCd2NPN2pHVldEUk5xeWxCenM2ZEtYV2g1ZmxiMlB5SjBP?=
 =?utf-8?B?UTlTQUV6eVlqSDJ3VWVVS2xKeUFnMEJTZTVSZjEweFRwZmJOSmNSZklFU3RB?=
 =?utf-8?B?enNkQVZFYUk4UVh5ekZRazZEUHVBemp1dW8rcHJsK3BwbWxhUkY4aDFweHR0?=
 =?utf-8?B?eVRGdWxDM082cXJLQXBMdTNGazUyT3FZUG8rZVo2UGEva2loUVk2M1A0THBM?=
 =?utf-8?B?L0UxT3ZlRzBNNThybE1ENUFiaHRxSWExMWxGek9Gcm5mengvLzFWWTM3bmN1?=
 =?utf-8?B?MUwvd2o5YTg1SnBQTEFwWDFHWUwrZjQ4MGlGSGNnSXY0WXNoY1JpaU54bzdp?=
 =?utf-8?B?SnZaaXkyTDJyQlNQUXgxWi9IaXlqWFNqaEhSK0hXQ2NHN042L1VuRUhkK29O?=
 =?utf-8?B?NllTTk52RFZyTzJjSkZEVU1rRUpXdWZmTWhDTkdTL2tMNHc0TVowb1ZMR3pO?=
 =?utf-8?B?N0RVL09vQS90SnhkQnBLWmhma1dlanpLa0toUDVmN3NoS2cvYTh4eUNNWWEz?=
 =?utf-8?B?M2RhYWlDNG1RcDRNRU1wMFFDV3l5RDhTSVh6NEljdzE4NENWT21IVkNrVzY1?=
 =?utf-8?B?VWwvTGVFZDZTZTNKa2dRMFVVc05wcDJZdWowSlVZQnBhSWVLOU0zTTgvSTdW?=
 =?utf-8?B?eWtKdnQ3V1lXdEdmaGc2eG1PbUxsOU5iWlptQmdEZ0FQMGFpdGVTOGJzZ01u?=
 =?utf-8?B?aVhZR0xoK0FqeC95bGVEcmppUmFEQTErdFU2cXRhWE9CRFR4N28zRGtJejAz?=
 =?utf-8?B?ekx6aGxkSDlIZm9JUEpsTmh0c0RXUDdUUVZjWjdxdnFEOUhQYUF0T2ZuM1RR?=
 =?utf-8?B?WlUzdjU1dUppblh0UmF2L1dvMGNzc1NkRHN4dHNtNGZCZVU4ZHkzbDE2TTdm?=
 =?utf-8?B?dzh2Si91QXE2RE94a09PY0laR3BucjZVOFZoWDFrcHFSUWFGcmJFRW9sMTZs?=
 =?utf-8?B?NXEzekMydjRRWUJ1bzZ5MlBqdjU4K2JwaXlFV0tiNzlKV0pteUttTm5CbkI2?=
 =?utf-8?B?OXcydWx4dEt4eGVkVCszbU8yVDh5SFN5UVZtOXh6dDF3ZXp5MGJZSFVyZHdw?=
 =?utf-8?B?M0Q0d3NqTmpvYnptVmpEOHZxMW5ucXk5TlFxQmpibnRSVmVGeEVjNFZ0Mysy?=
 =?utf-8?B?WXRVUU05MCtGSkc5Um9aUDRabGhGdWIrWXBpM2k4U1o5Qnd0QzNEc3VTd25N?=
 =?utf-8?B?UmZzelQyelduTFJYMmphOHl3bzNYcjhRbFMrNnltbkpIZWpPZm15K1pFN283?=
 =?utf-8?B?d0UyTlRrVGxJWHM3ZkFaRm0vVU5wRDhhRjZEcjhLN2MzV0pPOHpjYnMrdGNu?=
 =?utf-8?B?TDFIdm9wTU5CTUlFZzlaOGpPQnpJWWNkQnpsZkNZQVpvNGZYdnNzOWJ5RTRa?=
 =?utf-8?B?NVdOOVpoYVZmUFQwUUxxakxhWGpNd3JNbjh6RVI4Um8rN3p0UEg1U2p5VUYr?=
 =?utf-8?B?STNVRWZVa21ZVVRIUG5hMW1IZzNsU002RGZTTk9FNHpSM2Z5ZERDU21oZ1F4?=
 =?utf-8?B?dkJaMTd5ZW5yU0kyczRFaTB2QXNzQXh6S3BROG42QmpYVFQzM0RHTGx0UHl6?=
 =?utf-8?B?OGhDbGx0ZXhPNEpQamoxSDdVWnpRbFBVMFEzQmhNdm5EZmI3cTF5aGhrbFJm?=
 =?utf-8?B?empSNFFOWjh4aXB4MUVUanQycmgrNkd2bm9MU05DTnoreHFZWG8zb3V3Y1Mx?=
 =?utf-8?B?dm1nN1B3V2F0N0l2UHlaRDJmdUNVc2tydmdLbkZJdHB4cC9OWnZqSWFjUWVB?=
 =?utf-8?B?dCtMeUxXQlIvRlFmZ1Y2d25iY2NDV29mUDVLQWNsS09CcU0vWFZKbDdoUkdZ?=
 =?utf-8?B?cWRpMm83RVJIT1NQbGdHL1pDaVAvdWNRMjBPUUtHdmNDcW11a24xUHNGay9T?=
 =?utf-8?B?aWswL2NwNVQwbkppOXZpVVNadkVvQzZLbWFKL0pBQ0ZEc1p0cnZLa1crUHpp?=
 =?utf-8?B?TFhqYU5jTDVXQUZ1RTg4dzllV0xDOTBTR1JDK0ZGS3ljakhGNTlPZ2I1VGIw?=
 =?utf-8?Q?M/xT8dknizm7/8z+3nJrAfk=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <B548852A20AF5C4E9D20A3B334BE33EB@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB6445.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8ecdda5-11fc-48d4-4eca-08dc4f0ec9b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 10:06:51.2202 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EFfQrmdYV+v7iirru8RdtufejYKAaHfkwdnvVq5Yh0dz72v2/oQXmSyiO3j6/nFgrItSSqrR6f54rEEOWp/V0JbJ3XmN82vMTgAh03MLAyA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7683
X-OriginatorOrg: intel.com
Content-Transfer-Encoding: base64
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

SGkgQXNodXRvc2gsCgpPbiBXZWRuZXNkYXksIDI3IE1hcmNoIDIwMjQgMjE6Mzc6MTkgQ0VUIERp
eGl0LCBBc2h1dG9zaCB3cm90ZToKPiBPbiBXZWQsIDI3IE1hciAyMDI0IDAyOjE1OjI3IC0wNzAw
LCBLcnp5c3p0b2ZpaywgSmFudXN6IHdyb3RlOgo+ID4KPiAKPiBIaSBKYW51c3osCj4gCj4gPiBG
b3IgbWUsIHRoYXQgc3RpbGwgZG9lc24ndCBleHBsYWluIHdoeSB5b3UgdGhpbmsgdGhhdCBpOTE1
LT5od21vbiByZXNldCB0bwo+ID4gTlVMTCBvbiBpOTE1IGRyaXZlciB1bnJlZ2lzdGVyIGNhbiBi
ZSB0aGUgcm9vdCBjYXVzZSBvZiB0aGUgcmVwb3J0ZWQgVUFGIGluCj4gPiBod21vbiBzeXNmcyBh
bmQgdGhpcyBwYXRjaCBpcyBnb2luZyB0byBmaXggdGhhdCBVQUYgaXNzdWUuICBJIGNhbiBzZWUg
bm8KPiA+IHJlZmVyZW5jZXMgdG8gaTkxNS0+aHdtb24gaW4gdGhhdCBjb2RlLCBhbmQgZXZlbiB0
aGVuLCB0aGF0J3Mgbm90IE5VTEwgd2hhdCBpcwo+ID4gcmVwb3J0ZWQgaGVyZSBhcyBub24tY2Fu
b25pY2FsIGFkZHJlc3MuICBUaGUgY29kZSBpcyB1c2luZyBhIG5vIGxvbmdlciB2YWxpZAo+ID4g
cG9pbnRlciB0byBhbiBhbHJlYWR5IGZyZWVkIChhbmQgcG9pc29uZWQpIG1lbW9yeS4KPiAKPiBD
b3JyZWN0LCBJIHNhaWQgYmFzaWNhbGx5IHRoZSBzYW1lIHRoaW5nIGluIG15IHJlcGx5IHRvIHRo
ZSBwYXRjaC4gVGhhdCB0aGUKPiBwYXRjaCBkb2Vzbid0IGV4cGxhaW4gdGhhdCBkZGF0IHNlZW1z
IHRvIGhhdmUgYmVlbiBmcmVlZCBhbmQgcG9pc29uZWQuCj4gCj4gPiA+ID4gSSB0aGluayB0aGF0
IGluc3RlYWQgb2YgZHJvcHBpbmcgaTkxNV9od21vbl91bnJlZ2lzdGVyKCkgd2UgaGF2ZSB0byBh
Y3R1YWxseQo+ID4gPiA+IHVucmVnaXN0ZXIgaHdtb24gaW4gdGhlIGJvZHkgb2YgdGhhdCBmdW5j
dGlvbiwgd2hpY2ggaXMgY2FsbGVkIGZyb20KPiA+ID4gPiBpOTE1X2RyaXZlcl91bnJlZ2lzdGVy
KCkgaW50ZW5kZWQgZm9yIGNsb3NpbmcgdXNlciBpbnRlcmZhY2VzLCB0aGVuIGNhbGxlZAo+ID4g
PiA+IHJlbGF0aXZlbHkgZWFybHkgZHVyaW5nIGRyaXZlciB1bmJpbmQsIHNvIGh3bW9uIHN5c2Zz
IGVudHJpZXMgZGlzYXBwZWFyIGJlZm9yZQo+ID4gPiA+IGk5MTUgc3RydWN0dXJlcywgZXNwZWNp
YWxseSB1bmNvcmUgdXNlZCBieSBod21vbiBjb2RlLCBhcmUgZnJlZWQuCj4gPiA+Cj4gPiA+IFlv
dSBtZWFuIHVuY29yZSBhcmUgZnJlZWQgYmVmb3JlIGh3bW9uIGdldCB1bnJlZ2lzdGVyZWQsIEkg
ZG9uJ3QgdGhpbmsKPiA+ID4gc28uIHVuY29yZSBpcyBhbHNvIGRybSBkZXZpY2UgbWFuYWdlZCBy
ZXNvdXJjZSBzbyBpbiBzZXF1ZW5jZSBJIHRoaW5rIGl0Cj4gPiA+IHNob3VsZCBiZSBmcmVlZCBh
ZnRlciBpOTE1IGRldiBtYW5hZ2VkIHJlc291cmNlcyBmcmVlZC4KPiA+Cj4gPiBJZiBib3RoIHVu
Y29yZSBhbmQgaHdtb24gYXJlIG1hbmFnZWQgcmVzb3VyY2VzIG9mIGk5MTUgZGV2aWNlIHRoZW4g
aG93IGNhbiB5b3UKPiA+IHByZWRpY3Qgd2hpY2ggb2YgdGhlbSBpcyByZWxlYXNlZCBmaXJzdD8K
PiAKPiBMb29rIGF0IF9faHdtb25fZGV2aWNlX3JlZ2lzdGVyLiBIZXJlIHdlIHNlZToKPiAKPiAJ
aGRldi0+cGFyZW50ID0gZGV2Cj4gCj4gU28gdGhlIGh3bW9uIGRldmljZSBpcyBhIGNoaWxkIGRl
dmljZSBvZiB0aGUgZHJtIGRldmljZSAoYWdhaW5zdCB3aGljaCBkZGF0Cj4gaXMgZGV2bV9remFs
bG9jJ2QpLiBTaW5jZSBhIGNoaWxkIGRldmljZSBob2xkcyBhIHJlZmVyZW5jZSBhZ2FpbnN0IHRo
ZQo+IHBhcmVudCAoZGV2aWNlX2FkZCgpIGhhcyBnZXRfZGV2aWNlKGRldi0+cGFyZW50KSksIEkg
d291bGQgZXhwZWN0IHRoZSBod21vbgo+IGRldmljZSB0byBkaXNhcHBlYXIgYmVmb3JlIHRoZSBw
YXJlbnQgZHJtIGRldmljZS4gCgpPSywgYnV0IHRoZSBwYXJlbnQgZGV2aWNlIGhhcyBhIGxvdCBv
ZiBtYW5hZ2VkIHJlc291cmNlcywgbm90IG9ubHkgaHdtb24sIGFuZCAKZm9yIG1lIGh3bW9uIGFw
cGFyZW50bHkgZGVwZW5kcyBvbiBhdCBsZWFzdCBvbmUgb2YgdGhvc2UgcmVzb3VyY2VzLCBlLmcu
LCBhIApzdHJ1Y3R1cmUgd2l0aCBwb2ludGVycyB0byBoYXJkd2FyZSBhY2Nlc3NvcnMgb3IgaGFy
ZHdhcmUgcmVnaXN0ZXJzLiAgUmVsZWFzZSAKb2YgYWxsIHRob3NlIGk5MTUgcmVzb3VyY2VzIGlz
IG5vdCBhdG9taWMsIHRoZW4gaXQgbWF5IGhhcHBlbiB0aGF0IGEgcmVzb3VyY2UgCndoaWNoIGh3
bW9uIGRlcGVuZHMgb24gaXMgcmVsZWFzZWQgd2hpbGUgdGhlIGh3bW9uIHJlc291cmNlIHN0aWxs
IGFjdGl2ZSBhbmQgCmhhcyBpdHMgc3lzZnMgaW50ZXJmYWNlIGV4cG9zZWQsIEkgYmVsaWV2ZS4K
Cj4gQW5kIEkgYW0gYXNzdW1pbmcgaHdtb24KPiBzeXNmcyBpcyBsaW5rZWQgdG8gdGhlIGh3bW9u
IGRldmljZSwgc28gc3lzZnMgc2hvdWxkIGRpc2FwcGVhciBiZWZvcmUgZGRhdAo+IGdldHRpbmcg
ZnJlZWQuIEJ1dCBhcHBhcmVudGx5IHRoaXMgaXMgbm90IHdoYXQgaXMgaGFwcGVuaW5nLCAKCklm
IHRoYXQgb2NjdXJyZWQgdGhlIGFjdHVhbCBzY2VuYXJpbyBvZiB0aGUgZmFpbHVyZSwgaS5lLiwg
ZnJvbSBzdGlsbCB1c2VyIApyZWFjaGFibGUgY29kZSBvZiBvdXIgc3lzZnMgYWNjZXNzb3JzLCBk
ZXZfZ2V0X2RydmRhdGEoZGV2KSBwb2ludGluZyB0byB0aGUgCmRkYXQgZmllbGQgb2YgYW4gYWxy
ZWFkeSBmcmVlZCBod21vbiBzdHJ1Y3R1cmUsIHRoZW4gSSB3b3VsZCBibGFtZSBod21vbiBjb3Jl
IApmb3IgdGhhdCwgbm90IG91ciB1c2FnZSBvZiBpdC4KClRoYW5rcywKSmFudXN6Cgo+IHNvIHRo
ZXJlJ3MKPiBzdGlsbCBzb21ldGhpbmcgd2UgYXJlIG1pc3NpbmcuCj4gCj4gVGhhbmtzLgo+IC0t
Cj4gQXNodXRvc2gKPiAKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpJbnRlbCBUZWNobm9sb2d5IFBvbGFuZCBzcC4g
eiBvLm8uCnVsLiBTbG93YWNraWVnbyAxNzMgfCA4MC0yOTggR2RhbnNrIHwgU2FkIFJlam9ub3d5
IEdkYW5zayBQb2xub2MgfCBWSUkgV3lkemlhbCBHb3Nwb2RhcmN6eSBLcmFqb3dlZ28gUmVqZXN0
cnUgU2Fkb3dlZ28gLSBLUlMgMTAxODgyIHwgTklQIDk1Ny0wNy01Mi0zMTYgfCBLYXBpdGFsIHph
a2xhZG93eSAyMDAuMDAwIFBMTi4KU3BvbGthIG9zd2lhZGN6YSwgemUgcG9zaWFkYSBzdGF0dXMg
ZHV6ZWdvIHByemVkc2llYmlvcmN5IHcgcm96dW1pZW5pdSB1c3Rhd3kgeiBkbmlhIDggbWFyY2Eg
MjAxMyByLiBvIHByemVjaXdkemlhbGFuaXUgbmFkbWllcm55bSBvcG96bmllbmlvbSB3IHRyYW5z
YWtjamFjaCBoYW5kbG93eWNoLgoKVGEgd2lhZG9tb3NjIHdyYXogeiB6YWxhY3puaWthbWkgamVz
dCBwcnplem5hY3pvbmEgZGxhIG9rcmVzbG9uZWdvIGFkcmVzYXRhIGkgbW96ZSB6YXdpZXJhYyBp
bmZvcm1hY2plIHBvdWZuZS4gVyByYXppZSBwcnp5cGFka293ZWdvIG90cnp5bWFuaWEgdGVqIHdp
YWRvbW9zY2ksIHByb3NpbXkgbyBwb3dpYWRvbWllbmllIG5hZGF3Y3kgb3JheiB0cndhbGUgamVq
IHVzdW5pZWNpZTsgamFraWVrb2x3aWVrIHByemVnbGFkYW5pZSBsdWIgcm96cG93c3plY2huaWFu
aWUgamVzdCB6YWJyb25pb25lLgpUaGlzIGUtbWFpbCBhbmQgYW55IGF0dGFjaG1lbnRzIG1heSBj
b250YWluIGNvbmZpZGVudGlhbCBtYXRlcmlhbCBmb3IgdGhlIHNvbGUgdXNlIG9mIHRoZSBpbnRl
bmRlZCByZWNpcGllbnQocykuIElmIHlvdSBhcmUgbm90IHRoZSBpbnRlbmRlZCByZWNpcGllbnQs
IHBsZWFzZSBjb250YWN0IHRoZSBzZW5kZXIgYW5kIGRlbGV0ZSBhbGwgY29waWVzOyBhbnkgcmV2
aWV3IG9yIGRpc3RyaWJ1dGlvbiBieSBvdGhlcnMgaXMgc3RyaWN0bHkgcHJvaGliaXRlZC4K

