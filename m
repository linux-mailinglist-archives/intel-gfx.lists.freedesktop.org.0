Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6H3fDwwSnWkGMwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 03:50:52 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BAB9181218
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 03:50:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BB1910E488;
	Tue, 24 Feb 2026 02:50:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B1Q80aIO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6A6810E488;
 Tue, 24 Feb 2026 02:50:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771901448; x=1803437448;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=n+pxEVs0I1rLTLKBuZkFL69SETPTOzKdVjjRYFr4Xjs=;
 b=B1Q80aIOUSWgwmkZO8L4u83MUOk7ZG6kDlSrgEwhuMQ64Lf0j2qCM773
 foya4kWKJSa47aqFaIpv+B4IRRUj15dS7zc4MSWBrzaH3ytERGLp0UJZg
 E8MMyuQsfKJOq2NAOLThbjbNDe9/eRmqF9dF+bucgs0mBeKuYv5y+qahP
 KpST9Aq4JNGgW2xbzE97eha127aldZ0eoisoApS29D75uka3T1OcpM59I
 8hLNFmSi0ESFeYCpw0N1xbPsT6xVWjC0KNH2+pzaMM7PhykrcOcz8msgq
 Qvtku040eBTPnEUf9ExGMi7DX+pnUipvfhLMkw/EL7zs43haUWIrZ1Wlx g==;
X-CSE-ConnectionGUID: ORySJunQSZ2gEObZRmFlHw==
X-CSE-MsgGUID: 3qwnjh9nQkug+1IdRTYaiA==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="72120038"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="72120038"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 18:50:42 -0800
X-CSE-ConnectionGUID: 9v9op/WYRSOLcVr/KtnY2Q==
X-CSE-MsgGUID: WrhjPNj+Tz6tsJYLhbJCoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="220286366"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 18:50:41 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 18:50:40 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 18:50:40 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.5) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 18:50:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ID0bHg+YY7wmC+xwn88vzG20lEDRyc7D0E/rSmvm7djwO9xMX9/p33Tc4hAeIwD6gmX9oDgu9h17Q6eKukNUgqWyMRGAdu/vu4FR3IHDszb0PCA1iBbKi43XvGYmRpdAPD20eLAPXOALOuoA0GA7YpudEwxez/oK0v18EoapFzO4UorUbAK3ZXGapuL1Ws3LvoyaXkrKS+WHZw1KlcitW82mGCUTpvte/IDI8BuoLAi6jHhf2gtqEDihwq3/KufNrgIjJM6dzCCVOWZN6/bv4tO9TsVSng059RFWo1Ta0BPcKv9+qBhEZASgB32UwgY4KpQf+/Co71sArv/vH7GtKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ER15USWsQoS0t9uUzG2SHa5g/SyJIuU1HqAJcBBPE30=;
 b=Z0qPHQiRRTkeTfdKTGsmVi4zqHBPGS0rRjCRXObrSxafYxPkUwuhUcY7cTFYYYipBaEwvIHk+wicwP3io75TfBKGsqZVLNRn/B19j8akzJ6hOqO4KWWOEK5cxIAmNwCAql+shOwuQOEIC50QRc2CrhqYfI6NTwLWrQ3VGWLHQ5SIxHlLJJQE2oMEXKv8adFdhUYSGA38dJveXR6CJef4fa2XB7dNwCvXWzOWHTKvspSpEi9+qGZ1HX1XNLbyfp545uRC9MjPJPLiFvF3eQTlD+2yZir8w2UGUnEUnmewMszKjqFmtZ8p+nA73G7/Waq5mdLBJ03qXwfW2hlUSQooOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by DS4PPF11E6CAE14.namprd11.prod.outlook.com (2603:10b6:f:fc02::c)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9611.20; Tue, 24 Feb
 2026 02:50:36 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 02:50:36 +0000
