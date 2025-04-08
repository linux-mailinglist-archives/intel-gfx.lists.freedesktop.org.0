Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44E7FA800C7
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 13:34:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B40F510E653;
	Tue,  8 Apr 2025 11:34:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gBtfwXiX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1234410E645
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Apr 2025 11:34:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744112094; x=1775648094;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4p1sfBeI9xpJ0XOzYxafAF9kwv984Yjkbck6NkTYu9s=;
 b=gBtfwXiXTttW1Y8bkJhNIXpd5p5sdLY0w5xb1FSX1yxJqia5Rn467/2B
 ENoCqXyzWeNBGpd9Fi9LNuHMGoy71v4NU3GTx7LpW+/QZ28oyQhW3sXcc
 5tBpaS3oD7F6VCofEjPMueFogPM3EiAnAPX5AJNCMbbKGed6ekvpR9Bs7
 13OkpPSTD183IJdvycMv9HqqgS+zhOy8AN0gZRdm55vaDP+2qBW6hKPu3
 zg0vYy6wXQTjJhz0m62lQk3ngUGEs2/w7lxGBOvS9Srgd3+Lr6DJoYnDX
 1T2zfmfPEFcIrTmuFTBsSjokMzQmwlAOYUg4pZI9zNwrJIqSKuEpfawfx Q==;
