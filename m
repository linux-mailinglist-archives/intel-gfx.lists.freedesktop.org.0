Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B7ED8B08D20
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Jul 2025 14:38:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 70C6310E2EB;
	Thu, 17 Jul 2025 12:38:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="X0gFFEhC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DD2010E2EB
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Jul 2025 12:38:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752755927; x=1784291927;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=GN7oxcZ/j7hEBiCGLojgjFX0eMetBs5uQoItyPyzcA4=;
 b=X0gFFEhCfv0Ak1yKooOh4TyEoxVt1cNy1QWEZ4n7MvYSc0lsb3hTilZ5
 xKp3+CTGeqXxnV+MAjYmLMFhMlUoi3HiiO/bc8797Dv20Zy25re+aX/6K
 iEX/9vnuY0EwBY3tykJZCLsfQo3m9QrkGsH7EWrRN0UGFnDSHm8ncyiOU
 U2uWYKHx1INQbRtmVxYxDOAdovtI0UZ989mvWYgYInzU57Mz9KjsKNak0
 K2q2rzJ4K5dvDYRPiRpQzLrpW3b/oQtnQdh8b2iTuV9VAv9ayI8YATADk
 q5e2LFbfwiz/3jvLnADVHjSZmynPpBzdBKxByp6O/8K4vmK9pLT7fFewF A==;
