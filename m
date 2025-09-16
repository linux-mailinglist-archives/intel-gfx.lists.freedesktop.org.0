Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF3BB58E82
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 08:36:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8A9410E678;
	Tue, 16 Sep 2025 06:36:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dWRV58lq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B754410E678
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 06:36:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758004562; x=1789540562;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=DY2OB1Eq4XivZOHHMtStssZoUh/0GVWUfgnZEqHb0CI=;
 b=dWRV58lqMfM49dq6Cz6flyYVfTobLuC+5gVpkKQ2CzgVWPmLDNENaWiC
 tn/fQKiogBDmln8LY+tJFKndEtS4eaz/eYLrSrdUUSXAVFkFmyHyr2p6f
 ufUYkLbF6fUebI341VlzAug7Z6Ikz6dwRrVfIFm1DOKAvT7dubl2OVwQj
 OwLw6qd4t33/1kvoZZ4Zwcwxf3bF12glQjW8Bgeo2nJ1BIwly1rPn3fjY
 Aw9KycfbuhOUYQCWn0RQ0t+7ntyBfc4x01/G0zIq/mbR4/WXyxCa2Zurw
 6OYpuLQXm9FfJuuCDizzYsXtrMb/+Ks+NlqKdSmI3ewvQO0hnaJkwv+nE Q==;
X-CSE-ConnectionGUID: KD8KOOZuSXOP7iJQmSNE0A==
X-CSE-MsgGUID: tX/n3emCTQuxtWt9Fyy0Tw==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="59970776"
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="59970776"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 23:36:02 -0700
X-CSE-ConnectionGUID: PWKqLG1vQlO/3lf3R6jwBw==
X-CSE-MsgGUID: HPV+LpAyTD2Ojw+lz4u6xA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="174406044"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 23:36:01 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 23:36:00 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 23:36:00 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.41) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 23:36:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PFX47ssxF3o9nzHK0KNM14TSwC52Msp2rlMFRgr0q/WPxkC2Q/6llRhyZ3zS1dKfdijWaeQIj3Nd7g88eM+Cs4z8DUjrvAHaq18+GcZd31ICwNQcUnFOYnLhUI3dJx79NztpMk4LbWANypqpOrpzcGg7aWKZ80ApAgChWxF9YjtWB0Bs7xFL4jiX8+6wt6s2jAq14O0e9W1dsD2XbtKu8H91iVlOL5yU5HczXBuuQVuMr+d3RNSrB7QyzZod20wwdCAQrwGv65DYX62ags7kL5rm/9xPDpxKIlrA4hj3YLKHpyLmj7VJWy5dED1N6D/qB+md43xIIABinvf2cL6ZcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VeFQq2ovhGoSMqwlSTb3NqcK6wqwKYPh8lMOgfYhkcA=;
 b=hnIsnxVDtU/GK+8HTVVuPUrwXhYNTUwJNBdBdaxPt8/XlvS2D1YGKrHqKuOZ3ADEouyHSkINKxByezRYadr9mdI/tWBwkBj/qS5kM/akcrysZaaHs55EkAsKlDIeTUcmvFVIaS2Si4X1g8LNW9tMxhrTUVJfk968qtkj5+/v0Mnt1QGDDn9XRpPbQyatAlfIs0mJ6xKl9qTxAydveU40DTn7zgiKDDljmzncjQXBHg5kJRX3sntAok+ShFi0sQiBSwpzbheYckVz+pDc8eEtUbr+IOSC261SafdohbX21Mf1NVQUZ5VKSBq83HyYY1nfPj/cWcGITs+T/67RVjAoGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW4PR11MB5823.namprd11.prod.outlook.com (2603:10b6:303:186::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Tue, 16 Sep
 2025 06:35:52 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9115.020; Tue, 16 Sep 2025
 06:35:52 +0000
Date: Tue, 16 Sep 2025 06:35:47 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v3 5/5] drm: Avoid undefined behavior on u16 multiplication
 in drm_crtc_vblank_helper_get_vblank_timestamp_internal()
