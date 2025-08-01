Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8699B17F9F
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Aug 2025 11:49:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32B1210E828;
	Fri,  1 Aug 2025 09:49:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V0VG28Jq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 46F5B10E828
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Aug 2025 09:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754041756; x=1785577756;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=l5dBI5pRnLCTSPX9uKp6V3I0Mgew1oLZ3ah+AFe1Pgw=;
 b=V0VG28JqEujp0o8tuH1GFhBYqSFWEL554K8pg3ybipRSL/xyCJGxd6Y0
 U8GtLt80jDK3f2zZTpt/orgT/Ne6k+T32KBmr9r++tsSPIIzQy65+vPy2
 eagU9REEDtBvAMiujaWB+sks5jYXe9gUFUkqaoAr4pDZQkIWKShXKbLjI
 103apcCSYe5/lWy6pgV42pHkihrvX91mrO+tg7l43Y/AbK9FbYA5XMgvu
 eMbUB62xPFV4GGh1DPdYgucaAA+sQlVRJT8TP3670mevtk0e3/jL6fscP
 pgnyD4DfZKS2zgygbP6l+5mQypYlm3oeLdShL1g3qiP428LDOVyPmDyCB Q==;
X-CSE-ConnectionGUID: ZUf81PrHT0euxdhaBLzLrA==
X-CSE-MsgGUID: Nx9/Yr1PT5CHmxfhIqTrDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="60215418"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="60215418"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 02:49:16 -0700
X-CSE-ConnectionGUID: 49wUgy+mSkeZHCJgi63p/A==
X-CSE-MsgGUID: RjDU2KzjTHmPJEz5uBD0EQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="167736679"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 02:49:16 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 02:49:15 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 1 Aug 2025 02:49:15 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (40.107.95.83) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 02:49:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XTQKyOdqgb6pw5pWLHY/y/pjxEpT3IXqjhELgEXN+JeIdFz1nVtb1PojY27kBZa63FU8vG/p/HC1mQlqWQOmJe8qIAldmPaMO5d2g75kUOMw64IfEowjM1D2wkJIHl11zn0xWfWqyNUkRdi0LJisGwIzQOa2KAMr0LCEDSlnoxlr9eEe6UsKU30JbS87NH3KFR048K1ES2SzO6OFyrB+Nsfydok6IPhNCBdZKUeLrX7LZPX8ko1FiMj5slFCwq7mkvT+Uv/ncCUxB47/tYVHCPgTQcwndxrF4dJ0rUoWz9swYpD1QyT0/Ir3ZBlrNdE3iqSlb1A3cMhFUMWo0fUBOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0b/Wx67IR/WK+XYyEL8pQEF5ziw3G3dl3Ay7LOzfzsY=;
 b=m/hVq60x+lEBdDxr6RtfYzeGZDkY9pXBl92n8djKFyhS8wiMDlOaBch+/shtIulvaNvFnfxbWVMQOlv67swab78IElUklhUazfzrf9vDL/9JyMZTGNY4M/7K07qIhFEZ16dxr1FGhzpMR5Rwywx80IR4EO/O/83mpkn/ahWUmjMVDJaHkcfhJYZtvPAiSNL0djHW0gFS7/U8wfvcZtYYpOaJZAzJw8j+vCk/k0yUUdy4srS02HdY0donNpXz5dByY5yaWiDZ4u97s23nc4mKDASPCnQ2drwjDkl974sQQR0QxIDkOe8X0/NONMaWw24qepVywxqoDjbH6IHhsKrbQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by MW5PR11MB5859.namprd11.prod.outlook.com (2603:10b6:303:19e::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.11; Fri, 1 Aug
 2025 09:49:13 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%5]) with mapi id 15.20.8989.010; Fri, 1 Aug 2025
 09:49:13 +0000
Date: Fri, 1 Aug 2025 09:49:08 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <krzysztof.karas@intel.com>,
 <andi.shyti@linux.intel.com>, <ville.syrjala@linux.intel.com>,
 <sebastian.brzezinka@intel.com>
CC: <krzysztof.karas@intel.com>, <andi.shyti@linux.intel.com>,
 <ville.syrjala@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: [PATCH 3/3] drm/i915/gt: Relocate Gen6 context-specific workaround
Message-ID: <0162dba90c2c8720fb087ca4af2585908f1c69ee.1754041191.git.sebastian.brzezinka@intel.com>
X-Mailer: git-send-email 2.34.1
References: <cover.1754041191.git.sebastian.brzezinka@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1754041191.git.sebastian.brzezinka@intel.com>
X-ClientProxiedBy: DB8P191CA0009.EURP191.PROD.OUTLOOK.COM
 (2603:10a6:10:130::19) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|MW5PR11MB5859:EE_
