Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YLIfLWEjlGnXAAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 09:14:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1374A149CC0
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Feb 2026 09:14:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A956010E483;
	Tue, 17 Feb 2026 08:14:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PC9DqaUQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 43C2B10E46E;
 Tue, 17 Feb 2026 08:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771316061; x=1802852061;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=O57g3Tp6rtE8R5WCsHA2KujM40JtSDmRgjl8Y5O4Twg=;
 b=PC9DqaUQcvBVcjqPKCyv9zC0+Xdrv8wSccApThizNDJ6LpHEOe0Ei9Xq
 HBCpLxz+kk8Cevyd2mUkRMFr0SsVPJs451y/TCAHA37aKZ8vIl3MK4WMQ
 x0+HiClhE1jFMCT66o0QFhxUQO8e8XBs2A0oYCsUngTBwOrb0v3VjGT2Y
 vFqTrPjSRvgWBHmWDJLmn+XkOuahK8EMFV9xjMQRG8JWdFJzVEGwbMi/Z
 EHQd1ZsorQsSaB7jHh3qZKcDeQtlUQXWco/n7eAPMHadrKUFZRsYWtYu7
 ZKOdJEW973vdC//Rd+lbKns/sOkQU086wvd3CmEQtQc91IGcX41aMs6LO Q==;
