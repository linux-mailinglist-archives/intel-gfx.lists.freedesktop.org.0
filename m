Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WFlCFj7PcWnSMQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 08:18:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B35D562720
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jan 2026 08:18:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3B64B10E189;
	Thu, 22 Jan 2026 07:18:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hhpidbd5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F96610E189;
 Thu, 22 Jan 2026 07:18:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769066299; x=1800602299;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=1eB/J4uP6p0vgEXMcR42DNvKLXPoZAjqcWQx02u7JGM=;
 b=hhpidbd5FTAEjHEAneyUYWNTdqpSgf4yoNepVeqXyyf5Rsbr6OfMsj2r
 iY6WvPyzUGUHCm4QSr0tN8xTcapaI6VJaVBD1TlTgEINYHUQ4PHmPInZa
 arBiywb4MytT5Q/Kp9KWVojhRfkR24WxP6gBshVa27f8iNze8GHooa/bL
 3n5buoa7hmESv6YbYLh5lxK/EzPdR8NO3nUXSxnaEEbcDY1/cQCoT+Dua
 GStruporXi3DYZgYNkvi5WP2a15MfQbFHCXSde84fzsBBMy8vemwuNV0b
 7WB8+oCHB5CTwDmO4cWI8I7ms1E2FRSzUl8b0FVfdhkaqDhnVMsjXWKfb w==;
