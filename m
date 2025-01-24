Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C804A1AF56
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 05:12:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3339210E220;
	Fri, 24 Jan 2025 04:12:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iQWp3bDw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 976EC10E220;
 Fri, 24 Jan 2025 04:12:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737691965; x=1769227965;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=09GlYqO4JbMcQ9lT/RnPXXrkyd2QdfBTbOlQuckTlMM=;
 b=iQWp3bDw8TBzeDRgzOoz77rknZyPzaO0Wy+bL6bggJECp5tGViHeq7Oj
 N28rXXui8q01nCwe3ICNrDsjs3aPVYiCit/p5/Gbe1S2xo3wHzdo0LhAE
 6G0ReNZ0qmUQBeVloDy/jB7zdlaZ0m+0qWNcclSQPIDFu6K8UoDGIliNE
 UcC+AXeCgPakk3WZM5z1e/FNnf1EMPUjghKl5mjQzLQl8HCIoM8hLut3a
 V9J3yvLgX+ExI0BYCeRp6Y+YaoQxwZ2R63Q1nV3aO+JEFqCQd5ar5sROH
 6x8osHngW4JA/NkG/wkR7zncqpnYlEJ7pDvnu8/CEwVlbYF80imJT00WD w==;
X-CSE-ConnectionGUID: 8+DCzJC5SzK7xPG2qShodg==
X-CSE-MsgGUID: TqQwzmvXQYuCQqhUtz2crg==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="48725510"
X-IronPort-AV: E=Sophos;i="6.13,230,1732608000"; d="scan'208";a="48725510"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 20:12:44 -0800
X-CSE-ConnectionGUID: 8glj7n7vSj6+wuKzNTVqfg==
X-CSE-MsgGUID: GIi13n9hRqai6PDbAoChIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="111696691"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 20:12:44 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 20:12:43 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 20:12:43 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 20:12:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WaNIxoqumhf+Cibq0ZtvyDmd8xXRD0jbdnQFHElKjh0ruAWbrFkhigcQL6rfskS7mAieKMplzSdB3bGLLy6lStY0YAETZ+j3Mdge/NmlIWO3tkMv8G0SAkdEDWufrz8wDRAeb8A/6cFlv/rty7wJmOxZvfDB0A12Cs4ygCxmRr2JahUVvTDrOp9ZqPQaSlQ+du4NOjebLWPDP3fsAlMua191zzvcCedFEfHfMaMvJ/rWZ9tz172nyKXTzHZUyNyWeQDjYyj7WY7iT7qwb9of2EgJ8Kz0hN1LAmJ8w80Yufl38HRvcEnTf5foIw3Oftjvko8n37dwE0ELa4BuMRkjCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z2FOe67MI3cBknizY3Y+PO2L4rV59jQQO6HfSbqlKCI=;
 b=HU0OO45EUxoBYMijD2L1x5SeFyBf9/XKw9MHLQS97wWDCyTHaznEax5voyNj83kxsr91KicsoHUu7j5GjX0V3KDf8oMI2UE/AT0+3FD6fhjvjhk7DuE/xizTDhqm2kyF3PaqP7U+qiZU6xOXp19I1nCyw6kCez4xVfvSKCUw+umHjsdCxdqzdsBLB5njkoOtVugOXRlmGwP8z1nJrHS5F9sybbHB9mNDjV1Ykd0GVRg2pFuu1crOBkPNOd6iqZUsiRn86Z04Y8Dc2QhLdPaXIVDh8Xf2G/USXgU1QCJQWfGA2Xow7d2G+SIhGDGT+ydzhsL6Jjl2ZV6lx0qGRdTbvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4696.namprd11.prod.outlook.com (2603:10b6:208:26d::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.16; Fri, 24 Jan
 2025 04:12:40 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 04:12:40 +0000
Message-ID: <df10d52e-2130-4fbf-8403-a7cefa394d3b@intel.com>
Date: Fri, 24 Jan 2025 09:42:34 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/cx0: Set ssc_enabled for c20 too
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <uma.shankar@intel.com>
References: <20250122053022.1544881-1-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250122053022.1544881-1-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN0PR01CA0036.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:4e::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4696:EE_
X-MS-Office365-Filtering-Correlation-Id: dc872143-94b4-4e0a-8a87-08dd3c2d57ee
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WmRxa0I5NXRKQ0N1UitzQ0c0MzUyYnpLa01YZlNjQ1pidVZDU3NMeXZDUkV5?=
 =?utf-8?B?VFJoN3VsWlFhaFRvOC9QYm5lWFZtQjVFcWY0NlZkODVSRVl1WU11VCsraW1i?=
 =?utf-8?B?NlErSndpSlRaenRnZ3dEcmxGTEVvQVB1d2hwNVVkWmhEY0tiSkU3RUJ6WTBY?=
 =?utf-8?B?R0lKSEdPRjR1ZUE3Q25pM0RuV3QxSUIxdWFNOTBLOWlCRC8vR25LZG12dXN4?=
 =?utf-8?B?Z3NBTXE1V1VDREVZSURCS2cyVnZnZC8vS3QyN1pBb0dTbzRYYXRBNE94SkhC?=
 =?utf-8?B?ZHVyZW1LQ3FzK09ZLzN3WUxGWW5PQ2pHNS8xVXdXa0lhWUJQUHRRajhFWTJY?=
 =?utf-8?B?SmVUWThjT0h1Y005VzhXQWt4OTJyQkp0dTNTL2IyellYTVZ5bXRkWU94MmFh?=
 =?utf-8?B?MStEZzZaMmNQeENjRWppcElhYWF5d085SEw3REZmQitubURmeDZxSmRSMnJu?=
 =?utf-8?B?VkJGM1JFV0w5blNOcmNNdG0wcGp2M20rY3htRUpGUjN1dW5ubU4xZk9ia1pM?=
 =?utf-8?B?QjBrcXRVR2ZIYkZ6Q3c5QlRVNlhhV2VOTGo3SXpDR0pXbkNRekczUWdWWkNX?=
 =?utf-8?B?cEgzMmVwL1JuOUZxTSs1SjRxb3N4MlRrcFpkQTVNOEp6Snp5REtNVHhKMkQ4?=
 =?utf-8?B?WERpMy8vS25jYnU2Z2U3d0M0RFBCU25Ia0xMMDJCTDVxdGEwdnhNaDY0VjVo?=
 =?utf-8?B?Y1FRSDE0cmwyODgwZFNORFRPSy9Ua2E5TjZRYmJPdElvSm9vck15YURQR1Vr?=
 =?utf-8?B?NVRyUEE2NVBwQUFwVllJeEhDRWdRVE5hRTNDQ3VrSkZLWGJlWVNpRmsyRzcr?=
 =?utf-8?B?ODUvN1o5T3VTMDBMY1Jabk9vUnB6TWd0d0FiZzhTaHBHVWkwczk4N2hEUkpN?=
 =?utf-8?B?K2orZ1pjT2RwVjg3UzVkT2xtSDM5Nll1bXZpWDhEV2FIeWdJQU5RNWJzYU5W?=
 =?utf-8?B?U0tpRVFXNTE4dnRQdUsramRST1VIT0xOeEFBWkdUbkJOQnBjSktvL3NUV213?=
 =?utf-8?B?V1VKV1pDOTJ2VGx1b0lUNldFU3BiaEJtR0hJNTZwZW9LWHZQc25pU09kaUtk?=
 =?utf-8?B?dkFnUCs2c29MbGE5UGFXU0x3TjlyV25pcjRteEpiZEFLR3ZTSklFb3ZNdHpq?=
 =?utf-8?B?N25tZ3FOc3BoeFkwQVJUcWkwU0Zwa1hBS0RvTVk0d0ZSM0ZXYTQrUUt2bTF2?=
 =?utf-8?B?dTM3NkhmbGM4WkdOaitqa3hpVzN2aVpxUURobFF3ellmQ3hIQmI5U2ltN1dt?=
 =?utf-8?B?RnVGazZEMWd4ZW8rM0YxeGlpY0t0ZUJmYmpEUmk4MG9VcXNrR0tmaFo4WkdL?=
 =?utf-8?B?T0ZQQTFpL09aSytRRTlkYlcxUU1RaGc1MEZYa3Z6SXlBMXR4Zkw3NW9ZZldF?=
 =?utf-8?B?cEhrOTdIVjhWY0ppQ2RpeTlhZnZZWVozdklvZGxlMkh0WXo0b1R3KzI4ZFJL?=
 =?utf-8?B?YldjSHdJcmN0cTlqZU51MmUwQVJ1NmZvZWNvOE1VK3h6TTYzbFNQeWFadXRC?=
 =?utf-8?B?RWd6Uzd2YllqR2tQazczTlBUdkY2RE4yc2t2ZGNxWGZHbXFNblB3NXRXQ0NS?=
 =?utf-8?B?Njk0MXIvQVVhYk1EQ3lwSzI1dGt2Rm83STRIQ09XR3BIUFFDU3h4bWprWXB6?=
 =?utf-8?B?Q3ZzeExZWWRtbW1OUm80ZmpOQ2djb0NPRDd1QUxFZTFuc2FIU2cxNkxxUXVQ?=
 =?utf-8?B?ZlJYTzhMc3JlcnlkYzEvRnYvY1IzZnVSdStsRVRDcDZBMXM1ZW1PWVhwL29y?=
 =?utf-8?B?UklPTG9CZWl4ZDBkV3hTRnB6N25PQkc4Rzh6aXVvOFR0OEZvUmV5cnQ4LzZP?=
 =?utf-8?B?WFBINURaZk92VFMwdXNFeDNVSGFGS2ZjbHdPVlBkUjhCVW5MemdzTTJpUjJ1?=
 =?utf-8?Q?cj1hs+k2MN0f5?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bWJsWnp3RlJlVHVPNkIxZ0VVMXZWN3grZnpDZ3M5NGtrS2RUTEZXQWdsYXNh?=
 =?utf-8?B?ZUQrSUlRNnZmNlZjdkZjczRtZ2ZkSFZGYlBUVzNZNkt5YXc4bmZSVWc3ZnEy?=
 =?utf-8?B?UHoxTEE3OERXOUhleE5SS1JPQkJWRUxYM2lnTnI3L0hOeHRJelF3UWNTUHBY?=
 =?utf-8?B?Z0dhRkZHKzF0d05tVm1aS3IyNndxUU5YenYzbkkrcy8vVnhBRFBrMXZLTXM5?=
 =?utf-8?B?czlJUGhYeDd3MklLUzhlOUp1aVhoYjQydlordEQyYVZwZE1Ib1VMTCtIRFR1?=
 =?utf-8?B?d3BJVnpleDAxUUl1dUtrS0ZwOWRsR2hFandibXpMd0YvYVE4YTlGVVNyak9N?=
 =?utf-8?B?K3h0a3ZYbUxnc21yQjQ5c01lSlhOV1ZQR0tOUTlGbyt2dWk4WS9kN3ZhT08r?=
 =?utf-8?B?c0RKWXNxcHBvaWZDTFBXT280dndHcmV3dGVtU3RPV01kUm5lSURiUzdFWXgx?=
 =?utf-8?B?dmJHVHZWcmROZy9SRy9Hdzk2cHIyK3hoZnJFSkJzRERrSTYvSXFWSzBVdXo2?=
 =?utf-8?B?QVRPS3pFYmZtdEx3NmtLUHlod1VXbEEzWTVsM0pxMjAzckN1R0xSUVlUQVlI?=
 =?utf-8?B?WFQ3QnByQ3BLWE9EMVFlc1dOT09UVm1PSGNaOWY5YUVZM0RhYTlHOHpaUUp1?=
 =?utf-8?B?b1RBQXYrbWF2WC9lQmpQaFUxMll6OU4rMWpZbHhwRVlhRDZJUTFNa2dnZ3lw?=
 =?utf-8?B?K09oN0oraHdseU9nemNUWkpmMTl3M3dsdXFlU1RVWUZXbVFrUlJPampweFBN?=
 =?utf-8?B?RmtZSFRYVzFHdlBVUmhXeFJRNUY3UTBFeWFHQ0ZxSzhuS2Vsb203K3pSbTZn?=
 =?utf-8?B?RW9aWkpTblUvaUtRWDZxdDhUSzZRMU9pcUZaNWkzNGE4eUJlSmVqQ0hNZGdG?=
 =?utf-8?B?NmtEckVJekx4WXBpTFI1RGxWK0F6bHlIeTJYQ0NpM3hzOGFiNjJ3ak1rdUd3?=
 =?utf-8?B?ZDYyVElEai96OGl4aEJwNDY0bWdlUGRtWUVTaThJSlEwQk0xdFArckNtQU1l?=
 =?utf-8?B?U0xoNHhPS1pzcDgya0VhSTFZNnYvejFrdXdZZXhwSDFNK3pOVGpFeS95aDVw?=
 =?utf-8?B?ZFIxMzNnNHhidDdWbzFkbmdLWk9PZzVKYldLQkpWVlphUXVPUE1sb2R4WVUw?=
 =?utf-8?B?QnNFSWNHRzh0R3lzQ0grd1dveExNYWgwL1Zvc0g1V0FWVURSc1ZFRnZrL2h1?=
 =?utf-8?B?N2pjLzVkYUZ0Z1JDMk51aWt2Z3J5QkE4Ukc4K0JLaGg1d3JBeDR6b0lvV3VG?=
 =?utf-8?B?L3RRL01CekxMWXY1M3RMMnQzQ1Z0NlBKd0hYeWpweUs5T3dlK1VWRWYzMith?=
 =?utf-8?B?cTBOcjVjc1JKUGNoM0NwZEVmMTZjVVVBYzUxTXdYMEsyNTNOSG5MNGo2UHhw?=
 =?utf-8?B?ays1YlpaTnZXTGhZYm9teFJxMWtOczNJY3dUa3hSOEFjZkZOTXNYdHpra2py?=
 =?utf-8?B?MmVvSCtJaCtPck9ibWRMaXo2N3dOYzNlK0VNOTNCT1BIS1lqZmE0Mk1WajNH?=
 =?utf-8?B?QmxNMjRlSUI2YjJSdWd0akZkdkVqc2Z2Sm41cmluRTR2akl5QWVIbzdnSDFN?=
 =?utf-8?B?NS9oRFY2TXgxVEJsWXA5UnM1Y0xMTEVva0xMZS9FUEJMYU5iUCt0aEZVb2Jo?=
 =?utf-8?B?THZzY3RYVnFoTXBsdGxRL3pmc29nSHdLNW8yeTlNWjg2QUtvaEpYYXFPNkJ2?=
 =?utf-8?B?YlRnZXlsSTVvL0hrQ1JrYnM2bXRaampFeXNXMHAzZCtNWXVJR3AwTXM5QlB2?=
 =?utf-8?B?NlYxVE94ZDI4bk1wV3FHYmRWWEFYKzhxcnA0WnB4bksvRENEeXdGTHZGZXhW?=
 =?utf-8?B?MzdRVUQyOWRwOUNhZzh2RlVES21xNHF1eGo4Uks5U3VteDhkaGE3MTl6TXJh?=
 =?utf-8?B?MC9jdFJRVTVZcjl2aFE5WjZWc25jOVlTR2VPTW0vc29zeXBMWDhsV2RSRE1Z?=
 =?utf-8?B?cEIrM2J0ODRXWHpYeEwyZEZHU0VGQmV3UHZJbnBVM2JIcTZyOFBQSjV2SVll?=
 =?utf-8?B?MDZnMGg5d0ZxejMzMXdvMFVTM0FMT2NEQ2JWVDk2UlJlUUVIZW94eEJhVXhE?=
 =?utf-8?B?SzVwZzF0VUgwKzhtaUVadFR2NlRhaFRUUm1iT1FoK210eEZFSmFoOE1INUNu?=
 =?utf-8?B?WStvUmVBMnBhb0ZwTXR0U2xtLyt4Vm9JMXVHZDlLM2NwaGNuYVZ6NWlVS2JE?=
 =?utf-8?B?Qmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: dc872143-94b4-4e0a-8a87-08dd3c2d57ee
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2025 04:12:40.4671 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: I0kIHtE0kVPxoG528Ibn0tuDkGqVkKNRtsKy1fM10pbat568RnV63o4oPNX1nxDQ54j4tjRAA4LEZs+FOvMs60PxsRqz54f/kdbCYowPX8Q=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4696
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


On 1/22/2025 11:00 AM, Suraj Kandpal wrote:
> ssc_enabled does not get set for c20 phy.
> This patch makes sure we set ssc_enabled for both c10 and c20.
Remove 'patch'.
Add Bspec: 74491
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

LGTM. With suggested changes, this is:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c | 14 +++++++++++---
>   1 file changed, 11 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 058013c74991..d123851e53cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2033,21 +2033,27 @@ intel_c10pll_tables_get(struct intel_crtc_state *crtc_state,
>   	return NULL;
>   }
>   
> -static void intel_c10pll_update_pll(struct intel_crtc_state *crtc_state,
> +static void intel_cx0pll_update_ssc(struct intel_crtc_state *crtc_state,
>   				    struct intel_encoder *encoder)
>   {
>   	struct intel_display *display = to_intel_display(encoder);
>   	struct intel_cx0pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll;
> -	int i;
>   
>   	if (intel_crtc_has_dp_encoder(crtc_state)) {
>   		if (intel_panel_use_ssc(display)) {
>   			struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
> -
>   			pll_state->ssc_enabled =
>   				(intel_dp->dpcd[DP_MAX_DOWNSPREAD] & DP_MAX_DOWNSPREAD_0_5);
>   		}
>   	}
> +}
> +
> +static void intel_c10pll_update_pll(struct intel_crtc_state *crtc_state,
> +				    struct intel_encoder *encoder)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	struct intel_cx0pll_state *pll_state = &crtc_state->dpll_hw_state.cx0pll;
> +	int i;
>   
>   	if (pll_state->ssc_enabled)
>   		return;
> @@ -2070,6 +2076,7 @@ static int intel_c10pll_calc_state(struct intel_crtc_state *crtc_state,
>   	for (i = 0; tables[i]; i++) {
>   		if (crtc_state->port_clock == tables[i]->clock) {
>   			crtc_state->dpll_hw_state.cx0pll.c10 = *tables[i];
> +			intel_cx0pll_update_ssc(crtc_state, encoder);
>   			intel_c10pll_update_pll(crtc_state, encoder);
>   			crtc_state->dpll_hw_state.cx0pll.use_c10 = true;
>   
> @@ -2354,6 +2361,7 @@ static int intel_c20pll_calc_state(struct intel_crtc_state *crtc_state,
>   	for (i = 0; tables[i]; i++) {
>   		if (crtc_state->port_clock == tables[i]->clock) {
>   			crtc_state->dpll_hw_state.cx0pll.c20 = *tables[i];
> +			intel_cx0pll_update_ssc(crtc_state, encoder);
>   			crtc_state->dpll_hw_state.cx0pll.use_c10 = false;
>   			return 0;
>   		}
