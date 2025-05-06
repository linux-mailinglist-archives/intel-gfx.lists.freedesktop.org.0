Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D2CAAC07F
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 11:55:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59BDC10E657;
	Tue,  6 May 2025 09:55:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kXWSOXPI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A85DF10E657;
 Tue,  6 May 2025 09:55:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746525337; x=1778061337;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Jb8EFOrlreGQicyKCaWEmbNQwnwwlniTDzyiyv9FVxs=;
 b=kXWSOXPI16/ThI4DYfb07U8xwSQyYpmDXT5pBhWWzlF8o5JuOYHgLN3z
 XzekS1wHQ1tk4GRU64OZwA7wxIWnrtpukoEVFZ2c0/YPF6APMxsY5o7xM
 fqJyYjvfFlkdAUu/OHgOJUb//jaCOY3aXLb2Ox63n1ejuapxdBKEtHR74
 ghguysKcxdzvwOYg3I07VYldazHBo6DaUuPi1+yVYGp+w9LZAFeBFmeZs
 GOyLhHbdAP2TBkjzSW8Gu/G5cv0Pb0lL/cHgqER6vYUnaoyeMo4wt7zdl
 MLZV6JR6Xr5wCGUMXW7o0YEeu2ziwXM3JkYvcOPNfHZpG0ohG4LafEFzz A==;
