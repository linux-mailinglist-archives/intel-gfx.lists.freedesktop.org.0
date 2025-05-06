Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 622EDAAC43D
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 14:33:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C358310E67F;
	Tue,  6 May 2025 12:33:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nIV+kquU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DE7310E67F;
 Tue,  6 May 2025 12:33:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746534796; x=1778070796;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SQkN+OB7xi0zLcD97JNtUqlq1cyJQ7eRGjdu+DLX5gI=;
 b=nIV+kquU0Rvya8ncKeHDcC/BPKmIWZFpEoD447cqsbtSP5mELR54zn1z
 NMIjLz6xcq505auutPcQQ9qWR4aXwb3kNedgrKaEVbApp8Cg1hAxQmRgT
 sDED16bFeBw//X7aMfiLxaePKaEVkGTusdEqbhxL04dynlGsnMVpPnxc7
 4Ehu4yeWRGEUaWCpGgx6HiULBv50ATRozAZBIetvTjO/+ldk54z4gW6Ey
 ql2Cf3OedKGH+3pHqKqTayoOpPWStm8dt55EEyN8Cb8tmlZSS+fjgPpd6
 YclFPBtiQsNKHwG3XdFITqhJyOoVTjZ6eFiHpp76pgTqHxSdRONjsvpaS g==;
X-CSE-ConnectionGUID: miVIsekeThaL74ViLYyWxQ==
X-CSE-MsgGUID: eONmNi6wSD667M96kOp4Jw==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="48108269"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="48108269"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 05:33:16 -0700
X-CSE-ConnectionGUID: wE0xzFCpRpuw7X2B4zNg2w==
X-CSE-MsgGUID: MhtEC4mUQPejPXfjtsKATQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="140430076"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 05:33:14 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 05:33:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 05:33:14 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 05:33:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oxPn/9QOfVpKZyQCjMLXPPLrMk8BoIXhCqvrh2CobpQcqn1giYbtE2b1vTcJi8fpJZxn3ZjfrTuIaxTmeYiKhe7UJkenQtOPEcGzUjqaJ1xV0427JOd1zYFNW9CI70xJE7VtRo4VeA57HLkOWmcOvnprX6WXYB/49zT9GNykAgcK2bJtpmNTvJNDi8e8ZGJJMbc54nrTP1AtL5MW52B1C3ojPSdNXVcjIsB9CooUISvSmplIljPkqZVrAlGJ7BTuEEaSG1Lwqf7R1pPPb9qj8NtlsGud+9woVYpPVaAVPsuyBk4LqUv9gTZCi30JUd7GrpzVO6BJlLKVW6Qn7XOztQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uZZRS6YiYfQjr41PL6TmTxJutrggMEtFUNVsj7qqW+Q=;
 b=dZIN+50mjtIS7HxFED6kjY7pTbqe2KE0O6dQQo5P3bL1tKUGPFc+7EZO3H28p5Lohk43hxOKanbyveD9EIiblxvrA2GW8jb4Imh/fY0m7Ub1pMnKqxFL2IUe6FHZN65nyhhTyLce7flWCJ6ppgzFbNvHAg0PmrRNVm0Gur/YlPfdf8HHJm2THINFVxkq7rxggvPJQ+CW3H7ztlzLgD87b0Hbd/ODvu3BW2EPkgnpqKFTtS0eMCV4sJOtSSIN3WXHpvaXqM8oE2hvbNBhkhzfWnhqRtQdrzaUPjHYFEu9T0jE5zY8/7wk1uoUrrF33C/GZlLj5QEzJIdpkcJaIXGnoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.23; Tue, 6 May
 2025 12:32:53 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Tue, 6 May 2025
 12:32:52 +0000