Message-ID: <3c473791-5cbb-4ac9-ab9e-0de3b7bd08c1@intel.com>
Date: Tue, 24 Feb 2026 08:20:22 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/8] drm/i915/backlight: Avoid 0 brightness for VESA AUX
 backlight by default
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>
References: <20260220050217.2453681-1-suraj.kandpal@intel.com>
 <20260220050217.2453681-2-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20260220050217.2453681-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0046.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1d6::15) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|DS4PPF11E6CAE14:EE_
X-MS-Office365-Filtering-Correlation-Id: 3e0e2d8b-2a1a-4d09-3fac-08de734f7c7b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?em1CeENmTVRWZlZYSThJZXZBeXd2anorSHFOQnVSNGZWY01XTTFLUXQwQTRa?=
 =?utf-8?B?S0VZY2dPT0ZEZmZZWGlrYmp1VkNwSlh5MUFoc2hCRklZenVacGZoSCtnZzVF?=
 =?utf-8?B?MXNjbkEzRm1uRy84eTJuQmwzRU9YMzBsZ3ZYaFZhVEV4dVdPQlVUYUtRL0xI?=
 =?utf-8?B?QktrSytoVnpSMEpYdm1PeVBEVE9QbTBsOHRDU1ZqUDBXWFJNUjN6cXFTQkEw?=
 =?utf-8?B?Z2dwS3YyVFgrcTBqMzQwckdwdkthUFNZNytaMU9EV1hVYlBiZDZkVTJsK0dy?=
 =?utf-8?B?cVhxMWlqUlhleThvWGkxRzM5anVzZEhjeW9jeGc1M2VuRitLWFN0WWJYQjhZ?=
 =?utf-8?B?eFpEbHlReTl0TXJUdWxPRVRXTmxnRTlTQnh0MVRWRVIyYzZrQ1lWbFc1NHNE?=
 =?utf-8?B?RSt5TVJVZkxHa2pJZGVCOG9ZVnNzWmRWNkVEY2oySTNlTnpZakVrYVc0cjZ1?=
 =?utf-8?B?MUZQS1lnbDdRMDBuYkJLbkhXUlJDcFgwVzN2MGxnOXAxWW9HanV2ZXJOTUlQ?=
 =?utf-8?B?djNzSUNwQllJcE9MNk8xcGVvdnR2aFNKMGFPQWY3QjExTnFSRm51R3BGT1FO?=
 =?utf-8?B?Uzg1R3ZSSkxseWtydzRGcDRGQllFbEgzRGdwRjRGMWxhQUdIVWVKV1JwVzBk?=
 =?utf-8?B?SUdZYm5ibTBhZ2xyUWxJQ09ZR1NSMnJyc1pLaHJlZUJRZnB4alg3MXVvREg3?=
 =?utf-8?B?SUhyelhTZ2l3VUd1S3FWVTgvOGJRMVBHVXRIbnJJeS80SDMvRURwM2VBYzZy?=
 =?utf-8?B?Q3dMU0RIZmdLbnZMTGg1S2RDTkNTaERHM05RWTd0bDBuNTJxVExCNlpONDhw?=
 =?utf-8?B?dWtycmlKWW9XVnVRcVJnbWt1UE92U0NMTkFSNmIraW5CZVBpbmxMdFphc2NW?=
 =?utf-8?B?aHFqWW91Q0pFOElzd2pmVzFmbjY5VEFBV1hQUldMd0dIbzZJMmR6VEVYZEJV?=
 =?utf-8?B?VFVPaWp4Y0tYUkl0OHlES2ZiNXY3aGgwVnhkL2hEd0NmcmlmamlsVlkxby9V?=
 =?utf-8?B?eWJ3d3dqaThRdi9iWTNxVFNPY2VCTis5YS9NYzV0Y1NSckJPK3hkUXlBTDYw?=
 =?utf-8?B?TnJYY20vdzVMUFI4VDBlVE9MazYveVdFcUJUQTFhTjRlbmVnMnRmdTNYMTZt?=
 =?utf-8?B?Z3VNM2ZkWVJWSFhXM1haMkJzWlU4ZE8yWTV3RFRsTDRvcE1uRE12MEgwanFX?=
 =?utf-8?B?Ty9jbjhEV0Q3TG9oNDQra3Bnamg2bHoxYi94dVdwK09Ld1VNZW9ZbzFDYUVC?=
 =?utf-8?B?NVdrbGdwZjI0dERnblhMZGtPLzY1eEdVd3RYK01iV3NMbHZPTFpVQ3Z5SmZV?=
 =?utf-8?B?ZmdiYjRXSldPYlBLemZvV2V2bUVEdndlNzdlSHUrMVFMM0VYZzRjL0ZBaUFQ?=
 =?utf-8?B?LzVuZGNGYnNnRVdmeFhWa0xrdHpCdXBOc1U3TU4wTDFzUWZybThEbHRFaDBq?=
 =?utf-8?B?NWhhZXNIMkRpWjJJR1RIa0wzbFZqRElKOE5nK3hRWERQRDBhVS9rSk5XQzFy?=
 =?utf-8?B?RVNVVVduZmsrMkdKSFFjcDdjY1FVczJtb3hiL1p0Y3dOUzhsaG5rcFR5K21j?=
 =?utf-8?B?SSswaXJtRHA0emR3dXdkTHhHSFJOblNhK0lBSnlGeUl6REdCcnNZOW5tNDRr?=
 =?utf-8?B?S0cvUjFyUUpFNnFpTXc3T3JSbHFqY0NhM3VEN0FNN0lOZnFjNzg3WDViSXF3?=
 =?utf-8?B?SFUwQmpaRzZzZXJZTjdzWGs2QVJhVVo2SFVhRTdJeForcmQvVzlMVGdvd1RM?=
 =?utf-8?B?aGJ6WVM3Lzh6MjlOSlBnZlFNL3MrdEs4NnpCZ25oYmUzZ1NaQzM1a1FLTnJn?=
 =?utf-8?B?aTZwYzVjMTlqL0hlN1VEZ1RGS1JreGZTbFBUY3hMTEVIM2RLZ05zMWRoaVFE?=
 =?utf-8?B?eElKbUF2cys5NXR0djRQQ3pHS3lFejBVMkpBN3VxWmJ4TkQ0RHdUZzliNFAr?=
 =?utf-8?B?V3NjeW1kY3VieU1YVWJSd3FmUGszbXdCaGs5b1RLOWVnUTZ2SEoxN3BwcllB?=
 =?utf-8?B?T1ZnMytXQ3BLK2grSkwvRE1qdTh3WXpQckJXYmQvdUFkTzhKS2dmc2dIcTRN?=
 =?utf-8?Q?p43yvN?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eitXSjU2bTBERndkNUFaZ0JKaG9XUnZBVkIwZ2lYWXlDenFlallHMHozOTdj?=
 =?utf-8?B?ZUhQenQ2bVcvMjBrK09hODBjbUtyU3FwT3hzNm9SMThoaTVvSERXTUVzc1JM?=
 =?utf-8?B?KzJmN0JxY2xuanFLRGRGdERRTGNISmZDZnBaeG53K3VlbjNUT2h1MGprVHhR?=
 =?utf-8?B?OWgyRXJyb0Z5VGd5Q1gvbEtFTGhqc1dDSEFDMG1FRkYybmZZRFZOWjFKaDNr?=
 =?utf-8?B?YmRxanU0dFVWcjNsbW1vRDBxNWFnN2gwczhDeU1Qdk8zSmhPL0FrK2w3T2xQ?=
 =?utf-8?B?VDBTMGtpTk9rbWtxMmpSQS82Si9HQ1I5NE5jWG54Z093SS9XZzBqOFRqUDhT?=
 =?utf-8?B?QlduN2x1SjNzVHVjTWQ0RysrOXFaSWY2eU1Fc2o5NHdUR3I0eHQ1cCt3ZG8y?=
 =?utf-8?B?RDhUbXZ0Q1M3UFNiWTVwY0tGVlF5VXk4anBXWkJxd2w1aXZPVU5EQ2djc3ph?=
 =?utf-8?B?bG51dSs0L3RmaFYvQWltVmViU1FjM1FNY3FQRGQrTmF5WU90UnZYZnRSTHdv?=
 =?utf-8?B?ZFZiUXArS2MzU3NvZXpCOTNnTmhIUkxqZndaSThKNVViREJzMmxYR0FkMzFU?=
 =?utf-8?B?WFBPU1hZeVN5M0dYVlNRTDFuUzlaY0hUaHprZHR6RFZsRlBXSHAycElkNnVu?=
 =?utf-8?B?ZEVsdzlIazNPQ0dpVlFVeTg5YzdoL0picE13NGpPdVQ5Ung0alRkRWJqRG91?=
 =?utf-8?B?RXdXSjFvRStzbjVsdERYYlVFZytlanJIRjIxWEpnZXp2Y1ZKVGY2bHcyUTlm?=
 =?utf-8?B?Nmx3U3NpbTZrdjduNFhCTDRQYjUwZXNSL0lwdWFEd0dmYnNlRXVTUjQ4YU1w?=
 =?utf-8?B?eG1kLzVlT0pFQlhOazZmdnhXeDRQbFpNcE15SmRKdjlnQ05xeEFJYTZoLzlP?=
 =?utf-8?B?RjRhZHhJenRycFlXMDJxK281WTZ0RkFaamlEbU1oQkdzZU9hVUhWc0Vxc21F?=
 =?utf-8?B?NTRhbEVqZStZMkZmaW9XVXZ0b0duU2lSVmI5RHJEdjBzN2UrbVgxVnZLN21h?=
 =?utf-8?B?V2xxZHpicmcyWE9sSW9rUTB2d2ZSSmMwWFRBRGV0VnN5eE5XMnV0WlFGdnpE?=
 =?utf-8?B?V2h1TmJCMURrQURsMDlwLytjL09rQWxJekxGek83T3NXdENid1cxMXFEb2hh?=
 =?utf-8?B?RC8xdEx2Y0ljbWJXcUw1eGNmOG15YmM1YUNHcjZOb0xHaHkwVnlLMjVVZENt?=
 =?utf-8?B?WmR2M0luMi9DYWxweEFKa3NzOGUyRzJtanhER0E0TXd1Q2tGbUcvUW5RZmNo?=
 =?utf-8?B?cU5ieEhzMHdXL1FwR1E2b0J5cXFRTlAxUnA4d0Z2czQ0L3pQbTh1N3F4KzJa?=
 =?utf-8?B?S2dSNkcvQ0NoWW42MHZ0blcwSnAvSVRjSDNXbnAzZ29kMmRkTHAxcmdRMml0?=
 =?utf-8?B?b3RCaU45WGMrNUMyeFpnWmRrYzd4QkJEVDVvWkZOZXdrWmJHbTBwR2Y3d2dG?=
 =?utf-8?B?bWMxUTBncisxYUVXbFQ0Wno0YmRHcitlK08reDVqQ1Bha1I0UnhaMDVvU1Vp?=
 =?utf-8?B?L2F0Ty9EdTdjYVlhMnFKM21kSXYvZmxTNER1R2JzUXpDYm9NbkZjZ095YnUv?=
 =?utf-8?B?aDBkSmNOczdhazZhQndjSTdpRC9lVVRsdS9uNURmUkEvQ0hLUmN1aVFBTlll?=
 =?utf-8?B?T2ZySUNxdEhKSm9EcEFocGlzNUtIcmJYRG5EQUdEdUhyanBidjhrRzNIRUMr?=
 =?utf-8?B?VjRBbDJZb0hVTHZNd1h6Z3FaWDNNQk51VU83UmpBeWd4N3QzU1dZOFpzcUJF?=
 =?utf-8?B?cHpaS2U3MTRhVmlTWnhDWkhKemNWT2w0V01LSFFsV05SWitBVys1RTRxQThN?=
 =?utf-8?B?d1pnR0tlcGoyZUZ3WFJNU2dTM1BqVExoRHovZ1dWbU5NdGVWSXY4WEg0UDZz?=
 =?utf-8?B?MmVzQnVOTk52NXRXRjFOMndpSFo3TjVtb3ZONWhRRHFPSGxlZHZyQkxXTVhL?=
 =?utf-8?B?U3hwekI4MnpqZUMvSzdWNGl5SWgvSFhqWnJjMWZQK1NYZTNzUHVZUnprYURk?=
 =?utf-8?B?amlYd3NsNzdkcjA3ZG1TZzJmcnppZGpBNU4vcThlMXd3TXpmUG1aUWVXRmdF?=
 =?utf-8?B?Mk51eHVKS1YvU0l1cnpzTWxyWHlaelFBNmtXSHdvaU15NlRrQVdyWTcrSnE4?=
 =?utf-8?B?L2pTUDI4ZWJnL0gyY1hUZUhOVHBuMngzem1OLytLQUpwbHV6bFQybmJjcWlr?=
 =?utf-8?B?bnhyeGVWQ1JERTRULzlhalFIZWlOUnJraytUTnkzUDJzL2t6TFpGUG1WNEVF?=
 =?utf-8?B?dTBZYzhzVnZ6c1dxdmtNdytlTXFGa0h2YTJSMEo0NGtNRHlCRGJIeHRCSXNo?=
 =?utf-8?B?a2ptMFNSZzRaODJiSTJPZCtkclJUektPZ1ZObm9Td1Zaa1FuT2Nza1FSS256?=
 =?utf-8?Q?cYf80IiE3UJrN/Fk=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e0e2d8b-2a1a-4d09-3fac-08de734f7c7b
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 02:50:36.4816 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NTGr6k15YFm9CAA/GNZqoSAkHlpI23eaAWePQdZ9y7PVZ3A/q7MF3UUJsVZURSoI1W12tMUs1bizX10/Lf3+gA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS4PPF11E6CAE14
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email,gitlab.freedesktop.org:url];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 8BAB9181218
X-Rspamd-Action: no action

