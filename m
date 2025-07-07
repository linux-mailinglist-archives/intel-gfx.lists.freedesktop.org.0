Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 205EAAFBAF1
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Jul 2025 20:42:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B056D10E513;
	Mon,  7 Jul 2025 18:42:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CKV+9eix";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA5A910E513
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Jul 2025 18:42:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751913732; x=1783449732;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=NM5hn9csk2bRJRpRqWq+3aJl5grJLWYi7Qu9nBrijPk=;
 b=CKV+9eixhDNygat1HNRL+bA8dOoF/Gy1hg3TD4Av20YuD6vdvmIK9J9N
 n62jVWpdLfkfDMbo+FfOQ0Th4kN4VPx/AenUVN+93SgQrTcfg1VrbdUMX
 3OIOHtiOPPpYgRzJs9TN8XBkAo9cY+PZHCVxIJUehkopBVjrH8yB9Gy23
 ROniYdo/qbTRBjLZXBKu/0HZJ3gfg2VpV+bgK8vgUvkEfbB7ZstFEzj2H
 cp+YpR/LX/DaOlYWrf26+1u07ZxLo5vYz+zpD1mlEcmdO17tO/dIWX/3R
 itxshW+PuZY92tWVDVyO09207qw+SuLyJ6HpT/bLnzN9oF45X0prUXjZR Q==;
X-CSE-ConnectionGUID: QBqR3qXJSKqRidz8C0YnJw==
X-CSE-MsgGUID: EXUbzEJnQf+SAGb/zCaSJw==
X-IronPort-AV: E=McAfee;i="6800,10657,11487"; a="54114883"
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; d="scan'208";a="54114883"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 11:42:12 -0700
X-CSE-ConnectionGUID: ASaQHYszSlaKKNAIdSM27g==
X-CSE-MsgGUID: pRJOXFI6RuqHPbfognFQ6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,295,1744095600"; d="scan'208";a="160938156"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Jul 2025 11:42:11 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 11:42:10 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 7 Jul 2025 11:42:10 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (40.107.212.45)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 7 Jul 2025 11:42:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pELnNCBng2ShVnn+uwB345uG0nlNV6s/JI1puJdef2NGse7GpF2mCI/TXxaPIvNj3ZMU6n4kkGL6KGZFcRVsB1WyrY8KKL0LkE2BaUYXXseyue6yoHmzuaQG0Dm9giD4+Epvo8rHL84M3M0+vfHA3W29t/pw819z3B1uzCkXSK5DQgOaMymT7olMmB1Wwabm0MdJMvfMr8bMWBXkTaNX8O+WeiJCjZjy6hnYONPkZ95dfwRrFDhxXIaSHtYOvIw+IAseTo32tD2T9P4KtcY74NEtE+8IYqKgX+qK2DPHR+Q4tNVrTxnyrxumXqqzuVR+fvvwff9dSQJJ7wbPY3ttvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=r99ydTBNABLuUwYdB5pkumk+GTRO52H377+frwP+XQs=;
 b=zCU6AW1JQw5/ciO9tYzeI+4OTrf/MPZfVzJpEdc69yVhJcWVzn5GE+KmhJ5oCYXjz92gthhrlio5ksLCmvU4BFe8E2DU4KXtG6/OIVzaddF0Fq//1mPZPJQ3E2ZSgFApWG/mcUkp68I6IrqdNQdwhRQJ43mpSbb4JtlIyzSQQgIRxflsuEaHcHE4r5S3I5hrtoydk1/OHONoOsRrCLB/K24ZArSvl8N5U85BkBalXMuNvLH+k0xo4fKZuzg3elXrQn8PLHrX+BVJu/GnfnucXK8XzJU8r17FaNm4ADc9Nti3X6waXAE1HL16N8nu/X6TZh2j8DuAZR3/0w/GDB3WRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by DS0PR11MB7969.namprd11.prod.outlook.com (2603:10b6:8:120::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8901.22; Mon, 7 Jul
 2025 18:42:06 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%5]) with mapi id 15.20.8901.018; Mon, 7 Jul 2025
 18:42:06 +0000
