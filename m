Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CE1D4A32A89
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 16:49:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D46810E8F9;
	Wed, 12 Feb 2025 15:49:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XeLWSdBM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 504BC10E8F6
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Feb 2025 15:49:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739375378; x=1770911378;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Lti7YwH6phmT43FtNs0PGgF2KnWzlnmMVBRH8MF0ENA=;
 b=XeLWSdBMBpFXOzdnh2q7NIiQfo4tcjscE6bc7tj5jIzlPfAp91x/0Pz0
 m5aFad2KEjK64768JOtQ9nda+lYUzCOzyhRD7GF4Tip9CoC4jAxNUmlXI
 jYIo3LrM0cM1Oa5YirXggIrZHvBRoFt/QzDFnkrMrPiu5cq/lgoY0HRzl
 G6qI2hrOC7vF3f+aGYwwtlHH2sv2A5M2rVcKrdqOMvUyqsQDb3xFR9jJL
 sNgJztOmukiMYd4ZdVcNYoYDVCdcJ7+i7JVc95E4sNAHLpXOTZNs1e7y8
 GvTox0QXkM9h53SoArwmFrxYQ7rcib/mwY696+sDzmuIKfuG9Edzqqgyj Q==;
X-CSE-ConnectionGUID: Y1yFCoqPQf+rQFsV8BEUQw==
X-CSE-MsgGUID: nUedCD5mSruUIRfeoW63WA==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="62506416"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="62506416"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 07:49:38 -0800
X-CSE-ConnectionGUID: 36Zm9jukQlKgFiNOf8fXGQ==
X-CSE-MsgGUID: jycUs6eJSOym+F403d2UWA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="112843378"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 07:49:37 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 07:49:36 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Feb 2025 07:49:36 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 07:49:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EPZ6Mpqn07vnZQtxvqF6DLPWLOmeu/yjbP95d8QZ5FjKcGofW1g2fasOxNiOeA1Iq/4jOGCNBf9D/Tin54eEoVVODXrWfF+pCULCDVPytobz465S3hTkyP61lYZEsnlIY/tC77W45dDeqSZYS0lrAlBloSkxQ0cBb/MUShG4cwmUSbx73gN+e9kx94Qp8Zj8OzU8qEMKaqDf9+OSShTCNlk48XJyJBgez7cODK3/B0/VyeO8J8LFiDnzIUFwyeOAkG5uWZN/BzZrKHt/K6JEWCcb8Cgxp4jD5PkmmDjOAWQ5EhgzHRMJYkKVMPXUqwCMbpeNNEWiPZ6FMtyt/LmO2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ggNk9SffUptvoC4DHkfOsxs2TngSOJz7aJ15+DXTL04=;
 b=P9XQn4gfcAtnQ8IY24hEcEijUT1nitDlzAXnRYVafioOotqctv8+D3xrqWs76wsyWwkx4gvYj0pqV+s5nWXynG6A/1D4rtobvQpSYEI8m2f5b0V1ETGHqHan8P7AbcRJZ03sVSfcJrsQzpEH1X14xIeKwmyLiv46aj2bANxb95ZoAHvaDebfLe3eq4PwYV6ItlxSxjW/UCPTtVZPW7O53Kbs1dChqZmUYiWPD0/62+kEVKqL/QfR/8u3A1JFlW9mRR4SnLhoPxDnbke3zQG66jqpJUx/0KH/9hcoC34xSwQw1ct27tonJzwFiDZSVffX75vboy0f/x58/OxYE3tGVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by CY8PR11MB7242.namprd11.prod.outlook.com (2603:10b6:930:95::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8445.13; Wed, 12 Feb
 2025 15:49:31 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%4]) with mapi id 15.20.8422.015; Wed, 12 Feb 2025
 15:49:31 +0000
