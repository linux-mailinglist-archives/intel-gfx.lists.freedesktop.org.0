Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 681EBAFB471
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 15:24:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 09CA410E46E;
	Mon,  7 Jul 2025 13:24:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="h/EJ9/k7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 276AB10E46D;
 Mon,  7 Jul 2025 13:24:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751894654; x=1783430654;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=90PKnTLU5yz7UsZpOwYnWP+Hwk9drUcFyJotoZGJ6qg=;
 b=h/EJ9/k7RgvwuRPHqnjlCTpMwZufg5VsC+AxtYYzOxDwyjEAgGRtMKBi
 ZHfNaVQjtIjTo3YYJO2hd94iUdCUCEtVfl/7lYn5DYJpYX0JGfU2xHlfr
 IkfpJ+XG/8iTKT+eDWlPgHtYbZ8naChS/xNzIsS/UACLa5ncw9wBrXos7
 YZpVrdvQM07VSnd9PzXq9JVTBugX5GDGciFuRyHSXkRwS5muSmytF5/PB
 qTJqzISLtgFCRuSxPmVVDqsaf4YvRInMDZqrDMu2wTvUHTU2PrmE23/OQ
 dUUAQ2asuhgN8KzpJNZHiaD8RvseUCYR606K5WkrMKcc1fN0ayTriW4qE g==;
X-CSE-ConnectionGUID: 55fZmFgzRL+M9rwoMoZwVw==
X-CSE-MsgGUID: H0aj5iP5SzG774r9WwWloQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="64800840"
X-IronPort-AV: E=Sophos;i="6.16,294,1744095600"; d="scan'208";a="64800840"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 06:24:14 -0700
X-CSE-ConnectionGUID: EHe2EUMwR9qBETHrnmVTWg==
X-CSE-MsgGUID: 2T5x4nDeSLaHi/WA/n1WGQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,294,1744095600"; d="scan'208";a="192397210"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 06:24:14 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 06:24:13 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 7 Jul 2025 06:24:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.53)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 06:24:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Aq82KiI+Exg5qL6E6fdWAB5Oki13POV/9L8bH60HdMs/VOyuEAiTHoB1VpH29qQyV7o1XL/GFeRJFfiLFWHMfetQ3YzpDrOARbEb6f2g/meVaIyDtjqJIha81nXhSetQdwALqM5tywicugFdzZOLtM3FqgrWpejXs0ylxEN+dib56Wy8DFNxbUYC4kw6j8bHvg/h6hZBt8JoDEmJMDKTl1zWYRPKzHDZ0pGy6c9FmyaXK7KzO8C3yvCpOD7r5cDfOVRoSQeKH2BFCECBNV0sHrRV5rXqZ5OHdhtHxF0e8gi75sYkTVR7qsNTQcJsQIQNRBsIBddmU878tom+2e4cGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=J6J2HDRnDSIX99JjyQYnVQJSxaJyCuHdDnocoYGz4WQ=;
 b=EDnWGjHvCdbRa54yvE+qI0FSsPc83uxrwJfJEfIPsiDvnLtvPW74Y+2lTHT7B9Z1S6Zm+jyvLN/GVAXkUW1JIucjzavMOANEijz3VRxfoyDwW7BebD9boRjMPEj+PAHb4y+l03qq1rcZgG9fFs7pexST1wMBVH37EC3GXiueyXWbq/7zGmAUqo+szSO2fA6OmKPSr4KTGi7BbPvmV+OGU5xthhMDhu7UhEFRkgq1jv2oHLVFkI5tm/8xarQ3tdcIs7w+TM/9eXTkYPOZvUi/nbDC2nkO6FZZMv9aOzkaXp+D1jMAYEel39Vs+QMYHI6aQLyQCqm+ke7s5uKpVqbS5g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by MW3PR11MB4603.namprd11.prod.outlook.com (2603:10b6:303:5e::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.21; Mon, 7 Jul
 2025 13:23:57 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a%6]) with mapi id 15.20.8901.023; Mon, 7 Jul 2025
 13:23:56 +0000
