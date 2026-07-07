Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f/QWCgH2TGqBsgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:50:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 73E3771B86C
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Jul 2026 14:50:08 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=eeSh4Xom;
	dmarc=pass (policy=none) header.from=intel.com;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E40910E4B1;
	Tue,  7 Jul 2026 12:50:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 470A410E4B0;
 Tue,  7 Jul 2026 12:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783428605; x=1814964605;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=1LO2e1PLuBM17y+zV6xHbsq3NyteoQYkAR/TRVKyvG0=;
 b=eeSh4XomUdnLK50EayntwTFSGL7xSdbwDD//GPDseogSdr++QmNz5l/5
 wufCvM1AoBv9hQYJSzwOG8iqSMWPB/ufsE7uN8K9CB0oM+BhA92vb+yqM
 lOkpDHPHnhTh5Zb5W/fOk142ZrUY3lDHTYCQZgV8inxkCf0bMI0+xXnDR
 /b/blMya1pKmDPIlNcu9B9quY5RMAlX/fMQIh/fCC+4U84kY/TBXrpQSM
 RVwW4JkDvnOyP2s3PZTTOZOre+dtDtu4Kf2WDDl5jjMcKDMEWtJiob+JS
 OJafmTJ+2onLpdt84/u4fsxaUXl8ikX5X8M20aPzvOhjR4T2RMe4UvioX Q==;
X-CSE-ConnectionGUID: wnMehmGkScyr14DzsT4Uww==
X-CSE-MsgGUID: dCqBInmaStClnFpqTJj/NQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11839"; a="94718658"
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="94718658"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 05:50:04 -0700
X-CSE-ConnectionGUID: svpP1LClRliSRXlotuBZRg==
X-CSE-MsgGUID: SxOfCVusRbKWyie/0dsZOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,153,1779174000"; d="scan'208";a="292159364"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2026 05:50:04 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 05:50:04 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Tue, 7 Jul 2026 05:50:04 -0700
Received: from SN4PR2101CU001.outbound.protection.outlook.com (40.93.195.13)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Tue, 7 Jul 2026 05:50:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rxPKYLRVF+2kQSjOz+FRjdxMev+9UQ4HAveQn8LUP4hvujU5Y/DN4W6KNngbvxCmbfdLhtJR5Wp8qZbRoDBf1iw8b2StamctBD4r1tM0WP/n2AVdXmjteW3X4j8lQYycS27K0KQX2v8083Iw6jL78kHryb4eEs5fidAM1Hxa2CQOTdcyc12Vn4TAsSZAgu8EuB8LGSxxqB0y+ePrtdRfaEbE5Rm7/o1pTdy4NKeGTSktlf6cpTUbxxeh6KLOZVNVUKZkmNBDTKqxCx07ULtzIa8UV7qOFThqJzWScBvJhdCn6egiHryG4wETUm92aY70QB3zbC5cSk2yM7ndPqGzlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ioVKugNM5o5SN/UZog66Ro2KW2Hyzi9/bNNIVl7jTV8=;
 b=enITI2Z6BOolr+KwAAeTdhuaHYZDDMCNBGm2l65rgZFm5ILeCfXkKwfk9vTR1YOjFsQBnPpWiNFnj3xFXLt8paMLC5TIps5aI7QWxmyPtUGbfpsLl8mymNTMNCuOoL0OzpmCE3nCGK+ovFPgXR/L5rw6giKHBXwwHw7F9graWtn/Dafg8sNm+3vLOIcyJuKI3cQnFUelLrBFbRxLvJB4p96G6vcXbQ0sLWu1EYppJb2slBKR9klUnqISQ2fRlyl5h4QvW7gCV9Zis7NW7FEV1VelI/VYUophZeb1SrlCzZsyb2ve9I5Ck5bnBAvzc6mZIaupzQ0TPLGv5Bswy7NU7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9273.namprd11.prod.outlook.com (2603:10b6:208:573::17)
 by SA2PR11MB5097.namprd11.prod.outlook.com (2603:10b6:806:11a::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.181.13; Tue, 7 Jul
 2026 12:50:02 +0000
Received: from IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa]) by IA3PR11MB9273.namprd11.prod.outlook.com
 ([fe80::31a4:58c:e3b5:43fa%4]) with mapi id 15.21.0181.008; Tue, 7 Jul 2026
 12:50:02 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH v3 26/34] drm/i915/kunit: Enable KUnit tests
