Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC15B58E7A
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 08:33:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9CF6410E675;
	Tue, 16 Sep 2025 06:33:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CYJ+fO3A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B5F1110E675
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 06:33:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758004424; x=1789540424;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=W9iIcVzzUDn6L8V1ZrJN5kAouGFsqYYZQf1/UdWlFmM=;
 b=CYJ+fO3A3qTw2uBhVmdzaRrptC4RWojacZdM/G4e08//BoCeQzU+OJDY
 KU7jyfANYlhhipiA6KQjvQtrF7kqqJ92eOzJ3tEOKePMZ7T0s9nrr0qBx
 +BHQQZj62XEst5fisUcdrQpG0t7f21Du6Ojx+bNDmOxRDIcTnd+2zzs0o
 Wpix2zNfRtzK+ZV3ieXO96tcwC6xh6ZT2NmfX7JWtgASiDMoutFVK4AZi
 P6yT09ZmMT9n0JkIk1ODcJXm7bd+r1hLlYEhdw4qqV/jLns531mlsvwYW
 V+W38Wg3zFmqJp2AXmRV7FFP8Fv94vYkyEz8Hp85wYojV6xFuN2V4bppW g==;
X-CSE-ConnectionGUID: nOvsoKNHRY20djUYjF/5Gg==
X-CSE-MsgGUID: HAR0OiVpRequO1L9gU9XWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="85711161"
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="85711161"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 23:33:42 -0700
X-CSE-ConnectionGUID: BQ2r+u09QE2PZJJMs5xQ/Q==
X-CSE-MsgGUID: ttyS9ALHRQuN7YOOv29PCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="174788324"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 23:33:42 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 23:33:41 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 23:33:41 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.62) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 23:33:41 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=VYl2r7HXFqDl/0x6H1FiAWepNM87r77OdOl4v20+EnGI1bhf6r8RRipIVMYqHfyCuFMVU60PSVcBicj85A1wxiwECEMSvp9YneZPWT68MIUsz9zRwdh9qk7Hn33o+q7EIuCCW6S1d1uXgnWWH+eA05PzXp+Fm8+RpFG7ZXWSkAA4NuAemWkxg8POSPHL+Qs2kAZmnVrfdJPMi0h40kslIc8tCILdD9TGL3XQnsdQHuilRvEc45wNsoG7jZl7th0z7WLm6wQVOR4JVz08tmD2C4CnsR1xTPve3bs6BhoPupyjRqlI4+ylFlEQzd1pKOX/XIZyEcOPKDyokl05PtpCWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HgZTaL17PrcQyxKfhMn7MIfebqG5/+XOjKLndnDxHRc=;
 b=sbQdM577LrVLrVjJ5vt4ljp+RIy4ilizOVeGXTZo7g1t3qU/yvYFZ2tyaFvXRwBIQQLV+QwPvGjgy56URVI6Z+B6705GBSMuQiD3SrmcsrtlDZmyeEV72K2VcNDy+czhgyGnVSoLZTgVe8gLaDCyqouiI4wnyhcD/uTXjis6x+C0gtop7VAfjoi7sJUvLckxBHr4O7jddPuIPcL5JEmbX7vdaA9iIfYkyxxqBGaoUdHpXdnvVdWqJ0kPSNkQAZKsNUBXkZIpK/4Ta9ZCvkqZLJVL0f/bnNX6GEaChnWveA5Yobmm9QKVGK78TAWVCxE0mpxU5Cq2/4713uWtTz7UHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW4PR11MB5823.namprd11.prod.outlook.com (2603:10b6:303:186::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Tue, 16 Sep
 2025 06:33:39 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9115.020; Tue, 16 Sep 2025
 06:33:39 +0000
Date: Tue, 16 Sep 2025 06:33:33 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v3 2/5] drm: Do not attempt to round_up() zeros in
 drm_suballoc_try_alloc()
Message-ID: <be63aaccc9beaf1861c51f069bed6982c2d01a49.1757576103.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1757576103.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1757576103.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: DU2PR04CA0360.eurprd04.prod.outlook.com
 (2603:10a6:10:2b4::28) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW4PR11MB5823:EE_
