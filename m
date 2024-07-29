Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E330B93F84D
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jul 2024 16:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9029A10E3FB;
	Mon, 29 Jul 2024 14:38:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Flw1mnoV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B43010E3FB
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Jul 2024 14:38:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722263888; x=1753799888;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2iIOleMyIhal0JOENiNKg9WqrF/R5HDWJPpaifQN0pk=;
 b=Flw1mnoVPEyTIik4DB3d+Mzb061l7uAAWuz0s+4sVuKA4gASGie6vl5b
 dib9EhZfxQTC/Y8BtzmYmrMxof7tM+iW1Sp6vCRyDtzz68oOBzniWV476
 HUNK333ExkelouNhM5vCAVkpDy/qjUhvli4m88clnbdsgOwil91pMSzRJ
 f5by82J2l5npEJYxJNEa9X9kmURDetFLawLLIGxVKaU0Ebv9UzYSxaMoe
 HrEIehFaJeUIghz4S3evRjCQpF3t9vATBNb2vCdyN1wOE1vKQ+VOlmBy+
 qsg/v/IxwTb/WHJnl7cqB5IdWE5hrZ6UjDJ+7QOm86PDjXbeVuvNsZlYu g==;
X-CSE-ConnectionGUID: WNurr3RQTYu7cmLMHGXtbw==
X-CSE-MsgGUID: cKbSEGeaRvqp/AV3WH+WHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11148"; a="20202294"
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="20202294"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2024 07:38:08 -0700
X-CSE-ConnectionGUID: UHksL8dUQ7qonzdBQWqnVQ==
X-CSE-MsgGUID: Y67FsDhaSoWrybtXUHgQhA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,246,1716274800"; d="scan'208";a="54243134"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jul 2024 07:38:08 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 07:38:06 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 29 Jul 2024 07:38:06 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 29 Jul 2024 07:38:06 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 29 Jul 2024 07:38:05 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=i6irMDbSGUF3ut8mVy2O4KWkxhQNPPnfTo643Z7G0z/yJN++CAsD8dPVEFcvTLEijSoEsBs1eOXW5ynQzc1+ZQuLmgKuVCwKLQNaJIkTD3tduJN+xHFjyy4x3j6yV+OAbXJaVlJFW08i1sgBKrbFPK/BsU81Ep4ai+Ci40fUhtQNs3sznWp0McjRpfh2hr+z1kqtNvIBGWA/FexJfv2gCo5K27UXHO2MUu6LxlA5ENOFQKl7YXmpH1r3W54ppdFzqf+gflf0S5Og/km0EM2tRuLCbhcLKkBf/OSDjp5u+P/0cicQEp+RBK5m82QFt5vz0+gnhoMs1auUQ69tqXn1ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W5CRqQ18kEzr8j8aXAQPpuh86V1nlXp/xbPqe5Dd6Nc=;
 b=Ot8WMT51VaPYfFP62XxRb35biUZ2a5kNXexnWPrZWSvM+i5JjBPUvlawB/YX0XB6FztUX32os7EZvJu9G0c+Rrjyk3a7BXcx2xJ5tat8ohrl7hW26tWVKyPYUEEJyPBCX41uiri6za9acBwn2VrZ3Oeb+UqzMxwGQL3atfZ6/+sOx14in/K8krANreL3Mt2s3NvokdJDeP18PE0hH9Fuqg2/z2xbdzInyZQoKY2RBwwiI32LoApKPo2BhdyX11GBMhZCHIbIzgUeY6whwblwN/b+a/2q2YaHPJn+s0WTpE1mlKkuZl2R+xHY/SWNDxZ4eutkqbIQv+c8GYB2eYj34g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4741.namprd11.prod.outlook.com (2603:10b6:208:26a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7807.28; Mon, 29 Jul
 2024 14:37:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.7807.026; Mon, 29 Jul 2024
 14:37:58 +0000
Message-ID: <3eabe260-abd7-4de2-825d-745b49c97304@intel.com>
Date: Mon, 29 Jul 2024 20:07:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] i915/display/dp: Compute AS SDP when vrr is also
 enabled
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.nikula@intel.com>
References: <20240725133110.112401-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240726085012.277687-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240726085012.277687-1-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0155.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::25) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4741:EE_
X-MS-Office365-Filtering-Correlation-Id: a8fffb65-2fc3-431f-898d-08dcafdc0a97
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OC9JZitDYk8zOENYQ1JjK1Q5d2JQOVlwMVVVMG5WaW1yV203aDBCVkM4bzlL?=
 =?utf-8?B?QTJldmR5SEhtaEczdVB2Zkk0TjF6aDJDRlhycmVPeWpEb3dMWm42VDV4d1ox?=
 =?utf-8?B?RnRVVVcySGlta1owTWVtdWF5QzlYYVVnTG9QWk9Wc1JPRmhxazJLM2w3TGlG?=
 =?utf-8?B?cWRJMUJCYmdxRGdXMTVtYk94eFkrdUo2eTZ4cHFJZDA3VW5Zb0RubUtTNnFj?=
 =?utf-8?B?YUR4d1h4Q1d2cnJvbXMzcDhhMVNGTDFqSlNadWZncnFFRitOSG9pTWxmV2cv?=
 =?utf-8?B?Nzd2RTJHYUh3bzV1VU9RMHB3TjM3ZVEwUXcwNVU1OUtheEVaRzIvKzN1czhZ?=
 =?utf-8?B?bzlWWjhCa2dIM2RBZWo1T20yRE1vL0F2QTBvdjVQVmNwNk9hU3dXQ3hsa01Z?=
 =?utf-8?B?bFdyc2pqeVJyTmt1d051cFZ6NFU5aHhsWGdOMU1ONnlwV21MZ2ZlSHhIZmth?=
 =?utf-8?B?ZndOd3oySy9IQ0Z5em1aelp3YUhyUlFrWHUxbVJUK0NCeGxTRFhZdUtYcTJ2?=
 =?utf-8?B?d2NYRmFJNUV2dVI2MWVSUmtuVlFyMTducldpK0ZaalJyeWFTdzJmdEJacnVK?=
 =?utf-8?B?WHQ2QWZJWHhjMS9YWVY4M3hSM2c0N1FMY05VdDlLNGpSdTZhSW55dGpzZytP?=
 =?utf-8?B?YlBDajNNY1JOZ1N3OGMzSGZZV1FjWVNOdW0vaU9kQUt3OEJCeTYwaFFucGw0?=
 =?utf-8?B?dGpTNmJUK3EwRVRjRzkwRTlOeHFNd3hMYmdUZGRhbkEydExSRFRiZ0VCekVP?=
 =?utf-8?B?Q0dNNjRFdHRya0huemRYNU9YK3FvN2h3R2VFZzVkMlpaRGhPb3BrRTFXYTAy?=
 =?utf-8?B?d0swcDd1RUZqN2JlcUJxSkFwc1UraklKazFUa09laHBjdjNyK29VU3pKNDB6?=
 =?utf-8?B?UmpWUEZGc0NWbjU1WVIrNG5BZ2VFdk1YcW1DM1Q5WFYzWkFCWHhrVzdmSDVH?=
 =?utf-8?B?Tjk4UHFRQWdlUkNKRkx5VEN6azArWWhNVHN1eC9BRVZRVEZQdzBZampxNE42?=
 =?utf-8?B?N2xlM2xwdjV2cjErL0ZzZlRPNVZjRkVvTzV1REduSmRVZUF1V29teXpzWmxX?=
 =?utf-8?B?MzZhZGRaTk5NOHlSSFF3SHFLMm9ab0NGMHlUK2dsVVBINDE4enVtdmxCV1FY?=
 =?utf-8?B?VkZ6eE1aMXd3cDVKYVRqdnhrb2RJa2pBLzh4azVabTVtQ3VOc2VpT3BQZElT?=
 =?utf-8?B?Qy82VWVscWVTZTkvUkl1bkxraExyMEZPQSt4TU1oaml5ZDh5WEhYTVpJSVpC?=
 =?utf-8?B?NjNpaVkwMVpHcUR6TmhRemwwY0w2d1kvSWl1N0Y1NTUrZ3lxN2hPaWRNZ09i?=
 =?utf-8?B?Q0FMREZVanpwVThUeWtDVVZmMjIyUUFUbXE5V2Nuc3Z5cXgwZXlmM2JzYXA4?=
 =?utf-8?B?b1R2b3AxQnl3QnZILzl5a3A5M1FmQ3VUOHdVM0h5RzBJcjdpdFRtU2VGRVRW?=
 =?utf-8?B?amtSQ1R6YkozU3psRy9EN0pxVC9sSnJXQkVuSUNWdTRPMTFGZHJqbDQ0aFlo?=
 =?utf-8?B?QzZZd1RxcG9rRU5yS0Q2alVKT25QMmUzQTBzaHBoNlBWM3RJYS9TbUJobVho?=
 =?utf-8?B?bWo4ZVVZVGFzZ1JFb1RwVkl5WlVSR1gySDZ3N2dpRHdCVVI3RjF6dm5Icmlh?=
 =?utf-8?B?R3RpQ0lEQlR5S3lOTjlacGNDR1NaUjlWdGZ0U1oxWjA2OXNGQ1hsUnlEbFJG?=
 =?utf-8?B?bW1rZ0RMSlVkSmgxak9UQUtpdENBQVplOXE3OTdLSlY3Ulc1VjVwNUdpd0VP?=
 =?utf-8?B?Njk2d3FyY0hkN1RlU0pVUnZLSVA4SmhOSDJWZUYrTG1uZkhwbHY2V0VnSEhl?=
 =?utf-8?B?dVFDT0ZSdjBIU3dXMU02dz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MU91blovbjZrUzhYZ1RxRktlakxMb0NHQkYzaytaa204enJ2dlh0UEY0SWlw?=
 =?utf-8?B?Mkl4dW83anUzQzRBWVpkVzFlOFE1SDNIemZ1L2pRVnZoTkgzVGRkeVV4WWpL?=
 =?utf-8?B?Uk1XelFNa2QxZDVEM0k2QjJpQnlJL0xPTXU1Vys0OEt4RktnbDRIbXRvOFF4?=
 =?utf-8?B?dG9mejVIYnUyK2tFcXV2bUJLK1JHZmtnSzFXZ2R5Y2t2OEFnNVowWWpnQjVs?=
 =?utf-8?B?WkJmN2dhcVFybmJwWnBjNmQzV01vbUpCcXZnZVZ3dVVRcU1UTnZ0QmsxaFNG?=
 =?utf-8?B?VU9iODlhUmlMYUdIVjEvdlk3c1VWR0taQVBKWDZSWEJsSXlHMCsrUmxuOVQ5?=
 =?utf-8?B?NktabWNxVGtVTmRxOUlTcjVGVTg5bHJqZFNyeGxRMXhXcVJOTkFvb3A0cXUz?=
 =?utf-8?B?ZG44NkhMeDdnUG1aUm9ibHVIZUdTVjlzb25JdldWKzh0MVhHK2lMdW5lK1JW?=
 =?utf-8?B?VEgvS3l4SzhPTHlQbEFmZjNmd0ZrakVoVndSd1BuR2Rob3F3SjF4aHYwMjVI?=
 =?utf-8?B?aGl5SWFJWmxFclhramRqbU9iVlNPOTFNNzQ0bGFDVzhCQlJCZzZzVyt2VXVR?=
 =?utf-8?B?eTNVTnpWLytiSXlTMFNDRzdwQVFhWllVcXZka3VvNWpKSURqS3hmekVYc0V4?=
 =?utf-8?B?Ym5rMXVRK3BMQnFlZXA2c2pNR0xKeGpCWXluU1RuOWlrZUFEU3R0YkRLUThB?=
 =?utf-8?B?T3daQ3lsK2tSS0VkRjYrNGo1K3ZpYi9QcE1wVWYzVlE3ejFsS3ZJUXhxakEz?=
 =?utf-8?B?TWl3N0FzQWZ6MXluRklUSmsySlVpMmw3elpDSkZUd0Zpb3FwREFOVnJVSVhl?=
 =?utf-8?B?a252SmphMkwxUzNuMndFWDRCeWc5d2RUVFp1WjVjb0M0eTFmSGZsZzJPeFBM?=
 =?utf-8?B?RFRHZE02RExZLzhWd2RhSm9XaTlSeEhEYUNSVW1FQmZyVG40TnVZV2M3VC91?=
 =?utf-8?B?b3RZVGU4b2FWVnVrYUR6ZWdsZjhFamZoOS9Hd2RGLzNXZ1BZa3hYeEcwTFZZ?=
 =?utf-8?B?SUROd0FTWUVLUzR2NFVDckFqR0tBa1Zua09VR0wvS1Y5SmFnQlN5c0kxUHNU?=
 =?utf-8?B?S1JEdDAyVVVEczV0UlFEdnErQ2V4QXBtaHkxUCtLdWd3RHZVSkNQaDhwb3pC?=
 =?utf-8?B?YW9KZWcxRGZwMUJXeldDei9MVGswMERDZFNDNDVxTG1McW93dThZdVltNnFJ?=
 =?utf-8?B?dHg3emlhMXZ1c1BqWm5JbXdZVExRMHZ0U0pGRmZxT3FQU0RUZjE3aWhMbUh4?=
 =?utf-8?B?Qlcvb05JU2hIa0VmOVY5cGRsNWlncHpIdmY1R0tDNnVQbE1INFpNZjZBQWNn?=
 =?utf-8?B?c3ViM0MzV2drUDljYW1JeWpGMS9HWXk5b0ZNcXpRKzhGUEZXVlZ4ZVFTS0Z6?=
 =?utf-8?B?L2dkSE9jVSsxM2x1cWF1UTcxaDFXNDhhcy9FZXozWE52ZXlCMnJuVFJ1dys1?=
 =?utf-8?B?enVnb1BDeU9YOHM5S3RCOXh4ZlR4NGt3WUZUSlNLZG4vSEN6cmtkNXpYQ0Uw?=
 =?utf-8?B?anBnenVVWDQ1a0ZTNThUMmlhZFNFMGZaZFRWejA3QjI5RzVSS3gzd05xMDVM?=
 =?utf-8?B?U2J2eWdreFM3OHA1VzlZWE42Y25aQnRmb0Z3K2VuNWVXUmxoeEF6UTIzd0N3?=
 =?utf-8?B?S3pDbVM5WkZOMVpoL2VDbDVKNmdiVTI3cEwzY1NMWHhpcElSMTJZWjVUUGFx?=
 =?utf-8?B?T1dmY09wTVZXUGlmT0dTcFYvUzY0c20wSm5yTm1qV0h0MGhzSGdqSWxoMFQz?=
 =?utf-8?B?bmNrZWFtazhmaGV1NFA1Sit4SkNKRFFrQUZKT0h5QS9ZcXdwSVBxVDhhUmYv?=
 =?utf-8?B?d3ZaN1F6YXVmUnUzMkFRc1BvbFQ3NFdqSHoyVXJIT3M5ajQrcEQrVEpqWHdL?=
 =?utf-8?B?UFpJNGxGK1FPcEVnaUpIYjBzZ0RBMzJ6aEQ1ZllZa1g4RjYyVkFVd083UGF6?=
 =?utf-8?B?TTZRaXllV2UxcFlMM09aUG84dERuYnU2WG5mQkRPUS9oQU5kU25CNEoxZ0p5?=
 =?utf-8?B?ZmVBN3R1UmI1YmEreld6NVc2MEhzbUt3a2Z5L3R3ejIxd1JrdEVOU3hSbGVz?=
 =?utf-8?B?c1VKWS9sWGhrTXd6OEpQYm5GZi9ydlpRbFUrSFZYOFQzcndZSnR4MnBYMHV4?=
 =?utf-8?B?REYxVjZPcnZIMU1Za28zbCt3NFhtM1RGbng4RXJZRm8yMEVpSGxNVlBYdHBZ?=
 =?utf-8?B?ZXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a8fffb65-2fc3-431f-898d-08dcafdc0a97
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2024 14:37:58.8593 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Iqb9/dsCwgYR7JgWRiyts896Lj3ZC9IwMPM2GEEkTrnHRk/R03KKhcwjbF//VY3OTkscdQyyGb/u/AITnVrdgv/alqIzMHAS1/UYX3cgr8A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4741
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


On 7/26/2024 2:20 PM, Mitul Golani wrote:
> AS SDP should be computed when VRR timing generator is also enabled.
> Correct the compute condition to compute params of Adaptive sync SDP
> when VRR timing genrator is enabled along with sink support indication.
>
> --v2:
> Modify if condition (Jani).
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Add fixes tag.

With that added:

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 5d6568c8e186..86412ae7b48f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2617,7 +2617,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>   	const struct drm_display_mode *adjusted_mode =
>   		&crtc_state->hw.adjusted_mode;
>   
> -	if (!crtc_state->vrr.enable || intel_dp->as_sdp_supported)
> +	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
>   		return;
>   
>   	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
