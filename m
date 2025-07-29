Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C66D1B14A4C
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Jul 2025 10:43:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D851910E1DE;
	Tue, 29 Jul 2025 08:43:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WKOjTQRo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C985C10E1D6;
 Tue, 29 Jul 2025 08:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1753778616; x=1785314616;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1fHG7fLsXjMzvBzN37UpDm6Pl0BqTje+viWh/b9W3XA=;
 b=WKOjTQRol3lZ16ZVkqq7tHN4NpJRPnVhACzxq36sjxFC/M0SjZDRJBTs
 2zRwDQqnnhp4Yn2ri9mTvZJhInSs2Lm/q+t4pQdGtKcOJG/6KYlysxKBq
 QWkVGL25ym1jMu2F09xoTdR+lLGFwo5IsHk7kzgOzT9gAGs8QsTCWY/09
 QCAgxt8XCb4EGfW6HOfzhDbYjPUS7i1qBZgmV+YAtBNnYK0oJysJINWyb
 84zR6RJTOxb/eAcqI1r3L/XbXMly/d1iy6erNs2Iufs/dNDFOrL3JL+c5
 sOQPAOHuIrNTwxw/ElLFmBrV/sTT55ts6vAvfZqiCfz2UivcqITkFX4pG g==;
X-CSE-ConnectionGUID: FggQLMKAS7i2uIcn5BSu1w==
X-CSE-MsgGUID: Jb3u5v81Qci3mP9YEXZmzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11505"; a="56012333"
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="56012333"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 01:43:36 -0700
X-CSE-ConnectionGUID: YsrU3XTsQsO9EdLodCQXiQ==
X-CSE-MsgGUID: V2r4WAobTyaWBKo0LBIqQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,348,1744095600"; d="scan'208";a="186296061"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jul 2025 01:43:35 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 01:43:34 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Tue, 29 Jul 2025 01:43:34 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.58)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Tue, 29 Jul 2025 01:43:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PS6d6TwzzmAMG3Wt/mtSNc2VHnSsWVb7VrwkH7ShCzLqw80bjotzYqZTGPMRDpqKeuMiDZesgCIiN61LMazF+v/zslUrvpzISP2/fAg8MJ2dWgEwIi0LzKK7VFtC6wfsu6uCXyk9w07AAiwkcSZ+RDjDNeBsIYQEZvLIEW3zBU35rRz04zMCMCJ6T23wrwJ1XuxmnTm6ORVjAjvZp6uICJRoyZEwpXoeQwAT+0w5JpBEiK2ZA1PxXspd7j1RUWsoZvRs2WPFsFshfq+RcAIBPaBT5XNcUJsPJg7kOgkPg7MXS8EYSu3cuR0rkMUVUrG+BpQl7XStOPFzAUYph8eJGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i04orqfdORJ4EyH6lukWOvsb6hEy5Q2aIVIHJ3kC04I=;
 b=g/7H6JespCGnnv+Me5hKwDdQAYI/KNo3NXUs36b5efsJQHPu4TPKk52540XL86HGHOTmRgWBTThXXDnJdLSdnPfkqAJST5mAz5PdIau+JMRGBXPW9balOur3uNVdyuh/AxKSf2tYjBmYbyJVqPMjun2Y6D44X0DKdZGST3Yp6PTXq5KNTmwzQLt9s51D6/BnNUISOYN6OIyBxZTCQ+0L6Ur1IbjAHTgyZskw70zMYM0OmYhKAuFDo3A1tLEb6AmnCdiKbQZztPzxW3KMjJoHGOkPhi7oJTXmCx+0ceWoEs14VHMknWvN8zoV3+J/UWSv+439Y9MYuyvXv8BuMQfXtQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by BL1PR11MB6027.namprd11.prod.outlook.com (2603:10b6:208:392::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8989.11; Tue, 29 Jul
 2025 08:43:30 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%6]) with mapi id 15.20.8964.025; Tue, 29 Jul 2025
 08:43:30 +0000
