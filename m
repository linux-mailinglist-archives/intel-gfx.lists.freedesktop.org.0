Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45705CCA42A
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 05:36:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2759C10E04E;
	Thu, 18 Dec 2025 04:36:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FcH62k15";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F79310E04E;
 Thu, 18 Dec 2025 04:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766032614; x=1797568614;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=+C0sgNNkhh0RzTEzyI31c1l8nMEwwRC6e2xQqnJuEJA=;
 b=FcH62k15NIXRR5bndMXDwlDoF5xsLzBRbloSD/3L0eH2s6MRKNpqtxsT
 AxZacVnu7O9opyP9Uf6b03COD4SoNEGw11YYCSi6Pa3vTcfNwyF4pS+Cs
 +ClxRvbd8ylEGDpfwW6AAHPzEile51+n/OmmiAzVU4EDQmQ07wNK7zltf
 YoxEcnwDcjihTgbug+g1dN8UOHqG2P/MMeWtfpImoT7f3TQfmTx8PLCbe
 vjfIMaXT3pa5W/QD/ciH1kuUYRx1t4V2SAYWguG98BHLEEJZV2SojF/rV
 IHAAIleAEE47x6orcnVgE15z3ei2CFxAu7vMEBdpXBUJmYHXUx+DPswxv Q==;
