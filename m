Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5492FA3BDCF
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Feb 2025 13:09:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9D1810E7C6;
	Wed, 19 Feb 2025 12:09:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nr6e88Sn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A17EC10E7C2;
 Wed, 19 Feb 2025 12:09:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739966993; x=1771502993;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=GacQkRCw/YcOdBIzYpMrFDITWf8EuyKOp5nkXeABM3Q=;
 b=nr6e88SnaYo36u8ad7iVVPHsg99Tm1BBRW8PCUIimN9dhIDg95wwZNXY
 uSldgjbg6AxUHAqEEwhSwz3eXGkgn/0ve3Qyz/nn99lcy94cj0SptvdMo
 sOGDI5E114+av2VCM8lLgz+E0ZTuYnlnCkyHYCM6pJr9kOCLqNX0UsRfJ
 eq/4LWjYWWzLSb70ho1IYnm9Q66YtxgSc/nuuLZh2M5PhVNln4M8dI+AH
 slm+moMQG6fq3zeXNcCdmgAZwQJkto91h9sYwVYUtZoJA5flmtErG2bnb
 V5syIcPab4KmRkX4Sa9ud0iOvlo9sOqbNeI+SDCQjErhEv4B0ZSen025s A==;
X-CSE-ConnectionGUID: wFXWWmLPT9uptaPfA/ofSQ==
X-CSE-MsgGUID: eaWOaR/nQ7SfZihhPQQmmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="40715482"
X-IronPort-AV: E=Sophos;i="6.13,298,1732608000"; d="scan'208";a="40715482"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2025 04:09:40 -0800
X-CSE-ConnectionGUID: YhGpruy5RlGKwjaOD8Vq/w==
X-CSE-MsgGUID: gwCXriE/ShCEnCnu0NeW3w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="115179481"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Feb 2025 04:09:39 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 19 Feb 2025 04:09:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 19 Feb 2025 04:09:38 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 19 Feb 2025 04:09:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EyfPoyHqnoNCOwMaS9OrfP2HbDAe0QxcFflGJQvMPzUPW2WwHB74ovS76SAdqRXl5pxSdceIkxdXh0VCHmoihMZ18ez567WN1RCq8aCe/DwfZWYKz6cbRRLKRtFeVKsvgkwiIJz0Uq0WozeT5JLF+q9thWweE8dE1B3toZRLpzO5Hv2X70dlQLuoJPr/vf5PAUmDkG7cQ6AQQLErsjuoEpSSAstNapzf0hoSqd9BuIf5zGWOMb+oIknW3J7M96db9V5lULS8fYAHX6Zh8tyWoJAoKxbzeQYwqHEtuzF7P/AavdVG+kwo2iQvEa7O/3X81FLRmLtfIjI2QchYdZ0OfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GacQkRCw/YcOdBIzYpMrFDITWf8EuyKOp5nkXeABM3Q=;
 b=HxUSeQcnwzetpsy8KYl+m2sgq5sCs4jc3y4t0HcudZSwbYlCCPAhYKcsLo2LGcsZK/mc2wmRZONRadJ2K8lUoRLG0/j+vHZJyYQRLbR3nboqRnIcLRiTgrm64Oe23B25Rr2yrxymYT6xM+FComIJcXIBdOcIhWlKYpASUAV5mqdlDUwoL3f6X2fs3n1ZGrzp6EdGyKCZp12jprOkvSM0aVNCkIh/E4L5yZuI6POpzzr26nfVoFNtn29WMCu1oFpQyviAurXHHKGU8+cGxRkObMmfI8HB5EFBIp7MeXj/5Bkc6TUqzg0c0zvGdMCAXiut8Qc0IfB/dABNOTOcnTxgrA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BL1PR11MB5240.namprd11.prod.outlook.com (2603:10b6:208:30a::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.14; Wed, 19 Feb
 2025 12:09:36 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%6]) with mapi id 15.20.8445.017; Wed, 19 Feb 2025
 12:09:36 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/psr: Fix drm_WARN_ON in intel_psr_disable
Thread-Topic: [PATCH] drm/i915/psr: Fix drm_WARN_ON in intel_psr_disable
Thread-Index: AQHbfgjEaRyNjWtBcUS0DJXlzCOyH7NGNWUAgAhcuYA=
Date: Wed, 19 Feb 2025 12:09:36 +0000
Message-ID: <053a2acce8984551cf9a2decc3baa03eb6a57645.camel@intel.com>
References: <20250213111628.2183753-1-jouni.hogander@intel.com>
 <SN7PR11MB67505CB0547E75F422B24B92E3FE2@SN7PR11MB6750.namprd11.prod.outlook.com>
