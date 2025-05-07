Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D02AADA21
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 10:27:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F371510E761;
	Wed,  7 May 2025 08:27:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HvBkV3xm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 23ED710E170;
 Wed,  7 May 2025 08:27:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746606473; x=1778142473;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ZBc0MCfJI5eqL0dbQalbV4bS6pB7CMMKFTTqsLEnlWU=;
 b=HvBkV3xmBzZaHXgeZVbTD9oNK++oA2AESINuLLB3c3L16MYBIe6HSCtZ
 LZeY7r87BwONw1A9v7t++qLOAId1NfpsXB/x8SU6xmR6LRbXhBj6jSDWz
 5fy8FLvYy4UeaPSjZfE1CBoznF2M/0RGy/sPZEzlS3aqnRrSEepNNTNYj
 cRti1resjDWkco2ZXzOlZbpE3zYZRxIf7Kw8QLyxYz7MrG1l6zSj32nzi
 3lS9K/qAnXyi9c/aNNfohDMndLf+LpHCY9FwhgigdIlQltPaq8YmCKn/a
 3kaNzTaZDY5wNKqGNfx+qhVF1tvsF/+FEe4mLORm8PVzFj3q7a7v6TZmM Q==;
X-CSE-ConnectionGUID: SQ5IcvECSlaw/tKV0NRfaw==
X-CSE-MsgGUID: C7zzVbdGSuuPioPPgGJKWg==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="73710522"
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="73710522"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 01:27:51 -0700
X-CSE-ConnectionGUID: 6nj8qALyRmyp8NgzJI5RzQ==
X-CSE-MsgGUID: MUxKioKiSzWOaguxFbjEVA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,268,1739865600"; d="scan'208";a="136284607"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 01:27:50 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 7 May 2025 01:27:49 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 7 May 2025 01:27:49 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 7 May 2025 01:27:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Clopk+XDuk2id8x1JqhvlqGcTVEtlOXhHctWy4TWKpQyYLLNCuOEgTTQe6B4M8XVrW3tYYjmhwMzO4ArcfORFHxuSxl+eRR6frsPpe9bN5upjQa2oN8Fv8EPz0mL4nG/4pgFXTep+1u+iJwMl0eXQuyoA9ESxa+mq/93o3e5SOzPKjq9Rx4Jy8P3sTBID7mH/FTXdGVyWwdVH81mrQ7OUhuUbs95cKK4AkR2YWhuPD1eE5zTn8dJPUQuDQBbEUqHPaPJEhtyxVtV0ixzaf5M4WDM53vhcfypmX/JCiRJFrnST5sNzdaFXhEZaxcyS3V/PyhIeoxvqkSmW44Jll/vig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pebE21mg3BFAESZxcvLrZag8kt4RKc+HC+l1YyySx6A=;
 b=ReEYGPnEPpFcr2kFCsEU28691/4iuOonNie89sabW5WyF4ibKep+EZjX9IG3xkeMCkfHWlIWAQqfUKIaFfcXdFMJhS+348NmpATyp2Cmw1RTSh2PwTThbc+tS+/7ROZeIJ4FzKHRwbQa4db7PjkQdGOI36XdjzO0DVIstubqy9IpZwEXiPD9pXPeZRJSDtv/8X3BfKaTHrjPnXr2KUWZBVfLOhBtul4juvLxJPFGiDwXCyr4wqoN0llq67/oj2JVv3RzqM2t/YipcxKh0dI9XLlMnW8sMfR9cUg4TFlTR2RrM5wS02w44eqruAipuZ7/1/XyjKEUgNxKibTMdNjlsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB6121.namprd11.prod.outlook.com (2603:10b6:208:3ef::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.27; Wed, 7 May
 2025 08:27:37 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Wed, 7 May 2025
 08:27:37 +0000
Message-ID: <1407e267-5ef7-43a5-b818-0b905c912102@intel.com>
Date: Wed, 7 May 2025 13:57:31 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 07/17] drm/i915/vrr: Add DC Balance params to crtc_state
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@intel.com>
References: <20250506145517.4129419-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250506145517.4129419-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250506145517.4129419-8-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0024.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::10) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB6121:EE_
X-MS-Office365-Filtering-Correlation-Id: 803ca7cc-dde8-4c07-97aa-08dd8d41063c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bDkvVExHSCtyeFVZRk1PUnZROStJZXg3Mmd3blNwZWRRcDAyV205eEZjZDRE?=
 =?utf-8?B?eitxVlhMSW5uaXB6M2ViQjNCMFJWUzY2ejVObDFiK09OYkRoaFpQR1poQlc2?=
 =?utf-8?B?YVp6ejhZQmdTRDV1dUVMZHpZbFhyZS9ITkJ3cTVkdjBCTEpLM3lNd01uOWZO?=
 =?utf-8?B?Um1EY2VFRENIaWpnVWtwQ1I3NkpHdmFoREpuL0hCdU5lU09hRDkxdGtpV1hu?=
 =?utf-8?B?SlFXRFhtbm5ZU2ZSc0cvNGdQS09NeGMxeDZ6a0diLzNrVFFiRWhHdXJzVlI1?=
 =?utf-8?B?RmMzMGtKNzhYT2dmQWVaYVlHMVJSVk5KdDU1RVZyalZYOHFjdFBiOFplc1hj?=
 =?utf-8?B?VjZxRTI2L29nRWdGbEx3VnV1ZmVNVjVJRnFrWEVQeW5XL2tFVEFGc2RpZXJQ?=
 =?utf-8?B?YWlFVCt3dTJkb005UWdIbDZQY3RvdG9KMTBGR2xJeWt6TEtDYjFJMU5LZFlP?=
 =?utf-8?B?Mk4ySS95L0x1T3lwSGkwazZOM1lGU0dHalZxT051ZGppdC9ud2c4YXY5cWlM?=
 =?utf-8?B?K0w5aE9TbWlnbDBTM3VCUFVaMmdCa2hnSkJ1a3Vhd296NlFkZEp2SHc1Qms1?=
 =?utf-8?B?NVk3ZzZkS0RnWWNiaVhlRTNieHdzMGlyRHBHcXRFUHB6WFMrcDBHM2wvQXZx?=
 =?utf-8?B?UzJIcmxXbDhFZUppZnY4NHVndW5XQWw5S0poNkxoY3NrWVlKZE1jczNObXlV?=
 =?utf-8?B?NWFqbzQ2UFVlcHJrVjJxVGppWDVDYSs0QkN4bktULytQQjJVSzVoK0d6N2I0?=
 =?utf-8?B?TTc5NHJwc3BkVTBna2hYQ2h2WC9kK0FGZHdJWUE5cW85Q3pNQS9mU1lyaFJh?=
 =?utf-8?B?eW93dVRBOUpkNTlsdlk3R1VqMGc0NHJEVFpheEFDRG9jVDJFVDYvdVVtdEd4?=
 =?utf-8?B?dWZLa2Y3YlJzYkcxelFVTHRCQTRBZjhsalpOaTljZGNSb3lwVWhGNE5idFlP?=
 =?utf-8?B?eWI5U2lqUVZYaFllKzZwMU1PZlhveks3R2ZoVlA4Tk9ycmFUcnZIV0RkTW1v?=
 =?utf-8?B?cUJiVEZRcTZpcWJJSjhZa2hZeXNFOFBlV2R2UENwbGhMeFEwT3JUa3JLV1A2?=
 =?utf-8?B?Q1Q1ZnZpbS9hckoxbnlyMDRranlWckUwODVoT0k2Vys5UFdveStWS0k2eUNa?=
 =?utf-8?B?TFhRU1ZIQk12UHlyWGhvNkIzakN1SXFORUw4SkJhanlOTFRuTjFQZHFIQXhS?=
 =?utf-8?B?dlc0Nzc1bCtrODFKUmNlMEhNMlNpd0ZJTEdDd2szeFE3V3BjSEpETE83SWJJ?=
 =?utf-8?B?RnRkOUg3ZnhKOCtZd0VlSzNmRUpNWU1mS3JOSlJaM1NLUHlBeTZvMjBXUmYy?=
 =?utf-8?B?VEcxOVl0MGlHSU9DYW9xUGVqdnNTUnZIK2o1ZnhJeURCdWhQc0JLNGZCeEM0?=
 =?utf-8?B?QnlxODRJdjMyNCtOTVpiY2FENlNZYU9rcmdLWDdmVXFuL1dlTytYaHdzRWJy?=
 =?utf-8?B?RmlydVM2b1JhYXoycGtZR0JpbFhRWllnbDRUZEtHeDNqaUdoWDFseGY2amZ0?=
 =?utf-8?B?QXAwdHp5cXNIM01sOENrbXZ6RDJmb0xmUWxQNEszSHE5aFUya1p2TlptODRz?=
 =?utf-8?B?dEx0bUcyL2QrbEtBZXp5WmNNczg3K3NZY2pEdDU4MkRGc3ArUm9xTzVlZ2tO?=
 =?utf-8?B?TVlTRmdSMVlwaitXRUM4YXhweGZ5b0haRTAzU25HTzJRNGdMOEc1MHQ1OHJD?=
 =?utf-8?B?ZzNyMkc1VFgrZmtuMnM1eG9LelNlUTg2N3daLy96alBzalNac2ZYL3o5U2ln?=
 =?utf-8?B?dFVyTnZPT0R5bDU4OGwyMDRJR2s1ZWRZRVpjc1gvMmNVUjNRbVZoMk9hZFRK?=
 =?utf-8?B?cUhuUWk0bE56L2tsdTJWejhNenVjWmFNSjdRQlcyNzVldWg1djA5cTlkSVFR?=
 =?utf-8?B?SHZUdWlTcWdoOXh6SE1JYVExd2dYeVVDQUxaS212d0l1YlA5N0EvU2dieHNj?=
 =?utf-8?Q?rsKKvrAobuc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S1dQYU9GV0NkcHJjd2tKbzlMVFRmaEp2Q0lWbElDU2RxeFZHVkhaRVptbnRS?=
 =?utf-8?B?bTFJaG9aQm04Z0ZsTVVHUWdVL1BsUU45MmRIdU8wWGdVYTRHeC8wenhKeSt5?=
 =?utf-8?B?ZmwwTTNJRk9EVlFVMXdPeDhKWldEN3RkT3VTQ3pDS2I1YyttVWNyN0h1bVRM?=
 =?utf-8?B?UlZlaGIwd3YxZ0x0Y1NkOUNVUTk1TE0zWDVNTSt6c0xrV091VUdWRzZHdkNq?=
 =?utf-8?B?Q3F5cHdGSlRPazdJdUMwcGZDUDFFTGVYNjR1QW9tUU9IQUphUVUyRGFpK3Fj?=
 =?utf-8?B?TDlJWEc5cjY2ZGNKbS9TNktQcWIrNTIwcjdKYUNYZDJKYzJ3ZVF5aExOTXVh?=
 =?utf-8?B?em8xZHo3eVFWR3NMUkNQcVdnNVZyalRFWDhaR3ltWEIydjgxZU1tQ1BZQytv?=
 =?utf-8?B?RkZuUXRnUVpOdTUzQ3Z0TVFKSDRSb1V1NGZic2dOV2N3VmtkZ3Z1a2pSNHdo?=
 =?utf-8?B?czQvMTZZbm5TYUo3VkN1ajJlWjNXQTJjYkhSWEJZQjc2OEVzaWpnUVJYeWdC?=
 =?utf-8?B?WHhwOHVWZVBjY2NaUEQrakJKTUJhcXg4TlRXaWJDSDhtQ1NlYVJzZk5sNVJh?=
 =?utf-8?B?RnVLdW9MeHBQR0ZVc0d4d25KZkxyanNqTFVxbmFrblAyd0lFcGFocmpGZElD?=
 =?utf-8?B?WmtjaVpUYmtyNU1hbjM5elVJaWNDVyt1SEU5UXNCeTlGZXlvbGNETG9GS1N6?=
 =?utf-8?B?WE9VbmQ0NE9odCtZNVlYL0M1OUlkcFNqMDFsQkNKQlVsREhSYmVuMU0yK0Fm?=
 =?utf-8?B?Qnduekh5WGZmSnVCd0NReCthdzZkdEl0a3V4Njl0Wm5hOG1IR0tzd0lDUExw?=
 =?utf-8?B?Z1FHclNxTUFtaVkxMXNYTDN0bGd1YUZ4NnlXN2IzUVpyQk1ZVmdwMi9PcUhp?=
 =?utf-8?B?ZVBXaFI2ME5mcmVCanlUalc2K3BSWXZlZlcwNE1tLy95WGJhaVBEdVhqamls?=
 =?utf-8?B?ZWdERTRwemh0STB1R0tBclJySTlqa2lTTk8rOWFYMkgyYWErR3o2NGNDWlVE?=
 =?utf-8?B?dDZXYWNzVldZTWdVbU5hRmZwc2xvTnl0cmNFR3AzRnJDMEFTWWRvWkpLZlRa?=
 =?utf-8?B?dStZcXNFbEFPWms0YkRWSHdvZFdka0J4WjNpTVVqV1VaV1ZLNXU3K2VoeUZE?=
 =?utf-8?B?UnhpeVFnR0MvdnpGZ1FBV2VmajBHRGRNR0ZTTko4cFZXSThheTFiazBrTVZn?=
 =?utf-8?B?ckhpZFVCUnJ1UzliZHNTOXpLMXlYOS9zcnBGY2JkUkRSLzNkN1Jld0Ezd3k2?=
 =?utf-8?B?NmxscDUyNVlJQzF3Qlg5TmJKZUpvTHl5a2trbnUwZC9NenN6ZTBBMStDbHFv?=
 =?utf-8?B?MVorY3BjekN6UjVuTGtUSTIzQVpvZm4rd1lGV3FPZFdPelozOWRSd2lRd29C?=
 =?utf-8?B?VkRHb1o4T3I4d0RYblFEVTMvQjJjRVVNb3V3cnVJSVN5cmFhaDEvUEVKblNM?=
 =?utf-8?B?VTFoR0hnZUttT0p1YXRLRnAvK1h5cCtYVW9xYWV3OUEzUVhISnBrbjlraVg3?=
 =?utf-8?B?WnpwaWc3b2V6QkF6MmRlMUVxM3hDdGFaNXZDQks4cVJpMGxsSnJCcFVxb2tp?=
 =?utf-8?B?dUlGRGJudkhickMwbTAwYnpKdC9CZmlFenJVLzJMSHhINGtNQW9Ya2VRUDVD?=
 =?utf-8?B?dGs1U2V2TjlsM20vamNsd3c5TzZkbDE4R0VTbENZVGptcmpxUUNYYW1RRHQ1?=
 =?utf-8?B?bzB6cEMybEZsMHRtak9oWGNpTnA3ZVF0eThJRDdXVTNtMTFxbDV5NmhpaHdj?=
 =?utf-8?B?TzQ0a0ZCWkRYZ0ZUYzdmV0ZVMU55NEZRM2NpU3gxVHJYNy92c0FBSitKR3Fn?=
 =?utf-8?B?aVdRR2dyZ2wveFdXbk1KaldoOUY5YnFqbWV4dHJJaHlPZ2dwNHZJeERITGVS?=
 =?utf-8?B?dFZBVGFJSU9lWWpiZFBscEEzZXlzSDZoY1JwL3p3Z2syWjNMdlExTUxEdHEz?=
 =?utf-8?B?N1FCVjF4d21PMjJhUGRYUUw4TU5CcmszRlkvNStWaG9CWURxNFlxS0hnU21F?=
 =?utf-8?B?MGZWV2U4QXhCQmpieHBqbXg0bktabENTYXVESkQ1VjAvRTBOeXpCVVVGT2tE?=
 =?utf-8?B?WnRRQ3hNc0l1cjdoUHFRbU5EelB5VG1RNnlSL0VSZ3RZT2Q1LzNXb2JUNzVw?=
 =?utf-8?B?eHdNc0x3VnFsSVByMDFGYlorVkpNMXhRakVjM3cwMWVHd3gvbDJjeE1lRi81?=
 =?utf-8?B?ZWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 803ca7cc-dde8-4c07-97aa-08dd8d41063c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 08:27:37.7152 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: va7dpHR7Zb7+uh6MPRouNDYxJWP/zg1ghwXCu5Bxr4EjDOi9AGlnCZCL/8K16AN4d/e0WtwQImbUf7b/FCyIxQ+VKgX05n36kFjdN7+DkR8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6121
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


