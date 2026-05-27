Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPJPFbh/Fmq7mwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 07:23:04 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B152D5DF676
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 07:23:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5009910E240;
	Wed, 27 May 2026 05:23:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="musncNQQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B84C010E243;
 Wed, 27 May 2026 05:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779859379; x=1811395379;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=94XEhnBLvPrevmSoW4Z6VeuCmKRE1PGJXxak+8jSRlI=;
 b=musncNQQHqg4rdGO21sNlzLU+f9H8uFRTdRv9NZjSdE9He4xliCzd0pg
 pKpBPpquusoDaLadAseX6G0PzxOVMZ5MXb0bS7HRtPZgB2CLSbcAU4qRk
 +lwMJ3rXAzLOs6mDZ368+mxKqGKveJ/ogRbFVLU5v7Al4T2CQSPteChky
 rkJpm22JxeF59tnsOYAfEjLbKRajve1uAfRJ2f++WgxfzRn65HMGI3g1g
 dN+dZBhts6ziez+E5F7P30QgtbRBIo7LciJvgBYREYtFAX9Xhtpzko4X7
 ADp69TLdkSogo1DS0P8+uUzPKM00lmOzn5A5bfxCn5Sl3EKIoAqkPtn8J A==;
X-CSE-ConnectionGUID: nJfA5EyCS7CKqu8y806qEA==
X-CSE-MsgGUID: 6nd/Ju1URHevpsHjlTSz+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11798"; a="90986271"
X-IronPort-AV: E=Sophos;i="6.24,170,1774335600"; d="scan'208";a="90986271"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 22:22:59 -0700
X-CSE-ConnectionGUID: HnZDFHZRRJWuWM7B78NCRw==
X-CSE-MsgGUID: 46CtSITRSUeML6Un9rZ+KA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,170,1774335600"; d="scan'208";a="235767365"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 22:22:59 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 26 May 2026 22:22:58 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 26 May 2026 22:22:57 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.7) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 26 May 2026 22:22:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tXsXzG5+6rMCRzLRrMoHoYljq7wUHzS46bl3XXJw4m8RrElmznEzFNuhbkOgFYDsiUKXAZBeiR1M/ZFNW30oZ1HCn3Wkq5z0v6CSd2FGoKERR8z/UrHuuHbIzUbBvuFyLT8MdWL+YmjehCzl7cIJfPSDdr+o60QNklEL9PV60Dw2me8U8zNZxMhWxg5ANsfwra73qlIxmzlm3Rk7+6r0Q62U736QCw+NLzc9SaRnISMOm/5uJggEeY+RXksEeES4gdjnfFeMZucpx86djjvAJBjR4qL5Ls7Ss5uoKvTYWnAGFOY1WaOruL6cLuGlQawTRG7fR2R7hht5XYcB16nw6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BPkKUGzO/27FueMpBRpMGGuQxHY2xq2Af4GY3XZjVSw=;
 b=vwzM/dfcGiQi6dCtHFwT1Rk/Aeir5DWM8Xb9NCYbDcR9i7mBQ/JO8NgflEHHbWBSgeLocEBD+DR/FXFmy1o+00NT1zb4NVRZgEPP5LHeXwUZMneEHgAT8aRLKf333iGHnYzTPWN9SgfaXizgWjdPKw1dWCKJkrrNVUzNC5YfHuw0C7SnUw8CiMLH2FDUKrWtHIwj7RGdC+6cAb4gyYi/hZsCt24U+6eu+znRxT3xc2RXXgZvaANOOpmpgu6O6k2teu8xcQ+RqCpAO5duYl4r06p508hv+DxWouaJdoAo2hO80gJPeSc3LOQ4wgEYXHqvrERaxsFtb+zPCJGdEbEF2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by PH0PR11MB7635.namprd11.prod.outlook.com (2603:10b6:510:28e::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.20; Wed, 27 May
 2026 05:22:55 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.21.0048.016; Wed, 27 May 2026
 05:22:55 +0000
Message-ID: <9b290b22-97a9-4ffc-9823-67efba98c70f@intel.com>
Date: Wed, 27 May 2026 10:52:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] drm/i915/color: Fix Pre-CSC degamma LUT bounds
Content-Language: en-GB
To: Sean Paul <sean@poorly.run>, <intel-gfx@lists.freedesktop.org>
CC: <jani.nikula@linux.intel.com>, Sean Paul <seanpaul@google.com>, "Rodrigo
 Vivi" <rodrigo.vivi@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 <intel-xe@lists.freedesktop.org>, <dri-devel@lists.freedesktop.org>