X-CSE-ConnectionGUID: oM+pCG6RSc6CF8+JFP1e8A==
X-CSE-MsgGUID: 3vFwixLESRK3pixeO2pz9g==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="78295295"
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="78295295"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 20:36:53 -0800
X-CSE-ConnectionGUID: e4b8AdmyQXOZJiVbvyM8vw==
X-CSE-MsgGUID: GKBHIRXdRveLkRsVCX1uMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,156,1763452800"; d="scan'208";a="198727434"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 20:36:52 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 20:36:51 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 17 Dec 2025 20:36:51 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.27) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 17 Dec 2025 20:36:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DLz0Gkd1qlGdFezVco0rvJfeZV9IVkP+u4vOMUWv5/krJVqAFXpRiduGoOVgdHLMQW3AnN2szy1QySRLeoV+72bqaqDANrxhHoOqu0Zkn98JD/PzmrZ++ETZ1GyoGFczbnWMaMUxjtXOsCRhd1pBte0YwzKtD8rnAqzqFBT1HT+AFDHZyWruBn05twcg6o6ACG3TcVRr342DgmKNw2EQGlnkg8llyH8qHsK0Ea8dhMEj4u24PB0HFFkrDLmIP1pQQszhP19becwYRVFbTVHiJX5YXAdfa5+b1F8dNXBSi6CyN2Fz9GJ5RSZnUZITKBtZjQpD/+i0NkLbfoZB3FSxYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ALDXFgJO9/OkGyLfIMKGy+tDE+XIMImUdqdcnpg9CeU=;
 b=wmJFRUSvE0AeYAqIFvAfrtCaNAg86h31fh6dJVhakjE7eq8CWCBumIRLp1fZ6UA6FX6ctf6X3onmDnNmQlagINuULh6dXvLZkDAZu7JmkxFn6x562ERQ6tGh10pcJoQfiCqwHFSxAFkOEfLl2/TijjntbvANDNLERd2nTCIuWhzvN+Kjz4uz0gOy6dMZ2CDp6JXs2tk1imBCjoBIRTi+gN6w6Rd3sDtSi0teUS92Ku3PZfQg+YM3uukEDYV+2yDvXmeZwZ9gdZ94jx/oQX1YJcRj1ZZJoEoqIA+bGoqiVHmojIsZdUI+D0HcpTYBwoDag1OvQoaqeAq2Su367zX2BQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DS0PR11MB8081.namprd11.prod.outlook.com (2603:10b6:8:15c::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9434.8; Thu, 18 Dec
 2025 04:36:49 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.9412.011; Thu, 18 Dec 2025
 04:36:49 +0000
Message-ID: <a49db7f3-b0f8-49e8-b818-ddad61f64262@intel.com>
Date: Thu, 18 Dec 2025 10:06:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [core-for-CI] powercap: intel_rapl: Fix possible recursive lock
 warning
Content-Language: en-GB
To: Mika Kahola <mika.kahola@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
References: <20251217092057.1231895-1-mika.kahola@intel.com>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20251217092057.1231895-1-mika.kahola@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0221.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1b4::9) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|DS0PR11MB8081:EE_
X-MS-Office365-Filtering-Correlation-Id: 99610878-dc11-4692-ae27-08de3def0f18
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WHYzVzNuK0Y5RllTS0szZkZuTnhqOXNPNS9KeFF4T25rYnR6QXJUNjJ6c2h4?=
 =?utf-8?B?U05aaE5nTjk0WE5uUVpXZWJSZXRNUU05V1VrZ3VISE5iRmoyRW1EQTZIUzFK?=
 =?utf-8?B?Ui9lZEF2NnpYZkpHNHp1cGN3Vjdhd2FLVTdvNGFZdnpIR0xSS0RpZlhTTXpZ?=
 =?utf-8?B?a2UyNGZSbldEcmhzRm1wa3lEZWxqcjlUZUY3aEtYMHorNmZmN1ZYalpTOFJy?=
 =?utf-8?B?K3BncjNmTHVTZ1VhTGZUelh4alU0dDR0YUxXdnhpN0hRS0tDT1NUbWZpVzNS?=
 =?utf-8?B?UkZ0NHA1MzlUaUwyRCt0SUNBTERJK3NMeGhrVTg0MTE4ZENiZ3R0b2tjRmdT?=
 =?utf-8?B?c2w5WTVFVUh4M2dFVllDV0xBcEhEVzEzZTNmNlBKUm9taHl6L3MxYkwxTDQx?=
 =?utf-8?B?U3BpOHpmY3VKTHp3NFU1NW5STmk1TmlLbTY5cytBZnZ1enBTRGVYNUYrZmtQ?=
 =?utf-8?B?VXdweGRZQStaL2ZWZHpocWk2QXB1WExmaHFOSWZxVUtNakg3cXc3RDMrNVBN?=
 =?utf-8?B?RDk2TmhuR2FWdGQ5dGdqUzlVaVFjSnRURG5LaTF4dDg5STl2QjQrZ0Z6MENm?=
 =?utf-8?B?UVE2anp1VWEzRStpR3B1M0xFK2xHdXE5VTErU3ovREpPK2NqdjFLRjNISExL?=
 =?utf-8?B?SUFEcUpDSjBQcXJRd3ozeFJjWVJIcUkzZ1BkcDdjYVM5aExZSEFjY1FacWsr?=
 =?utf-8?B?bWVYOHdGRTkyMFEvVFdwY3VCYVkycVRxMzN0TURNR01GbThXdDZVbVR6c0J3?=
 =?utf-8?B?UkNTTnliRlVaSGI5VHJ3c1NtaFRJMDNJUjZMbHVMVkRoQmRWekxmTkVhaFJ6?=
 =?utf-8?B?ZWNFTkY0dVY5R2tSTXM5OWhNdUtQdFpUdVFhRXl1dTBSWVY4a0F4bWhTaERh?=
 =?utf-8?B?Q0U5V2tqbnhWQkhWVzFLekVrelBVTTIzdk1BUTBueUVjSmh3SFBFdkl3NzdU?=
 =?utf-8?B?ZWlhbXd3WjF5RlgxK284bjgwRzVaYTRVSDBueGhkamtwYUI2ZnlDZnBaWWFt?=
 =?utf-8?B?V3V1MkV2ODNPVWlLbVdRTEN2ajl3Y2dDTkxseDBBS3RYVEtSN1ZrNDU0ZElh?=
 =?utf-8?B?a09VK1c3MW1WckFxdWJlRDhaaVFVN1MrdVA0MnZlSDY5Rkwwbkc4a3pSeUVu?=
 =?utf-8?B?OUN3bGt4VnZGT3NXRlJZS000UHBKTThtZm5QSTIvWm5pdWdHdTdtN3QxeXNa?=
 =?utf-8?B?MnNoY3hWWDhqSVd5WkwxSFJVWlpRS2pLY3EwYWZOWWJBeXVIdDFGb0Zac3VE?=
 =?utf-8?B?VEJVdFp6elNlcEFKK01qaDhzb1JqYUpJTFhJaDhMMXN2Qm0rM1VCTFhHZnc3?=
 =?utf-8?B?dXdwai9UZUJ0TmplZnRFOTRlSmkxMjlFR2FxOGVSOHd3TEhjeUdGTThYcmF3?=
 =?utf-8?B?SS9zQUxkMVE2OWNVTENFQVdqeEp1M0E5Q2xyWmh5d0VEa3QxSXlZRURUS3JY?=
 =?utf-8?B?cElhd0I1VTNaaDc2WTRGb216c0l4MDZ4VmxYU1hZdUpCdVk3OG15bjlPTkFB?=
 =?utf-8?B?VUtYRkFQMnlPKzRQWG9vZlBDQjlwQkN1czhDZFdkUTZsVi9pdkFyWEVDakhV?=
 =?utf-8?B?NENkNEtGekUxUFk1eUROZ0U5a2pjOE9Dekx4M094anRoem9iVDVUZzJEV2FH?=
 =?utf-8?B?SVhSRGtqQkdpSlBaNitPQ241cnV2bHlpNzlHd0xkRm9CcEpSTUJwSlJXbk9S?=
 =?utf-8?B?NUpZQmJZTTlQL0NVK1JoZHdURUd6WStBZGdwWXp4YXYycVNwblFmRFlQVEs2?=
 =?utf-8?B?UTJ1RTRLd1NnOGhvOFp2L1AzWGhkcEdmdktmV1JONHhoU0xSeEJ3QUVrOGV5?=
 =?utf-8?B?aTZHd1RvVVVscVdUY3pvRnFjVXE2cVVNQ2RFTlN3SmNjUWs3RmFLaWExTjZF?=
 =?utf-8?B?UnkyQTBCZStRT2Jrbkd1Y3pDZVllY0R2STZ4WTVDenFLUXc9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NXgwd2ZETWVoeGRHcm9WbW1RYllWNkNhRGpGYjFoclgrQnUwWHNNVVZKQ0ZH?=
 =?utf-8?B?OWQ4Z0xJWGtGMWNiYXZaZWlqNmdOU2V0d2MzVitpakw4cVN2V2d3YWg0UnIz?=
 =?utf-8?B?cU5KZXl6ZUJ4Z0J1aHdVcW45Y2pIb1FpNk5hdkQ1a0w3N2R1VDFpRlFucDl2?=
 =?utf-8?B?dmMvRytKWFRRSllaWWprbmxUa296Ny9JOXJ0YVFCV0Nvc1Z3RnNLalVoU3Fn?=
 =?utf-8?B?QmhKSkhXb3ZwMHNNb29ZRjJGUTMyMElRRzJ2dEVrcHdJczNiMkFSRzlaZGV1?=
 =?utf-8?B?V2tYbFgyRnVCT2xrTGxyUmpBbHBsNnV0VWpJTHFQNzhxZGdnRmhXMmpkNGd4?=
 =?utf-8?B?aVpOVkxhczFBUCswVk9YVjlpQ2l5K1lzUkx4b1lDMnBocjhxdmY4K1Z1UGJS?=
 =?utf-8?B?RjBCNU9ZZC9YN1djc2ZIM0tUVm85VnlvdEs5VE5ndHVZOE9sSmx4WTczZkFT?=
 =?utf-8?B?eTcwdGtLRG94anp0RTdFL21nbU03Vithd2s1cnF6NlJOcVJlc1NWQXVwczBD?=
 =?utf-8?B?dGVXc3NYd2cvKzVmVjFSVHJ0d0dKbi80TWZJdHovT3hmY0tGakJ2TlBMSTgr?=
 =?utf-8?B?a1g2aFFFRWdwTC9WbFRhb3BKMm1YOXkvaCsxT25JWG5LRW96STFJMWZkSzNi?=
 =?utf-8?B?emRGWkVBVEZzNUkyZHIvelg1d1Z2NkQxSFpQdWptbjllUWhmYk5tYXUyMkk3?=
 =?utf-8?B?UDZWU01NVi9QNjZlSDExZHYrOWpYTXVTdFZGYXk4elZZcVh5bmNJWGV6QXRS?=
 =?utf-8?B?RnV6NmJ2WUpQVWRoOGdtODc4b2xMbHdTNlpCSTBBbHFsTVJkR1p5RWRWdEFt?=
 =?utf-8?B?WjRmZWVNaEVZdUZMUTZ0UXFDd1VhekU3M1orNnpGMWNGcWFscyttYTdHUG9V?=
 =?utf-8?B?NW10alhGZG1JaVNMczFQSlJYMWpYcGozU0ZOZ0xQQWFPL0k3RmdhbHFKdm5R?=
 =?utf-8?B?VWU5UXZnNERoaGI2V2o3bXVjNlk1Nk1XcTk1TGl0WXNKVERJRTdua1RvWkpZ?=
 =?utf-8?B?VnNlcmFPSFN3SUErY2s2b2NHbkQ1cVlIZWlzTURIajZBeFlqZnQrN3FCNStG?=
 =?utf-8?B?ZHZRZU5STll6ZU9JaldOcWVmakRlcWxhT1JFOCtxREMwSmdQZGxKZ2NSR21W?=
 =?utf-8?B?Vm5YYWxvZUhkZ3FCSC96S2Njait0Y2xrckdRbDBLVVpCU3lSOWhBUHVRZVhN?=
 =?utf-8?B?VXAyR2JMY2U0K0xGMVNGTVB4VTdXdjMxVGxWVkdUZHJmQU5kU0d4VlROU0lK?=
 =?utf-8?B?bDlHSEFLNTg2M1VqbXlsRGhZOWFyYzkvOU5QOE5wN3VTSTlaZVpFaGFxUDF1?=
 =?utf-8?B?K09sSDA0WEVnZGRhczQ4ODVkeXhKMWtRc2dtR3EyVEdvSHpHVTJpMXNQcFFG?=
 =?utf-8?B?ZEM1Q1lQRkUrUWIrOFY4Vy9jZjg2ek1uUUtEVTBXK1IyQjl2a1pmREpiM3Mw?=
 =?utf-8?B?M1E4R0laK3cvUnhqMUF1RHMwcFl4a0JvZHI3TUo3NlcrSU03RGhjY1JVNVJi?=
 =?utf-8?B?bmNETktGbXc1OEZhOUNabWNBYkxNSGlQeHh1dUViRjRadVJ4YnpaTE53L0l4?=
 =?utf-8?B?OWF1SDFZMWdxUFFZU0kzbGROVlpRdGI5YXVQekVSbFFxRVpOY3Y2L3kwekdj?=
 =?utf-8?B?bUZicmsyTTdnMTBNQm84YnMvVVhXNCtWTVpGNkppN2dCZEFGTVEyVXRwaTZS?=
 =?utf-8?B?N2kzSk1kYm5hQ0J2Zzl2ZXFrcXYyU2gyOXlLZmpHUHJ5d2N4QzR5WGx3R0pB?=
 =?utf-8?B?Q29CMVowQ05FU296UHJkc3F1QlNDVWlnNWVBZVZCa3ZhbGRETkYrSXNSMWE0?=
 =?utf-8?B?T2orS1V6ZHdnNGljUDRHUitpOEtBNE8xcm5ma1h1cDhQWUl1QnlocUpncEpL?=
 =?utf-8?B?TW5kUk5TdHBGQnFycjFXdU9vOWV4dnFWN3lyK0VFd0IzK1NvTXByNkxjR1Ax?=
 =?utf-8?B?SVZUYVdkdFJZNzhNUjhaNjFiTXNPRUlXYURYdFpITWcwUk9kQjJmbXkzZTZ3?=
 =?utf-8?B?dUF6S29xSW00OHRPTUJMS0hzdVdsbmFMS2FtR2Y3QUdXYnJOVEIvZWFuTnFS?=
 =?utf-8?B?R3pwM0toZXYxYlNYZ0dIRnRZZ2RyaGo3T1NhMFZiTmdUZCtVS0UrR2tSMmth?=
 =?utf-8?B?RmMvNFl6ZElaQzJkMUVvT1I2OHFBTjBIaWJiTVR4RjltN0pFcTJPMitoNHlV?=
 =?utf-8?Q?LlUv6jwcv8f/eksq7XGRWww=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 99610878-dc11-4692-ae27-08de3def0f18
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Dec 2025 04:36:49.6014 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6qD1aCqVcna+ss6f1de0Ugr9Z0OiGdTicjGnoyNHWBQSe4T11a59DGMqIY72pR4JCfqnVkLBPe0adctEbJ0+DjYK+f13Y+j1SdgANO3orCo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8081
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

