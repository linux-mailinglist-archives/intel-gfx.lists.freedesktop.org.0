Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2552FB22477
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Aug 2025 12:21:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ABA7610E330;
	Tue, 12 Aug 2025 10:20:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KKW4P+jt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B13E10E330;
 Tue, 12 Aug 2025 10:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754994058; x=1786530058;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3C9mTgcqmzeTqYdblh1H57C7O2uKLyEZh0qTlKKdSFs=;
 b=KKW4P+jtwqWrj/LmYR24JB9E/gshHNIn37bCf+Sx6HmPL3dDFZk6ISm8
 tdHs6+4O4QEmz7QVicPQxBfkmka/a3xz1HbAze8YknU11PKCwLyt3CkY/
 r9cOLIlYlofbdl/9YAN1R0QlqQ12pPAe6f2updC1sm0f00Wk96oBjYKVp
 kfpsbaKDbloCPJ0rZfq3RRiwGH/YmYiA16UY4vPGGcNxhULCOacpjUNMh
 Md9eBAuS5NTdEbowEY0kIzWdOG9LH0AQkMmL7xnjR+irdnqp7JfxHWcIR
 5NLecKFTTgx+zob7xrey9X7vOoHKZzG97W8txtF8KQMF3D/8B8rzMpzsL g==;
X-CSE-ConnectionGUID: 9nPF2i2ZSAi1JNdCCt1bcQ==
X-CSE-MsgGUID: XYFPUxF3SAiLJ4hl+GHg9A==
X-IronPort-AV: E=McAfee;i="6800,10657,11518"; a="67971073"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="67971073"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 03:20:58 -0700
X-CSE-ConnectionGUID: E1+lBlODTTqJKkVE9yAMog==
X-CSE-MsgGUID: E7rGv+wVRR2D6Kmd36oWkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="165662728"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 03:20:58 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Tue, 12 Aug 2025 03:20:57 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 12 Aug 2025 03:20:57 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.73) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 12 Aug 2025 03:20:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mxy2cRcxnuybzUOaPc2o8SO/4VvIal+Ffb6Bq01pndfAcRlvsGJNrYWqcmWJb8sLKReCYAVSSUXUC5Dv+Ew2teA/s9AMyp5PVpoUDDFcKf6lU76PU4/ESGg4/FklwLOdenOa8rPsvD7uNVczOzQFEbBpkFui6ncXcEB9mZ5kh6IglHNsGx+Eb1QHSF3/wBjQrtgr29dqIF+VcxfX9rbXHetUp0g0JdXCMouHfh2FXr8VSLZOMKWkDHwd1CNHnTAsUSgeFuwF2MBrdlp0NLKLICmHhSNncJPFv8LEx7HcWMdzAmIYRKfTc7KGf69v5r4C8wQvloUA+XJyqJmUC976Rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s78wSTVm1ufrE2hwCKl2LpbRIQVVpiVuSLeves8hGbg=;
 b=wEy0UHqNud2n/quhWcjI6y2UmaNsE0um8GgcmQhbN4Bv0jJOx1B8DEpndG9rhlLbkQGOENjbhr7Y6bHZfiJvoKN+79Iux+SJdQVO7GTwNzI8t8hwSZt2nS+jhpI/XWj3Obfa3pFIs5lLYapiZYgycx70o1aC00EblLMSRPAD9FGYST0Sysvlex+ZupBnKloBL7jp47kr+lb7ObEHER7xZBgSdEmWWrMtjuSL7MnaTil9sMITDWbUomnYRoRJ5ttw2psVQSOfRbd5BD+L0ZluqHT3PgEle3U62VZI0GcLdciAxnpCUvAJZEIvkh9kL/CfgRBW34x8B70uXzR4/0CFAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7183.namprd11.prod.outlook.com (2603:10b6:8:111::10)
 by CH3PR11MB8364.namprd11.prod.outlook.com (2603:10b6:610:174::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.20; Tue, 12 Aug
 2025 10:20:55 +0000
Received: from DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a]) by DM4PR11MB7183.namprd11.prod.outlook.com
 ([fe80::e656:9300:fc6a:1b5a%7]) with mapi id 15.20.9031.012; Tue, 12 Aug 2025
 10:20:55 +0000
