Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3445DA16D39
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 14:16:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9D1110E3FF;
	Mon, 20 Jan 2025 13:16:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AUG10OyR";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06DE810E401
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 13:16:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737378986; x=1768914986;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QAX19sOzj3zLrkOwYgfcWaNubbBFStAZ2dw/6kprtZM=;
 b=AUG10OyR5ZxD5rMPR49S6TedxIPlkSEdnOfHzI+ZuYz3bAfu5fxx6PfQ
 Qq6YCSzWoQsEPS1+SB9iA3uilt8o7/47vbmw5JzTwpif+SxYIx8XOGyFx
 WJkFBshgsEB+SDPt+U9OVysGsz5RPOYq4Zby25kbUY7njf5RffKnl/zPw
 dqa8CLIvNv3iSC7klj78PCiPUYh/E9ACy7L3ahBasAsu1K2sNickMjade
 sKXQPO6hjCavBWMr5JK2AHy2xMVgK8cm6ZCjcVphER4jcrWtAK9TPvCyj
 qSssUn68iKiqrRyr1sKMGu3/PPHo5HInUgvbmb137vu+7gUXDGhnaxNcp Q==;
X-CSE-ConnectionGUID: Axi2H0ZfRP6Ej3XQJZYk6w==
X-CSE-MsgGUID: +96hqxwmTP2+uuDE5KEBAw==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="37681779"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="37681779"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 05:16:26 -0800
X-CSE-ConnectionGUID: f6YomWdTSumUvyk67RVupg==
X-CSE-MsgGUID: N7dELw/6SlOPTi0pcix08A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="111505728"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jan 2025 05:16:26 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 20 Jan 2025 05:16:25 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 20 Jan 2025 05:16:25 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 20 Jan 2025 05:16:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=avHPEekGVrSnD6LoJxuKqbDPtRSzQHmTnK8bWESmYOqD3rrcyxpqG0DL7SpHcLAQr5eQisKEWAZmBqqwTX0Ezk267UwLU+W77QdGSSDH1bR1ZMqllOyjtpmyXbOXQ1ewn6WOpC+y8Oa68Sg4JCu0jOPBzLFDe7bdMqt9Eh3/20pWCZYjmCHpmC5OVA1ixteN+NnQNTIcYg3gwCmspjDveylaq1BZHZnM27qnpIvfxKdnJIGpEexqlFp900o9zfNCkQvAHo30N8ySxubQBS0NXh3qt/qAx0Vo/qLAgsxhHiyTw9AWR3C43H76E8ORTgoE2ITs9KY45Pl+Po3RsRi/DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=SjpV9cTl0uXcTy1BJNymzt5+cahUFd6goMTnWGWkNqs=;
 b=pM904cBIeJaw+/n2JXpDdH7VTdM98hSRObJYPVq5mouhhYYINaFHwxqFEovY6oe6cHmEGSOQ69z6EiAMlJmWpWuVR4qq4X96LLa7ZxYVV2WxyGEc+PpcvcO4A+d9sYbnpHDXzm+pyhYTbfWCgcN88vgoyyqTnqdnpW1Bn2e9yzome81m/LQoxPQKF5mC5uK2+9kbIoJHoPLcaXXbTx2NmvA+RUfxiQ2uvWps0A/Y4r7n+fS0pwIzeNBzzQ4kqwXOfj4xcNCwBo2B7IXTZeGRXvmsuREdivf6WzY4L5vGH4V4d0XJ4PisWNG8zWRbEJSfjyhlTD0biILrbuNYT8lnyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Mon, 20 Jan
 2025 13:16:07 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%3]) with mapi id 15.20.8356.020; Mon, 20 Jan 2025
 13:16:07 +0000
Date: Mon, 20 Jan 2025 14:16:01 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <andi.shyti@intel.com>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 4/8] drm/i915/pxp: fix typos in i915/pxp files
Message-ID: <j2iog6qydsn7pre2m25cfciqu6kkfch73w2bljjrnxkfl2tscx@y7uj4j6zxucv>
References: <20250120081517.3237326-1-nitin.r.gote@intel.com>
 <20250120081517.3237326-5-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250120081517.3237326-5-nitin.r.gote@intel.com>
