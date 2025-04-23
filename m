Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 45FFBA97FD1
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 08:53:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0055B89BAC;
	Wed, 23 Apr 2025 06:53:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jX2x0PfP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CEC389BAC;
 Wed, 23 Apr 2025 06:53:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745391190; x=1776927190;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=g5OJwzMA67gtA5TIw0zovjM9p6FoOmcXYQWuLpgPSiw=;
 b=jX2x0PfP9eK36d1AT7ZLqDIs4softnCP96BF/SUSzEfFofL81MNAwh37
 xW1gY+Ec0pZIF4JmoYKAhgCCGLDbsB5Mjk+YOTsn9DukYpq/5vsfWtBNk
 zRhqZ1zccPD9Z5R6VzLAZJibxqI5y2L/QicKDu8BRG6PxVS0oRGdEw7Zr
 tzkIEW20lHgH+1nvwAvwA1QLwlG/HPjW+nFHPaJ6EeALfIjC5SxlYGAXQ
 CPVc6Xea44ZhXBgmk01/BIdMuhSZ/y+cIeJGR+o7/dwHutiAUWgOn4Atc
 sMyBf8Fv+2HaFA6HtelGwlEneqvKJoQyeux5vlsgcitHMCnoHCA0/HP4Z g==;
X-CSE-ConnectionGUID: mOIklvUUQgCsP+5TomXpaw==
X-CSE-MsgGUID: 2KWOxGMoSfWqPS3KmKSjwg==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="34585298"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="34585298"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 23:53:10 -0700
X-CSE-ConnectionGUID: +7UqIvYQQGuzPcBdX5W5TA==
X-CSE-MsgGUID: +qdicx6PSQGj+3zijJAlsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="132157283"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2025 23:53:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 22 Apr 2025 23:53:09 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 22 Apr 2025 23:53:09 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 22 Apr 2025 23:53:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=qWQ2y1ycCmlTRgvi2g3PvsT/dtgT5D8dTWxuKoILp9KOnsyqwf0dZZX5IbWv/hhtY7LyFVaOTh9LDaKYjCLcMT7xkXhulFJLMvSx2e3+HEJmRYaLtytYiPCaZuBfQnrrcydm3F63nyp4efIqDauTMYpMibCQJiANQcRgh/Bw/Lrhb69cDNCWVU6PmrWgNa/oGjs/2hArg/AdJUDQZJkNF+aAOXcWvxj7JWqzWR/f5mB8SCBS5RSs4eD23AsLbxqz4uo6ZHjpm9Nr6Gi5JXjfDi7Ncq0E1xVITerASpul3TP0HQ+UHOA4aAtwTWQhcRhzYx6kPPqO2lefQPYD7uZ/JQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ziXC5LzNcaWSCcPI1qjdptitvU6djGvF2t154HyDyjE=;
 b=mEIJMB1s9AgM/yM1bp2ixWLnkMXDkBtbEMIf44dTvnNLdts66ONV9AxLlaSJO49N2UfXGGjR10klM9Ux+Hvr5mOcDLPz2+rcQp20fY6aSBpQK3NlMWZlflVhR9ayn7nIQVRYYpVjHOkt81KDbW7/P+Cu3aj5YHb0/3YAetZTF8X9+EyzI1/bcFPtgs4Qch3UlLCRclu92ufDLZGZxEG5pwELaTo6oJrxcvqfma0F2F7zdve0CSokRiZGdaea7soB9jWwxn5t2ctsyfZq9zJo6vdQBYx9RwjggqYgeTNzuuXDtYk+E/i5yTZO0D9badTAhjaOmTvN5mvPOJSWAldOyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB6817.namprd11.prod.outlook.com (2603:10b6:930:63::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Wed, 23 Apr
 2025 06:53:06 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 06:53:06 +0000
Message-ID: <126451f1-9e80-473b-87d7-149897a941d1@intel.com>
Date: Wed, 23 Apr 2025 12:22:59 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 02/13] drm/i915/vrr: Add functions to read out
 vmin/vmax stuff
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250421154900.2095202-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250421154900.2095202-3-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0035.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB6817:EE_
X-MS-Office365-Filtering-Correlation-Id: 915c35ee-800b-43a4-eab0-08dd82337f8f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OHBLTjQ2KzYvMmRPK21WSWU2NlpkR2UxYTFESncvcnVEKy9CRDlYRnZldXFJ?=
 =?utf-8?B?NmxVang5ZmRyemo2blhMcXhCemc1aXhVd1RacTRhcDlpbUlXbTE4WGdSTGNv?=
 =?utf-8?B?aERJdnA0aGVKRUgvSG03WnkvQkZUeWtJd1loS21oYXI3ZlVzVUxGUGIxMlBp?=
 =?utf-8?B?bXIyVHZRVk1ubWxxbXJlSkRUcWRER3MzaUxBT09aMUZuMXp4cW1TVncvd0Fz?=
 =?utf-8?B?Vy9VcC9hVmMxOEkxNzQ1RmJxVVM2aVF4SHdXOEpsUXVPMWlMQTh5Umx6OVpm?=
 =?utf-8?B?cnZDTkdXZ3BNcStaUDkwNk50R2ZHQlN0a3NjdXB4bTRjRWNUYll2ZnNKdzhy?=
 =?utf-8?B?eGQ1RnZ4dmRXa3hNKzlxa2hFQ2VOWHNNVUpRYmVjT3R0TG1nN09WSnVUdDhu?=
 =?utf-8?B?VWd2UmplYjRrRlZFNVluaDFsNXlaaUNkQklnbDNWOWFBZzd3U1VkUDlRakdi?=
 =?utf-8?B?SndHMWIwMmNhb3FxMmlyRnNWMnhwUlJwK0NxTlI1RXBSNjdCSGFiblBVK0tq?=
 =?utf-8?B?MEVIckxwb2hvTXFnZGhEbll6ZlF6VldsRUZXb3hFaXpZNzRvQTJEYU40aVVG?=
 =?utf-8?B?cVpYRXJNZXFJZWM3MWgrN3VtTWFhUytIM2NJRjlhazIyeWx3MVc2YlZLeDZy?=
 =?utf-8?B?a0k5VmlaUTVLVEM1Q3ljWDlROURobDNSQXZkbnErdW5TSmtlcFl1VzQrQ0pp?=
 =?utf-8?B?VEh0RXN4MDgxbitnbG1nd3lCVG5rSnhTQkUzNVBJSlN6aGFUV2Q1WEFpbE1i?=
 =?utf-8?B?c3V0VzFicEt4eUlOWFN6SktEblZIcEorejNYQmUxOE1jZUIzVzBIZ2NvQ05G?=
 =?utf-8?B?UXZoL1QrdXMwNXpwbS8xaklKSWd3YTI3Vm1Md0l4aVJTaVJiQUNZdVI3TXlW?=
 =?utf-8?B?MVZmVHFmOFU0RDc5c1hYcnQ5Qy9PK3NVamxjSEV4a2NUVkVEbVBYTDJWai9n?=
 =?utf-8?B?Yk9ybERYMzFqckpFcGNkRkxocCtkakc2NWxEK3ZJek1TSk1IQWdHaVkyVWhv?=
 =?utf-8?B?aXkrS2lHN05kQ2h4d1RQQ25sZ2xDeTB5OWsreDVwa0pscE1pYUphWE1UTWFm?=
 =?utf-8?B?U0RxbmVqV3p3OGZIazlsTkJ0MGxaZEdFTEF6eEJMQVR2c0F3eWRXMDRFZlNj?=
 =?utf-8?B?WTl4eHN1SnRWRmthUEd4TjhveUx6a0gxa2JaTXIrUkdJdnQ5YWN2aDZGR2xU?=
 =?utf-8?B?dlVwTGUwQTZudGE0MTJCeWhMellTNXNQNDVjTmdTajZqWm0xcHhhMmdRK1FT?=
 =?utf-8?B?SDMwTmlxU1RnbWJ5UHJwUzlKNThtaFR2VkFWdkd6eExZeVpvYjRZZlRoSzRh?=
 =?utf-8?B?MitYd3NLdGJuV2JCM2orM2NUYk1VTnlxdGNnK0R3dHBiQTI2cmFRUDBwNy90?=
 =?utf-8?B?eXpwSmVPS2NQQjMwMlFkRFNvR0pubG51dHljOFNudW9sM2xZRk40T2FTSjZx?=
 =?utf-8?B?V3h2b0lvelN6VkpKdkN5S1k4bmNCSFNYZzlRZk1uL0ZpUXk1YU5uNWFJQkZX?=
 =?utf-8?B?UFFmbk8vVGZnZVdweUxTdngvRktsbVJrYlBDaS9ELzIxUVFmYlNVWGNlcWZU?=
 =?utf-8?B?SnFaSjRseG9RSlFpcFNQMFhsNXc3VzNZcnNLUjBpTWVLZmpoYmswYURXZThB?=
 =?utf-8?B?NGNpeisza3p5NEJ0NjlJZ0pOT0hMcy9vcEtuZ3IySUF0ajNQVWFUUVRkYUR2?=
 =?utf-8?B?NlNkYTJpYWQ4b01PaWNzZXNWWi9HN2ZlMHJLRnFVbzZmTEFmNzErTzgrQ3dK?=
 =?utf-8?B?bDZlN29sU3NIZ2Z3eHU3bVh6eXhNQ0ZPTEl0alZFRHpzNUxDMFlrWEtzWU1x?=
 =?utf-8?B?QW5ZYnlxekhSUTI4aDlMM3hzRGVDNlZ0WUJSVklXOXpjV0tzTDFWTjhrb2FT?=
 =?utf-8?B?ejVheE1TTVlpUDZlRFdEekszNTNaTTd2ekpsemtyZ1Zac0hmTVp3bEdqR0dj?=
 =?utf-8?Q?Izad4uMkMX8=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OTd1WFZLUmFKUXBLMWNwV3FtaTR3RlZaSEhRVkxRSi9KeTc4TGlsdTgrOVlX?=
 =?utf-8?B?cXRzcGRiRFJkRlBSeU5TUGNobTQvMVlqNXMvdmUzcVYzVzZaYldaOWhpNEN1?=
 =?utf-8?B?bC9OTm1VbmZoaUIwRWNlWkI3Sk1XbWZKM1JkNTFOOVdMYmE5WmorS2luVWJl?=
 =?utf-8?B?dUI0Sk56T2loa2M2aUFZb0FnRzRtM09zMTVCMW8xQTJGOW5tL1pwZW5oVHJn?=
 =?utf-8?B?cnBnZjczR2JwYUNsbUtvY25WOEZhZHIvaXMvV2ZscVlRL2pURFNlbEUxZUlS?=
 =?utf-8?B?U0dzNnpZRHJGMG1CVHVZSStyS3VVTlB0Q3dicmNvZnpCU2wzellnakowd2ND?=
 =?utf-8?B?ZHVOWUdSY2IwdjJKTThoT3laeEpTUkhPRkJzQW5mb2NhbGtyMm1kU1dXNW91?=
 =?utf-8?B?Ukg0TlF5VW5sQmxPNW1CbmlTNHA1c3VXVVNBMnpzZnJ2Y1ZsOWtpWmgxUGpP?=
 =?utf-8?B?ckQxbEJ1N08rbXNMR1hBQXpOOVgvSHVnQ2dvVEg3Uk90VVRUT3pnOFhHdHMy?=
 =?utf-8?B?U1ZQZkpsNE4xTXRVU0llWTBsSUZqQjhnU21ZcGdjd2VKNnlJWk9IM0JTNmcr?=
 =?utf-8?B?SFAyL2g4YmxzL25Fd2RiZVhrcjkvN0FYS0N5SG0wNDZlVFNmamFuRXlmNWQ5?=
 =?utf-8?B?aWUyY0N5MjlxN2dDOCttQmNpN1o4TFBZOWV4SG9NRHB6cTAxMDgzcE4wMkNs?=
 =?utf-8?B?bDBPNk9JaWlSc05Ed2ZzaVliZFVoZHRQc2JkTmNMRWVlVFNwQ0VtdnVvVk9R?=
 =?utf-8?B?eXM1a2ZaU3NLbXBjOFpVa3pDY3NDbTNiVWNMM2s0dzUxQldvQ2RjZCtmdHFT?=
 =?utf-8?B?dnZnNjNjbGZjbXdodGNMNWVtWGtobnJTN1lZWDZQSGsvRkJEWU1yeVlqOGNl?=
 =?utf-8?B?czVPRjQ0cGt6d2hrMzZ4U0NoWEhIZTdmMVp0WnRMV253N0J6WmVMZFBwU3ZR?=
 =?utf-8?B?YUZmUC9sV2Rzc2RzOGhpZ2ViRnVQbG5URWFsUWxrOTRrWVJCenM1dVozOTNO?=
 =?utf-8?B?UU1BbE9ucXRZN016TFlpYThleVpqOVhPcHpZdEoyb2Z6R0RDQlJtUVhNVUUr?=
 =?utf-8?B?WXYwK2F4TGwyVGloSmRxdnYwVnVWZUVueEgycVBmWEZpWFdhSVRjdXJoWm1Z?=
 =?utf-8?B?RGR5RXF3Q0JmdHNvOURSYUpLYXN1ODdYeDE4L2VmR3Rnai9jbVZFMmpFL1JL?=
 =?utf-8?B?dUNnUHZXTGI4ZjZVZDhiL0M1dHJ4YjdmWHlhd1FYT2NvTDlqMGh0VVBoQXE3?=
 =?utf-8?B?TkEycnA4aHhzN2NoZkQvbzRTaDlXMXBsYW5id1NEVmxYR1dFQ3dzdHRIODlY?=
 =?utf-8?B?R2ZlRXMyakt0cjNBTVdqUzRUejhoN1FydTZUQ3E5Mmg0VnRYcDIwNVVyOHl1?=
 =?utf-8?B?YW81NjYrOFkyTU1TaGJ6UTMwMXhmUzY5QkNkbm5TY0ZOL3c1eDhxWitaN1lQ?=
 =?utf-8?B?YXBGNVNZcWliTVo1Wms2REZpb25pWVJkdkM4czRKTXNVNGRQbHdCZHRaZnN5?=
 =?utf-8?B?WFVqbTRzMVhPbkx1VUIzdzZzbHArVWRjWXlmK1N3NVJadlJHUk4vallSNXJN?=
 =?utf-8?B?Skk1QXFPOTBVYVVaOHFaMTBub3BxTTV2TXhYQlJ6N0NnZVd1WEhxeHZHa21o?=
 =?utf-8?B?UEdFSWdXcHZzWUtpU0RkdTF2akgzOEIxNkVEbTFZWlV2UmtHRWIrVzJoTWNI?=
 =?utf-8?B?emhJQWhxb3UyOVNjZElKdkc0bnQraDI4ZDhNZE9NL3NQMmdvYnYyRWttOXQ0?=
 =?utf-8?B?OEJWc0ZDSS9iODh4eTA2VXRock0rTlRkeTAxZnpMK0ZENnVLZkUzbjc0bkpv?=
 =?utf-8?B?UEUwREtoczROSWZtT3FiWGh5QTZ0c25wQ1V5UjdQNmM4QWMvUUR1STVORWg4?=
 =?utf-8?B?WHd0cjlQTmNab0pRUHpSYldHSXdORm1PTlYxdEpPYW9ycW5CUlhoL1FCUXMw?=
 =?utf-8?B?NURtcVlyT1pQa21IeHFRNHpWT3hoQktTcTAvU0JGd21QeXVoaFBDcTZJdStH?=
 =?utf-8?B?VXhTSzFvNVJCWE1hWVQ0OHFvREl3ZVhTTWxZMUdFTTh4WmRLaE1VWDZBOEdv?=
 =?utf-8?B?OXVKbkJWMGJOMGZ4OWtTcHBnaHhyY0Rtb3Ivd3pPRVZZWVQvbzVKUjl0ZENm?=
 =?utf-8?B?WDBVUEdRYXorb2N1dE5XaU95SkJCTW00TFQxbm0ySGlUZ2tDWnFQb0VLa0Za?=
 =?utf-8?B?clE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 915c35ee-800b-43a4-eab0-08dd82337f8f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 06:53:06.4078 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: exKPCeRFI9JxEehci9DpgwL9cbdA+BYqYxOrhKrJgbTjopVDUpMyrjArfxQqnum1VBOnsxgxUhOX+4DrL3Gd9UveNE/prZqbRvY3Qpgd8Kg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6817
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