References: <6d8e36e2aea806f9973b3c501aad4523f7316d6a@intel.com>
 <20260521194018.2445206-1-sean@poorly.run>
 <20260521194018.2445206-2-sean@poorly.run>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260521194018.2445206-2-sean@poorly.run>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0087.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a8::11) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|PH0PR11MB7635:EE_
X-MS-Office365-Filtering-Correlation-Id: d297a7e4-9713-4a60-4020-08debbb001ad
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|4143699003|11063799006|56012099006|18002099003|22082099003;
X-Microsoft-Antispam-Message-Info: ujpJAnty3CYFC2JvGYzGO29qcqqExFTL2VKuODpf4mbz0n15R5V38hSjDtJ5rNZ74uK9q5456INcBPp0bZ5gkvljLS6wnR5bmWwH+w7IWUo/J4B/ahpCrCoeBWQYtlnwjyKnb86uMrsy3SCZTUFBGDEYJO+3NGGHSTvBPsM+AtD7Jw/YFaU+PA7NKSTzlbQBQmxh5tmNIZcmM6MSXg1uy3ArcZCLlRUvtvr30x56i3MydnzogtvCM8mAHVN4GHCsyQzC8vROei3jgKV/I7IJ8471UBMVFshFHovlLvwnFxdSoXW2sx4zLmq2WoiwsGA/1W9cw58/VttujAzzTZgsKk0QLYg5TDNsyQtp4vSInI5tGbG1nKH3KI6SwzQ08iqqQW5BUJB4/6hpQWkIPrnzTGGrUo6XIqDIhAnWAJ5A62TMBAjJ/axLlJhCWX8jMmhUDmHYSJNaDnyTx0TBbd/BieR7E1NKb5aL5eoiHZ5qRtQRicLh7eFkKeH5LXhK8MruuCuT+j5v4msOf1kgYUvttxos9NkOUBZSryVi1SGq2V6y/EOX5eLu6B99GcPDnh5U5Yd0xY4Gh+B4BAFebd6jfzNfTaAK+lvKCbXXCuwkhpWN8DIFeX314UOBpNHeGhEgDFRf/ecUP/ynLvv1fk4vrGdVK+U83H0QugeTKkcD0qFaIB8kOy6CKGCaH5m9GD0nN8lB4Q4HxSL7rK8PYBJ6mA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(4143699003)(11063799006)(56012099006)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SHRnRmhjQUhuc3QzUFlTYmpwZVZVTGp3ZlZFTDEzalBkN0dKaXJYWmJleGV2?=
 =?utf-8?B?cWFlb2o0ck10VEtoUDNtTmhaZEpBekZFTE44YmM4N3MzRFFTODgwVityakVn?=
 =?utf-8?B?Q09MbHpHN2dMc2FCNHdneGNieEVtcjJMbHNscUVQWFpmQXhyZE9XeEVRYmpS?=
 =?utf-8?B?VS9JNkxnaEVESEtYYWJkQmg5SnR6RTFHQzVXcmE1aVhBVnEyajVoUlhiVzY0?=
 =?utf-8?B?aWI5b2hxREFqbHBPN2dTeEpvNDdLN1kwa251OVVWN1phTFN5TFJCSjRkRGY1?=
 =?utf-8?B?ME56OW9Ja0IzaTE5aksvYVYycUkwclVmNGU0eVpRbXFMcWdsMHlLclJmUjB3?=
 =?utf-8?B?L1NVeStjNG53RDI5NW9BMFJuRXRyekxacW1ic3dPSnlONjVOdldldE1zbi96?=
 =?utf-8?B?LzNlK1o5L2NtKzBNZWtWZWJGUWhRZDNGclIrQndMd2crSzFTOVVoUGMvUGZT?=
 =?utf-8?B?N2tNV2w3ZTl5Smt3UC9KSTFWMU1qYlo4VXpPK09ZOHdNZHE5QUdMNnBFR3Ur?=
 =?utf-8?B?TjJuUUJiSmJtRWlNamZ3aHpBajBKU2VnSEEyZzRjemkzWFhoeVFxVGdKTEtW?=
 =?utf-8?B?dHVCRzBCUG9nVGtLYmpVeE04WWF5NWZPbGdHMUtvdG9PMVhNNVJqOGdKemV6?=
 =?utf-8?B?N0ZmblJtdW5qcXN3VC90NmtTS2F2RmtLV2hTTW9mcFNqam9idDR6VEwzdzJt?=
 =?utf-8?B?VFdJYmNsVUJBR2grT3N1ZVBrcGxlMWtCbEg3VWFMaGcrRGlsUU5zV3ZKT3JH?=
 =?utf-8?B?amt3bENWa2VuMkgvMWNBUHZ4NFovSTRxYUFRRlB3NWZ0YjMyMzdOSXAvWnRL?=
 =?utf-8?B?a0dDa2Iwd042Q3RJd3dpOENPbzVYZGhxTlB0SVRQNHQrMkNaSE5vNDd5bFY4?=
 =?utf-8?B?Zm1IVmpXbS9LQnhmMFBkelh5bXI4MTl6TDYxYVJOZDhTTkhzaVViWS9JdmRn?=
 =?utf-8?B?cW1DQU5NMVlWcW16Q0QveVFwWjBVNmFQQjYxY0lRYnlaV2lvOUZyeTdiZ3U4?=
 =?utf-8?B?UUFjM05sekhqWjhIVWtEMElhbkhuTVlEd2kwL0pTTURUcEdMNVFVV2dYT2t1?=
 =?utf-8?B?VkxNQkJ0bngrbzZHRm1nWGlGeVUrdTRWcXhzZEJDSTNzdCtkK1U1Rk1Pd3dF?=
 =?utf-8?B?TGdlQ3N4MzBYdThBa3lGOVhJRUhhc3U4bm9kTTg5VnZWek1nYlJBbE9WbG5X?=
 =?utf-8?B?R0VIczkveUlrVTZoNFpvUGpvMGVWTGxUc2hYb0dadzQ3eUs3ZkdSMFRNcjBj?=
 =?utf-8?B?S3NMQzJOZFZqQmRtZGpkeTluV2NiV2IzdW9jVWVMNXI1MGlna09vQlRDM1dq?=
 =?utf-8?B?ZWtvckFXRHZRdGh0eEUxeGFUMTduSnBuc0pjUEVNZk1IV2lzZnk1SDEyT1Zs?=
 =?utf-8?B?U2hmS3d2b2lNS1AySzRKU095Y1BQV3lyc1FjYi9qTUhCc05sRDZYUmRxMkov?=
 =?utf-8?B?USsrUTcrVUZnWG9GS2xjazA1Q3JIQkZKNy8zT1FxMGNsdUtZTzJYeDVwSSty?=
 =?utf-8?B?ZU5ubG01VGdxb2I4TlFocWFnenV4d0lKblpvcFFFNlJzWGRBVzdkVG5KMTZO?=
 =?utf-8?B?SVI4M0JJVGxTcExnSXBUb0wrN2tFayt4dnJXeVZIY0NEZGY2NVJGYnFKbnJz?=
 =?utf-8?B?MUpXanprcDhab2dzNkdraW80Nkx4bWlkSnB3QVR6dTA1UVBlRGk1bnBkQU1E?=
 =?utf-8?B?SDZSa05MeWFwQUJHVUVWaWtpdWlIc0ZQQlBBSjdmNURJRUROdFp3TVpMbURx?=
 =?utf-8?B?NmFZQThhL0F2Z3IzOHluOWNIOWtLdmxXeGZyMkdzTWdGUEZZclNaYTkyYjFK?=
 =?utf-8?B?WSt5eURnZ1BZZVdKSUphaW0rdGxmOHJ2dVNkWDdwR2tPcEI4V0V0S1hpRmpy?=
 =?utf-8?B?VFhGRExyU0lJdXVIQk9JUDYyTDJnYmZVTTlWbjY5RE5XS3gxeW45aWpESnI3?=
 =?utf-8?B?T3RNcEg0anlZaW1RbllVQUl6MW0rRFU0MW4rS0hLeHBlUXdGdUl0NEUrNXpM?=
 =?utf-8?B?Y1ZucGF4ODVOWUl5dzlLSFJLUFgyM1FxTGxlK2o4MW9TRUN5ZlVPMnU4MWlB?=
 =?utf-8?B?R0M1TlFjMXJKTU5CKzJPWkx1cU9oQnBjOHhhbENZRUN6RzBlLzl0bUFvaG1n?=
 =?utf-8?B?L2hSekJjRFFac3p1OTdPdzJVZmFLOXhlZkx6cWRmUlBUdGxtbjI0cGVycHV1?=
 =?utf-8?B?QmNiTE9xa3hrdExOY2JqVVVsRzRIZjlaanR2VWh5eHFiQ0VJMVR1Z3JRSnI3?=
 =?utf-8?B?N2ZabFAxdzJMNG9WQUJDcWh6aE1UdlVNVHZOdjR0V29zU1FDMGRCT0plV1Zu?=
 =?utf-8?B?cTVsaUNvR1lsMU0zN1Z1ODBzNkQwSFplYnZYYkFHalhzMWVnOTF5d1FjZmdU?=
 =?utf-8?Q?v5i52W6SoBtpOedQ=3D?=
