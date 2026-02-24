Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sGEHD5LPnWn4SAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 17:19:30 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF8A189B24
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 17:19:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D13C110E0E0;
	Tue, 24 Feb 2026 16:19:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eCujenxr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8525F10E0E0
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Feb 2026 16:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771949966; x=1803485966;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=sqOsPvMgbhCNlyG6dISlrIGEcJzMddod9OYj/v/4Tlg=;
 b=eCujenxrdYeMMhnQH87k2p6sYY+2AaVQQwrjnf1Ihu7mn0mWX8SQB4rt
 cGpiEy7fjmnssaxgWDTXSg0xlm7nrgU/f4chkbOY0PmA0NaRD3QPKMcXA
 00bwol0ZsN34xmIsUaTOWdyG4HipYdatNkqtoMXeMhjzqL5/6so/lR6SV
 fTolOvUy8w4CkN15V81r99s+HOzx4VbT7eOWaE6/NlUSG29KobeAcCi37
 rbgshcF3Y/zST1ZMs9W16bAdl9Mg02v1gfjzIHHHzu/xrf0eXShF/YgIg
 iPfrez/dtR6Pbvp5fyUZ+H17yWj3UG6SpDMbafhybAb3P2a+pIiAzDwD4 g==;
X-CSE-ConnectionGUID: fSLFFZP5RbuKxHa0+j830A==
X-CSE-MsgGUID: 64yZhn/dSqqTwV4+KVBHJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11711"; a="90549715"
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="90549715"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 08:19:23 -0800
X-CSE-ConnectionGUID: UzYLLC/aSmC+5gmursb9Aw==
X-CSE-MsgGUID: nMw/wrHwSQyg7L02IwYDbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,308,1763452800"; d="scan'208";a="213742937"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2026 08:19:23 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 08:19:23 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 24 Feb 2026 08:19:23 -0800
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.41) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 24 Feb 2026 08:19:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=a2To7KvwuMg2HaHnsqS+2LRVqpOwDGGzfzbgyeQ8+t2sFHNf3dbWCOlZWQZ1uqFeLDwGzDRyp2j/BviJWfsvjTdkN+bB1xFxypjnfiTjjgoMUBopxvNU+radfuuTT+ZTGfiIiewzJGTIpvk0tWoOLchP9SHg89OIKbO+YEtfDZriNVe0LPTJ5QRQPAmVFuOypwdytMeEi1QMP2UtUqGK7os4ODIjNp/wr2hPHHSqTOWHZsTT+agBqKX57ogqCBrrlNudsYFeofAtPlo5cNZGRwPqXmSB/83ypMKUvy6/8ApVx881p5/YDIl7redQb3NEJMY2otwmu5grbVo8SqNXvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0XmR961Cfcml44gAZLiSsqI0aBgahHiTGpV+h7fDo+w=;
 b=iiEUIt0YDRXFO0bqXIjkfHEj3innm5Hz1d6jJiJ54zDAqHm2WGj64MPilffUmE5OQ5Ex8DH46yLaciu+EX8fBgjM92LF3EsDVFLzmSZ/vUNCBoPDJ+2XIIJlCAbc24791XJAsMlDmoHevZQ0SBVjWYO8jv417/e7kvr8kjwJdsbXGB6zZzsJ7eMS+29II4W+pBCmq3t4zVeHsTaKqF1yEp3zJtMakkQVbCTytZ6F9EpCMOVagsVMKpIiexcHx/ps5wFdJsqLf9zbWiJh7xXFdwts+ekGVFiXi8SlxE56JuKhMok55oYMG6OHvEUc+3GxzdB2WDA5DlA3bytVsDSd2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ5PPF0F15BC42D.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::80e) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.21; Tue, 24 Feb
 2026 16:19:22 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 16:19:21 +0000
Date: Tue, 24 Feb 2026 16:19:13 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Jonathan Cavitt <jonathan.cavitt@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <saurabhg.gupta@intel.com>,
 <alex.zuo@intel.com>, <joonas.lahtinen@linux.intel.com>
