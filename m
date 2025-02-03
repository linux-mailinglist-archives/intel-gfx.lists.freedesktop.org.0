Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A58A25C24
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Feb 2025 15:20:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9908B10E0D1;
	Mon,  3 Feb 2025 14:20:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z0+2G3Vz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6269A10E09D;
 Mon,  3 Feb 2025 14:20:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738592413; x=1770128413;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+1jTqP8XhaMDdZpQGHOnLSCvctO0lSdC76Caco7Kkxo=;
 b=Z0+2G3VzyUflXRxDiO8SNjqAj8DcYQe3W2uR5wCg+8iq6VTKBLG6wzlp
 wcFKjkpCCe3JC5hsVa1F9xWd3LT19U1wkqsmzuOrErNFm+z1LiCQVBqEJ
 turFmZQh2Z6nHqbsOcaOoASjqoYBHDEfV5viBr50jGI0uZgia9h3E3dMO
 sBBJfd2Vp7UZ0INFUV65GBj8iVmBWoQdx9I8g9J2BNyfpf3QwtPq4TIK1
 G6XWrmSCM5B5qh8Ol7C9ATqPRduq3Lx+28LgbZqgxlM8r+JsFVds2WwT7
 F9q8IryMhV7qczq35YVy6D7oR3mUcewTbjAHZDYV+8aAR/TUIIdLZ076b g==;
X-CSE-ConnectionGUID: xKp90oElTaOLEXTh/vJXzA==
X-CSE-MsgGUID: kTSbRiMJQX2Wz0jqVAzkqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11335"; a="42835304"
X-IronPort-AV: E=Sophos;i="6.13,256,1732608000"; d="scan'208";a="42835304"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2025 06:20:13 -0800
X-CSE-ConnectionGUID: aYhU99KCSLajv60zhz5Ojg==
X-CSE-MsgGUID: icjFK1xYST2tYJ8VrMc22A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="115274414"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Feb 2025 06:20:12 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 3 Feb 2025 06:20:12 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 3 Feb 2025 06:20:12 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 3 Feb 2025 06:20:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qHhgPZoC/8QfeEZgTaqFuZ92xBiQ6EMnm0Cjl3Sq2O5lgbJyyGW/gszqlbWPKCqN5vtQq0WDhzPzLOEz4CkjzTnAq4000qZNFK5jhZzoHWzDPvCpn9i1FA98O0G7BJrIPb+bTIvkhKilKUTAXsiFps6YhE216kyNH5wVZM25eOhRWyp9fE02naTvK1xwLZYDeKco5FhbaW0cv5z/SHxh3SSV5eD6EhECrY969J2mvsWyH1nszihdQFL3Wy11vx6OXyyuK0KQcqQbi8oeq/ldmvCcV57L/fQY2mV7lU45pCvJKm4d/WDTxpSLOOnTQ5aQJpDHAOxqQySG/9ftWu3ldA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8cPu7aQWDN7kAIcaQAhZL9rOQDTZtsz+RydChe2CsMI=;
 b=AENuuTjtR23oEBfz6YLj7yImHXpSnibpXs3Rt0bVM6CyMWd9xAMMnT6j7TLViHsC7g6+c/eV5A4Q/bBZgrx0LJKWxwLZi0bXp+6bwmj9NHLwi9beyjib1ERzuxVE7jDqxgYYALb3ozDSYMMQYwo7kxBh0VFHwi64JldSm0Knb/OOBaVsBuumt0XfK89S1zLCMyo4entFfzhChdTECTtYDTrS9ziXnn5CxWjkrK4Mvx5OYnKeravJek6BbgwMIL8SEmsuzcycpfVhDFBEoVWoFuCo3NNKp9b6QEtzStXa0OzKjsCQWC4VtdXObik+Ay4HALUtI8THrVho6x//xhMqAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6211.namprd11.prod.outlook.com (2603:10b6:930:25::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.25; Mon, 3 Feb
 2025 14:19:41 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8398.017; Mon, 3 Feb 2025
 14:19:40 +0000
