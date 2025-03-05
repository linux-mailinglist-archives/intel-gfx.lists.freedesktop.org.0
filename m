Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76CD8A502A5
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Mar 2025 15:50:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDCA010E7BA;
	Wed,  5 Mar 2025 14:50:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YCH1J0si";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E66910E7BA
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Mar 2025 14:50:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741186209; x=1772722209;
 h=date:from:to:cc:subject:message-id:
 content-transfer-encoding:mime-version;
 bh=qU8XliF+gC+kGGpRuhOPxhKgAzVwnopCq667KSLvBwM=;
 b=YCH1J0siyBSGsEhfq68sYUsuPWnpGH74juHz/FYVmsheadploFKv/fwY
 AwAyS6hKQK+VOLrWhbGZ78dhg4fA9FYZaZ/3S13AKn5fce0+Vc/KSTT69
 5E9WnIJO0miK5KA/08gaIcNXY7HGsG9ANFLbBg+XJYBbSYkWlhzM9ukbw
 pbX2E7bXc0C7ZFPl7n8S2taezhhmOTGEvEg1kQtmWNtrlMOqhD59DROjY
 IRdofwYctubNu5QhnabAawy642V+McHJAJFE9sMlMn8lCeQ3kLGze2uLB
 l2yXGFBj+1+SbvX/I+oy6W0JHMcyUUjx+lmynLwI8HudzGyUjc6//6You w==;
X-CSE-ConnectionGUID: AfTH8HcwRHqmC2ul8+X/QQ==
X-CSE-MsgGUID: ywBFwmYeQgqvwRROo41qkQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="52356217"
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="52356217"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 06:50:09 -0800
X-CSE-ConnectionGUID: 9S2u2L8rT1afI+Lhz0Fu5A==
X-CSE-MsgGUID: UmHSW5IQSgWXClh6kV1VXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,223,1736841600"; d="scan'208";a="123297443"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Mar 2025 06:50:09 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 5 Mar 2025 06:50:08 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 5 Mar 2025 06:50:08 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Mar 2025 06:50:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hSoLjijI2QjVfP8ipHJ99cKv17LM8lvS84zX39Eu9Kd94u+zWPENZkv2IjGYoTQcbddquep0vQDAizW5aOiCuSWNQiop1Ask+9oz7u/V3bWLSDkmc4+nRfPpLlmwrsQaX1JPwepHNM0Kgl0Zu7F+P4N5x3M+jLVDVXXP6MildjWfYe5264Yhhyf+lohCrionkPeAAws6eweIvPf/fJWPmdO3VbGQZxtG9rUZ6xeXaNP7Lew9HZj1CUp7FNV2FlEzmuHhdO+I9je0zxD/yKcYZaxXKqY0RB0O6d0fTCiIneh34W74trsXW0wY78yQKjBeZsGMv5SxdkvuoGJxGPXWZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sVK+iFGaw3CJlkFKQJB+z851PCQQWNS7iM0FqXy6cY4=;
 b=hxupyKfBkJoiFyGh5aIzaEaEpr2CTDi4hE/L5JRuF0LYv9A8mU3btfEmYaw87ky7Ndbe84LUV+8EYA9z9lvvGFcgQw7OoiKdEULaiJ7mjjTgxOLE36TOebI7XFqZWgJafotkBz5LLiXWHf0awDolK5za1at4e/c7oVGXfeed+bGVrpNdbD1+CbzMj4NMFiUYgOBJVq8LjsBBExOiVR988HCmjpUgVT1UJSqrUF79wz0ian0ExY7ivq/aLgLq26bpExcelmJh6E/1uVMUzrKZVu3LzOL0FnCOOH8KzMxXVobbCa/ashL7Pj8LvS8zytVh46QkD0ybwBjXf4XF+sy8mg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by LV8PR11MB8700.namprd11.prod.outlook.com (2603:10b6:408:201::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8489.28; Wed, 5 Mar
 2025 14:49:51 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%4]) with mapi id 15.20.8511.015; Wed, 5 Mar 2025
 14:49:51 +0000
Date: Wed, 5 Mar 2025 14:49:46 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <andi.shyti@linux.intel.com>, <vidya.srinivas@intel.com>,
 <matthew.d.roper@intel.com>, <sebastian.brzezinka@intel.com>
Subject: [RFC PATCH] Revert "drm/i915: Disable compression tricks on JSL"
Message-ID: <z6xndjwwwnck67qcv2355v5qejq64qldziqg7saint3eqe6fo2@6sx7xyh5juvc>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB7PR05CA0031.eurprd05.prod.outlook.com
 (2603:10a6:10:36::44) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|LV8PR11MB8700:EE_
