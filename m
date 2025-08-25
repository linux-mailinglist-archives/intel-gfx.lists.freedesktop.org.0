Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 430AAB34026
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Aug 2025 14:56:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F5B710E47D;
	Mon, 25 Aug 2025 12:56:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IOxvA4Wp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B283010E47D;
 Mon, 25 Aug 2025 12:56:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756126564; x=1787662564;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e2SCdlqcAWlqOoZVgu6NJMJTVR8qbjAGrk90zx3AlYo=;
 b=IOxvA4WppfOUmv343Y2+Zz6smFYsl6lYABfBUWbvtq3TXdrmZQm5yiYW
 SgixebT/k+d+lC7KG+CRGAc5dkzuXtosM+n/Fa7Ibqp26YR2pTkYAyXzM
 xbMdjiiXvLFw/+zXBUTYDO9O3BQ7Q3Xxn01eRB3B4ladfokwHS/vV7tWb
 t4ld1+uP6OfHkRZIqB3H3EZ6M7pRelPBgeflvKN7TCKh2zQvKYtTw4NH1
 03viBKvY2u118Lzs1lM516v67HI/MP/2eNJxT25nbvTAs0omYGLC1F3s1
 2UrVPHxEkB6s8/hWOkgffMylsKPc9e8WJd7cn7fV+B39oMuuSDR7cTmN7 g==;
X-CSE-ConnectionGUID: C74I8vsURpKh8ODtHx3QEA==
X-CSE-MsgGUID: OCeC1P1PTmm+36bWd54xKQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="62164593"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="62164593"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 05:56:04 -0700
X-CSE-ConnectionGUID: Sy7GGKCbTzq9POH9az5KBA==
X-CSE-MsgGUID: RPu9cfzyS5GyuMeLVrTv2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,213,1751266800"; d="scan'208";a="169481161"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Aug 2025 05:56:03 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 25 Aug 2025 05:56:02 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 25 Aug 2025 05:56:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.74)
 by edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 25 Aug 2025 05:56:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jtppb3ttPk0MYGICeDG5mwJj2nhop9XCyZJY+mesoZqorefzB06dpDS95a1u8GHdSUFGAC1s21fouOwjU2qbr9rbpELVthZF1oQC17ujgwk65lYadx93cWGjKkqwb4gRjz6a8oKo1LhfnWJ4/R9YS7h5d3PvVxXCdMWXQz2TgeOGdV2zE2cQcWW9yT3ZsEqhjCRgDbWU1T4kPey1KMK6VYFn6IbFklkwpdAHV4kb2BOeJUAGJSsenOZJFLuBwtvvyegoK8pyS3resAHeIS4mNjCGsLbYoKYVEveXwhq+GPN61ZL0G4NOrhwQwEqCmMzF7sFCUhjuGyFYwD32HK3FFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=naDdFZXKOIcVC2Otbg3BvtpioRKkDYpmfXMIRyPz9oE=;
 b=yl/A7u5s9RsIk/RdcSjDm+DvaY3qg40/pbe3Wwzxttoc7uks6uE2Uk0yqO1uBcsAEJUACB3LlcQrbj85M7n6m6+2ZNljboyanh5RQyaEv+Ms8eqjfBz9GqfQWx4Es/S4bLMbZyPBvRLxENxOZf640i1UBMgVxWuA38+38eNRMYUMeU3N1pyxWN9vFbiwhZ679wy3LM3zNVxvoRr3F0SO83uPtG4MAkTJIN/a1wbEusGHtqj5L2SckoXhhu5OcqUge+1m72w/6nClEficD9/zG5PMS/jbOcK4HJt8X9yQvjCzcoGYo3yExesUoSqWbsXBho7m/Skp/Zptx6rNgCcwDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DM4PR11MB5247.namprd11.prod.outlook.com (2603:10b6:5:38a::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9052.19; Mon, 25 Aug
 2025 12:56:00 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9052.013; Mon, 25 Aug 2025
 12:56:00 +0000
Message-ID: <af82d5ed-d3c4-44ae-bc17-16f4eb5999a1@intel.com>
Date: Mon, 25 Aug 2025 18:25:53 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/12] drm/i915/display: Extract helpers to set dsc/scaler
 prefill latencies
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, Mitul Golani
 <mitulkumar.ajitkumar.golani@intel.com>
