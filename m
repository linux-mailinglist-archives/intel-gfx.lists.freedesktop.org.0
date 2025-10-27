Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C0000C11ADF
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Oct 2025 23:26:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 812E810E19F;
	Mon, 27 Oct 2025 22:26:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G7H+KY0m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56EF210E043;
 Mon, 27 Oct 2025 22:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761603989; x=1793139989;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=pZW3q9aawTOIKWFPOyCvQV7Q0kADMvpph8Tm/E6xAZA=;
 b=G7H+KY0mVjIhOBEhyeLAIk/F5CQ/IgricDwErQi9O4OoRt6PZCSGQfqi
 7fHgmTfdX5Pd6fvG9XrdT+crBqkxwcxjMKt/E7duuhtLlsBoZTwfzfaB3
 csP2MrwTemgq/IjOY0fFHpzyb13ml/hUoOg8OUAIcy3aX40KaRVh3SP7s
 kgAFZp0auX/ThheK0HQPjwLl805znuC+eU9hdmd4haqYPw7+Eo94WA5uV
 ziVTk3uNO5VRAqj26QRV6D0vrlBURxQjN75BqXUuOX1hpQQJuJh9TlxbK
 +aEfhStEbKO6EQfGTLPOEB5PfHmceB6A6iwfRblSwqtjorznpFpW7GepQ g==;
X-CSE-ConnectionGUID: D4SW9xUQTtKg8oAlsxB6vw==
X-CSE-MsgGUID: GWRtRWgPRjqWx6D0Qj2G6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63734292"
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="63734292"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 15:26:28 -0700
X-CSE-ConnectionGUID: gG7gAu9aR7G0VkEYCnR3pA==
X-CSE-MsgGUID: gNQ1DeIWQRixIaSMxjuYbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,259,1754982000"; d="scan'208";a="215828640"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Oct 2025 15:26:28 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 15:26:27 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Mon, 27 Oct 2025 15:26:27 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.23) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 27 Oct 2025 15:26:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w4x44d7dKy0GykoWysMb5LwZBQ6XRpspJ7MmSg98t8aIEP2TYorsaWK6Y1Toqw66CFTKci1XiG9KXmhCi0mohhOgFUEQPa3Kd3slsc4HFHmXQ63azrWNb/iew8tRMtn5Yco4pvmlcdqrjEZ1AJtdn14ytgdjN1FGQTJbTFPdj88mt6sh6U2ABT65wKy3/skbIUqjM6hq3pMYQZW9e7XSDTgjzI+MRfNm9DMnjoUnDhJGVT0QhQbyCmCyazLT9+IySTEbI6iFAWbjqbITQO0x7tOLUFxeGweOB51jhoy8gG9Zl+rnXQScovS9Fr5QXFDT6YuEez8lJLmcK4vhv5M2nA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FJtMkZWn+f8yubfztyY9L/hPFXO9rI0rvGScKCs1Ms0=;
 b=U4nD6FcOMN7lIuKsqjJTtHA8i1FzGooa6UFxWkOXbglHM2V5aKfJS2rJHKDe1uLDTUDRAaycFklaticb3+TPDX9mb7Ap8uvz8UpiRDtmCHmu+UWPe/8k77KCxk/Gl4KfT4nQ/RD/RenXWht+pnWpogLT6CdJzKnF6vvBinXYijO0DNQQvC41jGu+jBycu1jeZndUI76acYpO4hk+TM4AU0+wkYNi6EOFq3vhwL2dn/mn4bmEBCsV5fW97OVUQalvhjxpcqITh2fJEK9gv+JBLnmNC0hNE1+hby7f3r6zsipRr5uTFdAViyuoZxEBsrplXWvnSarlq5liDE/Bfhpa3w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 by IA4PR11MB9370.namprd11.prod.outlook.com (2603:10b6:208:55c::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.18; Mon, 27 Oct
 2025 22:26:20 +0000
Received: from SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88]) by SA1PR11MB8280.namprd11.prod.outlook.com
 ([fe80::13a:4240:8d73:3c88%4]) with mapi id 15.20.9253.017; Mon, 27 Oct 2025
 22:26:19 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20251022145640.GH1207432@mdroper-desk1.amr.corp.intel.com>