Date: Mon, 7 Jul 2025 11:43:48 -0700
From: Matthew Brost <matthew.brost@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
CC: Jani Nikula <jani.nikula@linux.intel.com>, Aakash Deep Sarkar
 <aakash.deep.sarkar@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <jeevaka.badrappan@intel.com>, Ville =?iso-8859-1?Q?Syrj=E4l=E4?=
 <ville.syrjala@linux.intel.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Jouni =?iso-8859-1?Q?H=F6gander?=
 <jouni.hogander@intel.com>, Alex Deucher <alexander.deucher@amd.com>, "Lucas
 Stach" <l.stach@pengutronix.de>, Rob Clark <robin.clark@oss.qualcomm.com>,
 Thierry Reding <thierry.reding@gmail.com>, Julia Lawall
 <julia.lawall@inria.fr>, Dan Carpenter <dan.carpenter@linaro.org>
Subject: Re: [PATCH] drm/i915/display: Change ret value type from int to long
Message-ID: <aGwVZK4Cj+EGX4fE@lstrano-desk.jf.intel.com>
References: <20250704105600.1937682-1-aakash.deep.sarkar@intel.com>
 <3b85826c1b0b03ba922c4c948d98d24543bcec67@intel.com>
 <e3e14f51-b094-4cf1-afee-642de25d9459@amd.com>
 <aGwN82fPCQdAeMhz@lstrano-desk.jf.intel.com>
 <705afe45-1d5e-4f1a-9349-6b17f95887ba@amd.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <705afe45-1d5e-4f1a-9349-6b17f95887ba@amd.com>
