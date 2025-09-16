Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ED172B59A15
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 16:31:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7DB6810E55D;
	Tue, 16 Sep 2025 14:31:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IFdKByiT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5899010E55D;
 Tue, 16 Sep 2025 14:31:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758033079; x=1789569079;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pWKJywt0C8TxRnH+4acWJFsRppwoo2+2e8gKi8rED3c=;
 b=IFdKByiThcpl725bLKGUC7T1EYBB/LasMac2qVYrH1b5FFDGPmDcioSs
 H9AvhpCKR9WiEuTAXgk2xh8xLOkuLcmJkJYT1S1YE4ZHJdIJjiiyBRqWS
 2jqPvJLuUvdIaKuDAH9s7aklk1GoY1uz6Lgav7EZGnTSPWCZHFbsVzmef
 Xe8foY+qdzJ5XoHpN65ZIVnqwEqJizvSY7NRNjUeGVBd5X+/IPxYenfuZ
 Ae854Zyv+cK7dEohUI6KcDt22CvMdlcGmrIjstomLuhoUktx2+H9JKKtA
 hWcuE1TBjWEDOAC6SsnmMFYdNnWXDKNKtFj7PWEnhQVgDeDlSPbNT8oCR Q==;
X-CSE-ConnectionGUID: fhKaXneDRiSwKExJ0hoa9w==
X-CSE-MsgGUID: BBPmONTKSq2WwfJXUryarw==
X-IronPort-AV: E=McAfee;i="6800,10657,11555"; a="60008151"
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="60008151"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 07:31:05 -0700
X-CSE-ConnectionGUID: qSAJNo8oTuGNs+Tcv5RWIA==
X-CSE-MsgGUID: 8rmjakuKRE2X65cEHE0GrQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="212117472"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 07:31:06 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 07:31:04 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Tue, 16 Sep 2025 07:31:04 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.27) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 16 Sep 2025 07:31:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=V9Rs+Gnv9R2I0EOGFt3jrUEpKqqNQx2/eidpetUFKJwjeBx3ZSBMiZLRHnlvkRWF68+MFg+HzD1QxhGIVjz/EBb4JiurLVeRQIG5xgxSbRZQS8g9wjVeAJavcctCdw7tK8AM2vAk3tzDw9MfhlgpbrKYoEnOr8pdK4GNk/X6hSgLQzqg3ZNLLFDRBVd+SAAAfN0+Uz9Iyl0tQq9d+xs1KXz9mQ+VJ5gRyI3aDv3VAbKFRJlxqp/QLcIEOvDgDB4NVcQS4mw5NokOOKyZLSYh1SDHeOIn9aA+f2d3MbNKgh2YiFZtdWGLEmWXnFAWCeAzA3R0IzvkneUZvXxrKFSGDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QV43OSTegytdFtVYuCeXitqzAD1/mA/uhOCZnutyW7M=;
 b=IXLmHjDx9T+iRCIqPat9nQCJ7d559xrrbTmq3GIFzMa7fPjkkK6R7kxbx4I99XY5Wgd4tiCXkPYwNjJTLCQaT86XDOGiEdtp2oLyIdbA9YU+PuTkzzbK5hcY25iqm4hFDMHqEnho2ItT8tGMPsDhZS/dLA8PU/Noi0+Su8SwylLaR8WvRPHna3kc9fL3+vw0wtS0IzDUe6JTR5YC8OGmKDt3NOg558TzZoNY2P7d6eUwcJyXJBh2DZwd3DOxBJ9LDFTDG2xSi0gLTtKxe0cWy1yUgOEd1ybkkLrYnD+k7iCou5sv+CZILC9oxlSNLMNdEe6jjJGb+QKKjdpiC8E39Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA1PR11MB8320.namprd11.prod.outlook.com (2603:10b6:806:37c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.21; Tue, 16 Sep
 2025 14:30:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9115.020; Tue, 16 Sep 2025
 14:30:59 +0000
Message-ID: <3328d2c9-e398-4097-a3de-fdee441fa50d@intel.com>
Date: Tue, 16 Sep 2025 20:00:52 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/15] drm/i915/display: Use vrr.guardband to derive
 vblank_start
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
 <20250911024554.692469-12-ankit.k.nautiyal@intel.com>
 <aMLb17oJa__bPVoA@intel.com> <f4fb8190-668f-4692-a610-9d7015130ba6@intel.com>
 <aMgHS992-0aZ8FIb@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aMgHS992-0aZ8FIb@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MAXPR01CA0118.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::36) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA1PR11MB8320:EE_
