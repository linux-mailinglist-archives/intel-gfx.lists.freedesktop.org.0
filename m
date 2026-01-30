Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6HUKEMWpfGkaOQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 13:53:25 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 964C0BABDB
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jan 2026 13:53:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 958BF10E9D8;
	Fri, 30 Jan 2026 12:53:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LRDpmhFT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 60EF810E9D5;
 Fri, 30 Jan 2026 12:53:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769777601; x=1801313601;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=h/7gRDF51gyoBfUL7sUIsmHZ8t7hiH4/x2KiMgFNh90=;
 b=LRDpmhFTBpYWKkY73Jq4mqkcTnOix86W5r/pX/Wu2EhlO7tfTMauZ8/c
 z3y1paRnc8OWD2a/7/XBnPuuNGzCLi9B+qQz69m+iogsvTmyQdmCp34eN
 hxgH3qY0OU1BsR59KWUIYBphMjAhO1zZi6W4WAKjDC3oOkcb8Y8LuhdDU
 QHBPKAVDf0/zcyYSaccnFfWuBCL/g5fMhzzETpbOOC4U5KkqhKVr/mhYc
 dj4E80RxIu8U+Tr6g+FGuJgTTjgLMNmjFxy2EVhO3s1FXpBIkvZSEaA0o
 BHi1d9yOVSEVW0DRiSecpTBEe8jqakhM6mRmdbBC0H1o2RxRCbcUvYQjh g==;
X-CSE-ConnectionGUID: zF/GhawcT3+e2qIX8QohhQ==
X-CSE-MsgGUID: 8OqhYhefT4KuVUMX4We8mw==
X-IronPort-AV: E=McAfee;i="6800,10657,11686"; a="71113766"
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="71113766"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 04:53:21 -0800
X-CSE-ConnectionGUID: UBTLYaESS+2Fq+Erfgx9zQ==
X-CSE-MsgGUID: xc2SEEoRQ3GmQPXpo4rb4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,262,1763452800"; d="scan'208";a="231769435"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2026 04:53:21 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 30 Jan 2026 04:53:20 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 30 Jan 2026 04:53:20 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.57) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 30 Jan 2026 04:53:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=IHTupyS3794lfnG34jIXbQ97rqwXx6VchiVRyQ9AaUPmLULFr1iwUSWaUrCmBlbad6xnrLwd4ZnOV2RmyK7wuLOkycsiJXAou2w3HscgjvqBBk9H7Zpiq43MTrdD1GkpqCC2QE8p5x3d8VKxKFwDm1xPuLRei0yhDazIIW0dRqgjiRZxHMg3rx/GstzRKLejHCWqcBat1c+399hY/bD+5kd3hE1z6BgMOJiJiyefo77fp/Of8NerdugHBt44ireawsWHfyD+U0edQ8ZjFdtjir47/wZui991vLFG/pg6IBGCzLmmIBeo0FWmDOiHWBoro6Rs6pknr2BC1wgvz/6BkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ca/z2uWdnd+srKr5JmOtIQsoE4ygBfaG6+YIaMTj0oU=;
 b=CWxdjNrZIDxbSrIeA4kCZs7bF1QpJr1/pAPdMb0aU780lnivOoc0/YMhqSg7bP7PKYAUL732yUMCAQOzTbrWiLxv8DXy+Zw8lapY7KldizPEMisFukghwbLCmmrwGtuq4Ylisjrmi+MyCv5MjMQOYv1sMZkVVgD2Uyi4woZMpY59nWeHybkqGlMCWA+Qbtx0MdkL4V5iI0kNdQcjM9gaI6dYX4qgBj/0EX0YXDfXGhkcIAwps7OoxvP62gFFHah9g9KzxBDDMbcPdVp7bAWBAz5/+QyyS1PKu1t+b5XlGCMepAJu62q0rEkgYwHuAndsyhuyOYCxGI7DADCUaiX3DA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH7PR11MB7988.namprd11.prod.outlook.com (2603:10b6:510:243::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.11; Fri, 30 Jan
 2026 12:53:15 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9564.010; Fri, 30 Jan 2026
 12:53:14 +0000
Date: Fri, 30 Jan 2026 12:53:02 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v2 1/6] lib/igt_device_scan: Don't print fake link
 bandwidth attributes
