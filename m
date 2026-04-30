Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJQkLTg282lgygEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 13:00:08 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1941F4A12A6
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 13:00:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7F29310E159;
	Thu, 30 Apr 2026 11:00:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NvCsbiDu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 411F110E13A;
 Thu, 30 Apr 2026 11:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777546805; x=1809082805;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=xgZkQMz6TW9R8FZi/Bups0CC0eGGwz7x4iHML9CgQvA=;
 b=NvCsbiDu/60cSq3zzMdZ2tlZEIUWsrsoiIgRz6EGlSvHgs69i0F3WgCl
 1wK6k9WPcmzaHp7sEXtyXixnQr3oIqZNSjFF0o+5ibGFCROyhDLGKF0Aj
 W+JUPPwNuVveMKikhIWOMK3HeSkGkTWf96/RMuH61YyalVDIuiV0Z6ls6
 xas6+RReX/A4WhzQaCRHZk+Tm8KFUc+m4L219fgiN0wAan4prNemGBeyI
 VD/pfpXsyrmFQKtlmuuypVPoMJWH7Bshw6dI4stXvojed4Gq2IQcdDnH2
 QkRgO8aD5UBKOumvs9JuRQoa5bOa8Fo9vMHxFrioJahAK7fiNmdf1rwUC A==;