X-CSE-ConnectionGUID: 4Ys4VYNBQl6pqW+Jjfz3sg==
X-CSE-MsgGUID: tPGFZT21SbuyloEBrlMZaQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11424"; a="48090374"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="48090374"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 02:55:36 -0700
X-CSE-ConnectionGUID: n+HBpk4uQI+TEgkVrM4jUA==
X-CSE-MsgGUID: XjJ5FGuvQKuMi18KtE2viQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="140324125"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 02:55:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 02:55:35 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 02:55:35 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 02:55:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aVGvsmcU7O8A9OZ2xpzH9F+4Qv7V2RH9bI40bfihUSz/kAA94mJHrR8rm8eu7q1qe50zH8sja3UMe6Bo0iWpO8mpBMCAzRJ/4nfeAxdmblWupEuhQQAHzmL5nJBqri1GRrXRBv2gS68FdacVKfKo4sW+EZW1uNoxaMW2NoGTI2K03JM0isIULfEfB1/oeBM+hO2Zr+umjTMtT6pQRj71EIdn7/FYb5kd4QfjbS1rdvFz834mh2O1p6Y+vWfnmCq6nSBJACPNxxmI5MQkav8mdtAEdMGejcNBH9c1n6DiOOMt9ItqHE/YUlQtlFj7HyqIrzEE9T39UW/Wkcnc8yh4GA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RF+BfHgedE7o1cSgldPwrJSmTT1z//7gTZdO1tD8jqw=;
 b=c3kxfskcldil/xtrhWzezPO3E72a/VdnyNkv5BfO0ECrJKBqjvbvkWIRsNIVIpzthl3xt79cMzy905KqFLkrTcvymGHvlJDedSgL70wlRIj73H4gGbsdeNfGTzTIEQ2b3aY7v6Ld7ThgUrwrngzWLa3WLPx+ZMr0DX1ddFQHV6LPOG/JrHjYLf7E1xfZozzVnLVpmZjP2dPchfcVopXrXuqqJ30ty4N3vEpuMsC8VD8oIlGeMRUDh2ZWRDttMCctW7A5m1LbtruxhyyYZvf9ih7uIxdkZyOzrtV9mo+ydnLJ8pfD0dxO2b+fz48drZReuNBKNb7R26Tk0cHwQWWK9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BL1PR11MB5256.namprd11.prod.outlook.com (2603:10b6:208:30a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 09:55:31 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Tue, 6 May 2025
 09:55:31 +0000
Message-ID: <a8019063-023e-4608-82fd-1a59b86f9939@intel.com>
Date: Tue, 6 May 2025 15:25:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/12] drm/i915/dp_mst: Update the total link slot
 count early
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Jani Nikula <jani.nikula@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-5-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428133135.3396080-5-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0101.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BL1PR11MB5256:EE_
X-MS-Office365-Filtering-Correlation-Id: c0b141a2-5ad0-4a0a-671c-08dd8c84239f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cndudDJMMXB3V1BLWjErMW51NnVKeG0vaVYya0FxajVNNE9RZ1hZS2FNK3g4?=
 =?utf-8?B?TjZFZzlOdTFNYVc4RWprc25XV0VjNHQwb0JWQUFOYWZpNWN1L0ZuVGttbVhZ?=
 =?utf-8?B?aXVIcDlTZ2VTOFJoUmk2RnR2dCthbUJScUR5c3JKN0txUTQ4djVaeXJmKzZi?=
 =?utf-8?B?MWl5Z01nbTQyazFRbkRZdi9BTjl6UHVueFl5V3ErMFJzNkM4Q2NLekhBR3hZ?=
 =?utf-8?B?aFpzdTBvVXFYeXJJUFNiZ1JmWVZQSkc2NDNmMWlKZGNBWlk4VUpMcmljK29I?=
 =?utf-8?B?WkVrM3oreTIvUTZIdU9yNlFxSWN3K3N0QmJlZS95VzFFVWpqOG1zTEQ2YUVZ?=
 =?utf-8?B?TlNrVC9lZEdFNHgwbExtQkM1WmVIS0lXOU5MSlVMMDhxWFFiQ1FKYWd2eWVB?=
 =?utf-8?B?aDJqNHNOeVhpZEFmOERTMFpneTF1Y1ZTcGIwd1NpdHREeE96SlhqSk95NU80?=
 =?utf-8?B?NGRKcmE1ckN0QVhodytvdDVpRnhZVTZ3ZE5qd0M0bVExL0hNSGhKWmlML08x?=
 =?utf-8?B?K3BnUmdWaHdOUmRNTWhQR1lEZGdESStIa1FjaEg2UDltQTZhZm55NTlBUkpi?=
 =?utf-8?B?UkNRZE1VbHd1Y1hJTmNmMjNsVGxUV0JCeXdZWi9sWHA4aFlMUUhJWElkS0VV?=
 =?utf-8?B?ekE0SzZQMUUvUGhmc0ZDRzJ1ckx1YmlQdzFMejNCSWZKR1ZKd3ZaSHlKNnhB?=
 =?utf-8?B?cGMrNVZPV041UjhTOThydlZXcm8vQXhRQ2t5NG5BVStnc29PWFhIYlVFcmRW?=
 =?utf-8?B?QllpcTYvb1lQZ1NiOTAxcmFSZW83SW54d2FBZzJyZXRPeGNJbDRUUGxGaDlR?=
 =?utf-8?B?cnRqc3YzbEZMTTliUGFrcWZjeFd2cmRtUXo4S0VTVlVxeVBjeUNIdXVTRUZa?=
 =?utf-8?B?ZStQUkpIV0JEY21tVG95MmpHRTVtb1FYdGxUS293TXl1emVDN250MDhBMWdo?=
 =?utf-8?B?aGsvRWtLVGhFMGxaOC9ib1FTcTM0aEZVRlVtYzkrVGdSLzF1c2dJWk0vZTR1?=
 =?utf-8?B?R2lCZ0hmQWVjT3RQRm5vaGw2S21sYkRPamJ5QTh4bTFoSFhWTWIzaG9GeWhk?=
 =?utf-8?B?aTFOVmVCT3BCV0E3R3U2UlhXdnZnWE9jaTFqaDdQQU1jd2pJUEc4bmJMcHgw?=
 =?utf-8?B?bHJXb05COHF5cHNpbzdXM3BBaGdrekQrTHZyZS81UTVJbjB5OEZUaC84aEdi?=
 =?utf-8?B?MnNaSUt1aEx5dGQvRVB5T2RFKzBOVjM2OTQ0aGQ4NTRXVzB5VkR0MVFWZ093?=
 =?utf-8?B?YVlQRVJ5aFk1OTVZNXNPeTVhWjdTbUZzSnpFQTFPcGt4SSs2Z05BR0w2elRB?=
 =?utf-8?B?SjhyWlMwZXRjaWc4ZmxWUmFEUS9Dd3RNTkhRNmttNG9OWU9HejJpeEhBcHpW?=
 =?utf-8?B?d2V2YW9zUWkrUjZOUXJjS2xwVDFpeXcrT29GWXl2NG1sT0Q5M2k2ZU9vTUNI?=
 =?utf-8?B?U0doRnVtRGhFS2xjZlc4R2NleFhOSzJpOGcwMEUvSlphVURzdk5QczVqQ2pX?=
 =?utf-8?B?eFVBQVkyQTQ5Mm5BazhSYjNmbCswSDgvejFiVUJydXppRTN1UVB0cTZiWkxT?=
 =?utf-8?B?YVpud1pWR0h5NmtsNDM1c1hQcXZIWDM5anFGejZ6WXIxeDhIamhtcngwalVU?=
 =?utf-8?B?ZWpIc3pwcWxuUm05bUwrK2hFeDQ0Wkl6M21IZVhUZFlibTNGSWkwMGJJS2Fl?=
 =?utf-8?B?UXdIRCtJbUNZUkZWcWxwTlFFckJlV3VjSUFuQnNpc3I4alh2R1NSajRQTHZW?=
 =?utf-8?B?N1ZNQmIyRDlJY09kanFtWlNoaHN2RmtTNzFLOW55LzNqTXlvV0xuMGo0V0tX?=
 =?utf-8?B?Y0N4U09GdDRpOEVudnNobjU5djM0YTBmVk9nNStTMWhzYTEwQ1VXSHB5NHJy?=
 =?utf-8?B?b3NxUXdNRjRINE1CSmhRUXlvWXRmOTB2MlZFSTFtcDQ5bVE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N01TQndGU095T2tEby81bVZ6aFNYTWNLZTJRd3hDUUI1L1A0UHllOWhhZmtw?=
 =?utf-8?B?NzdMZGxFRTVKRWdOTDhYT0lYeS9pUG8wcE5kbnVVVDF1bGNHQTdHaGNqWGZt?=
 =?utf-8?B?TFA1aXlyQ2tLUE5Mb0lZM0k2VnRRRlNkRW1ZOVA4NUNxcWx1MEcvUTFPV1NQ?=
 =?utf-8?B?UTlKT3pOeVNidVNOdUJLZWFWRjZzVitnUDhrZVhoclNDbHJwMGR5OVg0S2NW?=
 =?utf-8?B?UUZnNjUwbkpPTVRJY2U5TnFUT0UrdGZYK3ZLaVdaTFdHb2g1UXlKY0pPeE10?=
 =?utf-8?B?ZDIzS3dKMldrQU9EeVI3Tko4K004VnVKUnIxdGh5QjdIVExwVUM4Yk1XMTk4?=
 =?utf-8?B?VGhMZk9rZXRqMHN2THl2OXI0Sm1sUnlFZ08wektGL0FqUm9VVVdaandiaWxI?=
 =?utf-8?B?M3M1TEhoNXptdEV1UUFmWHFkdEFhSjNyMkVsWFg3VGNLc0szcG9CdUU5UUhZ?=
 =?utf-8?B?RytMUDk0YlM2ZXFPZGJEMjVJMVo0MjNBY0V5QmlQbmhueEFRZW9hb3crR1o3?=
 =?utf-8?B?TVJWVitteWJ3R1oxcmNyOXhXTjdTOFZDbGNoSzExLzZnN08vYmFWS0ZPdnl6?=
 =?utf-8?B?SllHY0dnLzR0TzNUTzRFdmlneG1od3E5aGJnampUSjFPeGdBeVoxdDlVdXFW?=
 =?utf-8?B?Z3lWSFBHZmw2MmJSMm1qVHVySFpFamxFS3NYcm9ZUFBkV1hlMWU4Vno0UEYy?=
 =?utf-8?B?N0YrR293bk9jdURvWGc1T1lTL01hWURLTEJtZ3c5eStmR3pBSEZ0VlI2cG5j?=
 =?utf-8?B?NUxHa1VnR0lYUGhTNStHd0VSY0ZqRy9SS0Y1RmIrcnZiQ21zUGhlUjlQeTJT?=
 =?utf-8?B?c3hCOGZFUkpISmNwMGdYQ0c4YkZ2cGNzQUlOTjkyVUd4eG9HcTBwUndsaFZH?=
 =?utf-8?B?bDg3S2NYek9Gd01OVGhuVWh5T2hxMFJobzYyamd1cVRGUGM3UnBLK0c0Q092?=
 =?utf-8?B?MnQ3cUE2S1VaTnRSYnBMNjZxTkpHSDVISVRkT1o4cUxueFp2aTlMa1RoSlJJ?=
 =?utf-8?B?eEtXeEZQQ0FlOGhKRERJWFV4UWhsQVdwc1dkVlFCVElYRmZ4QSs2eTJkeVQx?=
 =?utf-8?B?NEZDZU5GbkEva1d0TDZEOTQrNlhRV0FOTEttN3pNVnhRa1VITXVJd3Y1akNl?=
 =?utf-8?B?RnRiVkdPTFVxbFRRTFNGWGRaQUFEOWNZV2ZrNENYdHE5emJ6MDA0NnVLZ1pz?=
 =?utf-8?B?Z1Z4NWx5NnZKS2tVbEtCNjdrQnNwN0lFVWNOd1ErV2cwMTZ4NnU2amxWRFAr?=
 =?utf-8?B?RGsyZGZaOE0rUlB5UFA3bmk5UWtoaGxRN29mY0FhUWFJVk1sdFJGeENSanRp?=
 =?utf-8?B?NGxoRmZEN1BYUmhIbGlOUExhdVVQdmp0RHl0SEhZeFJSdDU2RWd5c2tYelV5?=
 =?utf-8?B?SlIzL01YR01wQWJCdmtENFhFcFg3OG1ac0VtS1NEc3BjK0dqeG5FUUNCNkpt?=
 =?utf-8?B?TmtPYzBHWllSRkxIbGxGTHlCVW0zVGZvL3N0Z05yYXZmSzV3VUg3NXl4Tmdh?=
 =?utf-8?B?VTlhZjloOUNlTW1KUnMvUm5ycExSc0htTWNVbmNaRG9YNG9vZ2VPQUtRVmNQ?=
 =?utf-8?B?bHl4OTFOSHdpbDZ0SEFDS01Ua2FFazNINVVsaTNabjhuOCtvODdJSmZaWUZF?=
 =?utf-8?B?Z0FJYWxET0pMb3o2b1hoWUJTbVJCVTdZVUppdkw2THJxUWhCUHpZVU5XTWs1?=
 =?utf-8?B?SjBHN2xHcFJ1b1JHVG9VYjZWU1c5VU1kbmE2bXc2ZENCMFQzNWRNL0tpVS9u?=
 =?utf-8?B?ekk3N3ZGSlNEWVNRVFgyQjBvTkFWOW9QK2VBdFB1YTlKdG91TXFNSnQ0UWpL?=
 =?utf-8?B?L2pSREFrWldkYlNFTXcyM09xYkpYQlRnWnhRTDRLSjNUaTRwOEkyT0lGaEt6?=
 =?utf-8?B?emVWc2xwSU9COEtIc05ORi9OY0c0NXFYTDZmVEdEOVlUSG5ZUlZWd2pLUVhB?=
 =?utf-8?B?LzA0L0VsNk9mcWRkdGdyZVVVQXc3RUNIRWlLNzUzajJxRXhZM1pYZ1NhKzgr?=
 =?utf-8?B?UFlqMVdibnZMeXI4eDI5K3BmMWxwOW9ncDJlZHpTZXpBc3pBcEI4RldVS2VM?=
 =?utf-8?B?Sm9uV21SUHZ3Ujc2eHYyVEx6T01zdW1xYUlVN3dnUjlyVDBaMEVTNWpYckpP?=
 =?utf-8?B?a3JjYlVxNE5CTWdkaXZWeWU0Z1lVV1E4VFBZVnVVa3hxUFQzS0FWbVVuem1Y?=
 =?utf-8?B?TVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0b141a2-5ad0-4a0a-671c-08dd8c84239f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 09:55:31.8759 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Abf/xwaUkAHlKHwirMbczkemZoKctKUsQtB8bpVeYSEZHylKN8t1UPN82R8hwxSRhWBKFrqU/YxZCeaVor3+w57nANQzeHPnj/lH/4h2kEg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5256
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


