Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A54A8A1B7E9
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jan 2025 15:32:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8FBB910E98D;
	Fri, 24 Jan 2025 14:32:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TOL6BS+h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E89D10E98D;
 Fri, 24 Jan 2025 14:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737729169; x=1769265169;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=X8FhtJlad25DjqVHFs8Bb1ODZ7zoQdCi2Z1uQ6ZWNOY=;
 b=TOL6BS+hNkjOpeG6K/kZ4hsxl3EUmJFjquCrv6rk6JMeu9EjTvb3eW0z
 Y4Sa31RfiikPt9HBBNHtKVVGcB3ys29aasJek3u2NxPsR+x0Vsobj7DQM
 E78UBwujfp4TSudOeWvPpgRNh4G5Bl3Gzy55cVt9ZDr+289xehjOaIy+w
 Tl05cDZLrbzX3TJg4ICYFWNJuvCMVb9uanQkR139fOPmfvTGbhYzgd5gE
 eCrbKPmVgMuLl8CxgZECfrzzMvU/hKzYXB0xO3uvtcoc/Rhu26FP86ayn
 3xlU+gaVHJCCjd3fdQswODVroshz287CtY+KCeWgIK+O9S84LxYrD3Ljz g==;
X-CSE-ConnectionGUID: 1I3GTtUETD+2KNMFO5iHrQ==
X-CSE-MsgGUID: ERdX/AWnTm6N8rmjqb9kCg==
X-IronPort-AV: E=McAfee;i="6700,10204,11325"; a="38515909"
X-IronPort-AV: E=Sophos;i="6.13,231,1732608000"; d="scan'208";a="38515909"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jan 2025 06:32:48 -0800
X-CSE-ConnectionGUID: +kCWtp02TQ2cTLEL714OEg==
X-CSE-MsgGUID: 6Nskcq4yTbWM7qwoLKPj7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="131081317"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa002.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Jan 2025 06:32:48 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 24 Jan 2025 06:32:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 24 Jan 2025 06:32:47 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.49) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 24 Jan 2025 06:32:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XcL19vziAYTWw8Le+T48cGLLw/nLqtYB3S8ftUNdIQod4tJ91rwgr0BWaH5UvNve7hCCSmzes/V9uagzbt2E4Dx1i6COrcPPYMCY8/BMU5gCOrxEtb0EnFwopU3tqOoPsZOn0NkbCGooyrtqUwNvXxHswWwOapMXjlaVpC5xbzZKmzDF3c7HL9IvXyKATpeL8s1AlxVS8oug6GARwqp7tG6cJeUU31HPZ83eJ89jU4e7KPoXmv41rfjWnHiHT0tvlRRY6kEG1gdtQEmFJ6lqfGGot+QoXsdJXYIVWmz7m12GEcOrINxSSolSnIyqdWxApGwwYKABHSSRu8vDtnaUoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uERjmg5tKtqUOiIvkbRsWnZQoPxwAu1VIsdRrBaKSJA=;
 b=jgL09sxHK0a17VwOTLE0JW2rOJTYIrZs7CNS4AYQ+1xqqZWi+d0CxDBnxDoeWN3+waT3kXoyCnjGjXCToEShnd5Mfarjx3s8eG9Vdzxlts48rLieGWSeepUMooWAkesnHntZFgIG4nIAXipNAaA3ThzBHu2Ab7LtzfcNfQJGZcKyKz0mIulFnNL01dvzI/0imQuqik/VzwoTHS+hXLqqVZiwG/RAEdlzOjTwJzUe0D1uotB+aG2akKtEGoypJPFPjPGCrRcFzmVitNbxCmlzTcY9skiFkZy407R2TIZwmCnE/Kcv42MTrcqqqVhJ8P2qF2DLTBmTg7FPZoU/qZgLgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SN7PR11MB7418.namprd11.prod.outlook.com (2603:10b6:806:344::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8377.18; Fri, 24 Jan
 2025 14:32:18 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%5]) with mapi id 15.20.8377.009; Fri, 24 Jan 2025
 14:32:18 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z5OPWg2wZyXcPP_A@intel.com>
References: <20250122200355.89389-1-gustavo.sousa@intel.com>
 <Z5OPWg2wZyXcPP_A@intel.com>
Subject: Re: [PATCH v7] drm/i915/cmtg: Disable the CMTG
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 24 Jan 2025 11:32:13 -0300
Message-ID: <173772913356.3215.15837611112615353054@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0041.namprd04.prod.outlook.com
 (2603:10b6:303:6a::16) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SN7PR11MB7418:EE_