Message-ID: <df9fda90-8be7-4ae1-aeed-35225edca634@intel.com>
Date: Mon, 7 Jul 2025 18:53:49 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Optimize panel power-on wait time
To: Jani Nikula <jani.nikula@linux.intel.com>, Lucas De Marchi
 <lucas.demarchi@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <arun.r.murthy@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20250630122339.3007880-1-dibin.moolakadan.subrahmanian@intel.com>
 <b5a84286f9729e9d92e08596bfbeb4e9c77f6dc1@intel.com>
 <w22u6gjs6uuzfkksxrp6cjlkli2jzanqodb7ukyptlsv4a2kvk@kni4djwoeefx>
 <fe44d12c701c3d410de6e0ebc1f08bae2eec10a1@intel.com>
 <91eb3ff6-1b47-4ca3-acb3-566a97eb6d35@intel.com>
 <652c78d343137c9cd67eea2bb7059854c24a62cf@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <652c78d343137c9cd67eea2bb7059854c24a62cf@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0104.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::10) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|MW3PR11MB4603:EE_
X-MS-Office365-Filtering-Correlation-Id: c1d3a8bd-e6d9-4c56-b194-08ddbd5986b3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d0dqZlhGZ0dsTHZSUGlybnp2c0xPMFNGdTRLT0dTSDBOSS9PYm1XbUs3Q1h4?=
 =?utf-8?B?RGhJU2V4aFZSREdhTEVVMjBMZHZyeHI1VCtpcGZ3ZENsVDY0VVFBNGJuQ3VI?=
 =?utf-8?B?RU5XamkvTG1TYjh3VGlWc2FvSnk3bmhJQ1lFWXpCM0RsTXpHSk53ZS8rbmln?=
 =?utf-8?B?b2p2M3Y3eW5LRDh2RElKQW5qRi9VY3FlaGV5Nnd6MzdJQTd6dm9zRy8xdEp1?=
 =?utf-8?B?WTJBcGxMS0xQUWlJZHE3MGtqTGtjOExML3J4K1Y1ODdKSnVUTTgzZ1ladDI5?=
 =?utf-8?B?MGVvZlY2YU40MGJ2Yi9ZdkdBTkN3eWFxT2w1eU1MMFZJQVYzL1cxR0ZJT2Ny?=
 =?utf-8?B?S08vNW1rQndKOHNVWWM2M3BlcGhZVFpYZjJySDJ2KzRJMHUzODFid1NNUWU3?=
 =?utf-8?B?TC9qQ2NKN0xZYWl3K28yaWtJNmI2YzQrb2tyeCtEZjBUR3k3V2VPREpJVVE1?=
 =?utf-8?B?aEx6cWh5WUZmaFN3NTFtZ2VHQndVVm9wOFBsSHNwOTNabnVxTmZEZ25FN2ds?=
 =?utf-8?B?QmllSmtWWWlFQ1czYUZOUHlBRnVLSFhwNXNqWW53cHVRWGlEOWo5OXJIcVRQ?=
 =?utf-8?B?ZVJKUXpOZW0vMnoxdk9ZZkhKbEgxUGd2eGRsSkxhQWNHc1hvNElpUzZQb09i?=
 =?utf-8?B?QXV1T09uejRLMzRhRkpZNGR1b0U4WUpqSEZOZXlxbG9OTFJRNENKcjV4QlVm?=
 =?utf-8?B?ODVNeTdmbDUyQjhncjRoUDRucVMyUFI3cXhrVVFIU1U2L1BaRHRrSHNuYUQ5?=
 =?utf-8?B?dktVYWxpS3krMmZ5QVBPby9QM0czZHlIeVRkUlhGd0N2eG5XVDRmZW9lczBP?=
 =?utf-8?B?d1VNRHlhWThtaDQ3dytGbmJlb2xJdzhRT1JzditockxGMFpUTktXdVF5ZUJs?=
 =?utf-8?B?RmtuUy9SU01PK2hlVSt0YnlSbnV1YWpRenNpaDMzMTFuQ2dzRXR0c21yY2JS?=
 =?utf-8?B?ZytTMEVQTnc1dGVQak4ySDFBWTlqMjFpMlhURk1uVjNvejdrUWE2STlWdmV6?=
 =?utf-8?B?bDcxMFVTcjFtR3hyL0puZnhCRTl2MTRqNm9CcnF3a0ZsQTlEUFZycWRzRXN5?=
 =?utf-8?B?czJqSEM2dHA5RVRwQUhBVUxGc2NKWnYrNFlMNTRVRWJtY2RZd0U4KzRJVUJx?=
 =?utf-8?B?WXdMRlFtSUhFbG9MVXFmUk1DaFV3a3ZxTUxucCtyTC9KU0dvK0tuNlpLNnc3?=
 =?utf-8?B?Q1dpTHZIQ3VVZDlHdUNGR3JFbHVydEppbFBxSndmMk43UDlCS1hYZUo0V09j?=
 =?utf-8?B?UFptemRJT284QjFFU1lFZnZMVHVCYWFmcnhGdVZydFlFZXpic24vei8rbDBP?=
 =?utf-8?B?Zm42SkVRWllPNG84TUpvbUtxejZTQnZDcGZPcm81WXp3SjhwZHVzQys4NXU2?=
 =?utf-8?B?VEg2ZThpbVpUd0VWUTg5MFNKZDVCVHZIMkFvTG5wS3JVVnNYNy9rOTZTSHFn?=
 =?utf-8?B?Y2dIeVFvekJ2Yk45NTZFdFFGYk8wbkhsNXRlSEQxMlR5dHB2TDBtZXhnbjBX?=
 =?utf-8?B?LzQ5TkdmaWlVT2VTenNTMC94YkR6UG5oRTlwWWxPUVI3YkxjbzN6dlIzWU1P?=
 =?utf-8?B?Y2k3Wlg3eGR6KytvSm01YTFxdlg2cy81QVlmU0svWTNKQzhzeVpuZTRGa0dW?=
 =?utf-8?B?Z3MzUFZZSlhGK21oUlVqaDByNGozZ3N1MDVtQm5FdVdHMnVOYkYzWVBsQ0dK?=
 =?utf-8?B?VG1OVEpUbjR2RmliNWVrSTdISzdhR1FmSFIyLzF0ZmxTSko0ZStDNlFIWmhL?=
 =?utf-8?B?VndTQlR1dXZNdmU5OE9YR3U4WCtFbCtPWU1mN0RmTk9oT3V2d0tpMWQrckZp?=
 =?utf-8?B?M3YyZ2RKdllaN2JDdFU2eE9HM3JkcDE4STZkWGFLZDhKMkFYbXJzSUVIYThn?=
 =?utf-8?B?azFJRFovWDhtU2d2elJFb05xNXVNeFVQbkJiQTA1dnBHTituQ3FTeUhjRXlW?=
 =?utf-8?Q?Qk8Lagkd4/Q=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1hFNWF2TFZyVng5d3FrWVhkUXJiLzhDV1hpSUs5QWkwbUtHNWoxYUdwWHNw?=
 =?utf-8?B?TG5FL3VmNHA4MW1Tc09ZMXpLWWk5NXl2eDltM0lMUzVVN29TRnZ1T2N4d3I5?=
 =?utf-8?B?UFl2S0JPamp0YUVxZDJKdG9qYW1oZWQyRGc4NjgreGRTZVVTSVpyU1JFYUp3?=
 =?utf-8?B?UFNkOGhBS0x6bTJtOEdOeEc5aWxsdWJrR3lISWY5SjE4aVltd3hIYlg0dVBj?=
 =?utf-8?B?TDNZdGJOR2R1bTJmQzEyZHNTbEV2Z0hhR3dFNGt4aW1odXZBTmZTWXhQbGwx?=
 =?utf-8?B?eVl2TWthTjNaa1JxbkllMXVVRXNQUjFTeXhSY0NseERvODkwVjJjZE5QL09I?=
 =?utf-8?B?UGZFb1pPUjF6cG5YbDFYMlM1bFUyYzdUTFlMZCtUZ3JwOEFCNGdONFlFTWpp?=
 =?utf-8?B?RHlpc0R1U1RNVHFhVVBjdGlQazNrTjllTFoycmdOSW5xTisyaEJUSzhqVjdp?=
 =?utf-8?B?QzgrZitPdnlKUzlydVVNbVNPK3hycVBQUldjUWtSK2tqdmEyUHhndzhTQkdh?=
 =?utf-8?B?UkRjZ2QxeWsvaXdMVHlRSWtrb1ZJZVdVSmFFc0NXZXZQTDZ4ODBtU1g1L0xB?=
 =?utf-8?B?SzNXTFF4NmJZU3AzT213SDlhdURYbWpsSmNXWUhBNjVvb1M4OTdpaEhQTHdu?=
 =?utf-8?B?RjVrdm5PbW9MeVV2YjBYclRjb1NUeW40L0NFclJMZkd5V21ZRDBDcktoOERp?=
 =?utf-8?B?YWdjTTFZMWN3czlkRFV0VTl0QjY2QXFxbjV4RGdxYkdmc2laZitUYVZZaWo0?=
 =?utf-8?B?WHNZQ2drWjhMU0ZhNVZIQS90NXdxbi9najBIYXdTTG5DemFyWU5pWERsN0Rl?=
 =?utf-8?B?N1BkY2JualMwaUpPWDNyNlNPcmhVSDY0QmsvNHhiRk9DYWE0Um50NjVxcCtH?=
 =?utf-8?B?SG9CUFQvV3FNdm13S3NtR09tNCtiVTZoVVdRQ3U0N3o2ZHBOTk9GN25tZ1J4?=
 =?utf-8?B?aHJ4dU9HbzJHV3JXUDV5c0xsMTNVZGpIeUNNelNKVHdvS2F6ZldsQzhKVlZr?=
 =?utf-8?B?VWh1eGU3NEtuOWQ2aUhrNG4rU21ldUFCaGx4MHhGbjlZTEJEZTkzWE4rWFR2?=
 =?utf-8?B?Z3Mvc016TFRibis1NEhsMjRPRGphTHJGWjZKbk5iMEd4ZU4rN2V2cXZKMmFC?=
 =?utf-8?B?aW8xcjRieXpzMGtWWjdBQzZEdnhLTFdoT2dQWHUxUDN1eXk4elJWK1BwVU0v?=
 =?utf-8?B?WjJhRjBBdnhmR0hBQUtqbkRIUjd5Q21hT1M3L1lBVEZxc1ovT0tscGljSUhy?=
 =?utf-8?B?cmsxUXVtS3RZYlozdEkyZHhMSVY2YWkwZXBZR0pCUnVmc1VmNFZTVzdaNUtm?=
 =?utf-8?B?Qi81UjhKN205cSs2RDRZSzVBTi9CeDlwWExnbXdDTEx6NUpOWmZyV2NiUlpN?=
 =?utf-8?B?TzE0SmpKdVBiVWZSWU5xMjk5SVFMelVqYXNHL2NuYUVtejBMbHF5Y3p4QTFr?=
 =?utf-8?B?aDdNdXJKYUlVODVxV1VnTzRtUDVYZnhTaFc1MUxUNkcxU0g4ajJ1Z1hTaEU2?=
 =?utf-8?B?UUwrV0R1bmFya2piOFdkNFBobXNFSmpIUWFicERPQXVTMzJHQ0pLbTlzZGd2?=
 =?utf-8?B?OTZtTzJyQm5UWVFVUWxjRllkUnY1WDN3eDVZZnBaNWs5S2p3UmRtRmw3cS9p?=
 =?utf-8?B?eW9yNmlNdTluakhhZVVHSkZ0ZkZPdEZBcUc3aG05NVpHUitPUXpIbDNpemdy?=
 =?utf-8?B?QmtaU0dXaFkxb3pyWERJWjFrTGtaenR0M1Jsc09jSVd3RVczclQxaWVoY2ZB?=
 =?utf-8?B?aVRqSUl1S00xSDlwb09HVGxVOHRRa0ZVNDZsekZ3dEVkTzRjcVFPaHFxVnBU?=
 =?utf-8?B?WHBJMHVlbUs0L3E3N0pjN01rb1Z1bjJ4RFlNSGJSbkU5bzBrNm9taVJRUnVE?=
 =?utf-8?B?bGpHSWFWb21NcG5hUGJPUVlDNENITldOZWZoZlhqaHhGRThZbzY3OEJpSXBI?=
 =?utf-8?B?SlZUNUN2V0V6YUdabTQvL1lwRnowNWNibFJUYkl1R25pVW9rdU9FNnNLNGJ2?=
 =?utf-8?B?d2sxS1JpbmZOc3k2bDFzTE56c3hhWkFYWExDdktFb0UwNkdLQ1FXUnkrclRk?=
 =?utf-8?B?L2Vibk9oM3d5NVBTRWRzNm8wQ200cTRUSkljbVNXVytZNmxNRkUwNmFhNmRH?=
 =?utf-8?B?VlhhaFhoZUdLR0N4V003SHNmSjNTWFk1TDByQ2Y4c3ViT3lscXJsaXZVdWZn?=
 =?utf-8?Q?uFhMXarDF0XDUAkRruwBZa0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c1d3a8bd-e6d9-4c56-b194-08ddbd5986b3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2025 13:23:56.7778 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QTB6Ocw7pHSQfBZ1W5woKClfptZfHSUClEBoAqHAPQMQPJV6JRUwNSjMH2nibAJDuAVXCxuSfrooRjMdrAjK7eM0Aq+0iGvPh3fxMGZ9sB06f/gDkAJ6IZlzQyOlypT/
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4603
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


