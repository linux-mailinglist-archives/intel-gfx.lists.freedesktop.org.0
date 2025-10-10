Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DA94FBCE23D
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 19:45:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0DEF410EC64;
	Fri, 10 Oct 2025 17:45:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UAsLNYxM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 93EF910EC64
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Oct 2025 17:45:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760118347; x=1791654347;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=l2+uQZ1yE2Os07Gvfxxla86gc71ObbZiwWYELZSvvAo=;
 b=UAsLNYxMU91tdxLAFDpGXKedabmXjKFTBB4KKg4ZeNLgUe+wravpar4Q
 s9Pc9o0zPNLSjxVjmW/5GQWKr7vptsgpGy3emHVPC47EUjl+OK4SHzQuo
 5qCol9aF1BfJCD+ldJ7FHZ0iI6Wo16rtR5eAJTCoOxNTn+cYUxXY3c6FF
 HiUnUvMJ6RBkJnW2GITXWxL+b7oEDgkPHVmcMxZ+mLjmT3Eq0OMrz/dPc
 24Da46WFbANvu2TT2/FsvqcAVqF50UwB7nUnkwQXcDsaUPryeTLdlqgBK
 mTbnM6scgh8fEhu3eoE0/umRjUb+7pMOHE18YMekZM8umdWf0blAIZxHJ w==;
X-CSE-ConnectionGUID: s7LVkIQJSCWHGzxwTxlsvg==
X-CSE-MsgGUID: 6HITjDxrQGmtxaWBfVjGvA==
X-IronPort-AV: E=McAfee;i="6800,10657,11578"; a="62498127"
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="62498127"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 10:45:47 -0700
X-CSE-ConnectionGUID: e08eHIe0ThisYLFQTgicgg==
X-CSE-MsgGUID: zAKOIzeaR1iTzBvDLJ8n6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,219,1754982000"; d="scan'208";a="181457279"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 10:45:46 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 10:45:45 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 10 Oct 2025 10:45:45 -0700
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.69) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 10:45:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yPF1gV5kuaTMi5JtCCLMILiePS+X3GnhF74jNTqCMaQ8z0rBljBdpksy7ZZ7BKmpjOsK6RFOPVCBoNLI9z4Vt7FoaaDYiR5PQm/+CbMYqPTpGka29W7/vA/3c5vABumd8HT5COelX9kPccGlLMfEVu6b8TsrL1Aic0oUQ1pubihz3CDQUxjE+ZpG0mvR4fMd4740Nv99kqitW/WYz7tobAvC6k7Odr+b7X9zQv3i58fB+l/iNRyPIGYMOTRFIVATeyt/Jf9Sv8xyzDfs0SDRsfpBHVGl9WyMa7Z4Y3aM0rbBuksqHwGyv9RT3uMZr78RbISKrv8KsPPWf4us1iYZ0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FKqNPMpipc2pPDSfmQCTihEZf+bd9dj5nSUCkn9E1sI=;
 b=yeFV3Do/Y+Zvw7atZll3JCBhA1C+y7Fkbav065ckQRORJMckWKelY+ucsgXhZjOTL7/L/AkfwCc6FYAAwWfkJye94yLUMz8iU1mPWWhM4yqUFGkBbHr+KOSQENh+gKHEsd/mqbMrk6ZqHWe3F6EdV7bpL10Jo1+a96PL6JmbC7Ii+hm31by0moCGam0TZtkSZ81j/fhMQawmg/G8bnlNzMasFqsQgawKCFo3iUz2bJSpDKScUuAnJQ2n+GXi3lxyeSrAlqhN1aVGM2/jhGKeoPGegB8PCIkPtSTR4R5XOazJ/hE/mpol8qW8/aydks93vttm3mJaWHlYSE1LLyJNzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7408.namprd11.prod.outlook.com (2603:10b6:8:136::15)
 by SJ2PR11MB8539.namprd11.prod.outlook.com (2603:10b6:a03:56e::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.10; Fri, 10 Oct
 2025 17:45:41 +0000
Received: from DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543]) by DS0PR11MB7408.namprd11.prod.outlook.com
 ([fe80::6387:4b73:8906:7543%7]) with mapi id 15.20.9203.009; Fri, 10 Oct 2025
 17:45:41 +0000
