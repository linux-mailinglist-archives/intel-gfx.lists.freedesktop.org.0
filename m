Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D99FAC524DA
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Nov 2025 13:45:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B35A10E70E;
	Wed, 12 Nov 2025 12:45:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n1AbkRew";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB9FE10E70D;
 Wed, 12 Nov 2025 12:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762951534; x=1794487534;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=c81CShWPwxMJ7YmgMiBfxzO9uqKn+bfY9J8MADkEyZg=;
 b=n1AbkRewPzCcRTpdOc3r0f058kks4bl7Xj2oXtF+h05Z1vQoRJKMxfP0
 FsWZiYv/KLPYZRgIFNmn/+KmDgbrrYxH3us77h/OO/wZclVp6Q+tjaTdJ
 g6Vqbf1U9Azw6oXVtleKYAIrTbQuZg2G7UJW5yGfCbYVQwN3zLOXr/uJ7
 LAQDDtGjiry5cGs0raS7HWRctnnEc27zW2UrNYKaUaGol9rpCdVKUcSfW
 GhSexyPWd3Md6JS1vXdpfOle/z7LKtOMrprs58UejdurBU+m1Hus6VST8
 3suWSP8hKyqNHpFrArjcRuKMVThTUIIrkCbmOqgCmcBtpo7/uwwRBMzSg A==;
X-CSE-ConnectionGUID: SeS1XSV/Rki0Nc7oeKicVw==
X-CSE-MsgGUID: xb7+hPyzQtitJ73QnBN6kA==
X-IronPort-AV: E=McAfee;i="6800,10657,11610"; a="76470976"
X-IronPort-AV: E=Sophos;i="6.19,299,1754982000"; d="scan'208";a="76470976"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 04:45:34 -0800
X-CSE-ConnectionGUID: /ArlkioQS+acQhRLD6CVSg==
X-CSE-MsgGUID: y906cLlZScCCdgsuQtPs2w==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Nov 2025 04:45:33 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 04:45:32 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 12 Nov 2025 04:45:32 -0800
Received: from DM5PR21CU001.outbound.protection.outlook.com (52.101.62.42) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 12 Nov 2025 04:45:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PFJuREN2aJWQSVQGlVhJyVmYpqgUz9FCTf9HlZ9A4H46fA1FKv602t0CUeQfkPNsFEccIfstk57QfSlUYeunFc3HWEWQhMWzaZrdTVpcnW5VyqYOOwVVjrttCBBTwIxmCOwbqNnECsoM6j/VgvH5idKufqpMjylVGl0E3OJitRcZzXeuiQcwDQODo0Uz+1rDe+ea63GwOe+zEoDfzEytDr6+95dYdZnm2rQgYP8bYQpd4tDxL2Ezhj9nGsbFjdNJsjFsr/sqY0FNA/aAXhHxsViFf7PjRcndkIpJ/BA8fIi8g5uWFrRai1pkIkK+7+UK6L3mf6w8d7CeUjZh9zVSOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zuybMIyQB0TqHWIiGo/8+jzJF+gWeJSu6M88KUDcih8=;
 b=yo0c5FgfD1uuTcrj+7zj2BSvFIqTvDPRkuai9JDtLR+QHAAcs+e7TTWTuF8XhWkV1FH+8jB5OOcwyC1NVI8RvAw2QwX8CqM3P2bEtsC25IVNH2jUo5qPo8VcUqyeQ1yYVEgHv38evjEhgQxpIDKn2tsnxBTTuaKvcGzxPvAPBlqSsfYZcJBq3nunQwl495uv8xDa85D9MJaTreRt/xQ/qoVEASBxusM5NDgZ9gyo7gJe2AcfklDz2MhCGC2R5XQQqmRvN2AErP2qj5+0BdQ2wq+zL+UaMYXAcK0Kb6OYgs/5YN9YWvryvqpyQuuQF2a8aKIubLNVkUSnIOc8JKBahQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 by SA0PR11MB4557.namprd11.prod.outlook.com (2603:10b6:806:96::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9320.16; Wed, 12 Nov
 2025 12:45:30 +0000
Received: from SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88]) by SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88%4]) with mapi id 15.20.9320.013; Wed, 12 Nov 2025
 12:45:30 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <DM3PPF208195D8D66050C2B8438D3BCEA06E3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20251107-xe3p_lpd-basic-enabling-v4-0-ab3367f65f15@intel.com>
 <20251107-xe3p_lpd-basic-enabling-v4-1-ab3367f65f15@intel.com>
 <DM3PPF208195D8D66050C2B8438D3BCEA06E3CCA@DM3PPF208195D8D.namprd11.prod.outlook.com>
