Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BBAB0E025
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Jul 2025 17:15:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DD1710E1ED;
	Tue, 22 Jul 2025 15:15:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pppz+hgZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2768910E132;
 Tue, 22 Jul 2025 15:15:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753197323; x=1784733323;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4FZNUXe9yIX3Qa6oAW8vjo4/XMPgUHY6vuIsHdaNQSY=;
 b=Pppz+hgZQVMj9LL6Qny39S1l2cc9ruB5ZhFN7kkc7Ci7asvpKqELGFkF
 h7bvxAhHQ1JJQ8zKyMbRrBY/i8Z0VjyQLmPXjnorEw3u5o5ldI0f0dxZZ
 NXhb+Hw76H3RbcNUB4aceLJ/n5U2vew69Rc8KJxQ2HICWJYKSy1bfSH2t
 95FBQTG41/zmSGMIZ+PznLgmCgnsAD2Cf2Mph9/oAIt9zCAOQFxf5f43H
 yJ4lcjvuctTHeZcNz7U9pGHBVSZJhvaCgrG/RuQFxQIVn8rLn5AfhgRTr
 lwy93l87Unon7A4ZDaGgsbX5iRGkCqIEOg08/gHxSluzhb74yeu6ORxrm A==;
X-CSE-ConnectionGUID: HLXzoYerSUmW/AeqkjtrlQ==
X-CSE-MsgGUID: ZkH6mKixSdq9TxLM4F8kTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11500"; a="72909435"
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="72909435"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 08:15:21 -0700
X-CSE-ConnectionGUID: mArfLXeTQsCDPeLQjjhPCg==
X-CSE-MsgGUID: zybd4enLQRaa3dbonHPP2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,331,1744095600"; d="scan'208";a="159240547"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jul 2025 08:15:21 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 08:15:20 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 22 Jul 2025 08:15:20 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (40.107.92.54) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 22 Jul 2025 08:15:18 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=BJ1DMDZp6kGyE2oNJ9aXgvVuKcj2xQ2wDOcRP7vLNPvCm8MWO1KG9IYvlySpGrHkiaqFckxOHPvuD+wFOl5C5RixqicAkAJ4k9Paa1pME5qUIX+jreblpJHNLwdocsOPl/6lg8r/iyPehz4BCQaI8TIXKt9J5zwec6vgaskvRBozfHTtklwXnpOqDsAF7pr8AfeoRTnCBR4ysmjzdHfNuLnd1x6oATaHMQimDUss3zVh4u0FusbIgMdohp5fCua3ulSsCDEp3/ew73fAWRCsIF158+flKB8LroXcBRbrOjoOJI8e7V3j2XUSH+qU/w4JMpZbuzN+L9l/yaik/ot5fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I3JYif7vn4LGQ9N8P57lnp/8KAs3l4coNwGgbbCFv0g=;
 b=Qd5P25/kIZG8siEZ0CBHfEbodJy6E0Pt2IbNy2n1N1X8T+MegUz89cvchLfTlKuogMfM7F2/J9Qc69z0VlL+DOAKvoLlI0Pdl/H3QQQjzy4wUhPo6y57nDkXz3I9DNcCKszquUHdVe1OCeXgLsWgwkoW+5XwpSf1akQ3S+kJ8OHrOEJ2x0xTtlBqPPDFeu30GPpzw2QSh59/aR6mPX2JeR2O68y0Hw2GDUvWO6b12d6hjW3b2aLSgBEmTbiI4MSnNGAlWbh/2Gk70EedWK2pqN8OVYYqC2EGY4NaSosi+ENRwtzXxdFx8r9TcZ6CzEbkr1vQtFSK1qeEIam5ObCshA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7816.namprd11.prod.outlook.com (2603:10b6:208:407::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8943.30; Tue, 22 Jul
 2025 15:15:15 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8943.029; Tue, 22 Jul 2025
 15:15:15 +0000
Message-ID: <457726c8-8193-410b-aad6-38443b9aa8bb@intel.com>
Date: Tue, 22 Jul 2025 20:45:07 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] drm/i915/dp: Limit m/n ratio to 10 for DP SST
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <uma.shankar@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20250721091529.3864004-1-ankit.k.nautiyal@intel.com>
 <20250721091529.3864004-3-ankit.k.nautiyal@intel.com>
 <aH4ngmg05DDtKmDN@ideak-desk>
 <05541222-45bf-4546-9976-797735d40e78@intel.com>
 <aH9Ybxei1-Llc9qz@ideak-desk>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aH9Ybxei1-Llc9qz@ideak-desk>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0110.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::28) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7816:EE_
