Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB9CA1D774
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 14:54:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDC6010E51E;
	Mon, 27 Jan 2025 13:54:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MZK/1MqM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA03C10E51C;
 Mon, 27 Jan 2025 13:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737986068; x=1769522068;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=RUEk2kSwoBMXzxGLytlI2QLn0FVe5PDqz+CxFMtSons=;
 b=MZK/1MqMkAxkasA+tdTwXMAg3XhJK7FrFbcFSNSQlOXveSVukJt2CtIx
 sLqej4uA3l6lu6tLZ2yFQK8XxwGIPgSzFTh7qh8t9JOoDCqgqjS4uu/JP
 Z3h+OypFtf32K31G9Z1w7WME1nLWUM/rS66IYmcnhoxqPobbsW0nKe+ZK
 xA4HMuQAokhkY8ebybOT1L+lqkou6VGWsP/vU6FILC/upraBh5kVC9MCv
 mE0R5K+e+2/97EMq0W1FhjEYomQnQeITIVbV7I7GnPPrLjnoTwnsERB8A
 ySdiFKsNU+4ZtB6BleHbERumcuTayo96QcliEwbPZJf5qdF3CK2hMgv+f w==;
X-CSE-ConnectionGUID: 0iw/xktGSZytMk3NgFsiUg==
X-CSE-MsgGUID: YmBvlN4vQQGbpvsBQ79zZg==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="49863061"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="49863061"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2025 05:54:27 -0800
X-CSE-ConnectionGUID: BlDubBtQSRis7sHoxKhVAQ==
X-CSE-MsgGUID: 0Pe6/HkkQImFY2QXhYu4nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="109349929"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Jan 2025 05:54:26 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 27 Jan 2025 05:54:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 27 Jan 2025 05:54:26 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 27 Jan 2025 05:54:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wn4peaXmS8T9yfu0S6rOnL+yr9I+LR/zKB2Kz4WmNB0/2pWRPLLaNqJ7Afadt0ooOHdgIPfpbVZ8Il1I7yvEY5jQ4EwXLmtHRd6mnw87VpRbbexxC7Yg58AKa5hqp5RB5P+9eGXFG/+sHIYRqL+ztQJOOfKXgusi6j3yreCEQwPOTQId+0t6GoOmYZYp0r0gYwm6425Z/7PTSs94sLTyoPOltSTP0yvnuJ7NcewGC0XUqZSKics10Yijw+LMBfD+ph5YW7p3XkciV42uqvaj6LEa2PnbBSWX4/+3tT5tneMqRo7Icj1wEFNyc43TQ3YRGHqXKx0de30k/XQ7zAwScA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U4IBjanqO3qiIyAAdMfwStXKB48kf+18o8ZN3xo93gY=;
 b=BxK2Ol+d/Gr5jEKc2iDUJXsFZJaLJV981MvMgpwXcjEprmBD/otB4//yTKPjF6uGVFo7VBwc59yN3D3n2PNxOGHciDOUzxBAXC3+gRh2Vs/hKE7owiJV8liIc0Zm47JKj/e5YsuOnJvEWN9gnlklaJMBOdNIbgHx6WDE0mgunzF6NPtmTNDDdp1zewXMHw0lADDuCFojXKI4gD9CtJSyBcI/qAxmKKWmTVJnCXFr/dzANE1C5f0oyTObHbuWn4pLEPxtApF3At0InhzvTL8eCypDj2qFgTcXFU/Hfq7SnI2cAz52+oBFAp55F7ZavW8estG6SsX4nPWCHK7080YrsQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA3PR11MB7528.namprd11.prod.outlook.com (2603:10b6:806:317::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.22; Mon, 27 Jan
 2025 13:54:10 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%4]) with mapi id 15.20.8377.021; Mon, 27 Jan 2025
 13:54:10 +0000