On 04-07-2025 18:17, Jani Nikula wrote:
> On Thu, 03 Jul 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
>> On 02-07-2025 14:31, Jani Nikula wrote:
>>> On Tue, 01 Jul 2025, Lucas De Marchi <lucas.demarchi@intel.com> wrote:
>>>> On Tue, Jul 01, 2025 at 12:28:41PM +0300, Jani Nikula wrote:
>>>>> On Mon, 30 Jun 2025, Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com> wrote:
>>>>>>    The current wait_panel_on() uses intel_de_wait() with a long timeout
>>>>>>    (5000ms), which is suboptimal on Xe platforms where the underlying
>>>>>>    xe_mmio_wait32() employs an exponential backoff strategy. This leads
>>>>>>    to unnecessary delays during resume or power-on  when the panel becomes
>>>>>>    ready earlier than the full timeout.
>>>>>>
>>>>>>    This patch splits the total wait time into two pases
>>>>>>       - First wait for the typical panel-on time(180ms)
>>>>>>       - If panel is not ready , continue polling in short 20ms intervals
>>>>>>         until the maximum timeout (5000ms) is reached
>>>>> I'm *very* reluctant to merge any new custom wait hacks. I'm in the
>>>>> process of *removing* a plethora of them [1][2][3].
>>>> good riddance
>>> Yay!
>>>
>>>>> I think the question is, should xe_mmio_wait32() (and the i915
>>>>> counterpart) and the intel_de_wait*() functions be migrated to an
>>>>> interface similar to read_poll_timeout(), i.e. provide sleep and timeout
>>>>> separately, no exponential backoff. And implement the waits using
>>>>> read_poll_timeout(), or whatever Ville ends up with [4].
>>>> I saw your patch series and I'm eagerly waiting it to either propagate
>>>> it in xe or have someone merge such a patch.  I'm not sure about
>>>> removing the exponential backoff is a good thing overall, but if it's
>>>> needed then it needs to be justified to add a new function to pair with
>>>> read_poll_timeout(), not a custom driver function.
>>> While I'm negative about the patch at hand, the underlying problem is
>>> very real.
>>>
>>> I think at the very least the exponential sleep backoff needs an upper
>>> bound that's relative to the timeout. Maybe 10-25% of timeout?
>>>
>>> With the example case of 5 second timeout, the exponential backoff
>>> starting from 10 us leads to a dozen polls before reaching 100 ms
>>> elapsed time, but then polls at approximately 1 s, 2 s, 4 s, and 8 s
>>> elapsed time. Longer timeouts are of course rare, but they exhibit
>>> increasingly worse behaviour.
>>>
>>> So if what we're waiting takes 2.1 seconds, the next check will be about
>>> 2 seconds later. Similarly, if it takes 4.1 seconds, the next check will
>>> be about 4 seconds later, in this case exceeding the timeout by 3
>>> seconds.
>>>
>>> Anyway, if xe_mmio_wait32() remains as it is, with read_poll_timeout()
>>> it's trivial to do the wait in the intel_de_*() macros, in display side,
>>> with sleeps and timeouts defined in display. Because for most things the
>>> really quick fast polls are useless in display.
>>>
>> This exponential sleep back-off is causing around 120ms additional
>> delay in resume compared to  i915.
>>
>> how about polling as below , use intel_de_read and read_poll_timeout
>>
>>       ret = read_poll_timeout(intel_de_read, reg_val,
>>                       ((reg_val & mask) == value),
>>                       (20 * 1000),                        // poll every 20ms
>>                       (PANEL_MAXIMUM_ON_TIME_MS * 1000),  // total
>> timeout (us)
>>                       true,
>>                       display, pp_stat_reg);
> This would be a temporary measure pending Ville's work [1], but I'm not
> against it.
>
> Also, needs to happen in wait_panel_status() instead of adding a
> separate wait_panel_on_status() function.
>
> BR,
> Jani.
>
>
> [1] https://lore.kernel.org/r/20250702223439.19752-1-ville.syrjala@linux.intel.com

Adding this logic in wait_panel_status() is causing ~20ms delay when function called from
wait_panel_power_cycle() which expects minimal time.
Adding new function avoids this scenario.

Regards,
Dibin

>
>> Regards,
>>
>> Dibin
>>
>>> BR,
>>> Jani.
>>>
