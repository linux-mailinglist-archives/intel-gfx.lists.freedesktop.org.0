Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB886BE8426
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 13:11:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C89D10EBB7;
	Fri, 17 Oct 2025 11:11:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WfOxg8jP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B97610EBB4;
 Fri, 17 Oct 2025 11:11:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760699512; x=1792235512;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LS+rKazfTKbWvtoXmrwDz2HrG8cwVnbuwaL3PHBX5Nc=;
 b=WfOxg8jPYeOFciEEys0CqVL6UmG8FgDptgbrodPsrG4hAVndd0gZLCSZ
 jTVF+VsjNCtxX8MKqWq3bN+geO8qWM6Euk4HCnqEtJ0O/gbHRxvXHdLuC
 oyjB8qKZ/hbZOsYGUcHzPLZDbVeRfBEQ+X5QXJ44GWu+k3lVMq7fTG/8Z
 NhA0XbWI6RfyKlj+aWZf7KFOx8cgeYtzJFeseL9fk5srLAAJpl5qsbEEv
 FJM0UmeIR3WZKk0hex2Cv/UsvFxPBJK3zS1Smor699nnhjsLCX4CTAmVd
 bwo89qXwaSEOhJNu2/p51nLlf8SL6Oz3r9YUkQkDPY8x8RZ4u+hpElIRa g==;
X-CSE-ConnectionGUID: o+iQK0VvSUSU72Q2SogmjA==
X-CSE-MsgGUID: VxPxtoAVQgqIU/sZr1uZMw==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="74251597"
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="74251597"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 04:11:51 -0700
X-CSE-ConnectionGUID: qwuKEW5UTrKiTrr3zFfSuA==
X-CSE-MsgGUID: URB9QC9eQK2Sq7X0I7kTcg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,236,1754982000"; d="scan'208";a="219864772"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Oct 2025 04:11:52 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 04:11:51 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 17 Oct 2025 04:11:51 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.59) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 17 Oct 2025 04:11:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=lwAyMTKqjblkGz+H1VDVTg3GX54b0QHlXqsLzSWCOmjVAfs7MF5kcpdT0twRM202ViaBu83DI4jO390bZxlB+ZhgQWwQeupPHrUdCxI0OyAXPGs42fkIrEOwxZrl6mQA4WYXSeWP/8VAs7ZZffuoynlQ8aT4WvMSZgz2eMuzRVFeGAEMsYHPJK+gEh3+XQrenVYtQdE8moifCU4r149yvz5Gj7GwXYE9MPmSP9ARpz2z3k62tHmncEwuCi6KQi37ryvs+STCNgqYUzZDuoWzyWiCjk7WBlfmlsx6/YNd8jjc6oZN3W2Q/H4XJ98cFbUt2x/LKm7z4xh22LomqurjBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7suIvEHM+Vzz9xz3s11lC4o0ymggcn7lIoFFUXMYVcE=;
 b=YIQvOGcoOcTIhBw1yEhzLqKBrwKDvhZOj+CeuiKeSkZKlPljEnxvBJJxQiyqgUYrcPj1Sb6J3PZCTxWrE23EcU1Mo6q+XsNV9dWpoWLbtZzGwJgcSojHEOrz4x94kcZLMAZ7YI5YzhpkFYYEQxd1NgzrveSy8qXV09j6BieI+7xpQXbefAGbfNI0uPv7+YLue02GtcP6ytI9Scj2cP+I7IbhDOXmEwei7ZYpI43/SDi5BF5zX4CQuAFsvQTYBZ1aFr8LOSp/HEOW0KpgbwuiAs3YDYjUnn0tzR8xHN5eNpx2Ei4XzLmaPZhH0lJZCzweQzXBy30iyO3Chn5ieZEeag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6330.namprd11.prod.outlook.com (2603:10b6:510:1fe::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.13; Fri, 17 Oct
 2025 11:11:47 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9203.009; Fri, 17 Oct 2025
 11:11:46 +0000
Message-ID: <57db1009-7c29-42a1-aad7-9436cda39ea5@intel.com>
Date: Fri, 17 Oct 2025 16:41:39 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] drm/i915/psr: Add helper to get min psr guardband
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
References: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
 <20251017050202.2211985-2-ankit.k.nautiyal@intel.com>
 <4300808467d7a93f080b170faadee3748e7bb2e6.camel@intel.com>
 <ad6cd831-517a-4eb9-b812-1fb4dadea00d@intel.com>
 <043a61da1973f6bfd5cc9b45c84c1c13e038828e.camel@intel.com>
 <7faa7134eb0ef1a558bc71c5e9f30125132a55a1.camel@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <7faa7134eb0ef1a558bc71c5e9f30125132a55a1.camel@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0251.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ae::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6330:EE_