On 5/6/2025 8:25 PM, Mitul Golani wrote:
> Add DC Balance params to crtc_state, also add state checker
> params for related properties.
>
> --v3:
> - Seggregate crtc_state params with this patch. (Ankit)
>
> --v4:
> - Update commit message and header. (Ankit)
> - Add +1 to VMIN and VMAX only when it is non-zero. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_display.c  |  8 +++++++
>   .../drm/i915/display/intel_display_types.h    |  7 ++++++
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 24 +++++++++++++++++++
>   3 files changed, 39 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 287110e4e435..20c7c6eb485d 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5412,6 +5412,14 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
>   		PIPE_CONF_CHECK_BOOL(cmrr.enable);
> +		PIPE_CONF_CHECK_BOOL(vrr.dc_balance.enable);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vmin);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vmax);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.guardband);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.slope);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.max_increase);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.max_decrease);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vblank_target);
>   	}
>   
>   	if (!fastset || intel_vrr_always_use_vrr_tg(display)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 7415564d058a..e6b5bec748cd 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1308,6 +1308,13 @@ struct intel_crtc_state {
>   		u8 pipeline_full;
>   		u16 flipline, vmin, vmax, guardband;
>   		u32 vsync_end, vsync_start;
> +		struct {
> +			bool enable;
> +			u16 vmin, vmax;
> +			u16 guardband, slope;
> +			u16 max_increase, max_decrease;
> +			u16 vblank_target;
> +		} dc_balance;
>   	} vrr;
>   
>   	/* Content Match Refresh Rate state */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index ab4f8def821c..726fa49558d1 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -10,6 +10,7 @@
>   #include "intel_de.h"
>   #include "intel_display_types.h"
>   #include "intel_dp.h"
> +#include "intel_dmc_regs.h"
>   #include "intel_vrr.h"
>   #include "intel_vrr_regs.h"
>   
> @@ -676,6 +677,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum pipe pipe = crtc->pipe;
>   	u32 trans_vrr_ctl, trans_vrr_vsync;
>   	bool vrr_enable;
>   
> @@ -738,6 +741,27 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   	else
>   		crtc_state->vrr.enable = vrr_enable;
>   
> +	if (HAS_VRR_DC_BALANCE(display)) {
> +		crtc_state->vrr.dc_balance.enable =
> +			intel_de_read(display, PIPEDMC_DCB_CTL(pipe)) & PIPEDMC_ADAPTIVE_DCB_ENABLE;
> +		crtc_state->vrr.dc_balance.vmin =
> +			intel_de_read(display, PIPEDMC_DCB_VMIN(pipe)) ?
> +			intel_de_read(display, PIPEDMC_DCB_VMIN(pipe)) + 1 : 0;
> +		crtc_state->vrr.dc_balance.vmax =
> +			intel_de_read(display, PIPEDMC_DCB_VMAX(pipe)) ?
> +			intel_de_read(display, PIPEDMC_DCB_VMAX(pipe)) + 1 : 0;
> +		crtc_state->vrr.dc_balance.guardband =
> +			intel_de_read(display, PIPEDMC_DCB_GUARDBAND(pipe));
> +		crtc_state->vrr.dc_balance.max_increase =
> +			intel_de_read(display, PIPEDMC_DCB_MAX_INCREASE(pipe));
> +		crtc_state->vrr.dc_balance.max_decrease =
> +			intel_de_read(display, PIPEDMC_DCB_MAX_DECREASE(pipe));
> +		crtc_state->vrr.dc_balance.slope =
> +			intel_de_read(display, PIPEDMC_DCB_SLOPE(pipe));
> +		crtc_state->vrr.dc_balance.vblank_target =
> +			intel_de_read(display, PIPEDMC_DCB_VBLANK(pipe));
> +	}
> +
>   	/*
>   	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
>   	 * Since CMRR is currently disabled, set this flag for VRR for now.