Message-ID: <21e35ada-71a1-40ff-907c-8bc0e4ecc3ce@intel.com>
Date: Tue, 12 Aug 2025 15:50:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] drm/i915/display: add intel_dig_port_alloc()
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <cover.1753787803.git.jani.nikula@intel.com>
 <4d2da1a40698f85014140f586405b19795437e81.1753787803.git.jani.nikula@intel.com>
Content-Language: en-US
From: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>
In-Reply-To: <4d2da1a40698f85014140f586405b19795437e81.1753787803.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1PR01CA0175.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::10) To DM4PR11MB7183.namprd11.prod.outlook.com
 (2603:10b6:8:111::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7183:EE_|CH3PR11MB8364:EE_
X-MS-Office365-Filtering-Correlation-Id: 271a453b-bfdd-4725-5bb2-08ddd989ebfe
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y2JXMHUzTVgxaEF2K0c2TEhHWFZldjV1WVdoa3NoUG8zdXdCVi90bEwyaHhO?=
 =?utf-8?B?eS9lK2VYdXNwa2JNdlNQdWNVMklNeExnVGVvRHpXSTBiYnRlai96R3JTaWwy?=
 =?utf-8?B?UlFCMmNGNDNoZEkrbDkwajQxQXhpTmtwZW8vSU4zVm5FdksyUlBZV29NZkU4?=
 =?utf-8?B?RkI5OTRZYmxwdEpySFQzeGNZU3BFc21uNFR5VEZnaG1kOEg3d0xMMFJBZlYy?=
 =?utf-8?B?VEVNcWNvYzlUelNkb0Mrd2I3OEVoZEdCZkdSbU44cWE2QktlOUhFeVJIR3Bw?=
 =?utf-8?B?bWpJcHVCdW0xcWNqT2k2d2k2QmEwa1FXNWxFdXNtQUNEQUlIN1VyZk1YNVNs?=
 =?utf-8?B?NHlMTkRLdm85dkdRandDL0l2VWUxSXdBOW5WYVBpa2pPdlF2RGNzUkZzczVj?=
 =?utf-8?B?eHpFOFQrRVZTOXFjUHo2SXRvZkY2S1VqMFZhaUYrZ1kyUXQ0MXRzSS83eUhR?=
 =?utf-8?B?RjFiNThrMFZSSERPMEdwamxaUG94TXE0S2VGSjFFaDVVRTVDZk1uL3pOam9P?=
 =?utf-8?B?NllsZUxIemJ4c1g5NGZxM2w5ZTJyV2haS2oySTg4TUg1T0ZYSEVnWTBmc3l3?=
 =?utf-8?B?Z3ExSjJqajBjWXZBWTdiZkwrRE1selYwYmloUjhENERyL3hIeFpiNmo5U2Jn?=
 =?utf-8?B?d3RUM1JwMUpWT2cva1M3YXNtbGducFh1ZVpQZlFxZEU4b0RBWk45L2phTktX?=
 =?utf-8?B?WUswWHJBS0tDdDNHY1g2Vnh5dm5pQVF6YnlPWWhESjhsM2drcmtjMEdweHFQ?=
 =?utf-8?B?WXlKU2JsMCtGcW9aM3RBTTlqa3NERVdzMEZ5VW44VWxSNjkvUWo0WWZHUHBV?=
 =?utf-8?B?cTJDenYrZFJ3ZjB6VVpwNW9ydnZEcHhPbURlNlJjWGdzRVhGcTFwN1p0Z2Q1?=
 =?utf-8?B?elBxanI4RTZFZ1c0MGpVbzQrK1RNTXMraGV5UytMQTZiZTVsVGY3cVcyRUpW?=
 =?utf-8?B?d0k0QytVY1c3NVJmRGluWXp0NXZ0QldxdDdVNnRyUlBPWkVVN3BoeHIwU29Z?=
 =?utf-8?B?NmRKNU9tZFVBZHllZ2JOK2RCMk9qNDZ4SFdxZ0pVbXhoRW80R1ZoQmcrNi9w?=
 =?utf-8?B?NTBmbnhEOVJaNllTTUZJWUVGSndxOGgwa05MQytBcUhhaXNRWTl3WU5RUnJh?=
 =?utf-8?B?cnBORU0zbG9XWWo2Z0RQKzVwTFBqaStDNVk5cFdpTTlSOEVoQUNjdW14QVJ0?=
 =?utf-8?B?VWxsSkRIT21jaU9TRUJMMnlIVkV2NjZwT2lRaFZFV1hYMEdCVWVKSUEzT0Ra?=
 =?utf-8?B?TFJwdFpydFQ4OGNrZERMNkZUOGtRZzIwamxuUGhnNW9yZm80VWFFUmdhWFcz?=
 =?utf-8?B?djY0bktuUWpMblF5QU13SFh6c0R0SWVYN2x4V3k4VVNXUFdybFVpNW1vYzlW?=
 =?utf-8?B?Rmx2alRDS0VKY3V0NUg1OVcwSFFlVWs1UEVjdmFLUlhGU2RuOW5zajFVK1Jn?=
 =?utf-8?B?VWwySk9LNGFUWFRyRDlUOEhGbEZ4YktOclVvdGVCWmFzWm9BYkQ3OTVDczQ4?=
 =?utf-8?B?aFhPSVRJSzUzcWdxUER2ayt5eUhHbzZ1bHBUVXoyS0dYZEJ3ZHBZcmpvc0ZT?=
 =?utf-8?B?dXYwUWlDWXNkTTk2Z0grdTZMbzRjTDQxZm52RG16MVAyRENEYnRENEVkSWZJ?=
 =?utf-8?B?TXFab1g2RTZjQVN1QjZEcGxPNkxlOE1uWDdmbEFqQWZ3czVQVkdJcVd2Z2Fo?=
 =?utf-8?B?NDFSM20zRVRQUVZ4Unk4b0ZiSTdEY0p5cjNMR2hQUWtWSmRyYkh4UlEzcGhQ?=
 =?utf-8?B?Y3pTaWJESFNVemFwckNTYmZqKzVxS3lEenl4V1lFRFZkZ2RUS3lPL2ZrazNC?=
 =?utf-8?B?QzNHOHZad3JIYUhPcWR6THp3K0NxVC8yTHhJMWY0eWJ1QnJZaVdocG94MU9a?=
 =?utf-8?B?a01RSFNyc0J0TmZxaTBxdmpQLzF1RjJML0x2amVnRFdKQ3RNSGE4dUZ1YUNN?=
 =?utf-8?Q?5VOXb/J+kWc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7183.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aGNyUXBlc29IT1FaYjlLU2RFUjJWWXJvOXdxUzRVNmhYVnd3dUtqSEFOSXJU?=
 =?utf-8?B?U2RUOGcwa25tT0s1QU9lcTJtYmFnM2FjVW1OcWtralBQbjR0RzBNa09hZ2pR?=
 =?utf-8?B?S0N1a2lQblZva1RmSzZrb3dxZnBUZ0lGWFR4Sk94L05lRHNqa0tvTmI3WWJP?=
 =?utf-8?B?VVZmZVV6ZWY2UU5Vb1owYWR3MjN5cDloSVRqWlVkcG8wODBDQmlyOE5kRTk5?=
 =?utf-8?B?NWJVVFlHUnZPVXlORkNkbWZVUGs2YW1PS1Nobyt5eVUrY0g3VWxaQXZKRkd4?=
 =?utf-8?B?VzlGczdaSXBEREFqTEZncVVuYjRCNjFLNVNkWVM3VnQ4M0dLM011N1lMV3Z6?=
 =?utf-8?B?ZkFiMGFDWTQyakVUVFBhbkppTURVOFUyMHk1bVNzWlZ3MWgva0JKQk81RmNY?=
 =?utf-8?B?dTJaRC9RdVk5NUlwQ0JmTXFoZVl1a0c4b0REa0JnMisrNVEvZ1pNTURwb3k0?=
 =?utf-8?B?OWFsQzZVZVdOc001VkIvSGhuRHRZWUZsdWsyNHhjc0hSOTZEYURYd2wxR0ln?=
 =?utf-8?B?K2NmWExQRmxoZjdRUW9LcThPeENJT0VZOEl1UEFORmFTenpvWXF3Q1ZqU2Vk?=
 =?utf-8?B?WWVTWnlJVmQvMnF0MmI2VHVPcVhWYVFTL05uMzZadjFHMUZQaG9ERnJYU1ZZ?=
 =?utf-8?B?KzY2SEx1cFZGTkd6cmZIcmh4enJ4OUNDUld5bDdmWStHQzVkeWsrM1NFQTFL?=
 =?utf-8?B?cG9hUVlLR0psN240OGFyWW1iM0cwd0tMWGRNWkN5SXZPRDFseS9CZFVlRVhV?=
 =?utf-8?B?blU3dFd3YXlPNFRJdS91NFVYNWFtRnVqN3g3cHVUcjBHTWdRcmVLbHd3UzN1?=
 =?utf-8?B?NmxxNWhqYXB4ak9FUGRlc3YvQkJvRExYRW5vMGxGQ0VySDNTMUMvNXBqMkFD?=
 =?utf-8?B?eWErNFl4R3h4cVQzUFl5RU5MMlhIK1JZOXJVYXlnaENrRHUzK1Y3R0tUZjRa?=
 =?utf-8?B?LzNqV0p1MEdNc3hubGlwYnI4S3phWGhFNTZjdjN1MVAyVDJJNVMvT3J3dDNt?=
 =?utf-8?B?QkdYTXhTbTE1WDk3MzBMenZjRnFnWE9ZMnIrQnhIckU0YjM1RjRVenV4aGpW?=
 =?utf-8?B?R3BGN0l1YmJnSUFacHAwa0YraXdCUXlMcnZ4Rkx2T201OWFPVHd5byt1NUtj?=
 =?utf-8?B?VlB4emxaK0ZGc3RiU2poNUt4SUsxZWs0eGFzdTNaQ0wrMGx1SFJ5elBXQ3BP?=
 =?utf-8?B?VVBBeXhlNGpSdFp4bXBjbzJhU1ErSS85TUpCbVJ5NVc3UllVWXRRR2t6b0FE?=
 =?utf-8?B?VThzSm9WMkR1QXA2MGhscFpjRzIyYjA2WGU1R09PdlBtNmdNYUZsWUNIMUFR?=
 =?utf-8?B?RmgwbWpwNTZoZXhnajVOSEVYVHdyQ1dZNnBCVFFidGlILzE3OUI2VkZFbnpF?=
 =?utf-8?B?VUxzdWZQMXE5VzNvQkl3YkJqUWgyTjZ5dDFiYzBJSG1DcmVPcVBTSGFaV1Na?=
 =?utf-8?B?RzdRVWM0cmtkSG5tM2VkQkcrNC9OdDNkek96UzQ4eFJnOXZyS1BWM01ZbVNI?=
 =?utf-8?B?TFBCT2VIUEVHTnAzdzB0NHZDdVV1ejBoZE94WFBmNnNSNmE1ZitjajFFN01Z?=
 =?utf-8?B?ZmRRN3pHWXZ6RHVURmQzWGltUERJUlJVcVUzQVczTGJNZStaY2FGZGF5Y0ti?=
 =?utf-8?B?NGkvajhkQ2NZOXhZMDdyenczQmNwOUQ0YkNVR3JrNDRqazdEN3BlRG1TNjg5?=
 =?utf-8?B?SDVzL3pIbWwrS095NXRsc2FMNWYzenFuZEFWc2xrVFRBSXo5b1NYZzVLS01F?=
 =?utf-8?B?eGg1Q3liMnZUMW5oaWw4LzBLSWc2dkhqQTJ3bVowUGhvVWZTR2VPT1k2RHBo?=
 =?utf-8?B?VDNFazFmVk52aWJ6Nzc5T081MDFIT0ZsSzYxMktvNlhpQWlURGhxdEtJdU5Q?=
 =?utf-8?B?T2lSK2NlY0MzVXJrNmZWaklhYnR6SWEzVjhBUFNKS2tDWlA4MU1BWDhiZlJh?=
 =?utf-8?B?SS92dVBCL3JqdytGSjMvNGN6dUdMS0ZIdzQwTER6MStZV2JCbzF5bnFuL3pB?=
 =?utf-8?B?NG5wZFkvbnBDalVhMmFRTUp1bCt6TmtpbmFsWUNCSytQQ1Jid2w5bWxLVmZq?=
 =?utf-8?B?TE5EdC80eE9QbjNubCtlYzFVZVQ1bGt1ZE1KUU5paEgvblhUMmQrWnVPYTBN?=
 =?utf-8?B?YzdLZ2d3WUVtZFFBNFpNdlRPTExqMnRxNEVncFRRRndrYXlPQ3U5UlRIZ2FW?=
 =?utf-8?Q?Cfoi00XqwlC9zdxGB2qsNi2xBZMYzyD5klKN4hdpCB61?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 271a453b-bfdd-4725-5bb2-08ddd989ebfe
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7183.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2025 10:20:55.1482 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sT9U7zIbefwYNSLe00nQoAC+mdA6rbFB9owzTqiGxIxfwref/86e2Vm8vr2Bb4fnjH3br8oBX828zfr9l1uDEIyVI+5NpLdMvTdK7+5DHnoZwLAhPDYSx/MuEzIE1byd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8364
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


On 29-07-2025 16:47, Jani Nikula wrote:
> Add a common allocator function for struct intel_digital_port, with some
> member default initialization to deduplicate them from everywhere
> else. This is similar to intel_connector_alloc().
>
> At least for now, place this in intel_encoder.[ch]. We don't have a
> dedicated file for dig port stuff, and there wouldn't be much to add
> there anyway. A digital port is a sort of subclass of encoder, so the
> location isn't far off the mark.
>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Looks good to me.
Reviewed-by: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>

> ---
>   drivers/gpu/drm/i915/display/g4x_dp.c        |  7 +------
>   drivers/gpu/drm/i915/display/g4x_hdmi.c      |  9 ++-------
>   drivers/gpu/drm/i915/display/intel_ddi.c     |  8 +-------
>   drivers/gpu/drm/i915/display/intel_encoder.c | 18 ++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_encoder.h |  3 +++
>   5 files changed, 25 insertions(+), 20 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/g4x_dp.c b/drivers/gpu/drm/i915/display/g4x_dp.c
> index 846dbd8ae931..aa159f9ce12f 100644
> --- a/drivers/gpu/drm/i915/display/g4x_dp.c
> +++ b/drivers/gpu/drm/i915/display/g4x_dp.c
> @@ -1300,12 +1300,10 @@ bool g4x_dp_init(struct intel_display *display,
>   		drm_dbg_kms(display->drm, "No VBT child device for DP-%c\n",
>   			    port_name(port));
>   
> -	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
> +	dig_port = intel_dig_port_alloc();
>   	if (!dig_port)
>   		return false;
>   
> -	dig_port->aux_ch = AUX_CH_NONE;
> -
>   	intel_connector = intel_connector_alloc();
>   	if (!intel_connector)
>   		goto err_connector_alloc;
> @@ -1315,8 +1313,6 @@ bool g4x_dp_init(struct intel_display *display,
>   
>   	intel_encoder->devdata = devdata;
>   
> -	mutex_init(&dig_port->hdcp.mutex);
> -
>   	if (drm_encoder_init(display->drm, &intel_encoder->base,
>   			     &intel_dp_enc_funcs, DRM_MODE_ENCODER_TMDS,
>   			     "DP %c", port_name(port)))
> @@ -1386,7 +1382,6 @@ bool g4x_dp_init(struct intel_display *display,
>   	}
>   
>   	dig_port->dp.output_reg = output_reg;
> -	dig_port->max_lanes = 4;
>   
>   	intel_encoder->type = INTEL_OUTPUT_DP;
>   	intel_encoder->power_domain = intel_display_power_ddi_lanes_domain(display, port);
> diff --git a/drivers/gpu/drm/i915/display/g4x_hdmi.c b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> index 2610f5702fb9..108ebd97f9e4 100644
> --- a/drivers/gpu/drm/i915/display/g4x_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/g4x_hdmi.c
> @@ -19,6 +19,7 @@
>   #include "intel_display_types.h"
>   #include "intel_dp_aux.h"
>   #include "intel_dpio_phy.h"
> +#include "intel_encoder.h"
>   #include "intel_fdi.h"
>   #include "intel_fifo_underrun.h"
>   #include "intel_hdmi.h"
> @@ -690,12 +691,10 @@ bool g4x_hdmi_init(struct intel_display *display,
>   		drm_dbg_kms(display->drm, "No VBT child device for HDMI-%c\n",
>   			    port_name(port));
>   
> -	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
> +	dig_port = intel_dig_port_alloc();
>   	if (!dig_port)
>   		return false;
>   
> -	dig_port->aux_ch = AUX_CH_NONE;
> -
>   	intel_connector = intel_connector_alloc();
>   	if (!intel_connector)
>   		goto err_connector_alloc;
> @@ -704,8 +703,6 @@ bool g4x_hdmi_init(struct intel_display *display,
>   
>   	intel_encoder->devdata = devdata;
>   
> -	mutex_init(&dig_port->hdcp.mutex);
> -
>   	if (drm_encoder_init(display->drm, &intel_encoder->base,
>   			     &intel_hdmi_enc_funcs, DRM_MODE_ENCODER_TMDS,
>   			     "HDMI %c", port_name(port)))
> @@ -767,8 +764,6 @@ bool g4x_hdmi_init(struct intel_display *display,
>   		intel_encoder->cloneable |= BIT(INTEL_OUTPUT_HDMI);
>   
>   	dig_port->hdmi.hdmi_reg = hdmi_reg;
> -	dig_port->dp.output_reg = INVALID_MMIO_REG;
> -	dig_port->max_lanes = 4;
>   
>   	intel_infoframe_init(dig_port);
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 0405396c7750..403249345f12 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -5148,12 +5148,10 @@ void intel_ddi_init(struct intel_display *display,
>   			    phy_name(phy));
>   	}
>   
> -	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
> +	dig_port = intel_dig_port_alloc();
>   	if (!dig_port)
>   		return;
>   
> -	dig_port->aux_ch = AUX_CH_NONE;
> -
>   	encoder = &dig_port->base;
>   	encoder->devdata = devdata;
>   
> @@ -5191,9 +5189,6 @@ void intel_ddi_init(struct intel_display *display,
>   
>   	intel_encoder_link_check_init(encoder, intel_ddi_link_check);
>   
> -	mutex_init(&dig_port->hdcp.mutex);
> -	dig_port->hdcp.num_streams = 0;
> -
>   	encoder->hotplug = intel_ddi_hotplug;
>   	encoder->compute_output_type = intel_ddi_compute_output_type;
>   	encoder->compute_config = intel_ddi_compute_config;
> @@ -5331,7 +5326,6 @@ void intel_ddi_init(struct intel_display *display,
>   
>   	dig_port->ddi_a_4_lanes = DISPLAY_VER(display) < 11 && ddi_buf_ctl & DDI_A_4_LANES;
>   
> -	dig_port->dp.output_reg = INVALID_MMIO_REG;
>   	dig_port->max_lanes = intel_ddi_max_lanes(dig_port);
>   
>   	if (need_aux_ch(encoder, init_dp)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_encoder.c b/drivers/gpu/drm/i915/display/intel_encoder.c
> index 0b7bd26f4339..f9ce81320d68 100644
> --- a/drivers/gpu/drm/i915/display/intel_encoder.c
> +++ b/drivers/gpu/drm/i915/display/intel_encoder.c
> @@ -80,3 +80,21 @@ void intel_encoder_shutdown_all(struct intel_display *display)
>   		if (encoder->shutdown_complete)
>   			encoder->shutdown_complete(encoder);
>   }
> +
> +struct intel_digital_port *intel_dig_port_alloc(void)
> +{
> +	struct intel_digital_port *dig_port;
> +
> +	dig_port = kzalloc(sizeof(*dig_port), GFP_KERNEL);
> +	if (!dig_port)
> +		return NULL;
> +
> +	dig_port->hdmi.hdmi_reg = INVALID_MMIO_REG;
> +	dig_port->dp.output_reg = INVALID_MMIO_REG;
> +	dig_port->aux_ch = AUX_CH_NONE;
> +	dig_port->max_lanes = 4;
> +
> +	mutex_init(&dig_port->hdcp.mutex);
> +
> +	return dig_port;
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_encoder.h b/drivers/gpu/drm/i915/display/intel_encoder.h
> index 3fa5589f0b1c..65a9c521f8a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_encoder.h
> +++ b/drivers/gpu/drm/i915/display/intel_encoder.h
> @@ -6,6 +6,7 @@
>   #ifndef __INTEL_ENCODER_H__
>   #define __INTEL_ENCODER_H__
>   
> +struct intel_digital_port;
>   struct intel_display;
>   struct intel_encoder;
>   
> @@ -17,4 +18,6 @@ void intel_encoder_link_check_flush_work(struct intel_encoder *encoder);
>   void intel_encoder_suspend_all(struct intel_display *display);
>   void intel_encoder_shutdown_all(struct intel_display *display);
>   
> +struct intel_digital_port *intel_dig_port_alloc(void);
> +
>   #endif /* __INTEL_ENCODER_H__ */