X-MS-Office365-Filtering-Correlation-Id: edc3c749-244f-4eeb-8890-08de0d6df5fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cVY1RW5pVGsxU0hxVzNKYksvQjB1eHg5Y3kyRk1PT01ucEdRZVNWZERWbjZz?=
 =?utf-8?B?VUFqYWlEcWhYUXJwRzY1c1padlY5S0M2dEVYSmFmS2FZSWFqc05YM3Myd0NQ?=
 =?utf-8?B?YjBobWhoajlIUHVQSXk0a1FQcHVPblJrVThsUWkveUhkTkhXQVNTUDExVVNa?=
 =?utf-8?B?U01IbTFKWmxoTENva1U1eDN3TlF1bXRmUlFtaitXTjY3d1hrRkRITEdzY3NB?=
 =?utf-8?B?YllGTXhidVhaM3lUbjFEbkVjSzdyeVhDcVpySkN5ckFUMnE1bDE4S2lGZkoy?=
 =?utf-8?B?emxycnV3UzExUzFlNlZmM0FKcE1mSzA5ZlFORXF6VVBjWWZwRnNMT2h6cEQ5?=
 =?utf-8?B?WW9xdjFSRmFnOWFVQ0RwYW1PNnE0Mis2YW1sMFdRN0xHNzllZUVXcXpCbWw5?=
 =?utf-8?B?Q1l0SmVyeWdCdUhpeDhMeTBOejg3OFkvZzFFQ3NFNk1XbDNZajRQN2IrSFpI?=
 =?utf-8?B?QWxuOWtwbHZ3bitDb3NQbmdOY1gxVVpSOElqTW1OZmNaMXAwUStWdlFnaVp5?=
 =?utf-8?B?eFk5bU9DKzZTdStRZ0ZKRkt2VzRQTWNuR3hFVS9McUQyOStnN1BkV3lsWEly?=
 =?utf-8?B?empvWmtCaHZQa3VkOFBYUnZpa29BY1FQNTJ4MlVzbEpRSFlGN3dza3VmZ2NY?=
 =?utf-8?B?TG4vZ29KN0tpdER2YWg3aS9jSmVyNWpWTUZTSFRTTzFQUElNZmlRSmZieVY4?=
 =?utf-8?B?amZ3ZEUwUy90NVR5NWpOSlBybWJOY3o4OVNOTTlzWld5YkJZaXRtUWl0dVZI?=
 =?utf-8?B?Y3dKejN5RUZUTjQ1cCt2VTVkQXNZMUlOU0xqMmZtNkE0MmtVZDJSUFh5QkU0?=
 =?utf-8?B?VzFkNDlCdVd4MDhyMng1V2Nqb2s2bEtSUUh6YVNPdVR3eGhUVSthakR2VzI5?=
 =?utf-8?B?M1pFaCt5a0dzbjQyK1A2ZmVNZDB3TVA5K0pQOVhyRXZDbTl5dDl2SlB5dWVW?=
 =?utf-8?B?NGM1NTdxcGp4ZGNYVHp1MjQyMVgwQWxPZ2I0U3NLNlVNNVpGWFZkU25VM05t?=
 =?utf-8?B?MlhaQVRYSHJMeHlIcGJhYWFoVTRtRythYUpBVTNXdE9aUEhDZDZEcXBjK2Jo?=
 =?utf-8?B?RmpTbTBWMnRtMWd4c1F5MnpwZjY4Ym9zMFVOMTdaeTRXQi9BejhiQ09oU2dp?=
 =?utf-8?B?MkRPakpaT3FtOWF3Z1JlRkdRMkM2NlNHV0x2Mys0SlF3dEdINkZvWUw0bXhX?=
 =?utf-8?B?enpxMVBURnVIdTZWRVd4ckgxMnpUSTd1YUFhdWIyc3h4SXdaSktmdG50VThp?=
 =?utf-8?B?SkFtMXpyeDRHUjlTcWRvNzY1dVZiaTltRkFOVVJLLy8rOXowTyszbU9xZG5S?=
 =?utf-8?B?c2hXRjc1TlFqSkZ2Um9DalNHeDdOTHBub2pIRlg1TkJnWDVkeGg4NnVkQnNs?=
 =?utf-8?B?ckM3bStXVTZGVDU2ZHBJaTNCdHJGa2IvV29oVG1sWGNOY01xOXlYckZyOUp5?=
 =?utf-8?B?U3ZyMzBQdHFaNWVpcFJmNEJPV1VRdkpYTnpZNlcxZUhsS1dDNVU4Q25PSENC?=
 =?utf-8?B?a2RHc3JwcHdtQlZ4Q08yb2I5TWF3L1FQcFBrOEtha3BvMWxIcjR5WnZpcHd0?=
 =?utf-8?B?V1ZRTkJLV2dXK0hqV2NnZndyT1hUTkoxdTlsLzNlUHNCcFplbGJYRW91S2Rw?=
 =?utf-8?B?aFNHZ1NyN2xML1Y1UEdJaXliSCsvNnhaSFpiSzdNMlBnUC9KL25ob3NXK3Uy?=
 =?utf-8?B?bDY5aUJrL09jVW8yaEs2enNsTjBsTjRjUHFjUE5JRGxhOEFYTmNLOGVqN01k?=
 =?utf-8?B?NjBLMXFsVk1ZMUNWQTRHZHpaKzRKYVZjSExqbUtNUWZ5SHBtWFJlTytrTTlM?=
 =?utf-8?B?cEM2NkQrMG4yOTZ2NE02dTVSbGdzbVRYSk85bGZrK3prQ3cza1dGekFXNENT?=
 =?utf-8?B?aGhsSmNKUXFvRGNIa0oyNDNoS2dYamY2SjJCcmc2b0JxNjBqdjF3VmlMSGhl?=
 =?utf-8?Q?D8hqkw8nxEzIWBJXEcX8kmKNI5ya09te?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NnJxSmF2N1J5VHI2TDlHMWhqK3FPZVhaczFndFUybzhBRUdwYW9saHJhbzEz?=
 =?utf-8?B?KzdBNXVGQ3hoNkNGZTZyQXB6M1RNV1RFS3RDOWNIY2gxZWx1OTFZQkpuY3U1?=
 =?utf-8?B?UUJONmdxMWNhQWR5cTNBM05JUXVsWm9jem1JbkpvTEVaZmJLWHlZTFA2Nmox?=
 =?utf-8?B?eTA0eFJaNGJyRkZGMUQxVThqaS93Uk9nVUJtR2NKSkpJVDdIc0pLeGJNbGJM?=
 =?utf-8?B?OFhEV3FtZU96T1FxR1h6OWRlbEF2bktUcDdKK2tjM0h4ZmZSZ3RNOXdWUDc2?=
 =?utf-8?B?MGdPRWU2cnJwS3JYOWp5OG00ZmU0M2Nmb3h3eWR5aHNoeWo1M2FSQkdzQTVn?=
 =?utf-8?B?QVdabFl5UFZ5SU9LU1JMRTdYemNoTVRiNk9xeUtOOTB6eHBMZENEb3NuUW1l?=
 =?utf-8?B?OFdBWDQ2ODBoY0QyTVJXTWJwcjZtYTUvb1ZvRXlUUk9YNjB0akFBNVY0NXl1?=
 =?utf-8?B?aVZIV1NENkFDZjNGMmtJMmZGbkV2YVBwMnUxdWt4RWxnZ3QzYzNqWVFyQnZF?=
 =?utf-8?B?TmRrUERVQm5jNUM0M05oZ1VUMzluTVJRZHlVVTFBQXJ4VmJ0bEpLZmxBeDZY?=
 =?utf-8?B?b2p6WXA1Q2prdU9mLy9NdmxoQ1lacEtaTklSSElkSXdlU3ZVMWFGbTVwTnh4?=
 =?utf-8?B?VDVINXRTdUdVTDg3MEVTRnhaRXhhMUM3TThZRVNKdG5CUENNYkJBVjY0MStD?=
 =?utf-8?B?UkNFR0dqMmMvRXEwc2dQOS9mYUpmeGRKcVdTUThZVnArRGhJMHJVYmVmZVB3?=
 =?utf-8?B?R1BaMXhqMGNXTVo0emJCYnN3SHBjNzN2ckh6QUNoK3BaQXBCSzMyVU1yc2xE?=
 =?utf-8?B?T2ZlZHFkSHNHNnZFQ0FyU0d2VXQvbU56THlYc0pKbWRKMkQ0QTMxMzZjejk5?=
 =?utf-8?B?eVJCeHIxNWZPeTI4cEQwWDg5K2gyZkFhN3hVUUhCV284QmhtY0lFeW1wK216?=
 =?utf-8?B?MWxoZEVwSURkd2oyNXZ2SUtFRkNCK2VSNUM4dTR5K2ZVUi9maHkvSnc1Ukdn?=
 =?utf-8?B?WXNaa2JYSnQzMUo3N3hBQ1pEd21QVU5RbUpEVlc0SUZlbkx0bngrWEs1N3Zi?=
 =?utf-8?B?NXFkVDlFSzNHNjVob2lkV0FwZVAybTl3S1dFdkxUUTE4S3RQR1RHQmNBU0VV?=
 =?utf-8?B?YTdYalRzelJzTHFzQisvMWtEYlhxSm5jemM4MndUVDZGQ3FMY013ZFRTbngz?=
 =?utf-8?B?c0FmZ2N3QjhDb2FycEZDUU0wS0RjWUVncWtibm04citjeFMrQzYvRXR3d2pL?=
 =?utf-8?B?ZDlDQ0tvZmZNaURWUWxMbWZmcVBpWU1jTzVOUURFSXVVTlMydCtsUVlZZHZL?=
 =?utf-8?B?SDg1aStvMEtia01sbERSK05PejVpZVY4Z25ZSFRMTHFweWZIbmxTRUVUQUJM?=
 =?utf-8?B?UG9OWmhDcWJGWUttUU1yY2x0eDQ2K3Z3UTRKRXpuOC9UK0tXRys5TjVlQXdk?=
 =?utf-8?B?LzdkTTVpZkJiakxuMHZVY2NxS1dsSk5HZHFwUEUzNmF6YzEvazE0d1RSSHY0?=
 =?utf-8?B?bVhnZFdQaFl3ZlZXbVZyTTNnWkpIWCtpMXlla2I2aE9TTXZXTitIcjZlZk5z?=
 =?utf-8?B?aHU3TnBBVmlwcURRVzhtUWRUSjFhTWZkd3BoTUpMekhzWlZaM0EyK2Q0Vk0w?=
 =?utf-8?B?NmZoYkI2ZEhHQ3lNUjluR25jVmRaM20wU1ZJQjFKWU4wWUpUMHR4VTY0NXlv?=
 =?utf-8?B?dDNjRTJOVHJOQzVkQW9uWXF0MUlrb1g2ZTNBVEYxcEFsb01JbTVIZ2gzNno5?=
 =?utf-8?B?VzZtNUpuRjR6cFBNa1RlN0lUazlPMkNHY3AvWFBwdHpMN1dnUk4wVVY1bVN6?=
 =?utf-8?B?aWUwMWhTb01QbTgrWnNlQm5IMlMrS2ZRYVNDQW5MQkxBTk9FRHJaeS9idkZH?=
 =?utf-8?B?Wm05RTVGYjh5UXNFQWdPMmtjZ3owbHlQOVovYlBqd0RyV2h6RXJSN2RZV2dG?=
 =?utf-8?B?VExmVW1iU3Q1L2N0bVhzZGRzS3NIdjdGVHQxU3daOGdzQVk0R3ZudlBtMVFJ?=
 =?utf-8?B?RzRiaTV6dXN3QjJIVklzWDExMkpkUk5oZWR6eVdZbnl5dmU1NDIrV0ZwNXBW?=
 =?utf-8?B?UWhOajhFOUxWN1VZc291R1pjVXM3U3l0NWw0aE9Hc0dKUTdiNDI2TzZkeVB6?=
 =?utf-8?B?eWNpdEFvaVlQZjkzSTZQdW5OV1MyaXVnRG95Q0x3TERDMDlvUW83bmNvb3BH?=
 =?utf-8?B?M2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: edc3c749-244f-4eeb-8890-08de0d6df5fb
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2025 11:11:46.6058 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YQnRqA8z6N/t2/pfpfqHeDt2D7fRTYUtL+3Z82IYbiFyUSg595W3CM4wfFWE8nzNc/JmgBYkcCCA5TchdichGNF0oxQWnP/Zi1a5VLE1lw8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6330
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


