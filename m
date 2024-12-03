Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AD1999E129C
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Dec 2024 06:06:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 96EF610E113;
	Tue,  3 Dec 2024 05:06:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nBppDs9A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8147210E113
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Dec 2024 05:06:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733202394; x=1764738394;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=cx0yEx66L+6xaWFBW8lw8RnCsl4cw+uxLbg1Mpe19ww=;
 b=nBppDs9Az7Pzx9u56G/ueQT7n+YPZw/ICtR1Wpsd7bMuzxVDCgdno5y+
 47/RecTWgvZ36bxaORDjanpX5DNlWbYLmosKWoLKZvuzz9gOtYwaW7Zua
 /zJnnOXeWLBGz7sWiWVf1m10r8ckCB1m05cK4HITBC6YvAZ7KISZb0XI2
 82cdU0GoDcz+VzblGTzxPLu1/3Bz26z23SrVhgxHXg4qg4pfqaZfU0LEN
 Tvet047SF2i1kbcISaiMoMt/N4DsGWQFahYZqp8atvZl7KOWuzmQwTEZN
 Pjhm+4BpNcM0vP0WayYiTDcY3XEHj465/RgVpXRFv1651+Lvt9Ek7/Yzh Q==;
X-CSE-ConnectionGUID: OMDF2cgtQOi1OeEhSkZOog==
X-CSE-MsgGUID: uk2blnCETTqhYWqXsP0JGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11274"; a="50924640"
X-IronPort-AV: E=Sophos;i="6.12,204,1728975600"; d="scan'208";a="50924640"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2024 21:06:34 -0800
X-CSE-ConnectionGUID: PzO+DxAsSbyAAN0XMmoLDQ==
X-CSE-MsgGUID: QlX2wMWLS4+ODYvEzR2irA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="98334725"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Dec 2024 21:06:34 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 2 Dec 2024 21:06:33 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 2 Dec 2024 21:06:33 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.45) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 2 Dec 2024 21:06:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UKRwGeHkeT+/xo5nHAsYkeVw7GAtWxWTZJwwTDRPWf45YdJrcXtf2P4XZZy5ARN7T2t721EIjyE+nMiyKIb7+CaQPMqjVVHTOKrOIBdljloh183HK2v6PJA4rLeMPSS2aEfL8FqAy782yetkh7IavC9rG8ArebsPyKx0RgupbmH10Aueso9ZRqwTANGrZC5Rhou+V5j6ITLKMg23MlzYGGzVmU7Y93Zv+flXa3/tZOd+R6Q/E8l3KMow8rfxz04nnUwRIDbfiixaJb0je79XOyPmEtm0ZoGBGa/DbHVB+nIImI+05r3/VCBbLDPGMYL1jaXGnSIOKLmVzf2/ycTQ1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lg1Zzv1LN2yBA6VdLfUnqxDUgiNKMP+cGyVJlOVfjBE=;
 b=OcfrJRk2w54m/rH11AVTna1uZBrcToyZxEbxR06hSUFOltJ4IC2/T4fESrHcAGsG243F7m74QM4Y4Bzxey51kehS3+sNaKKtz41/TlkGFofCXJe+g3OUxlzkanY4z47Oh/DNuxGZOF72K3gZIRq5nVI/++ysWM2AI2gFfwwXLzLb/991q/b6JSSELqL048nTtk8sRq1gGPHNmWkBhvGRIVP0/aI7xV/itka4laz1+l+eu5v2zREPa1I0Cp3vt4CGGWkq2YJQhBjOjkZ2EY5UKEZL5fhdVIPYG8ludQHXXUM2ddpLrYoAY2PLvmpTMfLn/kZJM7uTFavhqWmn7EnBZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by IA0PR11MB7934.namprd11.prod.outlook.com (2603:10b6:208:40d::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.18; Tue, 3 Dec
 2024 05:06:31 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%5]) with mapi id 15.20.8207.017; Tue, 3 Dec 2024
 05:06:30 +0000
Message-ID: <1f49be86-f018-4d77-8ebd-541be03bbf8e@intel.com>
Date: Tue, 3 Dec 2024 10:36:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] drm/i915/selftests: Add delay to stabilize frequency
 in live_rps_power