X-MS-Office365-Filtering-Correlation-Id: 87767dca-1540-4f44-9963-08ddc9328f49
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aEZ5N3ZDNUFVNkE1Nm9GZzlFaG5UeGc2K3hMaldHdWVDV1Z4WlN5VXRCT3hl?=
 =?utf-8?B?WHRmaGdwZnZyQXZidXpvVDRrK3ZqcThLN01UcEw0RkwwVlpwRXZyWU8yc25H?=
 =?utf-8?B?TmZ4dSswVGdlOVZzRDlVT1IrelFMck9CNFk0c1VIMHV6NGR2T3Zia2c2M2dE?=
 =?utf-8?B?TmxOMFEyRFRnanFzcFUxQnQydG1oYnlCVm1mVk9rbDF1ZTJPWWZNd1ZrVGU2?=
 =?utf-8?B?REhncFFaRHIyTEQzcHlKa3A0RGVGNndMVFlIWUlKSVdNUUtZTUVKN3JjS0kw?=
 =?utf-8?B?ZXNMMlpUS1VpM0loT2g5dEdhbHRqL2dFWU5SSWZScW1VZ3kvQjhFS3FraU1S?=
 =?utf-8?B?ZTcvc3JqVFMvaDdQcUU3TGRicXp2WmVQbmFjTXNpcHo3WW5yYTVHdTM2UXhW?=
 =?utf-8?B?MFdXYllZdUYweU9jYndzQ3dUQVlnSmQ1R1NsMExwSzYvUERPM2lQMUpiY2lR?=
 =?utf-8?B?dWI3S0VMNXdRc2FCYXZ6bktGL0RoOUVGY3lUdEliL1JleXlyKzduK0l4dEtR?=
 =?utf-8?B?SWNYQ09IOTY5WjNKVUZVcTJ2QmZ0d21GYWFhbURrMzAxOUVlamV3NGlUeWZS?=
 =?utf-8?B?Tk5SWVdNZlJGTUhOVzdmd0ZaTWVXWlV1Vy8rV3Z5UHFQaEZuVW5UOE8zN3FO?=
 =?utf-8?B?MTRzTHFZdU1MbVh3cnRGRkZKWHVHb2F6aWZSRVZvcHlOQmNnVXpaTTc1a2FT?=
 =?utf-8?B?UnJRelVWb1pLSytwWmIwellkMmpvMnE0RzFOVHBVbkFocHY2cjUwbENvTlNl?=
 =?utf-8?B?VmIwaTJiekRXSUx2cmN2NkFaNXE5cFNwc3Jia25XeUovRW03VHRJQWhGcC9T?=
 =?utf-8?B?Q1N4c3NJNGROWlM4dkNVQ3I3RFpuRFRXVEptMmhYMXdsNnZSdkhqbzg0MjY2?=
 =?utf-8?B?KzZSRXZQOVhBak94VEtZdHNBSVFBQzJHWDNnSmlQMlAyK2RTU0g2VFcyNmxP?=
 =?utf-8?B?Q0NtSXV1TGczbno5azBQdmI1VUNaV3NqUXo2L2d1UHA1WXhGR216YWZIUUZ6?=
 =?utf-8?B?THFJTlNzSC9vMjBlZ3hTUCtBcmdtMHBJdko4d3FpNmRjaHduNnBqNVZlTng3?=
 =?utf-8?B?WGRHVUxXeU5KSlVkdXdnTjJ6SjNMY2x0eEV1Z3loQXlrNWRyZXZMOTQ1K2NZ?=
 =?utf-8?B?SjVhYUZFZjZZQU44cVBoMis5UEZVTW9HbzRQMEh2V1NvY2R2b1dJQmFNK2s0?=
 =?utf-8?B?TkNOT01Xa0pDRExGSlRUMEV1NnJ6emo4d0pObWZTVHo5OHBzanI3ZUNLMVBu?=
 =?utf-8?B?UmRjbkZoL3BvSU1QWG54Y0lnd2hTNXQ5K3ZXVEcwcVFJTENRQTFHcWJOWTFC?=
 =?utf-8?B?Ujd2bHBnbEx1aTA0WmNvWENJUGcrQ3Mvb1RYeGJLWEUveDdLYXVxZTkwVlND?=
 =?utf-8?B?ZWFYQy90VDN2eWJoZkFZN0xoM0N6aWpkYUNLRFpnWlp5V0IwdFdOQk9qU2NS?=
 =?utf-8?B?SVc3LzU1cy9pdFZMNkt2NCs5SHR1c1NUYWI0eGhkYnE2SFN2RXRIbXBpOVpy?=
 =?utf-8?B?VEFUbGNncHlEZXJrRUY4YUxKVUNvOE1MaTVLSUdkYXVUdk5EWk1hU0xYUzFL?=
 =?utf-8?B?YWhsMmRtbTJmMTZoZjR6V3c0cWtvS083N1d0dFBQNjFKOVo0T0hKMW1ub1pJ?=
 =?utf-8?B?OTlEd1l6YkdlSjYvNFhrWkFyalpBQmRlYk9xNFBoT0VSbUgwOGtUMkpHblNH?=
 =?utf-8?B?NGVsV2EzQkNlMUxuaTFTNnA5NkpDVU9jeHJreUxPdy9QV054czQvdTJLMzd2?=
 =?utf-8?B?dnhTRmFKSy9MZGZaYWI5bGJrbzRtR0UrMlNsWlJvMDJiSDh5aEdGck5ZbFZ4?=
 =?utf-8?B?TGxRbWllUjVhd1lPMFU0cUxGQ2lVaHZVVFFnY0JCaGd0RUVZTGV6cGxNVDh4?=
 =?utf-8?B?dXczb2dHWCtNc1FtejdRc0FFUlVwMVV5bDhMbk9VQjZJczBpZDdEY2RIWlFJ?=
 =?utf-8?Q?zkFAp7/8Z/o=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YkM4eGVjRzZuZVFLKy80RUdtUDFqRVZFUEQ5cFVNVzNUcGdENmF3TVg0UmVI?=
 =?utf-8?B?cGF2QjdtTFpiMUduSjNLaGN2emxiNFVpeUFud1hseStFV0JoRDQwWXZ6dzky?=
 =?utf-8?B?cjdnaE9kVDZRNFQ5OHgzOGVMb2pMamU3TDJueEZiMnAwSkl5L1gweFpqS3VZ?=
 =?utf-8?B?Y0VHeFVObW1EU3FIc2cyeCtNTVdVck5jUjYydzlxVG9kM2FRdHZzSFEzd0Jx?=
 =?utf-8?B?U0xENWdJQkh5eFlkamZJaWc3NmJYa2tqVitRem9tMUtMdGtoRkxjdkNodzBx?=
 =?utf-8?B?Vm93dE9LcmNadDVGQVo1NWIvUUJ3eEJ0UTRxRy93eU96UzFPaTZWY1lJQWdu?=
 =?utf-8?B?dW5nbHVvR3c4aUxCdXlCVkE4akZOV211NEJQK1FNaWhESTA4eTd2cnhZVnM4?=
 =?utf-8?B?c2RlL3FvMzE0L25NNm5na0xtcFBCMkREUnVhQ3lpTXlFeDVxakZMMDAvMit0?=
 =?utf-8?B?eU11VEpNMTVSVVlzVUlFaE41S3M1eGNaZFZCOUdWSCtab0VXVmF1L1hYY1lm?=
 =?utf-8?B?dHVkNlVLcEVQdGFaMVl5OE0wWUVJM1ZWblFjMDd5UzBhcEZCUVc4U1Q0TXNk?=
 =?utf-8?B?d3F0QXVUY2IzekVlbjVkTmhPaEhMakc1Y01XVTFncVBXV01WNmtIMFRENUJh?=
 =?utf-8?B?enFGZFdsdi8wQnNjejBqNkkxZjVYd0xaVTRxL2hFcGthaG1IYlVxelZMNmdp?=
 =?utf-8?B?cWVZaTgzbFJ6M1Z5c0FVaEwxN3dSSFhXZUZKc0FWRWREdlNlUnVySURYMFlV?=
 =?utf-8?B?aFhNdWNGY2plcVRKc1lzM0lid2Izc1U5RUJWMFBpV2VTOFo0TWlQdTY0bzdV?=
 =?utf-8?B?QkNFeFhjY2pIWlZQVzdyRTg3Z1dhM1p0NFMwcFVrRUhLSGMwN2VhcFBhZGEy?=
 =?utf-8?B?Wk5sV0tMcFJ2Y1U0NkoxSVpCdWJXZFNtV2RPaXRjazJPNGdQdHZ0Qzkyekto?=
 =?utf-8?B?OUxGSDZ2NjRIY2lsWWpkVDB3S2RXQWFITXRBajliTlFSM04wb3JaV1VudXov?=
 =?utf-8?B?Z3RuNHRaMXozazExc2lIVnA1KzFzQm8rTHBlWi9Qb0ZEWWZVV2F1UTM4cmVV?=
 =?utf-8?B?TTdrRm5ONkVpSkxzMFd1WXQ0bnZTTVZyclplaVVCRHZtdVNwaTd2TkJmc25Y?=
 =?utf-8?B?blVZR0xJVFFkaHc5Q3Z2Q1JhL3NHTG5SZnlsTHJIeTF4YzNaeXdEMExOSWMv?=
 =?utf-8?B?TVRNWmI0K2s1M041MHFEalFjUUlJS2dIbDhkM3Y2S011eVJJN2xTa0RJcjJY?=
 =?utf-8?B?d2szMzcwU3RhMVZSZ2ZWODVLTU5XdytWK1U2aEh2OVd1R0U0VEd0VEtHUGtD?=
 =?utf-8?B?VU5QL1dJTk1scTVvVE9lV2M2NEs4TExOdW9aRHg1cDgxUk5rMkxkK3cwYWxX?=
 =?utf-8?B?MnJVR09aKzExMGlwMUpYQ3czcHpCRnFHQ2Z2Wm9ueE0xZ3Eza2U2VUYvaExO?=
 =?utf-8?B?ZVFNOFBjd1I4V21DK01XYVY4MnN2NzErMThzc3g2R3dYYzNhVkNDL0lXcnR3?=
 =?utf-8?B?dTBJb09heDRNMkJaZUI5ZTYzUTV1VGlnMFA4ZnhON1l6VHo1NU5JeWNBMHVQ?=
 =?utf-8?B?WURJdEZaVVBzN09ZZXRqbkx0S0NCbmR5Q2NkckxycGxyaE9Ock5tWVJURGpM?=
 =?utf-8?B?YmJ0TzRTSUlQL0luaXJRaXlBRXpiOC8wOUlYQ3NlSENqNFMreTEwYWo5dWZ6?=
 =?utf-8?B?aU1mRXpJdHhINHk4cEpFMTFwUXNrM3JpNmlTQ3pkOXU1dDRzdEgrUVdCcUcy?=
 =?utf-8?B?TXR6Yy94Vlc0VC9jRGdtL1VaVW9yYjRXQU5FSUlQOEttcFZJQWtCUlBXaHFn?=
 =?utf-8?B?clR4MnBkbXVBb2drWm0wTjRhOWp1UEUxTjM0cE1TTjZxQnJhcHdyUlZkOUpW?=
 =?utf-8?B?dkRnckdmc1huVUlhVlBKaEE2SGpzV2lieDNGWFl0aE1CVHNQdUVBbjdXcEI5?=
 =?utf-8?B?UGxWMnpxQXN6R3Y3QXpXb3FFRmc1cHZodTZVQ0VxaVA1dmxtQjZpcE00OXBW?=
 =?utf-8?B?bldwUlBCdUdFQXI5TXZHemlPZG16bE9WZExna1h1azc5dnd6S1dBdzBPcmUy?=
 =?utf-8?B?VGQ2TndlWWNkOFZBcDk2UmlsVmphWGpMdW4vV1hJZkU0R0J3bFlLcXh6b3VG?=
 =?utf-8?B?T3gwQ2RWNlZJY2FQNjd4TVU2U2dkRDNxUnZDZmRjRjlsSmVCSUtwVlpKckY4?=
 =?utf-8?B?K1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 87767dca-1540-4f44-9963-08ddc9328f49
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jul 2025 15:15:14.9758 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E3Jiobx1znpN+x2XlJFK//qC6bQA3Zs7sMRZlhhS+6lXMtlNqlB5sP2zBitcqUKevLxLvlxXdXT5VrzFQejWpUUVyIUYy3TW2cvySLlhsKg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7816
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