X-CSE-ConnectionGUID: 0gA5HVF6RfKyvK2urSLr0g==
X-CSE-MsgGUID: tUmka9F7SJWoPFe7E2dAmQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11495"; a="66098722"
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="66098722"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 05:38:37 -0700
X-CSE-ConnectionGUID: Abqr20LDTV29eBRtshJO3A==
X-CSE-MsgGUID: IuQHXDkySUeach670B9Pog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,318,1744095600"; d="scan'208";a="188776098"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2025 05:38:39 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Thu, 17 Jul 2025 05:38:38 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Thu, 17 Jul 2025 05:38:38 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.58)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Thu, 17 Jul 2025 05:38:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jk8nT682k1YkQOh/tQTB62s6SKK2RDZUoEgsiz7pA1k19QsRKnrO1AgCYcBfW4bCJp6uupbsTi+AXi7bE/CnBgQbA8VKAxOWGStVmZPGFL6eVLLjCPlYofzsdxX89PzqBuZGtClUqsdHcuT1ypyxked+ny2zxuVXW3DXRzudxJyaw1yR409QIWYC62fqTcv2ItVONes6HjoZRfMtM+Kp7ICLn64LuhgTQI24iY1LNqAAxRI8wr0KZyrmv0sQLQUZyKEOAyf0Pf/CVwjmwGz8Epff7h+BnHAP2i83DgaEKvRC1Ui2qf4hP3Nsvcof82yMtzO2orbsTHzaqYIBG8gvSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V1rD5UxnPhgakGadWsCtr5ODiIO5MgNr6eldxyOua5E=;
 b=Rvq/v0w68fPOuTNnLFuQgxV+6D+qKXLi/dxhZvGHvlNudh6GvQNHeiQBjGCXmDuRbuUKusU09DBCwSHs4ycIlxaub2tFkF4z8lZ1xp67uEI6h82S2ESVQNu1qtemExq1TYNOJ/pxbcLWzdhufbEE2VbXSiWYqNU4BxLGqVqdwG2xMOhz3Oa5QsdE93OR90jpgb7/mqoE8wGSzHEaP+7p7lRCkTyUsd0SYQRqz0I6KFr+BU4BNfcr3oN/BtIc2iU5Sx3s0bPfs3pg9STMAbhU9BGkPlUd+9SgAXpAVj9ADPrO6Ns91i6jHu1SM070YywTS8cm4LVNGl3CLcIZq0zp4Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by DS0PR11MB7557.namprd11.prod.outlook.com (2603:10b6:8:14d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Thu, 17 Jul
 2025 12:38:36 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8901.033; Thu, 17 Jul 2025
 12:38:36 +0000
Date: Thu, 17 Jul 2025 12:38:30 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <krzysztof.karas@intel.com>,
 <andi.shyti@linux.intel.com>, <sebastian.brzezinka@intel.com>
CC: <krzysztof.karas@intel.com>, <andi.shyti@linux.intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [PATCH v2 0/3] drm/i915: i915_gem_execbuffer.c minor improved
Message-ID: <20250717123824.676605-1-sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: VI1PR07CA0284.eurprd07.prod.outlook.com
 (2603:10a6:800:130::12) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|DS0PR11MB7557:EE_
X-MS-Office365-Filtering-Correlation-Id: 6455cf8f-7ffc-48e0-e39f-08ddc52ed92b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RVdtQkhOcUc4cVlueEhITXlRU0c5bDZ2Uk9TaVpFVjFlaWFLbU4rR1hUWWZT?=
 =?utf-8?B?UzQzNzJmandVU0tlNmhvTTY3cGFPVm1hVXlrT0ExUVQwYWdaWVFzc21oVWJs?=
 =?utf-8?B?cWlmcjFDYjJHTDZqVm1CSjZMRXBmWUU0cnZYYjRYcEVEMzN5RDMzM1ZHUlp0?=
 =?utf-8?B?OTZkaURwQml0dkFmc0szSmZ3eDhwMjV5T3d5S3JsQVpFOGZBd0dKMk5ERjMz?=
 =?utf-8?B?eTF3cUZicytENVNpVFJpb01kS3NVODVNQ2MzMHpUdFFaZFl3ZFlVZlBDV09z?=
 =?utf-8?B?ZG9uRW5QcHBtUWh3SFpHZ1BQY3RadDZUM3BUZEtlZVlvYjJ2eUg3ODN5WEVi?=
 =?utf-8?B?ZUl2QnpjK2dUNDkxb1orbmhBejAwZlFSWFYwa05zeDlUeWlCZm1IYmtoZU1E?=
 =?utf-8?B?MUVLVkJ2YXU4SmZwQzkrUjVwbjZjS0NBRmM1ZWRLRk5ybGtvVm5pWDZWY1c2?=
 =?utf-8?B?TkxRRng2d2pES2ZZeWdGRUFkT0g0Mng3aW1kQnV0cnFnamV4VmxNMEtTM3c1?=
 =?utf-8?B?UHlVNUk3NDNGTC83S0RSdit6UjBMbDVmaWc1d1hmRG54U2VuZkZxejAvZ1Ns?=
 =?utf-8?B?SUpubVcyWkcrMmRWNDFXNFFKK2RzME5zc3Z6UTlQcjFZWGtQM1FxWDVFcVJ6?=
 =?utf-8?B?ODRtVHhtbENibjhKd3c2YjYyOExRVVcwVkJYQ2puT0Fja2JraTRTSzkzdE5E?=
 =?utf-8?B?K1ZZbzkzM09Ma2pqZlZUVld5b3kwd2Vqci9hamk4c2hlcnljMklWeHQxRVhP?=
 =?utf-8?B?SEdJbjJIN05RdjJGZTEreXRjSTBZWFoxSDRmdFdpb1JScEp3L0QybVR6NE1T?=
 =?utf-8?B?bS82Z3RKMDlmUE9wNklXNEJUa2UyM2ZYMkk0b0ZNVi9qOTZUL0xkR0U1YnZl?=
 =?utf-8?B?VXdOR0swc2RkRm1DekZ6OHVsRGpUbllwQ3V0ZjJtQjFvbWVCK3pXK2ZrMUZJ?=
 =?utf-8?B?MzFQZkorQ0J6RSsrekxnckF2SFRVNFBPeTk4bjU2NUhGdXQ1c09ZQ2l6S0li?=
 =?utf-8?B?aGtjbG4rSzlYSStmNUNzVS83Y2hsUHR5Y2ZZL0xHcmdXNFdFc0FVV3pXdDhI?=
 =?utf-8?B?eGQvNzJxUXl0eU5YQzRIcDZqTDJZMnFDN0J2cDZleENKREN1bTNoaDROamUr?=
 =?utf-8?B?L1hQa1VwdGNkc2twbmdBSWYyaHhSZjV3UXBVbE1XMTgyaFdjWk5lenVzcTJ2?=
 =?utf-8?B?MDhyK0ljVXViVjhGWlB0eFpzUUdhRnJVTVF0MXVLc0hKSGRwcTNpVGxidFRr?=
 =?utf-8?B?T0QwTjZoTnpLaSs5UExtUktUZjRTMjFWK25ockM0RXJGd0RLNUY0R01VeHAv?=
 =?utf-8?B?Z2xZSTRYbnE3RzNFNStVQi9CNXhVSXJjcThBR25CckRRbGkyU1R0WklYRFMx?=
 =?utf-8?B?d0tPZUtVQ3BEY1J6aFR2dFc3WURrV0NTQmorVkh4RTZIOHZhNDg1SUVtWXEx?=
 =?utf-8?B?cXlIVVFBOHlrV3dINE9vMWw3M0hMWHM3MkpwU2wxY0UyeER4ZG9ORzJxN1Uy?=
 =?utf-8?B?Rkl1djhOLzgxWjlCb2Q2SUVTbkNLRlQ5WGZpT1NkN0w1cENHKzVvMFF6YzNj?=
 =?utf-8?B?YUFveEV3TmUvQWtFanNJSlhmbkIzU1dZL3hFVExwN2ViSC9JOWpNVHRURGNo?=
 =?utf-8?B?b3c2cytwbVcydHJEc2JkTDBCYU9iNjVtTEcrVGhicDhZNERRRmdTaFRnL3BT?=
 =?utf-8?B?a0paSHcvNm4vL0gzeG50aDY5NlJNeHoyM0FwYkxCMlhsRzJnekpSVVJYM2RU?=
 =?utf-8?B?ampuQ2dWNHBlTWJ6SnBZSzVvdzY4UmlHamZ4bkpWSE1yNEdwY3VSanpuOFlj?=
 =?utf-8?B?eVEvOTFCcDRwUm5DQnQvcVduRnpBM0NXWk1NcjlMMEEyS1NuMTVDRURHWkFk?=
 =?utf-8?B?N2RadzVrb094ZHJZWG9qNHNRcXA1RWlPZkVwR3VRTG5aOHN4SkFoMHVjZGdt?=
 =?utf-8?Q?sFX35Stzp3g=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eVNzYnpJUnQ1TXVmQllPckZqN2pZak40TUZPeUVSWm1LYkQycjkyZkFTNExm?=
 =?utf-8?B?VlBMYnlyZDdISVo2NjB5bDNOTThST2NLeFkxUFRyRXBrVE01NXJWN2V6aHVq?=
 =?utf-8?B?TlN5azZsMjZOY1o3Q2lCNnJOQWtVS2t4VmJNZmRwVVNaUncvRzhIUHMxZTY0?=
 =?utf-8?B?U3R2RksxUVNOSmdmTDg2UXBUQkh0ZkRHdnBmNmpGc2tjUGo3SjJEMVZkVFdW?=
 =?utf-8?B?MWNRRnUxVmMyUWxWS3U2SUZXRFNOOFRHUGpvc3FHMUtlQlJKWDFrSUlFTlBV?=
 =?utf-8?B?TWxhaVNFSGNQTUFaM3RKVUFYc05jYUNxekVSNXVkdXpvWjc2N3hLQVZHbXdq?=
 =?utf-8?B?YmlwMGVnMUtnU3JYVnBkSDBTak15YVZXUU5pSWZTWXlpd0NReXF5STMxNlha?=
 =?utf-8?B?RER3Ny81K0pYT2I1NkNXbXV2MTVpb1RkK0VsVVliT3JmMDlFK09NdEM0S2c1?=
 =?utf-8?B?UERIQktwV0ZEaVBNREVDR3FNMzM5MThRZWE1M01xNlRUTi9CM0t2QUY3UmJh?=
 =?utf-8?B?VWlBajhDbnAwRFVPNS9nWHcyT0FHMitUcmxTWThKNFpiQlpSM1lYSDBEMmc4?=
 =?utf-8?B?ckRHemtLM2tVamh1dEhBVlV6YUJCVUhVbVRBeTM2WHlGbkcrc2NucVMyTngz?=
 =?utf-8?B?LzB3dllWZWMxT2JobTdYcm4ycmhGMURCK2s1Rk5HWm5zRkNYdmRPdjdzbHpp?=
 =?utf-8?B?Uis2RUdldU1laWRzaERXWU1IcVV0ZFk2TDlVVUdKZGlodDk2Z1cvcTh1TnRj?=
 =?utf-8?B?aHp1S1JDZ0lNYzd1Snk5WTRScG5kLzVqVW5lT2w2MDFHUC9CSExWdGU5SlM2?=
 =?utf-8?B?NlNMYityYndnNVBKMDZHMUYwZEcrazFBWjNrNUNXRGN1TDdHVS85RGRzUXFH?=
 =?utf-8?B?Zzg5WmFnZjVWdVoyam81YnUwVXlOMWllME9zTkNaakVCR3dCOGdnTmgrMjhV?=
 =?utf-8?B?QUQwVDMvNDZING9rLzBBY1ppWGpIdjlCZWlHK2N3NTdQZG5vU3hCRjZINGov?=
 =?utf-8?B?NGJWdUZPY3NSaDRROXJTWXpGdXI4U2oxeEVUTlhvS0NNSkNXeUlwY1J2ME1X?=
 =?utf-8?B?SG01UENQSitTdkdqZ29ndnRwLzFacEtFK2QvZUJBdWZOQVlqaUV5bUpKQS9z?=
 =?utf-8?B?c1ZQRFdYM29ZUWNxOUtiejlNWWtNSFIxb09Bd1hhVjhKakJMbm9neWJJQTE3?=
 =?utf-8?B?a0xSZXFJNW92TUFOUFkvekM0Wi9McmFUeTNnVUNJM3FuMitMcDhpaGhhZmJh?=
 =?utf-8?B?NmZxZHRVbHBscWl0SWRxS0RhN3NLRGxSVUc4ckhwTzJXamdGQmFsN3Z3WHBj?=
 =?utf-8?B?OGhHc2o5OWJzQTBaenNyTi95MmpXYUIyZkJIdFFqbU9JMkN5aXpHaG91Mmlz?=
 =?utf-8?B?UnFnVHNNWUgyMVcxS1dpdWFMZG5RSi93WUFOdlE2VVhJc0ZvdVVzQlliOEZz?=
 =?utf-8?B?eFpoR3VDcVlhcXA4cmwwbFFVT0o4Vy9tWWczYTE5TnpIcjRwOTJ2WnVjU1lm?=
 =?utf-8?B?aFI1dXF1VGt5d0hHeEFqMUhIVmNYRkRuU0JsV1kxUDh1RTdET3QzR3JOempM?=
 =?utf-8?B?cEdHK0RGR3kvcjRyT3RZMThhdDU0QzgxdEpDUkZlM0g5cG8yQWJwMS9jYzhn?=
 =?utf-8?B?R21JbWtaenFmVGRJRER6dDBZRU43Tm1zS1hkWGVzQVNpVDZmdGhiU2xmbS9F?=
 =?utf-8?B?REUxRndmcXE0aVVLbVdKcVVubGplZzAxMFhiQXU5QkpxeGIvRnhhcjY3cnJr?=
 =?utf-8?B?SHBua29YalZZdUc1MW56WTZZUGZwUGIvK2s2VHF5TVJpa3FST3ZIRzh1UGNx?=
 =?utf-8?B?NmlYZkp1eks0WHB0WkxIRUt1L1cwbHltM2dncEtSQzF0NVMyTllveHR2WGtm?=
 =?utf-8?B?cHZFOGhISHFSMEtNOUJ3ZHZjU0ZUbUFQdVNnd2F4c1FJNGZ1anpGakpyK2NS?=
 =?utf-8?B?MGFhTXlEMzhBNGVlZDF5c1pmanpvNlQvbnFPMVJWajFsU1lCTWdpM0hvU1pi?=
 =?utf-8?B?VjR0L0VtWGlTZU8rL0FjT1doVUZXMm5uZmJGQXp6MzlSbzFEdUxPcVpxRmp4?=
 =?utf-8?B?Zmo0SVhIRDdUYUMySWV4M1BFT29iTlZjSG9KZUhOWjROWDJjdVRkcXBhYU5h?=
 =?utf-8?B?Y0c1OGZZc3E1bFBUWjJqeGs2Ym5hVWgxb0FYWHdBc09vU24zN2tDYm9CT0kz?=
 =?utf-8?B?Z2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6455cf8f-7ffc-48e0-e39f-08ddc52ed92b
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jul 2025 12:38:36.0735 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YA9FKsmlVzfetqNyGNfym7Wrwb9CW5X9P9kX51JcfdfV8AqMa0KgjiaKxLtKyeCKF8ikzbarEzg+dZkXAx0pv8IalpBbJK38i6I9Fa9STXI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7557
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

While debugging, I identified and addressed a few minor issues and
style inconsistencies that could be improved.

I ran some tests on these changes, and pushed them to trybot
first, no regressions were found.

Sebastian Brzezinka (3):
  drm/i915: Improve readability of eb_relocate_vma
  drm/i915: Add braces around the else block in clflush_write32()
  drm/i915: Replaced hardcoded value 4095 with PAGE_SIZE - 1

 .../gpu/drm/i915/gem/i915_gem_execbuffer.c    | 90 ++++++++++---------
 1 file changed, 47 insertions(+), 43 deletions(-)

-- 
2.34.1