On 10/17/2025 3:45 PM, Hogander, Jouni wrote:
> On Fri, 2025-10-17 at 12:58 +0300, Hogander, Jouni wrote:
>> On Fri, 2025-10-17 at 15:07 +0530, Nautiyal, Ankit K wrote:
>>> On 10/17/2025 2:37 PM, Hogander, Jouni wrote:
>>>> On Fri, 2025-10-17 at 10:31 +0530, Ankit Nautiyal wrote:
>>>>> Introduce a helper to compute the max link wake latency when
>>>>> using
>>>>> Auxless/Aux wake mechanism for PSR/Panel Replay/LOBF features.
>>>>>
>>>>> This will be used to compute the minimum guardband so that the
>>>>> link
>>>>> wake
>>>>> latencies are accounted and these features work smoothly for
>>>>> higher
>>>>> refresh rate panels.
>>>>>
>>>>> Bspec: 70151, 71477
>>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>>> ---
>>>>>    drivers/gpu/drm/i915/display/intel_psr.c | 12 ++++++++++++
>>>>>    drivers/gpu/drm/i915/display/intel_psr.h |  1 +
>>>>>    2 files changed, 13 insertions(+)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c
>>>>> b/drivers/gpu/drm/i915/display/intel_psr.c
>>>>> index 703e5f6af04c..a8303b669853 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_psr.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
>>>>> @@ -4416,3 +4416,15 @@ void
>>>>> intel_psr_compute_config_late(struct
>>>>> intel_dp *intel_dp,
>>>>>    
>>>>>    	intel_psr_set_non_psr_pipes(intel_dp, crtc_state);
>>>>>    }
>>>>> +
>>>>> +int intel_psr_min_guardband(struct intel_crtc_state
>>>>> *crtc_state)
>>>>> +{
>>>>> +	struct intel_display *display =
>>>>> to_intel_display(crtc_state);
>>>>> +	int auxless_wake_lines = crtc_state-
>>>>>> alpm_state.aux_less_wake_lines;
>>>>> +	int wake_lines = DISPLAY_VER(display) < 20 ?
>>>>> +			 psr2_block_count_lines(crtc_state-
>>>>>> alpm_state.io_wake_lines,
>>>>> +						crtc_state-
>>>>>> alpm_state.fast_wake_lines) :
>>>>> +			 crtc_state->alpm_state.io_wake_lines;
>>>>> +
>>>>> +	return max(auxless_wake_lines, wake_lines);
>>>> hmm, now if you add:
>>>>
>>>> if (crtc_state->req_psr2_sdp_prior_scanline)
>>>> 		psr_min_guardband++;
>>> I did not get this part. Do we need to account for 1 more wakelines
>>> if
>>> this flag is set?
>> If you look at how that flag affects vblank check in
>> intel_psr_compute_config_late:
>>
>> ...
>> static bool _wake_lines_fit_into_vblank(const struct intel_crtc_state
>> *crtc_state,
>> 					int vblank,
>> 					int wake_lines)
>> {
>> 	if (crtc_state->req_psr2_sdp_prior_scanline)
>> 		vblank -= 1;
>> ...
>>
>> So to take that into account when calculating minimum guardband
>> needed
>> by PSR you need to increase by one. Same goes with SCL:
>>
>> ...
>> 	int scl = _intel_psr_min_set_context_latency(crtc_state,
>> 						
>> needs_panel_replay,
>> 						
>> needs_sel_update);
>> 	vblank -= scl;
>> ...
>>
>> You are already partially taking into account PSR needs when
>> calculating optimized guardband except these two lines which are
>> needed
>> conditionally.
>>
>> Also intel_psr_compute_config is run at this point -> you know which
>> one to use: auxless wake time or aux wake time. no need to use max()
>> with them. Just choose the one which is relevant.
>>
>> With these changes you could drop intel_psr_compute_config_late as
>> vblank would be long enough for PSR mode computed by
>> intel_psr_compute_config, no?
> Ok, noticed now this in the last patch:
>
> ...
> crtc_state->vrr.guardband = min(guardband, intel_vrr_max_guardband(crtc_state));
> ...
>
> So if we need to fall back to intel_vrr_max_guardband we need to have
> that intel_psr_compute_config_late.
>
> Anyways I think you need to take into account that
> req_psr2_sdp_prior_scanline and _intel_psr_min_set_context_latency in
> intel_psr_min_guardband.


Hmm I think you are right, we need to account for 
req_psr2_sdp_prior_scanline here.

But for SCL I still think we do not need to account in wakelines as we 
are already accounting in intel_vrr_max_guardband() which calls :

intel_vrr_max_vblank_guardband(const struct intel_crtc_state 
*crtc_state) { struct intel_display *display = 
to_intel_display(crtc_state); const struct drm_display_mode 
*adjusted_mode = &crtc_state->hw.adjusted_mode; return 
crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay - 
crtc_state->set_context_latency - intel_vrr_extra_vblank_delay(display); }

Regards,

Ankit

>
> BR,
>
> Jouni Högander
>> BR,
>>
>> Jouni Högander
>>
>>
>>> What we want to do is to check for min guardband for
>>> panel_replay/sel_update based on the required wakelines.
>>>
>>> Whether we can use the auxless_wake_lines and wake_lines as
>>> computed
>>> above to estimate the max wakelines or instead we should use
>>> functions
>>> from alpm.c :
>>>
>>> io_buffer_wake_time() and _lnl_compute_aux_less_wake_time() to get
>>> the
>>> worst case wakelines.
>>>
>>>
>>>> Whatever is the PSR mode it can be enabled what comes to vblank
>>>> restrictions and you can drop psr_compute_config_late?
>>>
>>> I think we cannot drop the psr_compute_config_late as it checks
>>> whether
>>> the actual guardband is enough for PSR features.
>>>
>>> intel_psr_min_guardband() is used along with other features to have
>>> an estimate on the guardband that works for all cases, without a
>>> need
>>> to change the guardband.
>>> It is bounded by the vblank length available
>>>
>>> Regards,
>>>
>>> Ankit
>>>
>>>> BR,
>>>>
>>>> Jouni Högander
>>>>
>>>>> +}
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_psr.h
>>>>> b/drivers/gpu/drm/i915/display/intel_psr.h
>>>>> index b17ce312dc37..620b35928832 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_psr.h
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_psr.h
>>>>> @@ -85,5 +85,6 @@ bool intel_psr_needs_alpm_aux_less(struct
>>>>> intel_dp
>>>>> *intel_dp,
>>>>>    				   const struct
>>>>> intel_crtc_state
>>>>> *crtc_state);
>>>>>    void intel_psr_compute_config_late(struct intel_dp *intel_dp,
>>>>>    				   struct intel_crtc_state
>>>>> *crtc_state);
>>>>> +int intel_psr_min_guardband(struct intel_crtc_state
>>>>> *crtc_state);
>>>>>    
>>>>>    #endif /* __INTEL_PSR_H__ */
