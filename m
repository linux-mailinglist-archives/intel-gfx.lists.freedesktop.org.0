Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CE62C833DB
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 04:32:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CBF010E131;
	Tue, 25 Nov 2025 03:31:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UZJJT0z4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 563CC10E131;
 Tue, 25 Nov 2025 03:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764041517; x=1795577517;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=tIRelXsW9XxARASW6kZbKXAuv7aKyxoNbDyI6bdXo2M=;
 b=UZJJT0z4PIRdwfMw+d2ClQgrIV5qBxW0eDNTtftd5uHA9L5U1GCefXqL
 1w6zwfs4LUZD6RjZ25ErbW2lJrjjT5eUZ6OANsLuQG5RKwI6tujbh7Vv2
 T3Ymq7qAaezLwKhjEeCwdgISn3faqLGevCM3oYmOrKM54svZmF8jd0IhU
 1YDf6uUshaWYvipG0TJTgI7STBPE+urxigwviUd6umeWhH7ij/qFlNZid
 8Q7Q/xTkkOhKyQY3rK/cSPwCyPTWRNbpBvKqD+0tlU98W33BD2DUIw0RR
 H1Yp3qJM4MZH18AQri5UhYmI6l3IkV3eUI4b3ITB4o+XPaOoAH5Cj+pPm w==;
