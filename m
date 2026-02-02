Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHtBA/1TgGkd6gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 08:36:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67281C935F
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 08:36:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9B41210E24C;
	Mon,  2 Feb 2026 07:36:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FoGHe1cK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37D8810E10A;
 Mon,  2 Feb 2026 07:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770017784; x=1801553784;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=aGSLcm6yC7DOyuG5Xulxlq1+K8hBlDDEduwhTkGUGc0=;
 b=FoGHe1cKT4KN0pCEFZl1YKQs2VkeR396QScflAP3XZjyqJPpfsIW+nbU
 fn8a/UmgdYfW8v66Cu398WtXJtZEe2+iHRWw2jD1M7z3wgO4JkWH3Oqk8
 inXD39svopQfTxBK+u2jbFBBAR+Z7TYAM/HgA63FADROfTc1/zbTGFxO2
 axjiFOi70XgsHFcv8fpbyuPuUMWZaPvyE2sltEB+SWRHxjEsB517HeRpK
 24TaHuO4bkFJNrSdMObZvpTgCugsJmG74o2bTiNAj5h2oIeubHqFUUzbN
 ALRE+y0RSZJGuniy0tc3BTm7HfPylU8ym+9pIOY5zqaep6NA5KLY8cyyX g==;
X-CSE-ConnectionGUID: VyKUsHuLQaeJlvn2XM2dbg==
X-CSE-MsgGUID: 7ui7GqRhTqqTv2ewEreaXA==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="71068141"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="71068141"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2026 23:36:24 -0800
X-CSE-ConnectionGUID: /5WWJHLXTlufxQ1B3WQvCQ==
X-CSE-MsgGUID: RdLscqQrTO+863cpGKL3Pg==
X-ExtLoop1: 1
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Feb 2026 23:36:25 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 1 Feb 2026 23:36:23 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Sun, 1 Feb 2026 23:36:23 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.43) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Sun, 1 Feb 2026 23:36:22 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XkRxipkP2z+Nmn26QPM3g/dGO1ULNVzPyb4H3Nx1YG6r8dmBZGd9TqdIBjrgs2sJ8gmO3++0ZmSlcNoe5IbaRSs3gsT/yfAqBTvNyB9u1Z1hoVBH3JS9/ojxiVVhuwnQcVp7C2TJR1FKA1eKZGST5Kp1m8IJf0dej0RnWI3l/75x+v2mtl2kxwYwGI65xOy5lW+GvntfgQTHy4X0LzQJtyv86nLjcGt1LYnqQll+T3wfdoJlm2MF9k9V4Yzf8bi+HnXyWx2MHlnuFfutYUDrrSkr8vOUH5oEidY3YKtBVBt3lwjYUqMclVtn5nTkydCzrJkuzxcY+tTUkNkwqWdhBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=swE7y4RUoyPaa/hElzfHajo1/GouL2FqapjAnKtyeB4=;
 b=J2J5f6NUHKrtr4WhrA1DFus+i5f9YQS4iJDZ0WV3mRU9/K0w+RtaC54cHjyAZF/KNyZ5N2zeNZ2P4RtJjEB4zKENVz9qVQDlHpFhF/ikNUUNXi4QmAKkH1vuKvUDizvzFmp5JSzm11uAjzFu6L1U87g22VGcpYFD6HwQvReGDxCtlrBFzzvNpD+ob1xaw9u2WAa6oZNt+jiGCY+h0Q+FXit+UctWMcVPSmlnCbJUwwQ2zYpXXe9VkdmJl38kYNMTKInkf8jtR8UtZk6bWSIP+wYdhVOj1OS2d6jlKPVrhF0Vf0PHxQBXdyI80bMYXV+A5txxE1QCM34FAFoZzMBbVQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by BL1PR11MB6028.namprd11.prod.outlook.com (2603:10b6:208:393::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 07:36:20 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 07:36:20 +0000
Date: Mon, 2 Feb 2026 07:36:10 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v2 1/6] lib/igt_device_scan: Don't print fake link
 bandwidth attributes