On 7/22/2025 2:52 PM, Imre Deak wrote:
> On Tue, Jul 22, 2025 at 11:25:32AM +0530, Nautiyal, Ankit K wrote:
>> On 7/21/2025 5:11 PM, Imre Deak wrote:
>>> On Mon, Jul 21, 2025 at 02:45:22PM +0530, Ankit Nautiyal wrote:
>>>> The hardware cannot support DisplayPort configurations where the
>>>> ceiling of the Link M/Link N ratio exceeds 10. This limitation has
>>>> always existed, but it typically wasn't encountered without the use of
>>>> joiners and DSC.
>>>>
>>>> With higher resolutions and combinations involving joiners and DSC,
>>>> this constraint can now be hit in certain scenarios.
>>>>
>>>> Introduce a check during link rate configuration to ensure
>>>> the computed M/N ratio does not exceed the hardware limit. If no valid
>>>> link rate satisfies this constraint, the mode will be rejected.
>>>>
>>>> Note: This change applies the check only for SST. Support for MST will
>>>> be added in a subsequent commit.
>>>>
>>>> v2:
>>>> -Move the M/N ratio check to the link rate configuration phase instead
>>>> of during M/N computation. (Ville)
>>>> -Prune modes that cannot be supported even with highest link rate due to
>>>> M/N ratio restriction.
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_display.c |  1 -
>>>>    drivers/gpu/drm/i915/display/intel_display.h |  3 ++
>>>>    drivers/gpu/drm/i915/display/intel_dp.c      | 33 +++++++++++++++++++-
>>>>    3 files changed, 35 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>>> index 671491a2a3b6..f32a4956c926 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>> @@ -2506,7 +2506,6 @@ static void compute_m_n(u32 *ret_m, u32 *ret_n,
>>>>    	intel_reduce_m_n_ratio(ret_m, ret_n);
>>>>    }
>>>> -static
>>>>    void intel_display_get_link_m_n(u32 *link_m, u32 *link_n,
>>>>    				u32 pixel_clock,
>>>>    				u32 link_clock)
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
>>>> index 37e2ab301a80..bfa3db219b9c 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>>>> @@ -559,5 +559,8 @@ bool assert_port_valid(struct intel_display *display, enum port port);
>>>>    bool intel_scanout_needs_vtd_wa(struct intel_display *display);
>>>>    int intel_crtc_num_joined_pipes(const struct intel_crtc_state *crtc_state);
>>>> +void intel_display_get_link_m_n(u32 *link_m, u32 *link_n,
>>>> +				u32 pixel_clock,
>>>> +				u32 link_clock);
>>>>    #endif
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index 54d88f24b689..4245dd65b2af 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -1407,6 +1407,28 @@ bool intel_dp_has_dsc(const struct intel_connector *connector)
>>>>    	return true;
>>>>    }
>>>> +static int
>>>> +intel_dp_get_max_m_n_ratio(void)
>>>> +{
>>>> +	return 10;
>>>> +}
>>>> +
>>>> +static bool
>>>> +intel_dp_can_support_m_n(int pixel_clock,
>>>> +			 int link_rate)
>>>> +{
>>>> +	int max_m_n_ratio = intel_dp_get_max_m_n_ratio();
>>>> +	u32 link_m, link_n;
>>>> +	int m_n_ratio;
>>>> +
>>>> +	intel_display_get_link_m_n(&link_m, &link_n,
>>>> +				   pixel_clock, link_rate);
>>>> +
>>>> +	m_n_ratio = DIV_ROUND_UP(link_m, link_n);
>>>> +
>>>> +	return m_n_ratio <= max_m_n_ratio;
>>>> +}
>>>> +
>>>>    static enum drm_mode_status
>>>>    intel_dp_mode_valid(struct drm_connector *_connector,
>>>>    		    const struct drm_display_mode *mode)
>>>> @@ -1518,6 +1540,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>>>>    	if (status != MODE_OK)
>>>>    		return status;
>>>> +	if (!intel_dp_can_support_m_n(target_clock, max_rate))
>>>> +		return MODE_CLOCK_HIGH;
>>>> +
>>>>    	return intel_mode_valid_max_plane_size(display, mode, num_joined_pipes);
>>>>    }
>>>> @@ -1789,6 +1814,9 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>>>>    			    link_rate > limits->max_rate)
>>>>    				continue;
>>>> +			if (!intel_dp_can_support_m_n(clock, link_rate))
>>>> +				continue;
>>> Could this limit be set in limits->min_rate, computed already in
>>> intel_dp_compute_config_limits()? (And fail already there if this is
>>> bigger than limits->max_rate.)
>> Yes right this can be done in intel_dp_compute_config_limit.
>>
>> We can iterate over the array of common_rates and find the rate for which
>> the ratio is within limits and bail out early if we cant find such a link
>> rate.
>>
>> Or otherwise instead of iterating over rates, I guess theoretically we can
>> calculate the minimum link rate for given pixelclock and ratio and set it to
>> limits->min_rate and bail out early if this is more than the
>> limits->max_rate.
> Right, the first option to just iterate over common_rates sounds better.
>
> limits->min_rate should be set to a validate rate, so it will need to be
> looked up from common_rates anyway. There's also
> intel_dp_rate_limit_len()/intel_dp_common_rate(), but the former returns
> the index for a rate which is <= than the limit passed to it (while >=
> would be needed here), so can't be used as-is.
>
> I noticed that the mode's pixel clock is adjusted later based on the MSO
> link count (in intel_dp_compute_config()) and the number of joined pipes
> (in intel_joiner_adjust_timings()), but I suppose this doesn't matter,
> since the link m/n values are calculated with the unadjusted pixel
> clock. Could you confirm this nevertheless?

