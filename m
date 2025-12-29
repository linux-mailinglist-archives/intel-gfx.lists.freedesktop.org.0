Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A7E7CE5F84
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Dec 2025 06:31:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B343310F495;
	Mon, 29 Dec 2025 05:31:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WjXwQ3o9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C55DE10EF86;
 Mon, 29 Dec 2025 05:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766986260; x=1798522260;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=yBqNymrCHGnOoJajzhlBjD1l1XXFaTAM4E1ipHtl/E8=;
 b=WjXwQ3o9223ce0KxUWJggEvIywniOqJMjcxPLW0RCv0ue+ERuxRy8hUq
 7TpMM01PLsX6rXDdrLKAHEn4gJ+/DHNTjF46wmXIMMbQY0fKiMfcf8heP
 FvNa2fh9O/X0dncpEQTTng6tyMs7WdpIJSftf0DTxBKE1MnY9tgUw2R2I
 mzAL1EZRDmRTwOqkeMkdets/snNdGNSUdZZnL+b2Vmv3758XtIcHuPI91
 6J+x4yBYqB2rSPXJAmuGtJN7Tg4dlIfes7kzf7IslB79+BAy8X8w0f+Hj
 hUVeJkDLD1e5dMLxBMaquTc+Lofo0Pkotk+6WA2frPPeRWV7+1cRFLlr8 A==;
