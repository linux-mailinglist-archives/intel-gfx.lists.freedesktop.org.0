Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D768CC2CCB
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 13:35:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5C9C10E938;
	Tue, 16 Dec 2025 12:35:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PM1cLoe7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2616610E6F7;
 Tue, 16 Dec 2025 12:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765888499; x=1797424499;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2BC5+K8cWsfaEqkBbeGxfCl3Q7Av94416HRC9w2gaZo=;
 b=PM1cLoe7lKX/FnXaL8sKqZ9duiDmM1Lgj9eXMlWrAusQRNb2JiANaUG8
 45LllCtZP5iBxXpJBOP2d1/WI6hs5kpeYXe2BNDYWbcTRUSteoKnz5vUb
 EquNKaYK2rv6zFD7rhFz0hBH4yo/c0NZaQUjRoBS2koF5qpK9u4bFdvI5
 Q5uGXuTGl6pK5aM8IJqv9bO29AL6bJVwNMqlENi29GjAPX6gCs/qisYn/
 K1StTmkEfOpn2tgiL6zanudVhyj4qnU2zzUe+bD62VrPlv517jNKaoxCk
 JHlffggXAw1m4CFvxHuFmndIhcOX9tnnkkfJ63M5eMQFW2O0fL+oGAhm8 A==;
X-CSE-ConnectionGUID: gcNnZk/uRSuQmMANfdOpnw==
X-CSE-MsgGUID: 52BtRLWtRe+ILcA2qNiFPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="78440482"
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="78440482"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 04:34:58 -0800
X-CSE-ConnectionGUID: Luk2jcUDRp+MHpDKx5+igA==
X-CSE-MsgGUID: Wwse6LDJTDa5rXu4KYkS4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,153,1763452800"; d="scan'208";a="221397707"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Dec 2025 04:34:59 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 04:34:58 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 16 Dec 2025 04:34:58 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.50) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 16 Dec 2025 04:34:57 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aMr8IbDlgLDNPep2ZczwsxWng6KZbxMHHzR3CObnoMkk3qSVOmMfMvCBTvzYnmD6gsNLlieXPk8fsEyUcr2vC9fNCYgz3M+paFYU5bZtYorXp1YbXC0l6xHplrdqQ3t8yP2YXSBHSVrQBDjg9nyKgUOjk83QE/D9ObBNx2Z3aYKQ1Dm0brg6VReqtKDRB2myz35J+ANyne9fxn1mj381kny7ceCBDpppf7I/fVipdTaZfLqEaUMluUVlRVg1+dzCR3ZJ12+4565WfC6Nk7EOW2ruzJwzJ/5wr5QvSdjNtxH2yBlYdeg2kbHU/SUulvtJ2KAEklpJXg00kXLYD62qGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RaLKHnVykYyQpvsAZU4OvudstBz9rbJ4uyfctytI/yw=;
 b=n3K/6KrzIe0639M8LnZIkd0mY5ChZsCCZM87a5LeTvKe03INuLlWJijFq7dT7iduWNxae5S6gNlKujy3AfC324sKe73l/+ltlVXtAGygoug7k4hT388fwRssmjXEkbwaQNCUTRs4Ubj7+v6VRVQr3ieGxzp5zb7tH49ZIYwcILESaL1DO+BERqg0ieKTCA2sFSP54IDN3eK1WsK0UILGgQv0+tP54xkhfeYH2ojJrdl0g7jEHdtnbG5w5L6RtF6EuPKqeb19yJ1idZkJVkxKRu0XlPCGrIdtOjoojRDFUUDGlV1NFIgtyX5CJ4POADiOrHz5ZhroZlfSLtnUZT1HwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM6PR11MB4753.namprd11.prod.outlook.com (2603:10b6:5:2ac::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9412.13; Tue, 16 Dec
 2025 12:34:55 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9434.001; Tue, 16 Dec 2025
 12:34:55 +0000
Message-ID: <85b8e830-2b68-47b7-9a79-34b67c53b5f1@intel.com>
Date: Tue, 16 Dec 2025 18:04:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 13/17] drm/i915/display: Wait for VRR PUSH status
 update
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>,
 <uma.shankar@intel.com>, <jani.nikula@intel.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251202073659.926838-14-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251202073659.926838-14-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0022.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:177::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM6PR11MB4753:EE_