Yes this should be unadjusted pixel clock. I did not realize this 
earlier, will need to fix patch#4.

Also realized from Wa_14014191401 this need to be only for UHBR rates 
and also for DG2 the ratio is 4.

Regards,

Ankit

>
>> However this might be bit tricky as symbol size is different for uhbr.
>>
>> I will check this out, and move this in intel_dp_compute_config_limits.
>>
>> Thanks & Regards,
>>
>> Ankit
>>
>>
>>>> +
>>>>    			for (lane_count = limits->min_lane_count;
>>>>    			     lane_count <= limits->max_lane_count;
>>>>    			     lane_count <<= 1) {
>>>> @@ -1796,7 +1824,6 @@ intel_dp_compute_link_config_wide(struct intel_dp *intel_dp,
>>>>    									 link_rate,
>>>>    									 lane_count);
>>>> -
>>>>    				if (mode_rate <= link_avail) {
>>>>    					pipe_config->lane_count = lane_count;
>>>>    					pipe_config->pipe_bpp = bpp;
>>>> @@ -1983,6 +2010,10 @@ static int dsc_compute_link_config(struct intel_dp *intel_dp,
>>>>    		if (link_rate < limits->min_rate || link_rate > limits->max_rate)
>>>>    			continue;
>>>> +		if (!intel_dp_can_support_m_n(adjusted_mode->clock,
>>>> +					      link_rate))
>>>> +			continue;
>>>> +
>>>>    		for (lane_count = limits->min_lane_count;
>>>>    		     lane_count <= limits->max_lane_count;
>>>>    		     lane_count <<= 1) {
>>>> -- 
>>>> 2.45.2
>>>>
