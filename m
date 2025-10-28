Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 33898C135BC
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Oct 2025 08:47:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6603410E1D7;
	Tue, 28 Oct 2025 07:47:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BN13o+0f";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 458A310E1D7;
 Tue, 28 Oct 2025 07:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761637651; x=1793173651;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=RIB8KpXZtAAGOnGr2JvgGvKIz7ShVOj28+BaiBAMZUE=;
 b=BN13o+0fkmOUWOPl5f2FQfjfJlBvTKPBDjs+VhAlmGIk1nHXM4sRtWfZ
 Dgar3hWwRwL90MnC2+mi1nNc+P2CEaSYhB67jg2uIqV1dNa9XIFZwUwwB
 y/zpNpIhOH+r0u30wM945wSqurBr83BaQtQ9HtGGyBFIV5SedfbwhJIpv
 +P17Vc3Xu6vYzsxErtQEcfLWuaqq4JEdUjMeSVqFfE41Tm/ckGBtIyKRO
 UnVCVUkDFMRH86y2QJjgfR4kEGrCBjMhrVFgitdJe9aiHCDwBWDxG7M9p
 5VYG7ffvsDaUFr7Sg7TRosa3kw42wHlJ23TlFMJ6h7lPcv60RIVn3+KXV A==;
X-CSE-ConnectionGUID: RQIDilmHQASi8HKp6sfThA==
X-CSE-MsgGUID: 84dQLS1UTpeJOKxEQKg7Wg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="63656963"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="63656963"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 00:47:31 -0700
X-CSE-ConnectionGUID: Yh910C9uQ0uTGPH61ss5wQ==
X-CSE-MsgGUID: 2kQm5XXbRiq3mktJlaBBtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,260,1754982000"; d="scan'208";a="185606703"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2025 00:47:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 00:47:30 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 28 Oct 2025 00:47:30 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.53) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 28 Oct 2025 00:47:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VO9KxEJOBrFVrOftdjtwD/N+PrfrzGLBUTvVie3xpEmLJMy3DYluvBgIkqj0bvD9tvQ12e5w8bmgHpBBcTL2JbagJ2kiOf7QiyDr4NbSBGfMTGHuspwLXCM14IxTXPwTbMH3bkkySPrJYw8ie1daM3EjK8y0N+I+dY1neG4JuZXCxDHFgdI8fH5uYu346iDSe+ewrEsklqeQ4TgjqKWdp4RQ/KLXvQQez1Ze5lZ7mUwUgKZeFcA7IGFsJS56UwwvyLjAFmQ6U0+ailuoNqaxH4j4S4OOJ0Q10iKsMthS1Os2OmCBzC2xhFTBbNw/wC3gNds5BvrIHDG8WYxyXvWFnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SmeXCJcdiimITJ7t/aCn7xmbZ2+MDIjdoXlScj4tnh8=;
 b=sUoovMwIue32XffsG+GYJteFfyqgRzYibv07nBSkFfPE9BivlOtRf+W8nd6FXC+stSk5D7FTovPwJrjTka0ie/QKds597VWEoP88XlbaZ7E9h9VaB62RahybSqi6jy0TsZLYwUVhXVAoSNTLgIxOZPRcKx5pIzFyFkddH2Cx/tWpIIqMOOmBlXvsECIC5uYdpB4ZsM6pFrWDxKi5E1dN1DxYBKi8rYW57E8b8EDXfSYKiy7IkdBnQpfnnBdSUboFJskqVWwlrEARSgG2/ZuQyE5ohe+cAkUQBMfYMvOavZm6JLNsGbt1sdcwYjyLeBty0dHXR6Ms+8Mmi6MXO+Z0vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH0PR11MB4935.namprd11.prod.outlook.com (2603:10b6:510:35::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.19; Tue, 28 Oct
 2025 07:47:27 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.017; Tue, 28 Oct 2025
 07:47:27 +0000
Message-ID: <0d6c75e8-b8b2-4937-8e14-3656cb725ca1@intel.com>
Date: Tue, 28 Oct 2025 13:17:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/26] drm/i915/ltphy: Phy lane reset for LT Phy
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251024100712.3776261-1-suraj.kandpal@intel.com>
 <20251024100712.3776261-4-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251024100712.3776261-4-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0036.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::12) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|PH0PR11MB4935:EE_
