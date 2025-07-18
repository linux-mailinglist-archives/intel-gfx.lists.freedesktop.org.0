Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE17B0A87B
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 18:34:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8AE410EA0B;
	Fri, 18 Jul 2025 16:34:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mKI55YbM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A75A110EA0A;
 Fri, 18 Jul 2025 16:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752856461; x=1784392461;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=y3O+WQmpOrJMZ42QmmVWOc3PbTaiLx8HWBFR9KaAs+g=;
 b=mKI55YbMU+BjO6nbYR3lA5aPlE0/7R0rhJKh/Q11OXOMW+FnYU/5L0/1
 ZkiCBLM1bkjMzqgNFo8EunuBxNlZuEoPaRa6kjQ2/vNluXDz5IqHbW+28
 qXYh4eK4ErHc/E/lxdS11fxkj5bM7s4PTMRH9qvHd8nCT8B9V9tmrLChX
 vK8uh6YMDyOG42sjZFDaqELrMs+cEAb1aTJXsunN1ELXr5KzQAn45GV92
 Zxj/AApjNveHKdWgtRYXIBWOwVm9RBAQc6dDICObu/bSR1Q3L1y+RJsyq
 0lyATpt4mYz8w46F5ZpwaLBNqIQq8zILIk5V424S0QjbE16NDGs6rJ3UP A==;
