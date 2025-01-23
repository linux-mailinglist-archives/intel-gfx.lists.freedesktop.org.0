Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4815BA1A79A
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 17:11:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D06B710E870;
	Thu, 23 Jan 2025 16:11:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X5Z2NhhW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A037510E86C;
 Thu, 23 Jan 2025 16:11:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737648674; x=1769184674;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=tI6ap1/Jgb956fcJhtp9De3SPvkbbFs5fMWXlHAJfFE=;
 b=X5Z2NhhWgHsxaDSXLuHhSiRi1bX2PJoSbSGqGWq6fX1CUy6v/x8TPQo5
 4bdecxB+VlOTi8NT1nGrNQcxmvjs4MBAwKH21nBYOK+AkYzKAdvNtSc4V
 DEfl/uPmxuqxfH1FNsAWmKYpsuMH2liHQdueTa1JEMwvpVox1fhRt/5Up
 zFkDvgbvlYkurr+5uX6Hg5nT1CCS7lalnxMTn2JYhDetHsOnrHtWgrXvU
 kh4H0uBBC0F9DS0mLb0YtsmOTtqOV8IrByCVlPTN8bAKhfl/fDL4LypCv
 13YgUeE+4o3kHjvRlVsE4rUqWbzFfijyOVAVMW5wDBFh5Rkhvqvk5Se5z A==;
X-CSE-ConnectionGUID: a8TLjoqwTN2zyi8WqwoqJA==
X-CSE-MsgGUID: Vtq/0qbrQt2y28BgajiuFA==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="37361899"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="37361899"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 08:11:13 -0800
X-CSE-ConnectionGUID: 6qZZf4BrQJ2wQtFOy58yLQ==
X-CSE-MsgGUID: kld6UfqAQQ6DRAdbJSLQBg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="108368872"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 08:11:13 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 08:11:12 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 08:11:12 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 08:11:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PpejRl+zK4ViV7ugFzXNqpUzIggaX99P2nfD3DBCQ88lYTuEuPcp61e3v+W80z4zMQ0Sr0C1iGi4H9E2vPg0Rr9hm837L4wmfrLqi1O9Tb2duXJBSYId3ZFFhUrOWZ0nXEwVlWwhBCo82vJozINfHBSJMpeEeKhlCeLVwBM5Zdx4eqdYWLBXQn5nnXAcpzH+nTo5E2BYiIOcnabDFNyXyanGARaMPyYA5UQwb/BKWryCQueZEW/mhkKVDwHzccoY4sZOPYfX/ZHw0Yp/hboc1ttpU3sWcd2L7iynDluIcPuDtjT4emIwCL0gtapsRclpabHh0KIUWtPkaWxrR9ATGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s+xatjx4zI+1AndN7rGVDJKU2W9e2MKv7utyF9hDXhY=;
 b=pfijivFPp+2gOfM+U44WLcqF/SXQpZcxFkK3Gwwnhhum4LfA5PKX8Q+X2BgPJeGxZKowDeiI5F2ZEDeZOUzUgT46Y/Rcx6kyHawHSIqJ1scCMe1R4LhCByIm+EpSaN0Da/j5G50dlVscknfoG6YLqQyWTGYfO5ECYd7Or1RpzvsEC4wtWWctU8JfU/k6OAUJhBhPVMYhuCCqRNRv5mJ5D53UW9ptzZKiBlQZBBmcdHVr29eGtsOETKKOvD7BRqdOttu2bTShvJ/dhVcUUHQW1CeyNed7ZcVXKveN+MelfL9ym8IZw8P61TZdAcNV9tXkCLp8QlHDm62rnlxtK14JPA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB6974.namprd11.prod.outlook.com (2603:10b6:510:225::16)
 by SN7PR11MB7512.namprd11.prod.outlook.com (2603:10b6:806:345::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.18; Thu, 23 Jan
 2025 16:11:09 +0000
Received: from PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a]) by PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a%7]) with mapi id 15.20.8356.020; Thu, 23 Jan 2025
 16:11:09 +0000