X-CSE-ConnectionGUID: zPXOsDbUR725GYTf7fqmyg==
X-CSE-MsgGUID: pg+L4+z8QTund+2pTKu13A==
X-IronPort-AV: E=McAfee;i="6800,10657,11703"; a="74982159"
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="74982159"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 00:14:21 -0800
X-CSE-ConnectionGUID: /gdjzibtTNmIWXZsqebVAQ==
X-CSE-MsgGUID: 2E5Aq+dGQR+0TTlqDjRWbg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,295,1763452800"; d="scan'208";a="212734744"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2026 00:14:21 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 00:14:19 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 17 Feb 2026 00:14:19 -0800
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.16) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 17 Feb 2026 00:14:19 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lh0QNtJrm0qQci5AMAx0Oiw/uwVfK4J2aUFKaVQ8sElgrEV/BwI9hnshnq8m82Lpm1me2FOtlDjwKwerEzndKyUehPBsYSehqGZbFQZQXj0j9ulvzeqqxeY8uNhLtQWRPRS9IkXm0Oq44RJYmqFYfPX+ao9lg3hzvOfHo3BHpEcFoOpnWi+n56a/+ZTyNHb99t7Gbzf79W4+0pa/yahUEXclmzQMVvr6CEemUHdxQ/R99HpzPvFsldbV+TvxIJerfMn5CSjFnJo+5U7axTOyejqXgX+C0vrdrlirhCVtJbrZA6mEBcmalva4JLpELFTQUvXurVn16lMLD6SIjFUkVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9z7O0tbkzjSO7iwuKmTaQ3c6qmoaj4qz6uFXiRfAZ3Q=;
 b=P3GC7eBgMsZ2YuuhzvxuTVuweKQb5OnJ7XXfa2cpoxEn6e/SCaCXFP4WwH7owoIIg81vmCDxjOKqdcKOZoiTCWCARayPrqZ/iBbjcbrHtJIVHhBR9I7QpjVJ627WsGjwwdzBrfvu/g1FBslAjDAtQSchXcJoPi7uWtrO0xiMBukK8PCKi2Pf8tHM2MA+fNe57IcNleBqZArdXaiM40U458O04MGdRA9yXXaqwj6nt+jyDoh8g0PaswZsy/Cc4gEvyr88vQcn/VILh2vWsYgaQQ2wqnnZk6l+U/3WA0AqV0E/vdSvuvKSTTKKsIqp7SMIQUm4i56w3jWCeyxXOCKQnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6377.namprd11.prod.outlook.com (2603:10b6:510:1fb::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Tue, 17 Feb
 2026 08:14:15 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9611.013; Tue, 17 Feb 2026
 08:14:15 +0000
Message-ID: <251146fb-69da-4c21-90bf-ed13e2e40724@intel.com>
Date: Tue, 17 Feb 2026 13:44:08 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [RESEND] drm/i915/hdmi: Poll for 200 msec for
 TMDS_Scrambler_Status
To: =?UTF-8?B?SsOpcsO0bWUgVG9sbGV0?= <jerome.tollet@gmail.com>,
 <intel-gfx@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>
References: <CADN_a6Ne4Vr6knCXdKtCnB8=et6OK7PEZ8F5bpyGamwyv1K9GA@mail.gmail.com>
 <CADN_a6O6-iL+BS+0gy_AisiJTYQ6NGqSKXv608MxxETCawD0jg@mail.gmail.com>
 <CADN_a6NjO=x=bn=yTMJcgbb41_HUAHMS3G5U3jD20TyLvmGHRw@mail.gmail.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <CADN_a6NjO=x=bn=yTMJcgbb41_HUAHMS3G5U3jD20TyLvmGHRw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0119.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a7::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6377:EE_
X-MS-Office365-Filtering-Correlation-Id: 87da4b6c-6288-437d-1528-08de6dfc8a25
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QTc5bWF5MXJ4eDljVzVxRmFOTHZWREs2U3pkSDlncmlhL0Q5L2Rab1kwY3Fz?=
 =?utf-8?B?R3FFc3FHVWlzdm84VWxCMFBQeTVGdzNKSWNJeEdHY0MzY3ZlNWoxY2N1cHJv?=
 =?utf-8?B?VE41OExsVGFHUEtpYkc1L015V1VRQ0lxQjlWRXNhd2pTUzU4OHh3YUhhcmJY?=
 =?utf-8?B?bjNVMHJqUGcycjF2MzV1MHliempZL3cwdGpScFVKelBiOEdISUhJbGhmcmZr?=
 =?utf-8?B?V3NmUTZhb2p1d0x0R3R2WWphcUUrbXAvOEhwQ0lNUXVQRzJha0drZmNjbk9Y?=
 =?utf-8?B?WVFGTTkxSzVnSXhueWlWSlF5bHBNZitMNWhrL00vakN2VkJEUEovalhuWG1M?=
 =?utf-8?B?T2d3cnlWL0RoYnNNWDFYUWJMU1VtM09Lam9RYzBoRndHNjRNQkZqdUhwR0ZE?=
 =?utf-8?B?OWJHT2JYYjZoT1gzZTY5eUJsRnRLcDdtVEw0RGtQSTBHVVhiTHROWHFTbXFz?=
 =?utf-8?B?MXlLV1NWN1U4Ly80a0JoR0FJeTVqNzc2U2pjNFJwOEZla0NpaHUxd3RaQ3U3?=
 =?utf-8?B?UXN0dk5zNE9wUHpjNUVsbVpCb3ZzNDZoVHAvZEp6RDE3dUNZVEJ4R1JnNytJ?=
 =?utf-8?B?c0ZmN0g0eXdpSFQ3MzVkS015SGtWQmNsc2puQ2RDcittVlQ2M1dhSk9wWEM1?=
 =?utf-8?B?bllGMXlId1RnUCtlc0Z4dkw2WjB0YUJBc2ZQdVlRRjVNdm90TEVZTndwb2pM?=
 =?utf-8?B?MHVDMjFzYlZjcFVqZkJWdEJFK21wcStjcmtMSnhxNVF1OUsyU3hZVlR3bHJJ?=
 =?utf-8?B?NklTTEc4UTdXT0grZTNLWlp2VEcyd3YrSFY0MnJDdFU3dURGSnlheGVCNkR3?=
 =?utf-8?B?K3Y5cjd5TlRMVkhXYzAxUWtWNnRVT2YyRlArdHkrdUIxdGVncE9aeHRkdUlD?=
 =?utf-8?B?S2YrU3hlVUJrbmdtTEIvL2pQYWhERkhQT3prMHk0eU4wK3B0SDZyZWN6dnM2?=
 =?utf-8?B?YUFpRjlLU3FjenhWMXR3dXg4UzhQL0p1cWFBTzIzMzR1ZGNZOWFzOEhzaGRV?=
 =?utf-8?B?SmlwWlF3R0ZUanhxaGxEMnYvZUhRV29UaGlWU2xubHpXVDlMQUFISStkMmM1?=
 =?utf-8?B?dHRMcldURlBDS2JocWFWckUxRUY4dHRZelpkajhsaXhCWUQyT0ZXRUpubHpp?=
 =?utf-8?B?WVk0a1NPMzFQcVpBQmpYTTRJMjlQK2RHbUNrYitRTDVWSS94ZmMyWXNCaG1l?=
 =?utf-8?B?ektjYU9QckdmczBXNFdQdEM4S0lpT1NGdHdxOXhwUUhxSzJKcjczUjJieGJl?=
 =?utf-8?B?SWhsMmRwSTQwNjNmSm4reEdBZE5OY3dIaVcveVNhVDN3ZjE4R2diMWZHcHU0?=
 =?utf-8?B?L041ZVQ4QkM2UFoveGhUZ3lqTWFMckJnMTM0bUJQd1hlZFo3TXZVR3BNdFg5?=
 =?utf-8?B?ZENYUjBrM2gvdkJvYWt3L2RvRG1KTFFTOHRGNDdyZTNwTXAyK2NvVzN6YmJ3?=
 =?utf-8?B?Y1JlMUU0SW9uRjhnd2w5NytDbWYrN1J1WkEraUNOaDhSYVV4NUdQdXR1ZDFS?=
 =?utf-8?B?RWRXeHRCdjlRVFQ1akpmcFRUTVRoWlhqSzNGaEtwZW41ZFNpSmh5RFhvNW0x?=
 =?utf-8?B?MDJGVlBJdStIMVJ0Y1FQak9SS0xHbHcyd2YrSzg0a291QnlRYTVhV1o1aU9Z?=
 =?utf-8?B?ODZsL2RPY2JOZVRDSzd3OUVicmQ2R0xJY1dpZHVuN2YvejRPSHp1N2xTVnlU?=
 =?utf-8?B?NE9IQUJ6RWsvUW1DdmtOT1J1RmxWVjh0ajFhZmFwaEFXb0JOVU0zMWw3aUVX?=
 =?utf-8?B?UThWS0lEUjZsNGtMb1YxOVhxdDdScDhpbCtVVlpLNTAyYmRxYXkyR2N0cFc2?=
 =?utf-8?B?OXRxOENlTXVqaldyVDZ6QmZDdzlZQXQrR0hjdzRHVnhTczV2RkRaNGxUcFM5?=
 =?utf-8?B?aC9ZdzNGRkNSRUw1eTdYbEdJdUd1R0ZnWlBZdkt2Zi9uTXBJNVhZWDZTWWZB?=
 =?utf-8?B?WVNyYVBPQlNwT2JxOXdQVnhoeVpaSTdTZk5WRnltVzMwRVlmVzBKN0dZd0JY?=
 =?utf-8?B?SHlNdHVrWnNLcXd1WHhlbDhYUjUyQUV2ODBmaHlIcTNMN3dFM1daUjBKWmlG?=
 =?utf-8?B?WmNaR2FpUy82YU9WM05yeWpQNFZ1aCs3V0pLbmxaTGxkN0lpRzlVdDBSVEZZ?=
 =?utf-8?Q?N88zasHSNq2wEGIVXmaYk/wvF?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OHl5U0dRaExZMXhXelNObk9MUkI0aVg4Skx6cjBZc1V5RGIzbUY5UW45bUwv?=
 =?utf-8?B?WHc1TWc3S0VjUVJzTUlZSnNDQWo3cWpjbXJ3TldqWTFVeVk4VFRkZVB0UjVY?=
 =?utf-8?B?amNpNXAxQzFBU2JGMnlQSkVaVEFNamRBY0c0WHFCb29BWUFzdVNFYXRrZjNm?=
 =?utf-8?B?NjljVXFiZDFHcTVxcVJjaXhaYXJjY2svdUlzamF6RmI5bjhtem5TV0lnRCs4?=
 =?utf-8?B?ZTl6ckt1U2JPaXBaN0RNZmlLTXB5dFV3ZVlHaysxZ3BxNE40dzkzaGlTVXdi?=
 =?utf-8?B?OHVocEw1R21YUkZoaVhDQXZ6WHpKODB4d0l4S2pGcEhzTDJ5L2tNQ2M4OXRZ?=
 =?utf-8?B?U1VmWmMwSlRZZnBXZzdXUVNlZUQrYkNJNmYycGtFNFBRR2dXSElpano4d2RZ?=
 =?utf-8?B?QWxjcUNNN0MvZEVKK2Q0NnIrODFpK2lxbitYNXJLU2F1Sk9hWE0xZm5HMy9w?=
 =?utf-8?B?UUp2dE5oRmtUNytaWnYrYjVQb3F1Q0lFVlhrNnV0OVlleU1hS3dyUmpkZmxa?=
 =?utf-8?B?QXF3bGNXT2YzbGxrbGZIcUVlcWI0bW9qRlFhVDhYaHdxWW04YUJOaGJYS0Nv?=
 =?utf-8?B?Sm9IYzg1TXpmTU9LeHJIMy83NlZCWXNkVEJaMkRLQzZ1L3k3WlFPam1CeGN4?=
 =?utf-8?B?L1FWSFdRQkNxWHRtSlgwV3UrMUt4bEdLN09wK0l0NkNBanI1MHBOZTFURnFC?=
 =?utf-8?B?aXdIeS9xR3U2cGVlS1pzRnJqeDQxcmxVQVpEb0l0YUJhMlJQWHlPYi9jV3NJ?=
 =?utf-8?B?UnFYWWRiU3hhK3VVNXZROGVxWG83cjd4MXdZZlNqOGo5VGpod281OWJnK2dj?=
 =?utf-8?B?N1FNdWpPVk1icWhyMzhMdExCS1Q2Tk5ycUxoak01bkxOMlNvQ0NVSFMxTnRV?=
 =?utf-8?B?N0lSd3dINkJQWDlnVGtmdkExZHljZ3pjQlFTOVNQTC93ejdQNTUxeFdybnFB?=
 =?utf-8?B?S2o0WGpOVU52Tzh6QVh5YjZOWEs1ZE1URkd1QkNiUk5NZGNVTUJWOWZpSGVF?=
 =?utf-8?B?SW1mYUNxaGt2L2FxSVZPUmVRcnNOc2pSZjBmWi9qZXpXUnNlR2d1dmZ0NmFn?=
 =?utf-8?B?SmVlRE5zSjJSNkJwNjNqcmdINllhdS8xcmdxVmd3aEY4dmZ4Y2F2VXlpUm1L?=
 =?utf-8?B?Y2FpTGloaCs2MWFUZ09Xak5XOWhMbXRHei9scnUvMDl1ZTlRbmxpQlh6Z1dL?=
 =?utf-8?B?Uk50MFNmcHJTcjl6M3pTMUNMRkVPWjluMG5Qa1Jlam9Bcmp1Slk5SVl6cE82?=
 =?utf-8?B?NGc3bGpEemFEZ29KVUloeGpjdzJ3aUROeTlNYmw3eXowcmxSRGhKY1ZUMlZ6?=
 =?utf-8?B?eUwzY24yQlVLWk5WaVhsaUQ2ZDF4TTJKeWJKblRhWFYxbFp1U3ZlYnk4STcz?=
 =?utf-8?B?L3RaQndSR3drSTBRRUhNRUhHYTFrOUtCREdwbG1Rd2V0K3pjN0p1S0lxYkhC?=
 =?utf-8?B?TmhtZ2FJdlNob0pXYm9sRUsrS2lsMzBnaGV6VXc3bnlHQVRTdVBpcTVnU3Z5?=
 =?utf-8?B?WTVwclZXWFJ2MVRKcFRoVEJ0WjNBVFpWa04wcWRzNDlRY3JnK2FwUXd4VEg4?=
 =?utf-8?B?ZGFrbW0waFBZWjFYWW9kR0JMUUFPMzJlQ1Q0NlB6RnFwUllLYVd5NWErQ0Za?=
 =?utf-8?B?WVB2SW5wMW9HWTE5d3VOVXZyVHltay9xa3VXU2hIRENZZ0wrNmlBU3BXamVk?=
 =?utf-8?B?cXJwUGlYdHdvbG9sMDhRa1ExYnVBWldvSnNScm53QW1RKy9takxQdE9MUDFj?=
 =?utf-8?B?U0RyMkF2TVRRZVh6N1lTUlV4YVh6K25iZlVYbWljcWFkam1GakRPYytFOHVv?=
 =?utf-8?B?allmZ0R3NzRDb2QrK2d4cWJ4Q3l5dzR6a09lZlZXQ3Z5ekJ5QW5YbDZNQkt6?=
 =?utf-8?B?TkRBNENxSVdnMXJodzdjMTNWaW5lUUNCdmZnVlhQckpBdm95TjFlcWdqVUY2?=
 =?utf-8?B?UWwwN1RWOE1HSXowSDhTQ295R2UrTGJMWlc0d1BZRGxwa3ZRZmF3c2N0NWVW?=
 =?utf-8?B?ajlTL2ppQURDYnpMbk44eUhJT0EvV3MyeHdpVWFHOCs2STNWcTkrTFNtekt2?=
 =?utf-8?B?dEtvT2VhT2RNdndlQ3hNS1VZM1J6RlBMbFRaTW8rTkZaYTNCSDZ6SUdPc0cy?=
 =?utf-8?B?K3VrOTY3cEoyM2N3cytITjI4Y1B5L1lzWEVPQU1xNitHMVhzOUVjVlAvUWt6?=
 =?utf-8?B?T2xHWVZlTE1samhWYk1haHVXYzIveVdJbGhmbTRzaitGVWJjL0luS1U1aSsv?=
 =?utf-8?B?cFhocEI1WFhRK2Nnd3QzdkIzdXVJc1JqSm9mMGVEcnF6ejlWWnJiWWZobXNF?=
 =?utf-8?B?bjhCc0lXS2VqWlVOR1FDZGVyZVdYU3NLU2N1UTF2TFRaNGoyQjVYVWNGKzA2?=
 =?utf-8?Q?39LQpYr2q+tbcXg0=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 87da4b6c-6288-437d-1528-08de6dfc8a25
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2026 08:14:15.4175 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LjV/ocNQQI5RrfZEsIfzcc5rMMiFlDM8TCL0Mq/EcQZGOSyBk22GqJjiZ1IumDjAGs4fz2bZg25Zk6Gzd/omqaUpQjVdHThhb+1fbMFnw70=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6377
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,lists.freedesktop.org,linux.intel.com];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 1374A149CC0
X-Rspamd-Action: no action