References: <20251021-xe3p_lpd-basic-enabling-v2-0-10eae6d655b8@intel.com>
 <20251021-xe3p_lpd-basic-enabling-v2-5-10eae6d655b8@intel.com>
 <20251022145640.GH1207432@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [PATCH v2 05/32] drm/i915/xe3p_lpd: Update bandwidth parameters
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?q?H=C3=B6gander?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Atwood
 <matthew.s.atwood@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Shekhar Chauhan
 <shekhar.chauhan@intel.com>, Vinod Govindapillai
 <vinod.govindapillai@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Date: Mon, 27 Oct 2025 19:26:14 -0300
Message-ID: <176160397421.3407.16703203925525215704@intel.com>
User-Agent: alot/0.12.dev22+g972188619
X-ClientProxiedBy: SJ0PR13CA0071.namprd13.prod.outlook.com
 (2603:10b6:a03:2c4::16) To SA1PR11MB8280.namprd11.prod.outlook.com
 (2603:10b6:806:25d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SA1PR11MB8280:EE_|IA4PR11MB9370:EE_
X-MS-Office365-Filtering-Correlation-Id: e3be7a83-5a8d-4047-3dda-08de15a7d9c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UUN3V215alBBUXhWNXRCREp6dCtlQTh0V2RIRVY4T1hXM1hGZE51ZHM0dCs5?=
 =?utf-8?B?UFRtWmVtbklvOTR4aEthMG83MVU3Y015YXFESjNIRHNPQUVKcmJIZmpBTXU4?=
 =?utf-8?B?YWtiTHRVWUFyWlRmYm9SRlE2MW1TY0pxb1Z1UGNJeTdQb3BQWmU3dFRRRHFN?=
 =?utf-8?B?Vk1GN0V2NnBXaVViYjNxWDlpNXhsVGQ5VXZBNWg5UHl6OEM4YmU2azg1eW5X?=
 =?utf-8?B?SERYOE4rcDJTUjZ1bzhYLzdmSitGRENuaU5nVmFobkhmK2gyekhadXVDU0JH?=
 =?utf-8?B?dFF5aVlJUmhua3ZrTmJEajh0MEt4dGtQMmJ2S0JMQVE2emg5cEMwWW9pcy9u?=
 =?utf-8?B?aitWYzZGQUJXTlFDSzJGNkVNY00zRW9JUlRwUStDRUV1dEluRzl6aWZsdkwr?=
 =?utf-8?B?YmVPSFlBZUxnR2VVUFBrUnNJNXFraGFHNkhycG9CUWlIelY4d1pCemRxRXF0?=
 =?utf-8?B?YSs2Zzk0YVNtd0NEY2xmOUpPRWVoQTZ5TGZHS24yQzlIZkhWcEluaFVCenBM?=
 =?utf-8?B?Q1hIQjJ5REFCREM5Q2FzZDBWL0M3Z2hXcWp4YUVERUVaSEN1UU55cTZiQzVk?=
 =?utf-8?B?R1lBOU1RVHNSYVZFdXJaQ0IyVXlXUzl1QWI2STRhWGN3ZWtueitWUmtDQTY0?=
 =?utf-8?B?eDNUNjVaMktvWFlKMWZIeGZGTnNNNzZlb1c0MFBJekNhSisrTVBhaUs5RFpw?=
 =?utf-8?B?RnNaOG91djhDN3RkS29VeWRVWmYxaEtXMjlBRGgvR2JDZWhmczdFVkJ4S2JJ?=
 =?utf-8?B?dmg0SXBFL2lKdHI5aytBWTdxRk11NU9yUVh6U21GRzhYaXZ1Ykk3c1hDeUQ5?=
 =?utf-8?B?MCtSWmhXWXozOFM5d3liSUF1ZDI1Rk0yRzJRVkJLT0VwUHJ5V0tiOUVlQ1hn?=
 =?utf-8?B?NkYwNEh0VGRkL3NTRDExQ2hmZjk4TTl4WVhVbFJGQjNtOGRRWVFKZWZLSDJt?=
 =?utf-8?B?eTNIYUZDcGdaN1JHd1pEYUtqS3BKSnQ4K00zZHhPdTVkUmlTVk45eERJeGo4?=
 =?utf-8?B?Y3A3aFNjZWZ3VnVRSGhBeURzV2FWNEEzSkhzTS9KWmZzWjlmVDhHOVAvME8x?=
 =?utf-8?B?Z2wvd3NOdjRZenN6aXZIbVkzUG9HcEk4eUMwdGErZW0xajhPUUYraWVFUjZF?=
 =?utf-8?B?NTJIY09XbWEyZjVnT3labktOV3pHTVhMWkZmcjhheXZxdkJxZkxoQloxMHE5?=
 =?utf-8?B?Sk1FMUFJaXNYcVQ5TGJiUHJwZmxEcnNHam9xNkJkYzI0SzFwMTd4am5EUmNi?=
 =?utf-8?B?MTR4Z1A2MkJ6bFhydVBlUWM3VE5zVUQ5bXpnZzU5bGxneDQrbDhLZ3RrT1Ix?=
 =?utf-8?B?ME8vQkxiVTJCRVZyUlZDRzJXb2plcHRCRmV3U0VUdlljbC9ueWhIVmppRHI0?=
 =?utf-8?B?N1p1OFFSZkhpTk5JM0VkbEk0YWM4RmlERXc0eWhjSDl2UUNHUTVKeDhjVTVz?=
 =?utf-8?B?NzRLUS9rUXJKVTBzUFcyOUhMUlU4MnQzdVFncTVkM214Nk5qQ2pxbmRpaC82?=
 =?utf-8?B?U1RVZ0NNVEc1RlVWU21kbmd4cGhEaFVMa1R6ZDNIR1FpMG5rNWlNcThmUTRk?=
 =?utf-8?B?SE5ldmdmQmt3OTMzbUFZR0c5Tk1EK01sb040V2Y3QjlXZ25acEgvQ1VwTGk1?=
 =?utf-8?B?dXV6NUhNK1o5NGpMYlFxNmF5Y0t4Q0FkTjJtUVFTdVFvMTFkVTh1a3RJeG93?=
 =?utf-8?B?Qyt5dXFMQ0Y3b1pWZDI1MDEreU54OTBaV0p3UWRua2VJYy9BV0o0QjBuUnRJ?=
 =?utf-8?B?N09sRkwzV0Z1U3drRmFTTjVha2RkN2VEaFdQTFdxbGRDcitWLzlDQjVENmlB?=
 =?utf-8?B?WFpMU1VqK2JYNE1JQVVqR084clVRRU9oMGhicXJJWmFUQWEwT2xVR2xvYXRH?=
 =?utf-8?B?cDRPU3ZDUzdtbG4yWXRpQ002YnZOL2NuYVNpMk11Y3EyRWV2QkFrVS8wUnk4?=
 =?utf-8?Q?0voQwze8iIVrx9KeeM7Aadi0fTNZC1K0?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SA1PR11MB8280.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d0cya2dib3N0VlZqSUVzai9qekI0TTVITFRvY2lBOCs3L3NUdk0vLzNORkdZ?=
 =?utf-8?B?K3ZiSWJGWVlaRUFhY1Jxb1JSQVRnbnAvejNzM21aa3BLdGdFTXR1ZjFYa1Ro?=
 =?utf-8?B?VDNjS1JRNFRNbTg3M3pGdCtRS3ZLNVRrYlJTT3JFd25KZTJuSnRTZzFWd0RU?=
 =?utf-8?B?eGpqdDF6RkVrMDBVWERBaENydVgxNUJpaUl1dmVQeGVBcnFZTWhLM0VhbWdR?=
 =?utf-8?B?OFd2Zm9idU9JUmttYXpiME1ETzdXYzBubDhIanhwSTZ3S2J0RHpGb21nYk95?=
 =?utf-8?B?bUxBOW5oUm5ESnY1MWgzWSsxRWlZeUJ6NFZTNi9nTUFWclYrc2lFd0RKY3Qr?=
 =?utf-8?B?dzQ4QW84YldZQmdMditRdjRSajhwU01OTFdxTVpwZW1GbkpuYXhsbHhmM2dL?=
 =?utf-8?B?Z0h1SzA5V25MRyswcXU1a3pxekFUNzBqcExGNmRqVHRvb2JSRm1aUTBPZmZs?=
 =?utf-8?B?WVZJSWptcE9tL2pjODdVUUU5OTBBOUxrZnJMeUpWbDJVaEdldStSTnpDd2pX?=
 =?utf-8?B?YjJmSUU2ajg0Uzc0UDJKeTlBcTVWc0FkMkMwU0VXYXNSS25MTEZpWHJTNEJD?=
 =?utf-8?B?M0JGQ2FZVlpjQmg5eHpCUXlLVzhCZXZhMm1pam1qMUNWQW9BMzNpWTV4dVhT?=
 =?utf-8?B?Q1ovNnhkam82ZlY0aWxUMGIzMFc1REpDMW93WXBTTEtwMVQveWt5NHhtNmlP?=
 =?utf-8?B?ZlF6cExEb211TU5NdDdleDZrWjVyVGxXSEpwdXlXT3RRYVhWTXJ5Ykw0d3FS?=
 =?utf-8?B?dThRQmh0UlNHS3FnSzZZdFNNWG9pQ2FXSjhCbXFlWFoyT1hoRGRBbUZEL2dN?=
 =?utf-8?B?WEY0Vkk0VCtleFY0b2p3dGVJNU93Umc3elo0d2FLdnV0M285MUdlVUErQ1NY?=
 =?utf-8?B?QXFyOTdGamNYL1cwZWUrT0tMS05kKytDNVRaY2VWVEFoZS9ZMTNjTkI2THpi?=
 =?utf-8?B?czIvYkJJaE04KzVkUVZyaW1IcHU4M2lDVGd5WVprRU0xWFF1djlEUjQzcmNi?=
 =?utf-8?B?d1NkM1VQL0wrTG5xUzVOSnd0OVcvd2RiZUhDSWo4bVNBVnJLVThRWHVhUHBH?=
 =?utf-8?B?M3ord0xQOWhweHViRnlNbVU3V25tUkowSGNxUmRrUEV0Q3JaSlJGQ2VDeWZZ?=
 =?utf-8?B?djB3ODVQTzFQajltVnBrdzB3dGZjcmNyWEp1ZWYyblpVanZTRkttdTFEQW1G?=
 =?utf-8?B?U0hIRE5LcURxdFhFK0UwL0VsY0IxZzlqc2N6azBTa0ZvRHBFR1hkNEdDSWFC?=
 =?utf-8?B?dy9zTGZaWTc4NE9HTlZmN2YxZ3MzWGh0dFlRejJkU3FCNDB2ZlhOcUVoK0V0?=
 =?utf-8?B?VXg1TlF5eGhtdlcxT1Z2N1owVGlzSnlxTVNZdGNvaU40K01vaGNKd0x3Vm5E?=
 =?utf-8?B?cGsvZnVKcXI0TkNqekJxdGUrVWtQTkQ1RDJLZCtTeVFBK3ZFZVY0dVBjbGJh?=
 =?utf-8?B?eU5KdFRQby9rbkxsTnViVHVJUUZlaWpVSVd6azZIamxad0ZQY1pwSkh5b012?=
 =?utf-8?B?eWQ1REIwa3hrNVVtSVhxS3VxaVVOQ3V4VXpldGlqbHN6Z05tNmViZzlFVVp2?=
 =?utf-8?B?V2hUektYRGNjK2luSGw2dDQyQ0tEQzR5NDRTbWs4b3hTS0UrTEdRMUtycHdT?=
 =?utf-8?B?VHMrSFY5WUgreXY4SzBxRkU1VkFKMXRBeTVaZW16ZjZLdWZQN0NIR0R6cE92?=
 =?utf-8?B?d1VSdFE5L2lLdURmQjd5N2RwRFl4eUJNRS83bTJQcVRLdCtyenI0RUdkTG1r?=
 =?utf-8?B?aUcyUkQ2UU55Qk1rQjhVYzZ4SmgzK2hvUUxYdkluZVJJaUU0dzA1TVozTS9r?=
 =?utf-8?B?T2Jqc2ExQXI5T0Z2bGhkZ1hCK2d2UURaVnBjZ0dreFVRMkVGZ1FFSEE3YmxY?=
 =?utf-8?B?bGRDbHNlRDBlM1VINGlXVXJwSGo1WnBNaGdLazQza2t0OUM2YlF5Tndod25x?=
 =?utf-8?B?Qk93TUxVVkFBbHArODZxcDF3cEJVMTdtRVZJcm1ZNEMrdVlBT1lYNTcxN1NJ?=
 =?utf-8?B?Mkh2OWY0MFd6SVBVcGxYNFNoWW5TTE5CUUxsV0gxSS8rZ0lqNkthckl3bVls?=
 =?utf-8?B?YmtsOThwcHp3bE8vRXpsMnlTZFppdWZQZjhCVVNpZDQ3NUtFU0N0aHB3Y0J4?=
 =?utf-8?B?eE9CQ1VJSEJyczdNY3ptTDZTUVNLNWxpNHBOYXJkZUdsTGgyUTl2WXpiWmRL?=
 =?utf-8?B?WWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e3be7a83-5a8d-4047-3dda-08de15a7d9c9
X-MS-Exchange-CrossTenant-AuthSource: SA1PR11MB8280.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Oct 2025 22:26:19.4573 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TefWDaDhTAyWoBFCllCGsIE6Q/BKpMdliHBC8KibMXgDIKoPFNwo4PBCeN3e4ndtXBfjEmfDXTkBQsg4eyauSQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9370
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

Quoting Matt Roper (2025-10-22 11:56:40-03:00)
>On Tue, Oct 21, 2025 at 09:28:30PM -0300, Gustavo Sousa wrote:
>> From: Matt Atwood <matthew.s.atwood@intel.com>
>>=20
>> Bandwidth parameters for Xe3p_LPD are the same as for Xe3_LPD. Re-use
>> them.
>>=20
>> v2:
>>   - Do not have a special case for ecc_impacting_de_bw, since there are
>>     no specific instructions in Bspec for this scenario. (Matt Roper)
>>=20
>> Bspec: 68859
>> Cc: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i=
915/display/intel_bw.c
>> index 57d65e6e5429..57cb8a23188f 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -810,7 +810,9 @@ void intel_bw_init_hw(struct intel_display *display)
>>           */
>>          drm_WARN_ON_ONCE(display->drm, dram_info->ecc_impacting_de_bw);
>> =20
>> -        if (DISPLAY_VERx100(display) >=3D 3002) {
>> +        if (DISPLAY_VER(display) >=3D 35) {
>> +                tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
>> +        } else if (DISPLAY_VERx100(display) >=3D 3002) {
>
>We could change 30.02 to a "=3D=3D" since it's a one-off special case, and
>let everything else continue to fall into to the ">=3D 30" branch below.

Yeah, that sounds good.  I'll go with your suggestion.

>Up to you; either way,
>
>Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks!

--
Gustavo Sousa

>
>As I mentioned before, we probably should think about moving the
>bandwidth / memory stuff back to being platform-based rather than
>IP-based, but that's something we can look at as a folow-up; it doesn't
>need to be part of this series.
>
>
>Matt
>
>>                  tgl_get_bw_info(display, dram_info, &xe3lpd_3002_sa_inf=
o);
>>          } else if (DISPLAY_VER(display) >=3D 30) {
>>                  tgl_get_bw_info(display, dram_info, &xe3lpd_sa_info);
>>=20
>> --=20
>> 2.51.0
>>=20
>
>--=20
>Matt Roper
>Graphics Software Engineer
>Linux GPU Platform Enablement
>Intel Corporation