Message-ID: <9eff9349-5115-471d-b3c5-c2684045ab79@intel.com>
Date: Tue, 29 Jul 2025 14:13:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on linux-next (next-20250708)
To: Damien Le Moal <dlemoal@kernel.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 <linux-ide@vger.kernel.org>, <mika.westerberg@intel.com>,
 <anshuman.gupta@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 <lucas.demarchi@intel.com>, "Deak, Imre" <imre.deak@intel.com>
References: <07563042-6576-41cd-9a95-de83cfc95de1@intel.com>
 <f3f779e3-e269-4ac9-9bed-042859d98a83@kernel.org>
 <d34d122f-2ef8-44f1-83c9-92c7b9e83b6e@intel.com>
 <5143bbee-697b-4357-9645-10f38296b561@kernel.org>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <5143bbee-697b-4357-9645-10f38296b561@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0024.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:177::10) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|BL1PR11MB6027:EE_
X-MS-Office365-Filtering-Correlation-Id: 36963ca8-bd0a-4b94-7d94-08ddce7bfe94
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?N1AwWFNVeXhLbHNEWXJQWDRFSkF1aDNsdHgzb2tPcExNTFFRQlorUW1xbXJl?=
 =?utf-8?B?Y3V4OXFBcWNFMFEzdXNoZThZSW4yTk9yd2VJaUJQVEpUa3BGUjlIRzV6UUZL?=
 =?utf-8?B?NE1BUkV4d1U2T3BoS3cwSjRSLzhhc3BBK0N3MGJoUnpkRXRrVVUvcEhHd3Ey?=
 =?utf-8?B?NzZEa1BkY0NzSTc1VS9KUTdocEZsdTRLTFF5V1dOTzVFLzJ0T0tCY1pSRkdR?=
 =?utf-8?B?T0xYZFNPbXpwYVRxMGh0OXh3cjV6WCtzRUpDUW4rRnNhWU1kSENsaDMwQzdB?=
 =?utf-8?B?MHRab2lJOVloMXd6a0Y5djRFUmlBVFQ2Vk1ra1MrZXZ4V3l2WGk5djN4YVQ4?=
 =?utf-8?B?bWk3RjFHSFVKS1JRcjZodEp2eGxIMEs0WHhxeHh3ei9kNGw1V1dmV3BrcVNr?=
 =?utf-8?B?OE5pUTZBemdVeURTYlNLQ3lUbE9SbjErQUVsY1VDZkpqSHFDNEhoRjQxYjFo?=
 =?utf-8?B?dVlmZzFoNHpDSlNCQVJ3Z0dwaHV5MXpFcmhEQ1MraXRTdG95QlBXV3NpSHls?=
 =?utf-8?B?VWg0UzRnSEU0QVA4S0ZMTlRuUDdMWWVvdWwwWTVkdjBQckxsU1VQSm15R1Bh?=
 =?utf-8?B?dVhEcmVRWDh0blNSYTdUL3ZsdktKZms3QVZlOEJVK1pCRlJ0NEpQcEhTYjRp?=
 =?utf-8?B?eXdkSGpuKzFvdWpURjlNaTArb2VIRUNrbnBZS1N1WEpBNVY2MHN6RVkxS3ZH?=
 =?utf-8?B?SmtxRFZ4bjlFdHFkdncxcGJDUXZsWlYwbUpiazk5RTZubHhScHNERWtESXNS?=
 =?utf-8?B?WS9GVythV2hpa3F3OFpxd1RtOU1WYzlQU25uRG9nV0hOV1Jmc2pTZ2s1eDJZ?=
 =?utf-8?B?RFFYLzBiK2FrRnUyRkxacVQvS1ZKZnN1UjRLY0hXUWRWUFB3M1JJYTl0Qytn?=
 =?utf-8?B?TjJrWk1teVVJSGw3VUt5bXlIbmdVdXkzTXlJWjA5dWV0b1kzVW9aL1BMNlh5?=
 =?utf-8?B?UDhydWE0ZE8zUGRCMWNGMk8zZjFjbjZDQUpaWUlYSUk5WjE0QXZPZThDelpJ?=
 =?utf-8?B?QXBVZC93bko4T2YyTkQ5K3NOakx4c3VOc1V6Q2VaaUEvRVFhWTNFdFJCTUFo?=
 =?utf-8?B?U2NXRUg2N2o2bXlPUkUyRzhMbVhCNlVNNUwra0ZkRTZjYnkrVVNVTXI4eU9a?=
 =?utf-8?B?YjNrc1dSUlgyeGl0WlNlenpETzBFMmNBa3BKb3dRbG04VlozVFYzQTlabG1M?=
 =?utf-8?B?d2Zkb1UyMlZpTUZFVmpKQzc0STR3OVlhMHdkTk9pbGd6Nk5VWkRYNzAybXl0?=
 =?utf-8?B?UERUVHU1STJpb0xyN2dGMTRnT2RoT2Rpa2FPc0h4blA1Nzk2WTBpcDYvSWIv?=
 =?utf-8?B?djZCMm5VTHlEMEEzaFdCd1dOVys2NEM0MkVPNm9EdFc2OGhvSWVrRVg2SWI2?=
 =?utf-8?B?WU16ZmhMdGJacVV1bUJmdmc4cGRDUXQxenU4TWdjZFZoaEs4WWswb0hZL2E0?=
 =?utf-8?B?MWdVOWdzTnYxVjF6Yk1ZbEpBejN0K2kzNitJa2tnaGtrbXpEUmIvWW9vQUhv?=
 =?utf-8?B?Nm5ZS1JZWXNkS2FRUGpDbzFCbERWdHF1MGI1bTJobzVFTkJXcUZ5empZUVo5?=
 =?utf-8?B?VS9Od0xnMzFON1BJb3Z0L0c2M0ZML2U1THFySDFsSWVFc3R3L3hZTmxwRlM2?=
 =?utf-8?B?M0tWem14TkJwamtFeTZYWXpZTEZONWsvOEsxS2VWa05MamVtVE9ZY2hKSEZj?=
 =?utf-8?B?ZXZGMGxtOWxkZjNYUGRlR3prbk5BeXN3MXhoK2tuTUtsREl5MEFmc3J5dmlo?=
 =?utf-8?B?cUdnek13T3pxYWRlN1MvdGhmbUdGNGw1bDFOalFvRFNUWG9WcXg3dXRVRXNv?=
 =?utf-8?B?YjFLaEFOb1UxbXRJcnZiQStOcG95UmtkUTd0TjBRYnlEZ2RXVXZCVWUvYXAy?=
 =?utf-8?B?VkNsS1hZZkllL0ZPWmh4WjMrSGJNd2NUQW1YNVlMcUdQT2c9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c20yclJpSFcvNmVOdVc5dFZxM1EwWXl1b2p2NVc5dk9xdDVqRkY1VEJWcTRP?=
 =?utf-8?B?VG5XVVNiamx1dXFmWDB1dHYvT0hUTHhWVEoxVjMzZ3JTbTNCVFpPQldJSDVM?=
 =?utf-8?B?cmUzUXQ3QnBSUDQrdE9rK3lpdjlYR0NvRlpqd0VmdzZhcEhZaVBITzRMUlV4?=
 =?utf-8?B?UUxEbUlVOHh5VXpoZnl2UE5KcVd2a1VoZ201S0hDSXl3NmdLRnVvdmkrZGtL?=
 =?utf-8?B?TzFCbTBTN3kvMDU3WC9Ia1J3c3FaVjZaTER5M1ZOV2l0eklXd0k0N0JTaUU1?=
 =?utf-8?B?Vkg5MGxWeU9tOHdraXJLMWd6VHJFYkhUTkNLYkpaa0FmTzBVTjJYajYvU3NE?=
 =?utf-8?B?NWtqaCtLKzVvV3ZDY1lENVFlcCtLWm1Pd2hzSjdISVJncmRGS0lMVGxSYmZ0?=
 =?utf-8?B?eUY3ZEdXVjdDUGZvM2l3eHZJYkk5eGlRbDhVQTZrVVpVdXhiNmxzMld4QkpU?=
 =?utf-8?B?cnRsZFpaTzRPdlRseHVpSE1ucm1UY3hmQTlZNndTWkd5MU5wcmlLUG51cHY3?=
 =?utf-8?B?c3A3Q1I4eCtJK2g2U0N2bnlhNE9jU1RpdHZHUTJIcE11Q29LVEJ5UUswdk8x?=
 =?utf-8?B?S2JCZkNFVkx3NUVsalVUQ2xIUHM5dVFZaUNsdTQzdGdXblZ2UUpaSEVyRlZk?=
 =?utf-8?B?TENLOUFpeGNzSGRDSTdFT2N4TnZWNE02VkVoTm9lQXZ2elJMYUFmRVhBU1RI?=
 =?utf-8?B?UjVnN1pjb3Q1dHRzNmJwRWZDOE16cVh1NTlSbE5KLzZrL2I4blVJTHFmTHYx?=
 =?utf-8?B?QldvUkZCR3kxa1FjM1BNNHlnczB2MTJFMTQxNGg2VlFkZHY3NU5VVENNR3lt?=
 =?utf-8?B?Rk5EZy9HMTBmaXRCTXZMWWJNWk5PYlZaNGJvdHBwR2xVbmlaK3oyWC9Vc2Vk?=
 =?utf-8?B?RXJvQ1R3cjVZMjdjWW12R3B5TlZ1TGdOOXZBSlRoQzA0WStRZjNsOVdBaUhn?=
 =?utf-8?B?eko5dUhQSWRnY0NOSFdyTXZEakpzT2NTeDdPTGVUTnM0aS9mdjUrdEEvRjRq?=
 =?utf-8?B?OTJwUk0yMUxKa3ZRYUlvblp0UU9VUGY4WEJpdWdDMmxUNVoxRER0ci9KMXI5?=
 =?utf-8?B?azF4T1VJWFl5Z0REWXdRK2VmU0prMnBmendQbHlYR05talVRditsbVhNN3hO?=
 =?utf-8?B?TWVOK1RpYnJCVUM2Z1M5RjJKcTcvMmVNNHMvVXBHeDNjbHZuL053U2M3WmN3?=
 =?utf-8?B?RVhZdGp1aUExSE4wVWFheFdtRUdqQnY5YmFFaEpON3NXbkNTdVVBM3NrOWdR?=
 =?utf-8?B?MkdTeWVmR0dYN0hudEJQcFV1bzZYY3N0Ym5TSktDL0JmcngvbFg5eXF1NFVF?=
 =?utf-8?B?alVYUDBEbjljS3dKaVlWVFkwSmhnZWlkdE5QR1JSL3JVQzRlSVBYNVdqc3kr?=
 =?utf-8?B?eDU2SjlPd0xyWUNmcWRjcVFjY3k5S09TMDVId0RiZEZZS3luV0ZpUmdEUFp1?=
 =?utf-8?B?d0JKVGExaG1uK0M1dWRtZEpIWTU0ZzUwY1dXOTZ1ZEZ0eTYweVIvcm0yMmRF?=
 =?utf-8?B?MndNdU14UW5NNGJPRmxBUFpiSFFncnBkb1lLYThYRWR3TkQyWnRYNVA5WjdH?=
 =?utf-8?B?SGw2NnE0RUNJMkZNNnhxREhaVVdKem1USTRpTHZ1UGpTellRNjZrdEtrTktF?=
 =?utf-8?B?L3A0eXJPVjc3dkZldlEyeVlGb0tYU0MvZ2pJRE51Y1BsOFo0ZnROcFE4dHdT?=
 =?utf-8?B?N0QvMFVMVllVQmxvckxUM2JQZnhnNGZtQ1dKL29QRm1Ca2UrUGRYMmdxSlNm?=
 =?utf-8?B?eDNwSjcvZmRsTk5VRDVrMmRBajFLSzBQZVl4TGFXbVVPOHkvWHRXMmY5dG5Q?=
 =?utf-8?B?QjdzOEhlUVVJV1N6NzF4Q1B6dHJaWjlob0hYNFIyQXVKc2ZBK0FHMm42Qmda?=
 =?utf-8?B?azFuV1g5d0Nsd0pORFB2LzBzSGNnTEZSSUlLdm0wbXJHdzkwS3VrZ2sxNUMw?=
 =?utf-8?B?YVMzVk5KeGpWaS9KR3pTUEo4NVIzRHRiNFlRa2RhQ0IrNFl3azE1ck9GWkZU?=
 =?utf-8?B?MElUbDk4TTB0Qjl6YzhsSjF4WWlEUlVITW1FcXBOYzFySm1TTnVScFkvRXB3?=
 =?utf-8?B?bUhUajVwRHo1NTQ1U01YdEs4ckZ6dTBxQTY4RWlSUVgwZUtFTTJJSFNsMXp2?=
 =?utf-8?B?bDYzTnFHNHRkSU1ENmhmNk0rVlVmUG1sVUI2QjlibmZaYlg5R2p0L2hkQ2hy?=
 =?utf-8?Q?BUOMmnDMJmuzgKeCa3fhsqA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 36963ca8-bd0a-4b94-7d94-08ddce7bfe94
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jul 2025 08:43:30.7119 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3/ym/mfrIqzKCdqJq+3Jr5V7zgJpqGBYU+mvXaWwG2snOPDdmAcnG9lPcKzpjsluqym7a2N9EQ2TMmOdSJr4RaJQzkBfSBzqVM9dx09Z5Wc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6027
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