X-Exchange-RoutingPolicyChecked: lZlPOjOnuqQgSzaQ76f3My99NgGWBJfWDVr+pBd4ECyGmHH0LdlPnAEetr9UUU2aKxnFo7wFiRoEg0W1IP4IlUH4OjVGukCLVYQ7QdpzIQkON9YsKgQ2EZwyn2HkQ21t1crHpoI8/6Tl2vDFThv7uEu4mzg5nL6cEWdYNliBQfz55xBkVQe/3lNk0xBeDoNeaZnS3zaYX/83B/axzfL2ni/Dtt7QLgz2F3VONeCq0gLCEueVbThWO7GSPqJqCINZbFYAof5MIvvA25d6KIq3YmGQ7h8keWcMxDV+JDu60HpPZBkQcwNk4rbj3NG3q45GBuuBglK688Cer9YcWIINMA==
X-MS-Exchange-CrossTenant-Network-Message-Id: d297a7e4-9713-4a60-4020-08debbb001ad
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 May 2026 05:22:55.1439 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yp0PBl8u7c5kP4zokQU19SBv62cquiPgI2ZmbJB1giDVIpAle3ddfhwTFTfpIIYLiB1N9SF9DK8acCOu+c2CvDTTeV9aedsx5sF8NtvHgh0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7635
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[linux.intel.com,google.com,intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B152D5DF676
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Sean,

On 5/22/2026 1:09 AM, Sean Paul wrote:
> From: Sean Paul <seanpaul@google.com>
> 
> Fix a typo in the loop condition in xelpd_program_plane_pre_csc_lut
> for Segment 2 degamma programming, changing 'while (i++ > 130)' to
> 'while (i++ < 130)'. Also clamp Segment 2 to the last user-provided
> LUT entry value instead of hardcoding it to 1.0 (1 << 24) to fix
> a step discontinuity.

The commit message needs an update.
Is there an easy way to reproduce the problem you are seeing (e.g. IGT)?
I am wondering if we have to do the same on the pipe Gamma and Degamma.

==
Chaitanya

> 
> Link: https://lore.kernel.org/intel-gfx/20260521180143.2143262-1-sean@poorly.run/ #v1
> Signed-off-by: Sean Paul <seanpaul@google.com>
> 
> Changes in v2:
> - Split out into separate patches for pre/post csc fixes
> - Dropped loop bounds fix in favor of [1]
> 
> [1]- https://lore.kernel.org/r/20260519075245.383864-1-pranay.samala@intel.com
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 90d5dc2ef3e4..469011c83f9b 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -3953,6 +3953,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
>   	enum plane_id plane = to_intel_plane(state->plane)->id;
>   	const struct drm_color_lut32 *pre_csc_lut = plane_state->hw.degamma_lut->data;
>   	u32 i, lut_size;
> +	u32 lut_val = 1 << 24;
>   
>   	if (icl_is_hdr_plane(display, plane)) {
>   		lut_size = 128;
> @@ -3963,7 +3964,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
>   
>   		if (pre_csc_lut) {
>   			for (i = 0; i < lut_size; i++) {
> -				u32 lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 24);
> +				lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 24);
>   
>   				intel_de_write_dsb(display, dsb,
>   						   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
> @@ -3975,7 +3976,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
>   			do {
>   				intel_de_write_dsb(display, dsb,
>   						   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
> -						   (1 << 24));
> +						   lut_val);
>   			} while (i++ > 130);
>   		} else {
>   			for (i = 0; i < lut_size; i++) {

