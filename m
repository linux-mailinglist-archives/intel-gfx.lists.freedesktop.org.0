Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A553A5E244
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Mar 2025 18:08:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 200F410E2DB;
	Wed, 12 Mar 2025 17:08:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a+NNn7Ga";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C636910E330;
 Wed, 12 Mar 2025 17:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741799303; x=1773335303;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:to:cc:date:message-id:mime-version;
 bh=o8wQR8PM+Dla70Pt5epK3XBNfd+7c+zCVyj2EUmLENE=;
 b=a+NNn7GapARdRLeqG7L6yRha1jF6sPa4mYaGFbwy0IlVBoHJfyoEeRUO
 T5nOo4MOycjGsBq4Ck/egpCBPsVe2vxyHrKKMylzkTJI2AlrWiZ/6j+W9
 C1SSSj4PcW6chDit8raT/UZnrpFsa1L2zBxNwN8W+HbFQovrL7EKbqnLB
 SIZTdwmwv9C/g9jyMO0/fPaEA8394vXo6E4/oIRhfLwO3bB0SeHAThkOR
 qe5sD2v5+BKbLbo0iiHuIElNd0NuFqzE9s9gAsm5zeWolt/d3E4QBFymE
 VgrYPHokKgwuTqSMEleRUlJNUOJ86hexCd70hJ2IrkunhUN1qjivQcAWM A==;
X-CSE-ConnectionGUID: zSvzkm/eTbazvtjTa4QR2A==
X-CSE-MsgGUID: AKHRtxaHQn+KNRjObiB7Ng==
X-IronPort-AV: E=McAfee;i="6700,10204,11371"; a="60436479"
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="60436479"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 10:08:22 -0700
X-CSE-ConnectionGUID: L469ASwCTDmHVKoRyh6lWQ==
X-CSE-MsgGUID: rR0Di2jxT1ytPcWctD5gsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,242,1736841600"; d="scan'208";a="125335580"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2025 10:08:21 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 12 Mar 2025 10:08:09 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Mar 2025 10:08:09 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Mar 2025 10:07:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f17cGIqLEW4KexDtyfdyp+4bBwPHROZ6mlWsxg3+ZWvjV8S5NS3qLdDIy8JTGsBtoyr0cn1OCF/tDgRfaCTaLLS2CJXeCpnQTkz/cvfl+rlPcSbGsbtsmrBBJtUi/OQk8XtN/XbkCbg4JoS71VP7JB571SMNUpAaSf5Dsyzlx7LRTL0cMwkriqgJk0RUfi7GIyvKlahnfeZw7Ohf7/RcqXIHOxzG5KAWHEAz893KWSpfO3G+RRIRuJcGX6e1HvdZRsulHBAag8M+jfEk1cgW1AtQtIEXuLlJix5CoKnYSPO0eEND25IVy1iK/KU183t85UAmEZFRsCw2D8iYDF+hJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KqEwhyLW/1Sn6Kvcrsb75hddN3FVWoCawNzZWZHkQ7U=;
 b=OXoz1dd7FGfKNzV+6BDKMOvI/q8MsrjeYjynoy7QOUkBUBkjO3MEXDMLkk43Ol158UZWhRcEREHE6WVpF5zIEcOmqyyh29G+JezcuFQ+YEzQwnFntYoTP85zaHnorYWa1iay3riqgjdgK8BDLT3Vf+GBnpxSH2A+Mlg2L+aST/qyvKBQoYCs3YyM//hZCjlxYUdL19pUJ6oImt+oOgGpvh7w2S3S7hOuIy798P0lNF3r89N4d4OX5tZHyzHaeNregw6vOpzbBaIqx47uG8CqP+CVMIIwZeetZTak0EbT8T5w4Hv/TMy0RTt+pJxAvqKSz2GwQhLPJ3yk+umUSiDsAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW4PR11MB5933.namprd11.prod.outlook.com (2603:10b6:303:16a::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.28; Wed, 12 Mar
 2025 17:07:11 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.8511.026; Wed, 12 Mar 2025
 17:07:10 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <87wmcvfnin.fsf@intel.com>
