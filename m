Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F65AACF77
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 23:30:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E690610E070;
	Tue,  6 May 2025 21:30:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ph04666/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B38C910E070;
 Tue,  6 May 2025 21:30:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746567047; x=1778103047;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=mbLVN5JFEzFE1dL1Q7tIRe5yCqFwjC2ElrkLjqQN0gE=;
 b=Ph04666/1Q0SKQh3bUkjIg7NOfN7wNFl3HKW/iujnbPaliF9jNPB0KKb
 6DeVttzaNtQdXd+qrAUhSe9RUK1h4umPYxVGva2U/rgIEWQxlJ4h+JUZq
 DkrJVsjrFoCUh7m9klCsIvnyIMfnsUJ84S6ELhBa7L4x3gqwWT8gdQNEj
 C4Won6cp0pDqGnRXIwMWRzut1mPNE6LP6SAWOFxHLrkzWHFAM1GNBpSd8
 n1rN+jovIxqUxfs3gRnmXMj4CPYbe53/+iC2NzibPZ5Hnc8cvA1+T6szm
 Sh8jeNFOqiznoyqqpoIRMvkIBnLnBUuPTZU0M9G7toXEhBIlK+OXAloPF g==;
X-CSE-ConnectionGUID: i7M1/7M6SdGAbMZBNwSikw==
X-CSE-MsgGUID: 5yP32ItTTFCyUIJo71aeyA==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="58893578"
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="58893578"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 14:30:47 -0700
X-CSE-ConnectionGUID: VR+0S9eCR1mxI5JQH4rr4g==
X-CSE-MsgGUID: XF2SqhBeSTiVFl7UD4/KVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,267,1739865600"; d="scan'208";a="140593508"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 14:30:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 14:30:46 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 14:30:46 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 14:30:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cfWevqRoqNeN+d8wpHO5FUssdY+1dsN3w1FSLrykvoN+20YUZAl0xG0kXXmMMp8NtiKglP1NcuIljXlyb/1A2AHaEbDyhxna52S/SmH5CN3jywheqRvUFjhAITB7pAPyT13KyOS5/ooI8hnHMc9nL9OEdXPd/PvLFxby+M0n3Jxyz7Y1yV6tnKLL0MAWJIYBDBZiBy4ZtThhwibbcY550VuCO9BjMRvVvOQ0Nm1sODEG6EuL0+pjwJQBDfwz4E7seDPDVarnOABJicmUPcuTJ6JLDZoBtzbB3txPXoY0iCCtXT55kEdID14oXrmzdHIbDC2dx3ngxgou6kXJAGCEGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YP5yZYJN3flwq0OkS0w8e9u6lchWbeDWGT26/e9HS5Y=;
 b=toOkhpgAB3K6pZgrfhkAAWr+WQdAVz4yTaMgF3kM2HkwthBHpnbwrsynlmI6arUuBtYrsh317q833VQFDBeOaEK0lvBG4yaWopk4m2bdmTj2RZQPAdJ2x4MxWQhG5V08nffG0uEM6GICok+c/N/Qi6BINMoSVNwKbqiI/c9CupZTvG2Kf8IPeULnuQ8eaTpZ6+RaOpXm9/qVc6Rost25Jzk25ZWXJFrZu8ErS2LnUNuWmBjQyagGEkXGY6A4sLNf2OzBOOoFJra1XsTp3kpPoMJ5//2WZS0UA5cZN6gUSvORJkbzmL1H1c20vlNLW8iseijCF0MguKsQXrpucOCvww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MN2PR11MB4614.namprd11.prod.outlook.com (2603:10b6:208:268::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 21:30:39 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8699.022; Tue, 6 May 2025
 21:30:39 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <6d8d2ce0f34a9c7361a5e2fcf96bb32a34c57e76.1746536745.git.jani.nikula@intel.com>
References: <cover.1746536745.git.jani.nikula@intel.com>
 <6d8d2ce0f34a9c7361a5e2fcf96bb32a34c57e76.1746536745.git.jani.nikula@intel.com>
Subject: Re: [PATCH 8/8] drm/i915/irq: move i915->irq_lock to display->irq.lock
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <jani.nikula@intel.com>, <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
Date: Tue, 6 May 2025 18:30:33 -0300
Message-ID: <174656703321.1401.8627403371256302933@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0272.namprd03.prod.outlook.com
 (2603:10b6:303:b5::7) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MN2PR11MB4614:EE_