X-MS-Office365-Filtering-Correlation-Id: 81fba280-761d-475b-02eb-08ddf4eaf885
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?STVvVkdvRzQ0R05KczAyWFR4QUkvNkZhQThiSmdLeWtpdGJWWkt4NUtobHVi?=
 =?utf-8?B?UUUwbFVtd3ZiY2QxWXVOS0NablNqb1Q4VkxuVFFVNy9wSTdZVkdJYi9JNDNq?=
 =?utf-8?B?Z1FwU1ZhdEloOFJ6OTNiRmNHZHZGSS9QeDlETCtWZndRMURma2ZuTTNobWtP?=
 =?utf-8?B?UFFqalViajFHWWFCSElyZDU0aEtKTnRadkFPbzJNMTdGM3NxUTV2UDI1Rm1h?=
 =?utf-8?B?RDd1SWNubzVYbUdiSGlYUkdrWkp0Sy95cmlTUFNzSnZOVHJYeXM0Y2VSbTlm?=
 =?utf-8?B?MjhiSnN0dHVZRFcwTklPTjVjeWIrT2dyVzFEQ3g0SFgxSDE4VlRpWk04TDFl?=
 =?utf-8?B?ZW1PekNxR0JrUHlWTkMrVW10ZDFtZ3VlVjZua3lLUEpJS2JXdDFua0NzejVh?=
 =?utf-8?B?bGtxNzJjMnBvdFltREc2dStjaTU1M3ozYkdGeFVYTlovOFQya1pjODh1T0tE?=
 =?utf-8?B?VDh5Q1RTWGFKSGRET0N3dW0reCtvUmJicmJBSHZIREphcFdXemhMZVFRSXZJ?=
 =?utf-8?B?bG5iWXU2QkNKdE5CVVJTWmV6YThZSXhwWjdCUVZERHdiVm15RER1eFRwWU84?=
 =?utf-8?B?RERTeFhhc0ExQlVvK0s2TlRFc3g4ZWJHNkhOQXlCMEFIaWRjWDE4Mmd4RzhT?=
 =?utf-8?B?bmw0cnpzSHMrT1dxclFRRldNaVoxRGVScUFGU0RtUUcrakc0dFBBTzJwVytt?=
 =?utf-8?B?UXBsc0MwU0Z2T3ZxTm1RbThZMTg2TnBpUDljUDY4YlA3cEk5b3R6N1VSNGwy?=
 =?utf-8?B?aGV4UjhUWHdjY1AzMzl5eUVzNlJlYm45bDVlZTZCNGI5dW5RU2VxakFlWGJ2?=
 =?utf-8?B?M0tzT3k5N2JpQUVyTTN0TXVGVnUvcnVHL3krRUN2SHlwQUNNQ2MrNklIZXhW?=
 =?utf-8?B?Ylh0N295YS9HcmxhZmo5WmtPQWpMb05relNwanEzVkhCRDZVY0dFK0xUN002?=
 =?utf-8?B?SmVBWnd0WjZhbHdubXMzaU5LUXBPcG5OZHFzMXc0TzBBMXVFVDhRdTk0VVZi?=
 =?utf-8?B?WVZCOUduUlNZQlFLY2tqNjM1c1JaWHFMTHlOZkdWMkdyN0YwdU5MZUlOOGd0?=
 =?utf-8?B?dnlsWWtIYlVPelZ4NHkyemU3bkMxLzJ4SDV4bFBESjFuZGY2eWJaV2ZMM0tv?=
 =?utf-8?B?eXFyMVNXb0RKR3ZaaXpRTEZlOERGOWYyd1R2OCtTL1NGMHpLd2h3V3o3N2Rq?=
 =?utf-8?B?bFV3Q0N4NWpEYWhtUHI3MTNmd0U1NFhmREsxMGZLZjRTL01ieUpuMFZoZFpi?=
 =?utf-8?B?VE8ycHpTZC82Uk0vcFBWRndWQUNYMGlxL1YrVjFIVEN5YXJvWGE5MjBhbUZZ?=
 =?utf-8?B?c0JzRzVXeWJDSWFaVG9Rdy84OWd4Qmg0a09QeWJvNGZReUNnTHNOellLeDZv?=
 =?utf-8?B?NHJPUS9kM1YvNFUwd1VLSGRMOVhHSU93VEZDUVYwcEJvbTlIcERCcW5vOFo5?=
 =?utf-8?B?UU5wTlI1bTBZa2x1RVYzeCtmekh3UTJtM3RFanQ0WFRXdzVab3d1VWF6K0ll?=
 =?utf-8?B?V0RteGhxRXJFZGQ2akZZSjVlVVNUOEttek9WUjNsOW1EYlRnWkVXcnU2UU9L?=
 =?utf-8?B?S0lWZHRHOVpJUHBtUlNkVEJsbEN4WS93K3dIOG02aWp5VXA1cm5nQVpjQmJ4?=
 =?utf-8?B?UEFvU1ZYS0xkdmcrWkNaczhSc21pT3oxaDVzTXVBbUV1TlpGMTNPd2NuZ0h6?=
 =?utf-8?B?d25Db2dPRUE1N2VSdThBUERQSVdGZXIreVp1MzY1Mzh4bUluZnIxWmZRRjg2?=
 =?utf-8?B?NHJieWtITUY0Q3MwZWxGNXZ6eTRmTVNnWU9tZ0J1d200SW16MHBVRXZiV2pV?=
 =?utf-8?B?b0hQOFl0QWVLYnFzcFE5QnRtUUoySG9xaFNUemNDajVLdTFzUzQ1c1NLNGox?=
 =?utf-8?B?YnNjbzVlb2Iya2NpN3d4ajhsTUkxTk5RVndaZWhIYllBWFMyL2hnZGROc0l3?=
 =?utf-8?Q?cP7DkFpeJ34=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?M2liVmh4SU5FZldBRlJnbHVJMmpXdUl5U3Jnb3pGSkdwdjJaN0ZZMGlpbHV0?=
 =?utf-8?B?NGx6QzMvaWMwbFg0SWZXd0RKVFhQS21pTWwwSVRKdzVmaklZZUVCb0hySVo2?=
 =?utf-8?B?clBScTFkcFpPRm9TWXRPQVBURzRhU2U1ZUhkNHNHVTZPYUxoajdkRzhrSGJk?=
 =?utf-8?B?cW1RRHd6NVpjV2k4MjJwd3V4cmdFUUU2czdwWXorMkdOYW1jSGJxR3RSbEpK?=
 =?utf-8?B?Tlg5NmdCVlA1RUVHVEFSbkl5SmFKNENSS1BZK2wweDlXblJMSC9aamN2eWlW?=
 =?utf-8?B?VC9hSHhiSmVaRmloaTBnYmI3Yk9uZzlmS2hGM0RKZ3ZHUWtyT1VoTmxMaStG?=
 =?utf-8?B?VVJpQ1d2MndUUGVxWW9PUTc3STBwTHJDM3hWa0hyaE9hWWx0eFdsSEJrVEFm?=
 =?utf-8?B?MHJQZ3F5ZTVBSnVPSjlia050VkpuMWthak1CRU9RaHd6SWUwUGtEVGFSNkc2?=
 =?utf-8?B?cDB5bVAvdmZPck9PQUFTbnpqMzJPZmNNZ0hxL2JGMGpiR0s3NitGeDdwMEJB?=
 =?utf-8?B?QjJ0KzNmSVRzTDI4RUZIYksvdDhTTm80M1FSSS9qN0htM2NJWFJobUhTUmJW?=
 =?utf-8?B?N21LSWYrUElGUUhjTnhaRUhZMkNadWd1cStYb2pIU0hBUGtNeUFFMTJFM1gy?=
 =?utf-8?B?V09XK2htdU1oQ1Rwa0FTL1FVN08vZDNQOTluV0FSbXJrM29lV3RyazUrNmR2?=
 =?utf-8?B?SFBMbTBCOHpXVWttRlU3MGVXb09ueHVBWjhpVlQwemtobkNIZHRpdGxaY2VM?=
 =?utf-8?B?REZqYXhUSm03YkYxZDY5SExXSjhsYnlUcXZCTXEwQUZndk9qK045cGZEQ0FM?=
 =?utf-8?B?SStNZ3R5WDN4TEhRUDVFVDJyOTBCSlhnKzQySENOR01sZmRhekN5azN6ZzFW?=
 =?utf-8?B?N2FyYUd2Ry9qTXpxVkxZblM0L0lpMXJwR1lWUEc0Y1N4TitGbnBQWlh4aS9o?=
 =?utf-8?B?QUg2UUdpVEJKZk9XcnpuejVwd2hXOTFLUlhya0w1VjB2NzFWZ0I5eDdodVZH?=
 =?utf-8?B?clBzK0xmOG5XbmpFUi8wdldpS0FQYkcxa3NzZWQ4NStmQ1IyYnhka0pnUUJN?=
 =?utf-8?B?V3daQjRLTGthaVJrZFVVeVR4WklObFNITC9pbEcyaVNlVGttcjFDSjZPbGEy?=
 =?utf-8?B?REdKMnpTa0t5eUdYb256NVV2YjVrdTlVRms3RnBUSCtzSUFJSGJSVnhuN3Nm?=
 =?utf-8?B?dVdhb2RQSUt5eVR5VjhlOTFBZEw5OGR3WVhhZmRpeUZReWt4NWZEc2M2djU3?=
 =?utf-8?B?ZUFGTlVNQVpVQVRsb0JqbjBDWkhkWjZIMHpTUXZ4NXlkVVNTS2ZwR3Z3VFNW?=
 =?utf-8?B?c0hNK2tLZlpZZkdSU3hra0JOZjUwSU9zQkkvdlV0RjI3d2N4M3NLc3ljSTdD?=
 =?utf-8?B?MkIzTjIwTlVXVS9WSGU3RmF2djJwZ1RsREtFMVBsTW5scFd0WmJzV1phY3ZB?=
 =?utf-8?B?aXBpWlNNNmtPajZpSXNaaUk0WFZqUWltd09NQ2hGdWZQSDZtUlE0OFd4MTJ0?=
 =?utf-8?B?ZGRMV1RObStkT3RXQnNVRDFuRlVwK2tkUWVtZTNodEVuUEFVM0tpU3FoTnZD?=
 =?utf-8?B?SmNtK3pkTmh2STExckF6Yi9zZDFKYTNQVUVVS01yQ2l1d3ZOTXFpVTFnZGxn?=
 =?utf-8?B?S1JHcTZqSHd0QURDWmZpQlU4Q1NkcXVaUFNQbVdWOU9PRC9veVE1Z0UyQXJq?=
 =?utf-8?B?dWpvaTdrNStTbjZNK0g4N1M4cFhXdmZKQjhidkp5aWo2bU9PRGVhL1ZScmo2?=
 =?utf-8?B?eGtpNGwvSTI5bGJQZks2dTVqWWw2VlpzQVFMdm9ndCtKL1ZGTFAvOTV6SkE3?=
 =?utf-8?B?QmZjY0FKT2V5QXNmME1ETXozVG1LcEFLV3N4bmlsNlRuQlV0M0Q1MXFXSHAv?=
 =?utf-8?B?a0lrQUl1dlo3M2pSalRjTW9JY21qUDVpdURmNkNyeTU2Y1M3NkFlaDZjK3dG?=
 =?utf-8?B?aTBjZXdWYkZvOUphbmdIOXAzZ203MjFHTzlLc1RSQ3BRRjVRR00zRnVxRU5C?=
 =?utf-8?B?UFBZWFQyS1dGZ1J2cENBMTV6WU1FY1VKejlPZ2hFY2pwZVdYR2tUR0ErUm4v?=
 =?utf-8?B?bW5NbnB3RStBZ2Q5L1pJZURPNzdKbytEME1NM3NITFJOMmpNZjhQamdvNWxt?=
 =?utf-8?B?TUFRNTFmTHlCUWtRc21ocUUwYXMwRjdQWG82OEFlOEhwVVZhbUVmZWRBdEFu?=
 =?utf-8?B?Rmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 81fba280-761d-475b-02eb-08ddf4eaf885
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2025 06:33:39.2079 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DmjSfvkdswdvwzPTnzSd9TGfhAPNIrLw/kEiuOqh/9lxcsfm6/O1ZNpj4xFS6t6364qhcgkJgOUj1EntOI8M0fLtUyc1ZW//mVBI+zp96Ss=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5823
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

