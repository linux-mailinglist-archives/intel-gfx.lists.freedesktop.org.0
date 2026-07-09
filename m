Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cUXJHF9LT2rcdgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 09:18:55 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DF372D89D
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Jul 2026 09:18:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=OJvtljFQ;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5014A10F3DC;
	Thu,  9 Jul 2026 07:18:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5889410F3DC;
 Thu,  9 Jul 2026 07:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783581532; x=1815117532;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=HZptqVi01QQrOem+exfb9g080dq1HAFrZ+PMyMGZ9kg=;
 b=OJvtljFQmeq9yGlcfy7qdKLIkXl+vR8hvi/ZRFKxHiyM5Hnc9l1W54PF
 oyGNC/VusRXt24VBJ/YSwE8CdcfgOaOgS5RUENrmPIyPskaCZUFJciqoR
 Ot1svgXHx/hIIuo6RRQBWG4LNBoaNEoolWPbEyBuVGgEZqwckN7jpGK/I
 Wg1OacsVIsCWBKZTm3O3LOM7kER8gTTvW81xuKzxDhcnG0VF7MGqiV8mr
 A/5e7xNCs8jBXgteS9cVDPDkNHOMgTs85jGspIDD9/2fWT322NVrRm15S
 L+CdR1/HClH76PxNPNQosn0dZvZGP3pFhZr6f3E4/Fp1LH/SulMsjVY0c w==;
X-CSE-ConnectionGUID: RFrD+n7gRtma+mQlW9h0AA==
X-CSE-MsgGUID: ma4BMQTlQ46MeiaIeZ+/vw==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="84227088"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="84227088"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 00:18:52 -0700
X-CSE-ConnectionGUID: STrpbZr2Rze9gfdOTTJABw==
X-CSE-MsgGUID: g8pRH73fTF+iGxG0ZcGzTg==
X-ExtLoop1: 1
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jul 2026 00:18:51 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 9 Jul 2026 00:18:51 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Thu, 9 Jul 2026 00:18:51 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.30) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Thu, 9 Jul 2026 00:18:45 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NJhhRjx8KWK1MuJwY2b0ZwL+8XeEcLVlSeuHbTJoLRB6URcVaJTj39QOBfWYVyTLI4bXLGZ9Kv1EB2P15iY8Ru39I6P00K+kjZNQHC4rYhjXLP8SI7HGjdGRdMhcayE20zMVcSEon5KgMou2IEh6SqdQmjCw/tAMkLdxvygSJLViGvi3hLXEY8LqsyS2CCLCld75/D2k9M53h2QVnZhwOyxf1anhnxPP850RRi/6QZDrPl6+wBOOly8Z8NPVyDOkhkIbKePZ8jcrlxS2bBV+7YC4fXzqGa9mjMBPDuGSIHldSqgnykhAuZEZ3/8n2+YnEslEa1UMuGE1ksw2QZiKcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BLNRo81DVT2XY/EgGjfAVeSNPe6vl9j4O8SQ9KJjrCg=;
 b=usLiMwZ1c/NCdb1hX61jz3Tw/nBLKPZQP5r7qbgjZ/ZK2gQFQSxKGtUlpEJRVxPaTPIyVJpI9MDnc6mwN1P82HG0xmO1hITaFju/69lKNRcLe/v1B9nICvXSApy5pRcGwDz3EtttI1jtIdZxgNsxVtJEp9jb4GEzwCFdUvtm52vG7NEicvRwuG2QcTnYrRDsuyJebcWYCMKlVTQk1GvgxyF9l9JMgpelLlCV2Ss8NH3GM5QlFxTac+hm8clb8AphI5AavQ6MDGxTOR9anfhXu7nt+x5f1bi0Vdl2YSTuUAqlQ9hkWpt5SiW3VK+mDt/GkXzocMl4UpyUYEx7qo+jcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB7424.namprd11.prod.outlook.com (2603:10b6:510:287::7)
 by MW3PR11MB4522.namprd11.prod.outlook.com (2603:10b6:303:2d::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.16; Thu, 9 Jul
 2026 07:18:41 +0000
Received: from PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2]) by PH0PR11MB7424.namprd11.prod.outlook.com
 ([fe80::c448:1138:6981:52e2%5]) with mapi id 15.21.0181.008; Thu, 9 Jul 2026
 07:18:41 +0000
Date: Thu, 9 Jul 2026 07:18:26 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Jason Gunthorpe <jgg@ziepe.ca>, Robin Murphy <robin.murphy@arm.com>
CC: <intel-gfx@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>,
 <iommu@lists.linux.dev>, Andi Shyti <andi.shyti@linux.intel.com>, "Joerg
 Roedel" <joro@8bytes.org>, =?utf-8?Q?Micha=C5=82?= Grzelak
 <michal.grzelak@intel.com>, Janusz Krzysztofik
 <janusz.krzysztofik@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>