On 4/21/2025 9:18 PM, Mitul Golani wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Calculate delayed vblank start position with the help of added
> vmin/vmax stuff for next frame and final computation.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c      | 57 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr.h      |  5 ++
>   drivers/gpu/drm/i915/display/intel_vrr_regs.h | 44 ++++++++++++++
>   3 files changed, 106 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index adfd231eb578..1c0eaa08927b 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -746,3 +746,60 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>   	if (crtc_state->vrr.enable)
>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>   }
> +
> +int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 tmp;
> +
> +	tmp = intel_de_read(display,
> +			    TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(display, cpu_transcoder));
> +
> +	if (REG_FIELD_GET(VRR_DCB_ADJ_FLIPLINE_CNT_MASK, tmp) == 0)
> +		return -1;
> +
> +	return intel_vrr_vblank_start(crtc_state,
> +				      REG_FIELD_GET(VRR_DCB_ADJ_FLIPLINE_MASK, tmp) + 1);
> +}
> +
> +int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 tmp;
> +
> +	tmp = intel_de_read(display,
> +			    TRANS_VRR_DCB_ADJ_VMAX_CFG(display, cpu_transcoder));
> +
> +	if (REG_FIELD_GET(VRR_DCB_ADJ_VMAX_CNT_MASK, tmp) == 0)
> +		return -1;
> +
> +	return intel_vrr_vblank_start(crtc_state,
> +				      REG_FIELD_GET(VRR_DCB_ADJ_VMAX_MASK, tmp) + 1);
> +}
> +
> +int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 tmp;
> +
> +	tmp = intel_de_read(display,
> +			    TRANS_VRR_FLIPLINE_DCB(display, cpu_transcoder));
> +
> +	return intel_vrr_vblank_start(crtc_state,
> +				      REG_FIELD_GET(VRR_FLIPLINE_DCB_MASK, tmp) + 1);
> +}
> +
> +int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 tmp;
> +
> +	tmp = intel_de_read(display, TRANS_VRR_VMAX_DCB(display, cpu_transcoder));
> +
> +	return intel_vrr_vblank_start(crtc_state,
> +				      REG_FIELD_GET(VRR_VMAX_DCB_MASK, tmp) + 1);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 38bf9996b883..e62b8b50aec6 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -42,4 +42,9 @@ void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>   void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
>   bool intel_vrr_always_use_vrr_tg(struct intel_display *display);
>   
> +int intel_vrr_dcb_vmin_vblank_start_next(const struct intel_crtc_state *crtc_state);
> +int intel_vrr_dcb_vmax_vblank_start_next(const struct intel_crtc_state *crtc_state);
> +int intel_vrr_dcb_vmin_vblank_start_final(const struct intel_crtc_state *crtc_state);
> +int intel_vrr_dcb_vmax_vblank_start_final(const struct intel_crtc_state *crtc_state);
> +
>   #endif /* __INTEL_VRR_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> index 6ed0e0dc97e7..2214c10d4084 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> @@ -9,6 +9,50 @@
>   #include "intel_display_reg_defs.h"
>   
>   /* VRR registers */
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A		0x604D4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B		0x614D4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_C		0x624D4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_D		0x634D4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_E		0x6B4D4
For regs for E/F we need to add TRANSCODER_E/F and use _MMIO_TRANS2_ 
with offset of Transocder E.