Message-ID: <25b229ef5a578009bb30e811beb357647a57eaf1.1757576103.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1757576103.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1757576103.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: DUZPR01CA0272.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b9::12) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW4PR11MB5823:EE_
X-MS-Office365-Filtering-Correlation-Id: d40c79c9-bb91-4bdc-9ec2-08ddf4eb4885
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d0dEMWVReHcyNVh5QkpwcXV4YWNmTTZjM1FrUS93SjRZaG9xVmRiSEptU2hQ?=
 =?utf-8?B?RnQ3Z0xwY1NMRkxGMVJZRnVtNGpueE1IV1F5bU1DUlpjZm1GRzJDWjRmR0hU?=
 =?utf-8?B?ZysvcUgzeks3ekxpTFYwMG9uUkpDcUIzaUYyMDRsaFVNc05FYkRPNlhwcnZV?=
 =?utf-8?B?c204TzI0UVhVOXNiVzJBdmNqUG9NMlB5MXNEY280bWx2NXFQR0RkbnF3UUVC?=
 =?utf-8?B?OGE1Sm9tR3FKZEFVZWxncXhJcG56THdrZTQraWoyNjZDUHd6dDcvZmc0KzFx?=
 =?utf-8?B?NXkvTTJEWm9OK1pSdGZXd2lXQjV4VDJQOVV2bDFsM2MyNllYYjNXY3hRMzRG?=
 =?utf-8?B?ako5WUhBajZpSTZMRnV6NlVaenFzdGJlck8rcENKMjh1TGkvTThvVmZzdmVQ?=
 =?utf-8?B?R2liR3l4TGZ4MjFkREFDdG1abksrM2xYekovS0gzZWZqZ2l2MUhLMEc5Mm8y?=
 =?utf-8?B?ZEJtZ1lDMmpvT0JOYnU2R0FuMjJSaUpSc0EvUjBBWUM0SHFwVjl5WHRFejk4?=
 =?utf-8?B?R05KK04vUjNtZXovMXRvVDR2UGp6QzZVRzZEUU42RjZjcTh2Yk82TnlyalZu?=
 =?utf-8?B?T0VCVlA1UkYrVW5hdWdUNWN2Mmx6V0krWmRHZHQzMVoreHl2MmUyTmxDaG80?=
 =?utf-8?B?b2tJcDdkK0NReFFrcTMwdTFJUHJWaUFXVitqck1ad090RXFtRTJ3UlRnRDRm?=
 =?utf-8?B?M3VLZTdIS2E4K0lQb0loakhJempLL1dEVU1tdW9rV01EUXU5U20xOENBQTZu?=
 =?utf-8?B?VjhneVhsbTBPaFd3RkQ2d0ptTmppOWVxanYzSEx1Y3REMS9BUVhBY3l3UXF3?=
 =?utf-8?B?T2k5RWhBM2hRUUptRDg2dzBDTFN4ZVFTMXdlRHJwSDdIcEZwUWRpam9HejEr?=
 =?utf-8?B?cTdXemRya1BudUl4TzZ5MjJIZ1k0QnphNDl3Y1hDZHF5eU12ZHZVR0VvSTY2?=
 =?utf-8?B?azAyalRobnBscjd5d1IyLzVxeW5vT1IvcGk4TmQ2Yjl6TjhtM2xUNUpmQ1Nz?=
 =?utf-8?B?b0VXeXkzMG5WblNrYzBiMTdxWndYeDEzY3pNeWtEWkhiZHRPYW5QQWc4cE81?=
 =?utf-8?B?ZVNXb2VjVnBFQWdXL2s0RHEyVDF2VVYxd01IVWpSUXFQWmNXYWlvU0FNVXlq?=
 =?utf-8?B?VXd4TSsxOC9hLzRodkxIMkFqc2E3cmkyYmVtSkJodGNsNU9RWmlhWWtqTnNt?=
 =?utf-8?B?MUVSMmhwQm9YVzdrLzdDVUlMcGZRaVI4RjVDR0xoQkFocWpLWXA2aFFjUnNK?=
 =?utf-8?B?NUNSN2dTbVFIanRYMXRmSmVRNUVwZDBnTnBRYW0yMmV6Y1QvbFpkYVdCVmNa?=
 =?utf-8?B?V254elZTWGpVMkxINFpva2htVUd0QmRaSmpLL2V0SnhNdXdjVU5QbHN5d0J0?=
 =?utf-8?B?U0xqbTZnbTFVTmZzWE5FUXF4cytHSjQraWptTlJlaXNZa1lleWR1amlhaHFa?=
 =?utf-8?B?QXEvaTFSZWV0QitFSmtwaUp1K052ZHBqcnhlci9UcVdsZUl4N2lIRHFydFJt?=
 =?utf-8?B?djZ2ZGNwWGNxTjNwQklRdU8rbGU3ckIycTM0TlU5Rld6dWE2azFYV2hjWDdD?=
 =?utf-8?B?RWZsbDJkWmZNenhTTnpmaHlXVzJFVGNKK21pQ3BXMzBoQ3B0a3pKU2VMRlFU?=
 =?utf-8?B?SURZajRjOHdUVXZDTmxScUlDVkZJSnlqVkhBMEJiZEE4VzBHeWZUTXB4c1di?=
 =?utf-8?B?SVR4K2RPUS93V1VncmhGa1FZUlBzcUpJUDRHRnBkdzVWRGgyTlh5ZXNIbHho?=
 =?utf-8?B?dTlvVlFZTnhBcHhWNXZMNnlxL2J4Si9jUzJMMVhGME9abWE1YllPREdmTmdP?=
 =?utf-8?B?M1ZSRk8wcE0yVHdZM2ZtRGszdHhRdlZvL1dTRDRzU0hXRnVvZWduNmFzQzVq?=
 =?utf-8?B?dFVxbjdHWWhHd2NLNWw4L29scVhhQ1REVExwVzBCOU1SUFRVOWVMaFJETWRr?=
 =?utf-8?Q?DOuyPRwR1x4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WEM0MGJWR0NWK2xycUxPclcvRWxRd0M1bUZnRmF0emhpV2ZPc0ZYaGtmTkNz?=
 =?utf-8?B?ekpUWGxRa21WUmtjK1ZjT1lhUmw1bzlUemV4ZDRNL2R6VFc0NHdzcEpTanRC?=
 =?utf-8?B?VGNpM3hhUUtxQTdZUzVSbVozbmEvMU14VmVvQUYrZmR6R0QxKzVzaWpLMVM1?=
 =?utf-8?B?dkh0L2dIR3NxZU9QTEg1OWZXQW84cGRBeDJFUFpLNFBlNjc3MlVOUklkTkVI?=
 =?utf-8?B?WEpoN0Z2Wi9EVWw2TXpRSEU4R3BSOVR5aXhRTUVoRGlZdXg3NkIvbHlGcjJu?=
 =?utf-8?B?cjRsbkoxYkVraU94RWVzcU9OTElXeXNMV2w4NzZvWDRWUVJmMkE3Vk4rWnQz?=
 =?utf-8?B?ZUdMOGJtMHA4VWNCN1llbE1USXFuM2pqUktjM0VDK21PT2l1YUxwdmV4L1RX?=
 =?utf-8?B?ZFlYT1NUY3QvOXdoUWdMQmM4T3NCY0VnWE8wekF6cE4vaUZjcEdickRWeDRE?=
 =?utf-8?B?VW8vYnR3VFhJUmZPSFRVbHBpM1l0MmdmZCtQUDVuRHFjWnhGOW9oTGFYZlZ6?=
 =?utf-8?B?eWUxMGU5QTBkdGN4ZHJNWGRsZEloc2ZPSE83c3E3ZmJWSVJWL2tzUjgwa3ZM?=
 =?utf-8?B?N1RHNlFjOG1VU25ucTgwc0Qvb2pSYUZGaENZZzNqd0FsWnF1TjJXTm5SUUV4?=
 =?utf-8?B?OXpkN1dqaHQ3d2ZFQ2VYb21Qc082bTQ5d0FCZnl3THA0R3AvTmxhOFlvaE9C?=
 =?utf-8?B?VjhzMzkwV2ZrK21QSkw2VVA2dW9tbFdqUmVtVjFQb1BVRDk1bUsyZ3NYM2k3?=
 =?utf-8?B?aDFjakZJVzJhdlN2ZXNDUE5kTjVieWN3bFJvemtTQW5ucGkwaUpoUXdjVzZm?=
 =?utf-8?B?NGNRTmhtV2dDRW1HUHdzVkZ4NXdJRDRuVnNUS2VYWXI2MVQ2R3RUTDd3b1dj?=
 =?utf-8?B?bUJsamJZWWJtOFNKZ1FpRm42bXpzNWRBZlFYUXFPa3hpUHdSSFdETko1dGwv?=
 =?utf-8?B?OG1UNGY5TFI3SERKVVkzR0oydEhUM3crK3pmYWpwT3JZSEgxSUt0NXB4VnI3?=
 =?utf-8?B?SVJoeTVhbU0yZEkxdGRTRDdKRU94cGo5Q1pjejhGcHRySXFQZzRSeTZUNkll?=
 =?utf-8?B?eGFVcUJQNzVrRUNLV0RuVW9lUU1RQmthUVIrc1hLNDRJU0tQVW1vejF2TXF1?=
 =?utf-8?B?czRjNXJUOVBHeEhlSm96dE8wMUl4SXY3SkI4WUg3RWVYRk9jRStqZ1pvMnBV?=
 =?utf-8?B?ZW05MzgxazUxRUcrUjlseHFQc05oYVBRTmhZNGVYYVVPOVg3c3d6ZUczMi9O?=
 =?utf-8?B?Qk9tVG1Wb1dya3p1UVl3U1g1MnQwcW5vU2V0ZzJOQkN0cGlGUGNEWGZCcGFO?=
 =?utf-8?B?MHVzakNYTXNnTkdSTlJpeVA0VFlOb0hQdmV5cTdqUXFrVnBPMFZiWXpSYkFP?=
 =?utf-8?B?N1VLSDcrdWRjYjRHejQ1QWorNFpKUlI5eUd4VkN5R1YybFcwdEZQZUR3Z2J4?=
 =?utf-8?B?blF2Q08xbTR4eGk0cWsybVJKaThoN294VHg1SWtmTG1tRGY1dVJoeXNGbGg4?=
 =?utf-8?B?R1V6MTh6ZEJSOE9pc3MrMVZPV1lrMWJBTFN3K3RYMUk0clZ2ZlorbVhHaWV2?=
 =?utf-8?B?eklCNEZYYXFCSVhETGtveFVlZ1k2WTFzRnlpNEJOSmJZdUV1Z21TY0NQTjVR?=
 =?utf-8?B?ZjF5bXV6clhqS01hYU11L2poR1BwK3Z0Vi9LR0J3VExxSGF3Lyt0d1BEa2Vq?=
 =?utf-8?B?b3RJY2dXSXY3Skc3VVVSWlY0VE1ROExxRnl3eUxHUkhMVGFYcG1uUitiWTEz?=
 =?utf-8?B?TWxVU05jTk5BdnF6dFZYYlVHWU1EU2FPN2szTFA4QnNlamNzZXZpMExQQ1dQ?=
 =?utf-8?B?YkZuQjZzQzl4QjZsbCtBdlVxYmw4WmZiVnVJZU12eUdSMEg4V1dYOHcxdGor?=
 =?utf-8?B?dDkxRm5SbTZYSW5RaWVReXJmS1RiQk43ZXptSG0vdHdYdkVuYi95S1pIRFNU?=
 =?utf-8?B?VDBKaVJRYXJBTG8zSjZnUGV3a2tpbG9heTlVeHpVVmhnL2pyMHptcFBhMDM0?=
 =?utf-8?B?OUx5K2RFeW8raS9KZzlXbmtTT2xac0xkZzlMRHcwc2tKQnFiSVZyVGNHQ2px?=
 =?utf-8?B?Y0xKVG4rajhkbFdCczU1QnJ0aCtVb01YOHcwbnpNYmJvaDZmTDkyZ1BKZFU3?=
 =?utf-8?B?UktDem9vYVh3bWRtRGRXQlR3MWRlaXd1YkR5OUs1bitpMi9UOVl0b04zZVpN?=
 =?utf-8?B?T2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d40c79c9-bb91-4bdc-9ec2-08ddf4eb4885
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2025 06:35:52.8811 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S9GKJBsMUwWZ19RosbdzGLguMKeX2Ic6tHBugzCEngB6ZdLIIOxBVAvbbrKwYH8Gm3Mduy2uE261eBX3gp+RUD4cBjZaXfsu6LL6VHApfhY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5823
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