X-MS-Office365-Filtering-Correlation-Id: b916f00e-5e74-4e4a-c9cc-08dd3c83e79b
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ejhWQ1R6Qlp5YUJMMDFPT3BGZ0tHQVZOdklTR0dsRjZGenUzY2E1Rm5MZlRL?=
 =?utf-8?B?eEd1UEs4SmZDekdmU1RVZU52Q2pESk1DV2JTclNvT0FTNDUwM3dnT0dhMzBU?=
 =?utf-8?B?UGRuVXBzdk5GdlRlNU5kb0lNTThPRTdXYkVBbDNCSnRjSzFGS0lyK3h0Nmp6?=
 =?utf-8?B?M1RMMUtiMWt6S3VyTVBqWFdGa0xjdFduM0cweEsyeUQwUHRXRXVCaUl2VmRr?=
 =?utf-8?B?bHV6cW5pdVBKTWZlbk5XK3AzbHM2NTFKa1VML0pOTERHSHk1Y0xSaThRQVZk?=
 =?utf-8?B?RDFGTHlwV0g5VnFSQjRqek9iaWN5cjRzcmdqSkNqaVBYQlh5Qm5XSVg5eDA5?=
 =?utf-8?B?WnAySjA5WVk3MlM1NU0zWnFQZGlHeWZnMm01Zlc3T25UK2ErT0JFRDgvWHVs?=
 =?utf-8?B?Ty9adS9vTlY3cDhNTW1CZUVsV093ZS8xdzM5Rlg5ajQrMXdGRi9INnBodk5z?=
 =?utf-8?B?cUFFTkNVcGE3YXFuOWxNaitWMFp3cVFGR2ZCdjRDQkpmcy85dDQ1VEdPTFVD?=
 =?utf-8?B?VzYySzh3TjlCSUZXV3JQYll2OEswL3QvcjkvSjlkNUgyaWxWTnpJZmZTT3hp?=
 =?utf-8?B?d1dzcmVBRzBWS1Z2RUtYWGlFS1dXUFU2c3oxK0tWaXpVdllWWjdRaVpXSUhv?=
 =?utf-8?B?RUdWRW8yMUVqejJ5N3YxdUVVTEt5UGwxY1VxWU0rRjIxQUlRZnlYblZaTlRC?=
 =?utf-8?B?MWYyOVhEQlRXSWN3RlNoa1pqSnhyemROby9zU2VBNFZqZCthMVh0OGZxZ29P?=
 =?utf-8?B?NENMeml1ZEVJLzZBaEU2MzMxaWJtZkpkRm1ieUc4MngvWHRkSlc5NEpLc00x?=
 =?utf-8?B?NDI4V0ZEaWkzM1dQaVU4YkFXZzdPRmFtNys2TkRkb2w5Vkh2ZENLUzQvNERS?=
 =?utf-8?B?RGlUZUVXZy81L1pDdlBnWllxZ3dKZGMvV1JWSDd0Ny9rMTR2OG5jZy9mZnVR?=
 =?utf-8?B?b0MrY1c0MElNSVBMSWdzcEFKQkgrdDBKYkM2akRWTkRHVFhYQTdFZCs1bnB1?=
 =?utf-8?B?czk1QlZFVGI1WTFFU0ZMU09HNms1Vm1ZeW5USnhROHByWHlRL3lCY0QrSE80?=
 =?utf-8?B?RFF2Nk1hdmlxeVhMd2RnREtqam5UTXRNMGxDTVB6eFoyY3dndW9rQjRBZlps?=
 =?utf-8?B?NHltOGpsNVhpblh6cjlCUi84cTVnSVp0VHV3YmRGUlpFSEFMQlJJcktxSkhJ?=
 =?utf-8?B?czRJR1RiR3ZkN2F1dkpNNnpNd0RyU2pzaDhXazQvODdQWW1ucXFwWUgvZFE5?=
 =?utf-8?B?MmdzTEJKMEZiWmI5NjNUVGk1WTVSUlVYanNCVWxLa0FxYmJKVUQvL2JaTUdR?=
 =?utf-8?B?UWNGWXNTbE5QcEV0VVlUek1rcktBZ0llUkhhaC9UMXF5WDZCbDR2NmVnQ0pE?=
 =?utf-8?B?Y3ZDUC9GTDV0MnNKREEyVkJUaHQ2U2x0QXdZVTJ3TUZoK1hGYWZkTm5IVVZE?=
 =?utf-8?B?eFhlVGYvQkJBUDJ3OUdWM2xRbktid05qWHkzd3Rvd1VoWGNjbEc3UVJ2b1dr?=
 =?utf-8?B?VU4wZ0pDWENKRFJxMlRQZnNIY0Y4MWFWWEZNRStDcnRXcG1hQjBXckhQYjB3?=
 =?utf-8?B?T09qVE5LQ00vbjNDVlRHMGY4UjltVHRKYlVjZXY1N2dhUFJxT1ZIb1gwV29u?=
 =?utf-8?B?UENwWkdCY2hSRCsrV2tKNk1zbVg2a0Q2VHViKzJERnNhYkowVUVqejU3dVZs?=
 =?utf-8?B?YzBIRmFoRXlmd1hPQkRCWDNPU1VQMnBvcEdtMFVWVnZJcW1SN2xxZUZyVmZq?=
 =?utf-8?B?QWRBYXB2ZmlRUXVoZVZSRjNSZUQ1RThHL2J4VkVDaHlRNnRmLzI1MFNBSDNS?=
 =?utf-8?B?Mk9ld2ZjWjdvdGlkODU2dGJhbThuNDIxZGpIM291ZGlieXhXaVoxWWkwVVdF?=
 =?utf-8?Q?JdZbiuD+WqFpM?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VElIWkptRFRUdG5JNndMbG1DRXhoQWppMzFzQTB1djBsQ3NFRWlKcWh0L1Vm?=
 =?utf-8?B?QlVmMUFnc0FCK0xEQUxzeXloY1VnUWFCZWlnZW0zcXpTNmpnVnA0aWlrWG5y?=
 =?utf-8?B?RFN3dXBzNUp2Z1RkV0U3M1hRVXp2ZWZrYUdzbGRtT1B4Tkd5NU9sUnJ4NUdr?=
 =?utf-8?B?ck9YdjVLWWdMNC8zTDFMaGtNa3A4ZHJZR085UTJwTHFwMmVqbFV6ZElTUkFx?=
 =?utf-8?B?ZCtsSmZDeDZIdEl5YUhyc2RBT0dBM3ZmV0gyNHlhb1hNMWdZMEh6MjJuY3NQ?=
 =?utf-8?B?SVZuZCt2UFU5QW1Cb0FGSDBHS0wrSThYNWhwQWtxeXhiVTRhWEt5R0d6aWtn?=
 =?utf-8?B?RTBEM1paOGRWemxaV2R5YUE1VGxwVFRWaDFEKzk5WVpVRXZoTDUzcDE0dVBF?=
 =?utf-8?B?LzFzckUzcFdja1lZNGhXLzFUcnoyTlBaVE9Wd0IyWjRuQXpKQy81cnpJKy9a?=
 =?utf-8?B?YTVmT250TTg2L0lVQjB6RTZzWTg5cEMwbkE2cFB6WTROSDBKQW1UM2dzazNY?=
 =?utf-8?B?SGpiaHY0cEVHVml3WjA1NWJDQ2ZLSWZEMVE3VHRxN0NiVVdqemIxaVYxcEpa?=
 =?utf-8?B?KzZtSWFva0ozWHlwL25zR09XUDRnL2tpakxpUkllREpWMVBUK2hXWG9VVzZy?=
 =?utf-8?B?T3l5YUMvMXVFcGtZSTlzVEVTM3V4Y1l6dXQ4b000RkNNLzhmNENBZmhoVXlh?=
 =?utf-8?B?UDhUTDQ3SG9rZm1EOXAwZWFEVnVFNkRPZHRXQnJIMjRLU3JMTmt1Zk9FQ0k3?=
 =?utf-8?B?NllQcGQ1M3dIckR3RGlNWElreHd4V3RyWGhZYjYwQ0E1aUZQTHpicFFiL0V0?=
 =?utf-8?B?blpUSm01WStzU3lybmV4SWhNZzU2Qm9pMGljcTkvTmFkVm4xOVhmSDJKRFlu?=
 =?utf-8?B?MUxaRVVlMXNMTFVudXdmN1FtdGVadzBGT1JyNFk5bHh3SGxyU0doMy9sTGlm?=
 =?utf-8?B?b0RVQlRlNzZnbEswbUE1dzBxcUdWUHpFUlY5QWVBbEdHZE9Hb0NFN2k5Rk5P?=
 =?utf-8?B?dWV3dDBFVnNEY0ZOTlJuWWRRbzRCbzd6YlY2aGttcUZXcWNzZ0lYU1pCc05t?=
 =?utf-8?B?cWdPUUJRKzlUOE5rSk5Hbm1EM2xtOEFCRkxmdzBMZ1lBRVorQUtvUGdxbi8w?=
 =?utf-8?B?aElPZFg3S095L0JtNVMyR0x6TjNlS1l2U01qUjl5MTlETThTd1dzb0FtZTAw?=
 =?utf-8?B?dGhicGRreFYyc29CeHNpU2xkNDVvT0xHOGFta0J6cnhOTlcwV0ExaURTR3M3?=
 =?utf-8?B?aHZwVWFwdFFtbVhUcWpKeGNpdngra0JZZk1XL2dpT2JpUThYTCtUZFV3OVhp?=
 =?utf-8?B?MFdlRlVVeGZSV2F2U2NNWDA1Rm9yU3FRNGwvc1pIdjRTV1hPY1BjdWlYWTkv?=
 =?utf-8?B?SGFYRGZzakExQjVBYjg2MWlwSnNtMVZIcjlBUUp6OGpkT3lpTDMxNTRCU2d3?=
 =?utf-8?B?WmhIY0p1aFFYa3BzWDNmb3B0VFZncTZqU1hsdUh0RHZNV29KTmdwZVBLUnli?=
 =?utf-8?B?SjEzWWt4RFRiemNCNjVHc2FxZWxIc0tLakdBUUlZdWVJQzJFM1o0blNYbWZ4?=
 =?utf-8?B?aDh1c29VdFZ5Vnhnb3JXdEVDZlFvQnFNakIrdTdJRExVVFNUTWJtbGovWE5p?=
 =?utf-8?B?ZW5uSmd1U1c4MkFNaDlqT055RnVmTTAvaDFiSnlBckoxcHUxQ0pQZzNwamcr?=
 =?utf-8?B?ekx5c1ppTFM4L0VHSTdBZGNVMHBWb2hFdUlZamtUdmxCS2VDQmEvSzlEd0FG?=
 =?utf-8?B?SjJaS2o5WFA1bjY5ZXJMS1VaY1g3bUpEaDduWnJaK25DTUdEYlNOUmltZjQ5?=
 =?utf-8?B?ciszYnNzMGlwZVNIK0g4ejNTM0RaQUJYZE5pZHRLSGNGb1ZMSXIxazRpWHFE?=
 =?utf-8?B?SWcvSC9WOUNGbjd0eXN3RTdrQkxJaVdGcXBXenRValYxK2lBQVV1TlhrcGpt?=
 =?utf-8?B?KzY2WDBjbkQ0OSs5WDViZ0RCQ1g3dTQxb3ZYTmNzQUFEVEphNkZrUlZLVGQ3?=
 =?utf-8?B?MzExUkZTcHhyZzc0VDdLTXBpckFjTkpZdllBZHNlYTdQUWx0cldhcnZOeld5?=
 =?utf-8?B?a1FHdEFHWVRGZ2R2Snh3NWhRa05UTHlxWERRWk4zOGFBSzNSWERVUHdLTnlR?=
 =?utf-8?B?ZkdVbXk3RzlFb3ZiUUlzQno3ZmF3VkdReCsrMHFlMURrOEozSzRhTUsrRjVi?=
 =?utf-8?B?clE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b916f00e-5e74-4e4a-c9cc-08dd3c83e79b
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Jan 2025 14:32:18.2452 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E3XQKpVMySfnpuz5YCIDU1CjOiLBEbUud/AjVexruTvNeriaKz6/g2o0Vxyat/meXRFfv1BrR4NxMeGXoEwelQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7418
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-01-24 10:02:18-03:00)
>On Wed, Jan 22, 2025 at 05:03:41PM -0300, Gustavo Sousa wrote:
>> The CMTG is a timing generator that runs in parallel with transcoders
>> timing generators and can be used as a reference for synchronization.
>>=20
>> We have observed that we are inheriting from GOP a display configuration
>> with the CMTG enabled. Because our driver doesn't currently implement
>> any CMTG sequences, the CMTG ends up still enabled after our driver
>> takes over.
>>=20
>> We need to make sure that the CMTG is not enabled if we are not going to
>> use it. For that, let's add a partial implementation in our driver that
>> only cares about disabling the CMTG if it was found enabled during
>> initial hardware readout. In the future, we can also implement sequences
>> for using the CMTG if that becomes a needed feature.
>>=20
>> For now, we only deal with cases when it is possible to disable the CMTG
>> without requiring a modeset. For earlier display versions, we simply
>> skip if we find the CMTG enabled and we can't disable it without a
>> proper modeset. In the future, we need to properly handle that case.
>>=20
>> v2:
>>  - DG2 does not have the CMTG. Update HAS_CMTG() accordingly.
>>  - Update logic to force disabling of CMTG only for initial commit.
>> v3:
>>  - Add missing changes for v2 that were staged but not committed.
>> v4:
>>  - Avoid if/else duplication in intel_cmtg_dump_state() by using "n/a"
>>    for CMTG B enabled/disabled string for platforms without it. (Jani)
>>  - Prefer intel_cmtg_readout_hw_state() over intel_cmtg_readout_state().
>>    (Jani)
>>  - Use display struct instead of i915 as first parameter for
>>    TRANS_DDI_FUNC_CTL2(). (Jani)
>>  - Fewer continuation lines in variable declaration/initialization for
>>    better readability. (Jani)
>>  - Coding style improvements. (Jani)
>>  - Use drm_dbg_kms() instead of drm_info() for logging the disabling
>>    of the CMTG.
>>  - Make struct intel_cmtg_state entirely private to intel_cmtg.c.
>> v5:
>>  - Do the disable sequence as part of the sanitization step after
>>    hardware readout instead of initial modeset commit. (Jani)
>>  - Adapt to commit 15133582465f ("drm/i915/display: convert global state
>>    to struct intel_display") by using a display struct instead of i915
>>    as argument for intel_atomic_global_obj_init().
>> v6:
>>  - Do not track CMTG state as a global state. (Ville)
>>  - Simplify the driver logic by only disabling the CMTG only on cases
>>    when a modeset is not required. (Ville)
>> v7:
>>  - Remove the call to drm_WARN_ON() when checking
>>    intel_cmtg_disable_requires_modeset() and use a FIXME in the comment
>>    instead.
>>  - Remove the !HAS_CMTG() guard from intel_cmtg_get_config(), which is
>>    static and its caller is already protected by that same condition.
>>  - Also take the opportunity to put some Bspec references in the commit
>>    trailers section.
>>=20
>> Bspec: 68915, 49262
>> Cc: Jani Nikula <jani.nikula@intel.com>
>> Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/Makefile                 |   1 +
>>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 176 ++++++++++++++++++
>>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  13 ++
>>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  21 +++
>>  .../drm/i915/display/intel_display_device.h   |   1 +
>>  .../drm/i915/display/intel_modeset_setup.c    |   3 +
>>  drivers/gpu/drm/i915/i915_reg.h               |   1 +
>>  drivers/gpu/drm/xe/Makefile                   |   1 +
>>  8 files changed, 217 insertions(+)
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.c
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg.h
>>  create mode 100644 drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>>=20
>> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefi=
le
>> index 3dda9f0eda82..7e7414453765 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -231,6 +231,7 @@ i915-y +=3D \
>>          display/intel_bo.o \
>>          display/intel_bw.o \
>>          display/intel_cdclk.o \
>> +        display/intel_cmtg.o \
>>          display/intel_color.o \
>>          display/intel_combo_phy.o \
>>          display/intel_connector.o \
>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c b/drivers/gpu/drm=
/i915/display/intel_cmtg.c
>> new file mode 100644
>> index 000000000000..a2f26b297733
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
>> @@ -0,0 +1,176 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright (C) 2025 Intel Corporation
>> + */
>> +
>> +#include <linux/string_choices.h>
>> +#include <linux/types.h>
>> +
>> +#include <drm/drm_device.h>
>> +#include <drm/drm_print.h>
>> +
>> +#include "i915_reg.h"
>> +#include "intel_crtc.h"
>> +#include "intel_cmtg.h"
>> +#include "intel_cmtg_regs.h"
>> +#include "intel_de.h"
>> +#include "intel_display_device.h"
>> +
>> +/**
>> + * DOC: Common Primary Timing Generator (CMTG)
>> + *
>> + * The CMTG is a timing generator that runs in parallel to transcoders =
timing
>> + * generators (TG) to provide a synchronization mechanism where CMTG ac=
ts as
>> + * primary and transcoders TGs act as secondary to the CMTG. The CMTG o=
utputs
>> + * its TG start and frame sync signals to the transcoders that are conf=
igured
>> + * as secondary, which use those signals to synchronize their own timin=
g with
>> + * the CMTG's.
>> + *
>> + * The CMTG can be used only with eDP or MIPI command mode and supports=
 the
>> + * following use cases:
>> + *
>> + * - Dual eDP: The CMTG can be used to keep two eDP TGs in sync when on=
 a
>> + *   dual eDP configuration (with or without PSR/PSR2 enabled).
>> + *
>> + * - Single eDP as secondary: It is also possible to use a single eDP
>> + *   configuration with the transcoder TG as secondary to the CMTG. Tha=
t would
>> + *   allow a flow that would not require a modeset on the existing eDP =
when a
>> + *   new eDP is added for a dual eDP configuration with CMTG.
>> + *
>> + * - DC6v: In DC6v, the transcoder might be off but the CMTG keeps runn=
ing to
>> + *   maintain frame timings. When exiting DC6v, the transcoder TG then =
is
>> + *   synced back the CMTG.
>> + *
>> + * Currently, the driver does not use the CMTG, but we need to make sur=
e that
>> + * we disable it in case we inherit a display configuration with it ena=
bled.
>> + */
>> +
>> +/*
>> + * We describe here only the minimum data required to allow us to prope=
rly
>> + * disable the CMTG if necessary.
>> + */
>> +struct intel_cmtg_config {
>> +        bool cmtg_a_enable;
>> +        /*
>> +         * Xe2_LPD adds a second CMTG that can be used for dual eDP asy=
nc mode.
>> +         */
>> +        bool cmtg_b_enable;
>> +        bool trans_a_secondary;
>> +        bool trans_b_secondary;
>> +};
>> +
>> +static bool intel_cmtg_has_cmtg_b(struct intel_display *display)
>> +{
>> +        return DISPLAY_VER(display) >=3D 20;
>> +}
>> +
>> +static bool intel_cmtg_has_clock_sel(struct intel_display *display)
>> +{
>> +        return DISPLAY_VER(display) >=3D 14;
>> +}
>> +
>> +static void intel_cmtg_dump_config(struct intel_display *display,
>> +                                   struct intel_cmtg_config *cmtg_confi=
g)
>> +{
>> +        drm_dbg_kms(display->drm,
>> +                    "CMTG readout: CMTG A: %s, CMTG B: %s, Transcoder A=
 secondary: %s, Transcoder B secondary: %s\n",
>> +                    str_enabled_disabled(cmtg_config->cmtg_a_enable),
>> +                    intel_cmtg_has_cmtg_b(display) ? str_enabled_disabl=
ed(cmtg_config->cmtg_b_enable) : "n/a",
>> +                    str_yes_no(cmtg_config->trans_a_secondary),
>> +                    str_yes_no(cmtg_config->trans_b_secondary));
>> +}
>> +
>> +static void intel_cmtg_get_config(struct intel_display *display,
>> +                                  struct intel_cmtg_config *cmtg_config=
)
>> +{
>> +        u32 val;
>> +
>> +        val =3D intel_de_read(display, TRANS_CMTG_CTL_A);
>> +        cmtg_config->cmtg_a_enable =3D val & CMTG_ENABLE;
>> +
>> +        if (intel_cmtg_has_cmtg_b(display)) {
>> +                val =3D intel_de_read(display, TRANS_CMTG_CTL_B);
>> +                cmtg_config->cmtg_b_enable =3D val & CMTG_ENABLE;
>> +        }
>> +
>> +        if (intel_crtc_for_pipe(display, PIPE_A)) {
>
>HAS_TRANSCODER() seems more appropriate.

Ah, certainly.

Thanks for this.

>
>> +                val =3D intel_de_read(display, TRANS_DDI_FUNC_CTL2(disp=
lay, TRANSCODER_A));
>> +                cmtg_config->trans_a_secondary =3D val & CMTG_SECONDARY=
_MODE;
>> +        }
>> +
>> +        if (intel_crtc_for_pipe(display, PIPE_B)) {
>> +                val =3D intel_de_read(display, TRANS_DDI_FUNC_CTL2(disp=
lay, TRANSCODER_B));
>> +                cmtg_config->trans_b_secondary =3D val & CMTG_SECONDARY=
_MODE;
>> +        }
>> +}
>> +
>> +static bool intel_cmtg_disable_requires_modeset(struct intel_display *d=
isplay,
>> +                                                struct intel_cmtg_confi=
g *cmtg_config)
>> +{
>> +        if (DISPLAY_VER(display) >=3D 20)
>> +                return false;
>> +
>> +        return cmtg_config->trans_a_secondary || cmtg_config->trans_b_s=
econdary;
>> +}
>> +
>> +static void intel_cmtg_disable(struct intel_display *display,
>> +                               struct intel_cmtg_config *cmtg_config)
>> +{
>> +        u32 clk_sel_clr =3D 0;
>> +        u32 clk_sel_set =3D 0;
>> +
>> +        if (cmtg_config->trans_a_secondary)
>> +                intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, TRAN=
SCODER_A),
>> +                             CMTG_SECONDARY_MODE, 0);
>> +
>> +        if (cmtg_config->trans_b_secondary)
>> +                intel_de_rmw(display, TRANS_DDI_FUNC_CTL2(display, TRAN=
SCODER_B),
>> +                             CMTG_SECONDARY_MODE, 0);
>> +
>> +        if (cmtg_config->cmtg_a_enable) {
>> +                drm_dbg_kms(display->drm, "Disabling CMTG A\n");
>> +                intel_de_rmw(display, TRANS_CMTG_CTL_A, CMTG_ENABLE, 0)=
;
>> +                clk_sel_clr |=3D CMTG_CLK_SEL_A_MASK;
>> +                clk_sel_set |=3D CMTG_CLK_SEL_A_DISABLED;
>> +        }
>> +
>> +        if (cmtg_config->cmtg_b_enable) {
>> +                drm_dbg_kms(display->drm, "Disabling CMTG B\n");
>> +                intel_de_rmw(display, TRANS_CMTG_CTL_B, CMTG_ENABLE, 0)=
;
>> +                clk_sel_clr |=3D CMTG_CLK_SEL_B_MASK;
>> +                clk_sel_set |=3D CMTG_CLK_SEL_B_DISABLED;
>> +        }
>> +
>> +        if (intel_cmtg_has_clock_sel(display) && clk_sel_clr)
>> +                intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr, clk_se=
l_set);
>
>We don't need some kind of sync to make sure the transcoders
>are no longer using the CMTG before turning off the clock?