X-CSE-ConnectionGUID: GkPwOl3vTaej21s7dCDSEw==
X-CSE-MsgGUID: p7MXt7K3RUGzI73ZeQy1ZA==
X-IronPort-AV: E=McAfee;i="6800,10657,11496"; a="65414613"
X-IronPort-AV: E=Sophos;i="6.16,322,1744095600"; d="scan'208";a="65414613"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 09:34:19 -0700
X-CSE-ConnectionGUID: qdShrbvAQKCKFO8u1crsDw==
X-CSE-MsgGUID: gqImyG+sQa6SpKhmAcgcJQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,322,1744095600"; d="scan'208";a="157474809"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 09:34:19 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 09:34:18 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 09:34:18 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.53)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 09:34:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hkVZhgo7KgVBWtVk3vA49vgq3RIl60BESCTv1+IBfTOKpDdMSPtSalGmF0KW7pB2D7nR/SsDkhBMbCsrpwZ+bU889+ZCC7MXVtn7LGrJG2WVb4kLJaXwNec/F8o/532wCQ06whnVSWFisys8Kceszy8G6ZySKEctaU+WVO7UHqYQ63yp4ZH/gzAZt6vs7wxILYaNC47W9jgvXid0yHoXVVd6NErFvuEZZwGdXuRj/dZblhX1NusQ7bs07UaAqfOyk2oZDC6grUmfl7r+sau6nsFpIOmtkh9ZGn1v3CDuOMXRFRA/XWrOltDlL7BPp+2+LD7V7vVnGQAauIiaYbH+RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ovaqu1NqarMxzoRRxD3rCHYhgDC9Un4BWZirB1pLNjI=;
 b=YBP03h5ztz17/0SyI1BzpC5j32DsB62Lzgq33UAtq3/OAxac8TK391/ndhPEr+FMH21lBD6reZ/dXwutyRm5jSSyiMC44XEaJ9qCGNasGyuoDqYdYRWwNHxckKKeSGY3H+0weXE3HFP1rnKdBumy+nEkDGYTHHghAy7ht6Z0Ovr3FTon8v2R3DZOTF9FC0vaP7onNGJEkDWcSUOfwLmEnCgjXullKwjOQxG4VA9ugls8GPeJEE+XxNHZ4b5tJ06BD8fMJmpMcbKvnaoYa5T2ucmmYCPzqac7PNdv9hZ2l1nEXJUBBOGNTmt7wdIuOriYxMP9XavPBXWyrrVB8IsyLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ0PR11MB4944.namprd11.prod.outlook.com (2603:10b6:a03:2ae::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Fri, 18 Jul
 2025 16:33:35 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8835.026; Fri, 18 Jul 2025
 16:33:35 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aHpuI_h1ytLlujDN@ideak-desk>
References: <20250717051603.1036746-1-chaitanya.kumar.borah@intel.com>
 <175275376596.1809.4970039481532019393@intel.com>
 <aHpuI_h1ytLlujDN@ideak-desk>
Subject: Re: [PATCH] drm/i915/display: Skip unavailable power wells based on
 pipe mask
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dnyaneshwar.bhadane@intel.com>, <dibin.moolakadan.subrahmanian@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>, Imre Deak
 <imre.deak@intel.com>
Date: Fri, 18 Jul 2025 13:33:26 -0300
Message-ID: <175285640686.1809.2888738151042642518@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0100.namprd03.prod.outlook.com
 (2603:10b6:303:b7::15) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ0PR11MB4944:EE_
X-MS-Office365-Filtering-Correlation-Id: 98ba28ed-b53b-4e38-94b6-08ddc618d74c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bTMvNVh5anhZQzkyMER5aDBKdTEzNVBVWllmdXNQUjhORWNSQlB2d1FnMjIx?=
 =?utf-8?B?TityS0NjMmZQZ1YydGYzN0FNVlNueklyd2h0QWFXNGRmazMxQ3l6ZXVmRVQx?=
 =?utf-8?B?V2diRmtTeU92S3ZSZFJJS0xxaW9qTWUzVWF0L0pLVjlMUE12T3ZpbjRPWkdU?=
 =?utf-8?B?R1ZKZ0l0VDBBNTlLd2pJMW1wYVVDV3dyT1h6S2NnWVpEcmx6RUZHZThDMmF4?=
 =?utf-8?B?NUFxNlROMDZWNFJ0YmFkcVlGNGp5dEZlcnU5MzBXRkNNSnBSWGduVjdxaDEw?=
 =?utf-8?B?cjZZSzRkL3ZNcHBKZXpnNGpwdDRDZERZY252RzVldEpSdm9pWWhMd2g5N3NY?=
 =?utf-8?B?UkZPbHVNSGh1d0JTVlBHM0szME9xaGRncGV6Tk1HVnEwMFdLMnhMT1FyTm5x?=
 =?utf-8?B?cDVubkdoV2lZSnBrU3huNzVFTVRFSEhlSDdhWU9YQUZUNm9xVS9jMmJIc1ox?=
 =?utf-8?B?VVdpa1NOaVB4RlVCNDdRR3pWaTFaVnBwWm5PMWc1WXhhU3JKcTV0VEpxTFNR?=
 =?utf-8?B?V1duWm9JL1JlaFFIcGQvUkNYM29oTHpvRlIxdzgzOFdRbFhOb1k0MmFISW51?=
 =?utf-8?B?U3FoZFJSeU1jUUxaS3dMSkR1QmtBdldFV0R2WExBVnRYdW1GMjR6SUpvWThj?=
 =?utf-8?B?SUwxTmVTTklWSE9xWm5vNUEzU0dMUDE5d2Z2TEtUWWVDSXFHLytwWDlBcE4v?=
 =?utf-8?B?Vk1NVDlwYlFENm0rQU0zVjFVVDB2S0crSFFyZSt2YWx2QUxPZktmZVcyODgr?=
 =?utf-8?B?ZkJuVEhRbkt4SGRBUnRONGhjTFpOY2tNZG5wSEwyMXZqLzI0SmdDL08zSXZr?=
 =?utf-8?B?N1F3UUlYbjBtc0R0dUxVOWx6c2lNNlpYMCsxTjc5aXBua2llOUtBRjR2dDB5?=
 =?utf-8?B?RjJENzJoM2huTFB3dTcrOFVMNjgwMWUraWQ0T01kdURyVnhxU1JBaW9rRDk1?=
 =?utf-8?B?OVplRCtiY1JGOEt3TVcwd0VZY0dlcThOcDBzSU5qNHR1clNaM1JzVzE5aDJm?=
 =?utf-8?B?TWN6K3dIS1R2MnRmVmY0ek52U0djTUN2a2QxSXgraWxQdG4vRFo3bnd5NFN4?=
 =?utf-8?B?WVhUT1JuVms5NjlxTzFMV3RsNVZGQXNKOVlmSEFuNmpSQW8yRG1XbFIyNGtP?=
 =?utf-8?B?b3F6UWh1RGQyakZTVDhYdFN2Q3hWQW82b0JpS0dUVHJjdjhBS3I2anNEOGZM?=
 =?utf-8?B?YlNBRzhPY3Y3RjNBK2Q2ditXTkIvb1dxdldsR2wyOVgyRlVJd0RDT1pXY3JF?=
 =?utf-8?B?cGp4MkFCUmlTczZ6a2ovYk1YT0FrRXZWcW5Ta05qb1MwVVhqNEpKNGgrL0hW?=
 =?utf-8?B?eFFMN01DTDhTNE9rMkUwZlYvbHFuOVZGUXBZdVAxaWZNdUhRb24xU3RrQWdr?=
 =?utf-8?B?a1Q5UG5SSHoreHk1MEJpeTNhYjBCZUN3TE82QzA4UVREOFBFRVZjNmRrRWdR?=
 =?utf-8?B?L015SWdvdGtlc2ZWYk5jTGVrckEwMHNPcXAvd2s2VmFwTFhORjZsYkdqb2RJ?=
 =?utf-8?B?UjgrYmZPaHUxdnNJS0tIRURWYWd3bjN1NjdlMDVtWTFzMVNET2M2RVJYcFUr?=
 =?utf-8?B?REhiMTRYSXJHY3grSmtOOUovbm5VY1VzNnl5VC9wNlkwcjVkRjhIQW05S3VQ?=
 =?utf-8?B?OFhwRHJHMURiS1ZCZUVCL1JuZ20ycHpSZEZRUkhvYjZlQWprdldJeW52NTFG?=
 =?utf-8?B?VnNQYzIvNlNubm40akxOY0RiY0tOVTdkUkxJOTdBTDkxRXNlZHNVQkV5SXRi?=
 =?utf-8?B?UjQweW9PekZYZE1sNm80cDNzVExiaWVSbEJ0SVpPby9xQXMwQ3NzbE80VXZO?=
 =?utf-8?B?Q3pRZGladEpqUTRTVTRxWlJVUVJDUWVQM2VvYkdvcVd1aUFUd01nMGlXamZC?=
 =?utf-8?B?NXNPVkR6N0xUaFBHNHhCYkNGZWJPaUFpUTBFTm55eXZiNlE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SEF0Vys0dmFOd0FrSmR6bFp4MDByek1pUjA4K3NDdmdlOXVBZHRtOW5scCtr?=
 =?utf-8?B?ZEQ1QVZJOVVoaTlKSnBKOXl3RXN1YXFvdjBnd0M2NHE5NUxFNkEzS3pZNm13?=
 =?utf-8?B?WmRnSUNGRWRhSkZBdmtkVlBtVno4NmlIY3RiejFSL0pkRStCWmlVNkU4WkQ4?=
 =?utf-8?B?NmxqMkRXcmlkeVB3M0JYWUlmWVNlbDVmY2RKZmd5dkROdS94NVROZk9jV2V0?=
 =?utf-8?B?WUl6Qk94UHh5L2hPaW13L2JXVTQ3VmloZU52dkt5MlBmUG9Mc241SEYyWUNi?=
 =?utf-8?B?bXkvbHVETnp6MzlCL0poOEI3Vys4bncxVUxFVGhBRFplQ1ZIUFR4a1hJRGI1?=
 =?utf-8?B?L1orbVZRME5lcnE2c1p3OHVqMlhIR0hwcEtSbTZOa2p0T1VvdmhVZXZnUWpk?=
 =?utf-8?B?WjhzTjk3UklZbjRvY2NaRi9OZE45UWR2NjV1OERFeWUzYkRycDF6cjY1bUFR?=
 =?utf-8?B?SWIwRWVhTmJMM1pTa1lORFJwRzc2ODI4MG5pMTVIN3JHWGYwN2tCNkJBWEpq?=
 =?utf-8?B?dElRaUFhb21BNjFIVXNicklHWHZOa25tbGVvamdHSzhFNTFVaW40N0toYUtN?=
 =?utf-8?B?Y0IrTXVueExvUGdDNklzMzVoUHZYTWlERGd2VjlocVNxTXV3TFV6US9rVEQ1?=
 =?utf-8?B?ZDcwdWVSeVl6ZE95eFdTUFRzcy9wdGxSbk90VWZOV2VnTjRJOGRQcjFlcWY2?=
 =?utf-8?B?Z2dMMmRkc29KVndYcHEzSmVVbytYSWhpVkFYWDdkYkJpOGtSNFJFc25jMU1I?=
 =?utf-8?B?NXJWcy9YQlYwUElPM1IzZnVmTy81Y2ppZFF5NUpoTWVxT1VxeE95VUxrclJM?=
 =?utf-8?B?VUtybERwTGFwTkFyaHAvSm1qc0Y0NGJyV0dFMTNhVmNBZWRpbGNjcll0YU5n?=
 =?utf-8?B?ZmlIb2EvZWxXbDlwR3Z4Yk04aExZNzJZUUNtaElyOFhqM1V2dFpaL2ZYSkVj?=
 =?utf-8?B?Mmw1T0JTSWNyQktiWXoxNDNZMUU4VHFGeERBNWNPelp1Z3poMXhXaWs2cUFS?=
 =?utf-8?B?NEs0ejM0OVdPNTg4ZUFaVWl1ZFM5WG5FUEl3WnVtVzRGWWtDY25mOVFuekRl?=
 =?utf-8?B?dVU1aUdGaWkrQ3hkSGZkSkhocmxTaUFOV0RuOFgrbVVuNzQ3d2Q2d25iT3ZU?=
 =?utf-8?B?cGNDbjUyNnJyOFFnY2o3WFFGWTVsR2ZqTGU4T2FuZTJiNFJNZ2JyNjl4UkVx?=
 =?utf-8?B?Q0dFM0VYVm1jVmpsR05iZG1BR25BczM4NjY3YWZidTlZWG5Oa0FmNVJnMW1L?=
 =?utf-8?B?c05FWmF4NnNsZkVhVUcyNnV1NUtIQWU1ZkhGODI2RUQrTFdEMXNycnN0Z0Vo?=
 =?utf-8?B?dVhlRlJXUUhqR1ZQczBrSHhvalZ1ekxLUkh6ZitvdXB2dFZGRUxXZDJuNXpo?=
 =?utf-8?B?bHBCZ1ArWU5wQjZlUmlpOWNwbXlHM0pMYm9TUVVOVEVIK1huVkV0NCtrZHh6?=
 =?utf-8?B?MzNtSytNTnBxbnpLYlNMMUN1QWIvNW9KMUJSVW5uN0s2WTJDUlJqclhIdlp0?=
 =?utf-8?B?ZjRPWmYzanl5WjdVSjFiU0ViREQrbDVkbUNXdmczT3FRVnZlbTZDVzV0bTJR?=
 =?utf-8?B?Yi9FRGN1bmQwS0NuNDBIK0NjanM5TlE3NVV1a3RZSS9tUjJNdklIVWNaQXNl?=
 =?utf-8?B?MWpYV3ZIc2pNclFqVk5qRkV1L0UxUVdpT0ZudGJta2d6V0RHMThxUEVZd0Q1?=
 =?utf-8?B?NURmS3VJZ3lsOE5lQmNpVUNocXZZOGRQeDAyYXVtSDdpYTBQclV0QlpoMTlx?=
 =?utf-8?B?SGxyNVN0RUZhUzlMM0tENjFRc1RLMzRvaEcwemNIQWNVdkw3clc0UFRzWndV?=
 =?utf-8?B?TDJMOUZHS3diRVUyQTZYMFI4RlJYWGRKVWIrS2NrV2wvR3pBNGJsemRLTUxI?=
 =?utf-8?B?QTZ1NjlYNWQ3YWUxc3c1QUIwUkpWdjlDTHJHRUVkZGRaR1dObU5lWjJVLzdT?=
 =?utf-8?B?dWhTd1ZVOUg5RWsrMnBOS2hQcjlHMXArYjVRNisvbUo5dXM4K0h4Y2dkZkp1?=
 =?utf-8?B?SkE5ZHFEeG9kajhraC95dFMrWk1tdTQ0RTRiYTJYaWsvbm9CMWt2SzJ6Yzl1?=
 =?utf-8?B?QWg2eFE2blAzMUJva0VCRlNYbW80bFgva2VpYmJFWVZDUHdrWmtpdUc4R2g2?=
 =?utf-8?B?ZVl0SmxBd2QweEZNYnYxUGd3Uy9vaVpGMVprUnNBbG0vRytpVXJhUW16aW5B?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 98ba28ed-b53b-4e38-94b6-08ddc618d74c
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2025 16:33:35.3216 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1yvi0ZdzJn0AHiavJp3UjWZ87GAmkEJ4nf6fF0/DOLvqjuS2Rc/0mqWd0wEUNacRxQg+o/zSm9FvmWu+3TPUjw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4944
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

Quoting Imre Deak (2025-07-18 12:54:11-03:00)
>On Thu, Jul 17, 2025 at 09:02:45AM -0300, Gustavo Sousa wrote:
>> Quoting Chaitanya Kumar Borah (2025-07-17 02:16:03-03:00)
>> >Some power wells are only relevant for certain display pipes. Add a che=
ck
>> >to ensure we only allocate and initialize power wells whose associated
>> >pipes are available on the platform.
>> >
>> >This avoids unnecessary mapping of power wells, particularly when platf=
orms
>> >support a subset of pipes described in the power well descriptors.
>> >
>> >Suggested-by: Imre Deak <imre.deak@intel.com>
>> >Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> >---
>> > .../i915/display/intel_display_power_map.c    | 19 +++++++++++++++++--
>> > 1 file changed, 17 insertions(+), 2 deletions(-)
>> >
>> >diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/d=
rivers/gpu/drm/i915/display/intel_display_power_map.c
>> >index 77268802b55e..ca73e4084354 100644
>> >--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> >+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> >@@ -1748,6 +1748,16 @@ static void init_power_well_domains(const struct=
 i915_power_well_instance *inst,
>> >                 for_each_power_well_instance_in_desc_list((_descs)->li=
st, (_descs)->count, \
>> >                                                           (_desc), (_i=
nst))
>> >=20
>> >+static bool
>> >+is_power_well_available(struct intel_display *display, const struct i9=
15_power_well_desc *desc)
>> >+{
>> >+        if (desc->irq_pipe_mask &&
>> >+            !(desc->irq_pipe_mask & DISPLAY_RUNTIME_INFO(display)->pip=
e_mask))
>>=20
>> According to irq_pipe_mask's documentation, that member contains a "mask
>> of pipes whose IRQ logic is backed by the pw". I think we are
>> overloading the meaning of that field with this logic.
>>=20
>> * Do we have guarantees that irq_pipe_mask will always be associated
>>   with the power well that powers the pipe?
>
>It is the case on all the platforms and so it also provides the required
>way to identify the power well for a particular pipe. irq_pipe_mask
>could be renamed to pipe_mask accordingly.

I mean, that *exclusively* powers the pipe(s).

As an example, bdw_pwdoms_display appears to be responsible not only for
pipe B and C, but also ddi lanes and audio, for example.

>
>> * If the power well that has irq_pipe_mask is also used to power
>>   something else than the pipes, we could have issues if pipes in that
>>   mask are fused off.
>>
>> I'm leaning more toward a solution that makes POWER_DOMAIN_INIT map to
>> POWER_DOMAIN_PIPE_* based on DISPLAY_RUNTIME_INFO(display)->pipe_mask. I
>> have some idea of how to do that without rewriting code to use a
>> hierarchical structure (which IMO would be ideal, but takes more
>> effort).
>>=20
>> The idea is to, during runtime and initialization of the mapping, set
>> the bit respective to POWER_DOMAIN_INIT in each power well that has the
>> bit for POWER_DOMAIN_PIPE_* set for non-fused off pipes. That would
>> also require removing the POWER_DOMAIN_INIT from the static mapping for
>> power wells directly responsible for POWER_DOMAIN_PIPE_*.
>
>Power wells that don't exist on a platform shouldn't be registered in
>the first place, so it's not enough to only remove them from the power
>well->domain mapping, while still registering the power well. Otherwise
>these non-existant power wells would still be accessed while disabling
>any unused power well during driver loading/resume. Also these power
>wells non-existant on a platform would be incorrectly listed in debugfs
>and other state dumps.
>
>However, I realized that pipe power wells that do exist on a platform,
>but for which the corresponing pipe is fused off (for instance pipe
>A/B/C on WCL) we still need to register the power well. On some
>platforms at least such power wells may be enabled after HW reset/by
>BIOS and so these still need to be checked and disabled if needed during
>driver loading/resume. I.e. instead of the above

Ah, I see. Yeah, that makes sense. Thanks for the details!

Well, although Bspec overview page tells that WCL's display has only
pipes A, B and C, the page specific for power wells still lists power
well D. So I'm wondering if WCL display just has pipe D fused off and
the power well still exists or if power well D being listed in Bspec is
just a documentation mistake. I'll check with the hardware team.

>
>DISPLAY_RUNTIME_INFO(display)->pipe_mask
>
>something like the following should be used:
>
>u8 pipe_pw_mask(display)
>{
>        if (DISPLAY_VERx100(display) =3D=3D 3002)
>                return BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C);
>
>        return BIT(I915_MAX_PIPES + 1) - 1;
>}

Well, if power well D does not exist indeed (i.e. not a case of pipe D
fused-off), we need either this above or maybe go back to Chaitanya's
original patch.

I think I prefer the original patch, making the power well mapping
explicit.

--
Gustavo Sousa

>
>> --
>> Gustavo Sousa
>>=20
>> >+                return false;
>> >+
>> >+        return true;
>> >+}
>> >+
>> > static int
>> > __set_power_wells(struct i915_power_domains *power_domains,
>> >                   const struct i915_power_well_desc_list *power_well_d=
escs,
>> >@@ -1763,8 +1773,10 @@ __set_power_wells(struct i915_power_domains *pow=
er_domains,
>> >         int power_well_count =3D 0;
>> >         int plt_idx =3D 0;
>> >=20
>> >-        for_each_power_well_instance(power_well_descs, power_well_desc=
s_sz, desc_list, desc, inst)
>> >-                power_well_count++;
>> >+        for_each_power_well_instance(power_well_descs, power_well_desc=
s_sz, desc_list, desc, inst) {
>> >+                if (is_power_well_available(display, desc))
>> >+                        power_well_count++;
>> >+        }
>> >=20
>> >         power_domains->power_well_count =3D power_well_count;
>> >         power_domains->power_wells =3D
>> >@@ -1778,6 +1790,9 @@ __set_power_wells(struct i915_power_domains *powe=
r_domains,
>> >                 struct i915_power_well *pw =3D &power_domains->power_w=
ells[plt_idx];
>> >                 enum i915_power_well_id id =3D inst->id;
>> >=20
>> >+                if (!is_power_well_available(display, desc))
>> >+                        continue;
>> >+
>> >                 pw->desc =3D desc;
>> >                 drm_WARN_ON(display->drm,
>> >                             overflows_type(inst - desc->instances->lis=
t, pw->instance_idx));
>> >--=20
>> >2.25.1
>> >
