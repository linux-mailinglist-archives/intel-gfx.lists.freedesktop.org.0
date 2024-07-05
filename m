Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB98928D0B
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 19:28:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A7A810E1A1;
	Fri,  5 Jul 2024 17:28:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e8wioZr6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41B3F10E1C4
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2024 17:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720200516; x=1751736516;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=YfHO6YMvGqTy/fhwip68mWp7G1JHo/HsPtyoBDVMmDk=;
 b=e8wioZr6Z24f1y+EiigSC51703TDtfZCDt8oDfJ/1yrJWLinNT1aJMYc
 OOxaJXXBQUlD20L31EW1K1zdT8z+AFwtZDFhFaxcBamSOtTGoHhU6PwJx
 2UT1EgU6WWa7OACKs3XIXvxhaskUwrdTdX1KsN3dddVYo+WYNL0dFVR69
 HhKEd/JD+izAQjfgw99oYdxnBe3xl3eWSQQPqRDKeEdGvRo0uOTAOVXbG
 42u4Ksdt87CgAOpttqZeOlI8X4OLR3F/TUaqLXc/9KUGBUl3CXpYMP5pk
 Op7XAEvEnS7rHVWChTly6DWKwFQwE2WiejERX5UwnK/ZXhVCprfNgRJpz Q==;
X-CSE-ConnectionGUID: nVcvP0OoTluhUnFex8KI0g==
X-CSE-MsgGUID: GFATRQ0TSI+IceYZMpkHBg==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17450696"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17450696"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 10:28:36 -0700
X-CSE-ConnectionGUID: OwruzCE1RcmSz1gNZE5epw==
X-CSE-MsgGUID: d0nMBnX4RU6dDH45MeC6yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="47577579"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Jul 2024 10:28:36 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 5 Jul 2024 10:28:35 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 5 Jul 2024 10:28:35 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 5 Jul 2024 10:28:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=heMCr9hTNrRKKDN1p1Mrh4kI3dtEUegXCKNV9vu37WeQ9YBndJwUI6Q6Jm30bH0RNMCrnf3t9IIvAF/9ubtwY0+o2s0ypb6jY+EZbu3nA6LFZWIk5Ui9rEFEpjmtRL4ShgGs/iqZweABfPIdb2EmsXrIERB5atuYwaHiFq+3DmfcIIQyuPMMcFfiIs8Aj6dwnlWwq+Gz39RxmghQ8WE0rUP3Zl5ntCLkDdj7S+NpS1WzDPqSc7/KpHGcj4PMIjv3wt73t0KqTrXrCrsaxnjjhLRQzSgm8IiAtqifuhQT7GBJ8eB6x76BNqLjFHxce0nE9fom6aoRmMsxMY/tBE6u0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YfHO6YMvGqTy/fhwip68mWp7G1JHo/HsPtyoBDVMmDk=;
 b=ZkbSSETndrUPwK4EicTiaDwFWqvstxCII7T2/i2zZ3IkhlMDlJ0elJfX0mP8nO6DodctfEI9Ttfi3WBxN53EmmGHcHEU+9MN/hKZaJ0Ojg0WGA8zNkqgczBQBOOHOoyC+dYzsJTgI89/AXwR3vGx5mUA+0dargFVcQe15wmG9zqKdD1gAysa+gkjVrj0iXeoRaJrC0y6ltjCm/3FQ3rodv+7jzA6lyCkcUffe+CRUFq2NxqzDKY7dNKuNfJr6R+hTaHc5oNrwrK0QY44dhwVLHobY1fJ3mS30gDKqFCt7HEU5qII4ERHhQTbwZcH/NeyiaA+t64O4fZbZsM7XfQ/GA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by PH7PR11MB7121.namprd11.prod.outlook.com (2603:10b6:510:20c::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7719.33; Fri, 5 Jul
 2024 17:28:32 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%4]) with mapi id 15.20.7741.017; Fri, 5 Jul 2024
 17:28:32 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH 13/14] drm/i915/dsb: s/dsb/dsb_color_vblank/
