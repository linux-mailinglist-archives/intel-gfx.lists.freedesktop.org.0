Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id BKR5Cq+lr2lpbQIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 06:01:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AEDC2455BB
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 06:01:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CAD4710E648;
	Tue, 10 Mar 2026 05:01:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kivVrhzV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1552E10E648;
 Tue, 10 Mar 2026 05:01:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773118892; x=1804654892;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SiedrIED1+upQXnlXaBrABtFVIKTy8uSw0az8YPUJkE=;
 b=kivVrhzVKJtad4pYe8waSxpmLLP4pg1vFoImdOeiunybaazHbf2UAsn1
 cHhIpkz0owJwuJdJ6zkP70t1lTf9FPy/xz36u3O+XtG0cBWCixQE08SAh
 BpR1exe0Q7NbvH02zgWFEdJ/bG+b1kL3Ngf16qBLEve4f/8nG6iiaAd+n
 /XBUooyWLtMaR717XPFghDB2kqfBUhVOzsuMg2Fn3gB+b+6x/xJpg5MBy
 IBGttz2uy3Gn5uhKeGIfPPScqGGNAYACbyT894Hs5iwPzD/NgrjEWV1SE
 o147+KcKsMNdHOMsLUwb4x6kISjYPz27g9pD27bAvSX5MoHjz0itgf1/6 A==;
X-CSE-ConnectionGUID: SOlI8+yoQf6BfL6ieXJggg==
X-CSE-MsgGUID: DMwPEp/4SXSXqUN7HGx6gg==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="73354997"
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="73354997"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 22:01:32 -0700
X-CSE-ConnectionGUID: a09AnrmNTGiQrs1PvuZDIA==
X-CSE-MsgGUID: EmceqPIWSmmo6tKqj+lMpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,111,1770624000"; d="scan'208";a="224668652"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2026 22:01:31 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 22:01:31 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 9 Mar 2026 22:01:31 -0700
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.33) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 9 Mar 2026 22:01:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JZrvxEYiQwKnZap90oFlA9MdTkbEk4k4oQPw2ZmZvHNOUd7JII2WrPTeNZGRbWzKj5R6mNmkyq6DZ9ulV0Dt4Qyrt9BJ9S8HWGlE7e0edsUeISheyT4Gpg0njYwSQsyNQmBhNq5Y0xu+1dJALYksjDoNIegObMNqeKXjVq8bO2ue7GrXFeLafqgvebfOiLNoZ/K60Efty4T62smBypc4hYi681sReDPz7kBXbAQHpVEd9bIZo8B5mKN5bo77XSZVyzErfkMr3PtDkdhLBltkX0MNRu7a6VrouwtaG4SspqfbtsbUNNnJlrAeVgVRNwpqNMWE5ZmM3kWPiyVnZ5838A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=In2j3vKzFEEoydhlYFfwWaR7J60e6DV6HpgKG1hGPmw=;
 b=UI1hfwzm+2jsetnCTmtK5jeEVOdwKTMx9vFPXG+Te49ezje4NzHAoTOfiFnxxcmbJ+MSInPxhyeBTeQuID6/qvdMMzYPUo5hWt0ucLA7aOTu/Qr1tyol5icRymuJe0RcxlXE11UTrfjPH/AnWCyVy6Uqh1fBtBs4MSa5Yz5MXxT7YcOpKMerEjoaFraUGipAk3LxrjosTAcGYY5RAiF99DZchKKZRAjzu2L+fYYTepmxGFwOanQQS4HeRqhRAs3rNyHscKRyq2prgsjJp2SLNcJZNoVTF32/UWhpFueNr8efSZowL1EezMTequ61x5RFsaRPMvaeqPm8Q99z/dxY1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB6542.namprd11.prod.outlook.com (2603:10b6:8:d2::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 05:01:27 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::68b9:ea3c:8166:3cc4%4]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 05:01:27 +0000
