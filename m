Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95A2FB524CA
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Sep 2025 01:45:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25F2F10E132;
	Wed, 10 Sep 2025 23:45:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="m9l01Oii";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 033D010E132
 for <intel-gfx@lists.freedesktop.org>; Wed, 10 Sep 2025 23:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757547916; x=1789083916;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=BNvXnl91fE64hCuFvP9+3C6ueJDkrDsyYVD8u221lJw=;
 b=m9l01OiiPy92wfgnE5MEg3QK7tPeSiPWYb8Hbqvyho1YC/jX+wayP9Vj
 PquW0BZJ65gVvJTO2OaKlGZR8/8/tA4mXvfSoJI3FZIDU2atL1XyZThev
 FxItxBsVj0Mk8jCmnaJVgDm7yxopFd38juIXMcS97wLPCVLNs6xXkREl3
 +6f+6DsaLoZkRqU3uVyUkVy+5KQxFLGUprJwPivla6/hx6fT3LeIpf/9H
 CwGfD3hr4XuaGrtXGPqgHkqklHNIXgmnbCayndLDxmGI7VIJ5CKl3p158
 d7GFYAxvZwFzlY2GJ3HC41hHs9ezXQYuZo9dtMqwH5i0xuzpxxSrt2McF g==;
X-CSE-ConnectionGUID: 405zGzbMS8WfcS2UuB9FWQ==
X-CSE-MsgGUID: kbRkV7ABSjOON8xr04+E6A==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59791736"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59791736"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 16:45:16 -0700
X-CSE-ConnectionGUID: dwCMNbwGRJ69CYrwd1KdAw==
X-CSE-MsgGUID: +9AHwCFDQMiwCdAZGqkV9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,255,1751266800"; d="scan'208";a="204526902"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Sep 2025 16:45:15 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 16:45:14 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 10 Sep 2025 16:45:14 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.41)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 10 Sep 2025 16:45:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k7Qr2wj1RDwTTYXEY+6cp6e2O8jLSLPNTdkhqbBXfRHCm3z5yTYKMh+0r0CKV/wy4/iywEkgEiSP8uu2vnw0L9ln6/XAr81B3Q/kvmA6s/NvldlgjR+xj+u3gSCD6eBYJZHNl4qsLO18jTa8pFgspVED3A+DB4Mp2u8rOkOuBiJcwDqZeMqn3UlDGsI8IJaGqBDuE7HkevMz7JOY4ZuK8NM8v1oC+g1WoWRAuetCxJe0EaqZbTI3BKYnhntNX3zxjkMUrDK6M5Ly4+snjdfXvYLh1wOp/w7P3eMJXAS14TaUO9cJAGjhJuJR3sHL/cwntRHuX/laINOK8pyxtIwtqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9la/7t300FP+R8zKK4t3j+nn6r98ceEV1JuTSoY2wwk=;
 b=X1GtPXngJ7tMrjuYupFu9k8XpvTqUDAhx2aJUDvMO9NybB5D/UJnppuyIPcNGDESQMpiLHq3D4Jy1ogDCrLnCOCsvs3UiNt+cEVFfmB5CPibRVuTUK5Z4k6DelMu0C+1/S3Ay6aWOJrPti6jTyX7L2BS3aWJ6o+8t4T101WS4mjN3vq+cHqYzW2k5+JtdE92Ez9jDhvKGdEyDwPs9ibJI2YaNC7X35zwJIZjVhu/J9TM1zJ2tn3S8M+AePZFdWRqi2Lyh4hyBRBfpndBJ4dEpHVUGMzi5uiB84stoLsqutuie+egmnx0A2w2uOY0Zs6DGeYXcQ01++sLBBZWmAujWQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6391.namprd11.prod.outlook.com (2603:10b6:930:38::21)
 by CH3PR11MB8443.namprd11.prod.outlook.com (2603:10b6:610:1bd::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Wed, 10 Sep
 2025 23:45:10 +0000
Received: from CY5PR11MB6391.namprd11.prod.outlook.com
 ([fe80::d1d5:6fa6:9a2d:92e2]) by CY5PR11MB6391.namprd11.prod.outlook.com
 ([fe80::d1d5:6fa6:9a2d:92e2%5]) with mapi id 15.20.9094.021; Wed, 10 Sep 2025
 23:45:10 +0000
Message-ID: <9b0e72c1-2a3f-46e3-abe2-b5e8e3593ee6@intel.com>
Date: Wed, 10 Sep 2025 16:45:07 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] drm/i915/guc: Include the GuC registers in the error
 state
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20250909223621.3782625-2-daniele.ceraolospurio@intel.com>
Content-Language: en-US
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20250909223621.3782625-2-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4P220CA0008.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:303:115::13) To CY5PR11MB6391.namprd11.prod.outlook.com
 (2603:10b6:930:38::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6391:EE_|CH3PR11MB8443:EE_
X-MS-Office365-Filtering-Correlation-Id: 47590224-3ab0-44b3-a971-08ddf0c4142c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NzA3NkFkeEY3Nk1LRHltbXc1eWkvZEZrYkJRQUZwZE5tWTZVWklFSlJNdUhV?=
 =?utf-8?B?RG5YZllyMVFidHNTVEI4NUtteUpVWk5UczV2S1c1Vk9BdTAreWRJVHY1K0Q5?=
 =?utf-8?B?TVl6WDZ5WmVDRXF0OXZXMEl0SEhiWUJEeDZwOU1UZ0p4dnVGbjR1ZC9mdG1Q?=
 =?utf-8?B?KzFWL2puNk5zdjVERWNuMmlralIvS1RyYk5ZMnorNXBGK0NQUlF5Q1QvYzdt?=
 =?utf-8?B?ZUorWmNhR3Yva2lrcnkrUE1IRzBnV2hWeThJUkpXNkRRaVltKzlOWXdvdVN3?=
 =?utf-8?B?TDBqNDZjSjV1V1VSbXhNNkV3ckJQZlV2UXBXWUpGMklmakxGYlVXU1l1aVQ5?=
 =?utf-8?B?c0NlZ1owQTFxSG8yNGxUUHJqOWJBeG5zejVyb1JTVit1clpsaFZIS1pQZzdy?=
 =?utf-8?B?U2QveWUvb0IzRUh4eVFUNG8wU3ZTTmlTb0hrUlZua2dKa2FTdDVlM0M2OHRy?=
 =?utf-8?B?QW1UK0YvUk5jMm9URXhMVWUvWWE1SmUyTDFDeFNab0t2T29VeVJiQUJLNEFT?=
 =?utf-8?B?Vi82bFl6VzhLZ1pFeExXUmg3cm15Q2JsL2lVc1gyOFNGRnpoWVAyRnhwaHMw?=
 =?utf-8?B?dWFuZ3k0UnA1QXdyekhtcVVjZExEQUlLM1lhMTV2Tjl0cEVCOFdGWFp3NEtH?=
 =?utf-8?B?cVMyRUNHalNtaE1LQU11Y2EyRHhxRExmeDE4eXBrdG5LalhtRmNQMHlMMk1K?=
 =?utf-8?B?RzBob0dtdWxKRlVPNHE0MzJUWHJ5WWpDZjJvQmRHclZaMGhnZzB2WUg5aStt?=
 =?utf-8?B?eC92OVVEY0lUT2xKWm5uVXlrbUV4S1ZlZXNtWUkzT1llWkJjTXU5U3ZUalhx?=
 =?utf-8?B?UjBjMVNNeUNzYkcvSXRiVVBTbFd2V1RYVDN5NEk3ZWtHSk1NVGZnd1Z4aG1B?=
 =?utf-8?B?cGR1UVozQ2hoaDF1RVJZcHVMNW1YcmpJZ29uMk1LczRsZ0J5T3lIcTd6bnlI?=
 =?utf-8?B?bEVadDhJb1ZZdGdQVTVxeDA4THA2cWNxaVQzOUFQWTJPZkE1RGlFbCtqUktF?=
 =?utf-8?B?Y0VYMVoxdkIzRVhROGhUSERYbklXa2E1d2xwdXpnb0pPWS9pZnBOVXR4OFZ5?=
 =?utf-8?B?emcyME5GV0MwYjdBMXJpak5kdmdMc1dBQUZwKzczeGtRZmRWN0FtK0l2TW5L?=
 =?utf-8?B?akdoNVJCS1dEL3d2c3VZR0QvVFdSaHlsM0FHenpFNjAxNWR1eXR2ODlnclRG?=
 =?utf-8?B?ZmlTVERwOFJIRng0d01CTGRWdVZBM3VMaUozUjhGV0JrZGF2ZzRzcWFRSGh6?=
 =?utf-8?B?Yll2dzNWVXJNNDVPaG9UMThka25WSEo3WDhvVVRmeitmTGsyR29ya1RqT3Br?=
 =?utf-8?B?TjQ3alVnelAyc3NTaURBTXhBTkJuUTZ6ajU0Qm95c1A5VzRhQUN1ZDY4c2Ey?=
 =?utf-8?B?aHVuWHRNRUpYY0hKMU1JUzEvZGRpVTdZTGhSczVTZitneno2aWNxenFJTjN1?=
 =?utf-8?B?WXJNM1FSejRZcGp0enZRdHJsYmx3MEliYnIxQm15VmZhZ1MzcGhzN25uQjVo?=
 =?utf-8?B?VG12c0NwYUJMKzFxNmtncHUzWGlLYy9CUWduRU5tNDY1QjlFUHhSZ2ZYUkp6?=
 =?utf-8?B?OExDaWhseTh1VlU1YytQSEpxZXM5dlRtZE54Zm1lTm14TmxTUWw4L2t4clhs?=
 =?utf-8?B?eDZkcjZZaGZRdlMwMnJ0SGcwRzBobzZ1T05kczJSNkJmRmovbVd2eUJNMm1K?=
 =?utf-8?B?UW5sTWU4aUpHRHZiTG1MZnNhNWxLb1RLSzlnZFR3NWtxamQwWmcxUzhvbjls?=
 =?utf-8?B?cjl4UUdmWmZDL2VOd1Q2cDY0dXV3MlNhQXBTdG82V1dZaDc3V2ZIOFVJaEp5?=
 =?utf-8?B?WHFJZGZKeFVvUXlQRlR4eFBKRHNBZlJsT3FoU2NqRnFtNTloM0RweTh4aSt3?=
 =?utf-8?B?Vk8wbXNWN1dmUzJ0Sm0rYWN1bDc2OHl2c05WQ3BjT2VXM00yeEo2YWV6M1Mz?=
 =?utf-8?Q?Bfkk6xTfufM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6391.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NmlEUkN5WE5RbGpUV2wwL3VjK25zSDVvOVZzTm1GbDlnUGJhTGRUMHF2RGky?=
 =?utf-8?B?NTVLaWI4RHdKcEZwL0dLbTlTVzZZU0o1Vi8ydXpIaWtDWnZnN2JDSGk2TzB1?=
 =?utf-8?B?cDZLd3l2S3JLTXZ5UzNzR0VHc3BKamM4NFV1a0s4SHVldG81VmFLVk9BazhU?=
 =?utf-8?B?Ulp3dFlJbkdRd0VSWVprVG9Qck16MC9aZzc4bEh5aS9STzFqb1JCYk43Mm5s?=
 =?utf-8?B?aTJzU1hzRFExZHVCeTU2Y2pjM0JVQ1o4YVdDaG1LOGsrNUJIMlJlcDMxaDFj?=
 =?utf-8?B?YzNNdVo5eUgrUHFZWUppQmpaWnVRczNEQjdGTm43aFNmWkhLbjNicVlkN1dH?=
 =?utf-8?B?NFo0ODNobFFMaldaYVRwRytLaGRadFRqNzdObytsVTdQMW1ycmU5VkREcTBC?=
 =?utf-8?B?VGtnM3UzUG1uZ28xaVVpUW1MVldaNWRlaUcwbU5RQ3NDTWdhVmFxa2dhS2lT?=
 =?utf-8?B?SGZKWGxMcHdlS1d6WjliQVdKbmxRbFpoQ256WllzZ0JIOXZLN3JYck11ZDFh?=
 =?utf-8?B?cDVIOUVsaFAzVGwrcmE3NWpYOXp4RFhvMm1Qb0Y4ZjRYS0RsQTE1b0FTU0Uz?=
 =?utf-8?B?b1RBdk5NN1lLQzlzbHhjRDNweENyV01LZzk2blBZU0pYSmFNSysxcm82RHFN?=
 =?utf-8?B?T0YzRjRjSGwxTkVRWDFlQjI0RTcxeWxNODE5MTdlSzVhdEpRMzlLck5tdjJY?=
 =?utf-8?B?K2pnZmZoWGVETXdCNW9qTTdQYVY5QjhNSmx1cDVEclNVMVc4OXR6NUVqQTJv?=
 =?utf-8?B?Q3ZMSU9KQ01TaDdxYjFqQklqNWJBazk1SFk4cWl3eEx6WmJVcW1qdHl3OUZp?=
 =?utf-8?B?VWp3K05BQmhjZ1hiTkR2MXBNbWV6M0pBbGtqQ0RIOTBoejVPUHZ4dktldUlh?=
 =?utf-8?B?b0F2VU5YVUFDRytuazRCRjdIcGo0dXFpRVBiMWZCY1A0OVdueVJ1eitvZkI0?=
 =?utf-8?B?R0kxS0VKSzF4OXg1Uy9veE41VTU2VG4yK2JuRUlRZHRndjF4YnBUQXdwQ3Bv?=
 =?utf-8?B?YjVua2pzbzgzVHY5dFVuMmhkTFZnQ1JPVXJtcTZNOUlqS0h2SHZ0cTNDNEpC?=
 =?utf-8?B?TURlUit6b0dYRjAraTk1SGN6Q1NBVWxMbCthNEJCVDZGcHJTSEpvVXJXc2xH?=
 =?utf-8?B?S2RQWEMzRUxYanB0MnhHZ2lDMk9IR21KR0pWcmlQTkxVYjRwZmhYUHpRaG0y?=
 =?utf-8?B?b2FYR1duc0NGQVF5Nm9GS0VkdGJMZUQzSHBQR0xHYVVlSG4vQ0kvVDVKSXJT?=
 =?utf-8?B?cmIvbVVxTWc0NXA2dDd3VDNHc3JUSGgrdm1UU3NGMFBxWGlZSWlNem9mMlFM?=
 =?utf-8?B?aGg3Y1ZLN3BqZERrRUR2bEllODY5UEF5Vlp1R3RnREROdldWSjZINFNhMDVM?=
 =?utf-8?B?MmFPUTljV0FtemxhYnUwY2RaZGk4WmVuWTgyWXZxa0xudWJLdzNGVEVZaXh4?=
 =?utf-8?B?a0wyV3pZeEJIbytSc0JJUFBTM2RlczNFLy9sUk5SUmJLdFJVcDF2M09pblBI?=
 =?utf-8?B?djBINzhCN2xRek90K3R1RnM1bUNpYktXVkpJV1Jpcm1yRFlZU3JoMm1FLzBV?=
 =?utf-8?B?K1R2Nkd1bGFUQ09wNExVamM2cGk3dG5IMnpGQ3ZjS1ZGd29BZ1ZGU3kzZWhj?=
 =?utf-8?B?amk3SlVtWWlZNGFKY0loeGdCc1hBWUtld05tMmxsbjNpcStFM1g2bmJ6dU1X?=
 =?utf-8?B?MlJRbmZoSWxSVENXVmNDR2h3MGRMKzVHUWNEWkt3ai9qRWhWc1NETGFmQlhu?=
 =?utf-8?B?QzVyRFVpYkdDQXNGRHg4WFgzWk42SjlGOHBhOFZoWHRvLzJnV1BsOTRoV0ps?=
 =?utf-8?B?Z0c2S3dxR0srUHRmT0RKVExrVDVOaXowMXY5WDdicit6cnlhQVNzN1NZUG80?=
 =?utf-8?B?dHJlQy9FU1VwQTl6YWZvWmt6cnA2OHNFYjdqdUdFU3d3Y1plMjRRZ1MzSDMx?=
 =?utf-8?B?Z1J0Mjh1cXRoMHVBQUhGYU9RZ1pHTkc4S3BjK3RyRXkraVYzSFVNb0kwck1r?=
 =?utf-8?B?NDVWNnBSbnByVENoOUwzMmEvNDJHejNqMDBaako0bE43cEY5eVZYN01aa3Z5?=
 =?utf-8?B?REoyTGtlRE5SZGxRd2hSekRidG5XaHhDZGF6R1h4aFh1SS9ORVEzWm5zRjNS?=
 =?utf-8?B?Z0lCaFlZT0lkQzcwWTNob1BwM3JCWTdDN3VEV05ucnBPd1phakxlUWd3UzQz?=
 =?utf-8?B?RlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 47590224-3ab0-44b3-a971-08ddf0c4142c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6391.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2025 23:45:10.0835 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eBX1ztl+Qd3++A/iq2PA/EY/fr75M/mIBy44V19gn8T7H1E70vUbp6EBhQF3hiWNq7H1v7XAxJ88hTPgOa0+QPH9gW8DlSACmpAcsQDpPP8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8443
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

On 9/9/2025 3:36 PM, Daniele Ceraolo Spurio wrote:
> If GuC hangs, the GuC logs might not contain enough information to
> understand exactly why the hang occurred. In this case, we need to
> look at the GuC HW state to try to understand where the GuC is stuck. It
> is therefore useful to include the GuC HW state in the error capture.
>
> The list of registers that are part of the GuC HW state can change based
> on platform, but it is the same for all platforms from TGL to MTL so we
> only need to support one version for i915.
>
> v2: revised list
> v3: remove confusing comment, use sizeof(u32) instead of 4 (John)
>
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: John Harrison <John.C.Harrison@Intel.com>

Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c  |   8 ++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h |   1 +
>   drivers/gpu/drm/i915/i915_gpu_error.c      | 102 +++++++++++++++++++++
>   drivers/gpu/drm/i915/i915_gpu_error.h      |   1 +
>   4 files changed, 112 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> index e7ccfa520df3..384d1400134d 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_fw.c
> @@ -46,6 +46,14 @@ static void guc_prepare_xfer(struct intel_gt *gt)
>   		/* allows for 5us (in 10ns units) before GT can go to RC6 */
>   		intel_uncore_write(uncore, GUC_ARAT_C6DIS, 0x1FF);
>   	}
> +
> +	/*
> +	 * Starting from IP 12.50 we need to enable the mirroring of GuC
> +	 * internal state to debug registers. This is always enabled on previous
> +	 * IPs.
> +	 */
> +	if (GRAPHICS_VER_FULL(uncore->i915) >= IP_VER(12, 50))
> +		intel_uncore_rmw(uncore, GUC_SHIM_CONTROL2, 0, GUC_ENABLE_DEBUG_REG);
>   }
>   
>   static int guc_xfer_rsa_mmio(struct intel_uc_fw *guc_fw,
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
> index 3fd798837502..f73dab527547 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
> @@ -96,6 +96,7 @@
>   #define   GUC_GEN10_SHIM_WC_ENABLE		(1<<21)
>   
>   #define GUC_SHIM_CONTROL2		_MMIO(0xc068)
> +#define   GUC_ENABLE_DEBUG_REG		(1<<11)
>   #define   GUC_IS_PRIVILEGED		(1<<29)
>   #define   GSC_LOADS_HUC			(1<<30)
>   
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 89f7c04a3330..7582ef34bf3f 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -685,6 +685,74 @@ static void err_print_guc_ctb(struct drm_i915_error_state_buf *m,
>   		   ctb->head, ctb->tail, ctb->desc_offset, ctb->cmds_offset, ctb->size);
>   }
>   
> +/* This list includes registers that are useful in debugging GuC hangs. */
> +const struct {
> +	u32 start;
> +	u32 count;
> +} guc_hw_reg_state[] = {
> +	{ 0xc0b0, 2 },
> +	{ 0xc000, 65 },
> +	{ 0xc140, 1 },
> +	{ 0xc180, 16 },
> +	{ 0xc1dc, 10 },
> +	{ 0xc300, 79 },
> +	{ 0xc4b4, 47 },
> +	{ 0xc574, 1 },
> +	{ 0xc57c, 1 },
> +	{ 0xc584, 11 },
> +	{ 0xc5c0, 8 },
> +	{ 0xc5e4, 1 },
> +	{ 0xc5ec, 103 },
> +	{ 0xc7c0, 1 },
> +	{ 0xc0b0, 2 }
> +};
> +
> +static u32 print_range_line(struct drm_i915_error_state_buf *m, u32 start, u32 *dump, u32 count)
> +{
> +	if (count >= 8) {
> +		err_printf(m, "[0x%04x] 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\n",
> +			   start, dump[0], dump[1], dump[2], dump[3],
> +			   dump[4], dump[5], dump[6], dump[7]);
> +		return 8;
> +	} else if (count >= 4) {
> +		err_printf(m, "[0x%04x] 0x%08x 0x%08x 0x%08x 0x%08x\n",
> +			   start, dump[0], dump[1], dump[2], dump[3]);
> +		return 4;
> +	} else if (count >= 2) {
> +		err_printf(m, "[0x%04x] 0x%08x 0x%08x\n", start, dump[0], dump[1]);
> +		return 2;
> +	}
> +
> +	err_printf(m, "[0x%04x] 0x%08x\n", start, dump[0]);
> +	return 1;
> +}
> +
> +static void err_print_guc_hw_state(struct drm_i915_error_state_buf *m, u32 *hw_state)
> +{
> +	u32 total = 0;
> +	int i;
> +
> +	if (!hw_state)
> +		return;
> +
> +	err_printf(m, "GuC Register State:\n");
> +
> +	for (i = 0; i < ARRAY_SIZE(guc_hw_reg_state); i++) {
> +		u32 entry = 0;
> +
> +		while (entry < guc_hw_reg_state[i].count) {
> +			u32 start = guc_hw_reg_state[i].start + entry * sizeof(u32);
> +			u32 count = guc_hw_reg_state[i].count - entry;
> +			u32 *values = hw_state + total + entry;
> +
> +			entry += print_range_line(m, start, values, count);
> +		}
> +
> +		GEM_BUG_ON(entry != guc_hw_reg_state[i].count);
> +		total += entry;
> +	}
> +}
> +
>   static void err_print_uc(struct drm_i915_error_state_buf *m,
>   			 const struct intel_uc_coredump *error_uc)
>   {
> @@ -693,6 +761,7 @@ static void err_print_uc(struct drm_i915_error_state_buf *m,
>   	intel_uc_fw_dump(&error_uc->guc_fw, &p);
>   	intel_uc_fw_dump(&error_uc->huc_fw, &p);
>   	err_printf(m, "GuC timestamp: 0x%08x\n", error_uc->guc.timestamp);
> +	err_print_guc_hw_state(m, error_uc->guc.hw_state);
>   	intel_gpu_error_print_vma(m, NULL, error_uc->guc.vma_log);
>   	err_printf(m, "GuC CTB fence: %d\n", error_uc->guc.last_fence);
>   	err_print_guc_ctb(m, "Send", error_uc->guc.ctb + 0);
> @@ -1025,6 +1094,7 @@ static void cleanup_uc(struct intel_uc_coredump *uc)
>   	kfree(uc->huc_fw.file_wanted.path);
>   	i915_vma_coredump_free(uc->guc.vma_log);
>   	i915_vma_coredump_free(uc->guc.vma_ctb);
> +	kfree(uc->guc.hw_state);
>   
>   	kfree(uc);
>   }
> @@ -1721,6 +1791,37 @@ static void gt_record_guc_ctb(struct intel_ctb_coredump *saved,
>   	saved->cmds_offset = ((void *)ctb->cmds) - blob_ptr;
>   }
>   
> +static u32 read_guc_state_reg(struct intel_uncore *uncore, int range, int count)
> +{
> +	GEM_BUG_ON(range >= ARRAY_SIZE(guc_hw_reg_state));
> +	GEM_BUG_ON(count >= guc_hw_reg_state[range].count);
> +
> +	return intel_uncore_read(uncore,
> +				 _MMIO(guc_hw_reg_state[range].start + count * sizeof(u32)));
> +}
> +
> +static void gt_record_guc_hw_state(struct intel_uncore *uncore,
> +				   struct intel_uc_coredump *error_uc)
> +{
> +	u32 *hw_state;
> +	u32 count = 0;
> +	int i, j;
> +
> +	for (i = 0; i < ARRAY_SIZE(guc_hw_reg_state); i++)
> +		count += guc_hw_reg_state[i].count;
> +
> +	hw_state = kcalloc(count, sizeof(u32), ALLOW_FAIL);
> +	if (!hw_state)
> +		return;
> +
> +	count = 0;
> +	for (i = 0; i < ARRAY_SIZE(guc_hw_reg_state); i++)
> +		for (j = 0; j < guc_hw_reg_state[i].count; j++)
> +			hw_state[count++] = read_guc_state_reg(uncore, i, j);
> +
> +	error_uc->guc.hw_state = hw_state;
> +}
> +
>   static struct intel_uc_coredump *
>   gt_record_uc(struct intel_gt_coredump *gt,
>   	     struct i915_vma_compress *compress)
> @@ -1755,6 +1856,7 @@ gt_record_uc(struct intel_gt_coredump *gt,
>   			  uc->guc.ct.ctbs.send.desc, (struct intel_guc *)&uc->guc);
>   	gt_record_guc_ctb(error_uc->guc.ctb + 1, &uc->guc.ct.ctbs.recv,
>   			  uc->guc.ct.ctbs.send.desc, (struct intel_guc *)&uc->guc);
> +	gt_record_guc_hw_state(gt->_gt->uncore, error_uc);
>   
>   	return error_uc;
>   }
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h b/drivers/gpu/drm/i915/i915_gpu_error.h
> index 182324979278..91b3df621a49 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> @@ -177,6 +177,7 @@ struct intel_gt_coredump {
>   			struct intel_ctb_coredump ctb[2];
>   			struct i915_vma_coredump *vma_ctb;
>   			struct i915_vma_coredump *vma_log;
> +			u32 *hw_state;
>   			u32 timestamp;
>   			u16 last_fence;
>   			bool is_guc_capture;