X-MS-Office365-Filtering-Correlation-Id: 3750ce27-2592-4f29-9e72-08ddd0e0ac26
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Ui9QNVZwaE00bHJBMWhOSHIyRUFRRVh2TGdDU3JybXlLaGx6NjB4Nis2WUxo?=
 =?utf-8?B?ZEFWNmJNQ21hSk1EN1BjYnVUWmpUZ1hKVlhoODhITE0wL1RqVit1MGZaejFT?=
 =?utf-8?B?U0ZDZUpNeG5hcWFUaThlTkNJc041cjRHcUlXR2dOYlpMMm1aRnRvZEpTbEhU?=
 =?utf-8?B?UnlhS1paR0lzbjhyR0pkTUdncldFOUZBdU92SHVCYU5UU1NVaUVqMndkQmho?=
 =?utf-8?B?T0FRYjFoeTZjQlpYaUdYVC9JWUhxNXAxc0lZOC80KytJeHB3ejlhRWlnS3RP?=
 =?utf-8?B?citvQTgwajRWR29PN0NnK2xFOXN5KzBmd0cwNjVyYWFBWnN6YUJXdnUwVnFK?=
 =?utf-8?B?OHRlbDN5amorOE9NN2N1bTVXbml3bC96VWptbE1NYmxuYnlDbURRQzZtcGZi?=
 =?utf-8?B?amp3eFNWN1pKdFUzVGxMQjdnVGhXdllOZC9lSnd6M09kbVdDWHFyN01CNWRI?=
 =?utf-8?B?K2tJNXRSN2czWW16YXdER2hkejRodURjZkJvREZIMFFvWGNGSEpRT2VFQVJw?=
 =?utf-8?B?WEkyRndkd2ZDdTFIOVdybVl3a3B6cWJhdWU5YTVIMFVlemF1WUJwTzhYRVVG?=
 =?utf-8?B?d3BzanFnTXlNQk85YmpJYkNMN1Y5RVFUL3pZL3pZWXZ4QlB6YjBreGk4bS83?=
 =?utf-8?B?S2o5Q3c0RzVFRVpyd2dkZWhsNVVLSUNGRk5PQitvalhUNDg0Y2Q4RWFFeXA0?=
 =?utf-8?B?eTJzV2xMSnc5N0Z2Y3ZJOExkRjJvWGVTWGQyRld6L3pTZmxSLzFKSUs2b1lV?=
 =?utf-8?B?MDJsSWJicVlhWTQvNXJxMm96UEdvYmpla20ycDFDdFVtdjJkT1ptRERqTzVH?=
 =?utf-8?B?dXAwZXNkTWNYSGh1QUVTU3R1b1d4RGNCOXB0aHJTWkMrTzZvaEZ4YzJHYTc5?=
 =?utf-8?B?clZUcWhQQVRCVkF6RFUvZyt5NnduT2lWOUY3dmc5NG9YUUNRY2dralhVZU9j?=
 =?utf-8?B?WWZCdjdRZllYV3NhVThHRXpXQ2plRzBIS2ZiVHhKcWN5Vkk2YmE1cHBFWlFl?=
 =?utf-8?B?QktDbzZMc3V2blNCNFFrSWpxSXd0cGZhblp5ZjJpMnhIVzhKR1V5OGJSZHN6?=
 =?utf-8?B?U21SSHlzZTV2NEMzTExPYmc5RzJDRjFTWHRLUHd4WGpyYmFFM2djeVZpb3k2?=
 =?utf-8?B?d0NGaFZNUVRRaEUxK2Y5cnJOR3orWnVPMHlZNmhRMnh5eHU0VFJPczBobkMr?=
 =?utf-8?B?MTVjWDBwK0VWSTB6Y3JlMHRlYWpjcUhxYmhOY2xIV1dKL0tPdC9OclRQb0oz?=
 =?utf-8?B?OVdBdTJyKzRHaDBhMnJpa2o1c0FlMmYwbWdNMVV3Rm04RDhHdDJqbkp5Y1Bk?=
 =?utf-8?B?VUd5NmlOV3ROK25vbVIwK1lncXNweXVTVlBOVmt4UWJCaVhVcVNXSFk0Ky9q?=
 =?utf-8?B?K211VTVHZytaM2YrR1d6Q1ZtMXdSaDJ4Z2FjRFVxNEtoMEdXak5TOWZjU2Jl?=
 =?utf-8?B?RUU1bG1vN2RTbm9icjdGK3BkWGxNRThsd2tOVjJjNWFRejJ0S216MmhCdDRh?=
 =?utf-8?B?OEV3OHF5aEJnK1B3Q04zbVc2VHl1MDh1R0RsWEltb2N2a0JoMVBzV2FrcERw?=
 =?utf-8?B?RjhGSk1sQTdrT2hNN2V6dk5BcWpyQTJiUk8wR21RaE52K1czR2xZdFB5c3Yr?=
 =?utf-8?B?T0ppUnFGTC9CUnBJaUF6RmdCUEJ5SmVPQ3M5VWdPV09QZDdSbWJndlY4N216?=
 =?utf-8?B?Q3lZSVp6WUhodVUxbE9iVWdzTG1ZRFhLUHB4SmlOK1loQi9SODhiSDhXZlYv?=
 =?utf-8?B?YjFsQXhuaDBBdzZMT1FGOUFRZkVWMXRYQkxTb21zSC93NHJ1MG5kZU1RLzl6?=
 =?utf-8?B?cVBObUhySE9MZjhJL3RKNEU3cFVaTVVtTVFsYjVPZ3RpWEJyZHVOeWRITVFL?=
 =?utf-8?B?RStvN2Q1ZGo4OXlvbitvSjVJUzBUQTF6OEU3V0h1bzJHc3c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L3VhWmp3WHA2RjY3YThkTVVzMGxmbmw1L0RDS0UyWGNTZ0VzbG16S1NnS1Mr?=
 =?utf-8?B?clEyTXNWYkNJc3RXMXNWaVgrb0NNMkpEa05WcUdhQzFoSXM2cTNGVkd1M2tV?=
 =?utf-8?B?UXpxejY3OFNQbHQvZlptT2VWUFVUUUNpTHlHN2tmT1VLR3I5NXRtYjlrRjdZ?=
 =?utf-8?B?a1UyQVdrcjVYemhEd0VhSTc1anpLRG5sakFaQWdweTROL0RTZ0EwYTIybll2?=
 =?utf-8?B?VmhUL05NdlpqZzh5NllGbDh1ZDQvRk9na1dXcm1jVUNLSmFXRFJJZmQxVFdY?=
 =?utf-8?B?NnE4aWlmTmI1MzJyT0NFTDgvdG95M1owcC9GZ2lRZTM4WElSWlFuOTVTVG42?=
 =?utf-8?B?T2I3cEZIQmN2ZGpUd3UwK3E1UERITWRWeVJTcFpJU3phR2J6SzlWYWZWY0hR?=
 =?utf-8?B?VjhkdzR0MVBEWDRBZTlGV0thbU5jVTlpeTA4RS9IaGN3RzdmR20rRTFqekVH?=
 =?utf-8?B?MU5VZVQ2a0lTTGpldENxYkpvL2grVHMvcGhDTHNUR0Z6TnRWOGRoalh1L0xS?=
 =?utf-8?B?SGxIMW9uMTJoSGRZWFpCS1Z4Z2QyUmU4SDlBd2JxRW1jTjVyWUE4V2hSTnpy?=
 =?utf-8?B?clNTaXdUZVdMcmxFRk8ySlJRcnQ4a3UvaFV5L1didmE0TzlzTDE1L1g4R2Yw?=
 =?utf-8?B?UDBWaGVhY2J5TUErTkNRdGNtMVNJaVozcmZiQytWa1h4QVhLTE1JTFlsYjdx?=
 =?utf-8?B?TWlUL0RkWjVROExzbnlHdHloUkM2TENWU2VwZ2N0RngvRGxIMWo3QmhGZlYx?=
 =?utf-8?B?TTlZR0R5OUZMKzFCaHFHblRqdTZqQ0xpMjdBd2xUZ3M3MmdGdFdVSkxOK0xF?=
 =?utf-8?B?cDZrdDNObUh5K25LbUQvc0p0UEVqdmM1cngrQjdsclJvbVNEUXAzQ3B0akcy?=
 =?utf-8?B?TkRBOVlHNU5FcUdDN1B5c0FJYkVyeGNmdHBmeG5hbmxTTWQ1eUcxaHdmeGMz?=
 =?utf-8?B?UTBQSVM2U3NrVERlWGN3ZUE4K3NJY1IxN29wdUZ4Sm5UWjVmNEN5eWgxY01I?=
 =?utf-8?B?dnhWV3NxajQvN2pXZUhub09aRFREMFhER1FrWGtMNkFSb2gyZGhhT3htQ2Zz?=
 =?utf-8?B?a09UVFp6YVRaM2lIQnl3Tjk0QjBxR3VPSTlFU0dUN3lDeGtVZkF0dEhOY2JM?=
 =?utf-8?B?Z3AvTU1Pb0JGZWhGQ0RTNElXem0wM25qK2ZPZlNHOXNQOEowTHA3WERWVllv?=
 =?utf-8?B?V2RYREMzOW9MY0ttRXJsdmROUk43dVJ0d3g4RGdOcUJQWlg1SXlUSkZVRHlC?=
 =?utf-8?B?VEV6Z0ZBbjhjTG9IdjlYbGVra3NCclVJazdRdW9QZ2twNWRiNTZFeTk1dmJG?=
 =?utf-8?B?MTJJcUVMVGcrYyt3dFU1VXlLOUlLQm1IMWZxdzVyOG1lV1d3ekhVTHBNSHdZ?=
 =?utf-8?B?ZGNNVlNIYW9jS0FOUmF1dTZjc1FvSDN5ZGoxemhIMnBCMVBiL2dlck9tdGsr?=
 =?utf-8?B?UjdveTVuaG5VTU5WcFJ2Ri9xS1hpSjlyOUFiZkxKOHVscFM5MzhiZ3ppYk1Y?=
 =?utf-8?B?TUdzUk85RUl5R0ZnaTFaQ1J1Q1hWTlVjYy9MbHYzTlFwdDFxZmJDK01ac1pV?=
 =?utf-8?B?amFhaTVoOW13TElNNlFIdkNJSXN4bGhER3pEdE9ncUJ6U3RRa2ZtQ2I5aDdk?=
 =?utf-8?B?TUh3VzR5dVFUR0p3aFpmdElaTzdNUW53RHEzYks4b1d6OWJoZG9qNzBWUGxC?=
 =?utf-8?B?emE4RXpuTGVFZlNVZzZZSVpTVmxIeHRZeWFKUnB5K2liLy9rTGVOaDVWUnBs?=
 =?utf-8?B?YTU3WUVxbGJTS0s5aExLclFvTG81NWRrdXJkaFpmbjNsN3hwQUhNd0dQcEc0?=
 =?utf-8?B?aTduYm5Pa0JXaUZKMWtLazltQXpxcjh4eTQ2eXE4a1pES3hEY05MK1dVcVFG?=
 =?utf-8?B?cG5EbGdPbjFHeVRqZ0R2eXh2VFlqNStDendxUUpCM1A0VWIydExFczF5M2Yy?=
 =?utf-8?B?QWZNbFBYNzZIQXlVcVVOTExCK1JkYmpNZks3dFFvTXErMTNxOWxGU2NhNnUx?=
 =?utf-8?B?b3o0aWZHd1BEV0tnM3dvSUdUTWVXcDJmRUEvM1RtTTdsRTBneXhYc0xBd2xI?=
 =?utf-8?B?Y253YUhtTDVZSnVZM3NMeURjU2lodXVVT3RQcjVXRE5DaW82bS9sVHZrVkxp?=
 =?utf-8?B?WEg4ei95ZnVIREYxd2hFMHd0Yi9vSndJbFVzcldVbnNzdFd4bXRiU0pZYjJy?=
 =?utf-8?B?Y2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3750ce27-2592-4f29-9e72-08ddd0e0ac26
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2025 09:49:13.7265 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3cqcqfknKt6tzTOcTw2SHFKmkBdnNGITPhvV0wpz7XZ9bI8RLQmf2olux8OAgs0lTVBCCXeInqYrRvTMYeXFl+LyTHcPsdp4RD0gm8FvMtc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5859
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