Subject: Re: [PATCH] drm/i915/gem: Explicitly return error value from
 eb_relocate helpers
Message-ID: <37xrb5o3un4n3njwhfllhony6igm6rs2jcw63k4oxrgicgilqs@o6icn66oarq6>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260204230307.81289-2-jonathan.cavitt@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260204230307.81289-2-jonathan.cavitt@intel.com>
X-ClientProxiedBy: WA2P291CA0015.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::28) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ5PPF0F15BC42D:EE_
X-MS-Office365-Filtering-Correlation-Id: b39918c6-18f1-4f57-a74d-08de73c077ff
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YmljVnd6djVtVEh2M2xqdmVKTlhxRkpPZlAzQkt5ZVV4RDRvZGk0Ukh6U0JC?=
 =?utf-8?B?WC9sS3BxYVdMcnhYaGJuTTYzdkowbmx6Z3hlWUJvTGFUNXpZUzExUS9xREpL?=
 =?utf-8?B?RFhjemxzWkNTTmlkdnNoTFVMQmZFQUh5TjJWYmZpQmhpRXZNWUl4cmczbktm?=
 =?utf-8?B?SHZqWDA5ZEhVT2FYWDhxeEx3dHYrSFB6bnU0UWRSbEpmMkhlL21LbUdKWW9u?=
 =?utf-8?B?c0trYkp0eVBpME5GY3dYT3YwUi9JWGt3eGw5SXB5Yjk1eUhodS9uWFZCRGtO?=
 =?utf-8?B?TXdOVEF6NFk0SGhqQWJrb1ZLZmxSbmwxSXlUMHZpNWdtbDNaazlDcWs5QWF6?=
 =?utf-8?B?dEJMcFRVQXZPS25iT2hmalVwYTBaQzBHKzNMTGpONDNlZUdIZDZ5am9tZlha?=
 =?utf-8?B?MVFzOU82ZnNZc2p6WVRyMnRSczEyZmRSVnpqMEgwZU9RQ1VUYzBUcTlINkdt?=
 =?utf-8?B?NjAyQTJ2NXlFcHlnVmdXc0UwR2s3MU1wOFNwODd4dU54a2E5QjZ6NSs3RmlQ?=
 =?utf-8?B?blNHK1ZQVkI3TGVmTEZ5cUUrU0QyNFA1QXRNQXdtcEFNdTJpa0V1WHY2YnFC?=
 =?utf-8?B?dG8xUXNJRUdhdEVKMEdZZklPK0dlaXU1dWVzanNnMFlwYU8zanFBV1RtT1gv?=
 =?utf-8?B?RWR2WC9hWTBvcEwzQmdhYlMzQlp5TllQMG83OWxpMHhLSlQ1ZXpUaUpReklK?=
 =?utf-8?B?Yy9FOTd3WkR4U3BMZUJTOEhNREkrMWhnZzQ3MVB6VFE2M2lKZ05VdkpQRFc3?=
 =?utf-8?B?dkd4aDFOT21KSVQxWXRzL2thbkpvY1llWDhDazI4am9DQklCVmtFQjRuVnNj?=
 =?utf-8?B?c2V2OWZmR3Z6OGlNZHNoMDYvOE81OTFHVWp0TTN4Uk1lTUl4b3pkemIwREdZ?=
 =?utf-8?B?KzNXR3hMeXJySVU0MHFQQTFldlRQQWN5a2kwZmRIakhlY3dhZ213MUZSMER3?=
 =?utf-8?B?a1JWM1hJWUdSTDRINitNOC95eWRtWGRWdW1sbVlKUFdqN1ErRVFGQlhUbUR2?=
 =?utf-8?B?Yi9PZ1lQU09jYnBwTGVHMXI5RlZWemlSV3BwNDBxajRvd3ZjN0p3cUFnMDBL?=
 =?utf-8?B?bU4vczRnWXowcDhQbTBFWXlzQUVtN1lUYmNVdFprUXlkUEFCc1lIM0tQMDJ4?=
 =?utf-8?B?UXR1NUhZaHllS2xXMitFMFB1a0x5ZzltRkI0KzJocDVlUENIcUFwL1NyWGp5?=
 =?utf-8?B?YzdHRlJhM3MxdGJpMDJqanlvZFZqbmFWNndyTkxvbW1tZUo0ektzcmtkZDA4?=
 =?utf-8?B?OEVoNHNDZGQ5aS9JazdxUU1IUTdaTjVIeTY3U2FXZVlEWVBjRVN0ZWVkVk1I?=
 =?utf-8?B?S2FtbHlTK1JlbXlhNTFzMDZ6Wm1kM2ZhU0dnS29iVk93Z0hXTExuRW9mWUsz?=
 =?utf-8?B?bmVHSnp2U3MvRWYzclQ1cCsxR1BlLzNzREtoYmwzVi9zT2tVMVZHUkRFWUpR?=
 =?utf-8?B?eGdUSUZhOFlteDIwS0I3K0tXWlpyU3YzZEtVb3dhMm9QVkt0L2NSTjVRRk8z?=
 =?utf-8?B?VXpwQ0t1cUdsaU9FQWsrbmh2QmN0MEEzTXgzQmpMUVd1RURBTjhHQXhLK0kz?=
 =?utf-8?B?Ti9xcTdzeHd5dFExUllwZjBWQ2phN3kwUC9Wc1lxMzZPNG1XVVpVbUJRUXk1?=
 =?utf-8?B?TlFtdFc5ZzlRWEI4S2dSRUc5OXJ3eitlSWlJRVlQaEJ1dytUNmtneGEwNERL?=
 =?utf-8?B?ZThaNGJFdkZLV1dwU1hFTkM3WW9BUkNDY0duOTNpdFdDQVlLaTFJc3dTMWwz?=
 =?utf-8?B?SEVIM2plRDcvT29sejlQRHloSkxXa0lsREZzd05oanZrd3d6Q3pFVkh0VjJE?=
 =?utf-8?B?QjFTSTNaeG0yZVJuVW9PbzlRTjJ4SGU2Z0IwcUMwZDFNSlllaFdjU05vOUtn?=
 =?utf-8?B?UXgzT3dMNWZKTkZKb0lNeFMySGpGUjRwWmo4bUp3MEd6WmVleTU3M3UrcEpz?=
 =?utf-8?B?TmpXS21nVlhpL3MrOUF6QlhVQmJZMnZXMFpOSWdaRmErd24rRGc5MnJLKzEy?=
 =?utf-8?B?SW1oUDcxMjhsQi8zZHRGV2VZdFBwVGMwR0tveUloY045Qm5pam9rclF1Vmgx?=
 =?utf-8?B?YU82cnJtN2xWdjhIRFdxYjlheUVCUWJRWkJTeHJCY3pXbGp5QTlqeUxrUlBM?=
 =?utf-8?Q?kDxo=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVZWMHJHNE9EVEFIQisyTkNmeFFPQVNWd0dXNm9vcUhiMW9nNWY3alJoRG9S?=
 =?utf-8?B?Rmx1c2ZSSkZieVZPYllaZ2lmV1F3bzBTNEhTcmZJbmFhR20zTDNkNE1Gbjhh?=
 =?utf-8?B?MFBicDZhUkVGbG92R3QyczRkSGlwNHhhOW5UUHg0RlpEZ0t4QXFSWGs2Tjk0?=
 =?utf-8?B?WXNqR0NqRU9PbFZkdEZWeHFpSG1oSFdqOThaRGdHTk5icWlJaE5TS2dneHNC?=
 =?utf-8?B?Y2pHUEMzcUR4THZKTzZDV3REbDlncFpMY0xkaURKOW5NVkJEUGtoZTVRTXBz?=
 =?utf-8?B?aEJtSXM4ZU40dkc4dVFKU2R0NmYxeVZmUDZwRklNSVI2OHlSb2RyQm9NRnpv?=
 =?utf-8?B?SFJxYUVza3JPdGszTnIrcHN4ZWxIOVVKNlhyM0tFZnRvNjlVeU9NMHNnK1Av?=
 =?utf-8?B?ZS9ULzhNTUpsYWpuemZwb29peUNpb2ZHcjhzQ3ZKdmZDWlNFMGdYcG1tbDBY?=
 =?utf-8?B?VXhYY1hrTkpQVERjUklsVVdMaWFqamtiTW9aWWVSQVdMVFk1RHBaZlJIMHky?=
 =?utf-8?B?aHdMdHRway9PNTdBUkI3ekJzWDV4Ty9HN242NS9tcGFvYlZWaXB6bzJWQ1Q4?=
 =?utf-8?B?UTEycUlaaC9BOXlkd3llTm9ReXJod3JkeWNseTZKaExkNm5MTWJxUU1NSEpS?=
 =?utf-8?B?RERxZzFWMmF6aVdQUXUyWjJFby9Ic29rRHZ0bmNIbjRTMUdxR0ZucDd3M1pR?=
 =?utf-8?B?M3BrVDdpR2VrNkxQYWNkcG9Gbit1MzN0NmFFT1RPRE1ESE1wd0lsS2N5NFF5?=
 =?utf-8?B?UHMwN0kxcHJyUExNMkRzUDFwaEp6N3l3YnFMNXUyUkk3bFVSQzZ5ZHQ4Y0cr?=
 =?utf-8?B?Zk9qaDhKR09qVXZvaWpLSFJFbjdWdHRlZ1hZNVI3MC9QVVVseklOeVR5dFVu?=
 =?utf-8?B?dGFMS3VlYis0S1c4VUs4MTFaYXYrM0puQW9TcGM3eTBPQkRlalVJSGl3bFZF?=
 =?utf-8?B?c2ZUZVVNMWZjOCt1WHNSd2YyZHRqV1hzcXQrVUVpSGZQVWdTNlJLWDY3QUV5?=
 =?utf-8?B?M2lNbXpZQWRXVHNFeER1Z2UwYlh4c05RdUU3YXVteE1rR2g3SU85RytBbUl4?=
 =?utf-8?B?SVU1bzdMU2VxQml6MmZ6czJvOG1TeDNTSSsralJMVGg2VllrZWNJSHc3bU91?=
 =?utf-8?B?SFRtOTdPeHMwdzJkRVRQYjlSVkV1Nkk2TXMwdTBLcW1JME9LZGFOU2FjRjJ3?=
 =?utf-8?B?eGwrdE1JNUR6ZzJHSXpaZkp6UmN6Wlp5bjFQVExwVW9jS1J2UWxhc0FKZFNF?=
 =?utf-8?B?NlBQaUxLN0dVdTRhNjVnM2ZIa0VZRGpLbWN1K1ZoN2orQzB6VE5lcnlRTkJK?=
 =?utf-8?B?WUZSRHpwNlR2Q0U1YTNvN0UwdklPYXZLOFNrL1RPVmVRbld3TDF6ZjA0bU5S?=
 =?utf-8?B?bllRNk56UnFTTFhvNjQ3ampjTXRzcCtFZzFzcll3RmFJUElhWi90dEhYVU50?=
 =?utf-8?B?MW9YUjNOSTA4SkdJbUhKQkhHS3B6dk02N0lEM2U1dUVheFFvRTlKc0ZhREJN?=
 =?utf-8?B?Vll6OFZ5Z095d0x4NlJrU1o5K1F6K0R5WTE2WHFvZ1AzN2p2a3psVXFISEM3?=
 =?utf-8?B?N2tMKy9FUUVmTlNqNXRvMUt3a2s3ZHhYR2ZGeVRka2lnL1QxVXpwMjYwejdZ?=
 =?utf-8?B?NEo1Zi8rQXlrZFpjV2NkVCt2RXc4WkVxcDNBMkJ0ZFpxdlZ4OE96RVNIZTdu?=
 =?utf-8?B?Y1FCdy9LbEU3aDl1T3NUZTNCMDRxVllXVks2RWZ0bEVUc3V6SEJyNXJKWGNk?=
 =?utf-8?B?eVp5NURwQnlHL3ByRHhPbDJ1TXZDeFNIeGIxWU1ZYVZ2MFEvakZxYXk0OE1S?=
 =?utf-8?B?ejRJWE51TCtTdGtMOER0RzBqMXJVcnBvL3B6T2dMbHc2Z0d6cytPUE9ZNnQ1?=
 =?utf-8?B?MlptbXRzcGNNaGR6WE1YWjFOY0M3bHdXYkx0SkJvK2FsdGtUdzdMaTRiSnBJ?=
 =?utf-8?B?YzJLOTBHTHRLRy9WVk8xRXpheUVrSW9nZGtYRHJiQjFYeU56VFkyNTJwTFJp?=
 =?utf-8?B?QUZJR0VXbEd2ajJ2UnkzUFpTakFEaHRyOWRnZEd5TG8yOUcyTjZ1UzhWWmpO?=
 =?utf-8?B?ek5GTGpRVDNXTTZDYVArYlBIZ2loN201eVF2aEQvNDdicnB2ejN3Y0Z4M3Nm?=
 =?utf-8?B?a3A5N0ZwUmlydm1Sclk4VnloS24rOUphdDJnaHhZeW5oRHdjTk94U0o5eDBz?=
 =?utf-8?B?akVUcmpVN05jRndXQWtIYmIxanNJT0RCQXFpK29FWVo2NHJkRjRJQzdDZDdh?=
 =?utf-8?B?UENzRFRzdFZMRHJMMUhHQytldmdMaEk4VEFUU1FGMHJMV2ZTNGtyUjFUZm80?=
 =?utf-8?B?MjJjbFExM2d5bXBhZ3BJdlUwdUdFdlJlcHBhWHFpSWNuY2xTR2pJeVhWdnRk?=
 =?utf-8?Q?L79PaFSEwjc796aQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b39918c6-18f1-4f57-a74d-08de73c077ff
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 16:19:21.9117 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7tMh7/a3Ou2DR/DOXcOmxJ9M9Gk01VBpaCZuk0GQv0/B+Fl9Sqr3rnUBlVuaGDq2CTpajUozY/dXJ8/Q2dlxFCZHGPJfsyY328XK4hKbZ1E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF0F15BC42D
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
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jonathan.cavitt@intel.com,m:saurabhg.gupta@intel.com,m:alex.zuo@intel.com,m:joonas.lahtinen@linux.intel.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9AF8A189B24
X-Rspamd-Action: no action

Hi Jonathan,

On 2026-02-04 at 23:03:08 +0000, Jonathan Cavitt wrote:
> Static analysis issue:
> 
> The current implementations of the eb_relocate_vma and
> eb_relocate_vma_slow functions cast the return value of
> eb_relocate_entry to a signed long in order to determine if an error has
> occurred.  This is because the return value of eb_relocate_entry is a
> u64 offset value on a success and a negative error value on a failure.
> 
> While not mechanically incorrect,
This might lower the perceived need for this change, just leave
that it is improper to cast stuff like this and that should be good.

> it is improper to perform a cast like
> this.  So, just have eb_relocate_entry (and, by extension, its helper
> function relocate_entry) return the error value, storing the offset
> separately in a passed u64 pointer.
> 
> Interestingly, this value is only used for non-error-checking purposes
> in the eb_relocate_vma case.  We can simplify the eb_relocate_vma_slow
> case by allowing the passed u64 pointer to be NULL because of this.
> 
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---

I think the code looks good, but you should address failures
from i915 CI - both test runs on this patch look more or less
the same, so this change might be breaking something.

-- 
Best Regards,
Krzysztof