X-MS-Office365-Filtering-Correlation-Id: e9386f30-367c-4a2b-b4e8-08de15f63d64
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?clhyc0h5djNUSjJwYm91OTJqQ1RZVDJ6cGJtRy9BU1Yyb3NScjJwNnBzWDFW?=
 =?utf-8?B?cGtoY3h0N2NYOXIxUDAvYXdmWlFSSGZFK3BiRzk0VlFlLzI5azdnYTNwSExC?=
 =?utf-8?B?VTRZcFVUOXcxeXRiZTFVM3NGa0psVFZaUTM5R2E2UTE0VEVPNkx5ZUJpa0ZE?=
 =?utf-8?B?TVAyeTlXSkpSdlVlMEtDRmc2cjZEOXd2VFo2TU44VjlremUrc21XYkFKRXV2?=
 =?utf-8?B?czloUXE5MHlKSDlXZ1ExdnRoeW1WVjNkOG9icWYwaEFPZzMrbWZPYU1Kdi9V?=
 =?utf-8?B?LzdqRitTZXZrSHJqVktZNE42QTlabnVoaFpPQ0FRbVF2dVZMUit3bVJ6dHJX?=
 =?utf-8?B?eG9rbS9UYmNZdXFPVHdkTjFoMW04YWxGNjQ2RDJhU0ZSWVIyL0FiUWZSMlcy?=
 =?utf-8?B?c2hjSWliL0ZtUTRJaWJnOE05ODNNdmF4TEl5UUsrdldJdHVNWHBhczllQS9C?=
 =?utf-8?B?a2pYcWkwbWtBOTBIcTdLU2dLM0tHdE5ZSDh1d2lLdXRZTUltUkRMYjJMaHNS?=
 =?utf-8?B?TkIwYW51QW5sVHJ1TGxwY3V4THA2ZXZPS3dOVk5SMzRWcUxWNDlZcU9IcHo1?=
 =?utf-8?B?Y3pCbnNoT2poTDF2NDdlekE1ZDZFQ1doZTdFQ0U2Mm5sZDF3alpBOUphZ3Vj?=
 =?utf-8?B?VGpiVE9ITWpDV3Z1ZjRVblZaZStMWFhRdWtUU25BNHRUSCt2czlTd1drS3Aw?=
 =?utf-8?B?S0hKZG9SNElJVWxabXhJL1JXeWJTbjBPblp3TFQ1Zm5HMG1BeXowYnkzL2Ni?=
 =?utf-8?B?TDh0MWZMemhqSlpaVHBSSk02eFArOWZ4cGRXaUw3eEIwWWZ2RzZscG5JWnQ1?=
 =?utf-8?B?UEkrZkl4RzdubkdaeE9NZHdyOFdadDFTdnUyOHdKRFI0ZFJkQ3ZRbm1RRmsz?=
 =?utf-8?B?QmczU1VOYm5kenVoUTNGTUVSQmpHbFdrWGtsam1RUkxXY0V4MG1QZlh5bHAw?=
 =?utf-8?B?ZEVRUkpPNXpxOVVZMzl6RHJSdFJXNWpLd3pUampvT1o4akFlSW9mb05URTRT?=
 =?utf-8?B?RENMRzEwV1QyT201UCtjZ1NKSkZJZGgza2ZwSHFKalVGRTQyTndXUFh0RXRZ?=
 =?utf-8?B?cWRTSFdndTA5WmZ3a3JscFdCTllHNWVMSjdjM2V3emErZndLRWs1QnFrU2hY?=
 =?utf-8?B?VTlBbU9IOFE3MlQxNHp1WW9nVklwVjhGRkZZWndQVEJ0V2IzLzV3SEE3d01D?=
 =?utf-8?B?SWNhK0VuamhSU1pMRHU4eGN5cmVRMi9pNEtVTGxUNVJrMU5keTlEU0sybm1n?=
 =?utf-8?B?aDFUV0VmSTdjL1JJVDJYTStQVXlYR3RBR3BzNlYyVE5YbmpQVm82cU9TZk5a?=
 =?utf-8?B?KzZWaVVnMnFtemRpM3lVRGp1bWhHZEV0d25EZTlHL1BTSkFrQ3NLY0ltOCt5?=
 =?utf-8?B?eWpyTUpCMWE4TkVLRHp0enBoVnlXbXpqbmlNMG5MeVU3T1NnS3o4eGlQcXR3?=
 =?utf-8?B?Vy8yd3k4Sk9VeDBsbkhpdE81S1VlOFFadWcrWnUwMm5FWFVheEpsODA0clUx?=
 =?utf-8?B?M1dQRE1iVEFSemdzMXcyL0laL2xYeEhqTlRPM05BVTlNLytoRGhmQkVqYWVM?=
 =?utf-8?B?eUdIdVpibmh2aS9yRTZMS3dGb3hNdTZMM3l5ZXl2UzhNVmY4T1N6blpLYUdQ?=
 =?utf-8?B?eFZ4RTJRZ3E5L0MrVGhRdXR3d0YvdlIyVGUyMFFBekJoSWc1SktrZEFSSVFP?=
 =?utf-8?B?ek5WaXllMWNhQnFpWGlkNkZGa0RVdHpvQTEzU1EvN2dVdEFOOGRaQzRnQjgz?=
 =?utf-8?B?N0tFaUxJOFB4clM3RzVQNnNodUNmZi9tRytZdnh4YVZsQ2o5MExiMStwMEdp?=
 =?utf-8?B?VGlQQS8zcHljUklLRVV5Vmx3V1Z0bjhWL2VOdzNHRHIxYUhOVWpPbVRzL3JZ?=
 =?utf-8?B?aFUxNjdCclZEbXdwZzRvUEtyWTRBd1A5NWw5N3hWWW9FVFplQkllQWxoemNZ?=
 =?utf-8?Q?jz6GQmfk+O81WSLWv3vM6WVimREw23wG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SmUyRHZhTUljOVhKUkorWHVrdTE5M2F2RnYzRVNqV09Edmp1UUVHUEs5Y2Ri?=
 =?utf-8?B?WDc0eWZ2bWdhSEJQTVlCQkwvUUJIc1RMUmQzR2wxVGkrb1BlR0FGOWtiUzE4?=
 =?utf-8?B?R0MvekxLZStXdG9lTXZnVVRLbEJQbGhGM3BSaHVZNlhKbVRaUytzSkVIYkZr?=
 =?utf-8?B?Q1I3UHZpRXQyaVNheUNkbkxkOWZVMmFkdzNLRHZLcHJLY1ZJQXQxaTNlNTNG?=
 =?utf-8?B?MVBWUFRBeEViYmRkUmFyTlhDejEwUklSZnloUnpocy9PRUo4c0FFVnJiN3lV?=
 =?utf-8?B?Ykg5UXZIQnZXRHRPSWF4RHVuRitoQWtVcUZpQ1NLY25rTHFreDB5dFRnSkdR?=
 =?utf-8?B?V0xIbWhTSkRkN295QS9LcHNZSlUxbHFtMjRMeThSWHJYR2JYUmw2MTNOMmNE?=
 =?utf-8?B?MkxyVUNnb00yR1BFRWRGem9JeFFnZXR0ZW11UTNwWDhUREYzZEtoSXVrbVpj?=
 =?utf-8?B?RktGMXk5eE5QMHlvVGVsUFpyZG5VS25vay9pZStzeTdSMStBdWJBNVhxMFZL?=
 =?utf-8?B?cjFpU29lNGpLY3hiaXcvV1ZjZ0VRK21JclJ5ZVBsR29kYmNPT0NxRVpFd2Ev?=
 =?utf-8?B?N1BGaC9iUDIyd0tvcmx6U2ViY2tOTEt5OW9RQnF1bjJiR1BFQlMxNHlLTDlz?=
 =?utf-8?B?SU52aWFSYU9EM1NUSW1GaWtsTkJvem1QbDJGWW5mTGRLUy9RSUVoMkVoOFNX?=
 =?utf-8?B?MTNncCtKQ0Q3YUJncGdXS2VacFVJZW8yRlVDRDdCQ2hRNVpHeXZSZGtLZm5I?=
 =?utf-8?B?aVBteDFsN1NHQlBadWx4VHE0QXhGaGE0aG9pWHc5TEJFWklmbXpWK3E2endE?=
 =?utf-8?B?N1Y2clRLOU5ISzZsb0RmdDNtZ1pkTkllbGJBUFNXY2NQSDFoR3RydTFERDVP?=
 =?utf-8?B?OEE1a1RRVlhpaTF0aElIOXNhbVNIQjFLTGZLbnV3c1NCYllIRHhxeHhSRHda?=
 =?utf-8?B?a2ZGY3QyY2hwNG1UU1p2RUtNWUJEaWdLQWRyc3VPUzROZkszSnJPZ2ZPeUtp?=
 =?utf-8?B?TEpqUTBzcTJTeDJFTkxpanFBUm4wcHBTZE52VVdjdGxQd0NkaG1HS0t6Y1Nq?=
 =?utf-8?B?T0dUY3c1R0ZPSnlJMXRCcHFSdm12WGRPbTI1Rkh0WERHNjByQXdzdWJFd1BC?=
 =?utf-8?B?NnNPaThFUmZIYi9RWmMrVXJHZWZBb29vNUxQYi94MGYrYzd5NVZLRDlxb0wr?=
 =?utf-8?B?c3NaNVFvYno4SjkwOTM3ZFFUb3l2L2lKVmhFcGZIOEFyUHdWbEZENmVNTUE0?=
 =?utf-8?B?bExlZ1pJdmo3d1VMVlpBWWpKSjVGdEFNNHpiVXRqcWN1VktWRE5CNnE4bGRh?=
 =?utf-8?B?emNUWVhrVCtUaVZlZXNUSW14ZWt5dGJuekxZM1NqcVhad2FkQ2xrL2tPSWlm?=
 =?utf-8?B?ZGs5SllNbDZnbmlONFI2QUkyckRUZTVmd0JiaXM5NUFmVlU1clZITWZiazVE?=
 =?utf-8?B?L3d5Z2lEbG90YUkzSjFyQVFiUmtJcTNxeU5rZTg1d0h3c1dGa2pVR2c3aUF3?=
 =?utf-8?B?dklSNjVjODByekhUaEhxS3ZVNm5ydCszSXNycTJtVG8yakVkMWUxYnBQQXhW?=
 =?utf-8?B?dHhHbmwyY2QvY1RnUW8vcWdPWlFEeG1yK0JIQTVNSjRHS3c3azhIK0tCYjdR?=
 =?utf-8?B?cW5sSHJRUUc0RDhMK2E4TThRRk4zeGhGZVFTalg0Y2xhV0dhd3hBMWY4T1Jm?=
 =?utf-8?B?bmMxOFBXeFk1anpTVnZmTjkweHRPNVhFUkg2eHVDVE05MTFqU0x4cXo3cTRr?=
 =?utf-8?B?L3E0UlZoWXIyOEJ6RndZZlVwUXdGblY1aHdrUjZIS3NORVViVVZ4Tmk5MEwy?=
 =?utf-8?B?NXBHNFhpb2p0dHI1K2IrcUJaYzRJYjMzMTBhUitidm05a2tpMmhMeVY2MWpB?=
 =?utf-8?B?SlRsOStRRVgvd3BsT0dEYStGSHJzSzZySkJnUyt0R1lLTlM2QktyN1ptMUlD?=
 =?utf-8?B?eGxFSVNZMlQ1ZG93WUY3ZjhoS3g0c3VuQTNiTUx6Z1hmdFZKMU9nYmp2enFz?=
 =?utf-8?B?OUFVTHljYlFnLzBqcTZlYmdtbDM3eE5IWm9JTlYxWEhDUnA1ZXNSczhFV2Fv?=
 =?utf-8?B?NXg1ZkxvMnVQeFpRSWFZNGFBVks2ajk3RVE0OUZ5VnlHS1k3UVNqZENQcmpy?=
 =?utf-8?B?S2hwNVlEaWtGQXZPU3VKcFYxNmtmYTRxZ1RuYVJFejROWDNiMmxBRllvV2Rw?=
 =?utf-8?B?MEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9386f30-367c-4a2b-b4e8-08de15f63d64
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2025 07:47:27.3352 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mzow2xFLifAWH1WjloBy4JmSKY6ne+mbvBRlR+498rN6Zgvl8k18b4pEIp/hFAESd/AJ4dm4DcMERWQ28wGALQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4935
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