X-CSE-ConnectionGUID: pAbEocj0S6ucRJDraYBN8g==
X-CSE-MsgGUID: B7EO9vdgT+moAqemQjoYng==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="96060160"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="96060160"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 04:00:05 -0700
X-CSE-ConnectionGUID: pDlMCZUSQFmilG5PqnHtEg==
X-CSE-MsgGUID: NG9HCcUwQP6PbfHfdxumiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="239538609"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 04:00:04 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 04:00:04 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 30 Apr 2026 04:00:04 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.36)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 30 Apr 2026 04:00:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=J7qy2A0P37UwVgpKJHLbZBRAnL1Jy9gSY2snQ4h4dtu3DklUR8ah1nIAFBKUmxoOGXwRxM6rA8fq7+efnDnbr6S1nYPjplvOdxbUuBk8DNj94b3wAtfgfudHTN6b9kyQXCwcNNFUuoXmH0PCH+7Kni1I+odTfkrB/IkgbPVe7pBnIMGUng+0tQB0QQ/WLEHos95EJQETpjSAYg6Rgew5clP+PjKLUHuKVVM2FAxwvbQnJvSJwbe4biz/HrpHjVX7jmYHGQQFDMNtZXx0JAjy7iDlri2QFLE0ZNGnr6lfaAI8UXL3AHataZ/iXUH5cQJ7DedI/C8I2fkGnYlR3dTcww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xgZkQMz6TW9R8FZi/Bups0CC0eGGwz7x4iHML9CgQvA=;
 b=kRg7nmU6pu+3jPLjJZRiUR5zBHVlZ6HGx3wgrgvIkLLyoBpCguwTwPmBWKsJxy/1nPn28j8hqUTOgEGTMQ8N+FezUvk+7+WLzcQBHM3+mj0V+vjKVMKHwqQlUIYDkUs9tmoHjBcv5RSKaTbUU3lCrFpB9SFe/VdWKj4bxViWaMzrnUusAAifEx7QLsKNQwpnO0Ck5cNde1dzXskm7ArdNTnES5IrJ17K1NGcfgkY9pdYCMU1mS9oEbVzdkoOocFKUwPTOuDCIqwSTLXrmyWU48prFZHPFebQ1a7UpK5VSG38Fgvrw+ml4O/rdKtM99TcPM0+RpHgT5vIEus/Faov8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA3PR11MB7655.namprd11.prod.outlook.com (2603:10b6:806:307::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9870.20; Thu, 30 Apr 2026 11:00:01 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.20.9870.020; Thu, 30 Apr 2026
 11:00:01 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kahola, Mika" <mika.kahola@intel.com>, "jani.nikula@linux.intel.com"
 <jani.nikula@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/psr: Disable PSR2 on Xiaomi Book Pro 14 2026
 as a quirk
Thread-Topic: [PATCH v2] drm/i915/psr: Disable PSR2 on Xiaomi Book Pro 14 2026
 as a quirk
Thread-Index: AQHczlRY6RQkTBao50iOAjmwLACLTbXjDl8AgAAHagCAFG6IAA==
Date: Thu, 30 Apr 2026 11:00:01 +0000
Message-ID: <6b626e3431b1e099c13b729be5fd8d89a962a1da.camel@intel.com>
References: <20260417102350.28328-1-jouni.hogander@intel.com>
 <1cd1f26d7a74c778f2cbc1ddc3dd5e5fd0f3a80e@intel.com>
 <DS4PPF69154114F3775436040F9F33D4D29EF202@DS4PPF69154114F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPF69154114F3775436040F9F33D4D29EF202@DS4PPF69154114F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA3PR11MB7655:EE_
x-ms-office365-filtering-correlation-id: b9f7ead5-cbf9-48e8-6204-08dea6a7a0a2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|10070799003|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: EeZ1M+SMqpdVzBnaRTS4OaEoF71hbNJ2YeEKBdYd6H1WulWEcX+VoF9hlWiSUqdiKSLG6uwlpFSmKTK1DkmBBzHMdRA84KPsVyV61vPFyIPKMQ9EkrF09GBARyDltKHzApe38jGvPPLwqVlUBzQO0bA5ykqhzihemS999PJoUqnV7CkqrFw8si4Yq2aYXQHusfB38gwC4JehNp2CgJocAvbTfBo15V2goRH7bUjp4ZOg/jiBqRif3BRu6aBbV9ej2MvRerUSytr/r5azF9x1z3EWfymye01+qrek7mIzG7TzotWzW4LAVaJnP5+bbt3upsG1zw+L5P21UIW6QiNZf5Jt5KYQ7QhX6Pnf45aHIq9IlbW5n8Quk7cA7rf/WC0FgpDf3NE+Bq2qSgnLy0+bIoL5sDumiaKjdyM6dLLhm1tGGppuPfTDCohYBUhiruWlrIN8EoYoHHbZWwxW4gsqrZcC8UAUMNdj+04I1EgQgTPOCk2/SXnRDYPjEZE0yIspdFXEL5BEqbZx8K75wA+V4p2PXxOKXafTuARhMD7hCw1fCkh7Xiz8kNlpW4JWMKKhMxH2v7m7KIkMkrSdbLXOt1of42g1lz8bqaAjdw77UhMe5dZeF2OerAMMhbyrhiqUrn02BWuJfCpBSeKthMPt6DJo1LBcPtb5cbGrLX1wb3XbMGi2UqjMtf/qPP5s91DP1uo6EAy6QxOiCIxqk8ahtvnEttmo9mgUixu4qA1QA+A=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(10070799003)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?eXR3WnhKTHo0cU4rNlFURGxmdG9Rd0hDUkV6Qm9jUkJPbkoxVEVWQ2tqSGRj?=
 =?utf-8?B?YlYrQ2xKcExoejFTbFRlamFuY2NvK1ZFVGNFOHVGUzlEYjFVbmhiSFFTdEd0?=
 =?utf-8?B?SnlvL3VpdU9oRnVmZVo1eWFtMER5QVNBelJheHlaL2I5RzYwUlhGTnFTQ2or?=
 =?utf-8?B?Z2hRY3dSc3lBVEdWd2tRRCtGeSt5K2ZKQnByT29DU3k4V2twVCsvd1ZoWSs0?=
 =?utf-8?B?QWd3S3dmZVRTWVNjZjJNZ2Z2bDVaeDJZd3hxcjZwWXBtU2NHenFWWWFMcmlU?=
 =?utf-8?B?ek1sYXB1L1J4ZThUMTdPcyttTUt6RjdidTRBVXdQek4rRmtjV2xkSTE5VWtv?=
 =?utf-8?B?cTZLb2UxczhrRUlRVFo1WXZjRDFyOFhLMTkxUEp3VHNDVWVzeEd3UXJJelpQ?=
 =?utf-8?B?Qkg2NStPaVlOa1FGUittZ0ZRbFVxQWdEcVRabkplZjdFbjAyOWpIUjVPZXdr?=
 =?utf-8?B?cWJ4dWVVU3RRMWE1SmI3WnpvSGJYektZdE80ckp1akhBK04rNmpIczc5TDY5?=
 =?utf-8?B?eEJ1UHIzRDdFQ2hvcTMreTJ1N2hYbXY2UGdCaFBySFZHKzdFMnlTVjVhdWxT?=
 =?utf-8?B?Y0xMTzc4dmdOTTlGcDQzbkI0c2pFalpqV21wMi9TZFRURkI0SHFhaEJ5VGtp?=
 =?utf-8?B?SithNTNraDVHU2VxZ3MrTmNLakxNOTd5TUNIY2MrSlU1RjE1NUJoeUlldUxt?=
 =?utf-8?B?d2tyZDQ2ZU1taVFJNzQxRzNpQXJkYktpeklsYnB5cnBERGR1T1ZkQUN2YkRU?=
 =?utf-8?B?RkJlQmVuTUZoM2tlZkR5eUhwSjRHVUoxaERzb3BVdU9zSFVpZDhpaldyc3Zz?=
 =?utf-8?B?ejVJbVZ0MXhHbWNQZHE5NjA0bnpzZlF0K1FhOU5TbDh0Y3lrUFhkcVA4bllP?=
 =?utf-8?B?dnNzWmJCS0o5UE1iRVBPaTFLMUhoY2YyazNzellweXVCU0hoWXdvSUhFcVJW?=
 =?utf-8?B?b0NhMzVaTTBUU1BwZHVDM0tIaWhPeDNCcytkK1FvRXNkWmYvUThHN21xUGhu?=
 =?utf-8?B?T09BRUhJdEQ4QndvNFpIajBJaHZJSnBYS1RGOUFSQ2ZuVlcwcDl3TFlzR1VE?=
 =?utf-8?B?QThzNno1MldCUU95anl5KzV1YXo1R0dSNmF0cjN0VVkwV0k5Y3dDOEZmVkdK?=
 =?utf-8?B?ajNNTWlwVVBkNytuWi9jZEdkeEJJNXZHVHRGeEtZNWtJbWFBTENCaTZRWG9z?=
 =?utf-8?B?QzFTMm5rYVdCdS9HSkUzbyt3OXJzamxscmhRUm4xNGlkZklBZ1JmSTNtalNI?=
 =?utf-8?B?b0tXVGh5L05OQ2dScGNXcWVmUnZFd2RNVG9rbEc3Z095L1RROHIyZlFqcC9Y?=
 =?utf-8?B?T2Z0VmwvRnI1Q3JENC9FaDcvTHQ5blFwUTVnMXRLOUl2SlFoRUFpc2d5dGdG?=
 =?utf-8?B?cWdMSGpEc2o5Ukp3bUI5bVcyRnNLdWZhcmU1aW5FVExucmVXYWVKaFRIemF6?=
 =?utf-8?B?UGdlTnhaQXE2dERsSm1UVkZlUEFCUWppd1RRM3E3RVM4Zk5FZmZseXZKOUpx?=
 =?utf-8?B?R2dsMngxSzg4RmRKTHhlNkFScStRTmw5Mi91dVovQ0RiSVNNZU0vb3VkUEFR?=
 =?utf-8?B?NmF4R3VQT3RIa3BHVUlmVEpUeWxhaitxTVAxWjU1cjNFbWhOYjRHbExsVlRl?=
 =?utf-8?B?NHFiMmViNXVWaGpFWlRiV0VJT0JBY0loY0RZUWd1Nm1SUmNkajcvQUoxR0sr?=
 =?utf-8?B?NkNCdXVOV0lDWmE0ZFBZTVZyL1c3RkhvSkFBVzh3Y0wrUndWS3I1NEZvN0NO?=
 =?utf-8?B?OHRVWlBURHgxUTIvek1YZHo3bmFsZ1RueDBPa0F0bEdGWEZ2UDdHc2RNVDNp?=
 =?utf-8?B?UXRpTzJtSytSaHQ1UFhsdUxLMDZpc3h2NDFUYU40ZG9WRlhrbWtKT1ZjYnUy?=
 =?utf-8?B?RjZvWmRkWmUxRjBEWlk5YTlEVW5CTFRMb3RZOVlPa0RBVXJXOXJiZE5uRXZj?=
 =?utf-8?B?MzBtbHVjNENRSEpXOUszRmJsQk43WS9Eci9OMnp1R3JVQkE2b0VRYVVvcFVV?=
 =?utf-8?B?bmptUGF2WEcwajd2Z25IY0NRNXBpcjhlUHRpSlExYlY2UG83Y29FblpEQ2Fu?=
 =?utf-8?B?MXE1eC9SSUxzUStkUzBNMFpnbzBuRDRBUk5DdHozcXZIdlA5R1dMK3VTNG1J?=
 =?utf-8?B?ZGNOdHBPNUVKQXBJQ1FLb3RuTURtRVBTblJpc1B2MFo1eHVCT0VaalVZNjRa?=
 =?utf-8?B?QjNFS2V1TjFhTDZSd0lYc3RnQ29DdDJHbFhJZ2laS2RuQU5GcUphMmRmMWk0?=
 =?utf-8?B?K1JOU2Z1M203Ni8rSFhSaEJPY1RNdWNiaTkvenNNRis3aUxRc1htR3VDeXow?=
 =?utf-8?B?MGJ6MnFwSkk3WWJmYXRseU5YVzV4VU1RMng4d0k1dFE5SkJINklJZEc1ajlO?=
 =?utf-8?Q?TWBrc3VrR0iSoG9DaV3PqMHusnoX1lD/LkUgjU0Q+Z6PX?=
x-ms-exchange-antispam-messagedata-1: BoS2EdSyU9xKLQ8JdSGxkt5VKQPah7OnV44=
Content-Type: text/plain; charset="utf-8"
Content-ID: <BC90C96B76D6B148A8224FB2234FB79D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: sjt9j32KvE5/98TofF5e5FI3t6J7q9cMp9CnLyW+P8wg22QWTWcH+ejonr0FHir1wXYV3dEHOe37t0UjbKm80jvWng7xqDNumxPFItVjPMpAVMLt7kO0+s6AGY196Msw2xm+jeOdzUPkmHskLwvs2ilN7haSY/TfuKEoKT5o9DNeb6quqI9jVN/YUZMNq+/rAmnX525Mmd6MWebnSHr9N1B1GuFm+h+Afc2ogNuS7nPX3w35FoJESh5MYLxMxVhn+U55ZRQM9DDOD8STTmWpac1DVjylaWeusMWOmXr39QFPus7iMwdmNr4n8TTMmLqqOtCcSrJ2s+jKUuK7SL+lkg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b9f7ead5-cbf9-48e8-6204-08dea6a7a0a2
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Apr 2026 11:00:01.7487 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: a68wzfsaJsXMadcf58dRieuVKPLLIkhAgKy9DbO+RWC8qg+11vbAIcqIAsQTJdaMeRpGbNy+ABEA2UlhqNJ96AAcKRGc0Thdok0inZC3IDg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7655
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
X-Rspamd-Queue-Id: 1941F4A12A6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:email];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]