The workaround for disabling Render Cache Operational Flush
(WaDisable_RenderCache_OperationalFlush:snb) was previously applied
in rcs_engine_wa_init(). As it's a context workaround specific to Gen6,
move it to gen6_ctx_workarounds_init() for proper platform-specific
context setup.

CM0_STC_EVICT_DISABLE_LRA_SNB is also Gen6-specific, but it does
not stick when applied in context, so it remains in engine init.

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index c4f364a29724..983b10048b4b 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -337,6 +337,9 @@ static void gen6_ctx_workarounds_init(struct intel_engine_cs *engine,
 				      struct i915_wa_list *wal)
 {
 	wa_masked_en(wal, INSTPM, INSTPM_FORCE_ORDERING);
+
+	/* WaDisable_RenderCache_OperationalFlush:snb */
+	wa_masked_dis(wal, CACHE_MODE_0, RC_OP_FLUSH_ENABLE);
 }
 
 static void gen7_ctx_workarounds_init(struct intel_engine_cs *engine,
@@ -2644,9 +2647,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
 				    GEN6_WIZ_HASHING_MASK,
 				    GEN6_WIZ_HASHING_16x4);
 
-		/* WaDisable_RenderCache_OperationalFlush:snb */
-		wa_masked_dis(wal, CACHE_MODE_0, RC_OP_FLUSH_ENABLE);
-
 		/*
 		 * From the Sandybridge PRM, volume 1 part 3, page 24:
 		 * "If this bit is set, STCunit will have LRA as replacement
-- 
2.34.1

