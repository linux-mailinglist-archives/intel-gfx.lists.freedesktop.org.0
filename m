Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 229BE88FE3C
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Mar 2024 12:40:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CD5C1123C0;
	Thu, 28 Mar 2024 11:40:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k+hq5+nV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9934010F0CC
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Mar 2024 11:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711626005; x=1743162005;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Bjxwxi++oJ75GXm3cAb7q4XcZsPWGBeFd5zcBOeHaTw=;
 b=k+hq5+nVGMblN699/rWp+6h/DBVJfWNRpVDNVdwFMxTEkwGwvFXE7Vm0
 oxE0gpBkBTDxZEI2rO8TmBzgkxsKqgzW/qiQJpQ4bVwXIu+tDs7czkUMy
 6bDlixl/C4cfqVzNKeqyPWKZ6S9UrRBHn4BRxU6yEn3jenmuvoeI6oYPS
 e+oCBI4XpE0tJuZDGFt+Gfl94gI7m6b3Cp/K/tD46MQG8N8/iQvOJWjFI
 peMHwi9Vr6Y9Q9diFQYq81ISNX+w4ExlvinqWNxb7cKWt1tla+n6m4gZh
 vB5z4b3ON9SDzmNbqnw0zvNs6cazt1ghQCj0vwtIVY7NZvY093tlhfMEf A==;
X-CSE-ConnectionGUID: yYf5fqRIQ2O0ByNeoLwKHQ==
X-CSE-MsgGUID: SiwylYoaTzm9Xk+2wuKfnw==
X-IronPort-AV: E=McAfee;i="6600,9927,11026"; a="29253193"
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="29253193"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Mar 2024 04:40:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,161,1708416000"; d="scan'208";a="16618041"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Mar 2024 04:40:05 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 28 Mar 2024 04:40:04 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 28 Mar 2024 04:40:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 28 Mar 2024 04:40:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nQV1ak54an/71zpgbSdLXKoUWyN+L8LlBB2bTHdCTxPBJQgMPenqHz8Us0IYk/2N3Tb2HB7T44m/fgm8+lLejIyohUqe76wT0mwA7iOiWi3ZOzKx53qlUnwtLVMtAQYIM6wlYzhy+EbXwyrbfMVZLXzJ2PyIysJqfhWhRI+X9itwoI1wsnXP+ddbuHPOQu3Jms1yRHDv0Zbc8G5QMCWKSkwjNeSm5J5+RIb4IvemdUL3TdAYbpWlhcuXAxmjsWOtzNZXrROcI1BQtpHC81Xilix+5OfTZSHFNwPdYjp/FTAAMVV2x5gC0PZCIyHal4BjwUYmoocqKXL8tcqoogoPUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Bjxwxi++oJ75GXm3cAb7q4XcZsPWGBeFd5zcBOeHaTw=;
 b=UAqI9XWX2ehaEjP8ELcYVw14NTMBXwmAgkbSm/frgsMvHoUb6TKi3Q5X1RMfMl7nca1FJXNYI+9NIssQobEgBHlg/48vf6vE9fDL6sKAs9QC/yB+Ukf07IYhdSn/6thZO4u6QH2HJREnwm+4qWMxpt28eMIjkzzCLmWxaNMY+IId5bo6hHzZCLvP1YVOtkyeEfVKSBMgL8KuLG+yZZ55orcApGPMCtN/93dEGO7k+b29F7HN5pl6A+XfVI6CDu0pBF+XbvY2jDCrwD8ATZCVEraOWFEPQu55BQxcTu+1Tm3jWsEcn9a+Ghiu2oblSaocpDZkBHLl25gjeVqMvJrlrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 MW4PR11MB7163.namprd11.prod.outlook.com (2603:10b6:303:212::7) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7409.33; Thu, 28 Mar 2024 11:40:02 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::b37a:9d1d:cb38:f4ff%7]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 11:40:02 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 02/13] drm/i915/cdclk: Fix voltage_level programming edge
 case