T24gRnJpLCAyMDI2LTA0LTE3IGF0IDEwOjU5ICswMDAwLCBLYWhvbGEsIE1pa2Egd3JvdGU6DQo+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwt
eGUtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZg0KPiA+IE9mIEphbmkg
TmlrdWxhDQo+ID4gU2VudDogRnJpZGF5LCAxNyBBcHJpbCAyMDI2IDEzLjMzDQo+ID4gVG86IEhv
Z2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPjsNCj4gPiBpbnRlbC1nZnhA
bGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
PiBDYzogSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU3Vi
amVjdDogUmU6IFtQQVRDSCB2Ml0gZHJtL2k5MTUvcHNyOiBEaXNhYmxlIFBTUjIgb24gWGlhb21p
IEJvb2sNCj4gPiBQcm8gMTQgMjAyNiBhcyBhIHF1aXJrDQo+ID4gDQo+ID4gT24gRnJpLCAxNyBB
cHIgMjAyNiwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4g
d3JvdGU6DQo+ID4gPiBBZGQgbmV3IHF1aXJrIChRVUlSS19ESVNBQkxFX1BTUjIpIGZvciBkaXNh
YmxpbmcgUFNSMiBhcyBhIHF1aXJrDQo+ID4gPiBmb3INCj4gPiA+IHByb2JsZW1hdGljIHNldHVw
cy4gQXBwbHkgdGhpcyBuZXdseSBhZGRlZCBxdWlyayBvbiBYaWFvbWkgQm9vaw0KPiA+ID4gUHJv
IDE0DQo+ID4gPiAyMDI2Lg0KPiA+ID4gDQo+ID4gPiB2MjogbG9nZ2luZyBhZGp1c3RlZA0KPiA+
ID4gDQo+ID4gPiBDbG9zZXM6DQo+ID4gPiBodHRwczovL2dpdGxhYi5mcmVlZGVza3RvcC5vcmcv
ZHJtL3hlL2tlcm5lbC8tL3dvcmtfaXRlbXMvNzY3Nw0KPiANCj4gUmV2aWV3ZWQtYnk6IE1pa2Eg
S2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IA0KPiA+ID4gU2lnbmVkLW9mZi1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gDQo+ID4gQWNr
ZWQtYnk6IEphbmkgTmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQoNClRoYW5rIHlvdSBK
YW5pIGFuZCBNaWthIGZvciBjaGVja2luZyBteSBwYXRjaC4gVGhpcyBpcyBub3cgcHVzaGVkIHRv
DQpkcm0taW50ZWwtbmV4dC4NCg0KQlIsDQpKb3VuaSBIw7ZnYW5kZXINCg0KPiA+IA0KPiA+ID4g
LS0tDQo+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmPCoMKg
wqAgfCAzICsrKw0KPiA+ID4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1
aXJrcy5jIHwgOSArKysrKysrKysNCj4gPiA+IGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcXVpcmtzLmggfCAxICsNCj4gPiA+IMKgMyBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRp
b25zKCspDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gPiA+IGluZGV4IDYzYzE5OTU4YTllMy4uZDFiYWU3ZDMyNjE3IDEwMDY0
NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+
ID4gQEAgLTY5NSw2ICs2OTUsOSBAQCBzdGF0aWMgdm9pZCBfcHNyX2luaXRfZHBjZChzdHJ1Y3Qg
aW50ZWxfZHANCj4gPiA+ICppbnRlbF9kcCwgc3RydWN0IGludGVsX2Nvbm5lY3RvciAqY28NCj4g
PiA+IA0KPiA+ID4gwqAJY29ubmVjdG9yLT5kcC5wc3JfY2Fwcy5zeW5jX2xhdGVuY3kgPQ0KPiA+
ID4gaW50ZWxfZHBfZ2V0X3Npbmtfc3luY19sYXRlbmN5KGludGVsX2RwKTsNCj4gPiA+IA0KPiA+
ID4gKwlpZiAoaW50ZWxfaGFzX3F1aXJrKGRpc3BsYXksIFFVSVJLX0RJU0FCTEVfUFNSMikpDQo+
ID4gPiArCQlyZXR1cm47DQo+ID4gPiArDQo+ID4gPiDCoAlpZiAoRElTUExBWV9WRVIoZGlzcGxh
eSkgPj0gOSAmJg0KPiA+ID4gwqAJwqDCoMKgIGNvbm5lY3Rvci0+ZHAucHNyX2NhcHMuZHBjZFsw
XSA+PQ0KPiA+ID4gRFBfUFNSMl9XSVRIX1lfQ09PUkRfSVNfU1VQUE9SVEVEKSB7DQo+ID4gPiDC
oAkJYm9vbCB5X3JlcSA9IGNvbm5lY3Rvci0+ZHAucHNyX2NhcHMuZHBjZFsxXSAmDQo+ID4gPiBk
aWZmIC0tZ2l0DQo+ID4gPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcXVp
cmtzLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9xdWlya3Mu
Yw0KPiA+ID4gaW5kZXggODgzZjI5N2Q0YjgzLi5kMWM0MjhlZWI2MDggMTAwNjQ0DQo+ID4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5jDQo+ID4gPiAr
KysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3F1aXJrcy5jDQo+ID4gPiBA
QCAtOTQsNiArOTQsMTIgQEAgc3RhdGljIHZvaWQNCj4gPiA+IHF1aXJrX2Rpc2FibGVfZWRwX3Bh
bmVsX3JlcGxheShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+ID4gwqAJZHJtX2luZm8o
ZGlzcGxheS0+ZHJtLCAiQXBwbHlpbmcgZGlzYWJsZSBQYW5lbCBSZXBsYXkNCj4gPiA+IHF1aXJr
XG4iKTvCoCB9DQo+ID4gPiANCj4gPiA+ICtzdGF0aWMgdm9pZCBxdWlya19kaXNhYmxlX3BzcjIo
c3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpIHsNCj4gPiA+ICsJaW50ZWxfc2V0X3F1aXJr
KGRpc3BsYXksIFFVSVJLX0RJU0FCTEVfUFNSMik7DQo+ID4gPiArCWRybV9pbmZvKGRpc3BsYXkt
PmRybSwgIlBTUjIgc3VwcG9ydCBub3QgY3VycmVudGx5DQo+ID4gPiBhdmFpbGFibGUgZm9yDQo+
ID4gPiArdGhpcyBzZXR1cCwgYXBwbHlpbmcgZGlzYWJsZSBQU1IyIHF1aXJrXG4iKTsgfQ0KPiA+
ID4gKw0KPiA+ID4gwqBzdHJ1Y3QgaW50ZWxfcXVpcmsgew0KPiA+ID4gwqAJaW50IGRldmljZTsN
Cj4gPiA+IMKgCWludCBzdWJzeXN0ZW1fdmVuZG9yOw0KPiA+ID4gQEAgLTI1MCw2ICsyNTYsOSBA
QCBzdGF0aWMgc3RydWN0IGludGVsX3F1aXJrIGludGVsX3F1aXJrc1tdID0gew0KPiA+ID4gDQo+
ID4gPiDCoAkvKiBEZWxsIFhQUyAxMyA3MzkwIDItaW4tMSAqLw0KPiA+ID4gwqAJeyAweDhhNTIs
IDB4MTAyOCwgMHgwOGIwLCBxdWlya19lZHBfbGltaXRfcmF0ZV9oYnIyIH0sDQo+ID4gPiArDQo+
ID4gPiArCS8qIFhpYW9taSBCb29rIFBybyAxNCAyMDI2ICovDQo+ID4gPiArCXsgMHhiMDgxLCAw
eDFkNzIsIDB4MjQyNCwgcXVpcmtfZGlzYWJsZV9wc3IyIH0sDQo+ID4gPiDCoH07DQo+ID4gPiAN
Cj4gPiA+IMKgc3RhdGljIGNvbnN0IHN0cnVjdCBpbnRlbF9kcGNkX3F1aXJrIGludGVsX2RwY2Rf
cXVpcmtzW10gPSB7DQo+ID4gPiBkaWZmDQo+ID4gPiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcXVpcmtzLmgNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9xdWlya3MuaA0KPiA+ID4gaW5kZXggODMyMTRlYjk0YjBjLi45NzBhNGZl
NTJmYWYgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3F1aXJrcy5oDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3F1aXJrcy5oDQo+ID4gPiBAQCAtMjIsNiArMjIsNyBAQCBlbnVtIGludGVsX3F1aXJrX2lk
IHsNCj4gPiA+IMKgCVFVSVJLX0ZXX1NZTkNfTEVOLA0KPiA+ID4gwqAJUVVJUktfRURQX0xJTUlU
X1JBVEVfSEJSMiwNCj4gPiA+IMKgCVFVSVJLX0RJU0FCTEVfRURQX1BBTkVMX1JFUExBWSwNCj4g
PiA+ICsJUVVJUktfRElTQUJMRV9QU1IyLA0KPiA+ID4gwqB9Ow0KPiA+ID4gDQo+ID4gPiDCoHZv
aWQgaW50ZWxfaW5pdF9xdWlya3Moc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkpOw0KPiA+
IA0KPiA+IC0tDQo+ID4gSmFuaSBOaWt1bGEsIEludGVsDQoNCg==
