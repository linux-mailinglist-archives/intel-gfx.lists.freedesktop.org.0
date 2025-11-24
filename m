Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49735C7FA5A
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Nov 2025 10:31:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 904BB898C4;
	Mon, 24 Nov 2025 09:30:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PHXK5TKI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76A0D10E1F2;
 Mon, 24 Nov 2025 09:30:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763976657; x=1795512657;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=nXx7HOyKQEcimX6+1JH4RQhoyEO9CWuctO0Rm8xdXN8=;
 b=PHXK5TKIVImLT+t6Q+MlhMdD1ay6R49qrBjxCo60S0PMCqRtc7Q8uZwK
 6lEx9Cvp/pPW7bvKaG/dW9o/zjlw52rlP30sVIUcv58zJ1ViQrf5NDbAC
 jg9/8WffLBLGz5wl1pi3tTyupIYg1DWfHAGb+R+jr3Ivl7lHo1MdEEz+T
 Oy0cXtaq+WNHGUKXWtJYi81XnRfOS1jqz6iE2U6RWbhQnX6yd6EF7lI4o
 CLGjcyfU08ZamJbPGF/jEb12znsAhzviwCS7VkI2kDWf+IdEPmSav9Pk1
 YlX/b+J4G9AwZ3MYwBNRZNnwpw/GVXdHRBIlPcC10Uq8vSpPbue5iYeu9 Q==;
X-CSE-ConnectionGUID: CbGI9CEgSLiWtIlxncfBZg==
X-CSE-MsgGUID: ubu5uJGbRZC/wnGEths/1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11622"; a="77333944"
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="77333944"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 01:30:57 -0800
X-CSE-ConnectionGUID: ielCYHaNRGiwxcMF96R7Nw==
X-CSE-MsgGUID: UWUDmfNBTPuQkxJc0yXIog==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,222,1758610800"; d="scan'208";a="192749480"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Nov 2025 01:30:57 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 24 Nov 2025 01:30:56 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Mon, 24 Nov 2025 01:30:56 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.46) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Mon, 24 Nov 2025 01:30:56 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=B3BPjlCUtpTovFo5RGTFtc4yLyOeOkw5zNl/iqlNBDvCmSN7Ai8dLzvIUG7DTWxON+p9f20I3RpZJvnIxVqzsq148/xLfRViOXMfifRk8sw3vTBGl1fBkQqOI97Z9Ra708c/grkC65U5UR38YnVKv5iENVraYUHEWyFVRImvzFd7TNmUyY3nQwets9qqnd5F/0Vk+gMys7ITe2LKm0JpuT5VUI/vPtcagedR96WUqvOzg49X/M/32rEfZAfIhlMdvxFUrWkKIajZNH0mfeSL74hHt4SWOai9UZkvquNqtHWdStZYSm8jGikhqc9MUlQpzwRSku9raeSB9tK7535C7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9635Y4TgF4hNVCD2fLmwm+oK+s6KkifPLr1qRbtIc0Y=;
 b=Qpbk/V3SPzIgXSivsnc6r0MY9qr01Pi3EJkamKeD1Nu8R3J4MgEAhcgz5fxcs7CV/UI6BMscvIbZMzPnHqE910vgzxLSUdLm+vq3irdaLlmpkcek78Y6i+P15l26GI84KEFl4nn1sQx2NtgIJmIczd5y+ytRhnC3Jzx5Furlyh6pKwDz7YmCZ0HNCiy4trS0Kaet+xiy5S1mMQuXPBIcFBD9OxLkY37N+vGtmqLaR6NtCze3CzbXZGNJAQg7NyGb/7wuwtx8nYimhzt2coXzzFOoP74iGCXEuZPX/bCZpVteBCLbqnWned20geflBwu+jfGsF4R9cj5TyKL6Wtin9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by SJ0PR11MB5791.namprd11.prod.outlook.com (2603:10b6:a03:423::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Mon, 24 Nov
 2025 09:30:54 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9343.016; Mon, 24 Nov 2025
 09:30:54 +0000
Date: Mon, 24 Nov 2025 11:30:48 +0200
From: Imre Deak <imre.deak@intel.com>
To: =?utf-8?Q?Micha=C5=82?= Grzelak <michal.grzelak@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] i915/display/intel_ddi: Reduce severity of failed FEC
 enabling
