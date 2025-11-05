Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 433EFC35898
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 12:57:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6264210E2C0;
	Wed,  5 Nov 2025 11:57:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VK/pEr1n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1055D10E2C0;
 Wed,  5 Nov 2025 11:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762343820; x=1793879820;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/UKLzpUDW9DOhagbX9gk9LENzDvii/vKQHJYBdFhveQ=;
 b=VK/pEr1nJkG7e1IRYuyGcbUEYH44DOnutLLgbbsWo7UrRnI4T5rcA7E2
 4uPHtyCCoBc+StaHzWr+Y5Z2dKGl/z110I7m9hbXjara/POosRwiy69C2
 eYzTjHbr+HAQceF+bXHMUKd4YVoLHSf2KZ4POn4wCx9h8AAQ6t7dI4QNO
 N5fO5GWNDbbyFisdad4jvbKFLg4mQkIAdwOiNR8ULspeShI/BYzsDG11z
 HY0x8+l3E5x3inuZGZI9seQmmFhDDehpdkXoCSjTsbo3Xb8kYfyyjdttw
 v2KymgUwwpezt81FTZzUnA/bVxdV07b5LBj44I0YAf7so7P2zaczhQxIv A==;
X-CSE-ConnectionGUID: rUeuYYXCRG2yKBU7lN+6Nw==
X-CSE-MsgGUID: qHKsfG4CTbiiXNec499sOQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="64150790"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="64150790"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 03:56:59 -0800
X-CSE-ConnectionGUID: gj7JnQn4QcWiZ248zTYEGA==
X-CSE-MsgGUID: 0QKTW5YfTAOp32Cv3ShJYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="187597354"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 03:57:00 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 03:56:59 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 5 Nov 2025 03:56:59 -0800
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.50) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 5 Nov 2025 03:56:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yjq+Vl3cBSuKJCXRaMhA9tYpf4U0+jwLs+4SeH7OE7Hs4AqG4fEhn9nHTMAnWa04GlXfoMCoPYNIXew4ugA5MxBa9zBUXta1ulXLxgGkX0FL9rFcatxzilzKC4zFhNMZIL+q7PbnZkBF8wX9ouM1qoCytXJDKwj8pC02JXcSD59Mcicw1e11bMxG4EtVWTN4x8qywsDZRq8wl5fwYVYoP2qcYwrW9EoXMr/pyr+G+xSRfTOir9PxWDIzHzAJAtqZ5vxbt3mjrYgIOie839PGFHE0XNjkaF0neg7WKqQqu4tzSdxv4FtghJaoq71liUqLptXj0ZETyejyVqef7+hBQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MQ52OUdwx8luu3LdL7ZpuVJhY6i7N6JdaCR6tQ/XKk8=;
 b=V2FXoAEZvUOLB7yYKJnsbJcaXWfbk9UdGt3ZBKnx0F6DcltE16/xv+2cLlrUCQpW86whc3sW/hsJfJRyrrPR/IJwy5GvqzZ6N4PCMy3BDOonNXp31MWvoj7YHj2zcT4p/h3MxXod+kOOlbRr+5H3r/WOquwxj0dBviDv1of68h8Cv9Z3ZQi1zn13+pI0UIm8xvpFVVAUOzksK67skQ2WPnvOuNXjiaaRwJKsVUothGFg0snrBdtJWrfWDpYFK2iINo2Xdz2rVK9flmWSfeSNhU3mI2NXTYKlliBzosD8rr3NXzs56zTVOrKePZsLH4rhkRiwDDlIvD7y5so2iHppjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5064.namprd11.prod.outlook.com (2603:10b6:510:3b::15)
 by SA1PR11MB8326.namprd11.prod.outlook.com (2603:10b6:806:379::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9298.9; Wed, 5 Nov
 2025 11:56:52 +0000
Received: from PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::33e9:2b0b:5259:ff9e]) by PH0PR11MB5064.namprd11.prod.outlook.com
 ([fe80::33e9:2b0b:5259:ff9e%5]) with mapi id 15.20.9298.007; Wed, 5 Nov 2025
 11:56:52 +0000
Date: Wed, 5 Nov 2025 11:56:40 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 "Andi Shyti" <andi.shyti@linux.intel.com>, Nitin Gote
 <nitin.r.gote@intel.com>