However, adding these should be fine I guess. Perhaps add offset for F also?


Patch looks good to me though.
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> +#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(dev_priv, trans)	\
> +					_MMIO_TRANS2(dev_priv, \
> +						     trans, \
> +						     _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A)
> +
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A			0x604D8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B			0x614D8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_C			0x624D8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_D			0x634D8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_E			0x6B4D8
> +#define TRANS_VRR_DCB_ADJ_VMAX_CFG(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +								     trans, \
> +								     _TRANS_VRR_DCB_ADJ_VMAX_CFG_A)
> +
> +#define _TRANS_VRR_FLIPLINE_DCB_A		0x60418
> +#define _TRANS_VRR_FLIPLINE_DCB_B		0x61418
> +#define _TRANS_VRR_FLIPLINE_DCB_C		0x62418
> +#define _TRANS_VRR_FLIPLINE_DCB_D		0x63418
> +#define _TRANS_VRR_FLIPLINE_DCB_E		0x6B418
> +#define TRANS_VRR_FLIPLINE_DCB(dev_priv, trans) _MMIO_TRANS2(dev_priv, \
> +							     trans, \
> +							     _TRANS_VRR_FLIPLINE_DCB_A)
> +
> +#define _TRANS_VRR_VMAX_DCB_A			0x60414
> +#define _TRANS_VRR_VMAX_DCB_B			0x61414
> +#define _TRANS_VRR_VMAX_DCB_C			0x62414
> +#define _TRANS_VRR_VMAX_DCB_D			0x63414
> +#define _TRANS_VRR_VMAX_DCB_E			0x6B414
> +#define TRANS_VRR_VMAX_DCB(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +							     trans, \
> +							     _TRANS_VRR_VMAX_DCB_A)
> +
> +#define VRR_DCB_ADJ_FLIPLINE_CNT_MASK		REG_GENMASK(31, 24)
> +#define VRR_DCB_ADJ_FLIPLINE_MASK		REG_GENMASK(19, 0)
> +#define VRR_DCB_ADJ_VMAX_CNT_MASK		REG_GENMASK(31, 24)
> +#define VRR_DCB_ADJ_VMAX_MASK			REG_GENMASK(19, 0)
> +#define VRR_FLIPLINE_DCB_MASK			REG_GENMASK(19, 0)
> +#define VRR_VMAX_DCB_MASK			REG_GENMASK(19, 0)
> +
>   #define _TRANS_VRR_CTL_A			0x60420
>   #define _TRANS_VRR_CTL_B			0x61420
>   #define _TRANS_VRR_CTL_C			0x62420
