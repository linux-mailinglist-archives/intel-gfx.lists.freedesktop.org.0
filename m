Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 585F1ABB153
	for <lists+intel-gfx@lfdr.de>; Sun, 18 May 2025 20:44:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 780EF10E0A4;
	Sun, 18 May 2025 18:44:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HkRjPen+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6968110E081;
 Sun, 18 May 2025 18:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747593886; x=1779129886;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G+MIHi60t2WYCl87/2SkcIBpTK50dwLk805pH2W+VGY=;
 b=HkRjPen+MRJP8jIMjwzz/kzZf9T01PTMm/QhR9KLpkdU8bR47HmqiUmX
 DS5WHWa9YqTbjvH2+LQB2jQIllY+c+87/J4D+J+hKhKzw29VpUuRB4OZa
 Gr8JHQDOWxhb7fp6wgyhOdOA0bDDHZjhWcMS2Y4na1eOOTIp8DDE4UfQh
 arROFTeBuhqwxE5O5mWFVFrUqpW2D+DlC8pg+RKhqYE0Jl3X2akXFezhj
 V2tJpso6zS68/EDqjKTak2iRLi53nCGWIfH8T8IpiTvnzXc+ak++4Xas3
 Bhuid0mfFOstFttPV4Xwu+S5T547vDMWTxarvUpsBjVqQL5GQ26/NhrLK A==;
X-CSE-ConnectionGUID: 140ZkSGeQaKGTILfmc2yFw==
X-CSE-MsgGUID: xXaSwnvKSuK92pClZOmQXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11437"; a="60888287"
X-IronPort-AV: E=Sophos;i="6.15,299,1739865600"; d="scan'208";a="60888287"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2025 11:44:45 -0700
X-CSE-ConnectionGUID: xcmGSeZ8SHWdHWVro4iBnQ==
X-CSE-MsgGUID: fe71KQE1TZ+6Rr3/BHaE1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,299,1739865600"; d="scan'208";a="144422880"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2025 11:44:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 18 May 2025 11:44:43 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 18 May 2025 11:44:43 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 18 May 2025 11:44:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pr5BbZ0p/Dg9S1A82g4rZtR0DqcLm/Av0WUmdHbjkcMJwlZwQ2jPgmu+3a0o9ZjMaVOoVVzTN92KicQpUHFU8Kc8q/PphMUJ/0ZaCKJXbjx4irrhDlcrQMchhlxpJnY+UIaE/Pa3m0Pc1dOyioDkCQSmB0kVc3cQfFcbBqnwjcdytLihAdaaEfp25aeef0E7P7EcygYipS8mnVHeKOdMnrbmTFSR6UnYkPlabWsWSHPszulQxquJiFr3IIFqAYWmkQ+vycpbKNOfXlgAI52SZUI8vd+ICy2P3Pu3Q+cIJfUR5AU8AygoFYLYmrzUUuHvEDeF8SJ1EiU98hJaIcS+vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G+MIHi60t2WYCl87/2SkcIBpTK50dwLk805pH2W+VGY=;
 b=r7ves2XgK8cK/vQtK3J6tuSpBAGu9o9FytB7AG8ZiGCrqTt3ecV6+r+8AEHCJO36JT66knumhJKT/5pnNrHe/TTEk0YPYhBqWIqmeAaYnKHmHQjF0NzQX/msBMViLSuuxdDm57dRJHuMS60EvvtZxccXgC3Jm/TvxFfK67jwh3c0RaGhWDokHTP+nnqoV0jmL57MVi9k7iDr8jnsVPuV2+K7mvo01EGML5rm1UQwlvaWP+iTHKUh8WVCTv7Z4ImYhc/4dEBoTKqz0GWAKaKDyIP+UIl+ivAgoHwW29ErRFxEgXK/JxytwaNlD8cRElGq5BS45VfYCIWmxb76nEEe/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 PH0PR11MB5784.namprd11.prod.outlook.com (2603:10b6:510:129::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.33; Sun, 18 May
 2025 18:44:14 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%5]) with mapi id 15.20.8722.031; Sun, 18 May 2025
 18:44:14 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 05/12] drm/i915/dsb: Provide intel_dsb_head() and
 intel_dsb_size()
Thread-Topic: [PATCH 05/12] drm/i915/dsb: Provide intel_dsb_head() and
 intel_dsb_size()
Thread-Index: AQHbxlaJLTTbJpwG8kuECSgtDDkI2bPYvFSw
Date: Sun, 18 May 2025 18:44:14 +0000
Message-ID: <DM4PR11MB6360B28B686DB63AD59C2F49F49DA@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20250516113408.11689-1-ville.syrjala@linux.intel.com>
 <20250516113408.11689-6-ville.syrjala@linux.intel.com>
