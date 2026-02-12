Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AHmtBhSXjWkG5AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 10:02:12 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF3E912BA4E
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 10:02:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 390B188C4C;
	Thu, 12 Feb 2026 09:02:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AyBp1HJ1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D186C10E702;
 Thu, 12 Feb 2026 09:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770886924; x=1802422924;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u2b99KEwo8xp3/umG8SEYCohnmK+vioTNh+aKlcBFPs=;
 b=AyBp1HJ1kg2isG/tlZA8jGpIFZBO4Rj8NuENsyT9mG5DWgGwY8IJsXj+
 EVodqQsAwPI7tAJ8Azz5TXKX0CAv14iOWfTbglOUkzHJsVX3wvxPMaOgM
 meHI2qfROLooQZ2nFQOLKEyioWDmXotVh09Y3mEn4ueBSL8U/ts9Y9xOG
 AUlFxtzLtDKtbqCUa18YDuhLoqlmRL0wuI7j2chUjGnjcwTUuopeoa6Ki
 E+fkQ2L5aBWZpCEfzRceBB7Z/++7CiZYaMCoxesmbAe0Ch46CBvCN/2Jy
 oRFzI1C0h7+9WXBDfJD33k7odJqiQLOEzeBzam85vWmyXTCwmM+FAFT9+ w==;
X-CSE-ConnectionGUID: O38FIHx/QKCLpDnmPFnBFg==
X-CSE-MsgGUID: ulgvWYmESlKkyn8xQ7AWpA==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="83423523"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="83423523"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 01:01:52 -0800
X-CSE-ConnectionGUID: JVAS645YSvaJR6l7RetBQg==
X-CSE-MsgGUID: /ZN8lmSnQUyZRm3YgJgq8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="217493317"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2026 01:01:52 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 12 Feb 2026 01:01:50 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 12 Feb 2026 01:01:50 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.61) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 12 Feb 2026 01:01:49 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Hg/fI9dFLAIrkyChwCgqp7NZ3Z28hGpOegF+PJZS8iwg4eqlkGE2CXcGHvhKuS3T9ESygojZoS2W6J47ZBy02XZiO9WwZ7JTWU0SrQ5LkCgTrLqDVOrhzBSzCflocMfd0FC2v+jDx6MQIGOSZ83SOQstgZX0MGfpVq/ricFEkVZMFPABILQ8nFOFBGzmPune6ZDY608HqVnCWRwAmX3Yomy3a0AbIum3a6CIVv6yqoZSlQfsW5tj2EQX7EKCSDdIyHuz5QmRi6mV7YXmLdTUG2twC2mEKxii+pbFpKjIbI42y6OUMWwInxBfFLNbZ1x6RSEpykj00t/rY9tnuSPeXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nzTsQQND7VoSYqYJHU7TtWn5Ta2/WbYgUZ6oHfvNMqc=;
 b=GeqrtQKxfUOipZc4z53x24sGXmJFF7hw2i5EVApD50+zPXfoJRsteYycSNd+8S91aC4GfbyfMAq7knQMI2XXRckIcc5P5Tb/kIBZ/XjessGanXayu/dDvhwWCAPdWlQTPrLrjsNjkfbguyNUXDCxNc9YcoeJVxlV2LTxC95XJhda1kqOfw87jdecYb6mqTro386lm6frxEaMKSeHRklhoBobOexOZXd5eIrH2qrRWmkRc2zChO+U/Mdl7JwXMgOcSdqXAr3Sblnxo18GBgQkGHZgXGHHo3QwEv8VOGWzRo6arWmYObgSnKcozp3g+S896I7OlYMS85N30Jwn1aKerA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB6009.namprd11.prod.outlook.com (2603:10b6:208:370::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.10; Thu, 12 Feb
 2026 09:01:46 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%3]) with mapi id 15.20.9542.010; Thu, 12 Feb 2026
 09:01:45 +0000