Message-ID: <22ebd87c-22d7-488a-a2e0-a482995def96@intel.com>
Date: Tue, 6 May 2025 18:02:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/12] drm/i915/dp_mst: Simplify handling the
 single-bpp case during state computation
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-3-imre.deak@intel.com>
 <b15cc451-812a-49e9-812d-7bab2807f776@intel.com>
 <aBndpioCdsEEcmRq@ideak-desk.fi.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aBndpioCdsEEcmRq@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0035.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4845:EE_
X-MS-Office365-Filtering-Correlation-Id: ea7a967a-8dda-4132-8c31-08dd8c9a1ebf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZVNLM2NITDVGSWdkNWE0VmQzRHM1L0Z1SUx6aGxpa21SUHJteFRBT2x2NS90?=
 =?utf-8?B?ME5paXZ0SW9WVVBvY2svQmw4NGdXTGFDL3JPaGNqbW04RVIwc2VCVlR0bXlL?=
 =?utf-8?B?QUN5MFF0Q0JUTDBIY3MvZnZGMGpwRVZ4NGZKaHlXU256RWlIYkFKK01ybVpG?=
 =?utf-8?B?eFcwYnloNGhycVB6NTBmOEdsaVpuTkNkWGRrUUpLc2dValFWbkwvN0FUbEhY?=
 =?utf-8?B?Ui84WnVqRkd6cmlrclFXRzZwbGV3a2lwNTY1RTdtV2NRcW1qNHQwVkNyMnY0?=
 =?utf-8?B?cEkxUzV5cUhlNDBPK3Z3L253NDZ0WjRoV0RUTWNlYVUrNWY2VkNtV25TWXQr?=
 =?utf-8?B?bkhzRVhnaVQySy82SDA2RTVXOWN4Y05sSTJJQWRvZnZGcEF5bHNTZG9ZMGt3?=
 =?utf-8?B?d1pjcGlGMGxKellzUFl1Ty9LRGpRSU5jWUJHZEtuV3lNeUl1eVV5VzZteklr?=
 =?utf-8?B?YTk5ak1UdmEvR0V1Z3M5N0xxVTVyb2RPMTdzT3pSYnVyaUk3ai9WVE52dG5R?=
 =?utf-8?B?WnlGK0Y0Uk00VzF4OGFBREVENDN2NVdoanFFWXB4eHBEREI2RUJnTlFUcDh4?=
 =?utf-8?B?ZzBKWnFYQXpUZjdDNmsyM0ZqNFRWQUZobWVYRlpyWXhUcjZKZHZsYWxKbG4w?=
 =?utf-8?B?Z01pR210TlE3V0J0VEppL1lXL2VmeFFudlR1TG4xb2Fjbk9VV0d4amZidWEy?=
 =?utf-8?B?WkNFU1I3bzJDeTRBUEdlNVA5WEZlb3pvcW1aSW1MODJxcWxDY20xSVZTUURS?=
 =?utf-8?B?NkNtaE5IaTAxYjcySklEc2dxeTUyQ05rR0tYQ283Qis1N3pFUnJ2MmgydG5l?=
 =?utf-8?B?ODBtSGJnL3M2SHVwak1jK2wyTmNpeGY2M2lycmg0aFFCQnFuRTg1N2Zjc0Vq?=
 =?utf-8?B?R2hSaVRLK2NETVpvUGRoS3ZTVksvOTFjQWg3ZEIzenNkM2dBbkZON2ZPVm5G?=
 =?utf-8?B?M2J4Z051QytWL1F3MFhWSHh1UlVWMnB4R01iVkFFSnNlRG54QWFhN2JZN3FC?=
 =?utf-8?B?TFlUOGpzV05RL2Nhb3NRL1NvdU1FS3lHQlhFNUJOZ0RUaGJ4UVMrbExrQXpD?=
 =?utf-8?B?cEVoRzZtSDNReVByZVdSYnBibXZqdnp4dGlNNUJNL1NVeVkyRXFQc3RjNkdq?=
 =?utf-8?B?aGlSRTluaUdZTk1MY0FxVm1mbFc4NDU0eFg3bnRxaFhEb1EwTTAwN0IzT1hk?=
 =?utf-8?B?UDRlYXJjUG5WRlkwaGJJY2MvUkVvZEV2ZGZYU0FxdjZGbENEb2paYW9HSThI?=
 =?utf-8?B?cDBUSEZaY01zc2ZpRURLMFBTRHBmUzVzejZHSG4zbmI5bEF6RFlzV1Y3ZnlW?=
 =?utf-8?B?MVJVWGdYNlBPS3FOTWh0MWNxUTh3NDJ6bEZ4SmhldmRldThudGRWNmpENmRh?=
 =?utf-8?B?MUkyaFJSTlFZS1FBL3dNMC9WL3pTS21ZVHd1VUN6eEVLWDhHenZCNm1FM2M1?=
 =?utf-8?B?bE82andCVUF1SzBoL052VlhQNURuKzR6R0JQTHlKU3lSc0tIZUJlcjZYNCtS?=
 =?utf-8?B?SWg4NWVvYXlpd3VUaWZpbkpuWnlRa21nMklOUGt6NndYZmg0azBTV21kZHpD?=
 =?utf-8?B?OWZyZlZ3Yk1rOU5VR0l1MEtjcGxld3ZFV3JnYTZuM21xQndxT0Zqak4rQ0JQ?=
 =?utf-8?B?L2xnUHo3YnE0QzU1K2FUQXdOdjVOMEg5S1ovK2t5OWFBdWF4K0dYTnorQ3cz?=
 =?utf-8?B?TzRnSzVVRWFITEFYTFk5M1FBOVRYalFTamhLQk5wMkF4TVpDZ21EWHlSMkQx?=
 =?utf-8?B?cW9YamlsYzNpalh4ZjBZNTBmWVVMYzdhd2R1ek5ualBSY2tFQ051Ti92eWFO?=
 =?utf-8?B?U2t4SVlwZml0SHFRUG9NZEVOd0oyYnBkbSt0ZCtOcWNNZVI5aXgxcDB2eFJH?=
 =?utf-8?B?Mk9xNVJmbHlCSTBXYW5VNFdEOXV5dmREY0YwTzlJWGNiWldxZXVFQmNjcGFu?=
 =?utf-8?Q?5ABeZloKsak=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ejlEOFM4Um01cjR4V1hEOEpiSzdVamx4bXBJZTR2MG01SVVkWEpZQ28yam9K?=
 =?utf-8?B?WTVCQ1ZmSEdzdGhKMS9vSUd4TWc0bFRLcEZtSSsreDZPcVQvMktxd0ZlQU1l?=
 =?utf-8?B?RkROVDBtZFFYSVRubXMxRllsK2JyVTdBcmN5Z3FOOXFwbG9tcHArZGY5cmVL?=
 =?utf-8?B?UmlqWUk5SDRWY09wS09CbThkYzdsMmxWeDZ4akFVcjVQcWFDaTMwcHZwNmJi?=
 =?utf-8?B?MkJjYWw0dmxFWUp1amlHc3NIRWlyTXEreE5sRGwxdE9IV2ljdmJFb1NyUzc1?=
 =?utf-8?B?cmlONEJhdk5OV3JQbGVRZWtocDUrMUJpOE1FODBUOTFMcExoN3Buc3dXNk4v?=
 =?utf-8?B?TUtySkllczFTZU5yd0Rrbk1rc3VvUG43eW9KU0hueGJmTUd6TXlWU1g4emtX?=
 =?utf-8?B?WWxnM3BDZU9CZ3RxUUh0Mms2VDZNYkFLSkFpcC9jL2FqWWwyekQwaGhORCt4?=
 =?utf-8?B?VHdUTi9QUUUvdDBmYlFPNFh1UWpRNmh3eGNMSFp1NXVFK25iMHBjc3dqMWlu?=
 =?utf-8?B?Sm5mVUNnQmthMjlJdU5ick83UnZNK0o5RXBjMTZuWXBmeS9EbjZYVTFGa2RB?=
 =?utf-8?B?eXhsS21DZVhrd3RYQXhzbVNoODhqRHRYbnlRMzREa0lrVmFlZEFEeVgySTJu?=
 =?utf-8?B?Nlo3cElzRWI1dldyUEM4anlPUC93c2o3S29uRm1ZVk5wR3NPUUN6bkZGWW1k?=
 =?utf-8?B?SkdpMVBWbXRESWZLN3QvS3h4SWtEYW8rUmEzVG90TFVYYmFJRytmbmVvYVpZ?=
 =?utf-8?B?VFJNdFNWMUVmZ3JONENRclRuR2JzZ3Q3M2Q0TTJISG9wQVk0dkNHakZlRDRG?=
 =?utf-8?B?c29adzVHL0crWUI5dGFCZjNxY0d6SVpyeVlsRnZlZlBkVmVGUzBjSUkwdVFN?=
 =?utf-8?B?dWVadEtqQU8reXFzaEFJY3gyTDg5ZlhUamFIcTJrSUVveWVXaHNhNllvU1Ra?=
 =?utf-8?B?a3JvQmI3MjFNL2RzVkNuR0xMckd1bGhTZGpuOXNXc2s1c3JoNlN3QkpNd01q?=
 =?utf-8?B?cGNtajV0emo5MmRqTFBJNnhsN25TV3JQdEhsaXpZUVBXOVY1cVFGaG9CSE9p?=
 =?utf-8?B?dVB5NWRNVm9FTnUzWjRKWnEvSVdjcS90VjZFTTlzOUhNTWpSTk1UYUFXeDZI?=
 =?utf-8?B?Rk5jUEZTbWwyZVBaQ2pQRkwyY3NybGltQTNDM1RuRkQ1MjJ5K3VlSzk3eDdD?=
 =?utf-8?B?VE9sOUZMZHJySGdhUEJQbytEb2FFbjdtTTU3T2Qwb291SGZXRHBUaVlORUVH?=
 =?utf-8?B?SVgvOEpsTTZxZ1IvUktzM3BCUmR0b0hJL081alZjU2dBUEdaWEtxb2d1WkVj?=
 =?utf-8?B?Rkl1SWIzK2NIblpXaGRmTnA1M3RRaGJVU3pvYkhkTkxQRE1SVW04NlQwWE5D?=
 =?utf-8?B?Tis0V0RYVTNDWStCMXF0ZUdwem9GR0RZOXkvTXBmTmxkWlgxNWFVQmM4MitK?=
 =?utf-8?B?YjRJSUIvSFowWFA5cHZ3TVk4VFVnei9tdE1pSnpvd3NocjBiVGo1dFRzMWVj?=
 =?utf-8?B?cW9sRDdFaVJrdW40Mi80L3Q2bzE4Z3ZVU0pBTTQwNmg5cnRQYk1rajAwTWwr?=
 =?utf-8?B?L0lVOWszTW94UmpDWFRtS0g1M3hHdlB1YWlQYUNCRE5OZnlqK1JxS01WZWdw?=
 =?utf-8?B?SFkvM09zYU9kMFhtTW5qR1VvMmVKajdrRVhJd0RoRXRNc2xEYkxKS2g5L01n?=
 =?utf-8?B?cGZTWVZCaVY3QVNKMk1QNnJaRHFaZ3E2bXhJQ1dieG5RN1hrN0FwdVhjTnlF?=
 =?utf-8?B?SWhJUVh6T0JlMFY5dXE0Y3VObHpzSzQ2SGk0eXQ4QnJvNTk5RnY2TDhQYXpS?=
 =?utf-8?B?UW8zSThrMGpidjFqTGJpaFFLM0JGSzhVVkowK2F5SzFYTWh2OUtPY3kyWkVE?=
 =?utf-8?B?eEZVVW9FMTNIRVovbzllMGZnNnBobXYrTkZoZUlwbnQyb01GaU5BNFZXUVhD?=
 =?utf-8?B?VHV6OW1hVzRaMG9XU1F6Wmh1UEZuTmNCYzA4VEx6ajhWWDdpTnRyOUhGeW5R?=
 =?utf-8?B?R1QwaEJQR1ZxK2x1ZFY2dnQvSjhMSnVEWlcwNGM5bTZndk1sakJpWGxSbEhW?=
 =?utf-8?B?NVF4WjhBbUVGN1hLcDU2R2lnZ0FlSXBUWjRNdUdocnJzUDk5Ylc0REJyQWxP?=
 =?utf-8?B?TmVRWE52WjBOMk40SWpjRlZvd0QyY0lZQThRWUFUdGFBZ252SUVCNTNkSFZs?=
 =?utf-8?B?T2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea7a967a-8dda-4132-8c31-08dd8c9a1ebf
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 12:32:52.8905 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: WZkzQCwrO5DLuRLPzx80m8E6Gy0KFlvTVcnIQpiYJyriGl4KbZSxJ6A/2O1pxW/vVlXkxv72/oC7bvg/Mp2ceQHu4l0OS+cCRCB6CZ8I3nE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4845
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


