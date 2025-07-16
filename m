Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9083BB07815
	for <lists+intel-gfx@lfdr.de>; Wed, 16 Jul 2025 16:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 649C210E7B5;
	Wed, 16 Jul 2025 14:30:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V7BPgLYh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7F0310E290;
 Wed, 16 Jul 2025 14:30:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752676219; x=1784212219;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JD3RtcNUOPHwBNgZIXL4Fl1bzCL0jZX8bauLnmMixas=;
 b=V7BPgLYhrqdglDfQq0c9yUpSlemSBD+W6PvRkIjrdnlG/pyNPYu5Xi/a
 jYRDzG7gMJYqjd2Ry4+BrunNu2XT+OaB8fUMjnyEG8nseQic537knFqrC
 oiQm+PqVB970yDsgg7OYFWuD3SN8mm7iIK1FaJ8MRKQP12ttRoaSSNczS
 Jt8+LC9LoFGH48s0gDW7rXHjgiG0lAhWj9XeSvKCxVmJhItrGm59UY5y7
 9HmyjU5K9voX/dF/U1iexEhG+2kjaOoVBo24yHWkDAlAWdkMbtM4V0/I2
 ATU5vs6DDXIZiEIfWQF8w1Ic7MLuVzeH+iL7+1K2icQFaJoUA7zLIN/tQ Q==;
X-CSE-ConnectionGUID: nmgjdegcQoCEatL7Xfxp4Q==
X-CSE-MsgGUID: v5VDYGnlRQGY4oXsfts6EQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11493"; a="55072647"
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="55072647"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 07:30:18 -0700
X-CSE-ConnectionGUID: mxZq8qQrQmSkLfWmQkaN0Q==
X-CSE-MsgGUID: oDY3cy9HQEintxUdfCfaJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,316,1744095600"; d="scan'208";a="158068613"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jul 2025 07:30:18 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 07:30:17 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Wed, 16 Jul 2025 07:30:17 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (40.107.96.66) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Wed, 16 Jul 2025 07:30:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=iD/+zRuWgTerMPmGhoabOELRQRgVgI912DDh6I2Bav9Sm6VAR6tU5BHlVnIWd/vNT7GeLLpumafVNps/JVTK9sbmvM5BK4Tgqp0g79bF2lEOkuojzW9jiI/jfQQG2cXPKuWtjuavgj1ByVTkhrGRzX1FUT0wnsUWkpnVlCCUpczwQXHZfhqL6h0ZTnbTSCBKkBgvM+5UADc7N2yjRE9GbRJUMR71PeDurT69YK1z9cffVa0p7LLTGtzgeIQNifMpBgMAsq4HBU4LlY6sXkl7+r5c0tPYqviEW4CBBzrcn8w+FJ07c+DVRTaLNqWMwp9CwLpf6NYh0phAoadQBLAaAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s8RDmarxE272AE8YQpzv48omYawXq0sdk7DDpB8lxh4=;
 b=u60RbiSFkMU8OHVUc8HHlCFT7zmaVEU41O2x4WayfQ2iKgxee18eThPArSkHPWNJcHv/RCNzA51+4gODUCbIfNU5FJp4lfWKScZQ1b5I+qhtCzdrdImJFLDt+P9YMD2w/YxxS5R5X2ag5XaqVFttV/kMxoNGi2HjazCCT1ikzyIVbtxi0k0a7rnjuFrRjVxAnBDlDYytKCl0c28b7sdicwvwr23S6Lr5OqTMSySuGMcjFESY+LaguCfO/+V5Cb0IzEYdXBCG44/CfIBUnr32FLC4FpFS/hQHHBseCem5C7EHISQgUGecvz7GEYT5RYSAuv0Tih6Oq7O+yTdkgbiGGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB6141.namprd11.prod.outlook.com (2603:10b6:8:b3::13) by
 PH3PPF179F31853.namprd11.prod.outlook.com (2603:10b6:518:1::d0b) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.22; Wed, 16 Jul
 2025 14:30:14 +0000
Received: from DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::31fd:4de2:2775:396f]) by DM4PR11MB6141.namprd11.prod.outlook.com
 ([fe80::31fd:4de2:2775:396f%3]) with mapi id 15.20.8857.021; Wed, 16 Jul 2025
 14:30:14 +0000
Message-ID: <d8be62bc-d6d1-4f88-ab92-5c277a88f388@intel.com>
Date: Wed, 16 Jul 2025 20:00:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp: Fallback to DSC for HDR content if needed
Content-Language: en-GB
To: <imre.deak@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <ankit.k.nautiyal@intel.com>, <chaitanya.kumar.borah@intel.com>, "Shankar,
 Uma" <uma.shankar@intel.com>
