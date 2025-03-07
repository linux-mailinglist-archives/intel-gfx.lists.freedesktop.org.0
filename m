Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF002A561FB
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 08:44:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3C67810E023;
	Fri,  7 Mar 2025 07:44:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HeZg8/rw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B30810E023
 for <intel-gfx@lists.freedesktop.org>; Fri,  7 Mar 2025 07:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741333490; x=1772869490;
 h=date:from:to:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=zogHB2c1XoNU18nynhUEFcZb0JYdf5hJsE5/XtCVKBs=;
 b=HeZg8/rw5THu9J7HJJmnkrdownakf5iTHpEGPIWwCprN6SXKS+Hq01Dc
 heuZhXHHL8r3Eyb/iZQ7yge/jysI7OBapqOqSSJivqMnac05XSb2zM2TA
 rKVrC1jHx/HbbAWHlzMfk+5r1LdDWhMbPN3ijA9mY6Xd3g4sUyKfzqzmy
 kIEUlwfh2aoymrYBZYGFKbGTfOrc6qyMSFgBVHn5A/eV5lnphcYTOk1o2
 rfsdcNm9/ijh/ZoR1SKgxYohIvA7ZhxjfDtf4CfShkE9zHPT9au+Qeelh
 4pTkMsCuGIdsHQF1NAYZHX/BoL6+F+gvDOlDBYcenWaZHMgKzZ8dKXH8T w==;
X-CSE-ConnectionGUID: BhzKpsBqS9Glyo3FS8YY7A==
X-CSE-MsgGUID: EFqTisQXTeGnFzJk7wA9tg==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="42286763"
X-IronPort-AV: E=Sophos;i="6.14,228,1736841600"; d="scan'208";a="42286763"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 23:44:48 -0800
X-CSE-ConnectionGUID: JcafQhRtSRaFYKiajRgcHg==
X-CSE-MsgGUID: ia/suvkLS0e+B3QBjnwPCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,228,1736841600"; d="scan'208";a="119440236"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Mar 2025 23:44:49 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Mar 2025 23:44:48 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 6 Mar 2025 23:44:48 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.49) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Mar 2025 23:44:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=bmRqN+IKUfmKBswlGQyFuRfB5b+p4AH9ICJ56B2iGy0Me4y8O9gDMRlXRsN62k/6cQZt57bJ5H05P3AO7gOmcLvoAorLdr4OlmfG+cq+5iGUXF4cunfhc5XpBP/rqSO6ZQW5CsqQ2oIVnEwYmpAR8RlXNecll25vNdMzgKrao8ydo66sowG4kI93nSzAuCZoXbR0pvGa/VhYJHaCakiN55jJ1aLOJSnOU/l6BOVwkhoqSD+jo9nKYe+ksqEl4vmNyaVJ3zkrDQKOmAmCkjnSSDKBHVzP0yscuSUgOHqbXeHHM4nTE/fhgkasslSyoGBZKGedOPuVz4DHmJ9FbVfMaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zogHB2c1XoNU18nynhUEFcZb0JYdf5hJsE5/XtCVKBs=;
 b=NT2k2FGgtYYtkBkjRTPbvBIlaRSLLeoWZWdGzi7Dfm7RmiM1euQegziCs5xyM+DF7M0836g1B3vYdNZinRac1ArwAPd3HMWYvjVmev+QdLAXyjnVqgM6rAeZJwsvxIv+uNRMqlBPvJG4snCJDICQAzDjgojL9SQbXHfUzaLjEdkEBAc8zS5kxfy1Ju2oDW9CzCN2v4tDrZaddnpXXkmJPixziHg8CDmnqtAwU93qOn/5ytyfjIlL/cvwtV7jlJnEWwm4o34DaNX6zDJFbt4rJ74woTgYI0IewzKXVCkrpLm+vAZ4WsG2h126wMRZIX7l+/nb5NgeY4bmPAM+Wr7AEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by CH3PR11MB8433.namprd11.prod.outlook.com (2603:10b6:610:168::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.19; Fri, 7 Mar
 2025 07:44:47 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8511.020; Fri, 7 Mar 2025
 07:44:47 +0000
Date: Fri, 7 Mar 2025 08:44:29 +0100
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2] i915/selftest/igt_mmap: let mmap tests run in kthread
Message-ID: <2l2xubl54w5lppc55lvksasp7ged4tactvumqoxvuocbaqnb36@as6ekkdh57zy>
References: <2w6pt2hnemndwmanwhyn3keexa6vtha7rmo6rqoerkmyxhbrh2@ls7lndjpia6z>
 <p7p3dfiuyss4fyu33ll7dl2lovhiga4nrmqtzvmq22nz6qorxb@3cnervmi5h6q>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <p7p3dfiuyss4fyu33ll7dl2lovhiga4nrmqtzvmq22nz6qorxb@3cnervmi5h6q>