X-MS-Office365-Filtering-Correlation-Id: a9013886-4a03-4bb1-cfe3-08dd8ce53ef4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?akpFelFxZVpuVDdHdEU2RnovZ0VBbStDbEJlU0thL1NwN1FOVStHSFJOSit5?=
 =?utf-8?B?UEdubzRiUFUzSjNrNGptUUFDUWxseG9JNGV2UlhQU1BIUFpja0RCWUdVRlJG?=
 =?utf-8?B?Q0NVVk1yLzh0S1ZuS1RMaURWZHBWV3RRRUNlN1crc21RbWJJQlc1Tk42Nm12?=
 =?utf-8?B?SlUwRU5ZUHpDQ3loYzBhb2lBUStFV0lqT3RNaUtveDk3SGtTclV0K2ZodEJp?=
 =?utf-8?B?c0t5ZXV6Vko1SjhpaWt1WG90T1llKzdHcnYyWkhEVWEyakxFRE5FMjUwMnZ4?=
 =?utf-8?B?K0FmQmJTa1NNVTFmTFNUdzFaRHpFekphcUR5Mk1OY1FLaThQWmdyc2Z6dFBR?=
 =?utf-8?B?NFR1eDdlank4NmhnMnJsV0dpVWl0dUlaRUtrQ25zckx6UEN2QVRyU1lWYTRs?=
 =?utf-8?B?a2Z1MVZ6WE9kT3gxUWUrdlhwbFVSbWJUR0g4dVZ5V09kVnlBRHhZZVpycmpY?=
 =?utf-8?B?S2VTYzhOWnNHcWZweTloTW9GNm14NDZUT2loSFJ4QkpvS0xSQzVuMFZGbFFa?=
 =?utf-8?B?dnlLa3JjZzdXNnNJNzYzWndyZWRFWG50V1N1SWtJcGpwcGRXK1VCbjRJV3l6?=
 =?utf-8?B?d09LdmJERWFKQnEvRGdPcHR4TnhWaGtVQlhoMUFoRWw4YjBoOSt1Sm5RU0M2?=
 =?utf-8?B?MHg1NmpVbDdUMVZmeTQrUHhudkpNUUNSUU5LYnZMcFdoUS9NS3JldTZoNUth?=
 =?utf-8?B?alJpenllOTliYU5tOEJDVXI2TlhXa3dWV2FFb1N1U1Y1L2t2Um9iMXZwUGo2?=
 =?utf-8?B?dTQyQ0puTmd2OUprWlE4V0MzUTFmYmJ5SFJuc1dhVGNvYk1lMGZxb0tZbThk?=
 =?utf-8?B?R1czT0ppTklRajNSdVFPRXlRWWw4ZFRuZ2tJNnZ1UVk2eG5GdHBlVnpmMlhR?=
 =?utf-8?B?K3pxUEw5MTFpa3VnNEVvSityT2hYNThXWGFXa0JhODB5Yy9xT2xqcSs5S3RF?=
 =?utf-8?B?RzlCMFZ5ZzJ3MkVGSjZ6RnpMeER5RUNiMWl1Y2cxZWo4MTJheWR6NldiSDVi?=
 =?utf-8?B?bUFoY0pxRWl1YzE2MmVVa0I1TVFOaHo2YzhZa3ZzdlpBd3YvWUhobWttYzhr?=
 =?utf-8?B?RjlUSW5NcG9mNjFnNi92NE5rRk13czd4enpvRnBBMzhOK1N3VkhRODhSRGNI?=
 =?utf-8?B?Y0dSQ2VsS0tzOU53d3JXV2xiOGNQdWE2RHNyVm8vd2VmTmRGZkJBRGl6OTJ1?=
 =?utf-8?B?YVhST2F3aFgzeHg2VGVPaSthT3VQZzNDTmg3ZUJRaGMxaElZRHA2NXNVUkFT?=
 =?utf-8?B?QnNBZ1o0TzkybUllcmtPOFN0VVFIMnBUM3VtV2l5NzVqZnZHWlhHNndUUTln?=
 =?utf-8?B?Tk9zNkFXZ0JoOGFINEdnUSt0dDQrU21oeXBXSU5GRWNUQitGMytpenQxZGE3?=
 =?utf-8?B?Q3lEa1JNMGU0WG9tbzV2N3VLdUw4Tk8wUTJkaXdSWkx1QzJzbzlUUkh1UWxI?=
 =?utf-8?B?ajBLUVhEeVdkZ1dFN0NVS240RGhTQmw0dnBhRFd6bHNmcVpFZ0ROZjIzRDU4?=
 =?utf-8?B?Y3VXK3FxejNlZlJ5LytMejZRUnR2UFBqUmNEVWRFekpXS3RLMGNzNitjZ001?=
 =?utf-8?B?R0dIaTMvazFTQjNGVzBvSXg0K2hWd3BiYVA2V2EyY0RRbUJoeWRRbW9KMW1H?=
 =?utf-8?B?c1FjWTcrbVVJaWhtUjZ4ZVdGT3BzL2tJcDc4NWhhSFRIclU1TzVRUkk1Q0Fa?=
 =?utf-8?B?QVROYnFZR05rMGlQR0gzR2RGUWRqc25ySWZld2x3aWlvVkIvNUhTdG1hLzJM?=
 =?utf-8?B?U0R1YjNPczhoYzRkVkh5SDJlREhlMmMwd3F1TVc3blo1a2hZNmxUWk92RDFJ?=
 =?utf-8?B?bytiMkNKc3hxeUdlWUxnc2dVQTlBYm9aYUp4THI2RFMzODd4cksxc3ZJTFJu?=
 =?utf-8?B?NUVRVnYxV0ZUZXZSdW85TmFVWVl3ajErckM4ZkF5TXhJREE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NzRNM0pBWEdzTnE0VHAxNVY2UjlTeElIcXFOYlYvTTc3ZUtTdkJneHByODVE?=
 =?utf-8?B?N05RR2FIYzh1MHVqQzJQQ0k0czg5akhoT2x0c3F5aXJGR3pvRmgzYllPQUhM?=
 =?utf-8?B?N0ZiYnd5L1MzSWJGMHU4NzdrU3FqOWthc1JnM2dQUGlIZ2pNNXRSc2VqQmYy?=
 =?utf-8?B?Y1pZcmdJQzJ1c3c1TjM4RjhlREd3eU93NlcxM0hHRlNlY2xiTnBxQ1crT3d5?=
 =?utf-8?B?Nm93RWFrNzdVWnlyN0xURFBxWW5heEp6eDJ2SXdsTEZvVkQxNk4wd1ZrV3pt?=
 =?utf-8?B?enNzdVAvTytVbHB4elVCN292OUIxL2Jma3BtS3lvQ3pwZlJpcW50RGFRWkt3?=
 =?utf-8?B?OEV4dDdSYkFpbXVaV1JuZnV3S2JWUDU4eFpKclpPb25DSWJJcE1iTjFXTldT?=
 =?utf-8?B?Z0MyVFhqTEhaWVdvVXdUbkE2LzgyaXFWa2tsTXcvM3h3MGZlcFdFSGRaN0JF?=
 =?utf-8?B?YUZ5OTZNZlhTSnhNcUtkaENXUVl2T2doQnRMVFBrelZ4S0NCUmpNdnhBdkMx?=
 =?utf-8?B?ZUlHYVd6VUg1b1VVMUkvcXRJUUdSdndxd2ZoTkVCanV4bDVZTjhhVXY2bWtx?=
 =?utf-8?B?Z05wNC80Nm1GVWN4UWZWTng2SjhPM1JmWkNLeFV5bmtkYWlLMlkwZkxUa3Zs?=
 =?utf-8?B?MFpHTlVRUkYyRmdNWkJwc1A5Wk9IbEZ0QWxCbm1TNTExRnY1QWl2SEc3ZEV0?=
 =?utf-8?B?RjBsN3Fob0NNSDY1Nk50WnZjWjhudVZFR1VHS01wMjgwcDMwdnQzeTBLbG9n?=
 =?utf-8?B?Y2t5NGIwMUJmQkdWcEh6alNWaCt3eFB3UmJhQmJnQldsS0pJdnN1aWpTbDkx?=
 =?utf-8?B?NE9JUy9JUkRiMGEyTk5NaUVQQnRNWFpKbVdvRXlqeTJMVGJQd1VodlFKTk14?=
 =?utf-8?B?c2lyWjBEeUdBNnFjTUFsK3RzOSt1UlNLK0JNQXBzMjg5RHZ5N0UwMk9rYnBT?=
 =?utf-8?B?cWdkVWRJYlN5eEpQaWJTNjJXWEJ1MUZKRzdSVmxnZUVmcUJFS2hoWCs5M3V4?=
 =?utf-8?B?dDNOVXFRYm95bllVL1lzUVQ4cjVlV3BQWkFUcXZIVU9qWmVpSDdvMDBYODVD?=
 =?utf-8?B?RmF1WGNWU2xyejQvaE9NNWRBZmFwa0lVSEV5ZzN4VUJ4SlI0VjFRRTU4eUFR?=
 =?utf-8?B?Qy8yaGc4OFMyamkwRkRLSGVCRTY2V1VxbXhOa1BzeDltZGJGT2xTQVhJVlMz?=
 =?utf-8?B?dTM0STU3T2IreUxiTW5vWUQ4L3RTQXRYWTlDRTFYZWg0emNta0pCVm9uSGNv?=
 =?utf-8?B?WWpYK3VWVDU1V2drUVR3OFpORjJId3FRUlVFN09lTitjekM3eU5OWFZqby9p?=
 =?utf-8?B?OTMvaHg4RktISjRuWHBFT0d4OXliQkJHSjNZV1RkdjNvUWNXZUdHdlJqbEJR?=
 =?utf-8?B?MjdNcG1RNmtxamdpVENxTnk5THRpL3pXVDV0QjVMY0ZKS3FtcXFQVHF6U21i?=
 =?utf-8?B?RG9LNW53VXNYNWRWaEhnT0Mxc1d3eGtCc2J6VXdQaDJDUGlEUHVISE4yYnRl?=
 =?utf-8?B?M3hTTTZxaktxU1p2eDMyZFU3OTRYdmR1ODBvTCtBWnVYaWQrdE9rR05NL21C?=
 =?utf-8?B?TG1OM2l2OS9XNkJRNnZiWTVWQVh1eDY1NWZGcE5ROGhoZ3FWYngydzIzM2dz?=
 =?utf-8?B?eHE1dVJUaGZaZ2hGOXBXWDZUNWhCNEZ6REM1WWswL1ptRG1yWEo5a01NSVF2?=
 =?utf-8?B?bTVxUmQ0M3R4ZkJ3VGlTWTZxOHB2Sms5WitsNVpxTmg2a3dGUFJlZlpTS1B3?=
 =?utf-8?B?RW5rMFQ3UWF1N1B1b05leVh2dytLNkE0eFBVZHpYZXRoK1NWcXQ0T3Y1elVC?=
 =?utf-8?B?Rms4NVRwekd3NUg0NzZZVjFVQW5aTEhTSDQ5WGxENC9qVnJOZDdvYjRnUTR6?=
 =?utf-8?B?Vm8rUnBLUDdkdkw5c25kVkJ0aXRQQ3h1WU42VjNxck96bHFrUFBpK2lzYy82?=
 =?utf-8?B?WkZvUXE2SGFSVXYycmwra0xQVThtUWZtemZzUHlXRGFaRTlLaktzR25UVTN2?=
 =?utf-8?B?QUNvelMxN0IyZCt4MEVjSjNCMUhBczJHeFFlVmNEb3hpc3EwSEcwOTVTUElU?=
 =?utf-8?B?OTRmMjJvNXgydnZLR2dMclVTdDdERW00amxxZWxrZmcyc2gzWGZaR3dwTU9O?=
 =?utf-8?B?SXB2K1o5Ri9qbUdMZldqMHN1VFhYOGlWbEhDRWRnOHJPU1ZvZFR5QW1VOVJk?=
 =?utf-8?B?RkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a9013886-4a03-4bb1-cfe3-08dd8ce53ef4
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 21:30:39.3832 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j4jhnOBOYXm04u6cTTnXjRUywlHEjPtmx+Oi7a8VOYLjVHFwkwpV4R5v1ymWs8Ul6GIfflt+kk5LSEcinxO+kw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4614
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

Quoting Jani Nikula (2025-05-06 10:06:50-03:00)
>Observe that i915->irq_lock is no longer used to protect anything
>outside of display. Make it a display thing.
>
>This allows us to remove the ugly #define irq_lock irq.lock hack from xe
>compat header.
>
>Note that this is slightly more subtle than it first looks. For i915,
>there's no functional change here. The lock is moved. However, for xe,
>we'll now have *two* locks, xe->irq.lock and display->irq.lock. These
>should protect different things, though. Indeed, nesting in the past
>would've lead to a deadlock because they were the same lock.
>
>With the i915 references gone, we can make a handful more files
>independent of i915_drv.h.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Besides reviewing the patch itself, I also did a git-grep to check for
lexical references to irq_lock in the code after this patch is applied.