X-CSE-ConnectionGUID: qmExFQaAQTKOJ9ZmNcuwhg==
X-CSE-MsgGUID: wTJQ4HBAROiUA30eMg22VA==
X-IronPort-AV: E=McAfee;i="6800,10657,11623"; a="68643311"
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="68643311"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 19:31:57 -0800
X-CSE-ConnectionGUID: GrrvweoSSgWu1F30kTbxKg==
X-CSE-MsgGUID: HTneCFrjRLeKkXUb4XWQ/Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,224,1758610800"; d="scan'208";a="192750967"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 19:31:57 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 19:31:56 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 24 Nov 2025 19:31:56 -0800
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.52) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 19:31:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XhD2zhTQtR0gxweN6scm7mV3ykCdRQ3D2YFGaCUawSLlH3Awp2Ii7/zjIb5U6IV2d/el2K4yeXWhqgedRCydILmhXgFOfdBSx1tE7+SL6CPLrzjry3YxkoBZ1l74ucKRXsM7rcsbE41DmO7iwVYUu4cYx23ujMfLX4SM54fuOPVddF+LuTFALJjHzAh8Fw0oHWuasYvYQ9TL451vOGbJlb28P7t9ZZhUKpkyZ8qhkFN/9hqZIja76HhWgh+mOQlc9G8PSdFrqFFg3NYQJVIqvlH/WFuNU9WjgY4N4pYxmxM5Pr7iPodGDgzwd7ZUDA4/IN/04FvTN8lU9P88VueVlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y0BqhuUXyEJCcVGaG3zghAU62h5vPzDE5VP1FtQPgrk=;
 b=gpoGIBLkSRHNxy9b1nYD7U/nBDVLykmDN7pMoNoe+dIAaBB9rJ3ns8hC8iqSx2Y9/m5IhGZMZyk5VuH5Q1weEHvSKw0IdpRSsFGCiU1XsHxfwPdKvse6zXOqcYH49AeUeN2Z4bqpHi9xxuQr3wapbXdR1La8o20qUMegtw5op+fcDxU9A8bnxatRtVkt6cxR6d48GM1h53OicfExIL/K+yTzJhAMzxiIuGKZHRuAqanHXUvgkAe88iQNwCZXcmFdVX2gUzE1lWjq4Jlzwq3yzVYN5yL0RO4EL5sj/178Z+l917Hrt9OhgnhPjW9FJhRVvtBKxP14GVUITuwl6AVnKA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4725.namprd11.prod.outlook.com (2603:10b6:208:263::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Tue, 25 Nov
 2025 03:31:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9343.011; Tue, 25 Nov 2025
 03:31:54 +0000
Message-ID: <ee3592f6-782b-47b3-8082-4a97e96ed734@intel.com>
Date: Tue, 25 Nov 2025 09:01:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Check number of scalers for casf
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20251124084629.3322714-1-nemesa.garg@intel.com>
 <313381a1-6195-4ea5-a25c-0f34d6a57bfb@intel.com> <aSTJIoHSCRuomRFk@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aSTJIoHSCRuomRFk@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0206.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1ab::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4725:EE_
X-MS-Office365-Filtering-Correlation-Id: 33244bf1-f1ea-4de2-ae47-08de2bd32dc9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ODVsSVJSTG0zcFYxTCswVzNXRzFvUzVMWUxEdjF4eUFSbEhBVHM1ZFhiVU9S?=
 =?utf-8?B?Q1J0dlQrRVRlbDh0T2NQRjJQMVpmbkJuY1VDT0thWWdIbEh4MmdDSE5tNnl5?=
 =?utf-8?B?WDFnMHcxd0JpOGYwMmhEZlNZWnpoTEx2N1FTSEpCdzl0YVlDMmJiZzNSVHFl?=
 =?utf-8?B?Y2NCelhsK0dUUkJ6S0NhcVNTYmFjRFBWeXJTdTlFdXpvbDNCL0ZYVmYwQ2Z3?=
 =?utf-8?B?eitYUk01N3M4cHNuNGFxNVFXRTJ0MzM3dWc1MUtCaUM1RzcxbW9lTHh0ZEti?=
 =?utf-8?B?Ky9zNUcwUVdtYUN0T1VjWThId1ZVbFExTExDL0t6ejc0QjBqZkpEdzFjZlNB?=
 =?utf-8?B?d25JSDlhUUZCUU91cm5sUldoSkJ4VGs1TGUyWmZGeEJJcWwrVElKYi8xTkEw?=
 =?utf-8?B?blRjSEFPdk5ubjliWGlNU3k3aWJ5QnNHRjFDRnhxaEJ2eFNnbXFXOS9OV3c4?=
 =?utf-8?B?VUtZUlJGZEFQOWlKOHZ5RzNJVk5pZHc3SlpaTytMNlBGSWRSKzl2ZlY1ZFRF?=
 =?utf-8?B?NFRjdXIyNmkrcC8yZGd2dWV0dEFscmtPenpGbE1xY2J2d1hnb3Q2N25sWXNN?=
 =?utf-8?B?VStGQytaZWl2MEdBc2NISmY2Y2V4aG9tOXVYRUhDVlpPTWN2aGp6eGpLZWdJ?=
 =?utf-8?B?SjFMUFo3NnhvVkNIVDBtM2VteEdzQUhQZDNBSTRUdktHT2JsQ0tmYnlVZ25E?=
 =?utf-8?B?QUcyaCs5V0xNU3l2OGpFakFGUE1vQVdPMzBqTUFUcDJhMUtYZHplTDh2M21o?=
 =?utf-8?B?b29zSEJxUVZ6SFlBQ1dRdllqb0VzV2VuRnJWWWtqcFBWZFJ1R3Q0b1Irait4?=
 =?utf-8?B?UDN6ZWRHS3h6WUF4NFdGYUd5cjJSN0VzQ2thNG5SNWU1bkd5YU9vT0htUWE1?=
 =?utf-8?B?cm4rVFRNRDdEaWIrazNKQStoRndGTE5EaCtzY255bTl5a3NhWGg3NE1XYnlh?=
 =?utf-8?B?M1RWbVJTSW9DdTZOby9wbmdIbjM5b2txTVk1UXYvZk9TOE95QUZra3ptS0VM?=
 =?utf-8?B?dVRtR3lqenZCejN2MGVQbXRIcXVhSlJPK09HZVZuLzR0eVBEWnBudzNwMERh?=
 =?utf-8?B?aEJxY0tBNDJpWWtUTVRJWnloMk9ScVBJcE0vbGFpNnJZUG1Yd2p2V1pOWXJ3?=
 =?utf-8?B?Zm1udXF2MnQ2VjhWUzNLQnNKcjg1VHFwU3dYbzVDSG5jTkpTYktLNUZjcHBY?=
 =?utf-8?B?VkpNSmhHUnZ1N0JxYytLL0VLeGpOd1FKOVhubEd6enluYUt3dlpoUEhIa2dQ?=
 =?utf-8?B?U2RRd0dIbkorT3JTbnRIdmQvY0MrMGpPaFY4Mk5MNXVQTVplUHRBMVQ0RDVI?=
 =?utf-8?B?Zlo1UHl5NzI4VnlJd1hoK1J4d1k5SHBFRGwzc2xJaFRQVks5emJxcklmZ2JF?=
 =?utf-8?B?ZUxtNTRrVFFKcHltK3EvTlRSR1hLKy9tdzkwOEJJdStScXdERitYOEpzMU9u?=
 =?utf-8?B?dWRSS0ZwUGRSVVpzeDUyZGZjRmMvYXduaFZScTZlaFJpYnkyZHptSmxSWVpS?=
 =?utf-8?B?cGNiWmZxUjZhOEhhUSsxL1JhMXlSa1pleHJYaFRXb2ZHR0g5K2FZZjZ3aEsx?=
 =?utf-8?B?a1Yra1dveUk1TkVvbEFsYm9VcUVRcFJPZ05CUzdHaWkzYXpSM0c1M1phdzNB?=
 =?utf-8?B?STFpczlOQUNOVHArYVNua3FaZzFHbjFlc3djZi9vVkNxZ045MWJMMlRJU1RO?=
 =?utf-8?B?OXBaS0FPaStuUC9aV2M3dnFkSTg4THhUOExIaTVCclpQa0I3a3hYQWgvNWZF?=
 =?utf-8?B?eEpTWHh0ZmZLV3NMQUdVQVQ1V29Hb3RMZzI3R0MzV1JYT1JxUkQxTEgwd1lX?=
 =?utf-8?B?aW1zVUR1MysxWjJkWnFKWkFma2FJMEE4VDdOcy9SckJZbUdtaXQwOStXUkNY?=
 =?utf-8?B?V0JtMXZGcUhGcTZockUwajJwYklXMnNJclRuZERCT2x5SDNkUnZVMllSTGxR?=
 =?utf-8?Q?gMB6cvBXVbZRpg3WPJy8oiMobSt/W3LL?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZVdHdmlMcDh5d0V1VzRtbUJnODlqaHhrbVhaS0xSbmxVSnJZMHh6K0NEV0t2?=
 =?utf-8?B?ek1qTTJ2TVFDY2ZrT3VkY1BRUjFZUTFERXdqMVNCMzU2eFpXUVk5Qzh4OWtu?=
 =?utf-8?B?emo1d2tDSnFRVFB3eStIUHBOSkduTmdLMWY1SHBSWjZRVjdiSTY1SzY1b21X?=
 =?utf-8?B?c1ZyamdLYmdIUmFmZFpENHhjem9NZGwxcmxIdVg3MTR5UTgvRHUyVTBNZFZN?=
 =?utf-8?B?dUh2TXhnaGF5TGV0dXBnc3ZMZExnNm5jK2ZiSnVuN1c2aEl3VmgzRjJnNUMr?=
 =?utf-8?B?WVJrdk9HRUFQNUhMYjIwNU1aTWRjbGdSaWN4amRLYkppeUlHanVRVkw0aSsx?=
 =?utf-8?B?Y1F0RDhNdFBuQ0QvekJrNzh1K0pWYnAvb00zbDNhd2prNkc2NG5VWEFBMHFH?=
 =?utf-8?B?bHVaUkRFL0VOVlUvYVdOQnRCTkVWOXhRSnlJYlJsWlpkSVdEVWlFK3BWc2k2?=
 =?utf-8?B?NlRIOExLUGZmYlMzZXo5ZUNoN2lQTGRBNVNDY0JVaXU2QlJkMEF0YU4yMFh5?=
 =?utf-8?B?OGJEbHR0OFNHcFE5RGxTMGNsSFdPRWZFT1J3T0hqSzUxWW9lTGZ4Q2NuNSt1?=
 =?utf-8?B?ejBBQXA1SXhPNDVrV29Gdk9BejRKdC8yRkYybE0yNHJnbFJUd1pSMkJNQ3Fq?=
 =?utf-8?B?UGR5ZElNdTZJU0toM2tLRk9PVEZsck9uMnBiN0VieWlRN09mWjVwZ1l2SDlU?=
 =?utf-8?B?WlNETTFkbG1lY3VYQzlxTWRuTDVDVW9qRlVPTE9qUHBOYndxVXZ6d3dONGxz?=
 =?utf-8?B?NlAyRnZ0L1djZ2FSYlpzSy9ONkk3dHZVQzQvVTd5NnJaczNnZGdZTzI2UkNs?=
 =?utf-8?B?S0Y5b2tKa0t3RUowSkJzaTgySUJwYjlPek1ZQkk2QzZ4N3cvcUF1bjd5cVVv?=
 =?utf-8?B?QVhISjU1RXdVRnQzamx0WUM3NHY2cERGOVJKb2FHQmwzZHltM2pwWkFZUXZa?=
 =?utf-8?B?WXdybnkyMFRqQXBXUHpjRkFJUjRqVk11cytEYzFUQktvaGl2ZUIwS1B4WnhT?=
 =?utf-8?B?U0lzdTNHbE13WmEreVZxa0x5SnpvdjNEa1hJZ29uOEVlQUoydVEvSXRGUEwr?=
 =?utf-8?B?a1lNSzkvMndtZnJ4K1ZVWE9BZUhtNkh6V1k3T3M0Yzl5N1MrVHNuNnJmUzdz?=
 =?utf-8?B?ZDdqOVVpTWFkSmhISktmSitrU3QvV0xib0RMZjFWNGIrY25zdVllZVB6eU1B?=
 =?utf-8?B?YURjT3VrZjlJQjRtOTM4L3ZxelE0ZVNxbXpFUGdpZEU5Um5DK09WalNiQzZt?=
 =?utf-8?B?UmI1cVhvWnJndGwwT0k4c2U0UENnaThLcTRJRk9lOEpSZ1Z2WUkra3hRc0tz?=
 =?utf-8?B?UEZjNGVEeUQ4R3JLaXVYUW5jaG1xRXo2aTVPajRpSzAvRENWYmcrZWNteGt2?=
 =?utf-8?B?T3BWS2NhblBzUjh5SHA4eEM4d0pUQjQxRmVPUUdEVlpDZFVISzQxUE1HalFS?=
 =?utf-8?B?aHJ5MjNEMFVnWDdYL3NWNDhkLzRCUUJrKzlWN0tyYlpBYzB0VUs0YVRIMGxK?=
 =?utf-8?B?Ni9qNHdXdDRnZ2xGQ0NtbVdMQlRSNU1kZ0VaL1JiTmQ0ZlpjeFgzSGlPbUZH?=
 =?utf-8?B?NUpTMGJabm9QMG04T0xYeEhURFQ1TUFnbjRHYXpvZVZCVkZNeEpaV3hic0lp?=
 =?utf-8?B?dm96L0JibDFEOEwxSUFPdnRTV2ZndGhOandEeXJQM2cvdjlDMEh6cktDdXR2?=
 =?utf-8?B?eWhpQTQrYXl4TnZoVGl3ZXQ1eFJvT1V6NE0zWjV2YzJjaTFGUllabGZRYktj?=
 =?utf-8?B?dENtU2F1UnZJTy9SUlFzRkg1d0ZDcDFBQ1dMR1ljVk0rMk9nV2RBM3M0c20w?=
 =?utf-8?B?c2ZDcWtSVWtDLzd6WklhQ01wUEdwblA3RkNrcHlCd3h6RDVxdVNQTVlPOHBu?=
 =?utf-8?B?RVdpMnlLckpYeUVFc29RaW1DRUY0c2NVUitBM2dRTEVVV05USm53RXRsWWx6?=
 =?utf-8?B?NC9CL3pDUEhJOFlLTDJaRTVITzFrVEVKK3JKbG5PQTc0NVZudE9PcGFyZ0dZ?=
 =?utf-8?B?aUU4T1pLOGlHMWdNUDBQRzY1aXhzaWVzWEJNMkR5emZmQXB5SU5iSzFyeVF0?=
 =?utf-8?B?bEJOdWtVMFYzTnBTODhadThieDZhUFBHTFRQQ2NITnAySW41cGZuak01L0Zo?=
 =?utf-8?B?NEVJcWRDYnUrdkU3WmtxUVFUSExXdGpHTW9GNmdpV1NwcWwzS2ZXZ2JoUXgy?=
 =?utf-8?B?Z0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 33244bf1-f1ea-4de2-ae47-08de2bd32dc9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 03:31:54.5609 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P0MXpkaO9zeq4hEFiJylCoxaH8lFb4NNhccTAQYs1R/U91IfQnaAAmHloS1JDcQnmiG6mlnqO051oLV87V9FljWMQ/oA928rAcA4QzurC10=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4725
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


On 11/25/2025 2:37 AM, Ville Syrjälä wrote:
> On Mon, Nov 24, 2025 at 04:39:43PM +0530, Nautiyal, Ankit K wrote:
>> On 11/24/2025 2:16 PM, Nemesa Garg wrote:
>>> Before exposing the property check if the number of scalers
>>> is 2 as casf needs second scaler. If not then dont expose the
>>> property.
>>
>> We are not checking if num_scalers == 2. So the commit message is a bit
>> misleading.
>>
>> Need bit more context:
>>
>> CASF requires the second scaler for sharpness. Skip creating the
>> 'SHARPNESS_STRENGTH' property when num_scalers <= 1.
> Does it really need two scalers always, or just when the first scaler
> is doing actual scaling/etc?

It needs 2nd scaler, the sharpness filter is not there for the 1st scaler.

In platforms where only one scaler per pipe is available, sharpness 
feature cannot work, e.g. HSDES:14018498819.


Regards,

Ankit

>
>> Also, it would be good to align the commit message with this explanation.
>>
>>
>> Regards,
>>
>> Ankit
>>
>>> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_crtc.c | 2 +-
>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
>>> index 153ff4b4b52c..963e6c7d75b8 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_crtc.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_crtc.c
>>> @@ -395,7 +395,7 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
>>>    
>>>    	drm_WARN_ON(display->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
>>>    
>>> -	if (HAS_CASF(display))
>>> +	if (HAS_CASF(display) && crtc->num_scalers > 1)
>>>    		drm_crtc_create_sharpness_strength_property(&crtc->base);
>>>    
>>>    	return 0;
