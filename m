Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 737E7D01B40
	for <lists+intel-gfx@lfdr.de>; Thu, 08 Jan 2026 09:59:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D7D510E6BE;
	Thu,  8 Jan 2026 08:59:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="L15zTugt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5DB4010E6BE;
 Thu,  8 Jan 2026 08:59:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767862743; x=1799398743;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=bU7VjUnLf+DmqChxcM4f1RAfWvlsQDwr3nkOE1cEEsE=;
 b=L15zTugtvEkdIgZ+cA13KdE3lqyoab5pqDb8yNavF/1ZfMAxRZ5jnmpg
 6bno9fq4DzfeTkbeau4Km1z/RQPsCWSSi5ib0cxmejxbfmrmCu5ajeNOC
 EwJusOEedTpxsma9dL7W+YsrXFHmLlg4qlrkVoyR8Y1Yj2iM/vaT0EEeA
 P17TUpND7BQcYlt89GfjQ22sZK2W6w1wRjHnnquZCGV6YMSslw1fwDetq
 jlM80cjrbkiGUprLzeqhpzZBxtminP1GDv+g+XsAnzemtRE/uSpSG0D4H
 NBrkIHTGs5oZkB6xZDnsEc5d3G2r571t2zd+oMOTyd2QTWdaedSC3C+J9 g==;
X-CSE-ConnectionGUID: Xk8tHflARd+ZlXGfU3W8rA==
X-CSE-MsgGUID: 6qteqsLaR+i9fFSgCYDCWg==
X-IronPort-AV: E=McAfee;i="6800,10657,11664"; a="80600614"
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="80600614"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 00:59:02 -0800
X-CSE-ConnectionGUID: Hl9GI8bNSWGiXiWyjfVsaw==
X-CSE-MsgGUID: NH7TeF6aSIehzGatqxiJEw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,210,1763452800"; d="scan'208";a="234305283"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2026 00:59:02 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 00:59:01 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Thu, 8 Jan 2026 00:59:01 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.3) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Thu, 8 Jan 2026 00:58:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=glBav9XsTZIPaJUgSAg8k4k+11/Q/covYs66IBWfFsPpbIkD6XAtUzSLe79efeiLio4bZFuUNTnwd7inAIoL/B00rvBN2aEnMx+4CaQgD08dcABRSCknTyCGkkg0fnY+Yc7xr6BkjSzfRo3HUPBbYqX5SoZNQMCwqkzUAi3/c3X9MCnFhW/UqFdmWaANCz1dQS7v41EK9nUeZjk5fhdvH6ELEuRkrFGKnGAi+QmKTHpAeXB7JNviR45WFxNEPtcaGZPEfCpjsKt7TnlobzGsJcUbXacyCVaL+omQQgadXUJi9hVYJTSVOOGzzIewf9cEgEwmKUIv5Tg9LGj/mOOGgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MbqvxXz6ixtjDLkRfYlFFZipWCPHMzubNK9Bc4jWoms=;
 b=JlZ4evPTFvaX4KRVEfcd+mJ1iIdcZ8q+uCi82FgW8yxsdyy9ZVOHdtHC1BdPNF8yNHH5SoYZ5ACabIuLXdO+x475XxXuhlDANQDHDtRFgyf+JKPvCMhcK20bF3hn4CleNOBef1wX3FuGcKVm4ScPO0vtq8P1LTbwb0VzbXbBWKXs5MlDvcTM8RMkO9li3KrPwY2FVikHXqbLrJJpeKHv/7Q7/CBTNZvN55slux1wpAwDY+I8NxncPaZqZZc9dtbpHSppyE1QxRkRxqwo9yLvsYsjFmXP/2S67/LF3t7LIOmD4w02sm+0SC9bBI2u/AK/Z8kUAe9aF/maImHUO1jYfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW4PR11MB7161.namprd11.prod.outlook.com (2603:10b6:303:212::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.2; Thu, 8 Jan
 2026 08:58:46 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9499.003; Thu, 8 Jan 2026
 08:58:46 +0000
Date: Thu, 8 Jan 2026 08:58:34 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH i-g-t v2] tests/intel/gem_lmem_swapping: Avoid false
 failures from oom-killer
