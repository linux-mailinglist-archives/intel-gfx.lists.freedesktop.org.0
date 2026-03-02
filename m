Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WA6YKSVGpWkg7AUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 09:11:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22A951D4749
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 09:11:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B7DF510E451;
	Mon,  2 Mar 2026 08:11:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GnwX8SX3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 748F510E450;
 Mon,  2 Mar 2026 08:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772439074; x=1803975074;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=YccodgtGZCD/9XVxI1q3K/c0CCwlA291XiW0sWbA7BE=;
 b=GnwX8SX3S/K2kUWHsSDh1gsaNpt5beeGD5KXimPjU8PifUV0DyT6BvcT
 lR+EeF1jV9KmuXVrVq0rZjgHLA/c7s+amdDMg0SQrtkrlZKexKQnFi04L
 zsONZNLvYWo+XfNK/BsbNrtgVVKLFHPiLH3HYIav5uLUEbl49wHbJenFV
 4gY9UtVt1j8Nn0aJ7z6hU41TdrC/53OR49ZxaIXdY5sL+Z6nez1uIQ5n4
 Z6qkEKUb3SH6Kpm+MiHe2WjaPCbgAqSdjRdiTf+xCBhYVSBzL+ejJyGUd
 PRGBncQwSdnBcxHB5AIkxitiryghzwFYNMUm4z9eLCWgc1VpNL01cfL3W A==;
X-CSE-ConnectionGUID: lXjhvpSeQVupWH5S6a4wAA==
X-CSE-MsgGUID: taamdjmfRyq7XDYSdNPczg==
X-IronPort-AV: E=McAfee;i="6800,10657,11716"; a="77280156"
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="77280156"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 00:11:14 -0800
X-CSE-ConnectionGUID: 749vwH23Qfivpqrc9RH5Kg==
X-CSE-MsgGUID: A1M99ksRTZa+hioto9RvDQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,319,1763452800"; d="scan'208";a="248078858"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 00:11:14 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 00:11:13 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 2 Mar 2026 00:11:13 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.57) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 2 Mar 2026 00:11:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LM1Mj8PORVry+bE7GnkjZruTpuR55HQdZ/VIWslcbiWvHQSyVOXDOg30kuwle2zQtEGOlii9y0HaahwCWpcZnoZGttgZxpFgoUfujxFOL/p3EM0DBKIxmRelOsKzfKji0m6vJAkZdMNVHMkUS+ZBBctXidijLIVloBWoE2I2WLMUatFZw/aWCcOaquG0rZknUuDnLSlgJr1CRdSsL38cK57VHnd0QP5c3ZI9KRFKthog7J1YAFIIBbWRE+fx9YTP2M1s5hnnWgiwmOS4nIqKwNGIEoxky2pSDdYrpgMs1ex7BTZ9d9bif3YLVwc35Vrp3krG4cdJMAeCU6LQ5pklNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=f5VjDqv8CWAE829Y8cc7sLeBUYPZ2crfqIPMwxX3vIo=;
 b=Y7iWg/CyNAnSRDQ0ZUHhxt2/KcZBmbMfDZ1j4uH4ud4XamMK5RbKTFUt9J+jdmxP2QDLCNLvkdKcJjfDwqONLBiDkYpEpwxFvzu3wy8RZ+znPCCNYP4kw5g5MJ13TTxQzInMrlGWkzkKiYqLsYHi7H8besWO3vjV2TJrxaEPw0a+5lrNvkgDEiQVCObI578MPl8ESUiAu1qADRPjGLO2fxqFmOHVckQbYTFIvNAiPukvZp+ETlR5rvENzaLd7DQ3a0lQmXxv+ngXCef5n8M/tXTO1lqIW0FQvyfe1wNV1y3T2NIIwrlwzFSTX4Sj7MCUly0vHOqiTehaKIliBdzn6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by LV4PR11MB9489.namprd11.prod.outlook.com (2603:10b6:408:2e4::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9654.20; Mon, 2 Mar
 2026 08:11:12 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9654.020; Mon, 2 Mar 2026
 08:11:12 +0000
Message-ID: <da60a6a4-7fab-42d5-b806-942cab4bde62@intel.com>
Date: Mon, 2 Mar 2026 13:41:05 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/dp: ALPM init to be done after DPCD init
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>, "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
References: <20260302033630.428913-1-arun.r.murthy@intel.com>
 <46978246247b387d6d1de157d037014e7c132531.camel@intel.com>
 <67c075b6-ff7c-45fb-9b23-906a9ed98355@intel.com>
 <1bec280e94efd93069cf807703a41f5c631341d3.camel@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <1bec280e94efd93069cf807703a41f5c631341d3.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0102.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1d4::6) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|LV4PR11MB9489:EE_
