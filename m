Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5D3A32F2B
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 20:03:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F108610E969;
	Wed, 12 Feb 2025 19:03:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nIsUdhCi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5097510E968;
 Wed, 12 Feb 2025 19:03:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739387000; x=1770923000;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=uy5UDSQb6HaJdw2jWlZl8pG5gXybM6ee1jZJZbULH9I=;
 b=nIsUdhCi/xQHESATNI0zTNaofo6BTRdu4ew7rJjElWxfU5dt7bEV2v4f
 hhoLZeNkFExX/6FrnY9X/+8F6ueqTvqHiifJBWuBRN+a4TvxE+VU0uBWr
 2ddwycV5SnshH0W716oxx/NLZgwRaL6YN18vCowSDRQDO0IV8CLVrkyu6
 IDGyfU7ZbalM9QMW3djgvUu1n2+9a4r05p0VXs7ZHOpidW29nbjcJ9Z4/
 wyJaLCCV+izCOWPcneiuaw6BGIqQesyS1GwX/43txR3XUgE5QDzz2d22r
 16xeGmDa40N3CTFGusUTnrVZYI403pWMEY341fj9Utl7B/BZjHXup5PDR A==;
X-CSE-ConnectionGUID: kP2T6iNJTSq4PndxdGb4CQ==
X-CSE-MsgGUID: 1F+tXsg2RZyKyaFEV0+YrQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11343"; a="62530004"
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="62530004"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2025 11:03:19 -0800
X-CSE-ConnectionGUID: bHpsRCjvRq6yqU7uDkxSfg==
X-CSE-MsgGUID: 2JLVrzwRTpyNxSuJ7tukDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,280,1732608000"; d="scan'208";a="143752817"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Feb 2025 11:03:19 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 12 Feb 2025 11:03:17 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 12 Feb 2025 11:03:17 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 12 Feb 2025 11:03:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Xnkkt7GUbFI4tSqy/HNW+isfIEz9eOe3NqL5qDru3g21QVDouhO7T3UxcDh/ZiIFELBa6fogJx856ZF3hCgK8tuA/E0phUC7QGR7OddSqJGSZ5x5mDwXIVO6s24T+C8vCKYb+S5uYkdqCnlJ9H4n8eXbQmgGlmKjdNpaxz7D061Sb97kwU2RABcbffw6NB4T65bLy38zUZ8NDy0vovEMV4rBxybmQx/DAjRFeqTwNy3tFw+T+ZBmBTdTH8VEWor8faWdJ0cYjVvQXL8rueG1nCNoeptCTqJvYp0oEOt8HFXEUSD3fqkhHUQzlosYq6j4B8hKQcdBHj78CrO0X4y7Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cZWMKU2Hr3/mc31P+2ygAULqT5IEdFICQa8kFWCIg5w=;
 b=RFZdpcXjTWNrcmua+bw82OQoJbh863ae+K/bs7ZfikNyERRGZsGJV5e76DRa92jJd/xBcFzot3s1tWqeztc9cES+HfW6YpHWp5OGxrYF+8/8XeUOnD12GQQwd12XtCPaKMjs0DItHyrSLfz4KYjjUf9DBIJDGLmpScMkNTeUWzWwswxG2Zd4ukb5tbIkGKL1G7OyobMY/pIdhqLfmF0wbOs9SDCZnLIrDugQzDVANGbE3r9TX0XarA3mesEJL6HOQv20jQhjdiw+LSGz5VaVWfZ6wZiftUa7GHkhEeZpaAd2/MJlLQDoFBCm++f/rfVW9llwxkgYWaBwpEeDaXIJZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by IA1PR11MB8247.namprd11.prod.outlook.com (2603:10b6:208:449::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.19; Wed, 12 Feb
 2025 19:02:59 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%7]) with mapi id 15.20.8445.008; Wed, 12 Feb 2025
 19:02:59 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z6zuv5ZIQrut0Uf5@intel.com>