On 7/29/2025 4:03 AM, Damien Le Moal wrote:
> On 7/29/25 01:24, Borah, Chaitanya Kumar wrote:
>>
>>
>> On 7/28/2025 9:41 AM, Damien Le Moal wrote:
>>> On 7/25/25 3:43 PM, Borah, Chaitanya Kumar wrote:
>>>> For some context in our kms_pm_rpm tests, we enable min_power policy for SATA
>>>> so that we can reach deep runtime power states and restore the original policy
>>>> after finishing. [5][6]
>>>>
>>>> IIUC, the above change is based on spec and not something which can be
>>>> reverted. So as I see it, we have to drop this code path for external ports.
>>>> However I am not sure if we can achieve deep power states without enforcing it
>>>> through the sysfs entry.
>>>>
>>>> Atleast for the basic-rte subtest, the test passes if we comment out the
>>>> functions controlling the SATA ports. We will need more testing to determine if
>>>> this approach work. Any thoughts on it?
>>>>
>>>> Also, are there other ways to detect a port is external other than receiving
>>>> EOPNOTSUPP on the sysfs write?
>>>
>>> The attached patch adds the "link_power_management_supported" sysfs device
>>> attribute for drives connected to AHCI. Would that work for you ?
>>>
>>
>> Yes this could work. I quickly hacked the test to ignore writing policy
>> if this file returns 0.
>>
>> Here is the state of the machine I am testing on.
>>
>> /sys/class/scsi_host/host0/link_power_management_supported: 0
>> /sys/class/scsi_host/host1/link_power_management_supported: 0
>> /sys/class/scsi_host/host2/link_power_management_supported: 0
>> /sys/class/scsi_host/host3/link_power_management_supported: 0
>> /sys/class/scsi_host/host4/link_power_management_supported: 1
>> /sys/class/scsi_host/host5/link_power_management_supported: 1
>> /sys/class/scsi_host/host6/link_power_management_supported: 1
>> /sys/class/scsi_host/host7/link_power_management_supported: 1
> 
> Looks good. My test machine looks exactly like this too.
> I will send out this patch as it is useful anyway regardless of external/hotplug
> ports since not all adapters/drives support LPM.
> 
> When posting this, can I tag it as a solution to the regression ?
> 

Yes sure you can use it.

Adding Imre to the conversation if he has anything to say about this 
change in our test.

Regards

Chaitanya

> And in addition to this patch, I will work on a flexible way of ignoring hotplug.
> 
> 