X-MS-Office365-Filtering-Correlation-Id: 92f327a7-5ada-47b1-21f9-08de3c9f8422
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N0dRN0lFSXVjZ29ObklXdnV3K1M2Q2F0T1V4akphQWd5aVROWGVlVmxLN2J5?=
 =?utf-8?B?eTduMXo4Yi83TnZEaVZrWmZtMlJIUjcyR2dWSFRBZHlOQWZOZ0YwcEVRWFFs?=
 =?utf-8?B?MkRuZFg3N2tXUU1aSTdoTVhMb0ZMY1FUa2szTDE2cFVoY3oxdFhxSmc3dkV2?=
 =?utf-8?B?cmJoUDBjbU5USDU3U0JCQTBtOVJJZnA3Z0lBUGVwZ0d2eDFvMXF3OTBuSmN2?=
 =?utf-8?B?bHpwM0M4ODM2dmo1YUdzRzI5WWtqd0ZMMkYrWWJ4anYyQndQMzRsWGREMGVy?=
 =?utf-8?B?Y0NKcEtLbXVXK1Nob1Y0T1poUDczaGZlNjJsSUxUNThnM1YzRFl1NkcyZVI2?=
 =?utf-8?B?S0pqeEZZOXJueThaZ3BzTXJLZnFPUkJjbmdRUW5LTDA4L05vRW96c3NTWDQ0?=
 =?utf-8?B?RStqK0xHcTRPZTZEaGFZSHdHVU52Ulczejl0MzlKdVBFS0ZUVDZNNHEyZkx4?=
 =?utf-8?B?QmdLeGp6a3NHbm9YcmxzRUNXemNIZk9BWlJhV0JPWVBFV3VtVndiYzV4ZnBt?=
 =?utf-8?B?N2tadVNxVm1Db250alM0a1FROWYyOVMrOXZXcnZKQUI5U1g1TGhZMHd0OUQ5?=
 =?utf-8?B?Z3FPNEY1eGc5ZncrRitySFdkZFJtN2ZQcUFwTHc1blcvNVAwTHM2RmtwQzJD?=
 =?utf-8?B?Nk4rMnFXaDVneFpaTzlCbWJlVlVsWG9JSmFKajBxUitiZ3FpZ25rZE1ueG8x?=
 =?utf-8?B?ekF5WXlpSDQ3UDdWNWVaeWxJRGhGZWFBVitsb2UvM0FjRDBrazZwMVUzdGdS?=
 =?utf-8?B?OTFLd0lnRFJONnZURWc2MDZHRW9WRWIxdUVSVVl3eG8vd0hLV2p2OFJLOFVX?=
 =?utf-8?B?TE5jTnlzWmZuakxlNjBPWTRQckwvN202aW5jNnVaUHVLUXZxZ3IxMjNHNU5a?=
 =?utf-8?B?ZVpaTnJQem1Ea1dUT2lweDl4RVdRaVEvTzI1TFFKdExueWw0Qy82bkRWOStL?=
 =?utf-8?B?eTgrL1BoN3lJSmFMY21PZ3dURXFrMUtGOWNMN0hhSTZNZGI5eWNVdktrSWM1?=
 =?utf-8?B?MmVwZFRJa3VmMzVFU0hjRTVOYzF5S08wSGlJUVduQTlIeXpTTjluNmNLZWZy?=
 =?utf-8?B?dGlFZ3QwdHlLSXJSU3NtWUJxaEFYMmgyN0xsdjZXc1RZUEFlWXZ0cmlBbkJj?=
 =?utf-8?B?bmRuTjBsWndNY25YbERZazdKVjF5SEs4SUNQdjBwUG54VW83dlhFSUp6NUpR?=
 =?utf-8?B?aXk5ZkFyU203ZGNpU2hmNTZCSmYxbVdBUi9yQkF4c1dYUzJRbUNNSUYzMXdS?=
 =?utf-8?B?YjNnOUJVcUNsVm9tc3NSNS8yN2pTR2xXcVRDSEhtVEJ3V05Wa040cnlMdlhK?=
 =?utf-8?B?ZjZicjRSajJxVFhXalhqa0VleDlIeGxIWEhoU2RpYTkyQTZaUkw2YTFzN0hh?=
 =?utf-8?B?cC9pb1NaN0NvelR6SjB1elp2eUlCVUJYazhvRVI1R3l4dUIraTNvQmU4Um4v?=
 =?utf-8?B?M2Y3WFFEZUg4Y0J0dEpSc1NBaVVlMnVZMUJRL3ZqMW53YlhzQ3c2MFFaNUN1?=
 =?utf-8?B?SE1NdnBIWWEwbmd0SFJUSmxXR24rRzl3bTIzNUZXdUk2UHM1RXlwYlZOS0la?=
 =?utf-8?B?TVY3SUNQYStPUW9VSFNqSGgySTduQ3lTZmRLcFEwQStUaURxQ2RXOFQ5TDZw?=
 =?utf-8?B?d05LQldqeGFiMHBPNzFEMEpLNm1KNFpsZyt3TGNlS1VzeVF1REZwVzFZeWhh?=
 =?utf-8?B?ZE9zdGtKOVBCcmtYL2tlajBtYlpYb2ZCaHRIdEhEbmM3b0pJaUcxYk5zNVBV?=
 =?utf-8?B?dzF5Z3B1bTM1a1U0a0Z1cjl1ajB0NldkUmVwUjFTeGNHVGtHbitHSkZjaWxF?=
 =?utf-8?B?RjJvdGt3ZmU1RXNpZ2dkcXluZGphQm56ZDNVbWY2RHI1bDlQTjh4SkZFYkxV?=
 =?utf-8?B?WlRidWxiUUNkc3hlaTdmQm5weGcyeE5jLzhXaVdFaVlNSG8wbFloUWIzK3J6?=
 =?utf-8?Q?6y1pETeiez9+t7NJwrf+ujCbqzPHYVQK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WUNLNFJrU1RpWU9ZcjNsMUN4Yi9kRlNlU2JTZTJEQ2h2cmgxcHlpZ2V3T2VF?=
 =?utf-8?B?RWJwSENRc3Q0enIzNkpEb2NnSEdwT3dtOTllUGJKRmhsenBkZ3J4WUcveld5?=
 =?utf-8?B?YUVRK1cxblZQdFVxREZrbXh5M1UzRVZFbmlYK1J1aG9KOGR0eFNOcUQ4ZFQ5?=
 =?utf-8?B?bkFvUmw5YzRESmgwZUdJSSsvYkwxR0ZWTDlYUXJRUnpwOEdqY3VlSHVFNjFx?=
 =?utf-8?B?L2FYWCs4K2h3UlZ6OGpkd2NwU3RNVmVSUWRsZEEwWDMvME1NODZkTGs3UnVG?=
 =?utf-8?B?SDlON2JZVGlPVklTcTZlVzRicFhKSzZwRzByNFFDd2VBNkU5TGVNV3VhUEZ3?=
 =?utf-8?B?T3RMUWdRZkxGK1NsNy9FWjBHcHdHM1Q2RTZrWGJ5cWNHb3JlL2JMc2tlM2pJ?=
 =?utf-8?B?SXpVRGZVbG5kNHk3U3VuNkR2clU3NTBzdXlZTjBTZWszMk9TMExFaHlmclZa?=
 =?utf-8?B?eDJmQ000K0xSU3hzclBwamNUZi9BZis1Q3NYeGxVd09qUnkwRXZiODNuc0Qw?=
 =?utf-8?B?VEVUaGJKaFFSTW1NN0QwSW1Va0U3RjQ4T2FLQWlaRmNnR1ZmQ1h6Q3FWemgr?=
 =?utf-8?B?Slo4d1MyMjdaMlFYS25iSURkVC9scUV1RWhuL2YyVDJqRGlTV3h6cGFoOUI2?=
 =?utf-8?B?MlYrazRvTWFnNDJpcDhKZHZCY244MmhGdVBqay90U0V4MGhwcGFRS24vOHRB?=
 =?utf-8?B?QVlzSmFYYk5LUkl0VGl0QzZmWU40WUZUR0xzeDN0YlpUc2MzVFV4MmdjQk9T?=
 =?utf-8?B?TUU3QzVMUlhjbkZtUytCbDNpb1VZbWlSSUdLVFBWaXZNMTIrTW1pbzU0KzMv?=
 =?utf-8?B?c3hzWnZ2aXZCWUd5Sk9OZ2I4Y3U1aDRnOGFvcnhwT3ZvN2V0NjFpTjkzWUFl?=
 =?utf-8?B?Z2NrenhqYTBGaWdyczJPNFFEaC8yVVFmRGNWeFpPNU91aGNkNkJRaHpaK0ox?=
 =?utf-8?B?T2x5U3JSdlRyMFdpVm91WHpFUDNGNC96eUZZR3FuVURYMitaamdpRko5aG1B?=
 =?utf-8?B?TTFyV0V2MTArNG11dEZnVXA1b2FYZjB4aFBacVBwUUpZdzM0dHhBUWhTWC95?=
 =?utf-8?B?eDViOGZwY0tEb2hvSnpCTUJURkowTzltOUg2M1ZQbDBuTmJQaUJucG5YZDRO?=
 =?utf-8?B?MXVGMXJ5N21obnB0dEJ1ZkV5WE1tdXJteFU5WGczSHM4bGlUbHNsLzUxa2p6?=
 =?utf-8?B?MWQrandxTE9qQi8zM1VENTVlazVBY3VPWUw3b3JqT3BmaEszSklzU0JsRHRI?=
 =?utf-8?B?SEZ3Q21nRzRETVlLWVhnQ29CV0Jtai9TVHl2emdiWnNhTm9NYVY3L2JSQlhB?=
 =?utf-8?B?Ly81NzZhWTVna3Vnc2hXU2V4Zm5IeUJUQmt1eGVTb29VRlZaMWVLTHk1ak1X?=
 =?utf-8?B?THJqUGhZYTlTM1p4akp0ZXpGZWFQaUdNZC9FYUJyTUpCZzM5cEpwVURyZTJh?=
 =?utf-8?B?WGZCNThXb1gyOGRLbURSV3hKODlwSW54bkVKcnJMYVlSR0lsVFc5TlBuTTIr?=
 =?utf-8?B?cmFCTXRQMGpwTTNxaHI0SDJZbUpsRVVXVERTTTFXcVA5L0ZIajdSTEtWUERH?=
 =?utf-8?B?UDFTWEMvOFo2bytTSlM3bUdRVFJxQkRieWxRRVozUWlmVzA3NE5kRjV2SzNW?=
 =?utf-8?B?V2lqRE1CQUdMY2NrT25HNWwvaDhGMjdRSTZMei9lLzhWZE1wWm42V1FXUERp?=
 =?utf-8?B?WkoraU5ZQ1ZpL0VkSXg5bzR2bHMvQXFuRTRUQnhFZXFJWDBmNDJsQUdGTkMz?=
 =?utf-8?B?bWYvSHpET2FLMUVLL0Z2Z0F0U2VuRE8xKzRXQlNDanF5K0tTQk9CNTNtY0Rq?=
 =?utf-8?B?bnkzRmk2OG53OWtCYjYrWmFsUXpGbmhSN2FIYlJpd1NvektFeHdnMDlUSnll?=
 =?utf-8?B?Y3ZCK0UzU2FFeW9ST3h2MUFqczFTZ0VvTVJabXBWc0V6T2tnSWtoTG5GQXo0?=
 =?utf-8?B?YXVNUUtNK1BnV0ZLZ1BqRFRKNWErMDRoZW1aRzJhVGpJZHYyckM2Yy82NGZa?=
 =?utf-8?B?WWxrSzJHalV4cmNNYUw5bXp6cUlOM0FuRThTdU1zcVZGMWhwL0xyeWxLL2tN?=
 =?utf-8?B?TW41QlNyd0N0Qmwvcm9pWnBnL05SSmlpQkN2SlJtRkNLdEgvWHdvK3N0UlNk?=
 =?utf-8?B?VkhUSEp1dFV3RzljNUNya3ZpK2VVS0dId1czZGt2RkJzOXlpcnJMazFaTzFh?=
 =?utf-8?B?Z0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 92f327a7-5ada-47b1-21f9-08de3c9f8422
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2025 12:34:55.4480 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E35DCJOdNLLuSaDmP4K/1H5lYH/18b0xHu2W5pfYgxuj9iAd5OFDX0yDmVkMEum2p8Drnr1bPioAqMswQhc+FJchXWn21t9W2zA+AaMFmK0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4753
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