X-ClientProxiedBy: MW2PR16CA0057.namprd16.prod.outlook.com
 (2603:10b6:907:1::34) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|DS0PR11MB7969:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ea60793-7af6-452c-5804-08ddbd85f926
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|7416014|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VS9zeVFHMUhZcU12aDZaWldwalluL2pMNTQ2RXEzdjVpYis4dGVUNmlkbjdq?=
 =?utf-8?B?d1JBUkNNczFDdk91YnAza1FKdlM3R1BWR3RBUlpTbXZwYXF3SXpxcnJkc1po?=
 =?utf-8?B?YUw1M1NJRVZOSk01Y2FwUWU4cGdnTy9hWE9laHVpczFNbE5SbEo5N0hpdHFi?=
 =?utf-8?B?UE9QbUtadlNabkd4Q0Q4bkplZkdRZWg0MWRZZ0JjcVFvVHJEd2hUY0JIdWZ2?=
 =?utf-8?B?Njc0dnlUczdVekw5U0dvaVh4K1hIN0E4THR4NTh0U09EWDVhdzZZbkpUWHVa?=
 =?utf-8?B?eXlmMzdicVdVSXM1Y3ZIL0JUa3NaT25JMkhjYnFRbEdmNmlUNFVCTmtMZVR2?=
 =?utf-8?B?L0J4eEZBamxQSmhuN1VJKzZPK0paUjNXeTFmSkNEdm94Rk5mOFpjRmwydlZt?=
 =?utf-8?B?WVJkZ21wVWdpek1nYVRHamthbHAzVzhUL2Nha0lxWVdBdExsVTlaaDBieXgv?=
 =?utf-8?B?WnNGUEx5REN1U2hNUjNHQmJyNUJwVlRWU2ZneUpvWnNmRmFWMktCMHFpaFcv?=
 =?utf-8?B?ZllVN0RjSHVPUDMwbmwyRXZDcHF6REF4QlBjQ1d1Rm8xQlFXRy9pNVExWWUz?=
 =?utf-8?B?bmJwNEQzd25GTENoWE1tcXd3TFc5dkwvYU12aGlvcmk2S25PajlhR2VLSE9T?=
 =?utf-8?B?TEM4NVlTTEVGTzBYSWp4SHdMUkJJd2xjMDhxbE1rUW1WbGNiZjJ3eUduQUVR?=
 =?utf-8?B?QW85MkIxa01rMlcxUkZuS2JiNU1ZYU5xaUtzczdENGJoRE5CcnRmdkhaRm8z?=
 =?utf-8?B?KzdaRGF5ZmNjTm9DUkNRdndHK0htdEo4NFpTV2tjQVJQWmx6RTNnQU9EQTZJ?=
 =?utf-8?B?dEQ5eHgvRGtJcTVQNmxUMk5oSmMzY0Z4UWVPZTRVVHJSaVNhTnRCa3BCMU1P?=
 =?utf-8?B?U2JTMTVVVXRkWGZmY01VRlFnRTVrK0k3MFNlYy9kdS9WQUlwQ3dIc2h3Z0xI?=
 =?utf-8?B?Q2RpUTcwRTZqei9BaEFmZW9KL0ZQSTdHYkVNWUF3RzVnRy8xUWg4UUtHQXFu?=
 =?utf-8?B?ZGFOSllScWgydWhsQVkwNm4ycUIxT3RnWFYwMURBUlFpc242WktmajlacVNB?=
 =?utf-8?B?cnNVSHlBdkE0bCtDQ2pMeFlQamU5QzI4UHY1SThua3F4MVZPU3IzV3RYMEZO?=
 =?utf-8?B?aFpnZ0NmbHN3R2ZaZmJVQlVXTVZYNVMwdWNaaTMxcmxxU1c2VEdGZ05VeFJW?=
 =?utf-8?B?KzFhOVNwQXpoRWNiTWVrL3Q1SWVRNzBuVXBPVDFUNnJndlJPVzNxL2l6V0U3?=
 =?utf-8?B?enAzWGtoSURaN1BVN3B5OG11cXBQRDIydVR2bytOMWRzcXBzM1RjZEdqbW4w?=
 =?utf-8?B?WUlPdGFsVmMvbk1KYkxONmJtQUJUM0NrdlRMcU1GbGxYT3dCd0lBZ2JEbzVZ?=
 =?utf-8?B?bUdCK3NsZndOZkcxelhtTVVWaFB1MVpQaDRuQU16REkySHZXbk5sRDBuWkJE?=
 =?utf-8?B?dWFCcjBZYkYwSTJVclA1QWgvazZ3cDRLNFZHbXpCV3RxWVZBRGFrSitHSVFy?=
 =?utf-8?B?L2RjUmorOFFhZFd4ZWhnR1FMNGJ1UW5wcnZiQ0dnNVFVQTgrTHBMNGRaQnNL?=
 =?utf-8?B?Q1ZTSHV2c01BblFCOUd1QXU1dGZXOCtBcEtwdC80ODhIcUI5TlNtczBLRmxR?=
 =?utf-8?B?eUt4RTdpbzNKeW11TGJPN3JnS0ZWbk5NdFhJSElsbkN6aXAzNHFQQjNaanpU?=
 =?utf-8?B?emk3Q3p4OTE3OWpMWkdDVFZ4bm1nSXhnQnJEMjR6TGhUdTJvT2FPcmVCYjVi?=
 =?utf-8?B?WU92N0RFMTVZRFdHRnA5ODl0THZ2UVhBWDR3SjdoeUw0ZklpUnRpZURRY2JE?=
 =?utf-8?B?OERRMTUzdWZKdzdXVVVvYTB4bVB6d3FZT1d1MDJYVGh0cG1lWUdIZ2xNZVVT?=
 =?utf-8?B?ZzNnV2QxeFIwQ0EwMTRwLzd3KzFja1JzTDZWVHpTOXJXb0FKSHdJU2I5ZHdP?=
 =?utf-8?Q?kzh0KkkOfBs=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(7416014)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cDJ3WlZtN1pvaHYvU3pwUlZxUTM5N1FSNHJRSVNPdkUzZ2dPUmYrTG1RaVNp?=
 =?utf-8?B?RENuL1IwUHZydGNUdkV1am1YbEVubzcrMGUvekkzaHl6Nk9abFZaK25OQTdP?=
 =?utf-8?B?YzFGbGJ4Tk9mSmg2WUppOEpVRkcrejdnYlBBZXhpWGZyTzhKbk8yeUtXZTBY?=
 =?utf-8?B?Qkp2YWdCM0pLUlVPT1h4endGaGVkV283YjJ3emZlQWtDWnl1TE5KVEFqcU13?=
 =?utf-8?B?dUJibk84NFdMZ0lkS2dkZWVXTGxMSVN2TmdFVDcvYzFiT1I1QkhsWEIxdTd3?=
 =?utf-8?B?OTRWaXo2MER4RnpNSEwrcjltZVZsRmZ2N2wybjUxcG1lUm9Kd0NYVlljVFVp?=
 =?utf-8?B?YUhsQ2UveHR0Y1A5UGp4cDZGbVdnc2J1ZjdkZk5MZkZqUmRUeDBtTzFSSW9J?=
 =?utf-8?B?MUZHcGRBU0xXb1VJbVJWNEw5YkNaNXpQanBLQVFZSlNoTHFGTEhkSm5OL1ZE?=
 =?utf-8?B?Smcyc2MvU3ZwQnoxR21Qa0FjSE91NVNDODBTVld4aERrZXc1L1dGY3dEcjB6?=
 =?utf-8?B?Tzh2UHZmd2JXWC9RenliemhnbUd1QVNHZXZsNjJTblBSeG5QZmtxRm5wVGQ2?=
 =?utf-8?B?MC9WT1ZtQTNDRUVneVFWNTBkOUtpYUw1alJhdHg5S09vMWRDVlNnRUl1YWRH?=
 =?utf-8?B?dUtqM0crdlNYRktaZ1NMZFRhMVZyblI1elpvV0E2ejg1K2ZmZVlEd045SzM0?=
 =?utf-8?B?R3BzMy9Ca2FORkliR2lGdWpLRkpGVGRDUVQwaDY4UTFqbGVVWWVpUVBGNGZ3?=
 =?utf-8?B?d2J0Z2tQMVJOVFlIVXZKblNvMUxoYU5iU2gwTVU0V2FESEdkMUNNTFJrNnky?=
 =?utf-8?B?MFV2eW1UVW53bEVkbjRhMytEd3hJKzhCQlB3QXdIeUhkc2Y4aWpaRlo5Smpm?=
 =?utf-8?B?OVhzaUl6ajFiTEpWdnBEWWVWQlVLMDBJcURXZE1mR3hlWk1VZndieERSdDhM?=
 =?utf-8?B?U1Z5YlNEbitrTHpkYUQ1VngrRUNlWU9jZFE0ZHN2YlN1WkJ5NnJET3hrYkhF?=
 =?utf-8?B?RUdpbUhRZWE4L2FPQ0FqL0doUHNjNHIzeWw2RGJPSlNXVUxraXRzbUdoRGtL?=
 =?utf-8?B?VGtwMDBWdHV1TFdBRk8zWWhVNXR3QmpmZjhLMnp0NjAwblBNd3FhRFNnT0JP?=
 =?utf-8?B?QmhpRTVJbldRMXZ0ckdHbnRjUUhxZmFUZEdSQnduZ3lFdjFoZmMzcXRxUDBE?=
 =?utf-8?B?cUNSUjE0d0tMWHF0TjJvak1pa0RneDR5dEkvMU1FdzRhUzJIeGtlOUhnc0Jr?=
 =?utf-8?B?TTh6OG5wdXkxSUlqZnBWU0tQcUZLNExua3FCSlpjMmZKbi9sUkxLYm5zZTVi?=
 =?utf-8?B?enBwZWUxV0x0RkhQTGs5Y1hzMEtnWk4wb0VPb3NhQ201VUVpU3hJbGFtZDZZ?=
 =?utf-8?B?ek8yY2Q4Q28wSWYycVNyRlhOYmN4YlN2S1JSVjJOSkozTnhKZ0RoVXlUQVh2?=
 =?utf-8?B?bkNPM0UyaUwxYmtib0FHWUl3UDB4MHpzRmc4VlEvSVZ6bHdmUkNzaGlwRTZr?=
 =?utf-8?B?VDBxNTNYdmRhRWlEL2hwVU9mdDU4Z3J3MlFNQitkZGJrOFE3b0RickhsNXly?=
 =?utf-8?B?OGlubVEyZGZVb3l4RnJNeXMwbmhKa3lNRFZoSUNSOGF5YUpCblFDVmRvYmpR?=
 =?utf-8?B?SGV1SjJ6VnNOZnp6dUNiK2V5ekkwKzZPWW5ONjUrTysxSElqREc4ZGJRNGha?=
 =?utf-8?B?Q2FmWGZDLzVzcUU0UWN4NVZ5TEtWSDU2cVI2WEIzaFdWeFMvQklEZkVza0RE?=
 =?utf-8?B?OFRCMCtKNmRieXpRVWZ6ZEdQRk5UNklSODlidTdIbTJyMXNUUEN1SGYzTHgw?=
 =?utf-8?B?ZzFZblp4MFNlSzhCUUFuTlNVaEgveE9lM05tS2pYSlg0dmxNQ1dacnptNXlR?=
 =?utf-8?B?WjZ6eG9wc0pKb2FuOEQ0dVFhalV4cmF0RTA4am5WV2lUajNnUmlleXEzcGg0?=
 =?utf-8?B?d0Y4dHVvRjEvMXdHWmxNcU5jTzdEc296Qyt3RGdVOG10NWxPOEhSMnFGOEJE?=
 =?utf-8?B?NnQ3b2NETWp3RWU2dUdsTmNseEVFUlBWOS9GaUlmTXpWVG9Dc0xEdnh0TG1N?=
 =?utf-8?B?OUZZWHZJRmJtMm1BZTFWbFBlTTk2ajZrMXltaGk3SDluRm1YUEI1dlNPSHRX?=
 =?utf-8?B?TmxDUk9WeDhpQTVIaFgya2VIQmtRK3BDcWUrdkpjN3pXMUd1WjdMZnBhVG9u?=
 =?utf-8?B?RkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ea60793-7af6-452c-5804-08ddbd85f926
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2025 18:42:06.6411 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eguP3Fci93N+6xuwetTIVdEyfNJMq0C1tqqxgOuBtUQ77Wbv1k6ssVtUVciucGcvHMweQOyjzWbapKX/jzu1Xg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7969
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