Thread-Topic: [PATCH 02/13] drm/i915/cdclk: Fix voltage_level programming edge
 case
Thread-Index: AQHagG6+/Z3rd5wNcUCPcCiZR/G0nrFNCEkw
Date: Thu, 28 Mar 2024 11:40:02 +0000
Message-ID: <DM4PR11MB6360391E45B14A801FD9B9F4F43B2@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20240327174544.983-1-ville.syrjala@linux.intel.com>
 <20240327174544.983-3-ville.syrjala@linux.intel.com>
In-Reply-To: <20240327174544.983-3-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|MW4PR11MB7163:EE_
x-ms-office365-filtering-correlation-id: 4c204c32-3bd7-4566-121c-08dc4f1bce55
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: aSpgm3BP06xrKuMs3ng6m8nBlPNDgx30iDcH3AeRezdyr28DgYLRcW9zqpK/lzukqz/DWzc3Zwac7mJSnJSTVUh4iy5Tfg98Fuaz1KTmUECKVV6hGIuQNee/K2X5tZ/l0Cr5CZ2mFpnXIFQzkG8oONJYMU41LzyMm3tt+1SP72irItUs1ylWgxJJd6c2e3d6yxn8eWiRlK4JHsWv40yNrB83qjjbSC36wxkN1lqU2y2oBJkEA4mAY6p793Qdfhe7ZbIMWChrYYJkQx/16EIAUfgUiqqMHBzoM70+m5FyabBMdWHQRkZh1iWGJBLZlbQXcURMtsNX0gG4v5nk6GPlB6pLHQHMC9qF007mzc25MipJJjuNykPn6bdrqoj8RZ2MrCAZAmFNQw7HRiMLDmKnXaP/xauagSy+q0EAlC4vbkaiHGaTq1eg4QBJ9LCtHAduWdHXODQ7+hWYgmqG+pIvyY1rVrX+8YlDvXoFMHas47YLN6M+z6XRl8JNx2qeTnUFumvGY4uXZR3kU7Rn8UCzW6zpehpQsZVC94pF/gHnw/i36Gs5pRZ6iNVS0Y7seRICYJrMzWEko1cy9dIF/ubYI2wRs6UoWKBLPwi8FlrA4Qc6EgGnb/4PZSA7mF7EwRYldNwRzIsBEliCkg1ottceFB/Tk0djES2/g2ycx/s2REIdCeinSn0lRzUkl1s7KX1bxHik4VakfsrsIwgtrRIXAywuPb+FIxvQMbaHEQ3k8yg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SExudk9WTE5vMzFxbTZnRm1HVXNuNXVLYnpjZkhxWm8zNXlMZDFndmtwM2pS?=
 =?utf-8?B?bDR4NThSU2ZhMU5tMExielJPYTVENm9ERmxYQ01JUENRM0krTVRjMndZZjBP?=
 =?utf-8?B?YlkveE5aOHg0dmFKNnlPSUFOZlpxM1V5M0RBWi9xNktRT25saTFmL2c1TjA1?=
 =?utf-8?B?Q2doRFFNSEhoVUFzWXZBL3FlKzBsL3RPdDNvczZwdStaK2ZoQ1BCWXNxOUxY?=
 =?utf-8?B?N0ljeHJXckVjWUYvQ3FsbzFYS0hhK0ZPY081cjgwOWNCZHJmUTVJZzVQZW5F?=
 =?utf-8?B?aDduZGZ2NncwMmtyYlZNbVRWZUN3VE9HSHc0Mkc3WlhtTUdpZVZMN2QvNUpT?=
 =?utf-8?B?ZGl3YUMxaE5zcS9ZY3pZbks2aVd1R3dyS0UwNC9yN2hPano2UmR5c0grR0hF?=
 =?utf-8?B?NW1uc3dRWXJzUkZ1aThxaWtBYUpRUXFCdlQ0N2VGYml6a0J6ZW5sRVlsRVhJ?=
 =?utf-8?B?OVFrdnBOZUs1aXhmN3Y3MzhqMGZ1SXJHYWNTb3IvejhQK0J1RXBTelN3SFM2?=
 =?utf-8?B?OEdRbVM1dVNpUmZGbVpEWkRnOXQ3TDNid3JVQTlEU2pQSzdqNzJub2JiOG05?=
 =?utf-8?B?MC9BL2QyaS92RjYyQnJPblVTRzFHbC9tQ2FNOGdXY2R6WkQrQlhUNDRWdTE2?=
 =?utf-8?B?R3lQTVFhcDhVTnA5dXlPR3ljVVdVNTZUQ1lFNVVQcXlucmdqcDlVWjIxcjN1?=
 =?utf-8?B?YlJESm9YZS9XUGtrM3Exa08zb1ROM3JITVdMTk92Tkt6TWJ2OWRTclRpRnJn?=
 =?utf-8?B?dmVNREZmZVJCUWlEYTZNSTFkRWpqNmlLYk9udm1pOUtrVFVITjVVSjUzdThB?=
 =?utf-8?B?M0dpUG5mcVc5aE5HeGhxakRJSUhOalFCdkErbGRSSWdnWUo2bzdkdlFNTlNh?=
 =?utf-8?B?N3hYVVpsRE5kaWpyNGtyZUJCRngxdVdxSm1nSUc3VmJLQWQwb1NWWnBNcGZ4?=
 =?utf-8?B?d0VVODc1Sk1hWEsvNTdLem1YYTh3ZWlqNjNrNGF6L0s1N2dmL2U3dlFhdFVu?=
 =?utf-8?B?bXcxTHJwSm9VczBHNHQ2em1UUThvSDJXZzlQWHhhUjNEM294eGpnRjBtNitk?=
 =?utf-8?B?eVd6T093ZkhXWXc2MmlZdThQbG0rV1pqQ2k1TzJmcWpCTmMvdlgrelNkbUtV?=
 =?utf-8?B?YzNzZEQ0ZGwyRU5ZeFVWRkRZbDFELzhac1Z0SGtlQVYwU3ZhTWFnMkFua2NX?=
 =?utf-8?B?TVZ4bGhqQThNODJaK3NtK21RMWYrcUl6ck1FZFFQRTNvSVdIMlluWlpROXdX?=
 =?utf-8?B?WWNJZHdJWTZuMitBVTB0MzVwK250VkxSRE5iazJaUGlYdCs2M0ZjbTlVNWlU?=
 =?utf-8?B?WWRUeFhqc2xOWnVxZ2hZWnpGNWJzdDEyN3Fpbk1TeDVtYkR2c29DTWFDMWhp?=
 =?utf-8?B?bVNmZHJCUnV4WlFKNkFWNjU3MmRKUWVESHQxbEo1ak9OVit6ZTluckFBb1pL?=
 =?utf-8?B?TEJrMkplU2d2elBwOHZ5YTQwdUluaWNDTkhvVjl5M3Y4cnlraWp6U0pkeUVE?=
 =?utf-8?B?c1M1REFXcWduS0IvaStHRTJWcW5UZWFEK09CT29SMzY1YTlqOHhNU3VNdFZG?=
 =?utf-8?B?NjJrTFhjNWphNnV5YTQxcDRBMklnZERCKzFrTUhLOE95eENxa3l2TzMwR0gx?=
 =?utf-8?B?ZFBUSDBoc3ZIanVXa1VCVk51Vi9MWElnZytnaEpGbGwrS3FZazVTa3pXSTBX?=
 =?utf-8?B?Zjg1SEp3ZHZBWjB3WHNkV3FzOU9qZW0zQUdxUExCZm5jSEk4K0JxUldWMkI5?=
 =?utf-8?B?WUo0OEZTYkdMR25JWHhXSTYzWExzTnRjUHp1VkJkSG1aSGVHVE1icnYycjZp?=
 =?utf-8?B?NzZsbXE3a3Mya0tyaTlUSWtqSklkN1pPbFhQcHNONHRBSWNqZ1pNOWlwSXB5?=
 =?utf-8?B?SVhqNXhBckp1WWtDMW1mZC9nMFhFMC9BNUszM29NMVpJay9HSzhWQUZsdlh1?=
 =?utf-8?B?TjE3OHNBSkdaN1l4N3NXL2h6c01ob0RMUmRqUzI4T0VHL2ZwOWx0ZUIrcHBB?=
 =?utf-8?B?MmFqSDNoM1FxNHNBNnVMZHUxeXBybGVXZEZzNDdIR0RUSmZETlNWUlF3WlI0?=
 =?utf-8?B?akxkRU5jdlFud3h0enB3c1BaMDduNm5hcEdGcG80R214S05jV2xDWXluVGJ5?=
 =?utf-8?Q?7iFjvrri6rYed/RgPup9LpAqH?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c204c32-3bd7-4566-121c-08dc4f1bce55
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 11:40:02.3614 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1qgtYVXGOTtZe4he+FHI4yBzPmf8aL5BFQhCcLKmIQ00LtourPCV91wF/vlizpkd7XX9YSNP5D3qkRyW3YlIAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7163
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFdlZG5lc2RheSwgTWFyY2ggMjcsIDIwMjQgMTE6MTYgUE0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDAy
LzEzXSBkcm0vaTkxNS9jZGNsazogRml4IHZvbHRhZ2VfbGV2ZWwgcHJvZ3JhbW1pbmcgZWRnZSBj
YXNlDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiANCj4gQ3VycmVudGx5IHdlIG9ubHkgY29uc2lkZXIgdGhlIHJlbGF0aW9uc2hp
cCBvZiB0aGUgb2xkIGFuZCBuZXcgQ0RDTEsgZnJlcXVlbmNpZXMNCj4gd2hlbiBkZXRlcm1pbmlu
ZyB3aGV0aGVyIHRvIGRvIHRoZSByZXBncmFtbWluZyBmcm9tDQo+IGludGVsX3NldF9jZGNsa19w
cmVfcGxhbmVfdXBkYXRlKCkNCj4gb3IgaW50ZWxfc2V0X2NkY2xrX3Bvc3RfcGxhbmVfdXBkYXRl
KCkuDQo+IA0KPiBJdCBpcyB0ZWNobmljYWxseSBwb3NzaWJsZSB0byBoYXZlIGEgc2l0dWF0aW9u
IHdoZXJlIHRoZSBDRENMSyBmcmVxdWVuY3kgaXMNCj4gZGVjcmVhc2luZywgYnV0IHRoZSB2b2x0
YWdlX2xldmVsIGlzIGluY3JlYXNpbmcgZHVlIGEgRERJIHBvcnQuIEluIHRoaXMgY2FzZSB3ZQ0K
PiBzaG91bGQgYnVtcCB0aGUgdm9sdGFnZSBsZXZlbCBhbHJlYWR5IGluIGludGVsX3NldF9jZGNs
a19wcmVfcGxhbmVfdXBkYXRlKCkNCj4gKHNvIHRoYXQgdGhlIHZvbHRhZ2VfbGV2ZWwgd2lsbCBo
YXZlIGJlZW4gaW5jcmVhc2VkIGJ5IHRoZSB0aW1lIHRoZSBwb3J0IGdldHMNCj4gZW5hYmxlZCks
IHdoaWxlIGxlYXZpbmcgdGhlIENEQ0xLIGZyZXF1ZW5jeSB1bmNoYW5nZWQgKGFzIGFjdGl2ZSBw
bGFuZXMvZXRjLg0KPiBtYXkgc3RpbGwgZGVwZW5kIG9uIGl0KS4NCj4gV2UgY2FuIHRoZW4gcmVk
dWNlIHRoZSBDRENMSyBmcmVxdWVuY3kgdG8gaXRzIGZpbmFsIHZhbHVlIGZyb20NCj4gaW50ZWxf
c2V0X2NkY2xrX3Bvc3RfcGxhbmVfdXBkYXRlKCkuDQo+IA0KPiBJbiBvcmRlciB0byBoYW5kbGUg
dGhhdCBjb3JyZWN0bHkgd2Ugc2hhbGwgY29uc3RydWN0IGEgc3VpdGFibGUgYW1hbGdhbSBvZiB0
aGUgb2xkDQo+IGFuZCBuZXcgY2RjbGsgc3RhdGVzIGluIGludGVsX3NldF9jZGNsa19wcmVfcGxh
bmVfdXBkYXRlKCkuDQo+IA0KPiBBbmQgd2UgY2FuIHNpbXBseSBjYWxsIGludGVsX3NldF9jZGNs
aygpIHVuY29uZGl0aW9uYWxseSBpbiBib3RoIHBsYWNlcyBhcyBpdCB3aWxsDQo+IG5vdCBkbyBh
bnl0aGluZyBpZiBub3RoaW5nIGFjdHVhbGx5IGNoYW5nZXMgdnMuIHRoZSBjdXJyZW50IGh3IHN0
YXRlLg0KPiANCj4gdjI6IEhhbmRsZSBjZGNsa19zdGF0ZS0+ZGlzYWJsZV9waXBlcw0KDQpMb29r
cyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRl
bC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxh
QGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2NkY2xrLmMgfCAyNyArKysrKysrKysrKysrLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hh
bmdlZCwgMTYgaW5zZXJ0aW9ucygrKSwgMTEgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jZGNsay5jDQo+IGluZGV4IDYxOTUyOWRiYTA5
NS4uNTA0YzVjYmJjZmZmIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2NkY2xrLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9jZGNsay5jDQo+IEBAIC0yNjAwLDYgKzI2MDAsNyBAQCBpbnRlbF9zZXRfY2RjbGtfcHJl
X3BsYW5lX3VwZGF0ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAkJ
aW50ZWxfYXRvbWljX2dldF9vbGRfY2RjbGtfc3RhdGUoc3RhdGUpOw0KPiAgCWNvbnN0IHN0cnVj
dCBpbnRlbF9jZGNsa19zdGF0ZSAqbmV3X2NkY2xrX3N0YXRlID0NCj4gIAkJaW50ZWxfYXRvbWlj
X2dldF9uZXdfY2RjbGtfc3RhdGUoc3RhdGUpOw0KPiArCXN0cnVjdCBpbnRlbF9jZGNsa19jb25m
aWcgY2RjbGtfY29uZmlnOw0KPiANCj4gIAlpZiAoIWludGVsX2NkY2xrX2NoYW5nZWQoJm9sZF9j
ZGNsa19zdGF0ZS0+YWN0dWFsLA0KPiAgCQkJCSAmbmV3X2NkY2xrX3N0YXRlLT5hY3R1YWwpKQ0K
PiBAQCAtMjYwOCwxMyArMjYwOSwyMSBAQCBpbnRlbF9zZXRfY2RjbGtfcHJlX3BsYW5lX3VwZGF0
ZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAlpZiAoSVNfREcyKGk5
MTUpKQ0KPiAgCQlpbnRlbF9jZGNsa19wY29kZV9wcmVfbm90aWZ5KHN0YXRlKTsNCj4gDQo+IC0J
aWYgKG5ld19jZGNsa19zdGF0ZS0+ZGlzYWJsZV9waXBlcyB8fA0KPiAtCSAgICBvbGRfY2RjbGtf
c3RhdGUtPmFjdHVhbC5jZGNsayA8PSBuZXdfY2RjbGtfc3RhdGUtPmFjdHVhbC5jZGNsaykgew0K
PiAtCQlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCAhbmV3X2NkY2xrX3N0YXRlLQ0KPiA+YmFzZS5j
aGFuZ2VkKTsNCj4gKwlpZiAobmV3X2NkY2xrX3N0YXRlLT5kaXNhYmxlX3BpcGVzKSB7DQo+ICsJ
CWNkY2xrX2NvbmZpZyA9IG5ld19jZGNsa19zdGF0ZS0+YWN0dWFsOw0KPiArCX0gZWxzZSB7DQo+
ICsJCWlmIChuZXdfY2RjbGtfc3RhdGUtPmFjdHVhbC5jZGNsayA+PSBvbGRfY2RjbGtfc3RhdGUt
DQo+ID5hY3R1YWwuY2RjbGspDQo+ICsJCQljZGNsa19jb25maWcgPSBuZXdfY2RjbGtfc3RhdGUt
PmFjdHVhbDsNCj4gKwkJZWxzZQ0KPiArCQkJY2RjbGtfY29uZmlnID0gb2xkX2NkY2xrX3N0YXRl
LT5hY3R1YWw7DQo+IA0KPiAtCQlpbnRlbF9zZXRfY2RjbGsoaTkxNSwgJm5ld19jZGNsa19zdGF0
ZS0+YWN0dWFsLA0KPiAtCQkJCW5ld19jZGNsa19zdGF0ZS0+cGlwZSk7DQo+ICsJCWNkY2xrX2Nv
bmZpZy52b2x0YWdlX2xldmVsID0gbWF4KG5ld19jZGNsa19zdGF0ZS0NCj4gPmFjdHVhbC52b2x0
YWdlX2xldmVsLA0KPiArCQkJCQkJIG9sZF9jZGNsa19zdGF0ZS0NCj4gPmFjdHVhbC52b2x0YWdl
X2xldmVsKTsNCj4gIAl9DQo+ICsNCj4gKwlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCAhbmV3X2Nk
Y2xrX3N0YXRlLT5iYXNlLmNoYW5nZWQpOw0KPiArDQo+ICsJaW50ZWxfc2V0X2NkY2xrKGk5MTUs
ICZjZGNsa19jb25maWcsIG5ld19jZGNsa19zdGF0ZS0+cGlwZSk7DQo+ICB9DQo+IA0KPiAgLyoq
DQo+IEBAIC0yNjQwLDEzICsyNjQ5LDkgQEAgaW50ZWxfc2V0X2NkY2xrX3Bvc3RfcGxhbmVfdXBk
YXRlKHN0cnVjdA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlKQ0KPiAgCWlmIChJU19ERzIo
aTkxNSkpDQo+ICAJCWludGVsX2NkY2xrX3Bjb2RlX3Bvc3Rfbm90aWZ5KHN0YXRlKTsNCj4gDQo+
IC0JaWYgKCFuZXdfY2RjbGtfc3RhdGUtPmRpc2FibGVfcGlwZXMgJiYNCj4gLQkgICAgb2xkX2Nk
Y2xrX3N0YXRlLT5hY3R1YWwuY2RjbGsgPiBuZXdfY2RjbGtfc3RhdGUtPmFjdHVhbC5jZGNsaykg
ew0KPiAtCQlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCAhbmV3X2NkY2xrX3N0YXRlLQ0KPiA+YmFz
ZS5jaGFuZ2VkKTsNCj4gKwlkcm1fV0FSTl9PTigmaTkxNS0+ZHJtLCAhbmV3X2NkY2xrX3N0YXRl
LT5iYXNlLmNoYW5nZWQpOw0KPiANCj4gLQkJaW50ZWxfc2V0X2NkY2xrKGk5MTUsICZuZXdfY2Rj
bGtfc3RhdGUtPmFjdHVhbCwNCj4gLQkJCQluZXdfY2RjbGtfc3RhdGUtPnBpcGUpOw0KPiAtCX0N
Cj4gKwlpbnRlbF9zZXRfY2RjbGsoaTkxNSwgJm5ld19jZGNsa19zdGF0ZS0+YWN0dWFsLA0KPiAr
bmV3X2NkY2xrX3N0YXRlLT5waXBlKTsNCj4gIH0NCj4gDQo+ICBzdGF0aWMgaW50IGludGVsX3Bp
eGVsX3JhdGVfdG9fY2RjbGsoY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3Rh
dGUpDQo+IC0tDQo+IDIuNDMuMg0KDQo=
