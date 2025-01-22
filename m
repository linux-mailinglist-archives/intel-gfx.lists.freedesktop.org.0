Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC26EA18DE0
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jan 2025 09:54:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67DA510E251;
	Wed, 22 Jan 2025 08:54:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YJcnU5aq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 56FD410E251
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jan 2025 08:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737536058; x=1769072058;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hQdBOXTDKGbnLrcaMADAEeemkiC3UHNT/uPtQYmlMtU=;
 b=YJcnU5aqfaG0eMIITxfHCd1Y29F5sCjdJJ3apWAyUgRhtKMjy/M6VVvs
 dL1DuYZbC4v3+u14ykw4PhLJ8e7Fmge04F3zPOp1Mh7PnIvjqBRoD4OOV
 +t4EnUsYdpMMy+wKKyVmOxj/+i5orQFmHGqVvfEjhfLqoSBTK0Z2BhpPf
 Ia0zUMjig4gmcdmQc39VXdl2NZ9Jhp4I/r2xzoi6D4zNYRG4N7eqxBJ1Q
 vCS6vnZ5Dxs2sSY57dGI2D+Og2/bvLsYHcCHPf143zEzCY5rLnhvjUkjU
 OzOyBzqIl+mToEUtx8gzMgjEcHG7fcuoMU8ijx/qLwKOYutpDPPmRhx2H g==;
X-CSE-ConnectionGUID: EfItfuBrQ9q/Lo5m/nW4pw==
X-CSE-MsgGUID: bTcZEStaT1ONNmlxbcZzcA==
X-IronPort-AV: E=McAfee;i="6700,10204,11322"; a="49380050"
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="49380050"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 00:54:18 -0800
X-CSE-ConnectionGUID: rq52fg0TSqaSv/kNGdGBzA==
X-CSE-MsgGUID: rrjE6OakSRmiEhlPoRy9Pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,224,1732608000"; d="scan'208";a="137913232"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2025 00:54:18 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 22 Jan 2025 00:54:17 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 22 Jan 2025 00:54:17 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 22 Jan 2025 00:54:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=AuM0mZTHpQaYL9+s6NYnGnnZb7WvR9vGMJufqZ2v8n5Lhm2+MIFtHwcEmnHyfh4idx8ldB3J/Xogq4XjyuO7N/TwGyfuDS1Zk80BBTeSxaInfostdkJ6NpR3LFGPR/Ka8Sq6fZfo/w4gyD/sN7jBx1XlYxaSmfPeIWnmJGHuxqqc+c8YF4BP7C3PYhWPxsndE5Nb7o0kKodcRSoIVwNySAZcNlUCh78DM6ZLCx9GbcJ5Cd7/SYExyXS4ZtX/l2c+iof63r/CVZ0nTceJhgcDsu/I4b8FqnkiGbHAVnhJ5pOBxjA0lSeeeg4SGfRnPOkutLZWpHzD+r6+DRzZyufwIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f+lgspCAgLefOmE/hF1ACxpYbaUbc5UWeKJdaiFaxhU=;
 b=Wu+0NeewU3heol4K/Us9M/FwrS7Z+1uwkFYZmQrnkNkFRdaeOQluNYhqBN1t8wUa17m5h24y6pmsfDiDsDhGpcm5WzjDMWnGKpq8iCDJblD3u161rSZtUPRRl/i8vI0h+vXULvUgUX51ExBapTJItQW83TcaKwQtFjQ6PzqRmJEBwZeuQQBws81mLbpzBQuiOkQIKD4cynx7DlPLFA61fCY9CggXS+P9abQWVNU2SrWmMW+NvZTLiZq+JSVDoIUG5i2jtn73KkQdnRUtPqFTExTWSoz8auDhimZ5xcbgGxmeSPVh3sSW6swyLs69aL+TUDHjFpjDlXl7Xwx+6+C4yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN9PR11MB5530.namprd11.prod.outlook.com (2603:10b6:408:103::8)
 by PH0PR11MB5015.namprd11.prod.outlook.com (2603:10b6:510:39::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.16; Wed, 22 Jan
 2025 08:54:15 +0000
Received: from BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9]) by BN9PR11MB5530.namprd11.prod.outlook.com
 ([fe80::13bd:eb49:2046:32a9%2]) with mapi id 15.20.8356.020; Wed, 22 Jan 2025
 08:54:15 +0000