In-Reply-To: <SN7PR11MB67505CB0547E75F422B24B92E3FE2@SN7PR11MB6750.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BL1PR11MB5240:EE_
x-ms-office365-filtering-correlation-id: 71175d85-eaed-4c82-649e-08dd50de4732
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?ME82amRtNjlrRStFYzVHTUE0aHdiOGE1RUhrb0JJVkhESUV2dEluWDN5OUt6?=
 =?utf-8?B?dkRKbjNDREVCWi9JTzIyd2c4dWtrU1YwOTZNU2VCZHRvNFcyTlRjdG8zQjdO?=
 =?utf-8?B?emFOVFNCQ1gremxnd0hEbTR1TzZzR2phOHJzZFVyQWZpVk9CUnRRbFliZk41?=
 =?utf-8?B?bG9iMFlOY3ZlR2NWSjVITERuQXY0Z09VcjBzL2NnSllkUXEraDZPKytadFd2?=
 =?utf-8?B?WmE3SEhpc2sxSHNmTm5VVldHWmxOZlp3N0NPMHNKUVdnUkZBeTVNWEY0U3hI?=
 =?utf-8?B?S3Zia0pUZzNjQjNsT0IxdWhNcHZMcVYvVGlVU29xNU1zNVVwR3BXVU4wNzgz?=
 =?utf-8?B?YzhFZUNwcHpDRms5V1VERWNTOHdGdHlXVHNRd2VncjVleElOL1RiS0N2dlpO?=
 =?utf-8?B?Yjd2Z0pZcnN2d0lEVjhIMS9OM0lxRjZsS2tmN2VCWjRpVlJnanVjemRJL01L?=
 =?utf-8?B?ak1kMzZMR3pyVmdIOXMyYXZLWk1HdUdRWUFxY1ZydkQwVXVFdlZTRllnejl3?=
 =?utf-8?B?dEcyV2tuOTJBVGZYYUI4R1UydWQvTkRZS0FnbjhhNVlTcURoS0F4dWdnc0xa?=
 =?utf-8?B?eGQxVlMyaWhwdFRWR2Jtanp4SXdNakJyeXdSTXo4Y0E3RUNjeFVCaXZFRFk3?=
 =?utf-8?B?VGxvRVZ5N3hrNTZ4Q1FlQ0tRbXNlc21weWdtd1JTVWZDOHlIeUZBMng4dVgr?=
 =?utf-8?B?VktXNUNrWVhRdlhUVm8vWjJ1MHhxNGZITUExVjZscnpRWXMrclpZU2dOdkQy?=
 =?utf-8?B?QWVyUUcxenlWbTB2dlJzYmhocnIzQjNOekNONmpKWmVXUGNhbytNZ2FjQ3FD?=
 =?utf-8?B?Mm1SK04wR2xtVDZteDJYaVl2akFYenk4SnJmK3kvbU16ODNud0h6b1F2Kzl3?=
 =?utf-8?B?Y0VONU9CVjNCVHNBbys3SU5QODg0WXh6b0dudkl1RzVmL3NPY3JwUDZFemNJ?=
 =?utf-8?B?RWNZUis3RzB4QkQ3a2loS29hR1FIdVdxdzJaaThVT2VwOXM0NDd6c1QyeG5B?=
 =?utf-8?B?a1VaK0hGZ0Vqc0NDdHcrMVkvVzVHRXR2MkFpcTI2MmZwUUFobVFINTBUUjFn?=
 =?utf-8?B?cXljZlI1LzdCRStsZ3h3QlRUbHZxZmZ6U2xORlgyR2FKdkFhNHgwVURVdVZh?=
 =?utf-8?B?TExnbnliN1lrL0VsbThNc1hnNFNuYW9hNSsxSkQ4N0xINm1WOXFXOUJYYWNE?=
 =?utf-8?B?cUhGVTk2Qm9PRE42VFFRL2JhWittMGFFQ255VGVLQnc1dGdGNlNQZmd4bzRz?=
 =?utf-8?B?eUVnZlYvcUxKekhyMW90ZENWcVYxODFLWUdxazhITkV3NUc1TWxNczlDeCtF?=
 =?utf-8?B?NjNNQVJjeDZ5Z2EyZFFCcUl2cmhRR1FaL3dVcWFHa1pML3E5V0hmTlhNQTdD?=
 =?utf-8?B?cWp3b3BQR0pFS3VUWVNaTFdYZlZKMWlqeVNsVEViVGc5K1V0N1N5R3ZkOXhF?=
 =?utf-8?B?VGtJSmxJN09VN3lFT2ZZTmo0elRIZUd5dUJCL3d2N3Q3eFdmSnRudWJIazVX?=
 =?utf-8?B?WTBYNFpUdm1IVE9NYzA2MnhrS081TDIyZnk1L3ZiSzBYYkxPTzdKeHZaYlF4?=
 =?utf-8?B?ak5qR0xrU0Y0SjlLdTFrKzJKU3QzMk0xeHIvNUc5dlMvb2l5VGhWYXZWakd2?=
 =?utf-8?B?R2p5ME9lZUVCNGZBbzQrZ29ycTBJbkR6MDJ2RTFGV1JoajhNT1VxU1Byb1Jz?=
 =?utf-8?B?aGRBZzR0N0NwQmtLdkNPeG1hd2FnOXJyd1FWMk1ZTmYxNTRwSUtySlpsWHNm?=
 =?utf-8?B?bWtVbkRnbWpNNU95TGNWQkhkcE5QMTdvS1pZVkRPdnZ6c1dOT0w4NXVKdWE4?=
 =?utf-8?B?ZHRMaVRKVFlDWnU4amZhUmpscjI3eENrWDY5cUtsR1hKM1ZWaGJRVTd4MDIx?=
 =?utf-8?B?d0ZodFNEMllvTDJqL1JuSEczc0M1Q3d1VllwS2kzVEp1aVN6ZTF2clhYdmN3?=
 =?utf-8?Q?YHfGchBU+YjEqORRiXid6REZCStuuITy?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cDdJK3ROSVhKbFk3aVRId3lyT0NmalVYbWFrbENrcDBNV3doSk9sbHRXai9B?=
 =?utf-8?B?MEZJUW1UZFlZaHpjSnV2SnJPZ09JeFR3UlRUK0xodzh0ME84d1hvdU92M3Ni?=
 =?utf-8?B?S1Byc3lkQnEzdjdXalZ0dFNSWmlvUUxudzk5dG15T3lzb243WEtCeGEyY0ll?=
 =?utf-8?B?WlUvcloxaGkzcDVqNFFWSG1QZWlqdmlQUXIxek9HMWhUOWZNYnhwdUtDTDUr?=
 =?utf-8?B?NkRCTDBDOCtPbDVacTJ3azBRcW0wT1huVlNXRzRGb0U0a1cxOS81TG9kZDBl?=
 =?utf-8?B?c2hDSnd3Wnp3UHAzK0pCSXRZekVudGVDYmhwMnNOVnZ6cThDOFp5YUszYUpM?=
 =?utf-8?B?cHQ3WkovbUhrc3BtbElUU1E4Mkt6Q3l3UHNnNGxCNzVYSEFmTmdsaHRNamNZ?=
 =?utf-8?B?STFQZ20wbVJTSXBCU2xXT1lwbVFNUlU0Q3hWQWFpMGJnM2E1ZXQ5UFk0eThw?=
 =?utf-8?B?am9NSjArcWRPVDBXYUJxM3BGU2owRi91VkJnNWN0Uml0UlIvUlZWSHowMmhT?=
 =?utf-8?B?OGQ4bUtsaUNMN3p2eHRjZ0RIeDhZZXcydlc4QU90MjMwUml4Y3Vzc25ROUV2?=
 =?utf-8?B?eG9ycWpkWnlHRVhFZ0Y3ZnhNb2Zaa2JlZWJlQ1cxQy9iMWJJR2JVYVVnY3Q0?=
 =?utf-8?B?aHVsR1hRUXVpUnlCdEFBZURjcGtXbUwwbGk0aGttbVZBYUlhY0NtQzVTeGw5?=
 =?utf-8?B?MkF1QmRkSk4wR1IyUU82SitkWXRzSjNIeXdKUmxuMUY3SU5kRjNxOWZUdmVK?=
 =?utf-8?B?eDdqNkh4WFVSaHVWUUdwVmdvM0tFcFRVenAySUs5RkUxa0lEekd4UlJkZDZZ?=
 =?utf-8?B?UkRWQ2MwZTJSY1ZDSk5uZmg5cjZ6N1c1WWREU0lRY0FDYVB6ZkhuNWJxNHpj?=
 =?utf-8?B?RWZyNUVvUmlHZTB3V2Npb0pKdmcvWXgyNjkvN3JUOUNWM1lqaFlVdFZ5cWRp?=
 =?utf-8?B?ZlU5Z3ZFRlVBMWlIekJmZWUwWVF6Ky9nVVZRdllvbnhyWVRVakFDV3FaRlF2?=
 =?utf-8?B?cDdsSVhkdWVnZm9jNGlHNTVQUnJEbkRPcXdnb2FOZVp5Q2N3TENYaEZUdy90?=
 =?utf-8?B?c2lLcmcweHlydnRleGNScFl5QjRlV2k0RGRhMVV6SjRyWDMxSjUwNnFXWllZ?=
 =?utf-8?B?a1cvZGVPMEoyM2c2U2tGMDl3MkIrWVVySWs2Z2ZRNXZkVXpKWkhuQXJpN1dl?=
 =?utf-8?B?MXE1NXFWUEovcXM4dCtZSUxiOGM5dnorU0lYdTR0cGxQcE54NVZWbjZvbTdj?=
 =?utf-8?B?cjQxL0grNnVBdVJlY2l0eEx0MUZKUmVtMDVWd2sxcGwrb3RodlBxNno2U1BE?=
 =?utf-8?B?UzNSdS92ODcxbnppUnM4SklqRktkc1ZvRi82SFlaUkQ1aUREL2JRTXdrTGdn?=
 =?utf-8?B?Mit3R0Vybk81b0Z6Z2lqbldIUi9udW0rUStraVhHYkF6MTRrMGl0TC9OWTZW?=
 =?utf-8?B?VEVCY1VHeG1McVRuNTJlM1cvUnBleDViQWhEWHVxa1VyaTVnVWdLYlNkWVpn?=
 =?utf-8?B?Q3ZCdllqck9XMjFXTEpqZ0dibE5yMWwxb2p1ZDVQZjBqY0V6VlArT200WFUz?=
 =?utf-8?B?SWNzVkh6dyt5SzlBNWxNam9neGZ6enRlRlRobXIyR2lPMDVJYnhBNEhEcVJU?=
 =?utf-8?B?VHRpMlpuK21ENWIyZTE0NlJFcThGcmVYS0hINTcwUVZacnRNZTdjemJJMS9F?=
 =?utf-8?B?RzJ0ODVGMElpWDVQbWhsTjhOejJreWJIQkZiNnZ0Q2xmWnZra2FQMGNzMmM3?=
 =?utf-8?B?V3lub1hOWlJYZm1mdS9pOGQyUEtWRzVvSWZRV25KMkpNa2h4TVpnN2ZlQ3hY?=
 =?utf-8?B?R3VMbm82aEg1U1pDc0Fxb0U1djljNlIwY0lCbGtCdGFvb25zR0xVL3k5cmZw?=
 =?utf-8?B?Z1FPR1lZS3JpbGRPRUJnRlI0N2VhUk83NzdhRFlicTF2THAzL1VwZ3FuKzRv?=
 =?utf-8?B?QXJKTHlaSmxOYm5QbXNpek05OWRzVDliRzFKbzROY1UxUndnQjVEdVQzSExL?=
 =?utf-8?B?YTRseFRleXlBWi9UMndLbStlL2tpeW1ScDlLdDQ3MEUzL212TEhqN0lLdjVX?=
 =?utf-8?B?eUsxWFJNVHlyM1FnMUtySWZxME42YTVNV1MyY3UrL3FUNGtHRWtSMG4yaHp1?=
 =?utf-8?B?em9XVUdFUzNrRHIyTzNWT3BZQWdFNDhPQkxTY0w3QXBEUTlKTEtkTElYQmZx?=
 =?utf-8?B?NlMzNWtSWGdwMGVycjNCTFNHSnhVYlZVa3BQa1U1eGJLRitvTDJiR2tUUUxJ?=
 =?utf-8?B?bkkycVRHbmhndkxSUmNnaXhNdEVRPT0=?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <DFD83FB2FEDB684E966658A36E9697C4@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71175d85-eaed-4c82-649e-08dd50de4732
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2025 12:09:36.3358 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Sr1AmFWoAsXyz18ox/oQLtcXyw2y3edj6yqZJHHuUYcJet40G1erTLkgC+fSJQsCV7HlDZFrMk/rBwpakjd/BBtC4Lb0U+ZiZupv940N7pg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5240
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

