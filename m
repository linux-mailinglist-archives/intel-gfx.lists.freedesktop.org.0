Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DC3DCBC0569
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 08:30:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01D4D10E568;
	Tue,  7 Oct 2025 06:30:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aycmJYsO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55D2710E568;
 Tue,  7 Oct 2025 06:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759818645; x=1791354645;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e+CmnoZ3nlmsN3RdSO6SETuYnAIrMTCeKQVKIaG7B5U=;
 b=aycmJYsOYCfL/vXhHGIDJ5oQA/SyoN5q+FlkmxEBsXTmONXqMENOsIYu
 /YnffGlpAu/wlu5XXqempO1C3xH84hjyB0fICi3gWhyGshzDuBUhSHtOs
 sNG5vOnWc0UsTMwcnFutfr8x3Hlw7GJhxjmeo9HByCfVpG2mB5vDIwbFZ
 DBe/yvX4QSNhsW9g3zIdTMw0wyu510WXNQNYTirPpqvunXzg9p+G0Zk8o
 xQXG99butuxheimWhbM1welT8d9vuBD3EXebyPYZhj15gIXFutGEocucV
 LK/jJp9MGOjumGT5cvyH83e6h183k+s9EkhB++BqpVkEaCPHDtjiIAU+M g==;
X-CSE-ConnectionGUID: lrDRHlAoTfOpoFUDeu37Uw==
X-CSE-MsgGUID: 4YW1x1mMSIm3J3kkcWyVGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="65845695"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="65845695"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 23:30:44 -0700
X-CSE-ConnectionGUID: qIYCO1BPRlq2/mfdhq9mDA==
X-CSE-MsgGUID: vsnMxSN/RCmYw6HX1yPxtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="184441813"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2025 23:30:44 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 6 Oct 2025 23:30:44 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 6 Oct 2025 23:30:44 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.30) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 6 Oct 2025 23:30:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ce1ZRf4BNsxlZd9A93lC6atJ+tVInstZK0JqKTgQS2a2BcQymG2xgeC+6GEE14lqqDIhb9B+ZPrHZQB9tJDudkcpd5D664a2opVeZDaQfNmjExxANEgC9NtFrRnMykSmqZrYZfD8kCn7NAJIAqBWvKApDvwRh8PGecEmxj+Tjl1bPZjNVMkiPMSbdat2eGvDfo219Wg7ld38vaYmcywjDktN7zYCatV9m8CRn8fM1P7yl+7Ts0mrXxeMina7dSHhwzfKoYD2uDHE2oBpnjDafrdtVU6dLb824m2cHAprH4NweroSou8DLfaME1PQjiGLhn2rynXbp9jnOtJCW6/1Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aPcKrjBR+qk2M3GtltLvxDWuonDYV9hLXWEkXlu7TbI=;
 b=vl4LrSvcq5OmxV7JNNhQabQU0Eb/LwBXVdHNSUWjXTGvVkUr86BYDABA7HuKGrk5kVLhSM1dNi9nZ9Ov1he9Tw3K5sVuvLQTOrCJBCX671XiNM+DAcMrdQzVAsSeuHtZrtAO3+REv+B8bbXqbmchvWIcxAIIsZdrX9oQb9hCRYCo41iJbDgaC/ZQEFdfFzrQ70K06bpS1fo6IIR+NNXv8E9ZcKreNzJtenQD+Z8zFu2A7apoQF/IvRSqGxzRLyT8rMG9gNkRC3OwCJ4qJ641EbhS+z/6NZCLRdDBGsuAB67HPKq1rXKFzD72Wg1DjTd9bL3FlPjm5prOzqPhgUV0BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV8PR11MB8678.namprd11.prod.outlook.com (2603:10b6:408:20b::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Tue, 7 Oct
 2025 06:30:41 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9160.015; Tue, 7 Oct 2025
 06:30:41 +0000
Message-ID: <3fbab09b-28c7-4984-87af-1055daaff252@intel.com>
Date: Tue, 7 Oct 2025 12:00:34 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/16] drm/i915/display: Add vblank_start adjustment logic
 for always-on VRR TG
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20251006042852.263249-1-ankit.k.nautiyal@intel.com>
 <20251006042852.263249-14-ankit.k.nautiyal@intel.com>
 <aOQe8QaVZBLIquzM@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aOQe8QaVZBLIquzM@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0029.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:178::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV8PR11MB8678:EE_
