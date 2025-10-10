Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 151F0BCE9C6
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 23:24:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC99D10EC88;
	Fri, 10 Oct 2025 21:24:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WswVY1g2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 11B9210E2AE
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Oct 2025 21:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760131439; x=1791667439;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=WQj/+7Pnh8qerAwSTv+LtxvO4yDgfdJtPNciD7SC77Q=;
 b=WswVY1g28C0JmoJ1RH5RmKL9iaZn0UJNQlCrS5azG+6ARYgbt2U0H+Zu
 xr1NknK4zTYcztxaukEbRwVEQAdsbVK+THysK1EhZQDXMQd5nc1Zz/QuD
 1uAIRTihHDjUIV75HAbEsle4ucBHEJFWFHOdLlDKIRcZ9Zba8uQf8DGFg
 S0v/a0vNofT9Ebxp4bHI314Oq3zG4d5umkveEM85d1o7JciYIE3mwV0MD
 xNpmrcz6mmiGWEe+FktdWTml2ldehPZtIMN8MB//HwCBhjxeqHuB1WrZB
 jnMiYulRFOx9PSz5wCGplzj8HyFsVdi/fxnB0PBj72HvPiRN4bGqDF8B9 g==;
X-CSE-ConnectionGUID: ekLmyU22R5G0yEjH4jWyKA==
X-CSE-MsgGUID: 8SFZ6VraSLaB1x1OGyZsFg==
X-IronPort-AV: E=McAfee;i="6800,10657,11578"; a="79996709"
X-IronPort-AV: E=Sophos;i="6.19,220,1754982000"; d="scan'208";a="79996709"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 14:23:58 -0700
X-CSE-ConnectionGUID: vytUgPcDQwa3zDgZfjibxA==
X-CSE-MsgGUID: iTr80jvcRUiMy6IC4KNMyQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,220,1754982000"; d="scan'208";a="186351486"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 14:23:58 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 14:23:58 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 10 Oct 2025 14:23:58 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.62) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 14:23:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mw7VQrIASQn8uiR534D9Y9P/wj2ly4VTd+tbcqll8n5bVu1wOHEj6NwLyKzcbrjjVNk//A9ZyV8STE4ULbmeY9f65WO1JfYwkkZQkc7z/qrsYilUCypbqayCMdpUkjrLb9dWPAYoNiEdiHhCVjIbfLbkcGoigK3vN5/4kKe15YF2fZXeRVTTMplSE4oV1mdpru4kXOKt/2wrSELj4ddzU/E9yfnXAPK+wXjOXFXIXac/q3EMjsHn00xgc0Opl0jfnZr4fCaL7Ktm1zYTlNtbhKW0fOvaopb8sZNmL8yS1du94tQAnOdFjLFv/Ryfwv/KRqrDKWLgAC5qL+Kd5ZYqRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=koeTQlQF/OvL1UFIdGfDiAhlvvRtlJ2Y2Wp0eJV8aVA=;
 b=N2tQxvq+LhSmP4cq1u8ddxjJAJ+WFhL/D5H4i1QrrSuAR4k734+lUfYegGEfQAVrMIu6mVjD375kOLgErNCwQ9ZwBFHgQtb8kl2b6LZymgSLCVh7Ti/gms81lZQRnupvxCSTOAhirEpan8rBXjChJyztmReC6tY4g84qeUaOAZr/+xQFV1HjlfL5S3UL+g0hi3tlqPYpUq5rJl8XeD1YMGcK9GqvqKHcVzMlVqNS/HNcuKO11btNK1KpWNcnh4LlaqMKC6PMTEeQxwH9q3MCc4zR4GYad9gx7FmIhjbJJZ4hcxAD7uBHMbGoPLn0RejUBi1uIpOqILKLJjg26DPRwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by IA1PR11MB8863.namprd11.prod.outlook.com
 (2603:10b6:208:598::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.9; Fri, 10 Oct
 2025 21:23:54 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a%6]) with mapi id 15.20.9203.009; Fri, 10 Oct 2025
 21:23:54 +0000
Date: Fri, 10 Oct 2025 14:23:48 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <matthew.d.roper@intel.com>,
 <rodrigo.vivi@intel.com>, <jani.nikula@intel.com>, <andi.shyti@kernel.org>
Subject: Re: [PATCH v3] drm/i915:move and rename reg_in_range_table
Message-ID: <aOl5ZATtXk1IEdM-@msatwood-mobl>
References: <20251009215210.41000-1-matthew.s.atwood@intel.com>
 <aOkFK7j8gx6NIVHU@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <aOkFK7j8gx6NIVHU@intel.com>
X-ClientProxiedBy: SJ0PR13CA0192.namprd13.prod.outlook.com
 (2603:10b6:a03:2c3::17) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|IA1PR11MB8863:EE_