On 2/14/2026 9:47 PM, Jérôme Tollet wrote:
> Hi Ville, Ankit,
>
> Update on testing (Feb 14):
> After isolated testing of each patch on kernel 6.18.7, I can now
> definitively confirm:
>
> - SCDC polling patch ALONE: Works perfectly ✓
> - delay patch (150ms) ALONE: Screen remains black ✗
> - Both patches together: Works (but delay is unnecessary)
>
> This definitively answers the question: approach #1 (Generic SCDC
> polling after port enable) is the correct solution. The v2 delay patch
> is NOT needed and should be disregarded.
>
> The SCDC polling aligns with HDMI 2.0 spec requirements and Windows
> behavior, making it the proper generic solution.


Thanks Jerome for testing.

Lets have all discussion in the original thread on the patch [1].

It seems your recent mails are on a separate thread.


Regards,


Ankit


[1] 
https://lore.kernel.org/intel-xe/73e0de50-b7e3-4315-ab81-0a3ecebc2363@intel.com/



> Sorry for any confusion from my earlier messages.
>
> Thanks,
> Jerome
>
> Le sam. 7 févr. 2026 à 04:14, Jérôme Tollet <jerome.tollet@gmail.com> a écrit :
>> Hi Ville, Ankit,
>>
>> Gentle ping on this thread - it's been about 10 days since my last
>> message in the thread (Jan 28).
>>
>> To recap, we have three potential approaches for this fix:
>> 1. Generic SCDC polling after port enable (current patch) - aligns
>> with Windows behavior
>> 2. Panel-specific quirk for affected displays (Cisco Desk Pro in my case)
>> 3. Fixed delay after SCDC config (my v2 patch from Jan 14)
>>
>> Testing showed the delay works at any placement in the modeset
>> sequence, suggesting this is a timing issue rather than
>> operation-specific.
>> I'm happy to implement whichever approach you prefer. Please let me
>> know which direction you'd like me to take this.
>>
>> Thanks,
>> Jerome
>>
>>
>> Le mer. 28 janv. 2026 à 15:42, Jérôme Tollet <jerome.tollet@gmail.com> a écrit :
>>> Hi Ville,
>>> Following Ankit's response on January 21st where he suggested
>>> considering a panel-specific quirk instead of a generic solution, I
>>> wanted to get your input on the preferred approach.
>>> As a reminder, testing showed the delay works at any placement in the
>>> modeset sequence (all 4 test positions succeeded), suggesting this is
>>> a timing issue rather than being tied to a specific operation.
>>>
>>> Three approaches are available:
>>> 1. Generic SCDC polling after port enable - aligns with Windows
>>> behavior which also performs ~200ms SCDC poll post-enable
>>> 2. Panel-specific quirk for affected displays (Cisco Desk Pro in my case)
>>> 3. Fixed delay after SCDC config (my v2 patch from Jan 14)
>>>
>>> I'm happy with any approach that gets merged.
>>>
>>> Thanks
>>> Jerome