On 4/28/2025 7:01 PM, Imre Deak wrote:
> A follow up change will check a selected bpp's BW requirement in
> intel_dp_mtp_tu_compute_config(), however that requires the total link
> slot count to be up-to-date. The latter in turn depends on the channel
> encoding and hence the link rate used, so it can be set after the
> link rate used is selected.
>
> This also allows simplifying mst_stream_update_slots(), do that as well,
> moving the function definition before its use.
>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 36 +++++++--------------
>   1 file changed, 11 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 8e1ed3b38217d..59afb550cd0cc 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -261,6 +261,15 @@ static void intel_dp_mst_compute_min_hblank(struct intel_crtc_state *crtc_state,
>   	crtc_state->min_hblank = hblank;
>   }
>   
> +static void mst_stream_update_slots(const struct intel_crtc_state *crtc_state,
> +				    struct drm_dp_mst_topology_state *topology_state)
> +{
> +	u8 link_coding_cap = intel_dp_is_uhbr(crtc_state) ?
> +		DP_CAP_ANSI_128B132B : DP_CAP_ANSI_8B10B;
> +
> +	drm_dp_mst_update_slots(topology_state, link_coding_cap);
> +}
> +
>   int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>   				   struct intel_crtc_state *crtc_state,
>   				   struct drm_connector_state *conn_state,
> @@ -296,6 +305,8 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>   
>   		mst_state->pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
>   							      crtc_state->lane_count);
> +
> +		mst_stream_update_slots(crtc_state, mst_state);
>   	}
>   
>   	if (dsc) {
> @@ -513,27 +524,6 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
>   					      fxp_q4_from_int(1), true);
>   }
>   
> -static int mst_stream_update_slots(struct intel_dp *intel_dp,
> -				   struct intel_crtc_state *crtc_state,
> -				   struct drm_connector_state *conn_state)
> -{
> -	struct intel_display *display = to_intel_display(intel_dp);
> -	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst.mgr;
> -	struct drm_dp_mst_topology_state *topology_state;
> -	u8 link_coding_cap = intel_dp_is_uhbr(crtc_state) ?
> -		DP_CAP_ANSI_128B132B : DP_CAP_ANSI_8B10B;
> -
> -	topology_state = drm_atomic_get_mst_topology_state(conn_state->state, mgr);
> -	if (IS_ERR(topology_state)) {
> -		drm_dbg_kms(display->drm, "slot update failed\n");
> -		return PTR_ERR(topology_state);
> -	}
> -
> -	drm_dp_mst_update_slots(topology_state, link_coding_cap);
> -
> -	return 0;
> -}
> -
>   static int mode_hblank_period_ns(const struct drm_display_mode *mode)
>   {
>   	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(mode->htotal - mode->hdisplay,
> @@ -736,10 +726,6 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>   						  pipe_config->dp_m_n.tu);
>   	}
>   
> -	if (ret)
> -		return ret;
> -
> -	ret = mst_stream_update_slots(intel_dp, pipe_config, conn_state);
>   	if (ret)
>   		return ret;
>   