X-MS-Office365-Filtering-Correlation-Id: e092299a-53a2-431e-b975-08de056b092d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NCsrOWdaWmVZSmowVDRoQ1lxQmRUNkhzdmtGZVJPRllMcmtqeDVVNkVGZXhK?=
 =?utf-8?B?RGVERVROREJBMWtibUQ1bCtyN0QzS2toaytqR0xYRkFMbFB4SXp5UEJsZlQx?=
 =?utf-8?B?bmpjTlg2MUd2ZUNjSXpEdEdZdnpvL001a1h5V1B0RTRpZ2Q3djZBdnNnKzNi?=
 =?utf-8?B?ZXR6ZEdzTFYzV3E5TWNOZ3QvLzQrM2xrL0l0djZ4UFdrMHE3VEwwWnBvNCtu?=
 =?utf-8?B?SDR6Tm9mRzY3cFFwMjBhRzNSOFRIUDNTaXh3L0JRRnU0TXk1NThhS2ZrMnUy?=
 =?utf-8?B?RmsyZEtUeGlqcDNIZ0hsTm9mR2RzTWdkc2tzS0lLWmZDY1VsVkNQU1dXbWZZ?=
 =?utf-8?B?VkNzNE1PZWtvNXRtWktpS09jWUQydWxQRitleUlQUjB6MWFxdmNsdElhblhm?=
 =?utf-8?B?enh5MEU3a2dVd0pJU1FGYkdKdjl2SDVaUVA1OTdlZjFkUGhiOE1lVzhsWUV6?=
 =?utf-8?B?ZHdmV3hBLzI5dzMzWHZlVjR3VXQveDZMbnBGbU9rZXVNcU83ZURhZEJvTU9m?=
 =?utf-8?B?TUdnNFNtVzlyYnZkRjE4Y3NHOVRsVHBrVUZGNkJ3K3RVdnhYSUVZaEtrSDF3?=
 =?utf-8?B?aVZtNUFZRGptdThwb0JnNnFrZGtkVmxBNVZuZWVhaEhwSTZsWXI4T2pMNWcx?=
 =?utf-8?B?OEdEOE5rNmpBN1NuVGY5OCtwSXhBM0lxYjBuUjM5c2FtL2dKSS8wMm9Qbjls?=
 =?utf-8?B?UjNpOG9ScVBSTHp3SjN2d0tlSTlRQU96OEpDaStVbTBoWjFJUSs3aFVQRVJw?=
 =?utf-8?B?ckt2RDMvQnMrMjhDN0NDWVc1bllKYU00bnI0SG95RHdtL0xYeEhMdjdKa0Iz?=
 =?utf-8?B?eWd2KzJCRWdZdEYwbnlsem1udDRrM3pacE1CS1BVYTlCQkp4N2I5MUloemNL?=
 =?utf-8?B?enc5L09LN0hLckdTOVRSQ1ZFZ2RGMVJpN3ExU2tsa2V4NktQeG9GOXFDVjNq?=
 =?utf-8?B?cks4V0duaWZiTEVMNGZUdnVuSEZvUEhOQjNSMW1QWm5vOTdpaEIzbFNnaDdk?=
 =?utf-8?B?WHZyYWZRK0VkYnNBVWpCWXNPR0VXOEZqMXZXSjVLZnlEU1Z5UWdlNjVYTVdC?=
 =?utf-8?B?OW1jZXNqSEdTODI2R20vV0ZPSTFZUXdXU3NkS0hzckg2MGhob2pOV0tLdHVn?=
 =?utf-8?B?TFVadmx0YTlQelo3bDl6NVZtenBEdSsrbW1lWXJ1bjNUaDZqdlFHMGd5UEpN?=
 =?utf-8?B?N1Rmd3RlYUhZaWpKWTFRRStlT3pKM0xLTTF3RzlnY2VrTTdyZnc0anBsd2Jm?=
 =?utf-8?B?SUV3RzRTT1REYTE5QzVlQ1h4dTRPMFhtbElaNkgwV25vYlRwZjJQL3BzMElo?=
 =?utf-8?B?SnJJZ2J3T015cGw1UjROVnlGeHRjc29tZnE3Q0pLanZGU01FZ3RWQ0NFampo?=
 =?utf-8?B?SEM5ZlJSbXowUHpwWnRueGZ1NEdBaFBXWEx1cEFrdHBUaTRDWDBUOXR0L3ZU?=
 =?utf-8?B?MnFwV1BFQXAvb1lyTHpXbktieEl2N3Mwd0RhNlgyS1FSNEZYL3ozM1ZIVmd0?=
 =?utf-8?B?S0F4TXk4ZmJsR01SektBbkNkM3BFYUU0Zy8yWExlTkFGMU1lM1BYbWVrL0ph?=
 =?utf-8?B?VkJBZVhiby8zV3g3QkFqT01NdWZVNXpOVUpGM1RhcFBLNHlOQThGdG1ZeFlJ?=
 =?utf-8?B?Vkc1Y0dkbWo1QVcyOXVXMXdJbjhsWm1sYkREeWZUdUUrVHRSbXdjQm56WGUr?=
 =?utf-8?B?NDdveTRjYXBjSU4wa1d1aWpsK2tlVk1Ecit5TVB1dGtOaGEwMUp2Sjh5azBr?=
 =?utf-8?B?T3B3L2lEVVNVYWFvR283aGUxTTdnSFdEVk40ZWdLRklMQ1VucUNOUUN1empk?=
 =?utf-8?B?eTdOdGkxUFdGQTdMWFN5WDd2c2lTcUwvMlZBTFV6eXBMVDhwSGFGSzVkekx1?=
 =?utf-8?B?bmtYRGY5WXRhKzN4dVNWdGQrL0Q1aVFkR04yc0VpVkFYWlZQR0xFLzVyek83?=
 =?utf-8?Q?ZMer+R+T5GjVXTFX1Y9N9Qs0eyPiohYa?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z2tQZk5SWXFPcWtFcWtaaW5sNTI3elFWVGdSelBaMm1MRjh5N3NqdEQ0OUY4?=
 =?utf-8?B?UEhCRVJrRmdleEtEb3pUNitVUGZoSW41aGE4UkYvYkt6QVY2UnB6T01yanhw?=
 =?utf-8?B?bWFTS1VXemY4T3FYTzBvWjI2WmoraXZkSzhqTEo1WE5ibWNWNjhQbEtPYzhq?=
 =?utf-8?B?aDBDak85b1hjdDUwSTNRZ010ZEFoTEVKcHZUcmgvcVhCNE8vek5Qd0JRTHlo?=
 =?utf-8?B?M1hRSHovbm9iTDRUL3k3ck1QWGVjZzdEeEozTWR1anBuaXk2QjV6ei9oRnBo?=
 =?utf-8?B?VWFrOTA0Uk8wZTlpc3RKajIrSmRnb1UwMGluYTQrcUh0TXhxWmFoUDJ1ajdl?=
 =?utf-8?B?cVhYSnF5L3lYTVZDV1RxTTMwcGVrNTNXUUJjM1JTVjhXTy84TlkzV2RDOFNF?=
 =?utf-8?B?RDFNLzhscFlkWVltZUpmaG4zb2ZEWERLZDIwRkZlcEhNb0szWVQ1SndFMkhW?=
 =?utf-8?B?Unc0L0pDRUI0czFGNWp5ZTlHMDE4bVprZi83eXNxMnpLSTlaSk5VWk5uQjdy?=
 =?utf-8?B?SHZIbXRlNGwydG52YTFMci9LSTdPa24ydEJ1bStkQXRBdnJ4STZ5S3VSYURS?=
 =?utf-8?B?R2g3UnV1SFErc0UvU2Q2SkU0Mmk4WnpLTGJSWE1KRmpDSU0wZHppbmd0TFJu?=
 =?utf-8?B?YVoxelUyd3QvbGQ3dmZkd1UzYWFON0JxbHFCSXJFY28yM1JMUGJ5WlpLOVla?=
 =?utf-8?B?am5aaXlkY0RjQnk4aWZ3RVlTTzNBQ0N1aXpBQWNJZC9Udlc2bDJ5RlBmY0Iv?=
 =?utf-8?B?TlZlcEZGdUhva2lFQklRbC82MS96N3BOM1lFZUNjZDRLeXZmTURqSlR3YTFM?=
 =?utf-8?B?Y3FxaU9LUnI4QlloMGxwc1FLeVI0YTBqM0xCZEppOVZoL25DZlBXZHMraDQ4?=
 =?utf-8?B?TWM0aXgvUWR4Z3dCd0VZLytqSWZVcVAvNUNYNWcyd0xIZUlpU29SdlY4U1pu?=
 =?utf-8?B?Zk9nTzUvZXhLcXlUSVg3ZDFZSS84VnBBQmUwckR1MHp1TTVVV0t0TSt4RnZN?=
 =?utf-8?B?K3RJaFZpRHBodEhqM2syTXRvcWJVS1NHT09yYjR5eFNVdlpTWVROdEh5TXNU?=
 =?utf-8?B?TXBudTdyaklDbHpOTHdkSUk1d0ZUd2dOUXU0eGhrL09vK1VVYjNPK0dwanlr?=
 =?utf-8?B?U09XR0dEMEpBZGxJdkN0QkdNK20wUTRIZFpNTzFlSkxZS25lcG9kRnlYZDBP?=
 =?utf-8?B?VUhxNmJPM05ZL2k1NFI1b1NHaTNXd0s3UGFBbFhOS3Z5ZFFlV1JJMFNpVGdP?=
 =?utf-8?B?Z2tmYWtab3B0cHFVaTI3NmFkN1labU4xMXFiNVJpWTJYVVBvZGs5TkZHTzNu?=
 =?utf-8?B?Mm9qVUU2UGdxYUVQZG4ydHdtR3JKaVF2VjJuRXpCbDNtTS9hMWZLeXhkQnBw?=
 =?utf-8?B?aVV2eGR3VXhxYzRER0tiT2RCUUMyZGZhQk9JZG1Dd2tINGFuSTBCK2NBYkhs?=
 =?utf-8?B?amRhWEJ6KzNZR1pncmNhUUdySk8rV0ZsQm1YaEdSd0dEeUpGRElOSXg0ZEo2?=
 =?utf-8?B?NmxoaUVJUWVvZDlaRktIYzNSOFJRSUNCV05VZytPRzZUdmpsWUJuVGg0TjRv?=
 =?utf-8?B?WkNvS2F3bkJPUEJpU05qdGNybXhqL0hIejFyb1dYUytjNlVnZGREVnB1Mm11?=
 =?utf-8?B?YU1YOUN3dkpnT1cvK3lWYmxhOVo4NG9hbUwyLzFzdEhtYXRHTzBPNWtpa2V6?=
 =?utf-8?B?R3NuS29yYnFoajFIRy9pZjBGMTF6bGJpREYyUWd4QlgrUjRlaGZ0YnVURGZL?=
 =?utf-8?B?THJWRW1RMWZnUjhjWUZYSzU2aitoVHJReWp4aCtRMFlWNW8rRVhObVdqNzRV?=
 =?utf-8?B?bThsNGFxQk4rRS92dldUS0ZUelViZXVlbzhCVkFtbmV2bVROVEd0azFxWmw0?=
 =?utf-8?B?L1dNdlFaRUQydGJqaEc3d2lmVmlmRzBnUVNlVUdmcHdMU0U3aVUwTXFaM3Zm?=
 =?utf-8?B?QkdPL2xNdEMrRHhmc0plMUo5c2E3alQxdlROektwaXd2TVZHVzFyQzNhZ1Vs?=
 =?utf-8?B?L2NKb1JVVmoxR0wwNkFuTERXR1BhdGNKbXlOb0ZpTHdOejBJVzBFR3JHbUp3?=
 =?utf-8?B?OHRDODh4MnBlNU1xTTcrVFkreUQ2L2ZlRkUrcllNbk5xNTZ1ektkZGNHbThG?=
 =?utf-8?B?V3RUMjd3czVlRDJRTVZvTkx4VE40QUMreEZHSDc4MU04SGhVMGpRN0FTdFB5?=
 =?utf-8?B?SXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e092299a-53a2-431e-b975-08de056b092d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2025 06:30:41.1850 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c3YBI/gzNmojusNjJs1Uf9Vi5esESX2gjReDtOLyMhYoLkIHhjDYhGgjhZ38wF6iS2zdruL326IBaYe0UvJAZOVZ5ewiZWHZNAiNlxynV80=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8678
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