In-Reply-To: <20250516113408.11689-6-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|PH0PR11MB5784:EE_
x-ms-office365-filtering-correlation-id: 38b29b74-7334-40e6-c179-08dd963bfcae
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?UHkzaWxpOTBkMEg2cFNiVlB4djNYREo5Z0k4dEE5L08wSHhyQStyT2ROWnRW?=
 =?utf-8?B?UDEwcytVQlZwVzIwSHBrM3FxUm03K3FJa0E4RTJFQUdvYUgvNmhQVjRJSnI5?=
 =?utf-8?B?c1NUaU0rSGlMYjRBZ0VqZ3ZaRCtYazIxSVJXZDRUeVd0VGdvb29xdmxjZWFG?=
 =?utf-8?B?R0Myeit6QUphTmVVUzZDZ0hQVUV4MzJUaFl1V2dlWEYveE83bGxBTW1KYlcx?=
 =?utf-8?B?T2ljSVBwYWlyVFVOR1p0QklHdStTLzhpUHl6clVtaXpoQzZHQytNWWVPN1lu?=
 =?utf-8?B?V3dnaGN5RkwvMGVUV0dRVWVTaTQzZ3ZGb1hvakdlQXd0THR0ZzRQTlJLdnZa?=
 =?utf-8?B?TmEzRFZJNFVnUnVYU05TaUpPTGJxTFViRzdNbG14YVd1YWVsNkc0ZW5sWW8x?=
 =?utf-8?B?cFpoV0RscW5KZWpjZXJoMldYM3kxUnF2Q21WVmgwTXJHKzZkWmVYT2xrR1ds?=
 =?utf-8?B?OVJFRUJEODgwRlcrM3hyeVlHTzNIZDFBUXBMU3BkVmpGUVRMb1JxTjVaWmhs?=
 =?utf-8?B?K1puZ1RiaFFIK2JZOWhsTDFPRVRrb2ZNcmVLTlNqdTg5a1FkK0N1bFI0LzJJ?=
 =?utf-8?B?TnlYLzFheVZORENMd3RQU3hVMEhCY0Y5OVZlVEtkdDd1WWhhd1c1MGF6MkNz?=
 =?utf-8?B?Tkc5OHVzV2ZOeCtBb25YVURvMWNxVHN0cFV1WlIrYW1lc2l0TUNqM1FLdUM3?=
 =?utf-8?B?enFEK2xZN1d5ODJKSlg4WWpTTy9vZDhhZk9CZEFQNHlUVmM3czRwNmJ4Q2t3?=
 =?utf-8?B?RGlnTEpUNFYyUkRVYWY4Mld3Znp3RGlvLy9TL0UwVitPcEtHUEczR3NhclFi?=
 =?utf-8?B?VTJQb3VZb3NoNzhBTnVtd3ZzU3R5VFJuUEM5M0V5Q21ScVJscTBVR1JJc0JG?=
 =?utf-8?B?bEpHQ2FyeHY5WGwySGJpSTBTUFIzNTEwTk5zR0NGYlF6RmpIS3RnZGU4RnhU?=
 =?utf-8?B?ZXYxdGM0VW9mQXJQclpCUU5hcmU2TGJ1NTRiMUpaQ3ZTVzM1Snp4c2E3cGd0?=
 =?utf-8?B?NXcySjdtQWlDL0N5dHVJMzF4VTQ4QXcyek5mNkErODRvaDhVMldPeGc1eWl2?=
 =?utf-8?B?a0RBMTFHeUkrUGtsR3FwSzZnMWxQa1NEYmpXR3hCNnhFNU1sM0xMc1h1VFR3?=
 =?utf-8?B?dnAxUlYyeURZOUhmbjcvbUpiWkk4SUFIL2VNOXZCclJJWmd0ZlZaYkVTRmJ5?=
 =?utf-8?B?U1FxZTlzZVJqdnlIQWxLZHdxTE1hb1F4MzhZRjFnV292UHdROXU3M3U3WWF2?=
 =?utf-8?B?YlFZdmVlbk12OEJlWm5JbUZWNERqS2dCZTdsS3J0TEZibnRCaDdjaUlZK0Ri?=
 =?utf-8?B?V3dTclEwQStNQ3FEakJTMkhhc3lWdk1xcDlpRzN5ZkVRUyszaVBSR0hpYkYw?=
 =?utf-8?B?Vko2S0pmeDhUOGphWVRINkkyMEdyalpUNXBib3VuaGoyWkdvVHRUZ0FHWnRp?=
 =?utf-8?B?bUZaRzlVTVBTWEdmZnI4NHRTalRYaE9HUXNuQ1hVdzR5YTJkZGt6SGp0L2Ev?=
 =?utf-8?B?cjN4Mk81VWhvemkwc01UREM1bVVBU1dodEJBNzNmMXVyMGpvRjZXaitlQjZz?=
 =?utf-8?B?S2RQa3ExSkEwWVU1TWduWUNXem5iQXd3eDB6Vm95ZlpoaDA2akkxZXBzNXY0?=
 =?utf-8?B?SzJTWERRNVFkUGR3bUJVMUU1M1VpYVVraWdnbjg5MHFOS0daMGJsd0ZxMXBz?=
 =?utf-8?B?a2pVekhVcGJJMmJCTnRtYlBubkVmbm5YZ1FNMGxVWU5uTUIrWjFNa1NmQ3NL?=
 =?utf-8?B?cnEwUC9Tank4MDNMUVd5UFFwRzBBRWllaHhqbEFVVjhscXkwaHdtSXZSbkJR?=
 =?utf-8?B?blNGQjQrNy9UTExXM213RXNBSGoyOGdCaG9NcjBvUStxY0pBVGE0OXE0elZt?=
 =?utf-8?B?SmpUVEJERzdBZ25YeFJmV0ZNVDU4OW9abjBIVXJDYWg1NGdjOGRHSEVLVWxz?=
 =?utf-8?B?K2xWenRXYTBrY2VPNUlVQi9oMzRrbjh6aGlub2tSNWRGcWx4V2VBanlUcEZu?=
 =?utf-8?B?RjM4Y2tSemNRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K1g2czd2Z1lQQ1dsWTRiYUlYVXlvTzY5VHkvekkrYTYxU0ZrdkV5ZUtiS0M3?=
 =?utf-8?B?UUdZczY2RWlpWXBxeWJpU005Qk42bEtvWmlRaVVvVmFOUnQ1VmxaenRIcDQr?=
 =?utf-8?B?SWZmV1dPMkhpQlp5cTluZytBYkw2V3B6ZzIrTWFBa2tnemZoUEtGaUprZDBK?=
 =?utf-8?B?VytMOFpCb0pyMGFaeTJPa0YyM3NsZmkzalhDZ295dUJQcWovdmJra2IvWTc0?=
 =?utf-8?B?emtqUEI1SmVJRGw1OTRYRmQwV0hkZ1c1U0JndzBDcHcxNGg4ejBCQkQ4OEt3?=
 =?utf-8?B?RUMvWmgyN0Q5WVVpTTYxRnNjT3RyY0tKYkpsM0daY3l4SzVjVlA4bzJ2bmpB?=
 =?utf-8?B?Qk9YUnRsdHYrTENGTkUzUTdMbUllb1FtQUxHSVN3ZFp2S0NpSGJ2YUFFUnJh?=
 =?utf-8?B?ZnEwZFRkOUpqSVhDZUFtSlo4ZDlBUVo1K1RPUTY3OXBiekZQM05yQkphalIr?=
 =?utf-8?B?Zk1YR1lrQWVnRC9jWTZNcXJrcUZTUmZHc1pqbVdZMjRKVVRvRGNEb3NkU1Z6?=
 =?utf-8?B?d3BBanJMbWdmd2xLdUhOSlE4cXNGSlBwRXkwcktnT2x4VjI4UVFTOUhhb2lB?=
 =?utf-8?B?YVFYY1JtcXVZMGZKbjF1V1NGeUQyZlMwelh4OFljdENlQ3hKQnlxNlpYNUR5?=
 =?utf-8?B?NHFwUlA4NWw3b29iOGxicjJyakZaTUZaRjhmTituYUVIVWk2Y2x3d0hNckht?=
 =?utf-8?B?a05mTUVrWjJBWkRMeUlPQUxIbWRoeGsyb1BHL0lhZHdWWmlQRE15VHJkM1J0?=
 =?utf-8?B?NmJ5MXBzb0pDUWNiR0JxSEFIR3lpQm9DUUdTbE16aTlaWFJKWkhCWXJ0MHRL?=
 =?utf-8?B?N0ZwN3ZNNnphLzVYaExaY0VGM2JiUERpdE14ZG5EeGpDTW5pRlkyRkdWaDJ6?=
 =?utf-8?B?R2JqYkR5NGF2NzBLeDMwS3Q0Zzc4M1YzcUNvRVUzby9DS2h4SWxIdUtUT2F3?=
 =?utf-8?B?bkxuSHh5QWFadFBqUGh5T0xQL2xjaDVJWkY2V2NTb1RPNWZ4NDJyOWp4T1Jo?=
 =?utf-8?B?UWpzSUlIb01RS3pmc1djWlgzb3RqQm9VcHhpMWNTU3hDWjJic2FTR0ovMkNM?=
 =?utf-8?B?RmhrVmVqNEdTNXNVT29kZ1lINUNjTXRQZzgvMGY4NFEzT0RlN0s1NHVzOXlH?=
 =?utf-8?B?bC85dFZUUWZWWkRZSE1UbnVoSGxXVXlJM0tGaHg0S2dYY0dSclVsNmVuZVU5?=
 =?utf-8?B?bVl6WVNQZU96VjdJNGoxU0dHRmFjS0NWM3NqZ2FuRElCOWNnN0sreVlmOVQ1?=
 =?utf-8?B?WVVTWmlPamNvWnFOSXJyclJ0aVd2ZEU1ajIyd3Q1RGl4ZTlmeEt2QkZibUpL?=
 =?utf-8?B?NGpwa0NHaERzUS9sZWFEcTV4dzNXS3hEeWQwb3E5VHVoamdpSWV1emc2T3Ry?=
 =?utf-8?B?aTkwN1h2TFY4MWRmZDlkRVhQYlgrd1oxWnVjRzdJSnJqS0lrVCt3alRiTlFi?=
 =?utf-8?B?alN0WHBQNGU1RWU4ZmUrT0xVYWZaOHFsRkVrRVVFQnZYOEptRnJvY213OUlG?=
 =?utf-8?B?TS9mOXhjMzRRaEJjdXI2RngyT0QvaGtNU1JLSkJ0YTZJNXo1a3c2cGdwaTlI?=
 =?utf-8?B?TlNqbmdxTXNKemVFUTQrcCtCUVorY1BsYmVibXFmS1kvZ2gvS3lTN1VWa2lk?=
 =?utf-8?B?QWIzNFZLQ05VWEVzVERRWXNva09WWXpjMnFCdHNkaXFmcXRoa1l6MlFUQjAy?=
 =?utf-8?B?cW5ycEdRb1BFUnV2OG03eE5qdGxPU1pxT1VKOHRkRWNIOE5ZbkVBWkpidzRY?=
 =?utf-8?B?SlR2aDhOdlVyL0hBdWtqaU10R1lqMzFpbUM4Yit5YmpvREpjdForTkIrL1FC?=
 =?utf-8?B?U0huUjM0UkNYVURMRG5rc1RmaUNHVjNiZmNqWldJUWYzVkJJeUhnMnZ6Nm9w?=
 =?utf-8?B?bGhweTh1bXhROHJTM3VUWnQ4NVhGbGpCNDZTamtKd3VpNzJrT29rSW9rYXNr?=
 =?utf-8?B?MHI5UXFqL0d1S2lWT1M5YjRiS2xrNmRhei82M3M5aHRKRm0wN2Y0S0QwZFpv?=
 =?utf-8?B?LzJRWFA1SVI2aVh5TGFEWHlQWG4xV0lUS3V0c2lGcDJvMUV3bEFtcEJJY1dn?=
 =?utf-8?B?a1c1ekJtUEZYZ1NoNHA4SjJLQUEyRURqVkpoWmdZQ1d4SnppbzliMjIwbm9a?=
 =?utf-8?Q?gbNc/vSywitJIhRHU4hgnCKcK?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38b29b74-7334-40e6-c179-08dd963bfcae
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 May 2025 18:44:14.2529 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mHWbtAtWTGcNhx9UYhhsNV6TrKI2orf7Xp3G4gS3HpkqPEey4I+CmnIhPbyi5Zjzhmw/UnP2BbJDGU8AiKYVAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5784
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwteGUgPGludGVs
LXhlLWJvdW5jZXNAbGlzdHMuZnJlZWRlc2t0b3Aub3JnPiBPbiBCZWhhbGYgT2YgVmlsbGUgU3ly
amFsYQ0KPiBTZW50OiBGcmlkYXksIE1heSAxNiwgMjAyNSA1OjA0IFBNDQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENjOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDA1LzEyXSBkcm0vaTkxNS9kc2I6IFByb3ZpZGUgaW50
ZWxfZHNiX2hlYWQoKSBhbmQNCj4gaW50ZWxfZHNiX3NpemUoKQ0KPiANCj4gRnJvbTogVmlsbGUg
U3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gDQo+IFRoZSB1cGNv
bWluZyBmbGlwIHF1ZXVlIGltcGxlbWVudGF0aW9uIHdpbGwgbmVlZCB0byBrbm93IHRoZSBEU0Ig
YnVmZmVyIGhlYWQNCj4gYW5kIHNpemUuIEV4cG9zZSB0aG9zZSBvdXRzaWRlIGludGVsX2RzYi5j
Lg0KDQpMb29rcyBHb29kIHRvIG1lLg0KUmV2aWV3ZWQtYnk6IFVtYSBTaGFua2FyIDx1bWEuc2hh
bmthckBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgOSArKysrKysrLS0NCj4gZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuaCB8IDIgKysNCj4gIDIgZmlsZXMgY2hhbmdlZCwgOSBpbnNl
cnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RzYi5jDQo+IGluZGV4IGI1NGZiNjE3MDM2NC4uODJjYjU4Y2Y5YzZhIDEw
MDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+
ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gQEAgLTIz
NywxNCArMjM3LDE5IEBAIHN0YXRpYyBib29sIGlzX2RzYl9idXN5KHN0cnVjdCBpbnRlbF9kaXNw
bGF5ICpkaXNwbGF5LA0KPiBlbnVtIHBpcGUgcGlwZSwNCj4gIAlyZXR1cm4gaW50ZWxfZGVfcmVh
ZF9mdyhkaXNwbGF5LCBEU0JfQ1RSTChwaXBlLCBkc2JfaWQpKSAmDQo+IERTQl9TVEFUVVNfQlVT
WTsgIH0NCj4gDQo+IC1zdGF0aWMgdW5zaWduZWQgaW50IGludGVsX2RzYl9oZWFkKHN0cnVjdCBp
bnRlbF9kc2IgKmRzYikNCj4gK3Vuc2lnbmVkIGludCBpbnRlbF9kc2Jfc2l6ZShzdHJ1Y3QgaW50
ZWxfZHNiICpkc2IpIHsNCj4gKwlyZXR1cm4gZHNiLT5mcmVlX3BvcyAqIDQ7DQo+ICt9DQo+ICsN
Cj4gK3Vuc2lnbmVkIGludCBpbnRlbF9kc2JfaGVhZChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IpDQo+
ICB7DQo+ICAJcmV0dXJuIGludGVsX2RzYl9idWZmZXJfZ2d0dF9vZmZzZXQoJmRzYi0+ZHNiX2J1
Zik7DQo+ICB9DQo+IA0KPiAgc3RhdGljIHVuc2lnbmVkIGludCBpbnRlbF9kc2JfdGFpbChzdHJ1
Y3QgaW50ZWxfZHNiICpkc2IpICB7DQo+IC0JcmV0dXJuIGludGVsX2RzYl9idWZmZXJfZ2d0dF9v
ZmZzZXQoJmRzYi0+ZHNiX2J1ZikgKyBkc2ItPmZyZWVfcG9zICogNDsNCj4gKwlyZXR1cm4gaW50
ZWxfZHNiX2J1ZmZlcl9nZ3R0X29mZnNldCgmZHNiLT5kc2JfYnVmKSArDQo+ICtpbnRlbF9kc2Jf
c2l6ZShkc2IpOw0KPiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkIGludGVsX2RzYl9pbnNfYWxpZ24o
c3RydWN0IGludGVsX2RzYiAqZHNiKSBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5
MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZHNiLmgNCj4gaW5kZXggZTg0M2M1MmJmOTdjLi42YTkwZmZlMWY2ZmYgMTAwNjQ0DQo+
IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaA0KPiBAQCAtMjYsNiArMjYs
OCBAQCBlbnVtIGludGVsX2RzYl9pZCB7DQo+ICAJSTkxNV9NQVhfRFNCUywNCj4gIH07DQo+IA0K
PiArdW5zaWduZWQgaW50IGludGVsX2RzYl9zaXplKHN0cnVjdCBpbnRlbF9kc2IgKmRzYik7IHVu
c2lnbmVkIGludA0KPiAraW50ZWxfZHNiX2hlYWQoc3RydWN0IGludGVsX2RzYiAqZHNiKTsNCj4g
IHN0cnVjdCBpbnRlbF9kc2IgKmludGVsX2RzYl9wcmVwYXJlKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlLA0KPiAgCQkJCSAgICBzdHJ1Y3QgaW50ZWxfY3J0YyAqY3J0YywNCj4gIAkJ
CQkgICAgZW51bSBpbnRlbF9kc2JfaWQgZHNiX2lkLA0KPiAtLQ0KPiAyLjQ5LjANCg0K