Subject: Re: [PATCH i-g-t] tests/dmabuf: Avoid soft lockups on slow platforms
Message-ID: <bh23vofy57htxzf7oyn2wd7a6x7cjdl3qx3paqd2elq3dvzskg@bhb7jrtd5esy>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251104112116.432508-2-janusz.krzysztofik@linux.intel.com>
 <r5cgmntobqaj2ou75odamzl75itjp7hbkmxbkb4ek3tnw67wai@lqryev5nzshq>
 <5124974.0VBMTVartN@jkrzyszt-mobl2.ger.corp.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <5124974.0VBMTVartN@jkrzyszt-mobl2.ger.corp.intel.com>
X-ClientProxiedBy: TL0P290CA0011.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:5::13) To PH0PR11MB5064.namprd11.prod.outlook.com
 (2603:10b6:510:3b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR11MB5064:EE_|SA1PR11MB8326:EE_
X-MS-Office365-Filtering-Correlation-Id: d62204d2-870c-4e23-d5cd-08de1c62686c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Y1ZPTDdGM29NL3BXaEdxYXFvK1p4bHUwVWlwcTV3TFVvWEdCaUs2b1c4cG1F?=
 =?utf-8?B?ZmlNWjM0eVU2Nkl1SDRNRWNZSlRjMDgxYWVyeGMwOFdQNTc0eFlUME1CWTVI?=
 =?utf-8?B?cGdhb1Nad0NGZkhadG4xZjdBcjhWUXZzUTN1bEk4QzJxamNiRHFzcDdQQ05s?=
 =?utf-8?B?MjNwVEltcXp6QmhUbHF5REd6RkNvODNFRXd5T01nbXM3S2lmMEpZOWlPQXZh?=
 =?utf-8?B?SDQxdU1OaC92RDk3aUF5T2pqc1JmaFRFYjlXREFaRUcxR1hWelhGNFFHRGYy?=
 =?utf-8?B?OWJ3THVEcWE1M2pkMDdqeG50K210a3FEMm5kWXhpZ09yUk5QWERBQk1kOEdo?=
 =?utf-8?B?SW5YSHIva0J5Uy9QSnFnZHhkS2dLeHZBR2NadUplb2JYOWd3dndCUmZJK0NU?=
 =?utf-8?B?TlFUL0d1UDl5RDNUL01sMEhCbTdiRzhlNVlJOUwxV0RGOThCMzhvZWh1VG5W?=
 =?utf-8?B?TlBMWDczVUtubnNkWE5QYnhpZmsxOWU2aFljMEMvdkkwajRKZXEveko1eEY3?=
 =?utf-8?B?M0l4LzNENktrenJsaUE2Z0JaZHl5UDdrQzdhYTNZKzZDc1R1WU5IN09Cdi80?=
 =?utf-8?B?OTJZbGlJR3RDMnRicHZpRWxxbXdiZjJ0d3MyekhyODdxdUt1UjNVcVMvMHFu?=
 =?utf-8?B?ZVFieFF0WFlTNjlBR0lQY05DSzM3MUVrWkNVZ3VCallaeTVMQ2RmU1JhZnAr?=
 =?utf-8?B?OGsrYkpnSHVRUXJUMEhwdExtUTc5ZmpSbllJVjVSQWJMQ1kzQVAyTVErcU5D?=
 =?utf-8?B?NnhoeFNDcVFoaXhFSU1aNFo5azNGUzdLMWR4N0lzNnlSMWRDaWIzWDYxZGpJ?=
 =?utf-8?B?ejl5NWc3Qk1XZ2RjTGFEaENoQ1F2c1FQc01vWkNUek9CSjRMVWErcjRDRENX?=
 =?utf-8?B?bUJNTlNVVVRSTkdCRE1WdkJhZFMwL1FNTXZXdjJlNDA3YU03M1dWK2RLU1Bk?=
 =?utf-8?B?Z1JlUTR0cWlhRFF3eWRDMDJRVXlDektIZWl6Z2VZVW1SK3A1THpDWGUxMXds?=
 =?utf-8?B?NXplTks1Nlh5YVMzcCs1Qk1NZXFXS1NORnBvSHlYZHBCeFFrRGNWUUZhTDJn?=
 =?utf-8?B?UjRUSVJWVGRrSmZ1YnJ4cFExeWFGNGcrWnNIYzZ4cTJDRlpLZTIzQlR4N1Nh?=
 =?utf-8?B?K0Q2V1lLUHZtWG5WYS96UTdvZWVPWkpSMXJCZ3NweTljZHRXYyt5OGdYaFk4?=
 =?utf-8?B?em9Obk1lcTE4aWF1bUlObWpkN3NqM2Rma25vdk1ZbmRkd3dCejhTRGp4V21I?=
 =?utf-8?B?bDlWY0orc1FJdytNL1pRRkJLOHhxSDBLdEM0VXJnOHpjTUxWUU5BM1RwNUtH?=
 =?utf-8?B?b1NXekZzZ2JvaWd3RndPVUpEeEtSWDduc0lFTXdsaUM4V2dPek1ZM25JeFo2?=
 =?utf-8?B?S2JMOFlSMmFsenowc1RETDNxTm1tV0RtSkVkMCtHN3NyNEdET3I2NGpRTUdL?=
 =?utf-8?B?R3c3Qy9jdVRuR1NINklxODBzaGtKbGxoOXoyQVFnWjAyVlNWL0Z1ek1ZU2FM?=
 =?utf-8?B?QjJqRWwzd1k4emtobk1sV2s1ZzZKSkUraVRXdEZ0bVNGQTh6bGJJeU9mMXcy?=
 =?utf-8?B?Q1RudmwvOGdzYzQvbkE4VTdLSXp2bXF0ZFJNb2JiR0hxRnB4M01QWkovYitJ?=
 =?utf-8?B?RjdnUlg4LzFGZDVJcHoyNnZRcFo4eEhLdUJjaVhzK2ZRaStnc0E2cVhIVXVS?=
 =?utf-8?B?UlBCUkMyRTRhWVQzbEpmRHZiRVg3TGlUT3VBdXl4WkVUTWR1YmVUVDVUTVNW?=
 =?utf-8?B?SjBYQVMvVjFDS0IwVjFlc2FwZ1FOMWljcWRlNUlESmhjWjA4UmlwMlZRVGhs?=
 =?utf-8?B?RkpmMTNPWmFWK2w1VFNYRDdIU29hSytSVU5GbDNhOFIrc1dMc3p6NHlrZWF2?=
 =?utf-8?B?REZhS2k2R2ovMFgwTFdJRU1pRzR4R3ZXYVF5aGVXNDhDWW9oS3IvSGtDc1F2?=
 =?utf-8?Q?lkUmYJBieS2Q7QJlFapWDcj0Os09GLRc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5064.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cUNSa3RqT0ZSOFpTdWJkcVdyUEQ2eVBVdWlWdlVPb2lkMS9tTEZGQWhNOVlw?=
 =?utf-8?B?S2czeWtERU9GUGxvQU91Z1E5ZzkzNmlOQjJKMEJ3S2pnMG5IREx1MUxPOFZr?=
 =?utf-8?B?VVd0bW9rZXRLYi9NVTJpeXN4aXZoOVZCT2swYUdtNDVqU1I5WUg2aEFsVXRF?=
 =?utf-8?B?Mnp1d2JTRVFBSk5Ec3FZcU5rWmpBaGN0VE9FSVEyZitGanJSU0p5V24rRHlG?=
 =?utf-8?B?TjBWZGNpdStvdkp2OERkdGdHQThZZ1ZUNVBtc29ndlhLVksvY1d3THhIdWlN?=
 =?utf-8?B?UkR0ZUpMM3dwSTNYVGxoelJ3amY0Z2hyNGlsYnZPUkU2WnZtdmtZbk4vMFdE?=
 =?utf-8?B?aWhMd3VvOWxkK0NsMEJEc3V3WnNDM3hqdC81SkxQVGNpMkh0L1BNNXhMdDIw?=
 =?utf-8?B?V21ZblhENHdUeUFkL0dIMU9Wd25iZEFoM3VpM0kxR01JN3l6OWVrQ2doVnBp?=
 =?utf-8?B?T1IzR2ZKdVN1c1B5bjgwcktVY213MTVweVdzeEptTlU1TEdvRHF5dlJKUXNN?=
 =?utf-8?B?dkYwWllxTjdWZ2hyWngwdFZxZFVZdTdpcG5XclArNldzd2l6aUVtSzRvQmdx?=
 =?utf-8?B?cFhlbDZBWEpxbmlpVUhkUlRSZ3R5UGFlOEhxdXpvTlZ0Yi9QbUUzZVVNaWVa?=
 =?utf-8?B?S3JsOEdCWExNejBwaFZYbVlkcVNyR3VFS2VzSEtYenF4dE11R3NUT3pPeHha?=
 =?utf-8?B?K1ZZNHpEMEIwTjNzZysrUmhUZktNNFd2alRQbytYcTlES1VvNjZjbG5VeEpt?=
 =?utf-8?B?ellvTWZPUGpmdHdCRkVGM0J4NlNSeFhNTXZUS2xjTFp4RFdaWmlHYXNGcWpm?=
 =?utf-8?B?elh3MUJNL0RLRmRrdWVDV1pBcXZ1ZXI0WlhVTWJFcURQQithdkt4Y0hHNjd6?=
 =?utf-8?B?VnBPVFk1VXNsbk95V2l0aDRmY3dHRkVNM2t2L2RTVHVQZ1puRHBwUlF3Mk1B?=
 =?utf-8?B?VXowWm9ZUnVsUEtNSnY2aEZRTzFYUkRaczVtQmRnTjBlZGxJWCt5VlpHdFhM?=
 =?utf-8?B?dzRkWGRSV2tLcFJXNUJRK0JhUU9scFB6NXEzY29tblBvUjJwRjBHejFNSk5u?=
 =?utf-8?B?RzFLWFVzSXVIRWJDT1VQbDBFZ2owbmUzTGNPeUp2ZmZLVHdiM1YvbldVS1hh?=
 =?utf-8?B?am5mdFFnd1NpU25ZaHQ2b2c5UGZsV0FJQzc3SCs0cUpiRDB6Y0gySHdRSGY0?=
 =?utf-8?B?TVVDZ3B2RFFrNVZZckpRZ1NETjBXeFN0NGRSMEI1Qnc4c2dtelJxRE9ndVJL?=
 =?utf-8?B?RnJFTk4yclpQZkpKU2NEbVpDZ2MrSFBwSmpiVklhUUExUkUreUcvK1JJLzVm?=
 =?utf-8?B?dEI1aUZhL2FpRWd5anNzWHdpMk9lQUJmNi9DYkJNVGRDTXA3Rzc4blNvVlpU?=
 =?utf-8?B?VnVKWXJCTzVTbUNXRnYwN2hPZzZvSjlSMUloNmFhUEtaM1dpOE02ODN2RFEy?=
 =?utf-8?B?WHVIKzVyMkxQcmV6bytLRXpPRmN1cUFCZlpPcEkzMkp2LzQ0UWMzd2xiaWgy?=
 =?utf-8?B?TWIyRjRtZitHajVLQm1aQTlDRzh3dnNVTTRKZm96SlMrS25RYVQ0Q2ZjZlYy?=
 =?utf-8?B?L0Uxb0FMQTZ4WStGRWNBT3QycVNwVkJ4dmJqakpCYXRGWkVMU1JZR0s0MXpE?=
 =?utf-8?B?eXpDQm9VUTZPK05FaTBmUHAvYnNLNDcrZ3h1YU9sRXNGL01tM0lxdUZqSXFp?=
 =?utf-8?B?SHM3bnJMeXBqQmFuVHg4bkV3N0hYZmVSeTVsTGJ0eVlVK3ZEK0NFWEVBN0pn?=
 =?utf-8?B?Z3JoSEN1VVhJQWI0Tk9SdVFCL2pKQUlOZVk4Z3NjZnM3Vi9ZQTZKQW9CM1dV?=
 =?utf-8?B?YS9BOFZxZVNGc0JxN3dJRjNma2JrUWdDU1BpRWJpMDNLVjB5TDV1RitObWZz?=
 =?utf-8?B?QjIyMHFCK3RZemVrY1FSOGJKSTVYSWtTSngraVQyME0xWTNlRlFacS9LMEFk?=
 =?utf-8?B?MGpmOXdUaEtqbWJ3M2xadk9oV25JcjI0WTIvYVUvYmxRaFVtcnNyUlJLN2ZP?=
 =?utf-8?B?Y3VUZCtrdU8wQ3JOaGc4Q1JvTmlQUzRoQ1Q4VzdIQ21md3VDeERsS1VVUzJp?=
 =?utf-8?B?RzJVVGVMMlY0VllWOVN0cDhwVGlRbEVQWEtLVUZtZ0x5YkxNYVZpOEYrRjQ3?=
 =?utf-8?B?a0Q3UVBoVHNhejNTeTZDQkp4eDdJbU9BRGFJb0xoNGNXNjUyNDVVRGNjNUVs?=
 =?utf-8?B?T1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d62204d2-870c-4e23-d5cd-08de1c62686c
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Nov 2025 11:56:52.4427 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TMWxAF9sIRSId5GE6K7tXJCCwCavNopysBttc38j7vnuHqOlyo1Jh2ZEt441zzaVvrqxvuVrozMpMhIHL+s23cmNK7xShiGygfahosRee80=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8326
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

> > > +	cpuinfo = fopen("/proc/cpuinfo", "r");
> > > +	if (igt_debug_on(!cpuinfo))
> > > +		return UINT_MAX;
> > Could this result in running the test on a slower machine
> > unintentionally? fopen() could fail, the bogomips() would return
> > a large value and wrapper function would behave as if the test
> > is running on a faster platform.
> 
> Yes, if opening /proc/cpuinfo fails then my approach could result in running 
> the test on a machine that occurs too slow.  If that happens then an abort 
> caused by soft lockup will be reported again, but this time with the fopen() 
> failure also pointed out among debug messages.  But why could that failing 
> fopen() happen in practice?
>
Yeah, you are right, we do not expect this to fail.

> One possible case is an environment with no /proc/cpuinfo (non-Linux, e.g., 
> FreeBSD).
We do not run the same code on non-Linux OSes, do we?

> 
> > 
> > > +
> > > +	while (getline(&line, &size, cpuinfo) != -1) {
> > It is unlikely, but getline() may fail with EINVAL or ENOMEM, so
> > maybe while(getline(&line, &size, cpuinfo) > 0)?
> 
> No, getline returns -1 on any error, errno provides those extra error codes, 
> if that's what you had on mind.
Yes, you are right, my mistake.

> 
> > 
> > > +		char *colon;
> > > +
> > > +		if (strncmp(line, "bogomips", 8))
> > > +			continue;
> > > +
> > > +		colon = strchr(line, ':');
> > > +		if (igt_debug_on(!colon))
> > > +			bogomips = 0;
> > > +		else
> > > +			bogomips = atoi(colon + 1);
> > > +
> > > +		if (igt_debug_on(!bogomips))
> > > +			break;
> > > +
> > > +		ret += bogomips;
> > > +	}
> > > +	free(line);
> > > +	fclose(cpuinfo);
> > > +
> > > +	return igt_debug_on(!bogomips) ? UINT_MAX : ret;
> > Same as my first comment in this function: will this not cause
> > sporadic runs on machines that are supposed to skip the test?
> 
> Yes, but if you think that's wrong then please first think of e.g. fopen() 
> failing on a fast machine for some reason, and then suggest a behaviour that 
> you think would be more correct in any of possible cases.  My thinking is that 
> it's more important to execute the selftest and preserve coverage than fail on 
> potential test issues that don't mean the selftest can't be executed.
No, we can leave it as is. I was overthinking this, I believe.

> 
> > 
> > > +}
> > > +
> > > +static int wrapper(const char *dynamic_name,
> > The name could be more descriptive about what function does/is
> > used for, so maybe "check_skip_wrapper" would better achieve
> > that?
> 
> If that was a global function then sure, its name should be more descriptive, 
> but here in this context I don't think that name may introduce any doubts.  
> But anyway, I can try to propose a more descriptive name if v2 is needed.
Fair enough. One benefit of keeping this function named
"wrapper" would be that we may put anything related to detecting
environment capabilities before running the test there. On the
other hand, if we'd require more wrappers in the future, then
we may address their naming then.

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
