Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 38953A008B5
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 12:33:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6EA910E88B;
	Fri,  3 Jan 2025 11:33:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GdSJ5zqZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DA7210E88B
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 11:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735904002; x=1767440002;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=GVvufThOQ7FxUrJndEsEmS29G2PuW+T+4gJ7E+mEn0E=;
 b=GdSJ5zqZKzU+elLmxFLkZ9qf0PHVUWLnRbG7zQ0azcmKQijM+9mpwsq+
 ukNvmv3eqaH+/vHqD43tmGl3xVGts7GWFm0OLkk9SB1mdrRR1N/TQ1Wlp
 xI16eraTKJdvrvzXMtRW1MMKYuN696rRtVgzFbVE/Wbhv2BnDvbsNanZX
 Hrfj0ZQpsAbApSDs5b0EaBcfV1vVTYkmoW0yx0yKF0WoIwjLok7Frizc4
 /Va0G9S3Tvv3wiAX7cgpAaW3UkqkusSSs38ldYr8Lq11woVvtydVLAYHD
 Fc9kKXbliNWalTwhepK9ovt4ZyV7ipMOWGOIq+AMTtr0IoBBtVHu25PKJ Q==;
X-CSE-ConnectionGUID: TWSmq7AwSk+vGmPRCSo9hg==
X-CSE-MsgGUID: IT1Em1g0TMSArkk9FGWVlA==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="35853887"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="35853887"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 03:33:22 -0800
X-CSE-ConnectionGUID: vWDjeMSnSJyWQTyIP1xLeQ==
X-CSE-MsgGUID: WQJfuXu5T6y17gRQV5fkiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="132623595"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 03:33:22 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 03:33:21 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 03:33:21 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 03:33:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vbmkghsjmEz9I5brjweo3Jd1lwlM7qLvKUJSq3XidJhYb8usxYeiWoIMoXGx77ikomM+9KMpAGMpEZ8+vlD8vFCgy4BXFbwAtEgVFO+quAnFzPMfJiA98LNzqr05kWzXTanrHGLk2uhfCRoc1u632vohqRc2Q5qukzlpI0sxP+dGQMWztvgiIj1E8ChZHvuPmi5MW7HPACVQyJqh6zhZmJD0Tq8GI8FswDIwnY4cGkAukWUZHAX986VGe9zZFi3poYPXfdFgsH0fbYhI7qWGW/Wy+wXg4RmOAg4WyioU6lvh64Sdu9M5qCgJlGwdgQhrEcXdz1BOSPmCEV/drfBGMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/obxtPx25HMVrqnEIneBsw0dTWdr0PYGZNhNvg8tTqg=;
 b=sya8RXnLG7Tq/09qtPnUffPen81TfH+PvNPONc8B2qIsnswRMyA7aKlrFF4HvuufuV6DwvJ59oNXLHsLfcySRGZQksdwGyXU0mcuQB2Nfbosb/nvh/RYTzgN3hXzZYKqS4beIN5URF6GOdSQwBjLuEgQEY8kWHiKnMLp+fQN3i6N98r9YPv/oiX+FseytF8qI2EJLWmniJAjbKmBj4DXnILD7ZYQl3MPpQXZq0aQB4X6WS7U9hvQsK298Sj3DEhkiuSAVnFOpxsBrCwGvfxsjyTTt/ehCw1WdvwknP5nqFm8e1MeLvgk3jz5nSNr3Z+ZH60XKd54O0shnW2k4kycTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB6544.namprd11.prod.outlook.com (2603:10b6:8:d0::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8314.12; Fri, 3 Jan 2025 11:32:47 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8293.000; Fri, 3 Jan 2025
 11:32:47 +0000
Message-ID: <8c90565a-83a7-473d-ab88-4ff68d0a0809@intel.com>
Date: Fri, 3 Jan 2025 17:02:42 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/18] drm/i915: Include the scanline offset in the state
 dump
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-9-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241210211007.5976-9-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0210.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB6544:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ebc2540-4c35-4e05-5cd8-08dd2bea5931
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eTJieGUwRE5TQWF5VEdZTDBSazVoUkZzNi95TVZzeFVEdzNaYzI3MEtxWi9N?=
 =?utf-8?B?RVJQcGNud21UdEY1YXNyanc1QzdoMHdDSXpQT0tFWC9DTDhMUEswRXVzanFu?=
 =?utf-8?B?ZzFka0FQQ0xSVTlVaFdCald0Ly9Edndwbkd4dG1lWjRjc2ZMSDJQb2Vpcisw?=
 =?utf-8?B?QytSc3QwRmlGK0xQelZtRytTNWY3OVZ6OWNjVEdQVDV3cUdOWFFJOFVROHJB?=
 =?utf-8?B?Y1E3VDArNmJBYzlCTzE2VHJac0U3SlNzM2JhTk1iR09WdDBWZll0a2I5dTVZ?=
 =?utf-8?B?SkNNQzNjaHFtZktPOWtrK0t2YjhNQjEwRkl5V3ZaVEFtejlJbTM0R1doSjNT?=
 =?utf-8?B?SmdnaTVjV09GZ0RmMW9EKzdZQnhsWUczZ2h6dEd2c1IyOVB3MVRVL2trZUh3?=
 =?utf-8?B?UDhNcHhKYk0xa1RKRy9INzlBeVdPRFRxMHBybWpUaVYwTU5MQWZnTEZGY0Ru?=
 =?utf-8?B?NmZrcGJrLzkvSEl0SHI2N01QbGFzN2RXbmlsTlFRL3JYWm9Gc0dRTVRQVW14?=
 =?utf-8?B?emdkc2s2S05jUjNJYkJMOGo5VzYyWEgwTG9ENTRIYjFqSVlxcGU1SWRmQXpJ?=
 =?utf-8?B?em1qZEl6Zm81T0IvVTlWZ2Y5WEFyNmZPUXVDV1RvY0RUbHdGTkE4b0czd2th?=
 =?utf-8?B?d2orZ2ZsOXVDdkZ4Rmh3ZEJ4d1BYbzB0aWZhSUlXK0k2eTV3RmcybXRkMU1B?=
 =?utf-8?B?bUt3YkI1NDZneXpnaTRtL1BaR1l3YkRFSGMxQ1BsZlQ2Y2grT2tlRkxEb0kz?=
 =?utf-8?B?c1Zwb0tGRU9MQjgyOWpLSWpacVNDaXd5NU5hTzI2MmV5QTQwcEQxNE9DMDFH?=
 =?utf-8?B?K1FpTTZGckkyQlo0SkRYTlAvK0Iwd2tLbGFERDJXckxQQTRGTG1ITUppelFO?=
 =?utf-8?B?dVEzOWk2eUw2ckNNRXV2aGNja2Q4WGRJcDdjQzFFMTJEaDBvQ2hFRzgxeEo1?=
 =?utf-8?B?Ni9hMURJSkllbVZtR1FtUCswbG16Wm1xVisra1FqekJGbXdZWFlDOVZTRVNa?=
 =?utf-8?B?ZFJzU2xRckwyd1c3dElyTHlPbitzUzNzL0xNTEVlTDVwOEVLZUNyelp5R2FO?=
 =?utf-8?B?cys4MVJZbm40RWZtYTFmY1JuNW5WLy92MSsyMzUxMm5jWkQzNFZXS3M5NVFJ?=
 =?utf-8?B?YjRwM0wyeUxlekZTbElhR3cxOVcxUnRSaWsxbVhHdGFMZ1c0cUdFamJFRVlz?=
 =?utf-8?B?Z2JWYTREaW1qV0JqTUhpcTFOeXIxYkpYalNPaUkweXJ0SmNmKy9YLzQ4d3dy?=
 =?utf-8?B?YnhvYkgyYU9pZzNkYndCS0lNdUkrYklxVFp4V3RFeFFiUUxjMXVKcGZMS0Zy?=
 =?utf-8?B?SjRUVjVnak5oUXlIM3hGWjVaalRFZUNaVlB4Wk5adFhoZE5lTkdram0yaTcw?=
 =?utf-8?B?aG1VMnRQL0U3ZGtmWnFFbFFxYVRqU3hkMExwNVp6aUdFYmorMEJlOGtxdDBE?=
 =?utf-8?B?L2ZreGxIM210WHE0L0Q3b0cvK0RBcm91NklxRS9JSXp3ZXR2Z1F4ZTA4QzVD?=
 =?utf-8?B?aTJwTUNEQjRQN25mS1ZLbXBrcWN2VHVXSDhOeGVZa1VGaVlnam1lYlV2dzlS?=
 =?utf-8?B?cVltZUxKdWxkWjMxZ3hJQnR0NjdJalpaemtucEpGdEdJNlNqVkFxYWxCbmRE?=
 =?utf-8?B?VFZEdDh4Zlp6MW5iU0tpWlVhcFdTY3NjU3JnMjBITms2QU0vejhxOXQzZk9k?=
 =?utf-8?B?VGY4L1NUdVFSUnIwTEVNejVBMnJ1dTR2MW5NeXBqdW5ZR1BobVlRRDNsVjJB?=
 =?utf-8?B?c09UWitHVHhjaEpZdGRLVUQ2VmJjWC9kVTh1TXZIdGh6MkNaLzJ6SmRkQnFQ?=
 =?utf-8?B?ZksxMTZ0OW5xbDRTeUJzdnhmSkIyaEVtc05KMUtOcHl5K202NXNHNm5xM2tz?=
 =?utf-8?Q?yQ1Z43w+l5aej?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T040bDArU1hYcVdZNDgxZTRFVnJ2TnpWVWVnajAxbFF2WDI0YVR6SHBoeklj?=
 =?utf-8?B?WjhIYk55RS9ucE44aXRBNWRQN1NtYkJBVjdwUnBhdzhFcmJnM3BBWGhJL2ZD?=
 =?utf-8?B?ekdVYktVNE9BYVRRdnc0NWpmL1hBWHlha1lZNUgrcWdtV3JlSktBT0JOTmV0?=
 =?utf-8?B?VVVReGxXQlBpKzNOa1dtMi9Ub3JyK2dqbFh5TjgyckhYOTByOE40cVhYdktw?=
 =?utf-8?B?Rk1iNDl6ckRGNlBtYk5TS0o0OFZnN0RrcXlpZlNGQlhSSzBxcVZOS3lvNEJX?=
 =?utf-8?B?QzExRGN4RUxNc0FaMlprVnRCWlBaSGRyc1NnSHd5bENwRGR0TUZJL09YNkxi?=
 =?utf-8?B?cVQ3NllhMVhkNmZWVEpCcTF5cEx2NGZUaXZzbWhxWjgxb3ByMWI4LzVyNk1U?=
 =?utf-8?B?Um5Pb3dIbXdQeCt0djVzc0xsWit6ZEFJV3BhQndoMzJMN2pPTkd0cm9pM3hv?=
 =?utf-8?B?aWYrMHY4amhKeHdwcW5CcSs5YTZGZTlteGdkSWZ3UFRyU1Zkcy83MzR2NTB0?=
 =?utf-8?B?Y1grV3ZJQWl3cndESVkxNmlNdGsyWlVCWFRwbVZHY0RlYStwVSs2b0ZWejF4?=
 =?utf-8?B?OHdhN1A0eDdURGxGVkoxNTFlYnQxaEd4WFhobER3Vmc4YVQzT3pLZ09WUDlq?=
 =?utf-8?B?ck95ak1CUldOR0g5cU0zMXJneVk2dk4zYkt4NUVTVXFjdlhvSzZBdDZ6aEpY?=
 =?utf-8?B?V0NLOWNIWTBKU3JDQldSOFl2bFEzR0t1Zlp5VkhTUndtQkRSRFJ2WE1xQ2RE?=
 =?utf-8?B?L0xwQktxZWhLS2EwVnZUNEc3TDRGNVphVmV0Z29Jc1pRRXAvSXVBU05yME55?=
 =?utf-8?B?VkJEZlNNYzVFWUJtNEh0eHdsT2hsNlhzUFR6ampJdUtBWEVHWU9USUhqQTFL?=
 =?utf-8?B?UVBMcExOVE1xVWx3RVNXeG9XVEhXd1I5dlJjcXcvNHZzcGhVNkZoSWFUTlFk?=
 =?utf-8?B?Y1h2a2wxdGFva3V3R3drWnFqT1lyYlU3aE85QlpPS1pMd0VlcTNkUG1JNVQv?=
 =?utf-8?B?TFhyYzEyYXo3YlBmM09BV0JjcGpDTWhRaURLVkhRYStFZ0liWmVNZ0dIY2p1?=
 =?utf-8?B?Rm4xMWEyMUhPbWs4aFBiRDFTckdqL2c0eXd4UVI5YVVYb1p1UjA4NUxiSy94?=
 =?utf-8?B?U1g2dUNWZ1Q4S25SVzNuMFMzS0wzREpzVmlFWW9LQ3pFQVhBd3djckZpUjRP?=
 =?utf-8?B?Z1ZPMG0ycjc5ajZ2Zm5rQWluVWFPK3VQRE5Dd1JRYm93R3Y2ODhMK2RTVit1?=
 =?utf-8?B?dFpydmxISUdnYWFTd1p4NTJnUVpGK1Noa21uZ2poR0NRMysrd3RtM1NCOWZu?=
 =?utf-8?B?eEJsYzNjZ0FNZC8zUTJVRThFOUYxTmZ1alp5c1ZzU0hCMjQyRDlzelJPVEdN?=
 =?utf-8?B?T1BmditwdjIwVU5jZmUzc0ZzTEE1dmlxbGVvYUZ5SktGMk9jOG5RZjlzOWEz?=
 =?utf-8?B?MTJTTklkWE10dlByU01ndFVWTTlLTHJYWkQ3dklIektJbGhyc0NTTHpKQ2pD?=
 =?utf-8?B?bDM2dmEzNGFBcTJOdFVITVo1S09hQ2VUZ1hTZmlLRGVtd0tnVTFRMElrYitF?=
 =?utf-8?B?VSs3aXZjMk1QeVlaREZKbHdmamtIY1l3UCtvN1pRLy9KQ2JHYWpNc3gwU2hP?=
 =?utf-8?B?QjhZcVp6MW5yN1ZIZDBEa1FYZms1eEhGUXpCYTU2OXd4RUh1T2Y4SVVuSklj?=
 =?utf-8?B?TVZmZ0ZMdDFlUEFYdFpBWTZ2UWpZWVlBb0V3dGxPRGhucEZhSm9KeGswdVpp?=
 =?utf-8?B?ZTNxNTBYKzBWK0EzTDFNa1F0WDVJVk4vNHJKUnVPVnlQeXI1WThsRzlvdUNM?=
 =?utf-8?B?T2dtSnZhVG0wT2ZKSC91eThtR3pGVmRlbEpkWStOclpHQjNXb0tpcWlGQUFi?=
 =?utf-8?B?MzlCZDJma042ZTNLY0l6bnExWTVMU05iN0VGZzFCNitiZXFxZlZoR0lzT3U3?=
 =?utf-8?B?OEZtTHhVWFI1bmo4M2RBZGVtMnNVUFJCWlhCY2puc0JDbFVSR2ZxdmxiSzZh?=
 =?utf-8?B?bzRLV2ltYTU3RGJNc050Wm9VejJoa0VkWXdFOWtJcTJQRlBzbFlLbDNlMVZK?=
 =?utf-8?B?YWtFU1ZLQ0kyMTJHZG1tOXFuQW5YdGVhTm5xbGVkVnNDMWU2SjMrV3M3TXN1?=
 =?utf-8?B?WTJqRU44Wlphb1FuYmlQQWYxWkpCczlhWnZCWXlORjJ0Y1F6emlWT3pndUhn?=
 =?utf-8?B?UWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ebc2540-4c35-4e05-5cd8-08dd2bea5931
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 11:32:47.8745 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BcrTxrJJTx4IubB9dHoeUTnTLHmQuPTdmBdtwTdp4LnEzy/3AIH23olsZVDKMJPHv0rbyQhTswnnuim9oyiIjCajw3K89Qam8XuP7N4yxps=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6544
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


On 12/11/2024 2:39 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> When looking at raw hardware scanline numbers it's helpful to
> remember what the offset between the hardware values and our
> more human readable numbers should be. Include that in the state dump.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> index 97e3cdccda01..1fbaa67e2fea 100644
> --- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> +++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
> @@ -10,6 +10,7 @@
>   #include "intel_crtc_state_dump.h"
>   #include "intel_display_types.h"
>   #include "intel_hdmi.h"
> +#include "intel_vblank.h"
>   #include "intel_vdsc.h"
>   #include "intel_vrr.h"
>   
> @@ -283,6 +284,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
>   		drm_print_hex_dump(&p, "ELD: ", pipe_config->eld,
>   				   drm_eld_size(pipe_config->eld));
>   
> +	drm_printf(&p, "scanline offset: %d\n",
> +		   intel_crtc_scanline_offset(pipe_config));
> +
>   	drm_printf(&p, "vblank delay: %d, framestart delay: %d, MSA timing delay: %d\n",
>   		   pipe_config->hw.adjusted_mode.crtc_vblank_start -
>   		   pipe_config->hw.adjusted_mode.crtc_vdisplay,
