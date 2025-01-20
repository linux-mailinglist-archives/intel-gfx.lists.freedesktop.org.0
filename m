Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C4DA16D40
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 14:17:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B3FB410E409;
	Mon, 20 Jan 2025 13:17:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N8mqtUC2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 095CA10E40B
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 13:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737379045; x=1768915045;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=uBi4yK8sA38iVPUmDN9rihweejFm9yVktwvSvv+GQr4=;
 b=N8mqtUC2T6rEuNe6p0Qd9ZeEN+GK6KsEpsDbneSyWc2FqBa+KCg8HNqz
 LqX75YOFb51RBVef5x/AenOp94Icb5ZkE9eKi1L3OP2jQ7DClXGPa574+
 OJynchJJW2gy6P6itKS88532PWSW/0rwj4QjN+f1s2REChOgYS/JChEnh
 ElbOvxpOS8PqAGm/7cqrp1gvKzNgOG0NjVLaCOKGT4hUMZahkPtkKi8yf
 jmgbB+hmblO+6+iBO4qn1QkMcAxBI/LJjYpE1mwEbdPOL8vNLOV7aBu/Z
 8qPemX2PN/UkySX5TeoL+bhF7bMPcjRC3n0oD697PCsTqiRgJR2NmloCA g==;
X-CSE-ConnectionGUID: edqDvL9bTfOpn8WWKOJM8g==
X-CSE-MsgGUID: zYEW9pUrTm6R70wc7yuAXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="37681915"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="37681915"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 05:17:25 -0800
X-CSE-ConnectionGUID: ZajZMj5RRcKKkfLar0LsFg==
X-CSE-MsgGUID: kOnxDqkkQ0uHFxQpGoIllg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="111506168"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jan 2025 05:17:25 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 20 Jan 2025 05:17:24 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 20 Jan 2025 05:17:24 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 20 Jan 2025 05:17:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=alcS+vHcLulX2Dcnzn8w+SNGu62pu4XalH9tWYALJ4yP2m3045gSEtQFzgjYlzcSBzkDil8QXXCuPfI++kRuuRFlIAteDAiDLL9xD8VOUG+j0k0aqjqdAhaHgddMBI5+E6VHQh5zhw+nD6M/1Mqs56eAxcQJk8OZdPazIjhojy9DfL8FIPekl5dhZ39SS8wsXrBNPdZtSSyvlAMUr/2xkvUbOzd1X13Jl6U3knEzbr1KLaCjhq2lLJdJCNRNDTHDttnqk1BaznOCdJ5wHd6whup2MDzBXn6r8l5CSzjVkbEy7mwwvtELmHm/kN2qrNYFPyjo9lAIM8um7SS+XQ+V+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=IJ2t4/YdQ39IajU0rfBDZS4XCM//PlAo3W00NtYXIlk=;
 b=pS+IOM6UpOhlCTi58axSRRBw8FQXNhJGgvCpx1qbrAEak+PzLTGpSeVEh6AmtUev7qIwVtHWjc6/ALO5UGKRla0QyQNDoy5MZPMahxg+YUKh2oJCEjE9sIrTh39MmzAt2AJ8lPb5yNriT4BVtMvWfzKE6YQg5zTAHHdKFvR3pklss2ayHc/nMycZvlNCIcsV/5R8ZrwEFddf0mYYrVFunGhlHQ7UFYbqYiw909t+lbHIG+ohRcUuHYpcjjmZ43ZspcozjSm7zTnOvLui9B+MsrlYri8WI9tSC9tlnvZRpfyibEM5wGykL18Eg14Izlo7BCfvRJFhjjjJathd09m14A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.21; Mon, 20 Jan
 2025 13:17:21 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%3]) with mapi id 15.20.8356.020; Mon, 20 Jan 2025
 13:17:21 +0000
Date: Mon, 20 Jan 2025 14:17:16 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <andi.shyti@intel.com>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v4 6/8] drm/i915/soc: fix typos in i915/soc files
Message-ID: <45uqptfxaxgz5pq5dmxuabnhgrrns7ibp2jmzmlri6557thowg@k2i6efkvstt5>
References: <20250120081517.3237326-1-nitin.r.gote@intel.com>
 <20250120081517.3237326-7-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250120081517.3237326-7-nitin.r.gote@intel.com>
