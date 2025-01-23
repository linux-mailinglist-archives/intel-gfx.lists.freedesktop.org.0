Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D928A1A5DB
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 15:38:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF6FD10E824;
	Thu, 23 Jan 2025 14:38:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GyPSB6HV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E2BB10E824
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2025 14:38:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737643133; x=1769179133;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=zG4SYXgbky1BuTB5CNWwX7QWLmu0ATfM3dsZGK1abYU=;
 b=GyPSB6HVJhPSxgfGfGuc6R8ChBvkXhapZIVsMuiS5N3FNJwTVjnesgDC
 SsYAIOKdLcoBAH4/JxRK1np4OIfgXHDVahkcol5NAVdvX1DAVZHRK8bWF
 TKwXNXFYlw0Eq/T3ri+6Qp+UEHjTbv2UfBagWUKDhFpT3INhfhDhw5dDP
 kUjwy0ILuTrj0Hjmai2Y1ZZTzaqbi2NFzqgzMTYeCYRWi/jMxHR1MgyS9
 prsYfgTeulNH55jyUIORzUjZbN0q/1j1d5g4TU1XXdSFKsLlaK7NDWXKF
 L4IzzPiUy70vIrhSi5huQ8cPG5BgbLFTXDz8DLld02sstwAByvqaTwERp A==;
X-CSE-ConnectionGUID: Zgg3/arhRuiF8j9d1Vbupw==
X-CSE-MsgGUID: 3t4AOPvpSY2ATHzbd5kZ8A==
X-IronPort-AV: E=McAfee;i="6700,10204,11324"; a="48641667"
X-IronPort-AV: E=Sophos;i="6.13,228,1732608000"; d="scan'208";a="48641667"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2025 06:38:53 -0800
X-CSE-ConnectionGUID: +bBd8E0ESkmQiP5aqTZ0nw==
X-CSE-MsgGUID: 7BGzYDaBS3mamA+Ew21Q/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107900363"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 23 Jan 2025 06:38:50 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 23 Jan 2025 06:38:47 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 23 Jan 2025 06:38:47 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.48) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 23 Jan 2025 06:38:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZvuIDy9HdmFz1kKuOL4qLQ3y49inudkcH1WTr7hePqKW9recwS5J3ukpvCR8BdFdFOd9iQE6iwd+1tM0tn+joqXo1N1vLV7MnSgE1dpNwer4jSwQQjFuzOyZ8B6AUMqatcMO58Dpq7vdgGAwMZkF0/QKJBc0T3rgn3hxwqbrEMUuF4zWxExaNG6VCEFLepnkNf/dj6BZjWzgpq5toLQCWhNZBi5Yo9AmFHvgLndG/VbZeZg8O+I2MLkIHfyECohEiIB1rNpWwnBQUobrvVm+n3CEU/VgU7I2SHgTSBxc5MIpRCxE3jeb+vxegCD1El4pQd04nuKckzoKiGluq2t5YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hqf91aF6e/jvnY3jqJiYjcKS1xmO4oqezTIvQwQu3Cw=;
 b=kAnKUUuwczR00xqcxHIv+8+d0QFwvDThT2oLvb/t/DyyRk8eJlh1EsP7uGvRdZcCWhlwhNmQl0P5P3Yfk3lpiCLdC13TyaDBK77+m5MnCEd6y27MUYUa4JFTAP7S6a8jYi4hLKhrO1UNz+cXP0L0yr1zSKX2CFndeuxNPW738WrBM4icVFnIFzCm6oBNE7Lz4qUIKzTiLR/GyWo9XXWQ0JJ5KQ5HXCqAewu0pq5fFkfNo39JDhgyowraqcU/0iVr11X9enCqBYMDF2szqU4bg2gDNFdsh+iKw25nzM6/omTueqxYEHqJbOIivUP21VjyAkd4iSzRN2lBei5OUHSRHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SJ2PR11MB8422.namprd11.prod.outlook.com (2603:10b6:a03:542::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.18; Thu, 23 Jan
 2025 14:38:45 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%6]) with mapi id 15.20.8356.020; Thu, 23 Jan 2025
 14:38:45 +0000
Date: Thu, 23 Jan 2025 14:38:40 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <chris.p.wilson@intel.com>, <krzysztof.niemiec@intel.com>,
 <krzysztof.karas@intel.com>
Subject: [PATCH v2] Revert "drm/i915/gt: Log reason for setting TAINT_WARN at
 reset"
Message-ID: <pynwwza2xyvicokflxc6lduwwrzwoihihaan54ago3m2xzzagu@qva2ue4tydie>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: VI1PR0502CA0032.eurprd05.prod.outlook.com
 (2603:10a6:803:1::45) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SJ2PR11MB8422:EE_
