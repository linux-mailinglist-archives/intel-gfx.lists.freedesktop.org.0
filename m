Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CA34AC30C01
	for <lists+intel-gfx@lfdr.de>; Tue, 04 Nov 2025 12:33:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3D7210E273;
	Tue,  4 Nov 2025 11:33:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ak4sedlQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4232310E273
 for <intel-gfx@lists.freedesktop.org>; Tue,  4 Nov 2025 11:33:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762256027; x=1793792027;
 h=date:from:to:cc:subject:message-id:
 content-transfer-encoding:mime-version;
 bh=vyfIJ5xS0AJxdIGdZjHuut+i0Vy0zw1cgx7vfI8oKu0=;
 b=ak4sedlQ4/3l1x6LlVF77/PXh9KV2Loa8a5sa/n3JCPW8ESfpAaVxQ8f
 jwSriPYZPvkl7GpUezN6a1HSNpa09rCTtLLzYnsfUgrVu28g9uetOOT7W
 HOHHXMRrkiaCGuSRc6vOYnU8eiw8ZrFIPDtxxYpsgO8yPO2QvnwUsKK1w
 Px6V3e2y7xoPhHcEeEXgAhjjkXL+iXQatfloI/tP/D5k2UnLGiiayB4kD
 Pjza/sJ46xkHfIRNSPIASJnpOIgj2qmkSewa1dm6PVCXgbyNu/Bt0x0Si
 3JdJddQdVNDJg7eKO5OWlNWRBVgw1RhgrFgJ+2wqomit3eEYrkR2Z86R2 Q==;