References: <20250311135925.1523852-1-ankit.k.nautiyal@intel.com>
 <87wmcvfnin.fsf@intel.com>
Subject: Re: [PATCH] drm/i915/display: Maintain alphabetical order for
 HAS_AS_SDP and HAS_CMRR
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <mitulkumar.ajitkumar.golani@intel.com>, 
 <lucas.demarchi@intel.com>
Date: Wed, 12 Mar 2025 14:07:05 -0300
Message-ID: <174179922572.12216.11347505165808081803@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4P222CA0001.NAMP222.PROD.OUTLOOK.COM
 (2603:10b6:303:114::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW4PR11MB5933:EE_
X-MS-Office365-Filtering-Correlation-Id: 3f26b540-7132-4832-bf35-08dd618853e0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aVlGWHhGanJRTVNoWnVQODdsRzFqSysyb2xJMmJxTFBOVXNZaEEvUWhVMzYx?=
 =?utf-8?B?Ym83MjBMeHZJQ2lVeHJ6ZVlNR080b2hmVjh0NG9ub3FVQzJhSUhPclZyUFdZ?=
 =?utf-8?B?RmwrUzh1Ri9ZUlpFRnMrcHR6TXkvYkxRbGowd2VEaUIrRWVGeWVjMWtUTmNh?=
 =?utf-8?B?SEdFY0ZMc1BhblhuQUpkQ0RxU3FQZEJRbXgyaDUxVnhaOTNZcENXRWwrNy9r?=
 =?utf-8?B?QXdCNFZML01vdjk4TWlEOXZxVWw5T2tKaC9neHJPZzJydmd5ZENCSFhDMndt?=
 =?utf-8?B?NWw2QmVRZEFaUHdNSlZXbnlSeWwrRlg2Mm8rb1Nwek1pVUNtYWM2RmZjNGZI?=
 =?utf-8?B?V3dtWGtvQlI0QkJFZmN5Um5LQi93RnR6b3pmVmRaZDVGTlVoVXJDMWZzOHpF?=
 =?utf-8?B?ZEVqR0JndUlYT1I4ejM5ZklINGZqaDJlMGxMeE9NRDcwSVhYVElTeERiQ0xB?=
 =?utf-8?B?V2x5RVdmMUtBaTVpTnhJZHBMR1VzODFNNGVhOXVZQlRkM05XZitEZVJaa3pi?=
 =?utf-8?B?czNXK0RZYnBRQVhxS0JnZjkvKzNDOGQ0NWpoMXFRMi9FQWJ2eWhvQUJ3MU1X?=
 =?utf-8?B?Vk5qbWNQRHRiS2ZweWQ2NVN3ekI5TE45anBhcjU3L1BjOCtpNHp5bjV4Rlkv?=
 =?utf-8?B?MllmNGxJQllGWjRZeHJVSTI1VmJlYmRDODgrWlJIbjFPYmhmMXlyOFZDWDlx?=
 =?utf-8?B?MXBWdisyRWhuZUlnaVRSREVRSjNMajA5VnRBbEhTYTBjdEVVKzhTb2hCWm9U?=
 =?utf-8?B?ZmUzYSthTitWMWlHV0JNNWhVS3MrdGV0Q2ZYRElhQ3BsanRsSy9YMk91MVRi?=
 =?utf-8?B?SEhveGJGWExBczJ3WFA3VHEzN0V5NDUvdE1RbFMyMkZSMEZlQUtxWHFmOU1Z?=
 =?utf-8?B?Y29UeG01dU1XTTZJVnJJNEs0K20yM0hVWjVLY2ZQSjR3NVowMTg5Qmp4a0Y4?=
 =?utf-8?B?K0lzY3V6WUNhMU5xN3dFdk96QmdlMERuWGhCM2p3aCtwSGllODJhZDU1b09M?=
 =?utf-8?B?c3B5QzJrUExENUozeGJlQ2JaYTdrYTVqTExlNHAyVmdpZkJHQnlYM1R2eUlF?=
 =?utf-8?B?Z0VwelJGVStIK1JNYVFZT2x4cWNkZExxQWRFejJRWWMwcTdYLzNHQ0w3V3pk?=
 =?utf-8?B?aVBUVzJXOUNKdmNLK1dhTG5GUW1CS3JGMEY2VzdZbWtRRXZTaElzUmtSbnpK?=
 =?utf-8?B?aGp0cUJadm1XRGplNEFxUmh3bTFTWjdMUGMzUy9XR1BBbjZBWExDT3l4TG9u?=
 =?utf-8?B?ZktvVzdUMW1PTmxSOG9KT0JqcktuZzNJOWM4TWxyWWZybTZoT2k5MWZYYkU3?=
 =?utf-8?B?NEpYNGFzbWtIa0J1TVhOSWpiN3Bvd0Y4b2E3ZmMzSG9vU3ZvVkM5UXg3ZjFs?=
 =?utf-8?B?ODZKak5GaXh4b3F3amU3Wm9kQnNtM0x6emxxaE53N3hRdE9wNjhlRGNqZ2h0?=
 =?utf-8?B?RExzenFLNUNHNlhtL0dvREhNQXZIVmE1YlpFQlB6MVp1NHc4TFk2REIzNUgw?=
 =?utf-8?B?bFBBYjRScGJvTW8yZElKMXFKTmsxRmpoOEZIZkhPakpvR3pQelJEbUNlWEJN?=
 =?utf-8?B?ejRvTllEaUJQZzA3RzJoWnpNMytUK0NPcm90eTBCakVlbkJqRlhrY1JIdDFF?=
 =?utf-8?B?blUrYTZlNHUvbGJaNnplL1RncmZ0a2s2bjRuT3NYNzRLQ0JWa0thSUR1d3Zp?=
 =?utf-8?B?MjVrR0YrRWxzbGVFTGlxazdnaGJILzkwb2taSmdYYnR5SGVtbTM0RE9kSGVP?=
 =?utf-8?B?VlZtY0dvdTUrVlJkSWwwbjRtUnVBelowT1FRdDBMVFd2VFNmZmNYN0hNSXZS?=
 =?utf-8?B?T09Oc3BqU0RkTnZCQ203TjE5bzAyUEtaVnU0VVpsTzJ2eDY1aVNIZ1RjM05y?=
 =?utf-8?Q?3eVc8xr0H1PY8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UzNXRjM3R1plck9IcjVWREVCbHZ0MzBrT0xDS0NWRWNVd3IwbkVVTStSdVV3?=
 =?utf-8?B?UTZkSWhKMkg2U1d6MHB4SmkvRHNKMmZDUGFiL3d2TWEvb0V0QjdPSFY1UjNY?=
 =?utf-8?B?MytZeCtzOTQ5dmZQS2dHY3ljeUpudUNZdjkxenlKaHlkeVdLcExkWFFuemlK?=
 =?utf-8?B?WU5jOEVTK09pRTVhWU9wSW1GWWtQeW5mWG5XUUdudUVXdHovZk9GK2wxTDQx?=
 =?utf-8?B?d3pXS2pmTldmQmR4UmxBdWdoVjFnZ09iMlZ3MzFMalJEQkdxVFlSUnR1MHZW?=
 =?utf-8?B?WXpQeWVXODhZWU53NlJJSE04THRPMU5BeGFSemxycW9xdFRmQzgyUGdmZUh0?=
 =?utf-8?B?blZOYVVmMXA4ajhsaEt2YjJpcVlwVnN5MGk0cnN6bFEwalZoeEVIc1k4MHRQ?=
 =?utf-8?B?QUMvdlBEVTVaeXgvdXBMQ3JxRGxVZlJZbGRkUUZLNVEzR1B3TWFFaGRtOUky?=
 =?utf-8?B?U29qNmo1TkVUSERqMGs3bHFvbi9nYTZqMi8yWjNjMUg3QkttUDJyQ3J2V3du?=
 =?utf-8?B?dmMyVjlnenFPOXpMdEM5Y3NBVUdIZVpzT2YvUm5FSjhlVnYrRUVnaGk0M2d5?=
 =?utf-8?B?ZzB4SU9SNlUyK2FMaVBnak0xcCtkU3I0UlFmUDgrUEwydTIzRXE1dGYrN1NS?=
 =?utf-8?B?R0hzMnZ2dktNVjRCaFB0ZXhDbGNDeHk2dllYRWZabFZnbTNERFExNC9FaFd1?=
 =?utf-8?B?ZG82cjNtR1V3dEw5dzMzbjViZExaN1JxbjVRMldRVzNaaTRSNUF5c2FjVDlE?=
 =?utf-8?B?Zm93dFNycWIzTy9nWkdDK3VaR1g5aVJKV0RKSEhuMDZ1ZW5MV3A4NmJuZEdF?=
 =?utf-8?B?YzhPL3VvUDVja0M0Y3A0MkpCRzZ5ZXhCblhndml5RDRSbDhxS3BBTENJeGpQ?=
 =?utf-8?B?bndZQlE1VkVXVnlLRjRBZ3FFc0Q4akNlNVJkTm95QW9DV1AyeEhyWFQyM1pW?=
 =?utf-8?B?T0RkTWJLMFdOSmNPNDFiWjZ2anQrS0ZCZEZIY2NUakhIUjgzbWx1ZE41SzBM?=
 =?utf-8?B?Z3pORkt2c0pCcGRPYldvV3VIb3JVd2NjeEF1cU4rSmdyZS9nbTZ3eUhObTR2?=
 =?utf-8?B?Q2pqQXQ4akRCTWNvZTRuaHY3UkZRVTNPM1F2NWovV0N0MGZnZ3pxN0xReHlX?=
 =?utf-8?B?b2F3YmQ0bWxlcFl1OElnaDZmYlBwQnhteVJjNXVlZ253V2gyZk1QL0puL1pN?=
 =?utf-8?B?WmlVUkh1UlRXaUUrR2tMZFk0ZEg5MUZkVGZuQ21wbE1MUGhTb3pEQjJjeVEz?=
 =?utf-8?B?RmJxOWIzeUhEVFJsM1krZGJiUEUwVm9XMjJyNHJ4aHp5OFdFUXFma0pkcVBr?=
 =?utf-8?B?dXErY0hJMXNQZXRJbkFrdVhNUVFDZVlETVVLUHRRaTRUUkxyUkNsTkpjWk1z?=
 =?utf-8?B?YlpPUjBrZ1I4OEdkUTc2VlpkZzI3SWZUOTN5RUdDakpMdCtuVE5SWGMyLzBu?=
 =?utf-8?B?bmZoaDlnWDhadGZDWGNRSHdQQVdWYXE2cVB1eVpPcmhLRERlZHV2WERwNmFN?=
 =?utf-8?B?b0RTcWJLdU00Y2VkajZRWFlxdlVuN1MycmNEWGVsVldTZkU1aHZmandNbEJ1?=
 =?utf-8?B?ZzRSdE02b0M2VVFSUXZYMTNKL1N0NGxhQlBQS0lMWkpreGRtaW1lQUVRdEUz?=
 =?utf-8?B?a2FkOXpHNHBkQlIzK0RSUjArMmNyY2RsZ3RQWDBXaFFrR0plRVdhZkZUWkVp?=
 =?utf-8?B?YXFtcnJPWG43cE9oYnNTKzhLaXRqODZkUWlyWmZ0ZjBJSE5iOWhBbi8rd0lD?=
 =?utf-8?B?S2JCdnlURDlYdmpFZHhRUytidVRiOTNQU3pmMjc2bWEzYm5IS09tR1ZWaGN2?=
 =?utf-8?B?RkRjUjlmY0JQa1pCcEk5VWJ3Nkx1aEp2aGk5alhkWDBuRXgzMUN6YUJzRE84?=
 =?utf-8?B?b0cyL2xUZFh3R01NM0lYV2k5RE5jV25ITm9yK3pMK3N3WUpoOVpkcFc2OHgz?=
 =?utf-8?B?a0FSQTV5eDc2NDduV2xpK0tYSUlsbEhlWkRvWUI1bWVBK1VXN2NLR3d1REdO?=
 =?utf-8?B?MVlHQWxMUGR2T2gvei9NRkJTTjBTWVFGTnRUWHovNXNiZmJMRW03Q1U5MjZX?=
 =?utf-8?B?V2hiR1lISTlsOTJPU3IxYTl2REFtb0dCZW9SNGhnKy8zYVN4YllmRGtLa0Nj?=
 =?utf-8?B?ajhrVkNxNkhlVkxxYkxQbTZ3eSs0Qmxwc0tBSU9QWERxelZocVRndkpHaHc0?=
 =?utf-8?B?WXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f26b540-7132-4832-bf35-08dd618853e0
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2025 17:07:10.8675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hCavbhPwdVLlAW2v/1HTjOySCu+uAgn5X2DXfwOh217Ti2twEvmdPJ5AiDU+f4BuF52Aq1CWpjmQeo/3uvmTtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5933
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

Quoting Jani Nikula (2025-03-11 15:08:48-03:00)
>On Tue, 11 Mar 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>> Reorder the macros HAS_AS_SDP and HAS_CMRR as per alphabetical order.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_display_device.h | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drive=
rs/gpu/drm/i915/display/intel_display_device.h
>> index 717286981687..332647c4ca81 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -142,10 +142,12 @@ struct intel_display_platforms {
>>          func(supports_tv);
>> =20
>>  #define HAS_4TILE(__display)                ((__display)->platform.dg2 =
|| DISPLAY_VER(__display) >=3D 14)
>> +#define HAS_AS_SDP(__display)                (DISPLAY_VER(__display) >=
=3D 13)
>>  #define HAS_ASYNC_FLIPS(__display)        (DISPLAY_VER(__display) >=3D =
5)
>
>Y comes before _ in asciibetical order.

