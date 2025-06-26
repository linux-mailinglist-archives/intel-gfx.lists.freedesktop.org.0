Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF44AE9713
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Jun 2025 09:44:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 319AB10E045;
	Thu, 26 Jun 2025 07:44:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TztLVv8q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED79310E045
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Jun 2025 07:44:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750923891; x=1782459891;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=v5W0vyskVY1vJFYip2tpHF10ac3+NUIAgDJ16IWcq5A=;
 b=TztLVv8q9Lr7m+NylN73m4JUZtP3h80Eodah+INqdsB0HeyFYfHGFhYo
 RxygOrf69WBSf0CKE5NnIy366STd2SBsqB97kIGNkyI9nRN9edadbUrbi
 K+r3R4btiar3VsZP7zjL8frPZam8k0UDhWRz4DAvEqL+TuX0BFs90S+f+
 8eyMJjBlBTlfjAMIGSyuY27yuOKno5sgxu7yXttNS+aZsOrAwQaupmgi9
 6rli8fevWjvtNuq/qgCwwNZnyrwHXc7GiWTtFJ8xwUZ3RKKFxFjBtPP6H
 TXnUs/TDt+ar5U1vGDhqec0emrunK+6VJ97fgDjBMbWNoDdBkgzWBE4PZ Q==;
X-CSE-ConnectionGUID: cxQXg/nrSLWk/sesx8UaYA==
X-CSE-MsgGUID: zdyF59M6R+m8nJmyzk14gA==
X-IronPort-AV: E=McAfee;i="6800,10657,11475"; a="53306155"
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="53306155"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 00:44:48 -0700
X-CSE-ConnectionGUID: ZXCRrFPEQM+tRI6ThXJ4Fg==
X-CSE-MsgGUID: cN85CLsLTPyt0LtMmfZl1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,267,1744095600"; d="scan'208";a="152943346"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jun 2025 00:44:48 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 00:44:47 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Thu, 26 Jun 2025 00:44:47 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.64)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 26 Jun 2025 00:44:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BadPt6CRjDF5fy7bX32weXHx/XxXp5g+7jKRURyOWX1gQc7NtLqdEAygiYtwYoS1q6oUS+sM2mAS/eYTti9eEZnPNgYssFRL/CYYF5KFkwsosQniNXi941pGsgn7ZHTfiS08+S1See/LKIhCX6pxSmdlBEWEJ3RA45lJckxvMFELJkyPF87UUYb1qXGg0B8BRz5kjIZgAVUGiJfmOqAdEsgnGr5csnbOAMxPnMZfho9Rb0n9VfsZTMBCiBKX9jycNIH5FQyvibqrU2dgCpM6Qk4JdJh9pOgeNWW20HZ20pwEVBMc7NUuZBtEV9RBy6iTcLwemqZ5ylI+yI8WVimwvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6d+JSx9CnlHTBZDlm757xKQ+1EW/cUKu64Pq0zQH9Go=;
 b=wIceuGLQVUqu2tHrB+tPTwMiElaCcjvSYcCgM7eJE/E+Af7cRr4PyxndUnnGTEQ7Qo+2SlqTrnZdrVu1Dd8P9EzjNnpt/Tm8K2qnWFJ2v46LkkJbwzjUOg6Buyq7ftEoJ0vs0+p3AJL/svQnRvB8s3zlVdaWg42k+kH4Q/rV0svJE8M8gNgFnZxUl+TDaFTELLT5xSflGtTcoYjKAvdXrf4j6gFlnFps05CEgNERV0lXkRu9cuOt5zYL+/0vSVEy3dzFNEgEw78hpCMA9cvwYh+rnljIt3UxteWCXIiZ0oDXM/O1uWul8eIfqW+ZBBHip7Sj78mCyCVjSfrznyXqyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH8PR11MB6803.namprd11.prod.outlook.com (2603:10b6:510:1cb::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.29; Thu, 26 Jun
 2025 07:44:12 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8857.026; Thu, 26 Jun 2025
 07:44:11 +0000
Date: Thu, 26 Jun 2025 07:44:06 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Chris Wilson <chris.p.wilson@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Matthew Auld <matthew.auld@intel.com>, 
 Andi Shyti <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH v3] drm/i915/selftests: Keep mock file open during
 unfaultable migrate with fill
Message-ID: <mdhec3mgjuopdzacl5dw2mbvvp4kz6r6okqov65jl34urpsquw@qw6rdbixjgnk>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <di25mtf23dwhfrb5lawcytbn5pg73dc2mma42ny3moiqluwl66@gkepxlpv63cs>
 <175034204806.2265741.12155401070258841657@DEV-409>
 <z2dygiyxb5b7baal7x7wnblfsxnypdmvsq4za7cc4snu7tsbsb@5my2zixfojr7>
 <175086181809.2429776.4245800173980322185@DEV-409>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <175086181809.2429776.4245800173980322185@DEV-409>