X-CSE-ConnectionGUID: gDZBQsNzSUScodvrBaR0ZA==
X-CSE-MsgGUID: qcAgAi8kRIyiKSWCMHtAJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="62940836"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="62940836"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 04:34:54 -0700
X-CSE-ConnectionGUID: kemtTB4jR6ueDF6Zr4/bGA==
X-CSE-MsgGUID: pPscVUg4R32770Smm3qk5w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="128221897"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 04:34:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 8 Apr 2025 04:34:53 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 04:34:53 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 04:34:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HNOfat8MuapxA2PmY35gLek5PZrGpTvTkfqa9djIuYDqvNWad27JNWK8RCYhkbuyN97OOCKhfW95QUkBlN9YcjZ+stQJ7IFJt6v6PrZGWiojhk0hGPVj40pIWdb+BNTTPWMPRchmHOvkSxEPXkT9ft9+p9Qtnf51972lxCiDEiWzr5x3BafPp4GS3rc1VI2j/x8JVwihJ7wh8YTJn7ojVzRRDM0f21fZT6UqeozG4WfXn/eoFQQNw9FFCzllPkyaLW4NgkmiB5KWrMVMVo8vvyTP8DgZvSvTyVAzZLat8woaef0kXk/EEjHR0OlKADdIxg9usIZHElhdroHsA/2zQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hUCnFGcHi4GAJk+0v15NuVDR3Ww3j7NkvsUqQttFWI0=;
 b=SNRE3eK0UVZLUM8OqtQwptw0glOXKOXG++h3tYbEvnESyyCyRrMw5VTEY4S0lecRB4/RZuI9NJD2mJXhaDuJj7JQk5ffivK9uUHLHWCoL8ySwiQv5Lv2w20FYQdM3Pudo427mraMEMz8zC+o7QLJoPS4LjhO7hi5xUOoks3jCrEV6LZiM/8hWc9K4se6MWDvhG2m/KEzTJOf7FKySFuVEjlbC+qJv8Dn3SNQG+bbpDkQR0EeUljeNa9Y8sJ/itdipMyv752el61A6IH1da4FcWiMCKhONBXnsUvDpQXn7nJCKLszV7bjDHTaK3h0nH8UD8eoGzU1oyqOizqwn6RE2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SA2PR11MB4777.namprd11.prod.outlook.com (2603:10b6:806:115::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8606.27; Tue, 8 Apr
 2025 11:34:51 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8632.017; Tue, 8 Apr 2025
 11:34:51 +0000
Message-ID: <004b6e7e-af38-4e12-9fef-cf2d4303cdec@intel.com>
Date: Tue, 8 Apr 2025 17:04:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/vrr: Add vrr.vsync_{start,end} in
 vrr_params_changed
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.nikula@linux.intel.com>,
 <mitulkumar.ajitkumar.golani@intel.com>, <arun.r.murthy@intel.com>,
 <stable@vger.kernel.org>
References: <20250404080540.2059511-1-ankit.k.nautiyal@intel.com>
 <Z-_83ng-1KTFl_50@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z-_83ng-1KTFl_50@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0026.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SA2PR11MB4777:EE_
X-MS-Office365-Filtering-Correlation-Id: 9996bdab-3006-4451-dd89-08dd76915fe9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dDZiMnFRZ00yOFhGdUl4OUsyU1c5NTRKZWFXWVhYajFhWlFVaHNoS2Rvemlj?=
 =?utf-8?B?c0JLZkljSjZjUU82d09TalU3bHIyYWRYeDBnY2NoZmlmS2hvWkJDWlJkRVo0?=
 =?utf-8?B?WlNTeUNJOGRRNzYyN251dUNhRU1XbER6S2ltUk1ZQVNGMnhualFsNmNiTjNr?=
 =?utf-8?B?VEZoem9XN2ZVQ0hJbTJYNG5WZjFjek5LdklkTC9FRm1ISVQzVlVWMkpiT3F5?=
 =?utf-8?B?OUNHVC9zTkJVeDNEWmVCZFN1L2NOVHdNa0ZqRk5EOWkxSGFrak0vSnk0dUlP?=
 =?utf-8?B?L2RPNEhLdHZRZ2wxSzhZMExOdWlKL1RMdHU2S1Q4VGVVZ2tpdEI3REE0Nnd5?=
 =?utf-8?B?TmdPa2hZUVVLRUpMd25ldUNvS1ZZYVlrVmtXZElQLzRrT0NEdnhtNlZwbmFX?=
 =?utf-8?B?OG9wbWJ6RGRmN2R5cDJjeGpFQUFnS053QVBMV0JORFRRZVQ1ek1zdDM3dHRw?=
 =?utf-8?B?T2lva3F2S3RIdlVkSnZEcy9vcG5IUTFjNlc2czNNMEFqSXYyMkdPbVpoM041?=
 =?utf-8?B?V2U1Sm8yMTFlRHljOUpCKzgva2pUL0hub3dLSWlFVE9keE41dzBvK255MG1B?=
 =?utf-8?B?ZTY4K21xUDlQd3hZZHc2TkEyYjhzdmVmdUptcmZGVXNFZm8zYjhjRXFwTE5Z?=
 =?utf-8?B?eDJOd1JmQ1crQ3FRaitwbmZRNUJFeWU4dmNGbzZFZmh4NGZ1VXVNUkF2bUNo?=
 =?utf-8?B?KzRvU3dCaDdueUljcEx4WEN6ZlhpZENGSnV0NWZVNGQwUHgvOUlRZzZscWJX?=
 =?utf-8?B?Wk5ldFhMOXZSN2YwYis4VXpiR3RqSzVBNk1rZ2J1aGs2UFo0ek81VkZWQUpw?=
 =?utf-8?B?RmpiN3ZjdzY0SkJuRUlET2J0UWhTVFU2N2M5YUZGcXFVRUxkM1BkUFFydkJS?=
 =?utf-8?B?VjZpQ0xRWUFXeVM1R0Y4Z1ZPTU9FNlBockI0dnlaY0o2RWEzeUJuVWlWQ1Y0?=
 =?utf-8?B?d0Z1U01XN0g1MSs1UWlOZkhqYWZqR0JsZDFETk5ta3Ywa3M0VzJuR29xNlU5?=
 =?utf-8?B?dVFaaEwraFVyV1NGanNkUE8rU015a3FYSXdOeTNxUHltcE1PRTJOODVTa1ha?=
 =?utf-8?B?QitwK1pnMVFSUVV6cStOblNLZXNSYXNUNUlabEdkeTRTdlhrTGVOakNaTUxh?=
 =?utf-8?B?TWtXWkVnQ1puMTI1aE5mYWRrSnlyTG1sYzRESyt6NnNKTythWHVxdWd1cWMz?=
 =?utf-8?B?KzNNSHZYbjY3UlJpV3lPWithVWlqT0xYSEpwQlgxdFpLcHpwemd6Z2tQRm5X?=
 =?utf-8?B?aDlZdDF2Mm1PZ211azFyYzkvdk03WGdsT3pPR2xWTlNZdndrR2QzR1dtSkNW?=
 =?utf-8?B?WkJvTlF6UExaVTFQM2Z0dGVmUS90bHNiR3l2bVdHVGszNllIMmM5Y25Rb2J6?=
 =?utf-8?B?cHdiU0oySkJMZ1JJaEdvQ091ZlNxd05iazl2WVkrejlYbFdCNWF4MEc5SGRt?=
 =?utf-8?B?RDA2K20ydXZKT2swTjk0Y2VVUVNyeEgzNmg1SWdLeGtnQjJsZWxrNVRxMWMy?=
 =?utf-8?B?VWxXRUhjazd5K01QOFMxWDFEZW00MmJSbksvMGVoRDFEaU9XU0ExaVYzY1dL?=
 =?utf-8?B?azJiNUQ0TEk2V3h3bDU0V2Ftb0dLempmZE5obEg4cUJYd21kQ0NwbWFhaVMr?=
 =?utf-8?B?TFY3QS92UnozcVdrMWxDbDlNeWJHN215amFaUHV4UGFxZzFWTnhyMVlhMjZY?=
 =?utf-8?B?YmdnM0VDWjNQTUN0TWNvbVdLUjk3M2V4MSttc0dlVHFHZmJiRmdOYTRkdW1j?=
 =?utf-8?B?VVNoYmtDMUs2LzZ0MnMydk55Nzh3U3RQSm9EcHhLV3pWdUJ1Wmovazl6VzNF?=
 =?utf-8?B?bU5qcEVDT1VvdlQ4MGd1MlhGUGdrOXZyS09aM1NKeFVsQTVRVEZjMmZrT1hx?=
 =?utf-8?B?ZGpsME1nZ3NWWXlLOEV1K3NzNVZiTisrcTNwVDdHUGZUQVE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?blhWZlM0ZEJvTzJEazkxbFhiK2t3S2cydk5ZaVduVzQydUtoYXBpbGpBVUc5?=
 =?utf-8?B?TkhPOTBJL2d0ZlpObVlKa09ucDgvbWpFWDRhY1VEZG9ZT3g2YWYrdjk0c2dK?=
 =?utf-8?B?WHdZSjgwSEhQWVRFdWVUbGtqLzE1UVdteW90VjZNeEI3MWFOSFJjNjB3ZlJ5?=
 =?utf-8?B?bmMrVURxd21rZ2pKcmU0TUVNdE5RdU5rSFN0ZUgxMS9rUk5pTWpMb1NXYzdN?=
 =?utf-8?B?cG42akQxUGVLMDRwNmFmZUJHZUV2K2ZvU2lLQnlWVW1acThneDVKS3ZOSnZy?=
 =?utf-8?B?U1Z3bTJxZmJSVXhaZzg5THpYWXRxT3ZMSjBWUFY5UmEzbmlLRlZvSCsvZEVi?=
 =?utf-8?B?QS9QYk1RdWtCV0REcUQ0Q3pxUk1ZQXBWajIwYUhHakd3VUpQUTBTVUFJN05X?=
 =?utf-8?B?UGpQMFRJY3lxU1N6ZEoyVDIyZnA3WHIwcUV4ZUhYenFNdFFwekRZMUNreDBv?=
 =?utf-8?B?TzNaMW5mamhuTXBHakRlQm1VRkNWeW13dktkeEJVR3RFaWZtdTlWTmxHV1BL?=
 =?utf-8?B?YkpSOElWOUFJWEpyMC9ReXZqdlVxeVRYV25GVXl0c0kvS1c5dGp2dzNnRk5i?=
 =?utf-8?B?eldxSU10WmhYZjBVOFZDczIvZ1RFbndMR2t5ekx0WHBGWDdsN0p3ZVlKa1NJ?=
 =?utf-8?B?WEZld093YkdkQ3NSMEMzaWk5WmprNHZTZEdROGZxdlZldnY2REI4ckJ1YSt1?=
 =?utf-8?B?M2lTcWhSY2k3YW05QmpnclloZk5ZK3QwT1pNcVJscGlGMXpuSHdoNVRsdWFD?=
 =?utf-8?B?clRpQjkrUEd1dTc4bFpHeFlHR0ZGUmcrWWc3TnF6SnBQNmJNY0dyR3VBSVh1?=
 =?utf-8?B?dk1SZlJzUVZ6SDRpT2dXb1NTdlhkWmo3Y3NMNEYwdkkycTVjZHNQVW9DMXdt?=
 =?utf-8?B?bmsrUjJZS1EyYnJPcmhiKzNrQi9UaUlORHlCQ2QwQUx5U0NuL1d5c0FIYlgr?=
 =?utf-8?B?ZzlXOXcwbG4vRUdTOEtDT25Pcysvb1FQN205aVBYNmg1bXczS2k2eFl5ZnpY?=
 =?utf-8?B?WWFiRUkveDZxYXA2U3JuK3kwQ1ljR0czNDVrSUdrbmdmTlM0ajJqYTNnRnBy?=
 =?utf-8?B?cnVDOTllTnNYcVY5OXVyWDRuRGZRMi9PR1dEWHVseU12MG1LUmNlUUVSZTFR?=
 =?utf-8?B?VzhrYkN3MmdQRWJXRmUzeWR5cVMrN0ZIbEtJTE1UTnNsTzg2d3QyMzM5c3JX?=
 =?utf-8?B?L3BRRityeWVNR0FRM3RBaE5rQzF3VmU0MFJ6Q2c4YndRRi9SRVErNFl3dlRY?=
 =?utf-8?B?b2Q2eXgvVFdNejE4VHpsWnEvbCt6TzU2M0dzK0xGcjRzcDBiVTRFa1dFWVMx?=
 =?utf-8?B?NURGczZORkV0a29meWtuZ2hMLzI2S2hNblhUd2ZrWXZUM2llMWY5SGlBcFkw?=
 =?utf-8?B?V1F2dVhsNTBQOUNzSk9QZVQxcnc4M1JUaEdUZzMweFNWYWNMZENDYkpkdkht?=
 =?utf-8?B?b0M5RUlhajBoNU1yNGltRkNxMEZqZWJoZWlmNzlqOUJjQkdnSlZ5Z21PZCtx?=
 =?utf-8?B?blZJOCtvUDZvVTZWdDBSRHJxMWRrV1VVMVBOMVZlN00rWFdkMkx4SnMva0Uz?=
 =?utf-8?B?QnZYMEE2LzQ4TEg3VVNnd1FZQ29zcDVKWTB6b1g2SkpVcFR4RmN3VkhwWGpy?=
 =?utf-8?B?YkJBb2ZZMHRsZGN6MWJxTEVwWFdweGpTRTcrSVpyTGtCVU5NcVgvNy9nYnMr?=
 =?utf-8?B?WTVMdnRLK0t6dHZsQlVQTFI5NU4vMThVOHlNZWtaaFhhdFhoWkFyTDh3eXRT?=
 =?utf-8?B?ZkQwRlRsaE1FeDBnMVI3UDNSeFdqSjRveFNsMHJZT1Z4MXJrMXd6QVRGejFt?=
 =?utf-8?B?NE1GczRHeFBrQVFHWEZ5cGFUckNVeEg5VzVmcFlQcTBFcnUyVVZGSmtBOFI1?=
 =?utf-8?B?L01PL051TzU0TTdFOFVOWlRhU0RrS21SY2o2QW1NRFlzRHRVOFd6RnU0UHBx?=
 =?utf-8?B?dlgyUVJORjVQeTBPQ0Rhck9KTnF3VkhRVlliK1EyNXhTNDFmNzcwcWpDejJI?=
 =?utf-8?B?TDBrL0lOVlFHYXNnajYvK2hmaHc1V1hIUnNlc01pUGllTEVudlFwRlA0U3hV?=
 =?utf-8?B?YmpCcFlIZ2lldHcrai9YL2JjdS9BeFVKZEliVTNnMmszUE5IejRxaU90K3NI?=
 =?utf-8?B?aVpmZWVBak5QbHBHNzYyWWNESGFyNjZHMHhDWWY0dWJZY3FXZG83SXU2Vy9K?=
 =?utf-8?B?d3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9996bdab-3006-4451-dd89-08dd76915fe9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Apr 2025 11:34:51.2393 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4cLa5RL6dwGbH9tCt24fLYCtDv+LeHg1jcMoRIXQgu0dpZQ78uZFV9UiWVoXbY7dyZQdrZJsOA6sRhbpiYHac2kgsLz+MfNBw/WzGqLuKms=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4777
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


On 4/4/2025 9:08 PM, Ville Syrjälä wrote:
> On Fri, Apr 04, 2025 at 01:35:40PM +0530, Ankit Nautiyal wrote:
>> Add the missing vrr parameters in vrr_params_changed() helper.
>> This ensures that changes in vrr.vsync_{start,end} trigger a call to
>> appropriate helpers to update the VRR registers.
>>
>> Fixes: e8cd188e91bb ("drm/i915/display: Compute vrr_vsync params")
>> Cc: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> Cc: Arun R Murthy <arun.r.murthy@intel.com>
>> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>> Cc: <stable@vger.kernel.org> # v6.10+
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 4 +++-
>>   1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index c540e2cae1f0..ced8ba0f8d6d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -969,7 +969,9 @@ static bool vrr_params_changed(const struct intel_crtc_state *old_crtc_state,
>>   		old_crtc_state->vrr.vmin != new_crtc_state->vrr.vmin ||
>>   		old_crtc_state->vrr.vmax != new_crtc_state->vrr.vmax ||
>>   		old_crtc_state->vrr.guardband != new_crtc_state->vrr.guardband ||
>> -		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full;
>> +		old_crtc_state->vrr.pipeline_full != new_crtc_state->vrr.pipeline_full ||
>> +		old_crtc_state->vrr.vsync_start != new_crtc_state->vrr.vsync_start ||
>> +		old_crtc_state->vrr.vsync_end != new_crtc_state->vrr.vsync_end;
> These seem to yet another set of values that are potentially problematic
> for the always_use_vrr_tg()==true case. I'm not sure how careful we
> should be with this stuff...
>
> And the whole encoder->update_pipe()/infoframe fastset stuff needs to
> be rewritten to make sure the all the changes it does are either atomic
> or happen on the correct side of the actual commit. Right now, for AS
> SDP specifically, we enable/disable the infoframe potentially before
> the actual commit, which I think is wrong at least for the disable case.
>
> Also we still seem to be missing EMP_AS_SDP_TL completely.
>
> Anyways, this patch isn't wrong at least so
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Thanks for the review, the patch was pushed to drm-intel-next, missed to 
update earlier.


Regards,

Ankit

>
>>   }
>>   
>>   static bool cmrr_params_changed(const struct intel_crtc_state *old_crtc_state,
>> -- 
>> 2.45.2