Date: Tue, 7 Jul 2026 15:48:46 +0300
Message-ID: <20260707124849.135319-1-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260701153204.4124150-27-imre.deak@intel.com>
References: <20260701153204.4124150-27-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: GVX0EPF0005F6F2.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:158:400::255) To IA3PR11MB9273.namprd11.prod.outlook.com
 (2603:10b6:208:573::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA3PR11MB9273:EE_|SA2PR11MB5097:EE_
X-MS-Office365-Filtering-Correlation-Id: fc4be77b-65a2-44c9-eb72-08dedc2642d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|23010399003|1800799024|376014|11063799006|56012099006|6133799003|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: baX/OJLh2+Z2l5A1tmIT61ofgLCrpJdx7iTMhj/8jKkmDbBzJ+ZRaU8qaceu7UCuNkQTM2A9axu0gdMBrBRR/O0c42v76py8ZE+uwp/vo1I5UYnorDpHXNaiHINuEFvKPUYrAykpMDtWFVPyDY8GDj12IPtCIyQEBt7maIrwzeazBU+uxBfDs+emtvLSzDFNBeitnmEKxRVNwbmfeTikfbVT3zSatJH//qsESNRWiYNrDQCwM5kQIEaSR9Hqvnhl5orNBOPUNDCOSn2x7EmRLQIetizlYyfGA2SQN7h4klPT1KuLrEkdtgp3sRkpSvxbaRf3JPvBCe9WYxgrPm+hua2RpVmCpKVWKVGcuJSAkCGdw2j53iLnd5ANBTYAJCZKHBmfCRI9MZSC7afNBiCqc9Em501oaleqd7Pa2OscpuSrjEmTkCpTdjglCjI/C+Cz1BPmqKCVvuqtkVbZbPZGiGZITzXmD16Wdf/luVD4/M4zklndDEUmIQwqNpiFApNucIuMJ/t0Tz8F/VFm/naCBULctyEsKQP8MkQUUMVxCfMyYCGM4sH4AqSEdmXlTh3W6Yhg/qHUwSapDOEEEfJxnt41Dq4vWq+IuNSrMROAZ/Rd6bbf7PQxOSV16nYeCs66sF0p8SxRZ6v+Fp4g3YpOSqFsk0H5go2G4iATaOcJOaQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9273.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(23010399003)(1800799024)(376014)(11063799006)(56012099006)(6133799003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YzM2bUE4YVE2bVdTVDRmc0JGOWh1NU5XSmxzWlVZZ0phVExRT0RMWXNMb1ZJ?=
 =?utf-8?B?alo1Rm9tT0Y3akszTkFQTEROeUdlbW1PbmtkM3lEdjBlblMvUzR3bDdUaEtp?=
 =?utf-8?B?UEZxVDM1MWZvOVRXSHhlRC81TVQxS3B6UEVKbE9mdXV4dmdXVEx1dHpsZHNz?=
 =?utf-8?B?TWZ6V2xydDZvVUZveHpVV1J4R0o3bDNTRStjYmJyRjdmTkdhOHJBRVBFc1B3?=
 =?utf-8?B?bU9uT3NndTRkUWx3UHU5TDhNUklubDhzR3NlSGc5NWk3K3d1OFRWNUsrRmJ2?=
 =?utf-8?B?dWU0RWtQUzJsQnFuQnZ6NDZWYitJeFc3YldrRHFpRDhUaTRwam1nRW9hUzMr?=
 =?utf-8?B?MVQ1aStjR0tlc2hGK2RISEJnYTFIZjRMclBTVHNtdW9ENmRCTkJ3ZVVkWjls?=
 =?utf-8?B?Tkc4QTZ4V01VNE1yN2hhOUJKMFpsR3RBSVJHRWFBV0doQWZrVGQ5Yk1lblVT?=
 =?utf-8?B?TDZoUW1LUUhJMFZIN2NLRDJlU2RURlAxN3FmWHYvek5jQjB2WVlSaUFFeEVy?=
 =?utf-8?B?ZWtJTnQxZ0h3bDIwb1dFWWFGbnRPZ3Q3Q2VpbEV1ZWZmLzA4eDUzdytqVE44?=
 =?utf-8?B?Qy82ZTJYbFFDWE5keUxSSktSbmk0amdIaGZVUFpyVi9waHpvRVA3cEp4Nm9L?=
 =?utf-8?B?TXEzeFROaFdzcEx0STVHSzdreVRDUWR6YjREVGRveVNTNW9aMFFJQjVuRmZn?=
 =?utf-8?B?eDh3VjUzYUg5Z0gzcDA5ZnZDM0dlTW5VSTc5MUZqbFQvQlBCQnI2VmZhL1JZ?=
 =?utf-8?B?MkNxWUFKQUdsbFJnaGJVSlk4SW9XMjR4YzJUampTUzRFUHlXaEE3b21DTFlr?=
 =?utf-8?B?U0FtVnROTWF4SUFoOTNtclc4bTliK2JnVmlveFBFNWd6TVhERHBaSS9BdW8x?=
 =?utf-8?B?SzcwQjN1YTI2Q3NNYmVTcHdkcU93N2E2bmdpd2hGNFNPUVJieDBIME9XQWFZ?=
 =?utf-8?B?SEhqcWthZmhBMFRpOHJDMDhNY0hzOEN1YVV1RStiUmQrSDB6NXlTYUdBc1Js?=
 =?utf-8?B?V3VVeXB4RkxEYSsrMkxZTXg1V1haQkZLY1pua1NWN1doWlZENXF3VFZ0VERK?=
 =?utf-8?B?N05QK0VrdE1mdis4RVRlVytoVkpnYmVNMXd4VTJORWxBSGF0SmlyYW5CZEtH?=
 =?utf-8?B?b2NINkd4eGpwbXl4Ukk3MGtIVUhRcmtxQmFKOHlaakJqQVd3bGZnMUxYQ21J?=
 =?utf-8?B?U280SG02UVhQTVA3eEpNK3RDaUZnOEtMb1M4eTVWNG52U1lVdFgyT0dmZWJ3?=
 =?utf-8?B?RXA0Zzd6TndKRWhUeFpydkdObnVHcjlKYzVqZllrVHQ2TWJZM3lrOW12SVdz?=
 =?utf-8?B?WTFZc2RzdzBMYmlYN09nY1Rtc2Y1TjFZTWdwUThKd09Cb0tqLzdmdlNFRnFH?=
 =?utf-8?B?d2lHOFpOWmZRWmQyWlpJZlRydkg4dlhUK3pPZFc4OVkxejlOczZ4aVg1T2Q2?=
 =?utf-8?B?RG5aeVhpYmRUVXdyUk92VzZkUUp4bXd5NGFDdURHOEs4TExDUjRiQ28rM3JY?=
 =?utf-8?B?VXhGNTk3WkFxb0pNT1Y4R0xFdCtTOWR0Vk42ekU3eHZHbnlCOTZUdTRZckJV?=
 =?utf-8?B?NFRKUlpxTVdQV1Q3dDVRR2lWMUpORFE1NHoxdmk3TGkwZk1SMjA2RWNzUlJ0?=
 =?utf-8?B?N2Zwdnc0c1dxOWRQRHJNRXltcTZxK0ZTRHVXTERoMGlGb1ZQTUF5NzZMMDYz?=
 =?utf-8?B?WklpNGtLL1dxTlpRdGlROUV3dUJHZkpyMytuTmVGSVZ4cTh2aHVaTjNCNVFM?=
 =?utf-8?B?TERRUE9xWm01T2R6NGE1VjZMdXdJcUFaVkNzcThERFA4VVQyMXMySHQ1SGx5?=
 =?utf-8?B?WTgzUjIyclcrNlFFV1dQK25ITEpEamNvQW1JbVB1U2VhUGtrUU01cHAvNDdU?=
 =?utf-8?B?NmZQSU9kMStWOVpqV0g4dExWZTJidENIM1MwaVlHc2MvMUdwT3F5YldxSGRu?=
 =?utf-8?B?bVpNcHhvdFFtajAxOHFPTnh0eEhmRGtPbHNaVm9mVnJaNXF0MVdUYWI3UVRX?=
 =?utf-8?B?VTgvdWM0RUJJam9oSGx6UFY2R3B5OFE5K2Myb1hFMWU3YVRjUHRlNnFiWjlu?=
 =?utf-8?B?U1o3K294a0xvSmJYSEZyWEF1V3B6c2duV2xYWFdGa09obU9zMzU4U2NqVU5S?=
 =?utf-8?B?cm1VYjBiTTV0cFFUV3JVZTFpbXhFOHVicHNONG9KYjdnVU4vRXVBOW9NNGxp?=
 =?utf-8?B?RGhIajRsaUlML0xaMW54d1BJS3N1Q2V6WWpPaTljaWJ6aytvU1haRCt2bnp3?=
 =?utf-8?B?VktwQmFsZTVRTHh3Tm9PSUpkNWcwUlpRK21EU1JCV1JGaXBOMGl6VU1tR0No?=
 =?utf-8?B?MWdFRkt0MHBTQ0QxZE5YV2Jsd3JxamhPajJnQTFTRW9aTGwrQmZXZz09?=
X-Exchange-RoutingPolicyChecked: pxSpeUgVVZ/pQ9m5x0rBgY+gtc9JEkGAzGREIT343u4E7UPErEzrtvA10Q4lwBa4RAO33XY433O7vctqlDD6F9OFKuzB+6R9JZOeD1uR+auW55/TmY7i2KDtBswASOiUyPLhIb2BDLGikRP5AFsuT7PqGkKP7og7ivPhC8R7noHcvASSmskuz1QYE07mkLtxCBoe5kppZDUKT43ico21lMFAgOeOf8bpaTEX891zW/H8/0bjxgo06qD4bexAzEerTA/xM1d+cD7fmoUBUTLlkJqcRkXdKiOAZhjEhxIFHWt9/PA9UTayum3jyWHNgFbDJ4KRjR3cANbtNr0qR4xpZg==
X-MS-Exchange-CrossTenant-Network-Message-Id: fc4be77b-65a2-44c9-eb72-08dedc2642d9
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9273.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2026 12:50:02.3576 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d4Pxycm7HMD/iahJNxMRbdJpuGBdSisuLqJVRlWAYfES7C5yvRoc4nGrogA9KFD8lBzR8aBxTpUphFtqPKCZAQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5097
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
X-Spamd-Result: default: False [0.69 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[imre.deak@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 73E3771B86C

Add KUnit configuration for i915 and a local .kunitconfig to run the
tests.

v2: Unchanged.
v3: Remove kconfig options for kernel debug.

Reviewed-by: Michał Grzelak <michal.grzelak@intel.com> # v2
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/.kunitconfig  |  9 +++++++++
 drivers/gpu/drm/i915/Kconfig.debug | 12 ++++++++++++
 2 files changed, 21 insertions(+)
 create mode 100644 drivers/gpu/drm/i915/.kunitconfig

diff --git a/drivers/gpu/drm/i915/.kunitconfig b/drivers/gpu/drm/i915/.kunitconfig
new file mode 100644
index 0000000000000..1b47fe62b2854
--- /dev/null
+++ b/drivers/gpu/drm/i915/.kunitconfig
@@ -0,0 +1,9 @@
+CONFIG_EXPERT=y
+CONFIG_MODULES=y
+CONFIG_KUNIT=y
+CONFIG_PCI=y
+CONFIG_DEBUG_FS=y
+CONFIG_MAGIC_SYSRQ=y
+CONFIG_DRM=y
+CONFIG_DRM_I915=y
+CONFIG_DRM_I915_KUNIT_TEST=y
diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
index 52a3a59b4ba2c..dc43dcfbadb6e 100644
--- a/drivers/gpu/drm/i915/Kconfig.debug
+++ b/drivers/gpu/drm/i915/Kconfig.debug
@@ -220,6 +220,18 @@ config DRM_I915_SELFTEST_BROKEN
 
 	  If in doubt, say "N".
 
+config DRM_I915_KUNIT_TEST
+	tristate "KUnit tests for the drm i915 driver" if !KUNIT_ALL_TESTS
+	depends on DRM_I915 && KUNIT && DEBUG_FS
+	default KUNIT_ALL_TESTS
+	help
+	  Choose this option to allow the driver to perform selftests under
+	  the kunit framework
+
+	  Recommended for driver developers only.
+
+	  If in doubt, say "N".
+
 config DRM_I915_LOW_LEVEL_TRACEPOINTS
 	bool "Enable low level request tracing events"
 	depends on DRM_I915
-- 
2.49.1