Well, that seems to be the case for pre-LNL platforms, which require a
modeset after clearing TRANS_DDI_FUNC_CTL2[CMTG_SECONDARY_MODE]. Only
after the modeset the CMTG can be disabled and then it's clock source
deselected. I guess the modeset might be what ensures that the
transcoder is not sync'ing with the CMTG anymore here?

However, for those platforms, we are leaving the CMTG enabled for now.

Now, for LNL and forward, the Bspec instructions in the disable sequence
simply tells to disable the CMTG and clear
TRANS_DDI_FUNC_CTL2[CMTG_SECONDARY_MODE], and then disable the CMTG
clock. So it seems no sync seems to be required here.

On a related note, the spec for LNL and forward also says that the CMTG
can be enabled dynamically after the modeset.

--
Gustavo Sousa

>
>> +}
>> +
>> +/*
>> + * Read out CMTG configuration and, on platforms that allow disabling i=
t without
>> + * a modeset, do it.
>> + *
>> + * This function must be called before any port PLL is disabled in the =
general
>> + * sanitization process, because we need whatever port PLL that is prov=
iding the
>> + * clock for CMTG to be on before accessing CMTG registers.
>> + */
>> +void intel_cmtg_sanitize(struct intel_display *display)
>> +{
>> +        struct intel_cmtg_config cmtg_config =3D {};
>> +
>> +        if (!HAS_CMTG(display))
>> +                return;
>> +
>> +        intel_cmtg_get_config(display, &cmtg_config);
>> +        intel_cmtg_dump_config(display, &cmtg_config);
>> +
>> +        /*
>> +         * FIXME: The driver is not prepared to handle cases where a mo=
deset is
>> +         * required for disabling the CMTG: we need a proper way of tra=
cking
>> +         * CMTG state and do the right syncronization with respect to t=
riggering
>> +         * the modeset as part of the disable sequence.
>> +         */
>> +        if (intel_cmtg_disable_requires_modeset(display, &cmtg_config))
>> +                return;
>> +
>> +        intel_cmtg_disable(display, &cmtg_config);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h b/drivers/gpu/drm=
/i915/display/intel_cmtg.h
>> new file mode 100644
>> index 000000000000..ba62199adaa2
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
>> @@ -0,0 +1,13 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright (C) 2025 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_CMTG_H__
>> +#define __INTEL_CMTG_H__
>> +
>> +struct intel_display;
>> +
>> +void intel_cmtg_sanitize(struct intel_display *display);
>> +
>> +#endif /* __INTEL_CMTG_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h b/drivers/gp=
u/drm/i915/display/intel_cmtg_regs.h
>> new file mode 100644
>> index 000000000000..668e41d65e86
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
>> @@ -0,0 +1,21 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright (C) 2025 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_CMTG_REGS_H__
>> +#define __INTEL_CMTG_REGS_H__
>> +
>> +#include "i915_reg_defs.h"
>> +
>> +#define CMTG_CLK_SEL                        _MMIO(0x46160)
>> +#define CMTG_CLK_SEL_A_MASK                REG_GENMASK(31, 29)
>> +#define CMTG_CLK_SEL_A_DISABLED                REG_FIELD_PREP(CMTG_CLK_=
SEL_A_MASK, 0)
>> +#define CMTG_CLK_SEL_B_MASK                REG_GENMASK(15, 13)
>> +#define CMTG_CLK_SEL_B_DISABLED                REG_FIELD_PREP(CMTG_CLK_=
SEL_B_MASK, 0)
>> +
>> +#define TRANS_CMTG_CTL_A                _MMIO(0x6fa88)
>> +#define TRANS_CMTG_CTL_B                _MMIO(0x6fb88)
>> +#define  CMTG_ENABLE                        REG_BIT(31)
>> +
>> +#endif /* __INTEL_CMTG_REGS_H__ */
>> diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drive=
rs/gpu/drm/i915/display/intel_display_device.h
>> index a7b5ce69cf17..fc33791f02b9 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display_device.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
>> @@ -146,6 +146,7 @@ struct intel_display_platforms {
>>  #define HAS_BIGJOINER(__display)        (DISPLAY_VER(__display) >=3D 11=
 && HAS_DSC(__display))
