Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 300F9956BC6
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Aug 2024 15:23:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC2F410E267;
	Mon, 19 Aug 2024 13:23:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JCCpsdWv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 96E0910E267
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Aug 2024 13:23:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724073801; x=1755609801;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=333enKtjHCRWdpAo7oADOLpJwmZwNr+ZAHsXe0CZyJI=;
 b=JCCpsdWvUhmYTGVHPS4+J5CTjzL3jhoEwI1wi1g+B/bJaMWFB7E/HaM2
 z9PIEmXyFxfJ/j6tfPwriLTcMVJ78lRUrgW379OJBys2UQqKDCtucmZP8
 qw0daOXDlk2lzd7p9ehcejd8Dc3aext47VZ7h0HrrhIDsZD//tYCePFRW
 NeBXODS10C29ECj5uo+1rVbyDxN0OJFfEe48QnME1hchNGE1p40198dqk
 SU7TO2jU0YVWblTGKYMmvfkRlcKVt8yzWpq67h2bQBRMGQq/CncfyBRU2
 BBZyIDjWQerlMl+AdIjmflUHZqi356WgzdR6QdInRfawPM8Ja6ni3vcSR w==;
X-CSE-ConnectionGUID: hElAuNXmSHG+7FHjsCN3JA==
X-CSE-MsgGUID: yP3IwCTTTv2mZxHh9H/wTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11169"; a="21941600"
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="21941600"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Aug 2024 06:23:21 -0700
X-CSE-ConnectionGUID: 6G9tKIHTStG1myAVp1U8/g==
X-CSE-MsgGUID: Pg6KWvCuR6ytlK7bJgPsog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,159,1719903600"; d="scan'208";a="60350625"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Aug 2024 06:23:19 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 19 Aug 2024 06:23:19 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 19 Aug 2024 06:23:18 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 19 Aug 2024 06:23:18 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 19 Aug 2024 06:23:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SsZY3ZnqO74sZ4wIw+2DfYPW9sKrB9PghT3ldFClWI+sh9O9jxJ2bV8ghKObFSUDK/niO0QJHh7mMgKxyEl4y2oyOF5Wdhj3+XHOPC+Xa6HvmVwHFrtXynDdkL6j933DNiwwFZ5+Yem7yGJ/alKBYgiM0pbaYJECbF9bY2vvpwp7vAoy8S5u8kPtsTwD/3vwp+baYD0zfr547xivWiYOqi/OTon7UcgSxTl6DceClezxUxN1Q1qK5tVEWEgLI3upqfOYubK+os4juHxlwQoReeruaDWO78fjtPLbdcJTwHtDXkPsxb1Ut0ARIhjQevKXymt9AxkGiDfdVFHaPyo+Dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=333enKtjHCRWdpAo7oADOLpJwmZwNr+ZAHsXe0CZyJI=;
 b=C4hXykXe6Phc6zLsJoZziq52YznCM2j0Ujo+ztzA2SkiZfXAGjUqV5qeNCczSxfECg6hffaVMNwEUrffPxwsvZQA318czBlqwgpbjPrPrHB8t3VUJmYp3b/T8frh8twshSZknWpq4kLk6MGFLGyQjpPeIUW4wNDw/wF+7IbrsM684aebAuyeEKF2vj31neorLgH3WCCUKTiLLvnBV5Fu2eNk22qN7Gmlk9DKsf3hO8hxLQFd6jqKdndJ5bEi/DxzK7LZkpvnap+FLJUkjkQfPig7+1awkl2nHhabgKJVPatVM6GxNS6snjHn19oqivGqglwmw1swLHG2OLiiLBticA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DS0PR11MB7733.namprd11.prod.outlook.com (2603:10b6:8:dc::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7875.21; Mon, 19 Aug
 2024 13:23:16 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%3]) with mapi id 15.20.7875.019; Mon, 19 Aug 2024
 13:23:16 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Manna, Animesh" <animesh.manna@intel.com>