To: Sk Anirban <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <karthik.poosa@intel.com>, <anshuman.gupta@intel.com>
References: <20241202151514.2785289-1-sk.anirban@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20241202151514.2785289-1-sk.anirban@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0044.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:98::21) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|IA0PR11MB7934:EE_
X-MS-Office365-Filtering-Correlation-Id: a7f8ce10-60c4-43fe-8ff6-08dd13583fbc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OUppQ2s3RFBnL3FBRWdGTldWYmFRVGNvRE5hVHZqcUJCUXNmV2ovdTE3TU9p?=
 =?utf-8?B?U3p0L0d4dW5DMnpqYmJKZ3U1L3ltcndoRGF1c0NBTGRqa2NXN00xTFZtSCtZ?=
 =?utf-8?B?UVJ4Y3lKSmIxZ0tpNk9rQTRFWEc1NzNwS0Z1Y0Vtc1BhWklNUUdxeVUyWGp2?=
 =?utf-8?B?TjFqdU5GWGRDSlBSVVhCMW9oWmQ5bjFLR2NscmVrVmFZaytiMW9RRzF4SkNr?=
 =?utf-8?B?ajQ3ZjFxME9QQ1NiZ2ZmL2JIYUFnM1JNZERXQ0V6bmFOQ1JUYWZaYUxhMWpF?=
 =?utf-8?B?VVBYRkMrTVJMYlltMThvNkRTOHdXRW5IbFFWaXkzWVNNd2xpcGxySkkrd3V3?=
 =?utf-8?B?ZDNPdWpybUlsdE8xQnhudnVYQ0FidWVxRVJTZkI3RVZHV0o1bklLQThYN3Ri?=
 =?utf-8?B?SW5FMkZXSVZHUVluYjFJeUhQcWl1azJtczVDUDNJVU8vSzc1eENNZmhjRU5o?=
 =?utf-8?B?WlV1bVZ4MkVERmVGZ0dBenhVN3FxODFlaFBSV2pGdXhjUGpMYW8xa004Mnpu?=
 =?utf-8?B?UlU5ZjN6Y09YNm9CdE1rWVVIc29OR1h0eHk5dWhZMUV6OWZkQml0bExwcldP?=
 =?utf-8?B?QjVwYVQzSTBoWUlibWpNUHFjakxxZFdMaVJ0b3ZyYmpxOFRHYWlGdTZCL3Nw?=
 =?utf-8?B?bjFncXIyRUM2aTNHVDVZanFxcktQdXY1RTk0M0pCVGtUN0RxTWNxNTZDOW53?=
 =?utf-8?B?Q0tYVnJ2UmxqSFhwam1veFFvdjhJbFpSbU8zN2ZUUk1OK0Znbnh1STFQOHp4?=
 =?utf-8?B?Z1VkT0hsMmRMUXJsVGxOTW45WjVXWnNjbFdWTEt3V2FmQlJNLzF4ZW4rZTMz?=
 =?utf-8?B?UjZsNTE2cENFU1pwT3RVNDhNb2pWQ1F5WThXb0hHLzhNMEoxWTJkUmhnVzl6?=
 =?utf-8?B?Nk5Ha0F4ak5Jb3diczkzeWlhT3FsQ1VYdDgwektOTEFyZmtJejc4d2ErMVJB?=
 =?utf-8?B?ZTlKaDI1T1NCVGtOK3hhWmtueGZNb05kTDFiU0ptUmVKZXdrbjFGSVlZZGcv?=
 =?utf-8?B?ZG9TRjJQYWgxRjVsQVUweGxTNTFQb2JOcUwrUloxa1luQjl5UUpIRFRPV3ZK?=
 =?utf-8?B?VCtwdlFCVVpqVlpJUUtDUmxVbHQvZDVFTGhYMVBCYm9YNkx4VU04bThkM3RZ?=
 =?utf-8?B?L3dpM2hUQVVoak5NOXpmSWZUZG95WXRPbEdaSnVoTHlGQzhUaTVHKy8rd2lH?=
 =?utf-8?B?UGQ2MTBhQUo3YjFzakxjWTV5R2xjZE1BTDB1bEorODh5azlyRXhPb3pacnhZ?=
 =?utf-8?B?Q3dDZkwwU25HWDloQXhabVp0TjFlZjF6MHlGek5CdHAzbWhJTXVjaHIyNjll?=
 =?utf-8?B?cTFiQXlzSEZWeFZSZlpxcTRVbS9sZnRmam1ha084SkxiUzc2RVpoYS9uUHYx?=
 =?utf-8?B?YThoWGZheTJ5QkpTeTlOa2V1a1loLzdSRnlTUzU5dTUrL1A1YmZ6M2ZtaDEw?=
 =?utf-8?B?aW0wM0JWTjV3ejV0a1ZGbUtwNzBpc1N5L0I2QStmR1hNUW1kUXZPd1ZYSGJk?=
 =?utf-8?B?V0I3OUk4dFRKSW0xWUp0NW5QZzRaVVE0UlZ5RGk3bHFzR0lYRUpyWTVQQy9p?=
 =?utf-8?B?VUpydnIwQ2NzSHFrcTZiQ3hvL0dlNzBpSDBRaUtrU2Y0ZG1pd3RtK0ZwcW02?=
 =?utf-8?B?ZFRYYnZVTGVEZTZtZzhSNlpkbVB0Ti8wR09GbWx2RjJWWlZoRkNoKzBDQUFz?=
 =?utf-8?B?Y1RhT3ZKT0JyTVdXa25WOFlqT3ZXTFZmdWxBQzFiRTFOTVlyUFlXYmpXZXJT?=
 =?utf-8?B?ZzdMZFE2dmFVWGVYcEFMUmhobE1kRUpHSXlMaE5iczZwbUpNeUNHNU1uRWZI?=
 =?utf-8?B?TiswQmFvWFZZaWJnWUxtdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L01ya0g0dlBVamw0UFJaMEZvdUIwU0lkZU1BZmYyNUJ6WHFQbGk2OFRXRlpo?=
 =?utf-8?B?N1lKZ0krOUpMSGhMMEZKZ1lLVGhVNzBVWnRjanBOZE5lN3dDZXl3T0dRakJK?=
 =?utf-8?B?aG9DTW5hMU0xbks0aVg0a2Z1YXdtaFFHSE03a1BiWXBlRXRoVmFnek5LdTZV?=
 =?utf-8?B?V3F4SmQ5eTUzUTZSUFQ2Q0pxcGlLeHRhc3NLeFJpSEhTZDFCTlBzZnZ6S1hY?=
 =?utf-8?B?bng1N1Z2VWFGZzVHZFdKSVpNU3IvNXlna0RORHFkZWhiUE9KZXpCNlErTWo5?=
 =?utf-8?B?WnI5VXFBamJoc1lDR0xYWU9sTWt4cGNaNHdONkQrYkltNE9TNDVlM3Z0M0Nu?=
 =?utf-8?B?UWphL3Yzc1I2blZ5WWFvRksyVTlad29Mc3FQc29HTVE1SCtKUWRERFcwcGI3?=
 =?utf-8?B?U1k1NU9LUk5MYlZTbU5kTlZLYUQ2S3lHckE0alM3M2dscEFaQndIbk0wZFF6?=
 =?utf-8?B?R3ZLTUVRams1aXMyVHBQVVFVKzJOaXVPNXFOdW9vMmR6by9MWkF6ZTc5Qndj?=
 =?utf-8?B?cGZvL0xsVlJKbHN2a0Q0M0pqTjJmaFZsaHZINmJMVm1sY0tURytCeTNXejVa?=
 =?utf-8?B?RFFNNG9MTEl3ekJhcWFlMksrbUtKSHkwamhLMWxKU1NITk5hK2UybW5TVGhF?=
 =?utf-8?B?WUJNRVVIMi9SNjBwTm9RbnJZTkhYa2RtbjVUT1ZyS3MwWHE2OXRiUTYxN2Uw?=
 =?utf-8?B?VnpiMWFsQWxFOWtlQVpoNzhBbmNmMHZlZ00yS1dCcFFxUHdvY28zcjlVL2Nq?=
 =?utf-8?B?SmlYcU44V1B6WnFKVXpWLzhsQjFrTGIreEtnV0hQS2g4OUhPRmczMlZxdFhB?=
 =?utf-8?B?SlB3Vk1OZ1NoS2FtZjVkWk9pOWFpaUU5aldscVFDVnRiQXoxRi9Lak9WbkFn?=
 =?utf-8?B?eGZsVElSb3o3U2VMYzFBbDkxb1FwMGt1Z3VuVEpGeXEyS2M4YUdWVCsvakg2?=
 =?utf-8?B?VFgvZC9tU01rRDYzOXo2MUdYL0dyeHRUcUJjWmp2V0hqQ20vdnVJQWc4bXJD?=
 =?utf-8?B?VEhCVTR0TzRySE5jNkFHWkNWKytxdFk0Yll3TzYyUmpJenA4UWpNZ3Mrdndl?=
 =?utf-8?B?TGhLV3czUHBEb1loK0RGNXpHYW9jNTlRaWIzN0c3SDdLcDJzS3NjSU1rN1M0?=
 =?utf-8?B?N1A4NEZjN2ltbUNIa1luc0tpM2RpV082OUxmcWV5UWRGQXQ0czZPVS9NUktw?=
 =?utf-8?B?R3pmMzIxT3hiOFJBVjJPcnlyaCtIUXorTlR1TmpKalcvb0NBaUNSTjEyOG1Y?=
 =?utf-8?B?OEpYNm11SHQwL3VoenNaYmFPOWN3aC9VR2xScWUyMzNCSGs1dllPVFRrSHdv?=
 =?utf-8?B?Ni9uYlRUbzM4dnNLbnlUMEU3b0pxOWhZbENOZ2lqQmlzUDRta0hjS0dROHJz?=
 =?utf-8?B?U3p3dmxheElMdUZqZkoyNkxEMzgyNkhEY3c4bnBHdTQ2RHBvTWE4Rk4vNWg3?=
 =?utf-8?B?VUZPd2lGMXFEeUdWYkVlVDVOQjA3bGdKNFFuc3Jsa0RXQ0N5SmxiOFlXc1pX?=
 =?utf-8?B?TXp3N0lTQkpncTIyR0tkWlk3aUZVK0hFU09DZnp2K2o3d2hnL0VPMm9BL3Nz?=
 =?utf-8?B?T3RkM09ZRVlIVEZIKzA2RXkyR3hQYmRua1F2cFNSQ1YwUnBBWG9wOTZGNGlz?=
 =?utf-8?B?K0YwcFJmMnNjTE9BMnVmU3JzVlN5Vit2aUx3alhIbjNQdDFnVE10QnN0MExm?=
 =?utf-8?B?VFhTMGZNU3dnL1RXRTZRRDUyTXM4UGhUYXZTeE02TjM0QTIzM2hQK09hMml4?=
 =?utf-8?B?UmRPNFNUYUN3bnd4OWhXa255WWZtVDJVWmNwMmFvcWhudkxWa3RkdmpDTlVu?=
 =?utf-8?B?dXNpMHNGZDRWcnVmeW1TWXJwbjdPK3hGZHUzY3lUeGN3bG0zaHcvY01lcER0?=
 =?utf-8?B?cTZKUHAzOVNSNVpCRE8zRUZLTmdkQnBMTHlJdVdsNTFpZk55NzRXNHVFTExi?=
 =?utf-8?B?QWgzZXRtbHk0aUdFcS9RV3AvOThHMmVTbUZMUTZ3RUhTRWtORndJWUo2NUlo?=
 =?utf-8?B?aFZpVzhRS0FTcWpJTVhKKzIxNWkrdVJyamxncWk1Z29vRm85bEI2aXY4T0tn?=
 =?utf-8?B?Mkoxa2Y4a0VSeDJMOXYzMDIwQ08yZzFpUUxKMWVlNVdMcWZsRG5PYkVWdUVH?=
 =?utf-8?B?Z2s0ZDIxK0dyNDhMb3JWUnRvRkFaVDJ3aXdoNjVuRXRGcE9keWt4dDc3bUg2?=
 =?utf-8?B?UGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a7f8ce10-60c4-43fe-8ff6-08dd13583fbc
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Dec 2024 05:06:30.7043 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JLXeyd3brf85BqPlMiLB+uRoqlMyHWsCwEhpPxA8mJ/yTnWu5yNyQ6SoPK1dxt8uBXv6VJEkvMXgxC6Tf97/Pg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7934
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



On 02-12-2024 20:45, Sk Anirban wrote:
> Add delays to allow frequency stabilization before power measurement
> to fix sporadic power conservation issues in live_rps_power test.
> 
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_rps.c | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index dcef8d498919..3f26c5a079c7 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -1191,9 +1191,11 @@ int live_rps_power(void *arg)
>   		}
>   
>   		max.freq = rps->max_freq;
> +		msleep(100);
>   		max.power = measure_power_at(rps, &max.freq);
>   
>   		min.freq = rps->min_freq;
> +		msleep(100);

Delay should be after rps_set_check.

static u64 measure_power_at(struct intel_rps *rps, int *freq)
{
         *freq = rps_set_check(rps, *freq);
	msleep(100);
         return measure_power(rps, freq);
}

Regards,
Badal

>   		min.power = measure_power_at(rps, &min.freq);
>   
>   		igt_spinner_end(&spin);