Subject: Re: [PATCH v2 3/3] drivers/iommu: Catch scatterlist length overflows
Message-ID: <fgvf2f2dlj3hggjdfu7b6zulhdudm4e75yrxvveyo52erkpu2s@i54t3iqfdfoc>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260701104437.236979-1-krzysztof.karas@intel.com>
 <20260701104437.236979-4-krzysztof.karas@intel.com>
 <20260703162236.GX7525@ziepe.ca>
 <90558ba3-44e6-4d5e-9c72-ed8817d372be@arm.com>
 <20260703203502.GC1978949@ziepe.ca>
 <a381d265-e7a4-4fe7-9421-3553706d41c1@arm.com>
 <20260706144546.GE107792@ziepe.ca>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260706144546.GE107792@ziepe.ca>
X-ClientProxiedBy: TL2P290CA0014.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::17) To PH0PR11MB7424.namprd11.prod.outlook.com
 (2603:10b6:510:287::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB7424:EE_|MW3PR11MB4522:EE_
X-MS-Office365-Filtering-Correlation-Id: 0ec4fb09-aac6-4946-c4dc-08dedd8a4d2c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|1800799024|366016|18002099003|22082099003|4143699003|56012099006|11063799006|6133799003;
X-Microsoft-Antispam-Message-Info: /blDxkm6p6bYlh/LrfX67Ltx8ZXks78SJEyVcYR5XAOXc0mMQB077ho8Cgz8qAsUk4sPa+VB333Q+kNDa43IwUSxNgCC8OZK5aFOR29fkN9iHIBD2+E+3faSe2JyJNgDFoekYF2nl5w4+3PaL+NKyBu81YB76InnI/qsGUhAc4rbmd9QiwYSaAp4Xogh2iejri+5hTRxCf+cDqAaB88UGexecnXiohqgvIwI5txThbH7TWWYDJDj2Nl5NTUez3Um7p8UYaD/IKqQqIbRxTotVDRMkJI0xmTIvV70vV06Am7irEoos3bw4eJ72o4T/1YfjojYTi73JORF9E6b/QuKm31sBCe3Bn7u0Abxc90Kdh3G3MLD7cYXvfpTDxPFGbbSE/kAv/KqelRggM69vN6GbqbPy6CV/8NJnFw64D0sZ4ZdRb+cIXVxIAbaVsh2Xrlf0WIQwZ6ZCdU9glnnPurqTHj1o4WC2cB+MTMLfzBkBE002s5gzq4b2aB+L1QOgx0B8Ui1L26CtmofehQvC+vN3jLJ1Oh7jhfg2btpItk0exGfBG06NzMKyh9aQNgbOihQatAhcsrcF59Wmlnp4mNy5HRPLsoyfPuJqvpSOM4RAdL3DM64Z9TZylY4mK02DYurZCsVXCWgOr1pchZ7BuiNrXF973mI2HvC+MplgOQcnOg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB7424.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(1800799024)(366016)(18002099003)(22082099003)(4143699003)(56012099006)(11063799006)(6133799003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cVFaWU5PZTlOZHF6UjYrQzdwZkZ2MWFLaklYeVRKb0ptM1VGbVhvbmlLUm0r?=
 =?utf-8?B?VWNrZ01vWVJ1eWI5Z3JyWXhqRkpPRkhvNHFWQWYzVm8vYkNGS0JldHR4dzZT?=
 =?utf-8?B?V0U5azhWMGQ2c0I1RVprUmtiZ2RaeGRFZDBwMzIwRkZ6cEpXS005Z3RBV0Vn?=
 =?utf-8?B?ME1ONXF2eWhaakFFdDZxSXFYbEFoMjczMC81dEYxZW9vcTJHLzl5QXduWEo2?=
 =?utf-8?B?VE9LS2NTMmZUMkRnZHU3c3J1dkh1WUJ2K3JFWmIvNStMdlp4MWlYYW1xT3pU?=
 =?utf-8?B?WDJnZE5qYzI4T29pa0dYOFR4MnNidkVEbHRWZmdVR0I0V1ZZaWN4eDlVS2hv?=
 =?utf-8?B?dVhYZGwxUW1YMlpTaERwbkNVK2VrMGttQXdYYXV0Tkpldy9DSm9QSy9sWnJT?=
 =?utf-8?B?YzEvT1dJRlpJdkRIRW9ZSmthcWVlQnBrdk41RzV0dGMzMDJoR0hnbDJ1V2t6?=
 =?utf-8?B?akt1NExUMkQ5Y1RvaFFKY3ltQlZabVNrbmhaelpxZFBhN3l4ZFZObWRRR214?=
 =?utf-8?B?bGNIaXFGZWRXTmdtbFJaNmQreVhnMmpaSm9ld2RHeGpVVjhqYitTUlB1a3Nv?=
 =?utf-8?B?dG1ZY2xaczNvS083cno5eEwwWTJMTDcxc0FCSXkvUVRORHVOMjEzM051WWho?=
 =?utf-8?B?QS9IZzVxdXBEQmo3YkE0UXEyS3VJb0gxYUZVYko5SSt5MzF1RWplMEpmbmI1?=
 =?utf-8?B?aTNIWWVEUlUrbHVvRFJhT2d0VUZSOXd0VWppOU5GNzlSRnlRYllEWFFqVGRn?=
 =?utf-8?B?a0QzNjQwWk5aK2xjZWcyQ1lYLzd0cmJuOEx2Nm54cUVqOVZ4am1nSDd1Vi8w?=
 =?utf-8?B?VVZpQ28wNmxpRGthU1ZzM3Z2MTlFKzc1OHhvdnJqWlJNNHVwU1dUV1pGNXM5?=
 =?utf-8?B?ODYzZUdXamNzUFZMMDFXSGtuM1VuTE9CWlZVanpPaVZZdVVaRCtINTVRV1F1?=
 =?utf-8?B?NmJIdXVrNUUvclpsUllnNkFKdjFQM0VYZlRZMkk5MlllamxrZlpWY3pxOTdE?=
 =?utf-8?B?RnA2YzhSVGV2bVhUK1NrWU16ZXVLcE1heWRibjM4aWUxYnFxUmg3L1RxQVI1?=
 =?utf-8?B?QTJWRmpDdXh3cVdCNDN3bGlZaURtV3Nnc2ZJRlpXcUtJbC9DbUE0YW1GWllu?=
 =?utf-8?B?bUhNVVVENGs1VWZGakY4bldkUzFmdnpneUVmMHNvTEQ2U0FnY2owSlgxK1lv?=
 =?utf-8?B?V1pKeHJ6Z2Jxd3R5cWlVeTY4aVJDZ2tZZ1A4TkE0dldyS0xJdFpNZ1ZoL3No?=
 =?utf-8?B?b1QrOG1mbzBKWVJCdGJLYWZJejBEZlNFblVMR0pCMHlxOUlvVU42b1AxSnNP?=
 =?utf-8?B?a0NPc3lpelB5NnRCLzRxbklCd0tQUXhyZE9mLy9nbHNDc1VvVFBlUk56MUtB?=
 =?utf-8?B?d0pkR1hjeVlHMkFKU1dUYTZmcjZOMFR1QlI5UGFxbzVvY2lkNGpZWk1ZNUU2?=
 =?utf-8?B?UHNTY2J2blNaeDBsci94SzZja0EvSGplazJvemNaeU8ycHVXSEFXY0YyRUov?=
 =?utf-8?B?MUFPbVhzaHVPS3NraFJtNmlia3FzTWl2WS9tU2tad2orRk54bnd6T3hjOUph?=
 =?utf-8?B?UThjeHlsWDdjcVFzZk1QaTlCcExlUXJFZlprUmphcGprN3ZCU0Q1OW5BU1Ry?=
 =?utf-8?B?cUN0Tm9yaHlXMWdHZVE2dU1HTzEwNEN1K2lGRmdJVzZ4NWtWaE02d2xIMXhv?=
 =?utf-8?B?czRJdGhKOTFVYi9kcTJ0Mlk5OUFtMVRmTEY2aVNrZGprK3U2cTByaXNxN01Y?=
 =?utf-8?B?aU9FeitTLzZ4ZVl3c05YYUFKYjI1Um5DR3J5dWZzUlQ1QXJyc3VkcURqRm0v?=
 =?utf-8?B?MkZXempXWFcxRzhDQm9ZbEJXaFRlZU5SdlpETnUxSzhVMnBpK2trajJ0SFVn?=
 =?utf-8?B?aHJ5RjR6UVhVMVZTN2laak83NHdCM280NWxiZDhXbEc1QmoyRUU4QUF3WGpU?=
 =?utf-8?B?aVFRM2toeWtHMGdwQzQwazJZZXNFMUdvWnVSSVFsaGNDQjc5bGVmNDhrOUp3?=
 =?utf-8?B?dDlTWkdPbTNTSTFYWXowZUpuVkFrSTVxY0lTWFZMOUNBaWkyWGY3eWoxUW04?=
 =?utf-8?B?T0hlTXRHZ3lXK0J4K1ZZbStnMzlDSU1tQVEyZlNwSEtXTFBkNm95Ylo5MWRv?=
 =?utf-8?B?eGg3cVJSMStrRlFlNHhmeGZ5d3VSTEdqYVdDc2VBczJjalQ2VGl2eHQ4clBM?=
 =?utf-8?B?RVlCditLbTAvOHMwWjJocEZnTDNCV0tXYzRXVFRrbGpNMElhSnd0SkdxOGlh?=
 =?utf-8?B?QzdXSmhORlNzMEU4Z0VjU2hlYWVKZTFPbXpjZ1Z4Uk0wZlE2bHlmLy9Oc3Jo?=
 =?utf-8?B?aUx5UzYrQ1dvVzkrWHZHaUdNZ2hhRGdDdmpBL2lFSk1XMFl3Rm94bnRWcnMv?=
 =?utf-8?Q?+9VTrXms4IrOkG+A=3D?=
X-Exchange-RoutingPolicyChecked: tFj3WVDkusrRomB/8ZoMcUtTtUoeJB0fo8r4nD36bqsefhw+05r4ZL46CIhrDoJ9rlA/yFVt+VTXUS05jjDKHFmmQVzh8GsiITvoAmJCRVJRiKSX8YjoWxbeQ9oyH/yP8zSTKJhv9p8kUqqd4fADJJ1q7tpILMrh3lOxGCfxz2ZRQbLVg9P2JPKvkTQwM9V98kfpnlt3ZxO9nhg6aKgtGE7W5f+rRN5tHTP1wWdWcBWxPGferxGzB7U/4AvrgMUSTCuBWAWM8o0uoU1YYqDZnAYpha66e9jsR1mFQJqUPznpRfVtUjC9KdwCpMyxogLjj2/Pn3SgVUGDf0LiPbX+3A==
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ec4fb09-aac6-4946-c4dc-08dedd8a4d2c
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB7424.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jul 2026 07:18:40.7001 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: oDcSnA0PmINTzXacWlHZa9rJAbrlSe/DvTKFKqKESE1EKvjb9RfeHM4zK+I0MqQRAXdhBtIxw12MrqLHzTrZBYx/f4E8/RirsDcyWBxB3o0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4522
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_SEVEN(0.00)[11];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C5DF372D89D

Hi,

On 2026-07-06 at 11:45:46 -0300, Jason Gunthorpe wrote:
> On Mon, Jul 06, 2026 at 02:08:14PM +0100, Robin Murphy wrote:
> 
> > modern use-cases anyway, and is being replaced, so limitations of a "legacy"
> > API that don't have any meaningful impact to its existing users are hardly
> > something to panic about. If DRM does want to be able to *reliably* map
> > massive amounts of RAM then it can adopt the new IOMMU API, for this and all
> > the other reasons that that new API was promised to be "better".
> 
> Yes the new API does solve these issues, and it avoids padding
> destroying the iova contiguity.
> 
> > > So I wouldn't be quite so dismissive that this is not something a real
> > > user can hit.
> > 
> > I'm not being dismissive - clearly it can be hit. My point is that anyone
> > who *does* hit it can only expect it to fail (as indeed this particular IGT
> > test seems to), because it has never worked.
> 
> Today you can allocate memory from hugetlbfs and map it through
> RDMA. The user can set 1G hugetlbfs page size and allocate 16G of
> memory, and RDMA map it. Databases and HPC, for example, love to do
> work loads like this.
> 
> So there is an unlucky hugetlbfs FD that has an internal memory layout
> that will build a scatterlist that cannot be mapped by the iommu.
> 
> The user's application that normally works will fail randomly and
> infrequently for no fault of their own. This isn't "can only expect it
> to fail".
> 
> > So yes, limiting any individual segment to <=2GB would end up avoiding both
> > those conditions, but it would also impact plenty of cases that *do*
> > currently work fine, e.g. 1GB+3GB+3GB. The limitation is really that you
> > can't have two consecutive segments where the first starts exactly on a 4GB
> > boundary and the sum of both their sizes >=4GB.
> 
> Yeah, but that's hard to express.
> 
> My feeling was supporting >2GB without a split is not really so
> important. You are (righly) arguing these huge sizes are usually rare.
> Places like RDMA where they are not rare people already added
> re-assembly logic to join SGLs so HW optimizations for >= 4G mappings
> can be used, so smaller splitting doesn't really matter.
> 
> > > API wise I expect any arbitary input to sg_alloc_table_from_pages() to
> > > result in a scatterlist that iommu_dma_map_sg() will map. This
> > > patch highlights there are cornere cases where that isn't true, it
> > > should be fixed..
> > 
> > Technically sg_alloc_table_from_pages() carries no such assumption,
> > only
> 
> There are lots of callers that just do sg_alloc_table_from_pages()
> then dma_map_sg(). Callers can use this simplified API when they don't
> need any segmentation logic in the DMA API.
> 
> > sg_alloc_table_from_pages_segment() (or __sg_alloc_table_from_pages()) with
> > the correct dma_seg_boundary value for the given device. 
> 
> _segment is the segment size, not boundary. The sg_alloc_table
> functions don't support the seg_boundary limitation.
> 

I do not have any strong feelings for or against any of your
suggestions. We could do one of them or both, as long as you and
community are happy, I'm happy too.

Current fix adjusted to Jason's suggestion:

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 381b60d9e7ce..1a36fd9bf10b 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -1493,7 +1493,18 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
 		 *   time through here (i.e. before it has a meaningful value).
 		 */
 		if (pad_len && pad_len < s_length - 1) {
-			prev->length += pad_len;
+			unsigned int new_pad_len;
+			/*
+			 * For large mappings spanning multiple GBs we
+			 * may not be able to fit all needed padding into
+			 * sg->length.
+			 */
+			if (check_add_overflow(prev->length, pad_len, &new_pad_len)) {
+				ret = -EOVERFLOW;
+				goto out_restore_sg;
+			}
+
+			prev->length = new_pad_len;
 			iova_len += pad_len;
 		}


My interpretation of what should be done according to Jason's
point of view:

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 381b60d9e7ce..4d06010216bb 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -33,6 +33,7 @@
 #include <linux/spinlock.h>
 #include <linux/swiotlb.h>
 #include <linux/vmalloc.h>
+#include <linux/scatterlist.h>
 #include <trace/events/swiotlb.h>
 
 #include "dma-iommu.h"
@@ -1477,6 +1478,10 @@ int iommu_dma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
 		sg_dma_len(s) = s_length;
 		s->offset -= s_iova_off;
 		s_length = iova_align(iovad, s_length + s_iova_off);
+
+		if (WARN_ON_ONCE(s_length > SG_MAX_LENGTH))
+			goto out_restore_sg;
+
 		s->length = s_length;
 
 		/*
diff --git a/include/linux/scatterlist.h b/include/linux/scatterlist.h
index 6de1a2434299..04be2fa10359 100644
--- a/include/linux/scatterlist.h
+++ b/include/linux/scatterlist.h
@@ -472,6 +472,12 @@ int sg_alloc_table_from_pages_segment(struct sg_table *sgt, struct page **pages,
 				      unsigned long size,
 				      unsigned int max_segment, gfp_t gfp_mask);
 
+
+/*
+ * Keep enough headroom for segment-merging in DMA/IOMMU paths.
+ */
+#define SG_MAX_LENGTH 			(UINT_MAX / 2U)
+
 /**
  * sg_alloc_table_from_pages - Allocate and initialize an sg table from
  *			       an array of pages
@@ -499,7 +505,7 @@ static inline int sg_alloc_table_from_pages(struct sg_table *sgt,
 					    unsigned long size, gfp_t gfp_mask)
 {
 	return sg_alloc_table_from_pages_segment(sgt, pages, n_pages, offset,
-						 size, UINT_MAX, gfp_mask);
+						 size, SG_MAX_LENGTH, gfp_mask);
 }
 
 #ifdef CONFIG_SGL_ALLOC
diff --git a/lib/scatterlist.c b/lib/scatterlist.c
index b7fe91ef35b8..a788345b93a1 100644
--- a/lib/scatterlist.c
+++ b/lib/scatterlist.c
@@ -468,6 +468,7 @@ int sg_alloc_append_table_from_pages(struct sg_append_table *sgt_append,
 	 * The algorithm below requires max_segment to be aligned to PAGE_SIZE
 	 * otherwise it can overshoot.
 	 */
+	max_segment = min(max_segment, SG_MAX_LENGTH);
 	max_segment = ALIGN_DOWN(max_segment, PAGE_SIZE);
 	if (WARN_ON(max_segment < PAGE_SIZE))
 		return -EINVAL;


@Robin @Jason I value your input and would like to reach an
agreement on how to proceed.
If scatterlists are going away soon-ish, then we could go with
the quick-fix version as to not involve too many people.

-- 
Best Regards,
Krzysztof