vpos (int) field multiplied by crtc_htotal (u16) may cause
implicit promotion of the latter and overflow the result causing
undefined behavior.

Cast the u16 operand to (int) type to avoid that.

Fixes: 3ed4351a83ca ("drm: Extract drm_vblank.[hc]")
Cc: Simona Vetter <simona@ffwll.ch>
Cc: <stable@vger.kernel.org> # v4.13+
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
v3:
 * Change the cast to (unsigned int) on the first operand to a
 cast to (int) on second operand, so the value of delta_ns does
 not change.

 drivers/gpu/drm/drm_vblank.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_vblank.c b/drivers/gpu/drm/drm_vblank.c
index 46f59883183d..0fc62637eb8a 100644
--- a/drivers/gpu/drm/drm_vblank.c
+++ b/drivers/gpu/drm/drm_vblank.c
@@ -779,7 +779,7 @@ drm_crtc_vblank_helper_get_vblank_timestamp_internal(
 	 * since start of scanout at first display scanline. delta_ns
 	 * can be negative if start of scanout hasn't happened yet.
 	 */
-	delta_ns = div_s64(1000000LL * (vpos * mode->crtc_htotal + hpos),
+	delta_ns = div_s64(1000000LL * (vpos * (int)mode->crtc_htotal + hpos),
 			   mode->crtc_clock);
 
 	/* Subtract time delta from raw timestamp to get final
-- 
2.34.1


-- 
Best Regards,
Krzysztof