Message-ID: <b6b5febd-e990-46e6-a355-c04d0c141fbe@intel.com>
Date: Tue, 10 Mar 2026 10:31:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] drm/i915/dp: Enable Common SDP Transmission line
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <arun.r.murthy@intel.com>
References: <20260305040118.2576312-1-ankit.k.nautiyal@intel.com>
 <20260305040118.2576312-6-ankit.k.nautiyal@intel.com>
 <aarA7lXSU00IUgjv@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aarA7lXSU00IUgjv@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0010.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:176::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB6542:EE_
X-MS-Office365-Filtering-Correlation-Id: 24244f19-b44b-42d4-1c64-08de7e6215a0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: cWdKLGdTnpfrEyEhuTsfDuJxs+qpiGTkEXdfJqnhNIsz2Xjf2MIEU0uBFLmaThCAFidcRx5lYX0i3FjvPOlVNsK5yHg7Vb24dIxwiL/U7fwEIygA4uo1Gs0FXEDKe1g0DZ2KLzh5GRfBiUJyLzNgvYZLn9OPZpqXl0LNB10/JaS+6GQmH+VR4/KhiIK6C5UEHhaZp/Npi3bJlWgpSYU6ek3s+onO89N94btZ3pxvMr6U5NCAIe3FvBLoFLFiWuZQiqVCLMevMuolhnrTowgzjXh/HiZUoD8NOfOnsuwihKtSj6XQptaLzdVU0976Qg2SavlmS1PB51Wv9P2amNLsoEKZhimHxbIqhv1V+2jijqSPE+ZnoEpta/VO4hMCOaJigGpu8kU+EF5zVsMUssyegWEtj0dXDFKuVL9A20Z8QS2+DVe6nLJ2D1u4lhiHB4GqEjiSlA/3MHtaL/Y0Rw9bGnRaxp4eLBk1wcM2nO1jOa/4pbghcp0npKs517p7RKbCzWGYF3bwKSsCV8lKs5xTaxDYFFU9joao4nNMGsYjBv5yzZnT1hp3s8JZVD+xzPVvvrTrkxXTT4gvKHMGAqa1Ro9KyA5VAsvFFgsEcFyqrIrpiIvm5kkdTduw62bZEJUVvv6V4XXyQIHh8JoEgKDzIklkTEOW65fgnOdxTWLsKI52tARDIDrl1B4yMxlefJoOPVN1poeUyUEhmXz5G39BflPehGlEMnRT0PUcjSX9z40=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TDNJUlZSeWw3bCtpd0VLV215cFpQWlpoTGtFTnVGVWplOG5lQjZpeE9nUUM2?=
 =?utf-8?B?U1lHZlVhRkdzTFpWamZMVnZQalB4V3FrM1JGOS9EdUpyYlJyU0hmRVhQdkJ2?=
 =?utf-8?B?eTNDOEVRV1h2bW51ZHJ4UlI2SFNLZTVtdTlsMTRySHVHajV4VFA2UFBKa2x1?=
 =?utf-8?B?eDdtRE90d3NNNDUrSXFua0swVWptcDRIRDVOMkxSWWZyRWs4aDhaSHRMT3dB?=
 =?utf-8?B?bHJxTkdlTE1VbDg5eUx6OTcwQ3ZCaVB2MnZVR1BiSS9WaVpqZDRwQXptT3hk?=
 =?utf-8?B?dXV5NWtaQ1E2K2V5WWoycElLeXJIRk5ZdWpwZFlWdUxrUnJOV1B0VEVWcWxv?=
 =?utf-8?B?WUhNT2Q1TjRNelZSMVpFZTVFV3dsbVJHaDhSK3VjZW5pVlZpWFRzY3lhZXVT?=
 =?utf-8?B?NllURUZCbHRJakVCUmZLRmF1ZnoxWXY2NW9ZazE1WUxmU3JaWC95UGd0QmtD?=
 =?utf-8?B?NE9KNzA3NGJoSXRCTU5vZ3pPVU0rTCtSQ3J0WmtPUVJlS3JLWXlNbUl3UXNY?=
 =?utf-8?B?UmppUnhFYmJXZmYxRjIvVUhEb3Vzd1FYaVhVdmVmeTYxbFBlZ0lQcEVIY2o3?=
 =?utf-8?B?YUFIM244ZjlmRFFtZ3FKWGlIS3h3NHlPWVh3MlNMeVA0cUJtOGRzUE5aS2FU?=
 =?utf-8?B?ZVorciszT0xFOHg5OVp5U1ZqdFptNU5PS3FhWTl1SC85dUY5ZHQrVjJWSUVF?=
 =?utf-8?B?WWkvWDBkWXh5b1hJRldCdU5WanNQNGpBeHc4UmlJeWczK2NJclFEUGQ5RUN1?=
 =?utf-8?B?ZHFja3Z0b1dvUmJ6bUhkNWxIQlZUbmFRYlRjV1k2WE96ZDAyY3dZVXRZcmdN?=
 =?utf-8?B?bUlTNWtDcnRLNDhlS2g1MklFRmxXNVB2SkdWS2VFOUFCV1BwZmV4aWNBbG9v?=
 =?utf-8?B?UUlMWU5mdzFocXVwUGFpNU5wcTMzbXVyNW5OSnB6OFBmaHpaOE5DbFEyb2lB?=
 =?utf-8?B?b1RGK1BackZaS3M4bFZoMWhiUnprZXVJeXVudjVad2RES3hxcjQ4bUhpNjJr?=
 =?utf-8?B?UXRjc3g1NVdBVnU0cjFqME5QL0EwMnEzMzM0cUlNZjVEVXAzeVk3c2JlczZh?=
 =?utf-8?B?UEJMcUQyTWZzZzJhUCthcmxhL0ZoMk9GNWRmVk4yck1jdFp1Z3FKak85WEtz?=
 =?utf-8?B?MXhXaUNlc2M0SzJuNkdKTFo1VUI3QU9yWVdjU2NyQzZ6NEdvVlhqYXZUWUs2?=
 =?utf-8?B?LzAyeTl1WDJSNHZjRWlmSDdJVzdzSzJtM2RIS2ppSzVTcUNpQklDMHo0Y2xE?=
 =?utf-8?B?SXpMSkl3cGRac3Z6d0k2bXhuR3NLTEtqVytkNm1lb2NnQ2J5UDF2amU0L3M1?=
 =?utf-8?B?TG9qNmRQVGljQXRKaUxIUFdmVERhTjN5WHFJQytLSUhYUmdvdEZ5RzRMMHdi?=
 =?utf-8?B?ZGtZNW96Tm0wZEJjSlJvZmpUdGkxL2tkM3V1dEJNSS9nUlU2SmFYZklyYnZX?=
 =?utf-8?B?SHZjWEF5NXU4UDZnd0EyUTJrRThqRGNwNWxkMVpsMFRyM3lWelpaQ3RMV2ZZ?=
 =?utf-8?B?cDQrUFVQZGRkM2UvU3lIckx6LzQ0M2QxU2duMTk1SGoveGU4cUFSYlAyYmxx?=
 =?utf-8?B?UmppeDRseXpreVVtRGpPWUpNS0pzMk05ZEdBdXQzd2xoK091Vml4MGF6Nmhr?=
 =?utf-8?B?WDBpVlQrKzEyRXJmZmF6enREWGJtNE5zbTQ4aVZGamp3SmtPeG9PMDNmTitq?=
 =?utf-8?B?V1ErcDZLWWIyekVOMGJNZ2dsSFU2c0FxcEFrWmYyS21hWHlqL2NzVm5Iek1x?=
 =?utf-8?B?L1hHQlRkOVQ2K2FnQURUVW1jYTZoNmNJRko0UnlITm14bTRQZy9Lck5BOW1q?=
 =?utf-8?B?emNuVGR2YWM3SjYwYlFGRTdDSDVYZyt5MCs4dmgybWVGU2VLWm9KaEZ2cEE5?=
 =?utf-8?B?a3VDSVMzVUlvNXBpTVVZdDRFblZmSk5wQmMrTERvUE9ub084NHBGWlZUOGta?=
 =?utf-8?B?bGVQL2IvZjhXL0pudGFJcXp4YnUzRzBRMjNFdlExQTdyL3BZL3dURTN2SWtt?=
 =?utf-8?B?ZTRaQUw1UG9kQURHcWN1NVd0eFgvVGV2VXhZWkI3cW5HRFMzTFZFMXMrcVAv?=
 =?utf-8?B?RXNJN2FQNUpia2h0dENwTldiRjFjaGhwODgybEh1OWQ1WnBGMGlSMzlDL2Ru?=
 =?utf-8?B?NkliMG1BMVFBc0l1S2FCN3lwWUJreXRlOFd3akhRL1c5VkZpLzlkZjZRalU1?=
 =?utf-8?B?T1FzN21POWJlSjlPZnl0SHNjTEhxZmNNYzZ4NUlrMER5TDd5NVprWElXTmJk?=
 =?utf-8?B?NXVFZzVtSUxuczdYMnQrZTdyVjhHR2tDMmFVeG5TSFYwREFLWnQ2MnJLZDFv?=
 =?utf-8?B?VmJYc3B1OHpzY0ZZZXpqbm1nSVVSc1N0UWYvOXVWSjhPTGxpMzYyNHdNQ250?=
 =?utf-8?Q?1BvG4r+2wmuGO2AA=3D?=
