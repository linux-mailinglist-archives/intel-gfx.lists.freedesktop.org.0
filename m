Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D3F3C06826
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 15:30:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06EBC10EA91;
	Fri, 24 Oct 2025 13:30:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iy99GGJW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B4D6310EA90;
 Fri, 24 Oct 2025 13:30:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761312623; x=1792848623;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9or7fLhC5c55GPJnsB+kBulOQ2w6ahOQy1q2/5asjjE=;
 b=iy99GGJW+DWZWthwmpCrBbyjdO6iI7cTwiSYsNF18KvxA41mcRZEDEOo
 AaANpPnSojTj4rMYp1IuI4RtUMu5vWaX5FlG+fnBasshUU+BO6I6hsLf0
 wmIiYtFXUfngqzyf9BkcoUmLt4wtmxk89dOW/DgSGeEUBXBxj31xpbccI
 1x7VuTHMjqVSZx1nCHyJSUgHjg/84DGN5TpAP4wxNr0WgafggRkwgL3Jb
 RC2xyiIzha1hui/lG2UgNWrPmAwd5LmByuctW845SDU/uv2czcS+5NmKR
 lym4N+uCkSXoylBsVleBS0RtJV6MKh68yHwQsuQh2SFlNltOebaMETqjy g==;
X-CSE-ConnectionGUID: 5oFZgaRhTQGSrcHp4Xeg9g==
X-CSE-MsgGUID: mrfaV3fdSYaAB1AFW0XJPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="88962297"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="88962297"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:30:23 -0700
X-CSE-ConnectionGUID: 6q6FOYlIRj2TmTRR1BNgtA==
X-CSE-MsgGUID: /BqV0zasRT2Y/nisiJO8sQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="215349140"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 06:30:23 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:30:23 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 06:30:23 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.20) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 06:30:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lrkRM4dBX8ElODmrwfjjval2M0G3B56G+7KRvG5vb5d0oAngkVTXrusY5eS3W82LySh3CKm0/6PmBmWy9bc9J2AD+oO4gUz1FAP8JFuBIxcNChR2c57+1AGYND58ZTRh3F4uOCeaIfOpn+puH8jlDs6NJ96ZfYyOUzXJlTi1CqMuOoyX3WIzEYqDCkL38+02hlCywPRlDq1xkX6BhUO9UArdy5nr2uwDWXmAN3daE1/bSc3YfM5aleNaZ6XvEEFzLV7EEGEf8fSPo1IeEAPXT6mvaHYNEpHSHANU/FcaJ/uZ6JgsiUkHrqNkaVHRMMlCzZOOC5hhzKUp5nfI91Rq5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GFsbE2f1iQwbMLZsZg6UIo72WIPTt89rFYr+o6S57aU=;
 b=pYQoR3K91H7waRasO3gEe4aU/mM0F0n2rYgnNstSwhbw0ay8JAcQcGa5RlHhI2eveoX7S1wXdCohsT2qCGo5SjnUGCuESw1fSTD8RsWYi+QIZ/zc1cPzjejHpnwOt0D2DQneBJ9OYSszfp1z/I6WDSzfLTFz5dYuv5aUJS5RxeA27POGLsT/i639yQyOCqwZp8Mwlw2aYMvrn/rifU2dl74Bw0HroRgCQSV59zGWHtBFPRnHrU4BSk6YK4BzeWNbYgnzMT3Xm8zXTCuwQVamCpQT5WvZ3ioRveW8YSvDL6ODy7/6KFRHB6g6zjZUMLLID5TXZab0/V8fitpn5Q7AXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB6494.namprd11.prod.outlook.com (2603:10b6:8:c2::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 13:30:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 13:30:17 +0000
Message-ID: <166d9f01-ac20-4ecb-9bad-83e68ad00835@intel.com>
Date: Fri, 24 Oct 2025 19:00:11 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/22] drm/i915/vrr: Extract intel_vrr_set_vrr_timings()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-9-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-9-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0043.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB6494:EE_
X-MS-Office365-Filtering-Correlation-Id: 66a1f0f5-4e40-45bd-da18-08de130178c3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VkRxM0cxMUVraVM1L3Y1T0RaeFdhaTVXWWh1MlVQdDFIMDNpOTAwcEU0cVBK?=
 =?utf-8?B?WTRWN3V3VXN3cENTR1crYUg1blZwanVRYW1XSWZUb3l1a0ZSMDl5ZXAyenlk?=
 =?utf-8?B?UzdaQWU5VCtTUDRkc20xY2gzQ0xtakxQVlB1RCsrOTdMZ0VFM2NTVzdtN2xn?=
 =?utf-8?B?UWZiUHNUUGNObFhXWm4vV2JSOXNQTU4waUhBbHdSVmpKUHcrRmhlZ3RZNXZY?=
 =?utf-8?B?d1NCOGtzUy90OTRiTXErY08vNGlKc293c0trZlhpRjZETkUxQXc4UGgzRXVT?=
 =?utf-8?B?UGc4bTIyTFhOQlZSSHdZOWdHbHEvSlpVRnZYdlRua2xFZlVTOXJxZ1ZFMGN2?=
 =?utf-8?B?NnI0amRTNUdiajRMcVZiWWx3citYYkRRZkpJbFQxdElkZ0NtWVhXZjRiR1pN?=
 =?utf-8?B?N1JOLzdHdHV0eEIzNnQzdERlTkxjYllzbTEzMmpkcUlWSEEyMTJHMHRPWExV?=
 =?utf-8?B?RUF4ZmtZRzhwRjgvbWdYS2dvOVFhWkZmMUxYZ0FiWkY5emRZZTZSMnhOVEFE?=
 =?utf-8?B?aFZMYndtVHVJR2VzS0Yza2FYQSt4OWI4bjB3cnFFTFRqdFhmKytPRTdvVFNB?=
 =?utf-8?B?Qmdpemx4dlhQaFJOVkQybE9iVGsyQUd3a2gzS2dNT1FmTXR6Rk1TcXNMSFVC?=
 =?utf-8?B?NFVQMjhTU0dzZXVyWTVvSmFPLytqVE91dDNSSEw1SE1LekpDV1p0VnhqUEJI?=
 =?utf-8?B?ZklxSVY5UW5SNmQxeUxaaVo5K1JMQTBBcG1UdVpsc1hya2ttaFhMM3ZxaHhT?=
 =?utf-8?B?My8xdGxRUzY3ejVQMkV6Z2ZJbjFjenFabC9QS01SWVVQTHFMMDYyL0I5SnlP?=
 =?utf-8?B?OHEvV1J1bXY0MUljK2Q1MEVsT3ZkSG1Va2lKTDFRYnZXL2l0RytNNmNKQ1VT?=
 =?utf-8?B?MnN5bEhmVjgxbVprTmV4NzI1RDNSS1gxNjNDT21RYkNFUXgxcVVXbUJya01G?=
 =?utf-8?B?Vm9WeHNhOXJhYTdXWnFvbG56U1BsSmZJck8wTkM0RlBWQklVMzJyYmU5NVhM?=
 =?utf-8?B?cytaQUZFS3lDY0N1SDJycS9vb2w0NE82YmxHZXRaaWp6czFwWU1PNVkwa3NV?=
 =?utf-8?B?dGFKVEd5Wmo5R3BRRngvL2FmK2dMMkJXdFQxSURPUmR3STZzakdCNHFqcERo?=
 =?utf-8?B?NEUzUjdvQUYwdG9teTNzSXNyWmdvYk16aXZLTHlqVXhOeUhkRmxzVkJuNUVC?=
 =?utf-8?B?UTl4cVpPK3ZIaTVRNkh6ZVZVTWhabFJFc3lkZFNJbTF4TmFEcEhzd21pNTNH?=
 =?utf-8?B?NDUwdVpmYmlLWkdtMld2NDVRMVJHMVE5dTFxNUk5R2o3R011cWQ1ajd0YnY4?=
 =?utf-8?B?ak80NkhxalRnMkJtcTZIRlhWRXlPOFFPL3VUZUFnbUo0VUZVZXIxVlN4c3Vz?=
 =?utf-8?B?cU1XUGpyU0doZVFlMmRBU21Kam1xZGtkV0pqV2szREovTTh1NXQwaERxMjRH?=
 =?utf-8?B?TkJVVUNHL1FwRjdzaDBuRmd3RFFOTWdHaVVOcnJYMEM4aGhaTVBEcmJwS3Jx?=
 =?utf-8?B?RDhycHdFOGROOEdXK3dWZ0s4eHdyb3JZVVV6eFYvNkpFbWlaTXhXM295ekxC?=
 =?utf-8?B?OFdkd0UzUERTOVdxV0ZKQ2V4MkpieG9RWDlXMC9WTW1nYTFmQ2t4QVBxMGlX?=
 =?utf-8?B?dlhieFNPOHZTREM3VkRUVldCZ3ZPbmZ4TGJtZW5TUTlqelIwaFJVbnJlOHVx?=
 =?utf-8?B?cTlYLzNWRjhKTlpnYnRsYW1FaXdWaXFqaWJpVGZQY2czWmdrdmpMM01aMklJ?=
 =?utf-8?B?WG9oNGhSZWFFTGpCbWJTNFVueWpicFdTY1FxOC9wVnk5YmFFTmoxVWxnRmdV?=
 =?utf-8?B?Vzh4bHdDRlJZRnVFMmFHbmg2SGJJb1hPZ0xBM0VQVTIwdk1GL05pdjdoUXBM?=
 =?utf-8?B?dkdab2RTazhWSjJsUU0rUTVDZU0wMEJKZEJLVHpPNEtPLzB0alhoQkhlZ3hz?=
 =?utf-8?Q?lhFI8Dk9yWabl86TRX5ni9+MOHW0UYB0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aHBrb3I3bThXY1gyeXZvclQvK3M3dWxsRWhMSXR2alcrbit5YkJubEw0ZkF5?=
 =?utf-8?B?Wk9UWkpuYks5djdpbFpJTjYyQVB4dEtra20vY0NxckYwWDJSbExoOHNGUzZN?=
 =?utf-8?B?aS84eUxVZk1abGlVN2c4VkpVd3NFc3d0aVl1MUFBTWlpMzdoL202SFFrRkFz?=
 =?utf-8?B?T0NyYVQxeGlWWEx4clBvbmtON3BHaFJpdmYwQnREYTZrS3RibUttekVWdkJa?=
 =?utf-8?B?QkpXVzBwdGhPNEpWeFRXblBNM3dXVU43YkUrWGxTbThUV0oyRVBsalhnU3hZ?=
 =?utf-8?B?RlZvYzFIL2szN1hicmdMVVN5alhzS0NXaUNrR1MrR1NTQ2lwZVlwZVZGdjdO?=
 =?utf-8?B?ZkF3alJmUVZ2aklLZzAycmRNa2xBSjhTa1NUQlcwa3ZlZU1uMGxHT2ZnL2hr?=
 =?utf-8?B?NjBGWDVxSzliNGMrdWFJR2c1RUhZVG9LUC9VNlJwZ1JzcnA0Qk5NdXFyVkhq?=
 =?utf-8?B?NHNDVGRpK1R5YUMxOU1aQlczR2pES0FGTndqV0piR0VOc0c5ZEZqSnNVWEtO?=
 =?utf-8?B?Sjc5NWpKVm1CSWw2ZCt0elpERWgwSjhFSTc5OFVtU1VQcndod0hmQzhSWmt6?=
 =?utf-8?B?VU5XdFAxdndnYW5LN2pMS04zMWdUTzFDcFdFemdJQWwrWDJ1T09NSnFzTEU5?=
 =?utf-8?B?MmZHZTVvVjlibzRwTWtqcXZjNDhqNU5KNHJLcWVYbzNYNWcrV29tdjVDRHdm?=
 =?utf-8?B?Z0ZqZ090akVoQVdJWm13UlhSbFNQVUgyc1VTTStIeUsrWlZzUlBTRnBnenFV?=
 =?utf-8?B?VWFZRUNkbnk1VjZaeW91Vk1qTGVtR3VaR0xoOGFMdkVTWndCZmNHbkhuQk4v?=
 =?utf-8?B?bXlKMnYyY3doMS9ZUitldStLa3owRndoRWtvYk94bXFwdTF4ZWhudUttZlFl?=
 =?utf-8?B?WllVTDVCVzE4dWFtWFp3U20xaE9JVEJUUUN0MWtuZW5OK3VscXFQbFVzK01r?=
 =?utf-8?B?OEY0d3lBQ1crZWVlK1NmRGN0UXZQTTVUMHgwc0RIelAxRTFXWSt6M1plWUZ3?=
 =?utf-8?B?a05KdFUrTVVnRmZCWEdPVWhIaUxEbW44UkNlbTVmd1FIOWRpS3E3bSt5WFd3?=
 =?utf-8?B?TmZsK3l4NUlsTDNiVzdVbzZ0U2tnTkJweUtGSmsrSWh2a05Ta0FqeVRaUGpI?=
 =?utf-8?B?cGltbW13TEY1ZkE1VnVEZ1pNQTFiU2ZGWjV3N2RnSEc5d2NIMThHWEhma2tt?=
 =?utf-8?B?eDc3WktneGJQa2NPTnNLbjdFQlNVV2dyNmdJWFlzY2p4dS9wMnZPZFBEKzcw?=
 =?utf-8?B?dGZPRjlNTHVXa1I4RHVybENGQzVXYjhBbWs0S0ZxOENxd0YvK2FualhvVXkx?=
 =?utf-8?B?UFNUeTYxTzVKU2EzK200eEVudDlsZTZuNjllTXNmb25LUGpISDM1blhXRmZI?=
 =?utf-8?B?ZkJUeXlrS1dMQkZLTEdVaHEvY2lBYXVtK3JnaGxsNjRERmJPdXJGS3Rickdv?=
 =?utf-8?B?Nit1bDU1dWNjUW9QeG9QOU9KOGdSMVV0dnhWK0RETjNvUERMWXc1Smk3dmF2?=
 =?utf-8?B?SitQYURBdjFrOUJOb094akNRRmlIZnVncG1EbTBMTTJDUkliOWw3eGk2R1dL?=
 =?utf-8?B?NkVmbjA5aWdsZjltMUVzUzk2RHhVWGZPU2lFcDZTQzVuSGJxdXJHd0dqOHhW?=
 =?utf-8?B?YkYrVVUxbnFMTmtua1MrbEZaVFhZOUgxUXhYTGFTdU9FN255Z3lvaDVnTVdx?=
 =?utf-8?B?ZDFDamJjaktnalc5KzZIQjZzM1NJT294RVFiYVM1UzA0MmFlRnNmNGdlY3Jr?=
 =?utf-8?B?dlVLbFJaeUE5UWtrcGdlREdRM09iVkVQWU1WVXZlcEM1am9hZXZ6RHI1TjEv?=
 =?utf-8?B?dUkvZElkSUI0VzR0TTE5V0x2a1l6bFBqd0F2VzlRN0hqSmg1OC9SUEJzUzlZ?=
 =?utf-8?B?TDZJc0gxTTR6Tk01STNLSWR0cHBIUVM0dUI2eWV4NTJDSVcvdW10QlRqZzJ1?=
 =?utf-8?B?cXE1bGlLR2x4cWI4VDdyMkIwRXo5NExUNW9zTzNFRWFyQ2tXcVpKa2JhUDhJ?=
 =?utf-8?B?NGl6aXB5QksyUXRFbUV3ZUs2d0FXNVozZFhtNjRxbDNwWWRLc1RIejE1d0ky?=
 =?utf-8?B?d3dlMldVanJQRkk4Tnc3LzY1QUxUa0FFcDJuVTMyelZjYzBESHdqNFlYUGRV?=
 =?utf-8?B?NWU3RDBkYmVnd0l4bXYvUCtYbitMRkhsU3dobXNJSXNzYzFyT0NnRGJTWUVU?=
 =?utf-8?B?UXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 66a1f0f5-4e40-45bd-da18-08de130178c3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 13:30:17.8711 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cji0RMhLysDeTnLMwjlgl4CR36tYTudpUzN6RYEnKPh8+CBlpuzHGZrd3l80LHFml6C1YnE557E8JuIRlQlPmdio3fEWBSDpqav431CC/uQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6494
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Extract intel_vrr_set_vrr_timings() as the counterpart to
> intel_vrr_set_fixed_rr_timings().
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 16 ++++++++++++----
>   1 file changed, 12 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 99e10943368d..b2f139addc8b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -686,20 +686,28 @@ static int intel_vrr_hw_flipline(const struct intel_crtc_state *crtc_state)
>   	return intel_vrr_hw_value(crtc_state, crtc_state->vrr.flipline);
>   }
>   
> -void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
> +static void intel_vrr_set_vrr_timings(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>   
> -	if (!crtc_state->vrr.enable)
> -		return;
> -
>   	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>   		       intel_vrr_hw_vmin(crtc_state) - 1);
>   	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>   		       intel_vrr_hw_vmax(crtc_state) - 1);
>   	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>   		       intel_vrr_hw_flipline(crtc_state) - 1);
> +}
> +
> +void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	if (!crtc_state->vrr.enable)
> +		return;
> +
> +	intel_vrr_set_vrr_timings(crtc_state);
>   
>   	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>   		       TRANS_PUSH_EN);