X-ClientProxiedBy: MI0P293CA0001.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:44::16) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|CO1PR11MB5105:EE_
X-MS-Office365-Filtering-Correlation-Id: 3cd1a171-3b0d-4ef8-1ee2-08dd3954c5eb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WmJHWk9qbTJMWmw5RVBjVlRFNXdCTk1rRWZHYWdydWczOEF0eGNqdFZIeHdG?=
 =?utf-8?B?djNHU3FleGVkZzErU1poRmpxVnE2ZlkvZm9LUVZUQWF1Wkd6QXJjVTFEOUNh?=
 =?utf-8?B?eWk2M2NUeGo3TVFBOEVraEVjbDNxYy9GMU5Gb3VjUWN5M245SWs3aGlNa0g1?=
 =?utf-8?B?VlhZL2pXMmJIWUNMZFNod1RuV3g2ejkzbXJCbGtNTlNkb25rZWVXdTZaR3Zn?=
 =?utf-8?B?Ylo4NVhNd1pJcURydDB5OWZ5dk5UZXdoeVFka0FaRlkwejhTdktpTHZQd2Rx?=
 =?utf-8?B?L3NHVTBKeUFDU1I1RVVPVERYQTVhZ25LM2RWYjR1c0hWcytKWUVlbDM5SHBj?=
 =?utf-8?B?VHBOZGxmaGFwTFdmN09HRUhybUZ2ek8vOXNQajJLbEdDUUZaODQ4K20vTkhi?=
 =?utf-8?B?Vmp2WlNDeXFEMFZyQmVvb0xuMFFCdDFzWXhONlhHOVRrdG9PakhtMi9DaVlN?=
 =?utf-8?B?NFdNaUhuZDI1L2pJQWM3V1hUd0F3S2h0SXh1Y3VYSTRMTUJHck1Rdlp0Y1p0?=
 =?utf-8?B?d1hyTElSVzRCTlZneE5aTHpUWU0zMmtmODlaY1A1clZYaW5oNlVseUx4dVBC?=
 =?utf-8?B?b2pwYzhBWXYyeXZyNFErTUgyZHVkM1V3YlQxeUZPYUgxSnBvRXZPZ3NZcHpI?=
 =?utf-8?B?cUdaTGF6WkplNTlMYzNULzF0d1FIT0pTZTh4aHBkbWFMZFNTSlk3RUZWWWFN?=
 =?utf-8?B?elNrdWh0MllDQzI2NFZKcE1Gc2xWYit5TUN4WVhBMGR0VDFsWlM0bUoxNDAz?=
 =?utf-8?B?SGFaU0o4bHp1ZWdXSm4yaHBad1pNcUtoNERYV0xncUpaNkFUYWw2RHhRVm9k?=
 =?utf-8?B?MEhVdHJYWG92N3JBSTU4Qk9vZU1hRWZKV1BEUUZsOU9yMUZPTVVZNWk5SnMw?=
 =?utf-8?B?N0ZXNVhGSjRVR2VkTTFkOHRyOW8zb253ZERFL3Nrc2dRK2lYQzZXY2IwczEw?=
 =?utf-8?B?R2VGckdmbW40SzhIQjhjVzZXQWlWcnkvQ3RxamRrWHhpZ3hzMHZzbm9MU2pW?=
 =?utf-8?B?dEpWajc1VG5wSnFjSVFpV1RPckVNejFHY0V0YzN1TlgzY0FBbGpyVDRaR2ls?=
 =?utf-8?B?RktKUXkzM0ZydVBKek9LOW1paTNBSkVTaFdSWXBqQmIvZ25Za1NXK3BySDAz?=
 =?utf-8?B?T290U3YvckVNb3p2RWlpVEFialFQU0k4MkxtVVhUZHYwalNWTExxbjZvVDJK?=
 =?utf-8?B?VEhLeTlmZ1pTMjZlejFuZ1RSSTBHcHhqOEpnaEFxUmZVc2pHWk15TlhkNmdK?=
 =?utf-8?B?OVlXMTQyYWxQSTZpSlpYcWhaeGxKOE9DeGJsdThJY210ZWhFelVkSHZVcHN1?=
 =?utf-8?B?T2MyWTUrM3dMOFZIdHJZajIwMldYTDRzZTZTWGdvNlc3K1lEVWFMT2FyVXVY?=
 =?utf-8?B?MTdPMGhFaW9BR1VIYlBPczBZY1AvZ2E1Rk45Q0RhY1BHREtQbDRqUmppYnFX?=
 =?utf-8?B?bW1QSlI3VDVXY2xnMmdGTWlKRGxNcUE1TndNcy9oWUVZdDNiVHpGWlFuMk5P?=
 =?utf-8?B?bjQ2NGtrbkY5YTVBcmtSdFJoc2duRldxaE8vbzRTcUlSUFlIRUlpTTJCWjVE?=
 =?utf-8?B?akpidytQMzlkSlBzQzRHMll6c29UYUNXS1Zwd1FjalJUaytWT295U1N4WmRE?=
 =?utf-8?B?blVQYlV4WmE5NFVNMUNTbFN3YlJURnRzdDBaWDNzSm81S0tEWExUTDV1eXZp?=
 =?utf-8?B?M2w0T3RQZm56dXQxSDl4K0NKakI2SENPL0xjUnRrT1BFN2JPNWdYRCtJRngx?=
 =?utf-8?B?NGloOWVzd2h5NHMza1dIOG1SMFh2WDNGU3RXSXczZkEyNGYxNW5OUWw5OStN?=
 =?utf-8?B?UFlkSGRhdGorM2pkZ3NOdDJjZFFiUVVxbXZnZW9TaWIvYnp0OFd3M29BS1Nw?=
 =?utf-8?Q?izHJsJ8c04SnD?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bDhZc3JpcUE5RkVzYkkrVVVNSDI4LytkNXNWMkxBWjVlWUtjNTF2OXB1czZK?=
 =?utf-8?B?QlJSYkZWNktRV2dqNEFhWEtWY3NaemJxdkYxbk85UkJnY201aFdGMmVOTUtF?=
 =?utf-8?B?c2YyOW5CWlVjQXoxOGlNQ1ZmY05FRVA1aml5N0RUTzRIWUM5WjBkeE9ldU5W?=
 =?utf-8?B?cmxUalRzY2tqY1dYVC8wVlRPczA2Ui9GbEVUNGxzNVJBUVdscjQxOFFhd05I?=
 =?utf-8?B?ZThHeWIxZWVpWDRjWC9Jb0diV3BnYUVoSWFRQ09Tc21WVzRsUHNMZE9scXpH?=
 =?utf-8?B?alVXU0NWRGV2aGFYUWlSbWJUR2xyU3NuOWtQSkFWQ3VQL2F5YkszR2Z0b05a?=
 =?utf-8?B?ZmYzNW9HdUR3SFBGOFdLV2QzRHQzdGhnK0hhNXo0STA1RTJoYXdySkZsNitm?=
 =?utf-8?B?Q3M3eWNJNVRTQ00yZ0NPUmNxdDNPRDdXQ2srUFdpZGVtcVhCbGxVRGkvbXBv?=
 =?utf-8?B?RzBRT2VsS2R0MUVub3YxU2tORDlZMGxqV0c1bm81T3dIVlRvRDcvOWxTTHRN?=
 =?utf-8?B?K0k1OE9VbFZDRks0c2VEdm5xY0lZNVA4eStuUXlqOGxwSUY0R3RwN3ZYLzNP?=
 =?utf-8?B?cUQvd3lkT0IyYzVlOG96cDJsbFFPQmVGaEJoNDRUajdrTjA3RzJXb3NsOWxu?=
 =?utf-8?B?RDRZRnpLVjFYT2dpZVBRQ0ZPRXZuY1B1TFNBeE1nNmE4UkxwQ2NlQmg3U0hh?=
 =?utf-8?B?T21jeUFlMnhYb1A5dXV6YUl0UFFTa3NzUkUxUDkrMkJUYXlEZmtWOVNrUE9v?=
 =?utf-8?B?MEgxd1JiWFc2a0RPTkxZeFpCWXo2MXRMdGVGcVgzeWlqakFHSGpvWmphcHhq?=
 =?utf-8?B?SEZ1bFRvTW1PT3oyOGJDb2R5UmMraUgyaXpaL2NnckNFdEJDdk9DNHl0dWp2?=
 =?utf-8?B?ZFhOQkdwY3cvRXRNa3R1ekUvR1JlOGx1bHo2RTlrUEhCMkxMK3p6TE1udHQv?=
 =?utf-8?B?QU9wTnJhbjNnVGVZTEFaYmNPc0dEcmZqd2QwbThqRUdoS0VNdG5lMWNjN0N2?=
 =?utf-8?B?MDduRlA0N0FwWTRUWFZNc05zY1dkdzlMR2hPa3ZDTDBBbThyMktTN216MkxI?=
 =?utf-8?B?M21yYU9rKzU3MGw0aFVKUWtaRUxTaGI0aVpsN1p1MUZIOWNZZzhpVFltdmJy?=
 =?utf-8?B?aUJiSGFwcFltZTlYVUlMYXZReGgydmlxTm1sUGZmclFoM05HNDNseCt4L1lP?=
 =?utf-8?B?bnFwOVpQY2VYUkJEZU0wVXM3OWM1ZFZJZkFnNWloTzdxTEtGdjBjNnJMMG1S?=
 =?utf-8?B?WCtYSWoyOEMyc2o3eG13QXRsOTB2NjBPZlVWa2ZoSElQK1JRcFF1azBZeVEv?=
 =?utf-8?B?d2hxeU8rWDE4NC84ZGpMWkRuNmVKajFvRlJsQ1VjbmNmK2VtQUtSOEFoWFNl?=
 =?utf-8?B?YnI2eFEzZlMyWDIxb2hhemtQME1aZVg5dHpxMFVGUmdqNHN6SzRRU0RENXJO?=
 =?utf-8?B?eFZ0Y0xBZWpjWWpzWVhYMlVnSjFZSC9UR1N2M3N0VG5aM1BGUG9DWjRXajR1?=
 =?utf-8?B?YTNvVEJnUWowYS9lQ2NReWMvdC8wYjZ4YWNJbTRaVCs5NkRNREloR1hteDkw?=
 =?utf-8?B?WmRYYUo5aGpHMG1DQ1dSRGpkTUYzbzUwOWNyUm1NOUozbnA4WUNlK0M0Y1Bs?=
 =?utf-8?B?TnJLQS9QbTJzRmJwSkxZV2R5ekVzaWdNRlNUUmJka0QwMXVvcEg0eVhkQWpE?=
 =?utf-8?B?bHNmbFNIR2hOdFlQZ1Nia29qelA3eE5ZZHN0bjVvbzd1T0NBUFVDZlp3d0d3?=
 =?utf-8?B?ZjN1SkZnbkpoKzRIN3ZINVJRYW9QVnErOGw0Z29RTzdrQ21Mc2VqWENKSjRU?=
 =?utf-8?B?b1VZaDFhUTRoWGpUK0I1eENFZ1lUU3lHdFRRdGwyZ1FaNTBYMVVmYXBWL1ph?=
 =?utf-8?B?bnplbktzclNZMk45UllhTTd4K2NwTjlwMEJLSG1JRWMyaUNXdGRWOXUxZkcx?=
 =?utf-8?B?a2hFcGpqamVaZytYMStxT3p5eXFNTmVPcGxIbElQT2lGMVVKdmJzeW9oYkRk?=
 =?utf-8?B?bldDU0ZxbUtOMk9TdEdGRENuemoxUTRNWVZWNGorR3VlNDI1bEI4TFZ4N01Z?=
 =?utf-8?B?elg3Lzk4eTVwZThxU0J4ZEZtemxXR0didXlaNm95M2wyWWxxajJpRlRFMjBW?=
 =?utf-8?B?aHRJdE9NOGJES1liOFFXSHhudmRjbEpocE5TUDVtOENPRHVCOFRXb2JSQXBQ?=
 =?utf-8?B?amc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cd1a171-3b0d-4ef8-1ee2-08dd3954c5eb
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 13:17:21.7929 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gZ2Lgjf0CQrjQ2Uhlmur3zaF48qL+/mYINbvcXCY2chXoyjqQnHNWMPRbbG18EroByfXYlFYAVj+LdRfHY4VIMs14GFMziuHvTlShgyD14U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5105
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

On 2025-01-20 at 13:45:15 GMT, Nitin Gote wrote:
> Fix all typos in files under drm/i915/soc reported by codespell tool.
> 
> Signed-off-by: Nitin Gote <nitin.r.gote@intel.com>

Reviewed-by: Krzysztof Niemiec <krzysztof.niemiec@intel.com>

Thanks
Krzysztof