On 5/6/2025 3:30 PM, Imre Deak wrote:
> On Tue, May 06, 2025 at 03:21:13PM +0530, Nautiyal, Ankit K wrote:
>> On 4/28/2025 7:01 PM, Imre Deak wrote:
>>> A follow-up change wants to skip invalid bpps in the bpp select loop of
>>> a stream state computation. To allow for that, using the usual
>>> 'continue' statement in the loop, change the way the sinlge-bpp range is
>>
>> s/sinlge/single
>>
>>
>>> handled.
>>>
>>> Cc: Jani Nikula <jani.nikula@intel.com>
>>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++----
>>>    1 file changed, 6 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> index 49b836cd8816c..d8033e55dc093 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>>> @@ -283,6 +283,12 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>>>    					   fxp_q4_to_frac(max_bpp_x16) ||
>>>    					   fxp_q4_to_frac(bpp_step_x16)));
>>> +	if (!bpp_step_x16) {
>>> +		/* Allow using zero step only to indicate single try for a given bpp. */
>>> +		drm_WARN_ON(display->drm, min_bpp_x16 != max_bpp_x16);
>>> +		bpp_step_x16 = 1;
>>> +	}
>> I can see this function is called for non-dsc uhbr case with bpp_step_x16 =0
>> and dsc false.
>>
>> So we just want to get the loop run once and get the slots with min_bpp_x16
>> == max_bpp_x16 == fxp_q4_from_int(pipe_bpp) right?
>>
>> Similarly for dsc uhbr case check with a given compressed bpp dsc_bpp_x16 if
>> its valid.
>>
>> bpp_step_x16 = 1 will mean 1/16th fraction. The value itself won't have any
>> effect for the case where min_bpp_x16 == max_bpp_x16.
>>
>> Is my understanding correct here?
> Yes, correct. On SST UHBR for each bpp a minimal link config is
> selected, so this function - checking if the link config is valid - is
> called for a single bpp only, hence min_bpp_x16 == max_bpp_x16.


Thanks for the confirmation.

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>
>> Regards,
>>
>> Ankit
>>
>>
>>
>>
>>
>>> +
>>>    	if (is_mst) {
>>>    		mst_state = drm_atomic_get_mst_topology_state(state, &intel_dp->mst.mgr);
>>>    		if (IS_ERR(mst_state))
>>> @@ -408,10 +414,6 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>>>    			break;
>>>    		}
>>> -
>>> -		/* Allow using zero step to indicate one try */
>>> -		if (!bpp_step_x16)
>>> -			break;
>>>    	}
>>>    	if (slots < 0) {