X-MS-Office365-Filtering-Correlation-Id: cefe3af0-a346-4966-ffa4-08dd3bbba3f6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a1FMSHcxRzVMOE5HQU9WT3NrblVncUNqSERpNWNrYWpORkxJNkJiMkZiZDd5?=
 =?utf-8?B?WFlHYUx0L2t2YmEvVTNTSGpsNTY4NFQ3ZEVERk8ybFk2UFhCcm9IbXJSd2E3?=
 =?utf-8?B?KzcwMllXYlpQWDJnZ3VTWjRUYnZoTTBUTFlQc0ZYbjdrNzR2K1QxK3lpVlhP?=
 =?utf-8?B?VDJGZDI2bzN1ZmVvNkgxS2pqWkhhVGs4WktrMHE2czg4TlUrNEhVRTI3dHVo?=
 =?utf-8?B?YldobTBVOVdIOG05TkdSVVpvS1lRdU81Z004S0JwM3VJOU5tcjRkaHUvaVlK?=
 =?utf-8?B?WFMwSHhoQmtGb1ZYQlA0YU9WM0psbGpIQ2dNNGhWbXJvU0tIQjFMalZYVlZQ?=
 =?utf-8?B?ZzZTQittZGtvclRxbk45b1V2NUhIL2lMd21LYWZjU0tCV2tWMnlUdTM3cWtz?=
 =?utf-8?B?QWtHbUIyVllFd2tTU0szV0VMeWo4RW5NR3g0cVJWcVBqdWxCZGR2cnFHWExI?=
 =?utf-8?B?cGQ4MTArY3dUc3IrN2ZnY21vUjkzNzVrWjh4TUNHQlpHblpPcjdOY3FDZ2o1?=
 =?utf-8?B?WVc3U3QrOTIwK2QwSytMOXl3ZzZOY09YRy9pMUdRbnNnZVBWc0QxMkhUY3F2?=
 =?utf-8?B?c3Q4TVkyWTF1VFhwTGdvRC85V1hzMGd1WGhjTUc1S0xDZEt0WHI0cG9YdVhK?=
 =?utf-8?B?cDlTY01xVk9od1JIeDV1Y1pWcTFKWlBubVlUVytNcDI0cXk5Vy8yTjlaK3lB?=
 =?utf-8?B?c1ZuTC9YWk1FYXFiOEw0RmtPdEN3eUkxY0RQTjBVWUtLMHZsNUxRUmIyYTZr?=
 =?utf-8?B?MHVZR2JHdUNvTldDL3I2WlFKUWx6YUpBL0Y5dHJQRTFIS3drbEVwTVZMRXFQ?=
 =?utf-8?B?aEkyMHMzUGgvaGZScGplQ01wS2dUbnY1VisrYU52N29kbXFRUFF1Tlh3djdw?=
 =?utf-8?B?R204K0U3YmJiOG1LK3MwWHcxTjI2R1FZZHVOLzVERTFITkNvL0FzNUp2K3E0?=
 =?utf-8?B?V2Q3NXJqUk9ZQ2V4MEkwQ0x2ZGVKeEdtZ2U3ckdzSzNMc25WSTJPcVk1aWQz?=
 =?utf-8?B?TXlRM3JpQ2g4K254UXFldzhjYm9XenZGTVlRejNQNitnSVZoTVVhWXVVako5?=
 =?utf-8?B?NUxMVDBveFJuUW9RR3FrSlkxNU0yUWNNdzN2Nm8yZE9aU3VDcXpKeWZNVTFS?=
 =?utf-8?B?VEtuSjdvTmhBRTA1VW05cFhqcGxTZXBLenFjQzdzTkhYMVJ2MElPQXd5UGZn?=
 =?utf-8?B?NlFWcFMzaHBMNGZCYzl0dm55Yk1LV1czRG0xcGlJMW9FS0EvSDJXQ2xtbVV4?=
 =?utf-8?B?U1RDSGE2anBJV2p5b2xhazVIc0wwa28zZ1dUUzU1RUJweEZmYTJZQkpWK21Q?=
 =?utf-8?B?dWhMeEZJcytLMWVXV0diYm1LQUl4T0dZSUxpZE5wUm83ZFNDVnBMOFhBSUx0?=
 =?utf-8?B?Vkk4QlNoMzdCeU91YlYvVXlKUjBCdFZnakFPc202M0FWYWZDNkdoVjZidTd1?=
 =?utf-8?B?SEZqWldTaXVjdW9wY1ZZMXd4Zzc5NlpUalhOaldLNi9OSlI2RTB2cnVnang4?=
 =?utf-8?B?TnlIc0Z0dHRKVWF6TUs0MTBZQWtId1dTellZU3lBTllzUm5HTjhyQ3E5NDQv?=
 =?utf-8?B?RTVMOWJjcnJ3elg1TWVZZGlXZGNCakc0bnZ0VzBDTHV3U0djK3J3YjZqVFhU?=
 =?utf-8?B?cVo2eXpzSmN5amcrMFoxT3FScVB4aldWN3lzVFhyQ2dmK2VMMmhwMHdkRTBN?=
 =?utf-8?B?d3RTY1luQ045QUJhYytxWlVFeU5uaWc4YW95cUd2Y0NDRW9CVlB2R2VTaGVS?=
 =?utf-8?B?WEMrQnAxK3kyM0J0MHoyRVZkdmpNTSs2dUZxdEJuS3l1RXZMKzY1K0pjS0VN?=
 =?utf-8?B?a3g0MVY1MG8wUExlaWJzZ1cvQ3c0aWN1czQwMXIveW53YWJoNm9pMDIvNHI5?=
 =?utf-8?Q?AWbGn31jIctXk?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bGpid0xiTjlTMUJ5U0UwSlZNQ09FU1BzYlZQVk93V254Z2IrOEJVTEhRMUhJ?=
 =?utf-8?B?SzRtZDRiQkk2cDZLUUUwR01JWUZsVXdERjB0bllTZGVzRzdoR0dnTERvb1Zm?=
 =?utf-8?B?YXlFWTAzNkVxcDREQytwZGFINjRzNnZqMk52VzIrVTlqS1BUR2ozUVhxODQv?=
 =?utf-8?B?K1l2clJ6ZmVhL2lIbC8rWk9IQjNKTFh5Z3M4NzQxZDE5MnF4SWszZXVvUlFI?=
 =?utf-8?B?MTdNM0RwY1VBRk9GZzRYTkJCRWM0VXJqWXRhb1h4RWJhS2o0T0R5ZTF2bVJw?=
 =?utf-8?B?YWtPTFRvRllnYUZIMVltYzU0QWNiMzh1ZkcrY1BjOTlxeTVKK3puTzRzR216?=
 =?utf-8?B?aGZjWlV3VlFqN1poU2l5NnR1T3RtZmpZTW9YT0tFUkF4VE5najVNcGdoTmY5?=
 =?utf-8?B?bnQ5NzlBNE1IY1JJQjljWVM1cFhucWcxS1NzOVFxazQ3RG1CTUtya3lJRzJK?=
 =?utf-8?B?Qnl1dWN2NitMUkhQOTd5R3Y4aU0yc3cxVHRjQXpCWGJycVUyekRxNnZKRE9O?=
 =?utf-8?B?MC9HZ0h2KzZhUEVLRmFiUzRCQzhOUElyYTVCNG1WOU8wVHMxQ1FHQkpWbXoz?=
 =?utf-8?B?c20wT0VzYnBMU0s4QXRmdExZVG9WYVpYVkY5TXU1bmpISHJpUWphVkpFVXFk?=
 =?utf-8?B?SE9RWXNRYU1qei9PaW9qY016dmliRkNkblBQcy9mZndOZXRPM3FqclNlNFVB?=
 =?utf-8?B?RlhKaHNva2l6SXdqbWNqVWdLM1IrRzF0enJURFQ5LzA1N3pHbEcwWUJFY2xs?=
 =?utf-8?B?SXJXYXdhQTByYzQ3V0t1bFUzNUdXYlRGY1NIZFBvSURnWG5vQm9EQlhUdTNj?=
 =?utf-8?B?VFVNNmFsWHZ4NVhSMGQ4ZnMvRTBmTSs0bVBmdmRjeXB0TXVxa1FxUG42eFFi?=
 =?utf-8?B?OG5sMXlsdU1vVUZ1NkV0aTZoQWNqRXNZT2xoWU10T0FocDhwQUFpYlJHa0ds?=
 =?utf-8?B?Sm80OWFiYk02QmtSdnhsODVNdnZML3Y5MEJhemJFZ2cxSUVBYTNqMStRV1JF?=
 =?utf-8?B?YURDSytGdlNiN0lwL1VzbjBScEphSW5Qb3hFY0xJcUIvdXJqQkVoclR0cERH?=
 =?utf-8?B?R3FrOEVJblpyTE1CeG4zSi9oaDRLOEI0UnFlTnZ3SG1lVlo2RjRISm9YTFEv?=
 =?utf-8?B?b0JtS2JDa1V4YloveFRBV3dBMEh1elRsQXRBd01XcVA2L0hoNURjS3VjSFhG?=
 =?utf-8?B?d3hINzBraUYyZU9QNDV3ZjEvRXl4bmg3ZlRtdEF6YXhMUFpnSkJRWUd3b005?=
 =?utf-8?B?b29yUTQ0ZFpsNklXMEdaTWQxdG9OOHA3cW9JK3pVQ1o3RUdLUDV1RFlGVFh5?=
 =?utf-8?B?eFB2RG42QlJiQnU2NXZRVGdZWVd1TmplQ1pGVHVhRnJ1bmp2WnpvNjFyQWJV?=
 =?utf-8?B?UG0rVlNRZ3dCVmZ4L2EzNUp1c0V5dTF6dzVUU0xkS3AzWWQwNXdERU5RaytM?=
 =?utf-8?B?cmRHcm9CbTFOUUZoZFV6SjlQMUZ5bGtHRDd2dytaaVcwL2l4YjUvbUllM2Uy?=
 =?utf-8?B?QWxORmpuUkNTZGNHdVZvQ2ZYRnBSRHViT094TFJ4TU1kVWhpenB5SlkrUWl6?=
 =?utf-8?B?amJrdmljV1cyMWN1SkRjNzhUcEhNL0k4TEZNUTVkSW9Zd3JIS1ZRMm5ySllU?=
 =?utf-8?B?d3UxQnhhZ09XeE1yL2hxT0dYRFkwZk1wcVdaVVAvbDhxTnVuYjhvLytsNnBI?=
 =?utf-8?B?UGtCbFFUUzNVbkEyaG1zcXpRUHpaYmttNmh5b2pVaXBTYXlTT3ZxVkZhOFZi?=
 =?utf-8?B?bzVlNllKeDRodlRpeHNiZ2JlQ016SDZ3ckVLQTNndkRXSExId1g1WWxhY2hk?=
 =?utf-8?B?MW9ydUR6QXZLbWNydm5xQ3VpdlNKbCtidVVpdjlKTjVBTUFvR0VvcFRhU3FY?=
 =?utf-8?B?T3h4OGpUTzBMNjgrRXJsKzFxQkhVN1ZHeEptbXNoUXBTT3dFNi9hVStpdVlx?=
 =?utf-8?B?NGxnUHViWXQrYVVpSTBFL0tYenA0Uk1tRCtjRmxzSXg3OFdBSWhhekczd2Rz?=
 =?utf-8?B?YXNsVllpRE1wN3JEeFhVMURUSmN2L1RRZGFzcUg1RHhIVytFYi9YOFRHbzE3?=
 =?utf-8?B?UEs1MDBoNXdCZGZ3RlNpYzZGS05PeFBOeEdkZi9GclYybGxxR0F1VjdJQ04r?=
 =?utf-8?B?NnZHTEhMclM4WWROdWZlSUg1MnVZcllhcVVCY3hucm5Zcm5xczJhdzdiekhY?=
 =?utf-8?Q?5dQ0sfsGoC3iXjZLCNexR8M=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cefe3af0-a346-4966-ffa4-08dd3bbba3f6
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 14:38:45.3516 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l4ON/wQgyKrMBdMMJtC5FdpvS0hO2VlvrFfe2qYadOPPRA7Sk3vbdLEohUf/+bBtfyaws0i7xluxaoYGENaigDWojjA1YZjpQI0k7upU5zw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8422
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