>>  #define HAS_CDCLK_CRAWL(__display)        (DISPLAY_INFO(__display)->has=
_cdclk_crawl)
>>  #define HAS_CDCLK_SQUASH(__display)        (DISPLAY_INFO(__display)->ha=
s_cdclk_squash)
>> +#define HAS_CMTG(__display)                (!(__display)->platform.dg2 =
&& DISPLAY_VER(__display) >=3D 13)
>>  #define HAS_CUR_FBC(__display)                (!HAS_GMCH(__display) && =
IS_DISPLAY_VER(__display, 7, 13))
>>  #define HAS_D12_PLANE_MINIMIZATION(__display)        ((__display)->plat=
form.rocketlake || (__display)->platform.alderlake_s)
>>  #define HAS_DBUF_OVERLAP_DETECTION(__display)        (DISPLAY_RUNTIME_I=
NFO(__display)->has_dbuf_overlap_detection)
>> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c b/driver=
s/gpu/drm/i915/display/intel_modeset_setup.c
>> index 9a2bea19f17b..10cdfdad82e4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
>> @@ -15,6 +15,7 @@
>>  #include "i9xx_wm.h"
>>  #include "intel_atomic.h"
>>  #include "intel_bw.h"
>> +#include "intel_cmtg.h"
>>  #include "intel_color.h"
>>  #include "intel_crtc.h"
>>  #include "intel_crtc_state_dump.h"
>> @@ -978,6 +979,8 @@ void intel_modeset_setup_hw_state(struct drm_i915_pr=
ivate *i915,
>> =20
>>          intel_pch_sanitize(i915);
>> =20
>> +        intel_cmtg_sanitize(display);
>> +
>>          /*
>>           * intel_sanitize_plane_mapping() may need to do vblank
>>           * waits, so we need vblank interrupts restored beforehand.
>> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915=
_reg.h
>> index 765e6c0528fb..b34bccfb1ccc 100644
>> --- a/drivers/gpu/drm/i915/i915_reg.h
>> +++ b/drivers/gpu/drm/i915/i915_reg.h
>> @@ -3565,6 +3565,7 @@ enum skl_power_gate {
>>  #define _TRANS_DDI_FUNC_CTL2_DSI1        0x6bc04
>>  #define TRANS_DDI_FUNC_CTL2(dev_priv, tran)        _MMIO_TRANS2(dev_pri=
v, tran, _TRANS_DDI_FUNC_CTL2_A)
>>  #define  PORT_SYNC_MODE_ENABLE                        REG_BIT(4)
>> +#define  CMTG_SECONDARY_MODE                        REG_BIT(3)
>>  #define  PORT_SYNC_MODE_MASTER_SELECT_MASK        REG_GENMASK(2, 0)
>>  #define  PORT_SYNC_MODE_MASTER_SELECT(x)        REG_FIELD_PREP(PORT_SYN=
C_MODE_MASTER_SELECT_MASK, (x))
>> =20
>> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
>> index 68861db5f27c..d80e0766db35 100644
>> --- a/drivers/gpu/drm/xe/Makefile
>> +++ b/drivers/gpu/drm/xe/Makefile
>> @@ -200,6 +200,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) +=3D \
>>          i915-display/intel_bios.o \
>>          i915-display/intel_bw.o \
>>          i915-display/intel_cdclk.o \
>> +        i915-display/intel_cmtg.o \
>>          i915-display/intel_color.o \
>>          i915-display/intel_combo_phy.o \
>>          i915-display/intel_connector.o \
>> --=20
>> 2.48.1
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