Date: Fri, 10 Oct 2025 10:45:39 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: Andi Shyti <andi.shyti@kernel.org>
CC: <intel-gfx@lists.freedesktop.org>, <lucas.demarchi@intel.com>,
 <riana.tauro@intel.com>, <matthew.brost@intel.com>
Subject: Re: [PATCH] drm/i915: Fix conversion between clock ticks and
 nanoseconds
Message-ID: <aOlGQ/YmR0QgPK7S@soc-5CG1426VCC.clients.intel.com>
References: <20251007233543.635130-2-umesh.nerlige.ramappa@intel.com>
 <itxmibglcduar4qqnc3iwwzumskfw522fbioubyzfbibb7tdrg@tz2mvn6c2mru>
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <itxmibglcduar4qqnc3iwwzumskfw522fbioubyzfbibb7tdrg@tz2mvn6c2mru>
X-ClientProxiedBy: MW4P222CA0023.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::28) To DS0PR11MB7408.namprd11.prod.outlook.com
 (2603:10b6:8:136::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7408:EE_|SJ2PR11MB8539:EE_
X-MS-Office365-Filtering-Correlation-Id: d9e42a6b-b595-4d2e-bc76-08de0824d4ab
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SE8yTGI0cWlBVFJEbzFHaTJQVHFDQ2dKNHdZREp5Q0l3dlFYalMwMnhSR1JO?=
 =?utf-8?B?eUQ5NjJXTCtlOEM2MlRXZEtsVTIxZ0YvakRSN2FtSHFScWpJWkFubC9FUU5h?=
 =?utf-8?B?S05tRUlJUm56Z2xQNCtqVHQwUHZkY0daaUNIQmt6K3ZiVFBPdk9TbU9IaUVk?=
 =?utf-8?B?OUhoQkRFVCtERGVxTTlKcGhRZGFPbFAvMzZ6alVBbnZ2N0htajBZTlpPV3gw?=
 =?utf-8?B?bjMvNlM2NUVWRWUrVkpXSmNkYStkTXFINUt1MjJCNG94VG5HR2cvMUd1bkdB?=
 =?utf-8?B?bE5pWGtRcUJXU1MydW14TWVmUHQxYzBVQ3lBekM1L3NndDgwSENxLy9YOXYz?=
 =?utf-8?B?aHBLMEsxUnVSRStYQVdhU1BTL1h2a05pdVExWWN6WXYxa2RqRXJ6UHBabGRa?=
 =?utf-8?B?WlNRMUlWb1pkdVAvNTdQSzNXdXJOTW1xd0FacHVwWGVKVUlVQmVVZ1p2Q3BW?=
 =?utf-8?B?M0VIZzJaVjFWTy90T0J1akJCZDY0cEhPOWN3a2NJYnREQnlqMEg1RDJxcGxX?=
 =?utf-8?B?YVRkcVZHVk5WN0d5Vml1QnI1SU1qYmhYaUpjUnEzN0RzUGE4NllhYndjajJ6?=
 =?utf-8?B?UmFyUjVQYU9TY2kvVXdUY2xmZUpuUEpEQWloc0pCR2xDNnM1L1cvVGtKTEtW?=
 =?utf-8?B?aFg2bEVzdEpXV0d3Z0JrdGxydzBFNEFDM0ZxcDNHS2JUODAzZFlyZ3lQbTNx?=
 =?utf-8?B?MXJQallRZVlqenNmMHQvaUM3L0hIa2wxZC9RSjB5QXNabFhkMXlxNDhuRDZz?=
 =?utf-8?B?WFB3Y2RRMDlrSnFGdk5xSDFrTFVaVjlMQ1ZxM3l0SHBGdUgyVllVaUpCQmhy?=
 =?utf-8?B?MUtVZGJkM2hLcjVtL2lMeTlveUl6a1JoSDZmeXRFZ01MZ2wramU3eWE4VVBQ?=
 =?utf-8?B?SXI1MW91dldaNDQzdHhXVnFTOStDS093bFJkc0I5RFdzRHVYV0JyMUkrTFhq?=
 =?utf-8?B?WVhXVXd5ZzcxaWxUTnJqbXRjcXRQWFRVdXhrTVhyNFJZSUFWNEZpM1JyREpu?=
 =?utf-8?B?eFNsTitJRXJMR0lLdXFBcnFjcG5hN1ROT2RodnI0SnBQaDdWVFB6V3UwMVM0?=
 =?utf-8?B?RU9pUjk4Q25qU0c4T2lRblpBUFRXME5UQmwyOExRcThQYUQ1ZXRrSWZEdnZU?=
 =?utf-8?B?L0ZzUXZ5dlhscG90MTVVL3J3SkxER0U2MlVTRkp4OFNWM0VBdmxjWkU4RUUy?=
 =?utf-8?B?K3BvdXBoTEU3ODEzR3RzZU8wZXNTeVVPWGRRL3NobVhpYkxNbzN2cy9DdEp6?=
 =?utf-8?B?RFZwVmE2UXFwK1hFQlk5ZjdTNG9pTXcyMEN5WXptbVNzQlp0RnY1endDMTMv?=
 =?utf-8?B?SE0xMlM3Y1FrUDdjNVplUWlRNzMwNmorZnN4OEpJckI4VlNIb3hkTnhyZ0RW?=
 =?utf-8?B?MG96aCsxbEJ6a3I4ZkxJT0cveENPNHVWQnQ2TWYzTGsvbU8vRFZyNHlDOVBY?=
 =?utf-8?B?NGRvY2tXSkVPUC95Q01NWVVscnYydEFGTm4yK3VRSkxUTkZuUkJWcmlGZ1pI?=
 =?utf-8?B?MUE0V2NpYzRGT2lpRDJCcXAxb1RkNTcrdFVaTzcyalBWcGdOcDgrWjI3ZFRm?=
 =?utf-8?B?VmJLQVk3d1puUVAwKzEyeHVQT1FhSGtOaGxOVWNEZUFndzVNS1FiVVhJZGtV?=
 =?utf-8?B?RHcyaFZFUEpRWFpoWllzL3FzNXJZUHNSSlRmYThCVkVpbUxPdnM4ZmJsT1RG?=
 =?utf-8?B?MFpMYmVYeHdQYi9DSUQrZ2pMWTh3ZEh1ZkNsSHZHakloZ2pLd1NZcHNVRnJE?=
 =?utf-8?B?bUJ4K2hSd3pOdVZGd0lkOUcvSkNVeVJ4UWd1VDhvOURxVzVvUnJvQnR2T0RK?=
 =?utf-8?B?R1NsRFNXUDcvT3p6enNRYVFTeGF6cjhUVGRoY2M4bU5tQ0tWSklVZTYyUWdG?=
 =?utf-8?B?OUg4M1poYThyY2lMVXVEalNNN3d0T29NZVg3S2JEV2F5Q0s2NUJhQXQzZTNY?=
 =?utf-8?Q?S1TgyP0PnS1EF9SR0TZT9xnyleH32GcF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7408.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?T2o4NUpycitRWUxBRlFRU0x3dWpIQkQ0bkFxM1VYQ0JpeGYxa2hQSUQxWlNa?=
 =?utf-8?B?RzJ6emxNR0puUE5oYWIyOEh3TENVcEFuT1RKZ3NLcUs5aXAyNnBpWEFteUs5?=
 =?utf-8?B?cHJtNjBZVXVXNk5GRzgrdnVaUThFSGV3OXB3cFR2ODhXQmhHcUUxaWxlVnFk?=
 =?utf-8?B?T1paTk9xSnplUWk3NDZrMENMRys1RktxT0JueHZ3Q01EMHFGWVdURitQQi8r?=
 =?utf-8?B?ZXE4ZC8ySWVDSzFJTVl0WE0ySXVDQWorMkIvb3BSRkpsSUFqTWpLMVo2Y2Zz?=
 =?utf-8?B?UWJMSEFGVUw2RUxGNDQ5S2drdUNTazhDZ21xSmxhOGU5NzI0d2JmdWpBKzIv?=
 =?utf-8?B?WjlNSWdxRVhHditmR3VVaUpPSWQvVDFqcmZqT2JaZFRjTmM3SU4rYlc5TUky?=
 =?utf-8?B?MmhHbVBzNXZlUFU1WUoySWlMOWt1c0IzUlhwTHNFSnpZRmFLTGF5WncyK0VV?=
 =?utf-8?B?WnNidzV4eXUwODBWUGsrZHVBRENHQVRNaW9JUnRSZk5PcEV2Q1c1SmRQSVp1?=
 =?utf-8?B?S0VCeDNjRlBBaTI1VEc5by94YThhRFVleGNMM0I2cFNXbnVVaGZNRVl6OWFM?=
 =?utf-8?B?dzliYjZycGxoL3lxZk5yS05JVEIrZC9ESHZLdmNNSVU5U1RWVFpXeE9PY2p4?=
 =?utf-8?B?anFYK3lTbVF0YWtiNFViVEdHUWkybnhhRmRhMmFMTHRGQVJ6VUVkTDN3d1Bi?=
 =?utf-8?B?aGZpYzl2eWRVUjJpSkRDczA0N2VMcUZwTFplWlpBL01sdDRxUXZmSjFQbjIr?=
 =?utf-8?B?Ui9DWlZPSng5eDVOYmtEanFyZVdrVkUrZ3pyVDFKZkNGN3BETXdxVjBVT2VZ?=
 =?utf-8?B?WVoya0NMK1hLdjNCWTVISjZIRzVJTDVSajZ3ei9kamczWUxMbjlyRUxYbk5N?=
 =?utf-8?B?U2xIRjQvcDhyUW1HWDI4V3d4ZHlISVhPRDRVTWJWQmtjTng1UEZSbXNuNkZE?=
 =?utf-8?B?WjBHVzFtL2ppUlp5VmVSSEZUcUxCU3JkWmE0OXhyT0NmbzBMOFowemJyaWJY?=
 =?utf-8?B?Z0tvRHFUSkJZUGRra2txMTdEbmxwUW5rMHhuUWhTOS9GQS9XZ3hGR0F2aWl5?=
 =?utf-8?B?N3dHcWhjV1JlQllxa1BVbGg3T2xzTkI3bnJnQkRscUYydjhSbGJkb1hzWnlr?=
 =?utf-8?B?Q2Q1N2YwSGJDbFJrajJRRUZ3cmdoVm1VbnI4d3p2U0ppVTZCRE9uZE1EbjBJ?=
 =?utf-8?B?NkVUeEJEWWwyRXhxRjlkbWZ3THp2NkZrNU9uQkJqZHZLcStjcXkvdWcrZGR5?=
 =?utf-8?B?ZUVCek0rS3VPYXRMdzRkNndPeGlDSGs5a25zb3FPemk0eCsxTlBHUGJmODdm?=
 =?utf-8?B?citoSEgrT3BUUHZ3Skx4WUV4Zlh3MmU5dE90dmRUdGhrOGFpTTdQWmM2dTRk?=
 =?utf-8?B?T3FBTUZlU0RIY09TZ3JTZE50REtqTmNqNlpyUlVHWGlWNmxtZ0pGVlY3T3Bt?=
 =?utf-8?B?S3pkbjNpcU9YWHprS2hmZ2g1Umk0NE04YWZ6eU03Q1Bxdm5sZEcyelVlRmN3?=
 =?utf-8?B?clhGcTJmOTQvOU00MXFjREJVdmxJb01oRVFPNVEvRVpmcHM0alVNZTA0S0o4?=
 =?utf-8?B?ZXVkaWtvVlhRa1RqMFdlYisyRUpLQXVmY3d3eHZKV2ZwcVdQT2RaUjJkQ2hl?=
 =?utf-8?B?anhibURMNzJCU3dOa2RmandTbEJWVTVJVWFvdEhLaVBkM2tUdDkzWXF3L0V2?=
 =?utf-8?B?c3h3cytVbjN5V09OamkrM255dXVvYXdvQ29tLzFPQ2s5dE5EWGtVdUxraVJi?=
 =?utf-8?B?aHhoWVd4SGJYOFFjT2pXVk1JOGtUVS92QzRLaktENGgyZE9iWW1rY1ZtVmFq?=
 =?utf-8?B?R1dXbWhOTjRXdFIrcHN6N3NkdUhqZ2dhSkcxNFk2Q3Z0a0pJL2x6YkdnQndM?=
 =?utf-8?B?cjNKRysxcTY5RjEyRnVjU2J1MjVxTzdJY2VpZ3IzVTZFZVpJbFM1Z2c3ZnRw?=
 =?utf-8?B?VEliOHJOOEM0c2Jobzd1RVRxL3NySVZ6WmpVeDFDckkxanJpNE9VR0hhM0Z2?=
 =?utf-8?B?RW5kL3Njd1FjZnB6bnFVY29iT0VkOHlUYnFwVGpXZGNmczNPdXM3TE1nT3lM?=
 =?utf-8?B?SjJCZEZac2ZiL0NWMEZCcjg5U2lrbCtPRHFkQ2U5R09WL2RsUkR0UUREVTlY?=
 =?utf-8?B?Z0hPMS82UVhIOGVRRHlDS1NnQWY3OHp3RDN1RmRKN08yM2piSlRGdG9aMWND?=
 =?utf-8?Q?2paW9nluzuoN+OxB2enllq8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d9e42a6b-b595-4d2e-bc76-08de0824d4ab
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7408.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2025 17:45:41.5160 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2p5rxBtg+/2xX7x9zvx/hJnhCuuUuZ97GXNy1wdR9Z1Cgs+/X3puFciRPREY/NdN8ZZk0q7cwnw4K2djv9t4vm4+VQVwe5Qea8xMYtAOzmY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8539
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

On Thu, Oct 09, 2025 at 02:24:52PM +0200, Andi Shyti wrote:
>Hi Umesh,
>
>...
>
>> @@ -171,7 +173,12 @@ static u32 read_clock_frequency(struct intel_uncore *uncore)
>>
>>  void intel_gt_init_clock_frequency(struct intel_gt *gt)
>>  {
>> +	unsigned long clock_period_scale;
>> +
>>  	gt->clock_frequency = read_clock_frequency(gt->uncore);
>
>Shall we add a paranoid check here to raise a warning if
>clock_frequency is '0'?
>
>It should never happen, but for robustness I would suggest:

I did post that change, but BAT fails for PNV since clock_frequency is 0 
on PNV (gen3). I will use this version without the check.

Thanks,
Umesh

>
>        GEM_WARN_ON(!gt->clock_frequency);
>
>(or even BUG_ON, though that might be overkill).
>
>Andi
>
>> +	clock_period_scale = gcd(NSEC_PER_SEC, gt->clock_frequency);
>> +	gt->clock_nsec_scaled = NSEC_PER_SEC / clock_period_scale;
>> +	gt->clock_freq_scaled = gt->clock_frequency / clock_period_scale;
>>
>>  	/* Icelake appears to use another fixed frequency for CTX_TIMESTAMP */
>>  	if (GRAPHICS_VER(gt->i915) == 11)