X-ClientProxiedBy: MI0P293CA0009.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::6) To DM4PR11MB6430.namprd11.prod.outlook.com
 (2603:10b6:8:b6::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|CH3PR11MB8433:EE_
X-MS-Office365-Filtering-Correlation-Id: 77b70351-ad2c-47f1-812e-08dd5d4bee7c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bFV0T3Jtb2NReldMTkpVb3RIQUx0a0VRNElHaUx3STY1MlVRN2hWcmpSaXcz?=
 =?utf-8?B?WDFUaEdFelVlVHREcVZXVVJYa2p6V2k1bW9EU2RFTFd1Z1ZBMU5qT0VWQVM4?=
 =?utf-8?B?dEZpRTE0T2VnS3lKSzloK2hYM1RTM2R6dXF2MnQzV3c5UEJQTmVwZkRnWENS?=
 =?utf-8?B?VmxOZHV2RjllQ1c0SzYycjgyN3dSSVB1YmJkV29FVVRRTFVSMmVEV0lGa0dQ?=
 =?utf-8?B?WXJQQVdwN2I0MHpoOSs1ZUczNjNTQUorVERya042Tks2OVhLWmxCWkZTTUI2?=
 =?utf-8?B?TDBKclowUzRxay93YVUveStJUE5lRnhkd3d1TGFrbEp5c3ZudUlQdFVpVTVC?=
 =?utf-8?B?UlZNNWZFSXlNSzIrWDFhbitTN1R4WWV4R3UxV1JnbHExcS82V1B3a0IrU2p0?=
 =?utf-8?B?Tjdhem1tQ3ZQMW5VT3IzK3FEMDNzWXlZbk1jTWpLVmNTeDBMM0dZbThLTXBT?=
 =?utf-8?B?YVo4K3dnV3EvTEhZMWxabitnMXZaQXFKM1NXdGpNRDN0VHdyVi92aDlzd3pM?=
 =?utf-8?B?RG1ZYWJSK042cXFJSm8wcGpteHNLSlovZ0RteFFHb2NCRGVKSitCTDh2Z0U3?=
 =?utf-8?B?L1N4cVZBN0NnaER2RGNXYTB2Mm03K1VHYXM0ajhiMjFZNFJ5ODJ5R0dFTVJz?=
 =?utf-8?B?T2JzS25EekM0MUo1ODZLT0N1UkZBRHp0UHhBZy9CN1NsR0g3RkNiV2ZCT0tL?=
 =?utf-8?B?WFlReEo4WlJzZW01QkRBUllBQWhZOXN0QWxYaStpNUJZV1lKY0hURmNxQVZJ?=
 =?utf-8?B?bG92WWQ3bnY1SUhoNUZ4YkZuNlduTWRVNHh5TGExTWtlY0lLazdjekVmek82?=
 =?utf-8?B?U1VLVlgvb3VyUEtwQXpnK01WREt5OGFZQjhWN09oNjlaSWhCK0hTM1JjSnhK?=
 =?utf-8?B?RTdIVGZjdFBpWWVmZzdFeUh1elErcHN3cW1ESS96bDR5dUtjZUhERWhnNUt0?=
 =?utf-8?B?SFFINzR1dTFPSi9uR09HSms4NGkyVFlRVkUzUTZaOGswOHFDUm81RzlhdFpw?=
 =?utf-8?B?azdBdXFjT3REcVlNczZYLzdXNldXbldtc3lQZy9OOFdVRVY2alhPakcybTJB?=
 =?utf-8?B?clZHbnFMRGY4UytsTHQ5emd1VzQvNnV1YmtPMXh2amZnL2hLTDg2WE9nYnpQ?=
 =?utf-8?B?a2ppRkVET0Q1eFR1bmVNcUhkWER5Q3VjV2FkbGJMM3lCeFc4ZDZTY1NWaGtq?=
 =?utf-8?B?RVVJZVVIWHpvSkFBT2JjbkN3MStUQXlQUXg0cWNaeXQzbGNpV0lRVVJIKzR3?=
 =?utf-8?B?QndXakRzdjBCbm1aMGgrNEZiU0ZtUmJXQ0Z0OVBhOVlEem5kNWIvb3FEczhx?=
 =?utf-8?B?ZmExWWU2MUJCOWRIZ1ZKZTFjT3JPMjhKRFk5YS9wbHNJWm5PVWU2V0NTRW50?=
 =?utf-8?B?dXJ1Z3BBQzFucXNYSFpydHkwTTBqZkxUc3dld0p5dFlXZlZuTTlCUnhZb3Aw?=
 =?utf-8?B?RG1vZ3BLdHNqbjlzSTFXaUE0b3IvWmZPL3RNaEh6MTVrRmsyUWFVYTBEYnRW?=
 =?utf-8?B?ajRSRDhiamM5MzlTOHR4L1AwVFcrU3ZIdVBkSFM0akZmVDRablUyWURqa1V6?=
 =?utf-8?B?UTE1RTZLZEYwYVpOYVdPYzlSYzB0bWFHK2c1enAvVjlYS2dyNm9iZG5aNmpK?=
 =?utf-8?B?OTdrZkFOMVpPWkxYWGtpNHN2RUNGem1nSkxsblIxemtPL3VsS1Z4a0tHSW9R?=
 =?utf-8?B?Z3Z4MVZ4SXhrSEk3Z3R2Q3gzcHRuc0xKVU8yZm9rbE52ZFFHdGppMGVOM2Nt?=
 =?utf-8?B?WDB3ZFM3Mll4ekpVYUczUDVtRU0xU1RoS0p3cHRVK3oyWFkvcXV3NmtRK21J?=
 =?utf-8?B?UzdhNnJKTnhFdFVYeVUyS2IzZGNBcTZKSGVFM1hVaVRDM1YxNTJZTVgxZkVC?=
 =?utf-8?Q?Ijhjyn35Qvcyw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OU9UNDVKNXRDMkMySnBOT2ZIMnpiTCthMHZnUDdFMVZyckVOSGpwTFZrNVBS?=
 =?utf-8?B?R3pUdWNYZW0wL3JqOTRFZ1RmYWxZQ1hYdmhsL0x4THFNQVErY2Z5aWYrbVFN?=
 =?utf-8?B?VHpBUlRmbTl4WXcwOEV4TG9zd2V1WmNsR21yTzVMSTJoZ1hBRnY0RGRBT1Bl?=
 =?utf-8?B?UXdHRjExL0hxUmNhaTRRWFlmTTZMbTlQTEN3NHZQTXF2NnNCcnZvWm5zOWFE?=
 =?utf-8?B?MlZNb3NSZmV2VTdqMHpJMDIybDNDOC9mOG5wTmF6TWRQbmFmdGgxeit3d0Jp?=
 =?utf-8?B?YTE2b2x5UEVkQUdYM1d6TC95RlllZ2ljbzNRaHd0U1NpRXN6NkN4Z3I3WUE1?=
 =?utf-8?B?b2gxc2ZMNDBiTzVVMHg5T2tFMXh1YWpjYjA1dldvUVIzZFhKMG9DWGk2WXRN?=
 =?utf-8?B?ekhmQlNib00rT2Z0NnJzTDBISld5ZTNQZGFXaXY4OVhicWlvTDF1YmFhcEs5?=
 =?utf-8?B?R1NMQ2ZnVG02eTgxQkJOS1owUE9zM0ZkWFdVbXVPRWVCYnFKdWdqRld6UGR0?=
 =?utf-8?B?VVZHVjROb1lFODFpLy9mS095SU9mSzJEVXdNZzFaV2cvVlE3bGs2SCtQaUdW?=
 =?utf-8?B?a2Jzd1dXQS8rb3Zkb3ZtTTFLdE83Wkg2U0MwZlBYTTVlVHVoSGhPbXFOMGZS?=
 =?utf-8?B?YlZhWVA1RXdSTkpWeGFPaGFDS1JHdXNvN0s1aExxRnlDWGFqbkxvamtYaHR2?=
 =?utf-8?B?MkJ0M3pQUlVVTnJVc3loMnNKT1pKTmFRRFFQSTFpcDFKd3lHT1A4VEt3TVZM?=
 =?utf-8?B?YWRmRHk4QTFhU0NFNnNzNzVsWFg4QzZGTUNjYnN1L0ovQ3pZZnVkSDhVL2g3?=
 =?utf-8?B?cFhZSVpmT2FJUzZFTFdUR0RGTjdweDJ2OWJOZWZxb1JINDl1R09kbEE4SG9Z?=
 =?utf-8?B?TEdNUGxabGZpWi92OU5OclF4aTlNeUVjVmMxSDh4SGRVaW5OZ3pNOFVHemxB?=
 =?utf-8?B?Y2EyUVF3Umpja3dqMmJDaHFYbzh5bTJKMGE0R1ovMXk0YU1QNnRIWUZYV2xF?=
 =?utf-8?B?aXNjUmhVdXV2MWJEZUVjRmlFeCtUZWVBR2NGdy9kY0pPT3gxK1BOZDlyWjVS?=
 =?utf-8?B?V3dKbnlFeUFKQXMzNFY5eVhmdXdCRUVOb1FrY1pRR3VxSWRvZDM0akJRdzVi?=
 =?utf-8?B?dUhudmVKbUVrZkM2dXRsUU4zTUV5b3VOaXk0UWJIYzQzNHFTMXhMeTFKdlI3?=
 =?utf-8?B?OXo3VDQxZHhTQVFud0p6UGFndGJ0ck1RR1J5RjY2WjBFcE1tOHFzNjhHK0Nq?=
 =?utf-8?B?b3pqWUVTZC8wa0g5aG5Kb1V6TEQ5ekx4bnBMOCszMkwxR3JSdTRYVVdRcUlS?=
 =?utf-8?B?QVF6WlV6ZGxLRjhFMFJLUm1kMko1Yk5xMW1EL2x5RnJWTFZZVW5hVHh2NUxl?=
 =?utf-8?B?THJRRC80d1RVc0V2U0VRTVM0SUd3QytWYmxUOGFCWGg0M3NkMEovY3lVUzZo?=
 =?utf-8?B?QTlKQllDak9ySVdkNFZld2FVQVhiWkkwQkp2QzJrOTAvQ0lQbEtTQ2ZVcFB0?=
 =?utf-8?B?K1NqZGltTFJYVmQza3N5OE1UNzF2WHRHamJBUlhRNGRkR2paTHVCVjBXNjcy?=
 =?utf-8?B?c3FZU1llZGVoSVl1czdDL2c2RE9QUjVERTE2Tm83amFlMlRnTGNYUjRzT0cx?=
 =?utf-8?B?dDAvSWplUjdIQWluTngwandnQ3M1YXpwWTlPOUxkZkJxU0hkK1k1U2ZaZXhj?=
 =?utf-8?B?T3dYRGZPSVU0WVVtOStIUFJUUzExTWM1ZnR4MFd6SW1UNnVBMUpKWlZOZFBE?=
 =?utf-8?B?TmZFT2VSQUNSTlNnNWFvQUs5K3BzODQ4ak5pb2hWZzczRTR1U3o1SGs1Zkk3?=
 =?utf-8?B?Rk80c1Z4WEZNcU9iMTA2bEpNc1N0T2orYkEvN2tyT3gxVlc4ZXFQZ0I5d01z?=
 =?utf-8?B?aThBaTVWYytDcnV1aEl6cy9sSlhnejUrVXJQTWV4Zyt2Zkp6clhTTXNXRGFD?=
 =?utf-8?B?TEhJbGdBcjhvMzdUamFVOXhNR0o0c2FjdHhrWFhJNndicHdaczU0NU4rQkw1?=
 =?utf-8?B?Qjd1ekZJb04zZFIwL2hzeS8xa0JwV3JCTTRucHFNblVzY25KRnhCUXoveDBv?=
 =?utf-8?B?Z1RzSmVuZkZBeVpXejJ4V3pNMTMvQ0o4bGdHTVA2Q1pEL25XN0F1SUdrTnJ5?=
 =?utf-8?B?MEp4UHdkUDV2dmgxZ2tKNmxaejEza3REM2Z1aU1NSXBNaGZkaFBPTEpHeHJL?=
 =?utf-8?B?UEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 77b70351-ad2c-47f1-812e-08dd5d4bee7c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6430.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2025 07:44:46.8639 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Z31J28BuTaePqKSpoeVEtY6TmSAz4sXmKZnCzCJXj9Nr282BQG1TwXWlNCcEOA9u1Jzqgt7wI6Ecl+cqn32WA5hrRTg0f1m6cFEwzywnQi0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8433
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

Hi Krzysztof,

On 2025-03-05 at 17:31:49 +0100, Krzysztof Niemiec wrote:
> Don't we run into the same issue as in V1, meaning we use an unknown
> current->active_mm (since we run in a kthread, and cannot control it) to
> use as the current->mm? Maybe a better approach would be to create a new
> mm for the duration of the test, similarly to how the patch Janusz
> mentioned does it? (51104c19d857)

As per discussion with Chris, using active_mm is the correct way of
enabling current->mm in kthread. On the other hand it may also expose
issues with underlying tests because they didn't previously run on such
hardware. I think potential fixes to those tests should be addressed in
separate patch.

Mikołaj