Message-ID: <reh3pf5mdecfzaxftaucazxifjpg5nhusryzgwettt5rtks4ok@yh5lh6vbelf3>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260127100123.114516-8-janusz.krzysztofik@linux.intel.com>
 <20260127100123.114516-9-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260127100123.114516-9-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: LO4P123CA0543.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:319::15) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH7PR11MB7988:EE_
X-MS-Office365-Filtering-Correlation-Id: c3b058d8-5fce-4e16-8da0-08de5ffe87e5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VlhnSExiV1JIdTVIRkRBUThwUDE2cE0zLytINHE3U0JoTlNRejBEaXk1Y0VF?=
 =?utf-8?B?a0xsWlQ1ajAwNEowa1B4cS9zalp4OTdzWXRRMVpaNTB5NWcyQkhoci9sYlBy?=
 =?utf-8?B?UGRLWVRoc1VSdTE2SERSOXFlY2xGVHhLOVVnZExxaFlrdzhzUHJhZWZMdGZP?=
 =?utf-8?B?VTlxSzhQcEp1aHlKYlFZOGZkakR6ZFAvQ1hjdVd3N3M1cWdHWWZXaFhtMUxz?=
 =?utf-8?B?Z0xvb1ZsRXZDWFZRVEZEbWwrOWJURWdNNTVRM2kycWhPRVNYQmppeDIvUGV3?=
 =?utf-8?B?ZmpjUGZTR084WFRSY245aHp0SGxzeUQ1RUVJVDN5eWhlc3lScEtGcXBPQkNw?=
 =?utf-8?B?V0tubW9HUFFtMUNEN1lFSVBqVWQ2eGJRejRScElOQzZWdjlValpMQTd6R3ls?=
 =?utf-8?B?ZFl5dzVhWnJ0VTNwY0tVT2xnckpkUk5mb05wenlpbzhrZlBkSUZQVzZDMlhZ?=
 =?utf-8?B?YmpKcExpSjlhdUcrOGpRZnI1MVlJQWlkbm5GRm84aWplbDNvNXBuRVcyUDE4?=
 =?utf-8?B?aEU0ait6cE1NU1F1QncvcXczaVpOZWNNTzNmTlpDNEpGMVZwYXpsTGlicFI3?=
 =?utf-8?B?QWVxeGdRRzMyeXkxVS96cmxwZ2g2Ry9sUU9UQS9LdUNiTDdKMUZnRFd4SjJ3?=
 =?utf-8?B?RGkvbGl6Qnl5S29xelRndmRZK3QvMk1nWGtXVzJwY0F3YUdEbDFpU3FmVC9I?=
 =?utf-8?B?MHV0VXhVdHdDQml1THlSYmErRmh4TEwwUkIzaWNUbnZmUC93b1loZ0ZGa0Nl?=
 =?utf-8?B?cU5PajlXTHlEcytONjFLdmlVWHduQzBVeDE3T2VKRGo0aFdRQ2JvcnZvS1FK?=
 =?utf-8?B?MCtPeFcva3gxa1pTWHZiR2hxaG01TWZjblh6K0g4dXZNN1UwVWNYaWIwUGVX?=
 =?utf-8?B?ZjY5Ymhja05STlBtWGlnUW1RckptWHAzMklkT1IzS2lFRGRNREZPTCtCMVF5?=
 =?utf-8?B?RGMzUDhtSVFKM3pzbnA2dlMzRzl2eWk3djRqZTFQajUzWVYrN0EwSmNGMmtO?=
 =?utf-8?B?azBLdW1iaWxMSlRLWU0wUklFVE56eE1IVGhLbEtLOVBZM08wV0lYbmFHZ25U?=
 =?utf-8?B?ZDBVSDJ6clAycmtsTGNUbkVVZTVLWVg0RWZ6Wlk3djZWZC9HMDhKTWt4RDZF?=
 =?utf-8?B?NDJNTmNPbTJVYmMyVjJzdEtuQTJxOTk0VTYxM0UvaFNhOVY2djVpbmtxSGE1?=
 =?utf-8?B?NmxZeVpIZjhyS1RCOEhJaVh3azJWcUpXTXlLM0VsN1lLN0NZNmxoM2c4Qzc4?=
 =?utf-8?B?SFBaOFZrUjRxK3FPaUN4Z0hCTlFVYkdaaU5JdEEvS3lub0p5ZWRDWXgrQncy?=
 =?utf-8?B?R1RBaFVOdDlNd1grbkFIL1ZudmxSZ2hQbjBjMGFPZjJSckpWNTJyUkRQUHVB?=
 =?utf-8?B?dnNJUUZyTU1ldlB4dmV6QmxqNERxcXdIdmtFMlovQWlZOHFQbVE3SmNQWklC?=
 =?utf-8?B?RkhxQjZKaVY0eWVrcktvaVUvcTJRZWFhYzY5alJZcmVnalQzSEs3Z0REZTd3?=
 =?utf-8?B?QVQwcFVmWXhtME1NREpmZmpqKys3SEhMQVhxZ29BWHdVRTh6ZFpUQTJUSm4x?=
 =?utf-8?B?MGtweDNiN1d6RFc0bUhqbFFHNzFJU1lYYVVTNXlRYjJlT2hMYVlDeE9wTmoy?=
 =?utf-8?B?RmNJOXVsejRWS29xelBpVm9UR21rc1VWYnZUVmRvQmVSdWFLNVFTNmtoSHlo?=
 =?utf-8?B?YkJLa0ZmY3gvdERPU29UR0lHamM1dHRkSFpKcmtKZm5HTUlmWXlEM0VxK1hZ?=
 =?utf-8?B?RXhVZVFYUG10bmd4ZjE5anpUd25mdXE2UFZCRmdnVjNZeUtQRTJ2bGxLSE44?=
 =?utf-8?B?UHpQdGRWdWp1UUZHakpCc2FGOFAyS3lsWUxsN2tFb3dWckNTQkQ4Mjc3UlEz?=
 =?utf-8?B?S29ibStmc0h4d1ppdzVtSTZtQjg3K2pJYzA3UE1aOFdMOEs3WkR1d0pKN3kr?=
 =?utf-8?B?QWdpMkh3Uno2WGREVlJkUmM5VTdvei96S3FBSjJBUEhHeW1vcVlrc0FJcVRU?=
 =?utf-8?B?eWZvc3ptaUZ6N3Y1RzhmR1R6aENyNjdNU3dBdk9aeG92bVdDRHU3RE5uOXlE?=
 =?utf-8?Q?bXJwyq?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZlVkNEZSbk9Kc0hjQVg3NXpiQk1GOStSTGhMS1NjeVp3SHBaQ1llZmRxcjJy?=
 =?utf-8?B?MFV1a1NhVmsvSlZmWThUdTlaQmViUE0wVGJ0YlVyNTFwN0F1djE4ckVhWkRS?=
 =?utf-8?B?NFZ5MFRveTN1MlJZOGtkalpGeTdUWnd3bUpMUDgvQm5zU2JDdWNDK2hHTHVW?=
 =?utf-8?B?b0pLNjFrVHgrN091blByQkNUdDYzcnJFR2FEdE03ZVVhd2hxclB3OXIybElI?=
 =?utf-8?B?cWExR0QwSU9OK1JOdjIyVjBpU1RRUUhvNW9ZUEYxb2FETUdmRnBNRXM2emVy?=
 =?utf-8?B?OURSTDR6TW9VWVZPWTN0U2dKa3pRaXo0SGtCMVNCNThIZFBwK0R6bmJrVGU5?=
 =?utf-8?B?MW11N1BaaGtRVlNXMnU2ZGdXT3A3bko1ekNpdEM2UWN2eWJtT3YyZUhhSVRR?=
 =?utf-8?B?MzgwYkhRanFBcFpjK0txeVhpMXlkWVZ5cDlzMDRSQ29OaHdRTE51bUxvVG9m?=
 =?utf-8?B?R3p2VkRZYUtTZjB3S1lBcnVrZFhlTzA3aloyQTc2TndWQzJ0MlZuVlREVzlP?=
 =?utf-8?B?Y3c1Nlg3UE5wMi9ORFVSSkJNUXlUY1FwY0Z2dnVBVUJKNUM3NmRDUHBYOU9N?=
 =?utf-8?B?VUl3QmFVbUN0WWFRaGw0Smd5RVVGMnNoaWEySmRTQ2RobmVlM3h4dTBKQnUw?=
 =?utf-8?B?NDlacnN6ekFjMHFvdk5SWEl5ZngvTENZaXRPc25HQjVKL1crQTBuN3lzVWZF?=
 =?utf-8?B?SHhKTHJYSFF5dk9icmVieDZvOGJIN1lvRHhqRE1hc0Q3N2w3UUt5ei9ZblVp?=
 =?utf-8?B?ZnhjZldxbGQwdEF1NUVXc1IrM2tNUEZoWXRDZGhXQ3V6YTlnUUlGa1VxUUo4?=
 =?utf-8?B?Yko5M2QwVlQxa01NaXhRcFFqa3BFZC9SM3lFUjllUDUzQzRzQWtZNlpCWWZw?=
 =?utf-8?B?elhYWnh2MVVRbEVpaUorbTcxbEo0TzBZTGVzSEZZSUdQWWVKaU9Sa3lxVG9S?=
 =?utf-8?B?WGRQTW9NTGlETnp5MVRUbHZLdmV2b0svSGdLdmF5Qm1tdENwUURYYnVwUU5T?=
 =?utf-8?B?OWpwR2E2UnNaQ1dFTE1tMDhlNlpmZUo3K0JmR0s2a0JMUnNBNGxFdW16djZr?=
 =?utf-8?B?c21vVTlQcmRjTUxad05vbVlWOGhyYzJwMU9GMEdLZFgvRWt6QjRRR2oyL0h0?=
 =?utf-8?B?N2NYL3Q5UTl6cTNzUTZ0ZnNiVzNuK3lYTFYvSm5VaG9MN0xNM21JTEhHdmVS?=
 =?utf-8?B?bWo3NGtSdFBiOEFKT2hxWkNZdVEyTytzditmemZXUm1NOUlyYmVmYUJLOUJJ?=
 =?utf-8?B?VTd0Q3JlZlFWSXdHWHV4aUIzLzMwRVJ3ZTRIdU02Ukx5WWRhbE1jOGhIVlNM?=
 =?utf-8?B?RTBxd0RGcGZQZENXcTlPemZFMjZmbGJPSllHbW5EdUVpUExnZ1JrU21WTU9w?=
 =?utf-8?B?WjdIditUbjI5NGVENFYvRldxVXg1L0o2QitRaXEzY295VXlEU1ZSVW92WkF1?=
 =?utf-8?B?dXNQVG5TenA0NXRsK1lreU1wclJoS3E4anNPRWxEMjZBY2E1dExiNmVLaXlE?=
 =?utf-8?B?VlVYZ3hlZEY1d2FmbXBwNGorTlVYWVl4b0RvZ05ZVnBBUlJFbjByaW5uRWVi?=
 =?utf-8?B?TnRsMGZaT2t3THZSNjdVMEZNWHRVSWdjM0R0VzIrOG1OZ0RoK2F4enB2TTB2?=
 =?utf-8?B?VTZzaWg0MTZCUUROYzIrWlk2eEpOempEWVV4VkNOM1JMM0NhZFArck9mdHRh?=
 =?utf-8?B?N2ZUcHFNUVdMWU12dHRXam02RXRaZ0xDc1lDNGxxemJ4WEhlNEVoSHpZYzR0?=
 =?utf-8?B?MUhyTTJyMDFieUFwOGU2bTlSZ2pHNitnYkh0YXNmMzNLUDROVzM5RUhrWlVr?=
 =?utf-8?B?dlFUbzBzR1pZU2FjYjEyWk85T3QvTnczMk1NZVhBekFueG1xT2pUL0JEWFd6?=
 =?utf-8?B?M2tFQ3N3Ump6b1hvNjhtaTZ2eFRYdVB0TmV6U2dyNTdtcG1LYWg0YlNCSkFn?=
 =?utf-8?B?aTE2K09HbnlXdy9OdTlzR1AvWXM2SytJb0QzSUw4bmtVSzIzZ21TUHVNMG9L?=
 =?utf-8?B?QXNBYnpRVmFyZWJocEo1dVVrL3EySXhzRFdKVXhHQm9Nei81K3k5NzhjYU9D?=
 =?utf-8?B?aWdIT3BvNkMzbG1rc0ppV1ZjcjZDZG5ib0NLQ1h4WHpjd1U4TFd2WGZhTGFr?=
 =?utf-8?B?eTR2Ti9xT2xtTWJiNHlHRTRWSW9HME4wUHUzd0ZEVGJoQjh5bnRFOFJjM1RG?=
 =?utf-8?B?SlpkR3BiZCs4cVN4UFFwczdaWVRWVElGM2dBNzJvMlJ1Z2xCa25IVHhoSDEy?=
 =?utf-8?B?alh5cWFYRFY2QmhzcWcwY3RvVU0wMXVjY1dpRTZlb0p4d3N1NS9lNVBpamJp?=
 =?utf-8?B?NTlHaU9YeDJ4QkJHakVQYjFwLzBZQXV3clhSbGJLdVYxNnMxeFpad0hiQk41?=
 =?utf-8?Q?TkwrXXms1MoIhe4Y=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c3b058d8-5fce-4e16-8da0-08de5ffe87e5
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2026 12:53:14.5937 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4Dsme6fztdIdzHDzsk4vQcHeazKqrZpMwCPdbMF31ILbfYe6AbnHxpAQSwR8oBip6wbAKyuUoyF8MTZvajWNghhNH09vxW3pgY2hV6+jnRQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7988
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 964C0BABDB
X-Rspamd-Action: no action