This reverts commit 835443da6f50d9516b58bba5a4fdf9e563d961c7.

- turns out that logging with gt_err() causes CI to pick up an error
  even in intentional error injects,
- the unintentional (real) errors are already reported correctly by CI,
- a gt wedge is already being logged without this patch, so we should
  revert the new message instead of, for example, relaxing the loglevel.

V2: rephrase commit message

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_reset.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
index aae5a081cb53..c2fe3fc78e76 100644
--- a/drivers/gpu/drm/i915/gt/intel_reset.c
+++ b/drivers/gpu/drm/i915/gt/intel_reset.c
@@ -1113,7 +1113,6 @@ static bool __intel_gt_unset_wedged(struct intel_gt *gt)
 		 * Warn CI about the unrecoverable wedged condition.
 		 * Time for a reboot.
 		 */
-		gt_err(gt, "Unrecoverable wedged condition\n");
 		add_taint_for_CI(gt->i915, TAINT_WARN);
 		return false;
 	}
@@ -1265,10 +1264,8 @@ void intel_gt_reset(struct intel_gt *gt,
 	}
 
 	ret = resume(gt);
-	if (ret) {
-		gt_err(gt, "Failed to resume (%d)\n", ret);
+	if (ret)
 		goto taint;
-	}
 
 finish:
 	reset_finish(gt, awake);
@@ -1611,7 +1608,6 @@ void intel_gt_set_wedged_on_init(struct intel_gt *gt)
 	set_bit(I915_WEDGED_ON_INIT, &gt->reset.flags);
 
 	/* Wedged on init is non-recoverable */
-	gt_err(gt, "Non-recoverable wedged on init\n");
 	add_taint_for_CI(gt->i915, TAINT_WARN);
 }
 
-- 
2.34.1