On Mon, Jul 07, 2025 at 08:30:02PM +0200, Christian König wrote:
> On 07.07.25 20:12, Matthew Brost wrote:
> >>> Then it occurs to me this looks like a common mistake to make. A little
> >>> bit of git grep on dma_fence_wait_timeout() quickly finds multiple
> >>> similar mistakes in drm, at least amdgpu, etnaviv, msm, and tegra. Cc
> >>> some maintainers FYI. This class of bugs could cause issues elsewhere.
> >>
> >> I can only guess but I think all those use cases use a fixed small timeout as well. IIRC amdgpu uses a timeout in the millisecond range.
> >>
> > 
> > Ah, no. A quick grep shows multiple cases in AMDGPU where long +
> > MAX_SCHEDULE_TIMEOUT is used:
> > 
> > - amdgpu_vm_cpu_update
> > - amdgpu_vm_wait_idle
> > - amdgpu_bo_kmap
> > - amdgpu_hmm_invalidate_gfx
> > - amdgpu_gem_wait_idle_ioctl
> > 
> > I'm pretty confused by the pushback here—it's among the most confusing
> > I've ever seen.
> 
> Those cases are perfectly ok. long + MAX_SCHEDULE_TIMEOUT is correct.
> 
> The problem only occurs when you use MAX_SCHEDULE_TIMEOUT and push the return value into an int.
> 