X-MS-Office365-Filtering-Correlation-Id: 76bacdf5-ef1a-4e46-56ec-08ddf52da779
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UzRVd2QrSUUraGxMYzc4bW1BVEVPNE10VEh1RVdMYWQ3aS8wNVl3UVZIYS8z?=
 =?utf-8?B?QzBTdndFZExkVUdxWURQeThtMGgyUHdqa2JtRWw3QVltMmIrUktCbUNBVUM4?=
 =?utf-8?B?Vk1sZC94aE40b2pKcldndllxaXU3QUpnYU1FMnpJNjk4MTNkd2hWdTUwUGhw?=
 =?utf-8?B?NWFRenpRSzBsWjhNK05OaUJMWGhmOURYNytKdGdRN2tDL2gyNkQxMnVBOHRa?=
 =?utf-8?B?Y2NFTVVZNm1QVWxKeEdobGdZb3dHVWliT09xZVd6R3ZzMkR6VFVRR1phbTBN?=
 =?utf-8?B?VFZ5UU1ReCtsSVM4WDdJS1BVUmIweE9CeGNiaDNJVlBTZ1lMLzB1YkU5eTkv?=
 =?utf-8?B?dXNRWVJJQjlVWGVMVXowcGlyamttTzZSRE4zamFGdCtYTElrVXIwQU5EdndL?=
 =?utf-8?B?UWI1TDErMEdxeHkyOFEzeDNzcmNXNjJFZFRCSUJYV045Y0ZNeTdzU1NtRGdD?=
 =?utf-8?B?RjRHWGNrUnAwSWxqYjFGWWdBSzJZeURiQVl6dHIzcGd1d2JSV2wrWkxLWjZi?=
 =?utf-8?B?ek43aFNBS3dKT0pLN0tYV3cxdW54c2p6RG92dE9DQjR4L2Nzc0NLRklpenAy?=
 =?utf-8?B?aDlFdGhkQVcyUTJVNUwyWkFqS3ZxYnVJcXdsNmRJWUpHS2w2ZEd4ZjZ3SUsx?=
 =?utf-8?B?OTR4WXFwTXg1QUFmZFFDSWRJVWgzNFljWkNUMzBrRVZqVmYzMUFkQTlpS0Ji?=
 =?utf-8?B?cWRSOWNDd3RWZXBYdUc3V2txeEZlVTZHanZQME1tRUo3MDUvdnNva1NJWjZz?=
 =?utf-8?B?Wk1QUTZ2OU5pNHdrSFArOGRDNEpOdGJ2SnJPQ3VZQ1Z5ekpKYlE0WlY5VTdz?=
 =?utf-8?B?cER5VUpyQ3gwRXg0SnZDY2hNSjFtOXpLMEJHOFpyTERTbGl4SlpBN2RTZjVH?=
 =?utf-8?B?Y3J0WURNWlhIbHlDR2dwOFNNTStLVGJWUDdoaEFOczFyYkdjcm5jbDZNWHhh?=
 =?utf-8?B?SG1tSGR2YmhPRGVSOVVyejFqZHRncTBEOWl6L0tWY3lIdzRKWXhvcFZVRXRx?=
 =?utf-8?B?bGhoYWx3SEVYUUxpYk9TcUhkMlgwNlZBV1R1U0xXYlE1elZDeUIyR29ubEFj?=
 =?utf-8?B?Qm1UQzFqandYS1FrZEI3ci9rZ2ljRFRVZ0s2Wm1LVCt4OGdUSXJrQmNoNzU4?=
 =?utf-8?B?T3Y2bjVESGZTOFNmaDFHQlZUWE03eEo4TVF0bU04MnpldjdjdWFWTTNVNzc5?=
 =?utf-8?B?b0toUXJLZnJId24xYUw2ZllSZzhrdWtFbGZhZkpKQUJ2SUxVUk8wN2pUanJ5?=
 =?utf-8?B?VjhPRXpKbmhPUzVNTWJhTGk3Z3ZiMjNGSEF3VkgzbEZ4UVpUcGQzNnBway9j?=
 =?utf-8?B?WGI2Zmk0UGhYVWUrY1VzbExqcGRZYVk0Tk5YdFdlbnBYdnY0Y1pDamRVU2Zw?=
 =?utf-8?B?R2xoUEdxMzRqN0RIS1pINEhVM1dQcmNpdWxCaWNTYkxQTVkvdmJyeDRQMFhy?=
 =?utf-8?B?a05lNC9PMURnKzBMdlJpYVlEWVJ2OXUveE9odWVKcDgweWhKQUhUN0k2eUJw?=
 =?utf-8?B?cVJkd1h1RW91RFg1YlptU0tFZmI3SlEyY0lEUFNpcFN3aTJOSEZMRkx0Q3dp?=
 =?utf-8?B?WDRoNWc4cUIxRVVTUzV4dmRYUUc0bHI1OXF0VGRidk5lT3Bab1Z1cVBNczll?=
 =?utf-8?B?dXhlSDc5a2xvZGhzNlBVSFBJYk5RdnlBN3ZJUGROT0xHNVlBVUtEZ3JqMmR5?=
 =?utf-8?B?YnZOVXc4aVJqbDhqbktpNThmQTE4bERwR1MxSXUwbS9MVXA0ZGJxUklBNlNE?=
 =?utf-8?B?WHBabkdnMitCRmlZOHN1M0tXS3VEelltUEVkU2RBSTE5dnFwSFZIbXdnbERn?=
 =?utf-8?B?aExVUUhBTDFFMUVFZm9MRlRWaUdCSUVidXoxRkhMV05iRXVIR1Frb0hlVFNR?=
 =?utf-8?B?bWhnKytXc1hOMzYybTJJaXFsbnUzY252TVZNR0tYTW5Hc0E9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eUxqNG1mdlZiaVd0R1luMXdKbC9LZFdXeDRYbjN1UGJTdERHdzZUK0RVVWJ2?=
 =?utf-8?B?SnVTYnIwaUFoZ3ExVjEwMElQc1JnK0VIL1RacnVnZUJLaVdUbitrNFFzUlVW?=
 =?utf-8?B?R2lsbVlpNE05WHA1ditFU0RkTkY4NXBHcWY4NmpYWHVwOGt5SEdEN2txVTBj?=
 =?utf-8?B?L2dWbitPM0szRGtKaFJJRkNpQ3dhb0RHOG5zMm1nTyttR2FXVUQ2RmpzcmFW?=
 =?utf-8?B?K05HMzZ0VzhoeTY0T09DVzZWRFdFTTU0MEkxcmFHSlcxb1V4U1hZb3ErMjkz?=
 =?utf-8?B?L2pneU11amt0c1FKT0wvYis2djArY25FZXNHZlFkUTBKZ2FmWHZ5UWdCb2dy?=
 =?utf-8?B?SzZsTXBwSU5oOGNyekdRSnZZSDlBeTZaeWNFZks0RHdzQlYvT3JKNWN2TmZQ?=
 =?utf-8?B?Vkg3c3hJb3Q4WWhpc3hCM3BSdFQ4SzAvUy9xeDhHaDhPSWRHK1VyanA3OUtk?=
 =?utf-8?B?cHh5NnZwVzl5ci9kRzBYbXVrYTk5a2E2QUZxSFZpcTh6NW91bWVHY1pSQlJz?=
 =?utf-8?B?YVBRMnFsalJ5a2xNNDZXTGJBYm1uWTFEQ1pRQjdWUzd2MldRRkRwT2drOFk1?=
 =?utf-8?B?cmNyMWNZMmVxaHo2azdZVUdWaitQQ3NuYlVhZFN3RlE3RVVSYjNWZlJ3V3ov?=
 =?utf-8?B?c2owQVJndEdvTlRmT0pPRk9OdTVsZ3AyUUE1clNyaVNtbFduQTRud05DRE95?=
 =?utf-8?B?eUhEOFR1NjZJMnpQR3ptb1VtZHZ5UDFlakhmNVJZb3k5cXFLWGs3ekRXZGRP?=
 =?utf-8?B?YkFtdXdkNW0xUjRMOWtLc1pkOEF4SlVYTHVoYzF3VzFBb3RBZ1dsMkplT2Ex?=
 =?utf-8?B?TndibDFiYUpPUTF6am9lc2VBUXJ0YjUxWVBScG41S0Zhd3hDb2l4QWNGbFgw?=
 =?utf-8?B?M3hxMFlKam0yekhGanlBcWw0aXNCWkRJeU5hWVIrdVdJb2tBSlN6enBhUEpV?=
 =?utf-8?B?M1hKWU9zOUVsK0s2NUFEQ0VXMFR5bXZjZzMyUEIxd2VDS2RtNk5yQjZDRlV1?=
 =?utf-8?B?QkMvUDczcDljRHFLMzMxdEJnYUhGN05QWlRpOVVvT24vWWVYZG4vSGxLMEdq?=
 =?utf-8?B?NERUTWNiM2dGbHJzREFJano2NzlUQVdvUUowN3RyVHNxT2k2K0VGdEZzN2xj?=
 =?utf-8?B?UXFaT2dnWU13RjlJbDNYQXNITllTb3VYcFRqNW52SVRXa2NNdlBiMWxzWVVi?=
 =?utf-8?B?Vk9aSWg2Q1BtaDdUaEFFMkxtS0NOWGo0VGpsYW0vRmpTOFA2RGxzZkJyR1hl?=
 =?utf-8?B?UVlPMlFKRlhQNlZOQXl2MHZIUWJlcVUrc0loWGtBSG1lTTJGSzFwWGNRLzVu?=
 =?utf-8?B?SjRwVkg2TjFBdWFhdVhLMldaM0pUTzBxdkg0OUtVVG5Ob1g5TmRXR2hsbi9D?=
 =?utf-8?B?dTE0NU1TNmRNeVdyZzQ1eGlhU3cybGdtZ256bExqOFJVWDFDelRucFlzVHRm?=
 =?utf-8?B?aVdsUU9NQ1VFTHlXNU45SlhPc1FiVXF6b2lpWTF1M2JxK0txKzFsYkJCd0V4?=
 =?utf-8?B?QzFxNnZNcVA3RWdhaG5YU2swVGZldGZhQUJVdXlGVFA2d1hkRjcxSlBENlZZ?=
 =?utf-8?B?NWNzM0RGcTUrVGxLdW1BTGV0MkFWcHNvakZiQys1amtzNnlIWkQvWXh6Ull0?=
 =?utf-8?B?YkNzckhDQlp6UFVXRHJHYllVekZpSGVvVStITEVFaGpSUUNocUhMMW1EYUE2?=
 =?utf-8?B?cTRyR09TakhORDk4SDJKb2FFZVNsdlVmSjFXdys1Z1BKb0VnRDlZNlUrUkdJ?=
 =?utf-8?B?cDFCOGJHTXlBZWlBS0lWa2thNXVtNXJ6azBWZ2w2T1N5T3VSVktZMWdrNy9v?=
 =?utf-8?B?SjJGZGYrS3BmcU8wYUxHZVJOeWhDbEVuWlYrV3FPZkNzRjVUaG1sN0FNSmlY?=
 =?utf-8?B?T1VuUi9sTkxaNzljbUo4OGRnUW16eEg4cVdyUVU0ZDJ1S3VCeGVCZXJFakdr?=
 =?utf-8?B?VUN0bUwvTVg1YzNrMnZ1S1RkT2JSUXJDeFdsbVBnbEorbGtUZnJ5cDlUek0y?=
 =?utf-8?B?U1EyK0xSOXcyTFIza3pUUURDMXlqRWtrRnRGeStlV2xJTElwa2lYT1J2N0Fo?=
 =?utf-8?B?cmQyMTFMVDgxYnAwM2F4VUx6RURRVjBlUUF5MkhnWFYrdjRxMHZDVFROSnZM?=
 =?utf-8?B?YjQxcmkyZHdwVmE1alNQZjh4anQxaVowNWpHOThrZDFRUGlYcGtvbjhaZ2gv?=
 =?utf-8?B?dEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 76bacdf5-ef1a-4e46-56ec-08ddf52da779
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2025 14:30:59.5346 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RhvC6urVO9zkCo7l0/EG1E5xlmUpCaDDFAMoGd9j3u5XWYUqZw/LK06s1MCCRoNAWLR8hu62hAlRRByK6OcosRAH6SDWyj8Tcjj+hblpIeA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8320
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