Message-ID: <st6kgzhfy5j3axw3mc44ckzwpe3wdpjpztgoy6ksmmnh2ciqaq@imi27uxmupvm>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251219100218.334117-2-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251219100218.334117-2-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: TLZP290CA0015.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:9::11) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW4PR11MB7161:EE_
X-MS-Office365-Filtering-Correlation-Id: 330cfebc-de51-4ddc-5955-08de4e9421cb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RStmTkRhcW9HclJtRFE2WmhjRThCT2R0Tm9GV256cUR6ZUsza3pSb3VZc3My?=
 =?utf-8?B?K0w1VXhiOEMyMC9lWTQrZnJOK2tLQVlBTGl0dGxqOFR4MlZ4cWFwcHBMbE54?=
 =?utf-8?B?cEFxL1IyNHp0ZFpKcXFzam8rUm5xMDkrbW5ySnhkajNMaGhjR21oZTdubERC?=
 =?utf-8?B?dFF3R3RraTUrbCtZZWFSRm9Gay9pQlNvU1ROcmdsVlNINWt6QUNzeVFMd2Jo?=
 =?utf-8?B?VDU3d0NuS0lkeEM5bWdyWVB6bHR1Qmd1MW5ITWJ4S3lKeGNpTjg5U2tYWDY2?=
 =?utf-8?B?anF1dFM1VXowOW9HYUlqZk9DU2tzWFBpVHVOQTVIY1BmalVWeE1oRE85bVBj?=
 =?utf-8?B?LytOQU9GSGkrLytFS0JYL0ErS3VGU3FwVVpaTkUrTGhGWGhyNzIyWXY5RFVv?=
 =?utf-8?B?ZmpMN29TSW0xTG1DamIzZFJreEZ1RUNVMGQ0czZtTzhBMFYzWkFwWVBSTktz?=
 =?utf-8?B?Szl0bnhmT29YOENzVUJIN09IbGt0bXpzaGFxZ2xwU3BlUUNWODlEbXBOMUxX?=
 =?utf-8?B?QVUwZzlBVDEyOVRUbXdadzFoUGEySTFaT2xlbXRiTDRNRldVeG9jdHZFdHU2?=
 =?utf-8?B?a2ZQc3Bia2NXQ3VIMWliTmwrZThqS1pOa3RicVdETTZMbE9KSUV6bHNMUnRR?=
 =?utf-8?B?RTdZMDZqWXhkNFV6V3JKMDJsSGNWWEhuSVhHak5rT29OaS9uVUllWjh6am8x?=
 =?utf-8?B?WU0rSC9wRkx0MFFFeFVCRCs5Skd1RFRTNTZQL0Y0VTllYXJpdmxJeHNRVU02?=
 =?utf-8?B?YituNUZ5QWpBS0lZY0FPZVk0N09BODI3eGFGbDdhaTZmQVVjaEY3UnF6VWZv?=
 =?utf-8?B?akZWaVNtSERxMG1aakJuOGU3SW9VeWdlVWpRUS9NS2w1R3VGQmhwNml2TFRW?=
 =?utf-8?B?NHdGekdZSHV3SUR3d3ZPYnlqclJaMHMrUEFBZGxGVWtGdFl3U3I5Qk5wOUh4?=
 =?utf-8?B?UFE3R3Jkb1RtaHcxMkpHQTlOU3J6Y2orcEhNdm9DTXUzZll3ZWt0N0YzWGRo?=
 =?utf-8?B?SFU3azFHUEIydmhhUm5IaUdrTzdGYWt1WGR2RXFNVEJlVnFGdkJrUVIrQjVW?=
 =?utf-8?B?OXA2dFpYM2x5bDRsbnBPWm1VbWFEc3JWWFFha0p1YVRnaGFTcGdaUkpDa1Jj?=
 =?utf-8?B?dGp6RlZIMjNNRkZ0bFYxdUNuZmMyZzFqeEVQMzF5UUZ2NjJqSDFMR2tNVGpu?=
 =?utf-8?B?Y0xwRU5JWUR5R2VtQVB6Wi84VENVM2xoc2VPbnc5NTdNb1VNRHBLUGtWemJQ?=
 =?utf-8?B?dFNQTEoyTSt5RnYrTkhVSkxNSlprNHZFOVJZU0M5N3BNVWF6VU1lYUg4N3pB?=
 =?utf-8?B?Ynp5am43bnQwTE8wK0FRbTlXVzVGSHZQTUNneFhJbEdzc0M0cjdFSUVibEhU?=
 =?utf-8?B?cDNiY0pyUkVpWWJSYVZmWWd3NXBCeWl6SG5qVmp5YWx4QUlQaUxHMHJ0THN2?=
 =?utf-8?B?TW9qcmxaZUdjZUVnVmFDczZ6UGNUQWI3QWIrQzdjYW5Qc0tPTnhrZnpRN0Ur?=
 =?utf-8?B?TzZ2Z3Azd3huYlZDdFRCb1ZYa1c5dVllNytwMmdlVzlyRjd5V0VWQVhNTndz?=
 =?utf-8?B?eGM4NWVmcGJ6dUdpK2U2WVZNK2NzOXluaUlaZ1d4Rjk1dUlxeGVuTlF0L21W?=
 =?utf-8?B?SVY3TGRWMVYydjFqdVdCWDFJNkJldXF3am5GZnJ6SnZ6NjBjOURGamNOVHBk?=
 =?utf-8?B?MC85UjhwSm1sME5kMjJYeGpEVWo5QTBvcCtUc2N0L09Ia1JXY2xsUytiYXFm?=
 =?utf-8?B?L0MxNjVENEtMQVI1QkZHeERvc2pYOVNhQm9HU212VHk1Y3YzUzRwZkJYaE5C?=
 =?utf-8?B?S1pPN1ozUE1abkYvRHZIbDE1MzBhWEw1dC85UlMzQVJWdEZPTVl0bFNZWXEz?=
 =?utf-8?B?Uzl4R1hnbGtxY25IeDNZQWZWdGJ4Y0kzNk1iSlo0UlJoSi9nTWpMdmw1V0RE?=
 =?utf-8?Q?AmIMujDGqpG2vW80k1MzZ2C1A4QSIbVK?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c3RNWllPTk1lc04vdDVBK2hiUk5TekJBNVZ4MkI1dFA2eTZQaXpxNitMVzBR?=
 =?utf-8?B?TXgxRThEV2dJdG42QmVWTEhNdWl4Vk5yczBiT3RoSnBLbVRsSHN6RFZYdjI0?=
 =?utf-8?B?RHhsMjBydnRWMWZQeWV3aFFmL1BQN3FteE1odFZOVnIzN29KSld1NGtoWUJB?=
 =?utf-8?B?U0RWUlJYWDVSWFlpbkx5eHc1anlDNi82bjYxTWV3eGZocVZRcTVBOFl2NWhO?=
 =?utf-8?B?MkRKRHR4M3FHNXNrOVNWMzN1UjI4cTMxOVBKOGVLYWsvc1Joa2pDS2ZYOTJn?=
 =?utf-8?B?eHJkODAvdUZxbzZRa1NkUHpyVUVqdHpQY3hzUjZ1MlBDdzViS05jY29WV29C?=
 =?utf-8?B?cjF4OWY0ditTR3dJRUxzY0gyN1NyUzMyVGRrRDJJbTdSWWE1WU9mSXMvYzV1?=
 =?utf-8?B?YUNHc2RXWEhURUxMR0l4SkNneXJxbXRlcVBuOGNFalBuaDk4dkxsbEFZZkYv?=
 =?utf-8?B?cFRSdWtudTZHVHI5SVV4VDVoTjRzbGxxZEJGSTh4bzgrajVmQ0pLZE9xZVph?=
 =?utf-8?B?ZjlzbmFRbVlOVlRwQXZaUXIyamVTMmJqOGF5Qm56NS9ZNGVXU3RWSDFKQXpw?=
 =?utf-8?B?RVJWaEZmM3JXVHU1WEJpM2hmZktEcUxQUklOTjh1M0Z2RlJtaFl6VHVENGRz?=
 =?utf-8?B?aTlRZklnN3h3Q2E0UWY4MEk3SnltaFl2TmozblFieCs2VE5BaDg3ZWFueVVq?=
 =?utf-8?B?eCtkNU5leitlTTE5QUZUVEVrbDhPd0c4TldJWThRVUtLK2tQT2FHTVcveUU5?=
 =?utf-8?B?VlhXQjRyVUNFR1BpOHhLMlQ0Skk2YXgzMUlQaTgremFZejBCMFZFQUlES1Ux?=
 =?utf-8?B?bHRUOXVpbVkyMmNBcWw0ZmMwdjJlVnQ3by92M2ttN0poVCtBUDdMQlFSdW5n?=
 =?utf-8?B?eGNaU0RQd05zQlo1cHl0Yyt2eTRRVkxsYTFrMEh0SkIweEY0VDI0WVRVRUh0?=
 =?utf-8?B?bEsyZVFWcVBJdTliVkJSaXo4Nkc5V2sxMDJsUDAxc1V6c0U4Y3JWZmNhTWtD?=
 =?utf-8?B?UElPTG1uaktLcU1WQzFndE5JeHl6ckhWQ1Q2N0F3U3p1VXZYYUNFZ1pFd0pD?=
 =?utf-8?B?bE85UThNWXNRNGpCVUp3Y2dtaWhyOE13K3paV2p3WUlOMUdtNXZ2UzRUVnRi?=
 =?utf-8?B?UkxRc2VqN25XL01qQUdHejFtQmZGaG1wbGFrczI5ZU5SUlZuV01kemxwM05H?=
 =?utf-8?B?cjh1SmN0VDVydnZ4Z3BjRitvb25zdXRVUEN5T2dOMGgzTy85cm4xY2d6L1RL?=
 =?utf-8?B?V29hSUtyTlZSRkRrODVQSzgrUHpJTXBxOE9wTTQwTlVkd0FQK09Mc2xsM3BV?=
 =?utf-8?B?dHh2eTlGVkF0aEJkNXZYMXBXZ1I0c1BaQ2tyQTlJeWtLNFlMc3lqTW0vQnpR?=
 =?utf-8?B?clp2dTRzSWU2NHl2MkVTU0tSNTR2VURlVGRBbUNoUWcrU3dDV1V5cEhsL011?=
 =?utf-8?B?MFh3TmpaaGFDekJNdXlkanlWdlp5aWtMQzZWSjdNS1N1QXQrazZXSHNqaUNr?=
 =?utf-8?B?cEdKNWNFbWt6TUZ1VUFzeUpTakoxbzdtWDFmdFZJVnB6cUI5azJ0NjdraWhJ?=
 =?utf-8?B?a2xxeGl1SDlIWlJtdi9weEFybk1ndmkvaXBYUHYyV2xFSGhGRGhHd2xydmN4?=
 =?utf-8?B?b01RTDRPa2dySWhkcVlaRlhSdkV3RHgwVVEwbzVpdVphblZ3Sk1leC9pNGU5?=
 =?utf-8?B?SEhCUFdGVnRZMGEyQlBpQ3EyelB3SjhWYmlCVHJOSlNCQ1FoanA2VWhLTHlE?=
 =?utf-8?B?NXp6ZU9PUkl1RCthNTVlY20xOTJtemo4ZVpXNHZ1UFZKTDBoTFR2emJ3NzBH?=
 =?utf-8?B?bTdUSHdMaDQyWDNJaXkxdUxkMmFsUXlnclVVR2pIZ05CZ1JDNTN4Tk1SWGxB?=
 =?utf-8?B?dUdERFNlWlJDMEphSWJmNjRQSmY5bEh6UmxpWXo5amFnaHhXRXNuMHlqRXNt?=
 =?utf-8?B?MXdRWWZ0dzNqSjRzNG5FVTUxYzlTL0JXcjJFWEIwUnU1OHJjNzJGSEVDQWhB?=
 =?utf-8?B?NzhFa1dSQnZzQURFejN3aXBzSFVWOUx2NzVnekhOWXR5SllDR08raVE0T1E2?=
 =?utf-8?B?elJlcGZKQTdTL1YvV2JFOW1SN1V6Tnppbzl6K01LTDliTUtJSitPdWlDWHUw?=
 =?utf-8?B?M21UTW5qNjZkemZSM3cxNkxQSEx3MmZTOUcxRktZdDBSOFNJV01yUlgvMU51?=
 =?utf-8?B?bFd4MHdQa2JKM29lVmpITndNTjdCeXhsbEdzTmc2bkgwRU9vUkZJNGdDQTY5?=
 =?utf-8?B?alVka0lMS2hlRmx0SmozamNmdmhVamZHZGZTWkxSV0lXWWhWV2VQQThSeUdv?=
 =?utf-8?B?MlUzeTRmaEJpY1dDWW9iZk15VWI0TVdPczkwN05xam9SWURmU2tBU1V4UVlw?=
 =?utf-8?Q?vKXlpkk0cWXFrJ9I=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 330cfebc-de51-4ddc-5955-08de4e9421cb
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jan 2026 08:58:46.4042 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: z5bN9z1LDF2hcB6V8aPiHhCHV3DOFLXu2LV7eX4BxP16jGLkQCoGsrLbzbnmGLZedOUiVsYa1vNLfOiVxz1KsnVALjKvYnuyGgVXQkGH22A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7161
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