Date: Thu, 23 Jan 2025 21:41:03 +0530
From: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 2/4] drm/i915/dmc_wl: Add debugfs for untracked offsets
Message-ID: <Z5JqFwchTpIXdDbJ@bvivekan-mobl1>
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
 <20250117220747.87927-3-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250117220747.87927-3-gustavo.sousa@intel.com>
X-ClientProxiedBy: PN3PR01CA0101.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:9b::7) To PH8PR11MB6974.namprd11.prod.outlook.com
 (2603:10b6:510:225::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6974:EE_|SN7PR11MB7512:EE_
X-MS-Office365-Filtering-Correlation-Id: 05f8950d-ffe4-472d-74e8-08dd3bc88c9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a0JFalBXOE84RktBWi9Pc1FDU01DQ3gzL3JPdGg2RzBYdkhKR2tHNU5QSTJ0?=
 =?utf-8?B?bUU2czNrV0k1Zm0wRktldWd6cUd6MUUzSmJXaDd2Rmo3VXBpRnZyMXVzZ0pj?=
 =?utf-8?B?cVA2T1BKbVBDMU00VjB4Q25wVjg2SDRnREltYmdON2ZvaEEyNk80RmdrVmJ4?=
 =?utf-8?B?NFVUZk9aek1PQkxVMkJ1djBWSit3ZXVPcnUzdEF6Qk1nVTVkS3NNZE1YS3FO?=
 =?utf-8?B?QWhNYXZ5V2psTVl1b3ZwSHZJWGRFYmdMRjcycDNnL1FLeWFPK3pjazJ4YmhG?=
 =?utf-8?B?aGNaejRTYjhwWFVydG8zS2dhMFZCZ3RLU0RJZC81VG9kRzZEcWEyS1dYNlRG?=
 =?utf-8?B?cHU1UnhpMW1ONE9iUDBVL3dEc1JuVnh0QUFUOXIvZERMb1Nsa0tvRmxFMUc4?=
 =?utf-8?B?Zzd0a3RGY3RyTmhES0dCZ3NYSVlWTVNzS3oxc1FFS0Y1MCtSUFhZRGVpZmg4?=
 =?utf-8?B?ZDBuQ2JaOG5tcGlLd0pGanNvdjhMTkxXdXhmZXN2aFlndjFJVHVOR0lpNG1W?=
 =?utf-8?B?VzJrcHBwVDlDYS93MGxua2VvcUptL3l6U1dXRHp2UldmbmdWd0dpdlFRL3BT?=
 =?utf-8?B?RVlkd0xVQmh3YUV1bjRWWGtJSWpjRzg1TStNeXlpSVVhc095cndLNEMzaVRP?=
 =?utf-8?B?T3hCVHV3MlRrakVveEFKU3MxZ0dPUTBOL01BZmpublRWRzdtMi9CVlBNSmVM?=
 =?utf-8?B?M2JKWmViTGdyQy9mZEtxcnNKZUFZVFMvMHVsN29zbm9LM094UEdzRXNOUFBa?=
 =?utf-8?B?OTYyb0ZRRndHRkZoSzRSd3JPQUVTOVB0RUJCWFJ6ejQ0dktSNHhtTnhseFF4?=
 =?utf-8?B?U0FQYkhzaE1xWFA2YVBTZUY0V1h6SEs3NElKVy95WmJ1cUpqSXY5NDFoNS9r?=
 =?utf-8?B?TnhwbFRobFZhMWNobDVxL1NTRGZPd1B2bGRzYTczeGF0NEZtQVVKQ2J3MFhT?=
 =?utf-8?B?TUFUaU44Q0d1djhsUk54VnJuTDhlWEYxVUtHSk5wZ3ROWnMzVUVhRGhNNFhk?=
 =?utf-8?B?NHk3T1ZBTXhiUnczY1hieUsxODlSNzg1YXhpYXdUZ2ZveEhwdTJqSzNvbWFN?=
 =?utf-8?B?alowbjBJbStEWXNPekFKcUdPT2Zlb0w4UkkwYW5Yc0RuQTN4clBUMStPNlJC?=
 =?utf-8?B?NzFQeVd5VnRwYjdMTk81Q0tGUmRGckw0M1p6ald1WTIramN4M3lmeWt2Z1ND?=
 =?utf-8?B?ZDVzMXhzaGtqK0lINytKOU5WKzdPMEpYQ013Uzc1RlY5RmNidzZHS3hmaFZI?=
 =?utf-8?B?cWhvc3VaY1Z0a3NVYW03Z0pra1g5a29LWGpxYXF3QXo1WGtwbEM4K2lURUY5?=
 =?utf-8?B?bGF1YkpmUEZ5Y2xabVNaYys3bGpQNVdRNTdOSUlqeVpjOGhsaVRQRUNZR040?=
 =?utf-8?B?UnFESU1BamNuR0RVNGxwZjl5NUdCZUlmTm1OQzhlY2FIUjEvN2piQnhNcDVs?=
 =?utf-8?B?OGZ1Z2o4L0VpdkowNml4NWhiNnVPN2U3MlhzYmxVTFFXUTFRVHFDZmx1T29Y?=
 =?utf-8?B?eTk3WU5KNmdNM3hoNkUrb09zZSs2Vnl2UzBEdERDaURDVldjSmtGUkdMSUxa?=
 =?utf-8?B?SEh5bVBuaHBqYlVoMWNURmQwOVFoMXYwbnZnRHoxTnlodzRqcGNpMlZraXN4?=
 =?utf-8?B?d0FOd1ZPVDBGTzZ0cVJaRnFveGNpcnZSYlZoMXYvVEUzckpiTHlFRzlDQ1hD?=
 =?utf-8?B?aFVrWDlxeVJFcGh6QVdOU2pQNHM0eHpYeklUcUVIblZUeWpTQVZtMEJrY2s5?=
 =?utf-8?B?QzJ1Tk14ckh3THJkNzR6RitDZDdvVVBtenI4cnh4dDhocFBSdStCZjhaeUFR?=
 =?utf-8?B?QUlzRlBaUzdwblBwclIyd2NmUEp3RzhVWGRHM3VPc0xYcm9HUThOWkE2Uk44?=
 =?utf-8?Q?wsOf4MZySagyN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6974.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RnhPNENDa2FDWmZoeVZES2t2TitIK3R2bWd6eG1hK01BVEJERTJ4Y0IyYXpD?=
 =?utf-8?B?TmxLNnBYVUd5VHMwM0dUVlZQalBqQW9tQ2FabFV5eEF1cm1wRlpqdnFmMGZ1?=
 =?utf-8?B?ZVAzWVRiV2hWbVV3ajNkMlB1bW9CUnZITWJzWHFiV1BGbmszOHhmeDUwWkxK?=
 =?utf-8?B?aGN4b1F6ZSttL1drd1poMUg4ZEszS09yT05GU1lWMmpHak13Z1NDZW03ZEtY?=
 =?utf-8?B?a3h0L0JNV3hlVmFUMXVaY2lUMFdseUwyZTd2L0xKU2FGREthdUpoWXg3UE5w?=
 =?utf-8?B?cmlSa3R3K1RqZXJzTUxMeVd3TlppVjFBa2J2aGJkTzBCYnc4ZjY0T1cvd25x?=
 =?utf-8?B?K0toLyt3MGZ3TW1XVUVmckp4YVVzZ2hwTUVmTVR3TGNqb3NDemc1TnlDRmtH?=
 =?utf-8?B?SEVlNzlRUVRQYVNIZHRRUzlMbHpYREhwbld5WTdmekJYcmRFbTY2M2liSEpl?=
 =?utf-8?B?Z2hyM280UWdISXA2ZFI5eGhSVmhXTEQzYksvRi9kbDRSM2NHSjdaVVRUVzB0?=
 =?utf-8?B?SW93eS90a0tKOGJ1SDFqQzNSSmxQN3d4L3NmQW16cUNGRU0xM3NFTm9kSWxP?=
 =?utf-8?B?eld5UmZDcEttWGI2b1BIMUVTRmlXQmhVeXhsZG1BV2lvV25Md1loWGp3clZD?=
 =?utf-8?B?c0pQYWgycnRURmpha3FvUTNMWUhtLzJETFpxQ3l3WFF3YTQ5Y21nVWpicmVJ?=
 =?utf-8?B?LzJhZk13NGVwdGN3bTZSR2FHTU44bm1LRFQ5R2RvcVp5R0w1bUJWcHJjTmY1?=
 =?utf-8?B?S2dlOU8yUG02d2tFRXNLYjYzRFdXV3lsZU5GbHNtMXBMd3diUGZRbExnazFz?=
 =?utf-8?B?cmgwVUE5RlM1UHhQZWhFSzVXUysxa1FReTZoUUlwNStSaVE2VlZXSkhISkd6?=
 =?utf-8?B?SVBCT1RWTXlnMllQYUVPcW11QTJuOWt6MmJ6cG11L1JQYUhKeE5qcHR5cWVL?=
 =?utf-8?B?bzRvblhQc1ZGOHpYaDNqSHdOTFRuOUZwUWd1YnJVbWU4WDQ5RW1wS056ZE92?=
 =?utf-8?B?MTFLWnhHSTRGNXRUcXovVkorR3RQS2pEdjNBY0o0QXdsZmI5bFhIeDZxc3lJ?=
 =?utf-8?B?SHRIRHN1UzJ2WHozRjFpaTFWUEJZU1BZWHZielcrdW44ZUdPQjdyTDVSZzJ2?=
 =?utf-8?B?QUQzVlNVakx4emJqb0JkN1l1VXRoZS9wL1hyempucUZwSFVxeFZrWXVZL092?=
 =?utf-8?B?QkR2NUU5cWVmTjN1SzlaNWM0eVZLWDF1QnpsMEFrRVh3VVhONUlGRDZvZlhs?=
 =?utf-8?B?ZTllVEhscEYwNk1CK25WZGlQaEw4bFFxanlrclgvbXdMWk15UUlHcmJRM1cr?=
 =?utf-8?B?UFA3dzdYK1M3bUJKVThiamtvYzZUeTVHK1g5cU91aE1VSG92S1cycGNnUzAr?=
 =?utf-8?B?TXQ3S0U5WUFyZ3VWcmZXOGxIajVkN2dhamMzYldNSkp5QmVnR1RabmNiRExh?=
 =?utf-8?B?dkpiSW9BUnhvUkRBaGc0NUI5ZGovcC96RG80NCtNREplMUo5elJsbEVqSUM3?=
 =?utf-8?B?VzZ2Nlp1TTFYN1FzRHhyL0lSU0x4UVE3dTNJRmk2SVlIVzRuR1FVdDVpbDFJ?=
 =?utf-8?B?SGF2Z1V6S1pEK0pHMmdRVFJLSzRzNk1Qb20rVldIby9Icm53d24zSW1yV3VQ?=
 =?utf-8?B?UGpJblR6ZzRYdk04allURmRyOVpSQ0JzVGkrdUNTZGNkWE03cXk1b3ZkWHBa?=
 =?utf-8?B?a0ZwNnhCTllkYmJmVjVHTWF3VlRUV2owQWhsMUVxRUpQTVlHMXZtWDZuSE8z?=
 =?utf-8?B?d29Takh4NmlxRnRqSnA1MkV5ZldLUkZoOGlBU0FNN3BTRTQvVWhCVFBnWjdV?=
 =?utf-8?B?cmtnY0Y1Qk9zd2RSOGxWMXJQLzZVK3dHb0Z3SVlrUTJidmM3U3NRV0NLbERP?=
 =?utf-8?B?b3p1UEhNbUhmK3lERmIrd29uZVlFVFY1SFE0TnQvdHB1MzhPREd1QmcvTEF2?=
 =?utf-8?B?ZndtbDZCbTE2Q0M5Tit0dWROYmlvZjBBVUc4ZGJSOW9STGo2MGdiZUIrNEkr?=
 =?utf-8?B?ci9VbURCM3ZzVDVWN1Q1djRoSnhPaDh2ZXFhRU9HK2JLUUNTUTM4bFgxMExv?=
 =?utf-8?B?R0dtVGVlOTduY1BiUVZjTFRpbnZPU0VkWVVwT3F2YVZYTkY2MGpGSTFtTW9W?=
 =?utf-8?B?RjlQdVVoRDVHbWZkaHVMZkVSTFYxTEdPNmNvUmo2NURMWEsxSkc0bVlrdy9j?=
 =?utf-8?Q?SOdS3/ptu6iy2KJCGkwc/Ys=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 05f8950d-ffe4-472d-74e8-08dd3bc88c9f
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6974.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 16:11:09.6754 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9WY/1DTcJZ0onoqT+rKuWz3laFN2y3PHa2WAL7XMkRq5vk0fmkzxX6OY00/UIaKseqzOhVkf8HH7TpSGMbi6N1eqtmJFIcsVegdtByCBzmrQhTY99+mvbLb/8hNMIi80
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7512
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

On 17.01.2025 19:06, Gustavo Sousa wrote:
> The DMC wakelock code needs to keep track of register offsets that need
> the wakelock for proper access. If one of the necessary offsets are
> missed, then the failure in asserting the wakelock is very likely to
> cause problems down the road.
> 
> A miss could happen for at least two different reasons:
> 
> - We might have forgotten to add the offset (or range) to the relevant
>   tables tracked by the driver in the first place.
> 
> - Or updates to either the DMC firmware or the display IP that require
>   new offsets to be tracked and we fail to realize that.
> 
> To help capture these cases, let's introduce a debugfs interface for the
> DMC wakelock.
> 
> In this part, we export a buffer containing offsets of registers that
> were considered not needing the wakelock by our driver. In an upcoming
> change we will also allow defining an extra set of offset ranges to be
> tracked by our driver.
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> ---
>  drivers/gpu/drm/i915/Makefile                 |   1 +
>  .../drm/i915/display/intel_display_debugfs.c  |   2 +
>  drivers/gpu/drm/i915/display/intel_dmc_wl.c   |   5 +-
>  drivers/gpu/drm/i915/display/intel_dmc_wl.h   |   2 +
>  .../drm/i915/display/intel_dmc_wl_debugfs.c   | 251 ++++++++++++++++++
>  .../drm/i915/display/intel_dmc_wl_debugfs.h   |  29 ++
>  drivers/gpu/drm/xe/Makefile                   |   1 +
>  7 files changed, 290 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
>  create mode 100644 drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 3dda9f0eda82..ac1ab79de9c8 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -251,6 +251,7 @@ i915-y += \
>  	display/intel_display_wa.o \
>  	display/intel_dmc.o \
>  	display/intel_dmc_wl.o \
> +	display/intel_dmc_wl_debugfs.o \
>  	display/intel_dpio_phy.o \
>  	display/intel_dpll.o \
>  	display/intel_dpll_mgr.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index f1d76484025a..b032535f4830 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -26,6 +26,7 @@
>  #include "intel_display_power_well.h"
>  #include "intel_display_types.h"
>  #include "intel_dmc.h"
> +#include "intel_dmc_wl_debugfs.h"
>  #include "intel_dp.h"
>  #include "intel_dp_link_training.h"
>  #include "intel_dp_mst.h"
> @@ -883,6 +884,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
>  
>  	intel_bios_debugfs_register(display);
>  	intel_cdclk_debugfs_register(display);
> +	intel_dmc_wl_debugfs_register(display);
>  	intel_dmc_debugfs_register(display);
>  	intel_dp_test_debugfs_register(display);
>  	intel_fbc_debugfs_register(display);
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> index 330b43a72e08..3686d4e90167 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> @@ -338,6 +338,7 @@ void intel_dmc_wl_init(struct intel_display *display)
>  	spin_lock_init(&wl->lock);
>  	refcount_set(&wl->refcount,
>  		     display->params.enable_dmc_wl == ENABLE_DMC_WL_ALWAYS_LOCKED ? 1 : 0);
> +	intel_dmc_wl_debugfs_init(display);
>  }
>  
>  /* Must only be called as part of enabling dynamic DC states. */
> @@ -444,8 +445,10 @@ void intel_dmc_wl_get(struct intel_display *display, i915_reg_t reg)
>  	spin_lock_irqsave(&wl->lock, flags);
>  
>  	if (i915_mmio_reg_valid(reg) &&
> -	    !intel_dmc_wl_check_range(display, reg, wl->dc_state))
> +	    !intel_dmc_wl_check_range(display, reg, wl->dc_state)) {
> +		intel_dmc_wl_debugfs_log_untracked(display, i915_mmio_reg_offset(reg));
>  		goto out_unlock;
> +	}
>  
>  	if (!wl->enabled) {
>  		if (!refcount_inc_not_zero(&wl->refcount))
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.h b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> index 5488fbdf29b8..d11b0ab50b3c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.h
> @@ -11,6 +11,7 @@
>  #include <linux/refcount.h>
>  
>  #include "i915_reg_defs.h"
> +#include "intel_dmc_wl_debugfs.h"
>  
>  struct intel_display;
>  
> @@ -27,6 +28,7 @@ struct intel_dmc_wl {
>  	 */
>  	u32 dc_state;
>  	struct delayed_work work;
> +	struct intel_dmc_wl_dbg dbg;
>  };
>  
>  void intel_dmc_wl_init(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
> new file mode 100644
> index 000000000000..41e59d775fe5
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
> @@ -0,0 +1,251 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright (C) 2025 Intel Corporation
> + */
> +
> +#include <linux/debugfs.h>
> +
> +#include <drm/drm_device.h>
> +#include <drm/drm_managed.h>
> +#include <drm/drm_print.h>
> +
> +#include "intel_display_core.h"
> +#include "intel_dmc_wl_debugfs.h"
> +
> +#define DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX 65536
This macro is not actually the size but the count of offsets stored in
the buffer. This is used as the array size for drmm_kmalloc_array call.
It makes sense to rename this macro as count

> +
> +/*
> + * DOC: DMC wakelock debugfs
> + *
> + * The DMC wakelock code needs to keep track of register offsets that need the
> + * wakelock for proper access. If one of the necessary offsets are missed, then
> + * the failure in asserting the wakelock is very likely to cause problems down
> + * the road.
> + *
> + * A miss could happen for at least two different reasons:
> + *
> + * - We might have forgotten to add the offset (or range) to the relevant
> + *   tables tracked by the driver in the first place.
> + *
> + * - Or updates to either the DMC firmware or the display IP that require new
> + *   offsets to be tracked and we fail to realize that.
> + *
> + * To help capture these cases, we provide the intel_dmc_wl/ debugfs directory,
> + * which exports a buffer of untracked register offsets.
> + *
> + * Untracked offsets
> + * -----------------
> + *
> + * This is a buffer that records every register offset that went through the
> + * DMC wakelock check and was deemed not needing the wakelock for MMIO access.
> + *
> + * To activate the logging of offsets into such a buffer, one can do::
> + *
> + *   # echo -1 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size

This knob is setting the count of offsets to be stored and not the size.
I think this should be renamed to indicate it as count.

> + *
> + * This will create a buffer with the maximum number of entries allowed
> + * (DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX). A positive value can be used instead to
> + * define a different size:
> + *
> + *   # echo 1024 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size

For me passing negative number doesn't look intuitive. Thinking do we
really need the case of passing default buffer size. We can allow just 0
to disable and any positive number to enable with the buffer size set as
value passed.

> + *
> + * Every write to untracked_size will cause the buffer to be reset.
> + *
> + * It is also possible to read untracked_size in order to get the current
> + * value.
> + *
> + * After enabled, the buffer starts getting filled with offsets as MMIOs are
> + * performed by the driver.
> + *
> + * In order to view the content of the buffer, one can do::
> + *
> + *   # cat /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked
> + *   0x000c4000
> + *   0x0016fe50
> + *   0x000c7200
> + *   0x000c7204
> + *   0x00045230
> + *   0x00046440
> + *   0x00045234
> + *   0x0016fa48
> + *   0x0016fa40
> + *   0x0016fa5c
> + *   (...)
> + *
> + * The order of those offsets does not reflect the order the checks were done
> + * (some recently seen offsets are skipped to save space).
> + *
> + * Once done with it, the logging can be disabled with::
> + *
> + *   # echo 0 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
> + */
> +
> +static int untracked_size_get(void *data, u64 *val)
> +{
> +	struct intel_display *display = data;
> +	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&dbg->lock, flags);
> +	*val = dbg->untracked.size;
> +	spin_unlock_irqrestore(&dbg->lock, flags);
> +
> +	return 0;
> +}
> +
> +static int untracked_size_set(void *data, u64 val)
> +{
> +	struct intel_display *display = data;
> +	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> +	s64 new_size;
> +	u32 *old_offsets;
> +	u32 *new_offsets;
> +	unsigned long flags;
> +
> +	new_size = (s64)val;
> +
> +	if (new_size == -1) {
> +		new_size = DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX;
> +	} else if (new_size < 0) {
> +		drm_err(display->drm,
> +			"%lld is invalid for untracked_size, the only negative value allowed is -1\n",
> +			new_size);
> +		return -EINVAL;
> +	} else if (new_size > DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX) {
> +		drm_err(display->drm,
> +			"%lld too big for untracked_size, maximum allowed value is %d\n",
> +			new_size,
> +			DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX);
> +		return -EINVAL;
> +	}
> +
> +	if (new_size == 0) {
> +		new_offsets = NULL;
> +	} else {
> +		new_offsets = drmm_kmalloc_array(display->drm, new_size, sizeof(*new_offsets),
> +						 GFP_KERNEL);
> +
> +		if (!new_offsets)
> +			return -ENOMEM;
> +	}
> +
> +	spin_lock_irqsave(&dbg->lock, flags);
> +	old_offsets = dbg->untracked.offsets;
> +	dbg->untracked.offsets = new_offsets;
> +	dbg->untracked.size = new_size;
> +	dbg->untracked.head = 0;
> +	dbg->untracked.len = 0;
> +	dbg->untracked.overflow = false;
> +	spin_unlock_irqrestore(&dbg->lock, flags);
> +
> +	if (old_offsets)
> +		drmm_kfree(display->drm, old_offsets);
> +
> +	return 0;
> +}
> +
> +DEFINE_SIMPLE_ATTRIBUTE_SIGNED(untracked_size_fops,
> +			       untracked_size_get,
> +			       untracked_size_set,
> +			       "%lld\n");
> +
> +static int untracked_show(struct seq_file *m, void *data)
> +{
> +	struct intel_display *display = m->private;
> +	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> +	unsigned long flags;
> +	size_t remaining;
> +	size_t i;
> +
> +	spin_lock_irqsave(&dbg->lock, flags);
> +
> +	remaining = dbg->untracked.len;
> +	i = dbg->untracked.head;
> +
> +	while (remaining--) {
> +		if (i == 0)
> +			i = dbg->untracked.size;
> +
> +		seq_printf(m, "0x%08x\n", dbg->untracked.offsets[--i]);
> +	}
> +
> +	spin_unlock_irqrestore(&dbg->lock, flags);
> +
> +	return 0;
> +}
> +
> +DEFINE_SHOW_ATTRIBUTE(untracked);
> +
> +void intel_dmc_wl_debugfs_init(struct intel_display *display)
> +{
> +	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> +
> +	spin_lock_init(&dbg->lock);
> +}
> +
> +void intel_dmc_wl_debugfs_register(struct intel_display *display)
> +{
> +	struct dentry *dir;
> +
> +	if (!HAS_DMC_WAKELOCK(display))
> +		return;
> +
> +	dir = debugfs_create_dir("intel_dmc_wl", display->drm->debugfs_root);
> +	if (IS_ERR(dir))
> +		return;
> +
> +	debugfs_create_file("untracked_size", 0644, dir, display,
> +			    &untracked_size_fops);
> +	debugfs_create_file("untracked", 0644, dir, display,
> +			    &untracked_fops);
> +}
> +
> +static bool untracked_has_recent_offset(struct intel_display *display, u32 offset)
> +{
> +	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> +	int look_back = 32;
Define a macro for this magic number

> +	size_t i;
> +
> +	if (look_back > dbg->untracked.len)
> +		look_back = dbg->untracked.len;
> +
> +	i = dbg->untracked.head;
> +
> +	while (look_back--) {
> +		if (i == 0)
> +			i = dbg->untracked.size;
> +
> +		if (dbg->untracked.offsets[--i] == offset)
> +			return true;
> +	}
> +
> +	return false;
> +}
> +
> +void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offset)
> +{
> +	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&dbg->lock, flags);
As this code never gets called by an interrupt, we can use just the
spin_lock instead of spin_lock_irqsave. Same applies for all the places
where spin_lock/unlock_irqsave/irqrestore is used.