On 12/2/2025 1:06 PM, Mitul Golani wrote:
> After VRR Push is sent, need to wait till flipline decision boundary
> to get Push bit to get cleared.
>
> --v2:
> - Adjust delays to vrr vmin vblank delays. (Ankit)
>
> --v3:
> - Change intel_vrr_vmin_safe_window_end() so that
> intel_dsb_wait_for_delayed_vblank() uses correct delay. (Ankit)
>
> --v4:
> - Simplify intel_vrr_vmin_safe_window_end implementation. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 15 +++++++++++++--
>   1 file changed, 13 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 3db61d1f0124..4c1470dcd3bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -1095,10 +1095,21 @@ int intel_vrr_safe_window_start(const struct intel_crtc_state *crtc_state)
>   		return crtc_state->hw.adjusted_mode.crtc_vdisplay;
>   }
>   
> +static int
> +intel_vrr_dcb_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
> +{
> +	return (intel_vrr_dcb_vmin_vblank_start_next(crtc_state) < 0) ?
> +		intel_vrr_dcb_vmin_vblank_start_final(crtc_state) :
> +		intel_vrr_dcb_vmin_vblank_start_next(crtc_state);
> +}
> +
>   int intel_vrr_vmin_safe_window_end(const struct intel_crtc_state *crtc_state)
>   {
> -	return intel_vrr_vmin_vblank_start(crtc_state) -
> -	       crtc_state->set_context_latency;
> +	int vmin_vblank_start = crtc_state->vrr.dc_balance.enable ?
> +			intel_vrr_dcb_vmin_vblank_start(crtc_state) :
> +			intel_vrr_vmin_vblank_start(crtc_state);
> +
> +	return vmin_vblank_start - crtc_state->set_context_latency;
>   }
>   
>   int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state)
