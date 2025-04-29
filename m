Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F05A9FEC6
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Apr 2025 03:06:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 309A510E08C;
	Tue, 29 Apr 2025 01:05:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="H11XI7uc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4307C10E08C
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Apr 2025 01:05:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745888756; x=1777424756;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=0lVnE6vNLXUIFj+GOK4sthTHlf5akA9VhXSXXTMQQz0=;
 b=H11XI7ucZDdXsyIY59Ff2tzT8QnfdWuyzHciynkTIwjPADcqQSOnBp8x
 WY1Q21EhNloYSpZf6lLg3avIvb6sBa5x2GGic4/Ipcs6qRL1ikHPPyz1G
 Yc7CHG3UOKqFBYfy5k2UldVOZ9SRrFrTPG5zJM3POdGlviNJPtChpO4GA
 +KUgFJfeJ+SM6u/SAXX/saHadNnvnu/QkpNMjt0qvXa4hy4S9rvAT+XKX
 xBQk2ZPr9yn+eZ3VKS/mkTk01UxgpsGsnYW2Z3+1NLTYxGL3bfC4ilREk
 saVDgFJNII6oB4MrUwb53mPKf7Gvudv6T6f6kFx4YB6Djq4O9jorGhiEj Q==;
X-CSE-ConnectionGUID: ksNQPn2BRu20b8WRcWcZYg==
X-CSE-MsgGUID: s3PT8ZT9SVaQDyGW5JZiRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11417"; a="58868799"
X-IronPort-AV: E=Sophos;i="6.15,247,1739865600"; d="scan'208";a="58868799"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 18:05:55 -0700
X-CSE-ConnectionGUID: 4W1JkLHYSjai88Tv56K3pw==
X-CSE-MsgGUID: D6FzvI+PQAmQYVguv0+LpQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,247,1739865600"; d="scan'208";a="133624791"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 18:05:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 18:05:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 18:05:47 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 18:05:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=tjPhsjr6IFOITLtqHrmSrLqHqDSBQegjbGRQoGx8W8MYtFpwkbO1X1eyPze2y/mnmIkLmW2hZL/oQyi4c3gRCyfo+psduh218oim5xySvtlFwl/sybM3aLhv1Z0uVfxCNKc6mUGy1jWSxJ3AVmUfcZqBNM+syEARgtU61aPIflrgIzxTKmHWDmbXPiS3ksNiqd6HFDgGxKrY8XWL5XLeRD4oLMSPfg3fhE19S2lFYJs9hZUg5wZNDjDQdgKPn2QcVm+PMWeU1s6MEu/Czx2nZ26dE3f+B/mSz9K+rGc27BYIkEWP3zF1A7xraGrGuFKE9ib/qdJzEchJyOYG4D+YOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0lVnE6vNLXUIFj+GOK4sthTHlf5akA9VhXSXXTMQQz0=;
 b=RXn8WUxOrpFAHaBC0ndzlUSSTB6EJTnBEoxdimdTSGKvfIfb8WrzZRl96Q50K0yLiSewXNtaxAb30y7tzsC8KbJWxftxSTnGmlGaUBK5S2JdH4VO1ylLmwXnTK2VanO9eIGn8YPk72VoDp96UozXJrjtTYFvLT/uvUSg7H7LYMekStnwr2OCP3Nd2sbiSAhsa3wzeKuUpZH5P69ZDUeJhIrK+39u94wgqDllO99mcRibyt5IDr0W//0gLAYqj1s/LKBCwpw9wmMl/DsjbEZjW4RywEMn6MTnH6NYA8TczD+mZH3Ev0yZrhTHIGgvv9QBj58zggVdCjvVQVm8kBFqEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA1PR11MB7821.namprd11.prod.outlook.com (2603:10b6:208:3f0::22)
 by PH0PR11MB4856.namprd11.prod.outlook.com (2603:10b6:510:32::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Tue, 29 Apr
 2025 01:05:45 +0000
Received: from IA1PR11MB7821.namprd11.prod.outlook.com
 ([fe80::2ca4:29ad:f305:6fc0]) by IA1PR11MB7821.namprd11.prod.outlook.com
 ([fe80::2ca4:29ad:f305:6fc0%3]) with mapi id 15.20.8678.025; Tue, 29 Apr 2025
 01:05:44 +0000
Message-ID: <a9a1d2a0-fe09-4163-bfb4-1bf2fc140153@intel.com>
Date: Mon, 28 Apr 2025 18:05:41 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/guc: Enable DUAL_QUEUE_WA for newer platforms
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20250418233918.2217759-1-julia.filipchuk@intel.com>
 <87ikmw1rut.fsf@intel.com>
Content-Language: en-US
From: Julia Filipchuk <julia.filipchuk@intel.com>
Organization: Intel
In-Reply-To: <87ikmw1rut.fsf@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR04CA0376.namprd04.prod.outlook.com
 (2603:10b6:303:81::21) To IA1PR11MB7821.namprd11.prod.outlook.com
 (2603:10b6:208:3f0::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB7821:EE_|PH0PR11MB4856:EE_
X-MS-Office365-Filtering-Correlation-Id: c62c805c-7fde-4de5-1c11-08dd86b9f829
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V0dESUxnM1QzSXVsVzlRYk1ocGpXeXJ6VVBCQVJCTUNNQVRLaEI5OU83Yloz?=
 =?utf-8?B?TWdvNTlXbnc3djg2b2NwVEk2Qkg2TU1NNkpoUW52ajVPWDUrbnJrcys5ZXdW?=
 =?utf-8?B?dEQvTVUwN2llVUV2MXp0djdUNlZ2bEZIejJSak00T0pWckZYczlBVFFOUzlQ?=
 =?utf-8?B?WjcxVERqcFlYbjM4L3VUNEVFNXBmOXVONHNXWkNPRnJKbm5zWGlweFdtZlh4?=
 =?utf-8?B?THhacUxwR1hFTGtZRFNjYnpwTUJlazZITXZqcmJsK1FjQXM4cGdWWm5FOFFM?=
 =?utf-8?B?a3UwS3UwZnpPS3kwRzN5OFlERmdnenJhVGl6QnNIWDJ4TlJzUldsczdOR3J4?=
 =?utf-8?B?Y081RmdRTWdHVTZTNytzY3VVd2NyT0FxZHZLSlNoWTNDaWE5VC8wQmE5cVRn?=
 =?utf-8?B?QXdtOVNpNk8vSU8wSXdtMy9OdkNzQzlmemVKUlo2eEd4NnlRRkZaZWEraFVX?=
 =?utf-8?B?MEY2M2p4K1FwdjlHTWl4bXNacGF2elpoY25HUXlHOEFieWh0cWNheU5zbE9t?=
 =?utf-8?B?aVRJZkxzSXZLNW54WUpxbUZCdGM3RHRRQk8vRFZRVUdreXh2ZXkwaGt3SG9D?=
 =?utf-8?B?S1JTUWNOeWFjWGx6emtYL1FibmFWaldERlNoQ0V1T2xOOEFZTWFQWDZORHJz?=
 =?utf-8?B?TjhWWjBvSU44NnBFMTNJNiszeFc1MFg3QTUwNTRBclZla1JLcXp5dVQ0REw5?=
 =?utf-8?B?aFd1bFEvVkpsK1FQc0I1MHRyRHliT1c2VVR2QlQvN0YzWitvQ09BY05UblpL?=
 =?utf-8?B?akxNbm45YVlCeXFMZXo2bmxyVGd4QlBtR0JDeGVTMUpKNVlSc0ZWTVBIRDRx?=
 =?utf-8?B?TzNYeGFpZlpyNlZCM2crLzBnVTdOcXd4TmNTTzhtZVIvc1NvWU53eEkyMStS?=
 =?utf-8?B?UmxiWHdRWkw5ZUYxdGU0RE0zRWN4ek4wY1ljNlB4OW80RlZNU2RsdHBNWW1P?=
 =?utf-8?B?L3hhZm9YUWN2UU83V3NhMllQbU90WXZjeGRLQ29YTGdwaWFZNitzUDZ2KzR5?=
 =?utf-8?B?elMyOUJWK0pPLzNRVkR3MGZEZnJiRmo3WnY1K0s1eERZbC9rOFlWVXJxdFpx?=
 =?utf-8?B?cmRveEd5WFJJNEV3Z1c0VnNnaHlsdzdKcnA2Rm5KRk5KWFdhV1ZaZnZhSXZy?=
 =?utf-8?B?V3daTnJneHBzSXBlSEwyQWdRNzdzcGRkbGNBODZUbFJQYU9hY2RxMzU0RjBI?=
 =?utf-8?B?NGtwUmFJUDB3NzNCamE2dTBDZjlqN0s2Y1haYkJHblZROFlNTGxYTlhkVC92?=
 =?utf-8?B?WnJONUZwcVN6OERnekVmcFRLSkR5SDVHUTV6WTREYkpIKzE2ckI1alFucVdU?=
 =?utf-8?B?a0tQc1JEODA2NHpPY2ZzZkxWZTJvS3dNZ3drQitYWlVhS2t3SDFTWXNwNzF5?=
 =?utf-8?B?ajV4K1FrSzkzbUdqQktkSFZHeGdsczZWMStJRjBsRWpmblJBa3dZSUxYVDY3?=
 =?utf-8?B?RVFQUFNBMWEwTmxlNTJtUVhXTjFoOGt6WnVQNC9Gd2pIdnZGNHNoSEtUQXk3?=
 =?utf-8?B?dG8zbkxwRVQ2NXhMV0hvLzc3eVhmeFQzOW1lWlpzS1lvSEY5cDVISEpjTUZ4?=
 =?utf-8?B?VFVhOHhRaEx1eGh6QnFycmEvNmkvd2R4MnJyV3NSSVRWSDdaRGlkMkJIK21R?=
 =?utf-8?B?cHRDU1NOVW9jb2REaWFOZndvekJ0Q3lqUkxNM3hnWWNMQ3NkU29LOXZVNWVH?=
 =?utf-8?B?SGF4YlVIU0FNQVk3Nyt4Wmp6VWRmUzVodm1yR3M0N0hRaFRGTWpLcDF3cWxG?=
 =?utf-8?B?bi9GcFAvWUY0dWNaczRHSUFnSDZ1ai91aFUrVzJZNm9iSzFoWHRvazRzVlpF?=
 =?utf-8?B?cThsamw5MzJhNldnUTkxaTNWVFA4VGc2VnIxampHSGVuNUNDNFZIUmliemh0?=
 =?utf-8?B?VHJrVktmUTZYZE5vc1M3L1UyY3h5eTRabnJXR0JKY2MveHRmMXlPbGJseTRX?=
 =?utf-8?Q?O/2ULiZXwrA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB7821.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dlIzYVkrNitkOHlPQ3lTUmE1d2VUWHVRd0p2b0h2WlhYZkNTdTh4bTFjcjE2?=
 =?utf-8?B?TzFkMldwNnJFUnBpUHZIYXdQS2tYWTBqT0pRODhBWE4wb0ZJS3RlMHhFZUho?=
 =?utf-8?B?Y2VWdWh6azVMT0gxcTJzMEMzT051aUJzRXFrdVg5bWhUVnBWQzJid0hrYjRC?=
 =?utf-8?B?dWhOWlk1WHdGd29mMDdPblFHRDkwZlp4SVNtTUJadmR5TXB1aEtFUU9kVG5u?=
 =?utf-8?B?WmxjZHZiUkNLcGh1ZWVUMnBKa1FlaWJLVWNmRG5jQTlLMmpEK2tvWE84Ylo3?=
 =?utf-8?B?Q3FwOFdqa3JJbVE5OWZxa0IvQy85MmJoUDNvYWNEN1NSSjZFRzZQUmRuWkJX?=
 =?utf-8?B?bFlFakxvVnIxem9DTm1yTUdDcEJyTmkwT1dXS0hXK2ZQVUFURHVqSC9QN29K?=
 =?utf-8?B?MkZia1ZoTy9VSW1UM2hHZGdQMERlSEhEYzl0VzUyUXBBa1QwRmovaWs4VTVQ?=
 =?utf-8?B?RDZ4RDJIRWxwd0NUOHhNYVVmYXFyell3N0F2TC8xb2ROdytDeW52Ui9rdjZ4?=
 =?utf-8?B?K2FhcHRhMnF3NVhTc0tPUWExaDllcnJsNDBXYTNKRC84ZTU1K082NjZWclU1?=
 =?utf-8?B?VUFFYW9JR0hSbktuS3Q2ZXE0K2Z6YjVSL2xieGEwWWhibEVtT2UyZ1JrWk5z?=
 =?utf-8?B?VnEyQWtVSW1hZm5vcWVabDdzRG5pLytvOGhxWUhNazYwQVVRNmZ3WmlhTDZu?=
 =?utf-8?B?bjhoRFAzNGs2M2I0U2VLRWtlVFp0ZVNsbVNXZUJoSUhmZGh2NjBFTGF4L0xG?=
 =?utf-8?B?NGlPZjNhcDQwSC85U0ZsMFFUVWt6U3NLdVVBMldzb0h4RDFVdzk5amkwbDF4?=
 =?utf-8?B?WkE0R1ZTTzdMZ2tmbVVwQmFmS3A0M29NRCtaK3libmZUZU5uNHBMa1ZMUXVp?=
 =?utf-8?B?bXk4SjhRV0RuRUNFT25hSGlyTUNCMjdrSG90TDhFYzFWWWM5UHdkdE05bTRQ?=
 =?utf-8?B?Z3lNYXVlL2N2RUI0OU1ZaFJES3ZobWlWQXdCNkhSWFpsb1ppOTR0VmhjQzho?=
 =?utf-8?B?WDZGbnBRdVJMRW5KVTZVWlVyeE1LdGVoMHQ3WkVNdVlPM0xkVkRXRENKNGkv?=
 =?utf-8?B?SStpMlJWMC9VM21VRDlmS2s2OUxKOFFWNy9PUXlhMnB0NHVieUY1Wmdzd05l?=
 =?utf-8?B?bjB5T3pudnBTdjZKdi9hRkdOQjEzM3I0RzJVR3ZLYVc4UERGbklOam80cExz?=
 =?utf-8?B?NytFUUtOQXlvandSMUIyUDhYNHlIS3JJc2xlRzFIeEt1SVNhYU11bVdZeVRK?=
 =?utf-8?B?TVBHUFE3WXh4MWdSZ3lZZm85WlNqVWdoN3NVUDdURU1vVXlIZTk4TjdYN1Ur?=
 =?utf-8?B?WjB4V3FPRGF3ajV5N3R6VHlyc0JyTFVRZXp3TXFNTW1tbzliZmRnZlNIOFpu?=
 =?utf-8?B?U3UyWVp5eXdYaXBsYmQwcnc5NFRlTkZSc1N1NGQvRGhpTkhSV2owdHZzYXpT?=
 =?utf-8?B?WHFJU3g0L0pIOXNUdXZoKzFrQTFoelU5aFo5Q0UxMUJDYU5FNmNiL2NHMzdi?=
 =?utf-8?B?alNpOXdVRUtIODZSb094NjhRYkRkbjVsTGg1UExYTjdVSjgvMHJ3TCtlY09R?=
 =?utf-8?B?cHRmZ29kc2h5OTQ2ZFFUS1Y4UHNoMVRTWGFyZmx0YXlzMkJtNHhjUHdpRE14?=
 =?utf-8?B?QTZlbFJ5ZVZZNmhkUU1Ddi9zTE5iTUVjcFdRQXpjbEFjNnlnNTg0U1ZkcWNp?=
 =?utf-8?B?TWozOVRSS0J4UFVMdmhWZ3BMSTVqRmt0NE1nbHlLbGtxdk9Hd0R4MzRwMFRB?=
 =?utf-8?B?MDhwN2FSZ3NDYUpaUWVGdlllUmZMaDB1TjhJV21GSG9xZ21NclhacTFJTmd3?=
 =?utf-8?B?V2hwckdPVm9waTJmVHJmK2liSkVnRUdHVFRGZ0M5Q3V2aVluMnhDb0Q5L2cz?=
 =?utf-8?B?bys0YXdWa21XaXV6ZUpqeUJwTGdtdFNZRC9CYkc2WTg3UmJEWVh0NE9zSkNt?=
 =?utf-8?B?d1BMMFN5RFhmaDNHZDlsdGI1N0pVb2hoSi81OC9XV1dLaVZRUjYvcEpwOHdJ?=
 =?utf-8?B?VFNsY2p2ZzN0RGZOd2pkbDFPamlFR0lyRjRXMVkyTmlYUDRkYklhY2lscTI2?=
 =?utf-8?B?S0I2Ynl4OWpRc0NLVW9NYlJYVjBxMElZczZneWlzcFRCdkpoR1RQN1ZwVzBm?=
 =?utf-8?B?Q1V5Sk9nSnZCRUVjbmhNN0N2OHNLUU04WnJZRVluS1JHQmhUL3ZXTXpkVE1M?=
 =?utf-8?B?Z3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c62c805c-7fde-4de5-1c11-08dd86b9f829
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB7821.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2025 01:05:44.9407 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UAAwAr3GbeRx8I9CQO3EMnZpOwx0/AxgyXTk7c78iUMGd+QKsUddYkZR5yOjHV0GrmwTG4KJsFIQWcOMQj2bebgV8GPnR015hGXQxrXVHTQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4856
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

Appreciate the suggestion.

The additional checks in the IS_GFX_GT_IP_RANGE macro must be for legacy changes
and not needed here.