Due to the nature of round_up(), its first argument is
decremented by one. drm_suballoc_hole_soffset() may return 0,
which is then passed to round_up() and may wrap around.
Remedy that by adding a guard against that value.

Fixes: 849ee8a2f0df ("drm/suballoc: Extract amdgpu_sa.c as generic suballocation helper")
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: <stable@vger.kernel.org> # v6.4+
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/drm_suballoc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_suballoc.c b/drivers/gpu/drm/drm_suballoc.c
index 879ea33dbbc4..7f01e9d9fcfd 100644
--- a/drivers/gpu/drm/drm_suballoc.c
+++ b/drivers/gpu/drm/drm_suballoc.c
@@ -165,11 +165,13 @@ static bool drm_suballoc_try_alloc(struct drm_suballoc_manager *sa_manager,
 				   struct drm_suballoc *sa,
 				   size_t size, size_t align)
 {
-	size_t soffset, eoffset, wasted;
+	size_t soffset, eoffset, wasted = 0;
 
 	soffset = drm_suballoc_hole_soffset(sa_manager);
 	eoffset = drm_suballoc_hole_eoffset(sa_manager);
-	wasted = round_up(soffset, align) - soffset;
+
+	if (soffset)
+		wasted = round_up(soffset, align) - soffset;
 
 	if ((eoffset - soffset) >= (size + wasted)) {
 		soffset += wasted;
-- 
2.34.1


-- 
Best Regards,
Krzysztof