> +
> +	if (!dbg->untracked.size)
> +		goto out_unlock;
> +
> +	/* Save some space by not repeating recent offsets. */
> +	if (untracked_has_recent_offset(display, offset))
> +		goto out_unlock;
> +
> +	dbg->untracked.offsets[dbg->untracked.head] = offset;
> +	dbg->untracked.head = (dbg->untracked.head + 1) % dbg->untracked.size;
> +	if (dbg->untracked.len < dbg->untracked.size)
> +		dbg->untracked.len++;
> +
> +	if (dbg->untracked.len == dbg->untracked.size && !dbg->untracked.overflow) {
> +		dbg->untracked.overflow = true;
> +		drm_warn(display->drm, "Overflow detected in DMC wakelock debugfs untracked offsets\n");
> +	}
> +
> +out_unlock:
> +	spin_unlock_irqrestore(&dbg->lock, flags);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
> new file mode 100644
> index 000000000000..9437c324966f
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
> @@ -0,0 +1,29 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright (C) 2025 Intel Corporation
> + */
> +
> +#ifndef __INTEL_DMC_WL_DEBUGFS_H__
> +#define __INTEL_DMC_WL_DEBUGFS_H__
> +
> +#include <linux/types.h>
> +#include <linux/spinlock.h>
> +
> +struct intel_display;
> +
> +struct intel_dmc_wl_dbg {
> +	spinlock_t lock; /* protects everything below */
> +	struct {
> +		u32 *offsets;
> +		size_t head;
> +		size_t len;
> +		size_t size;
There is no need of both len and size. head will always give the count
of entries in the buffer. During overflow, we are keeping a flag to
indicate a overflow, which indicates the we also have date in the buffer
above head till the end of buffer.

Regards,
Bala

> +		bool overflow;
> +	} untracked;
> +};
> +
> +void intel_dmc_wl_debugfs_init(struct intel_display *display);
> +void intel_dmc_wl_debugfs_register(struct intel_display *display);
> +void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offset);
> +
> +#endif /* __INTEL_DMC_WL_DEBUGFS_H__ */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 81f63258a7e1..f03fbdbcb1a4 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -221,6 +221,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>  	i915-display/intel_display_wa.o \
>  	i915-display/intel_dkl_phy.o \
>  	i915-display/intel_dmc.o \
> +	i915-display/intel_dmc_wl_debugfs.o \
>  	i915-display/intel_dp.o \
>  	i915-display/intel_dp_aux.o \
>  	i915-display/intel_dp_aux_backlight.o \
> -- 
> 2.48.0
> 