References: <20250703140252.3547953-1-chaitanya.kumar.borah@intel.com>
 <aHEKIZC_KanqJTF5@ideak-desk>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <aHEKIZC_KanqJTF5@ideak-desk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN5PR01CA0040.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:264::6) To DM4PR11MB6141.namprd11.prod.outlook.com
 (2603:10b6:8:b3::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6141:EE_|PH3PPF179F31853:EE_
X-MS-Office365-Filtering-Correlation-Id: 456d1063-0d84-4806-8265-08ddc47546b1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ejRGQ2VlWUNPVlVVRVFOTmdtL3FQeFNHbTdNd2VOeWRXa1pTYTBUK1ZUc0NQ?=
 =?utf-8?B?ejJ4VG5pQ1ZDZFB3bkR3L2dsdVRaUmcrS0oxNDlaSnBKeXZERWpNVTFOMEhQ?=
 =?utf-8?B?K3hlUTg5Mzk5N21Ld3JuMG1OS0VsUFhwQnRiY21uaGxZeWhrVDNrYlJsd3Fv?=
 =?utf-8?B?SVBIMTk3bVl0eDRrWUVIdTBYbHVGSDB4NUI5SDQ2K0FpSkNXd3lOdjRDbFpl?=
 =?utf-8?B?WHhsRXI4ajN1bzlVbFVIV3hXbDV0NFN1Vk5UbEMwSzVMWTJVNkI2K21BWUx3?=
 =?utf-8?B?RE05MzREMThmak9DSW0vdFRRTDdvOUhWcSszMG5hYzFueVlObEVnNzE0MmZj?=
 =?utf-8?B?anRlL0JtTzc3T2FlZzM3aTdIQVBwMVNEMmlLOEg5REJwVzI0TGVVa2FPSEhr?=
 =?utf-8?B?d05GSHQwUkloNmtVMXRLNmwydUh5L0ZRazdYT3BWWGVBNjIrZ292QjB1aU9O?=
 =?utf-8?B?dERoanVnZDlmRHVpSGN2UlhVbkZiTTE5Qzd2NlBaTGt3VVpVd2I2cDZCSzlF?=
 =?utf-8?B?OHJmZlR1Qi9zSHgyQ2dYS3VCUm1IUVZSQzkvNmg0dGlqdXhuV1piZTZWWk9p?=
 =?utf-8?B?U3RFeWR3Z0JRR1RwaVZ6N0ErbkZYd0JkY3Jib2VaVjR6ZzJ6WVIyOUNQSGxx?=
 =?utf-8?B?K0lVeVhacWVtNU1yakZzSEorSFV1aERZcWhYUTdFL1puSnB4OTBFSWN2andy?=
 =?utf-8?B?M3BFTGlhSXlpZjYrb0xSMzAwbmRJck5ZaHBDVVArQnVWQldEZDNPbEdnVGE2?=
 =?utf-8?B?VFk3ajlkMnlDMG5oRU43MnR4WjFGNW9vdTJXNWIwMTgwS2VoSENiVi94WVZZ?=
 =?utf-8?B?dEZzb0dGV2lZWjBMRVJNeFNlZXVFSXJVRDhaVTN2WnBtTHAwaWwwdVMvNWxo?=
 =?utf-8?B?K2FXeUttKzRsRFFYUk9yQmxTRU1Ma1hEMkNUcTdWNGphdDVQR3N2YjVBR3hP?=
 =?utf-8?B?QnF0T295R3lkc252MTJPU3RvenpWVzIrL3JpMjJ3WnhLd0NZVGFOaTFYMkZh?=
 =?utf-8?B?d0NzSVNwMHNrQ2U2bXhsMDJsR2d1MEpDUlkremd5cEIrSUovWTlkVXFjMlN6?=
 =?utf-8?B?WkVSY0thZU9uWExXZmM3UHJ0TWJEU25GM2RhRGhoTXhvMmtMZk5uUTJieTBU?=
 =?utf-8?B?OU9hUkpURnltUmhuaHArMkhEU0FCU1NPQ0JRamxkV2xxQ2VxV0JCYTUwd0Ur?=
 =?utf-8?B?eVhlV2c2SDhybjRpajY3UXlJMFB6M3gybk9vS1h6L1F2SVZwK1A1Q2tHd3Ru?=
 =?utf-8?B?Mm1CVXorSWZ1a00xdDZSNUxjTWRDdGN2MTR3Q2U4SnhrazJnU3dBUWtJQVJu?=
 =?utf-8?B?dWdMZGVNZzNWZ09xeWZKMGI5dnl5MEFKRGZybDdRVzEyeDFhcVFJUmo5R0R4?=
 =?utf-8?B?QjUyZC9XNDVzazFXdXQ2SzdzWk1vTEZSa3BCTWlKd0p3RE8xZkx3ci9oK2J1?=
 =?utf-8?B?aEIxbjhoV1phb25abC9WeDhyNGpWMmVWVDU3SXd3MnYyaDJqQ0haWUdpc1Ay?=
 =?utf-8?B?Mk8vQTlpQ0pxUFZtcjh0VFVuck5MaWREQTRFVkUxazU4d2YxSVRqVGtGb3Fr?=
 =?utf-8?B?TzBOVVN1M21nTm1LZGE3WDhyVGtQY2xORW1WallDYUFETDF5NnZzb1Nqc2ZT?=
 =?utf-8?B?T0FNa3R2NThTanQ3MmcvcXBlSk5EZGVsRmNFUGRUV1BNaEI1MjVJZW1oNUZI?=
 =?utf-8?B?MzFsUmRoQkJnMXZ6YXR3MysvbE56a3A2aHREaGs0SHNXZXFZUmU1UUtJSk9O?=
 =?utf-8?B?QnFwSnY3NkRtQXQ4RlBFWkdXUnVZbUkwRVFNU24ySGxBQnNnbG5QY3ZtTmpC?=
 =?utf-8?B?Uzd0aVNMdUNKcXdKSUh3M3RoTzVPNnhaUUJ4U0FTc1VSRWJDUmE2Nk9OdEt0?=
 =?utf-8?B?YWIrYzlvb0hSa0h6NWNYaFRLbTQvUUZXVHgvNlA0cEkrYTl2SWdsNmVHdnM1?=
 =?utf-8?Q?sK3yM2I9PuI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6141.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OXNRZWltUXNSbFU5WTZ2SlNmRTRSVzJPU3NCdlN0ODBydHdrYzZ5VDB3VXNZ?=
 =?utf-8?B?RWhPWUZoUWI4NEVMYUtOTE8wWVY1VndNaCswQ1QrYWhxTmptNzFjSzNrR2RW?=
 =?utf-8?B?R3YxdlJFUXlQd3RFY3RDR2pJamd1WHR1ajlpelRmMUZ3UnhHYkdXZzQyN3Z2?=
 =?utf-8?B?NmY4QzRRVGY1YnZIc2lyM2x1dkpDNzJHd2pjTEd5cStaTlFvdkVZTHFCc3Rp?=
 =?utf-8?B?YjcxQUtheUNTdlV2WGZUaWU3Rk10a1hIN0ZMSW1MekFLZFZvY2Y0b1dWRVY1?=
 =?utf-8?B?S3FmNWhtc080ZDlVZlZaYVN2ZVNCME4zYi9VWjBNRFlSOWEzRUcxaENIK2tl?=
 =?utf-8?B?ZytLTzNNTTZJYnlVclZQNEpaNkJFbm1pdmRZUFVhOElqYktDZnAreE1vSDN5?=
 =?utf-8?B?d0MvdmhoV0JlYmRiejFqQktqZlY2MENkNUI4eittNWF0UWVSWHJuNXdwaXFz?=
 =?utf-8?B?RkpRc3NBZDRTdjk0TlpwSTI0Z1JnUzRFQlB4YkllcVhaNzdjZUpjU2U1M0Q4?=
 =?utf-8?B?U0hCRExyT1daUnZTeFFmQWFlT09jTUxWc28rdmxJMnBtamo0UTUvS1VraC8v?=
 =?utf-8?B?OVhMcGMrYjRhWG9KaGNOZGZZUzV2NndRLzgvb3lQYkNQYlYyZGpQbUdMZEdX?=
 =?utf-8?B?ZlBxSkNJUFpGYVBUbk1NclF4K1l2dzhwUnBqeUx1eFZIcmRkV2RXc3J0TnMz?=
 =?utf-8?B?SjIvc3hXZ21zRFpRTHorVzlYSHVYd3FUbys4MFJPbEg4Zm9PeVcraFRlZE1L?=
 =?utf-8?B?Y0VvV0RRTDgvcFJaNGRIVTBzelZxbVpoS3FWbGZFS3dtV2l4aFlUb3laUkFE?=
 =?utf-8?B?NEZRb1p4T3AzVmsxTFRwbW1wSGl4UkhuTXJERE1Pc1k5NWNRRkFWendtdk5x?=
 =?utf-8?B?Vkplbk9KT25iN0lIdm5TR0h6UzgvUERmdC9WQ0gwa0U5UzlkNTNaeCszMW16?=
 =?utf-8?B?SkNuQXd6RHZVM3pUZlRUZmZHY3c3SVlEa1lRalc2N1BXSmhqRGs1akFWTjdU?=
 =?utf-8?B?dzJ1SHR0eGxiSjZRZHV2ZWxsbFNxZ3d0eFgyYnhMNHNmT0cyaUxGN0ZxZmFX?=
 =?utf-8?B?dmU1NFVFcFNyL3AyZkN2SkdrNG5iL1pYekVldmtyKzF6TGl3M2U4TEIvRjQw?=
 =?utf-8?B?TXova3MzK1cvMHJRUXNkcjlzNURuUnNpRHUySjBia3pFSkMyUlJPTE5GTXdY?=
 =?utf-8?B?Mm4yeTlka3FhTlZBKzk4bFhRQXdjS1NUekMwUDF6WVhqZzBwaGxvU3kydm1z?=
 =?utf-8?B?REM2WHVpWm1sdkRIdzVHbHFzUm9ZcDQ2eFVITi9PWW1DTThaN0VyYVYxZWsr?=
 =?utf-8?B?Si9CcUVTQzZ1NFJhVWhQOHVnSDNPdWxoTEVhNnJlY3VIalI1a2k1QklPVi9s?=
 =?utf-8?B?V1FqKzRSeHlDNzIyZW5oSDVtaFNCZEJENkRRUGFDVGhUREtzaElyNUZJaU5W?=
 =?utf-8?B?S3R1VWVlS3YrTVZvZHVZVXhleG90bm9iL3FHVlA3Z3ZGRGZFYkxzYVhYbWZL?=
 =?utf-8?B?Mi9XUUlXUVdac0FrNTRWYzcrbFJhVmMxY2hQalJNaWJmM2Q1ZVZMZjdNaVpB?=
 =?utf-8?B?OXdOclNrSjd2bGhhcjZZQjJjN2JwanZXRmVmK01uekUzT2ttNWNPL1RkSUhU?=
 =?utf-8?B?OG9TY1B6ZkxSRDBZRnZYdXhBVVFXbkFWdVlHb1BCOEVuUGhLMlpiVjBNbnBv?=
 =?utf-8?B?RlNyUWoxV1QzNUwxUGhpMVp2RlFCUk1sTXFRRTdHdHJKTCtUQnh2Q3VPNm1B?=
 =?utf-8?B?ekJqV1lpUjZ1SlE3c2RrWCtXVldIcFd1bGZhaEN4TndwUWF5aDJZWEZ2eUdv?=
 =?utf-8?B?YThjc1NPdml1b2lvUzU1eTRnTXo2MWs3UjZLSUxDMDNwaDNrRG55eHlBME5n?=
 =?utf-8?B?YmdwdXhtRWxTNUFpV1p5V21UNkVCV0RFc2tCMEZuNytkSk1leWdTeVNpanZF?=
 =?utf-8?B?Y0NhalhHNmYzMXAwM1BMNFdhWlNzZ2Nta3BNNGNxSGhBRnJBMUtYZ3c4Ullw?=
 =?utf-8?B?T3MvaFBLTGV5MGlKZ3A0L2Zkdi8vR3c2Q3dQTDV1aU5UbTVQeHdaSjdiQ0Rq?=
 =?utf-8?B?K0pFWU1IaEE5bm1qNTlyRHJyRGp1M21ZWU9qeXFYM2ZLN1BVZlNHNDhoMm0z?=
 =?utf-8?B?WkNNRVp6WGRtOFd2YVdaRWFJd2NlMllYMnNJT3E3ZWliZlhBdjlmZFNIcTk1?=
 =?utf-8?Q?qflVi4bWEWhqKB+VDlBuHHE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 456d1063-0d84-4806-8265-08ddc47546b1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6141.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jul 2025 14:30:14.0398 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rO6OxZl/7TDa0uAV5hf560Ei8WCQVQKNQdDFLK92ZT342DTmlaGFp34JTrAHsRjtfMtgWbk4tiQeOZIPa8BaXRe9ncqB35azSGjDnEAG3qA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPF179F31853
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

+Uma

On 7/11/2025 6:27 PM, Imre Deak wrote:
> On Thu, Jul 03, 2025 at 07:32:52PM +0530, Chaitanya Kumar Borah wrote:
>> If user-space has enabled HDR by passing HDR metadata and we can't support
>> 10bpc fallback to DSC.
>>
>> Now that we need the helper to determine the presence of HDR metadata at
>> multiple places make it non static.
>>
>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_dp.c          | 16 ++++++++++++++++
>>   drivers/gpu/drm/i915/display/intel_dp.h          |  1 +
>>   .../drm/i915/display/intel_dp_aux_backlight.c    | 13 -------------
>>   3 files changed, 17 insertions(+), 13 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index f48912f308df..abbba159e479 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -1774,6 +1774,9 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>>   	     bpp -= 2 * 3) {
>>   		int link_bpp = intel_dp_output_bpp(pipe_config->output_format, bpp);
>>   
>> +		if (intel_dp_in_hdr_mode(conn_state) && bpp < 30)
>> +			return -EINVAL;
> This limit should be set in limits->pipe.min_bpp, computed already by
> this time in intel_dp_compute_config_limits().


Thank you, Imre, for pointing that out. I had a branch with this 
implementation sometime back but I was sloppy enough to lose it.
I will prepare a patch with something like this.

-       limits->pipe.min_bpp = intel_dp_min_bpp(crtc_state->output_format);
+       limits->pipe.min_bpp = intel_dp_in_hdr_mode(conn_state) ? 30 :
+  intel_dp_min_bpp(crtc_state->output_format);

But it will involve some jugglary with the arguments of 
intel_dp_dsc_compute_pipe_bpp_limits().


> Not sure though if it's
> expected that the modeset fails if DSC is not available for instance.


Now this is the tricky part. We first encountered this problem on a DRRS 
capable panel where clock is fixed at the highest mode's pixel rate.

That results in our bandwidth calculation ending up with 6bpc even at 
lower mode. Probably the mode change would go through but will cause

some horrible banding.

Fortunately, this particular panel has DSC and the fallback works. But 
as you appointed, it is a problem if the panel does not support DSC.
Only way I see to work around it, is to let go off DRRS and allow a 
modeset. But given our codeflow, I am not sure how easy it will be to 
implement such a policy.


Regards

Chaitanya


>> +
>>   		mode_rate = intel_dp_link_required(clock, link_bpp);
>>   
>>   		for (i = 0; i < intel_dp->num_common_rates; i++) {
>> @@ -2910,6 +2913,19 @@ static void intel_dp_compute_vsc_sdp(struct intel_dp *intel_dp,
>>   	}
>>   }
>>   
>> +bool
>> +intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state)
>> +{
>> +	struct hdr_output_metadata *hdr_metadata;
>> +
>> +	if (!conn_state->hdr_output_metadata)
>> +		return false;
>> +
>> +	hdr_metadata = conn_state->hdr_output_metadata->data;
>> +
>> +	return hdr_metadata->hdmi_metadata_type1.eotf == HDMI_EOTF_SMPTE_ST2084;
>> +}
>> +
>>   static void
>>   intel_dp_compute_hdr_metadata_infoframe_sdp(struct intel_dp *intel_dp,
>>   					    struct intel_crtc_state *crtc_state,
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
>> index 0657f5681196..5def589e3c0e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.h
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
>> @@ -214,5 +214,6 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
>>   
>>   int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
>>   void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
>> +bool intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state);
>>   
>>   #endif /* __INTEL_DP_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> index 41228478b21c..12084a542fc5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
>> @@ -225,19 +225,6 @@ intel_dp_aux_hdr_set_aux_backlight(const struct drm_connector_state *conn_state,
>>   			connector->base.base.id, connector->base.name);
>>   }
>>   
>> -static bool
>> -intel_dp_in_hdr_mode(const struct drm_connector_state *conn_state)
>> -{
>> -	struct hdr_output_metadata *hdr_metadata;
>> -
>> -	if (!conn_state->hdr_output_metadata)
>> -		return false;
>> -
>> -	hdr_metadata = conn_state->hdr_output_metadata->data;
>> -
>> -	return hdr_metadata->hdmi_metadata_type1.eotf == HDMI_EOTF_SMPTE_ST2084;
>> -}
>> -
>>   static void
>>   intel_dp_aux_hdr_set_backlight(const struct drm_connector_state *conn_state, u32 level)
>>   {
>> -- 
>> 2.25.1
>>