X-MS-Office365-Filtering-Correlation-Id: de574a1b-4025-42c0-37c6-08dd5bf4fbaf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TVBCOEU3TWdzSFRsRkJLR0JQODJkR2tCRzdVVUhMUlc1ZEhYcmxUYmJjRnhW?=
 =?utf-8?B?WTdiTFhxQlgrTjlDR2VDMktqaWltTk9SVm1TcnhoT2V1encrd3BMeXhkT0RD?=
 =?utf-8?B?c0FMOVkxUWdlVGdzS29TS2duZ3JUblAvSDNBMHk4dktGeEFpeW9mYnZjOFN5?=
 =?utf-8?B?N3dwWVlFdzRMVktiTXdpWlNwbHptZER6SUluV04yM0Q1WUdINzJ2QzcyOVZ4?=
 =?utf-8?B?V3JmSThQS3RudTZHeDBFZzY1dE43ZTgzZ0dTQ3EzeFlGUHhIcUFiMnNFRzFS?=
 =?utf-8?B?Sm1odFV5L3huZXRuTGp0cURxTnk3OHppUXFBeG9ET2RMd1NHMDgyMTg1Y0V4?=
 =?utf-8?B?aGl0YzNBY2NsaWcycmlOVi8yYXUwYmlIU1BuU1gvQ050aHNabTNkUmpWSHNO?=
 =?utf-8?B?ck9kUXlsTlRIYm4wOTNwUVV3SllDaHVyODIxK1hqdHN0UnNhRFczeE5kbU1s?=
 =?utf-8?B?a3lSdnZDS3RJemZJbVBDQ2JkV2VnNGxTdENtVmFPU1puU25HRzQ1bXc5Z3FB?=
 =?utf-8?B?MmdZYjQ1NEtGSnZVY1BpWDhIRnJBNFNGU09kaHBVYVJPR3NIMVpuWHdaa0dM?=
 =?utf-8?B?S0F0cHpzcGRzcnVHR3hkS1dpMXVyRG9sVEltQlF4a3VCR0U3eVliSFh4Y0hi?=
 =?utf-8?B?U2tFaHlIQ2R2VEJ5K2xrZ04vTzRld2VHZTVhZkY3SnZqSlVmb3ZVZmhSZ3cv?=
 =?utf-8?B?c0ZPTk9tMzFEM1RqRExDdWxML01LdjVIa3VGYUhxVCs2YjJPckFtOVVzOWY5?=
 =?utf-8?B?NnBoRWY3c2IwdnFEMFVzbXNDVWIyS1N6Vm1zYVBLbmhuVHp2NHo1WjBoK3p1?=
 =?utf-8?B?L2h5RVRrTDRUYVBBSWN0Sk5oMmZ4OHRidmZyV3pIUkw5YlU1akIvL1V6SkJ3?=
 =?utf-8?B?NTFES0FvTUhhRWcwazI1N2hzVHFJRTE1TC8xZVNsRStzUktRb05hcDl2MkxV?=
 =?utf-8?B?dkFTbVhCMnNVeXJqUXVGSm9LaWZ4YVFrbHQ1MS9UWTFIVEhsS3p6TXJQTjh4?=
 =?utf-8?B?b0ZvaGpoMW94OVJMK1BOaFF2Q3BDSzFzQ0pHUDJ5b3lwV05DUXBvUnJDa0hX?=
 =?utf-8?B?MXdKZW02VCtRdjEyb1ErbmJhNnpxMGF1QUtXKzJQRG5ZTllPMnU3ZExhY2J2?=
 =?utf-8?B?dW9MbnRFOUpNUGl0THJ6c1lIV1hIWldUTGovREc3NldZeUUwSUg3N2M1MXZO?=
 =?utf-8?B?L3I0N2dacVVtNnZkcTZRQ005T2srbldXdElXMVV0Nm5VbExqbjd1b01ra2ZK?=
 =?utf-8?B?MzB0a3BJMXhnbXRMU0RoZDhVbEk4SUdtNFhLb0UzT0I0bmxxSGhGNUxYUm0x?=
 =?utf-8?B?UnlRNGRMK3UxWG5yOHZkRlVhTGV3ZFlEOHZTQzNYMFM2elpVVzdMWFBJcG5O?=
 =?utf-8?B?SnZlNVp1cE8yamlUN2lCMVJRQ0RnVHpvNEh5Y3U1UmN1RjhMZ3dyUXJyR0c5?=
 =?utf-8?B?a25wOVYxaHZtM0NBZ0t6NWgyc2dJc2VGOGRRVkRlc3FTeGJYcDVqVVBqVldk?=
 =?utf-8?B?M3d2aytFdzZaRGFVN3RBRUFSRTRNbUJBcS9FMnBGRlZ6VnVjbXhodnVYTEFF?=
 =?utf-8?B?YkVVcFNsL2FmRThWYkFSQlZLdjVUNXB1akIvdmVyajdIcC83L3grT3BSUExv?=
 =?utf-8?B?Q0lIeGw3S2RvUlhxSzd3dUVRWTJIQnFKNG5OUXRTM1pubVhtVHRJNUFObTNR?=
 =?utf-8?B?d2UwcHkxcUtNR2NlNzNFUjJVTGM3QVROdTl4N1JCeEFveHNieHRIZkt3Vldh?=
 =?utf-8?B?TlVMWFVKampINWc4dzlwZ2x3TUFwY2dVNkN4c2swdlpRRlI2OXduZUZQZXJ6?=
 =?utf-8?B?NmxRc00wam1uVkVoWWthbDFWWnJTa3VLTzhjb2NOcWx0TFc3b3VQQ3lkVzJR?=
 =?utf-8?Q?nRvsl40JoEOK0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVVtSXVORCtVQkEvZnZ2TXl3Y21McXRBNE5ST05PcW1EUURLeklVSk4vdy81?=
 =?utf-8?B?Vjl0dzdMK1VmRmI5cU04R1MxaG5EQlc3MmdDNXZmbzU2RGFmTHVTQzdVUk5s?=
 =?utf-8?B?UnNwS2QzQWlZY3lRd05uOGRWbmNzK1FGR0JpRTVaNHQ3OU9oUERoUk40R3Nz?=
 =?utf-8?B?aFhRT3ZZUEJoMC93Z2xyaUZjQjJITkVqQTRNR2dvVU9XR3pYR2JJU05aUmpL?=
 =?utf-8?B?S2JjQjlpa2lOQ0h0dFJ2czYyMmwxbmIzTS93TTcxWjFFRnhBczlibW1SSWcy?=
 =?utf-8?B?c0lsSENEd2hhb0pqa2M3YzM1MjFMMC9rVitrYjdEZzd4V0NuemtkMnpnMHFz?=
 =?utf-8?B?NGpVaDZPcmVTME42L1pGMXVkMkQ2L1RFSDN2dE9mN2F6azFZbUlGd0hnWVVt?=
 =?utf-8?B?bm1WNnMxWnVjNmhyNDYrR21EYlpIYXFDamo3N3I5bmMyejEyQ0I0eFRnQWhp?=
 =?utf-8?B?aDVsWGs3MCtsT0E1K3BCMXdDZ2V2ckQ1bEVQOENLem5OeFNUQkVrcFZYS0Z0?=
 =?utf-8?B?VFMxYlQ0VkpSUFg0YWEyZzJ1Y2dlZVUyNE1KZ3hDTjh0WDN5U3o0NG1Na0w1?=
 =?utf-8?B?b1ZOWkZCQllzcVhjS3Y2MTNxeEtjRVpycGtENnJEaDVnL1lleCtFTm1SWW9P?=
 =?utf-8?B?QmI3bUdQRlRTM1dWZTNFY2FlRi9RU3FJZWlpajlYT2NWNHpoWEhuY2lPcVcv?=
 =?utf-8?B?VHJzWWhaVHRRTnA4SStZQ2FiYkZ3SzRnNVpNZmpkcFBJMTRZb1dmeGZiNk4v?=
 =?utf-8?B?ZjZLdXhUemZnUmtSNUR5MlRYMFNkTmtVUTRTa1NQNHl0VEVybDJySmdFdzBU?=
 =?utf-8?B?THl6L3lXTVdhTEFuejY2MitRalJnWDJVeExWeG1DL1Q1WUJBSlA5QXZYSXg4?=
 =?utf-8?B?SzkwVndJaGthUUdpdkhJb2JLQUdZV1hrQlhtLzMwTWpEMmhhZFlMVmlJMUVy?=
 =?utf-8?B?cExKZnhIVmVkYVp6ZDM1SHVZd1ozOFoyUE1xckNNOGpGSmFuN010QVRwV0ts?=
 =?utf-8?B?T3RnaWxrbXAvQTltQm9kSEFaVko5TE1qVkFuYTFhUXJkc3JCdDBSTGgxMGdj?=
 =?utf-8?B?Q1ZrUVJMRmU4SDFWa3lZdWlYdXVwUlp4MU0wZ2hRWEVnTVIyRjdEZ3Y5bGkw?=
 =?utf-8?B?QUl6QmNpbUh2aWJjNjdIcnlQaENBVXQvZTZXUHBCallabjg0ZmdSdkZZRzJ1?=
 =?utf-8?B?QU16bGZhQlY2cTNQTWorOUhGQ3NIaWttampSTVc1bTFOeFlHaHRHd3ZyK2VF?=
 =?utf-8?B?VW5SUHRFaldsRGRiSWNzRWx1V2gvWUYzWlAxZ2h2TUpUVFJhckVXOFlXYzl4?=
 =?utf-8?B?L2ZXclJKRm9sY2NUVG0xQXJOS3FzRHVYMlFXZVhtV1IyZ2pPSmJTTDk3Wm5p?=
 =?utf-8?B?bEphcFNnaHd4RGZ1MFZScTFrVkFhWHRrWnc5c3Q1S0hhMEdYNWVzb2JKM3VF?=
 =?utf-8?B?RWZ5b2xiZCtkVmVLcy81M0JWbGVPeml0ZzJqNktFdktIcU9HV3lRME9UcGhj?=
 =?utf-8?B?Nk01RnNkVWxtVzQ1ZHNBUUo1c1BZRDJBU0ZMUFhjM0VjdnFtVE5WbitJMzVJ?=
 =?utf-8?B?NnlhY0lpNHUxSk1Gck43bVB3RGpoSDYzMm0wWjJuczJGYnZYZHVtWk9CYklK?=
 =?utf-8?B?QTVvbUVWZ0I4UVlvZlFqbVpxVkdic1hmVkgzZHZrUHpJZU9OeWx1dThIQlNn?=
 =?utf-8?B?VERlNFhSVE5WU0JKQWtlalZDeEhZbzBrWkhMU3BKUmNNdUI0eVQ3em5laFpl?=
 =?utf-8?B?blBuUktZVVB0S3d2ZEVsZVc0S0pnZnBiU2RCZjdrZGZJYU1BeHJGRjZnZ0I5?=
 =?utf-8?B?MndXbS96emoyKy9MUkVvOTcxTHdscXJKUW1USENad1NrNjRjaFVIVzVqUGkz?=
 =?utf-8?B?b3dhWkNURWFSbGNZZWhWSlczZUgrYlRMQnk0aXBvZ2tnOUMwVVhEdTBXUXF0?=
 =?utf-8?B?VU1rOHlGY0RpM2NTUVVWR2ZnSyt4dVdEek1LSXdWcnM2T21EYmxJVFM4U2Fn?=
 =?utf-8?B?ell6SC9TQmwyU2IzbHRaVWJkbDhQUHJCVytEYUF6dVZ4dkc1Z0hzb0ZSSnVp?=
 =?utf-8?B?M09nKy9uVlRWSWwxWnB1QTNVRW1vU0dva3JxWVdERXV2S2w2T3NTNzhZNWY5?=
 =?utf-8?B?REo3S3dnSnJGcUpRSFNNUllYRlZYWlBsSUMrdklLc2ZzNkNtZE0vRzZnSjVz?=
 =?utf-8?B?d3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: de574a1b-4025-42c0-37c6-08dd5bf4fbaf
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Mar 2025 14:49:51.0400 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jLvjFSTB6Wmot5P5OLOYYftOtjWQSgi8VBd6/sw+y9ISJ53P4TFeAt5Vbh7KVlgUbp5RaR4vy7xDM+uCg7lMFhob6b9TYSD4m6YErDpDd6w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV8PR11MB8700
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