Hi Janusz,

[...]

> +		FILE *printk = fopen("/proc/sys/kernel/printk", "r+");
> +		int console_log_level, default_log_level;
> +		unsigned int i;
> +
> +		if (!igt_debug_on(!printk)) {
> +			if (!igt_debug_on(fscanf(printk, "%d %d",
> +						 &console_log_level,
> +						 &default_log_level) != 2) &&
> +			    default_log_level < 6) {
> +				rewind(printk);
> +				igt_debug_on(fprintf(printk, "%d 6",
> +						     console_log_level) != 3);
Will this not erase the remaining two values held in printk
file? I mean "minimmum" and "boot-time-default".

> +			} else {
> +				fclose(printk);
> +				printk = NULL;
> +			}
> +		}
> +
> +		for (i = 0; i < regions->num_regions; i++) {
> +			region = &regions->regions[i];
> +			if (region->region.memory_class == I915_MEMORY_CLASS_DEVICE)
> +				igt_dynamic_f("lmem%u", region->region.memory_instance)
> +					test_smem_oom(i915, ctx, region);
> +		}
> +
> +		if (printk) {
> +			rewind(printk);
> +			igt_debug_on(fprintf(printk, "%d %d",
> +					     console_log_level,
> +					     default_log_level) != 3);
> +			fclose(printk);
> +		}
> +	}
>  
>  	igt_fixture() {
>  		intel_allocator_multiprocess_stop();
> -- 
> 2.52.0
> 

-- 
Best Regards,
Krzysztof