X-ClientProxiedBy: ZR2P278CA0003.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:50::6) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|CO1PR11MB5105:EE_
X-MS-Office365-Filtering-Correlation-Id: aaef747f-7a28-418c-b202-08dd395499b5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SEJ1MjFFQkpIcGVCRER2dnJINmRwc3V2bjJ3TG5abWhoZE4wRVRuY1NMV0I0?=
 =?utf-8?B?MjJVakNFcVFIVnFJSHlkMk44VUIyYUtDUGRaVTFWMVRoeExIL2d2UmF6MEVo?=
 =?utf-8?B?ckdrMlZYWGJiaCs3SnAxa0Rxald6NlJ2WE1abVdNSFhWTUF4NUJTcmo2TGt6?=
 =?utf-8?B?WGc5TTd0cC8ybngwamZ0VVhmai9wYkJXTVhMMEpZRXArQTRYa08veHpjeXVl?=
 =?utf-8?B?c1BjV3I1VHJDbm9yR1hiSXpTZmRRN3NnZitRb2ZxT00xSndzSndIejVZMHJ6?=
 =?utf-8?B?WVV4SVZqYjJadEgzVnBLWUJEODBHbTE5UFRuYlgvalNKa0tFRi9yUCtUSDdH?=
 =?utf-8?B?b2FKRXFIMDlVRS80WjJ0WlR3U1dlcktkVjYrTDFyenlNTXFxbkc5QWJlSWpM?=
 =?utf-8?B?Mnh0VHcwdUpBcFNHeFl0b3lxTmN6NEFiUG1zUnl5Rm91aHh0a0R4UWRtZlN3?=
 =?utf-8?B?S0RkQUc5VDJuTGg5KzFJdFpWQUVWTHVtdUdURnZqZUJFdUNLUnZFa0FCZWkr?=
 =?utf-8?B?ZFpzdmxhNW9jL1ZjSENoM3piOSs1ZzJsKy9yZHpQdVM3Skc4cjhhT3FFWmdS?=
 =?utf-8?B?SkdTcndsSDZnSTArZW9zNkVVY2tRYXlPbEwyTWRuSmJlcXcxU0QzTjZzY3VH?=
 =?utf-8?B?MFdkWGRRVjVPWit5L3VPdzBRRGtSeUx2VkxRb0FQeVNHd0NVS2pUK2E0b25T?=
 =?utf-8?B?SFQ2QmF3cnlaTEhKRlNBVTBkMUhHU2gwRm5BWWtyeFYzS0tYemJVUWl0NVRP?=
 =?utf-8?B?cG8xa01TSXRZTTlLYUp1WUIvcUFheEZ3eC9JcTJjNzA2SkhWbHh1aXdRaTJu?=
 =?utf-8?B?T1dtTGVHbkdDMjVPTzZLM3c1TDFhNjArWHliaTBOUjRiYUJaVFZPbCtJSHEx?=
 =?utf-8?B?ajk1cXZYV3BnbkdSWnpncElZeW9ZVzZGZWNxNzh1c0ZMcmhwMlRYSmxEaTZp?=
 =?utf-8?B?MHBGcGlLUGZoSEZKQTFiNFZ0UFJqMEhMdlZrLzNIbXhnU1RPOTFGaDJrYmFH?=
 =?utf-8?B?SGd1bklNVnB6aXhUUlBvZ09HazRTL0lqVTVySk82NXNqTmg5TmdRK3Z4dFdZ?=
 =?utf-8?B?R0VxaGMyWWkrRWQ3bVBSa3lQUkY0RG00alNCY0VSRkdYVWdWZ0VpVDViQnIy?=
 =?utf-8?B?MzJmcnBBcmRKTW51YXZ6YW5YRkhPWmN6dUFEclI5WFpqSlBDaG43cG94bnRu?=
 =?utf-8?B?UDhwSU1OeG1VQ1R1Q0tUL29VZGtkTzJ1aHMyRVNnYisvWktSYld4aFgwK2F1?=
 =?utf-8?B?SDdtdmxJWE9OVTZpOTQzL256QmlQSzMvNlloMzFKN0RMVkQ3V01HVzRqOVl4?=
 =?utf-8?B?dG5XeVE1OUlNNHcwMUpvMGNaS0Vsc3dEMjVQVFMwZHFvT1NhZmVZUGE4ak9P?=
 =?utf-8?B?Mms4R3k0Zlh3Q2lCM0tGcnh0ajZFcG1LRFhLNHB0WmR5TGlPa0FEdE9rMWt4?=
 =?utf-8?B?UEZlMTNCNmVwTHU1SjdiWTMwNndsb29LOFo4S2daMEg2WEgwWjN0am1kdjJl?=
 =?utf-8?B?VXYvUm9XeC9Na1kwdUU5Z01PcVduejJXWGNKL2dwRFloMU5MWU5uTFlBZjlo?=
 =?utf-8?B?SWM0ZDVTeUxpa0NudlBOakc4U3BLbE5RU1N1SUw3Z2ptVGdnUlBVOGliZkds?=
 =?utf-8?B?K2QxdjRtMFloemo5SDJXcnhZSFh6Q0pVak5qcElUc3RkdTVTNnVnNlRPRkph?=
 =?utf-8?B?eDFqYkpvYlFYYmk1VWRITEdTd1o3WU5Fam03SXFaZ2YyNTNGdHJTL2lTZlF1?=
 =?utf-8?B?cVJlVi83RXhOTzNoWEZSUklOS0ZyZFpENk8rNkFlV0MrZGFWT3p5QktMZ0Jh?=
 =?utf-8?B?aWtVZy9JNnYxbTN0bWd3R0RzS2VlZHlNNU5hQkNOSmxsbWFKS0dxTlNGcUx0?=
 =?utf-8?Q?2ATRShWPE7fC9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?em9yQk13OUlZdUVxUDN4VDVPK0kvTDIzTWVSWi9QQm0vaG5DaExyNytGSUE5?=
 =?utf-8?B?SWxydnZoMTVIMm9qdjJoV2NrTXRqMlhNZWc2WExLZExPQ2hsNy8yZkp0L29h?=
 =?utf-8?B?RkkzbVQwYjhtSmtqWlgwN0M2ckVsaGVWQWQ4VHZ3WWxpZ0JYWWRNRStJbEcr?=
 =?utf-8?B?cnF3T05pWnhUTlB1bFpaNE9qRWp1Nys4cUtydzJUOEJTT3dFV1BkaDRKeWY4?=
 =?utf-8?B?VDJDbjVOKzlBeFNuWVJkUHIyRW5rWlVYcHNEZW5IY3MrNEI1NkxVMmhtcUhX?=
 =?utf-8?B?ZFd5L016c01JSms3TFlZQUZiaWVIQ2xvcHp1OHI4ODhjbEd6SE9CMjFHS0xK?=
 =?utf-8?B?VEc3SEcxOHpaUEloNzNRaXV5WXpjR3cwRTJRLzRCSWZpYU5Sc2NhQ0VlNHVp?=
 =?utf-8?B?THJXbXpDdTNUWTdwVHZ2VCtHMklvc3UyQkxEWW5hcXRpL1IxL0Y1Y3orbTA4?=
 =?utf-8?B?b0hmeEFMMC92TDdHaEtOMEJNMzU2MTQ1MjZlUFk4Mk5YWHBMZnVVODhIa1Zq?=
 =?utf-8?B?aTdTVlV2TFBOUmhiL25kRkxsRy8vK0N4L2NmZXU1a3BHMkQwUGlwRVo5OVhZ?=
 =?utf-8?B?dHFjcGJZZzU1RkI1Y1lqQS9PN1hiYVVTNVNLZW5Pa21PR1l5N2w2WURaTzRG?=
 =?utf-8?B?amY3VG9lcEo3VWdQWVh0ekF5Q1VVS3hkY2JYYUJqZ3hxR1B6WVU2bmplRTRE?=
 =?utf-8?B?cVg4UnZLL1p3NXA0RGRYdkFvUzcrQTNZTHdmcy9nSTZXR0JFUklBcHJyOWJn?=
 =?utf-8?B?WEZwTDZuTDduV3MycG5XY1M3MC92a2pFcE1oK2w2YnhXWDFLS2xaU1dsNVdX?=
 =?utf-8?B?ZUZReFcwM1J4anl0SVFmQklXRWJGaFhlK2hZWDdvSGJHTWRCeVdwai85QzlT?=
 =?utf-8?B?MXdyajFYT0pDUkNCZ2JKeXNRVVN6Ym5GWi9OODlZZGM3bFI1WjVqWk5sWGNX?=
 =?utf-8?B?cTVMVExORnpydStoUldHMStDSHdPN1kxTm1xWDd2Q3FQcDVjWXA3bGhFREcz?=
 =?utf-8?B?NnZENDhkUkl1SXBVOEdBaWtCNlE5VFMwYTRubUw0TkhaUW50N1c2a2JQYWFu?=
 =?utf-8?B?a2RmOVpVRlhUQ0pNekl4Nm93RjN0Q2k4VHhNQVlyMnBmajl5d1dMdVovRUFP?=
 =?utf-8?B?ZUEyV1R0bGpDMzYwU1BnZC9INkJ4SXBvNmtVTXNhSmhIaHJhK2NPM3luZnE1?=
 =?utf-8?B?UVI0alpLZTRRT3haekVHbXRDMEZhUEIrMUhsakREdHNIcXEvK1dmZ25FS1RM?=
 =?utf-8?B?ZnhRSkUvcHVYT2tVTTBlWHk0REdaVldQUmxRQ0VpZ0lKUjZHRUZkdUNlbnh3?=
 =?utf-8?B?ei96Y3pCdCtjbm04Z0tQOVJ6OTh0VlBWR2YvckQ5eGtGTHQ1K2lOcksxczVa?=
 =?utf-8?B?QXZodVRyU3ZENWlQbGtYWGVRaVJ3d1BlOEVlMWprSjdKYzdPTUN3OE9rakxY?=
 =?utf-8?B?U2RPblBMQ2VCSC9STXgyWGc2ZHFLNmxaSGxIUUp5cWdEeklDVzNBRlVQdko2?=
 =?utf-8?B?cDAzbEpEUnRnVURGajFTTEJjWG02aHV3RFhxNytMN3ZZaXFjWTJHQWRMcWhi?=
 =?utf-8?B?OEw5aW9EZmJYejEzQVRBQllwVmU1RDlIdXF6S05vcmErUnYwL3N6MFVySlZF?=
 =?utf-8?B?aUcrcWsyTGdZL1YvdVI5d01PZFNEcUVxV1piemNLR3ljYkF0N2tKVXZPSmNa?=
 =?utf-8?B?TTA2TytxTy9HeEpHSmpIQzI0YUR1V3YwbGtRSjNPWGNKRzZKMVB4dGtxNkJw?=
 =?utf-8?B?N1hPbFZhMzVwNlBoOTVSVTYxMERLek1JV0hJTUxEakhXMjJwNWoxRnF1QUox?=
 =?utf-8?B?eXZxNUJkYzVGZU4xbHZhNHdQNUF3T0lEOVFuZm5sNW9VbWx6RDRONGFzMFYz?=
 =?utf-8?B?WW5DdjFwQlM0U2ZzNXZQY1phM2k4OW14eUs3UVhvVW5yTkNJVEs1Q3Z3d2F1?=
 =?utf-8?B?dmthOUJBL1o1clJkWllaRG9GejVQZ0RzOGsrL2NXbHZzK2pPK2pVaHQrMmEz?=
 =?utf-8?B?NVZ1bkFhdTU0LzhOQVNIMEFkeEtuSnBraGRSQkpwMFJyWHE4c3JjTEc5NUVU?=
 =?utf-8?B?K0hXOXQ5SC9EdE5GUEJLVnRacDkzc0RYU1pBSmhINVpQaGpXdnJSUmhyZ0Nm?=
 =?utf-8?B?dGhRaC9YSjBVcHNrbmJ4NnZhVkJEUGRsdDdtVDhxdkhKNzNvWXhaRlNjN1JQ?=
 =?utf-8?B?MXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: aaef747f-7a28-418c-b202-08dd395499b5
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 13:16:07.6207 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0Wh+8KKWZ4PiI22SHlx9LkyviQJdNKaW2XJRs59dHY+cKaxTApZ8UrJ0KfL5+RtkTvT6V7z5JHuxph/ywrsF3Mm362y/3a7ZOcd3fedPJfs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5105
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

Hi Nitin,

On 2025-01-20 at 13:45:13 GMT, Nitin Gote wrote:
> Fix all typos in files under drm/i915/pxp reported by codespell tool.
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

Thanks
Krzysztof