This reverts commit 0ddae025ab6cefa9aba757da3cd1d27908d70b0e.

According to bspec 14181, CACHE_MODE_0 is a register that's under userspace
control, and DISABLE_REPACKING_FOR_COMPRESSION workaround should be already
in all recent Mesa releases. So, there is no need to include it in kernel.

Also, this workaround·sporadically fails to load:
```
ERROR GT0: engine workaround lost on application! (reg[7000]=0x0,
relevant bits were 0x0 vs expected 0x8000)
```

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h     | 1 -
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 9 ---------
 2 files changed, 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 7421ed18d8d1..52ddfa9f3ad3 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -440,7 +440,6 @@
 #define XEHPG_INSTDONE_GEOM_SVG			MCR_REG(0x666c)
 
 #define CACHE_MODE_0_GEN7			_MMIO(0x7000) /* IVB+ */
-#define   DISABLE_REPACKING_FOR_COMPRESSION	REG_BIT(15) /* jsl+ */
 #define   RC_OP_FLUSH_ENABLE			(1 << 0)
 #define   HIZ_RAW_STALL_OPT_DISABLE		(1 << 2)
 #define CACHE_MODE_1				_MMIO(0x7004) /* IVB+ */
diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index 116683ebe074..51839f270d57 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -2306,15 +2306,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 			     GEN8_RC_SEMA_IDLE_MSG_DISABLE);
 	}
 
-	if (IS_JASPERLAKE(i915) || IS_ELKHARTLAKE(i915)) {
-		/*
-		 * "Disable Repacking for Compression (masked R/W access)
-		 *  before rendering compressed surfaces for display."
-		 */
-		wa_masked_en(wal, CACHE_MODE_0_GEN7,
-			     DISABLE_REPACKING_FOR_COMPRESSION);
-	}
-
 	if (GRAPHICS_VER(i915) == 11) {
 		/* This is not an Wa. Enable for better image quality */
 		wa_masked_en(wal,
-- 
2.34.1