On 10/7/2025 1:26 AM, Ville Syrjälä wrote:
> On Mon, Oct 06, 2025 at 09:58:49AM +0530, Ankit Nautiyal wrote:
>> As we move towards using a shorter, optimized guardband, we need to adjust
>> how the delayed vblank start is computed.
>>
>> Introduce intel_crtc_compute_vrr_guardband() to handle guardband
>> computation and apply vblank_start adjustment for platforms that always use
>> the VRR timing generator.
>>
>> This function wraps the existing intel_vrr_compute_guardband() and adjusts
>> crtc_vblank_start using (vblank_length - guardband) only when
>> intel_vrr_always_use_vrr_tg() is true. Since the guardband is not yet
>> optimized, the adjustment currently evaluates to zero, preserving existing
>> behavior.
>>
>> This paves way for guardband optimization, by handling the movement of
>> the crtc_vblank_start for platforms that have VRR TG always active.
>>
>> Also update allow_vblank_delay_fastset() to permit vblank delay adjustments
>> during fastboot when VRR TG is always active, even without inherited state.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 33 ++++++++++++++++++--
>>   1 file changed, 30 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index b2d4e24fd7c6..1964e41b5704 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -2403,6 +2403,27 @@ static int intel_crtc_compute_set_context_latency(struct intel_atomic_state *sta
>>   	return 0;
>>   }
>>   
>> +static void intel_crtc_compute_vrr_guardband(struct intel_atomic_state *state,
>> +					     struct intel_crtc *crtc)
> Why this wrapper? You could just stick the adjustemnt into
> intel_vrr_compute_guardband().