On 20-02-2026 10:32, Suraj Kandpal wrote:
> Whenever the minimum brightness is reported as 0 there are chances
> we maybe sometimes end up with blank screen. This confuses the user
> into thinking the display is acting weird. This occurs in eDP 1.5 when
> we are using PANEL_LUMINANCE_OVERRIDE mode to mainpulate brightness
> via luminance values. Make sure if minimum luminance range is 0 we
> program default value to max in case 0 is returned from luminance
> registers.

Changes looks good!

Can this header and the patch comment be changed?
drm/i915/backlight: use default/max brightness on backlight init

If the brightness fetched from VBT/previous state is 0 on backlight 
initialization,
then set the brightness to a default/max value.

With the above change
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>


Thanks and Regards,
Arun R Murthy
-------------------

> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/15671
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
> v1 -> v2:
> - Let users set brightness to 0, make it so that it's just not
> done by default (Arun)
>
>   drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index eb05ef4bd9f6..c40ce310ad97 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -564,6 +564,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
>   		}
>   		panel->backlight.level = intel_dp_aux_vesa_get_backlight(connector, 0);
>   		panel->backlight.enabled = panel->backlight.level != 0;
> +		if (!panel->backlight.level)
> +			panel->backlight.level = panel->backlight.max;
>   		drm_dbg_kms(display->drm,
>   			    "[CONNECTOR:%d:%s] AUX VESA Nits backlight level is controlled through DPCD\n",
>   			    connector->base.base.id, connector->base.name);
> @@ -573,6 +575,8 @@ static int intel_dp_aux_vesa_setup_backlight(struct intel_connector *connector,
>   		if (current_mode == DP_EDP_BACKLIGHT_CONTROL_MODE_DPCD) {
>   			panel->backlight.level = current_level;
>   			panel->backlight.enabled = panel->backlight.level != 0;
> +			if (!panel->backlight.level)
> +				panel->backlight.level = panel->backlight.max;
>   		} else {
>   			panel->backlight.level = panel->backlight.max;
>   			panel->backlight.enabled = false;