On 24-10-2025 15:36, Suraj Kandpal wrote:
> Define function to bring phy lane out of reset for LT Phy and the
> corresponding pre-requisite steps before we follow the steps for
> Phy lane reset. Also create a skeleton of LT PHY PLL enable sequence
> function in which we can place this function
>
> Bspec: 77449, 74749, 74499, 74495, 68960
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------

> ---
> V1 -> V2: Align the definitions (Arun)
> ---
>   drivers/gpu/drm/i915/Makefile                 |   1 +
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c  |   2 +-
>   drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   2 +
>   .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   4 +
>   drivers/gpu/drm/i915/display/intel_lt_phy.c   | 159 ++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_lt_phy.h   |  17 ++
>   .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  17 ++
>   drivers/gpu/drm/xe/Makefile                   |   1 +
>   8 files changed, 202 insertions(+), 1 deletion(-)
>   create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy.c
>   create mode 100644 drivers/gpu/drm/i915/display/intel_lt_phy.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 47bac9b2c611..ab090cefc4ef 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -355,6 +355,7 @@ i915-y += \
>   	display/intel_gmbus.o \
>   	display/intel_hdmi.o \
>   	display/intel_lspcon.o \
> +	display/intel_lt_phy.o \
>   	display/intel_lvds.o \
>   	display/intel_panel.o \
>   	display/intel_pfit.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 0b02163b545a..c99e0885e737 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -2854,7 +2854,7 @@ static void intel_cx0_powerdown_change_sequence(struct intel_encoder *encoder,
>   			 phy_name(phy), XELPDP_PORT_RESET_START_TIMEOUT_US);
>   }
>   
> -static void intel_cx0_setup_powerdown(struct intel_encoder *encoder)
> +void intel_cx0_setup_powerdown(struct intel_encoder *encoder)
>   {
>   	struct intel_display *display = to_intel_display(encoder);
>   	enum port port = encoder->port;
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index c5a7b529955b..c92026fe7b8f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -41,6 +41,8 @@ bool intel_cx0pll_compare_hw_state(const struct intel_cx0pll_state *a,
>   				   const struct intel_cx0pll_state *b);
>   void intel_cx0_phy_set_signal_levels(struct intel_encoder *encoder,
>   				     const struct intel_crtc_state *crtc_state);
> +int intel_cx0_phy_check_hdmi_link_rate(struct intel_hdmi *hdmi, int clock);
> +void intel_cx0_setup_powerdown(struct intel_encoder *encoder);
>   int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
>   void intel_cx0_pll_power_save_wa(struct intel_display *display);
>   void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index cd941f16529c..93bed6b0bda1 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -104,6 +104,8 @@
>   #define   XELPDP_PORT_BUF_PORT_DATA_20BIT		REG_FIELD_PREP(XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK, 1)
>   #define   XELPDP_PORT_BUF_PORT_DATA_40BIT		REG_FIELD_PREP(XELPDP_PORT_BUF_PORT_DATA_WIDTH_MASK, 2)
>   #define   XELPDP_PORT_REVERSAL				REG_BIT(16)
> +#define   XE3PLPDP_PHY_MODE_MASK			REG_GENMASK(15, 12)
> +#define   XE3PLPDP_PHY_MODE_DP				REG_FIELD_PREP(XE3PLPDP_PHY_MODE_MASK, 0x3)
>   #define   XELPDP_PORT_BUF_IO_SELECT_TBT			REG_BIT(11)
>   #define   XELPDP_PORT_BUF_PHY_IDLE			REG_BIT(7)
>   #define   XELPDP_TC_PHY_OWNERSHIP			REG_BIT(6)
> @@ -124,6 +126,7 @@
>   	 _XELPDP_PORT_BUF_CTL2(port))
>   #define   XELPDP_LANE_PIPE_RESET(lane)			_PICK(lane, REG_BIT(31), REG_BIT(30))
>   #define   XELPDP_LANE_PHY_CURRENT_STATUS(lane)		_PICK(lane, REG_BIT(29), REG_BIT(28))
> +#define   XE3PLPDP_LANE_PHY_PULSE_STATUS(lane)		_PICK(lane, REG_BIT(27), REG_BIT(26))
>   #define   XELPDP_LANE_POWERDOWN_UPDATE(lane)		_PICK(lane, REG_BIT(25), REG_BIT(24))
>   #define   _XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK	REG_GENMASK(23, 20)
>   #define   _XELPDP_LANE0_POWERDOWN_NEW_STATE(val)	REG_FIELD_PREP(_XELPDP_LANE0_POWERDOWN_NEW_STATE_MASK, val)
> @@ -151,6 +154,7 @@
>   #define   XELPDP_POWER_STATE_ACTIVE(val)		REG_FIELD_PREP(XELPDP_POWER_STATE_ACTIVE_MASK, val)
>   #define   XELPDP_P0_STATE_ACTIVE			0x0
>   #define   XELPDP_P2_STATE_READY				0x2
> +#define   XE3PLPD_P4_STATE_DISABLE			0x4
>   #define   XELPDP_P2PG_STATE_DISABLE			0x9
>   #define   XELPDP_P4PG_STATE_DISABLE			0xC
>   #define   XELPDP_P2_STATE_RESET				0x2
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> new file mode 100644
> index 000000000000..c65333cc9494
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -0,0 +1,159 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2025 Intel Corporation
> + */
> +
> +#include <drm/drm_print.h>
> +
> +#include "i915_reg.h"
> +#include "intel_cx0_phy.h"
> +#include "intel_cx0_phy_regs.h"
> +#include "intel_de.h"
> +#include "intel_display.h"
> +#include "intel_display_types.h"
> +#include "intel_lt_phy.h"
> +#include "intel_lt_phy_regs.h"
> +#include "intel_tc.h"
> +
> +#define INTEL_LT_PHY_LANE0		BIT(0)
> +#define INTEL_LT_PHY_LANE1		BIT(1)
> +#define INTEL_LT_PHY_BOTH_LANES		(INTEL_LT_PHY_LANE1 |\
> +					 INTEL_LT_PHY_LANE0)
> +
> +static u8 intel_lt_phy_get_owned_lane_mask(struct intel_encoder *encoder)
> +{
> +	struct intel_digital_port *dig_port = enc_to_dig_port(encoder);
> +
> +	if (!intel_tc_port_in_dp_alt_mode(dig_port))
> +		return INTEL_LT_PHY_BOTH_LANES;
> +
> +	return intel_tc_port_max_lane_count(dig_port) > 2
> +		? INTEL_LT_PHY_BOTH_LANES : INTEL_LT_PHY_LANE0;
> +}
> +
> +static void
> +intel_lt_phy_setup_powerdown(struct intel_encoder *encoder, u8 lane_count)
> +{
> +	/*
> +	 * The new PORT_BUF_CTL6 stuff for dc5 entry and exit needs to be handled
> +	 * by dmc firmware not explicitly mentioned in Bspec. This leaves this
> +	 * function as a wrapper only but keeping it expecting future changes.
> +	 */
> +	intel_cx0_setup_powerdown(encoder);
> +}
> +
> +static void
> +intel_lt_phy_lane_reset(struct intel_encoder *encoder,
> +			u8 lane_count)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	enum port port = encoder->port;
> +	enum phy phy = intel_encoder_to_phy(encoder);
> +	u8 owned_lane_mask = intel_lt_phy_get_owned_lane_mask(encoder);
> +	u32 lane_pipe_reset = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
> +				? XELPDP_LANE_PIPE_RESET(0) | XELPDP_LANE_PIPE_RESET(1)
> +				: XELPDP_LANE_PIPE_RESET(0);
> +	u32 lane_phy_current_status = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
> +					? (XELPDP_LANE_PHY_CURRENT_STATUS(0) |
> +					   XELPDP_LANE_PHY_CURRENT_STATUS(1))
> +					: XELPDP_LANE_PHY_CURRENT_STATUS(0);
> +	u32 lane_phy_pulse_status = owned_lane_mask == INTEL_LT_PHY_BOTH_LANES
> +					? (XE3PLPDP_LANE_PHY_PULSE_STATUS(0) |
> +					   XE3PLPDP_LANE_PHY_PULSE_STATUS(1))
> +					: XE3PLPDP_LANE_PHY_PULSE_STATUS(0);
> +
> +	intel_de_rmw(display, XE3PLPD_PORT_BUF_CTL5(port),
> +		     XE3PLPD_MACCLK_RATE_MASK, XE3PLPD_MACCLK_RATE_DEF);
> +
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL1(display, port),
> +		     XE3PLPDP_PHY_MODE_MASK, XE3PLPDP_PHY_MODE_DP);
> +
> +	intel_lt_phy_setup_powerdown(encoder, lane_count);
> +
> +	intel_de_rmw(display, XE3PLPD_PORT_BUF_CTL5(port),
> +		     XE3PLPD_MACCLK_RESET_0, 0);
> +
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
> +		     XELPDP_LANE_PCLK_PLL_REQUEST(0),
> +		     XELPDP_LANE_PCLK_PLL_REQUEST(0));
> +
> +	if (intel_de_wait_custom(display, XELPDP_PORT_CLOCK_CTL(display, port),
> +				 XELPDP_LANE_PCLK_PLL_ACK(0),
> +				 XELPDP_LANE_PCLK_PLL_ACK(0),
> +				 XE3PLPD_MACCLK_TURNON_LATENCY_US,
> +				 XE3PLPD_MACCLK_TURNON_LATENCY_MS, NULL))
> +		drm_warn(display->drm, "PHY %c PLL MacCLK assertion Ack not done after %dus.\n",
> +			 phy_name(phy), XE3PLPD_MACCLK_TURNON_LATENCY_MS * 1000);
> +
> +	intel_de_rmw(display, XELPDP_PORT_CLOCK_CTL(display, port),
> +		     XELPDP_FORWARD_CLOCK_UNGATE,
> +		     XELPDP_FORWARD_CLOCK_UNGATE);
> +
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port),
> +		     lane_pipe_reset | lane_phy_pulse_status, 0);
> +
> +	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
> +				 lane_phy_current_status, 0,
> +				 XE3PLPD_RESET_END_LATENCY_US, 2, NULL))
> +		drm_warn(display->drm,
> +			 "PHY %c failed to bring out of Lane reset after %dus.\n",
> +			 phy_name(phy), XE3PLPD_RESET_END_LATENCY_US);
> +
> +	if (intel_de_wait_custom(display, XELPDP_PORT_BUF_CTL2(display, port),
> +				 lane_phy_pulse_status, lane_phy_pulse_status,
> +				 XE3PLPD_RATE_CALIB_DONE_LATENCY_US, 0, NULL))
> +		drm_warn(display->drm, "PHY %c PLL rate not changed after %dus.\n",
> +			 phy_name(phy), XE3PLPD_RATE_CALIB_DONE_LATENCY_US);
> +
> +	intel_de_rmw(display, XELPDP_PORT_BUF_CTL2(display, port), lane_phy_pulse_status, 0);
> +}
> +
> +void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state)
> +{
> +	/* 1. Enable MacCLK at default 162 MHz frequency. */
> +	intel_lt_phy_lane_reset(encoder, crtc_state->lane_count);
> +
> +	/* 2. Program PORT_CLOCK_CTL register to configure clock muxes, gating, and SSC. */
> +	/* 3. Change owned PHY lanes power to Ready state. */
> +	/*
> +	 * 4. Read the PHY message bus VDR register PHY_VDR_0_Config check enabled PLL type,
> +	 * encoded rate and encoded mode.
> +	 */
> +	/*
> +	 * 5. Program the PHY internal PLL registers over PHY message bus for the desired
> +	 * frequency and protocol type
> +	 */
> +	/* 6. Use the P2P transaction flow */
> +	/*
> +	 * 6.1. Set the PHY VDR register 0xCC4[Rate Control VDR Update] = 1 over PHY message
> +	 * bus for Owned PHY Lanes.
> +	 */
> +	/*
> +	 * 6.2. Poll for P2P Transaction Ready = "1" and read the MAC message bus VDR register
> +	 * at offset 0xC00 for Owned PHY Lanes.
> +	 */
> +	/* 6.3. Clear P2P transaction Ready bit. */
> +	/* 7. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 0. */
> +	/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
> +	/*
> +	 * 9. Follow the Display Voltage Frequency Switching - Sequence Before Frequency Change.
> +	 * We handle this step in bxt_set_cdclk()
> +	 */
> +	/* 10. Program DDI_CLK_VALFREQ to match intended DDI clock frequency. */
> +	/* 11. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 1. */
> +	/* 12. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 1. */
> +	/* 13. Ungate the forward clock by setting PORT_CLOCK_CTL[Forward Clock Ungate] = 1. */
> +	/* 14. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
> +	/*
> +	 * 15. Clear the PHY VDR register 0xCC4[Rate Control VDR Update] over PHY message bus for
> +	 * Owned PHY Lanes.
> +	 */
> +	/* 16. Poll for PORT_BUF_CTL2 register PHY Pulse Status = 1 for Owned PHY Lanes. */
> +	/* 17. SW clears PORT_BUF_CTL2 [PHY Pulse Status]. */
> +	/*
> +	 * 18. Follow the Display Voltage Frequency Switching - Sequence After Frequency Change.
> +	 * We handle this step in bxt_set_cdclk()
> +	 */
> +	/* 19. Move the PHY powerdown state to Active and program to enable/disable transmitters */
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.h b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> new file mode 100644
> index 000000000000..bd3ff3007e1d
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.h
> @@ -0,0 +1,17 @@
> +/* SPDX-License-Identifier: MIT
> + *
> + * Copyright © 2025 Intel Corporation
> + */
> +
> +#ifndef __INTEL_LT_PHY_H__
> +#define __INTEL_LT_PHY_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_encoder;
> +struct intel_crtc_state;
> +
> +void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
> +			     const struct intel_crtc_state *crtc_state);
> +
> +#endif /* __INTEL_LT_PHY_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> index 6eaa038bf684..8bc25a564300 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> @@ -6,6 +6,12 @@
>   #ifndef __INTEL_LT_PHY_REGS_H__
>   #define __INTEL_LT_PHY_REGS_H__
>   
> +#define XE3PLPD_MACCLK_TURNON_LATENCY_MS	1
> +#define XE3PLPD_MACCLK_TURNON_LATENCY_US	21
> +#define XE3PLPD_RATE_CALIB_DONE_LATENCY_US	50
> +#define XE3PLPD_RESET_START_LATENCY_US	10
> +#define XE3PLPD_RESET_END_LATENCY_US		200
> +
>   /* LT Phy Vendor Register */
>   #define LT_PHY_VDR_0_CONFIG	0xC02
>   #define  LT_PHY_VDR_DP_PLL_ENABLE	REG_BIT(7)
> @@ -21,4 +27,15 @@
>   
>   #define LT_PHY_RATE_UPDATE		0xCC4
>   
> +#define _XE3PLPD_PORT_BUF_CTL5(idx)	_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
> +								 _XELPDP_PORT_BUF_CTL1_LN0_A, \
> +								 _XELPDP_PORT_BUF_CTL1_LN0_B, \
> +								 _XELPDP_PORT_BUF_CTL1_LN0_USBC1, \
> +								 _XELPDP_PORT_BUF_CTL1_LN0_USBC2) \
> +								+ 0x34)
> +#define XE3PLPD_PORT_BUF_CTL5(port)	_XE3PLPD_PORT_BUF_CTL5(__xe2lpd_port_idx(port))
> +#define  XE3PLPD_MACCLK_RESET_0		REG_BIT(11)
> +#define  XE3PLPD_MACCLK_RATE_MASK	REG_GENMASK(4, 0)
> +#define  XE3PLPD_MACCLK_RATE_DEF	REG_FIELD_PREP(XE3PLPD_MACCLK_RATE_MASK, 0x1F)
> +
>   #endif /* __INTEL_LT_PHY_REGS_H__ */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 82c6b3d29676..086e18f7edb2 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -293,6 +293,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>   	i915-display/intel_hti.o \
>   	i915-display/intel_link_bw.o \
>   	i915-display/intel_lspcon.o \
> +	i915-display/intel_lt_phy.o \
>   	i915-display/intel_modeset_lock.o \
>   	i915-display/intel_modeset_setup.o \
>   	i915-display/intel_modeset_verify.o \