The idea was to prepare for the optimized guardband which needs 
connector also.

In subsequent patch I am getting the connector here to use the optimized 
guardband only for platforms with always_use_vrr_tg=true.
And at last I am making changes in intel_vrr_compute_guardband() itself.

As for this patch I can just avoid the wrapper and just use the adjustment.

>
>> +{
>> +	struct intel_display *display = to_intel_display(state);
>> +	struct intel_crtc_state *crtc_state =
>> +		intel_atomic_get_new_crtc_state(state, crtc);
>> +	struct drm_display_mode *adjusted_mode =
>> +		&crtc_state->hw.adjusted_mode;
>> +
>> +	intel_vrr_compute_guardband(crtc_state);
>> +
>> +	if (intel_vrr_always_use_vrr_tg(display)) {
>> +		int vblank_length = adjusted_mode->crtc_vtotal -
>> +				    (crtc_state->set_context_latency +
>> +				     adjusted_mode->crtc_vdisplay);
>> +
>> +		adjusted_mode->crtc_vblank_start +=
>> +			vblank_length - crtc_state->vrr.guardband;
> Why aren't you using the same 'vblank_start = vtotal-guardband' here as
> during readout?

Hmm I was thinking this more as change in the vblank_start. In 
compute_set_context_latency we move the vblank_start by SCL lines. Here 
we move further as much amount as the change in guardband.


But I guess that is not very intuitive, so I will just set 
crtc_vblank_start as vtotal - guardband here.


>
>> +	}
>> +}
>> +
>>   static int intel_crtc_compute_config(struct intel_atomic_state *state,
>>   				     struct intel_crtc *crtc)
>>   {
>> @@ -2414,7 +2435,7 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
>>   	if (ret)
>>   		return ret;
>>   
>> -	intel_vrr_compute_guardband(crtc_state);
>> +	intel_crtc_compute_vrr_guardband(state, crtc);
>>   
>>   	ret = intel_dpll_crtc_compute_clock(state, crtc);
>>   	if (ret)
>> @@ -5105,9 +5126,15 @@ static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_s
>>   	 * Allow fastboot to fix up vblank delay (handled via LRR
>>   	 * codepaths), a bit dodgy as the registers aren't
>>   	 * double buffered but seems to be working more or less...
>> +	 *
>> +	 * Also allow this when the VRR timing generator is always on,
>> +	 * which implies optimized guardband is used. In such cases,
>> +	 * vblank delay may vary even without inherited state, but it's
>> +	 * still safe as VRR guardband is still same.
>>   	 */
>> -	return HAS_LRR(display) && old_crtc_state->inherited &&
>> -		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
>> +	return HAS_LRR(display) &&
>> +	       (old_crtc_state->inherited || intel_vrr_always_use_vrr_tg(display)) &&
>> +	       !intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
> This part doesn't seem directly related to the making crtc_vblank_start
> correct. We still use the non-optimzied guardband so crtc_vblank_start
> should not be changing during normal runtime operation.


Yes we do not need this at this time, but only when we really start 
using optimized guardband.
I can make it as a separate function.

Regards,

Ankit


>>   }
>>   
>>   bool
>> -- 
>> 2.45.2