On 9/15/2025 6:02 PM, Ville Syrjälä wrote:
> On Sun, Sep 14, 2025 at 11:29:10AM +0530, Nautiyal, Ankit K wrote:
>> On 9/11/2025 7:55 PM, Ville Syrjälä wrote:
>>> On Thu, Sep 11, 2025 at 08:15:50AM +0530, Ankit Nautiyal wrote:
>>>> When VRR TG is always enabled and an optimized guardband is used, the pipe
>>>> vblank start is derived from the guardband.
>>>> Currently TRANS_SET_CONTEXT_LATENCY is programmed with crtc_vblank_start -
>>>> crtc_vdisplay, which is ~1 when guardband matches the vblank length.
>>>> With shorter guardband this become a large window.
>>>>
>>>> To avoid misprogramming TRANS_SET_CONTEXT_LATENCY, clamp the scl value to 1
>>>> when using optimized guardband.
>>>>
>>>> Also update the VRR get config logic to set crtc_vblank_start based on
>>>> vtotal - guardband, during readback.
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_display.c | 36 ++++++++++++++++----
>>>>    drivers/gpu/drm/i915/display/intel_vrr.c     |  9 ++++-
>>>>    2 files changed, 38 insertions(+), 7 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>>> index 55bea1374dc4..73aec6d4686a 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>> @@ -2638,6 +2638,30 @@ transcoder_has_vrr(const struct intel_crtc_state *crtc_state)
>>>>    	return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
>>>>    }
>>>>    
>>>> +static int intel_set_context_latency(const struct intel_crtc_state *crtc_state,
>>>> +				     int crtc_vblank_start,
>>>> +				     int crtc_vdisplay)
>>>> +{
>>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>>> +
>>>> +	/*
>>>> +	 * When VRR TG is always on and optimized guardband is used,
>>>> +	 * the pipe vblank start is based on the guardband,
>>>> +	 * TRANS_SET_CONTEXT_LATENCY cannot be used to configure it.
>>>> +	 */
>>>> +	if (intel_vrr_always_use_vrr_tg(display))
>>>> +		return clamp(crtc_vblank_start - crtc_vdisplay, 0, 1);
>>> What are you trying to achieve with this? As in what problem are you
>>> seeing with the current SCL programming?
>> In VRR TG mode with optimized guardband, the guardband is shortened and
>> vblank start is moved to match the delayed vblank position.
>>
>> The SCL value which we are currently writing as difference between
>> delayed vblank and undelayed vblank becomes quite large.
>>
>> With this large SCL, the flipline decision boundary which is given by
>> delayed vblank start and SCL lines is same as the undelayed vblank.
> Everything should match the undelayed vblank.
>
>> It seems that intel_dsb_wait_vblank_delay() (in turn
>> intel_dsb_wait_usec()) does not behave correctly within the W2 window
>> (between flipdone decision boundary and delayed vblank start).
>>
>> It seems to return prematurely. Since the push bit hasn’t cleared yet,
>> this leads to DSB poll errors.
> That doesn't make any sense. That command is supposed to simply wait
> for the specifid number of microseconds. It should not care at all
> what is happening with the scanout. If that is not the case then we
> need to write a synthetic test to reproduce it, and report the
> problem to the hardware folks.

You are right, on debugging further I noticed that intel_dsb_wait_usec() 
and intel_dsb_wait_vblank_delay() are working correctly.

Due to large SCL, the the intel_dsb_wait_vblanks() is not waiting till 
the undelayed vblank but the safe window, apparently undelayed vblank - 
SCL lines.

We are setting DSB_CHICKEN_REG bits 14-15 : which says: Wait for Vblank 
instruction will use only safe window signal from dptunit in DSB HW to 
complete the wait for vblank instruction.

I am not exactly sure if its mentioned in Bspec that safe window start = 
undelayed vblank start - SCL lines.

Observation:

For example with eDP panel VRR range 40-60 and below mode:

Mode: "2880x1800": 60 347710 2880 2928 2960 3040 1800 1803 1809 1906

Before optimization:

guardband = vblank length = 106; Undelayed vblank start =1800; Delayed 
vblank start = 1906 - 106 = 1800

SCL = 1800 - 1800 = 0

Flipline decision boundary is = 1800

After optimization:

vblank length = 106; guardband = 38; Undelayed Vblank start = 1800; 
Delayed Vblank start = 1868 (1906 - 38)

SCL = 1868 - 1800 = 68

Flipline decision boundary = 1868 - 68 = 1800

Consider lines in  intel_atomic_dsb_finish() :

  intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);                 