Message-ID: <80ebfbbd-e889-4a8d-bb21-3b58980013d9@intel.com>
Date: Wed, 22 Jan 2025 14:24:09 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/guc/slpc: Add helper function
 slpc_measure_power
To: Sk Anirban <sk.anirban@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <anshuman.gupta@intel.com>, <riana.tauro@intel.com>,
 <karthik.poosa@intel.com>, <raag.jadav@intel.com>
References: <20250113095912.356147-1-sk.anirban@intel.com>
 <20250113095912.356147-3-sk.anirban@intel.com>
Content-Language: en-US
From: "Nilawar, Badal" <badal.nilawar@intel.com>
In-Reply-To: <20250113095912.356147-3-sk.anirban@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0100.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:27::15) To BN9PR11MB5530.namprd11.prod.outlook.com
 (2603:10b6:408:103::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN9PR11MB5530:EE_|PH0PR11MB5015:EE_
X-MS-Office365-Filtering-Correlation-Id: 51029cd2-0cdb-438e-4e36-08dd3ac25976
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OTlpZHFLM3RlU2FORUF5NGFoRzhReWluN1F1VTl3d0VpVjlnVVlwR05SS0kw?=
 =?utf-8?B?KzFLQWhyUXF3QkJVZzdpWmkxWDR0Vm1MN05OK1RlT0NzUm5sMlBYK21uUGh3?=
 =?utf-8?B?eTQyS090L0FpaVpFeTJpUnB3YzJhUVRUYVVpTEh0ME5Nbk9QTWhEYkR1RENW?=
 =?utf-8?B?WFIxanI5NnFZSkpTV05JaE01VzhKMFc1WCs2cEJmVVBrekN3VVZaT1A1SzFo?=
 =?utf-8?B?K2QrekhoWUI2S25JZFBWelV1eW9TdWMvaTZnc2h0cm1sSXc0ekphQi9xVjEx?=
 =?utf-8?B?SmNlcEQvdWlKTUNmYTVJUUtHQTJhZEMzd0dObmlTc1o0NVJpRjNJNWJnbk5x?=
 =?utf-8?B?Z1lQOHJsb1h2NXNRNDBiRTg5YkREdHZtYjU4eGtGa0VtazFDVXRwL2YzaHdF?=
 =?utf-8?B?WEhKSURtTlgzcWNmRVhLRmxVYTNSeVF3V3FKd0NVNGRTUlhhamRCVlFmckVE?=
 =?utf-8?B?Rnk1RXFIRWEzdm9VU045cjlPUkVWVm84amJOUUZsOWU2UlB4NGpJZWVzYUww?=
 =?utf-8?B?eFcrS0dpbnd0dnBvUDlEUzNRWW9aZjM0bUUvbzdkcm91UkZTcUR6a002Q21I?=
 =?utf-8?B?bmQvTWZEU2ZmZnliTDZXQk56RWVhWFEzVGZDaERWS0Mya0crZWF4WkYyMzNH?=
 =?utf-8?B?Y0dHVFBuaFRHNDJIUGZBazJZTGhBSE5zTDkzb0tiYVBTamRySHBJZ0xrbzdk?=
 =?utf-8?B?UlF4ZjRFUmVWR0RRU2FiU0MxSUZOZmt2NkYzeWYrNCtJNmtTKzd2QVdPMHFN?=
 =?utf-8?B?ajlubGxkU0UreUErSkJJM09LVFlWa2NzNEMzVmdSNndvWU9BT0RpbkpUcDBk?=
 =?utf-8?B?OHc5UUc3Y0V1ZmRuT2U0bjRsNWxiakNvWU5XbEFSaHl5dzhWOUM2NFBlMDBm?=
 =?utf-8?B?TC93M1VwRzNLN2F2RjR3bEZ1V0FMaUtEZUNHNE9rYlJHVW9iQmd5STh5aGZL?=
 =?utf-8?B?aGMzNHdyd0ZWbGZBbFB0QVJvOFlqMm1WcEFET04rUzB5eFBuTHFQNFdTY3JI?=
 =?utf-8?B?V3gvWTg0MVczd1RvMlVTbUNLd3E1aEptWE93eHN2QjdkZk9JanN2Qk92Rng5?=
 =?utf-8?B?bXluNWt6MGMvb3lqS3hhWmxEZ2NZS1pzRUxBWmNqcDArU1dGdFZFamRZeWRo?=
 =?utf-8?B?Zy8zWVgxU296dFpNTWZ0NlhQdC9zZTA3NmxKRG9xdmFidHJIczhIZ3BoZU9B?=
 =?utf-8?B?U2p3c2hFWUlMV1RpWHdTbWl5QVI2QTQxc1RFdmtJZGNCWGpCc0VwditqWlhB?=
 =?utf-8?B?UjZxK0JMTUp5eXhNc3FOYVdPWEpTRitkM21DdWR6M2ViL0dsNnZzMGNUa3JU?=
 =?utf-8?B?R1pTOUVyY09LWWk1R3EyalJDbDVpYm1FZFJCckFEaElvM1ovUC8wTDlOeTZR?=
 =?utf-8?B?Si90cURqeFE2RjFSM2FiMU1tQ0hLT3RVTExEZ1lTWVI2QmVrL05SZzEzeFBk?=
 =?utf-8?B?WEg0U2prRGF3ajVyZjNJUWFWanFUMjJkbWxDcmFObGtsRENLV2dxdkpJaW1u?=
 =?utf-8?B?aFR2SG5CSjdNeDM1bWdhZXdYcWh0eGtkOStpSlZZaXVNZjRZT0FMZjJMRWVH?=
 =?utf-8?B?MHduSnJFZ1hqYlh5T0VRMWw4ZVdWczBCWVNiaWpicndMbDJaOXpWUGduMXNE?=
 =?utf-8?B?VzRlRnFuR3N2dnlsK3cvZnBRall3VTVoVUJscU5XNm5UZ2l2N05aWjdIb2x2?=
 =?utf-8?B?RTk1Y2dMWUVmSHlCVU9IL1ozSGlDR1B3UVErdlFxMVcwOVh1ZDY0U2J0ZGNN?=
 =?utf-8?B?RWNzQ3NubkxaUmtqbFdyeHJSRzl6TmFtVUFOejZsQzkzK3F6TXp3N2dUOXpp?=
 =?utf-8?B?eVNBbXROUzlUK0pJVmY0VEVNTUU0d05Qc1FwNEJ6djYraE9lTGRQbFI3UWI3?=
 =?utf-8?Q?BRYeC5J8Xa3dw?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5530.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bDJwaXU2NnJvNTFQelFuS3dQeVAwNUlUNEM5UkdLT3Q4NERQNnZ3YkFyZDlR?=
 =?utf-8?B?ejB6S2RXTUE4NlJCcDNobXhUOTlGRGpLQ0VWR0crQzZxb0FrZVcxS3VMaFpS?=
 =?utf-8?B?NzRkMDdsM3FSdzBYckNFZXJGdU0wUDNQYjR0c0dyYjczT1gvQm5XZ2FTVWZl?=
 =?utf-8?B?OWREMWhRZWdra0FLSVVISytQd0xrTWVaRW1OQ0Y3NHFuenVIMmhWZU1QcSt2?=
 =?utf-8?B?Ni81K3k4eHpadk1pYzBUd1JiZ3NWMXhuaUJEdml4cy9tekJKQU5WM3MzZjBs?=
 =?utf-8?B?bjZVN1NwajJwcjVTdkdHaGJnYkFnZWNXN3dyRWJ0VnBoZWhNSDJWNUhKSkpk?=
 =?utf-8?B?aVVUdTdyUnBBdVdoMVFiTThFNFk1ZDQ4TlhZNmtYd2ZHRFpxTlkyZG5Ya0tH?=
 =?utf-8?B?bFZPakFndFd5Sm5WN3NJVUxkQ3cxL2NqdDhYK3JEZUJaZlo2TG0yOElQcEtE?=
 =?utf-8?B?UjNjdVdhVGw2bTFpQkZKZjZHR1B6eC9nUG5JbUdraWtjZndUNmdvc3BmK3Vy?=
 =?utf-8?B?RHVydFIyNkRaQXdaYTNJQy90TngwU2VYZi9vRVpKNjcxdzhDTWxYTmdpeExS?=
 =?utf-8?B?VjFtcW5rc1dhTGVnTFl2RnRSOG04YXMvU2lkcE56cy9JTStmREY4UHBKc3dx?=
 =?utf-8?B?c2dZTlhxRXAxNXRabzFSWVd1SDhjTFg5dWZIR29xdzZVLzBmQ1pFS01kenJy?=
 =?utf-8?B?WnplcGdEZndJYVY2UkZZaldIaE9HcEYwWnRPWnlqMGQvR3RxNkJiVFhpMlVY?=
 =?utf-8?B?Z3lqSXNnVlF6aGxldlBXRENHSC91R0lOWU1xSlRvUmpMWk5IbFdWbWk1YkJx?=
 =?utf-8?B?WlBtTEJCTDlBSDQxWHF2RjBZRzZORXljcm15VFRxNkE1WGw3RGpRVEdJb2Uy?=
 =?utf-8?B?VjFiY2daQ0w1Mmx1bXdYYngzd2xJV20wRmNVOGh0Y3RwMXQ1VFl2SGp5eHkz?=
 =?utf-8?B?dVFpR08vR1p6VUVVc1dub29odGhpQlBGQ2EvRno0eThaOUliaDN2MlQ1WENN?=
 =?utf-8?B?UlJCcTNKalFVZitMSE5TdnozZmMzOWlyM0N1SUp4NmY5OWVXd28yZW1rbE95?=
 =?utf-8?B?cDVldDdWV1BWSno1TDJ5dWNzbXdNSC9JWXlQU3QyRW9uMHFtMU92RHIreUZG?=
 =?utf-8?B?ZndYOGZzaHJYSjNkM2V1RGUzc2JTcFlFTjVtMkRXTFhOcC9EWktGRVAxY0JT?=
 =?utf-8?B?WE0zOHlMb3J2SDJHVk54eHF5V09DL2tvZ1FYMUNoazdvVHAwQjVSRlFpODhZ?=
 =?utf-8?B?bXZDR0JMTnVOMGVkbVVSZHQwRERtQmFVREN5RThqSjJ3UVJ6NjA4dW9LZTdC?=
 =?utf-8?B?amVsSzVPRUxzQW9zZ05Vc1gzZEw0a1VzVmdZbVVUbUlENUxGV21lRVBvQVly?=
 =?utf-8?B?bjNsWFYwRVEyZnBnclBVL2tNWXREMkhkRHdvQi9vRkJjbkswZFNvWXIrc0lT?=
 =?utf-8?B?TkZZVjY5NHdpY3FiRFArS2lUVlo2T0MwSjFNUENkVUVPazlsNG9hbFhIV0Jl?=
 =?utf-8?B?NkRHMGErWXhDQ1oyQ2hVT2JRNmp3L0EzQUt4YnQ4cXM5T3ltcEZXK0l3ZFlQ?=
 =?utf-8?B?SGw4T21CYU9XZGRxNUV3SHA0b3MxRGU3Z0ZhczZFRzlxTzBBNG1IdkxPKzNJ?=
 =?utf-8?B?bHZWNk95MWF4TlZjWDJLS0FpRVVsMWlYOXN1SDZQU3IyUGhWRkZFOU1DYXJP?=
 =?utf-8?B?emllRktZdHNURFV3d29vanZPM2htRFFSdlVVWWZjdTZFRzRiSmV5SVY0TjlF?=
 =?utf-8?B?U21ZcWlXUC9nQ1ZYeFhkeVU3cER0Ny94WS9IY1B2QWdVUG1DNzFOdFVhMWhE?=
 =?utf-8?B?TUJKbi80T2xMRVlNTnhWTW5zK1pGVEhHOElRRTI2dDhlZ2NaMUw3cWtTWHhs?=
 =?utf-8?B?c3V5bUR4R0pSZ0ZSZnNBR3JSOTY2TnhNQzJCZjlTMnAwMTlJc3lvZkl2U1Nh?=
 =?utf-8?B?MHRTenV4YUQ5VEFac1FlazdGYTQ5RDNld2ZreTFOT1BVNEhpNWNYekJtTmtH?=
 =?utf-8?B?YnczMzZVaS9jOGRHNU9sRlVVRmUrdndyVWFDR2ZRblRtNTVRMncwUkdDeHdZ?=
 =?utf-8?B?Vmh6SDlHd3dlblVlS0dHNlZuQnRYSmxZUFhMaU5YNzhvMm1jMFhQNUJlY2lC?=
 =?utf-8?B?dnJoWkFGR3I0SDVXVm90OUhreUFjZEtzdm50RjRiRjc2RUgxNS9tcmlDYUZT?=
 =?utf-8?B?Zmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 51029cd2-0cdb-438e-4e36-08dd3ac25976
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5530.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2025 08:54:15.6574 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a4oGHw2H9nV6x6/gMq/cnoBJBALVPulYMu4iXnxX0nde1yCn6BFeK+PWZ16xt8Qmr6uquUYbtVxX91wgbeKczw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5015
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


On 13-01-2025 15:29, Sk Anirban wrote:
> Previously, the RPS function was being used, which utilizes
> raw frequency to calculate measured power. This commit introduces
> a dedicated function specifically for measuring power in SLPC,
> ensuring more accurate and reliable power measurements.
>
> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_slpc.c | 17 ++++++++++++++++-
>   1 file changed, 16 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> index 4ecc4ae74a54..cb5d5e2c5dbe 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_slpc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> @@ -95,6 +95,21 @@ static int slpc_restore_freq(struct intel_guc_slpc *slpc, u32 min, u32 max)
>   	return 0;
>   }
>   
> +static u64 slpc_measure_power(struct intel_rps *rps, int *freq)
> +{
> +	u64 x[5];
> +	int i;
> +
> +	for (i = 0; i < 5; i++)
> +		x[i] = __measure_power(5);
> +
> +	*freq = (*freq + intel_rps_read_actual_frequency(rps)) / 2;
> +
> +	/* A simple triangle filter for better result stability */
> +	sort(x, 5, sizeof(*x), cmp_u64, NULL);
> +	return div_u64(x[1] + 2 * x[2] + x[3], 4);
> +}
> +
>   static u64 measure_power_at_freq(struct intel_gt *gt, int *freq, u64 *power)
>   {
>   	int err = 0;
> @@ -103,7 +118,7 @@ static u64 measure_power_at_freq(struct intel_gt *gt, int *freq, u64 *power)
>   	if (err)
>   		return err;
>   	*freq = intel_rps_read_actual_frequency(&gt->rps);
> -	*power = measure_power(&gt->rps, freq);
> +	*power = slpc_measure_power(&gt->rps, freq);

Reviewed-by: Badal Nilawar <badal.nilawar@intel.com>

Regards,
Badal

>   
>   	return err;
>   }