Hi Janusz,

the code looks good, I am wondering if "fake" is appropriate
word for the descriptions below:
in a way the values are correct, but wrongly reported - they
belong to pci x1 bridge of the GPU. Maybe adding a short
sentence that the values reported always belong to pci x1
instead of the fastest active bridge would complete the message?
What do you think?

On 2026-01-27 at 10:54:18 +0100, Janusz Krzysztofik wrote:
> Users of Intel discrete graphics adapters are confused with fake
> information on PCIe link bandwidth (speed and size) of their GPU devices
> reported by tools like lspci or lsgpu.  That fake information is
> unfortunately provided by hardware, Linux PCI subsystem just exposes it
> untouched to upper layers, including userspace via sysfs, and userspace
> tools just report those fake values.
> 
> While we can't do much about the kernel side or general purpose userspace
> tools like lspci, we can try to address the issue with our lsgpu utility.
> 
> Correct link bandwidth attributes of a discrete GPU card can be obtained
> from the kernel by looking not at the PCI device of the GPU itself, only
> at a PCIe upstream port of the card's PCI bridge.  For integrity with
> content of the sysfs and with output from the other tools, we are not
> going to replace the fake information with that from the bridge upstream
> port, only show that port and its attributes themselves while listing
> devices.
> 
> Since the tool uses our udev based igt_device_scan library for identifying
> GPU devices and printing their properties and attributes, modifications
> that we need apply to that library.
> 
> As a first step, exclude the fake data from being printed.
> 
> v2: Keep dump_props_and_attrs() generic: hand over decision on omitting
>     link attributes to the caller, and implementation of the check to a
>     helper (Sebastian).
> 
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10753
> Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  lib/igt_device_scan.c | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
> index abd8ca209e..7ae64375b5 100644
> --- a/lib/igt_device_scan.c
> +++ b/lib/igt_device_scan.c
> @@ -602,7 +602,15 @@ static inline void _print_key_value(const char *k, const char *v)
>  	printf("%-32s: %s\n", k, v);
>  }
>  
> -static void dump_props_and_attrs(const struct igt_device *dev)
> +static bool is_link_attr(const char *name)
> +{
> +	return !strcmp(name, "max_link_speed") ||
> +	       !strcmp(name, "max_link_width") ||
> +	       !strcmp(name, "current_link_speed") ||
> +	       !strcmp(name, "current_link_width");
> +}
> +
> +static void dump_props_and_attrs(const struct igt_device *dev, bool omit_link)
>  {
>  	struct igt_map_entry *entry;
>  
> @@ -613,6 +621,10 @@ static void dump_props_and_attrs(const struct igt_device *dev)
>  
>  	printf("\n[attributes]\n");
>  	igt_map_foreach(dev->attrs_map, entry) {
> +		/* omit link bandwidth attributes if requested */
> +		if (omit_link && is_link_attr(entry->key))
> +			continue;
> +
>  		_print_key_value((char *)entry->key, (char *)entry->data);
>  	}
>  	printf("\n");
> @@ -1366,7 +1378,8 @@ igt_devs_print_detail(struct igt_list_head *view,
>  			_print_key_value("codename", dev->codename);
>  		}
>  
> -		dump_props_and_attrs(dev);
> +		/* omit fake link bandwidth attributes if a discrete card */
> +		dump_props_and_attrs(dev, dev->dev_type == DEVTYPE_DISCRETE);
>  	}
>  }
>  
> -- 
> 2.52.0
> 

-- 
Best Regards,
Krzysztof
