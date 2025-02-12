Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9428BA32ED5
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 19:45:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0858110E009;
	Wed, 12 Feb 2025 18:45:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cE/rYNcz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D755B10E009;
 Wed, 12 Feb 2025 18:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739385924; x=1770921924;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=dw/TD/dgJoptbbTYpW1ZRwBR+vUkL092Ts/xNzhNDAU=;
 b=cE/rYNczcG3KLDRP3C0SwPr7wEp6SlvNk+grP+qZfy68j/LUiY2RWGlV
 CzBBQwmENBEnE9IsZ0zP0kqyF+/UwtT26F53SyMTekhmI9ds4r6vNix8R
 CqydOzfoyjhdOsjTWRlxlnwhyXN6XoYno0amtv3nuDCWxRxDJw8RCLggf
 x2QSei/gidp/0Mk32/6IE14jFSWJ1Ya6iN+Q3krHTgnmstgUyKVdW5FlA
 WgwI+kKSpP/0SSyNTh+fRmIxoiKNQwkpDVNqjQm+SBzaFm+gIagd8uoKN
 +MA6Yd1oincgmvCVKGUWngfPpVaskppzxCeDW8qkcGG4TxfC6XDmg8Sk1 w==;
X-CSE-ConnectionGUID: iDnqbbSHSHeWH19o+m210g==
X-CSE-MsgGUID: oLIdJk/ARi6wmggtSIlqAg==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="39761744"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="39761744"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 10:45:15 -0800
X-CSE-ConnectionGUID: ovJXNNLnS+myb2qdhekETg==
X-CSE-MsgGUID: Mx24Fez3SJ2s7ClS6NQAXg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="143750286"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 10:45:16 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 10:45:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Feb 2025 10:45:15 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 10:45:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=O39xgVday5Youppmmm3jT94BePAkqma85kY5c/wJ1YuwS0lDCRoDNr2Ny3Rko8uUhh0sPvzw4PrrwXUEeEYYr0vD3sr/XwR8drRxBQSeMqIJhecR8wrgYjzv0PZCyp5g5Xe0YZlgwkecVs5andlLQw9BCIRV1TXmaAPiNCu5ayBOcGUCMt1MQsHT741l4FrV2FWt1NqmXoYWmkCwk1e8b0izInnvsVW26E1rKreNFuUGdou7DOR5FBF9ehvN+xbreX+JevY+MfrscJq4rM9qL/z/X0eGeCZKbrOdsi5oR7cpakUpUSoOdAuZAfJeYJWVwHS3v2NN6K8upDhrJ5UmoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Be+TAesN67fugk72YQQ7ivmrT/wsDRwzjmqALvq3qnk=;
 b=sCqdYKXlcaEp7/Tk4lXI5Vd0qXwzppEmhjI2TZAntEqfLcX/JwiOrFUYXHBa4u4N7uLEXNoe8Mb43F40GsYh276qPDGGCAAUZufqexBXRxYBC1zuTVyQZxMtcv114jEgfmypGeq/M5f4DJjd6f/K2244i2bk00sxfyoP0VfwQW6+8Os6OEAOlLQ/xwMXNcJO1gXf/9QpsgTxryuFw5zBMxToZ4cZxgG3pY0ypGn2Nzj9f7xrHRqSd2IeGb313anrp3NKQ19FsI/ehq+9Yi43RWnpVddeLGP493RVd8K081h/Bl0fhdoE5oTlxD9ldvdaOgMCFprWttD4tqLkSou8wA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by CY8PR11MB7169.namprd11.prod.outlook.com (2603:10b6:930:90::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Wed, 12 Feb
 2025 18:44:32 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.8445.008; Wed, 12 Feb 2025
 18:44:32 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <173938316839.145254.11637419535806568600@intel.com>
References: <20250212174333.371681-1-gustavo.sousa@intel.com>
 <20250212174333.371681-2-gustavo.sousa@intel.com>
 <Z6zf00kDlmteGiIq@intel.com>
 <173938316839.145254.11637419535806568600@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/display: Use explicit cast in
 POWER_DOMAIN_*() macros
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 12 Feb 2025 15:44:26 -0300
Message-ID: <173938586622.145254.18264992862975057866@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0171.namprd04.prod.outlook.com
 (2603:10b6:303:85::26) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|CY8PR11MB7169:EE_
X-MS-Office365-Filtering-Correlation-Id: 56ab0fdb-6001-4f1e-61ac-08dd4b9549e6
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VDg2OFkyRmFXaExlMVZRbVFoU0RpcE9McFNsdjhDd1VzRGY4Vjhwa0NnOW9Q?=
 =?utf-8?B?UHIzR1VXUVY4TkltQW5BOElvVkNHWFRRdmdyT2NoOUtkdTdFZ3RyaTA3RUtu?=
 =?utf-8?B?TXdiTmFPV3BLVENPWW1oNnFFV3FtbnBNRmV1VlN0Q3FlZE80RVlTcmRiaGlr?=
 =?utf-8?B?MGh2b0xpa0t3U0lsQjJ4dXBiMmR2UEpCaUQzZjVmRUVzSW1kdWtTWXNrcHhS?=
 =?utf-8?B?V09kL0l4MzRqOEllK1ZydmZBamFScjlCbVVoc3BOclhSL1ZOMzNKN3k4L25u?=
 =?utf-8?B?TE8vTFBEL2V3dzI0c21OZEh2T3J0THd5bFJPZ2U3NzdZeXhnZE9teG4xVnJM?=
 =?utf-8?B?ZDVCSnFrY0JFeWVCMW5wM3VCY0Jobm5Oc3BCMGhiZzd6Q1FkWlJrRkQvWEox?=
 =?utf-8?B?WGpkU0pIVGQwZTc5S2cveXZ0ZHN2MmRqdFNpMW5seVBIK25LN2tlbTRuMXVU?=
 =?utf-8?B?eUNEYWRsWFRTY2pmejc1R1QvMXpBUVoxcisvV0NnMEVwQzhWRFdYQzhNVGEr?=
 =?utf-8?B?YXJReHo0YmlOVkVqaUNKZDVGRlcvRElJb0dEVDRZanNJU3YySFN0TmlHU3JK?=
 =?utf-8?B?ZXBxMCtBSkZUaXFvbkduYWJjWC9wN0xveWxTYWlWMFFOV2U4Njd0bVNGTTZh?=
 =?utf-8?B?T0ZQU3lGd3o2VHhOa1dqR2g5MEZBaXkvN1orTUJycU9jb0lLelZLQ3Q1Q2Ja?=
 =?utf-8?B?elJTdkZoeDM4VG9hdWhjQk0rV20vNEpFYkJwZHQvTCtlQy83ZUtOT2puWEI4?=
 =?utf-8?B?WjlUbGtUSXMwZnVSbVVpa3c2U0VvOUhxajJkdFl5bUpIVW0yMEhtbHQxWkxO?=
 =?utf-8?B?Z2RldjZhOXpWRjA0UTF2VmdiUnMrc01DNHVrSXRFWnV2UjhVUldMRmVmU21h?=
 =?utf-8?B?NlRTMDFLa2J6V0FFbXZ1VXBXVG1obG1CeFZJblNiOExLaCtmYkhsWUZxL21W?=
 =?utf-8?B?ZnREVytLOHJpTlIwajhxeG5uRUpQMFVZY1FwVVdueTRPQXZ6R05STjVna0s1?=
 =?utf-8?B?NTJaZ2UxbE81bEJPMGQvd3A1b1l4L2tVQzBjZ21Lc1IzcGQ4djF2Y1Y4ck1Y?=
 =?utf-8?B?SlFGbjdocDJLcmdKa3ZZcDFuS25yd3lUdWdLdXMzYTVnckEza1piQTg0ZndD?=
 =?utf-8?B?TkpRVzA5M1V3R3dXLzdXT2JVT1hIbDl6dG5DaW56V2dyYTdaczVxRW1kb0Ny?=
 =?utf-8?B?RXM2OWxzUjh0ZjIyNEVvb3RSeWNyMEI1cXMvNG1PdUdSZXI4K0ZHbjg3UzM5?=
 =?utf-8?B?RmJNQk1xOWRhZWZicVlaeFBDWmszUmRLUkFSSzM3OW8xcWt3dWg2KzVoN3dq?=
 =?utf-8?B?cHlyZFdsVUFtZmJmd1N6bDU5K2dyNW1saWhGTzdvMUx2UnpCWWY4Z2pyRStq?=
 =?utf-8?B?dmpXMWRPTU1KejVVd01hejcwVlJBWURPTmdSYWNJdlNpTlZMRDVoSUZVYksz?=
 =?utf-8?B?UkhwUUZaNTV4N2g3NUg5YUwvZ2RqT1hReTRWajcrRXhBK3dSaHdlTkphQmNE?=
 =?utf-8?B?aStyQitUWllBRWZKN2NIVGNtdE5DRFNVLzlEb2M2Y1FJZXp2REpqcEZ5WW5l?=
 =?utf-8?B?VFZva2JXTEtzUDUwT1ljeUtFdmRaZUZ6OUl4WWo3Ni9NZkVOMERpeGtwWk1w?=
 =?utf-8?B?ZGJsMUM3ck9VNDBNZGV5dTUyWGdkMVZHSlBzNmJOZGNxMHRTYUFXbWp2Qld3?=
 =?utf-8?B?dWZFVEQyZEV6cm93Zk0xY3JveGdnaHVqQkpIeDVZckRBZUpCTGtlMHNXc2hu?=
 =?utf-8?B?RjM5VE9xT2swZ3dOR245Uko1ZTA1VS9RL25tK2FNVHZseGJYM3h3cXBRS2s0?=
 =?utf-8?B?WGdzLzdOUEJXQTRCRjMycnB4RnlEQzlDVUFzRUxpZUk4S0Q1THdRUjB2MGxr?=
 =?utf-8?Q?xtPsjBGvczt90?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TXNPQ0ljdUM1RFk3K2RyOHlJQXluWTZrWE5LVEZDK1lXalkwSzYzL25QWmV3?=
 =?utf-8?B?WjNPSE5VamluRWp2MWc2VC9wUFlWakNueDBZc2xrVTNqdDRvZ3pSUHdvaHVo?=
 =?utf-8?B?RGhFbEVoMUFnQkN0LzhFWWVkMlhyam00VWhiRW0xOHd1cnJVM2RHaUlkZnJT?=
 =?utf-8?B?RzZDbXVJbkNpNkErSHpJK1o3M2xGbUViQ2lUTnhJQ2QyV0ZwL2pzWVYwaGpV?=
 =?utf-8?B?RW44bUIweTRCdERtM0JNWnlSdTNGSzlsMCtuVzFRc3Q4eHFQZzdpYmMxNnph?=
 =?utf-8?B?ck1IaE5lemVNRXMySlArOGFreUx2NGFFL1QxSy91UzNkTEc0R0hZb3dySFh5?=
 =?utf-8?B?d1dmNmlyMVIvQkdKYklRVytjQTJzV2hzNy9CODB5RTd0eFNmUVZkTjRIa0Vu?=
 =?utf-8?B?WFZ5VFFGSnNnNnVqM2FFdnA4SmswN1Q1amp2Njc4MS8zazQ4Vi9URmZWZ25P?=
 =?utf-8?B?Z2RGeVQ0c1plM0JHQWEwMDNpZlREcnY4a05sUzgwOHQ0cmp5MW1OcnlYQmpO?=
 =?utf-8?B?bUQxdCtFMFAzdTRMMnVEN0c5d2tGUjBYODVTZWRtYnV1M0MrczcxcSs0dG1i?=
 =?utf-8?B?ODd6Z0NmNlZXeE9qTGRrUGkxSU1EY2s3a0Z5UDNDWmpMZDNTSU40NWRCOFdR?=
 =?utf-8?B?SDc0MDFZaks5S3BML1VFaEw0Skd6M2VCTUxIVTJxNlRMVjRxTzQ1MjVtSng0?=
 =?utf-8?B?N2w5bFpYaGpPZFlHMlJoQ3RPNzVIRG4wSWJqZDVuM3lNbm1mWmIxdjFRdGlP?=
 =?utf-8?B?NmRyS25KUjZUVW9nRHF5aVZBeVZzTHlyNmdYZXF6eWRYVnNDTW1heFE5K014?=
 =?utf-8?B?VUxOZitGRGhWbUR5RW9LUkExSVA2V1NaUHovS0ZOWTk2U3RhTmp6bHYxWUpZ?=
 =?utf-8?B?bWQ1RC9OSnRFWU50MVhSamFLQ3R6SFRFaFF0ZW0xWThCclp3d2xNaGU0TDdP?=
 =?utf-8?B?d25FTE5pVm9Vays5ZmkyeFFtaUVGTWhUUU9VMzNsZVc5NXJEWHZhaUFkN3ZT?=
 =?utf-8?B?WG1Peld2cElrdngrSko2OUs0Qm9ySHNjeWlqem9iejZmTGloV0JBLzNkQzVq?=
 =?utf-8?B?eWhacW9QUE1Zb3ptYkNVYklSVndzT0IwejJVWDRzT3l1YUVCY0xmdjhjRHBR?=
 =?utf-8?B?Z3cwckFaWkRjRi9HZnFLVktkSjNnM1ZJZmZ1cGRlZ1RhQ0xQelhxYjlUaW1o?=
 =?utf-8?B?UHAxcFI4RkdGYkNSMS9idFJMVHNnRUFVcWx4MTlsYXlaK0trbzVMdFRMWnJY?=
 =?utf-8?B?N2ZpYTh2M2F0U29aTXJYb0dreWJaeWF1TWFyQ2lwVk90M09hWVhUd0tXL1Ru?=
 =?utf-8?B?SS9qVkFOVWxpWjVtanRPZUZXanBGV2tpbXduZTg0eEZEVGkzeFpQUHZTRlVh?=
 =?utf-8?B?RE9FZDlCRFdUZUk2MHgrNGVrN1laOHhvOUNHNEFWaG5YSmkrTGxXMnB0WXhv?=
 =?utf-8?B?QlNHdzVvMzc1Y09jUThNQ2R0cDVTaVo4YzBQc0hCT0dnNkNTVEJ1ZDkwQlkw?=
 =?utf-8?B?VHVPckFCcTdRMlpsNlJNS0hyVVFua1hpYzZxcm1IWkJQa0trV2xJQzdFQThN?=
 =?utf-8?B?L2tlUW9oajAyR3AzMkZzeGVMOG00VS9lZUhiQmQ5ZkNqcXEwTFRxaWFOUjB1?=
 =?utf-8?B?c01wV1RXNWNhVlZlSnRpdmYrZnhPczE2UWE1OTJJZVVsdVBHblV4ZmZPSkFK?=
 =?utf-8?B?bVBjNkZVaGZLZzYzZnlwRTZocTFMS202YU9hVDhyemppMjJwd1RHbVRsUHZY?=
 =?utf-8?B?dG5iYTRxa3AyVS9jT3JLUmtzNWVGM1BnQmQ4ZGE4Vm0yUkkrLzVhdEJSb2w4?=
 =?utf-8?B?STJ3NndZYzdRcWN6ZHkzRzR1S3BRQmkwUEVzeWZDcDE3TW1MY1Fqa2FNMFJR?=
 =?utf-8?B?cU11Um5SSU9rRkJGRUtYSmJrZG12Y2w0eVVwZ1U0dEUxeG1KNTNQN3R0bFJv?=
 =?utf-8?B?Z0s2Y2krOHRqUjRWdDNxSSt6SlRFbnVYZU4xZmhiZUFpSHNzT04xRWovRGtM?=
 =?utf-8?B?aFB0MGxER2FYRDFLSVZFNTN3a1M4Y2JNaW1CV0ZMdVMzUTQ4UzdKdFh0aHU2?=
 =?utf-8?B?dzJoNE8vMHU4bHlyYjVvSVI2Q2M2V2VTUHpzeVdBenc2SlMzTHlhanV6SEpT?=
 =?utf-8?B?OFlTdlF3OHE1Rm0zUS8xRTNKUjBXN3BZWkcrRWp3VHd2NWd4R1pHNjJEaU9G?=
 =?utf-8?B?Q3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 56ab0fdb-6001-4f1e-61ac-08dd4b9549e6
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2025 18:44:32.0037 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RGSOlzLXBIfRFASjsLsgOK3VHmn/gxodDt2SRrfVMG43UFKisw6vzAcw5ThooNk0eaTjdFh/iRW3BVWwRqyz1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7169
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

Quoting Gustavo Sousa (2025-02-12 14:59:28-03:00)
>Quoting Ville Syrj=C3=A4l=C3=A4 (2025-02-12 14:52:19-03:00)
>>On Wed, Feb 12, 2025 at 02:43:16PM -0300, Gustavo Sousa wrote:
>>> Let the compiler know that we are intetionally using a different enum
>>> type to perform arithmetic with enum intel_display_power_domain in the
>>> POWER_DOMAIN_*(). Do that by explicitly casting the macro argument to
>>> int.
>>>=20
>>> Reported-by: kernel test robot <lkp@intel.com>
>>> Closes: https://lore.kernel.org/oe-kbuild-all/202502120809.XfmcqkBD-lkp=
@intel.com/
>>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>>> ---
>>>  drivers/gpu/drm/i915/display/intel_display_power.h | 6 +++---
>>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>>=20
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drive=
rs/gpu/drm/i915/display/intel_display_power.h
>>> index a3a5c1be8bab..3caa3f517a32 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>>> @@ -117,12 +117,12 @@ enum intel_display_power_domain {
>>>          POWER_DOMAIN_INVALID =3D POWER_DOMAIN_NUM,
>>>  };
>>> =20
>>> -#define POWER_DOMAIN_PIPE(pipe) ((pipe) + POWER_DOMAIN_PIPE_A)
>>> +#define POWER_DOMAIN_PIPE(pipe) ((int)(pipe) + POWER_DOMAIN_PIPE_A)
>>>  #define POWER_DOMAIN_PIPE_PANEL_FITTER(pipe) \
>>> -                ((pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
>>> +                ((int)(pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
>>>  #define POWER_DOMAIN_TRANSCODER(tran) \
>>>          ((tran) =3D=3D TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : =
\
>>> -         (tran) + POWER_DOMAIN_TRANSCODER_A)
>>> +         (int)(tran) + POWER_DOMAIN_TRANSCODER_A)
>>
>>I've generally gone for the=20
>>POWER_DOMAIN_TRANSCODER_A + (tran) - TRANSCODER_A
>>form for such things, to also make sure it works
>>even if TRANSCODER_A isn't 0 anymore.
>>Does that avoid the warning as well?
>
>Hm... That's a good idea; and I think it might avoid the warning indeed
>(maybe we would need parentheses around (tran) - TRANSCODER_A).

I did a quick test and this also took care of removing the clang warning
in my environment:

  diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
  index e354051e8982..d46b35dbe018 100644
  --- a/drivers/gpu/drm/i915/display/intel_display_power.h
  +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
  @@ -123,7 +123,7 @@ enum intel_display_power_domain {
          ((enum intel_display_power_domain)((int)(pipe) + POWER_DOMAIN_PIP=
E_PANEL_FITTER_A))
   #define POWER_DOMAIN_TRANSCODER(tran) \
          ((tran) =3D=3D TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
  -        (enum intel_display_power_domain)((int)(tran) + POWER_DOMAIN_TRA=
NSCODER_A))
  +        (enum intel_display_power_domain)(POWER_DOMAIN_TRANSCODER_A + ((=
tran) - TRANSCODER_A)))
  =20
   struct intel_power_domain_mask {
          DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);

The parentheses around (tran) - TRANSCODER_A were indeed necessary,
probably for the compiler to see that as an int expression.

We can get rid of the parentheses if we do (tran) - TRANSCODER_A before
adding POWER_DOMAIN_TRANSCODER_A:

  diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers=
/gpu/drm/i915/display/intel_display_power.h
  index e354051e8982..b15eb4fd5062 100644
  --- a/drivers/gpu/drm/i915/display/intel_display_power.h
  +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
  @@ -123,7 +123,7 @@ enum intel_display_power_domain {
   	((enum intel_display_power_domain)((int)(pipe) + POWER_DOMAIN_PIPE_PANE=
L_FITTER_A))
   #define POWER_DOMAIN_TRANSCODER(tran) \
   	((tran) =3D=3D TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : \
  -	 (enum intel_display_power_domain)((int)(tran) + POWER_DOMAIN_TRANSCODE=
R_A))
  +	 (enum intel_display_power_domain)((tran) - TRANSCODER_A + POWER_DOMAIN=
_TRANSCODER_A))
  =20
   struct intel_power_domain_mask {
   	DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);

I'm tending more toward the second alternative.

--
Gustavo Sousa

>
>>
>>Maybe these should even be functions rather than macros?
>
>Yeah. I actually considered this possibility, but went with the macros
>to keep the change simple.
>
>If that's welcome, I could go ahead with turning those macros into
>static inline functions.
>
>--
>Gustavo Sousa
>
>>
>>> =20
>>>  struct intel_power_domain_mask {
>>>          DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
>>> --=20
>>> 2.48.1
>>
>>--=20
>>Ville Syrj=C3=A4l=C3=A4
>>Intel
