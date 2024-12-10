Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6099B9EAA32
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Dec 2024 09:03:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4252110E14D;
	Tue, 10 Dec 2024 08:03:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bHqGv3Fy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FDEB10E134
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Dec 2024 08:03:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733817822; x=1765353822;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9TLwkbft5XLT2kBR0/sAt55fs+cdWqSjRY+A8UYFPu0=;
 b=bHqGv3Fy2PFK9xlS9PYe1sGX6Iu7BxDPNnWLySRscBdm5vwAVuJesP0y
 wjK3QsW/2gm8K2BJDE5089F8ZKLFS9A1jip7MoUAGIuZG52lw76jXhqQd
 QktXte0w1IbDrghWWqi3cSjfkxtTtQzG9d2xTI8iCHol6nh5NxWa8INX1
 3WxT+TsCga32LGEdZeuGEnOrKQhusg+KLMOq8w7HogDh4mTEIeXJpXlwu
 KGDc3QW8QrJw9olPMWmAINnfHrrIfGbCPbvjh1edfqe53Vc3ePmpczjSn
 W5R+EbL5LwVUSyv+YOLSd/PmnzrkkuVaV4qcwL2f2k3ZFIAyx3d3ZkCLp w==;
X-CSE-ConnectionGUID: 04wkkHkAS0+O0aLtPQZJnA==
X-CSE-MsgGUID: nrezUdNARcCs4qGUzc51vA==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="34285996"
X-IronPort-AV: E=Sophos;i="6.12,221,1728975600"; d="scan'208";a="34285996"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Dec 2024 00:03:42 -0800
X-CSE-ConnectionGUID: gdgqp1X3RdCBnhde1W+ngw==
X-CSE-MsgGUID: 8vMnicTMQvy7G9mEiwsn7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,221,1728975600"; d="scan'208";a="96132848"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Dec 2024 00:03:40 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 10 Dec 2024 00:03:39 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 10 Dec 2024 00:03:39 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 10 Dec 2024 00:03:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lVxcW/FL9aJ7WM7QWLhc0xDYxri43Pu4lm7pjZJkZKcY1RzjuZqSPPO/cOrZ9LcoP08V4T3t04Bj2tBkwbGgX4s/bR1Jb0rUQXvtI+TtYNum3J1kdxbYmpPQRXe177zd0cFX4TtdKufvqgJATcv8Zo3liGeAauFGm4m/L30AHmL7vIEN6F7uqSRF9ZKu4DWszkUZjynT1g49CYBgQNEErlmKZzIBdeXlDETkLOEyoy0a3velxTvfFyZOMr5dEY+sjUpgT+Vd1pDElqk0hhpKL2Ek0+APle27sGtfvxJLUqIKr191gZYaoDAboOTnznYCeszHNrakSSOLrcIlFB28KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sVcv0b/WTmB2vy6tbx0xr2wUcOnNJffxmNn50rtVIJU=;
 b=Qiu/o45KCFHsjwTPs+t1k2K3RtGYcIVVeXgAyA58yw989kTa5gn76woActqNDgzymAs62nNlVYuzihQd5DLP17EYawULVnNwbpL6Gzhxj8TekBPfoIt3YgMHr4YY7/UPmI7IeDTvQiMwgstTEf3lRUaHidDZCNrbkF6McIQmNW9iFtTOWzhWxVOuShld3RRqSbFhxTIZgvhAYVZZFR2/4yr+nUKIVLljimLwLs4Ylh3lwSCczNkQPsroj0+Yzwnd4fEGbtQs7nl2zm+ZR6TDlwJJ6PX4as5UO4Zxf3qkRMzzor5eL86u6hud5/PpEW5eUOQFXiwYOYdXvl/FeFNYqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY8PR11MB7947.namprd11.prod.outlook.com (2603:10b6:930:7a::11)
 by SN7PR11MB7116.namprd11.prod.outlook.com (2603:10b6:806:29b::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.16; Tue, 10 Dec
 2024 08:03:37 +0000
Received: from CY8PR11MB7947.namprd11.prod.outlook.com
 ([fe80::f7a9:be93:778b:8d6]) by CY8PR11MB7947.namprd11.prod.outlook.com
 ([fe80::f7a9:be93:778b:8d6%5]) with mapi id 15.20.8230.010; Tue, 10 Dec 2024
 08:03:37 +0000
Message-ID: <d46ae00a-d234-400b-b463-12dbff235493@intel.com>
Date: Tue, 10 Dec 2024 13:33:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] drm/i915/dg2: Implement Wa_14022698537
To: Raag Jadav <raag.jadav@intel.com>, <jani.nikula@linux.intel.com>,
 <joonas.lahtinen@linux.intel.com>, <rodrigo.vivi@intel.com>,
 <matthew.d.roper@intel.com>, <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>,
 <badal.nilawar@intel.com>