X-CSE-ConnectionGUID: xit/aoAkQ+2J8OszTIHLjA==
X-CSE-MsgGUID: ott2TIp1RmydNB4hmKMutQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11655"; a="86020271"
X-IronPort-AV: E=Sophos;i="6.21,185,1763452800"; d="scan'208";a="86020271"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2025 21:30:16 -0800
X-CSE-ConnectionGUID: Hw5qNqfkTMej2tzdGflvgw==
X-CSE-MsgGUID: XuZ5nH+IRoSlvlhP66KQyw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,185,1763452800"; d="scan'208";a="200840540"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Dec 2025 21:30:16 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 28 Dec 2025 21:30:15 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 28 Dec 2025 21:30:15 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.1) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 28 Dec 2025 21:30:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=l+bGdsw6uZA4Fl45BE4gNfDivXWW34PcfkTA6XkgHmCHCto+wbwkiZNOeS/qyff0nyjJj2hwRrVrvXDYNdxSkv+5e44PCkC4slG9ELcmSheXr0IccojQtNL1lTezic5QyCYxDXofhhX2Hye525YZp0g1IoyoGco2ihQ2e3zo4bBJSyC32W+uBBzryge61yXr/J9m1Whc8brqSW6QOnnkN4UeaL2ogK2OOohrPyonfts7uSzVZRenIzM7+9G5J/TBWRFZoV4vilhPL9Q3hPS93O0HqCuHb82rN7+tGEFkUn5HtfCr3IQJNYyaRFSxHw3ndl1zCy1OEi4elmO7d+HS4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=D8OqIRBhJbCJFjAzI6T0LDpdSj037zXm6jYmazdtz94=;
 b=bcyBa8qg5t+dB5MWU/ILgeJMN1xuJZSel4vHqpdbK7ZbwhdGctc6TQcsurmw31gLuGOGo0U0z6GpU6ly7kkmow6iFYvMSKJ+qGCsGVZXaacd/oiOmfsZnJuqVnSnGrB92db8y2xlihnyemdDrXG9zFOetoEYW2/+CbbW0Bo02MLor8HS+q1QLmPcLP675Bp8qPctCivXH+aSx4gBaHc4Sz4mUNG8sRThzjm3qOUZ89WblCU976XpmLJmv8wlAIakZJyh+DW5SzoOe+LhbMWYMEj2Qb83oQQ5TFGIdGagT9pqgKj82UmXZvOpE3P0w39ESeTKCGYbOf1xf5G8mEq6QA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB7720.namprd11.prod.outlook.com (2603:10b6:510:2b3::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9456.14; Mon, 29 Dec
 2025 05:30:12 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9456.013; Mon, 29 Dec 2025
 05:30:12 +0000
Message-ID: <028319cb-b276-469f-8fad-4c5002b2ebc8@intel.com>
Date: Mon, 29 Dec 2025 11:00:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm/i915/vdsc: Account for DSC slice overhead in
 intel_vdsc_min_cdclk()
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20251223150826.2591182-1-ankit.k.nautiyal@intel.com>
 <aUrjPJaxbvhNhUv5@ideak-desk>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aUrjPJaxbvhNhUv5@ideak-desk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0173.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a9::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB7720:EE_
X-MS-Office365-Filtering-Correlation-Id: 00d7198d-fa9b-4038-591d-08de469b56d3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WTMzc0JzSkh4V1IxdmhSVW9xREwxUEFtUnVWUkFMUmpETTgyZDVDYWVQSEQx?=
 =?utf-8?B?cWFRQ1JzMFFxZ0lPcjVPUEZ4T3VxUW5DRzdqNW5Wajd4NEVFY1I0bFJqamhu?=
 =?utf-8?B?WW0xUVU3bWFqelRGektzMnZuOUJJL0FPMXkwNi9VSGxiWEJEYzNJMUtYZ3d2?=
 =?utf-8?B?NVBRcGJNa2taVWtEbGFpSVRkYUdFZTdFVGlDdkVJS3M5bDQyS0JhUG5lY2pH?=
 =?utf-8?B?NTZrZTVwWkMxM2Vjblp5S3p3VXVuNG1aWlZ3WkRDSEppSlgrNjhiVUVISFRS?=
 =?utf-8?B?Z09qcFJmQ3ZiSnNQM3pYUXI1SUVYaGptdnFPN3l1M1NWT294THhjVjIxdU1F?=
 =?utf-8?B?RzkyY2MxODVKZms0UmFoNnRwUS9DZTREVDFjVk0xeGZTZWRZZE94V0xib01s?=
 =?utf-8?B?VVFrdmM1cTFJU1ZQVG9vcFlTV3R2OEZ6VXduOWswamFYR1VMaUVNaUxVcEF2?=
 =?utf-8?B?MjBoRGg2ZVFEV1huZUFFMm55NVJTZklsWjNpWHpSZW5IbG8zTU04R3gvbEJR?=
 =?utf-8?B?SzloTVg4eEk3UzRGa1ZRcXlPakRxTlZ6Y0FxdTZFdGZld1lSYXp0RStNcE9K?=
 =?utf-8?B?MDdRd2dYYWtJeWhFajRNaC9DZDNUMlVIbTN3OXRRaE5MMis5c0R5ODJJWlFx?=
 =?utf-8?B?aWNOZXNwM3dwbW5kak1uL1prbkV6d3hNRUJyT2VwTTNweFpDQ3BTMUZlYlps?=
 =?utf-8?B?Zm5iSDRyeU9JVXI4R3hnSFMvUXA1NkI0eU10T0NzNUhNM3RxRVR1RHpMSWZU?=
 =?utf-8?B?MzN4di8yQldMdDZqVGdhazVKeWIxd05YUzUzTkU3cXZrVGdFcFZ5Zms0bVNn?=
 =?utf-8?B?Y3FMR0hxVHpBVjMzenIyb2lBWGhXcGRJZFZITytQT1VaSUtsUGUxdzZTQ1VS?=
 =?utf-8?B?eHd4TG1mOWpqVWlpVDdQOHpFaFF4dmZHS084U25UYUlteGlVeUxNUnpZZ09x?=
 =?utf-8?B?a2dBQ1hQb0RsTFZqZWRYQlpDU0k4NzdHckxYNklTTVYzUGN5b1dad1J3d3I4?=
 =?utf-8?B?enpnY1Q3KzFOUmtnSUJ3NE5Bd0g1ckpDTGYzVHhVOXNnZjQwM1ZrQ0IyM3hM?=
 =?utf-8?B?dnc4ck9GZnphY3UyY3d2ZmJWQWh1bDdrR2psaUIzTHAxRy9VTVhqSTI4MVZl?=
 =?utf-8?B?dmxvSytUdll0S0hvR3I5L0VhejdKRUVrWGpGVmtsSFBPVnFsbFc5My85bzNN?=
 =?utf-8?B?alAzWktWVDZ1a0x2SWRnbjRjSjRtbkE2ZDNHRUtHNGIxbmlpdkFVTEhQWHBF?=
 =?utf-8?B?aUFLUG1EVEhQMndGOWcyZWk2NnZsNE80MHBIVXpqdmgyZFZpS3dhdGdOQmpn?=
 =?utf-8?B?YnlwbisxdFhybGp2cnVLYXBMNUJaSjRRdHRkQm1HUlo0STU4QzBXek4wenla?=
 =?utf-8?B?MXdVdFV3akZHUU8xNnBJdEVabmpybEdrQm51MEtZOEE4cW1nbHA2ZW1HYXJ6?=
 =?utf-8?B?cWc4bWJBVExLdmdPUDd2RWd1V3lVV2pwYTA0NkVhdWQ2U1BsOFFQY0VMcDl5?=
 =?utf-8?B?TDkyZ3E1ZnJDUjQzemdvUWhwZTJPYXVScjFWYlBGdjJSSGFYMXllRURnNS9E?=
 =?utf-8?B?YzdQb1FnQVJodERmRC9SSEdiMGVLZjQyVXhuZkQxaTFkdHozTElxQngwVVN6?=
 =?utf-8?B?MEoxLzE1bTJyUStUbGd3MjZwK3JjcHdmdjBiVlliTXVHTVZ1d3ZoOW5BZjZN?=
 =?utf-8?B?SGlRaDM3QVNSTUcxSzY5R0Y2dGdBQ05QT01yV3BBUmgwaHQ0RktNYXhYdTk2?=
 =?utf-8?B?MXhZSjFOUVRoVkxReEJlT1YrWStjQytXT2hwN1Nqam1FTytMb2FRR3RKWXJU?=
 =?utf-8?B?SURmZTh6K1FSK2dKN215TmZGV1o3N2FOYkhXdHI0S0QwejM4TTVycS9aMlEv?=
 =?utf-8?B?NXBRSUgwMWo2UG0zNlVBKy9QVE9hWEI2NzZXSjlmeW9jT0lKZmcxWGIxNk95?=
 =?utf-8?Q?IvRPG36QyKsqkl4OPFgoOYw+jHGO/jOY?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V0hXbWRXNnFFQWltZkxpRURHYlA3TTRpMTNMNzNSWG12eDJPMllTV2NKZEFX?=
 =?utf-8?B?Nno4U01iaFhUczlFV29QdStmTWRsc3FiZSsxeTNyTkFsdkt4ak9CVDl5N0py?=
 =?utf-8?B?VmNmNHNONVRjc2lWdlpuQy9kS2dLOHVETkgyU3pydDdoQkg3NHBJdzdnRnhE?=
 =?utf-8?B?TGNOMHdZSTBWcjlWcXQrNW5rWVpTOXV2NW4rUEFOS2FySm5jOTRaSUduUURt?=
 =?utf-8?B?TWpYYjhsaEk1WW5FcGlzdU0xTjI5RkdTRXp2eDFUTmVzMndZd0JCaXNCK0d4?=
 =?utf-8?B?TmtEV1hZNzZXOGUvS0xWdkZ3WVo4LzNXb295VGFSOHJNYXVhS2Fobm9lb0d3?=
 =?utf-8?B?TmNtRjQrUWc1bDB5S1djRVMzYmhBdGxtVTdtbU10N2JsMllYb0FOZDNmcnVW?=
 =?utf-8?B?Vit3QzlWZHFhQndSOEcrUWtTb3JSb3NNdkFIcnJOSXd1OFBDczI0V1Yyc1VE?=
 =?utf-8?B?WGI0cWdVZFFMQkRvM241eUw4dkg0ZUIwTjdxWTlvenEwZkFzZGdxbkdEa3d4?=
 =?utf-8?B?SEQrWGVIQzNUbFkyeE53UFE1cmFTWlp4bmdCbFBwZzloNUdYaGNGT1B6T205?=
 =?utf-8?B?RkxjM3dxaUp2bkZ3bUNIelU0b0JpZ25Zc3U0Zk5mZlVINWltOUlMcWg5UGUr?=
 =?utf-8?B?TUp1bHhNaFJwUXJzRk5OV0k5eEVqRGFOZGNlSnZJU013dGNucWdEY01qYjFz?=
 =?utf-8?B?ZmxEMXdYeWpSa3NCcGI4TVhvaWZLTmhjMDVlbS9FKzF3WU8rWjBseUZ0Zlc3?=
 =?utf-8?B?Q245UHRJYnRPdUlhWFFleHo5eW9lSzFoU21qOTVNQ3VrWXFVNkVxV2JDWUth?=
 =?utf-8?B?OUpwZ3kvblhrZUtZK2xtcFVQOSt6bUdKR05kV0x4emxXYmNFdEx6cCtDZHR3?=
 =?utf-8?B?aEg1OVdlcmVXSHNOcE94NmVqdjNSOUpTOHJKOXhtcGN0QUpjUGJxMXBwa09k?=
 =?utf-8?B?OU1ocW5NRS9Eanh5Qm5BRk9ENEt6Z29WMFcvampRcFhTREp6bVlzWlhPRnhG?=
 =?utf-8?B?SHZpNGpVQkxYVGxBOVZIdnpqMnBnVXhDeFI5TFZKOTMxdVlUcm1DbHN2U0xY?=
 =?utf-8?B?VHpyRVFwWGtDRytadjh0Z1d0elFGSEgwRlViRDVFTWx0czdlTUl1VkxSeDV2?=
 =?utf-8?B?WGxVa25UMnBaeGpOU0gwdFVKNW5EY05ZRFVWWlVwVlZBcXYwMWJjTTd1T1dM?=
 =?utf-8?B?U0MzdTdzbTZEY3A0bzYydHdnSnhtVWJQSlpNN3QxWDdPVVVGSys3RVFqcENx?=
 =?utf-8?B?ZFR3SDlEb1RsZ0VRR2FqK0VkdVJ0TDhmb1hTbVhpb0JIZ0NZUHBmNGk0cDJi?=
 =?utf-8?B?T0NLQzNxcVVvTGMyWnNKbE1obXNVSW51bm9tKzdhQVUydW1qcE5rYmZZY2Z5?=
 =?utf-8?B?dmYreXQ2SUF0a3dWWFVSQllUclM4aXBDWVVPTWp6UTRxM3F5QjRMT2hFMysr?=
 =?utf-8?B?clJHcnE5RFVtd3BKQ0NQM2phcW5GR1FxdW5qWTZMeWI4cG5iUkFScDFrclJG?=
 =?utf-8?B?UjBZR1FwNGlQeG5WSWZqL1MvcktFNzRGMm41cVNXeEZZbTJFNlBOa1VXVzVR?=
 =?utf-8?B?SFh6M3E5bTFiN3pXZ2J5TnVIQVBYeGpkTzg0MFROVndWWVVpYXFyUGhoUVpw?=
 =?utf-8?B?V0pXMHZJWk0zUTBnOFRZaGsyNFhYbldxRSt4RzRGNVFoUDN3SFI2MHBscGhP?=
 =?utf-8?B?aGFxZVVOU25tZ3JtNnhWRHFTY0FrWkdQbFUyR1RjOURkcW11VnQ5OVNRR0x5?=
 =?utf-8?B?MWR2SHZIZjJVdnRQQ2U2OXJ1YTZRaVcwWGlFTVlPb1QxYThoU0UzYi9tcFpp?=
 =?utf-8?B?aS9CeEl1dG1vNXpXOFdoS00ybmIxMUFsOEZPbnVlbVp1aW0xTm94aGFFZkxG?=
 =?utf-8?B?M3A2ZjUvYXFYd2U1UzVMV21xSTZic2NadUsyVEdzV1RyV2E2NHlYNGpLSFFJ?=
 =?utf-8?B?cUlMNnZUS25OYW9qNDlyVmlvREUzRzMzNnBhYVhnUWo1Z0VnMzFqOVhvNVZs?=
 =?utf-8?B?cG5ITFlQM2w5Wm5XOEFSY0M3blN1cDJwRVdqcWtCYXYvcy84V1RWaGpPYkt2?=
 =?utf-8?B?UlRpek1LRGViZ1N5cWJFbkloZXRtajRVZ0pTV1g4bXBudkhKdlU5NGF6aUFD?=
 =?utf-8?B?S2tvSDVzbG9GblBzdmlrbUZ6OUY4K1EyVmRnZ2NwOXArY0lEeUtucVdhT0Jp?=
 =?utf-8?B?a2U1MUsxU21mWVpUQU52QnRhTERoNkVmSHpmMVVMVmJtVWFBWFdaek50VWlO?=
 =?utf-8?B?L3VkTzBkdHEzQlNqUCtpd3I0ZHl4Rml6Q1JwRUt2Z1E0OUhqWEZNb29LQ2tF?=
 =?utf-8?B?cmpEdjFHQVN6STM4MWpMUWxQVVoyaVJySEZjZ3c5MFd0MlA5emV1bWtMbWZW?=
 =?utf-8?Q?wq/KfKbKyB/S/bL8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 00d7198d-fa9b-4038-591d-08de469b56d3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Dec 2025 05:30:12.7677 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oPvRgij3yZkNOeTLBsyE8ms3cgdItUV8rvmJ5nF8RrS3DHLaA4PYBVTChQN6T/+vBgoYAq/1rPT59rBjyeyrLhpIalPm55Ve4W+FZtEJjhM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7720
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


On 12/24/2025 12:15 AM, Imre Deak wrote:
> On Tue, Dec 23, 2025 at 08:38:26PM +0530, Ankit Nautiyal wrote:
>> When DSC is enabled on a pipe, the pipe pixel rate input to the
>> CDCLK frequency and pipe joining calculation needs an adjustment to
>> account for compression overhead "bubbles" added at each horizontal
>> slice boundary.
>>
>> Account for this overhead while computing min cdclk required for DSC.
>>
>> v2:
>>   - Get rid of the scaling factor and return unchanged pixel-rate
>>     instead of 0.
>> v3:
>>   - Use mul_u32_u32() for the bubble-adjusted pixel rate to avoid 64x64
>>     multiplication and drop redundant casts in DIV_ROUND_UP_ULL(). (Imre)
>>
>> Bspec:68912
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vdsc.c | 35 ++++++++++++++++++++---
>>   1 file changed, 31 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> index ad5fe841e4b3..5493082f30a7 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -1050,15 +1050,40 @@ void intel_vdsc_state_dump(struct drm_printer *p, int indent,
>>   	drm_dsc_dump_config(p, indent, &crtc_state->dsc.config);
>>   }
>>   
>> +static
>> +int intel_dsc_get_pixel_rate_with_dsc_bubbles(struct intel_display *display,
>> +					      int pixel_rate, int htotal,
>> +					      int dsc_horizontal_slices)
>> +{
>> +	int dsc_slice_bubbles;
>> +	u64 num;
>> +
>> +	if (drm_WARN_ON(display->drm, !htotal))
>> +		return pixel_rate;
>> +
>> +	dsc_slice_bubbles = 14 * dsc_horizontal_slices;
>> +	num = mul_u32_u32(pixel_rate, (htotal + dsc_slice_bubbles));
>> +
>> +	return DIV_ROUND_UP_ULL(num, htotal);
>> +}
>> +
>>   int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   	int num_vdsc_instances = intel_dsc_get_num_vdsc_instances(crtc_state);
>> +	int htotal = crtc_state->hw.adjusted_mode.crtc_htotal;
>> +	int dsc_slices = crtc_state->dsc.slice_count;
>> +	int pixel_rate;
>>   	int min_cdclk;
>>   
>>   	if (!crtc_state->dsc.compression_enable)
>>   		return 0;
>>   
>> +	pixel_rate = intel_dsc_get_pixel_rate_with_dsc_bubbles(display,
>> +							       crtc_state->pixel_rate,
>> +							       htotal,
>> +							       dsc_slices);
>> +
>>   	/*
>>   	 * When we decide to use only one VDSC engine, since
>>   	 * each VDSC operates with 1 ppc throughput, pixel clock
>> @@ -1066,7 +1091,7 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
>>   	 * If there 2 VDSC engines, then pixel clock can't be higher than
>>   	 * VDSC clock(cdclk) * 2 and so on.
>>   	 */
>> -	min_cdclk = DIV_ROUND_UP(crtc_state->pixel_rate, num_vdsc_instances);
>> +	min_cdclk = DIV_ROUND_UP(pixel_rate, num_vdsc_instances);
>>   
>>   	if (crtc_state->joiner_pipes) {
>>   		int pixel_clock = intel_dp_mode_to_fec_clock(crtc_state->hw.adjusted_mode.clock);
>> @@ -1084,9 +1109,11 @@ int intel_vdsc_min_cdclk(const struct intel_crtc_state *crtc_state)
>>   		 * => CDCLK >= compressed_bpp * Pixel clock  / 2 * Bigjoiner Interface bits
>>   		 */
>>   		int bigjoiner_interface_bits = DISPLAY_VER(display) >= 14 ? 36 : 24;
>> -		int min_cdclk_bj =
>> -			(fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
>> -			 pixel_clock) / (2 * bigjoiner_interface_bits);
>> +		int adjusted_pixel_rate =
>> +			intel_dsc_get_pixel_rate_with_dsc_bubbles(display, pixel_clock,
>> +								  htotal, dsc_slices);
>> +		int min_cdclk_bj = (fxp_q4_to_int_roundup(crtc_state->dsc.compressed_bpp_x16) *
>> +				   adjusted_pixel_rate) / (2 * bigjoiner_interface_bits);
> The patch looks ok:
> Reviewed-by: Imre Deak <imre.deak@intel.com>
>
> Fwiw: I suppose when calculating min_cdclk_bj instead of
> fxp_q4_to_int_roundup() the x16 adjustment could be in the divider for
> more precision and the division should round up not down. However neither
> of these are related to your changes, they can be revised later.

Agreed. I guess when this change started, we were not having the 
granularity of 1/16.

I will add the suggested change with my other DSC cdclk series.

Thanks for the review!


Regards,

Ankit

>
>>   
>>   		min_cdclk = max(min_cdclk, min_cdclk_bj);
>>   	}
>> -- 
>> 2.45.2
>>