X-Exchange-RoutingPolicyChecked: Xon3905guoas7I67UK0Tw5tpL14jlsopgqaG8l7Gpnkquch/tRO3/6lOMu2v7Ps0gYMeXamnmZpB0ud/7FpChk1vbxzSHVwtIr4h02DouDYOpQhwUl0rHNELOsMr/iYTtod0nXGhwO2c+SOMAh6XA4XHPicyEXXH4A5f7dMZqTFYwDIXGqrYvcMbnBAsuTX/NG6wLzL7yxLDUgvhiyaCG+zvjN2+WGsJGA0pbFkGLkdrhwSYldKVNxiRbRcXchZKJV1G8lYRJJyFl1QflJE+pgGO7LC5TDUvNQOEXIXYd7d568KarXG7HZVBWiBTZnE23UcE20byBroPp60MQ/eKcA==
X-MS-Exchange-CrossTenant-Network-Message-Id: 24244f19-b44b-42d4-1c64-08de7e6215a0
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2026 05:01:27.1420 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EgSgELf4/ovcE9gq0G6/V0a5cTyvv6GN/QLhpxlkI+hGUlbUXwNUhGx/yjHYEHR15Ksn76m6iivyys3Y7u/tuP41XZWDav7BzT2k2KyXRLc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6542
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
X-Rspamd-Queue-Id: 7AEDC2455BB
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-0.997];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action