Subject: RE: [PATCH v4 01/11] drm/i915/wm: Do not make latency values
 monotonic on Xe3 onward
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>, "Bhadane, Dnyaneshwar"
 <dnyaneshwar.bhadane@intel.com>, "Hogander, Jouni"
 <jouni.hogander@intel.com>, "Heikkila, Juha-pekka"
 <juha-pekka.heikkila@intel.com>, "Coelho, Luciano"
 <luciano.coelho@intel.com>, "De Marchi, Lucas" <lucas.demarchi@intel.com>,
 "Atwood, Matthew S" <matthew.s.atwood@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Vodapalli, Ravi Kumar"
 <ravi.kumar.vodapalli@intel.com>, "Chauhan, Shekhar"
 <shekhar.chauhan@intel.com>, "Govindapillai, Vinod"
 <vinod.govindapillai@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>, Ville =?utf-8?b?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Date: Wed, 12 Nov 2025 09:45:24 -0300
Message-ID: <176295152432.3698.11401932183339103440@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0169.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::24) To SA1PR11MB8280.namprd11.prod.outlook.com
 (2603:10b6:806:25d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8280:EE_|SA0PR11MB4557:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d24ddf2-67e6-4e76-b4e0-08de21e95ce7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S2c4QVdwUWJMelBPTzlCK1VneS9MbHNyb0d0NFNlVld5MHFQaXlLY3RKTU5D?=
 =?utf-8?B?YUtxRTdiTkxRYWhKbzZoWTJuWUlHbzd4WHA2L20vWGdhRm02bHNEdDZtenFu?=
 =?utf-8?B?aFVrT0RsYXdkcnVjQzFlZTcvOHlvMU14TkJnUGZkallVZUZDbENPUVYxaUdV?=
 =?utf-8?B?Yzg4bHg4RDJNaldaakVzWTFlWFdGWlhWNUdyZHFmc2QvcUg3L2tKL21mdTVm?=
 =?utf-8?B?NVJJT0xnS2N5eTMzL3c3czhjREFxV3drL3BHWCtsb0kra1NLQjhHNmtVZUNK?=
 =?utf-8?B?bGhGb25MMkNSVkVPQVRNZ3VpQ1VhSlZIbUZwRllZZlNnTmtDc1IvcmZxNDFB?=
 =?utf-8?B?S1pPanROOW1RZktOQzNhek45WFJhdG9sNFQ0M1ZYMzRsYUFKWTRmRGNKM2tS?=
 =?utf-8?B?cmpXMTBVNG9sdGJNdVBsT1kvYkltT1JzR2x5YklUL2o0SCtVdmpzV1ZCMjJv?=
 =?utf-8?B?THVFZkpmNmx6Y0wwR2d5V0dhRFhZYTQwbndTSXBGMkhkR3dwRWh3amZIejJU?=
 =?utf-8?B?aSs3SkJwUHhUYXpYWCtLbE9Vb3pXS3pFaTFGWXVYaWdUMmp2YStqMXNrNnlD?=
 =?utf-8?B?TzlVN3RST2FmNHB5cDlqbFlrOGlDSlhhcG5MRTYydHFldHBFMEw1c3BQWnUw?=
 =?utf-8?B?eTYzN3pyV3phV2tBQjRYY1hJVWpuNWtuNXBCMHZDZ0xlMGVmOVZ5ZHErNEVy?=
 =?utf-8?B?cHM1bWNkd1hKZVhWSWtRNmpWUzIwSXZuVzNBSEFKdUFYZFhHa0FtamVQby9a?=
 =?utf-8?B?RXZ1ckNldzVRQnFRcmlYdzJDUHdWbTVBeGdNam14WkVEazBGbFNUN3QvUlkv?=
 =?utf-8?B?VkJuaGNXYlV4ZEtpRFVXQmhkRFh0d0t4NktmRWlHcmRBLzZ0Yk02RU1jdk5o?=
 =?utf-8?B?SU03M0tFeXJtSngydDdWcVhVajhTWWxMNnpCNnR2YkxkWjBrQ01iekY5eGpI?=
 =?utf-8?B?SjdmMlIwOFpqYVBNQWJBb0xrSVpmaDFVUXBVWTZHSGJkYUl1cWNmZytzQlpT?=
 =?utf-8?B?eVZ5Rzc5eHp2ajhOaGJXRlpYSUtXamkxamNpRkMwbEZ2dEdybDB0K1Mxdy9Z?=
 =?utf-8?B?M0NRTXVHb3V5UG1WUDRBY20rdHZSTVlhd2JxTVlReDVybEtaL29hQzVmVjlM?=
 =?utf-8?B?Wkg0KzRmNTJmU3RDZkk4OHhDUWFXak5LTEtpQTVRNEZpc05hbU4vSVE5ek9L?=
 =?utf-8?B?Y0RRcXJOV2IxZHg3dW5Gd2pvOFRWbUloc3UxQVZjem0rNDBVV0pUbFNIcXhq?=
 =?utf-8?B?N0pYM0NJazRSM05Ha0hucjNBbm9YMGwzMENwSTFtMHpadUtaN2QvOGxmaFd6?=
 =?utf-8?B?NGY4QlhVcCticUw5bTlOMzgwb3h4bUxBY04wL0d3NXRCQm9kSnRONzMrcW5B?=
 =?utf-8?B?a013eFdkNVpHcGdKcjFwS0lqOVdlSVlXYmhjMSs2Z1NCbURWb0p1NTZrNWNB?=
 =?utf-8?B?OXlCRkJ4RnBqOXZhSHRJb1dnZGtTUFdyNTU3QVpHS1J2MjNwTkwrV25Bd1I4?=
 =?utf-8?B?aXhaVm93aXNxU01va0NDMjVFSEg2bWgrTFpIc283aFE0cE45RmZVU0NWOG5N?=
 =?utf-8?B?Z0NiUlB4S0JHcUF6RWlJUnVlNUR2Mng5ZTFISVNZQ29SR3lUb1g5TG00N3hB?=
 =?utf-8?B?VXc0Y0JpVCtKMU1Jd2tCandMcGdrY3dyN0NIOTNXVUl5LzB0b2lvS0dtRGpj?=
 =?utf-8?B?eWkzRWREZ05za3VRc01mMy9hVFBWTVNXOFVxRFlSL3RpVmdNblkvSUVjVnVo?=
 =?utf-8?B?K1Z0K1o3dGdIRldyWmEyczJKTTl0bGFzZEdhTEV1UW9LcG4ydmdrZEE1ZVFa?=
 =?utf-8?B?TW43aDZ3NEhqdkp4aitsZCtYN0NmRGVJU2tOVEdxQ2ZXT3VnekdYcVFwb25u?=
 =?utf-8?B?cStoNGRmeC9mQXppY0hXK0swRG9LQkhNaGFjN1hiVFBEQkdISlJzcTA5MWpH?=
 =?utf-8?B?Qzlhd25nOFd1UG40SDY5c2d3Tm9LR2kvNDdmbUl2emZmdmJ3NFlvN2wwUVk5?=
 =?utf-8?B?U3crcHJ3Mk9RPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dWdueFhEMXdBaG5UdktITWtUTWlXZVdlVjFiZ2kwRlFYZmdLeEFDR2xCbDIx?=
 =?utf-8?B?QjIrMUd4eUNSQy9PRDJLUk0zWW1YM3QxZldrUWNqS1hRRnQ2OVRoVCtYeGxT?=
 =?utf-8?B?NDlZR0xRcHpnVUJGYk9kNUppdFFHNkgxU29CbnhSeE5pUDRZM1J2ajlKQkEz?=
 =?utf-8?B?T1FPQ2lUQXZGL2NWNEQwQ2ZoVVVIaGhvK3NlTUhTQU93MmdQMERhdG1ITEwy?=
 =?utf-8?B?MVNMbTlZSzdTdkFFUFU0cFB5WUFleXlPeXdkeGFJNStNWnorRmxac3B6c251?=
 =?utf-8?B?K1E4RzhzbTlnL2p2K0Ryd0p3V0Y2bGNhSndYSEkxU1krb1k3eGRmYXBNcVBW?=
 =?utf-8?B?ZjNVWENVckIrNUtodDdrNGFPR1d3MFpqMCtvZG9WNHpFczFFSFdxVGJ3UWtD?=
 =?utf-8?B?RlQxWTJMTVNrQUhqZExSSEU2aVQyOTI1d0YxU2tzSzM3WmJDWHZYMitjMVBH?=
 =?utf-8?B?S25KcDAwcFozSDJmOFVGTGpoanF0S0l2dTNKQjl1Z3RxbFdzZHFHZG1lejdF?=
 =?utf-8?B?UVB2K1ZkWmU1Tm94N3BEemF3K29qSVlldlFMcVc5SlY1Z3pTbFZGRHdudEht?=
 =?utf-8?B?YlFLOUdueTk4a2VLaHFGbDZYT2FBUVVJemNEZjhZZktRYjRPNWplcHhHamZW?=
 =?utf-8?B?cTA2ZnowcTFTV3JDR0FOMXptNk1Ud3hhd082QlhQQ0JuRWxyK0x1V0FMMkFj?=
 =?utf-8?B?OEhtb28vY2xsOTRzcS9neVU0bVhqaEJDRWdIM0hFejc5dUVoRWFvdWRSYWtG?=
 =?utf-8?B?QzdXa1l4RldiWkZLeDY1ZGtFbnBOWTZXait2TU52NG0vQkdMWkRDL1pWOWI3?=
 =?utf-8?B?dWhLNThabnVKYzhRV212VjJIVTIyQkY0VmJYQmY2aWxRNmtWN0NNc1hxeWpY?=
 =?utf-8?B?NEFrV3kyTDBERnJka0VRRGxmVGVhV1NUTkwrcWdBYlJZQXZHY2V1dzBqdVpj?=
 =?utf-8?B?TG9xWHdsUlJvY1VJOFJkT2VZNzZxR05jOE5ncVovU1VwR0xiWXJBQitZS3po?=
 =?utf-8?B?cHRVYkxWaDlFeEsvRmh4RDRFQi9IeXFjbXc4SEoyRExHcnhZNDBmRE5scytW?=
 =?utf-8?B?aW42TTl1azMyZUdNNFRuMmpCZjhWYWlNUFdwWEVmWEVJNFY5NSs1U0twL0dT?=
 =?utf-8?B?ZjFZQmN3L0srOHRwSlRZempDVGF0TXVNYkI0bWp5MVc2M3FzTHJFZCtadXZQ?=
 =?utf-8?B?eUUwV1ZtUE5SZmRETjRQenc0dG04eTNhRmFBS0VGSDdwS0oxY2VRSHN1SlE3?=
 =?utf-8?B?UWg4YVZmdXhTT3lsaVdaRGdaZWdVUU5Tbit0dXhTYmJudDRGYTNadzNIUW9T?=
 =?utf-8?B?aHlTZWRMZXQxQWRhN3NwbXdsbzREWkVlWVNKVnhTbWlqb2ZEdTFkYXZXR2Jn?=
 =?utf-8?B?ZXgrOG5Nbk9NVzJIVVpHU3NhSEN6R2k1WWduTXBaSTU2dG5uVWZ3eFVFTE85?=
 =?utf-8?B?ZExYVkZQOFMvcnVDczAwRE9hb0ZOZVI1SkszdnEyMkF2NExkVXlhZ1IrdElV?=
 =?utf-8?B?ak1CSDNtejVjMS8vRHFieTBkWXhpQnpuZGpSTmtVS1ZMeFJpRHVBWHh5Szk2?=
 =?utf-8?B?NFdpS2xiVVFqVDE5QTFvWkNuVmdKK09jc2ZGdHlIOXNueUtwZU9JRnVCMWVo?=
 =?utf-8?B?eDJKTUhFVU5OdHI3NGhSQkRNS2R3dFNnaEgyQ0k4bDJ6ck1vVXorMmxQa1BS?=
 =?utf-8?B?dGxDR1RyUGMya0R0QXFuMm1WMk5seFp6Si9sRXVqYWtaQmRBWG9NQTVRYjYz?=
 =?utf-8?B?eTcrdHUxUnE3dWoxRUQ1WmxqbStKT2pZNmhaTGxJaG9vdjVjT2g4cWpUTHRC?=
 =?utf-8?B?Z01TR1QydjVDRE9PRkMvSzkvamd4cEo4NUVOOEdxNDJFR3JidUNXUmNacHBI?=
 =?utf-8?B?eG9UWFBhdVJvdVZGQUdQNkg2V1IvaUFJdnRZSXpaQ3l5UXBIWk9xcjY4SFJG?=
 =?utf-8?B?TlJEWlJJSEhienRlYUkzYUcrY3QwOVNibHRWZ3JiRnJwTVVUaHpVZVJRZFJs?=
 =?utf-8?B?MGVISGRPMFc4RW04UVAzenYrM1R6SmJWeWNDSHcxS1lNeXVuYkpBT2E1Q0J3?=
 =?utf-8?B?UFhhOGU0c2duMWVHdjBNL0FLZGcvMHlpbURGeGtYZ0JDM082M2wzQTQ2RjZ0?=
 =?utf-8?B?QWZlUDlvcjFXY2tTTnNUNjhhZWxuNzlkQ0lsRkowNVVQRXBQSWFVWk5FQUk4?=
 =?utf-8?B?TXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d24ddf2-67e6-4e76-b4e0-08de21e95ce7
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2025 12:45:30.4903 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g1faXS4QGWbXqPE0+rc4E2z/XlPeuEzfX/uW+xvZBdXAlFZk7gu6SOG3AyZn0x7uMJqdt5XYdERErQqpNMNJZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4557
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

Quoting Kandpal, Suraj (2025-11-12 00:46:59-03:00)
>> Subject: [PATCH v4 01/11] drm/i915/wm: Do not make latency values monoto=
nic
>> on Xe3 onward
>>=20
>> The Windows driver is rejecting non-monotonic ranges latency values for =
Xe3.
>> Let's make sure that we do not call make_wm_latency_monotonic() for Xe3 =
and
>> beyond.
>
>Idt saying we are doing It because Windows driver is doing it is the corre=
ct reason to do this.
>This may very well be needed but I think its better to add the right reaso=
n here.

Yeah, that's fair.  Maybe Ville can provide more details here.

Also note that there is some discussion[1] on v3 of the series (v4 was
posted here because of an imminent unavailability of my part).

[1] https://lore.kernel.org/all/176255963559.2001.856665786291066518@intel.=
com/

>Also Bspec no. at trailer if available.

I am not sure there is a good Bspec number to refer to here. :-\

>
>Rest looks good to me

Thanks!

--
Gustavo Sousa

>
>Regards,
>Suraj Kandpal
>
>>=20
>> Also, because of that, let's add a check at the end of
>> adjust_wm_latency() to ensure we raise a warning if the final list of la=
tency values
>> is not monotonic.
>>=20
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Suggested-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/skl_watermark.c | 17 ++++++++++++++++-
>>  1 file changed, 16 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c
>> b/drivers/gpu/drm/i915/display/skl_watermark.c
>> index 36a266f882d1..ed55fe84e930 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -3218,6 +3218,18 @@ static void make_wm_latency_monotonic(struct
>> intel_display *display)
>>          }
>>  }
>>=20
>> +static bool is_wm_latency_monotonic(struct intel_display *display) {
>> +        u16 *wm =3D display->wm.skl_latency;
>> +        int level, num_levels =3D display->wm.num_levels;
>> +
>> +        for (level =3D 1; level < num_levels; level++)
>> +                if (wm[level] < wm[level - 1])
>> +                        return false;
>> +
>> +        return true;
>> +}
>> +
>>  static void
>>  adjust_wm_latency(struct intel_display *display)  { @@ -3228,7 +3240,8 =
@@
>> adjust_wm_latency(struct intel_display *display)
>>=20
>>          sanitize_wm_latency(display);
>>=20
>> -        make_wm_latency_monotonic(display);
>> +        if (DISPLAY_VER(display) < 30)
>> +                make_wm_latency_monotonic(display);
>>=20
>>          /*
>>           * WaWmMemoryReadLatency
>> @@ -3248,6 +3261,8 @@ adjust_wm_latency(struct intel_display *display)
>>           */
>>          if (need_16gb_dimm_wa(display))
>>                  increase_wm_latency(display, 1);
>> +
>> +        drm_WARN_ON(display->drm, !is_wm_latency_monotonic(display));
>>  }
>>=20
>>  static void mtl_read_wm_latency(struct intel_display *display)
>>=20
>> --
>> 2.51.0
>