X-ClientProxiedBy: DB9PR01CA0005.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:1d8::10) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH8PR11MB6803:EE_
X-MS-Office365-Filtering-Correlation-Id: 09837131-53df-4226-5ed1-08ddb4853dbb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N0JlZExqejRMaGRKUmRHYjJlMDlWenFRUm04ZmlOc3YzdEJxSWFubzZGdzJz?=
 =?utf-8?B?Q3p5WEVvb202aTVMUnA5Q1JrK25PZ0tkUm42Y0U4Zkdaa0xqdkc5RldZeUdH?=
 =?utf-8?B?RGNZVWFrVEx3Y1Zud3NjSENmcG15Ump1WFVxVTdCNU91TVJWSVYxN29aaHIr?=
 =?utf-8?B?S1hJaWExRGw5OGxRbFMvT096dlVmZzRPdTNNLy9nWGhCOTFaVGxRaUU0UUlX?=
 =?utf-8?B?VzhQbW9JTnFCbGZwTE11OXE5SENTVThKTlZCTU50MG90TzJzN25ocnhpVUc2?=
 =?utf-8?B?RnJSMVlOaWhqZUx4dXRLSW9RKzJPcHRhdWRCWGVRV25XQkdmZG03S3hxV1Fq?=
 =?utf-8?B?dUI3NFFFR2t6dmJIY3Jmd01BbFhvcEtJREpEYjZ0ZS80dCsvNG1LbG13M2t1?=
 =?utf-8?B?cldVQzBieGRsMzMyWldVd05tRk52aFdYck5YQnBmRERVMzQzRHh2Lzg4V3gw?=
 =?utf-8?B?YXpRTG9EelNaeHJoUUVmMDlrRE9tR1RXdE5UZ3pQRU9wWmVWRU1ScGlpNW9V?=
 =?utf-8?B?S1FzU3dUaXFLVHU0MGhkOThKQzFiNjBsL2YvalJkNG5PdDhXMGZ6MmdwMTk0?=
 =?utf-8?B?K1pMLyttZG5tdjlQcDlMQlFnZXRHZ0YyQVpGdzMzVFFNNjY4Z0ZYalR4blZ6?=
 =?utf-8?B?UTFKMXJLUWhxemtsSTJkRzMxTnR3clJQckxTcjJKRTlqZGFCZVRVeU0xTmdr?=
 =?utf-8?B?RzdUVWtSZXhpdDdxU3haUGFZZDhCeTJEWHA4eUc2MFVrd0pxWHNSVFYwOTYv?=
 =?utf-8?B?U25UQmFaVFozV1lSSitmZU9aaWVJanh3bXpFZlFzM2M2K2FaOTNiYUlOaE5a?=
 =?utf-8?B?b2VJUGhRM2xXUjFOK1hQWVduVThkcjVXcGxGSFJuRDhwYkNKY2Q1OFZ3dUh3?=
 =?utf-8?B?eURUNW5jRHg1cFk5bmxrbmpNR1c0bTB2NUt5U2tUZ2Ntb0FqZG5ER1JPQ1Jr?=
 =?utf-8?B?eGxhd3BjRlJjNXB5QjFXa2RIYnpXWkhvek0ycEEzNDRWbDdycmJxV05mYmhI?=
 =?utf-8?B?ZGxLOCtESGF4YWVBTSsrVHd1UXRlMEtWNnU1dVRzYXh5YmU1Q21Sb2NjQW1Z?=
 =?utf-8?B?dFhLdjM1NlFJVFA4RGlqRzV4czNZcWhWTTlQcEdqeU0xdFByTzVqRkY2dStD?=
 =?utf-8?B?anJlOHlwMis4bTVCRlJxNkNoZkdjVFQ5L1pDVnFwenNQaTFLKzdCQzljYTN2?=
 =?utf-8?B?T2kxZ3JhSmNZelU1SHZ3OHBuUXJScHRUd0Mxa1Z1YnUrZ2tRbnhNelJPNngy?=
 =?utf-8?B?K3paWEl0bDNWUllTbDQrVDgvRkYrYnhVTDJSbU16NlVJUW81QldkWjJCYjZN?=
 =?utf-8?B?aUNzMS8wUlpCSkZFSDZiNVc4KzdPRlluY1NPTVpyakExTUd4eUM3MXRYOHlz?=
 =?utf-8?B?TUdLRTA2cVdsWTdHN2I4Z2tCcmNJMXpSMTR5aTZmVUFlZDRTbUorLzRyaEpn?=
 =?utf-8?B?cUlaWFRFWE9UY3pwVTFNYzNBZ0pDUWVGM1RTUHJFbEtYeGhwVGlheG1ZbDZz?=
 =?utf-8?B?aDJMZ1p3QXpuREJKMzFGTk9ERm9HbSsxYTlPN2JDdVErRzlENXBZU1Q5YXIr?=
 =?utf-8?B?YVpUeTQzMlI5bE5OYWgxMWVVamxSRDNhRXhRQ1VvbVhEVnBycHJGZ1BTQzU2?=
 =?utf-8?B?Ujl4NFBwOGl0VW5iU1ZFRTB3OTlyKytBaUVjNmFwQW1yYlQyNVlrVGMvelQr?=
 =?utf-8?B?TWFmbzg2dllhdW9HWk5KQU50dXh5MzBRSDE1YXMyeXZ0NHByMytnNG9WSUo2?=
 =?utf-8?B?ZVZkR251OVdxV3ZVWFpJY2k3ZUVSRXZWNlhFNUpDL3N0YjVBN3ZtY1dDekEx?=
 =?utf-8?B?eVpiN05PUU4xeVBhZTFFTzJXbExLbE40ZmkzYXZoNFdTRlI2Sm9qKzByT1hx?=
 =?utf-8?B?V293YmZEVnAzZy9ZY2h4Z1QwZlhVNkMrTTliWVFWOEFPYVBPdktYTDlvZk1T?=
 =?utf-8?Q?MH2o4e5r1xs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MFZhZDd3bm5KQmtZUy9VUHFhT2ZkTW1iTUdaeWRKR3dqVmJUUncyTXlGS0Iw?=
 =?utf-8?B?NVRTck00Z3BsZHMzVHd4OWgxL2VTNEtnMjB4OHZlN2VVNXErbitrYmZsdXlj?=
 =?utf-8?B?QktubDJPajJYcGRsRGZmT1h1UTJFTjhvTGlMd1czMEp6a0ZIZHdsdmNncHlm?=
 =?utf-8?B?d3ptK1dnc1k3VENSTi9saWhWSTgvNTRMVXpoSklSME84Wm9rMndIdnFVWGdK?=
 =?utf-8?B?cjY2MURpN2xkcjZUMExNYk5rN3dwcVpoMUZjaEdJNWVlZkFGbzBsU0JkUFQ4?=
 =?utf-8?B?dkZkbFhGMDVaT1hmejNSRFNQazIzYnNiYXNxcHU1MkJtM2pRejEzaXRPZmM2?=
 =?utf-8?B?SFJnOTd1MjQxNTJFREFPSTZaZGx6aEtEMmE2T1VzeUJ3NjlXUzdSU2FPaUNB?=
 =?utf-8?B?em81Nmtmb2FwS3hUUVhzVHNvMmZMaHRUa3NIWVcyYmRoVlVEOW9Zb1VlVVBi?=
 =?utf-8?B?T2xBaDY5Y1F3eFpDQWR2WnVVejgvd091WjMwZnEvSG82UHlCK1Awemg5RDNj?=
 =?utf-8?B?WHdVVWZNcmEwTWZ5UkF2c0NmbysxaS9Kd0YxS0VjQ2dIMGNMK3lrd2NwSzhk?=
 =?utf-8?B?VEZFME5ENGZUMk8zUExha0MrODdpNE1YbzBtdmM5eklzc0dVQ1ZZOUhWd014?=
 =?utf-8?B?VWtyOURnb2tHRzBXVzdDVmFjYkNSSWtmQmVlUHNOQ2V2VUxKT000VHMrWW9R?=
 =?utf-8?B?c1FJeWdBSnZjLzF4N1hqR3lMWUxXYXJsYlpBdjRUM3lXd2QxMnpVc0t4b3py?=
 =?utf-8?B?SHMvbzd5WVBCZHdxYmNpOHJsMGRPTUVGRGE2ZjgveEkwbW5lS0dDMDRJdXdu?=
 =?utf-8?B?dEMzcGtHeExSMnRSdTM1RFFIS3NGNSsrMjBNbnJzUjdDMlhEQm9peTFGdGl4?=
 =?utf-8?B?Z2lETzNUWHdHR2c3dnBLVDYrZXNCQXBIM2FNRTQ2RTMyWTU1Um1UVmEvdTRR?=
 =?utf-8?B?Z2Nxc3RyREJKeEdOWFdRZDFnY1JNanlyTjVIWWIvVnhiblpXeVhQcS9kclNy?=
 =?utf-8?B?eG1XYmhZd055RHF1bW1jS3pXQ3VvWkJSRUFnQXJiQTBkWGxzbHoycVJkMVpv?=
 =?utf-8?B?SFZraXhVOFJtcXRpYXFXT3Axa0ZHT2ViNDJoTFFFYWRQeU9LYm5wN05Scmht?=
 =?utf-8?B?NGN1ODJGelFyUG9JTGZGeFY5dzNhTi83b3p5ajhUMTJvNEhiU1dkNStmakNj?=
 =?utf-8?B?T0lEQWE2dkpXb0pFbHkzckVpaEpHaWlUdjRhVU0zMWhWUUN2TEdmemxqMGpn?=
 =?utf-8?B?a0l2RmJ6TnhFOWpmdndmdVViaEQxQU1leWdZUWtPR21wR054OHNpa0ZZTHU2?=
 =?utf-8?B?Q1BlRzR2UnU3M2JORGgyZ3VrRkFYRUthN2RackNzTFFZMm13cHpHUkhDYlU0?=
 =?utf-8?B?dTZGQWJwVVJJSWt6S0VPMzVTY2xNZjB0YS83U1BseHBVTlZIb3gycDAxMGVT?=
 =?utf-8?B?QjE0QWRxNGNrNWVTVEhNRVJNdUZKVTgwN0tqVVhRRkJhZHJRZ3lxRUIycEI0?=
 =?utf-8?B?SnlZeit6RFh2UktRb2NQWmpiendVV1VNZ1FNZ0g0U1NxTmd0L1ZRU3Rlb21n?=
 =?utf-8?B?UmJ2V1VndFlCeHlXdWV3WjkrWit2Y2l4SENmKzdHRy84RTlERWVtT0hrUFRC?=
 =?utf-8?B?ZUdsaGp4bHVOb3c3blhxZElEZDZoZnU3RDdYVkdPNWVjMk1sVnh1U05oU1hU?=
 =?utf-8?B?VXlDVHVud01mN1hvcmVGOXNiM01sU2Z3OFg5a1o3Z041Q3d2RDE0Ry9aNGlB?=
 =?utf-8?B?SDdycUVjMXN3SXpHSGF5Rm5IenN3OWlvTXVNbHIvN1VkdWx2RitaZGpGZU1a?=
 =?utf-8?B?SG9lT1VMTDNucVhUUStRb2dyUzNZUm9zTHZTUWhNdVNZSHpZcHVoN3M1Nmhz?=
 =?utf-8?B?WEczOHBjK1E5b2NxWGVQR0puWHhqSFFrNi9ib2Y0RjNEcGhpZnNNUEZZYkVq?=
 =?utf-8?B?N0hsVlB2ZFdtWGpnanZrM1RUUWFCTCtiUG1kOU11ay9taWRwK0Rrc2N1czdD?=
 =?utf-8?B?ajl0bDc3OWZibGprNmQwRDczMTVoUndRdytHMzdXay9kUXQ5ekRReXI0ZnNr?=
 =?utf-8?B?WGwxcld2Nll1S1czY1lZaDJCc1ZCclBYMVVYeGhEOXM3NnhGTG9yYytsUXlo?=
 =?utf-8?B?SDlqVnlFVTdneW54RW50REozU3FCSEdpZHZSdGtiQW1vdmdDNEZ1cVpMMk96?=
 =?utf-8?B?cHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 09837131-53df-4226-5ed1-08ddb4853dbb
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jun 2025 07:44:11.7777 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: c/AprrU6VDocUJomTZy0vOMxtXpxODxKe5U5BiIqZ98+nG559kAUEMtd5jo1z3qq4uoiNLhcpuqTHGhRXPQgEi3ulfjH+splewXi4p90f0E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6803
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

Hi Chris,

> > > > Amend the problem by keeping the mock file open throughout the
> > > > duration of this test and calling fput() from the test itself.
> > > 
> > > That is not the problem; that is papering over whatever the problem
> > > really is.
> > Would you mind sharing a bit more? At this point we have a
> > problem in our code that we need to address and rejecting the
> > proposed change without any suggestions gives me nothing to work
> > with.
> 
> The selftest leaks the vm_area_struct (and through that the object) on
> any of the early failure paths. That seems unrelated to the commit
> messages and the conclusions drawn from that false premise.
> 
> Note in the vma_lookup() we could also do a check on 
> (addr + obj->base.size - 1) to make sure the entire range we expect to
> have mapped is mapped to our target object.
> 
Oh, I see! Thanks for the pointers, I did not consider that
situation, but now that you mention it, it sounds spot on. I'll
start working on v4 then.

Best Regards,
Krzysztof