I found 2 references in comments:

 (1) A reference to "drm_i915_private::irq_lock" in the comment for member
     detection_work_enabled of struct intel_hotplug. I think we can
     simply refer to "intel_display::irq::lock" now.

 (2) A reference to "i915->irq_lock" in a comment inside struct intel_rps.
     Looking at the history, it looks like we started using gt->irq_lock
     with commit d762043f7ab1 ("drm/i915: Extract GT powermanagement
     interrupt handling"), which failed to update the comment. I think
     we can update the comment to make it more accurate. I guess that
     could be on a patch of its own...

So, with the small tweak suggested in (1),

  Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> drivers/gpu/drm/i915/display/i9xx_plane.c     |  43 +++---
> .../gpu/drm/i915/display/intel_display_core.h |   3 +
> .../gpu/drm/i915/display/intel_display_irq.c  | 114 +++++++---------
> .../gpu/drm/i915/display/intel_display_rps.c  |  12 +-
> .../drm/i915/display/intel_display_types.h    |   2 +-
> drivers/gpu/drm/i915/display/intel_dp.c       |  10 +-
> drivers/gpu/drm/i915/display/intel_dsi_vbt.c  |   9 +-
> .../drm/i915/display/intel_fifo_underrun.c    |  44 +++---
> drivers/gpu/drm/i915/display/intel_hotplug.c  | 129 +++++++-----------
> .../gpu/drm/i915/display/intel_hotplug_irq.c  |  22 ++-
> drivers/gpu/drm/i915/display/intel_tv.c       |  14 +-
> .../drm/i915/display/skl_universal_plane.c    |  10 +-
> drivers/gpu/drm/i915/i915_driver.c            |   1 -
> drivers/gpu/drm/i915/i915_drv.h               |   2 -
> .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  11 --
> 15 files changed, 168 insertions(+), 258 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/i9xx_plane.c b/drivers/gpu/drm/i=
915/display/i9xx_plane.c
>index 5e8344fdfc28..83778a6ff007 100644
>--- a/drivers/gpu/drm/i915/display/i9xx_plane.c
>+++ b/drivers/gpu/drm/i915/display/i9xx_plane.c
>@@ -7,9 +7,10 @@
> #include <drm/drm_atomic_helper.h>
> #include <drm/drm_blend.h>
> #include <drm/drm_fourcc.h>
>+#include <drm/drm_print.h>
>=20
>-#include "i915_drv.h"
> #include "i915_reg.h"
>+#include "i915_utils.h"
> #include "i9xx_plane.h"
> #include "i9xx_plane_regs.h"
> #include "intel_atomic.h"
>@@ -631,92 +632,84 @@ static void
> bdw_primary_enable_flip_done(struct intel_plane *plane)
> {
>         struct intel_display *display =3D to_intel_display(plane);
>-        struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>         enum pipe pipe =3D plane->pipe;
>=20
>-        spin_lock_irq(&i915->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         bdw_enable_pipe_irq(display, pipe, GEN8_PIPE_PRIMARY_FLIP_DONE);
>-        spin_unlock_irq(&i915->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> static void
> bdw_primary_disable_flip_done(struct intel_plane *plane)
> {
>         struct intel_display *display =3D to_intel_display(plane);
>-        struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>         enum pipe pipe =3D plane->pipe;
>=20
>-        spin_lock_irq(&i915->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         bdw_disable_pipe_irq(display, pipe, GEN8_PIPE_PRIMARY_FLIP_DONE);
>-        spin_unlock_irq(&i915->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> static void
> ivb_primary_enable_flip_done(struct intel_plane *plane)
> {
>         struct intel_display *display =3D to_intel_display(plane);
>-        struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>=20
>-        spin_lock_irq(&i915->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         ilk_enable_display_irq(display, DE_PLANE_FLIP_DONE_IVB(plane->i9x=
x_plane));
>-        spin_unlock_irq(&i915->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> static void
> ivb_primary_disable_flip_done(struct intel_plane *plane)
> {
>         struct intel_display *display =3D to_intel_display(plane);
>-        struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>=20
>-        spin_lock_irq(&i915->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         ilk_disable_display_irq(display, DE_PLANE_FLIP_DONE_IVB(plane->i9=
xx_plane));
>-        spin_unlock_irq(&i915->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> static void
> ilk_primary_enable_flip_done(struct intel_plane *plane)
> {
>         struct intel_display *display =3D to_intel_display(plane);
>-        struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>=20
>-        spin_lock_irq(&i915->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         ilk_enable_display_irq(display, DE_PLANE_FLIP_DONE(plane->i9xx_pl=
ane));
>-        spin_unlock_irq(&i915->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> static void
> ilk_primary_disable_flip_done(struct intel_plane *plane)
> {
>         struct intel_display *display =3D to_intel_display(plane);
>-        struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>=20
>-        spin_lock_irq(&i915->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         ilk_disable_display_irq(display, DE_PLANE_FLIP_DONE(plane->i9xx_p=
lane));
>-        spin_unlock_irq(&i915->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> static void
> vlv_primary_enable_flip_done(struct intel_plane *plane)
> {
>         struct intel_display *display =3D to_intel_display(plane);
>-        struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>         enum pipe pipe =3D plane->pipe;
>=20
>-        spin_lock_irq(&i915->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         i915_enable_pipestat(display, pipe, PLANE_FLIP_DONE_INT_STATUS_VL=
V);
>-        spin_unlock_irq(&i915->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> static void
> vlv_primary_disable_flip_done(struct intel_plane *plane)
> {
>         struct intel_display *display =3D to_intel_display(plane);
>-        struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>         enum pipe pipe =3D plane->pipe;
>=20
>-        spin_lock_irq(&i915->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         i915_disable_pipestat(display, pipe, PLANE_FLIP_DONE_INT_STATUS_V=
LV);
>-        spin_unlock_irq(&i915->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> static bool i9xx_plane_can_async_flip(u64 modifier)
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/g=
pu/drm/i915/display/intel_display_core.h
>index dc834cef75c7..ebbd3618260c 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -458,6 +458,9 @@ struct intel_display {
>         } ips;
>=20
>         struct {
>+                /* protects the irq masks */
>+                spinlock_t lock;
>+
>                 /*
>                  * Most platforms treat the display irq block as an alway=
s-on
>                  * power domain. vlv/chv can disable it at runtime and ne=
ed
>diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gp=
u/drm/i915/display/intel_display_irq.c
>index 264ddeba121b..3e73832e5e81 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_irq.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
>@@ -135,7 +135,7 @@ void ilk_update_display_irq(struct intel_display *disp=
lay,
>         struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         u32 new_val;
>=20
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>         drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
>=20
>         new_val =3D dev_priv->irq_mask;
>@@ -173,7 +173,7 @@ void bdw_update_port_irq(struct intel_display *display=
,
>         u32 new_val;
>         u32 old_val;
>=20
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
>=20
>@@ -206,7 +206,7 @@ static void bdw_update_pipe_irq(struct intel_display *=
display,
>         struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         u32 new_val;
>=20
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
>=20
>@@ -254,7 +254,7 @@ void ibx_display_interrupt_update(struct intel_display=
 *display,
>=20
>         drm_WARN_ON(display->drm, enabled_irq_mask & ~interrupt_mask);
>=20
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         if (drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv)))
>                 return;
>@@ -276,11 +276,10 @@ void ibx_disable_display_interrupt(struct intel_disp=
lay *display, u32 bits)
> u32 i915_pipestat_enable_mask(struct intel_display *display,
>                               enum pipe pipe)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         u32 status_mask =3D display->irq.pipestat_irq_mask[pipe];
>         u32 enable_mask =3D status_mask << 16;
>=20
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         if (DISPLAY_VER(display) < 5)
>                 goto out;
>@@ -329,7 +328,7 @@ void i915_enable_pipestat(struct intel_display *displa=
y,
>                       "pipe %c: status_mask=3D0x%x\n",
>                       pipe_name(pipe), status_mask);
>=20
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>         drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv));
>=20
>         if ((display->irq.pipestat_irq_mask[pipe] & status_mask) =3D=3D s=
tatus_mask)
>@@ -353,7 +352,7 @@ void i915_disable_pipestat(struct intel_display *displ=
ay,
>                       "pipe %c: status_mask=3D0x%x\n",
>                       pipe_name(pipe), status_mask);
>=20
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>         drm_WARN_ON(display->drm, !intel_irqs_enabled(dev_priv));
>=20
>         if ((display->irq.pipestat_irq_mask[pipe] & status_mask) =3D=3D 0=
)
>@@ -380,22 +379,20 @@ static bool i915_has_legacy_blc_interrupt(struct int=
el_display *display)
> /* enable ASLE pipestat for OpRegion */
> static void i915_enable_asle_pipestat(struct intel_display *display)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>-
>         if (!intel_opregion_asle_present(display))
>                 return;
>=20
>         if (!i915_has_legacy_blc_interrupt(display))
>                 return;
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>=20
>         i915_enable_pipestat(display, PIPE_B, PIPE_LEGACY_BLC_EVENT_STATU=
S);
>         if (DISPLAY_VER(display) >=3D 4)
>                 i915_enable_pipestat(display, PIPE_A,
>                                      PIPE_LEGACY_BLC_EVENT_STATUS);
>=20
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> #if IS_ENABLED(CONFIG_DEBUG_FS)
>@@ -514,14 +511,13 @@ static void i9xx_pipestat_irq_reset(struct intel_dis=
play *display)
> void i9xx_pipestat_irq_ack(struct intel_display *display,
>                            u32 iir, u32 pipe_stats[I915_MAX_PIPES])
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         enum pipe pipe;
>=20
>-        spin_lock(&dev_priv->irq_lock);
>+        spin_lock(&display->irq.lock);
>=20
>         if ((display->platform.valleyview || display->platform.cherryview=
) &&
>             !display->irq.vlv_display_irqs_enabled) {
>-                spin_unlock(&dev_priv->irq_lock);
>+                spin_unlock(&display->irq.lock);
>                 return;
>         }
>=20
>@@ -576,7 +572,7 @@ void i9xx_pipestat_irq_ack(struct intel_display *displ=
ay,
>                         intel_de_write(display, reg, enable_mask);
>                 }
>         }
>-        spin_unlock(&dev_priv->irq_lock);
>+        spin_unlock(&display->irq.lock);
> }
>=20
> void i915_pipestat_irq_handler(struct intel_display *display,
>@@ -1566,13 +1562,12 @@ void i915gm_irq_cstate_wa(struct intel_display *di=
splay, bool enable)
> int i8xx_enable_vblank(struct drm_crtc *crtc)
> {
>         struct intel_display *display =3D to_intel_display(crtc->dev);
>-        struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
>         enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
>         unsigned long irqflags;
>=20
>-        spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
>+        spin_lock_irqsave(&display->irq.lock, irqflags);
>         i915_enable_pipestat(display, pipe, PIPE_VBLANK_INTERRUPT_STATUS)=
;
>-        spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>+        spin_unlock_irqrestore(&display->irq.lock, irqflags);
>=20
>         return 0;
> }
>@@ -1580,13 +1575,12 @@ int i8xx_enable_vblank(struct drm_crtc *crtc)
> void i8xx_disable_vblank(struct drm_crtc *crtc)
> {
>         struct intel_display *display =3D to_intel_display(crtc->dev);
>-        struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
>         enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
>         unsigned long irqflags;
>=20
>-        spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
>+        spin_lock_irqsave(&display->irq.lock, irqflags);
>         i915_disable_pipestat(display, pipe, PIPE_VBLANK_INTERRUPT_STATUS=
);
>-        spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>+        spin_unlock_irqrestore(&display->irq.lock, irqflags);
> }
>=20
> int i915gm_enable_vblank(struct drm_crtc *crtc)
>@@ -1610,14 +1604,13 @@ void i915gm_disable_vblank(struct drm_crtc *crtc)
> int i965_enable_vblank(struct drm_crtc *crtc)
> {
>         struct intel_display *display =3D to_intel_display(crtc->dev);
>-        struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
>         enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
>         unsigned long irqflags;
>=20
>-        spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
>+        spin_lock_irqsave(&display->irq.lock, irqflags);
>         i915_enable_pipestat(display, pipe,
>                              PIPE_START_VBLANK_INTERRUPT_STATUS);
>-        spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>+        spin_unlock_irqrestore(&display->irq.lock, irqflags);
>=20
>         return 0;
> }
>@@ -1625,28 +1618,26 @@ int i965_enable_vblank(struct drm_crtc *crtc)
> void i965_disable_vblank(struct drm_crtc *crtc)
> {
>         struct intel_display *display =3D to_intel_display(crtc->dev);
>-        struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
>         enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
>         unsigned long irqflags;
>=20
>-        spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
>+        spin_lock_irqsave(&display->irq.lock, irqflags);
>         i915_disable_pipestat(display, pipe,
>                               PIPE_START_VBLANK_INTERRUPT_STATUS);
>-        spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>+        spin_unlock_irqrestore(&display->irq.lock, irqflags);
> }
>=20
> int ilk_enable_vblank(struct drm_crtc *crtc)
> {
>         struct intel_display *display =3D to_intel_display(crtc->dev);
>-        struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
>         enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
>         unsigned long irqflags;
>         u32 bit =3D DISPLAY_VER(display) >=3D 7 ?
>                 DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
>=20
>-        spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
>+        spin_lock_irqsave(&display->irq.lock, irqflags);
>         ilk_enable_display_irq(display, bit);
>-        spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>+        spin_unlock_irqrestore(&display->irq.lock, irqflags);
>=20
>         /* Even though there is no DMC, frame counter can get stuck when
>          * PSR is active as no frames are generated.
>@@ -1660,15 +1651,14 @@ int ilk_enable_vblank(struct drm_crtc *crtc)
> void ilk_disable_vblank(struct drm_crtc *crtc)
> {
>         struct intel_display *display =3D to_intel_display(crtc->dev);
>-        struct drm_i915_private *dev_priv =3D to_i915(crtc->dev);
>         enum pipe pipe =3D to_intel_crtc(crtc)->pipe;
>         unsigned long irqflags;
>         u32 bit =3D DISPLAY_VER(display) >=3D 7 ?
>                 DE_PIPE_VBLANK_IVB(pipe) : DE_PIPE_VBLANK(pipe);
>=20
>-        spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
>+        spin_lock_irqsave(&display->irq.lock, irqflags);
>         ilk_disable_display_irq(display, bit);
>-        spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>+        spin_unlock_irqrestore(&display->irq.lock, irqflags);
> }
>=20
> static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
>@@ -1707,7 +1697,6 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
> {
>         struct intel_crtc *crtc =3D to_intel_crtc(_crtc);
>         struct intel_display *display =3D to_intel_display(crtc);
>-        struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>         enum pipe pipe =3D crtc->pipe;
>         unsigned long irqflags;
>=20
>@@ -1717,9 +1706,9 @@ int bdw_enable_vblank(struct drm_crtc *_crtc)
>         if (crtc->vblank_psr_notify && display->irq.vblank_enable_count++=
 =3D=3D 0)
>                 schedule_work(&display->irq.vblank_notify_work);
>=20
>-        spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
>+        spin_lock_irqsave(&display->irq.lock, irqflags);
>         bdw_enable_pipe_irq(display, pipe, GEN8_PIPE_VBLANK);
>-        spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>+        spin_unlock_irqrestore(&display->irq.lock, irqflags);
>=20
>         /* Even if there is no DMC, frame counter can get stuck when
>          * PSR is active as no frames are generated, so check only for PS=
R.
>@@ -1734,16 +1723,15 @@ void bdw_disable_vblank(struct drm_crtc *_crtc)
> {
>         struct intel_crtc *crtc =3D to_intel_crtc(_crtc);
>         struct intel_display *display =3D to_intel_display(crtc);
>-        struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>         enum pipe pipe =3D crtc->pipe;
>         unsigned long irqflags;
>=20
>         if (gen11_dsi_configure_te(crtc, false))
>                 return;
>=20
>-        spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
>+        spin_lock_irqsave(&display->irq.lock, irqflags);
>         bdw_disable_pipe_irq(display, pipe, GEN8_PIPE_VBLANK);
>-        spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
>+        spin_unlock_irqrestore(&display->irq.lock, irqflags);
>=20
>         if (crtc->vblank_psr_notify && --display->irq.vblank_enable_count=
 =3D=3D 0)
>                 schedule_work(&display->irq.vblank_notify_work);
>@@ -1880,12 +1868,10 @@ static void _vlv_display_irq_reset(struct intel_di=
splay *display)
>=20
> void vlv_display_irq_reset(struct intel_display *display)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>-
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         if (display->irq.vlv_display_irqs_enabled)
>                 _vlv_display_irq_reset(display);
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> void i9xx_display_irq_reset(struct intel_display *display)
>@@ -1900,33 +1886,29 @@ void i9xx_display_irq_reset(struct intel_display *=
display)
>=20
> void i915_display_irq_postinstall(struct intel_display *display)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>-
>         /*
>          * Interrupt setup is already guaranteed to be single-threaded, t=
his is
>          * just to make the assert_spin_locked check happy.
>          */
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         i915_enable_pipestat(display, PIPE_A, PIPE_CRC_DONE_INTERRUPT_STA=
TUS);
>         i915_enable_pipestat(display, PIPE_B, PIPE_CRC_DONE_INTERRUPT_STA=
TUS);
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
>=20
>         i915_enable_asle_pipestat(display);
> }
>=20
> void i965_display_irq_postinstall(struct intel_display *display)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>-
>         /*
>          * Interrupt setup is already guaranteed to be single-threaded, t=
his is
>          * just to make the assert_spin_locked check happy.
>          */
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         i915_enable_pipestat(display, PIPE_A, PIPE_GMBUS_INTERRUPT_STATUS=
);
>         i915_enable_pipestat(display, PIPE_A, PIPE_CRC_DONE_INTERRUPT_STA=
TUS);
>         i915_enable_pipestat(display, PIPE_B, PIPE_CRC_DONE_INTERRUPT_STA=
TUS);
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
>=20
>         i915_enable_asle_pipestat(display);
> }
>@@ -1982,12 +1964,10 @@ static void _vlv_display_irq_postinstall(struct in=
tel_display *display)
>=20
> void vlv_display_irq_postinstall(struct intel_display *display)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>-
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         if (display->irq.vlv_display_irqs_enabled)
>                 _vlv_display_irq_postinstall(display);
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> void ibx_display_irq_reset(struct intel_display *display)
>@@ -2084,10 +2064,10 @@ void gen8_irq_power_well_post_enable(struct intel_=
display *display,
>                 gen8_de_pipe_flip_done_mask(display);
>         enum pipe pipe;
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>=20
>         if (!intel_irqs_enabled(dev_priv)) {
>-                spin_unlock_irq(&dev_priv->irq_lock);
>+                spin_unlock_irq(&display->irq.lock);
>                 return;
>         }
>=20
>@@ -2096,7 +2076,7 @@ void gen8_irq_power_well_post_enable(struct intel_di=
splay *display,
>                                             display->irq.de_irq_mask[pipe=
],
>                                             ~display->irq.de_irq_mask[pip=
e] | extra_ier);
>=20
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> void gen8_irq_power_well_pre_disable(struct intel_display *display,
>@@ -2105,17 +2085,17 @@ void gen8_irq_power_well_pre_disable(struct intel_=
display *display,
>         struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         enum pipe pipe;
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>=20
>         if (!intel_irqs_enabled(dev_priv)) {
>-                spin_unlock_irq(&dev_priv->irq_lock);
>+                spin_unlock_irq(&display->irq.lock);
>                 return;
>         }
>=20
>         for_each_pipe_masked(display, pipe, pipe_mask)
>                 intel_display_irq_regs_reset(display, GEN8_DE_PIPE_IRQ_RE=
GS(pipe));
>=20
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
>=20
>         /* make sure we're done processing display irqs */
>         intel_synchronize_irq(dev_priv);
>@@ -2153,7 +2133,7 @@ void valleyview_enable_display_irqs(struct intel_dis=
play *display)
> {
>         struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>=20
>         if (display->irq.vlv_display_irqs_enabled)
>                 goto out;
>@@ -2166,14 +2146,14 @@ void valleyview_enable_display_irqs(struct intel_d=
isplay *display)
>         }
>=20
> out:
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> void valleyview_disable_display_irqs(struct intel_display *display)
> {
>         struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>=20
>         if (!display->irq.vlv_display_irqs_enabled)
>                 goto out;
>@@ -2183,7 +2163,7 @@ void valleyview_disable_display_irqs(struct intel_di=
splay *display)
>         if (intel_irqs_enabled(dev_priv))
>                 _vlv_display_irq_reset(display);
> out:
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> void ilk_de_irq_postinstall(struct intel_display *display)
>@@ -2371,6 +2351,8 @@ void dg1_de_irq_postinstall(struct intel_display *di=
splay)
>=20
> void intel_display_irq_init(struct intel_display *display)
> {
>+        spin_lock_init(&display->irq.lock);
>+
>         display->drm->vblank_disable_immediate =3D true;
>=20
>         intel_hotplug_irq_init(display);
>diff --git a/drivers/gpu/drm/i915/display/intel_display_rps.c b/drivers/gp=
u/drm/i915/display/intel_display_rps.c
>index 941bff5a5eb0..678b24115951 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_rps.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_rps.c
>@@ -86,20 +86,16 @@ void intel_display_rps_mark_interactive(struct intel_d=
isplay *display,
>=20
> void ilk_display_rps_enable(struct intel_display *display)
> {
>-        struct drm_i915_private *i915 =3D to_i915(display->drm);
>-
>-        spin_lock(&i915->irq_lock);
>+        spin_lock(&display->irq.lock);
>         ilk_enable_display_irq(display, DE_PCU_EVENT);
>-        spin_unlock(&i915->irq_lock);
>+        spin_unlock(&display->irq.lock);
> }
>=20
> void ilk_display_rps_disable(struct intel_display *display)
> {
>-        struct drm_i915_private *i915 =3D to_i915(display->drm);
>-
>-        spin_lock(&i915->irq_lock);
>+        spin_lock(&display->irq.lock);
>         ilk_disable_display_irq(display, DE_PCU_EVENT);
>-        spin_unlock(&i915->irq_lock);
>+        spin_unlock(&display->irq.lock);
> }
>=20
> void ilk_display_rps_irq_handler(struct intel_display *display)
>diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/=
gpu/drm/i915/display/intel_display_types.h
>index 7415564d058a..d6d0440dcee9 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_types.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>@@ -1388,7 +1388,7 @@ struct intel_crtc {
>         /* armed event for DSB based updates */
>         struct drm_pending_vblank_event *dsb_event;
>=20
>-        /* Access to these should be protected by dev_priv->irq_lock. */
>+        /* Access to these should be protected by display->irq.lock. */
>         bool cpu_fifo_underrun_disabled;
>         bool pch_fifo_underrun_disabled;
>=20
>diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i91=
5/display/intel_dp.c
>index b299b5d8b68e..593b29b56714 100644
>--- a/drivers/gpu/drm/i915/display/intel_dp.c
>+++ b/drivers/gpu/drm/i915/display/intel_dp.c
>@@ -45,12 +45,13 @@
> #include <drm/drm_crtc.h>
> #include <drm/drm_edid.h>
> #include <drm/drm_fixed.h>
>+#include <drm/drm_print.h>
> #include <drm/drm_probe_helper.h>
>=20
> #include "g4x_dp.h"
>-#include "i915_drv.h"
> #include "i915_irq.h"
> #include "i915_reg.h"
>+#include "i915_utils.h"
> #include "intel_alpm.h"
> #include "intel_atomic.h"
> #include "intel_audio.h"
>@@ -58,6 +59,7 @@
> #include "intel_combo_phy_regs.h"
> #include "intel_connector.h"
> #include "intel_crtc.h"
>+#include "intel_crtc_state_dump.h"
> #include "intel_cx0_phy.h"
> #include "intel_ddi.h"
> #include "intel_de.h"
>@@ -92,7 +94,6 @@
> #include "intel_tc.h"
> #include "intel_vdsc.h"
> #include "intel_vrr.h"
>-#include "intel_crtc_state_dump.h"
>=20
> /* DP DSC throughput values used for slice count calculations KPixels/s *=
/
> #define DP_DSC_PEAK_PIXEL_RATE                        2720000
>@@ -6219,12 +6220,11 @@ static void intel_dp_oob_hotplug_event(struct drm_=
connector *_connector,
>         struct intel_connector *connector =3D to_intel_connector(_connect=
or);
>         struct intel_display *display =3D to_intel_display(connector);
>         struct intel_encoder *encoder =3D intel_attached_encoder(connecto=
r);
>-        struct drm_i915_private *i915 =3D to_i915(display->drm);
>         bool hpd_high =3D hpd_state =3D=3D connector_status_connected;
>         unsigned int hpd_pin =3D encoder->hpd_pin;
>         bool need_work =3D false;
>=20
>-        spin_lock_irq(&i915->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         if (hpd_high !=3D test_bit(hpd_pin, &display->hotplug.oob_hotplug=
_last_state)) {
>                 display->hotplug.event_bits |=3D BIT(hpd_pin);
>=20
>@@ -6233,7 +6233,7 @@ static void intel_dp_oob_hotplug_event(struct drm_co=
nnector *_connector,
>                              hpd_high);
>                 need_work =3D true;
>         }
>-        spin_unlock_irq(&i915->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
>=20
>         if (need_work)
>                 intel_hpd_schedule_detection(display);
>diff --git a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c b/drivers/gpu/dr=
m/i915/display/intel_dsi_vbt.c
>index 4e92504f5c14..29c920983413 100644
>--- a/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>+++ b/drivers/gpu/drm/i915/display/intel_dsi_vbt.c
>@@ -31,16 +31,16 @@
> #include <linux/pinctrl/machine.h>
> #include <linux/slab.h>
> #include <linux/string_helpers.h>
>-
> #include <linux/unaligned.h>
>=20
> #include <drm/drm_crtc.h>
> #include <drm/drm_edid.h>
>+#include <drm/drm_print.h>
>=20
> #include <video/mipi_display.h>
>=20
>-#include "i915_drv.h"
> #include "i915_reg.h"
>+#include "i915_utils.h"
> #include "intel_de.h"
> #include "intel_display_types.h"
> #include "intel_dsi.h"
>@@ -321,7 +321,6 @@ enum {
> static void icl_native_gpio_set_value(struct intel_display *display,
>                                       int gpio, bool value)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         int index;
>=20
>         if (drm_WARN_ON(display->drm, DISPLAY_VER(display) =3D=3D 11 && g=
pio >=3D MIPI_RESET_2))
>@@ -341,12 +340,12 @@ static void icl_native_gpio_set_value(struct intel_d=
isplay *display,
>                  * The locking protects against concurrent SHOTPLUG_CTL_D=
DI
>                  * modifications in irq setup and handling.
>                  */
>-                spin_lock_irq(&dev_priv->irq_lock);
>+                spin_lock_irq(&display->irq.lock);
>                 intel_de_rmw(display, SHOTPLUG_CTL_DDI,
>                              SHOTPLUG_CTL_DDI_HPD_ENABLE(index) |
>                              SHOTPLUG_CTL_DDI_HPD_OUTPUT_DATA(index),
>                              value ? SHOTPLUG_CTL_DDI_HPD_OUTPUT_DATA(ind=
ex) : 0);
>-                spin_unlock_irq(&dev_priv->irq_lock);
>+                spin_unlock_irq(&display->irq.lock);
>                 break;
>         case MIPI_AVDD_EN_1:
>         case MIPI_AVDD_EN_2:
>diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c b/drivers/=
gpu/drm/i915/display/intel_fifo_underrun.c
>index 7c7cd29b0944..2a787897b2d3 100644
>--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.c
>@@ -25,7 +25,8 @@
>  *
>  */
>=20
>-#include "i915_drv.h"
>+#include <drm/drm_print.h>
>+
> #include "i915_reg.h"
> #include "intel_de.h"
> #include "intel_display_irq.h"
>@@ -57,11 +58,10 @@
>=20
> static bool ivb_can_enable_err_int(struct intel_display *display)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         struct intel_crtc *crtc;
>         enum pipe pipe;
>=20
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         for_each_pipe(display, pipe) {
>                 crtc =3D intel_crtc_for_pipe(display, pipe);
>@@ -75,11 +75,10 @@ static bool ivb_can_enable_err_int(struct intel_displa=
y *display)
>=20
> static bool cpt_can_enable_serr_int(struct intel_display *display)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         enum pipe pipe;
>         struct intel_crtc *crtc;
>=20
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         for_each_pipe(display, pipe) {
>                 crtc =3D intel_crtc_for_pipe(display, pipe);
>@@ -94,11 +93,10 @@ static bool cpt_can_enable_serr_int(struct intel_displ=
ay *display)
> static void i9xx_check_fifo_underruns(struct intel_crtc *crtc)
> {
>         struct intel_display *display =3D to_intel_display(crtc);
>-        struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>         i915_reg_t reg =3D PIPESTAT(display, crtc->pipe);
>         u32 enable_mask;
>=20
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         if ((intel_de_read(display, reg) & PIPE_FIFO_UNDERRUN_STATUS) =3D=
=3D 0)
>                 return;
>@@ -115,10 +113,9 @@ static void i9xx_set_fifo_underrun_reporting(struct i=
ntel_display *display,
>                                              enum pipe pipe,
>                                              bool enable, bool old)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         i915_reg_t reg =3D PIPESTAT(display, pipe);
>=20
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         if (enable) {
>                 u32 enable_mask =3D i915_pipestat_enable_mask(display, pi=
pe);
>@@ -148,11 +145,10 @@ static void ilk_set_fifo_underrun_reporting(struct i=
ntel_display *display,
> static void ivb_check_fifo_underruns(struct intel_crtc *crtc)
> {
>         struct intel_display *display =3D to_intel_display(crtc);
>-        struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>         enum pipe pipe =3D crtc->pipe;
>         u32 err_int =3D intel_de_read(display, GEN7_ERR_INT);
>=20
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         if ((err_int & ERR_INT_FIFO_UNDERRUN(pipe)) =3D=3D 0)
>                 return;
>@@ -213,11 +209,10 @@ static void ibx_set_fifo_underrun_reporting(struct i=
ntel_display *display,
> static void cpt_check_pch_fifo_underruns(struct intel_crtc *crtc)
> {
>         struct intel_display *display =3D to_intel_display(crtc);
>-        struct drm_i915_private *dev_priv =3D to_i915(crtc->base.dev);
>         enum pipe pch_transcoder =3D crtc->pipe;
>         u32 serr_int =3D intel_de_read(display, SERR_INT);
>=20
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         if ((serr_int & SERR_INT_TRANS_FIFO_UNDERRUN(pch_transcoder)) =3D=
=3D 0)
>                 return;
>@@ -258,11 +253,10 @@ static void cpt_set_fifo_underrun_reporting(struct i=
ntel_display *display,
> static bool __intel_set_cpu_fifo_underrun_reporting(struct intel_display =
*display,
>                                                     enum pipe pipe, bool =
enable)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         struct intel_crtc *crtc =3D intel_crtc_for_pipe(display, pipe);
>         bool old;
>=20
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         old =3D !crtc->cpu_fifo_underrun_disabled;
>         crtc->cpu_fifo_underrun_disabled =3D !enable;
>@@ -298,13 +292,12 @@ static bool __intel_set_cpu_fifo_underrun_reporting(=
struct intel_display *displa
> bool intel_set_cpu_fifo_underrun_reporting(struct intel_display *display,
>                                            enum pipe pipe, bool enable)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         unsigned long flags;
>         bool ret;
>=20
>-        spin_lock_irqsave(&dev_priv->irq_lock, flags);
>+        spin_lock_irqsave(&display->irq.lock, flags);
>         ret =3D __intel_set_cpu_fifo_underrun_reporting(display, pipe, en=
able);
>-        spin_unlock_irqrestore(&dev_priv->irq_lock, flags);
>+        spin_unlock_irqrestore(&display->irq.lock, flags);
>=20
>         return ret;
> }
>@@ -327,7 +320,6 @@ bool intel_set_pch_fifo_underrun_reporting(struct inte=
l_display *display,
>                                            enum pipe pch_transcoder,
>                                            bool enable)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         struct intel_crtc *crtc =3D intel_crtc_for_pipe(display, pch_tran=
scoder);
>         unsigned long flags;
>         bool old;
>@@ -341,7 +333,7 @@ bool intel_set_pch_fifo_underrun_reporting(struct inte=
l_display *display,
>          * crtc on LPT won't cause issues.
>          */
>=20
>-        spin_lock_irqsave(&dev_priv->irq_lock, flags);
>+        spin_lock_irqsave(&display->irq.lock, flags);
>=20
>         old =3D !crtc->pch_fifo_underrun_disabled;
>         crtc->pch_fifo_underrun_disabled =3D !enable;
>@@ -355,7 +347,7 @@ bool intel_set_pch_fifo_underrun_reporting(struct inte=
l_display *display,
>                                                 pch_transcoder,
>                                                 enable, old);
>=20
>-        spin_unlock_irqrestore(&dev_priv->irq_lock, flags);
>+        spin_unlock_irqrestore(&display->irq.lock, flags);
>         return old;
> }
>=20
>@@ -422,10 +414,9 @@ void intel_pch_fifo_underrun_irq_handler(struct intel=
_display *display,
>  */
> void intel_check_cpu_fifo_underruns(struct intel_display *display)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         struct intel_crtc *crtc;
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>=20
>         for_each_intel_crtc(display->drm, crtc) {
>                 if (crtc->cpu_fifo_underrun_disabled)
>@@ -437,7 +428,7 @@ void intel_check_cpu_fifo_underruns(struct intel_displ=
ay *display)
>                         ivb_check_fifo_underruns(crtc);
>         }
>=20
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> /**
>@@ -450,10 +441,9 @@ void intel_check_cpu_fifo_underruns(struct intel_disp=
lay *display)
>  */
> void intel_check_pch_fifo_underruns(struct intel_display *display)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         struct intel_crtc *crtc;
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>=20
>         for_each_intel_crtc(display->drm, crtc) {
>                 if (crtc->pch_fifo_underrun_disabled)
>@@ -463,7 +453,7 @@ void intel_check_pch_fifo_underruns(struct intel_displ=
ay *display)
>                         cpt_check_pch_fifo_underruns(crtc);
>         }
>=20
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> void intel_init_fifo_underrun_reporting(struct intel_display *display,
>diff --git a/drivers/gpu/drm/i915/display/intel_hotplug.c b/drivers/gpu/dr=
m/i915/display/intel_hotplug.c
>index 6885e5a09079..fc5d8928c37e 100644
>--- a/drivers/gpu/drm/i915/display/intel_hotplug.c
>+++ b/drivers/gpu/drm/i915/display/intel_hotplug.c
>@@ -183,9 +183,7 @@ static bool intel_hpd_irq_storm_detect(struct intel_di=
splay *display,
>=20
> static bool detection_work_enabled(struct intel_display *display)
> {
>-        struct drm_i915_private *i915 =3D to_i915(display->drm);
>-
>-        lockdep_assert_held(&i915->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         return display->hotplug.detection_work_enabled;
> }
>@@ -195,7 +193,7 @@ mod_delayed_detection_work(struct intel_display *displ=
ay, struct delayed_work *w
> {
>         struct drm_i915_private *i915 =3D to_i915(display->drm);
>=20
>-        lockdep_assert_held(&i915->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         if (!detection_work_enabled(display))
>                 return false;
>@@ -208,7 +206,7 @@ queue_delayed_detection_work(struct intel_display *dis=
play, struct delayed_work
> {
>         struct drm_i915_private *i915 =3D to_i915(display->drm);
>=20
>-        lockdep_assert_held(&i915->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         if (!detection_work_enabled(display))
>                 return false;
>@@ -221,7 +219,7 @@ queue_detection_work(struct intel_display *display, st=
ruct work_struct *work)
> {
>         struct drm_i915_private *i915 =3D to_i915(display->drm);
>=20
>-        lockdep_assert_held(&i915->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         if (!detection_work_enabled(display))
>                 return false;
>@@ -232,12 +230,11 @@ queue_detection_work(struct intel_display *display, =
struct work_struct *work)
> static void
> intel_hpd_irq_storm_switch_to_polling(struct intel_display *display)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         struct drm_connector_list_iter conn_iter;
>         struct intel_connector *connector;
>         bool hpd_disabled =3D false;
>=20
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         drm_connector_list_iter_begin(display->drm, &conn_iter);
>         for_each_intel_connector_iter(connector, &conn_iter) {
>@@ -276,7 +273,6 @@ static void intel_hpd_irq_storm_reenable_work(struct w=
ork_struct *work)
> {
>         struct intel_display *display =3D
>                 container_of(work, typeof(*display), hotplug.reenable_wor=
k.work);
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         struct drm_connector_list_iter conn_iter;
>         struct intel_connector *connector;
>         struct ref_tracker *wakeref;
>@@ -284,7 +280,7 @@ static void intel_hpd_irq_storm_reenable_work(struct w=
ork_struct *work)
>=20
>         wakeref =3D intel_display_rpm_get(display);
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>=20
>         drm_connector_list_iter_begin(display->drm, &conn_iter);
>         for_each_intel_connector_iter(connector, &conn_iter) {
>@@ -308,7 +304,7 @@ static void intel_hpd_irq_storm_reenable_work(struct w=
ork_struct *work)
>=20
>         intel_hpd_irq_setup(display);
>=20
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
>=20
>         intel_display_rpm_put(display, wakeref);
> }
>@@ -376,9 +372,7 @@ static bool hpd_pin_has_pulse(struct intel_display *di=
splay, enum hpd_pin pin)
>=20
> static bool hpd_pin_is_blocked(struct intel_display *display, enum hpd_pi=
n pin)
> {
>-        struct drm_i915_private *i915 =3D to_i915(display->drm);
>-
>-        lockdep_assert_held(&i915->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         return display->hotplug.stats[pin].blocked_count;
> }
>@@ -400,14 +394,13 @@ static void i915_digport_work_func(struct work_struc=
t *work)
> {
>         struct intel_display *display =3D
>                 container_of(work, struct intel_display, hotplug.dig_port=
_work);
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         struct intel_hotplug *hotplug =3D &display->hotplug;
>         u32 long_hpd_pin_mask, short_hpd_pin_mask;
>         struct intel_encoder *encoder;
>         u32 blocked_hpd_pin_mask;
>         u32 old_bits =3D 0;
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>=20
>         blocked_hpd_pin_mask =3D get_blocked_hpd_pin_mask(display);
>         long_hpd_pin_mask =3D hotplug->long_hpd_pin_mask & ~blocked_hpd_p=
in_mask;
>@@ -415,7 +408,7 @@ static void i915_digport_work_func(struct work_struct =
*work)
>         short_hpd_pin_mask =3D hotplug->short_hpd_pin_mask & ~blocked_hpd=
_pin_mask;
>         hotplug->short_hpd_pin_mask &=3D ~short_hpd_pin_mask;
>=20
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
>=20
>         for_each_intel_encoder(display->drm, encoder) {
>                 struct intel_digital_port *dig_port;
>@@ -442,11 +435,11 @@ static void i915_digport_work_func(struct work_struc=
t *work)
>         }
>=20
>         if (old_bits) {
>-                spin_lock_irq(&dev_priv->irq_lock);
>+                spin_lock_irq(&display->irq.lock);
>                 display->hotplug.event_bits |=3D old_bits;
>                 queue_delayed_detection_work(display,
>                                              &display->hotplug.hotplug_wo=
rk, 0);
>-                spin_unlock_irq(&dev_priv->irq_lock);
>+                spin_unlock_irq(&display->irq.lock);
>         }
> }
>=20
>@@ -460,17 +453,16 @@ static void i915_digport_work_func(struct work_struc=
t *work)
> void intel_hpd_trigger_irq(struct intel_digital_port *dig_port)
> {
>         struct intel_display *display =3D to_intel_display(dig_port);
>-        struct drm_i915_private *i915 =3D to_i915(display->drm);
>         struct intel_hotplug *hotplug =3D &display->hotplug;
>         struct intel_encoder *encoder =3D &dig_port->base;
>=20
>-        spin_lock_irq(&i915->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>=20
>         hotplug->short_hpd_pin_mask |=3D BIT(encoder->hpd_pin);
>         if (!hpd_pin_is_blocked(display, encoder->hpd_pin))
>                 queue_work(hotplug->dp_wq, &hotplug->dig_port_work);
>=20
>-        spin_unlock_irq(&i915->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> /*
>@@ -480,7 +472,6 @@ static void i915_hotplug_work_func(struct work_struct =
*work)
> {
>         struct intel_display *display =3D
>                 container_of(work, struct intel_display, hotplug.hotplug_=
work.work);
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         struct intel_hotplug *hotplug =3D &display->hotplug;
>         struct drm_connector_list_iter conn_iter;
>         struct intel_connector *connector;
>@@ -494,7 +485,7 @@ static void i915_hotplug_work_func(struct work_struct =
*work)
>         mutex_lock(&display->drm->mode_config.mutex);
>         drm_dbg_kms(display->drm, "running encoder hotplug functions\n");
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>=20
>         blocked_hpd_pin_mask =3D get_blocked_hpd_pin_mask(display);
>         hpd_event_bits =3D hotplug->event_bits & ~blocked_hpd_pin_mask;
>@@ -505,7 +496,7 @@ static void i915_hotplug_work_func(struct work_struct =
*work)
>         /* Enable polling for connectors which had HPD IRQ storms */
>         intel_hpd_irq_storm_switch_to_polling(display);
>=20
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
>=20
>         /* Skip calling encode hotplug handlers if ignore long HPD set*/
>         if (display->hotplug.ignore_long_hpd) {
>@@ -569,13 +560,13 @@ static void i915_hotplug_work_func(struct work_struc=
t *work)
>         /* Remove shared HPD pins that have changed */
>         retry &=3D ~changed;
>         if (retry) {
>-                spin_lock_irq(&dev_priv->irq_lock);
>+                spin_lock_irq(&display->irq.lock);
>                 display->hotplug.retry_bits |=3D retry;
>=20
>                 mod_delayed_detection_work(display,
>                                            &display->hotplug.hotplug_work=
,
>                                            msecs_to_jiffies(HPD_RETRY_DEL=
AY));
>-                spin_unlock_irq(&dev_priv->irq_lock);
>+                spin_unlock_irq(&display->irq.lock);
>         }
> }
>=20
>@@ -599,7 +590,6 @@ static void i915_hotplug_work_func(struct work_struct =
*work)
> void intel_hpd_irq_handler(struct intel_display *display,
>                            u32 pin_mask, u32 long_mask)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         struct intel_encoder *encoder;
>         bool storm_detected =3D false;
>         bool queue_dig =3D false, queue_hp =3D false;
>@@ -610,7 +600,7 @@ void intel_hpd_irq_handler(struct intel_display *displ=
ay,
>         if (!pin_mask)
>                 return;
>=20
>-        spin_lock(&dev_priv->irq_lock);
>+        spin_lock(&display->irq.lock);
>=20
>         /*
>          * Determine whether ->hpd_pulse() exists for each pin, and
>@@ -711,7 +701,7 @@ void intel_hpd_irq_handler(struct intel_display *displ=
ay,
>                 queue_delayed_detection_work(display,
>                                              &display->hotplug.hotplug_wo=
rk, 0);
>=20
>-        spin_unlock(&dev_priv->irq_lock);
>+        spin_unlock(&display->irq.lock);
> }
>=20
> /**
>@@ -730,7 +720,6 @@ void intel_hpd_irq_handler(struct intel_display *displ=
ay,
>  */
> void intel_hpd_init(struct intel_display *display)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         int i;
>=20
>         if (!HAS_DISPLAY(display))
>@@ -745,9 +734,9 @@ void intel_hpd_init(struct intel_display *display)
>          * Interrupt setup is already guaranteed to be single-threaded, t=
his is
>          * just to make the assert_spin_locked checks happy.
>          */
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         intel_hpd_irq_setup(display);
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> static void i915_hpd_poll_detect_connectors(struct intel_display *display=
)
>@@ -797,7 +786,6 @@ static void i915_hpd_poll_init_work(struct work_struct=
 *work)
> {
>         struct intel_display *display =3D
>                 container_of(work, typeof(*display), hotplug.poll_init_wo=
rk);
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         struct drm_connector_list_iter conn_iter;
>         struct intel_connector *connector;
>         intel_wakeref_t wakeref;
>@@ -820,7 +808,7 @@ static void i915_hpd_poll_init_work(struct work_struct=
 *work)
>                 cancel_work(&display->hotplug.poll_init_work);
>         }
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>=20
>         drm_connector_list_iter_begin(display->drm, &conn_iter);
>         for_each_intel_connector_iter(connector, &conn_iter) {
>@@ -841,7 +829,7 @@ static void i915_hpd_poll_init_work(struct work_struct=
 *work)
>         }
>         drm_connector_list_iter_end(&conn_iter);
>=20
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
>=20
>         if (enabled)
>                 drm_kms_helper_poll_reschedule(display->drm);
>@@ -879,8 +867,6 @@ static void i915_hpd_poll_init_work(struct work_struct=
 *work)
>  */
> void intel_hpd_poll_enable(struct intel_display *display)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>-
>         if (!HAS_DISPLAY(display) || !intel_display_device_enabled(displa=
y))
>                 return;
>=20
>@@ -892,10 +878,10 @@ void intel_hpd_poll_enable(struct intel_display *dis=
play)
>          * As well, there's no issue if we race here since we always resc=
hedule
>          * this worker anyway
>          */
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         queue_detection_work(display,
>                              &display->hotplug.poll_init_work);
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> /**
>@@ -919,17 +905,15 @@ void intel_hpd_poll_enable(struct intel_display *dis=
play)
>  */
> void intel_hpd_poll_disable(struct intel_display *display)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>-
>         if (!HAS_DISPLAY(display))
>                 return;
>=20
>         WRITE_ONCE(display->hotplug.poll_enabled, false);
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         queue_detection_work(display,
>                              &display->hotplug.poll_init_work);
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> void intel_hpd_poll_fini(struct intel_display *display)
>@@ -981,12 +965,10 @@ static bool cancel_all_detection_work(struct intel_d=
isplay *display)
>=20
> void intel_hpd_cancel_work(struct intel_display *display)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>-
>         if (!HAS_DISPLAY(display))
>                 return;
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>=20
>         drm_WARN_ON(display->drm, get_blocked_hpd_pin_mask(display));
>=20
>@@ -995,7 +977,7 @@ void intel_hpd_cancel_work(struct intel_display *displ=
ay)
>         display->hotplug.event_bits =3D 0;
>         display->hotplug.retry_bits =3D 0;
>=20
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
>=20
>         cancel_work_sync(&display->hotplug.dig_port_work);
>=20
>@@ -1009,13 +991,12 @@ void intel_hpd_cancel_work(struct intel_display *di=
splay)
>=20
> static void queue_work_for_missed_irqs(struct intel_display *display)
> {
>-        struct drm_i915_private *i915 =3D to_i915(display->drm);
>         struct intel_hotplug *hotplug =3D &display->hotplug;
>         bool queue_hp_work =3D false;
>         u32 blocked_hpd_pin_mask;
>         enum hpd_pin pin;
>=20
>-        lockdep_assert_held(&i915->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         blocked_hpd_pin_mask =3D get_blocked_hpd_pin_mask(display);
>         if ((hotplug->event_bits | hotplug->retry_bits) & ~blocked_hpd_pi=
n_mask)
>@@ -1043,10 +1024,9 @@ static void queue_work_for_missed_irqs(struct intel=
_display *display)
>=20
> static bool block_hpd_pin(struct intel_display *display, enum hpd_pin pin=
)
> {
>-        struct drm_i915_private *i915 =3D to_i915(display->drm);
>         struct intel_hotplug *hotplug =3D &display->hotplug;
>=20
>-        lockdep_assert_held(&i915->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         hotplug->stats[pin].blocked_count++;
>=20
>@@ -1055,10 +1035,9 @@ static bool block_hpd_pin(struct intel_display *dis=
play, enum hpd_pin pin)
>=20
> static bool unblock_hpd_pin(struct intel_display *display, enum hpd_pin p=
in)
> {
>-        struct drm_i915_private *i915 =3D to_i915(display->drm);
>         struct intel_hotplug *hotplug =3D &display->hotplug;
>=20
>-        lockdep_assert_held(&i915->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         if (drm_WARN_ON(display->drm, hotplug->stats[pin].blocked_count =
=3D=3D 0))
>                 return true;
>@@ -1095,19 +1074,18 @@ static bool unblock_hpd_pin(struct intel_display *=
display, enum hpd_pin pin)
> void intel_hpd_block(struct intel_encoder *encoder)
> {
>         struct intel_display *display =3D to_intel_display(encoder);
>-        struct drm_i915_private *i915 =3D to_i915(display->drm);
>         struct intel_hotplug *hotplug =3D &display->hotplug;
>         bool do_flush =3D false;
>=20
>         if (encoder->hpd_pin =3D=3D HPD_NONE)
>                 return;
>=20
>-        spin_lock_irq(&i915->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>=20
>         if (block_hpd_pin(display, encoder->hpd_pin))
>                 do_flush =3D true;
>=20
>-        spin_unlock_irq(&i915->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
>=20
>         if (do_flush && hpd_pin_has_pulse(display, encoder->hpd_pin))
>                 flush_work(&hotplug->dig_port_work);
>@@ -1125,17 +1103,16 @@ void intel_hpd_block(struct intel_encoder *encoder=
)
> void intel_hpd_unblock(struct intel_encoder *encoder)
> {
>         struct intel_display *display =3D to_intel_display(encoder);
>-        struct drm_i915_private *i915 =3D to_i915(display->drm);
>=20
>         if (encoder->hpd_pin =3D=3D HPD_NONE)
>                 return;
>=20
>-        spin_lock_irq(&i915->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>=20
>         if (unblock_hpd_pin(display, encoder->hpd_pin))
>                 queue_work_for_missed_irqs(display);
>=20
>-        spin_unlock_irq(&i915->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> /**
>@@ -1149,14 +1126,13 @@ void intel_hpd_unblock(struct intel_encoder *encod=
er)
> void intel_hpd_clear_and_unblock(struct intel_encoder *encoder)
> {
>         struct intel_display *display =3D to_intel_display(encoder);
>-        struct drm_i915_private *i915 =3D to_i915(display->drm);
>         struct intel_hotplug *hotplug =3D &display->hotplug;
>         enum hpd_pin pin =3D encoder->hpd_pin;
>=20
>         if (pin =3D=3D HPD_NONE)
>                 return;
>=20
>-        spin_lock_irq(&i915->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>=20
>         if (unblock_hpd_pin(display, pin)) {
>                 hotplug->event_bits &=3D ~BIT(pin);
>@@ -1165,39 +1141,34 @@ void intel_hpd_clear_and_unblock(struct intel_enco=
der *encoder)
>                 hotplug->long_hpd_pin_mask &=3D ~BIT(pin);
>         }
>=20
>-        spin_unlock_irq(&i915->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> void intel_hpd_enable_detection_work(struct intel_display *display)
> {
>-        struct drm_i915_private *i915 =3D to_i915(display->drm);
>-
>-        spin_lock_irq(&i915->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         display->hotplug.detection_work_enabled =3D true;
>         queue_work_for_missed_irqs(display);
>-        spin_unlock_irq(&i915->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> void intel_hpd_disable_detection_work(struct intel_display *display)
> {
>-        struct drm_i915_private *i915 =3D to_i915(display->drm);
>-
>-        spin_lock_irq(&i915->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         display->hotplug.detection_work_enabled =3D false;
>-        spin_unlock_irq(&i915->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
>=20
>         cancel_all_detection_work(display);
> }
>=20
> bool intel_hpd_schedule_detection(struct intel_display *display)
> {
>-        struct drm_i915_private *i915 =3D to_i915(display->drm);
>         unsigned long flags;
>         bool ret;
>=20
>-        spin_lock_irqsave(&i915->irq_lock, flags);
>+        spin_lock_irqsave(&display->irq.lock, flags);
>         ret =3D queue_delayed_detection_work(display, &display->hotplug.h=
otplug_work, 0);
>-        spin_unlock_irqrestore(&i915->irq_lock, flags);
>+        spin_unlock_irqrestore(&display->irq.lock, flags);
>=20
>         return ret;
> }
>@@ -1228,7 +1199,6 @@ static ssize_t i915_hpd_storm_ctl_write(struct file =
*file,
> {
>         struct seq_file *m =3D file->private_data;
>         struct intel_display *display =3D m->private;
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         struct intel_hotplug *hotplug =3D &display->hotplug;
>         unsigned int new_threshold;
>         int i;
>@@ -1260,12 +1230,12 @@ static ssize_t i915_hpd_storm_ctl_write(struct fil=
e *file,
>         else
>                 drm_dbg_kms(display->drm, "Disabling HPD storm detection\=
n");
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         hotplug->hpd_storm_threshold =3D new_threshold;
>         /* Reset the HPD storm stats so we don't accidentally trigger a s=
torm */
>         for_each_hpd_pin(i)
>                 hotplug->stats[i].count =3D 0;
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
>=20
>         /* Re-enable hpd immediately if we were in an irq storm */
>         flush_delayed_work(&display->hotplug.reenable_work);
>@@ -1310,7 +1280,6 @@ static ssize_t i915_hpd_short_storm_ctl_write(struct=
 file *file,
> {
>         struct seq_file *m =3D file->private_data;
>         struct intel_display *display =3D m->private;
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         struct intel_hotplug *hotplug =3D &display->hotplug;
>         char *newline;
>         char tmp[16];
>@@ -1339,12 +1308,12 @@ static ssize_t i915_hpd_short_storm_ctl_write(stru=
ct file *file,
>         drm_dbg_kms(display->drm, "%sabling HPD short storm detection\n",
>                     new_state ? "En" : "Dis");
>=20
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         hotplug->hpd_short_storm_enabled =3D new_state;
>         /* Reset the HPD storm stats so we don't accidentally trigger a s=
torm */
>         for_each_hpd_pin(i)
>                 hotplug->stats[i].count =3D 0;
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
>=20
>         /* Re-enable hpd immediately if we were in an irq storm */
>         flush_delayed_work(&display->hotplug.reenable_work);
>diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gp=
u/drm/i915/display/intel_hotplug_irq.c
>index c841399e5c88..c024b42369c8 100644
>--- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
>+++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
>@@ -3,8 +3,10 @@
>  * Copyright =C2=A9 2023 Intel Corporation
>  */
>=20
>-#include "i915_drv.h"
>+#include <drm/drm_print.h>
>+
> #include "i915_reg.h"
>+#include "i915_utils.h"
> #include "intel_de.h"
> #include "intel_display_irq.h"
> #include "intel_display_types.h"
>@@ -183,9 +185,7 @@ static void intel_hpd_init_pins(struct intel_display *=
display)
> void i915_hotplug_interrupt_update_locked(struct intel_display *display,
>                                           u32 mask, u32 bits)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>-
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>         drm_WARN_ON(display->drm, bits & ~mask);
>=20
>         intel_de_rmw(display, PORT_HOTPLUG_EN(display), mask, bits);
>@@ -207,11 +207,9 @@ void i915_hotplug_interrupt_update(struct intel_displ=
ay *display,
>                                    u32 mask,
>                                    u32 bits)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>-
>-        spin_lock_irq(&dev_priv->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         i915_hotplug_interrupt_update_locked(display, mask, bits);
>-        spin_unlock_irq(&dev_priv->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> static bool gen11_port_hotplug_long_detect(enum hpd_pin pin, u32 val)
>@@ -556,7 +554,6 @@ void xelpdp_pica_irq_handler(struct intel_display *dis=
play, u32 iir)
>=20
> void icp_irq_handler(struct intel_display *display, u32 pch_iir)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         u32 ddi_hotplug_trigger =3D pch_iir & SDE_DDI_HOTPLUG_MASK_ICP;
>         u32 tc_hotplug_trigger =3D pch_iir & SDE_TC_HOTPLUG_MASK_ICP;
>         u32 pin_mask =3D 0, long_mask =3D 0;
>@@ -565,9 +562,9 @@ void icp_irq_handler(struct intel_display *display, u3=
2 pch_iir)
>                 u32 dig_hotplug_reg;
>=20
>                 /* Locking due to DSI native GPIO sequences */
>-                spin_lock(&dev_priv->irq_lock);
>+                spin_lock(&display->irq.lock);
>                 dig_hotplug_reg =3D intel_de_rmw(display, SHOTPLUG_CTL_DD=
I, 0, 0);
>-                spin_unlock(&dev_priv->irq_lock);
>+                spin_unlock(&display->irq.lock);
>=20
>                 intel_get_hpd_pins(display, &pin_mask, &long_mask,
>                                    ddi_hotplug_trigger, dig_hotplug_reg,
>@@ -1395,10 +1392,9 @@ static void i915_hpd_enable_detection(struct intel_=
encoder *encoder)
>=20
> static void i915_hpd_irq_setup(struct intel_display *display)
> {
>-        struct drm_i915_private *dev_priv =3D to_i915(display->drm);
>         u32 hotplug_en;
>=20
>-        lockdep_assert_held(&dev_priv->irq_lock);
>+        lockdep_assert_held(&display->irq.lock);
>=20
>         /*
>          * Note HDMI and DP share hotplug bits. Enable bits are the same =
for all
>diff --git a/drivers/gpu/drm/i915/display/intel_tv.c b/drivers/gpu/drm/i91=
5/display/intel_tv.c
>index 2e3f3f0207e8..acf0b3733908 100644
>--- a/drivers/gpu/drm/i915/display/intel_tv.c
>+++ b/drivers/gpu/drm/i915/display/intel_tv.c
>@@ -33,15 +33,15 @@
> #include <drm/drm_atomic_helper.h>
> #include <drm/drm_crtc.h>
> #include <drm/drm_edid.h>
>+#include <drm/drm_print.h>
> #include <drm/drm_probe_helper.h>
>=20
>-#include "i915_drv.h"
> #include "i915_reg.h"
> #include "intel_connector.h"
> #include "intel_crtc.h"
> #include "intel_de.h"
>-#include "intel_display_irq.h"
> #include "intel_display_driver.h"
>+#include "intel_display_irq.h"
> #include "intel_display_types.h"
> #include "intel_dpll.h"
> #include "intel_hotplug.h"
>@@ -1585,19 +1585,17 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
> {
>         struct intel_display *display =3D to_intel_display(connector->dev=
);
>         struct intel_crtc *crtc =3D to_intel_crtc(connector->state->crtc)=
;
>-        struct drm_device *dev =3D connector->dev;
>-        struct drm_i915_private *dev_priv =3D to_i915(dev);
>         u32 tv_ctl, save_tv_ctl;
>         u32 tv_dac, save_tv_dac;
>         int type;
>=20
>         /* Disable TV interrupts around load detect or we'll recurse */
>         if (connector->polled & DRM_CONNECTOR_POLL_HPD) {
>-                spin_lock_irq(&dev_priv->irq_lock);
>+                spin_lock_irq(&display->irq.lock);
>                 i915_disable_pipestat(display, 0,
>                                       PIPE_HOTPLUG_INTERRUPT_STATUS |
>                                       PIPE_HOTPLUG_TV_INTERRUPT_STATUS);
>-                spin_unlock_irq(&dev_priv->irq_lock);
>+                spin_unlock_irq(&display->irq.lock);
>         }
>=20
>         save_tv_dac =3D tv_dac =3D intel_de_read(display, TV_DAC);
>@@ -1668,11 +1666,11 @@ intel_tv_detect_type(struct intel_tv *intel_tv,
>=20
>         /* Restore interrupt config */
>         if (connector->polled & DRM_CONNECTOR_POLL_HPD) {
>-                spin_lock_irq(&dev_priv->irq_lock);
>+                spin_lock_irq(&display->irq.lock);
>                 i915_enable_pipestat(display, 0,
>                                      PIPE_HOTPLUG_INTERRUPT_STATUS |
>                                      PIPE_HOTPLUG_TV_INTERRUPT_STATUS);
>-                spin_unlock_irq(&dev_priv->irq_lock);
>+                spin_unlock_irq(&display->irq.lock);
>         }
>=20
>         return type;
>diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/=
gpu/drm/i915/display/skl_universal_plane.c
>index 8739195aba69..844519286b1c 100644
>--- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>+++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>@@ -2690,24 +2690,22 @@ static void
> skl_plane_enable_flip_done(struct intel_plane *plane)
> {
>         struct intel_display *display =3D to_intel_display(plane);
>-        struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>         enum pipe pipe =3D plane->pipe;
>=20
>-        spin_lock_irq(&i915->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         bdw_enable_pipe_irq(display, pipe, GEN9_PIPE_PLANE_FLIP_DONE(plan=
e->id));
>-        spin_unlock_irq(&i915->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> static void
> skl_plane_disable_flip_done(struct intel_plane *plane)
> {
>         struct intel_display *display =3D to_intel_display(plane);
>-        struct drm_i915_private *i915 =3D to_i915(plane->base.dev);
>         enum pipe pipe =3D plane->pipe;
>=20
>-        spin_lock_irq(&i915->irq_lock);
>+        spin_lock_irq(&display->irq.lock);
>         bdw_disable_pipe_irq(display, pipe, GEN9_PIPE_PLANE_FLIP_DONE(pla=
ne->id));
>-        spin_unlock_irq(&i915->irq_lock);
>+        spin_unlock_irq(&display->irq.lock);
> }
>=20
> static bool skl_plane_has_rc_ccs(struct intel_display *display,
>diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i91=
5_driver.c
>index 96a52f963475..273bc43468a0 100644
>--- a/drivers/gpu/drm/i915/i915_driver.c
>+++ b/drivers/gpu/drm/i915/i915_driver.c
>@@ -234,7 +234,6 @@ static int i915_driver_early_probe(struct drm_i915_pri=
vate *dev_priv)
>=20
>         intel_uncore_mmio_debug_init_early(dev_priv);
>=20
>-        spin_lock_init(&dev_priv->irq_lock);
>         spin_lock_init(&dev_priv->gpu_error.lock);
>=20
>         intel_sbi_init(dev_priv);
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_d=
rv.h
>index c0eec8fe5cad..d0e1980dcba2 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -222,8 +222,6 @@ struct drm_i915_private {
>         };
>         unsigned int engine_uabi_class_count[I915_LAST_UABI_ENGINE_CLASS =
+ 1];
>=20
>-        /* protects the irq masks */
>-        spinlock_t irq_lock;
>         bool irqs_enabled;
>=20
>         /* LPT/WPT IOSF sideband protection */
>diff --git a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h b/drivers/g=
pu/drm/xe/compat-i915-headers/i915_drv.h
>index dd36f9b06b89..9b7572e06f34 100644
>--- a/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>+++ b/drivers/gpu/drm/xe/compat-i915-headers/i915_drv.h
>@@ -60,15 +60,4 @@ static inline struct drm_i915_private *to_i915(const st=
ruct drm_device *dev)
> #define HAS_FLAT_CCS(xe) (xe_device_has_flat_ccs(xe))
> #define HAS_128_BYTE_Y_TILING(xe) (xe || 1)
>=20
>-#ifdef CONFIG_ARM64
>-/*
>- * arm64 indirectly includes linux/rtc.h,
>- * which defines a irq_lock, so include it
>- * here before #define-ing it
>- */
>-#include <linux/rtc.h>
>-#endif
>-
>-#define irq_lock irq.lock
>-
> #endif
>--=20
>2.39.5
>