Message-ID: <aSQlyGL93HvYorrg@ideak-desk>
References: <20251117082046.4190705-1-michal.grzelak@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251117082046.4190705-1-michal.grzelak@intel.com>
X-ClientProxiedBy: LO4P123CA0490.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:1ab::9) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|SJ0PR11MB5791:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ba0a802-114e-41fb-9614-08de2b3c2a30
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|10070799003|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dDd4emcrOW9lZUpwYUJWUUZPUnIydlZyZktqQjFGUktsemo0MVRvYXAwR3g4?=
 =?utf-8?B?SGFTVGhPK3IrZGprWHhvOHpxY2lKVkNCWFlUMDI3T1FBbkFLQjNxM2I1OFdl?=
 =?utf-8?B?T0VZcFR6V05SMXVwbDg1R3NZNzk0YWxzQ0N2UVh2Y3FsRFpJdWEwdVk5SnBR?=
 =?utf-8?B?R0lqZ2hDSjE4ZWQwRDY4RXRyaVgzYkhLVFllY2pJQ1NNZ29Eb1ZWc2Z6SGl1?=
 =?utf-8?B?WkJDZnNjRURxZGlyc3I4dVFIMmY3ZmR1YTc5dnhmcU8wL3g4U2dVRjFYcnlq?=
 =?utf-8?B?U1VKSks2VXN4UFdGQ3V4dE1rM3IzTkJKd2VvSGZ6UkczcGc2elE2a2hjbjVZ?=
 =?utf-8?B?bjE4MUFzaDFOZnFoZ1hLbGJlQ0JUMDJJZnF2RmxtRmVQOUlpWnFBMzJvV2ln?=
 =?utf-8?B?bklnclpMZ29mTXBqenFFQkhEZFBnQjIyNDNxTW5LRXBYVHZSZ2Q0OHFlcjZD?=
 =?utf-8?B?YWlJRlNkZU5sRUZkUHU4U0VYVWFUVDM3M3NtanlINW5MN3JJMDNOUjJ2SlIr?=
 =?utf-8?B?NkhRL21RejdBanVYUFJqTmo4NWRTVTRWeThZTE1VM1c3QUtrTldHeWF2Si9I?=
 =?utf-8?B?d0o1UW9aMTlhQXJPdnBmMkd2R0dCS2JQaERhZkZlSy9sdm56Ym55THFmSXdG?=
 =?utf-8?B?Q0NuM3ZoM1ZSQ1BHcitUL3RsenIvcFFMa3VwRWxPdXdqVkJCTUlBK29PbitT?=
 =?utf-8?B?eEFFRWI3TVkrTG1XNG5GSVI2ekVHSXo5Tm1GVTFyZ1B4K1hoNTNWYlNVNG5C?=
 =?utf-8?B?Mkg4WEtNbExIdW11UEptVmRTdnV6TjFYdThXR2dGeTAxTnNPV0t5QU9JV2RH?=
 =?utf-8?B?WnljNzB1eFkwMXVhdmFveWRQVmQ0MmhjN1VFSGxlYjJMbzJ2eEVSaUsyeDFM?=
 =?utf-8?B?ZEpNaDZkTkt3VHB2MVc0VUhudldyS2tTdWhpa3RoRHlQZFpKTTUrbUJSdnY4?=
 =?utf-8?B?Rk9GTEpqcFNLb1BLR3VWUkRpdlI3WEdaOXVsQnJ6L3N4S0k3eER2MWluOVZi?=
 =?utf-8?B?ZE0zUHkwaEVNcjg0bHhsMlVSQWFDV2dicGdkUHdVVHVMZHBmaXplOVh1MDJw?=
 =?utf-8?B?T3cyRzR2RTBLRE9FOVVnYXZzZHllWDRicFJqYm9rM25XakV3K3VBT0JIVlRI?=
 =?utf-8?B?SDhTNENTdUh6Y0xUMUNmV3BBSXNSSFUwMGp5V293UkhUZHpCeitVUEJhVmgz?=
 =?utf-8?B?N0lDWTJGSklaZ3hMVklUbTVoMWRIYXh2cnVuRG1iUFdxeG5JNWNVcFJTK1hK?=
 =?utf-8?B?SCtTN3VlbDJRRWV3WVlaMkJhK3d3WUtKWTVZdWlXdTlmZi9hYUg0eTMvNmg5?=
 =?utf-8?B?bEdKd3ZRVkhGbjQzbGpWWWtoVjFWSTJZYlVSYzV2blFzbHJnaTk5dXFiaDcx?=
 =?utf-8?B?Zjl3aS9WM0FVVEQxcS82bWFhVUlKSEtjSjhGK2E5Qmx6UjVha0dOVVY3U3c5?=
 =?utf-8?B?REhBUHZySTRGbDc2bTFpenc2TWdRL2xyTWFQbDVRenloOTA5Q29MeUtKdTRy?=
 =?utf-8?B?Z3BOZENwbzRwVjRwUnduTXVJSXFTK0E5MGk3c3I1c0xyYnk4U0tpRjV6TzEx?=
 =?utf-8?B?ZTE5cXkwcFYxM2g2M3lVempXY2t3aEVkZjZqd3Z3ODlJdFpYWW14RVB3Uk1W?=
 =?utf-8?B?aWhlcm56dlUrdlBaQlFOVE5TSUVvc3RacjRaYndZcjI0VGloSkM4TzZPeXRx?=
 =?utf-8?B?QUVVVjRlRU90OW9aZk9pb1Jpb29VbjRIU0M3NWNrOGNaSi9qYW1XZHM4eFVh?=
 =?utf-8?B?QmFCNGduWGdic25XRlpORnJQWkYrVU9aNjVtRWJNdDF4MHVKZnhmL2V5cFc3?=
 =?utf-8?B?Yzg0N2hGWHBSTUNVSU44TWZIaXdxdXhoWFN4MzBBcGRXOWFRZlJQOW9iZDg3?=
 =?utf-8?B?bnlqc3JOTnBUV2tyK2dIYVVQSTV0MTdmL2JDRnI4emlsOEVpNUgralNWZTdI?=
 =?utf-8?Q?ZTLo2zpfq7C6KVfc5xZjXIIrXXwfDBYb?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(10070799003)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N1FCU3JMSGhlQS83UTM0SVV0TW5peW1JbHVKalNJWmZxU2JUaVFyM29vdjZp?=
 =?utf-8?B?TjB2OVdZUTc5TFlncGtNc0dMYnZucVk5VmROSURuT0NBUzBJU1dZeFVudFJS?=
 =?utf-8?B?QVQ4N1NKWVpNb28vck9lSWh6c2RoeU9US2R3NTlwWExCVmx6NTBzMzRvM0o5?=
 =?utf-8?B?L2d1L0x2OFdTT0pQY1lnOU5tdkhET0RsYXI4SWtJbjFZSWtzUTRHYzllcS8y?=
 =?utf-8?B?anBTUklzcDNFRHg2a241VVFSU0RTN3dZSDNWVHQvY2pPK3RSSTdWQXp0eVZj?=
 =?utf-8?B?N0dORlptQTVlZVAyWVhKaHhmYUYxYWxmaWliWkkxbzhGN21BMXV0SDBiTUJt?=
 =?utf-8?B?YzNibk1XRWc4Rm5ici9sdHUzS0luZ0ZsMWM1ZEJVdnpXS1pkR2F0anhWQk9p?=
 =?utf-8?B?T2MxTWpzSVFoQ0ZTWTR0dmQ0OTE2cE9hOE41bmdDZFJGOGZPT2diRFZTZ05t?=
 =?utf-8?B?bmJBc0R4cVZOeVV0UkZSa2liYU5ZRHdSc1hzNld2ejNuZHo0emV2ZHZMV3Zh?=
 =?utf-8?B?eFhkY1FIYkduVWZPUzJOTU5McEgxSUNiMkRFb2kwVVNHMVYxb3psZHQ1dUVm?=
 =?utf-8?B?b2Z2enVWV0lWajdkNXEwSE5ZaG5udEtwTThtR3pvQzRxMTM3WDRCMkRISkRU?=
 =?utf-8?B?MG1OY1U4WTNNSEFraFlzNWd5c1J4N2toWm41NDE5UHhXKzBMWEZqdWgvOHUy?=
 =?utf-8?B?MlJhM2tpbHhaMjU5RkFzc3MzRW8xNEtyUXhYb3ltd3hudlBMeDRyQURHcTlh?=
 =?utf-8?B?MWVvYnlaWWpOYXkvNXdrZ1NHSzlzc0FLQ29QZXRHcUJXOTNtWWdvbkR4bzc5?=
 =?utf-8?B?QjNwNjdtakpUUzRsUkswSEJRS1gzVzRSTUtocWZhTWJYNzYxYm1VT0dOcHZz?=
 =?utf-8?B?SEtyZWw3cFZxdmVDOXozeXBwSjdSRnFzZ25MTFZnRHZjaHB6S2YycmVNQjNF?=
 =?utf-8?B?M3p6TWhTWnJQdlJHcWxtNTI1S080cXZ5ZnRDSEE0TElTTTdrYTVhOUhBK0VC?=
 =?utf-8?B?MkNTS25GbkZtaEs4QnlwTTFaMFhoM3d3UzVOSE4yd1RVdVU1ZEZZSU5CZ0h6?=
 =?utf-8?B?ZnpVUTNZcVNTbERsQzNlUXV6alZkWkFsV1Mxdmk4cW5KVmtjbWZ0OWR1MW03?=
 =?utf-8?B?SnlFRWNGbzlmNTBnWE9XTU1ocFA3RWtZaHRDZG9Hd0tDTmdxczRDMkFuMDZN?=
 =?utf-8?B?WU8zYnkvb2xkYURqRHJhK3RwUFVFRjZ0YVVSTmFTSEtrVTlnVjcwTmIxYzZl?=
 =?utf-8?B?NkVaN2M2QU95OE90QXJuRU51Sm5nNTY1SUlrRG10dlM0SWNNT0daRkFyMDRN?=
 =?utf-8?B?b3BzRjJXeG42ZWtaVWV6akRJNUpRRFlBS1NRV3NjNW95R0NlRDlub3h4NzI3?=
 =?utf-8?B?YXM2TlVDZHB1Vko3TXd3dXQweDZIZDZDV2paNzdGRTZMcXNjbjRZOWwxcG4y?=
 =?utf-8?B?d0Z5K0w1Q1VuZkkvVGJQMU1nY0kwRS94WlFnLzhvU01SaG8wbWMwdHJablZl?=
 =?utf-8?B?dTZWVlZ1WlNlNUJ5TGdVMFg0TUFDenJtUmtSUy9ESXIwaUdsZVRpbVdaMmVW?=
 =?utf-8?B?UzEyT1FDOU1jU3Q5aTNZZ3FKVG1OWCs5aC94dFJCeE1FeFhJL0NveXFlQVI5?=
 =?utf-8?B?Q0Fqem41cXlIRjFZTTNUREppQnplaFJ0WFpVN0V3YWxiY21hdy9kZDNwTC9n?=
 =?utf-8?B?K2RHMDBzWVgra1lCNlBEWWJHbk1ZZkZlV0ZsTFNnTXRHNUJxd3JYZnZRRXpC?=
 =?utf-8?B?WjBDL1V4cW1DM1E1K0ZzL0c5K2FGNVZQRUd0cnIxNnpNekxUYWNnNTZwWVpn?=
 =?utf-8?B?TExpVk9OelBGNGZBOWdXQ1JXY0N4ejZtdEl6Z0hRSHBOc0pDamhqdGF3c1RD?=
 =?utf-8?B?dlBxMDRNSHJjWGF5VFRlekpRNmJYT0U0eFRsRlNNSlZ6K1JQOWpTSEpWRVZI?=
 =?utf-8?B?bmxlZDE4MFNMQzV1RDBaOEkwdEZ6NDkwK2RXZG9idDJRYmhsazVEWmJRV1hF?=
 =?utf-8?B?ekFyTHkvbzM2Z3dMaHJhMmt1SlEzK0NXR3hGR3psVlRIbjhrSVpHUHUrNXhN?=
 =?utf-8?B?aTg0RlVoZjBkVHJXS1A1cFdabFRlcVFpd0VJQXJOLzg4clJqYUJSSkU0QlY0?=
 =?utf-8?B?dHZra3M5N0VwQVBNTk9qMWhVNU5mMFFKZVpsRDUvbEpzZ29jTXhuKytOaURx?=
 =?utf-8?Q?s1irqKnNzGA7WDG3He6NSs9ij9xgUmgHN8EHRn7z4aw9?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ba0a802-114e-41fb-9614-08de2b3c2a30
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Nov 2025 09:30:54.0923 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: m7pYCYmlKhqnTp5c/NVv7DhniMRkC0K/oooO2tv2Mp+KTX7BQJbKxFg5QtTYcnaqZxl6aquvkvS4KiIY8QoCfw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5791
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Nov 17, 2025 at 09:20:46AM +0100, Michał Grzelak wrote:
> During some IGT tests (e.g. xe_pm@s2idle-exec-after, xe_pm@s2idle-mocs)
> sink disconnects across suspend/resume, reconnecting later during resume
> at some point. Hence during resume, where the driver is restoring the
> pre-suspend mode, all the AUX transfers to the sink are expected to
> fail.
> 
> Switch error message to KMS debug message of failed FEC enabling.
> 
> Signed-off-by: Michał Grzelak <michal.grzelak@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 002ccd47856d..130d266242c8 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2446,7 +2446,7 @@ static void intel_ddi_enable_fec(struct intel_encoder *encoder,
>  			return;
>  	}
>  
> -	drm_err(display->drm, "Failed to enable FEC after retries\n");
> +	drm_dbg_kms(display->drm, "Failed to enable FEC after retries\n");
>  }
>  
>  static void intel_ddi_disable_fec(struct intel_encoder *encoder,
> -- 
> 2.45.2
> 
