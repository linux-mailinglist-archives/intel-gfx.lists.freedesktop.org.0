Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF55A45C75
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 12:02:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6C0110E8C0;
	Wed, 26 Feb 2025 11:02:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gpv5nCGx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B92710E8C0
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Feb 2025 11:02:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740567737; x=1772103737;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=n8TzGbMfBEhfjFOC8LOu3tyxVJ8QIAjEHB2yOBvfLqU=;
 b=gpv5nCGxKz56Vma5RmRsaXAcejdrjP8aBl2SslQHQKADegYqg+o1Lx2d
 4XWAFOG0Ndh9Yak+edrev7E3I1CEfHyfGtq/O1VkRz5zpx/hYrvFem+cX
 OcWes5BnFFEcmq96P+j6/yHIgY5ioeR4QpYRWFZCwWXnm+EAclQMxewJ0
 biUfwIaIpuu1gcdRCDl05pk06FeGJ4AAyCbQ941AXoQkzuuvp9A3r+8Cf
 WgeGpgFJ1Uu76XblhCNnSUfB3NkmpEQbZnQjkRSvvmq0Iz+eATn5NNoaV
 mCkOIzQ+5pkQnx0jNbU/VcK6w0/BSdexNU3xmTmG8UKRUTeAuwxGo7t+f g==;
X-CSE-ConnectionGUID: YeSsq0tgQ9aUqGOIbF6ahQ==
X-CSE-MsgGUID: U7/4BSWCRuWEtDqOByYVkw==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="52823943"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="52823943"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 03:02:17 -0800
X-CSE-ConnectionGUID: CLs5UQxGTieEAiJGUbciIg==
X-CSE-MsgGUID: xz0A04EYSgewlaBHiff+zQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,316,1732608000"; d="scan'208";a="116861881"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 03:02:16 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 26 Feb 2025 03:02:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 26 Feb 2025 03:02:15 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 26 Feb 2025 03:02:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aGfAQj70MzY9v4gyHBQRjtSD40XfrhX9f66EwhwcMLlpxTvaBVaLwVO7bV1zp/DDaQGE4dKijsPAk2qNBb0Yw95OmLyZbVlCoK2xmg1wp/DDiFhb8m84an28HxttHoYMrcWdbf8OpgxXUrS2f4yhsAfvO+YnT2FWU6yEMHxB3oglBxoZcRcoBZXDnWP1Jih4O0gtk2VzsPbsW3dpasK7KQSbTL/bHIgQgCcQp9LX1oVNA5Nu+6VdiLnJVfDQkZzNHzhEAn26xVnX2IHgl4vYyZ587bKsjsAjOaDczs8Shmo7dTs3yfdpkL8FwfhgIl7OSrfwicCAl5QjN/J1GISRsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4FAFlQTfiLFuvrYYOUhubUR9xQvbc/IddM45bBenuJI=;
 b=LLUULujTmg7GH2fCUeWXbhgDfg25+8vDyPutdcBFcpZOZndxhph/KzsAI9N7fT596oA4GM5r/wU4vgzuR5krTipaQ6E81UGeC2H4qx1Ee8TyBGtnR9l3/a3S8rQ+4UluOmpalxiYiBJzQ6LdpBwK/J3E2quaSzkvRYBbN/vj+N2Rz/BXUVsBxSiqwmXzqfYnGUrSfIIVfh6FMeEADHjlDtM3CpKyME0HyNf30mOm/ZxXmRTTUroOxttlnJrt1WH1cHZ8aymmdwnQrqe7PAYpq8lPCKLIcXfX6x5rCYvJ5XDfwMqSg5OBzPZ7ZslCEyFLDhIU2u701BbZ5P3jjEZzLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW4PR11MB6761.namprd11.prod.outlook.com (2603:10b6:303:20d::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.20; Wed, 26 Feb
 2025 11:01:51 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%5]) with mapi id 15.20.8466.020; Wed, 26 Feb 2025
 11:01:50 +0000
