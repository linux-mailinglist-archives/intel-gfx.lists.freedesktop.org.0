Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6IRWN1XXd2mFlwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 22:06:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E998D80B
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Jan 2026 22:06:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7B5C10E03A;
	Mon, 26 Jan 2026 21:06:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CKQxG3M6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45CA710E03A;
 Mon, 26 Jan 2026 21:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769461585; x=1800997585;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ghzg1IZQFoxPWQjmu0IQCJEjo+6/ddcVySPKsUTrx78=;
 b=CKQxG3M6tYbnEAL6yo9o12whLABAZ6KwlMPawgCxN+jDIYqKaNvSCRnl
 7NrKLfw0nNjcv7BDQqgc4WtbJCJlqJma6ir+NJ01ZDaUzxr+Jca2GTjN6
 aa9zyOYXBjIaMiMrarn4NXEfFXqh6D7DKQaU1dYXEIS9TPUoDQMUssRtK
 re85A+CYwFqC4+pcRjQdNVRF6J+X6knqjMgDEMxhzxV1xqnQ2e1G/u/0k
 1rOl/6WN8YZvS+Vp10KMZTKMKhLU4RH5gKtTEGEQPsVmdh8mRYF4mjBTC
 BTb+/Sz+vK1HFvFIMzZG+k2iFIX8Pa/0+xOJGvvpU0rJWeciRwSNHkhIy w==;
X-CSE-ConnectionGUID: XlbZKQSiR8Gli4/FyvmHyw==
X-CSE-MsgGUID: wOIicd/LT8KkLi3VaurehQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="70804634"
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="70804634"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 13:06:25 -0800
X-CSE-ConnectionGUID: 2x3JpV14T3m3ZFKLt7KvoQ==
X-CSE-MsgGUID: JZLQ3kJiTLu/q6E3KrJ4rQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,256,1763452800"; d="scan'208";a="207848630"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jan 2026 13:06:25 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 13:06:23 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 26 Jan 2026 13:06:23 -0800
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.6) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 26 Jan 2026 13:06:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FhAWUpmKTeABVhK6X62UOQDfHIGvvhr2HboXHsSh/GwBkPdNRx2N2+SlwYh0F5NJGdbu8V78g/YiLcnfHjDfROl3NngozgBot/OTzQGI/i11UcBygbD8lfkGHLV/lo6/jX0rM8cbas2HZlecWwYEWVhiVyWSDzf4Ndq1Xz4n9r4N+mh0yW80j9iikwlO2uCRI5cjVkoMP+S5CGRsDDeaFF8ri0e/opCO1wwNXy0EFM1ZS9moWwwkCCaDGjHX7vSGMFAk5nO7ElUS7KM9BWrc1ogABQF4tBz+AAnwH0GW6XDuruAePq6WXZ3UyO1SaJ1U0/nQ5AKfTxPKcJVls3NKyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qe1hDAWHdCkPQZyZV/fBnW7CPlTsvWpbDct6dtjuKFk=;
 b=t+Yb/2/GO+j/NpsrEH4XCXAX2lcIkTA20BoaFGSKYtyxb2H5bd7mE+uZ5jbE/amZbad9mZ/CA31JyIkfsomJzWCcz+wd7RguU5WYlcOda9bt9pFN2tXw9qWW7x8RfrLhe1qsvKabrL2D/0oPqnXRXAPfrQ2I/eZrjtOidtyzXRZEmq1auRU175v7iaYN3tftStj5r6WPGJZyOZYjFPlu06cXqvI7FRr56J8fd0KdgBFByRaP2DbTs5+y9PRfu2FdOKjt2QG0CD4jpItRnhf4t4typQIOXKsaf8m3ZPjN1QkpFG0MD9KeR4XWOIACnZdNNVy7I/10rLW73zzwUxOy6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6011.namprd11.prod.outlook.com (2603:10b6:208:372::6)
 by CO1PR11MB5139.namprd11.prod.outlook.com (2603:10b6:303:95::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Mon, 26 Jan
 2026 21:06:21 +0000
Received: from MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811]) by MN0PR11MB6011.namprd11.prod.outlook.com
 ([fe80::3a69:3aa4:9748:6811%3]) with mapi id 15.20.9542.010; Mon, 26 Jan 2026
 21:06:20 +0000