Message-ID: <04475ac8-e46a-4a84-a374-cd702f1e6c1d@intel.com>
Date: Thu, 12 Feb 2026 14:31:39 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] drm/i915/dp: Clamp the connector max_bpc request to
 the valid pipe bpp range
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20260211115811.508496-1-imre.deak@intel.com>
 <20260211115811.508496-2-imre.deak@intel.com>
 <86fd3cf3-f6fb-4baf-815b-5013dc177ab4@intel.com>
 <aYy4grqce26G5sw0@ideak-desk.lan>
 <c25c9c1b-636a-4fd7-8494-807cd9d40ecf@intel.com>
 <aY2HwxE8irrYdVNu@ideak-desk.lan>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aY2HwxE8irrYdVNu@ideak-desk.lan>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0095.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1a8::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB6009:EE_
X-MS-Office365-Filtering-Correlation-Id: c3717c97-1745-4cf5-8192-08de6a15591d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NlZQdFFxZDV1NTR5WFF2SFpuMm90MGpHSm9LQ0xjM1lzcnVpYXpUMkJLRHBP?=
 =?utf-8?B?WVRweU9oYU5Pc1Z2U1QxaW15VGwrMkNvNXIwdW5GU1VRV1Y4ZXdsa2ZTeXRi?=
 =?utf-8?B?dUlFN29HZkN0NHI5UWhPQWFqOXhkd05PbUdxRmNxb09xNlJ6S3lmZ05SV2hm?=
 =?utf-8?B?TGZwaHJFRUh2UkQ5QXV5cXJNQm55NVE3Nmx6dmZna0xTR3JpT1JQa0dXYkd1?=
 =?utf-8?B?b1VGNUkvZkpRYmxDUU94cURTaUw4SzNqL0hKNEswVDExaWdHNHNsemxUSnVF?=
 =?utf-8?B?KzRFN3Y4Qncvek1senpHYWFsM3JuRnNPSkhrRStsZ0RKMmo0Q2ZkOXRLNjNL?=
 =?utf-8?B?MW1YSm0wSlVHb05XSzZxdUFDaWsxMm8wMW1nN2h0ZlQ3SVhQVS8xUW05TS9V?=
 =?utf-8?B?ektWQ0FyRDhBYWVtbnFvV1ZHbTV4ZEV0TjRPMlYrTm1TaGprWFNqSDVWMEtD?=
 =?utf-8?B?dTZUMEIyTE0zS0hrVUFpSkwxOURMWFlodnBHU1RZL1k4ay8rNXJnQ1hBUWl5?=
 =?utf-8?B?bTVGOG9ZMlNsZ1N2WnE0c1JhSEVkZDBnQ3gxc1Z2dk9wMEdkMDBoaXhtcTh1?=
 =?utf-8?B?R0p6cnRXQ3I1ZGoxSVFFMy9qQ2JNOTM5ZWMvNkYrZkMzRGRySWxMZndIQllC?=
 =?utf-8?B?Q2UrOVp6a1Y3S1FmelBYZjR2b3NxbWU4MUNzL1ZVMUlTbkJ0WmowcFpCREx4?=
 =?utf-8?B?MExIUUNJNnpKTGJPbnU4YVdzRmEvZGJldVM3T09nMGRmV0N4S2pHWjlHNFJI?=
 =?utf-8?B?ZUh5bTRlQzBJVFdPSmd6djZibVFPYVNwSUovM29oZEpCMEZ3d0RoVWQ1M0lM?=
 =?utf-8?B?T05BRDRNYjZOWFc1YXVNcDBGenJKNytEMDVNM0VxakJXN2MwRVlMakQ5Visr?=
 =?utf-8?B?ck96VHhURkVuYjNsWFhVajgySmYwQ2o5ZThaczE3Ylk3cXJxbjk0dmFjV2pP?=
 =?utf-8?B?NGZ2ZXpYem9tZ1pmdEpuMTRyZUp4YUZrb1R4SHRSYW13dTIxMFRjNlI0TXBq?=
 =?utf-8?B?RkI2dUJhVEczUVN2ZDEyd0JyelhuN3J6bDFHY0RJZldDMFk2c3NZaVZtUzNr?=
 =?utf-8?B?SW5IRnBOVk1ETlFjTE96L3k2VkFSb0JnZ0hQbzh6VXVZM1I5U0dWa1MzZHlR?=
 =?utf-8?B?aWY4Q1lPM2R1UktINy9ialdwMEpqUDZ0YkJPSFUybnV5bDUxTGlMajFFVnNL?=
 =?utf-8?B?T3FVK0tYQ0kyb0djcFY4NVpmUjB4L0ZWYkk3QzNFSUY5d3BFbXM5cFpBS2VW?=
 =?utf-8?B?ZkxPUEdvTWhOM1hCOE1RVHdxb0Z5eWRqd25xdnhIN01aQ0xsZlFuemtkdVZv?=
 =?utf-8?B?VUxuU0NtWFZ1NkxBaytyS1VVQ1ZueCtHckxnOFd2cC85OXEzbjk2aEhsbjRm?=
 =?utf-8?B?L252MXByTmYxNmhML2RKd1hoUU9rUHZHcGc2enR3a3ZSNUtwa1dEWVhHTzcy?=
 =?utf-8?B?U2RVcVlqdkhMc3JsOHNYUlBmeSt1cUsyOHZUb05FYVFXcHh3aW5lK1AvaUZ2?=
 =?utf-8?B?Zzg0bWpwaDRsdkc2M1RFakQwbFBNeXdMTWp4Rlowb0RON0h2SEtYQmRpZUE0?=
 =?utf-8?B?QnFIUkVJR3lxOFFHNUJ4ZCtGVzlrS1FmaCtzWEdNTFVQRnVyTU5RR0thZUpr?=
 =?utf-8?B?VGczUkplcmdPcC8yODZST2FHN2VzS3E1K2c2NmJiaG9wR0MxTi9EUlhaM3FJ?=
 =?utf-8?B?VDIvOE9IUUdZbGpUM0FIVitYK0JybUVsK3c0WnFCdnlVNkpmMnBDTGgyajY0?=
 =?utf-8?B?OXVYUHp6RTVXZGxnVlExRkVxK3dMNDYxVlh0YkRJTDJnYjN4Nll6THRMcDJO?=
 =?utf-8?B?VkY0ZmpidEdDVlVQVDRVOTdYczRSWjRnZ1AvODBkTkxGNTlHeitzQXhJTm5r?=
 =?utf-8?B?M0dTTXBQbDMvcWV1cTNyYTFpS2ZkRUduYkROK2JSZWJqOGZOSmphNUEvb1Zj?=
 =?utf-8?B?RDRlNHFXc2JGSGt0TjRLTXNnTVYxYlZ4RnViTjE4Mk5xVlBJTHJTQS9vT3JH?=
 =?utf-8?B?ZmNXWkdkZUdSTk51b0FNSjZHME9Ua3dCK3puQTg2NU5tNjc3dlBBZkdyVExa?=
 =?utf-8?B?T25WUU1aN0pKWG1zWE5ZTm5jckpKQ1hoSjZtL09NUWk2UFJnbWZDeTF3MW1L?=
 =?utf-8?Q?qj3M=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YW1GTGlLaDZmSTVaNmJIZkQvdk5XcmplTkFMdGJiWGhBTjRrcmV2eU9wZVJM?=
 =?utf-8?B?ZlU0NHN0blpFUkROSTdKM1RGdkh2WGJZcjllT0dXWi9BVi81cXYzNEdGNVNt?=
 =?utf-8?B?cnBYakxSdGNTdjlwT0h2bmZlRmZFeUF0bVdTVUhpcDk5VUdCSzRBSWh0NGcz?=
 =?utf-8?B?eVZTRmkzT1o1YnpQZnBnU2hzODEzMWlmWU44TDZYUGVReG55SnBUejhKbHRy?=
 =?utf-8?B?MGttcVZ3dEtYam5TTWJGU01tR2JST2JCb3FOOUN1dytLRXZnQ0RVS2ZISTl4?=
 =?utf-8?B?bmc2dndBYnB2ZDZHNmx1V2laSGpYUjlaVTNRc1JFVGlJVVo5bzA4UHk0c3V1?=
 =?utf-8?B?SlArMUxMS0gvY2toUG90VjYrOFlOYnMwU2VubWhNMkZleGhKb2drcU4rYlpo?=
 =?utf-8?B?UEMzakZJNWc3R3B2NTlISlE3MjRmMkIxMTAwU0dNODNwVXdXaEVGSHhVZ200?=
 =?utf-8?B?WENzZ0xaTGhGeWVLSW54VWlQMm5SUDdoOHQ1ZE9CajhvY0RMOUdYbGFRamJR?=
 =?utf-8?B?SHk2a2w3YkgzSzhOaVQyTEQvK08wdEwzTUNtY283WjZndW5rRWtQcVcyNGF1?=
 =?utf-8?B?MDRNMktDU282OTFSeW02OTQ2ZFNhZkNOaUxtVEp6WUV4L1JlVTJ2TTIxcmFO?=
 =?utf-8?B?a0hNZGpMeGFPWmI1ODM0YlY0bE8yUWZGM1dwLy9USzV6S3hPdkUzcllJeEJB?=
 =?utf-8?B?RjE1SnZvL1AwL1VSTm0zR0lpS21iN2xrem5oYkxkV2lhRmFYQlE5SE1HbzE2?=
 =?utf-8?B?WkNGbnVKTmJkOU5tVi9QQXJqT044OG5rZ2l5TXpnaXVxK3JLUWFzZFAweGsv?=
 =?utf-8?B?VGZ1V2l3YkpmSG53VEFIdUxhTHlwejl4dE5NNEJnT0tqZCtvZUxiUDhNOEs1?=
 =?utf-8?B?dXlaL3dRNEJuSjVTRVEvRmptL1Z3RG5vNktUVkVZUzBBL3F2b3YrZ251bWdo?=
 =?utf-8?B?Sy9oQlVlYTdVc29aWnEvTU1IT0FlTStObFVYV0dQa01zbTNFOFBVa2dUUTY5?=
 =?utf-8?B?SEZPbFhIS0RyQVM1dW1SeE82a1lsWDZSTDJURTJ2THIweHFnMDhxb1JQVE5H?=
 =?utf-8?B?RGZhaU1GWmRWTlNVUHpPYjFWSXNva0p2R0hZeGFRSlVzRUNiL291R1Z0VDhw?=
 =?utf-8?B?aUsyRXB2R0pBYTh1aE1Vck91K1ZiYXBFdkZtQyt0VGFsUU42YWdGdmZhdldt?=
 =?utf-8?B?RmozekFrVUtQMmRUeFl1alZrUmpNV1E2a3BMNXgveDFmY0VDZzhUeWV5bzJX?=
 =?utf-8?B?NmMxU1NKQVh1SWpGWjB6VERpQ1JNVlJvcFZtU2F1bUNKUkY2R2hyMldIb3pU?=
 =?utf-8?B?cGo3S3NhUHZCQUNoYUhDKy9aTmhpMU9SNHlyMlBsTlJIN1VsTFdnZkpEeDhT?=
 =?utf-8?B?OFMrWjJtZC9zREpKbVJSRjdhMzJOY0JLNWcvVm1jM0dMNmpqMVUwODlOS05X?=
 =?utf-8?B?WCtHMVF6NFZGTmRUWUplSGdkbVVNYSs4eklzcXB0Yy8zelEzb1JsUDNCYWlD?=
 =?utf-8?B?Q3BPYTFkeUlaVTgraXRVQzNxK0N2TWd3bjhWV2pXWk1TWWFrNjVod0FvR2to?=
 =?utf-8?B?bGg4RUZZT3VpNVZvTUR2YkdUMk01cUNjaml6TUl6aTQ1VHovRjkyR2g1QUMv?=
 =?utf-8?B?VFhVRm42b2dTbzdadG5XTms5Y1dNZXg0a3dGZ3kxUk5EalJieWVYZzEwN0xC?=
 =?utf-8?B?OVJSOVVHNHdUc00rcWcyQVNXaXZQazBwRUJMenBYdmhFQlh3M09kMTFKakRn?=
 =?utf-8?B?anppNmtCWnRKVHJnaXpyWW9odElhcFFPYmVIU0FwNzBtNjlRQjlVWCt4NXg0?=
 =?utf-8?B?YjhCYnc2a1lsTTdueGQxTjE3Vm5YL0dWS3dONVhudXlrYTlQcE51L2xyL0do?=
 =?utf-8?B?b0NGMXpNWi9aVHZlTW94R2w5Y2JPRXN6REp3M0E4V1pyNDVGVU1HZ2dpbFBx?=
 =?utf-8?B?ZjRqT004Q2ZaZ3E3MXQ1ZDJWMlNhMy8rZkFZdU9PQWJLejJEWHV1djZWUUhN?=
 =?utf-8?B?ZHBwL0ZKRHRQcFY5YTI3Qy9lMmxZQU9iNzlrdEE5eWI5cXdudjRxSWJDVWYw?=
 =?utf-8?B?UXZzNUs1VmRXblVLVXowMzdzeUZGQWY2K2hBQWFNd0lGV2Q4K0VGaUhxMVRr?=
 =?utf-8?B?NTdENDRITjFNSjlyZmFzdWNiN1dDTEt4U3ZELyt4RHdIWE5LdTNaaFVvcEc5?=
 =?utf-8?B?cjB1cTczZi9LZEdaVHorclZmTXIwRUd1aHpYcnVUM3JhRjhiY1hCYm93WXND?=
 =?utf-8?B?ZUZwSTRNMmhvUThUeXduRTdON3BXdTNSMjdXSzNtY3JCMjJnQVlVaGFFK200?=
 =?utf-8?B?L2RBYUkyNkMvbHNlam9JbG9uOEZnYno2eVlTWVZWdE8xNzc2b2RUcVpxMzNm?=
 =?utf-8?Q?xqxFUYq97nTl8Vao=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c3717c97-1745-4cf5-8192-08de6a15591d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2026 09:01:45.8495 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VZxzvhAo7qRX4HqKkLbxsQsXpaIU2kiwsELWyL/+UNtHsiHlWQRBGq922Z8J7Xw8l4ph1JB+tRXeFySaysOiVX2kzDc29S64qXRq6tOrPnk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6009
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
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RSPAMD_EMAILBL_FAIL(0.00)[ankit.k.nautiyal.intel.com:query timed out,imre.deak.intel.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: BF3E912BA4E
X-Rspamd-Action: no action


On 2/12/2026 1:26 PM, Imre Deak wrote:
> On Thu, Feb 12, 2026 at 09:44:15AM +0530, Nautiyal, Ankit K wrote:
>> On 2/11/2026 10:42 PM, Imre Deak wrote:
>>> On Wed, Feb 11, 2026 at 09:36:55PM +0530, Nautiyal, Ankit K wrote:
>>>> On 2/11/2026 5:28 PM, Imre Deak wrote:
>>>>> The user's request for a maximum BPC - via the max-bpc connector
>>>>> property - determines the pipe BPP selected by the encoder, which is in
>>>>> turn used either as the uncompressed output BPP or as the input BPP for
>>>>> the DSC engine. This user-requested BPC->BPP can be outside of the
>>>>> source/sink's supported valid min/max pipe BPP range and atm such an
>>>>> out-of-bound request will be rejected by the encoder's state
>>>>> computation.
>>>>>
>>>>> As opposed to the above, the semantic for the max-bpc connector property
>>>>> - which the user may reasonably expect - is not to fail the modeset in
>>>>> case of an out-of-bound max BPC request, rather to adjust the request
>>>>> clamping it to the valid BPP range.
>>>>>
>>>>> Based on the above, calculate the baseline (i.e. the non-DP specific
>>>>> platform/EDID) _maximum_ pipe BPP, storing it in
>>>>> intel_crtc_state::max_pipe_bpp, separately from the baseline _target_
>>>>> pipe BPP (which is the lower BPP of the baseline maximum and requested
>>>>> BPP, stored in intel_crtc_state::pipe_bpp). This allows the encoder
>>>>> state computation to use the baseline maximum pipe BPP as a hard limit
>>>>> for the selected pipe BPP, while also letting it use the baseline target
>>>>> pipe BPP only as a preference, clamping this target BPP to the valid
>>>>> DP pipe BPP range.
>>>>>
>>>>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>>>>> ---
>>>>>     drivers/gpu/drm/i915/display/intel_display.c  | 12 ++++++++++
>>>>>     .../drm/i915/display/intel_display_types.h    |  1 +
>>>>>     drivers/gpu/drm/i915/display/intel_dp.c       | 24 +++++++++++++++++--
>>>>>     3 files changed, 35 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>>>> index ab4b59916d2e7..dae7a7d11cb84 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>>> @@ -4374,12 +4374,24 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
>>>>>     	struct intel_display *display = to_intel_display(crtc_state);
>>>>>     	struct drm_connector *connector = conn_state->connector;
>>>>>     	const struct drm_display_info *info = &connector->display_info;
>>>>> +	int edid_bpc = info->bpc ? : 8;
>>>>>     	int target_pipe_bpp;
>>>>> +	int max_edid_bpp;
>>>>> +
>>>>> +	max_edid_bpp = bpc_to_bpp(edid_bpc);
>>>>> +	if (max_edid_bpp < 0)
>>>>> +		return max_edid_bpp;
>>>>>     	target_pipe_bpp = bpc_to_bpp(conn_state->max_bpc);
>>>>>     	if (target_pipe_bpp < 0)
>>>>>     		return target_pipe_bpp;
>>>>> +	/*
>>>>> +	 * The maximum pipe BPP is the minimum of the max platform BPP and
>>>>> +	 * the max EDID BPP.
>>>>> +	 */
>>>>> +	crtc_state->max_pipe_bpp = min(crtc_state->pipe_bpp, max_edid_bpp);
>>>> The function compute_sink_pipe_bpp() is actually just limiting the pipe_bpp
>>>> to sink max limits.
>>> It limits the platform maximum pipe BPP passed to the function via
>>> intel_crtc_state::pipe_bpp to the maximum EDID BPP _and_ the connector's
>>> requested max-bpc x 3.
>> Yes right thats true.
>>
>>
>>>> Instead of filling the crtc_state->max_pipe_bpp in this function itself, can
>>>> we have a separate function only to set the crtc_state->max_pipe_bpp from
>>>> the edid max:
>>>> compute_max_pipe_bpp(const struct drm_connector_state *conn_state,
>>>>                        struct intel_crtc_state *crtc_state)
>>>>
>>>> This can be called separately from compute_baseline_pipe_bpp:
>>>>
>>>> ret = compute_max_pipe_bpp(connector_state, crtc_state);
>>>> if (ret)
>>>>       return ret;
>>>>
>>>> ret = compute_sink_pipe_bpp(connector_state, crtc_state);
>>>> ...
>>>>
>>>> This way the compute_sink_pipe_bpp will only do one thing(adjusting the
>>>> pipe_bpp to sink limits).
>>>>
>>>> ˚oO(Perhaps we should name it to adjust_pipe_bpp_for_sink()).
>>> Not sure. It's also good to see in one place how the debug-printed
>>> max/target/edid BPPs are calculated.
>> Hmm yes indeed make sense.
>>
>>
>>> In any case compute_sink_pipe_bpp() did compute both the target and max
>>> BPPs implicitly even before, combining these to
>>> intel_crtc_state::pipe_bpp, and this patch didn't change that. If
>>> separate functions make more sense that should be a separate follow-up
>>> change imo.
>> You can ignore the comment. It seems better to have ctrc_state->max_pipe_bpp
>> set and the relevant debug message in same place for now.
>>
>>
>>>>> +
>>>>>     	if (target_pipe_bpp < crtc_state->pipe_bpp) {
>>>>>     		drm_dbg_kms(display->drm,
>>>>>     			    "[CONNECTOR:%d:%s] Limiting target display pipe bpp to %d "
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>>> index e6298279dc892..e8e4af03a6a6c 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
>>>>> @@ -1163,6 +1163,7 @@ struct intel_crtc_state {
>>>>>     	} dsi_pll;
>>>>>     	int max_link_bpp_x16;	/* in 1/16 bpp units */
>>>>> +	int max_pipe_bpp;	/* in 1 bpp units */
>>>>>     	int pipe_bpp;		/* in 1 bpp units */
>>>>>     	int min_hblank;
>>>>>     	struct intel_link_m_n dp_m_n;
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> index 48845899298e4..4018b0122e8e0 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> @@ -1769,7 +1769,7 @@ static int intel_dp_max_bpp(struct intel_dp *intel_dp,
>>>>>     	struct intel_connector *connector = intel_dp->attached_connector;
>>>>>     	int bpp, bpc;
>>>>> -	bpc = crtc_state->pipe_bpp / 3;
>>>>> +	bpc = crtc_state->max_pipe_bpp / 3;
>>>>>     	if (intel_dp->dfp.max_bpc)
>>>>>     		bpc = min_t(int, bpc, intel_dp->dfp.max_bpc);
>>>>> @@ -2726,7 +2726,7 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>>>>>     		 * previously. This hack should be removed once we have the
>>>>>     		 * proper retry logic in place.
>>>>>     		 */
>>>>> -		limits->pipe.max_bpp = min(crtc_state->pipe_bpp, 24);
>>>>> +		limits->pipe.max_bpp = min(crtc_state->max_pipe_bpp, 24);
>>>>>     	} else {
>>>>>     		limits->pipe.max_bpp = intel_dp_max_bpp(intel_dp, crtc_state,
>>>>>     							respect_downstream_limits);
>>>>> @@ -2757,6 +2757,26 @@ intel_dp_compute_config_limits(struct intel_dp *intel_dp,
>>>>>     	if (dsc && !intel_dp_dsc_compute_pipe_bpp_limits(connector, limits))
>>>>>     		return false;
>>>>> +	/*
>>>>> +	 * crtc_state->pipe_bpp is the non-DP specific baseline (platform/EDID)
>>>>> +	 * maximum pipe BPP limited by the max-BPC connector property request.
>>>>> +	 * Since by now pipe.max_bpp is <= the above baseline BPP, the only
>>>> Hmm I think I am missing something. Till now we have set pipe.max_bpp using
>>>> crtc_state->max_pipe_bpp.
>>> Yes and then also reducing pipe.max_bpp further by every other source
>>> and sink maximum BPP limits.
>>>
>>>> This is set using min of max platform Bpp and the max edid bpp (and DP dfp
>>>> considerations, DSC sink input bpp cap).
>>>>
>>>> So the relationship between pipe.max_bpp and the crtc_state->max_pipe_bpp is
>>
>> sorry I meant about pipe.max_bpp and the baseline BPP i.e.
>> crtc_state->pipe_bpp (not crtc_state->max_pip_bpp).
>>
>>
>>>> not yet clear.
>>> The relationship is:
>>>
>>> crtc_state->max_pipe_bpp = min(platform_max_bpp, sink_edid_max_bpp);
>>> limits->pipe.max_bpp = min(crtc_state->max_pipe_bpp,
>>> 			   dfp_max_bpp, vbt_edp_max_bpp,
>>> 			   sink_dsc_input_max_bpp,
>>> 			   src_dsc_input_max_bpp,
>>> 			   mst_max_24bpp);
>>>
>>>> I do agree with the rest of the below: we need to clamp the
>>>> limits.pipe.max_bpp between crtc_state->pipe_bpp  and limit.pipe->min_bpp.
>>> crtc_state->pipe_bpp = min(crtc_state->max_pipe_bpp, requested_bpc * 3);


Thanks for clarifying this. I was overlooking the part that 
max_requested_bpc is already having the edid_bpc limit accounted.

So this statement is clear to me now.

>> Sorry, I am unable to find this line..
> This line is in compute_sink_pipe_bpp(). So at this point in the code
> crtc_state->pipe_bpp has the above min() value.
>
>> perhaps you mean that we intend to
>> make sure that crtc_state->pipe_bpp is in the range
>> (crtc_state->max_pipe_bpp, requested_bpc * 3)?
> No. crtc_state->pipe_bpp at this point in the code has exactly the above
> min() value.
>
>> OR, is there any place we are using crtc_state->max_pipe_bpp to set
>> crtc_state->pipe_bpp, till this point?
> Yes, in compute_sink_pipe_bpp().
>
>> So, I am still not getting the line:
>>
>> "Since by now pipe.max_bpp is <= the above baseline BPP"
> limits->pipe.max_bpp at this point in the code is <= the baseline
> _maximum_ BPP that is crtc_state->max_pipe_bpp.

This too make sense now.

Thanks for your patience to answer my queries.

I agree with the changes and with the change suggested by Michał, this 
looks good to me too.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


Regards,

Ankit


>
>> Regards,
>>
>> Ankit
>>
>>
>>> and so
>>>
>>> limits->pipe.max_bpp should be set to crtc_state->pipe_bpp clamped
>>> between limits->pipe.min_bpp and limits->pipe.max_bpp.
>>>
>>>> Regards,
>>>>
>>>> Ankit
>>>>
>>>>> +	 * remaining reason for adjusting pipe.max_bpp is the max-BPC connector
>>>>> +	 * property request. Adjust pipe.max_bpp to this request within the
>>>>> +	 * current valid pipe.min_bpp .. pipe.max_bpp range.
>>>>> +	 */
>>>>> +	limits->pipe.max_bpp = clamp(crtc_state->pipe_bpp, limits->pipe.min_bpp,
>>>>> +				     limits->pipe.max_bpp);
>>>>> +	if (dsc)
>>>>> +		limits->pipe.max_bpp = align_max_sink_dsc_input_bpp(connector,
>>>>> +								    limits->pipe.max_bpp);
>>>>> +
>>>>> +	if (limits->pipe.max_bpp != crtc_state->pipe_bpp)
>>>>> +		drm_dbg_kms(display->drm,
>>>>> +			    "[CONNECTOR:%d:%s] Adjusting requested max pipe bpp %d -> %d\n",
>>>>> +			    connector->base.base.id, connector->base.name,
>>>>> +			    crtc_state->pipe_bpp, limits->pipe.max_bpp);
>>>>> +
>>>>>     	if (is_mst || intel_dp->use_max_params) {
>>>>>     		/*
>>>>>     		 * For MST we always configure max link bw - the spec doesn't