On 3/6/2026 5:26 PM, Ville Syrjälä wrote:
> On Thu, Mar 05, 2026 at 09:31:18AM +0530, Ankit Nautiyal wrote:
>> Enable the Common SDP Transmission line for the SDP packets.
>> We get the clear picture about the SDPs and guardband only in
>> intel_dp_sdp_compute_config_late() therefore we must configure the
>> crtc_state members related to Common SDP Transmission line at this
>> point.
>>
>> Currently, the stagger values are set as per the default policy of the
>> Hardware. This can be optimized later if we come up with a specific
>> driver policy to sequence the SDPs better.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_ddi.c |  3 ++
>>   drivers/gpu/drm/i915/display/intel_dp.c  | 64 ++++++++++++++++++++++++
>>   2 files changed, 67 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index bdbd89600bee..e1e95f18f0ed 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -2726,6 +2726,8 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>>   	/* 6.o Configure and enable FEC if needed */
>>   	intel_ddi_enable_fec(encoder, crtc_state);
>>   
>> +	intel_dp_cmn_sdp_transmission_line_enable(crtc_state);
>> +
>>   	/* 7.a 128b/132b SST. */
>>   	if (!is_mst && intel_dp_is_uhbr(crtc_state)) {
>>   		/* VCPID 1, start slot 0 for 128b/132b, tu slots */
>> @@ -3113,6 +3115,7 @@ static void intel_ddi_buf_disable(struct intel_encoder *encoder,
>>   			     DP_TP_CTL_ENABLE, 0);
>>   	}
>>   
>> +	intel_dp_cmn_sdp_transmission_line_disable(crtc_state);
>>   	intel_ddi_disable_fec(encoder, crtc_state);
>>   
>>   	if (DISPLAY_VER(display) < 14)
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>> index 59a8fa5e5ba9..87d73d0239bc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>> @@ -7189,6 +7189,68 @@ void intel_dp_mst_resume(struct intel_display *display)
>>   	}
>>   }
>>   
>> +static
>> +void intel_dp_cmn_sdp_tl_compute_config_late(struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	bool as_sdp, gmp_sdp, pps_sdp, vsc_sdp, vsc_ext_sdp;
>> +
>> +	if (!HAS_CMN_SDP_TL(display))
>> +		return;
>> +
>> +	as_sdp = crtc_state->infoframes.enable &
>> +		 intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
>> +
>> +	gmp_sdp = crtc_state->infoframes.enable &
>> +		  intel_hdmi_infoframe_enable(HDMI_PACKET_TYPE_GAMUT_METADATA);
>> +
>> +	pps_sdp = crtc_state->infoframes.enable &
>> +		  intel_hdmi_infoframe_enable(DP_SDP_PPS);
>> +
>> +	vsc_sdp = crtc_state->infoframes.enable &
>> +		  intel_hdmi_infoframe_enable(DP_SDP_VSC);
>> +
>> +	vsc_ext_sdp = crtc_state->infoframes.enable &
>> +		      (intel_hdmi_infoframe_enable(DP_SDP_VSC_EXT_VESA) |
>> +		       intel_hdmi_infoframe_enable(DP_SDP_VSC_EXT_CEA));
>> +
>> +	if (!gmp_sdp && !pps_sdp && !vsc_sdp && !vsc_ext_sdp)
>> +		return;
> I don't see why we wouldn't just always program this stuff.


Hmm..Yeah you are right, we can always program this stuff. By not 
enabling, the transcoder will simply be ready to use its own logic.

I will drop this check and the variables to track the SDPs. Later at 
some point when we want to optimize the staggering, then we might need 
something like these.


Regards,

Ankit

>
>> +
>> +	crtc_state->cmn_sdp_tl.enable = true;
>> +
>> +	/*
>> +	 * When AS SDP is enabled :
>> +	 *  - The common SDP Transmission Line matches the EMP SDP Transmission Line.
>> +	 *
>> +	 * When AS SDP is disabled:
>> +	 *  - Bspec mentions the positions as lines of delayed vblank.
>> +	 *  - Guardband = 1st line of delayed vblank
>> +	 *  - Common SDP Transmission line is set to 2nd line of delayed vblank.
>> +	 */
>> +
>> +	if (as_sdp)
>> +		crtc_state->cmn_sdp_tl.transmission_line =
>> +			intel_dp_emp_as_sdp_tl(crtc_state);
>> +	else
>> +		crtc_state->cmn_sdp_tl.transmission_line =
>> +			crtc_state->vrr.guardband - 1;
>> +
>> +	/*
>> +	 * Currently we are programming the default stagger values, but these
>> +	 * can be optimized if required, based on number of SDPs enabled.
>> +	 *
>> +	 * Default values of the Transmission lines for SDPs other than AS SDP:
>> +	 * VSC : CMN SDP Transmission line
>> +	 * GMP : CMN SDP Transmission line
>> +	 * PPS : CMN SDP Transmission line + 1
>> +	 * VSC_EXT: CMN SDP Transmission line + 2
>> +	 */
>> +	crtc_state->cmn_sdp_tl.gmp_stagger = GMP_STAGGER_DEFAULT;
>> +	crtc_state->cmn_sdp_tl.pps_stagger = PPS_STAGGER_DEFAULT;
>> +	crtc_state->cmn_sdp_tl.vsc_ext_stagger = VSC_EXT_STAGGER_DEFAULT;
>> +}
>> +
>>   static
>>   int intel_dp_sdp_compute_config_late(struct intel_crtc_state *crtc_state)
>>   {
>> @@ -7202,6 +7264,8 @@ int intel_dp_sdp_compute_config_late(struct intel_crtc_state *crtc_state)
>>   		return -EINVAL;
>>   	}
>>   
>> +	intel_dp_cmn_sdp_tl_compute_config_late(crtc_state);
>> +
>>   	return 0;
>>   }
>>   
>> -- 
>> 2.45.2