X-MS-Office365-Filtering-Correlation-Id: 56ec8abb-b7fc-4dcf-05d4-08de084350dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?U3FkajhmaldZZzhlSDZCZ2dUT1hwelR4aG5ZNGJrdWhhajRhSFR0Q1E5VXUz?=
 =?utf-8?B?R1NEVHhFUk0vK2EwNUhQV2REdEE0VzdSdGNWdDRzZVFnMFVNWE5QYjQxck5t?=
 =?utf-8?B?VE9CZ2oxUysrUXp4a2ZWKys5RVg1NktITStuaEF2cjlQYlUrbjk1NkxmYkpx?=
 =?utf-8?B?MkZ1WDBtUHJOMjNaZHdJRG8rakI4QTBoMXhHM2U3SHlCVGJaOEZOeUU3Y0VS?=
 =?utf-8?B?OVNXUUJ6SFBXMFFVc09zS0hnQkd4VWZzZTc2VE9LdVA4Tlg0UHdmcUQ0bnhS?=
 =?utf-8?B?VW5Qd2hCMnRoU3l6ZW0yeVlSdDcxWld4dzgreTMwMURPWTF6N3daUlpnd2ZP?=
 =?utf-8?B?M0syOWtMVlVkTE9GK2JTbGVtem0rOHU4dWMyZlZRR3c4Q2o3Y1hKdUwrU1Q4?=
 =?utf-8?B?MnBhRmJNRGVOdGppMzRaUjVacStDZ25sME1ZOGtQSlBhNSsrNGlNR2lYdHNv?=
 =?utf-8?B?a0s4WmFTdm1mdG5kd1dZaG1yT0Y5UUNodzVjUTRhNGlGVFV4MUt1QklpUFpx?=
 =?utf-8?B?VDlMWm5odmlSY2x1bG40TnZVdXU4ZVBvZ1RWTXVmcTM5UnB0N0JlNU1aMndK?=
 =?utf-8?B?MjA5VVd0UUQ0WjZucVRGSjBvRGtjdHdpaG01aU1SUmRNQjhqVU12ZThwVEpP?=
 =?utf-8?B?U1JGT284R1g0eUNDTDNmZ3hpTEJnY3RKbHM4ckFsRUYxVHdmcXhSNUtJVzR1?=
 =?utf-8?B?eGx4eEYyYzJidUdsZjQ0ZVhxNXExSkN3Q3k2T2V3YXB1QTJYWjZQZWJubHBB?=
 =?utf-8?B?eGhEK09HWUs5MWd2RUFIV2ZkTmw4YXl0alRKcHNJbTAzbU90UFNhcEJsZmEx?=
 =?utf-8?B?eDJZNkQ4RFBSTVA2QnhTUlR3d0dFVEU2Y0ZkTEVBV05zRUc4dFhEQWQ3WDZs?=
 =?utf-8?B?WURDNzEzelc0N0VyM3BKa3QwaGMyVjZvelR4T05aVjZvcUxlUjR1OU5nWG0y?=
 =?utf-8?B?Sm0zOHArdlVqUnBBVXJTd1E4Nk13bmg4dGc4dGtjamM0cFVjWEU2MGxZR2Vv?=
 =?utf-8?B?aTNMQjBLeUNRcG5jM0ViVkJJRUVUS2pBcnZZdmM3U3orcnptQUlkOE9WWE82?=
 =?utf-8?B?YWFvbWpxR1JXczBVWStsWWFRby8yRWpBTGpaK2RjTVI1allGd3BuTmVvbU5D?=
 =?utf-8?B?aWhETmJWT0FhTnduY09scFdTajRUNkZYOC84V1loeUV5blNWRkFoMXpQcElF?=
 =?utf-8?B?dnVIQmxrUlc0VjNneDFpdnlvS29mZFQ3MWxDemJ2alpmd043ajQ0c0NqemtO?=
 =?utf-8?B?M1FLTm52dzZZQW9DNUNnTW1tV1pLZXFsa2VjL2dpbm1KaFhWWDF1UmF1NWJK?=
 =?utf-8?B?cHVmRzdxbVBrSmd5NUJGMEdnbS8xK3c1WHMxYm4ybEtXRGI3dGpheDF0d3Zi?=
 =?utf-8?B?UWlPcHZ2bjBxZTBQQ1FhUFlHMVlUaU1FV3ZkaXdVbzRvTmsrTGswSW1md0h4?=
 =?utf-8?B?YURITXRRckk5T0UzbVc1aEdCbVpNVXg2Skt2ZWhBdlhlcHpaTVo5RUs3MXRE?=
 =?utf-8?B?VS85RkFSU3hyMHdXdFpMUkVyQVJFUkxFc2xTSFl3aEpXcVJnRFYwNjhkNkEz?=
 =?utf-8?B?eVE1OTdqa2RCaUhMcGtGZDlaMmFwQkpmZ0cyeWlEYk1LUG01bmF5T3VEU2dY?=
 =?utf-8?B?ODhyQmlXSG5qVkNVZ3N1bDBpSmF3SUNqNGVCampKbUJBbUlMN0REZ2FjOVJP?=
 =?utf-8?B?YStOYnZ5K3lOMXVqRlhzV0NvM2J4aVhqZ0xPU1pkQ1dicVJSeTR5NC8vc1Qx?=
 =?utf-8?B?WVhaYm5pckpERm9JSTR2RFo0M3d5ZlFIbDlsRUZFc3RsdHNhSG1WT2lVZG90?=
 =?utf-8?B?bEtpVmhzZ0NzcFVqdXFJZER2SG4rV294SjNCMEthN09uMFhPc0Y2YStvTGN1?=
 =?utf-8?B?NVBzMnh3am1SYjluSTMyM0g4OVQxVXorSk56S0NqTjVJN2VxT3dnTlg2bDZO?=
 =?utf-8?Q?I6tclt5ciJHfxD51AGmCAG4GkgXJLA4f?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N0J4eVZYTjNNaW14Q3ZxSUdrOFNFSEsralV6Slp2QXQ4YWlvaWRhdGpFTmFn?=
 =?utf-8?B?U0NQeHpxSWhucUJKbVJ4eFJUalFIZ0N0TzYwZmFVRGRSaVc1dHh2UlhOSUtM?=
 =?utf-8?B?cTE0U21lNVlhclZjNlVBK0xEcklFWmFYYmhkU3RUR3B0T2dpcWxHSHF5SmtG?=
 =?utf-8?B?ZndnaHNlQytwNWcxbzdWRS9NbExSK2wxc3RZaDkzd3I0T3BqYU5XcjhlZEpx?=
 =?utf-8?B?QllJUy9KR3NYTHc0K1QxaGlNSXVIV1hpMGNWQkRFZDNlUkd5YTJtWWMvaVBO?=
 =?utf-8?B?VVR4RHhzQVQ2TjBuaFVaeUpTdFpFM3lmM0RyTVdFR3ZiRVZ3OU50YUQ0eHdH?=
 =?utf-8?B?bUZhV2tEMjNnd2xMZGRDWmdvcU1yYjB5UTViS3RQeHRsWXJDa1Y2OUEwWTRh?=
 =?utf-8?B?bE50ZDRvdHZmTzBhZmFyT25SNWVwZGhveE5ZVmpBNWxjQ25yQXR5OU5Ud1hk?=
 =?utf-8?B?UFFtOXRFVVpxU0FMbjN0eXRuL1VUR1NZcXNrWWlMeVNrMDR1dG1ESXVGRVNW?=
 =?utf-8?B?WDlmNU9MOWxSQXlwdjFudXpvSElpMWxaTXpITjRFN0NMQTEwU1VhTzhuN0s3?=
 =?utf-8?B?R1RuMmlnRW1sWU5SU3YzNUNOT01RZE80RHRPWFFZN2VlVDcxZTlDTWlMYjUz?=
 =?utf-8?B?TFpQZEpvOVRWTnJOU251VlF3b0JUakhHZTR1SzNGQ0xnWTJTSFhKSWNVUlRN?=
 =?utf-8?B?YnZUU09XK2wvbXRGSWRMeDE4VUpWSzhTdHR0Q1p3b0FqbWduemFURk9uTHVO?=
 =?utf-8?B?bnp2ZHhJS0ZXMitYeFl4YkZWZzl2NktacUp3ejFGUGZKanBic0lISVNOc1FC?=
 =?utf-8?B?a0xyQ2FzR1Btd0NDOFFxTG83Y1p5SkhucFRLTFRWNDBrNThFUE1wc2dDWExJ?=
 =?utf-8?B?R0hBRk9FdHU2RTgxQ2o5ZjRxMU80eENsTkh0ZFJJNHQ0U1JiUkpSUFRQNGNS?=
 =?utf-8?B?ZHc4VkNXMk5ZdmxHVlVQZmhTRWZZb0RmakJHSHhOeG9wa0VpMlgwUGZ2YXk1?=
 =?utf-8?B?R1B6cUEzejBXVjd3SGU1ZjAvZ1NwUFFCTFBPMjdiY1FhTDBOV2gzMGtoUkR4?=
 =?utf-8?B?T3lxNHNLeVlRa0ZobVNmV3JZdnBSbHNtd3VNR1JOVmcvN2VHZkwrWHo5RW5B?=
 =?utf-8?B?SG1LSXhJQkRqbHVmSEVwYXpzUWRXUTZpZnpucUptVWVkQXhYZ3c1aW4vN3Vl?=
 =?utf-8?B?THRmWm1pYmMva3RMcnlPUDJPK0x0b2wxZGhFcWVyMGlGSzJzOXVnSk9KQUlL?=
 =?utf-8?B?b0FTVGFMQW9QUjJHbGIrSlg1MFVIMlk0MkRVQzk3UDRsOTJvZHZrQ1p4eVdK?=
 =?utf-8?B?elZCRTA1SjFpTUV0SjNFMjJFK1YvUmJ2eGpuY2JZNEFPQk9Uak03M1l5V2Q4?=
 =?utf-8?B?OHBuN1VveCtFQSsrZTlIMkdaMHMxdzRLL3A2T1dXbDFvdEk1YnpnNEo0R1J0?=
 =?utf-8?B?SkEzcEFzdFJETm5rZEh5WkgrdnRtdGZkcHlHYllGMFVSamtXNE1UazA3eDlh?=
 =?utf-8?B?dHBLTVN0NEVxTkxuSGY4K0JpYWJBUnlucFF0ajRPaVVNdCtnRGZDNmlEZHI1?=
 =?utf-8?B?NUgyK0RGb0FiSVpMMmh5aDNnVURiWnZ1VnFSd1ZUZW9JK2xRaDRraCttTlNk?=
 =?utf-8?B?aWZNaUhuYVU2VDZUdFQ0bXZhd3dCTm44QnlaUDB3M25tVUJwK00raGM0bG40?=
 =?utf-8?B?VlJqenlMazNIN0NhdEdETDdFZnR5M0hSMStuaTdJWFVSM1RRTjhXUkpzbGhO?=
 =?utf-8?B?U2J5cGx6ejlnbFJmdGdPbXVweVRobWRhYTh4STJVVWlyTEMwa05XMjF1WFhU?=
 =?utf-8?B?RlltWnpnblRGSW8xQ3R1RTdQUXo0Y0FkZTk2eTVnMEw5dDJSZnR3MkhVY1VO?=
 =?utf-8?B?WS9hV01MWGlrTElZM2xUQmovby9YMDBJN094eWFYR2phL0FpL3h6RkpGVitm?=
 =?utf-8?B?REo3NHV3Si9veGF5cjkwR2hFdWVLTDVBcnVIS3RsZU1kU2ZxRURsMUFTNkJ3?=
 =?utf-8?B?N0Y2ekJ6MTQ2NUgra21RdnZkdy9NUythQzk3WENoc3g1L2djQzVXY3RiaTN5?=
 =?utf-8?B?MXBvVTBSSisvLzFIa2YvUi83Wk5sMFEwWUk0S3MzT0hOMldqakdQc2xVRGt4?=
 =?utf-8?B?SG90Y2ZnMldRSUhQdWN5Vk5yL0JkY0ZyY2pqRm03RU5xSUgyZkxvS1ZnQWx5?=
 =?utf-8?B?Rmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 56ec8abb-b7fc-4dcf-05d4-08de084350dc
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2025 21:23:54.7931 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MpCmQAPyH7cgdQEcTaUdE9oRGX5xLa/8e6w3yXopuqlE/kuQcIgVHE8JnP9zULk1qRfd3Y7cV+Bz4BqQggfpIfC5O+Y2eTC1TbY8A1amjA0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8863
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