References: <20241030143418.410406-1-raag.jadav@intel.com>
 <20241030143418.410406-5-raag.jadav@intel.com>
Content-Language: en-US
From: Riana Tauro <riana.tauro@intel.com>
In-Reply-To: <20241030143418.410406-5-raag.jadav@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0010.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:25::15) To CY8PR11MB7947.namprd11.prod.outlook.com
 (2603:10b6:930:7a::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY8PR11MB7947:EE_|SN7PR11MB7116:EE_
X-MS-Office365-Filtering-Correlation-Id: 232c57a8-058b-4fb3-9cc2-08dd18f12685
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?clh4Y1hhRnZjZUlNY0ZYNThaR3BHMHFlbmExSnJiNk1NdDJDb2lWdlFaSHo4?=
 =?utf-8?B?YkNVTkhHSDg2QW15a3ZKMTZBYkRvV3ZRZWJvRk5mYkNxYWdhZTQ4L0RIMi9v?=
 =?utf-8?B?L1NkYUUwcGZ5bmI0Ymk1V3FxZzFQNzBLZUl6UGlwM0tPdG0yUkFRV1FSR0pH?=
 =?utf-8?B?QVZWUFRGcCtsUGxURFdIL3VFNzRCaXk0bDBwVGw2TjZMdlgybTN3bGUreWUx?=
 =?utf-8?B?SWtIRXRUWHVnbEY4ODBnOVZzVXcreFFYY2xDQkFqS0FoWlpBYWo1dTV0U0Vh?=
 =?utf-8?B?WWt0N0RxcFhGSndVNmNkZU01SFVoRC95VkFQS2NucVlGUTVUaXhnN1ozMkdG?=
 =?utf-8?B?Z0xCaTNvcXBNckFVaG80c3VNd2ltRVJuc0N3SHFyWXdUMVNOUlZoUFRvUE83?=
 =?utf-8?B?U3VSTzlaUFpZNm1qUjIwZEllM1owelpPd0Y0VU9tb1pmRkRaYjNMVHZBbkZZ?=
 =?utf-8?B?Kys4ZmZHc2pDdWRGNmRTdVBtSGZxVUhrc0E1Ui90ZkQwMGY1M25BUnFKTy93?=
 =?utf-8?B?NFNEN3dnRTNva3RuQ2x2eWRLUDB4TEYxbnBQeHdUQVhvL290NUZoajI0bHh4?=
 =?utf-8?B?aWhDWnFST0hOVDl1b01iaWpRN0w5bWpBWFExSkJ4aEZBMFJ2dGNWQTY3dTI0?=
 =?utf-8?B?QmlKeDNwUUtpdjF3L253clNvbEJBSE1RK3VNVW5MVFRWendIVUlNSEk3OWNX?=
 =?utf-8?B?VTNKYUtaVkE2MGtHRXd6YVIyaVpwUkFKWUdnNVIvM0l0Q0xZK3R2WEhIL1VL?=
 =?utf-8?B?WWpWRzhaQUJuRS9mYWVXN3ozWDZrcVRJb1A3RWV6L0phbWZKeFB2T2w0Ni9l?=
 =?utf-8?B?ZFRkSlBIN3BWazF6c0FqdHhOZHdma1F1cXA2ZG5OSHlrYStFRm9MWFRYd2gz?=
 =?utf-8?B?ZFhBaVRvby9MUWxGV0s2RUtHbGRZZnNSYWIxWnE2ZSsreUxFeXVoRVFTMlgw?=
 =?utf-8?B?QVZzcFpZSzBjSHFPcDZ1dStZMzlUdzJvUWdFVFFyR24yc0R6ZlZraGZ1Uk9k?=
 =?utf-8?B?QjVmRjRRdTJpdVdOTXBCdVVtSVpSNlc2ZkdxaDM2cWtaZmd0bzk1OUdIMnhs?=
 =?utf-8?B?R1dDK3ZDWW1XY0ZuUDA1UHZIRFl3RnZXNVJQWHdWSG9mYm1USk5GL1orVG41?=
 =?utf-8?B?d2JRS1BZT0hsQTlaTFBrYUVQcjNmTXJjclA4M00zN25EdUljU0FaZG10Ny9O?=
 =?utf-8?B?RUtEc1Y2Nit4M0kyYk96K213WEZkcnFGdWNxWXE2Ky9HUEFYOGh3TTAwUmlY?=
 =?utf-8?B?YWcxRnVYNmc1OXQ1SWtRNjBxS2FLRGdKOFJVd2VITEhHTHhYand6NDQ5cjU2?=
 =?utf-8?B?TS9sOXFXWkozK0gwSk5jTEtzYUlFbk9xTHNHUjM1aUhiN3dXZVlGUCt0M0ZE?=
 =?utf-8?B?T3hDZVdHbXY0Y0ZwNzFheWZhWjdHdjVDQkZJK1dpdkRQVk5tTXBOVjJkT3R6?=
 =?utf-8?B?VlgyZzJ4Yjg4cHhrU1VRalF2K0RtOXlxZDBBNnhxVUhzL0cwZThoeWJOMWZH?=
 =?utf-8?B?MUtSbzFrbWhBajdyUUI5dmJTMlh5YWpoaHVxMzFFK3lvR2FJZUU2U0NycWpQ?=
 =?utf-8?B?c0twWHVMMWIxSERsbSt3Yi81VXZSOU5sR3dYcjhuZk96TmxXeU5Vc096aTFG?=
 =?utf-8?B?blpCcmpPb0JrM1MxTFBxRkMrTEJiaktPMUpvbXNwWlBGQnZNSFJUN1Y1RTcx?=
 =?utf-8?B?ZnNYZmRzY1FtbktQaHg3UDBuNnlnYU5DQkRsWXlhclo4Z0hqbk1XZCtiakFY?=
 =?utf-8?B?QXNpWFBJMUZXSU96cnppb3ZibzYyeU5vd1puNjBCYmVBRDBYRHJkbmk4K1dj?=
 =?utf-8?B?TjFWaUEvNFBvRkRKcElnQT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7947.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?K1d1bmp5WG5ZdC9xYWRtUExadnZnY1krcE5kTG1QOEdXdmc2azdnME5xVG9h?=
 =?utf-8?B?bnZUNEloVnAwQkhsQTUzUTVPaUs2VFlEU0hlUE1Rd3M3VjZPUG1jQUowamlj?=
 =?utf-8?B?ZWFma3ozY2NJT0VyMkNKcXkyNzRXc2padis5QkYveXVCVTNwR0FUS1k1NmVR?=
 =?utf-8?B?L3VheVpOaDFydVFvaktIWUkwQzY4ZjhsUHpXZ3FwNkxKRmFIbmx0QitjMFhK?=
 =?utf-8?B?MWlyYXM5ZXhiZnUvU01jRnNMQmZPcklEWURoY0NJZVVFY0lSbll5c1YrbUVq?=
 =?utf-8?B?eEZnaGRYZzlTRjN2aWJwd015MW83RFJONFdaRHgvNWo5Rkk4MUVhU2tEdEpx?=
 =?utf-8?B?dVdvVlRhQlBMYUhZczE5TElpMGd3cis1L2RGa3ZUYzl3cFJVYmpGYjEvVGRa?=
 =?utf-8?B?VU1QM1AvR2kycTJJMkFiSjhka1dkSHN3NnE3NVBYNHdnYUthK3dvV2hreElp?=
 =?utf-8?B?YTJMVTFWb1lubGNyK3BLNU9MNmJodjNhdkZqNy9aVTVJZ3N3WnR0b0RvdGxX?=
 =?utf-8?B?Z0d4SFpPR1orZ21vZ0ZoYUhLa3FuUjA4SEY4Qlp3Uy81WFNCanlkaHlIRjhO?=
 =?utf-8?B?bGxMaG1xNnMzWmJ2YTg2b3NTUkxmY3NZenJuYmdLYittQUdlY0tHb25CcXFn?=
 =?utf-8?B?cHhMZ1VWL2VrK01GbTQvZEd5Qm5xWFUzYkpNZ2dFa2RrbEJxd0pYYlI0WEpN?=
 =?utf-8?B?L3NpVEFZQmw5eTVHcmtVb1hWa1djRVZWOTNIN2V5L3ljemNlZlRYMmxQL1dV?=
 =?utf-8?B?VGVTS3ZZbU4zdE5lTjc4bjZiTEJtR2dnUTRKVUU1M2VBTjZZa0ZxR2daNmdV?=
 =?utf-8?B?WU5pUVp1ZHJTNHNkRVp6SXd1VzlTQ1k2bmh5OFBMVUFCb2FWdGJRRm5GT2Rq?=
 =?utf-8?B?ellDeXVoc0JSaVhvd3ExMHREYXdxZDdETkVLYk5MKzk5ekwvYjZlellSMW11?=
 =?utf-8?B?TUl0U0x2b1dNSGI3UFZTNEpBUjBNMXpaenZ1ZEhYcmNBenZKSzNRaXptQWZv?=
 =?utf-8?B?WW9JN21MK1hGYWIvcks3UDl0ZmJSVkRqMjBhb0xqTnNUOTloNnhlcHJoUzA2?=
 =?utf-8?B?eEhlQ3pPSlBWcEpPNmpaWmtVcDNjNm5pa0lCMmtzRTlMNkhRa3pBdXc2ZGw3?=
 =?utf-8?B?S1FiZ2M5R1B6TlZqNUxzNFBCV3dSb1lQZk1JazZjYk8rbE9jV0x2VDV2TmtB?=
 =?utf-8?B?T294UlJrdVBMeDBMMHNYam9laXZPNU9oNWFvV2JhaFNvWGhwK0piSkhKQWVu?=
 =?utf-8?B?NWQ4NFovMnFobk9KTHBOUnArRnFYekJXRlltTkw0SmhyVDNudmhOdEJGa3dj?=
 =?utf-8?B?S2V3RUtNczA1VEVlYzRXeTF1cWNad0U1Sit1VE9yNGFZZnJCOTdvLysyOGNW?=
 =?utf-8?B?MWJ4VExPRDZFcWdFdEY0RjJHdDNCRlpKaUFHb0ZqblJaTFdSVHZ3UHdUQlB2?=
 =?utf-8?B?aWRHbEtSQzdxT04zRTlOYnNPUkJvMVB2SVFaL2JWTzMzZ0JzTnVrR2JQelRt?=
 =?utf-8?B?MFpEaURuclpzZDduRmxJTEh2T2xPTlk0azEwdUxvTUg0NE53cHdOelpKS1VP?=
 =?utf-8?B?dGloamRNd00xTGJBamRXeUkwTWxmYVhKKzJtaFJFR0tSb1NmTnZXQ1h5RlJK?=
 =?utf-8?B?WHhmRlVBQ3lMd2w2a2lpY1NjeDJzR1E1aU00MURvSjBseVN2S3hLVmgwcjBD?=
 =?utf-8?B?blNXc3c4MzFBWTMrVG5hb1lISC9TZWdzL0lKQ0Z6T1MvbkYwTHdQYmNIaUZa?=
 =?utf-8?B?N05iRVNITFlYaEd0a2l1SUNCWWZnTmZJcm52L1k2a0w5OU9USWNPQ09LbTAz?=
 =?utf-8?B?QUJvdjBaK1NldGZyMGpYWTRhNVRhN091VFZSS3A1eHBkbzM3OFE3bThXNjJa?=
 =?utf-8?B?b1ZDK2t5dWV6c3owbGdSTG9sL3UrcHhrUjRUMENsbk1sMGRmRnIrYWZkMXd0?=
 =?utf-8?B?SGtXeEtocjJ1c1RxcE9pcjlUeWxrRHp4UUczeWtFUDRYbGtGQmVWaDZ2WG02?=
 =?utf-8?B?Z1VDME9pMHBHcDNBRHFBQnZaeUt2K3kxVTdYNlA2YTRyZDBDaWJJbFR0N0Zv?=
 =?utf-8?B?TCtRZklyNlhjTkVVQWRWWlVRQnNHVCtNaG5MVDJIQVc1aUUzSkd3Q3VRUnpF?=
 =?utf-8?Q?VsNA1+oY4E+Ml+UaRjYoMwt+C?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 232c57a8-058b-4fb3-9cc2-08dd18f12685
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7947.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Dec 2024 08:03:37.2350 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bk8LscmnIQfr297PZblTykVOZgQfYsrxl8F/FykRY2Qk9ZMhwz2ZWumoBl17nszyRkkSSfZugzfzymi7UhbBUQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7116
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



On 10/30/2024 8:04 PM, Raag Jadav wrote:
> G8 power state entry is disabled due to a limitation on DG2, so we
> enable it from driver with Wa_14022698537. For now we enable it for
> all DG2 devices with the exception of a few, for which, we enable
> only when paired with whitelisted CPU models. This works with Native
> ASMP and reduces idle power consumption.
%s/ASMP/ASPM

With that
Reviewed-by: Riana Tauro <riana.tauro@intel.com>
> 
> $ echo powersave > /sys/module/pcie_aspm/parameters/policy
> $ lspci -s 0000:03:00.0 -vvv
> LnkCtl: ASPM L1 Enabled; RCB 64 bytes, Disabled- CommClk-
> 
> v2: Fix Wa_ID and include it in subject (Badal)
>      Rephrase commit message (Jani)
> v3: Move workaround to i915_pcode_init() (Badal, Anshuman)
>      Re-order macro (Riana)
> 
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_driver.c | 15 +++++++++++++++
>   drivers/gpu/drm/i915/i915_reg.h    |  1 +
>   2 files changed, 16 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> index 365329ff8a07..59c6124c9bc2 100644
> --- a/drivers/gpu/drm/i915/i915_driver.c
> +++ b/drivers/gpu/drm/i915/i915_driver.c
> @@ -93,12 +93,14 @@
>   #include "i915_memcpy.h"
>   #include "i915_perf.h"
>   #include "i915_query.h"
> +#include "i915_reg.h"
>   #include "i915_suspend.h"
>   #include "i915_switcheroo.h"
>   #include "i915_sysfs.h"
>   #include "i915_utils.h"
>   #include "i915_vgpu.h"
>   #include "intel_clock_gating.h"
> +#include "intel_cpu_info.h"
>   #include "intel_gvt.h"
>   #include "intel_memory_region.h"
>   #include "intel_pci_config.h"
> @@ -415,6 +417,18 @@ static int i915_set_dma_info(struct drm_i915_private *i915)
>   	return ret;
>   }
>   
> +/* Wa_14022698537:dg2 */
> +static void i915_enable_g8(struct drm_i915_private *i915)
> +{
> +	if (IS_DG2(i915)) {
> +		if (IS_DG2_D(i915) && !intel_match_g8_cpu())
> +			return;
> +
> +		snb_pcode_write_p(&i915->uncore, PCODE_POWER_SETUP,
> +				  POWER_SETUP_SUBCOMMAND_G8_ENABLE, 0, 0);
> +	}
> +}
> +
>   static int i915_pcode_init(struct drm_i915_private *i915)
>   {
>   	struct intel_gt *gt;
> @@ -428,6 +442,7 @@ static int i915_pcode_init(struct drm_i915_private *i915)
>   		}
>   	}
>   
> +	i915_enable_g8(i915);
>   	return 0;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 89e4381f8baa..d400c77423a5 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -3617,6 +3617,7 @@
>   #define	    POWER_SETUP_I1_WATTS		REG_BIT(31)
>   #define	    POWER_SETUP_I1_SHIFT		6	/* 10.6 fixed point format */
>   #define	    POWER_SETUP_I1_DATA_MASK		REG_GENMASK(15, 0)
> +#define     POWER_SETUP_SUBCOMMAND_G8_ENABLE	0x6
Is the alignment correct?
>   #define GEN12_PCODE_READ_SAGV_BLOCK_TIME_US	0x23
>   #define   XEHP_PCODE_FREQUENCY_CONFIG		0x6e	/* pvc */
>   /* XEHP_PCODE_FREQUENCY_CONFIG sub-commands (param1) */