Date: Wed, 26 Feb 2025 11:01:42 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/gt: Add a delay to let engine resumes correctly
Message-ID: <bh2cljlzc7irzdazrorydkqqky6ayhamytdf3dnia6ji3cy2ag@66uzujnuembu>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20250224063104.308242-1-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250224063104.308242-1-nitin.r.gote@intel.com>
X-ClientProxiedBy: MR1P264CA0165.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:501:55::13) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW4PR11MB6761:EE_
X-MS-Office365-Filtering-Correlation-Id: 1d13b09e-1426-4591-bfaa-08dd5654f86d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q2ptOE1vanlnYXk4Z0l2TGNSVHREandpaTR2RGdmOTJwTXRHOUppdWcyMzA1?=
 =?utf-8?B?c2ZKbktOazdqd0pWeWdTNTBFQ0ViRDZPQ1dVLzRjS1Bad0lPMVVrd1lOdElt?=
 =?utf-8?B?dFVBM2RvbmF2YjhOVjFpc1dsYUVFQ3BmbHdlbXpabW9YREZpbEd2cnJYZlgy?=
 =?utf-8?B?UTVPL2dnSDBZYVBXTUN5ekt5SzNHb3dIVnZEQS9qd0VCV1Fycnd2YzZMakhi?=
 =?utf-8?B?RmhnY29ndkVkSEhMSVczdlZNNmp2QkxaZHZrSzhEZzlvV0M5cE05YXBGTmlB?=
 =?utf-8?B?bGt4cmw4QXJOREtXanl2VEIwSU5FVXo1ZmV3bEVBbVdGOTlMZkQ4cGgrRWdt?=
 =?utf-8?B?YmJWYnNobmxyTC9leU9GK1BSbnArWlV2RnlBY1NBM0FHNUFYRHN6ME9XQTE3?=
 =?utf-8?B?a0R2bGgvU0JTRVpOay9YejdwV0hPWDBVb0RpbTE2SDVTVlpaRjg2NmJ5aXZy?=
 =?utf-8?B?ejdxaWRSZktrVm0yVW1hbk1uYmh4UkNEZzkzSEZkOHhJalBqcnM2dDVad0Jp?=
 =?utf-8?B?Vkc5ZGpRNnBkK3Y1NUEzUGQvZHhGS0VEU2JSOENweExXNGU3UEt1elhSVGtT?=
 =?utf-8?B?akNmUjJIVGVKQ0ErWHpDYXR1UTNEZGZYR09yODJtVGRxbTRQRFp0ZXZiZmwr?=
 =?utf-8?B?REhIKysvZ3RJZmppWFY1WXYzbGpLbGxDemJHcjlEY2JIVi9CTzlpMnhqNEw4?=
 =?utf-8?B?d2s5MW43Zk9tTUtLaWdFa2F3dzkyUTFyc21QL1BPczIyL1NGcTVnVUJrVFVu?=
 =?utf-8?B?bUhGb0xhSFNjSW9IbllWdGhOU2h1UFozWTcwYWIwUncwTmhFUnl0dW5xTU43?=
 =?utf-8?B?bDlMcFVyQ0ZQdVZXdVdZZ3dRaW11V0xub0UxeU1mQllwTEtFTEpUenA0MjhS?=
 =?utf-8?B?dUpWWm1kTUdiZkUwNm5oZ3VHRkxENUhEalZOV2ZxdGRqTE92akZXZXIyK0g1?=
 =?utf-8?B?SzZHSGg0UHZaOWVpTXhvQnRuYWRQTGRBMmFmOVNvVnJYa3drekMzdjQyMU41?=
 =?utf-8?B?azByWWZHaXY3aUJROTl2NmUrVzJLNnNJdHdzVFpqSkFJTkk2WmpuUEtvMVFT?=
 =?utf-8?B?WldiUHFHSXkyUzc2NEJpVnZjU3ljWDQ4T2pDSEFheHdKWEpmNFBYSWNTd05B?=
 =?utf-8?B?cUV1bHdVN0RuSXYrNjVTUW1ZbGJaOTBvdEFoQXZ6MityWWNuaEdhN3BkQ0w4?=
 =?utf-8?B?UFJTTlN6akVUazZGcms1SVhmS0FoYUNpb1pyNVh4K1VhVExYbnp2R2FjbEUr?=
 =?utf-8?B?aTZJWW9GVXNPbTVqL2d0c24zL2Q2enJUbldETDFCcElIVEovWkJ5N20razdn?=
 =?utf-8?B?b0NpQjFaR1dwZzhIL1VxZ29acjhEV2hrWWdRVG5KWXBtZmNxY3JBcTYxNzk1?=
 =?utf-8?B?RGVjQzhMOTQ3ZVVmUjdyaEFEaWswWlk3OUQ2NFlQNkxpc1B1VG1GS0dYbDVN?=
 =?utf-8?B?VTd5VlBTVXdBVmd2VnAyV1VzTllna1Vra0FiR2VnYVhWeGRINTBzck8yOHhl?=
 =?utf-8?B?Zy8xL1lyT3ZaQitIVWhzTTZCUnNpL3VKK2FNK3J4QU5GNWwwWTZ0djVUQWdW?=
 =?utf-8?B?NHpHU3VPOHl2TmFvUWgzTHhSck5zV1J6OEZEZUFkd01SK0s0U3l2MUpTbmk1?=
 =?utf-8?B?YVNUeWtHTVE1MnJadGhMQktRTHB2QlVscExuQ010Z1BPbytBakNXTjVBbWMw?=
 =?utf-8?B?TTFScFZySlcvWGNpcmMwSDNSRjZPN3JCNGFyZnNpcXViSkt4cTJjZ3RSK25m?=
 =?utf-8?B?WjFRMkpzNFpNYm1QbUY5MXU4UFM1Tzdxa1NzamZDOFRuSFBweklxZ3NSelp2?=
 =?utf-8?B?Rm5IcDJOc0huM2FVdnhwdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S0REVGx3aFBaczV5ZG5uRHFzWDh3bG5HMVI2eWNFTGtlTFI5WmFpYzJCQmto?=
 =?utf-8?B?cDl4VS9vd0Z0VHhKUDY3eEU1R1BLY1N3RjZoU3lWUkI2VXZWZk5MS28zeUd0?=
 =?utf-8?B?VkcrM1FsN2k2em1rbk4xVWRhVFl2SGlocU95SkJYdXNiS1prMUFiRjAvVDFR?=
 =?utf-8?B?RzhZekdxVmFqWXF5MWRIL2tNUHo5OGNsMUpyNlBiejQ5WEhpZmJnZmIzZGNz?=
 =?utf-8?B?a3EvSzBlNUZlYWtUeW15OUxLOCtQYjhJOUhnQ05wUk80a2FlYkZ5TFBoRXZG?=
 =?utf-8?B?dWpPazhiQURmUy90NGtxT0NiRXdYdXhMUjYyYklDakNGaHFtZ3pRNHRrZkpJ?=
 =?utf-8?B?cVNrUStuQmlFUG1MZW0vemtVN2FZbnBmYUNvdWROdFVYNlE1WVBsMG42aElu?=
 =?utf-8?B?c0svZkFGb2VCdWxxM01kTmUyR052dGNYUy9pR3hGSnpYNGNnd1dCM21zZkc4?=
 =?utf-8?B?RUFrYWpVV0tBZlJoYmFoakFUYUlJb1g2VWdqWFMxSTNra2UrWjJWNFgyNDF3?=
 =?utf-8?B?ZmJMRlRJemZyM2xYdkdBTTE3UnNGNXkxaXB2bmJGZnpXZ05MS0l2dFFocFd5?=
 =?utf-8?B?SG1BcUxxMjd1MHVIKzVXU0RGZjhXak5CNUN3S01QeVR4MjlxT21lMk1zYWdR?=
 =?utf-8?B?VStvWSsyZ2NWbEMrYVhQeDQ2VUVFV1Avb0pRSkFURGJPUkI1bExjWERnTGVO?=
 =?utf-8?B?RjAvQVV2Q1FXdWtSdG85ai9IcC81VHhycjhEdzd2TFRaUHNoa1JhWEdJZ0Ez?=
 =?utf-8?B?bDZwL1UxbU5Ed2ZjZFBQZHdCS2hFSm9zQmI3ODZTWUVMdlk0czRKeFZDem9Z?=
 =?utf-8?B?NFB3OXJlRzBTaGZRZkpvdTlqNG5VdGdpanNBS3pxUmdDb0w0TnpnQ08zdjZT?=
 =?utf-8?B?ajRUVFNYSExaK3ZsVTJwa3dYS3A0M0dYUVdJUk9idEdaSkphMUlPSVBVY0t4?=
 =?utf-8?B?cllodUIzVWE4cFF1NmpCWGNPRFlWYkM4b0toWkNXcmZpcjFKbkhUTFpCZXNT?=
 =?utf-8?B?NnQzQzJ5M0ZieERPNUVNZjJ5UURaL3orc1h4cW9FTm1FeDVhNVY0Qm1QVXFL?=
 =?utf-8?B?dEplSDRrVDJMNERrUnhWMWt5am9XeVUrRXNFUnJ1cDJWdGxmT29rVWdDN0c1?=
 =?utf-8?B?Z1praFF2WDZncFZVcko5WE1VUUEwM3g3dFp4QWdGajdGKzErSE9yTlRSYnBi?=
 =?utf-8?B?UmVFR3E1aitFZkhSdW5NdVJBcG1zTTlBUXg3WDVrUUhkOGVFUGtEbmZ0WW5t?=
 =?utf-8?B?V3ZidVZCUk55RTI4QmM3WXFMcG5EZnVnN0FWd0s0WkljNlV0TzFoTUEwa3hI?=
 =?utf-8?B?dnhSTk1rNVcwdTNXWk1EaW45MEdPRU40V3R4bjI3OHlxdllYZkZGZGVIQWhl?=
 =?utf-8?B?bGcrNHBhMjZsVitNYUxUdXdEZVZVSW9YVXRBcjRHYUxHQmFic09hUDB4eGNM?=
 =?utf-8?B?T2VnUC9xVDVFUDV6WU9HaFlpSWhrN0NZbG53K3AxTDhPckxEUjh3VXlJWFQ2?=
 =?utf-8?B?bUlwTEQyajVQb0F3RnBvREpmQnAxdnNKazdxZHdxQTNmclgvaFh1eHpjRm5G?=
 =?utf-8?B?VWI1ZlJtRkZKam1lYzBDSnYyUHV1V1VCUEt2ZUVRR1NVV0Jqa2UzcTdBWlJY?=
 =?utf-8?B?czNmU3I1Ty90ajlUS0VBeGY4Q1VWK1ZoUktVNklhbFVhK0hXbTNWbjRiVXQw?=
 =?utf-8?B?cWhydW5aNnJ2d1NJQWlnbmFPQTNHRGVoeG9uMm8xenMvNXBpelJjMjV6cVZp?=
 =?utf-8?B?ZUhDc0tCbG1jaVhkVVlhT1hBdFN6dUhDMlJxRGYzRUIxNnVQVUh6MnZMQ0Rz?=
 =?utf-8?B?aDJyT3l5SWxBVHN1ZUVpaFNySVIyYTl3ZGlYWTdLUDUxRjNpRFpHMU80V2pS?=
 =?utf-8?B?UWphV3Q0UStBTFRjWmV2K0E1c2l1enIvNnloZG8yQmJsd3F0REhMZzVRQ0ZZ?=
 =?utf-8?B?RTRiMWthanBoM0U3dDdDMzF6OFE4RVFyUEdMbXBPQllDSTR0aU5qay9SWlRF?=
 =?utf-8?B?R25uT1NFQzB6YmJJQ0Y0cmZtM0JzWWo4dHdwS3IwNWU3OTNDWnpZZ3UzQkVJ?=
 =?utf-8?B?UUxiV1M3YVhOUFM5cTQ5cE1MU1B1L0hObjBPdjhzSERwbTVpa2dvR0dRRE5U?=
 =?utf-8?B?RmtTZDVidlRzQ3ZsWm5na2ZhTm9UaHFMelcvbC94U010V21VTDJQcktzbjhp?=
 =?utf-8?B?V1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1d13b09e-1426-4591-bfaa-08dd5654f86d
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Feb 2025 11:01:50.8802 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: IaDa3fT4Wy12JHrNvpMDEeHzLW5T/LMTxK0Ds1DUOfUOBAktgN90sNoe9rgHGc9JdFylMoNFwnicHfkRfGDZvkYiIKSlajZ2cEkYvE1Q/hc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6761
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

Hi Nitin,

[...]
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13650
[...]

>  			     ENGINE_READ_FW(engine, RING_START));
> +		/*
> +		 * Sometimes engine head failed to set to zero even after writing into it.
> +		 * Use 20ms delay to let engine resumes from correct RING_HEAD.
> +		 * Experimented different values and determined that 20ms works best
> +		 * based on testing.
> +		 */
> +		mdelay(20);
Since we do not propagate the errors returned from `stop_ring()`
function and the linked issue is not a failure, because the
subtest succeeds, I wonder if we could lower the severity of
this log to a warning.

Regardless of whether you consider my suggestion or not, the
patch looks good to me:

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

Best Regards,
Krzysztof