Date: Mon, 27 Jan 2025 13:54:04 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <I915-ci-infra@lists.freedesktop.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuQkFUOiBmYWlsdXI=?= =?utf-8?Q?e?= for
 drm/i915/selftests: avoid using uninitialized context
Message-ID: <n3oqabe2c4cjmqr454dhqxudktqb5za2j52px47bfpzehkvg2l@vxj5kf6lc6ho>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <57xcbkebno22cops66u2uknknrhalp52jqmswj3daihkpwrd3h@h77t4o7kgkki>
 <173798414787.1386903.2668738575391989186@b555e5b46a47>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <173798414787.1386903.2668738575391989186@b555e5b46a47>
X-ClientProxiedBy: VI1PR07CA0212.eurprd07.prod.outlook.com
 (2603:10a6:802:58::15) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA3PR11MB7528:EE_
X-MS-Office365-Filtering-Correlation-Id: 1eca18b5-a76d-415d-e54c-08dd3eda1316
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|7053199007|13003099007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZTZDZVVNSnlNWTdtRnBPYy9pZkVHS3RvMXRzWDFKVEJJZ0VkeWp6UExXSUNy?=
 =?utf-8?B?VFFwcTVLTmRBcnhUSnZXMmxlcnZwaUp5UUROMW5kRWU5YlFRZXQwQVR1M0NK?=
 =?utf-8?B?UVRmblVWQ1lZR3F6c1JVaEEvVlQ3TnIwaTFFZ05UUzBacjBWNEhUVlJQMlRt?=
 =?utf-8?B?UU1Rd2V0TTNEYWlOZmVBWTFRL21jZmNQb0wwV1Myck1RNlY1elJibERHdXBi?=
 =?utf-8?B?K1ZlcThCalVhZ3pyOEhBM1p0MHh0eGtzVlFyOVU0UExzcjJrL2trZDJZVDUz?=
 =?utf-8?B?Zk9FVVBKNnhHTi9oejB0Y3RuOXdla3dNR3M0YVB2N2VKdC9IcUdQazZ6aUVJ?=
 =?utf-8?B?QnZBeWkxWXRkU0NmTm9VdEhPV0tBMlpqQnRXakZuTGRmbnk5azZoWmZQak1m?=
 =?utf-8?B?WTk5d0ZKcG9WK1JhSW1tSWhTZmZLK3NYK0hBa2tPYlI3ME12VzJxMWpoWjFm?=
 =?utf-8?B?ZkFSbXNpcUtheTVQVWJRaHNDd09sRVl5cWpQM3c1QmppSmF1Y0F4U0VldHlM?=
 =?utf-8?B?M0FnWFQ3bTJrb2VEQ0hxQ3NoZnU1TzJHZlZxOVk4cDNsV1FYcCtxY0lIeTl3?=
 =?utf-8?B?akVzeHlUT0JwbWJ3WjVYTXkwbm9haFdOZmtqeXdCSTZJUndoRzZ6em5HZEdL?=
 =?utf-8?B?cEkrWWFmK2JxNTJscTgraEFqUXRWbm1TcngreWMvdGpDWDQwTnVqdFV2N2JP?=
 =?utf-8?B?MlNOaVdaWDFNa3cvVHVYMHhha3UyZ0dQSDN3R0FRMUk4SDhCRFV1MFFyWjVM?=
 =?utf-8?B?N1owZFArek9Jb2dUTlBRR3QrTEJ6SDNWL21uOVNCU0hWTXIzend6Q2tPWVpS?=
 =?utf-8?B?cHlKTDAxWEMyRUJXMHpLQm01dTVmWHAvd1RLUVNtdFVuTCtNdXZtSlVoai9K?=
 =?utf-8?B?ZWxIUkxsdnRlQkovZFZwTzlDQVFEOFUzSWxxN2NyNUFQTFJDVzlJWUFzY292?=
 =?utf-8?B?U2hGVFdmS3pDUUhjS0w4ZXZzTXZBTGxVdnJqWDhLeGdhUFNpb3VEbG9tbnJl?=
 =?utf-8?B?UVRVRmlFcUI5TWVuODZZU1ErM0NQUTNyK2hzNXRnKzhYMUVKdzUwdFJxOHJ4?=
 =?utf-8?B?d0JTTDk3M2JHTkxCU3ZoTitSUkRXZDcwWSs1YmxsYmo0U1I4OWRLMGRIMCtl?=
 =?utf-8?B?d2pPMmVHdnMzM3JkRndiVVB0VE5EcFpCTmhMNElmdmxCUGdLY2graFdhT3dM?=
 =?utf-8?B?UWo3bEtpVWpTUzVQUGJWWTJ1KzVFdGJDNXlCakU1dDZFVVhJbVM3Umg1aFMx?=
 =?utf-8?B?UW9maEZpbWdEbE01KytPd3dWVG9mOWtCcTJjWVMrQzlpSDV0cXkxVHpGa1Bi?=
 =?utf-8?B?OXdiQlhadFYzRlVmVGFKbHNDM0tlbVA3cWdLYlhtdHFJZHFUblVKbFpqOHVt?=
 =?utf-8?B?cVllcGZMZnR3Mm5CTDBiKzl6NVRmV0FnUzNIU2NyYkZCWWZKVUdQRGZBS1Zi?=
 =?utf-8?B?Z09zUTJkYlc3WTIyeGNrM3JlR2FoYkF3cHZGSTlZSjVidDFPMk1VZHBqVzFR?=
 =?utf-8?B?bU1WbFdtZU1Ic1dueUlsN0pla3p3R21RQUQveExOSWsvdWVBQUg2c0pEVURk?=
 =?utf-8?B?aDBnU3FQNmxLRXNyc2FQWUMxb0UzVHUxUkhoWC8rTlBsTDlkTnpNektXNHgz?=
 =?utf-8?B?RWY2anBXYnZXcmJsY1cxekxkUGRTbEdPT0VQWWJOV0FCNlUzM0NqRTJqVFd6?=
 =?utf-8?B?ejZzNlBsYmlXYjBUUWV0WFZHdTJ1MlNBWXVVZmUyRitlVThuckR0bGIrUW1Z?=
 =?utf-8?Q?EQ6NEX7RU+2BGsny3MPUsZdjA5lCJdcqsrdyJp9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007)(13003099007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OS9XNXZMajBDbzB1ZmdtSEovWVBYRjM0UlBzUzBrM3l1TWRmMkZXVy9RenJ1?=
 =?utf-8?B?bmhKM0FIZUJ2RHZhQTg4ZHlvLzVYMkZDcjNKS3FoeTdmRVZ5NEZaQlByREgz?=
 =?utf-8?B?a2hrOFpaMHhST1JaMEI3TmFNdVRrTXc2WklaL2xZMk42UDhNNzdFVWlFWkpB?=
 =?utf-8?B?Ny8vajZYZlVCbUZGRzZiTmJJby9lMTlqVWRjQWh4VUlUcFJBUjg2TlBaWFhU?=
 =?utf-8?B?YkJacW5heHFQcVZyU3hPK2V2T1R5RzB6djdMdFhxdUMyTkJIanA3b2cyWmVI?=
 =?utf-8?B?ZnF0L2RIS3JNNUxSRTk2dGg5T2Z1M0puWDM2aFpXMVc3ZTd2M2Q0Y3QvczJt?=
 =?utf-8?B?ZEJwUG1YUWlhdkJIcVp2THNuRUVMbVREMGcycU84OXNPaHBWYUk4OUYxa21p?=
 =?utf-8?B?TnkzaFJVS1JZTmpXRHNieU9vZkwzWmVDYXhjSWxQU04xWUFsTEI1emFHdW14?=
 =?utf-8?B?YldlcWJ2MU4zVFBwdUhUQjdkMm9PRDhXY2FUR3RoUDYreHVtOTRaSzYwWnJI?=
 =?utf-8?B?cVJjWEJ4Vk93cncvTzBaT2lCajJSUjhsVGlhc0hHeDRRUWtZclBsSmFtTXJr?=
 =?utf-8?B?V09EeWxaNlpKNVAxYllWYkdRU2xiZWFMS0VoZTVoc01iVHJoNERUdWJ6NnFq?=
 =?utf-8?B?dkJoVS9TcEJ3RUQxTE9jeXBQRm5rUUpJcGhyOHZ0alJhckFnL1EyZzA3cHJU?=
 =?utf-8?B?T1RhOHB0Y3RXRkVhZHQzRkpkT2ZPTEtUUURaTU9OTjUxOW42dUVFcG9HMlFS?=
 =?utf-8?B?ZXhuOEJJa0lUWEhER2lUNTVNNEZiOUhsMm1OU1pNbnNIOHJOWGJ0NENxYkp2?=
 =?utf-8?B?OEVTLzhBNC8wVHJYaVpTNHh5QnUvcGQyVmtueTJEaWI2SG53S2taQUR2aXRG?=
 =?utf-8?B?RlBBTWx5QVgrZk1QRXEyajlWWnVlQmtzN2tabS9NZVE0ZVFwZUpJYlVXWHUx?=
 =?utf-8?B?amVMT0srb3pDSnpnbHRIMmtwRm80QSs2KzlQN1liZGR3bG9QMThvRzBKL2I2?=
 =?utf-8?B?U3Y3S1B5WE1aVlRpcTJvVGdkaHBLVzdDb29mOXNwbUdjYXdoNURXM0lkdmRa?=
 =?utf-8?B?QnFweVdCeVFGYXgzdXhIVEN1NVpDMTZoQkl3aHFJZkpqZTFiNXY1SmxCeEkv?=
 =?utf-8?B?THV4K09PZ21GcVBTNWZaTk1IR3U0R2N2V1N1VnZJY0dhSklSOFhaN1JkSHNU?=
 =?utf-8?B?TUJnK1o3WlhuOVZaT0pZZmxxdS9Dbk0vNzZDR3JxSTc5WkMvS1JteVhrbGRk?=
 =?utf-8?B?WkdZUmdTeUY0YW9nOW1DcnpYRE5Kb0ZRbWt4WjNaUGhRN0VUTlZhVERKMXo4?=
 =?utf-8?B?TUNtcHI2ZXJnc1dDWWZZZGlxaDNkOU5BUmhyWnRhWjZWNHdBeS85dGsvN0pQ?=
 =?utf-8?B?aFlDQ2E3aUdiTmE4ckFTT1pub3IvSmE0aEZTd3JZRk9NdlA1MDZkRkxTeU5a?=
 =?utf-8?B?TDQwbTBHeGdvdzNZT0Y0cDJqQnNOaXJjYU93V1lvaWNQbkZDdS9FaWdRbmlu?=
 =?utf-8?B?dlc1cktjRFdXVzRUWXU4ZkFQUWNiWERTYlRCZlRxRWVTOFBSWjhId01PNm84?=
 =?utf-8?B?RUtCZlpheGRpbnZlYTBXRXhnU2p2bzRwZ095VUZpdlVOV2w1TmNKZFdDaGgx?=
 =?utf-8?B?TFkwWFU3bUg5cEN4Y3cwWTRLbU41bHBTNEh2Y3MwY202YnpWMEFINFVQbmlt?=
 =?utf-8?B?b295ZjNoYXFTUCtqSjdINXRKclE3eEIxcEtSSjd2RWtJalhBaU9UUjNhbFlt?=
 =?utf-8?B?VmtJNkF3RjBZb3ZtNy9YWHVGZzNLeHZPbEo3VWVINkhObHJPN255QWZNZ3J1?=
 =?utf-8?B?T0lzRm8yRWdQR0NVNWJjWWZENlBnN1JMaldhVjg1TlQxZGM3b09kc0VIUTVv?=
 =?utf-8?B?d3BxaHdSTVYyK2hwV3V0T3FqNVdZQ2l2TU9XN2hLUUJTbGg0YTRxQnlFSXMv?=
 =?utf-8?B?cGJhSkVMekVBYThnbTlHMVUrb3RBZkhXcnEyUWdxTS9QbGZVTXcxSklZSmJC?=
 =?utf-8?B?WkFzcVZKK3JrZ0VaL29OeC82L3NYL2grU2pLV0pzOXRnR3JlMWtKT2R2bjEw?=
 =?utf-8?B?UWhGWG4zN0JMNG9BZGRuamJqWnBNYUY1SnNmZ0wzNW1ZQ1RNSHZPOEVOVWJP?=
 =?utf-8?B?MVdpRG5rQUkwT010czYzWWd4ZTdJMUo1Y1huN3pyMzR2dmNibmUwYlp0dGxI?=
 =?utf-8?B?bkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1eca18b5-a76d-415d-e54c-08dd3eda1316
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Jan 2025 13:54:10.3154 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YeY3glvrejv74Vvzr2TOu4bqoPrHNllb7q+HbcQ6WL/MYImFuMFJ6I8wE8fSeHJfa45g1vQm2kQTmyxUj7WhgS4HehNJDzJaWRB1P8yslJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7528
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

Hi CI-infra team,

below failure is unrelated to my patch.

Krzysztof

On 2025-01-27 at 13:22:27 +0000, Patchwork wrote:
> == Series Details ==
> 
> Series: drm/i915/selftests: avoid using uninitialized context
> URL   : https://patchwork.freedesktop.org/series/143990/
> State : failure
> 
> == Summary ==
> 
> CI Bug Log - changes from CI_DRM_16023 -> Patchwork_143990v1
> ====================================================
> 
> Summary
> -------
> 
>   **FAILURE**
> 
>   Serious unknown changes coming with Patchwork_143990v1 absolutely need to be
>   verified manually.
>   
>   If you think the reported changes have nothing to do with the changes
>   introduced in Patchwork_143990v1, please notify your bug team (I915-ci-infra@lists.freedesktop.org) to allow them
>   to document this new failure mode, which will reduce false positives in CI.
> 
>   External URL: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/index.html
> 
> Participating hosts (36 -> 34)
> ------------------------------
> 
>   Additional (1): bat-dg2-9 
>   Missing    (3): fi-glk-j4005 bat-arlh-2 fi-snb-2520m 
> 
> Possible new issues
> -------------------
> 
>   Here are the unknown changes that may have been introduced in Patchwork_143990v1:
> 
> ### IGT changes ###
> 
> #### Possible regressions ####
> 
>   * igt@kms_flip@basic-flip-vs-dpms@b-dp1:
>     - fi-kbl-7567u:       [PASS][1] -> [DMESG-WARN][2] +1 other test dmesg-warn
>    [1]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16023/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html
>    [2]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/fi-kbl-7567u/igt@kms_flip@basic-flip-vs-dpms@b-dp1.html
> 
>   
> Known issues
> ------------
> 
>   Here are the changes found in Patchwork_143990v1 that come from known issues:
> 
> ### IGT changes ###
> 
> #### Issues hit ####
> 
>   * igt@dmabuf@all-tests@dma_fence_chain:
>     - fi-bsw-nick:        [PASS][3] -> [INCOMPLETE][4] ([i915#12904]) +1 other test incomplete
>    [3]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16023/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html
>    [4]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/fi-bsw-nick/igt@dmabuf@all-tests@dma_fence_chain.html
> 
>   * igt@gem_mmap@basic:
>     - bat-dg2-9:          NOTRUN -> [SKIP][5] ([i915#4083])
>    [5]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-dg2-9/igt@gem_mmap@basic.html
> 
>   * igt@gem_mmap_gtt@basic:
>     - bat-dg2-9:          NOTRUN -> [SKIP][6] ([i915#4077]) +2 other tests skip
>    [6]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-dg2-9/igt@gem_mmap_gtt@basic.html
> 
>   * igt@gem_render_tiled_blits@basic:
>     - bat-dg2-9:          NOTRUN -> [SKIP][7] ([i915#4079]) +1 other test skip
>    [7]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-dg2-9/igt@gem_render_tiled_blits@basic.html
> 
>   * igt@i915_pm_rpm@module-reload:
>     - bat-dg1-7:          [PASS][8] -> [FAIL][9] ([i915#13401])
>    [8]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16023/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
>    [9]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-dg1-7/igt@i915_pm_rpm@module-reload.html
> 
>   * igt@i915_pm_rps@basic-api:
>     - bat-dg2-9:          NOTRUN -> [SKIP][10] ([i915#11681] / [i915#6621])
>    [10]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-dg2-9/igt@i915_pm_rps@basic-api.html
> 
>   * igt@i915_selftest@live:
>     - bat-mtlp-6:         [PASS][11] -> [DMESG-FAIL][12] ([i915#12061]) +1 other test dmesg-fail
>    [11]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16023/bat-mtlp-6/igt@i915_selftest@live.html
>    [12]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-mtlp-6/igt@i915_selftest@live.html
> 
>   * igt@kms_addfb_basic@addfb25-y-tiled-small-legacy:
>     - bat-dg2-9:          NOTRUN -> [SKIP][13] ([i915#5190])
>    [13]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-dg2-9/igt@kms_addfb_basic@addfb25-y-tiled-small-legacy.html
> 
>   * igt@kms_addfb_basic@basic-y-tiled-legacy:
>     - bat-dg2-9:          NOTRUN -> [SKIP][14] ([i915#4215] / [i915#5190])
>    [14]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-dg2-9/igt@kms_addfb_basic@basic-y-tiled-legacy.html
> 
>   * igt@kms_addfb_basic@framebuffer-vs-set-tiling:
>     - bat-dg2-9:          NOTRUN -> [SKIP][15] ([i915#4212]) +7 other tests skip
>    [15]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-dg2-9/igt@kms_addfb_basic@framebuffer-vs-set-tiling.html
> 
>   * igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy:
>     - bat-dg2-9:          NOTRUN -> [SKIP][16] ([i915#4103] / [i915#4213]) +1 other test skip
>    [16]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-dg2-9/igt@kms_cursor_legacy@basic-busy-flip-before-cursor-legacy.html
> 
>   * igt@kms_flip@basic-flip-vs-wf_vblank:
>     - bat-apl-1:          [PASS][17] -> [DMESG-WARN][18] ([i915#1982]) +1 other test dmesg-warn
>    [17]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16023/bat-apl-1/igt@kms_flip@basic-flip-vs-wf_vblank.html
>    [18]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-apl-1/igt@kms_flip@basic-flip-vs-wf_vblank.html
> 
>   * igt@kms_force_connector_basic@force-load-detect:
>     - bat-dg2-9:          NOTRUN -> [SKIP][19]
>    [19]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-dg2-9/igt@kms_force_connector_basic@force-load-detect.html
> 
>   * igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>     - bat-dg2-11:         [PASS][20] -> [SKIP][21] ([i915#9197]) +2 other tests skip
>    [20]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16023/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
>    [21]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html
> 
>   * igt@kms_pm_backlight@basic-brightness:
>     - bat-dg2-9:          NOTRUN -> [SKIP][22] ([i915#5354])
>    [22]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-dg2-9/igt@kms_pm_backlight@basic-brightness.html
> 
>   * igt@kms_psr@psr-sprite-plane-onoff:
>     - bat-dg2-9:          NOTRUN -> [SKIP][23] ([i915#1072] / [i915#9732]) +3 other tests skip
>    [23]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-dg2-9/igt@kms_psr@psr-sprite-plane-onoff.html
> 
>   * igt@kms_setmode@basic-clone-single-crtc:
>     - bat-dg2-9:          NOTRUN -> [SKIP][24] ([i915#3555])
>    [24]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-dg2-9/igt@kms_setmode@basic-clone-single-crtc.html
> 
>   * igt@prime_vgem@basic-fence-flip:
>     - bat-dg2-9:          NOTRUN -> [SKIP][25] ([i915#3708])
>    [25]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-dg2-9/igt@prime_vgem@basic-fence-flip.html
> 
>   * igt@prime_vgem@basic-fence-mmap:
>     - bat-dg2-9:          NOTRUN -> [SKIP][26] ([i915#3708] / [i915#4077]) +1 other test skip
>    [26]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-dg2-9/igt@prime_vgem@basic-fence-mmap.html
> 
>   * igt@prime_vgem@basic-write:
>     - bat-dg2-9:          NOTRUN -> [SKIP][27] ([i915#3291] / [i915#3708]) +2 other tests skip
>    [27]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-dg2-9/igt@prime_vgem@basic-write.html
> 
>   
> #### Possible fixes ####
> 
>   * igt@dmabuf@all-tests:
>     - bat-apl-1:          [INCOMPLETE][28] ([i915#12904]) -> [PASS][29] +1 other test pass
>    [28]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16023/bat-apl-1/igt@dmabuf@all-tests.html
>    [29]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-apl-1/igt@dmabuf@all-tests.html
> 
>   * igt@i915_module_load@load:
>     - {bat-mtlp-9}:       [DMESG-WARN][30] ([i915#13577]) -> [PASS][31]
>    [30]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16023/bat-mtlp-9/igt@i915_module_load@load.html
>    [31]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-mtlp-9/igt@i915_module_load@load.html
> 
>   * igt@i915_selftest@live@workarounds:
>     - {bat-mtlp-9}:       [DMESG-FAIL][32] ([i915#12061]) -> [PASS][33]
>    [32]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16023/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
>    [33]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/bat-mtlp-9/igt@i915_selftest@live@workarounds.html
> 
>   
> #### Warnings ####
> 
>   * igt@gem_exec_gttfill@basic:
>     - fi-pnv-d510:        [SKIP][34] -> [ABORT][35] ([i915#13169])
>    [34]: https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16023/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
>    [35]: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/fi-pnv-d510/igt@gem_exec_gttfill@basic.html
> 
>   
>   {name}: This element is suppressed. This means it is ignored when computing
>           the status of the difference (SUCCESS, WARNING, or FAILURE).
> 
>   [i915#1072]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072
>   [i915#11681]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681
>   [i915#12061]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061
>   [i915#12904]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904
>   [i915#13169]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13169
>   [i915#13401]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401
>   [i915#13577]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13577
>   [i915#1982]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1982
>   [i915#3291]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3291
>   [i915#3555]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3555
>   [i915#3708]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3708
>   [i915#4077]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4077
>   [i915#4079]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4079
>   [i915#4083]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4083
>   [i915#4103]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4103
>   [i915#4212]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4212
>   [i915#4213]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4213
>   [i915#4215]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4215
>   [i915#5190]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5190
>   [i915#5354]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5354
>   [i915#6621]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6621
>   [i915#9197]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197
>   [i915#9732]: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9732
> 
> 
> Build changes
> -------------
> 
>   * Linux: CI_DRM_16023 -> Patchwork_143990v1
> 
>   CI-20190529: 20190529
>   CI_DRM_16023: 006a892140827b356eb4ad5a5e9b947477791ba8 @ git://anongit.freedesktop.org/gfx-ci/linux
>   IGT_8209: 07ec14a8b00849e82a6ee7aff433c8f564787bf0 @ https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
>   Patchwork_143990v1: 006a892140827b356eb4ad5a5e9b947477791ba8 @ git://anongit.freedesktop.org/gfx-ci/linux
> 
> == Logs ==
> 
> For more details see: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143990v1/index.html