X-CSE-ConnectionGUID: DVxheKrXRW2wpmslMB/02g==
X-CSE-MsgGUID: VR/IU2YpRw2CZiFG120YQQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11678"; a="70218515"
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="70218515"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 23:18:19 -0800
X-CSE-ConnectionGUID: C1Etdl82TKe8t09yuRL8Zg==
X-CSE-MsgGUID: 6+jJI+7YSBKkTTo3jbfXOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,245,1763452800"; d="scan'208";a="210813832"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2026 23:18:19 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 23:18:18 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 21 Jan 2026 23:18:18 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.70) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 21 Jan 2026 23:18:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=g+TpYaUs4h2oomP0yD7MeDJAGPNYZtcUvrT0c+AaS6i0U1yWQvs+fYycqsZmurHny179CiKiXIE5SI52Iw6FY5VDXhL+MrXygIfZ2bOUczOuMjYTEeUKpuY2vZGrmrVNG14GqixsMQzoQBh2ui4Wt8q68qgtWgh4RWD7/Ji5kNRqSkUxXZ6VImoByi/gA8QpBFwxtzTue55cjXhFPk3SyU/m4bcJE+iAduvMsM9UUn78OT7eyZ/yA+WNjOyteEBkdM52Z5MBowoBz0uGWkmn/g+yGtguNlDoMxFWZJsv/Lr9B0WAZYeBX2hx4dH1E+/o2wj+rSF2R5HqgixJqGLZLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xPZrAcNSKlZlSkzDse1kWyrFvBW+Hi5+gCLjApdW53k=;
 b=BMf2ueSezb2b4UYycNpiZ384YYHAmsjZO5xO55LtjJkkgTiG/12poRd5Ijz7T+HSYuig6Z0lbZQYV7oqEfdLQKVt4LK5T1+glb1FBd0a8TbMEEIkYNRg0S32bQ+8LldSgWibQlswyly66xomPBxkPWrICM2GsfyVe80hP+3/7jUQkz8fkCrGmTCFzc1ZI1q8Mbyj8xg8tUihS7jFiagU+bJun3rw5k0LSJRqtPaGHnQfgfA9dXoG51lX79ubRx0sWp9UlRrsi3Bqtw2KCqUwO/zxEz7AFsEKtMi63LiSL5fBeCcWr0RBXamFPXCxX7+pQ1H7H1Nt5OMj+eqPxHWz2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA2PR11MB5147.namprd11.prod.outlook.com (2603:10b6:806:118::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.9; Thu, 22 Jan
 2026 07:18:15 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9542.010; Thu, 22 Jan 2026
 07:18:15 +0000
Date: Thu, 22 Jan 2026 07:18:06 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <I915-ci-infra@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?Q?=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_drm=2Fi915?=
 =?utf-8?Q?=2Fselftests=3A?= Prevent userspace mapping invalidation (rev2)
Message-ID: <6bm47cmwl5nuu7r7jorwp4ps77ydsfeebtvty5ycbomlox4saw@trhuhlvxco2w>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <5biajlwhi3oaep72si2dj2lhp2xwrpfa2gxqc2l36464uishjo@g26isdq64nv2>
 <176883887747.168790.15170365340405806390@a3b018990fe9>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <176883887747.168790.15170365340405806390@a3b018990fe9>
X-ClientProxiedBy: LO0P123CA0010.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:354::19) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA2PR11MB5147:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e5917f1-721d-4d90-30c1-08de598668cd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?R3VpbUQyY1VoNHorRm01ZHFxYTNyNk9lcU1KYnptQklUakN1ZlZBNC8yc0gy?=
 =?utf-8?B?RkcxZ1RkaGd2QUF5bG1JQURVVkY1cGlHeXFkY3ZJenY2YS9jT1ZCNFJ6dlV6?=
 =?utf-8?B?RHdLOGpmcEJhQm9YUDc0WC90dFJVVjRLeGRQaStZM1AwSUl0TUloZFlBWlhY?=
 =?utf-8?B?TDdQZ0xsTnl5L3ArWm95SktWbklJVi9ZRFgvZURvV1lJbkNZRjBHM09DVW0w?=
 =?utf-8?B?MW03dEYyanlIbWg2SzJPTjRPS0k4d3BVMzlHNHVmMElkM3NtRXZBQnNXdkor?=
 =?utf-8?B?cXltWFM4b1ZnSkN3REpsdmRvZ0J1VEVNS2xHVVhPMk5vM3p6R2RWeVhwbW5V?=
 =?utf-8?B?TzJlU0lFeEtYMTcydTlBZ1BuN3Bqd0NMalAwOHBnQnQ3ZG0xLzllWW1IbFNs?=
 =?utf-8?B?WEJEVHlOSjVCNXgyR3Q2dXJzaDlrTzdkM3JTUkNSeWN4VWJsT2ZQWWI3enJN?=
 =?utf-8?B?MXZOT2Y1RnM5bkJtd3BSbTR3THRNelJ0bG42L0VKTFZyTkR0cVJKa2gxT3ZE?=
 =?utf-8?B?QkhmSDM2S1hrWkNCV3JtTERTUnB4WVBoYWkzTFdEQXFyR2paN1l5TWRDMndU?=
 =?utf-8?B?emJOcDhIU2pHWUpHaHh4T09CYVgyekxjaWJ3N3Q0WElFVXdOblRGOFV4RjhZ?=
 =?utf-8?B?ZTNzY2pDcTZrcUJKWUlIaFhPUEJtU1FHT1dHTXRQcTBjWEs1cUVvNmVnS0ZF?=
 =?utf-8?B?ZXFxaHZhSTRKcVBQQi9aUy8zMnZQcU5RL1BuL2s4QWx2UndrRHJsN094Qith?=
 =?utf-8?B?WjZTWVhGQUdOMEZ5YVYyQkJkSFE0Ky82UC9uWVpBRmMzejVucGtRdmNtWUY4?=
 =?utf-8?B?RWszSHdtc0hZYW9WVlNhdmFRWVNCQjlSNXdFTy9BSG5IeVlqNk5ZVEE0eCtE?=
 =?utf-8?B?ZFZNejZxblJoSDh0ZmxKRiswU1dJK29KZFdWTStDaGxub2FXWUZEZTRiSjB6?=
 =?utf-8?B?UDhlQ3g5WENtNmtQK05QRUFmbjRpS1kraXVJZDZCUmRLandkck83MXI2Ni8v?=
 =?utf-8?B?U2JrbWxZblA2LzdVaVVoOHdzUXErVDlCbVBNbEoyYnJwVmV5MFV5a0RQcU5w?=
 =?utf-8?B?Vm51M0d2Z1VIVTZGTmRNUFFyZDgzSVNGNUc3bFE2UERaS2FSNVYvaW05NEU0?=
 =?utf-8?B?ck5GSFMwZWJJeDMvWkhFbVB0SnJkOFBSdFRONVVTN1YyYkdDKzQyMnZKaG9U?=
 =?utf-8?B?VjNlWEl5c2RzaVBtUlUxcjhMajBuVDJHVC9QY09DVlBNeEN4c1ZQMjRkOFo1?=
 =?utf-8?B?Y1N2Ymg4SHlYazRjUks0bFI0bktZZm13K2NHcGhwRUFGQ1ExNUE0cUJIN29X?=
 =?utf-8?B?b1pleEwwbzBnZWFjZ2JHL2ZzUHVUOUVPNm5BdThRN1JQalU2NXovdFYrTkxW?=
 =?utf-8?B?WWJWOVlqVmYvaG9Tcm15WVRTR084MEU0VjY5cTR3YUZ0RHZrWGpldjAxRzEx?=
 =?utf-8?B?N3VvUWNBMHU2LzZBR2E1eDJDK3JDNWxOdm90OVJzZ1ZZdHlLanJ4aWgrVVFQ?=
 =?utf-8?B?dUhnSitaa2JtSzhxNmx0NlVEU3dwR0N2RDBOQnIxcWZhc3F4dzZzcjNwRy9N?=
 =?utf-8?B?Ykd5MWcwR3ZBTXlZQ1htNlFTRktncC9QTlJMNW1QZ2VzeXRGWHpoTEk2OVpX?=
 =?utf-8?B?SUl5aklETlFGY3lMZUJhRHJ5QUx1YlBkMlRpMkJkaW1vZmpBK00yZ2ZRckdT?=
 =?utf-8?B?b2lMdVcwRzg3MHZxbmwwRXhydXhhbllIS3FZaFdwTDhkczlYWU5OTDJUMklJ?=
 =?utf-8?B?ZWNpdHdSbjNxR011SkhHOFRQemJyVk1tS24yMzRLVUY4eDdEdVdFeTlrM3RR?=
 =?utf-8?B?Ly9acWl5eG5EamFWRyttNzM2Z0l1a3RRWjdKbjhlUjdCZVNITk84cVBUSitQ?=
 =?utf-8?B?c1pUUlUrMDhhNWZwM1pHM3lJSGhiK29HbnlpZDJwc3MvREJIM3dna3hTc3Fh?=
 =?utf-8?B?Y1oxK1U2ZzdpbHZCczZleWhwZXFNc1hxR0I2dktCZUZRbTdKWVRrNkQveiti?=
 =?utf-8?B?Yzdlc21mTDBrM014VjdpdFVMc1NwUGlPM0tBUW0vSlh1OEkyelNFS3U4OWFj?=
 =?utf-8?Q?j6TCNp?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ni9aV01UOTZNTzhJajAwQ3pEN2hqN1U4R1VRQ3pzREtwbGltQTZqM25pdm0x?=
 =?utf-8?B?SWM4UzRpZFdkdGdQK05VU2ZiR3hsTnFjUVpCQjNwSmZ2OFNIM2x1Mkt0d3l0?=
 =?utf-8?B?WThrSE5WRU1ISWxaYjRXU0cvdGU5VVdkeHpsYWRTcDhIeDUyVHgxNHh6ZWlE?=
 =?utf-8?B?MHd3ZXFWS3Y4MVZsOE5WdUpxY3RvQzdqWHBUN1hrZ3V1SmdUWmROUVhFcS9h?=
 =?utf-8?B?Y2FaTVJXT3dBcGlxM2w3eTFDTENjSmtGbFFRaXlBTytYUlJ5dksvSzhoSTBz?=
 =?utf-8?B?ZFB6RGVJRS9VS0pVeGk0cWlWd2lMT0NVUWtSekZuNDlKdTJ1aHdHRGpvbHls?=
 =?utf-8?B?REJjVnJhN0lyQWZMTURzVldwNVhlS2lIUzhNK1RCUUI4eVZHd0dTaHpCV010?=
 =?utf-8?B?UXdTU1NXZFBCdWttS0MxSHBDV0QyYVdZc0lQNWplZ1BSVzNkV3dMOHVqVDdi?=
 =?utf-8?B?d0x2QXNJNlMxMCtnV1B2VW12QVdVamJuT3Z3VlBwOE5WaFk4U0Q3TXNIOUl2?=
 =?utf-8?B?NW9vcU14bnNrUmdrZEw2Ty9VOUwzMEtWWUUwRmRmMTFEblhDTmpWUDJhM2N1?=
 =?utf-8?B?WVpxNHFpUUhXRGFNNnBjYVo4OEl2cDFKQmZwNDZQaWU2aEx1NllQSU1zNk5G?=
 =?utf-8?B?OW9ESUsxOGZwMXlpWnpoM29iS2xpQ3I5LzVpZUFFUGtIcm5jcTRPNHFGMS9o?=
 =?utf-8?B?WTV0UWJHdy8yNVNCNTVSb0JhVU5VOWRPbWVNbWJ1WGhkVmNvSlhJOHRPU0Vk?=
 =?utf-8?B?bG5tT1NyWCtpMkVrTlNnbmJoRGtMYlUrbXV3V2RVSlR5ZWtKS2txMWdacE5s?=
 =?utf-8?B?T0ZoYjd0V2NaWFNnSjZIMlZOL2dVSktPK3c0L09DQXhoQ3RzbXlZLzJsZm56?=
 =?utf-8?B?VWl1VWlUTTFJVGl4eXJrczBRS3h6WkdIeWN2NERkeVQ4MUt3QUhFZDFPRk92?=
 =?utf-8?B?RkZqbWt1aklncjFuVGNsZWwyYXRJTDNRWkVPK3FIUE14c3hIaVBib1lVZ09N?=
 =?utf-8?B?Vm5GWXA4Sk9nVXBGM2hVbkowY1c4TExzaGNwUE1jcHQxUWRHNFo4bmlNSFNK?=
 =?utf-8?B?ZlZFS0ZqRmkralZSVHpJSEY3N2prQlNHUHM0Nms4Z2ZjZDNFcm9hdU0zTTNX?=
 =?utf-8?B?d3hlMEFXSytkcmJqQmxBOW1sYklhWVU5UUpDODJhaDh2dUlZS0RPQTc1QzFP?=
 =?utf-8?B?RlplUlNXVEoxclN0RzVjVVA3U2dzVDFYR1V2NlJKU3VGODdJWUdMRzJGTjlQ?=
 =?utf-8?B?OEZWaUlzYkFGWlJWQ2djWjd5R3Bad3JCbHd2ekQ5Mld3OXBocU9IV2pHYzQ3?=
 =?utf-8?B?TDV4cjNPWXRKTnFTZGV3UE9abEt2MGhScmM0aFR5K09VTHNhMFRMWXdnUjZv?=
 =?utf-8?B?QUg5cUEwNUQ3VUZqbFAvczN5bEpQUCtHc01US3k4RFh2bVBGMWo3M05NM0lo?=
 =?utf-8?B?WkNyUWpVQ1lRTjUxUVQ1Z0M4SzJGblFsL3NuVWZGdTh6VlZJU0s5RkFUV29N?=
 =?utf-8?B?dE5xM1lYQzhlVGtuT0ozL29CRVlmWlFmRUpDU0RQUTJPa2JjVGtSSy9nWjRU?=
 =?utf-8?B?NDQxZ1htQXdhNXV4TFg4c0ZQS0drWkVDQStJeXZxQTR5NTBTYnJsY1NBNjZj?=
 =?utf-8?B?Zi9ZeXplOFo1VzZicXNkY3hrU3doakJMWnF1ZWtoSnBIM1BPZDN4UG9XQnlv?=
 =?utf-8?B?ajQydkxXcGo0UVRUTnFwb1h6YzhEZ3QzTHBoRFZXV1dhNlRYaG9TbVFXNGt2?=
 =?utf-8?B?N2docXpIN3JhYU5JdFpIRUMzYzdxVWN6WmpjSGpialcyb1RYbGNGUWpCMkdH?=
 =?utf-8?B?NXhveG1rS2o1Mjc2REJ6eVRrZ0cwZC9iSmI4eDVkVHVoeTBLYldZTjBOanFs?=
 =?utf-8?B?aGVLRWY5cEZreGw3cVdrd2twSkQyUSt5bjVCYUZ6VmFDajVTZ3pqckRLb2U2?=
 =?utf-8?B?OHMrWVA4eGFpZ3Q3WW81YXhFUkJhK25xWVdQWkRjTnNiZ1UyUDA1b20yOHJ6?=
 =?utf-8?B?N1pOTHVFUG9VdmRHbnR5bkhGWVZKeDV1OEUrSG5JSG94UVlpR01pcFpGVStU?=
 =?utf-8?B?YjNJamM4RUlUWFlUcHcvVWdQTUtrL2s2cXBRL1NPMnVQTDZncEV3Y0pKNnor?=
 =?utf-8?B?dVVzWTBsVHB1a0JwaWtVcTJZMHl1WTV4clZvaDJPOG9WSE5uVUVaYklHWUR1?=
 =?utf-8?B?RWQ1K3JPWEJtMjhNZFp1TXl3TW9PL2VINUhiSUNqYWhmeDhLSjNoRVRRL1BQ?=
 =?utf-8?B?YW5vZk85cEVKdTRScmM2Z0JLWUxTQzdWZ0JrVVZRN2JhdzVKeU0zR0R4Mkxx?=
 =?utf-8?B?NE1yaENNRWpBZHJXdVhuWUJWSHAzYndzclhDRll2ZEVKNDRnNFBENTFjamF6?=
 =?utf-8?Q?cAxUCi6Bw00UARqo=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e5917f1-721d-4d90-30c1-08de598668cd
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jan 2026 07:18:15.4015 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HzRGSyGEogPzmvo+pXxJrI7/uBZa15R17/7jHBfV2lqn170ZOdxlonvqxLVozE6EF6YgTLoUQVpMzY7zUIlqAtNgUSFk0XNmHGRihYOxy70=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5147
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[01.org:url,live:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,i915_selftest:email,lists.freedesktop.org:email];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: B35D562720
X-Rspamd-Action: no action

Hi CI Infrastructure Team,

On 2026-01-19 at 16:07:57 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/selftests: Prevent userspace mapping invalidation (rev2)
> URL   : https://patchwork.freedesktop.org/series/160096/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_17843 -> Patchwork_160096v2
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_160096v2 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_160096v2, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160096v2/index.html
> 
> Participating hosts (42 -> 40)
> ------------------------------
> 
>   Additional (1): fi-pnv-d510 
>   Missing    (3): bat-dg2-13 fi-bsw-nick fi-snb-2520m 
 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_160096v2:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@i915_selftest@live@gem_contexts:
>     - bat-arlh-3:         [PASS][1] -> [INCOMPLETE][2] +1 other test incomplete
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_17843/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_160096v2/bat-arlh-3/igt@i915_selftest@live@gem_contexts.html
This test does not touch gem_contexts, so this failure is unrelated.

-- 
Best Regards,
Krzysztof