Thread-Topic: [PATCH 13/14] drm/i915/dsb: s/dsb/dsb_color_vblank/
Thread-Index: AQHaxmpho1HiBuVsVUKao/0kFNILJrHodHDQ
Date: Fri, 5 Jul 2024 17:28:32 +0000
Message-ID: <PH7PR11MB59811E9D1D7B6E4196532717F9DF2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-14-ville.syrjala@linux.intel.com>
In-Reply-To: <20240624191032.27333-14-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|PH7PR11MB7121:EE_
x-ms-office365-filtering-correlation-id: cd5630a2-cd3d-423d-b6cf-08dc9d17e4d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?MGlOV1dLekF6K1FzdzlFcGphOUs0TzY0WVlNL010UThCL3VjYXZiN01jWG94?=
 =?utf-8?B?RmtldHliU2oyVllQTVFCV2tCYVgvdTN3VjdJaDlkN25FU0FXMC92Y2dLT1lO?=
 =?utf-8?B?cU9jVW1hd2xoeFhJdHNMK05mMllqZHphWHdjR1AvelgzRmEyZU15ZWVMWW1u?=
 =?utf-8?B?Qkd0SFZ5UFdublVZVzBZVjVHN0VRQ0VFeEpTaXY4b3RpTlVHNDV0SHovNzk4?=
 =?utf-8?B?aHEwM0FVQzYyOVd1endZQ1NhQVZDNlhMWFU3Q3ZtMFpsRTFyZUExN0ZPc0s5?=
 =?utf-8?B?K0lJRjN6UVFUTEdmS1B3enA5K2JheGdjVnhlRDhlRUlITS9laE16WTBCRlhR?=
 =?utf-8?B?WXNHM1paUmxVb1lwMEV4cVRUWDJUdnR4Vk5vR0daUmg5dnZkRlYvZVhTNG05?=
 =?utf-8?B?V2ljVGtNVWF5TGwrQXZ0NnJTY3FoYS9yUlpCTEt3L1R4MmZsN2V2OStnSkRB?=
 =?utf-8?B?V296MjZudTllRDVKcktYZEdxT0xObGJITHNpTmd2WEI4TFc1ejRObmdYL2Y5?=
 =?utf-8?B?SzBUZE9ZTTV5dU5ReEowSVJvMmxlMXg3VWNCeVhOczVaY3ZDa2NVK1JWTkZq?=
 =?utf-8?B?b2ZWL04vV2V5WWZHWmhHbTFycmtuUWI1bExmbEpnUFZOb1h3N3RHaE1UUS9B?=
 =?utf-8?B?elUwUS90QkxxdzREbWkwMTIzTlJlbm42RzJ5SWVSdWh6MW56b1d1SS9NSWcw?=
 =?utf-8?B?bUsrVnBUTGVlcGMxb213UW1aZk00UEVYNnBMTjJzQW5Dc3g4cHltNWxtNTlv?=
 =?utf-8?B?ZStoWWpBSE1Ec0ZxMnNjWjBWS0RYdFpCTEhBOWo2dmNRTDM3TTBRV3IwK29m?=
 =?utf-8?B?b1E3cW5SKys4d1ZiQUdhWTk1TjBzV3NJbURLZjJUY0hLaUtJb0ZVWjVyeDZU?=
 =?utf-8?B?WFpaYkJ6bHNIMVR1UStyYWE1Y0h0bjBLMUVOazdOa2tPZjdMRmFwVkhJbjhI?=
 =?utf-8?B?ZGpkbDJKTXJwekN2K3l2VWxnMHZoWmhRNStiaVkyS1k5Um02Ky9jQUd6VUdX?=
 =?utf-8?B?SEViSW9WTkZrUy8zbFBNRTArSVBUeHhQYThOT3FJZ01IdmdUeTdrT09iUU9a?=
 =?utf-8?B?a2prUVN4eUhOTktSTUNYUysvbHVhOU15dS94VlNvMEV2VDZPMnovc0RoV2x5?=
 =?utf-8?B?ajBtdFZldmh1RUNRS1FoSFNRbGh5eHpZQTZudzRENmw3V3pCQTNYZ2tIcnlO?=
 =?utf-8?B?ZlozTlVyNFFMS3FmK29HVVAxaFkwditHSW1xbGNCeEZvTEpTM1lFVi9GQkF4?=
 =?utf-8?B?UXdDbUJSczdvbG8zZGpvWEpnUkFJd0IreThTM1Q1TnJKa3BEU2JQb25HNnVP?=
 =?utf-8?B?cFE3SlBxdHFrQW1WRzNST2t2VGsrWUx2Sy9PbzRWSVpWbStBN04wazlIVGNq?=
 =?utf-8?B?Y2hjb2RTZStJa1FpczJNaFhJY2xjaEllNHUwUXJTOWdTNzlGTHNDVkhnWlZl?=
 =?utf-8?B?TnpMUnVMeklCOFNMY0NKNEtLUXZ6alNxd3QyWWxRcDh4anNjZnVzZDY3dWlH?=
 =?utf-8?B?Y25HTWtDaGhNeDZ4YWUyUmRRakpRTGtpZ296Wmo1TzRsNDhRcEh5WWJ4N2to?=
 =?utf-8?B?SVNCWVB6SVNXaEt6TzRWazZ3RnA1T2o5UzBhSmFlWk5ONWx4a3pwWHcyUW1u?=
 =?utf-8?B?UitwTndFR0hnK0NjaW5Md3B2eUlRUHlDWlBiQ2l3bUFXeHYzY2NxaEY3N29p?=
 =?utf-8?B?MUdnc0JVQ3BHTnF0N1BFb3Y0QmJENlFsMGtnNkpuTWZHNnB3aS80QUFYQzdv?=
 =?utf-8?B?cDI4dDUvTWo3SklXRkl2NjdxQ1BXaVhxTm9NYTVPTWdCUS90TGlIQTdkK0hV?=
 =?utf-8?B?bVZZb1NScGpaSmN3MkRxWlFJejdYQzh5eUJZYlRNUWJRRWtka1NBVEpPaHhK?=
 =?utf-8?B?aVNxWVRXYUlFQU9hMnRUVWxNVWRndWkvbzQ4MmtVS2F2OEE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?NVI2UG1zaWhWcjNjWC83SGZxWmJuRmFheHgwWVJYSy85cHdJYmhXRDMwNlp3?=
 =?utf-8?B?ODFxbTVvK1NhQm9RUVd6MjB1UjJ2eHpQeDloYXhVTzNvNjFIa2d6U010bm84?=
 =?utf-8?B?dXp0N3RJZ2tIUU5Td1dicU5odkZxNzI3VkZJSWNySCtKR2Nsd3pNblJrNWdu?=
 =?utf-8?B?aXlyVUIrWHZqOEt1Z01SR2lQRThqeEVTbm1VMVZqbzZCR2JyQ1NzL3d2ek5V?=
 =?utf-8?B?SHJEcS9vR3ZhbXFCTFBOekM0cFN0cmtXL3QyZ1l2SEhtYXBuMkhta0J2Z3RT?=
 =?utf-8?B?d24xcTlQVmFKcldscWRKKzF4S1J0UG4vdjFMVHByRW0zeEl3Z21WQnBUOEVm?=
 =?utf-8?B?Y2RzY0JLZGcxdzdrQ0k0TENzbEdYbG9wN2RKN3AzVkVWMlAyZkMwS3dvUlFW?=
 =?utf-8?B?ZlJrV3JsSHkvdTF0Sndkc3RCYmFQS2czd0orc1FkU2gyZGU0bXJmby9mYVBk?=
 =?utf-8?B?OGh2NkRHSHcwR1RGU2w1QW5SWWFjby9WUGpER05tcXpNa1JyaU1sWEhkdlBF?=
 =?utf-8?B?NGlKRHdEYWtCUXBYem05cXVTclk0ZDFyNm9KK3F3MVhYV3BTMXBnY1JGanNa?=
 =?utf-8?B?VnF3T05kczVjc0k4akEzcTJ5Z0QvRlBuZWpRclFSS2srQXFGUlFaZzY5KzFp?=
 =?utf-8?B?OWptZ1NkYkxqZGtHYmZzanF1Vlo2K0J2MHd0L0JRTWlmNWR4S3JEeVcwMXd1?=
 =?utf-8?B?Sys5NUE0b21XUExkWXpzZmZDcFJGcDZYV2NqZFR0Y1ZDRDRON1o3Y3BKV3ll?=
 =?utf-8?B?K2UzYjR1ZU16djBWdzUwTHByYnNQSC95ajRBaWhPYTVmeEptRVkyZmVuemxi?=
 =?utf-8?B?c1lRWnh4MTNQb3Q1VjVUSk94OW9UNmRJNFI5dXB4cmE5M2JGYTM1Q3cwMmVV?=
 =?utf-8?B?bHoweFU2Y0JOSkg3WC81WUp4amlUUlUwQktkUEpXNjMyMHAreWw4RU1RNWdI?=
 =?utf-8?B?a1NBcnRXMEtxNWVDaXNZYkZ2WVd1V1prblB1bjNvVVZGakVtTkFEWXhreWYr?=
 =?utf-8?B?SG9KMFU5K0sxNkZURDFSaGp0emppaVZYTElsM2RwYk4rak4zbDFaL25peGpM?=
 =?utf-8?B?RGZmM3JrMDRMVWxGaitRSndxQ1pPeldqdkVtWFpvUytqVWlma2FTN0dMRkVn?=
 =?utf-8?B?bU1SMDQ1NUpQVndKK2h4TVdNc1J2OVVhamVHL1l2SlR1d3FNaFpxMFNkaFV5?=
 =?utf-8?B?Y1VzbGpDbVlGR2FNVTlGVGhFVjlzaXNGNnZ0YUlEQ2xmQUJWMHp5bER1VEJl?=
 =?utf-8?B?bXI3K1RyajcyWnRTNm9aREFUbXJrNjJIMURHc2RuNmN1SGNyKy9DY2Y4STlr?=
 =?utf-8?B?cUZ3WTZsMWFaYUNtYk83a3RIT2F3ZnVpQzR6U0d6aHFGTmdOT29rOFBDdHdB?=
 =?utf-8?B?akhFMmZaYURPdGY4OTJSYXEwOTJMd3A4cjgyalY3UGhqT2ZlTkJZWEhkVlBB?=
 =?utf-8?B?a1RRVGdSN3dGQVhSaE91K1FMYUkzZmxuV293cFQ1ZG85WVNaUnhQNC8xdW5V?=
 =?utf-8?B?b1lIMWhxKzN6c1pDd1pzWHhLZWdnZnNOOWd6YTJqMlNpV29XMzM4T3VLcnpS?=
 =?utf-8?B?OVg4NzB5UzhlOVVwYXI0MS9GRnJaNFc1Q0ZSbElHTGxGN3pVUWQ1RUZiTGpH?=
 =?utf-8?B?STVheWlsczAwajU5VmZ0bnFldG1WMUlPeGwvS0ZqSkVaRXoxUlphTFZHOWJj?=
 =?utf-8?B?V0FuL1MzSmVsdEtqRVFCMDFZUm9pWTlobStvalZqeE1IRVg3VStDelhhQW1I?=
 =?utf-8?B?R0lwNFZMenVZQklnc3ZuQ2NvRkJ4UGxRMWwzTVAwNEtreEQ4cG5QRW10dWpw?=
 =?utf-8?B?VEtFTDRBbC9XQzB6Q1g1TktvOFAydUt0d3dpajdhRm5tdE5GUXVvb2tzTzA5?=
 =?utf-8?B?MkdvUG0wcWNFNG1IVTNIanB3S1BPUFpFMndRUXcrTHpPdE84UGNBQlFTSHdE?=
 =?utf-8?B?RUl3YTVjc1lTc2JiL2xLTk16a1hPWU1maGsyWUtKSC9XbUJ6cnJybWp5SnMx?=
 =?utf-8?B?cXc1OEZhWEZiVzNpTUh1MHcyTDRsdW1EaTlLc091YnErbmRydjA2OXRDMDFM?=
 =?utf-8?B?NW1GTURXRE5NMkNoOVlCNjV1VGFNa2o4L0JyUFV4S3ZHZ00zZFNOSEVuc3Zt?=
 =?utf-8?Q?hDJPh/t7YJxy9C7JgZX0TgCQ6?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd5630a2-cd3d-423d-b6cf-08dc9d17e4d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2024 17:28:32.9025 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eB0QMcJ+vHfjjuCYOM7nPHFa9vQi90tiU/zudZbO232jfg3II1fXc6B14ysSYFXqr6X01hgtWK+3JsJZBZSZwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7121
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
PiBTeXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIEp1bmUgMjUsIDIwMjQgMTI6NDEgQU0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIDEzLzE0
XSBkcm0vaTkxNS9kc2I6IHMvZHNiL2RzYl9jb2xvcl92YmxhbmsvDQo+IA0KPiBGcm9tOiBWaWxs
ZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gV2UnbGwg
c29vbiB1dGlsaXplIHNldmVyYWwgRFNCcyBkdXJpbmcgdGhlIGNvbW1pdC4gVG8gdGhhdCBlbmQg
cmVuYW1lIHRoZQ0KPiBjdXJyZW50IGNydGNfc3RhdGUtPmRzYiB0byBjcnRjX3N0YXRlLT5kc2Jf
Y29sb3JfdmJsYW5rIHRvIGJldHRlciByZWZsZWN0IGl0cw0KPiByb2xlIChjb2xvciBtYW5hZ2Vt
bmVudCBzdHVmZiBwcm9ncmFtbWVkIGR1cmluZyB2YmxhbmspLg0KPiANCj4gU2lnbmVkLW9mZi1i
eTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCg0KUmV2
aWV3ZWQtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPg0KDQo+IC0t
LQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hdG9taWMuYyAgIHwgIDQg
Ky0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9yLmMgICAgfCAz
NiArKysrKysrKystLS0tLS0tLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2Rpc3BsYXkuYyAgfCAgMiArLQ0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oICAgIHwgIDQgKy0tDQo+ICA0IGZpbGVzIGNoYW5nZWQsIDIzIGluc2VydGlv
bnMoKyksIDIzIGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2F0b21pYy5jDQo+IGluZGV4IDc2YWExMGI2ZjY0Ny4uNTVjZTcxYmU0MWVj
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21p
Yy5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMN
Cj4gQEAgLTI3Niw3ICsyNzYsNyBAQCBpbnRlbF9jcnRjX2R1cGxpY2F0ZV9zdGF0ZShzdHJ1Y3Qg
ZHJtX2NydGMgKmNydGMpDQo+ICAJY3J0Y19zdGF0ZS0+ZG9fYXN5bmNfZmxpcCA9IGZhbHNlOw0K
PiAgCWNydGNfc3RhdGUtPmZiX2JpdHMgPSAwOw0KPiAgCWNydGNfc3RhdGUtPnVwZGF0ZV9wbGFu
ZXMgPSAwOw0KPiAtCWNydGNfc3RhdGUtPmRzYiA9IE5VTEw7DQo+ICsJY3J0Y19zdGF0ZS0+ZHNi
X2NvbG9yX3ZibGFuayA9IE5VTEw7DQo+IA0KPiAgCXJldHVybiAmY3J0Y19zdGF0ZS0+dWFwaTsN
Cj4gIH0NCj4gQEAgLTMxMCw3ICszMTAsNyBAQCBpbnRlbF9jcnRjX2Rlc3Ryb3lfc3RhdGUoc3Ry
dWN0IGRybV9jcnRjICpjcnRjLCAgew0KPiAgCXN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlID0gdG9faW50ZWxfY3J0Y19zdGF0ZShzdGF0ZSk7DQo+IA0KPiAtCWRybV9XQVJOX09O
KGNydGMtPmRldiwgY3J0Y19zdGF0ZS0+ZHNiKTsNCj4gKwlkcm1fV0FSTl9PTihjcnRjLT5kZXYs
IGNydGNfc3RhdGUtPmRzYl9jb2xvcl92YmxhbmspOw0KPiANCj4gIAlfX2RybV9hdG9taWNfaGVs
cGVyX2NydGNfZGVzdHJveV9zdGF0ZSgmY3J0Y19zdGF0ZS0+dWFwaSk7DQo+ICAJaW50ZWxfY3J0
Y19mcmVlX2h3X3N0YXRlKGNydGNfc3RhdGUpOw0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+IGluZGV4IDdhYzUwYWFjZWM3My4uMjdhY2JmOTJkNjBm
IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2NvbG9y
LmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jDQo+
IEBAIC0xMzEzLDggKzEzMTMsOCBAQCBzdGF0aWMgdm9pZCBpbGtfbHV0X3dyaXRlKGNvbnN0IHN0
cnVjdA0KPiBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLCAgew0KPiAgCXN0cnVjdCBkcm1f
aTkxNV9wcml2YXRlICppOTE1ID0gdG9faTkxNShjcnRjX3N0YXRlLT51YXBpLmNydGMtPmRldik7
DQo+IA0KPiAtCWlmIChjcnRjX3N0YXRlLT5kc2IpDQo+IC0JCWludGVsX2RzYl9yZWdfd3JpdGUo
Y3J0Y19zdGF0ZS0+ZHNiLCByZWcsIHZhbCk7DQo+ICsJaWYgKGNydGNfc3RhdGUtPmRzYl9jb2xv
cl92YmxhbmspDQo+ICsJCWludGVsX2RzYl9yZWdfd3JpdGUoY3J0Y19zdGF0ZS0+ZHNiX2NvbG9y
X3ZibGFuaywgcmVnLCB2YWwpOw0KPiAgCWVsc2UNCj4gIAkJaW50ZWxfZGVfd3JpdGVfZncoaTkx
NSwgcmVnLCB2YWwpOw0KPiAgfQ0KPiBAQCAtMTMzNywxNSArMTMzNywxNSBAQCBzdGF0aWMgdm9p
ZCBpbGtfbG9hZF9sdXRfOChjb25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19z
dGF0ZSwNCj4gIAkgKiB1bmxlc3Mgd2UgZWl0aGVyIHdyaXRlIGVhY2ggZW50cnkgdHdpY2UsDQo+
ICAJICogb3IgdXNlIG5vbi1wb3N0ZWQgd3JpdGVzDQo+ICAJICovDQo+IC0JaWYgKGNydGNfc3Rh
dGUtPmRzYikNCj4gLQkJaW50ZWxfZHNiX25vbnBvc3Rfc3RhcnQoY3J0Y19zdGF0ZS0+ZHNiKTsN
Cj4gKwlpZiAoY3J0Y19zdGF0ZS0+ZHNiX2NvbG9yX3ZibGFuaykNCj4gKwkJaW50ZWxfZHNiX25v
bnBvc3Rfc3RhcnQoY3J0Y19zdGF0ZS0+ZHNiX2NvbG9yX3ZibGFuayk7DQo+IA0KPiAgCWZvciAo
aSA9IDA7IGkgPCAyNTY7IGkrKykNCj4gIAkJaWxrX2x1dF93cml0ZShjcnRjX3N0YXRlLCBMR0Nf
UEFMRVRURShwaXBlLCBpKSwNCj4gIAkJCSAgICAgIGk5eHhfbHV0XzgoJmx1dFtpXSkpOw0KPiAN
Cj4gLQlpZiAoY3J0Y19zdGF0ZS0+ZHNiKQ0KPiAtCQlpbnRlbF9kc2Jfbm9ucG9zdF9lbmQoY3J0
Y19zdGF0ZS0+ZHNiKTsNCj4gKwlpZiAoY3J0Y19zdGF0ZS0+ZHNiX2NvbG9yX3ZibGFuaykNCj4g
KwkJaW50ZWxfZHNiX25vbnBvc3RfZW5kKGNydGNfc3RhdGUtPmRzYl9jb2xvcl92YmxhbmspOw0K
PiAgfQ0KPiANCj4gIHN0YXRpYyB2b2lkIGlsa19sb2FkX2x1dF8xMChjb25zdCBzdHJ1Y3QgaW50
ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSwgQEAgLQ0KPiAxODcwLDcgKzE4NzAsNyBAQCB2b2lk
IGludGVsX2NvbG9yX2xvYWRfbHV0cyhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiAq
Y3J0Y19zdGF0ZSkgIHsNCj4gIAlzdHJ1Y3QgZHJtX2k5MTVfcHJpdmF0ZSAqaTkxNSA9IHRvX2k5
MTUoY3J0Y19zdGF0ZS0+dWFwaS5jcnRjLT5kZXYpOw0KPiANCj4gLQlpZiAoY3J0Y19zdGF0ZS0+
ZHNiKQ0KPiArCWlmIChjcnRjX3N0YXRlLT5kc2JfY29sb3JfdmJsYW5rKQ0KPiAgCQlyZXR1cm47
DQo+IA0KPiAgCWk5MTUtPmRpc3BsYXkuZnVuY3MuY29sb3ItPmxvYWRfbHV0cyhjcnRjX3N0YXRl
KTsNCj4gQEAgLTE4OTAsOCArMTg5MCw4IEBAIHZvaWQgaW50ZWxfY29sb3JfY29tbWl0X2FybShj
b25zdCBzdHJ1Y3QNCj4gaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSkNCj4gDQo+ICAJaTkx
NS0+ZGlzcGxheS5mdW5jcy5jb2xvci0+Y29sb3JfY29tbWl0X2FybShjcnRjX3N0YXRlKTsNCj4g
DQo+IC0JaWYgKGNydGNfc3RhdGUtPmRzYikNCj4gLQkJaW50ZWxfZHNiX2NvbW1pdChjcnRjX3N0
YXRlLT5kc2IsIHRydWUpOw0KPiArCWlmIChjcnRjX3N0YXRlLT5kc2JfY29sb3JfdmJsYW5rKQ0K
PiArCQlpbnRlbF9kc2JfY29tbWl0KGNydGNfc3RhdGUtPmRzYl9jb2xvcl92YmxhbmssIHRydWUp
Ow0KPiAgfQ0KPiANCj4gIHZvaWQgaW50ZWxfY29sb3JfcG9zdF91cGRhdGUoY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpIEBAIC0NCj4gMTkxOSwzMyArMTkxOSwzMyBA
QCB2b2lkIGludGVsX2NvbG9yX3ByZXBhcmVfY29tbWl0KHN0cnVjdA0KPiBpbnRlbF9hdG9taWNf
c3RhdGUgKnN0YXRlLA0KPiAgCWlmICghY3J0Y19zdGF0ZS0+cHJlX2NzY19sdXQgJiYgIWNydGNf
c3RhdGUtPnBvc3RfY3NjX2x1dCkNCj4gIAkJcmV0dXJuOw0KPiANCj4gLQljcnRjX3N0YXRlLT5k
c2IgPSBpbnRlbF9kc2JfcHJlcGFyZShzdGF0ZSwgY3J0YywgSU5URUxfRFNCXzAsIDEwMjQpOw0K
PiAtCWlmICghY3J0Y19zdGF0ZS0+ZHNiKQ0KPiArCWNydGNfc3RhdGUtPmRzYl9jb2xvcl92Ymxh
bmsgPSBpbnRlbF9kc2JfcHJlcGFyZShzdGF0ZSwgY3J0YywNCj4gSU5URUxfRFNCXzAsIDEwMjQp
Ow0KPiArCWlmICghY3J0Y19zdGF0ZS0+ZHNiX2NvbG9yX3ZibGFuaykNCj4gIAkJcmV0dXJuOw0K
PiANCj4gIAlpOTE1LT5kaXNwbGF5LmZ1bmNzLmNvbG9yLT5sb2FkX2x1dHMoY3J0Y19zdGF0ZSk7
DQo+IA0KPiAtCWludGVsX2RzYl9maW5pc2goY3J0Y19zdGF0ZS0+ZHNiKTsNCj4gKwlpbnRlbF9k
c2JfZmluaXNoKGNydGNfc3RhdGUtPmRzYl9jb2xvcl92YmxhbmspOw0KPiAgfQ0KPiANCj4gIHZv
aWQgaW50ZWxfY29sb3JfY2xlYW51cF9jb21taXQoc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNy
dGNfc3RhdGUpICB7DQo+IC0JaWYgKCFjcnRjX3N0YXRlLT5kc2IpDQo+ICsJaWYgKCFjcnRjX3N0
YXRlLT5kc2JfY29sb3JfdmJsYW5rKQ0KPiAgCQlyZXR1cm47DQo+IA0KPiAtCWludGVsX2RzYl9j
bGVhbnVwKGNydGNfc3RhdGUtPmRzYik7DQo+IC0JY3J0Y19zdGF0ZS0+ZHNiID0gTlVMTDsNCj4g
KwlpbnRlbF9kc2JfY2xlYW51cChjcnRjX3N0YXRlLT5kc2JfY29sb3JfdmJsYW5rKTsNCj4gKwlj
cnRjX3N0YXRlLT5kc2JfY29sb3JfdmJsYW5rID0gTlVMTDsNCj4gIH0NCj4gDQo+ICB2b2lkIGlu
dGVsX2NvbG9yX3dhaXRfY29tbWl0KGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRj
X3N0YXRlKSAgew0KPiAtCWlmIChjcnRjX3N0YXRlLT5kc2IpDQo+IC0JCWludGVsX2RzYl93YWl0
KGNydGNfc3RhdGUtPmRzYik7DQo+ICsJaWYgKGNydGNfc3RhdGUtPmRzYl9jb2xvcl92Ymxhbmsp
DQo+ICsJCWludGVsX2RzYl93YWl0KGNydGNfc3RhdGUtPmRzYl9jb2xvcl92YmxhbmspOw0KPiAg
fQ0KPiANCj4gIGJvb2wgaW50ZWxfY29sb3JfdXNlc19kc2IoY29uc3Qgc3RydWN0IGludGVsX2Ny
dGNfc3RhdGUgKmNydGNfc3RhdGUpICB7DQo+IC0JcmV0dXJuIGNydGNfc3RhdGUtPmRzYjsNCj4g
KwlyZXR1cm4gY3J0Y19zdGF0ZS0+ZHNiX2NvbG9yX3ZibGFuazsNCj4gIH0NCj4gDQo+ICBzdGF0
aWMgYm9vbCBpbnRlbF9jYW5fcHJlbG9hZF9sdXRzKHN0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLCBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kaXNwbGF5LmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3Bs
YXkuYw0KPiBpbmRleCA1OTI0ODM2NTFiM2MuLjA1YTJhNjk0MjAwMCAxMDA2NDQNCj4gLS0tIGEv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gQEAgLTc1MTAsNyAr
NzUxMCw3IEBAIHN0YXRpYyB2b2lkIGludGVsX2F0b21pY19jb21taXRfdGFpbChzdHJ1Y3QNCj4g
aW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSkNCj4gIAkJICoNCj4gIAkJICogRklYTUUgZ2V0IHJp
ZCBvZiB0aGlzIGZ1bm55IG5ldy0+b2xkIHN3YXBwaW5nDQo+ICAJCSAqLw0KPiAtCQlvbGRfY3J0
Y19zdGF0ZS0+ZHNiID0gZmV0Y2hfYW5kX3plcm8oJm5ld19jcnRjX3N0YXRlLQ0KPiA+ZHNiKTsN
Cj4gKwkJb2xkX2NydGNfc3RhdGUtPmRzYl9jb2xvcl92YmxhbmsgPQ0KPiArZmV0Y2hfYW5kX3pl
cm8oJm5ld19jcnRjX3N0YXRlLT5kc2JfY29sb3JfdmJsYW5rKTsNCj4gIAl9DQo+IA0KPiAgCS8q
IFVuZGVycnVucyBkb24ndCBhbHdheXMgcmFpc2UgaW50ZXJydXB0cywgc28gY2hlY2sgbWFudWFs
bHkgKi8gZGlmZg0KPiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZGlzcGxheV90eXBlcy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggODcxMzgzNWUyMzA3Li5iZDA3OWNkNzdiZGEgMTAwNjQ0
DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90
eXBlcy5oDQo+IEBAIC0xMzk2LDggKzEzOTYsOCBAQCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSB7
DQo+ICAJLyogT25seSB2YWxpZCBvbiBUR0wrICovDQo+ICAJZW51bSB0cmFuc2NvZGVyIG1zdF9t
YXN0ZXJfdHJhbnNjb2RlcjsNCj4gDQo+IC0JLyogRm9yIERTQiByZWxhdGVkIGluZm8gKi8NCj4g
LQlzdHJ1Y3QgaW50ZWxfZHNiICpkc2I7DQo+ICsJLyogRm9yIERTQiBiYXNlZCBjb2xvciBMVVQg
dXBkYXRlcyAqLw0KPiArCXN0cnVjdCBpbnRlbF9kc2IgKmRzYl9jb2xvcl92Ymxhbms7DQo+IA0K
PiAgCXUzMiBwc3IyX21hbl90cmFja19jdGw7DQo+IA0KPiAtLQ0KPiAyLjQ0LjINCg0K