Maybe that's just me, but I feel that's counter-intuitive in a context
where we use _ to separate words.

--
Gustavo Sousa

>
>BR,
>Jani.
>
>>  #define HAS_BIGJOINER(__display)        (DISPLAY_VER(__display) >=3D 11=
 && HAS_DSC(__display))
>>  #define HAS_CDCLK_CRAWL(__display)        (DISPLAY_INFO(__display)->has=
_cdclk_crawl)
>>  #define HAS_CDCLK_SQUASH(__display)        (DISPLAY_INFO(__display)->ha=
s_cdclk_squash)
>> +#define HAS_CMRR(__display)                (DISPLAY_VER(__display) >=3D=
 20)
>>  #define HAS_CMTG(__display)                (!(__display)->platform.dg2 =
&& DISPLAY_VER(__display) >=3D 13)
>>  #define HAS_CUR_FBC(__display)                (!HAS_GMCH(__display) && =
IS_DISPLAY_VER(__display, 7, 13))
>>  #define HAS_D12_PLANE_MINIMIZATION(__display)        ((__display)->plat=
form.rocketlake || (__display)->platform.alderlake_s)
>> @@ -189,8 +191,6 @@ struct intel_display_platforms {
>>                                            ((__display)->platform.dgfx &=
& DISPLAY_VER(__display) =3D=3D 14)) && \
>>                                           HAS_DSC(__display))
>>  #define HAS_VRR(__display)                (DISPLAY_VER(__display) >=3D =
11)
>> -#define HAS_AS_SDP(__display)                (DISPLAY_VER(__display) >=
=3D 13)
>> -#define HAS_CMRR(__display)                (DISPLAY_VER(__display) >=3D=
 20)
>>  #define INTEL_NUM_PIPES(__display)        (hweight8(DISPLAY_RUNTIME_INF=
O(__display)->pipe_mask))
>>  #define I915_HAS_HOTPLUG(__display)        (DISPLAY_INFO(__display)->ha=
s_hotplug)
>>  #define OVERLAY_NEEDS_PHYSICAL(__display)        (DISPLAY_INFO(__displa=
y)->overlay_needs_physical)
>
>--=20
>Jani Nikula, Intel