Subject: RE: [PATCH] drm/i915/psr: Prevent Panel Replay if CRC calculation is
 enabled
Thread-Topic: [PATCH] drm/i915/psr: Prevent Panel Replay if CRC calculation is
 enabled
Thread-Index: AQHa8hnaeJ/QDPYeCk2krey6NUfqiLIukZJw
Date: Mon, 19 Aug 2024 13:23:16 +0000
Message-ID: <MW4PR11MB70547C3352A6EBC62804BECAEF8C2@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20240819092549.1298233-1-jouni.hogander@intel.com>
In-Reply-To: <20240819092549.1298233-1-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DS0PR11MB7733:EE_
x-ms-office365-filtering-correlation-id: e2b9143e-a555-4c11-b87b-08dcc0521598
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?TTVuKzlvWHRxYlNuQ0JkbDZWeEdRM0JlQkxmeVpBcWdnVVJoSzlmRUhTMTZN?=
 =?utf-8?B?MDNWRmFuMjlOYnpsS3dLYlhSL2Q2dkpHL2drdG1kYXZESW41UUx1bE0zWDBG?=
 =?utf-8?B?WGc2UzdqZEZlZWlzSDl2S1dEVmdlVDhMUkw4bW9ZRjVDZUovVGdLdmV3OXpO?=
 =?utf-8?B?VktmV3Aya0JvWXgwZlpQWHA4dGdoeitWait4enV0UkI2UkVRem8rWWx3bkRJ?=
 =?utf-8?B?TkYrcUEvM25RNUN4Zm5HbHV2TmIzNmZwa2l4M3JDWTVlbUtkYVpxRk1VazVU?=
 =?utf-8?B?UUpacHBOWDRha3lRUEFJWGhxOTNoKzU0dlREbXRucllGTjg1TUNNU1N2Risv?=
 =?utf-8?B?Q1JIQWxCOCtsaFcyczkzV2VDVXZhbk5aZzR1VEhMYzRsRFpJanB3Yy9oRmpk?=
 =?utf-8?B?ZzVYMW11TDRwMHFVOFBkK3dxZnI4YmJabUJzdEQvOHpYNmszUzVodHNnd0hl?=
 =?utf-8?B?TGVwMFNpemR2MWhkR1ZPc21DK0VrUGtBbGNPQjc4Zk1xMlVwcUh3WEIrL0hO?=
 =?utf-8?B?Y3hQMWdKUVJIcktzdlZMYTh1NVphSDI0SkdaLzFEL1N2bUc1TFg5ZDhEc09B?=
 =?utf-8?B?VTJTM2hrUkgxWnVOU3ZJV3RTTWVjUVhLZXpSUTE2Y0wvNXBzZEhORndJd2hi?=
 =?utf-8?B?djViZ3NsNmxNWTd4eUpzcDFFUjBQZmNGdGZyZWRKanZhMXNuRndXYWw5dkx3?=
 =?utf-8?B?UGJkdXNCOGprQUNxRC9rVWJadHdwSkNnelQ2Y045RGNkMEtQb2Z1Q0txVHg1?=
 =?utf-8?B?NkJyTkp2cXA5cFFMRGJYRmE0L09qZHRUUEpUUDJFcWtJVUlhalVFdnF0MHI2?=
 =?utf-8?B?dkc0eDNKOHlJVC9nZTNxR2RoeTB6aFlSWmJwZVlVVDB5eDRQL3dZZUo0eEhO?=
 =?utf-8?B?SGplYTBYODZudFg3eTZ5L3M4ZzRmK2hGbTFwRFBMbXFSUzBLWGZGcG84b2NV?=
 =?utf-8?B?UDArSWk5U0gwTm5pYkI4TVdVWTRabVI3QVBIZnU4Q0kyNDVYNXYrMWVQNGg2?=
 =?utf-8?B?N0JnZHVIUGNiVmJJSExCcDBkSi8rQlFmOFJ4b2dLci9adnMvTEh1V0plOFJk?=
 =?utf-8?B?S3RodkwvTEdMYXd4V3l6d3dmOW16WXhyNjhlN29QR25iTEw5VlFvbnpEWVBJ?=
 =?utf-8?B?clI4UmM0Ty9vL0Z0V2VERmhiZkNSRlNuaHlXcWhWRjVpaDZoSGJjYjhBZFJC?=
 =?utf-8?B?R1FmUDI5eEpJL1RzMHoyQW05SW1Hajlsd3BDdGtuTzYvekgyR0ptME5UcEta?=
 =?utf-8?B?UUY4TEpQTzVVZmN0QU5kVmFOQ0pmM0w4MkJCU2dUYmRVK1BKaXJSOW5nY2Er?=
 =?utf-8?B?TTAvK2pndkdKeCtzclluTUVJWm5mekphN00veWJ6WDFMT0I3RFRMVm5Vck5K?=
 =?utf-8?B?QTE3UTJSR3dtT1hza0RucDFNS05ab2pKSFljR205cXUvY3hhOEtEcjFMZzZt?=
 =?utf-8?B?MmFtV1l0WlZpODZxKzE3NksrMVV2SnpSMG9kSVRWTndjK3FLTG5jTmtNVkxI?=
 =?utf-8?B?RzEwYVIvaW5nVDU2ZUVpbVZSM1hmNnJRY2ZZYmxBUnRNbGtsZTlCNnhIRzhF?=
 =?utf-8?B?TDZMV3BqWVB6Y01mM1lzZXBJRVBWQTR6bCttcSt4TFJsRTJnbGJqQ2dkUlNC?=
 =?utf-8?B?R1JQOXFtdFcreWxEekdXbGRjZHI5Q1pLa0FteUZjR2RUSmR5blRLWDgxZVFu?=
 =?utf-8?B?akl2VDZDV0FLZXhHOWY1cnBpOUtDM2FQV0hYR1IzU055akk2MUtHZ1hzektR?=
 =?utf-8?B?Z2xxdGw0N0Ird0xYMkt1NXFGb2JLZGZkUDBTdUVnVnpJSHpsaEFUVlFUcmsz?=
 =?utf-8?Q?PvjtGuKMtDiTbPuZyYVyqgolThRpnNx6fCcYk=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aXJ0bDF4L0ZaNzMzUWhYYjhpbkpEQTNWY0NweCtERGNTOHYwQ0RmeXhuVGxy?=
 =?utf-8?B?N3RwSGc3dzNuOHhtSSt6NjZGYUV1OUxkeFM2OGlsYjY0cDFhMUlxeWd3NThQ?=
 =?utf-8?B?K1Z1eGkyNW0yMEcvaWVySFlpbW1hall3VU45cUdGclQrcjVXejhxd2xPakVG?=
 =?utf-8?B?NnA3c1k5ZGVjTDZIQXNlNlNrb3I1K3k2b3MvUjgwc21XUUF6S0wzMW9hV0xX?=
 =?utf-8?B?Q0x1bVFqU3FHZ1VweEtESkl2NTZPWFBqSldKWDZVZXRqRm45ZlQyNHM1S3dv?=
 =?utf-8?B?alhzVHArNmdtLzVCL0xhaXdxanFYMmZZT0Jsd0xsK2NOcit4K1NiNHRUZnpq?=
 =?utf-8?B?TzFUTDErM0VSeGU4d01hclA1Z1o3QmEvb0lwcTk0SEZmdHd0OHd5VjlMRXBO?=
 =?utf-8?B?VE94bjcySXMxb1dWbjZuSlN3S2hwcm5LMklFbjZ4MUtIYi9oUlRZZ1VuRHdw?=
 =?utf-8?B?MnJtMFV1Ym1PWDMrcHlENjNia00xM3hjL3MvQnIxdGZITmRvWmZoYU80ZXRs?=
 =?utf-8?B?NjhBOUx4akg2WldqZExWeXN2WkdwS0JEWlFtaThlM3dQY2VNd1dpcTJUa0VN?=
 =?utf-8?B?YWprS2dJbmFrcHNPQjVJMEprNUJYMGtoNTd6OERpaFplV1ZLS3NnRURhblo3?=
 =?utf-8?B?T29aMjZndmZucXNXOWI3TGhoQjdjTFhsUGNieUtRcStVLzIvZTZOYTRxV1RG?=
 =?utf-8?B?Smx2Unl0RTdBL0FmNXZwaFAxUjE1eUFlOERnWks3ODQza25iNTBJK3BDeTRt?=
 =?utf-8?B?SjF4OVNybk5kUEFYdEgwRXY3Y1loRDh6enBHY2l5NVJaUnVubVlwTmRZVFg4?=
 =?utf-8?B?eTNKRWJOSEhOeEE2R2FQVkxkU3NLT1VYa0w4L3k0RlY3T0tKOTd6M0t6SkU0?=
 =?utf-8?B?SmpxclFXYUM5NjJ3Ykx4THZhOHlacXpPeXo3QXJDakVFY3hiMHp6SERwM3FH?=
 =?utf-8?B?SVZhV3h0YWdEMmhGdk8xSXdFMmdHSHVGcVlnb1hRM3NSU3RaREpzengvSmNE?=
 =?utf-8?B?NHdDeFVyYStQZU9vK3FnK242dXkzYkVSWkF1SHEvdm5HMnZsbVJzSFBWTHRz?=
 =?utf-8?B?UTJsWXhNT25mZm4wNlkrcGlwam5Nd1djbm5GRzhmUkxXOE8rSTJrZC9sRFhq?=
 =?utf-8?B?WXlVRkRsQ0lVVFdkMkllRDdYVFIvUFN1RUtVbEtmaThHbDl1ZVJtR1Vib2hR?=
 =?utf-8?B?cGRvd1VQK1I2Y2lwaGVrMjBQdmgvOWpSQ0FDTjE5NzVEKy9Yelh0V2ZyUExs?=
 =?utf-8?B?akc0eU5NcDl6Q05aOEJtYmd3MEZBZzhXQlQxYWpJNU5TVVVHSmgzUWowTkEx?=
 =?utf-8?B?bXA2ZEFIMXdLSStGeWdPUitwUUJQWTVSbUxnUzZacnprRXpEUk9Gc1dDYW5n?=
 =?utf-8?B?VUJqMmkwcU1QWUVlejlOVFp2Ulh1ZEdWWTdJYkdibHNLN2dtWDNaQ2dQa1NX?=
 =?utf-8?B?QzJZT2tNeU5tcTBMQlpLUEU5aFdDNU5qNCtaeWpFQU1nZE9jcU83WTU1MStz?=
 =?utf-8?B?ZjllR2ZvSHVMUlFEOGo1L3dyYUZNNjVHS0xCTmVvRkpJWU5pcE95dXJUbjdn?=
 =?utf-8?B?S1pRdXVTMTBWeXBFQzkwTHhwZXhZUytXR0QvaHZkL0R5UVp4Y0tvT2UyUXdw?=
 =?utf-8?B?Q1N2MWlYYTdubTRGcGNyMWpObjZWWkxoRGl2Qk1yalJSSmVQUEF5K1h1NEw0?=
 =?utf-8?B?emphK1NQL3M2VS9wL3BkNks4YWNjN1cvdGluN2ZXVDBLVlowcEt2L3d2c1Iv?=
 =?utf-8?B?OHVML0pxVHhhNmNtTHBxVTZHcEp3T1h3czFvaG52bVo0ZGdoaStONGpIaW03?=
 =?utf-8?B?eDM1QUxwUmJQdnFmRFovcjZSUWhLZitwMGozcjdydVhFM2U2dTRhVFJIakF6?=
 =?utf-8?B?ay82Q3pBWXdwQlNCZkIrVFpuTkhqeGczeWJqUWNrSFBwUVlWMGllMG1XVWFN?=
 =?utf-8?B?QlVnaG1DYXRPZXlickdSRjNtZ2FFNHFZOHg1VTB5KzVXZ3B3OTk3ejJpWDVM?=
 =?utf-8?B?aTFWT08wRzRwZHFtN3d2WEh2YXB1U3JldzNlNi9wUU84SEpudG9kM3BnaVN0?=
 =?utf-8?B?dFlZSnd0NzFXWVR4LzJkR2tZTFRGM2c0dG1MZlREZCt4U2Jaa3JUeXJKUG9T?=
 =?utf-8?Q?aZBJmdDS368Kkni67duw+IUfd?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2b9143e-a555-4c11-b87b-08dcc0521598
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Aug 2024 13:23:16.1425 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r3gOqr4SR+tz8P0W4r6rDVIJmOe82hCFkgaBI8yK0Opag5eFN0iHBpkzrsbOEKyytKXkTDja3WEKoA8776+Yuw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7733
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBIb2dhbmRlciwgSm91bmkgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gU2VudDogTW9uZGF5LCBBdWd1c3QgMTksIDIwMjQg
MTI6MjYgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IE1h
bm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0KPiA8
bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSF0gZHJtL2k5MTUvcHNyOiBQcmV2ZW50IFBhbmVs
IFJlcGxheSBpZiBDUkMgY2FsY3VsYXRpb24gaXMgZW5hYmxlZA0KPiANCj4gU2ltaWxhcmx5IGFz
IGZvciBQU1IyIENSQyBjYWxjdWxhdGlvbiBzZWVtcyB0byB0aW1lb3V0IHdoZW4gUGFuZWwgUmVw
bGF5IGlzIGVuYWJsZWQuDQo+IEZpeCB0aGlzIGJ5IGZhbGxpbmcgYmFjayB0byBQU1IgaWYgQ1JD
IGNhbGN1bGF0aW9uIGlzIGVuYWJsZWQuDQo+IA0KPiBDbG9zZXM6IGh0dHBzOi8vZ2l0bGFiLmZy
ZWVkZXNrdG9wLm9yZy9kcm0veGUva2VybmVsLy0vaXNzdWVzLzIyNjYNCg0KUmV2aWV3ZWQtYnk6
IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTog
Sm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYyB8IDYgKysrKysrDQo+ICAxIGZp
bGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggOWNiMWNkYWFlZWZhNy4uNTcyZGNkZjc3NDUz
YyAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
Yw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBA
IC0xNTg2LDYgKzE1ODYsMTIgQEAgX3BhbmVsX3JlcGxheV9jb21wdXRlX2NvbmZpZyhzdHJ1Y3Qg
aW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCWlmICghYWxwbV9jb25maWdfdmFsaWQoaW50ZWxfZHAs
IGNydGNfc3RhdGUsIHRydWUpKQ0KPiAgCQlyZXR1cm4gZmFsc2U7DQo+IA0KPiArCWlmIChjcnRj
X3N0YXRlLT5jcmNfZW5hYmxlZCkgew0KPiArCQlkcm1fZGJnX2ttcygmaTkxNS0+ZHJtLA0KPiAr
CQkJICAgICJQYW5lbCBSZXBsYXkgbm90IGVuYWJsZWQgYmVjYXVzZSBpdCB3b3VsZCBpbmhpYml0
IHBpcGUNCj4gQ1JDIGNhbGN1bGF0aW9uXG4iKTsNCj4gKwkJcmV0dXJuIGZhbHNlOw0KPiArCX0N
Cj4gKw0KPiAgCXJldHVybiB0cnVlOw0KPiAgfQ0KPiANCj4gLS0NCj4gMi4zNC4xDQoNCg==