Message-ID: <a8732cce-e591-4b83-b908-e3333c01d03f@intel.com>
Date: Mon, 3 Feb 2025 19:49:33 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 31/35] drm/i915/vrr: Always set vrr vmax/vmin/flipline in
 vrr_{enable/disable}
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250124150020.2271747-1-ankit.k.nautiyal@intel.com>
 <20250124150020.2271747-32-ankit.k.nautiyal@intel.com>
 <Z5QL9ZllEce8ERrw@intel.com> <3d0fa490-9aa0-4778-8ebd-26f0efb764da@intel.com>
Content-Language: en-US
In-Reply-To: <3d0fa490-9aa0-4778-8ebd-26f0efb764da@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0034.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6211:EE_
X-MS-Office365-Filtering-Correlation-Id: 70fe1ee8-66c4-4d58-0759-08dd445dcbe7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QmxHUFRTT1ZXNGNRWThSMGhkVElRZklwblBEM3d2c3hST2lCTTZWdG1RN1ps?=
 =?utf-8?B?WjdZU2c4dXZhQkg1Y3dvOG5kYmQwaFNYa3ppQlJUWFphMHk2WVNRWWIrc1By?=
 =?utf-8?B?bXMwMUVPNGdEa01jYktYTUxxZXRTZnZVLytYT1lxYXBOY2pERWgxd01wdk5V?=
 =?utf-8?B?RGlXTDUvUCttL3IxY0NDK1pLbVp0Tk5WWTA1VHhYK3ZBSXRFbkcrSmFKVFE0?=
 =?utf-8?B?K081dDZ2MVh2cXBmcnNZZDJrL2owZzY1bGRUL1NyenB3TVlGTnFCTzNQRzdy?=
 =?utf-8?B?TFpYOEFLZXRxcEIvdjZDOC9aQzlXWFJOcThRaG8zTE90ZHRoTG9SMVdyOVla?=
 =?utf-8?B?S01xZDdMcVJOQ0d1Wnh3bThpczJMd0tvZ3VqSnc3dDhWSkZTYlNZa1lRTVJL?=
 =?utf-8?B?eWF6dWx2RzBaQWFMTXlQcytrdVR4cHNVL0xzMGtTU0gwV3lQZHJsck9obzls?=
 =?utf-8?B?VzdmbXlZcUlOM1l1d2xjeEVpZXpDK2MzanJMSnQ0YTFtOGJiS0hORTlCdGpu?=
 =?utf-8?B?WFZxSWlKekkzYWIzZFgxeXp0aFBRU3hXbDhEMXJjV0hLaFkyMk9hS1FjckdO?=
 =?utf-8?B?WXg2NUxsd2VxbkdONHdXUEJJeWpSSkRzcnc5dXVJZFBLcG5GZzVIeWdzTlRJ?=
 =?utf-8?B?RjJYOUYvWHg5WjJWUE8vZWx6TzQ3cTlDSGRqd3pZZlVSb3JYeXJaMkJYbktJ?=
 =?utf-8?B?ckFlOFcra0c3UVlyRjN0eStMUjFDQkNpbVZFQTlnMldQTlBsUVFoTks5dkkr?=
 =?utf-8?B?ZTM0N05IeGUwakZVcm00VEt0cm00Ymo4VXRLZnpFMHVCcDFjK0YxWU8xeWNR?=
 =?utf-8?B?VGNBNXluZ0t0MDlOT3JnQkVMc0NPdGtOZ2dvL2NRT2RRREZUckprUVBhclJv?=
 =?utf-8?B?OXBSUm42TmNYK3VlaTlWWXVuR044dFFNRzZ5WUpxVmE5NGxReHlJWmg5QWVi?=
 =?utf-8?B?SGFXczZTR2Rud0Y4UldSYnFVeENtSzR5ZTNtVkU4b3M5dEhQdTEyNGdIeDlv?=
 =?utf-8?B?NDEybm9hV0lYcERId2FiVE9xbUJ2U01RM2RuR1RML0RkbWhRd2xZQ2VKZTkv?=
 =?utf-8?B?ZjNNZlNmMG1XeG05aVI0UVlWZ2I0dzRrMEw2eGgvYnhvMnJjYitiSVdRNG5o?=
 =?utf-8?B?WDFtVzl6V0czRVBvaWlkUWlqMXJPUWI0SG52dXYrQm1BVmlrWHVtNDNOb1JW?=
 =?utf-8?B?QmxVc0VLVkd0dG1EWDBPbnlMbDJiSjhxQzFReVlkTHBTK3RuZ1pDbEJCUkdZ?=
 =?utf-8?B?WEp4Vnl6NVVlcE9FSnE2TjUzMlRhc04ya2E3cHVkMnFoMTdGa0YrckVSRmtw?=
 =?utf-8?B?VTZDSlozWkJpKzV6dWU3S0VvNjBPYUVnYTZ0RGZ5eW9zN1RKbUxIQmVJc3BJ?=
 =?utf-8?B?VEtEU3ErV2JMaFdIU1hRSnF4ZG5qdkNUZkhEYWlKcWFLcHBmdWJlWE96cFhj?=
 =?utf-8?B?dDVxT3VvYnZNSENkVlhZY3ViSkJkNHF5RnZ0QTM2S21UUUFramhxclFVelRP?=
 =?utf-8?B?WVhSaFB3clVCTWVSblpqU0lSN1lKYUh0Ky95RkM4K0RmMXFGdURMQTRTMWts?=
 =?utf-8?B?SndqYXZjN2dWTGI0bE8zMmY0WkdvR1RYdjh3ditiU0VCS3RDRGlreU16Tnh1?=
 =?utf-8?B?UDIyM2NWdGw1Q1JvaVdRTFhmNHRKWjFqT1R1V1FvRU5xT0s1V0JuVTFNS1Ax?=
 =?utf-8?B?V3pCWDdiblhCT29WdkxvMkdCR1JiM3RmTEtERGtoOWpXYzhMblZzWGFiaFp0?=
 =?utf-8?B?RGtSeFhmT0MvMHBNUk9nV3ZjOUR3a05IUEZDeE9vbDdnWlJ5UFhFYUhxaWcy?=
 =?utf-8?B?YWxjTG9OVUFGd0NzbEwzQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?a0o0TE9VVG45VDM4cnBITFJnNDhvV0NBSm1iVDY5Z05xcVI1bncrOVUrWWZO?=
 =?utf-8?B?Z1ZsVjZTbkt5NlErRmhaNjcrTVlIY0lkY3VwZDVEa2w2RmcxUE5aRXNzVzJm?=
 =?utf-8?B?UTlXTFltN3JmQXcwbDgzNXpUaC9UNnpsYkkzRXRrSWwzWVVETUVtaUYzY3RK?=
 =?utf-8?B?VkNnUVNuV3ErNC9qSnd5WFdRTjRhWXlOMUlUQ3RRcTFyVFZ4MlZrQ2x1M3Rh?=
 =?utf-8?B?d0syVHJDWk9BVVloYm8zcE9HVzJ4cEpsYlBTbUo2S1Z1RC8vSjUxaHFIZ3Bo?=
 =?utf-8?B?OVVDM2tYR3E0bFJpL2swdHhVcFhPSFkwRkgvdmMrUElocXRaN21yNnhaMHlC?=
 =?utf-8?B?VUp0eUtWZUswcjZpZW4xNzFFQ05tMEN4a1NYcGp5LzlVOXlGSU5BemRLM3li?=
 =?utf-8?B?c21wRE5LT1VtL3dBdUNFRWVyNldmb1ZjM0pkMjJNellPbnVvTGl5SlhjblNw?=
 =?utf-8?B?cUVPR0NRTXF6MXk5QnhvVExoYWtBdVFpZlF6a3IxSmRCMWdHVFpxYVVETGxJ?=
 =?utf-8?B?dkliVXczMk5oeVFzL21jSEhsZGloalhyVlNON2YwZXZFbkFRNDdFYWFqTG9I?=
 =?utf-8?B?SFF3c2tOSnI2dGdXUTlzRytWcUVOUkh5Mm1uNkFmZjVqV0pteXNQU2dpUzNv?=
 =?utf-8?B?RFhuTUhDaDRHdW1oNzUxNTZINHIrb1ltT0trY2VFRkFjYXc1U0MvaEJRSEg1?=
 =?utf-8?B?VTJaOHUwRk10bE40RXlHZXJYdmtDVkZ5cExRZHhtc2pmcUxZTlhEdHQ3VUsz?=
 =?utf-8?B?MlBzWk1hL2c3L1JveC9IVGV6YlJYbEpwSlYwT2Y5Z3gyQWVoWm9kZXNsVGpD?=
 =?utf-8?B?NGc5VmZTZlRuZ1dETEI4WVFYazZ6WkRCQ3RsM2t4SGF3UDJLb1BhT2NmSEYx?=
 =?utf-8?B?cThpdTBkS3oyT09kMTNXbk55QmVVb2V1amdnSlJHTUdVeTRwZ0dydHo2c1dK?=
 =?utf-8?B?V3piMjZEWDM0VTNZenlSRVkxb0xTZFNwVUlzZmtOU2kwVFJ2aU5MV0ZVTnlO?=
 =?utf-8?B?QXJlWnN0QVUyYy9pWnhiSEcvTmxkWXBUdFVKc0J4MHRNL281eWdKcU1IRjZB?=
 =?utf-8?B?L3g5WERkNVB4cmVOa3ZaSzY5MnhSUmoxNmwzdGZHUWR1bzFqWXJRZ3JKaktu?=
 =?utf-8?B?MStFYlA5NFQxSTBaekJBZE9tTjgwV0ovL0FXdkJPbTUvMVh3cmlnWDVtcFRY?=
 =?utf-8?B?MUpWUTNMNHQ2L2g3eXZDUHFJWUNzWlNPWTZBQzlkdVVTRDdHbk5EdlRxaGZa?=
 =?utf-8?B?TTJxR1pnWWhqU29qWXJvTG5vQmJJWXZJOG5qeHladXhHZFA0Z0tYZnpJS0Jz?=
 =?utf-8?B?ZnF5enFpRkxuc3RpTy9OSDh6ZnlHMzRwUitabDg2ZHYzSGxzVXhZUDFsWmFl?=
 =?utf-8?B?dkYwKzVHWDl2OFpBRnIvQ3BDOVh4MlhhV3VyMGd3bmttWTMyU1c0aERVb0Ru?=
 =?utf-8?B?NTVLdkE1ZFh3azFRWlRGZXJuRzQ4ZHFxTVo3OVp5OEtWTUFEeGU4UWpmZktJ?=
 =?utf-8?B?RHdTdkJINldJNkE3bWIxR3p1blphU3VlZmFrZk1uRkdDNHIrRjNybURIdWky?=
 =?utf-8?B?Rkc4M1EwVVhGV1BJRDhZYU9HWlF4Sm1vb0pMeGlHd1JGQkhRQ0RoWXhSREFC?=
 =?utf-8?B?R1pMWjFxUFJzcWVXUkhuQ2pOQlc1dHpZeTZYTXZFR1l5bGRxdGxUUTdWNXR3?=
 =?utf-8?B?ZXpYRUhQd3RpWmF6VXBuWUpIK2FKM1J3bllKZGR4N3Nxa0Y1RWVsSFZyWHQ1?=
 =?utf-8?B?SlNNUnpMcEtzOGx1NlhzWjRxRUZUd3VYenpKbUNFcUw5SmVsdGRYb2ZPS2JE?=
 =?utf-8?B?NWN5alU1NXVzUnZwR0lxUTdXdHhtZlhaWTE2TVFtVnZiWC9JY0FYVmZDaFFv?=
 =?utf-8?B?bUJreU9FNWZTc3ZZOW5kclExYW5GbUhqdmVkN1NNYnh0STRMYURSQktrT3gv?=
 =?utf-8?B?SE9LN0lqK2Zka1JLZTduSTNzbmlYbHR1cGlxRkdaVVVCbCtGSVU5VnJiMFJm?=
 =?utf-8?B?WjZVWkJXK2NRaVEyYUNYcGxvTUZWd3RJcDg3N09rRUpQZXlZbDVJNGRaQlI2?=
 =?utf-8?B?dEU1OEkzUzFjY3krdmdZcGN2aytDaFNZTkYrTEtiUzdiNE9iN0dQSTgyZFR5?=
 =?utf-8?B?c3h1aDVmOWJ5M25iWHJxTitBM2lNUGZQYmNHU29uUXJGaUNUOGtsWEY5TUFp?=
 =?utf-8?B?OGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 70fe1ee8-66c4-4d58-0759-08dd445dcbe7
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Feb 2025 14:19:40.3858 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EoFDtKQqSvMZCeixq6PKrDxmtGEEgMN669X+mKk4VTMWReDInimJYTvBSVG66h4GY+8rr04jXm5//BoTjBQNYsACMSvN9nhth7T2N03Zvs0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6211
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