On Fri, Oct 10, 2025 at 04:07:55PM +0300, Ville Syrjälä wrote:
> On Thu, Oct 09, 2025 at 02:52:08PM -0700, Matt Atwood wrote:
> > reg_in_range_table is a useful function that is used in multiple places,
> > and will be needed for WA_BB implementation later.
> > 
> > Let's move this function and i915_range struct to its own file, as we are
> > trying to move away from i915_utils files.
> > 
> > v2: move functions to their own file
> > v3: use correct naming convention
> > 
> > Suggested-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > ---
> >  drivers/gpu/drm/i915/Makefile                 |  1 +
> >  drivers/gpu/drm/i915/gt/intel_workarounds.c   |  9 +--
> >  drivers/gpu/drm/i915/i915_mmio_range.c        | 18 +++++
> >  drivers/gpu/drm/i915/i915_mmio_range.h        | 19 ++++++
> >  drivers/gpu/drm/i915/i915_perf.c              | 67 ++++++++-----------
> >  drivers/gpu/drm/i915/intel_uncore.c           | 15 +++--
> >  drivers/gpu/drm/i915/intel_uncore.h           |  8 +--
> >  drivers/gpu/drm/i915/selftests/intel_uncore.c |  4 +-
> >  8 files changed, 82 insertions(+), 59 deletions(-)
> >  create mode 100644 drivers/gpu/drm/i915/i915_mmio_range.c
> >  create mode 100644 drivers/gpu/drm/i915/i915_mmio_range.h
> > 
> > diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> > index 78a45a6681df..e5819c4320bf 100644
> > --- a/drivers/gpu/drm/i915/Makefile
> > +++ b/drivers/gpu/drm/i915/Makefile
> > @@ -26,6 +26,7 @@ i915-y += \
> >  	i915_ioctl.o \
> >  	i915_irq.o \
> >  	i915_mitigations.o \
> > +	i915_mmio_range.o \
> >  	i915_module.o \
> >  	i915_params.o \
> >  	i915_pci.o \
> > diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > index 7d486dfa2fc1..ece88c612e27 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> > @@ -5,6 +5,7 @@
> >  
> >  #include "i915_drv.h"
> >  #include "i915_reg.h"
> > +#include "i915_mmio_range.h"
> >  #include "intel_context.h"
> >  #include "intel_engine_pm.h"
> >  #include "intel_engine_regs.h"
> > @@ -2923,7 +2924,7 @@ void intel_engine_apply_workarounds(struct intel_engine_cs *engine)
> >  	wa_list_apply(&engine->wa_list);
> >  }
> >  
> > -static const struct i915_range mcr_ranges_gen8[] = {
> > +static const struct i915_mmio_range mcr_ranges_gen8[] = {
> >  	{ .start = 0x5500, .end = 0x55ff },
> >  	{ .start = 0x7000, .end = 0x7fff },
> >  	{ .start = 0x9400, .end = 0x97ff },
> > @@ -2932,7 +2933,7 @@ static const struct i915_range mcr_ranges_gen8[] = {
> >  	{},
> >  };
> >  
> > -static const struct i915_range mcr_ranges_gen12[] = {
> > +static const struct i915_mmio_range mcr_ranges_gen12[] = {
> >  	{ .start =  0x8150, .end =  0x815f },
> >  	{ .start =  0x9520, .end =  0x955f },
> >  	{ .start =  0xb100, .end =  0xb3ff },
> > @@ -2941,7 +2942,7 @@ static const struct i915_range mcr_ranges_gen12[] = {
> >  	{},
> >  };
> >  
> > -static const struct i915_range mcr_ranges_xehp[] = {
> > +static const struct i915_mmio_range mcr_ranges_xehp[] = {
> >  	{ .start =  0x4000, .end =  0x4aff },
> >  	{ .start =  0x5200, .end =  0x52ff },
> >  	{ .start =  0x5400, .end =  0x7fff },
> > @@ -2960,7 +2961,7 @@ static const struct i915_range mcr_ranges_xehp[] = {
> >  
> >  static bool mcr_range(struct drm_i915_private *i915, u32 offset)
> >  {
> > -	const struct i915_range *mcr_ranges;
> > +	const struct i915_mmio_range *mcr_ranges;
> >  	int i;
> >  
> >  	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 55))
> > diff --git a/drivers/gpu/drm/i915/i915_mmio_range.c b/drivers/gpu/drm/i915/i915_mmio_range.c
> > new file mode 100644
> > index 000000000000..724041e81aa7
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/i915_mmio_range.c
> > @@ -0,0 +1,18 @@
> > +// SPDX-License-Identifier: MIT
> > +/*
> > + * Copyright © 2025 Intel Corporation
> > + */
> > +
> > +#include "i915_mmio_range.h"
> > +
> > +bool i915_mmio_range_table_contains(u32 addr, const struct i915_mmio_range *table)
> > +{
> > +	while (table->start || table->end) {
> > +		if (addr >= table->start && addr <= table->end)
> > +			return true;
> > +
> > +		table++;
> > +	}
> > +
> > +	return false;
> > +}
> 
> Should perhaps follow up with:
> - Convert intel_uncore BSEARCH() into __inline_bsearch() and double
>   check things still get inlined
> - Add a function to validate the table is sorted and call that for all
>   the tables in some common init functions (ideally should be compile
>   time checked but alas we have no constexpr functions in C)
> - Use __inline_bsearch() here as well. Not sure if this itself would
>   need to be inline to allow intel_uncore.c to use it for the shadow range
>   checks (I suspect the concern there was about inlining the comparisons
>   rather than avoiding a single bsearch() function call...)
to be clear, you want this work in a follow up patch, not in the next
revision?
> 
> > diff --git a/drivers/gpu/drm/i915/i915_mmio_range.h b/drivers/gpu/drm/i915/i915_mmio_range.h
> > new file mode 100644
> > index 000000000000..f1c7086d3e3c
> > --- /dev/null
> > +++ b/drivers/gpu/drm/i915/i915_mmio_range.h
> > @@ -0,0 +1,19 @@
> > +/* SPDX-License-Identifier: MIT */
> > +/*
> > + * Copyright © 2025 Intel Corporation
> > + */
> > +
> > +#ifndef __I915_MMIO_RANGE_H__
> > +#define __I915_MMIO_RANGE_H__
> > +
> > +#include <linux/types.h>
> > +
> > +/* Other register ranges (e.g., shadow tables, MCR tables, etc.) */
> 
> "other" than what?
Ack
> 
> > +struct i915_mmio_range {
> > +	u32 start;
> > +	u32 end;
> 
> Need to document that the end is inclusive.
Ack
> 
> And I'm wondering if we should perhaps have more consistency
> in how the end is specified. Curently it looks like oa and
> shadow specify it as 4 byte aligned, but forcewake and mcr
> use 1 byte alignment.
> 
> I think making the end exclusive would actually make the range
> definitions a bit easier to parse for mere humans. But dunno
> what other people think. And f some of these ranges are listed
> in the sepc with end being inclusive then I guess keeping it
> inclusive might be nice for quick visual comparisons against
> the spec.
I would prefer to keep it the way it is.

MattA
> 
> > +};
> > +
> > +bool i915_mmio_range_table_contains(u32 addr, const struct i915_mmio_range *table);
> > +
> > +#endif /* __I915_MMIO_RANGE_H__ */
> > diff --git a/drivers/gpu/drm/i915/i915_perf.c b/drivers/gpu/drm/i915/i915_perf.c
> > index 1658f1246c6f..0b9d9f3f7813 100644
> > --- a/drivers/gpu/drm/i915/i915_perf.c
> > +++ b/drivers/gpu/drm/i915/i915_perf.c
> > @@ -219,6 +219,7 @@
> >  #include "i915_perf.h"
> >  #include "i915_perf_oa_regs.h"
> >  #include "i915_reg.h"
> > +#include "i915_mmio_range.h"
> >  
> >  /* HW requires this to be a power of two, between 128k and 16M, though driver
> >   * is currently generally designed assuming the largest 16M size is used such
> > @@ -4320,29 +4321,17 @@ static bool gen8_is_valid_flex_addr(struct i915_perf *perf, u32 addr)
> >  	return false;
> >  }
> >  
> > -static bool reg_in_range_table(u32 addr, const struct i915_range *table)
> > -{
> > -	while (table->start || table->end) {
> > -		if (addr >= table->start && addr <= table->end)
> > -			return true;
> > -
> > -		table++;
> > -	}
> > -
> > -	return false;
> > -}
> > -
> >  #define REG_EQUAL(addr, mmio) \
> >  	((addr) == i915_mmio_reg_offset(mmio))
> >  
> > -static const struct i915_range gen7_oa_b_counters[] = {
> > +static const struct i915_mmio_range gen7_oa_b_counters[] = {
> >  	{ .start = 0x2710, .end = 0x272c },	/* OASTARTTRIG[1-8] */
> >  	{ .start = 0x2740, .end = 0x275c },	/* OAREPORTTRIG[1-8] */
> >  	{ .start = 0x2770, .end = 0x27ac },	/* OACEC[0-7][0-1] */
> >  	{}
> >  };
> >  
> > -static const struct i915_range gen12_oa_b_counters[] = {
> > +static const struct i915_mmio_range gen12_oa_b_counters[] = {
> >  	{ .start = 0x2b2c, .end = 0x2b2c },	/* GEN12_OAG_OA_PESS */
> >  	{ .start = 0xd900, .end = 0xd91c },	/* GEN12_OAG_OASTARTTRIG[1-8] */
> >  	{ .start = 0xd920, .end = 0xd93c },	/* GEN12_OAG_OAREPORTTRIG1[1-8] */
> > @@ -4353,7 +4342,7 @@ static const struct i915_range gen12_oa_b_counters[] = {
> >  	{}
> >  };
> >  
> > -static const struct i915_range mtl_oam_b_counters[] = {
> > +static const struct i915_mmio_range mtl_oam_b_counters[] = {
> >  	{ .start = 0x393000, .end = 0x39301c },	/* GEN12_OAM_STARTTRIG1[1-8] */
> >  	{ .start = 0x393020, .end = 0x39303c },	/* GEN12_OAM_REPORTTRIG1[1-8] */
> >  	{ .start = 0x393040, .end = 0x39307c },	/* GEN12_OAM_CEC[0-7][0-1] */
> > @@ -4361,43 +4350,43 @@ static const struct i915_range mtl_oam_b_counters[] = {
> >  	{}
> >  };
> >  
> > -static const struct i915_range xehp_oa_b_counters[] = {
> > +static const struct i915_mmio_range xehp_oa_b_counters[] = {
> >  	{ .start = 0xdc48, .end = 0xdc48 },	/* OAA_ENABLE_REG */
> >  	{ .start = 0xdd00, .end = 0xdd48 },	/* OAG_LCE0_0 - OAA_LENABLE_REG */
> >  	{}
> >  };
> >  
> > -static const struct i915_range gen7_oa_mux_regs[] = {
> > +static const struct i915_mmio_range gen7_oa_mux_regs[] = {
> >  	{ .start = 0x91b8, .end = 0x91cc },	/* OA_PERFCNT[1-2], OA_PERFMATRIX */
> >  	{ .start = 0x9800, .end = 0x9888 },	/* MICRO_BP0_0 - NOA_WRITE */
> >  	{ .start = 0xe180, .end = 0xe180 },	/* HALF_SLICE_CHICKEN2 */
> >  	{}
> >  };
> >  
> > -static const struct i915_range hsw_oa_mux_regs[] = {
> > +static const struct i915_mmio_range hsw_oa_mux_regs[] = {
> >  	{ .start = 0x09e80, .end = 0x09ea4 }, /* HSW_MBVID2_NOA[0-9] */
> >  	{ .start = 0x09ec0, .end = 0x09ec0 }, /* HSW_MBVID2_MISR0 */
> >  	{ .start = 0x25100, .end = 0x2ff90 },
> >  	{}
> >  };
> >  
> > -static const struct i915_range chv_oa_mux_regs[] = {
> > +static const struct i915_mmio_range chv_oa_mux_regs[] = {
> >  	{ .start = 0x182300, .end = 0x1823a4 },
> >  	{}
> >  };
> >  
> > -static const struct i915_range gen8_oa_mux_regs[] = {
> > +static const struct i915_mmio_range gen8_oa_mux_regs[] = {
> >  	{ .start = 0x0d00, .end = 0x0d2c },	/* RPM_CONFIG[0-1], NOA_CONFIG[0-8] */
> >  	{ .start = 0x20cc, .end = 0x20cc },	/* WAIT_FOR_RC6_EXIT */
> >  	{}
> >  };
> >  
> > -static const struct i915_range gen11_oa_mux_regs[] = {
> > +static const struct i915_mmio_range gen11_oa_mux_regs[] = {
> >  	{ .start = 0x91c8, .end = 0x91dc },	/* OA_PERFCNT[3-4] */
> >  	{}
> >  };
> >  
> > -static const struct i915_range gen12_oa_mux_regs[] = {
> > +static const struct i915_mmio_range gen12_oa_mux_regs[] = {
> >  	{ .start = 0x0d00, .end = 0x0d04 },     /* RPM_CONFIG[0-1] */
> >  	{ .start = 0x0d0c, .end = 0x0d2c },     /* NOA_CONFIG[0-8] */
> >  	{ .start = 0x9840, .end = 0x9840 },	/* GDT_CHICKEN_BITS */
> > @@ -4410,7 +4399,7 @@ static const struct i915_range gen12_oa_mux_regs[] = {
> >   * Ref: 14010536224:
> >   * 0x20cc is repurposed on MTL, so use a separate array for MTL.
> >   */
> > -static const struct i915_range mtl_oa_mux_regs[] = {
> > +static const struct i915_mmio_range mtl_oa_mux_regs[] = {
> >  	{ .start = 0x0d00, .end = 0x0d04 },	/* RPM_CONFIG[0-1] */
> >  	{ .start = 0x0d0c, .end = 0x0d2c },	/* NOA_CONFIG[0-8] */
> >  	{ .start = 0x9840, .end = 0x9840 },	/* GDT_CHICKEN_BITS */
> > @@ -4421,61 +4410,61 @@ static const struct i915_range mtl_oa_mux_regs[] = {
> >  
> >  static bool gen7_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
> >  {
> > -	return reg_in_range_table(addr, gen7_oa_b_counters);
> > +	return i915_mmio_range_table_contains(addr, gen7_oa_b_counters);
> >  }
> >  
> >  static bool gen8_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> >  {
> > -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> > -		reg_in_range_table(addr, gen8_oa_mux_regs);
> > +	return i915_mmio_range_table_contains(addr, gen7_oa_mux_regs) ||
> > +		i915_mmio_range_table_contains(addr, gen8_oa_mux_regs);
> >  }
> >  
> >  static bool gen11_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> >  {
> > -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> > -		reg_in_range_table(addr, gen8_oa_mux_regs) ||
> > -		reg_in_range_table(addr, gen11_oa_mux_regs);
> > +	return i915_mmio_range_table_contains(addr, gen7_oa_mux_regs) ||
> > +		i915_mmio_range_table_contains(addr, gen8_oa_mux_regs) ||
> > +		i915_mmio_range_table_contains(addr, gen11_oa_mux_regs);
> >  }
> >  
> >  static bool hsw_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> >  {
> > -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> > -		reg_in_range_table(addr, hsw_oa_mux_regs);
> > +	return i915_mmio_range_table_contains(addr, gen7_oa_mux_regs) ||
> > +		i915_mmio_range_table_contains(addr, hsw_oa_mux_regs);
> >  }
> >  
> >  static bool chv_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> >  {
> > -	return reg_in_range_table(addr, gen7_oa_mux_regs) ||
> > -		reg_in_range_table(addr, chv_oa_mux_regs);
> > +	return i915_mmio_range_table_contains(addr, gen7_oa_mux_regs) ||
> > +		i915_mmio_range_table_contains(addr, chv_oa_mux_regs);
> >  }
> >  
> >  static bool gen12_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
> >  {
> > -	return reg_in_range_table(addr, gen12_oa_b_counters);
> > +	return i915_mmio_range_table_contains(addr, gen12_oa_b_counters);
> >  }
> >  
> >  static bool mtl_is_valid_oam_b_counter_addr(struct i915_perf *perf, u32 addr)
> >  {
> >  	if (HAS_OAM(perf->i915) &&
> >  	    GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
> > -		return reg_in_range_table(addr, mtl_oam_b_counters);
> > +		return i915_mmio_range_table_contains(addr, mtl_oam_b_counters);
> >  
> >  	return false;
> >  }
> >  
> >  static bool xehp_is_valid_b_counter_addr(struct i915_perf *perf, u32 addr)
> >  {
> > -	return reg_in_range_table(addr, xehp_oa_b_counters) ||
> > -		reg_in_range_table(addr, gen12_oa_b_counters) ||
> > +	return i915_mmio_range_table_contains(addr, xehp_oa_b_counters) ||
> > +		i915_mmio_range_table_contains(addr, gen12_oa_b_counters) ||
> >  		mtl_is_valid_oam_b_counter_addr(perf, addr);
> >  }
> >  
> >  static bool gen12_is_valid_mux_addr(struct i915_perf *perf, u32 addr)
> >  {
> >  	if (GRAPHICS_VER_FULL(perf->i915) >= IP_VER(12, 70))
> > -		return reg_in_range_table(addr, mtl_oa_mux_regs);
> > +		return i915_mmio_range_table_contains(addr, mtl_oa_mux_regs);
> >  	else
> > -		return reg_in_range_table(addr, gen12_oa_mux_regs);
> > +		return i915_mmio_range_table_contains(addr, gen12_oa_mux_regs);
> >  }
> >  
> >  static u32 mask_reg_value(u32 reg, u32 val)
> > diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
> > index 8cb59f8d1f4c..aba90b80854f 100644
> > --- a/drivers/gpu/drm/i915/intel_uncore.c
> > +++ b/drivers/gpu/drm/i915/intel_uncore.c
> > @@ -35,6 +35,7 @@
> >  #include "i915_reg.h"
> >  #include "i915_vgpu.h"
> >  #include "i915_wait_util.h"
> > +#include "i915_mmio_range.h"
> >  #include "intel_uncore_trace.h"
> >  
> >  #define FORCEWAKE_ACK_TIMEOUT_MS 50
> > @@ -999,7 +1000,7 @@ find_fw_domain(struct intel_uncore *uncore, u32 offset)
> >   * scanned for obvious mistakes or typos by the selftests.
> >   */
> >  
> > -static const struct i915_range gen8_shadowed_regs[] = {
> > +static const struct i915_mmio_range gen8_shadowed_regs[] = {
> >  	{ .start =  0x2030, .end =  0x2030 },
> >  	{ .start =  0xA008, .end =  0xA00C },
> >  	{ .start = 0x12030, .end = 0x12030 },
> > @@ -1007,7 +1008,7 @@ static const struct i915_range gen8_shadowed_regs[] = {
> >  	{ .start = 0x22030, .end = 0x22030 },
> >  };
> >  
> > -static const struct i915_range gen11_shadowed_regs[] = {
> > +static const struct i915_mmio_range gen11_shadowed_regs[] = {
> >  	{ .start =   0x2030, .end =   0x2030 },
> >  	{ .start =   0x2550, .end =   0x2550 },
> >  	{ .start =   0xA008, .end =   0xA00C },
> > @@ -1034,7 +1035,7 @@ static const struct i915_range gen11_shadowed_regs[] = {
> >  	{ .start = 0x1D8510, .end = 0x1D8550 },
> >  };
> >  
> > -static const struct i915_range gen12_shadowed_regs[] = {
> > +static const struct i915_mmio_range gen12_shadowed_regs[] = {
> >  	{ .start =   0x2030, .end =   0x2030 },
> >  	{ .start =   0x2510, .end =   0x2550 },
> >  	{ .start =   0xA008, .end =   0xA00C },
> > @@ -1078,7 +1079,7 @@ static const struct i915_range gen12_shadowed_regs[] = {
> >  	{ .start = 0x1F8510, .end = 0x1F8550 },
> >  };
> >  
> > -static const struct i915_range dg2_shadowed_regs[] = {
> > +static const struct i915_mmio_range dg2_shadowed_regs[] = {
> >  	{ .start =   0x2030, .end =   0x2030 },
> >  	{ .start =   0x2510, .end =   0x2550 },
> >  	{ .start =   0xA008, .end =   0xA00C },
> > @@ -1117,7 +1118,7 @@ static const struct i915_range dg2_shadowed_regs[] = {
> >  	{ .start = 0x1F8510, .end = 0x1F8550 },
> >  };
> >  
> > -static const struct i915_range mtl_shadowed_regs[] = {
> > +static const struct i915_mmio_range mtl_shadowed_regs[] = {
> >  	{ .start =   0x2030, .end =   0x2030 },
> >  	{ .start =   0x2510, .end =   0x2550 },
> >  	{ .start =   0xA008, .end =   0xA00C },
> > @@ -1135,7 +1136,7 @@ static const struct i915_range mtl_shadowed_regs[] = {
> >  	{ .start =  0x22510, .end =  0x22550 },
> >  };
> >  
> > -static const struct i915_range xelpmp_shadowed_regs[] = {
> > +static const struct i915_mmio_range xelpmp_shadowed_regs[] = {
> >  	{ .start = 0x1C0030, .end = 0x1C0030 },
> >  	{ .start = 0x1C0510, .end = 0x1C0550 },
> >  	{ .start = 0x1C8030, .end = 0x1C8030 },
> > @@ -1156,7 +1157,7 @@ static const struct i915_range xelpmp_shadowed_regs[] = {
> >  	{ .start = 0x38CFD4, .end = 0x38CFDC },
> >  };
> >  
> > -static int mmio_range_cmp(u32 key, const struct i915_range *range)
> > +static int mmio_range_cmp(u32 key, const struct i915_mmio_range *range)
> >  {
> >  	if (key < range->start)
> >  		return -1;
> > diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
> > index 6048b99b96cb..fafc2ca9a237 100644
> > --- a/drivers/gpu/drm/i915/intel_uncore.h
> > +++ b/drivers/gpu/drm/i915/intel_uncore.h
> > @@ -123,12 +123,6 @@ struct intel_forcewake_range {
> >  	enum forcewake_domains domains;
> >  };
> >  
> > -/* Other register ranges (e.g., shadow tables, MCR tables, etc.) */
> > -struct i915_range {
> > -	u32 start;
> > -	u32 end;
> > -};
> > -
> >  struct intel_uncore {
> >  	void __iomem *regs;
> >  
> > @@ -162,7 +156,7 @@ struct intel_uncore {
> >  	 * Shadowed registers are special cases where we can safely write
> >  	 * to the register *without* grabbing forcewake.
> >  	 */
> > -	const struct i915_range *shadowed_reg_table;
> > +	const struct i915_mmio_range *shadowed_reg_table;
> >  	unsigned int shadowed_reg_table_entries;
> >  
> >  	struct notifier_block pmic_bus_access_nb;
> > diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
> > index 58bcbdcef563..507bf42a1aaf 100644
> > --- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
> > +++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
> > @@ -64,7 +64,7 @@ static int intel_fw_table_check(const struct intel_forcewake_range *ranges,
> >  static int intel_shadow_table_check(void)
> >  {
> >  	struct {
> > -		const struct i915_range *regs;
> > +		const struct i915_mmio_range *regs;
> >  		unsigned int size;
> >  	} range_lists[] = {
> >  		{ gen8_shadowed_regs, ARRAY_SIZE(gen8_shadowed_regs) },
> > @@ -74,7 +74,7 @@ static int intel_shadow_table_check(void)
> >  		{ mtl_shadowed_regs, ARRAY_SIZE(mtl_shadowed_regs) },
> >  		{ xelpmp_shadowed_regs, ARRAY_SIZE(xelpmp_shadowed_regs) },
> >  	};
> > -	const struct i915_range *range;
> > +	const struct i915_mmio_range *range;
> >  	unsigned int i, j;
> >  	s32 prev;
> >  
> > -- 
> > 2.51.0
> 
> -- 
> Ville Syrjälä
> Intel