/* If flip is earlier than 1732 (1800 - 68) this waits till 1732.*/

                 intel_vrr_send_push(new_crtc_state->dsb_commit, 
new_crtc_state);    /* Push happens immediately*/
                 intel_dsb_wait_vblank_delay(state, 
new_crtc_state->dsb_commit);        /* Waits for duration (delayed 
vblank start - undelayed vblank start) ie. 68 lines ie. till we reach 
1732 + 68 = 1800*/
intel_vrr_check_push_sent(new_crtc_state->dsb_commit,               /* 
Push is not clear yet as delayed vblank start (1868) is not reach yet, 
we get DSB POLL error */
                                           new_crtc_state);
intel_dsb_interrupt(new_crtc_state->dsb_commit);                     /* 
DSB interrupt is fired earlier */


This explains the observation that if we call 
intel_dsb_wait_vblank_delay() twice, it reaches delayed vblank and works.

So I think we dont need to set SCL as the difference between undelayed 
vblank - delayed vblank and clamp it between 0,1.

In any case the above lines should be modified to something like:

intel_dsb_wait_vblanks()

intel_vrr_send_push()

wait for scanline in range [delayed vblank start, vmax decision 
boundary] /* To ensure we have atelast past the delayed vblank start */

wait for SCL lines /* Only for VRR case, to ensure send push is cleared */

intel_vrr_check_push_sent()

intel_dsb_interrupt(new_crtc_state->dsb_commit);


>
>> AFAIU we are not using the SCL (Set Context Latency) lines to write
>> registers via DSB.
>>
>> The evasion logic ensures we write within a separate window, making the
>> actual SCL value less critical for register programming.
>>
>> So I have clamped the SCL value to (0,1). With this after the push is
>> sent the send push bit is cleared after (0,1) lines.
>>
>> But we still need to wait for the delayed vblank. For this we need
>> either intel_dsb_wait_vblank_delay() or dsb_wait_for_scanline_in().
>>
>>
>> Do you have any ideas, what could have been going wrong or if anything
>> we might have been missing?
> Was your crtc_vblank_start even correct (== undelayed vblank)
> when you were testing that?

I think the new crtc_vblank_start should be equal to the delayed vblank.

So we get guardband = Vmin Vtotal (=Flipline Vtotal) - crtc_vblank_start 
as mentioned in below lines which I am not changing now.

                 crtc_state->vrr.guardband =
                         crtc_state->vrr.vmin - 
adjusted_mode->crtc_vblank_start;


Regards,

Ankit

>