Message-ID: <6gbbspyisskvz6j4xelgm56w2vmhokgsdb5pccg3da2irjhkac@uhkznjoimqdu>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260127100123.114516-8-janusz.krzysztofik@linux.intel.com>
 <20260127100123.114516-9-janusz.krzysztofik@linux.intel.com>
 <reh3pf5mdecfzaxftaucazxifjpg5nhusryzgwettt5rtks4ok@yh5lh6vbelf3>
 <2762841.Isy0gbHreE@jkrzyszt-mobl2.ger.corp.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <2762841.Isy0gbHreE@jkrzyszt-mobl2.ger.corp.intel.com>
X-ClientProxiedBy: LO2P265CA0397.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:f::25) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|BL1PR11MB6028:EE_
X-MS-Office365-Filtering-Correlation-Id: de4d9d80-17ac-47c3-683b-08de622dc219
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WjlsakRKNUxDRnFGbnllZEd2TzN2cWV0UksyS2RxMXlmeHlhRjVlVlB4a3Zs?=
 =?utf-8?B?MmJpSmRxamE2amsxRThieVlWM1ZGRjdlT2JQeWo3OVh2RGxNZytRbE4zSUk0?=
 =?utf-8?B?eE5ZSUh4UEV6TkJzTFlOd0lQRS9NYmNieFBRcDlIU1JnQ1R3Sjl3N2JDUzBr?=
 =?utf-8?B?VEh5bWd4QTExQ083MFBZZk92T2pVcXBaMUtEbjd2dGwzSXJPVkR0dXRUdXQ2?=
 =?utf-8?B?V3VyZ3NTSHF5dmVZd3NsMHVNY2luREdmMVZLdG1rbDNIV2ZhQ2NWNlQrdGRM?=
 =?utf-8?B?UGdpeG5YZkVQeXZOT0ZzZ0NUcmJ2NHNQc3paVzFqNldwT0NiMUdhbWE4cU1v?=
 =?utf-8?B?TjQ1T1k4ZGlmT1ZwNmpxNWtZb00xRFdKOU1RSUZtT0dtM2VZVHVueEFnSmZa?=
 =?utf-8?B?L0RSbVF2THpWREFMWFN0SjZtYm0xNHNEMCtBR1BtNWUyWmYrSTdwQ3VYWDRL?=
 =?utf-8?B?Wmo5KytYamp3RHN4NjV6ZTNKODE0RzV2bFFNd2Rqem51bWJyclBDUmJWeXpZ?=
 =?utf-8?B?dGs5U1IrcnhYUTl3R2lzNmRnNUplM1dmdERncXNjdlNPd2NLaE9yOU5PQUZK?=
 =?utf-8?B?TlpQKzhTZHpiVEZrZFRXNjEwN3Q4YXZHOFVrMU82QVlZRXV1NG80SzdjeGx5?=
 =?utf-8?B?NU5mUW1SUGlBKzZYdHFSekdEL1BsNm1vMC9DelloSForWWhnUjFnUy9FWlV6?=
 =?utf-8?B?cTJXTkt2OHR4YUo0Vm9oUWxyYkY0elVCK3duc1p5Z2krdHFqV1dYMlhLdkRw?=
 =?utf-8?B?MGQwQmlKRkF0bjRYU2t5Z1g1Q1h1dkwvSG50SVgzcDNjT1hoY0RjUUJSVWZy?=
 =?utf-8?B?Lzl5WHZyZ1h1YTdCSWNhWmRLMXpUMFdzT09WMFgzTW10elpQZkFWR3BzZWNk?=
 =?utf-8?B?Z1FncWVndElLLy92UkRXYW5ja1M1UUIzYldzc2t5cGhWVmhWVkpPMGxWby9k?=
 =?utf-8?B?WkRhZkdpcm9XTU9NOUdJemdqaW83Z2N4S0orNll1MCtwdk5PQTUrd2Y4M2d6?=
 =?utf-8?B?TmVFZ1kzaWJmOWtUTkVpSVE0REV5ZndZRUFOSk0wcFBQLytlVmJpRVBUcDJG?=
 =?utf-8?B?WlBCa3E3aDlRSHFKcnhBTC9FTzFWdDJ5YkxPczYvNXB2cUtMdlZNZGR0VENn?=
 =?utf-8?B?MmpGWmR1SS9yU2hxaHJkWStTem9yMDlOUmwyeXVXYU5DVytGNWxXY2xOQVZt?=
 =?utf-8?B?NjkwbVVrR1dEbGdzbXVVaUdwaHJHWkFFUms2RFpicVBhdHUveGtGQmk0eVR0?=
 =?utf-8?B?SW85WkpxOHVyWHZSdW9ucUMyNk9DUTRZaldIQnViWTFBcGtvYTlXMzZMc3F6?=
 =?utf-8?B?aWI3NVZkWSszTzZNOHVEbUJXaFE5NStucHp0S3JPUjBxeWJVclNmS0t6K0dG?=
 =?utf-8?B?NHp1S3FUdFBwSU5rQmFDT3VydDByZXoxbFRuK3BiWXZpS25BWEVPSm8vY0hO?=
 =?utf-8?B?SFE2SEU0ak13bmt1Q3lTQytMVDNEdjdzdkpCN1gzUFpYZ1FwVTM4dXg3T2M5?=
 =?utf-8?B?MlY4bnhrZWt4MDZ1OGtvZWhGeGpZSmRTOU5GYUFsR1E5N1RROVlPTStJSTBS?=
 =?utf-8?B?SXo3bkVGaTlqUVBabkNaTW95SmJoTTFDc3ZJVnhpTVBVSGhjRTlSRUhQK2ZJ?=
 =?utf-8?B?c3V2dGpTSlZGRUNMVTNhcStxSW4vVEpHYXRpckZVN3NFRU1QMVUzeG9Sem50?=
 =?utf-8?B?KzhrZGNzbnJvTFIreVZaT0FzSFNXWkZFSm5uL0RiYnJoT1hZN3U0d3RDWjBT?=
 =?utf-8?B?K0RaeHhRb0xOelloNFVvZTFyUTZCaG94REpWU3pMTklmVEI1akM1bzgzKzli?=
 =?utf-8?B?K1R6TGRsakVMSGJrbHVQTngyRHRna2ZQSWdlOHRhMVhPTERvampXeFcxWnI5?=
 =?utf-8?B?N0RPUDhCN2hPQWJGdXZFNXVuSDlROGFOQXlBRDdZUkpPYzJSamNuZC9rY25t?=
 =?utf-8?B?NUE5cVhoSmJ3UytJdGMzQU1MVldqVzYyTnEwSlNtWmdEZ1lKd1JWWEh6TjNR?=
 =?utf-8?B?d0RMNFlwTlVOcG4zaTBMQkk5QTFiWHB6Qkh1d2diNGtpQ09Lc3RJODE4WnNz?=
 =?utf-8?B?STV0aW5sSXVUOGN3SkZRa1QzWTR1RXVlMkVZcWltVjYrKy9ZeHNzSlEwS296?=
 =?utf-8?Q?F3IM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UGNxTk84RjB2dmtWNHNaVmZub29NNUxoamU4ZHNSd3pBZnFJV3ovRWRMQzdF?=
 =?utf-8?B?cllPaWdIS2U2SzZJdzJ6VDI2K2tjQjJ1aWthYVNwT1FseE92eUQyZlV2OFdP?=
 =?utf-8?B?c01RZnYyWU1JRkYzQmlLOHhBQWtqclNzS053SGozT1VaTVBMcktpZ1AxVWJq?=
 =?utf-8?B?QzllTTFlMWZqMm4zeWY2M0hRelV6Vys5bTBvQW1XYzc2akh0VUtmYTRPSFVn?=
 =?utf-8?B?K0tWdzJFaVp3UWsxdGd2a3RyNkd2OGhteGRwaFI3dzJRUCtLQXZiRmhUd1M5?=
 =?utf-8?B?STh3VWdzaVMxNkxKaEMvV3dTbGp2bjBuMHluYjF2aW55bWRKM0I4TnRUamxj?=
 =?utf-8?B?ejBkcGFZeWJ4K0ZVTTh1OVlSQmw1bDBhWmdoS0l2UmFmb1BNU2RMYTlTcndM?=
 =?utf-8?B?azBkSmVGSFdWMGxzcUx4QnBnL0NtUnlHdWVmZThVVkZ4SHBHQlppUmQ1cGFx?=
 =?utf-8?B?UFd0TDF3RmZKbndFbW9ad0ZUMHc4WXJGL2IzS1J4OVMwaGtqdGUydjVwbTBC?=
 =?utf-8?B?ZnBHcm03ajB3R3V6czgwLzB5UlFPU2xNZEk5NVA3VTBVOHJXYk1OMTZoQmI4?=
 =?utf-8?B?RHFaQm9yVHREOXBwUVIwb2JlWmRaY2ZXdHJPU0xvS05iYm5aR1BuUGVNcVhl?=
 =?utf-8?B?NFpvSEQ3ek9BWVFkUjFIeEVqUkN0YmhKOGRrKytzQkxkRXdNYjZMeUcxSWJG?=
 =?utf-8?B?OW95T05nbFhQWjNXWkJidjN1L1pRaitpb251VGtVNjlhVTZkRkxEZTVnTmNV?=
 =?utf-8?B?aGlUdk5obi9jS3VVU2xmZExTWENKbHdsb1NxQjFFNUM1dHQ1d0MwNjdndVVy?=
 =?utf-8?B?aTVIMC9CYTY0Mko0YXc1a1VvRXpuRVBrdXhWZjBiakd5OWRlNWpvK0dKT0J0?=
 =?utf-8?B?VUptNlhzT0xVMUdlV0VEbmttejhBZ3REQ2pFTTFueXhydklrT0dGaENGTEl0?=
 =?utf-8?B?NmY2NVJUSG9LUThIZFBTN3pEczVwRWZBL0xXaWcwcmFIem9lRStGaXdvMDJz?=
 =?utf-8?B?cFN0cU1PZCtmWE9VQUVHWlV0anU0OUtwVnlqbFV2VXd0UUtjTkd6UnNuYXBa?=
 =?utf-8?B?a1I1NU5VNHZ6S2lqcVlhQUJQclBqZzBNd0NiS3YwRFNmWnIrRGZMMkF0Z0xE?=
 =?utf-8?B?TWdnQnY5akpIbmh4U2orNW0yNlQxMWRENExOdGd6REx2QUN5QjNaRGVqbWpz?=
 =?utf-8?B?a2FEV1U2YTJkQU0wNVBPdnZwUVZJR3RkZ1ZaMkswOVBGOFR6ZzRaNVRYZzY1?=
 =?utf-8?B?TGRrVHdYMmFmR2lZZVFQd1Y1YXpxNm9IZjgvNmZjdGpQNHJiMnpKOC91NWo0?=
 =?utf-8?B?aGd5ZlBsY043cnlNMEFwekRCRDdOTkNQa3h0NmNDZDJZL1ZPWE9BbHRZUkJV?=
 =?utf-8?B?S0VoUEVxMnJselZBSU5MQTdQVHk5cHh4TGJtVmdaTnBsQUZxUGxmSU16VWhL?=
 =?utf-8?B?QnVWS2p5bUd1LzFuTDV0NTMraTZ2RFFIbUhGVWdZd3F3NzNsRERzY29GQ2ZD?=
 =?utf-8?B?eGdBSjFWVHhWVmNiZXZzRjFaWXBtQ0d5Yk9nUk1WU21iYUlTMHJobUpHd205?=
 =?utf-8?B?cjRvZ0NaUEVWbDVaZWY1dmp0d1paQ1AySmNyNVE3WnJka3ZWUS8zRHowYWFz?=
 =?utf-8?B?QVFpeVdMNFNZcm8vaWwwMzRweTYwZThLZXJpaWFJRFdaa3F0Nk1RVWQ2d2dF?=
 =?utf-8?B?TGZvQjVQWFJ2MklodCtmOGdjUDBuaGc4R3FpUXRBUkYvMHZteU9NOERqbjQz?=
 =?utf-8?B?dUNhWXk1dm5vcnRVNDlCTVhRU21CcHR6Nmlqc1NRVEZyWVpPVHBaRUZkclQv?=
 =?utf-8?B?N3lWZ1BTR05hZlBqSU1sVUZPU3ZLR0RackZyMURiUCtpbWMrd3dpdEpEZ0tX?=
 =?utf-8?B?TzNZc0p0bzdubTNJaXM0Z08ra3hTcVg1VlNxRUxsTnoxRURHaHA0cnYyOHNn?=
 =?utf-8?B?YXNlYTJZcE5PaWR3ak5KTldPak1CTDhwZnpZMEU5NExtRGJPTFI2VVp4eWt1?=
 =?utf-8?B?em1CL25qVXRQeHc4bDVUeEJMQjg3c0NUdmtrMDdsYi9RZ3lhR1F3T1praWJp?=
 =?utf-8?B?RElIRHZCcUNDUzZVU25KcG1lVWQzVHVFeGFJeEprODBZODJ6bmwzVmxNQWdN?=
 =?utf-8?B?T0dSd0pmb2lvL3cwN0tvYW53aUNFOERoUjl4OVdkenc5ak9wQnJWL0RGUmZ2?=
 =?utf-8?B?QlRLa3VQSXpHZ051UDdLT0JBMGYvUnFRVjdjYVljOVF6VGtIVnlCN2Jqajkr?=
 =?utf-8?B?cVdyb3d6MVo0TklxRWErVzdIZjNhYnRKNnM5U21kdUZVdVJRbDVoUDBubExU?=
 =?utf-8?B?aTdJcmNldEM1bTkvVmxSRG5HclU3NnZTbVVGdittOWI4WENSazRpVjRtRjZP?=
 =?utf-8?Q?E2XsEK38joOiuMtE=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: de4d9d80-17ac-47c3-683b-08de622dc219
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 07:36:20.5131 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e2QOLc64uAlnHdI2tMGm4PzGFIxhY0RfntJPBS0hM1rvL/stcoVxK0b+Ahfjf7QtFs1+mw6N9IxrmSAnuaUNfaPGpH7f+unuqS1Wq5PGFn4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6028
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 67281C935F
X-Rspamd-Action: no action

Hi Janusz,

> Hi Krzysztof,
> 
> Thanks for looking at this.
> 
> On Friday, 30 January 2026 13:53:02 CET Krzysztof Karas wrote:
> > Hi Janusz,
> > 
> > the code looks good, I am wondering if "fake" is appropriate
> > word for the descriptions below:
> > in a way the values are correct, but wrongly reported - they
> > belong to pci x1 bridge of the GPU. Maybe adding a short
> > sentence that the values reported always belong to pci x1
> > instead of the fastest active bridge would complete the message?
> > What do you think?
> 
> If the GPU device was a real PCIe endpoint with link bandwith limited to 
> 2.5GT/s, 1x (max_link_speed, max_link_width), as reported, then that would be 
> the actually possible maximum bandwidth of the GPU to CPU link, I believe, not 
> that of the bridge upstream port.  Since Intel declares the link bandwidth of 
> the bridge upstream port should be referred to as correctly describing the 
> actual GPU to CPU link bandwidth then my understanding is that the values 
> reported by the GPU should be disregarded as not true (then fake).  I'm open 
> to calling those values with another word but fake, as long as that word 
> reflects their non truth status.
Very well. I am convinced:

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