References: <20250820080451.2634888-1-ankit.k.nautiyal@intel.com>
 <20250820080451.2634888-5-ankit.k.nautiyal@intel.com>
 <ec108ab6a7018cd162e5fcbdead88a2f1fd89a9d@intel.com>
 <44dbccd6-854e-41f8-a226-3be406f15f76@intel.com>
Content-Language: en-US
In-Reply-To: <44dbccd6-854e-41f8-a226-3be406f15f76@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0048.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:175::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DM4PR11MB5247:EE_
X-MS-Office365-Filtering-Correlation-Id: 45460d1f-56e1-4445-e705-08dde3d6bd9a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?M0grM2p4VEEra3g0YXVMdVBrUldpcEJwU1c1WXdwVEp0Y3p5WXRMSHFENVl3?=
 =?utf-8?B?eHYzMGR3aFAxMVFxeHY0akwwaHVOQmRUTitwRldoOTJxU3ZKMk52bWNWczJE?=
 =?utf-8?B?T0VFTHlpZkYxWVNnUlczOHgwN29DY25OU29xay9IalVMblMyMWxDelIxZS9H?=
 =?utf-8?B?ejE5QXZEZW9uLzZuMDVHbkV3TmVuZi9tR0hmdUhPYWRJNmg5TnRGRXliYnRR?=
 =?utf-8?B?L3cvanh3Q2dXTElJVTNnMG5FYzl0MFlVbWpySDdyd0NjTWtCaHJDcm9CUTFm?=
 =?utf-8?B?YjZJTldGaURvNEJXaVJHM1ZVbmVOMmJqTkI0M0xMQkJkSFdDQ1VQajhmeTBH?=
 =?utf-8?B?NkdVQ2c3WDY4ZmprTVRkRVdjdTdick9FTlFKWEx6T0hrMXNLZXNBUDZERjYv?=
 =?utf-8?B?S2w1djJqbWJZM0w5aVl1Z0pSRk5QZXRvRWZGMzgxMnZZN3NKZFpROURSa20r?=
 =?utf-8?B?ZHIzM25HVnUzcmVBNDZEbGVJRHVZMVBWL2licUtqZGpsWGVDbVVOMTNNcEI4?=
 =?utf-8?B?VE9GL2hIYUErOENtd3JkVE5vK3gwRlVESFJXTll6cXBUOWxOVVFYQ2ZiV3Fh?=
 =?utf-8?B?dzg4cVdBekdOS0pBai9MSmJMd2oxY3Y2QTQzSGRnT1l4V29DYlJweXBMdTZ1?=
 =?utf-8?B?YjVrcy96dTNSTU5mV0QweWY1UFBTTXgxMEZQSDZ3VUYweENJWm9vYlhWM0to?=
 =?utf-8?B?b3dncmZVcGlGbWxWZ3JNY2NUMWxzMk1JaFZqamQ2NHlZRDBZWmZaOU4yVEZn?=
 =?utf-8?B?ZjVYR05EZ0VEdmU1ZEFJa1EzNUFMK1V6TS95MkJJc3JBdmpmc25pSFM2MnZa?=
 =?utf-8?B?cXQvb3poVDh3N09MamJackt3SE03Vnd6OExGR3lhU3cvZ1ZKTnZVa3Q0RHpq?=
 =?utf-8?B?Z000bkxOUkhaOG9PZHlVQjdUTGR3L3lQS0lsczRINlNmcDZUOU9iUVp6QzAw?=
 =?utf-8?B?L0lZNXplditmS2NMeGRXbVB4bGNSTmhVamg4Tk9VQVV4aW1COHFMdjE4WU5z?=
 =?utf-8?B?K1o2ek0xWTNIUkYzY1BVU2x0eHl0K1dwTktoZ0JDd2ZieEwxQmRyUFRoTGRN?=
 =?utf-8?B?TDhGT2JzU3ZTQzNJUytXYk1pLzdjanRYcGxkS1pBeDZOaHJEM2hHQ0cxaXU0?=
 =?utf-8?B?VDRoTHlsMm1VUnFnKzhHcENLcDczZFVqU0R0cWhxNG9LM21nRFlKTFliVjZD?=
 =?utf-8?B?bGgvYkhxRGZyU0FPTVpKY0dtdTEveFhJbDVsTERsaFVjNkFRS1dpc1Zua1M2?=
 =?utf-8?B?L2c4SnJBWkdyblhhZ3ExUDEwa3hYQklGQXdwMlJVcDE1U1NlYnpGWXZMVFZ6?=
 =?utf-8?B?U0VOdzMyNzhibWNWUkY4bHlZOS9nZVdGdXprSWhCSHBHODl2a0lhalRpdnZk?=
 =?utf-8?B?MVhpZFAwOUpkajlBZ2tKTUZocG9XMklXNHl4YnV5c1l6RzJoUUQ0VWhnUHNQ?=
 =?utf-8?B?UHNkKzB0clNJaWl1eXJJWm9iZjFpUThJUncvQTFLTzFMTEVoZU1vUEs2V2RL?=
 =?utf-8?B?UnRWd0NEcVFsT0JqcFhYTGJCMWhHa25FVWtxS0xQazl6TW95S1o2MW1RY0dz?=
 =?utf-8?B?UW5Vc1Bobkl6SS8zMnBKdjZRQ0VaVUgwVklnL0NEa3dwRzhrYmIvMFl2R3Np?=
 =?utf-8?B?TWZkTlcwdGRjaGE0cEM1WjJNMCtEUzloS3JKMGFiWHh3bDhFTW43YW50aDh4?=
 =?utf-8?B?MVBpbkc1MWJmOHZ2eExhUDByby9xY2sxTTFxOFhaazEwLzBmWUZSRkx2RHRB?=
 =?utf-8?B?RGdWWDZBUk1HUjlILys4VVV6alhBb3BGSnRaSVlJRHptQjNESWs1TGMzd1da?=
 =?utf-8?B?M0o3SjRjTVRRYWpKOHpGV0xpSVlldUx4K3dnS01laXZMZ1JNYzMwYjJUakZv?=
 =?utf-8?B?bndFbVJnNzdCM1JSbFhBdTRwWHlRUWFDK3Vid0NyU2JLRXNtMjdrTGVaMndm?=
 =?utf-8?Q?XUOkqDTqrrw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TmI0Y3NxeVF0R202bmJnZlFkL09pN2IrVzM0QmZna3BZS0Zmc0RLb1lhSDdw?=
 =?utf-8?B?REZVVlJKb1ZMR0V5ai9oSmlSUUlwNjRndWZaa05CQ2t1cDAwQlRsdG1sVVNr?=
 =?utf-8?B?OUM4ZTA2clZmbXo5Q05HYnhicHRRWkJ2eHpWNktONkJIbU1vOGhWOHgxL1E2?=
 =?utf-8?B?VCtNY2w0VnI4cC9NN3NyNTFxNjJ2WUNqYmZtaVNiUlV6K0ErL25YY004UkRN?=
 =?utf-8?B?TWdsUktsZEZ6a3dHRnFtRGIxcDZaekVyNThUVFIrdU54QnBLZGRUM281clBt?=
 =?utf-8?B?d0dQTlh0bjdiOVNTWm0yOWd2V3JBSXRXUGNuSjRXRTlGbzZqN05RcDB4YkRl?=
 =?utf-8?B?MTdzT1RMQ2dXSHJSU3pKRXBXZHp1ZERaZjdOL1V6VXNyZlJOV2FCZSs3eE1G?=
 =?utf-8?B?eDFmMDhKcU92OC94OGF4WXkwT2RXUzdzRVRib2EyNm5OVFVVVVFJTmVnamw5?=
 =?utf-8?B?RURSYXNoa01RL3UwUGZBYk1WWE41bDZvcWl6bVF1cGREZXNKNGlSeERlVkhI?=
 =?utf-8?B?MmdnUWZ0Q0V4cXpzL21yUUdxSm9QYzhlZC9Sb3hjWlF4ZHRxWWxUN3BtT3Y5?=
 =?utf-8?B?RTkzd0IveGxqbE5CN2o3V3A5a3UxN0VZcEg1cHRtTDlXbS9xR2hiVXpHdFo2?=
 =?utf-8?B?MzgxSGpoUWtlM21ocHhQVWpkbmUzWmU1N3BQUGhndmZCTThBak1kaGtUSHdV?=
 =?utf-8?B?VUl2aWYzZlJTa0JBMVVWWW8yaHA0UTVDSlZzSjJkakVqalJidnp4V05KUFAv?=
 =?utf-8?B?QVhleFBBSm10RjJVMStmK3V0SCtvSStWa2hzd2g3eDhnQ2IyTzRGbmNyQkdX?=
 =?utf-8?B?WGI1RXBGUjkwVktvbjBEcnJaWWxBNEI1NlF4SFdUcHJrK3k4Mm5VK0Vma1dG?=
 =?utf-8?B?QnZ0VlJOcCt4WU1jbTFINmdSellSaHBLWENFSzd5Wk5HY3JDbUIxWm1EWFlN?=
 =?utf-8?B?eE9Rc1Z3SUY2RWtjSk9EY05Fa0FBeEFNeklZcVZadUdIZkVvWEVJWFF5Tmxl?=
 =?utf-8?B?TVZKU3hsUWRRL0lkb05ISkh4R204blJheEVIWnRQRTJqMHNxWElhanUxYlhy?=
 =?utf-8?B?UGljaHhHaDhEL3h2Z1RiQVJrWE1rRTRQK3cxV3VZZUtQQlp3cjNGRkFzRDE4?=
 =?utf-8?B?Zm9iZDVsenBRZU5YanlWVEpXSXJJaFEwSDEzYlNzYWNzdDZxQ2VabFpSN1k4?=
 =?utf-8?B?RUR4MmtuYlcxQ2V2VXd4bytpSXBSYlhoUTZGUXZiWkVsR3NjVnFzWEM5alRw?=
 =?utf-8?B?aUkvRW9ZZkdrdzZaUDN1OXY2L280VTMzUHpnOGlvN2xBQnNZNFFpaG9nc0ZK?=
 =?utf-8?B?N05uQlNYQWg2VEJoUlE3Qk90cWpIUDQ5eHRFWkF2ZEMxUkpIODFrOGpSUk5M?=
 =?utf-8?B?QjJETlZBclNpTGRjSXExUllWejlWUlg2VVBSaWdxcWVZbXd3WkVnZXZrcnpm?=
 =?utf-8?B?RU1JOU5WSmNXUFMzWUVuNnpUWTlnSHdtWnd3SWM0T0VsU2crVWtBS2hKbDNm?=
 =?utf-8?B?U2ZJSHpJTWR5dXljV040MUx2Ymk3UkdkOFFPRU8vNG9rSmkvYUYranI1Z2da?=
 =?utf-8?B?enY5WW9FVE1yb0tYejkrNWZmUFNVOWNheU55bzIvTWZabUxqZm9FVnBDS3hi?=
 =?utf-8?B?cjJkUkhTY005TmxPajZZUzhESnlJaEJjbjFXbWh0QVZKMlRQRVJpMThVRlA2?=
 =?utf-8?B?N2lwU0JGSTdnSmxOdVhrSjlvaFhFaXFucnl2b0g0d3dwZWo2S2lnK28rYmt2?=
 =?utf-8?B?QzZTSUtnQk5OQnJuTTdZTG4vMDBTUnRURkhvY3NzNVBFQXVFck1ETGpqU3A3?=
 =?utf-8?B?WG1GcFBNU2wzV3ZpQWIxU1QwaHNrNmFMTFRCSHlyQVJycGIzbm9yTkdZR2N3?=
 =?utf-8?B?K2tDNHlmb0cwb0JieVhyV3h3cUhzaE1Fb0R4TnhBd2RUK254eHdHU0RSY2VJ?=
 =?utf-8?B?UjNrRkgrdkExSFJjbjBFaXdWcWNzaWZCZGc3NDEyQzZXQ29VY1dQTVIvWG4r?=
 =?utf-8?B?elRERHZZOVFjWHdrYzBOY2o3TW5WNVJ6UDNIZ25TdEVxUWQ4eUFmSnlxTlVm?=
 =?utf-8?B?S2VNdHJmcUlha2dZNW15VmdNV0UvbkRnVHdiZlFITmpnWEFFcFFsMlJhYlB0?=
 =?utf-8?B?SkNON216eXJXTlZaQ3dDNE9sY1daV0R6NHhkL3V2NU1aMVRjcnd4cVZxaldR?=
 =?utf-8?B?TVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 45460d1f-56e1-4445-e705-08dde3d6bd9a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Aug 2025 12:56:00.7733 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: v9/xQVQyRwJw6u4EiQRQBKTxOMVecP3B0HBQ+jIJfwLkuI6WY63uHNFYObTGwj9EtOxuems5qvh7/T6s/A9XxQelzoWphhtdPTmnnug735c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5247
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


