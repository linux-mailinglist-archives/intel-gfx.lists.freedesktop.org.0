Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E8B9B36CB
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 17:39:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D402810E50C;
	Mon, 28 Oct 2024 16:39:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Puctqdb0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A910C10E50C;
 Mon, 28 Oct 2024 16:39:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730133579; x=1761669579;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=dpuVzo3AiEL04m+wXPhzVHEpPyWkhI2u5hwi1ytxJpg=;
 b=Puctqdb0xWbo2Dcpt7ha05Rs/0eOrD95xv/1B9E+fF5EbEjcLRFmn9Wn
 SuU7scR0uZ+7WEOgvgyzDWmvGnXc6kfWzKUT1Y36NXZ+VOwHyTFvsB3P7
 4e88XZ8NMhfe8SZu8lezTqiQbdlMLBtjqsQuJa5PRq0LMurT+UYzjsC9D
 ctMPma9lAwNirdawvJCRV/0CuKDUeene+VZVVnOfoI/+czgNBnqtx3ZBW
 2AKE6FcCnePUU64vw/+WtSYvMEd5E4s9TA/rkoUvptrPPvNUFfnFp9fsy
 zauPTD65KQZdwX2DJofr55A94RBdMStyWcFmjk3wpQ8zw4cQJGrGm7/PK g==;