X-MS-Office365-Filtering-Correlation-Id: 08c1cb1c-df92-4ec1-b773-08de7833445a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: mMtMn9VHnVbt+MJUr5T5BmIAHsqwGAHXPOHUGmocX2F2dlpScCcg4yFiSsKqVjMKYQ99lR+n5AUXtqOr13V1ClOIYilW0RGo71IgIk6IARDnsPLiDvAGVq4lk4bXEe5/dPOOReAgR3Oi1jk5LjQHC7CWYvkrxHzMaaL2mO9f6xOYfLhCVYItJis17xpdXg0aHTYFvRMrRp11CKaP1gV5L8gd3E8+Ssajm6pnloSKvDqccHRc65lWfMheATm2wPBFjAsmK0qmj8yCchO0CE43gx+/DaFNiBR9jdByqm3G/Iup9Q8u0w5lmleDRoOEQiSYNKHO714ITooI0FrMA5BxFA7CmFSBgOMMBIS0pExUaePpjw+mBk2RQWLpLIsHVR5ZseHrrNTm43Z1tGBTkpu6oilKiiZrvSZSVXCglFGI92WLKdztOyl3ydI/C0GBEXgbGRKtyqe2NEZAx16WHhwTyyKeR+ZeDa0qkPeGVNSDiYgo8nTnXAY1XSsniIxoJgn9sQn/nsq7yHPI/XljZPS8pCQP+HYIVAi39vE37MyR2RIXH7ty7SQxVSAMqAwnNbNEVTOU4qq4tW64bbCf+56jRYtnr1qPSfRD/RkXq4byw/W5SU+iGWhAzlaGsHu6E+arlbY5IayRAPTSd7lnJFfG95z8vc/In98U9xaBQUL20j9siwdcOgQmLd30oCvrp1I6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VGJVcW9taVAxU0VCV0JWQXZGbjZzY2IxWnRubnoyN25PYnpiZXFPUHE1RDZI?=
 =?utf-8?B?blRCVytnVVdORDJzbkpiV2VsdGppWk9sOGk4Ym5jZTdBMUs1Vi9nT3R0RE9z?=
 =?utf-8?B?TmpudXM5ZUZoWFl1S2oyVFNqWU9ielhLUGQwTGZ5VVFkZUd2eFBjd1JCOGs3?=
 =?utf-8?B?TlUwWWtBbW42SUxZRm9KaVRjRWZPcmtnR0JzRU9RenVSUUJ4Z1pGSEUveWEz?=
 =?utf-8?B?RTdnVEhDMzZsYmUzSDEyVHBiWTdOQzVHVm94eFJuYnBXNWFHcHZFbWdwbHZU?=
 =?utf-8?B?RXlpTEhPRXBnRTFOVDlqSHM0MlBWT0hSOU13eForVVNBWGdENlpPdXQ3UGFD?=
 =?utf-8?B?V1lLdXNmUHFEWnNvM0trcCtrNGtoN1BNd0Z1M2s2aHpFeHBaMmN6UW1MQXhH?=
 =?utf-8?B?Tm1TSzNhUnl2Z1kwYWgwQVhNWHlnQ0s2UkF5TmRxMnRxNlRjUUdEeE5vM3JB?=
 =?utf-8?B?V1E1dmNXblpWRzZac1g4RldsbmExRDRTczZXOUQrb2dLc3JNeUFCQW0rL0Mx?=
 =?utf-8?B?SGxHcDZKVEMwUTEyWUxqRUNIUEdTNWhXdUxhWHh2Y1VRNHRSRVZBWDQ3Q214?=
 =?utf-8?B?Yzc1OTVFd01PSGtuZGFRRDc5QzFsaS9OeW5GSjhmbXlwcnpvalRxeTNaNlU4?=
 =?utf-8?B?QlZ1eFJ2dXlhVmF0N1BMbDArZnUxVzdmTEZ4UVdxSVNOc0RBaWlEQkZJd0NQ?=
 =?utf-8?B?OTJsc1AzWm15TU5paTJxQ0grdk04YmZkcithZHRWdHNmVWEzS0lTRy91Tjdw?=
 =?utf-8?B?bUc3VU9hd0xJTG5tNWVFZzFmTGJRUU82QVgrcitFb3MrcXFXV010eVp1UEg4?=
 =?utf-8?B?WElTNnZYaC9ZK3orblUrT2FTV2hLNGRVeDdHM1drRXdtSU0rcC9yaFFNZjUv?=
 =?utf-8?B?eTQ2cUc4a0ZiOVdxT1F6VTdQSEhtc1pWRG4yMFRCczdyNFdVcFBTMzU5anY5?=
 =?utf-8?B?RXVYY01TWDd4VzZnNHFxMkQxS3B3VGs0U1c3Um8vVk8zZ3QvTW4wRVF3U1Ns?=
 =?utf-8?B?TmRxTGdUZDJtd3huZ0g4bVlGMW1wR2Z3WkpqdmxhMURZY3ZpV0ZtekFSZ24z?=
 =?utf-8?B?ejBqODJVNjk2ZmxKcHQrQTlOSGdBdWxaQ1V5a1VDREh4WWhDMGYwMTNKK2Vn?=
 =?utf-8?B?QmI2V2xkN2FXQXM1OTRiYVhvcE9LRGY0NDJHZXJOSnVkUUVmaUk0UE5iTTg2?=
 =?utf-8?B?SFYyTDljRURTRTlOclNSSkVSSzlXQm5RZnRldzFUWm5aRnk0Mk0wRWZ0QkR4?=
 =?utf-8?B?QWFOV0h5U1VRTW82MDhUY3RTMjhBWEhhWG5FcDRNN3MxY0tONlBwbWxvelJq?=
 =?utf-8?B?c0crUTQreE1YVkhheE85NnljSzdzWVdoMmVVVlNWNVZTRmVOTk52NlVCbUlk?=
 =?utf-8?B?TnpqRDhDbCtLNE9VYmpuZThiY3FtR3I5dlV0dHNzTWEvWFR1VzhFVEhOWGZH?=
 =?utf-8?B?QitIY3h4V2VjMGxTZkFDRVpvZENKakhwQ3JjMERwclFnOXhldktwY1BTZUJp?=
 =?utf-8?B?cGpKWlp3R0Z0SUZXWGh2RWMvSUhZVE5NaHYvMEhwM1JRM2VJRlhOMFltNXFa?=
 =?utf-8?B?bVpheE4xLzdGc1A4dE9GSmJVYXJxQ0hPZ1EreHBQd1lxYUZ4Tk1UQTFENzJk?=
 =?utf-8?B?MFpaaHN1bC9zNXNGTmhCdzFjcHpXa1I5UkVLOEprb05MNFJ2dHRxOVZnS290?=
 =?utf-8?B?ekRSYnhQODI1a0xWT2wwS20wQzdpc1Nqck1JZE9mQ3NqSjlsOGxTOTh5ZVdh?=
 =?utf-8?B?WUZKaWF6VGlmeWlWTWVNeGtOK1dDNXJCaUR3VkhnamloTGYxc1lUTkVnRlc1?=
 =?utf-8?B?c1JtR09PTXVRdWpzelRJdmdFVVFEV0VUZzQ5SVdoSllYLzUveDNZczJqRDlm?=
 =?utf-8?B?NE9oZ3BSNjdDLzkwNWNYUHZWeEVUd2l6ZTVUbzYrN2F0S09lUncxamY4aEtY?=
 =?utf-8?B?bUd4SzNtSkliUmMwR2QvaklJbnkxK2N1NmlHNHIwU3M2eFRIek9nMHkxRVJT?=
 =?utf-8?B?L0RQUTJJNEdrUXA2RS96cDFlYjExN3VFRlJTUFhNYzRMbkZ4dE9rSDZ2ZzI2?=
 =?utf-8?B?NjMrK0lQRlZKTi9SblhLVFVMNVhndmVtcUxQVlA1aDhndmhtN1k2ODhnR2dr?=
 =?utf-8?B?cHZUZWJjaWd6dHpvMXlaZ1JYeHdsYnZ6SUczUGRqYUE3elpTREhmVmtRSmxI?=
 =?utf-8?B?V3pCbVRpOUx2NVlmUVFZTWRjRWJyVlF4SXRXQ2RZbG1PZ2NUdXl6UUVBWjAz?=
 =?utf-8?B?a1lNZUxQVVJQTnBBN2xBb3JmZkQyYTBYd3B2Wno0cm5CQ2VHZUsxc3lBRWZY?=
 =?utf-8?B?N2ZmdnlzdVpXeU05bjdtOFJSZ2tEOXQxR3ZQUlVXVC9RZEl3Yy9lQT09?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 08c1cb1c-df92-4ec1-b773-08de7833445a
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2026 08:11:12.2000 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ALjM4NTadpcpvFXU3Yu2pMXbDV0zOcKgn1Jy00l11GrjYrAEqSqOaKz1ckmkxZg3fdWcBShgdZLaHC96MJla0A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV4PR11MB9489
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[patchwork.freedesktop.org:url,intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 22A951D4749
X-Rspamd-Action: no action

On 02-03-2026 13:30, Hogander, Jouni wrote:
> On Mon, 2026-03-02 at 12:50 +0530, Murthy, Arun R wrote:
>> On 02-03-2026 12:14, Hogander, Jouni wrote:
>>> On Mon, 2026-03-02 at 09:06 +0530, Arun R Murthy wrote:
>>>> In ALPM init, the DPCD register ALPM_CAPABILITIES are to be read.
>>>> This
>>>> read has to happen after the DPCD init.
>>>>
>>>> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
>>>>    1 file changed, 2 insertions(+), 2 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> index 613559d11133..e60802b0b8c9 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>> @@ -6948,8 +6948,6 @@ static bool intel_edp_init_connector(struct
>>>> intel_dp *intel_dp,
>>>>    	 */
>>>>    	intel_hpd_enable_detection(encoder);
>>>>    
>>>> -	intel_alpm_init(intel_dp);
>>>> -
>>>>    	/* Cache DPCD and EDID for edp. */
>>>>    	has_dpcd = intel_edp_init_dpcd(intel_dp, connector);
>>>>    
>>>> @@ -6961,6 +6959,8 @@ static bool intel_edp_init_connector(struct
>>>> intel_dp *intel_dp,
>>>>    		goto out_vdd_off;
>>>>    	}
>>>>    
>>>> +	intel_alpm_init(intel_dp);
>>> This will cause problems to PSR/Panel Replay. intel_psr_init_dpcd
>>> is
>>> relying on ALPM dpcd init is done first.
>>>
>>> BR,
>>> Jouni Högander
>> I think this will also have to be moved down.
>>
>> For eDP intel_psr_init_dpcd() is called in intel_edp_init_dpcd.
>> So can
>> we move intel_alpm_init inside intel_edp_init_dpcd() ? Just before
>> calling intel_psr_init_dpcd !
>> Also rename intel_alpm_init() to intel_alpm_init_dpcd() ?
> Animesh has some ongoing work related:
>
> https://patchwork.freedesktop.org/patch/687711/?series=156417&rev=4
I think we can still go ahead with those. The one that I am trying to 
fix is move alpm_init inside intel_edp_init_dpcd() just before 
intel_psr_init_dpcd().

Will float a patch with the said changes.

Thanks for the review.


Thanks and Regards,
Arun R Murthy
--------------------

>
> I think it should be ok to move and rename it. That mutex_init within
> should be handled somehow.
>
> BR,
> Jouni Högander
>
>> Thanks and Regards,
>> Arun R Murthy
>> --------------------
>>
>>>> +
>>>>    	/*
>>>>    	 * VBT and straps are liars. Also check HPD as that
>>>> seems
>>>>    	 * to be the most reliable piece of information
>>>> available.