X-CSE-ConnectionGUID: Nic2iYSWQWCyHXAyyyH13Q==
X-CSE-MsgGUID: CFXrlTkqS7mOod9GOWVskQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="63358977"
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="63358977"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 03:33:47 -0800
X-CSE-ConnectionGUID: eIUeF2ezRaCSC99Hly7EXw==
X-CSE-MsgGUID: QROFGjm5QGKlecPTouso+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,279,1754982000"; d="scan'208";a="191487176"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2025 03:33:47 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 03:33:46 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 4 Nov 2025 03:33:46 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.7) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 4 Nov 2025 03:33:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=hafv1unAcSsLrmUm1qpXY1vgxBs4rWvH7zl3hA84z8Kdt8l2lHzEiTLIHU3RNxtjCwyBsikR3XSJ93fK5OBCauc6e+f/TlRcKINJWcSHK4WApWTZhnrKw9EA7ByM8t3JQHUXhMEWH2vUtIUyNOD8UuBOX8iTpZJwa9PD6YHw3lJ40oErvJPu9/ccxTf58mgKdedaRpOTONJ28BMT8Yf/ncsvVqGr66GMIDGeKDhVBbLS59WCijU9+BxpSJgo16Nh6831rFwH2dS/ABCSBhRxc+UIauxsjGsLqZICEDqBWkEluMyQgjnwM79sBjv1/J/FMGiH9CC3MXAGPdmKYvIzuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qmY/GcSya7H66Qs35FpumvzRYMzzWRmgbfl/qXgT/Co=;
 b=th4MLsq/CzXowqLl6kVreVlbvtLsrBxQI5B3E3Wq2hdUOLzUnHUhkRScUilhGFhVnXkW6dlwN+KYF0bnOOdurlFRmmAD66HlFwB94HxPTHP7NJ8O/gT3vnQ9A5SJ0yQN3Lk6myjx2W1wZSc7Q1U8Xt5BW6NWSsDaXrvbbRN65KkWTcrcLIqVLbC7TpYy48/BDiYCvPzneWy2GMfaQyjLgkCNeVkg3dFfP2aS0pg0ZTU7HfXRQ5aMahgVvGAIKn4VMYUrsWNdICsJkJLO2c57v57KxqG7AnAmuGG3P0OXhpIIC6N/4RkjzWtJqgR3LzEpgivs6wj0x8bo771oMckt8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SN7PR11MB6654.namprd11.prod.outlook.com (2603:10b6:806:262::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9275.16; Tue, 4 Nov
 2025 11:33:43 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.9275.013; Tue, 4 Nov 2025
 11:33:43 +0000
Date: Tue, 4 Nov 2025 11:33:38 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <chris.p.wilson@intel.com>,
 <andi.shyti@linux.intel.com>, <krzysztof.karas@intel.com>,
 <krzysztof.niemiec@intel.com>, <sebastian.brzezinka@intel.com>
CC: <chris.p.wilson@intel.com>, <andi.shyti@linux.intel.com>,
 <krzysztof.karas@intel.com>, <krzysztof.niemiec@intel.com>, "Sebastian
 Brzezinka" <sebastian.brzezinka@intel.com>
Subject: [RFC PATCH] drm/i915: Use rcu_dereference() in hwsp_offset()
Message-ID: <20251104113318.3823840-1-sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DU2PR04CA0009.eurprd04.prod.outlook.com
 (2603:10a6:10:3b::14) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SN7PR11MB6654:EE_
X-MS-Office365-Filtering-Correlation-Id: 18daa368-bf22-445d-1688-08de1b96028d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MDVzVlorRm5kWU9FY0ppRTdKSWNqVFRFNWVMenIxQXdHY2tnSDJwRDdnNkVw?=
 =?utf-8?B?bTZmeER2QzFvYnB4WUcvRml0WkIvR1l6UDZ6UjdUMG12UmpsR09GT3lSaXBj?=
 =?utf-8?B?elY1ZFkwdkpUa2RtSktuV3Z4K3hubVhwSjl2UVc1MzcxVHFoL3E5ZytaRkdr?=
 =?utf-8?B?SzE3eDBmTlFmQlVEUk1hd2Z1M0dlRmIrYzhJb2NFRHlKT0FIVnYvazh0VDll?=
 =?utf-8?B?ZzhhYzRhaWE0UWNDM3FSVDZteUpCWTZvc3lHWWRtYjZnb2pKTUg3ME9NQkZx?=
 =?utf-8?B?NkdyMlNueTc3R1poaG9LSlY1RnkrcVF1dnp4MDlydENXYWQ1eUhIT1Y3NmZL?=
 =?utf-8?B?alI1azFMUFpUd2R4eXBHeE5pOTN4REsvb2wxTlBXdU9KcFFkL3NJMkNwTW9p?=
 =?utf-8?B?a2RsVmNOelppNnV3dmplcU10T3FUUlFFa1R5U0lSVU1Yc085TnFCbk05Q09Q?=
 =?utf-8?B?RHIrcXppWG1PM0hKNXd5eFVIZ2RTM3Q4bzg3eXFMdWduREFJUS9VL0o2RVAv?=
 =?utf-8?B?djZHVThPSlJtdHRNd3l3Q1EzbnR4SURSSWVGbzhSUFVGVStsZ3p1RHpxSE9t?=
 =?utf-8?B?U0lGS0hzRjJxcVo3MmJRakFxdENYa2FqZksyV1ludmVKM1hOOVJZZEdUcHk0?=
 =?utf-8?B?a0lYRWVUejZQOHF5ellzazEzdnlNWnBYclhqMFova0Q0VFBMUHd1cTM4dlFp?=
 =?utf-8?B?dXh1MnZCbUlDVitDOGVaVE9OZUMyNkZzUExSdkFhZFZ3cE12VzVlTEQxNFpj?=
 =?utf-8?B?U3hIQVkxc0ExVWhkMXdFK281aENGeUpEOUVGdmNnY0lhYmhsUXB0NjBnNVlw?=
 =?utf-8?B?SEhaM3pWTFlqUjhjTmtXb1VKK2F4OHYvQ1lodUN3T3FERnhVcmRwMDdrSC9P?=
 =?utf-8?B?dSt0UkFtbFVDMjREdGovdURGTmlibHdCVHdadmZlMHE2VXFjaVM1bXgzSnln?=
 =?utf-8?B?d0pQQmNTTHhGeDY2Z3RWak1lZG95b1ZHOEtjY0hCS2poOUMxOU1wOFh3ZGhi?=
 =?utf-8?B?Q1UrYnBaRVBoQWIvS0F1SjU5cXFHdVZzRXM4WWI3SGxObTd1V0QyWWEycnJj?=
 =?utf-8?B?enFuQkdxM2doSS9vMmJTTjltNlN6cXFLd09rYVFtc3k4WTZHY29nektBb2NP?=
 =?utf-8?B?d1YwRDhVTERzVisxK1YvQTFjVlpnSS9hcUlvUzI0QnBXaDBmSFg3ZHlvWWo1?=
 =?utf-8?B?akwwWnpaVkp3UXllaFBQeDRKTFdvSWx4ZzVZK01OcnNFa1ZGUXdJaWNGVmx5?=
 =?utf-8?B?cDlqZ2pva3BBaE9idmtaSkJmSnYxeHR4MjhVQlcvbXhaSnN4RGprNmxoeU4r?=
 =?utf-8?B?WFRhSkJaOEdESXdad1pDQ0RSUTR5b3ZJQXhYU041RFF6ajFsWThJMzh3RWJi?=
 =?utf-8?B?MDk4SmtMWnNTaFlYTlpoY0JkcndUblNGOERCdWhZZVA2ZmcxSDFxR2Y0ZWg4?=
 =?utf-8?B?Q3JuWTZLVEpZMGZuOGJJVk9rOVJvMzR2elM0TU9lWUkyM2I3UTVsSE1NV3pD?=
 =?utf-8?B?TnQyMit5Wjd2Vm1SKzE0bC8zVmpHWXE5RkJVU0p5bzdXaUlEd2dDZURWUVlG?=
 =?utf-8?B?ekh6WVRRWVBWdkhaZGNoT05TUVNVL2FCNWJiNmJzTVNIMU1HVjl3d2VaMnBK?=
 =?utf-8?B?aGNXNFpxVkU5TFVtVkJodUtkZ0tUUVRTY1pHSGl4YVBRSFpmVUNFUy9tUDMx?=
 =?utf-8?B?d3JRazNwNndnSHBBY01EeTlrelVJVDBySXVZMnc2T1YydUFqbkxpMHkwUFh5?=
 =?utf-8?B?eXhrS1JnUUN3OXZjakwvUEFIYlhMYWRYV2RhaGpSdkZSVG5INWRjWEpiNWVE?=
 =?utf-8?B?eXlicUhJaS9HUER5SUswUnA3Kzd6NUJoejdqOHJzRnlndmd3VW9PNGkzQ0hy?=
 =?utf-8?B?cGRVa21rSFJCdXZiYnZtaG9ZZE8xVzhLRjZKbURqdlFmeFE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VzViL0RacVdtRm1xVk9nL3haVjJkejYvVnVDdkZYM0tydVpFRldTcDBaTGk2?=
 =?utf-8?B?dmRGNjN1NkxBZ2M3TTBpSWlmZ25seWs3M3plcm1Zd1VqcndJTlBOQ1EzMFd0?=
 =?utf-8?B?TEtrZ09jYkJTVENXMUV5U3NUVWJzSGNvcDVwL1VsSjl6aWRHUTAxcHJ0UE1s?=
 =?utf-8?B?YjVWb2xJNGJxaHQyeTZEK3I5Rnk4YWc4OWxHZ3hySDVmSFFJVWJoQmVnQTBN?=
 =?utf-8?B?SG12OU1NRW9UeU80b2IxUTRCczVKYnh5aVdxeUIzZGRnZ294b3pXaEV1dFUx?=
 =?utf-8?B?TGhTdE12OUJneXF1dVRacENQQWYyVFM2REI3T0xOMnZ1VXdaRk5oQkZVNGto?=
 =?utf-8?B?bEFvbW1kUVpRalNEeWh1aDF0d1dnZk5VbWtUZEFWSlNudkgyVzkxTEVxOEhN?=
 =?utf-8?B?YkRvVmM4TUxaTER4MllJclNnWWp0WjdWbW9zN3JsVnNZUVAwZzczRFA1MDI0?=
 =?utf-8?B?UmNXKzE5eEQ1YmtxdGl3T3F5VXFtQW1la0xRNStQaUpoZDN2SEZ6VlF4bTF6?=
 =?utf-8?B?bXltdW11UjNkN0Z6WURRWlRMMGFJNzJvdVlVQjVRWjNtbkx1U08vWC84bXNn?=
 =?utf-8?B?RWp0UkY4MVZPM2creTJNK1JaRjZ3QUlKaDdhNzlsT3FYM244aDBuOU5qNU1G?=
 =?utf-8?B?SU9uS0RjdkxpOFN4NnBDUWs0Smp4cFp6WVhidk5ZWnBSQUZuNTJ5YTFyT3dQ?=
 =?utf-8?B?eEExckM2Z2ZnYW4xeXhTSU1XQlBISmRGSTdncWorOEdGVE1HUTE1ZUNISVJP?=
 =?utf-8?B?QVdqZXpIVWI5Vlh0MmVmYXUzdmE2SnNFLy91KzBLMlFLd0Q2M0d1VDFjMGRZ?=
 =?utf-8?B?OUlLT2hSVkV0ZHJGQlJLTm5YVUFPdTJQYkxkMFVxOHFNaDZiMXZraGpZSlJs?=
 =?utf-8?B?a1NvVm9pY1pWUHl1VTcxQmVuYm1DNnNBN3pXY1ZSNWxpZXBNaWJwcmFtQ0h1?=
 =?utf-8?B?R1BCdkJhQ0Ywc1QwZjBtOUtQOGZBVlBQd2QyNUtCZDNwZmhnSWc1Z3BDUTc3?=
 =?utf-8?B?bGpUVUxwa2FXc3M1SWpaQlZWMWpHR3dNU1BDV1lwNm9EZ3FhTFdzQUVRYjFL?=
 =?utf-8?B?enRoQjIyd1Y4NHlQc25kWTlKQkNLbGR0dmdKVU1CWHU4dHdDemRzVFdGblVq?=
 =?utf-8?B?bVpIc25Vd2pQVHMySDcrNlZ3VjlhV1o1c1g3Sm9haFR1OUdmdkx3MHJIWWNM?=
 =?utf-8?B?ajdISC9xN0h4MExhcGFnSE9wMXdYOUZoTmxWWFlmVkpEQzBuN05zUHBNVFp0?=
 =?utf-8?B?aEdDK0RhWW5tbXhSem1McGRsZERVbUprM3QzWW9DYlU2aS9tUDZ2L2hwdUw2?=
 =?utf-8?B?M2l4Rm9pbmlCL3EzV3ZGamdJQjhmRHdLT2VldWljRXlvaElLWDlEUG1jYVBt?=
 =?utf-8?B?dE8xaHJNcTAraTkwNWRIQVVGTE5VaGVNWGNjRDZFN1FRK2x0a3RiWE9jc0hG?=
 =?utf-8?B?ejhuZVc4VjU3U25pcXo3OEsrUnM0ZmVGRnM5aWlwZzJZblRHRVZHSm9qU0lZ?=
 =?utf-8?B?bjhsOVRZYjZQVHhmVmFqN0o4WmlzS1g3MjZsR1dxTXRCcGxvNFVnT1Y1Ylhv?=
 =?utf-8?B?T295VVgvUzNmR2tRWVkzOGFDeUYyaGthNndycCtMeGNQRkF5ekwwZVBlWkRt?=
 =?utf-8?B?ZzBubEtvYU03NndVOS81S3FxZ0tPVE1tMHY1akRsa29WTVhpbDdxTEpRdm5K?=
 =?utf-8?B?T0VldzVaM0RVc0FPN2tqcmp2cTAzMGloTDRmcWpjRkxZa1QraDRvcCtpampa?=
 =?utf-8?B?V05oYW1JWE1oZzIrY2NHSVFVdEtMTWJCS0lDYndqSC9BV2JkZGFMdDAzUGFG?=
 =?utf-8?B?dVExR2Vab0NGWXpPOXRmSEowVlFLRnN3Q3QxQ0JLSzN4b29BRlZuYmZOZ20z?=
 =?utf-8?B?NU1VcktweE16LzlMaTFLMVJBcURDTk1hdzI4bmdLcHdBZkMwY0I0L3VuT000?=
 =?utf-8?B?V0hnL253bVVwWlZmY2E5QkV5Nm82RjYrazdvandSd2NsMUM2NndRY1JsUXlq?=
 =?utf-8?B?ZWhzK21MOERoVjB3emZwUy8rME5QWkRvS2NoRmxZVjdUVmtpOC9RNmVXbFNG?=
 =?utf-8?B?SGVqZTRNaHAxVXIrZjNYK3NqRW5WMk9qZFhUUXdrMk9Xenk4b2F3Um9TUFF2?=
 =?utf-8?B?Si9VQmR0bmFmWkplZFNBc09rU0VubTBMY3ppdjh5bWhheEZ2TlpIdXl6RGVD?=
 =?utf-8?B?blE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 18daa368-bf22-445d-1688-08de1b96028d
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Nov 2025 11:33:43.6765 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 741/2ZxXlhUKL78JHiTLdGvcIiOxezWea/mOg6e+3wSGryYt5O178v76kKDpg5V6c+Z/pfawQoAo5I9oGhPLdj5oLS52ov0UivgpeTtLplA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB6654
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

Replace rcu_dereference_protected() with rcu_dereference() in
hwsp_offset() since the function is called within an RCU read-side
critical section. Using rcu_dereference() avoids unnecessary
protection checks and aligns with correct RCU usage patterns.

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
I noticed that the current implementation of hwsp_offset() uses rcu_dereference_protected()
when accessing rq->timeline. This seems to be a slight misuse of the API.
rcu_dereference_protected() is intended for updater-side code, where we are not holding
rcu_read_lock() but instead rely on another lock that guarantees safety. The condition argument
in this function acts more like an assertion that the caller holds the required lock.
In our case, hwsp_offset() is called inside an RCU read-side critical section, which means
the correct primitive is rcu_dereference(). The original intent of the condition argument
seems to have been to guard against use-after-free scenarios for timeline(?). However,
rcu_dereference_protected() does not enforce that, it simply returns the pointer regardless
of i915_request_signaled(), and in rare cases this pattern has led to issues such as:
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15181
'''
...
<4> [281.246503] drivers/gpu/drm/i915/gt/gen8_engine_cs.c:427 suspicious rcu_dereference_protected() usage!
<4> [281.246506]
other info that might help us debug this:
<4> [281.246507]
rcu_scheduler_active = 2, debug_locks = 1
<4> [281.246509] 5 locks held by gem_exec_whispe/2308:
<4> [281.246511]  #0: ffffc90002ae77c8 (reservation_ww_class_acquire){+.+.}-{0:0}, at: i915_gem_do_execbuffer+0xd2c/0x3710 [i915]
<4> [281.246852]  #1: ffffc90002ae77f0 (reservation_ww_class_mutex){+.+.}-{3:3}, at: i915_gem_do_execbuffer+0xd2c/0x3710 [i915]
<4> [281.247073]  #2: ffff8881e8a4a878 (&timeline->mutex){+.+.}-{3:3}, at: i915_request_create+0x61/0x200 [i915]
<4> [281.247403]  #3: ffffffff83595560 (rcu_read_lock){....}-{1:2}, at: execlists_submission_tasklet+0x44/0x27b0 [i915]
<4> [281.247592]  #4: ffff88812f0c2020 (&sched_engine->lock){-.-.}-{2:2}, at: execlists_submission_tasklet+0x20d/0x27b0 [i915]
<4> [281.247787]
stack backtrace:
<4> [281.247789] CPU: 9 UID: 0 PID: 2308 Comm: gem_exec_whispe Tainted: G     U              6.17.0-CI_DRM_17306-gb3f121acbde4+ #1 PREEMPT(voluntary)
<4> [281.247792] Tainted: [U]=USER
<4> [281.247792] Hardware name: Intel Corporation Rocket Lake Client Platform/RocketLake S UDIMM 6L RVP, BIOS RKLSFWI1.R00.6062.A00.2502050210 02/05/2025
<4> [281.247793] Call Trace:
<4> [281.247794]  <IRQ>
<4> [281.247796]  dump_stack_lvl+0x91/0xf0
<4> [281.247802]  dump_stack+0x10/0x20
<4> [281.247804]  lockdep_rcu_suspicious+0x151/0x1e0
<4> [281.247811]  ? __i915_request_submit+0xb0/0x430 [i915]
<4> [281.248010]  hwsp_offset+0x90/0xa0 [i915]
<4> [281.248199]  gen12_emit_fini_breadcrumb_rcs+0xdf/0x480 [i915]
<4> [281.248388]  ? __i915_request_submit+0xb0/0x430 [i915]
<4> [281.248584]  __i915_request_submit+0x15b/0x430 [i915]
<4> [281.248781]  execlists_submission_tasklet+0xdfa/0x27b0 [i915]
<4> [281.248974]  ? mark_held_locks+0x46/0x90
<4> [281.248982]  tasklet_action_common+0x166/0x410
<4> [281.248988]  tasklet_hi_action+0x29/0x40
<4> [281.248990]  handle_softirqs+0xd7/0x4d0
<4> [281.248994]  ? __i915_request_queue+0x3f/0x80 [i915]
<4> [281.249194]  __do_softirq+0x10/0x18
<4> [281.249197]  do_softirq.part.0+0x47/0xd0
...
'''

This issue reproduces very rarely, and I haven’t been able to reproduce it myself, so
I’m not entirely sure why this scenario occurs why we attempt to emit a breadcrumb even
when the request’s fence is already signaled. However, the correct approach seems to be:
 - Drop the use of rcu_dereference_protected() in this context, since it’s not providing
   real safety here.
 - Avoid emitting a breadcrumb at all when the request is already signaled, as
   doing so appears unnecessary.

My concern is that breadcrumbs seem to be emitted in __i915_request_submit, which appears
to be well-guarded against processing retried requests. This leaves me puzzled about what’s
actually happening here.
---
 drivers/gpu/drm/i915/gt/gen8_engine_cs.c | 3 +--
 drivers/gpu/drm/i915/i915_request.c      | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
index e9f65f27b53f..b799d423d306 100644
--- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
+++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
@@ -424,8 +424,7 @@ static u32 hwsp_offset(const struct i915_request *rq)
 	const struct intel_timeline *tl;
 
 	/* Before the request is executed, the timeline is fixed */
-	tl = rcu_dereference_protected(rq->timeline,
-				       !i915_request_signaled(rq));
+	tl = rcu_dereference(rq->timeline);
 
 	/* See the comment in i915_request_active_seqno(). */
 	return page_mask_bits(tl->hwsp_offset) + offset_in_page(rq->hwsp_seqno);
diff --git a/drivers/gpu/drm/i915/i915_request.c b/drivers/gpu/drm/i915/i915_request.c
index b9a2b2194c8f..25a9e574149e 100644
--- a/drivers/gpu/drm/i915/i915_request.c
+++ b/drivers/gpu/drm/i915/i915_request.c
@@ -657,7 +657,7 @@ bool __i915_request_submit(struct i915_request *request)
 	if (request->sched.semaphores &&
 	    i915_sw_fence_signaled(&request->semaphore))
 		engine->saturated |= request->sched.semaphores;
-
+	/*It seems that breadcrumbs are being emitted here.*/
 	engine->emit_fini_breadcrumb(request,
 				     request->ring->vaddr + request->postfix);
 
-- 
2.34.1