X-CSE-ConnectionGUID: HEkPWvecR+Oy73qhzGEvxw==
X-CSE-MsgGUID: 0pH5SMZvShODJL6e9jDZ2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11239"; a="17373033"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="17373033"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 09:39:27 -0700
X-CSE-ConnectionGUID: J+g6MDSNRoiRMVhs2ZFC4w==
X-CSE-MsgGUID: vdn9FKvRQ32POV4qNm5teA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="81286672"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 09:39:27 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 09:39:26 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 09:39:26 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 09:39:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ci4ry01URP5Au62UgKIKIv2OQviPkCcyl6vL351qprkTT+iV6nuD+uPo0J64SnOV2ugzAnZ29GVDfeqkaX9oY6BcdH4HQu3GNKOunEhip2QMxb4Ozt2lwNMBVAlPnAviSUpz9KDFjCYpO4hiddGt4/ODjLYip/X4zwOVjskzOQaE+ZBE9TrpJgLGTQcg4dB4oMSSYXV94g/sACsBQxvsxRhE3x3nsvy+W3/UGUmlFmrq31fXukPEZ+N9oeFvxYw5TK7ySkGtnvsmDZAu3d6JyZYgsaKuwU8JoKUMPL8AkMJ+fyPjCwM2e9NP3UCJhLexwEza3vNGFx5QHKHhruvPJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=26qK3EQovr7AGY37WCX5Ti2GYLO8pMsL4Qd4kx0iKUU=;
 b=ZTz+A+zjMw1f2Y3symfEBjArUkUZM/aDijmr6QA4e5l/AQU03TQR/EHtGURkDGI02lLTE3RTdLpdwKhwUfNlEpRh+08UvPy0pDkDBC/Cm9A5+oIuPllcKwiveMN2slyFP3ffcuLtSO4CZGa2QgT5hFacOGT4F3qim1E7dJgyg8RH91ZcT9OeFn4pHR4/xkYk320/NB0otdr0z0sjrHyZcWFNszHJGSl8e7e3TlNRGzt8f6hWV9rv4F043Xg7EFZoYzkZ9srk6HnzI/hcdiEq4drbzrGC/pN7u0SfpXMlXpZKZjolUHSAsJW6kieeBYFyAE6QiXxtNRSAoEkve0Fcow==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by PH7PR11MB6331.namprd11.prod.outlook.com (2603:10b6:510:1fd::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Mon, 28 Oct
 2024 16:39:24 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8093.023; Mon, 28 Oct 2024
 16:39:24 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20241025204743.211510-11-clinton.a.taylor@intel.com>
References: <20241025204743.211510-1-clinton.a.taylor@intel.com>
 <20241025204743.211510-11-clinton.a.taylor@intel.com>
Subject: Re: [PATCH v5 10/11] drm/i915/xe3lpd: Power request
 asserting/deasserting
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Clint Taylor <clinton.a.taylor@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: Mika Kahola <mika.kahola@intel.com>
Date: Mon, 28 Oct 2024 13:39:19 -0300
Message-ID: <173013355966.3514.9448225659878073523@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR04CA0309.namprd04.prod.outlook.com
 (2603:10b6:303:82::14) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|PH7PR11MB6331:EE_
X-MS-Office365-Filtering-Correlation-Id: d8bde153-1c1b-43d4-3a77-08dcf76f148e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TUt3RUVISGhvL0lJbnU2UVNNMVd4Y0NuYXRNalRwQTBRb25wZDdMaStTcTFa?=
 =?utf-8?B?d01xZW1sbml6MnJUNEVqdEhFMmlVWlV1cHE2YUNVaENzTDE0VGdhRmU1c0Rk?=
 =?utf-8?B?RzUvUVhxc0kyb2drUFEwMGNsNUI1UnFhSnNpWUVRVjZzNTFFM0VERUNjbEty?=
 =?utf-8?B?MzRBNjl1a1dPa2xSQ2lwU0xnRzc2Q01BMjVLdWxhbFNKRW5sNXM0SitlbUZK?=
 =?utf-8?B?dlI1dmJRNEJtMCtFVlNGNDk3bll3R1dCODFwaVZEbE1CUzcvQ2ordTFyeXBu?=
 =?utf-8?B?NDFSZFFUa3BsSjNWNjNIc2dYSmVDOWF2T1VyT0FWanV1eER3M0dUby90MFAw?=
 =?utf-8?B?Rk9HUEN2Um52bzhra3Uzb1VkUk40NzFQcHdtTGZBOHVmU3I5TnJKTWxJZ2lj?=
 =?utf-8?B?aTFpZzA3MWcyWi8yYTFuVmEyVUc3a01nTlAzYWdUNk1hMmlScWQwOVVaVmFq?=
 =?utf-8?B?bmlwNVJYYmNUV2ZRNzdIdnNNZjQ0SmY1RG9ZRmJRVlMyYVdJMEM0OXRyclgz?=
 =?utf-8?B?bitwUDk4YVV5WFhSMjA2SFdyUXo4My9EZXFhWlhwaGlHODJOYW1PUnpGbjc5?=
 =?utf-8?B?UWNLb3JuYS8zcmwvU3lCSk9rcnhIL3p1Vng2Tm9lZXhMOFpGMFlzVUhTYWRs?=
 =?utf-8?B?Wnl6SS9hNkVHUExFdzlJbnUzRXI0MkxIZU0wUUNtSm1QamdJaDFGc2IwbUpZ?=
 =?utf-8?B?ekdxVEJxRVQzdnJJV1RDQ2xLTWtrWlhlTTczeEVhd3RTalk0a3VvM3BZYmlh?=
 =?utf-8?B?amZvWXhkZFc4ZzBKdUthd2dFbS9XYWNFdGdybWxOdk1QbVA0SnJicDhxVmxQ?=
 =?utf-8?B?YjBsbzFhUEl2T05rTTBackRXaTlwdmVoOGlyZ0NPT2RFbnBZSXpZWUdNNzJy?=
 =?utf-8?B?N2U5bzVyZWJsOVFoQmVrRWZyaDU5dFRTSVJrVk1vM0dPL3FrTWRVZk9qamZ5?=
 =?utf-8?B?UXI5WS9jeEVTUDVnbFFQc29vbGl1Sm11NGZieVhkeDBvdnN2Z1VPUnpTNHI1?=
 =?utf-8?B?WXl2L2pHd05tckpDQmQybGF0eE45SURBb0gzdmR0NUQvQVA3bzdNa2FhUnkz?=
 =?utf-8?B?SmQwWS9rRklQVmJNaCsxMXZFT3gxbHB3V2g1YnhQcXQzU2Y2TURZdklYTHJw?=
 =?utf-8?B?YkpSSmM2d1loQTRLL0U5bWFUbncwcUZSOVZKUEhmaFZQcHhEVzNCSkRJVFFU?=
 =?utf-8?B?bUd1U1BUVUpobXRFUkZ5ODhwYlV6Z2k2QTEvVXMvS2tIR0dxR3V0VHkzaWZt?=
 =?utf-8?B?UFJIUXNCdVBNamVyQ0JKYThMZEtzVm5HY3ozTkE3bnM4MTlqVmlWRXdORFpY?=
 =?utf-8?B?a1lLNFBPdG9IQVRVZWJ5RThtM1d5Z09JVlJxSGJ1U2YyVlN6N3lJaTc0SFNl?=
 =?utf-8?B?TDg4ci9uRm85c0J6R2NrUXdmeDZmVmExL2UzZnBxT0dYeHJ4UWVCT2J5bXZ2?=
 =?utf-8?B?NEpGT2ppc0h4eVhRSTk5ZDJrNUY3Q3NFMTFzOWVSRytuNWwzYXVZNVJTeVBW?=
 =?utf-8?B?WEJGcHY4YUZNMXVRZWpNcGpCSVdLYnVaOGx3NW9pdkFNeHkwWllOcWZRdkRR?=
 =?utf-8?B?STBHTDBwYTBJV1dTQ1k0dlNtblNYOUlrOFVMM2w2UStiM1d2c1lVcFJ1Rmkv?=
 =?utf-8?B?d1M0dFd0WUZhcVR5eXNxSHoyU3VBYXcvUnFWSlc5NlcvSzRTSGVkWmZHa090?=
 =?utf-8?B?SElhNUdOb2tQMFcrL2FlRnZadFF6NHBrbk1ybEdFUzRvcWtibFlpTDFWUDJV?=
 =?utf-8?Q?+cFyf0jaFRKfS9pylvsmlAumGF6YOkTDUY59LMr?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M2VIZld4MnRmbTRpTEdXdGNKUmt3M0lNcm9TeGhqa3BCa1FVdjk1OVpveG82?=
 =?utf-8?B?dVRyU2FZZUdlMnFyWnVwQ01qRTZqRGMrUzU5WEZBV2c5MWw5R1JyaGdYVSsw?=
 =?utf-8?B?WFBoTHNteGVUZGttRTY3YXdsU0xScGM1NVhFTEtmWTVwUHVEWWFwTFNMUTBD?=
 =?utf-8?B?cEZGd3JKSi9MWlRUbG1QODd0YjFpbFhTZFdxUHI5YmQvODJxdjlnbzR5eDM4?=
 =?utf-8?B?QWJ3dVQyR2pGUWNmWGR3elRJTE4yS3hzQ2VpNE5RSHozR1drWGhxbFc5WnJL?=
 =?utf-8?B?Q0wrRFl0dngvOGdnTnJYTDJ4Rjk5LzRtK3hNNHhJWEJZU2Q4Zm91b011T2xv?=
 =?utf-8?B?WlQ3NjVwbzMrMW5VbzNDUmFRYVAzWnhWUnI2QnNXWGMyaGhXTW9QT0dkUCtG?=
 =?utf-8?B?amluOGVqa2hMdXNKbUNOZnZucUVzYTJ3Q2g2QzBUeXIrYzBpMkkxWlNQRDlM?=
 =?utf-8?B?Q3Yyb25qYVFNVGpzSWpTNHg3a0lRa3hxT1pDWFE0MzVKVENzRDBZZ2ZiQ0M4?=
 =?utf-8?B?dmYrdkI2dUpxU1lLbGN1NlRHYXFRaWY1K29hK01BWmU1VXhtWDdCaXlTc2xj?=
 =?utf-8?B?NWNWbmQxNFZxdzhEQmpwUUZ5S0dVNnFYOUpzdGt5a0ZhYkFiQ2VVMjZ0N2w0?=
 =?utf-8?B?SUdvZGJGTXd2eXFVYllnRURrb2MxNVd3T2R5SjJ6WXRiaFlRTU9DVG84NzlH?=
 =?utf-8?B?S3ArVEtXdi9Vc09Wam9pUFIray9DSDUxU0Q3R3RRRklHYWl4NWFXTGoyOWYv?=
 =?utf-8?B?Yi9KdjhORFQ4ckEvWlVQcXFTcVZQT0pkVXJWb2tQS09zUkd0YzFtNDN6akxK?=
 =?utf-8?B?UCtyUVdGZ3JtQ3k3VWdTQ0x5OVV0aCs3bDdGT3ViRU9rQjdxNVVucmdWV0Rr?=
 =?utf-8?B?dDlLeTNYWHpUb29aYUZsQ2ZLdHgyR0U0VmxaVS93M2JyakQ0N1FwT2xKblZn?=
 =?utf-8?B?d0tsbTZQSDNrUUQxdXFqRUg1U0w2b204Rm0yKytWbVNLbVVjMk5lT1dwTXF3?=
 =?utf-8?B?Zld2dUJiTlRLUHdCQ204LzY4eFRwaHFoRENYVG9JR0g0TUc0UE1ndnltZWww?=
 =?utf-8?B?Zkdmc0h1ODVwLzFoMVVjTE15cThYbHR2NThFOW1yaTZSYmVONWV1VnpWMU9F?=
 =?utf-8?B?RVZET2NrdlI3VUUyUXkrTFNoNDNUdTlYdjdWOGFhYXV5VER0Wm94eFZud3Vp?=
 =?utf-8?B?UzdGM0plSy9MKzh5S2ZtbVdnZ292eDJEL3d3TzBNbjVCelJxM2pWblZINHYw?=
 =?utf-8?B?dE5sd2NuSWdtS29SSkp5ZkpIblNMSnk0cHlJWXk0aytlcmhBYU1oUE1ZSUJu?=
 =?utf-8?B?bDJyK1dkVTRWdDBmNWY1alg3VU5JTGx6SUhJZ0JqNHZoTkl4b3QwczRxZmpk?=
 =?utf-8?B?aDZTUEVtbm1aN0ZuZ0Fwdnd0UjZTUjRyaEtzNmVHZzRzNVJuak1lVm9lQUlq?=
 =?utf-8?B?V0VNRXBoeWgrM1ZxKzluUjlnRUFvbjNMYXZFWEFxNG5udVV5TDdlVVFWV1Rq?=
 =?utf-8?B?WFlFekFLOExnSWhhTVJPdDBPNU02OVdVSnk3U05lV2NBUlRtNnRRNit4REpQ?=
 =?utf-8?B?U1VuZ0xUSVllSTZqZkxTSnllWFBCcVAvZE9CVjBvN3pOckgrQzZhY2N3b1A2?=
 =?utf-8?B?elFtZzI2NmVsd09Dejg3RCtQcnVhR1JETnpSZnNoTkllK1VZcE5SSk1iNG16?=
 =?utf-8?B?MEM1blBwOG9oN3lRZVBoT0diQlJnTk4yOTVvSVlYYXFya2JidWIrV2hRUHc1?=
 =?utf-8?B?bGdjeHVpZmxFNll5aHIrWDRiMG5pdWFwN0dZOHo5K3dCUjZaQmdFU3Rnb0FQ?=
 =?utf-8?B?d21kdkgrWkdZVkNkbG9qVDBTa3U4QThoMmdydlhmaUxHd01KazdPT1NXM2JK?=
 =?utf-8?B?NURlelpzMGJndjRkendUSG1UdURDVkQ4REpBdkw0K0k5V1NJZ0VxaGRJYnBw?=
 =?utf-8?B?c2NtYnJlcVcxWFk0NERabmEvd1UxdXhBd3BpaGx6aERKdTh6T1UwS29ZZ3Bj?=
 =?utf-8?B?R1A4Wmg3N2UxZld5RWdqOTRTQmx4VmRubE8yb2J1dVBzYlI4NFlJd0NHSjk3?=
 =?utf-8?B?emFXN0VvYnlmWTVTRkRMUEhTa0pTbVBwZnltc0w5cEMvSnZHZ2pWQ0pid0g1?=
 =?utf-8?B?akdMajIrL1pUN3VaaDNiUlZxSk8vcTlRclVXT1c0TUFkOGw5MWwxSmNRYkYx?=
 =?utf-8?B?YlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d8bde153-1c1b-43d4-3a77-08dcf76f148e
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2024 16:39:24.2334 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jcw8SMIzTq/0RWrB1l/K0wJ8OLCTZAH+6dh74GOUHRuqk88nOh82Qn8SPPqyOyMI+mMDbOhqG7jIw7yabhMztQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6331
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

Quoting Clint Taylor (2024-10-25 17:47:42-03:00)
>From: Mika Kahola <mika.kahola@intel.com>
>
>There is a HW issue that arises when there are race conditions
>between TCSS entering/exiting TC7 or TC10 states while the
>driver is asserting/deasserting TCSS power request. As a
>workaround, Display driver will implement a mailbox sequence
>to ensure that the TCSS is in TC0 when TCSS power request is
>asserted/deasserted.
>
>The sequence is the following
>
>1. Read mailbox command status and wait until run/busy bit is
>   clear
>2. Write mailbox data value '1' for power request asserting
>   and '0' for power request deasserting
>3. Write mailbox command run/busy bit and command value with 0x1
>4. Read mailbox command and wait until run/busy bit is clear
>   before continuing power request.
>
>Signed-off-by: Mika Kahola <mika.kahola@intel.com>
>Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>Signed-off-by: Clint Taylor <Clinton.A.Taylor@intel.com>

+Mika

Mika has sent an updated version on this and it is available at
https://lore.kernel.org/intel-gfx/20241028125835.78639-1-mika.kahola@intel.=
com/

I think he might send a new version of that patch based on review
feedback.

--
Gustavo Sousa

>---
> drivers/gpu/drm/i915/display/intel_tc.c | 40 +++++++++++++++++++++++++
> drivers/gpu/drm/i915/i915_reg.h         |  7 +++++
> 2 files changed, 47 insertions(+)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i91=
5/display/intel_tc.c
>index 6f2ee7dbc43b..7d9f87db381c 100644
>--- a/drivers/gpu/drm/i915/display/intel_tc.c
>+++ b/drivers/gpu/drm/i915/display/intel_tc.c
>@@ -1013,6 +1013,39 @@ xelpdp_tc_phy_wait_for_tcss_power(struct intel_tc_p=
ort *tc, bool enabled)
>         return true;
> }
>=20
>+static bool xelpdp_tc_phy_wait_for_tcss_ready(struct drm_i915_private *i9=
15,
>+                                              bool enable)
>+{
>+        if (DISPLAY_VER(i915) < 30)
>+                return true;
>+
>+        /* check if mailbox is running busy */
>+        if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
>+                                    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10=
)) {
>+                drm_dbg_kms(&i915->drm,
>+                            "timeout waiting for TCSS mailbox run/busy bi=
t to clear\n");
>+                return false;
>+        }
>+
>+        if (enable)
>+                intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 1);
>+        else
>+                intel_de_write(i915, TCSS_DISP_MAILBOX_IN_DATA, 0);
>+
>+        intel_de_write(i915, TCSS_DISP_MAILBOX_IN_CMD,
>+                       TCSS_DISP_MAILBOX_IN_CMD_DATA(1));
>+
>+        /* wait to clear mailbox running busy bit before continuing */
>+        if (intel_de_wait_for_clear(i915, TCSS_DISP_MAILBOX_IN_CMD,
>+                                    TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY, 10=
)) {
>+                drm_dbg_kms(&i915->drm,
>+                            "timeout waiting for TCSS mailbox run/busy bi=
t to clear\n");
>+                return false;
>+        }
>+
>+        return true;
>+}
>+
> static void __xelpdp_tc_phy_enable_tcss_power(struct intel_tc_port *tc, b=
ool enable)
> {
>         struct drm_i915_private *i915 =3D tc_to_i915(tc);
>@@ -1022,6 +1055,13 @@ static void __xelpdp_tc_phy_enable_tcss_power(struc=
t intel_tc_port *tc, bool ena
>=20
>         assert_tc_cold_blocked(tc);
>=20
>+        /*
>+         * Gfx driver workaround for PTL tcss_rxdetect_clkswb_req/ack han=
dshake
>+         * violation when pwwreq=3D 0->1 during TC7/10 entry
>+         */
>+        drm_WARN_ON(&i915->drm,
>+                    !xelpdp_tc_phy_wait_for_tcss_ready(i915, enable));
>+
>         val =3D intel_de_read(i915, reg);
>         if (enable)
>                 val |=3D XELPDP_TCSS_POWER_REQUEST;
>diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_r=
eg.h
>index 8d758947f301..452325c7f427 100644
>--- a/drivers/gpu/drm/i915/i915_reg.h
>+++ b/drivers/gpu/drm/i915/i915_reg.h
>@@ -4539,6 +4539,13 @@ enum skl_power_gate {
> #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_TBT        REG_BIT(1)
> #define  TCSS_DDI_STATUS_HPD_LIVE_STATUS_ALT        REG_BIT(0)
>=20
>+#define TCSS_DISP_MAILBOX_IN_CMD                _MMIO(0x161300)
>+#define   TCSS_DISP_MAILBOX_IN_CMD_RUN_BUSY        REG_BIT(31)
>+#define   TCSS_DISP_MAILBOX_IN_CMD_CMD_MASK        REG_GENMASK(7, 0)
>+#define   TCSS_DISP_MAILBOX_IN_CMD_DATA(x)        TCSS_DISP_MAILBOX_IN_CM=
D_RUN_BUSY | \
>+                                                REG_FIELD_PREP(TCSS_DISP_=
MAILBOX_IN_CMD_CMD_MASK, (x))
>+#define TCSS_DISP_MAILBOX_IN_DATA                _MMIO(0x161304)
>+
> #define PRIMARY_SPI_TRIGGER                        _MMIO(0x102040)
> #define PRIMARY_SPI_ADDRESS                        _MMIO(0x102080)
> #define PRIMARY_SPI_REGIONID                        _MMIO(0x102084)
>--=20
>2.25.1
>
