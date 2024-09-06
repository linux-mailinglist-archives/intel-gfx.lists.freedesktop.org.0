Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC5896EFF2
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 11:45:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0F7C410E9D9;
	Fri,  6 Sep 2024 09:45:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RB5F1YE2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6536910E9D9
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 09:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725615915; x=1757151915;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=rQdKqy6PiTi0/cXtFRCPouRkzzdEfz1Cjrsa8Ix8wHM=;
 b=RB5F1YE2gjm/x8UikKnIXFUakoPfwf4YGFCBeLLrtDphM4cj03NEHgxc
 KLPrdIIZ1JPHf6XzJrl4NQzHeS0QxbiktbDDif8HjaDEHWNUW98mj+tgk
 dF7w87HPcW3XsnO3tKIu38Kc0YIJjLNnH/0DPpu81bBuD+JqLCD8uB/bb
 BOjENFBC6WngUGhtitk1mHOcflsM7XvJXhzaMHFL7S4dgXEBuSta/Yrdu
 0gAgjRikkc74PNSr8gcCjGKsX5KgR/81+c8fxgI2xQMxHCuZISYC9oauU
 zyZ62jPCNun27FPq6pXH92qmhrEZFW3Jl8tH3++Vem8KzvFauv3mcRbhq w==;
X-CSE-ConnectionGUID: tw9KZk7VR1OBmx8sdk3ouw==
X-CSE-MsgGUID: zVPreKZkQYaCnfUzIENncA==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="46897157"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="46897157"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 02:45:14 -0700
X-CSE-ConnectionGUID: y5zAg4AxTMGXhF9pQI+a8g==
X-CSE-MsgGUID: OpYcqaoUT8uXDM1FpH5ctQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="89173653"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Sep 2024 02:45:14 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 6 Sep 2024 02:45:13 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 6 Sep 2024 02:45:13 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 6 Sep 2024 02:45:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wcJQPq9z0knZY+jZB/e9DjRz1Pm2JOhKDI/8ICw4v/nnI0tJoyxyotvZ2maBvLB/ITWqaeBjjgW2rOPfFEdeL3/QUJpfJKdknq7GJ3zXVnimAUBjBnoDj9y6WGYetncHJIXCRvRNbNbn5BzKqmx0UnGzgGkXACEvT+Bq3Hqmqyuf4xsIitLYIbfpy4jD6nUySUh24US0SblL4Y4syun1wajR2TJfzQ5GO0Nq8W0/3hQezmHGMV4UabZoJqnbmmJuJnMX2fivRHyPc9jt0WT9MfmrKAi2YMLhUHVNor9Dot40wI45fYQn+Q4TkwjL49PT1c15BxCQXUpNCe/CvCJLQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aH8TlqILtZ70CQKpJkieyYLtwIhTfO6oSJ6bBilfBWE=;
 b=ZcfP57xA7vpRxmnbGuIgb50TFCrUOelliR4rGX8CNVV/beoQalKHYNnXw9f8A3vJBqbrhmbVNFcsUbinPh6p+oDhqMWqxXj5P84E+GicKItG4ArbIgudhVjmjheeEz2VIn9/JRQm9b2f9Y8dhCIoZKQLaLuYSvcTMrdOwwh1h2htxdlQjYffZKB/YBQ45gQNVL7vUohKwsSyVWmbuHRuy0c09zuyDPYWI0Ny6PTf2ZRc2RPP0OTqCajd1D+yGLkvf5KVTpi79JC+eqQKzKN2V/t3ZUZXXN3sS6WSRnFMc0jUXOltHYEw9omxiEsHtls78ofn0NCbOLgs9roscxwu9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB7958.namprd11.prod.outlook.com (2603:10b6:8:f9::19) by
 SA1PR11MB8318.namprd11.prod.outlook.com (2603:10b6:806:373::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.25; Fri, 6 Sep
 2024 09:45:11 +0000
Received: from DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245]) by DS0PR11MB7958.namprd11.prod.outlook.com
 ([fe80::a255:8030:603f:7245%4]) with mapi id 15.20.7918.024; Fri, 6 Sep 2024
 09:45:11 +0000