On 8/24/2025 10:06 AM, Nautiyal, Ankit K wrote:
>
> On 8/22/2025 4:53 PM, Jani Nikula wrote:
>> On Wed, 20 Aug 2025, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
>>> Currently dsc/scaler prefill latencies are handled during watermark
>>> calculations. With the optimized guardband, we need to compute the
>>> latencies to find the minimum guardband that works for most cases.
>>> Extract the helpers to compute these latencies, so that they can be 
>>> used
>>> while computing vrr guardband.
>>>
>>> While at it, put declarations in reverse xmas tree order for better
>>> redability.
>>>
>>> v2: Initialize {h,v}scale_k to 0, and simplify the check in
>>> intel_display_scaler_prefill_latency(). (Mitul)
>>>
>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/display/intel_display.c | 33 ++++++++++++++
>>>   drivers/gpu/drm/i915/display/intel_display.h |  8 ++++
>> Side note, basically adding anything to intel_display.c becomes a new
>> todo item of things to move out of intel_display.c.
>>
>> It has long been a dumping ground, and continues to be so. :(
>
> Thanks, Jani. Understood about intel_display.c being overloaded.
>
> I can keep the latency computation helpers in skl_watermark.c for now 
> to avoid adding more to intel_display.c.


While going about it, intel_vrr.c appeared to be a better place to have 
these helpers, as we are using these latencies to be accommodated in 
vrr.guardband.

I have sent the new revision, with this change.


Regards,

Ankit


>
> Let me know if you'd prefer a different location.
>
>
> Regards,
>
> Ankit
>
>>
>> BR,
>> Jani.
>>
>>
>>> drivers/gpu/drm/i915/display/skl_watermark.c | 46 +++++++++-----------
>>>   3 files changed, 62 insertions(+), 25 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c 
>>> b/drivers/gpu/drm/i915/display/intel_display.c
>>> index c1a3a95c65f0..62ec95a75154 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -8328,3 +8328,36 @@ bool intel_scanout_needs_vtd_wa(struct 
>>> intel_display *display)
>>>         return IS_DISPLAY_VER(display, 6, 11) && i915_vtd_active(i915);
>>>   }
>>> +
>>> +int intel_display_scaler_prefill_latency(int num_scaler_users, u64 
>>> hscale, u64 vscale,
>>> +                     int chroma_downscaling_factor,
>>> +                     int cdclk_prefill_adjustment,
>>> +                     int linetime)
>>> +{
>>> +    int scaler_prefill_latency;
>>> +
>>> +    scaler_prefill_latency = 4 * linetime +
>>> +                 DIV_ROUND_UP_ULL((4 * linetime * hscale * vscale *
>>> +                           chroma_downscaling_factor), 1000000);
>>> +
>>> +    scaler_prefill_latency *= cdclk_prefill_adjustment;
>>> +
>>> +    return scaler_prefill_latency;
>>> +}
>>> +
>>> +int intel_display_dsc_prefill_latency(int num_scaler_users, u64 
>>> *hscale, u64 *vscale,
>>> +                      int chroma_downscaling_factor,
>>> +                      int cdclk_prefill_adjustment,
>>> +                      int linetime)
>>> +{
>>> +    int dsc_prefill_latency;
>>> +
>>> +    dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * 
>>> chroma_downscaling_factor, 10);
>>> +
>>> +    for (int i = 0; i < num_scaler_users; i++)
>>> +        dsc_prefill_latency = DIV_ROUND_UP_ULL(dsc_prefill_latency 
>>> * hscale[i] * vscale[i],
>>> +                               1000000);
>>> +    dsc_prefill_latency *= cdclk_prefill_adjustment;
>>> +
>>> +    return dsc_prefill_latency;
>>> +}
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h 
>>> b/drivers/gpu/drm/i915/display/intel_display.h
>>> index 37e2ab301a80..8d094b0a8c6b 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>>> @@ -559,5 +559,13 @@ bool assert_port_valid(struct intel_display 
>>> *display, enum port port);
>>>     bool intel_scanout_needs_vtd_wa(struct intel_display *display);
>>>   int intel_crtc_num_joined_pipes(const struct intel_crtc_state 
>>> *crtc_state);
>>> +int intel_display_scaler_prefill_latency(int num_scaler_users, u64 
>>> hscale, u64 vscale,
>>> +                     int chroma_downscaling_factor,
>>> +                     int cdclk_prefill_adjustment,
>>> +                     int linetime);
>>> +int intel_display_dsc_prefill_latency(int num_scaler_users, u64 
>>> *hscale, u64 *vscale,
>>> +                      int chroma_downscaling_factor,
>>> +                      int cdclk_prefill_adjustment,
>>> +                      int linetime);
>>>     #endif
>>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c 
>>> b/drivers/gpu/drm/i915/display/skl_watermark.c
>>> index 97b42bbf5642..f0213785e9fc 100644
>>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>>> @@ -2179,11 +2179,12 @@ cdclk_prefill_adjustment(const struct 
>>> intel_crtc_state *crtc_state)
>>>   static int
>>>   dsc_prefill_latency(const struct intel_crtc_state *crtc_state, int 
>>> linetime)
>>>   {
>>> +    const struct intel_crtc_scaler_state *scaler_state = 
>>> &crtc_state->scaler_state;
>>> +    int chroma_downscaling_factor = 
>>> skl_scaler_chroma_downscale_factor(crtc_state);
>>>       struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>>> -    const struct intel_crtc_scaler_state *scaler_state =
>>> -                    &crtc_state->scaler_state;
>>>       int num_scaler_users = hweight32(scaler_state->scaler_users);
>>> -    int chroma_downscaling_factor = 
>>> skl_scaler_chroma_downscale_factor(crtc_state);
>>> +    u64 hscale_k[ARRAY_SIZE(scaler_state->scalers)];
>>> +    u64 vscale_k[ARRAY_SIZE(scaler_state->scalers)];
>>>       u32 dsc_prefill_latency = 0;
>>>         if (!crtc_state->dsc.compression_enable ||
>>> @@ -2191,18 +2192,16 @@ dsc_prefill_latency(const struct 
>>> intel_crtc_state *crtc_state, int linetime)
>>>           num_scaler_users > crtc->num_scalers)
>>>           return dsc_prefill_latency;
>>>   -    dsc_prefill_latency = DIV_ROUND_UP(15 * linetime * 
>>> chroma_downscaling_factor, 10);
>>> -
>>>       for (int i = 0; i < num_scaler_users; i++) {
>>> -        u64 hscale_k, vscale_k;
>>> -
>>> -        hscale_k = max(1000, 
>>> mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
>>> -        vscale_k = max(1000, 
>>> mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
>>> -        dsc_prefill_latency = DIV_ROUND_UP_ULL(dsc_prefill_latency 
>>> * hscale_k * vscale_k,
>>> -                               1000000);
>>> +        hscale_k[i] = max(1000, 
>>> mul_u32_u32(scaler_state->scalers[i].hscale, 1000) >> 16);
>>> +        vscale_k[i] = max(1000, 
>>> mul_u32_u32(scaler_state->scalers[i].vscale, 1000) >> 16);
>>>       }
>>>   -    dsc_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
>>> +    dsc_prefill_latency =
>>> +        intel_display_dsc_prefill_latency(num_scaler_users, 
>>> hscale_k, vscale_k,
>>> +                          chroma_downscaling_factor,
>>> + cdclk_prefill_adjustment(crtc_state),
>>> +                          linetime);
>>>         return dsc_prefill_latency;
>>>   }
>>> @@ -2210,28 +2209,25 @@ dsc_prefill_latency(const struct 
>>> intel_crtc_state *crtc_state, int linetime)
>>>   static int
>>>   scaler_prefill_latency(const struct intel_crtc_state *crtc_state, 
>>> int linetime)
>>>   {
>>> -    const struct intel_crtc_scaler_state *scaler_state =
>>> -                    &crtc_state->scaler_state;
>>> +    const struct intel_crtc_scaler_state *scaler_state = 
>>> &crtc_state->scaler_state;
>>> +    int chroma_downscaling_factor = 
>>> skl_scaler_chroma_downscale_factor(crtc_state);
>>>       int num_scaler_users = hweight32(scaler_state->scaler_users);
>>> +    u64 hscale_k = 0, vscale_k = 0;
>>>       int scaler_prefill_latency = 0;
>>>         if (!num_scaler_users)
>>>           return scaler_prefill_latency;
>>>   -    scaler_prefill_latency = 4 * linetime;
>>> -
>>>       if (num_scaler_users > 1) {
>>> -        u64 hscale_k = max(1000, 
>>> mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
>>> -        u64 vscale_k = max(1000, 
>>> mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
>>> -        int chroma_downscaling_factor = 
>>> skl_scaler_chroma_downscale_factor(crtc_state);
>>> -        int latency;
>>> -
>>> -        latency = DIV_ROUND_UP_ULL((4 * linetime * hscale_k * 
>>> vscale_k *
>>> -                        chroma_downscaling_factor), 1000000);
>>> -        scaler_prefill_latency += latency;
>>> +        hscale_k = max(1000, 
>>> mul_u32_u32(scaler_state->scalers[0].hscale, 1000) >> 16);
>>> +        vscale_k = max(1000, 
>>> mul_u32_u32(scaler_state->scalers[0].vscale, 1000) >> 16);
>>>       }
>>>   -    scaler_prefill_latency *= cdclk_prefill_adjustment(crtc_state);
>>> +    scaler_prefill_latency =
>>> + intel_display_scaler_prefill_latency(num_scaler_users, hscale_k, 
>>> vscale_k,
>>> +                             chroma_downscaling_factor,
>>> + cdclk_prefill_adjustment(crtc_state),
>>> +                             linetime);
>>>         return scaler_prefill_latency;
>>>   }