On 1/30/2025 4:38 PM, Nautiyal, Ankit K wrote:
>
> On 1/25/2025 3:23 AM, Ville Syrjälä wrote:
>> On Fri, Jan 24, 2025 at 08:30:16PM +0530, Ankit Nautiyal wrote:
>>> To work seamlessly between variable and fixed timings,
>>> intel_vrr_{enable,disable}() should just flip between the fixed and
>>> variable timings in vmin/flipline/vmax.
>>>
>>> The idea is to just do this for all the platforms, regardless of 
>>> whether
>>> we also toggle the VRR_CTL enable bit there.
>>>
>>> For platforms for which vrr timing generator is always set, VRR_CTL
>>> enable bit does not need to toggle, so modify the vrr_{enable/disable}
>>> for this.
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_display.c |  5 ++-
>>>   drivers/gpu/drm/i915/display/intel_vrr.c     | 44 
>>> ++++++++++++--------
>>>   drivers/gpu/drm/i915/display/intel_vrr.h     |  4 +-
>>>   3 files changed, 31 insertions(+), 22 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c 
>>> b/drivers/gpu/drm/i915/display/intel_display.c
>>> index 7bdd41158a93..a0d6360f4cda 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -1310,7 +1310,7 @@ static void intel_pre_plane_update(struct 
>>> intel_atomic_state *state,
>>>       intel_psr_pre_plane_update(state, crtc);
>>>         if (intel_crtc_vrr_disabling(state, crtc)) {
>>> -        intel_vrr_disable(old_crtc_state);
>>> +        intel_vrr_disable(old_crtc_state, false);
>>>           intel_crtc_update_active_timings(old_crtc_state, false);
>>>       }
>>>   @@ -1751,6 +1751,7 @@ static void 
>>> hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>>>   {
>>>       struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>>       struct drm_i915_private *dev_priv = to_i915(crtc->base.dev);
>>> +    struct intel_display *display = to_intel_display(crtc_state);
>>>       enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>>         if (crtc_state->has_pch_encoder) {
>>> @@ -7161,7 +7162,7 @@ static void commit_pipe_post_planes(struct 
>>> intel_atomic_state *state,
>>>           skl_detach_scalers(new_crtc_state);
>>>         if (intel_crtc_vrr_enabling(state, crtc))
>>> -        intel_vrr_enable(new_crtc_state);
>>> +        intel_vrr_enable(new_crtc_state, false);
>>>   }
>>>     static void intel_enable_crtc(struct intel_atomic_state *state,
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c 
>>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> index ccc40867c10a..10a9bcb8daae 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>>> @@ -496,7 +496,7 @@ bool intel_vrr_is_push_sent(const struct 
>>> intel_crtc_state *crtc_state)
>>>       return intel_de_read(display, TRANS_PUSH(display, 
>>> cpu_transcoder)) & TRANS_PUSH_SEND;
>>>   }
>>>   -void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>>> +void intel_vrr_enable(const struct intel_crtc_state *crtc_state, 
>>> bool always_use_vrr_tg)
>> That new parameter shouldn't be needed. We should already know whether
>> we're always using the VRR timing generator or not.
>>
>>>   {
>>>       struct intel_display *display = to_intel_display(crtc_state);
>>>       enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>>> @@ -507,21 +507,25 @@ void intel_vrr_enable(const struct 
>>> intel_crtc_state *crtc_state)
>>>       if (!intel_vrrtg_is_enabled(crtc_state))
>>>           return;
>>>   -    if (intel_vrr_use_push(crtc_state))
>>> -        intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>>> -                   TRANS_PUSH_EN);
>>> +    intel_vrr_set_transcoder_timings(crtc_state);
>> That guy probably does a few too many things for us.
>> Either we need to chop it up or not even use it.
>> We just want vmax/vmin/flipline updated here.
> Yes right. The below code snippet seems more appropriate for this case.
>>
>> So I'm thinking this should look more or less like this:
>> vrr_enable() {
>>     write(VMAX, crtc_state->vrr.vmax - 1);
>>     write(VMIN, crtc_state->vrr.vmin - 1);
>>     write(FLIPLINE, crtc_state->vrr.flipline - 1);
>>
>>     if (!always_use_vrr_tg) {
>>         enable PUSH
>>         enable VRR_VTL
>>         wait for VRR status
>>     }
>> }
>>
>> vrr_disable() {
>>     if (!always_use_vrr_tg) {
>>         disable VRR_VTL
>>         wait for VRR status
>>         disable PUSH
>>     }
>>
>>     write(VMAX, intel_vrr_fixed_rr_vmax(crtc_state) - 1);
>>     write(VMIN, intel_vrr_fixed_rr_vmin(crtc_state) - 1);
>>     write(FLIPLINE, intel_vrr_fixed_rr_flipline(crtc_state) - 1);
>> }
>>
>> And similarly during modeset enable sequence we should also
>> always program those fixed timings, then turn on the VRR TG at
>> an appropriate spot (if always using it), and let the later
>> vrr_enable() (if necessary) switch to the real VRR timings.
>> That way it works alsmost the same regardless of whether
>> whether we always use the VRR TG or not.
>
> Alright, I got the idea. Will try this next.
>
> There is one doubt about intel_vrr_enabling/disabling helper.
>
> Earlier we were using is_{enabling/disabling}(vrr.enable) where 
> vrr.enable was tracking if variable timing is used. We would still be 
> tracking here the same thing right ?
>
> Since I have removed vrr.enable and using vrr.mode, the macros:
>
> is_{enabling/disabling}(feature, old_crtc_state, new_crtc_state) wont 
> work.
>
> Should I still keep vrr.enable? Or perhaps modify the conditions in 
> intel_vrr_enabling/disabling?


For this I have modified the intel_crtc_vrr_enabling/disabling in the 
new version:

https://patchwork.freedesktop.org/patch/635126/?series=141152&rev=3

Regards,

Ankit

>
>
>>
>> The fixed_rr stuff could be written like so (then they would work
>> for all platforms, if anyone feels like trying this mode of
>> operation on ICL/TGL as well):
>>
>> intel_vrr_fixed_rr_vtotal()
>> {
>>          if (DISPLAY_VER >= 13)
>>                  return crtc_vtotal;
>>     else
>>                  return crtc_vtotal -
>>                     intel_vrr_real_vblank_delay();
>> }
>>
>> intel_vrr_fixed_rr_vmax()
>> {
>>          return intel_vrr_fixed_rr_vtotal();
>> }
>>
>> intel_vrr_fixed_rr_vmin()
>> {
>>          return intel_vrr_fixed_rr_vtotal() -
>>                  intel_vrr_flipline_offset();
>> }
>>
>> intel_vrr_fixed_rr_flipline()
>> {
>>          return intel_vrr_fixed_rr_vtotal();
>> }
>
> This is clear, will use these in vrr_disable.
>
> Regards,
>
> Ankit
>
>>>   -    if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_CMRR) {
>>> -        intel_de_write(display, TRANS_VRR_CTL(display, 
>>> cpu_transcoder),
>>> -                   VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
>>> -                   trans_vrr_ctl(crtc_state));
>>> -    } else {
>>> -        intel_de_write(display, TRANS_VRR_CTL(display, 
>>> cpu_transcoder),
>>> -                   VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>>> +    if (!always_use_vrr_tg) {
>>> +        if (intel_vrr_use_push(crtc_state))
>>> +            intel_de_write(display, TRANS_PUSH(display, 
>>> cpu_transcoder),
>>> +                       TRANS_PUSH_EN);
>>> +
>>> +        if (crtc_state->vrr.mode == INTEL_VRRTG_MODE_CMRR) {
>>> +            intel_de_write(display, TRANS_VRR_CTL(display, 
>>> cpu_transcoder),
>>> +                       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
>>> +                       trans_vrr_ctl(crtc_state));
>>> +        } else {
>>> +            intel_de_write(display, TRANS_VRR_CTL(display, 
>>> cpu_transcoder),
>>> +                       VRR_CTL_VRR_ENABLE | 
>>> trans_vrr_ctl(crtc_state));
>>> +        }
>>>       }
>>>   }
>>>   -void intel_vrr_disable(const struct intel_crtc_state 
>>> *old_crtc_state)
>>> +void intel_vrr_disable(const struct intel_crtc_state 
>>> *old_crtc_state, bool always_use_vrr_tg)
>>>   {
>>>       struct intel_display *display = to_intel_display(old_crtc_state);
>>>       enum transcoder cpu_transcoder = old_crtc_state->cpu_transcoder;
>>> @@ -532,12 +536,16 @@ void intel_vrr_disable(const struct 
>>> intel_crtc_state *old_crtc_state)
>>>       if (!intel_vrrtg_is_enabled(old_crtc_state))
>>>           return;
>>>   -    intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>>> -               trans_vrr_ctl(old_crtc_state));
>>> -    intel_de_wait_for_clear(display,
>>> -                TRANS_VRR_STATUS(display, cpu_transcoder),
>>> -                VRR_STATUS_VRR_EN_LIVE, 1000);
>>> -    intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
>>> +    if (!always_use_vrr_tg) {
>>> +        intel_de_write(display, TRANS_VRR_CTL(display, 
>>> cpu_transcoder),
>>> +                   trans_vrr_ctl(old_crtc_state));
>>> +        intel_de_wait_for_clear(display,
>>> +                    TRANS_VRR_STATUS(display, cpu_transcoder),
>>> +                    VRR_STATUS_VRR_EN_LIVE, 1000);
>>> +        intel_de_write(display, TRANS_PUSH(display, 
>>> cpu_transcoder), 0);
>>> +    }
>>> +
>>> +    intel_vrr_set_transcoder_timings(old_crtc_state);
>>>   }
>>>     void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h 
>>> b/drivers/gpu/drm/i915/display/intel_vrr.h
>>> index 8d53aab3590d..da6a86cee0e8 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>>> @@ -22,11 +22,11 @@ void intel_vrr_compute_config(struct 
>>> intel_crtc_state *crtc_state,
>>>                     struct drm_connector_state *conn_state);
>>>   void intel_vrr_compute_config_late(struct intel_crtc_state 
>>> *crtc_state);
>>>   void intel_vrr_set_transcoder_timings(const struct 
>>> intel_crtc_state *crtc_state);
>>> -void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
>>> +void intel_vrr_enable(const struct intel_crtc_state *crtc_state, 
>>> bool always_use_vrr_tg);
>>>   void intel_vrr_send_push(struct intel_dsb *dsb,
>>>                const struct intel_crtc_state *crtc_state);
>>>   bool intel_vrr_is_push_sent(const struct intel_crtc_state 
>>> *crtc_state);
>>> -void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state);
>>> +void intel_vrr_disable(const struct intel_crtc_state 
>>> *old_crtc_state, bool always_use_vrr_tg);
>>>   void intel_vrr_get_config(struct intel_crtc_state *crtc_state);
>>>   int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state);
>>>   int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
>>> -- 
>>> 2.45.2