Message-ID: <ec2f4b09-03f7-4866-ae50-2f3b5d093a0d@intel.com>
Date: Fri, 6 Sep 2024 15:15:01 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/hwmon: expose package temperature
To: Raag Jadav <raag.jadav@intel.com>, <jani.nikula@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>,
 <tursulin@ursulin.net>, <linux@roeck-us.net>, <andi.shyti@linux.intel.com>,
 <andriy.shevchenko@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <linux-hwmon@vger.kernel.org>,
 <anshuman.gupta@intel.com>, <badal.nilawar@intel.com>,
 <ashutosh.dixit@intel.com>, <karthik.poosa@intel.com>
References: <20240906093118.3068732-1-raag.jadav@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20240906093118.3068732-1-raag.jadav@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0002.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::22) To DS0PR11MB7958.namprd11.prod.outlook.com
 (2603:10b6:8:f9::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB7958:EE_|SA1PR11MB8318:EE_
X-MS-Office365-Filtering-Correlation-Id: d2375d7b-59b2-4d9e-1a9c-08dcce5899a2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cElQanBhOFIwM2FNVVBYVWhTWnlCQVNDMHh1TktzOEd6YTJWdWdEK0tGd3pX?=
 =?utf-8?B?bFNFNlNlQlFEbm10VWF6WkxYTkZDN2dTamFJdHc1REo3NS82Q3V1Vk5Kdm5i?=
 =?utf-8?B?T2VXQmNOaTI3M2VCUlJxV1F0b2tSbUVJMENkaHU1NnREL25ER21YNk81Y3FB?=
 =?utf-8?B?MzNqelJ4SjVwNERXNERvbVNvcFNNUWliOTlHOVhLYkZlVHNMYllGUVhtcGFT?=
 =?utf-8?B?aEljVTBnK0UyQ2lHdnpsZWZiMEFEWDJrYkZKRllFS1hEVkpTZCtOU3ZBQVdO?=
 =?utf-8?B?ek4yNGovb1NpdVF4TVZqNTNQY0JlNnUvZkRTUDBxQ2tmck1OSVEySWhiZWtK?=
 =?utf-8?B?U3RDZnN2VzlvSi9ydHh4WUVCT0hodk4zM1dMOXdLNlY0MWhaSzFWWFpZL2hr?=
 =?utf-8?B?TldsR0N5TUhnY294QUVDcVY1NlRyZk16Zm1jL1dxbHcybXpuWVgyQ2hkUERD?=
 =?utf-8?B?ZnltNXo0ekhLQmtKZXdMZ1RHVmFHamkyT2xjU2U1MTRFME9xWUEwdmRHWTRV?=
 =?utf-8?B?a01PclJmenJvV21nU0hzOXRhYWZzNno4dnA2UC80VWVjM3BGaWRCRWRzaFJW?=
 =?utf-8?B?WTdKRmtaZjdoRm12OXR1RzNucmNkYTNDTmZLZFUrcnNucGJrOG03OXVCTGdV?=
 =?utf-8?B?TnFHR2dJQWFnU2RXeUxzV1dFRGFKTGpHblhXNjFEY1FMNENRQmE2STY0Vi9F?=
 =?utf-8?B?aE0wQzdFUytvTldOOTR0ZUJBOG5CZHZqbjN1bVJoekpUeTQyZVVyWmRlcWFU?=
 =?utf-8?B?TEMzay80Zy9icnBoUjRZOWpMbkxHT3FPS1NlVk5jcFB3RjVQcTEvNkNCOFdC?=
 =?utf-8?B?cE1sTURsNUZsMjQ4clN5NXltYXB3WklKUnRydktrQy9XQ1Z3M2YzbFIwNUg2?=
 =?utf-8?B?MGF5eENWOHBid1oveXJ5Y3hOZmp5bTJkMDVQcUc3OEZ2UkVRdStzOThxMWNv?=
 =?utf-8?B?d3VlTlhYVVBkK1BDb1JXaExUOWhqNHBIVzFTUnpQRHhnYmh3Z2pDcEhoWGEr?=
 =?utf-8?B?U0JlVjZpZFZreVNYbTBnZTJTSlJSSDF6U1NEWTFxcm9HWXdzKzRVMEpXeWRs?=
 =?utf-8?B?MVlSWE1ERDNHOFpHcjVjOFJsblN0OWUvV1RMNkszS1BZS1AxU0l4MVdkaGtU?=
 =?utf-8?B?cHp0bSs2ejJyLzBLZHJyUEJMWTdpYXFDdGYwWWV2cG85bDlOUFdNTGpKZ0M0?=
 =?utf-8?B?SmxEMHVrT3VvRk1zOTM5VXhCa0kwcmY2M1Q3aW9vdjVVRkt6R1YvcmpYWTFZ?=
 =?utf-8?B?SXRISkR3VTJUNk5Cd2FWV21HRE01bDZrSlhlVXlkY1Zma2cvSDdFeFlQQytL?=
 =?utf-8?B?a0J3MFN2M0ppT1dFQmE3WUp1bG1uQ1dXRXVvNEQ0Q2I0N1Boa2pMbC9CTE9N?=
 =?utf-8?B?L3VhaERnYUx3UFlCSmNIUmxoa1Fzb1ZoKzRiYmJsOGV0eG0vZEw2UllVbGt6?=
 =?utf-8?B?WUx0SE5MR3hJTWw0MHJ1RDhoQnpQbGFpWDNicUMvOXBzZ0QwNVB1UW1PTlBE?=
 =?utf-8?B?ZVFXNThLSndEZzl6ZVJneUFZYmpUTytGa3IzeU45cGdMbk5RSXFhbUsySWhB?=
 =?utf-8?B?WUkzOUxpUUUzaUpGSnhXRGFsanN6WUpBSFNvWEg1a3puKys4VEhJS2ZZaTlN?=
 =?utf-8?B?Wlc0SmJxYldkOGFZd0xDaXpJQnFvSmJzQVgybTNDZ0VQV0V2SlU5T2tXREhF?=
 =?utf-8?B?dW1mRTAxS0VPRzE0NWhhVVBsTDJ2U28wMk1zNEhiWDV0T01aNHQzVDNic1d0?=
 =?utf-8?Q?hYS8tbZ5jtIvdjAFVo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB7958.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bHFQRHJZOW1HbjlpbE5IaFI2ZEg0SEF1dk0yWTJaTmpvZm1lYXk4bjBvRE5n?=
 =?utf-8?B?V1M3TDNMWjgvQXdZQkh3OW4vdVcwR3lVMzdQM2NveUtud0g0Y01BYXhMaUVZ?=
 =?utf-8?B?UDZzZzAwc1RjN1JOT3dwdHVobldQY2ltSzVPd2ZHc3Rrb1lHSThTSXVnYUlh?=
 =?utf-8?B?M05udWR2VVZNRjRYVlV6ZHlKREc4eHV0R0tIMXZxN3dpbFpIWXVZR014YVRM?=
 =?utf-8?B?Z1RRNmpQWWh1NjBtRkRwYXFkTHQzYjJRaFNta3NmelNTVW9IN1VFdXViZlAy?=
 =?utf-8?B?a2JiV1JYRC9od2RKMGhDdFJzQno1YjlQRUsybEFjZGNhV1hPbERJL3BVbm93?=
 =?utf-8?B?OWJwdWZlb2ZYSmlCRnVnU2tCaGlMMEZKMFJsUWYxNEZmcDlha0xNNFg4Z25j?=
 =?utf-8?B?MkZWdlVQWWc1UkkyRUEvbDZPMmRGckpISUJVeEs5ZmtWVEhKMk1NWGVYNWN6?=
 =?utf-8?B?SW5Vc3RtTDlORW1NOTFYSVJTS1NhdTZBdU5rTXViN0RRcGhFOXkvL2piL3l2?=
 =?utf-8?B?RXB3Z2l6Z3pybzEyM3FyYTFUd3QxdlVWZWxvdEJNclpZMGVXTGFZMFdZR1lL?=
 =?utf-8?B?b2Z3MDBJUTM4QlVOdVkycDFzRUV5cTNTQVZvRlhZbjBRVTZVbTNEZnNHWWxT?=
 =?utf-8?B?UnB5NzZuT3AyUExoZ1RQeGNSYjZPdnQwSGZFSkZWZy9ZTTVTaGppK1pZTHBO?=
 =?utf-8?B?QVJ6MWpGMlV3bExXTHYyVWc4Z3lNNmhaQUhTeFFkQ2ExYzQxTEF5OGduejRo?=
 =?utf-8?B?ZitaQlpXZjJidTBHMUQ4VG0xcVFGY1g4OGk2cS9neWVVTTNlTi9QQ3pNcGxX?=
 =?utf-8?B?RkhTRFA5WjhyZFhpbkd2Vld4MCszcXVhRFB4M3NDcnZoWkdXVkRXWmpjdTZC?=
 =?utf-8?B?SEllYlM2QUx2a2FmVkNNa3hJcWQwUFM5UzliaFhydU5sWEdnYTM3SUhmbVZz?=
 =?utf-8?B?eDJFam5YN21RaTNwNlhYYXZNeEJvb1dybXBXOU14YXllV0Jndy9aRGphejgr?=
 =?utf-8?B?VVhjVTNXdTl0WjBkVndwZFpZQ290Tldpd2pWdUIvRE95anBXVTIwSWV3Vmpz?=
 =?utf-8?B?cFhmZlBnajhlclh3bTBWK3dPRlZZdDEwMWtuZ3BjaldXTUlLQXppTFVMMTdN?=
 =?utf-8?B?RWxPZDgxc1BvL3F5dzVRQ0JUeUhha2d1OUVQM2grTjhIdkRHVERNL2VrM2hi?=
 =?utf-8?B?ZU9lWVk4RTcyUnJZTElWMktMcmo2VGJHSFZ2UFFUM0kwYTVza25XNCtkUE12?=
 =?utf-8?B?TjRoRXhBcExISWpvTDFmMXJuSzk5ZUx4bXc3ZEFsK0NEWUY4ZS9NaXFBSmpn?=
 =?utf-8?B?STFKaUExM2tzQVhVOEJZaWQxWlMzNXV6MEVZSmUwcjF6bzJwdGlWSkRtSHZI?=
 =?utf-8?B?L3hicytTWWdEb0Z2dGhHZ0dXTkFEbkpPRHhOWTJyR0NUNEZwOFVKOURtYUti?=
 =?utf-8?B?VlRmM3lUcHRrdFN2YllHYmNld0FoWHF0R054MU9NV1R2RHlhUVYrZENkaCtx?=
 =?utf-8?B?Qm9QMnVwUUxnalMxY1VkQTBkNXU5aisyK0pPZzVDZjROeS85bmV0OTZYQmhT?=
 =?utf-8?B?TGxrQnA4UytUSnIyeFRsZjllcmNxM3ZacVVEWDdSRG1jQXpWVTNkeVVYdklB?=
 =?utf-8?B?bTNsWFlXY1dieDJVU3c4cFZUdkRJTlNMSWpGV25PS09zYzFTQTI5Si9YRW5x?=
 =?utf-8?B?YXNVRnJDQmN1ZmlORW5VbTJiLzVLblUxNUVCanZLcnM5NEdWbGVPakpSem1E?=
 =?utf-8?B?V3IyYnZnbzcydURoakYxSjB3K1J6MituWFNZZ0VSUTdYenFUd0VXMU93Nlhh?=
 =?utf-8?B?ckFCNjZCMGFXTXFuQ0lTQjcySFhGbWtzVTJESGNWaHVtbUN1MDdaYW9VaHlJ?=
 =?utf-8?B?SXNZN0l0bkplU253MENYWVNmWnZPeWd6M1FBdGZJN0RJN015SjVHcjF6NURO?=
 =?utf-8?B?L016QW55QjlrUnhoemxLNGJBWVJjeWVzYnM3eXpWQkhhMlA4OWcrUk8yMXJh?=
 =?utf-8?B?ZEJaTWs2Q290dnhBM2xkZHNOY3AzaUZFVGtnd1dGa2h4SVpVRHZ2cExXRWVi?=
 =?utf-8?B?dWxMWjhLMW4xYWF2QmtzdFNIUXZ0dTFEVXpNdk5UZmJnUjZiTmVRRE43SW1z?=
 =?utf-8?Q?V/9GuhynO4soFhG2AqCGdzmeH?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d2375d7b-59b2-4d9e-1a9c-08dcce5899a2
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB7958.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Sep 2024 09:45:11.3021 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Fka/D4xDQoIwZTiQoGUnDwLOH9Rk/wZZe/YVEc7lIfEaCp5ennIKdOY+CwyNlM/t4Xfp2xlHKSX7cBdlJ5tPTA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8318
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

Hi Raag

On 9/6/2024 3:01 PM, Raag Jadav wrote:
> Add hwmon support for temp1_input attribute, which will expose package
> temperature in millidegree Celsius. With this in place we can monitor
> package temperature using lm-sensors tool.
> 
> $ sensors
> i915-pci-0300
> Adapter: PCI adapter
> in0:         990.00 mV
> fan1:        1260 RPM
> temp1:        +45.0°C
> power1:           N/A  (max =  35.00 W)
> energy1:      12.62 kJ
> 
> v2: Use switch case (Anshuman)
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11276
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> Reviewed-by: Anshuman Gupta <anshuman.gupta@intel.com>
> ---
>   .../ABI/testing/sysfs-driver-intel-i915-hwmon |  8 ++++
>   drivers/gpu/drm/i915/i915_hwmon.c             | 40 +++++++++++++++++++
>   drivers/gpu/drm/i915/intel_mchbar_regs.h      |  4 ++
>   3 files changed, 52 insertions(+)
> 
> diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> index be4141a7522f..a885e5316d02 100644
> --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
> @@ -83,3 +83,11 @@ Contact:	intel-gfx@lists.freedesktop.org
>   Description:	RO. Fan speed of device in RPM.
>   
>   		Only supported for particular Intel i915 graphics platforms.
> +
> +What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/temp1_input
> +Date:		November 2024
> +KernelVersion:	6.12
> +Contact:	intel-gfx@lists.freedesktop.org
> +Description:	RO. GPU package temperature in millidegree Celsius.
> +
> +		Only supported for particular Intel i915 graphics platforms.
> diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
> index 17d30f6b84b0..0a9f483b4105 100644
> --- a/drivers/gpu/drm/i915/i915_hwmon.c
> +++ b/drivers/gpu/drm/i915/i915_hwmon.c
> @@ -7,6 +7,7 @@
>   #include <linux/hwmon-sysfs.h>
>   #include <linux/jiffies.h>
>   #include <linux/types.h>
> +#include <linux/units.h>
>   
>   #include "i915_drv.h"
>   #include "i915_hwmon.h"
> @@ -32,6 +33,7 @@
>   
>   struct hwm_reg {
>   	i915_reg_t gt_perf_status;
> +	i915_reg_t pkg_temp;
place it alphabetically after rapl_limit
>   	i915_reg_t pkg_power_sku_unit;
>   	i915_reg_t pkg_power_sku;
>   	i915_reg_t pkg_rapl_limit;
> @@ -280,6 +282,7 @@ static const struct attribute_group *hwm_groups[] = {
>   };
>   
>   static const struct hwmon_channel_info * const hwm_info[] = {
> +	HWMON_CHANNEL_INFO(temp, HWMON_T_INPUT),
>   	HWMON_CHANNEL_INFO(in, HWMON_I_INPUT),
>   	HWMON_CHANNEL_INFO(power, HWMON_P_MAX | HWMON_P_RATED_MAX | HWMON_P_CRIT),
>   	HWMON_CHANNEL_INFO(energy, HWMON_E_INPUT),
> @@ -310,6 +313,37 @@ static int hwm_pcode_write_i1(struct drm_i915_private *i915, u32 uval)
>   				  POWER_SETUP_SUBCOMMAND_WRITE_I1, 0, uval);
>   }
>   
> +static umode_t
> +hwm_temp_is_visible(const struct hwm_drvdata *ddat, u32 attr)
> +{
> +	struct i915_hwmon *hwmon = ddat->hwmon;
> +
> +	if (attr == hwmon_temp_input && i915_mmio_reg_valid(hwmon->rg.pkg_temp))
> +		return 0444;
> +
> +	return 0;
> +}
> +
> +static int
> +hwm_temp_read(struct hwm_drvdata *ddat, u32 attr, long *val)
> +{
> +	struct i915_hwmon *hwmon = ddat->hwmon;
> +	intel_wakeref_t wakeref;
> +	u32 reg_val;
> +
> +	switch (attr) {
> +	case hwmon_temp_input:
> +		with_intel_runtime_pm(ddat->uncore->rpm, wakeref)
> +			reg_val = intel_uncore_read(ddat->uncore, hwmon->rg.pkg_temp);
> +
> +		/* HW register value is in degrees, convert to millidegrees. */
use millidegree Celsius here

Thanks,
Riana
> +		*val = REG_FIELD_GET(TEMP_MASK, reg_val) * MILLIDEGREE_PER_DEGREE;
> +		return 0;
> +	default:
> +		return -EOPNOTSUPP;
> +	}
> +}
> +
>   static umode_t
>   hwm_in_is_visible(const struct hwm_drvdata *ddat, u32 attr)
>   {
> @@ -692,6 +726,8 @@ hwm_is_visible(const void *drvdata, enum hwmon_sensor_types type,
>   	struct hwm_drvdata *ddat = (struct hwm_drvdata *)drvdata;
>   
>   	switch (type) {
> +	case hwmon_temp:
> +		return hwm_temp_is_visible(ddat, attr);
>   	case hwmon_in:
>   		return hwm_in_is_visible(ddat, attr);
>   	case hwmon_power:
> @@ -714,6 +750,8 @@ hwm_read(struct device *dev, enum hwmon_sensor_types type, u32 attr,
>   	struct hwm_drvdata *ddat = dev_get_drvdata(dev);
>   
>   	switch (type) {
> +	case hwmon_temp:
> +		return hwm_temp_read(ddat, attr, val);
>   	case hwmon_in:
>   		return hwm_in_read(ddat, attr, val);
>   	case hwmon_power:
> @@ -810,6 +848,7 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
>   	hwmon->rg.gt_perf_status = GEN12_RPSTAT1;
>   
>   	if (IS_DG1(i915) || IS_DG2(i915)) {
> +		hwmon->rg.pkg_temp = PCU_PACKAGE_TEMPERATURE;
>   		hwmon->rg.pkg_power_sku_unit = PCU_PACKAGE_POWER_SKU_UNIT;
>   		hwmon->rg.pkg_power_sku = PCU_PACKAGE_POWER_SKU;
>   		hwmon->rg.pkg_rapl_limit = PCU_PACKAGE_RAPL_LIMIT;
> @@ -817,6 +856,7 @@ hwm_get_preregistration_info(struct drm_i915_private *i915)
>   		hwmon->rg.energy_status_tile = INVALID_MMIO_REG;
>   		hwmon->rg.fan_speed = PCU_PWM_FAN_SPEED;
>   	} else {
> +		hwmon->rg.pkg_temp = INVALID_MMIO_REG;
>   		hwmon->rg.pkg_power_sku_unit = INVALID_MMIO_REG;
>   		hwmon->rg.pkg_power_sku = INVALID_MMIO_REG;
>   		hwmon->rg.pkg_rapl_limit = INVALID_MMIO_REG;
> diff --git a/drivers/gpu/drm/i915/intel_mchbar_regs.h b/drivers/gpu/drm/i915/intel_mchbar_regs.h
> index 73900c098d59..dc2477179c3e 100644
> --- a/drivers/gpu/drm/i915/intel_mchbar_regs.h
> +++ b/drivers/gpu/drm/i915/intel_mchbar_regs.h
> @@ -207,6 +207,10 @@
>   #define PCU_PACKAGE_ENERGY_STATUS              _MMIO(MCHBAR_MIRROR_BASE_SNB + 0x593c)
>   
>   #define GEN6_GT_PERF_STATUS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5948)
> +
> +#define PCU_PACKAGE_TEMPERATURE			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5978)
> +#define   TEMP_MASK				REG_GENMASK(7, 0)
> +
>   #define GEN6_RP_STATE_LIMITS			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5994)
>   #define GEN6_RP_STATE_CAP			_MMIO(MCHBAR_MIRROR_BASE_SNB + 0x5998)
>   #define   RP0_CAP_MASK				REG_GENMASK(7, 0)