References: <20250212174333.371681-1-gustavo.sousa@intel.com>
 <20250212174333.371681-2-gustavo.sousa@intel.com>
 <Z6zf00kDlmteGiIq@intel.com>
 <173938316839.145254.11637419535806568600@intel.com>
 <173938586622.145254.18264992862975057866@intel.com>
 <Z6zuv5ZIQrut0Uf5@intel.com>
Subject: Re: [PATCH v2 1/2] drm/i915/display: Use explicit cast in
 POWER_DOMAIN_*() macros
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 12 Feb 2025 16:02:54 -0300
Message-ID: <173938697457.145254.3093234949869121471@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0260.namprd04.prod.outlook.com
 (2603:10b6:303:88::25) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|IA1PR11MB8247:EE_
X-MS-Office365-Filtering-Correlation-Id: af55077b-5d31-477e-7489-08dd4b97dd96
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Rk9qTEJmeFd4V2hSUlV2OENtYnZFRDI3MGFsSjZnYTRSVlFadzF2RTlIR3Mv?=
 =?utf-8?B?UnY5SUl1S01ldWhsZG1FaGxsZDBwYUo0MSszc3pCS2NHZWJ3d3liUWZqVTd3?=
 =?utf-8?B?V1hrNkgzMkFTNndmSFBjcjZKRmZOUWJuQWdBZERYWnczSHpWRUE2bzdVdDhZ?=
 =?utf-8?B?MXRaYnVqQ2FodTRBZkZYeU9CelhWdE5ZTmp1cFJsSVQvWHhKSGdPcDF1cnF0?=
 =?utf-8?B?TjhOTDN4d21NZWFhdm4xRkxPd2E3SWZ1R0NwMUxGNG5sR1I5K0w3WWpPZitU?=
 =?utf-8?B?bHZYWm4yM1c5UDI3TGhMNUo3bVRDa2c4eFZRNlNvamJ1U25DcnZaOFhBWXhq?=
 =?utf-8?B?T05pZE1GSVpTVjZIUHBrVUpNK2RrSUxRN1RiOVVHdXBWWndQMHAwOVk4OW90?=
 =?utf-8?B?Y29DckUvL0h1UXdSN3poN1FFaHI1d2hZY25oY3RnZU5HcU5tZGxrenNQVm8y?=
 =?utf-8?B?NVhKUFkwOGtrWXdLM1pNUENsOEhmamJ3YjBRbDkrNDdOdmIzMkFWMlFNNUhF?=
 =?utf-8?B?dWM4QkxocFRPOXVmQmxRcDJCR0FrZFIxVjZFYmFwOVBGMTJMWmUyNjJLeHVx?=
 =?utf-8?B?ZVRBUmowZFM2a3UwM1ZHNW43a1pQSU9jUEZCM1NROE5OeHhrTDNHblZ3SjZj?=
 =?utf-8?B?Z09ocm9IUVA4TVRsQVRzZTNpSlo1R2lOcVN4M1hVWE9pNVcyQ2lld3d0UGUy?=
 =?utf-8?B?WngrVHRXNm9JTm8wMlcrcitHOEhXUnFiSjVtcGhONkpwLzNMQnoyWkdzRFRD?=
 =?utf-8?B?R3cxYWc1OHlWUG5vRGxqY3JTT1lxckpQMmhOSEFpWlBidDk4VkFFbXpzNCt4?=
 =?utf-8?B?Y1F3MDZ3dnh3cGpXTkxiZ29Pd2hyT0t4S25HemZBcnh4Slp2UGVEWFhXZUQ5?=
 =?utf-8?B?bnNqRG1ha0NqSHRzMXphUHRGc3g5R2tnNDgwYnJYb2IvMUxBUHNqbjQ1R3Fz?=
 =?utf-8?B?VXZxSG8vQWlpck9VMFJiNVpLN3d1WUJpNURacmZaRCtYL3JQNkhjUEl4T05L?=
 =?utf-8?B?NXp5K1dRZHIyd1h4QXlURndYRlF2T1JQQXR4VzhmMUtld3dWWlZhcGU4a0Va?=
 =?utf-8?B?bEl4VHJ3bkVGMTIzUzl3VnVBa2J1MjhpbnpsQS9DRkd2YnIrV21BVVhWeEFp?=
 =?utf-8?B?YXY5dzRpSG5rK3VSTzk4L0txT0FJK1V5NGlrVGdhVnNwT0owMUZQN3VucnpV?=
 =?utf-8?B?em1SZTQvallKNUM4VlpBcUo0TWF5TTFLNGQ4MVlnSUZDVUt1Sms2cTgwTXR6?=
 =?utf-8?B?SHVXQjdJNjNkVVgyK0hVSkV4ejF3VVdzWkZpK25tNUc3OWpjUkZ5WWN5a3BV?=
 =?utf-8?B?KzdNN20wQ2pMdGtPUEYwakxobDB3MEIyclNvbS8ySTE2S1V5YlIxTWp1c0Nv?=
 =?utf-8?B?VW4wYWNyVVlhaVBtdWFXSkpiOXJWTUlORGc3b3AwRlFQMW84Ri9oY3lMeE5m?=
 =?utf-8?B?em1TanR2aElYTXVNNUlDZC9waGs2QW5GQmJSbnp3SEdxdDZFMk5sNWw5SlV0?=
 =?utf-8?B?TTQrSzdwMzN1bWVVeDdYTStqNzZ4TmZ3NjhwWmJZdWhpWXlZck9sSWI3cWY4?=
 =?utf-8?B?U3pMdUYrRVA4Ti9TYkFWcW5HWUNMTWZDMkNSSHZScWJHYTh1NUozdnpqRTNy?=
 =?utf-8?B?Q0dudkRMb1crMXlPUkUzWWVlM1k1Qm4rRzByRHRsakl5Y25Vd3R5aWtBdWt2?=
 =?utf-8?B?di9JYmZ6L3RablNmU0lsUExvZi9GTDQyQUdKWSthVDhtT3J3Y2tERE1qR2JE?=
 =?utf-8?B?QzYxVGZQVCtqejZGRklxQ21zMFhSOEZMZ1ZFZEkyb0duZXN6TzNTcWJIaFFy?=
 =?utf-8?B?ZzRrUklYNjdSUUJUdVk1MWtHaUYreUNmOWJBdUVBVmExOXg4dVZhRUZFUkVu?=
 =?utf-8?Q?GaAXjXnDYdkoG?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ekV4L1A0S3hSZVRIR2hHTTgzaGNHNndaLzZqOGRxOWFBR0pHcDlqeFlQdHE2?=
 =?utf-8?B?WTJhUmV3QkJ1bmhhVVdDSS9kaE5yOHI3VG16QXFleUFDWVVXUTBMN0paT2Ew?=
 =?utf-8?B?L3poL3R3NERIL2NIZHZNWnlSbXdKOHVwaW54MnZMZjYwd0ZjZXFMN2MwTUJI?=
 =?utf-8?B?NGQyZGZyazJJSVVXMGcyRlduMVNRcmU3akJKY0dJZ1ErbzJrbW9wZnNYeXhB?=
 =?utf-8?B?WjBud0JxR1NiVkR0N2xWUTh0NlFrcVB5TjJ4MEU0dWhpdHRoQXFNcU1tQzNy?=
 =?utf-8?B?L0VhWG1BNW5QZlU0Q1BnVFZpeDRva21oUlNSSnhGQVRRS1J2WjNZcFNoRE5V?=
 =?utf-8?B?ci9JamxmUVZhQUQ4QkRTNzJkaHJFOWZhYm5HZTEyRmxFOS9Rb0RIQ0lqRUlK?=
 =?utf-8?B?cC80NTdySW1FQ3p3ay9hWGtUQlBRaTQ5bDhIVTQvdHRmdFJNcDllMDJPeGpt?=
 =?utf-8?B?eHBERkVWbkRjYWNFZnZlZjlKamxWWDJEUHFLWFNEVzBSTWd4ZFA3eFRNR21K?=
 =?utf-8?B?S25zMHkxZllLa0t4NFlKYWlkSFVsZDl4aEVpT1NkYTNYcUpwVGFKZGorSGJE?=
 =?utf-8?B?SW9nbzZGSXlzMTU2dEIzMjlZSHl6TUdZTGh5aXhJVHpRdkFpL3NSOVVpTlRq?=
 =?utf-8?B?VDVkZTZWelByREw1MU9TQjF0RUJkZDNQTFRQTjMvdFFzbmNKUUpMajV6UnRI?=
 =?utf-8?B?M3RyMlFEZDh2a0xNbjIxbEgzZ3FsQWRFNk5jU3MweXgxNktXVWhLMENXVk1V?=
 =?utf-8?B?WUlETkpFclFOYURSUnIxMXVPUUtKdXZCME5XelIyK25OWjVwTis3K0lmWFA5?=
 =?utf-8?B?c1FSNk8vWXA1NkxoWXdIYm0wR0lEem54MVlPamtQcVZmQzBiY0lSY2hWOEFE?=
 =?utf-8?B?VmRURkxlOHl1eTVYb1R5c3Vtdml0LzN2SGlhUFlHWUtmZmxsVlp0TnRKbkdV?=
 =?utf-8?B?R3phemt4alJuYjNTU2FWcGlDS2FYRkwxVDdjOTI0bm1tcW9iZWcwQzN4cmU3?=
 =?utf-8?B?MTlqaHJKSWpYcDBlYjloNGlNQVRsbWtlWFdnRUhIT056VVJTbmxkY3U0ek4v?=
 =?utf-8?B?OGpZNTNSVEhXRFF1TW16K3lUMjlrVUdLQW5NeCtBZ1R2MlNkUkY5K3lmNFky?=
 =?utf-8?B?bWFWQ0UydFdsNHdrZDZyTUl1d2hFY21wbTFTL0YxTVVPeWRPTjRxejJUN0ZC?=
 =?utf-8?B?OG9YLzdLQXBIZnVUeHYvM2lGU0sxdVJOMk9iZkRoQU9ReTRvNVg2T0xGRmFF?=
 =?utf-8?B?endGK1ltc0Q0dzdPM1dyVWtIb00zZ042NmJEUDJzRTg0QTdCZFBuQmh2UHFr?=
 =?utf-8?B?RGhmb2ZZUmI5TkZwakdsRVczak1wb0d0NktDMXcxc0xKZXRqb2liUEFMSGpw?=
 =?utf-8?B?aXpITmU1Q1krVGxwSEE5S29GTG5EdWVSa3lUSVlhUmJJbjBwblYrVGFoejB6?=
 =?utf-8?B?R0xGWHVidDhuSWJKOHE5aEVaL0ZDU0ZmWWhMSlc4clZUczJRbGpkTjg0bXlk?=
 =?utf-8?B?QW5GRUhVbENGeEhab1JiRnFKRk5vN2FHMFJHditjVFd4ZFRWNzI5cHlVZWt3?=
 =?utf-8?B?dHpFRDUxL2JsKy93SWRWdklDeE1Yc0tOa3c2cHpGUU5DSWk5MmFSbURSSFZD?=
 =?utf-8?B?RGl2VyttN0ZoSG9SZC80K3o5MXFHZmY4K0tpUWNCQTRYaEoyMklScjN0WHBK?=
 =?utf-8?B?cENNMjNkVXpqSVFMbGFiNGNaR0V6TkJUc0gweDljb3A1cy8xMm9jandnY29k?=
 =?utf-8?B?b0lSVC93Q282aTdHT0J1VFhJRmxTWTN6c3BwZWo2MFEzTFJhWGx1eGswYm5h?=
 =?utf-8?B?YVFoek14L1BmZVJrQWhQbm1rM1dGakMrNGVNcUVYbGkxNXc3Um82UVpobU1T?=
 =?utf-8?B?aHplL2pkeTJ6M0dwSUZBVUFQYSs2OWZWS0Y0dStMV2lqWEJtd1UxNWxDTGFy?=
 =?utf-8?B?VUQvSzAyTVVtMzJjY2ZpQk1CdXc3TVpNZzJxaHZybHRMdVdQaDJ1SzlaMEZM?=
 =?utf-8?B?Kzd6WHp1b0hGSEMzYzFNYmMzMUhkcVZ2OVlReXJCTXg5bTU0djgrRVh2WWZw?=
 =?utf-8?B?NXNtOC8wLzhsKzhoSVNySktxVUtWK2VVVjZ1R2lGaWhXRDRnTDlvS0VhQzNH?=
 =?utf-8?B?UGpITHVyT1E2N1d5enNuL0ZsNXJ4M01xL2VyS282VDNxOUJ6Vnp0djkwQnZY?=
 =?utf-8?B?c1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: af55077b-5d31-477e-7489-08dd4b97dd96
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Feb 2025 19:02:58.9794 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VNdsOLJKMw0K1B6buzususYdO6UOLVOUoVT8UiYrLePTuaoSyRvNATreqBSLTZbkhwb+x0iSDc7sHNG49O8hZg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8247
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-02-12 15:55:59-03:00)
>On Wed, Feb 12, 2025 at 03:44:26PM -0300, Gustavo Sousa wrote:
>> Quoting Gustavo Sousa (2025-02-12 14:59:28-03:00)
>> >Quoting Ville Syrj=C3=A4l=C3=A4 (2025-02-12 14:52:19-03:00)
>> >>On Wed, Feb 12, 2025 at 02:43:16PM -0300, Gustavo Sousa wrote:
>> >>> Let the compiler know that we are intetionally using a different enu=
m
>> >>> type to perform arithmetic with enum intel_display_power_domain in t=
he
>> >>> POWER_DOMAIN_*(). Do that by explicitly casting the macro argument t=
o
>> >>> int.
>> >>>=20
>> >>> Reported-by: kernel test robot <lkp@intel.com>
>> >>> Closes: https://lore.kernel.org/oe-kbuild-all/202502120809.XfmcqkBD-=
lkp@intel.com/
>> >>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> >>> ---
>> >>>  drivers/gpu/drm/i915/display/intel_display_power.h | 6 +++---
>> >>>  1 file changed, 3 insertions(+), 3 deletions(-)
>> >>>=20
>> >>> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/dr=
ivers/gpu/drm/i915/display/intel_display_power.h
>> >>> index a3a5c1be8bab..3caa3f517a32 100644
>> >>> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>> >>> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>> >>> @@ -117,12 +117,12 @@ enum intel_display_power_domain {
>> >>>          POWER_DOMAIN_INVALID =3D POWER_DOMAIN_NUM,
>> >>>  };
>> >>> =20
>> >>> -#define POWER_DOMAIN_PIPE(pipe) ((pipe) + POWER_DOMAIN_PIPE_A)
>> >>> +#define POWER_DOMAIN_PIPE(pipe) ((int)(pipe) + POWER_DOMAIN_PIPE_A)
>> >>>  #define POWER_DOMAIN_PIPE_PANEL_FITTER(pipe) \
>> >>> -                ((pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
>> >>> +                ((int)(pipe) + POWER_DOMAIN_PIPE_PANEL_FITTER_A)
>> >>>  #define POWER_DOMAIN_TRANSCODER(tran) \
>> >>>          ((tran) =3D=3D TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP=
 : \
>> >>> -         (tran) + POWER_DOMAIN_TRANSCODER_A)
>> >>> +         (int)(tran) + POWER_DOMAIN_TRANSCODER_A)
>> >>
>> >>I've generally gone for the=20
>> >>POWER_DOMAIN_TRANSCODER_A + (tran) - TRANSCODER_A
>> >>form for such things, to also make sure it works
>> >>even if TRANSCODER_A isn't 0 anymore.
>> >>Does that avoid the warning as well?
>> >
>> >Hm... That's a good idea; and I think it might avoid the warning indeed
>> >(maybe we would need parentheses around (tran) - TRANSCODER_A).
>>=20
>> I did a quick test and this also took care of removing the clang warning
>> in my environment:
>>=20
>>   diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/driv=
ers/gpu/drm/i915/display/intel_display_power.h
>>   index e354051e8982..d46b35dbe018 100644
>>   --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>>   +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>>   @@ -123,7 +123,7 @@ enum intel_display_power_domain {
>>           ((enum intel_display_power_domain)((int)(pipe) + POWER_DOMAIN_=
PIPE_PANEL_FITTER_A))
>>    #define POWER_DOMAIN_TRANSCODER(tran) \
>>           ((tran) =3D=3D TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP : =
\
>>   -        (enum intel_display_power_domain)((int)(tran) + POWER_DOMAIN_=
TRANSCODER_A))
>>   +        (enum intel_display_power_domain)(POWER_DOMAIN_TRANSCODER_A +=
 ((tran) - TRANSCODER_A)))
>>   =20
>>    struct intel_power_domain_mask {
>>           DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
>>=20
>> The parentheses around (tran) - TRANSCODER_A were indeed necessary,
>> probably for the compiler to see that as an int expression.
>>=20
>> We can get rid of the parentheses if we do (tran) - TRANSCODER_A before
>> adding POWER_DOMAIN_TRANSCODER_A:
>>=20
>>   diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/driv=
ers/gpu/drm/i915/display/intel_display_power.h
>>   index e354051e8982..b15eb4fd5062 100644
>>   --- a/drivers/gpu/drm/i915/display/intel_display_power.h
>>   +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
>>   @@ -123,7 +123,7 @@ enum intel_display_power_domain {
>>            ((enum intel_display_power_domain)((int)(pipe) + POWER_DOMAIN=
_PIPE_PANEL_FITTER_A))
>>    #define POWER_DOMAIN_TRANSCODER(tran) \
>>            ((tran) =3D=3D TRANSCODER_EDP ? POWER_DOMAIN_TRANSCODER_EDP :=
 \
>>   -         (enum intel_display_power_domain)((int)(tran) + POWER_DOMAIN=
_TRANSCODER_A))
>>   +         (enum intel_display_power_domain)((tran) - TRANSCODER_A + PO=
WER_DOMAIN_TRANSCODER_A))
>
>Looks reasoanble enough to me. Do we still need the final cast?

The final cast is just an extra thing (actually done in patch #2) to
have the result of the macro to be seen as an enum
intel_display_power_domain from the outside. Nothing really required,
just something to make its usage a bit more type safe.

If we went with implementing those macros as functions, their return
type as enum intel_display_power_domain would basically have the same
effect, I think.

--
Gustavo Sousa

>
>>   =20
>>    struct intel_power_domain_mask {
>>            DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
>>=20
>> I'm tending more toward the second alternative.
>>=20
>> --
>> Gustavo Sousa
>>=20
>> >
>> >>
>> >>Maybe these should even be functions rather than macros?
>> >
>> >Yeah. I actually considered this possibility, but went with the macros
>> >to keep the change simple.
>> >
>> >If that's welcome, I could go ahead with turning those macros into
>> >static inline functions.
>> >
>> >--
>> >Gustavo Sousa
>> >
>> >>
>> >>> =20
>> >>>  struct intel_power_domain_mask {
>> >>>          DECLARE_BITMAP(bits, POWER_DOMAIN_NUM);
>> >>> --=20
>> >>> 2.48.1
>> >>
>> >>--=20
>> >>Ville Syrj=C3=A4l=C3=A4
>> >>Intel
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