Message-ID: <acc1f407-e117-4feb-9c15-76494ccc55c3@intel.com>
Date: Wed, 12 Feb 2025 21:19:25 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] drm/i915/selftests: Improve RC6 power measurement and
 error handling
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <badal.nilawar@intel.com>, <riana.tauro@intel.com>,
 <karthik.poosa@intel.com>
References: <20250211150212.484228-1-sk.anirban@intel.com>
 <875xlg1nrs.fsf@intel.com>
Content-Language: en-US
From: "Anirban, Sk" <sk.anirban@intel.com>
In-Reply-To: <875xlg1nrs.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0177.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::9) To PH7PR11MB8252.namprd11.prod.outlook.com
 (2603:10b6:510:1aa::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8252:EE_|CY8PR11MB7242:EE_
X-MS-Office365-Filtering-Correlation-Id: 6908814c-1f98-4e36-daea-08dd4b7cd6c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MjFvdy9xeHlMUzk3SjN5K1B2djhtOEx6WlphY1E2TFFFd2Jta1BVS2g0OENE?=
 =?utf-8?B?YzdqUzFMRzdZZTUydi9ycnVleGVIZVhoUzh1Mkx6YVlLT2M2ZFZFdDNlcXhH?=
 =?utf-8?B?QnJCYXZ0YTRPVWFUMDhSVi9keGMxL0FzT1BxazNWTHp2M09hKzhqWDk0TUYz?=
 =?utf-8?B?RHd5NnBUVGZ4ZFUyWjBUL2pKd09GV3lXbFR5cjZSSTgxWXVlbkE4Nm84VHRB?=
 =?utf-8?B?b25NczFETXBlWmdienhEa3RVbjRLV0dENms0WnRKQjNGWWpkQSt3L1VxRS83?=
 =?utf-8?B?ZWhjSDdTR2pYVC9FaEs0b3d5dE9xVjM1UGVJV1d3cUZ6YjJJK0QwMmZ1czRl?=
 =?utf-8?B?M0pWdGZscW5Rc2FqWEo5VHBhY254REl3VUt4dmFxWlg4WEthQ3RmcVZhVHNX?=
 =?utf-8?B?ODVLRmhKd3RweE9vUko0OUEvMXhWVCtFT01zMHhXWVZmSW84cEx2V0wweVRx?=
 =?utf-8?B?QVZjaHp0d2k4ZFNyQ3FFQkJlYm5XZzcrTjdVWEVvTFoxczd2R2tPYTFucEVL?=
 =?utf-8?B?Y1M5QUFqR2x4U3lFNkRCb1FBL1B4Z1gyOGpid2w4Q3JVajVnUjIwYzFKZUVM?=
 =?utf-8?B?RGJDNVFmbFpiWFZZMS91WTgyWkEzSmZUdk5zWmJBMUllbklia1RCcWFPNXND?=
 =?utf-8?B?Nnk0WFFXemlwRTdDUVRvTnJlTW9qRUgzaWJORjBEazY4OTNadVcvblJseDAz?=
 =?utf-8?B?R2tPTEUyaTQwRjZDY2RPQnprSHlyZXpGTUVpczdTbG9yOGZnRHYxL0R3ZnN1?=
 =?utf-8?B?bXl3TWpHNWt4MXNQVCt4dyttcVdwQkRNVWpOSjVtV3ZKbDlFMkRzeC9vQVRk?=
 =?utf-8?B?d1p2dDlhRzRhblJSekh5WncraGd6Yy9aQWFhWUxyMG5KSkhCYVNjckVETWJx?=
 =?utf-8?B?Q0JoWW9GZkFIMTFodW9FdDQvVkxLNnBEKzRHbFNlQ3o1VFNkVjY2WHZWRjFL?=
 =?utf-8?B?Ris5MU1jbnQ0WGtsQ2N3OWhMY0tJYWJSekdmNUZhQndmTHlUa3RYQ0tmVld2?=
 =?utf-8?B?RTdlRUt6MXRqUnJzVzJGeGt4TFZtVTdRQ0NjbUNEcS96aUdVV0NEdHp3MzE2?=
 =?utf-8?B?Sm9qMkVHaTN4c1JtcTVGNEpXY2lsN2d1NGJPOHg5WjE2ZlRUVmZGc0hCcjRV?=
 =?utf-8?B?NE9LRGViUWZ2NUdUWWRLeUY4VzhSL2VqSG84cjhQM0o3TWtROW43RHpaZ1NQ?=
 =?utf-8?B?YjJlL1V0UlRhS1RLUXJaWlJiMS9DWk5BMUlFVDhJVFE0ckpKcStiS2k0NU1F?=
 =?utf-8?B?U1hIMHk2UU9xNVYxdlQ2d0FGMjJ4Q2pKTVAxdW44SkNMRm1OdXZuTW9MUE05?=
 =?utf-8?B?czRnS2xDVjl0VzlORHA4NVhzb3ZHTjkxL3RqZGNpVnNzdmNxWTlxRU4zVVVK?=
 =?utf-8?B?SXdPK0gzVW1OQlFxdWhhSkREVlBQZVhOdGp0Z0ZmdmtXNjFqQ1I5QXpJbVZO?=
 =?utf-8?B?M1NJRC9yVXFlU0p3N1J6cTQ4YTZlbWRPUUFweG45SXh2djhZKzZkS2VwMHl4?=
 =?utf-8?B?cDhiQlc1VGxoVnFSVTYvMWpNNzNMaEp6eU1ScXpQTVQ2VmZ6dTUzRWRCTkVT?=
 =?utf-8?B?WXY5Y1ptTjZaZlRNZ2JOUVlWaC9HTjNla3VKMWlzRU9aNVBmYjFOZEF2ZjIw?=
 =?utf-8?B?RFlSZE1EcXlMdk5QWG9PRDdpbHJ4b0tXeG1rMmJBekJaejFGNURKOTFIL25l?=
 =?utf-8?B?N1hVL0NycHU0NWQwUzF2UktRVElnWHk2Wlo1NDd5TmZoTjhTS2NxZ3drbkVP?=
 =?utf-8?B?dmhuY1phcUR4ZWt2TTgyekhpMm92ZGNncWFCN2NMOW0xMm5mbCt6SUdBQmJZ?=
 =?utf-8?B?VVp1djNoZ2ErQXlXYTNUaTlqeFdiOFBic3pSM2paZy9WWkJNN0JHZDFLUDBs?=
 =?utf-8?Q?LfaZNzKtAk1xV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?LzdJdTNvTkhRU0kwTWZ6cXpjUGl0dU16ZUszckM5azc4TWpRT3VKQi9ZWnZI?=
 =?utf-8?B?UjRUaUlWd0lzUk9VeWlheEVnT2JqZ0JhaURYbVhFN3hXdy9weHRlZmxLYVJV?=
 =?utf-8?B?S1FyQ1ptRy9sUlA5SHpqZGl5RXlFZ2k4RHRDNmRzaG4xcHdxSDU5bTU5a01I?=
 =?utf-8?B?T0EwaSsvR0g5T2hsS25lZFAvOGtFTUFGMjhGOWdseElJeE13SnZ2bjZrWEs0?=
 =?utf-8?B?N0diU0syRFpWSTJpb1IzQXdKNklUZ0cyTGYyakhXcUhsT3RCcjhGVU5ma1BI?=
 =?utf-8?B?aGZuYTBMbTZ5V2NnQ1g5cXBoN1dtSm1zeHc2ajk2aDQzQS9kRE0xNVU3enBz?=
 =?utf-8?B?SGpJNFJnR09KZTlhcjhQVklSSTBqbzMvVEw1dWNrcXRUODVPdFJUMlFNV3R1?=
 =?utf-8?B?Qm5lcUl3THhmY1ZNSDdaaGpVM0NqcDdNQk14M21EV3BSeUs4MWw2M0ZIcHFi?=
 =?utf-8?B?QkpVUE9JOWZRS3VHVEMvVkpOaEhJc24rYjlNMjduVFVzS1pqeDhMdXNCdEVI?=
 =?utf-8?B?aWR2bDBzZEZ1elRmUzdGZXFpc2Z1dkd1Ny9qZjhMbXp1ZWIyL29Semw0NGVh?=
 =?utf-8?B?TmFyNFMvbmNNNFlhTlk0RGZyYkVURktaS1pQYjRRSkhXWU92RURrODhVT2Z4?=
 =?utf-8?B?ckxwUnEvTmt1SVYvU0RIeEJad2Y1d0pLWGdBWVJidndrTnVPL0RxYkpoTG84?=
 =?utf-8?B?VSs3MmFHaFVlcHFFQUZQb3AwSEg0NG5qTERuYmdvczhpa2swKzJkYWE3RTVu?=
 =?utf-8?B?bEZzN1JzcDRoMmMrTDMvWTFrZ2J6bmdrZVVMRkZla1NMOFIxdG1WNmFZVU1u?=
 =?utf-8?B?M3FuUi95WlkvdmRlWjRaL3I5RXJVS1RncEdFOXpQOXRNd1QzWi9iaStESndq?=
 =?utf-8?B?ZGRNQ3VKU1lidHhneCtLSUdoWmRVRzNBSklTQlVaZGFIZXFIZC85bmx6cTFl?=
 =?utf-8?B?RjJmWVhrNkpyU0tJT1ZnNjZtK2dQYSszSy9ZYXluVWIrSlNBR2paL1lqRzdZ?=
 =?utf-8?B?bHdMSGNqYXpBUDNDSFV0RU9XMTQrMlF5WEU5THdBTEZrYmVxTlIyelFTNGJq?=
 =?utf-8?B?a1hWVkxBS1V6VVhUNU9wY2thZTJVZUtta1hDQ2NqN25oMzRjSldLY0F6RUJV?=
 =?utf-8?B?MyttTjh5Q1NlMFlNUnRmMmEydzlNRW1jMmZNODFBRWlKSDVEdVFRQmI3cnBO?=
 =?utf-8?B?c3J2NCtGYnhjT0FaNEFWQ2Q1aDVrMkJVaW1OSGIwZlIzdEdHK05YUXNYMTYx?=
 =?utf-8?B?MGRzRkdNVFpqcGcxYzA0TVFhclljQ0k1UlBPeGl0b2NwekZCWWZmajhRcStH?=
 =?utf-8?B?M0NGWHdjbzgyYzdTamMzbkRKc2JHYTcyaU1rWmpna2g5em8vdGh5QVE1TjdR?=
 =?utf-8?B?ZmtqRzAzVjg5S3cyZnlIQ0NVWEkzRFBZQitycDIvWUQ0bndDUVJYOUJIcUwy?=
 =?utf-8?B?cWNMYnpETmZaN1hJTHYwRnZMYkU4WXdBVTNDMlIrY0ZpNjJkc2FKSEdsZlBj?=
 =?utf-8?B?VlppN0RvSjlKSWY0bTFyZG83bERaVG9tVjZJZ3RUbEFrKy9BUmx4YllvYkpa?=
 =?utf-8?B?VjlFTmZzTlEzd1UvYlBLL2hKazNGSzM0bThqN3RoMnA5U3pWRFNYTkhnNW9G?=
 =?utf-8?B?Vnd0WnBzeE9MaGxmNkh4VGxVc0trT08wd0RVbERXQzZ3VWV5ZCtrMXN1QTZ1?=
 =?utf-8?B?enhLZkQ4amJkNEVIeHF5MVY3bEhuWHdZKzZ2TDJQR2QrZFBSMERpVGJiVUJV?=
 =?utf-8?B?UFJweUUzNnNEcEhvQmNQVS95eFhjYkpyaThtazNJd0hsQWVqbkNzYkMvMFpZ?=
 =?utf-8?B?ZXZibjNUYWgvSkhzaTNiOXdPMTRoRHVTM1FOaUJTc3JudzQ5TEZ6R3FQN3B5?=
 =?utf-8?B?cy9GZGZ2a2tjTEEzMit0ZkszN0paemw1VURyK1VDNHZkRVgzUGFEc0VOUUY0?=
 =?utf-8?B?Q1E5Nmt3SVJEZ3NBL0JvclUvQ0tpWnpla0treVFHRStORkRqT3ZWMEVGKzF6?=
 =?utf-8?B?b0dCSzFOdnFuQ2NBVVk2WHlBYmxxRGY5cGlYOEFDTDU5QTV0SUNDY3dadE5B?=
 =?utf-8?B?NXgveUlhZ1BjSW5iQ0Ivbmt3UFpBWlUvdmdIeHNFTC9UMVZERVFmQnZPOVlr?=
 =?utf-8?Q?VXL4xoUoeNr06SCoN1DnnKMS/?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6908814c-1f98-4e36-daea-08dd4b7cd6c3
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2025 15:49:31.1605 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Vs/+/2S3zfc83TRYxy5rMGlwS2ef9yxIQ7Qf1n/zTBIpqgFlKQSk1wr6MbAX2YtZ6AvRsp8LzDySq1EY0d4gZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7242
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



On 11-02-2025 21:23, Jani Nikula wrote:
> On Tue, 11 Feb 2025, Sk Anirban <sk.anirban@intel.com> wrote:
>> Improve RC6 power measurement and error handling. Add detailed error
>> messages, and introduce a threshold check for RC6 residency.
> Improve how? Why?
>
> BR,
> Jani.
The power measurement is enhanced by using arrays for better tracking 
and adding detailed error messages for clearer diagnostics, ensuring 
more accurate and reliable power usage data. This helps in effectively 
identifying energy leaks and improper RC6 residency.

Thanks,
Anirban
>
>> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
>> ---
>>   drivers/gpu/drm/i915/gt/selftest_rc6.c | 61 +++++++++++++++++---------
>>   1 file changed, 40 insertions(+), 21 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c b/drivers/gpu/drm/i915/gt/selftest_rc6.c
>> index 908483ab0bc8..30bc2ff040ce 100644
>> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
>> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
>> @@ -33,15 +33,20 @@ int live_rc6_manual(void *arg)
>>   {
>>   	struct intel_gt *gt = arg;
>>   	struct intel_rc6 *rc6 = &gt->rc6;
>> -	u64 rc0_power, rc6_power;
>> +	struct intel_rps *rps = &gt->rps;
>>   	intel_wakeref_t wakeref;
>> +	u64 sleep_time = 1000;
>> +	u32 rc0_freq = 0;
>> +	u32 rc6_freq = 0;
>> +	u64 rc0_power[3];
>> +	u64 rc6_power[3];
>>   	bool has_power;
>> +	u64 threshold;
>>   	ktime_t dt;
>>   	u64 res[2];
>>   	int err = 0;
>> -	u32 rc0_freq = 0;
>> -	u32 rc6_freq = 0;
>> -	struct intel_rps *rps = &gt->rps;
>> +	u64 diff;
>> +
>>   
>>   	/*
>>   	 * Our claim is that we can "encourage" the GPU to enter rc6 at will.
>> @@ -65,9 +70,9 @@ int live_rc6_manual(void *arg)
>>   	res[0] = rc6_residency(rc6);
>>   
>>   	dt = ktime_get();
>> -	rc0_power = librapl_energy_uJ();
>> -	msleep(1000);
>> -	rc0_power = librapl_energy_uJ() - rc0_power;
>> +	rc0_power[0] = librapl_energy_uJ();
>> +	msleep(sleep_time);
>> +	rc0_power[1] = librapl_energy_uJ() - rc0_power[0];
>>   	dt = ktime_sub(ktime_get(), dt);
>>   	res[1] = rc6_residency(rc6);
>>   	rc0_freq = intel_rps_read_actual_frequency_fw(rps);
>> @@ -79,11 +84,12 @@ int live_rc6_manual(void *arg)
>>   	}
>>   
>>   	if (has_power) {
>> -		rc0_power = div64_u64(NSEC_PER_SEC * rc0_power,
>> -				      ktime_to_ns(dt));
>> -		if (!rc0_power) {
>> +		rc0_power[2] = div64_u64(NSEC_PER_SEC * rc0_power[1],
>> +					 ktime_to_ns(dt));
>> +
>> +		if (!rc0_power[2]) {
>>   			if (rc0_freq)
>> -				pr_debug("No power measured while in RC0! GPU Freq: %u in RC0\n",
>> +				pr_debug("No power measured while in RC0! GPU Freq: %uMHz in RC0\n",
>>   					 rc0_freq);
>>   			else
>>   				pr_err("No power and freq measured while in RC0\n");
>> @@ -98,10 +104,10 @@ int live_rc6_manual(void *arg)
>>   	res[0] = rc6_residency(rc6);
>>   	intel_uncore_forcewake_flush(rc6_to_uncore(rc6), FORCEWAKE_ALL);
>>   	dt = ktime_get();
>> -	rc6_power = librapl_energy_uJ();
>> -	msleep(1000);
>> +	rc6_power[0] = librapl_energy_uJ();
>> +	msleep(sleep_time);
>>   	rc6_freq = intel_rps_read_actual_frequency_fw(rps);
>> -	rc6_power = librapl_energy_uJ() - rc6_power;
>> +	rc6_power[1] = librapl_energy_uJ() - rc6_power[0];
>>   	dt = ktime_sub(ktime_get(), dt);
>>   	res[1] = rc6_residency(rc6);
>>   	if (res[1] == res[0]) {
>> @@ -112,14 +118,27 @@ int live_rc6_manual(void *arg)
>>   		err = -EINVAL;
>>   	}
>>   
>> +	diff = res[1] - res[0];
>> +	threshold = (9 * NSEC_PER_MSEC * sleep_time) / 10;
>> +	if (diff < threshold) {
>> +		pr_err("Did not enter RC6 properly, RC6 start residency=%lluns, RC6 end residency=%lluns\n",
>> +		       res[0], res[1]);
>> +		err = -EINVAL;
>> +	}
>> +
>>   	if (has_power) {
>> -		rc6_power = div64_u64(NSEC_PER_SEC * rc6_power,
>> -				      ktime_to_ns(dt));
>> -		pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
>> -			rc0_power, rc6_power);
>> -		if (2 * rc6_power > rc0_power) {
>> -			pr_err("GPU leaked energy while in RC6! GPU Freq: %u in RC6 and %u in RC0\n",
>> -			       rc6_freq, rc0_freq);
>> +		rc6_power[2] = div64_u64(NSEC_PER_SEC * rc6_power[1],
>> +					 ktime_to_ns(dt));
>> +		pr_info("GPU consumed %lluuW in RC0 and %lluuW in RC6\n",
>> +			rc0_power[2], rc6_power[2]);
>> +
>> +		if (2 * rc6_power[2] > rc0_power[2]) {
>> +			pr_err("GPU leaked energy while in RC6!\n"
>> +			       "GPU Freq: %uMHz in RC6 and %uMHz in RC0\n"
>> +			       "RC0 energy before & after sleep respectively: %lluuJ %lluuJ\n"
>> +			       "RC6 energy before & after sleep respectively: %lluuJ %lluuJ\n",
>> +			       rc6_freq, rc0_freq, rc0_power[0], rc0_power[1],
>> +			       rc6_power[0], rc6_power[1]);
>>   			err = -EINVAL;
>>   			goto out_unlock;
>>   		}