Right.

> > Again, this patch is almost certainly correct. I've made this mistake at
> > least twice myself.
> 
> The problem seems to be that i915 is using a small value, while XE is using MAX_SCHEDULE_TIMEOUT.
> 
> No idea why that difference is, but when you look only at the i915 code it looks unnecessary.
> 

Ah, ok. I try not to look at i915 code in Xe — this is about
MAX_SCHEDULE_TIMEOUT.

I see the confusion now. In general, though, for safety, the variable
receiving the return value of dma_resv_wait_timeout() should be of type
long rather than int, or things can accidentally (and silently) go
sideways. Again this where a static checker or compile options would
help.

Matt

> Regards,
> Christian.
> 
> >>> Let's also Cc Julia and Dan in case they have ideas to improve static
> >>> analysis to catch this class of bugs. Or maybe one exists already, but
> >>> we're just not running them!
> >>
> >> Yeah, agree. A script which checks if the input timeout could be >32bit and the return value is assigned to something <=32bits is probably a really good idea.
> >>
> > 
> > Yes, I agree. -Wstrict-overflow or -Wconversion in GCC would catch this,
> > but enabling them causes the core kernel includes to quickly explode. A
> > static checker would be a good solution here, or we could fix the Linux
> > kernel so it compiles cleanly with these options.
> > 
> > Matt
> > 
> >> Regards,
> >> Christian.
> >>
> >>>
> >>> Finally, for the actual change,
> >>>
> >>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
> >>>
> >>>
> >>>> Signed-off-by: Aakash Deep Sarkar <aakash.deep.sarkar@intel.com>
> >>>> ---
> >>>>  drivers/gpu/drm/i915/display/intel_display.c | 3 ++-
> >>>>  1 file changed, 2 insertions(+), 1 deletion(-)
> >>>>
> >>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> >>>> index 456fc4b04cda..7035c1fc9033 100644
> >>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
> >>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> >>>> @@ -7092,7 +7092,8 @@ static void intel_atomic_commit_fence_wait(struct intel_atomic_state *intel_stat
> >>>>  	struct drm_i915_private *i915 = to_i915(intel_state->base.dev);
> >>>>  	struct drm_plane *plane;
> >>>>  	struct drm_plane_state *new_plane_state;
> >>>> -	int ret, i;
> >>>> +	long ret;
> >>>> +	int i;
> >>>>  
> >>>>  	for_each_new_plane_in_state(&intel_state->base, plane, new_plane_state, i) {
> >>>>  		if (new_plane_state->fence) {
> >>>
> >>
> 