Hi Mika,

On 12/17/2025 2:50 PM, Mika Kahola wrote:
> From: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
> 
> With the RAPL PMU addition, there is a recursive locking when CPU online
> callback function calls rapl_package_add_pmu(). Here cpu_hotplug_lock
> is already acquired by cpuhp_thread_fun() and rapl_package_add_pmu()
> tries to acquire again.

There is a slightly different version of the patch that got merged. we 
should perhaps push that

https://lore.kernel.org/linux-pm/CAJZ5v0h4SPvp97iU9ibXrnjqKOQ7GZOtUPb9ZGj80=O5pfukYQ@mail.gmail.com/T/#t

Also you will need to add your signed off and add

References: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15462

==
Chaitanya

> 
> <4>[ 8.197433] ============================================
> <4>[ 8.197437] WARNING: possible recursive locking detected
> <4>[ 8.197440] 6.19.0-rc1-lgci-xe-xe-4242-05b7c58b3367dca84+ #1 Not tainted
> <4>[ 8.197444] --------------------------------------------
> <4>[ 8.197447] cpuhp/0/20 is trying to acquire lock:
> <4>[ 8.197450] ffffffff83487870 (cpu_hotplug_lock){++++}-{0:0}, at:
> rapl_package_add_pmu+0x37/0x370 [intel_rapl_common]
> <4>[ 8.197463]
> but task is already holding lock:
> <4>[ 8.197466] ffffffff83487870 (cpu_hotplug_lock){++++}-{0:0}, at:
> cpuhp_thread_fun+0x6d/0x290
> <4>[ 8.197477]
> other info that might help us debug this:
> <4>[ 8.197480] Possible unsafe locking scenario:
> 
> <4>[ 8.197483] CPU0
> <4>[ 8.197485] ----
> <4>[ 8.197487] lock(cpu_hotplug_lock);
> <4>[ 8.197490] lock(cpu_hotplug_lock);
> <4>[ 8.197493]
> *** DEADLOCK ***
> ..
> ..
> <4>[ 8.197542] __lock_acquire+0x146e/0x2790
> <4>[ 8.197548] lock_acquire+0xc4/0x2c0
> <4>[ 8.197550] ? rapl_package_add_pmu+0x37/0x370 [intel_rapl_common]
> <4>[ 8.197556] cpus_read_lock+0x41/0x110
> <4>[ 8.197558] ? rapl_package_add_pmu+0x37/0x370 [intel_rapl_common]
> <4>[ 8.197561] rapl_package_add_pmu+0x37/0x370 [intel_rapl_common]
> <4>[ 8.197565] rapl_cpu_online+0x85/0x87 [intel_rapl_msr]
> <4>[ 8.197568] ? __pfx_rapl_cpu_online+0x10/0x10 [intel_rapl_msr]
> <4>[ 8.197570] cpuhp_invoke_callback+0x41f/0x6c0
> <4>[ 8.197573] ? cpuhp_thread_fun+0x6d/0x290
> <4>[ 8.197575] cpuhp_thread_fun+0x1e2/0x290
> <4>[ 8.197578] ? smpboot_thread_fn+0x26/0x290
> <4>[ 8.197581] smpboot_thread_fn+0x12f/0x290
> <4>[ 8.197584] ? __pfx_smpboot_thread_fn+0x10/0x10
> <4>[ 8.197586] kthread+0x11f/0x250
> <4>[ 8.197589] ? __pfx_kthread+0x10/0x10
> <4>[ 8.197592] ret_from_fork+0x344/0x3a0
> <4>[ 8.197595] ? __pfx_kthread+0x10/0x10
> <4>[ 8.197597] ret_from_fork_asm+0x1a/0x30
> <4>[ 8.197604] </TASK>
> 
> Fix this issue in the same way as rapl powercap package domain is added
> from the same CPU online callback by introducing another interface which
> doesn't call cpu_read_lock(). Add rapl_package_add_pmu_locked() which
> doesn't call cpu_read_lock(). The original rapl_package_add_pmu() still
> calls cpu_read_lock() for TPMI RAPL.
> 
> Fixes: 748d6ba43afd ("powercap: intel_rapl: Enable MSR-based RAPL PMU support")
> Reported-by: Borah, Chaitanya Kumar <chaitanya.kumar.borah@intel.com>
> Closes: https://lore.kernel.org/linux-pm/5427ede1-57a0-43d1-99f3-8ca4b0643e82@intel.com/T/#u
> Signed-off-by: Srinivas Pandruvada <srinivas.pandruvada@linux.intel.com>
> ---
>   drivers/powercap/intel_rapl_common.c | 15 ++++++++++++---
>   drivers/powercap/intel_rapl_msr.c    |  2 +-
>   include/linux/intel_rapl.h           |  2 ++
>   3 files changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/powercap/intel_rapl_common.c b/drivers/powercap/intel_rapl_common.c
> index b9d87e56cbbc..27eaf0d4265f 100644
> --- a/drivers/powercap/intel_rapl_common.c
> +++ b/drivers/powercap/intel_rapl_common.c
> @@ -2032,7 +2032,7 @@ static int rapl_pmu_update(struct rapl_package *rp)
>   	return ret;
>   }
>   
> -int rapl_package_add_pmu(struct rapl_package *rp)
> +int rapl_package_add_pmu_locked(struct rapl_package *rp)
>   {
>   	struct rapl_package_pmu_data *data = &rp->pmu_data;
>   	int idx;
> @@ -2040,8 +2040,6 @@ int rapl_package_add_pmu(struct rapl_package *rp)
>   	if (rp->has_pmu)
>   		return -EEXIST;
>   
> -	guard(cpus_read_lock)();
> -
>   	for (idx = 0; idx < rp->nr_domains; idx++) {
>   		struct rapl_domain *rd = &rp->domains[idx];
>   		int domain = rd->id;
> @@ -2091,6 +2089,17 @@ int rapl_package_add_pmu(struct rapl_package *rp)
>   
>   	return rapl_pmu_update(rp);
>   }
> +EXPORT_SYMBOL_GPL(rapl_package_add_pmu_locked);
> +
> +int rapl_package_add_pmu(struct rapl_package *rp)
> +{
> +	if (rp->has_pmu)
> +		return -EEXIST;
> +
> +	guard(cpus_read_lock)();
> +
> +	return rapl_package_add_pmu_locked(rp);
> +}
>   EXPORT_SYMBOL_GPL(rapl_package_add_pmu);
>   
>   void rapl_package_remove_pmu(struct rapl_package *rp)
> diff --git a/drivers/powercap/intel_rapl_msr.c b/drivers/powercap/intel_rapl_msr.c
> index 0ce1096b6314..ef3435de1926 100644
> --- a/drivers/powercap/intel_rapl_msr.c
> +++ b/drivers/powercap/intel_rapl_msr.c
> @@ -82,7 +82,7 @@ static int rapl_cpu_online(unsigned int cpu)
>   		if (IS_ERR(rp))
>   			return PTR_ERR(rp);
>   		if (rapl_msr_pmu)
> -			rapl_package_add_pmu(rp);
> +			rapl_package_add_pmu_locked(rp);
>   	}
>   	cpumask_set_cpu(cpu, &rp->cpumask);
>   	return 0;
> diff --git a/include/linux/intel_rapl.h b/include/linux/intel_rapl.h
> index e9ade2ff4af6..68fea61ca77d 100644
> --- a/include/linux/intel_rapl.h
> +++ b/include/linux/intel_rapl.h
> @@ -214,9 +214,11 @@ void rapl_remove_package(struct rapl_package *rp);
>   
>   #ifdef CONFIG_PERF_EVENTS
>   int rapl_package_add_pmu(struct rapl_package *rp);
> +int rapl_package_add_pmu_locked(struct rapl_package *rp);
>   void rapl_package_remove_pmu(struct rapl_package *rp);
>   #else
>   static inline int rapl_package_add_pmu(struct rapl_package *rp) { return 0; }
> +static inline int rapl_package_add_pmu_locked(struct rapl_package *rp) { return 0; }
>   static inline void rapl_package_remove_pmu(struct rapl_package *rp) { }
>   #endif
>   