Message-ID: <caf65166-e6c9-40c5-8a14-2a34dd747e0d@intel.com>
Date: Mon, 26 Jan 2026 22:06:16 +0100
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/5] drm/xe: Move struct xe_ggtt to xe_ggtt.c
To: Maarten Lankhorst <dev@lankhorst.se>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Matthew Brost
 <matthew.brost@intel.com>
References: <20260126104604.988024-1-dev@lankhorst.se>
 <20260126104604.988024-4-dev@lankhorst.se>
Content-Language: en-US
From: Michal Wajdeczko <michal.wajdeczko@intel.com>
In-Reply-To: <20260126104604.988024-4-dev@lankhorst.se>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: VI1PR06CA0218.eurprd06.prod.outlook.com
 (2603:10a6:802:2c::39) To MN0PR11MB6011.namprd11.prod.outlook.com
 (2603:10b6:208:372::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6011:EE_|CO1PR11MB5139:EE_
X-MS-Office365-Filtering-Correlation-Id: 43672421-9c34-406b-6205-08de5d1ec13a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ZlM5SFU4dHREMUZwcEM2UUpPeUoxTXlwN1g4UTEyMTBFVGlNY3cwc0I5aFdt?=
 =?utf-8?B?eE1ycitLNG5jWW1wZXFoMzlkZG9jLzl5THVXSnZsWE9TcGdTSmd1d0ltcFpG?=
 =?utf-8?B?aytrTFo4YTVtZ2lZRVNwQ3FPcnNtZFFVY1dIeXB2UXJUYUdZM0FLNjlBUjZT?=
 =?utf-8?B?OFQvUy9BalZvWWh2eTB2NmZFTkpKeCtNRHZtWm9XNVZkL2NYZ1RrSEFVSmFH?=
 =?utf-8?B?MHZTYWRtaENsdHMyTUVtSVhmRWRHV3pyTGlQQVRoeDROZ0g3SEd2RlloSWNY?=
 =?utf-8?B?YkFzd1oxYi9KSzVTdWNPZ01wRnRoenpwTW5WRFNIWWFtYmVvVHhSclJTWExl?=
 =?utf-8?B?U1ZWZGtaRFBzYkhGcHhCVFZIcWd3U1Jmb1lEUUJSazA0RDhwS2NxWWJUT0JB?=
 =?utf-8?B?cnpDckFwTWM1bFF3VDdqT1NNVXRBcGE1ajhLSFAzcFU5WU1SVFJ2bllUck5V?=
 =?utf-8?B?a2kzRjYybVU4eGRXbHdUZWEwOVQ5elh2SG92emNSRG1KSG9qeTExSG1ZMk9m?=
 =?utf-8?B?RWpxUG9sMFhTSzAvL3NaUk0xOC9pOWYwNGZ2VFlaSVR2MXBTeUx4SldhSTJk?=
 =?utf-8?B?NTI0N0d3ZWlyK0k5aWJpTEV5OExiUjlTK2loQ0oxSVFGQXd3K3VESGdweWJq?=
 =?utf-8?B?WUxRQTVlVSsvZ3FxWlpFc3hucEFwM280bGdXMlNNRVA5SXJES3dZSTFEc0ZI?=
 =?utf-8?B?U0NoQjhhazFjTU5jR2QvSFFSeWhNcUo5ZGN4OXVseXhseCtIWEFFKzlWQW9K?=
 =?utf-8?B?bXREOWhPaFhMOEhYdUoxK0V6blFqeFdmd21uQkNOdVFVOEJsMEFCVUt3TXFj?=
 =?utf-8?B?QlIrUnkrSjRWeDZYZ0VTWjV1Q2d2S2grblFFSU04dkJnUmtWaDFWM3dZZ0RT?=
 =?utf-8?B?RTVuRUo3TFhWNXhZYUFxbEJ0eGIwNmFSNDdsM0h0S3lyN0FiZzBOaU1OYlhH?=
 =?utf-8?B?U0s5cWYwSllWQWpPQ2d1M0xDeDBWUS8zbHhVZVVXclg0YU42MzBXNUhYQzBj?=
 =?utf-8?B?SnJWeVVkWVViYkJIV1A4QUQvNisxZWVUSGg5eEwwOCtPQnI5RSt3RTZpSVNJ?=
 =?utf-8?B?c1AwclhnMGFOdkxoL2ZnZzV0RGwvcnBFTXhzSzdpOVh0SktDTUgwSyt5SEMv?=
 =?utf-8?B?bEtEeUMzODVSNHhKb0lGcHYySkhTL3JBdFR0TFZPMEFCaGN4dkp5Y2J3eVpV?=
 =?utf-8?B?NUIwYkFhelZqZHB0MFB2YWJTcTVLSFZvVGY4RXVGMEVqYkpWRVk2MkVRSng3?=
 =?utf-8?B?a3o1VkVDVllieDBCaUZmZWN2V3dEbi90dnBwbXlmR3FkRmVWU3krbjZyYWpx?=
 =?utf-8?B?UDV5cTlOMGJxbXBGUGJzQ2RpMVowWkVaQ04xZWJPN3lObWxoRVJUbUJZZTRG?=
 =?utf-8?B?ams2ZUR0U21rVzEwRHdzTm1EdGpnU0xyTnF4MWV5UEZkT1VqaW04NitrNjB3?=
 =?utf-8?B?MVVmbStOMjF3NEZXTUd1blRxNGYzbnNuQnNOYTJsODBZTmhaSUxCS1F6Qytp?=
 =?utf-8?B?NG04Z21YbC9VdFVmOXlZTXo0b1NGNk1WS0liODJMUUR2TGJkVDl0RHFhazdU?=
 =?utf-8?B?allRYk5hNE1ZT2t2WDJONFhiVDlUaWZrVThsUUFQL0lYenZzelVsdjI3TmRt?=
 =?utf-8?B?dDU1c3Z0Ti9BNEtNK2JvZC9DaXVEZ3c3M0g3NTRkcTdpUzYvYWVwWXpYbHFx?=
 =?utf-8?B?UnpzM2JCYlB1YVI0allmTUhQMzczTS9FTXBUemh0T1JRRVV4cWU3YzJITTJC?=
 =?utf-8?B?Y1kzZ21BYUgxRnFFbHVQcVlWNW5DT2JuNnNxSkN6ZzE4ak5rUXI4TFVlY3FT?=
 =?utf-8?B?clFlODVPSFJCNldnWFpEbndLVnV5alN1TmFkTG1EMVNRVU54NHA3UzJDeE5y?=
 =?utf-8?B?d1Q4c3B0OXMyZ0FqU2xoOVlEWEFzZDZzbVlUTFpOUGpQSjhOY1JYWCtwUlVD?=
 =?utf-8?B?YWtkWnhvMFFEdWUyRTEvN1YwZXhSaDY0R2dSUGR5cFUzSDVmbGtvT2ttWjBW?=
 =?utf-8?B?RE1rWGhFdHdVbFozTXh3cDluSlg5NXBYWGlyQ0gxZEZJWlk3NElkYWVCQWxn?=
 =?utf-8?B?cnp1aUplZTFadGJobTVDZklXLzlmZXBmbStUTHRZOXhEbmR6cytGYWNqWi9j?=
 =?utf-8?Q?82S0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6011.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cllPVFhLNGY0TmZOaXZ5SEF3cE5jeXhZSUIwcFdnOVI3RFlKOVdxQWQ1cHVD?=
 =?utf-8?B?VFo1WEMxUWxob1ZlWlBmTkRNMGhVeFRub2I3MXc1WnZYNmdkZFM0YytCMXR1?=
 =?utf-8?B?VWtmNEV6RzU2WDZha0hGRndOTzZZUHhpUVhFZGZDNDBSZ3VuM2xVZHZCN25J?=
 =?utf-8?B?eit6WnRxZExZYkgwK1Y1WDVNdWRmL0ZEVjR1MXdrTXZycE9QTk92dkVIbEUv?=
 =?utf-8?B?UjRLS0ZCUFR6UU9XUFdSV3lLU2RIU0tvbUZvQlZoUXdhMmVqRC9XL3g2cFpu?=
 =?utf-8?B?SUdKNHlTMExQRDJmcC9WQ1UrK0hCcVJER1FoZnhKZVBuK092eTNiSWFFVnBP?=
 =?utf-8?B?NHdaUFNtcVl1aFFlU2gyc2tpOHIvazMvWlpEblZvb2g0R0RnOXZ6aEdtdXcw?=
 =?utf-8?B?VWJidjlsNXR2ZGNkbk5tbEN4aGcwUGJDQXBFSXZURTZIdU1hcFcvQjlMai9a?=
 =?utf-8?B?TW0zRkx1cEVsTVlaMmIrTFNjLzh5VloxN05ETDZLdG5LeFBSbDlXVTJlN2Ew?=
 =?utf-8?B?bG1pZjlrLzZPVHJWYkVtemFBKzYzTkJQYXFzeGNVR1lOTGJCV0sxQU9Vc1ZD?=
 =?utf-8?B?WmcvYW00MkVVeENuMGZ1UHAxaHlaNFYwRnprcElqS3BjZFdZbE16NytGNGxR?=
 =?utf-8?B?ZnpidG1zdGhyeHRJYnVIN3ZhZG94ODJGTE11MExXOW5NQlFpUnZ3NjNnam9s?=
 =?utf-8?B?TUgxRzBSL291RkZtczVHRlRacWpnTThRTmg5RFZ5Sjd0Z2hYUjBKNTlkKzBQ?=
 =?utf-8?B?QXRLRk5PL2VlbGk1OTRmb2lReU1hNkQrZjhmQ001Y2ZIc3VxREZqVkxrME1C?=
 =?utf-8?B?dVhlYklTeWZneDByTTZBaWdIak9NcFFyZDlKUEpyT0RyWVNFdEZGMEU5K3NN?=
 =?utf-8?B?RnZodmNWcVl0N2d4REJnVUhsTFNKSWlxbmFEYVgxeTR5QzdUVE5aL1ExWW4y?=
 =?utf-8?B?N3RiUERROXQxWUluSHVpUjNWakhCbGhJREJLZEV1eGVKa0NrbGdyc3FiRUtq?=
 =?utf-8?B?elh3ZFRib1IxTTV0eVd1dmlaakNhVjQ0aFpOQ1ltYzEwRUllN3J6NG0vQXc5?=
 =?utf-8?B?eFljZzM0NXVnUE9xdlBnay82WVNoYlhDaHJJaWwyaDRBTWlhT0xFV2Q3OVkr?=
 =?utf-8?B?andhcGVsbC9LWkwzVjlpa2ZkOUZRYy9CeFRFc0tOV1c2WFRvSExTZndiTHRN?=
 =?utf-8?B?OTY1dUQvTUNsd1VKK2Q2RXlucnNRUW1NWW9RZkJERmxpSE5Nd1I4eVFZUnM3?=
 =?utf-8?B?dlJDYS9PdWdQdHkwNWZIdXRkKzZNZmxJbGNJSitrTjk3UDdoK1BmK3J1OXF6?=
 =?utf-8?B?dE4rb3g0eUJlRkZCTWIxTVNvb2JTdVV0dUpYRG5QZ0tvaFlGODJGNVU2Qko2?=
 =?utf-8?B?VmZUOHFkMXBmeGpFTnhiUnJLQXJ1YVNEcVVJdVNFS0k0NnFRVURIanFOWkZI?=
 =?utf-8?B?MTgxcW1ENEQwWGEyMDNQVEYybkhiWWVrV1FYaVR0RGxUVkdSalNlMHU1aXlz?=
 =?utf-8?B?M2k1K0w0Uzdmd013UW1UUkFyUmFZalhQMGNwd3FGYTlDdmF1ZTVQckNJYUln?=
 =?utf-8?B?SnR5VHF6N2hGMms0RjJ3UkVxQjVZWDIvTGl1My8xb0JoYU4xMFJ3M3psVzJU?=
 =?utf-8?B?bEx5MG44dTNPK3VBVVJXSDN5bGRSQXgyWTF5dmlmbDFSZTFiTFRIcjRmRmtD?=
 =?utf-8?B?VjFVNTA1MWxrUlozeFhVeXI1N3o3T2hTamxUYVJXV0c1YXFDV0xSbkJPc0hh?=
 =?utf-8?B?THlJT2RndEQ4NVZ6Z1IwZ0x5b2RsKzR3N1BuVkpyc21UNE9DejFtczhKME9Q?=
 =?utf-8?B?Y3Rud3Zvb2VUcFdkSEhoUDRpbW1xem9Sck1ueE1ORHZJZGhQMENueUk1cWgz?=
 =?utf-8?B?clNGNTR0WmYrSUwvK3hWVVhJME1hME5hbVR0bExUV3h5eXVUbkRDR0ZWNFho?=
 =?utf-8?B?VHltUWE3NWlkTVVYUytnYXA0TnNEUXZac05QVFNZbFhtUXE3QzFhSE8rR3Nl?=
 =?utf-8?B?eWpGc3BkTS9RSHdaZ2U1MUExNEFrWlRtZlJET1ltWGxRLzU4b05Bakc5eVU4?=
 =?utf-8?B?UnA3TEVuMlNVMmU2VVFEVUtCZ3JRbHVBUVhQSFJmUG55SGRDMVlEWWJUMDRV?=
 =?utf-8?B?VC84NDJPNVEzRXRNdUxxT21DWVVLK2NUMmo0RjhnWFNRV0dzWjZnNS9TdHJS?=
 =?utf-8?B?bjcrQWNEZ3ArUTNLYlNDWlVCbEhVVjRteTNhaGJPcXNpQzZlQnIrbEVaNngw?=
 =?utf-8?B?eE81YWRSd3BXbEtCamlqSWt2NHMxZ2tWQXd3SVpBMDVBbk1OMnM0c0NCSGpK?=
 =?utf-8?B?VEpRaFNpSGRTaU5iM3dLdnMzRU5sZWJKaEluWUZSQ1V6eXloL3NIT3ZwYVBv?=
 =?utf-8?Q?mWsZuLp/X8HC1JxY=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 43672421-9c34-406b-6205-08de5d1ec13a
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6011.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Jan 2026 21:06:20.7707 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SyIQ0BJ9fN8lT3hklI4Xd8bvS0S2AMzvNd9K/fjKTSzquA8ZNEddNYyinHT8aqMHGfaKVzjDNW9qzoLL/MV+PY2rsl255UrPSATEMg6ocIM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5139
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
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid,lankhorst.se:email];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[michal.wajdeczko@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 21E998D80B
X-Rspamd-Action: no action



On 1/26/2026 11:46 AM, Maarten Lankhorst wrote:
> From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> 
> No users left outside of xe_ggtt.c, so we can make the struct private.
> 
> This prevents us from accidentally touching it before init.
> 
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> Reviewed-by: Matthew Brost <matthew.brost@intel.com>
> Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>

still double s-o-b, but code is fine,

Reviewed-by: Michal Wajdeczko <michal.wajdeczko@intel.com>

> ---

...

>  
>  typedef void (*xe_ggtt_set_pte_fn)(struct xe_ggtt *ggtt, u64 addr, u64 pte);
>  typedef void (*xe_ggtt_transform_cb)(struct xe_ggtt *ggtt,
>  				     struct xe_ggtt_node *node,
>  				     u64 pte_flags,
>  				     xe_ggtt_set_pte_fn set_pte, void *arg);

nit: I hope one day we can get rid of these typedefs...