T24gRnJpLCAyMDI1LTAyLTE0IGF0IDA0OjI3ICswMDAwLCBLYW5kcGFsLCBTdXJhaiB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSW50ZWwt
eGUgPGludGVsLXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYNCj4g
PiBPZiBKb3VuaQ0KPiA+IEjDtmdhbmRlcg0KPiA+IFNlbnQ6IFRodXJzZGF5LCBGZWJydWFyeSAx
MywgMjAyNSA0OjQ2IFBNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7
IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiA+IENjOiBIb2dhbmRlciwgSm91bmkg
PGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiBTdWJqZWN0OiBbUEFUQ0hdIGRybS9pOTE1
L3BzcjogRml4IGRybV9XQVJOX09OIGluIGludGVsX3Bzcl9kaXNhYmxlDQo+ID4gDQo+ID4gQ3Vy
cmVudGx5IGludGVsX3Bzcl9kaXNhYmxlIGlzIGR1bXBpbmcgb3V0IHdhcm5pbmcgaWYgUFNSIGlz
IG5vdA0KPiA+IHN1cHBvcnRlZC4gT24NCj4gPiBtb25pdG9yIHN1cHBvcnRpbmcgb25seSBQYW5l
bCBSZXBsYXkgd2UgYXJlIHNlZWluZyB0aGlzIHdhcm5pbmcuDQo+ID4gRml4IHRoaXMgYnkNCj4g
PiBjaGVja2luZyBQYW5lbCBSZXBsYXkgc3VwcG9ydCBhcyB3ZWxsLg0KPiANCj4gTEdUTSwNCj4g
UmV2aWV3ZWQtYnk6IFN1cmFqIEthbmRwYWwgPHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KDQpU
aGlzIGlzIG5vdyBwdXNoZWQgdG8gZHJtLWludGVsLW5leHQuIFRoYW5rIHlvdSBTdXJhaiBmb3Ig
Y2hlY2tpbmcgbXkNCnBhdGNoLg0KDQpCUiwNCg0KSm91bmkgSMO2Z2FuZGVyDQoNCj4gDQo+IE5v
dGU6IFNob3VsZCB3ZSBiZSBsb29raW5nIGludG8gc2VwYXJhdGluZyB0aGUgY29kZSBmb3IgcGFu
ZWwgcmVwbGF5DQo+IGFuZCBwc3Igd2l0aCBmdW5jdGlvbnMgYmVpbmcNCj4gU2hhcmVkIGJldHdl
ZW4gdGhlIHR3byBmaWxlcyA/IFdpbGwgbWFrZSBnb2luZyB0aHJvdWdoIHRoZSBjb2RlIG11Y2gN
Cj4gZWFzaWVyLiBKdXN0IHdvbmRlcmluZyBpZiB0aGF0DQo+IE1ha2VzIHNlbnNlIGluIHRoZSBm
dXR1cmUgPg0KPiANCj4gPiANCj4gPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gPiAtLS0NCj4gPiDCoGRyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAzICsrLQ0KPiA+IMKgMSBmaWxlIGNoYW5nZWQsIDIg
aW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gaW5kZXggODYxZTUwY2VlZjg1Li5jNzdl
YjFiYTNkYjMgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9wc3IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
cHNyLmMNCj4gPiBAQCAtMjE4Niw3ICsyMTg2LDggQEAgdm9pZCBpbnRlbF9wc3JfZGlzYWJsZShz
dHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQo+ID4gwqAJaWYgKCFvbGRfY3J0Y19zdGF0
ZS0+aGFzX3BzcikNCj4gPiDCoAkJcmV0dXJuOw0KPiA+IA0KPiA+IC0JaWYgKGRybV9XQVJOX09O
KGRpc3BsYXktPmRybSwgIUNBTl9QU1IoaW50ZWxfZHApKSkNCj4gPiArCWlmIChkcm1fV0FSTl9P
TihkaXNwbGF5LT5kcm0sICFDQU5fUFNSKGludGVsX2RwKSAmJg0KPiA+ICsJCQkhQ0FOX1BBTkVM
X1JFUExBWShpbnRlbF9kcCkpDQo+ICkNCj4gPiDCoAkJcmV0dXJuOw0KPiA+IA0KPiA+IMKgCW11
dGV4X2xvY2soJmludGVsX2RwLT5wc3IubG9jayk7DQo+ID4gLS0NCj4gPiAyLjQzLjANCj4gDQoN
Cg==
