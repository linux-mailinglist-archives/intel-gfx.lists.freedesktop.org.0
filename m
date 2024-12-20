Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 958889F93DF
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 15:02:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D0AC10E3A0;
	Fri, 20 Dec 2024 14:02:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zr+mC3xe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80B8F10E399;
 Fri, 20 Dec 2024 14:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734703332; x=1766239332;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=r6iy/j3k1z1O5l+CtBypFlHZaaYsdE3ASSfSGUDR/d4=;
 b=Zr+mC3xeSN5u2lmzlk2Cf0VGq/2h8RdmGYcsz9TMTze09Jx+0oCX+U5C
 LO6gG4ZrUNzUwippcFzGHFtqw+Zc/T9YhSy7rnBvpLXavi0Y7AljWaRxm
 MTSrc7lJkW47PGkDc2HzvbEicU4gSggEPrbKU5vbJbUolanl2Kt9Fzxwj
 0zPu+OwT/VjoQ9GC33CP3JN+MmkeMlhcLxtWEREAf47H7HxOn92t2Aw2K
 aI6V36Y5Y3gjEUPX8WbuLEVYzfdUY+lJitwOxYYjL4FM1gdt2CCRN2x+5
 y5ulk0+u/LKubftyLQWaAqKfWbskd41fCcE0Fg0eLMsPgbHJLanavU8jV A==;
X-CSE-ConnectionGUID: cqGrVK8UQtqtVrcQIstqrA==
X-CSE-MsgGUID: qlddGNFDSj+9SaTuIfPT8g==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="46632021"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="46632021"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 06:02:12 -0800
X-CSE-ConnectionGUID: TW9R4Ie1T4imRYczNCLlHg==
X-CSE-MsgGUID: y3r2BhwaTFW8IAYmVtwmww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="98301386"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2024 06:02:11 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 20 Dec 2024 06:02:11 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 20 Dec 2024 06:02:11 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 20 Dec 2024 06:02:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=KwbSnAJjquhgBC/MStfurOE+eBEpRudwgnpnXefZZyGzAE1s7fqGvgXEpe71ZgMm1h2SnhE2jsw1MpLoVgS7KnCRThmSdakkgtmnA8ALxIC2yEtccYI3uDFIetBkOMBwlAoM/7mYDU2AzSSUKKbk0hrNVxGTisy+p3YI/HMIb8E9yfVfTdPkwpIDGK0zIrxxuJjf4oyVd2v6+y68c09ihS/7yhCtbQpA2Omvbt/zmtgRdvKA1joznpto86cunAbjcjB/nGvxUmehG4eOMTn9CCOG/9KI0alwr0HZYlg1jOJve5uLf2i+WSIuqd3fNVxfE1yGC9LV/RdowLpnaydJrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3Xq/uWbFR/CiQYO6hS4dyQ1P4SAySZlt7ZnyiAff9h4=;
 b=R6BvTLHjhlFlNjsyElOSaXNRqq3CRCfI+5vCWvPfndAKOtk5nNGw28+/c6GbhMnL78xshD/tYmPJY7W3gW3nvmSi56kDKWJPyQ3Zx4667dt64fToKueXoS3aZ9iFo7WGgGZ1qVDArR3wkTnqoiY36BAoJfJVg3p3M3dIa2S3yjBRpiQjLnAi8pw9cp/BEQDbML7j7wvKMPf6OqrVGQ5X/dE0EfMQ3FUrz/of/Gqmqxl2F8nk1beTwvSkSBsWngTQtaLadpWZ6n4yYhRQVF/lR8ykJ3YFV50wU2AM/0uYPYS38nm1MFc3LKqxlwCbKg1wMtEw0NJfkAkaFYVe8nJIFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA3PR11MB7415.namprd11.prod.outlook.com (2603:10b6:806:318::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8272.15; Fri, 20 Dec
 2024 14:02:09 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8272.005; Fri, 20 Dec 2024
 14:02:08 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z2U3jCBKUo1FF21r@intel.com>
References: <20241219214909.104869-1-gustavo.sousa@intel.com>
 <20241219214909.104869-3-gustavo.sousa@intel.com>
 <Z2U3jCBKUo1FF21r@intel.com>
Subject: Re: [PATCH 2/3] drm/i915/display: Add infra to reduce global state
 funcs boilerplate
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 20 Dec 2024 11:02:04 -0300
Message-ID: <173470332456.2440.10075981157005174464@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4P223CA0025.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::30) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA3PR11MB7415:EE_
X-MS-Office365-Filtering-Correlation-Id: 820e8736-3844-4433-b218-08dd20fee49d
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MkhQbVVROFl1SXo2QklsWGJ2YWxUb2Fxd3FJY3dQM1RqWXlKREVCRG1mK2Ra?=
 =?utf-8?B?WnpiT0xJSkp1WjBuSThTcDZHLzlkTVQvN21vNkc0amcwMXJZOTB0Mm1mNjlx?=
 =?utf-8?B?bGZaOFB2NjdsTVk5ZXpQaUx0clAycGIxRmt0c0JraTFSL0RDN2ROWXpqMlR2?=
 =?utf-8?B?bmJMQmJiZk52akNuNkdpcXRZckJaOVRwdkR1b094cmdjRmprRUhvTnB2UitY?=
 =?utf-8?B?ckp2S3hYYVZSaWRpRHNSWXBaYWdQbU9RZy9Yd0JoSEFNNC9rL0tjV1o4d2gw?=
 =?utf-8?B?YTF6MTh5dnh2TUFEMXJyWmx5OVBndG5KYzI5NExlclM4QlB1REs0TGhidFNC?=
 =?utf-8?B?Q1RvSnFpSjAyVDI2enpkN2MzRGJVa1k4S21jQkE0anlNdUtWSWtiZzJaRU5R?=
 =?utf-8?B?aEo1S1grUFZBWEZiN2kxcUlMYTN5b2hzblREczBwRTA4eDlpSWcrTWFlZjJK?=
 =?utf-8?B?ZUtZRkk0eTcyMmpVWFl2eGEvTmp0TlBiT0hUeFBoSXQ1MStKejNwUDJPT2FS?=
 =?utf-8?B?WG5NZkdkM01qQ2Y5cnMvOEk3YkJNSEM3SXFWRk9VaFh0R2htbXlZY3FJQTlP?=
 =?utf-8?B?TWFvK3pWSGpvNXNpYmxsbzlTSDcrbU9wYlFKbmhycWhrR3RVdjh3N2RiMGVH?=
 =?utf-8?B?YW9VY3ZxRm1uWTNvYXEwNVA5dEJ1emlOY3ZWYnYvSFBsTjJHd1Q5Y3l5U3l6?=
 =?utf-8?B?bXNDM1ZNQytYWVN4RkRkNDdrV2N0SzdZbXBXSTdQMTVDaDBwNUxTbTZDVXVY?=
 =?utf-8?B?TXBSWFJUNitDUU45UjBVRUp3NlFZcUVneTNnZ0piQzlwNlJjRmF3TVhqbUNE?=
 =?utf-8?B?eWIySkdkT3kwTmE5U0J0RndVektyZThPVy9GYW90V0c1elM3OVpmR2JMbGZH?=
 =?utf-8?B?ZGRGRU1mYkVob29JbDBwNWgxZkwycmlkQkxJWXNlc2M4RTkwTzFyK3AxTlZN?=
 =?utf-8?B?QkhIaDVmYWliZGJuWFJNZlREYTB5Rlo2Y1F2WGFSTHJmR1dXRVFEQ3pveTJJ?=
 =?utf-8?B?dHpaYkJLdUZDNHlKZ2lPT2tTV2J3VXpqaTVaT3pqZ0tNWmxQcXE1NDRTbytY?=
 =?utf-8?B?YVBjZEIvYU9IWDhYTytYR0kwbDViWDFobHNENENSUUR1bTMwOG1qRDZYZndl?=
 =?utf-8?B?RFBJUXk1WjBqR25zYkpyN1VJRmhlTUppbjQzNHAybzJmUmlkS1IrR25MZExS?=
 =?utf-8?B?VTFGVVIyYXlhMksvbHFzMmt3d3JYbHJJRWlBRFZpbnhJR1dLU0htbFk2T3Fp?=
 =?utf-8?B?QlQzVUpKT21UaS9NSHdqZ0ZOdUJoSzZJaVNPNCtER0FuTkdkWnFqU0FMWXlF?=
 =?utf-8?B?SElBbEMwWVA1WHdCOG95QVc2NnhuR0pFZ3VHMGhtVnhEY1F6WTZUdjk2ejFj?=
 =?utf-8?B?U0RmaFd4MVg0dGJzVDJEUTM3YmNWS3ZKaUNKZENOV1JRZHhUZWNtQnVFOEk2?=
 =?utf-8?B?VnZ6NmgyRk5OMXg1NGQ4OUJXMDlzY0tVU25XUjRKK1c4ZlRCeDhKb3RRbWty?=
 =?utf-8?B?L0FtZWpmaHd4VVZtd1VPV05oTStoeEo5T2FMaDBDVFRUOXBlcXdHclVRblJU?=
 =?utf-8?B?S0xuY2Exc0xWMG4rdlV6dmNaY0pXS3ZqdFJzeUVNRDdIWGwvbFZQaWxodDVN?=
 =?utf-8?B?ZXNjWDhJU2JYZGE1NitvZUg5RVdUR20vQWdpaXN1anRCeTJCclpBTkFtVm1H?=
 =?utf-8?B?ZmtncGx2dnpKYmFhZWdrUEdtU3pWQjNXNU90RUVjZ0ZQVVRuZDJSeGR6QnNY?=
 =?utf-8?B?NFlEOXlWQTc3eUd2QVIwVTBPUkVhTit0YnZ2OHBtN3lJbWhOY085R0xjcE1o?=
 =?utf-8?B?Wisrck9wZjZLdHFaa1VxOVlzUFY0R3FlbGRiNFcrZWJ5Qm5YT0ozendCYXdt?=
 =?utf-8?Q?qHK8NU5di98E9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S0NsZWM0RmEvNURlbzNaNEJ3UUZhVTRxd0JyNkFadVRmbk8rSkNFc1pZZy9l?=
 =?utf-8?B?dnVXVXZxMENZcGFjQTNyUFNCYUgvaDZIc1MzZWF0R3FwWEJvRy9nOWI0MkVR?=
 =?utf-8?B?aWxjdTZ5YkF0SFdVdEZlaHZLaEZCN0pEV003b3RnR0hOZXpqYzFUL2p3ZmJG?=
 =?utf-8?B?aCtmSXBRNUFMR1RmZXBoRWVwY1Jka0ZoWkYycnRqOXlmT0x3RlpKOE9LaXFu?=
 =?utf-8?B?TVRTTTMzUHNETjgxdjFQcjJPdlpNaDFUZkdxNmZjR1BmWUZsRjdpT3dIUTZi?=
 =?utf-8?B?eWNxeElVeER0UXpmVStsVitRanhyb0ZQVmhGb1cwV21qZk5KRkxKNHV0cmtN?=
 =?utf-8?B?d1JQQTF0U1h5ZjBpOEowWUJ5UVBiSTBJNWRZU04xempsdFJNRDVEY0x0aFV4?=
 =?utf-8?B?SnA4WW44QkRzYnhFMkdnL0NqVlZEYUZUMlMvcndJdTBXQzJTOURra3BJMVRK?=
 =?utf-8?B?cDdXdlZHczdGcHJSaTh4MDdWK1JBMTFqOXA0TmhIeW9WM2E3dk9zT1BwdnR3?=
 =?utf-8?B?SHg2Z3NuNmtmUjJRZklqaWowRm1MbEh0T3p6a2Z0eGdCMkx6S01BSjVIYXBt?=
 =?utf-8?B?SkR6bURBQ2hPbmNGSm4zVm9rU2xuRW4ySUZ4eEpEenV0YVFpRlM2Y1Rubkdn?=
 =?utf-8?B?VjA5OG5mS0ozTlV3QnhUMEFiYVBCQklFU004dXcvMjk2M25kRnRLSS9DR3kw?=
 =?utf-8?B?UXFOMzE1eG8vWEtDSTcvNjNrRnI1a3pvcTVrZDBTbEcrV0d4K2xpRFEwNElZ?=
 =?utf-8?B?bU82M0xpOWV6WVZEaU1pVW10WDg5bXVJbnlXdGpmaEFJakxpcGNpRmJvbXNR?=
 =?utf-8?B?VmRjRUZhWC9QZURtMktJSVpualdBcXNwSDhLMm54VEU2aG5lTmZWQXFCT3Rs?=
 =?utf-8?B?aVdtTE51M3pWVWp3Tm1xcVZSQm5EdUZBbkV6MVpXd1oydUd5Tm5LdVBUWG96?=
 =?utf-8?B?YmVVVXAzSjJUakNTWTZVdWtpOWtzU0E5aUN6NkU4V3RLOGQ5cUpsQVhydWhw?=
 =?utf-8?B?cmtvRHVVOTFiekZOMGRKNnlRLzkvOHcvcm9WT0RVaXlOOGhLbjlYODdYK3R0?=
 =?utf-8?B?c0JwazlZYk8yWExXTVpYMFZ2N0Z3b1U0YytYaGtpVVA3YzhOdW9jVUdRaUVK?=
 =?utf-8?B?cU5EU21NSFhHTlc2a2czVm5FeUl3dDJKSzl0V1FsN2h4Z21NY1lsUnpKODh3?=
 =?utf-8?B?enhhU1loUlo4QWdtU2Viam83SGNjdGJCZE1YbFliaFJnQ0xGUDVGeXAzNXRH?=
 =?utf-8?B?eG1NSkIyZ0lteW9KV0hCT0s0eG11dVMzcUR5RDBpdHdVejNDVTdoK3BycFpy?=
 =?utf-8?B?MW9wZFlNZnRMdHRldm5SWXVldFRvM0gvUGwxeEtrL2NZUDNlNDVOVTI4dFla?=
 =?utf-8?B?cUpPeHN2dFhOTk1GMzhCUElDUWVObDdESXQ1blpna05EYXF2K3hOU1ZlZytX?=
 =?utf-8?B?S0x2YldCbkRPR2Zzak9uQnNIVWgrbm12RzZ3RzhnaWdJRGRNRU9XNitvYk9l?=
 =?utf-8?B?ZzFoWEdIZ3owWDJvemI2ek5NWE8rcHhtS0E1cmNhQkZWMGdKUE96bzJhSU5p?=
 =?utf-8?B?MWpwbnN5VzM5Yy9mc3ZGb2ZMcG5IbkhsS0ZuemsrVEZyenZzZ1VteW1XTy9m?=
 =?utf-8?B?NnJweEdmOHhNa29YSWlSNnNxcUtZNEtDTzhWeXdpK1hTN3Y0RGlsazExWXZX?=
 =?utf-8?B?VW1WYzU0Sk15SEY5STE1VFpLK3NycVhvNFVnTWhEOE55UFpwb3dyN0lrL0c1?=
 =?utf-8?B?U1lEL1lrTDdEeEVMUWVFeFJkdkk3cXF3bU1oQzdxUFkxcWp1YVllUWNoczlV?=
 =?utf-8?B?c1N6SXhYeGdxaHdrK0p0a3F6aHRyRXBqRDNQd2UrajhydWV1WEszYjF0ZlM2?=
 =?utf-8?B?UlhROVZ0eGlzOXoxc1Y3YnZuREIzVjlZbE4yUkxudy9DQVVqcnpyUVdCNW9h?=
 =?utf-8?B?VktuWHE2TUltcHRKejd2UEpHeUtVMENmZjlzVGtzNmlSUXpoZTNYTkdaaDNv?=
 =?utf-8?B?bW1lbFd4ZFM5RnlnWVVqaW5OU0NqMHVjNng1NFF5ZVp0bVpwWStPUTd1MzUw?=
 =?utf-8?B?bG5OM2hJNGZjeWpqdFl6VlRjbUd6UnRFeDl4QUEvSkJuRWptVXVVZGMvTXph?=
 =?utf-8?B?UERiYm5vK21zMXpXRi9rTDByM2JWTjJObFFjN2hSV01aeUc1OXMvVldDMFFF?=
 =?utf-8?B?U0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 820e8736-3844-4433-b218-08dd20fee49d
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2024 14:02:08.8786 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZBpErtSDB5bWPpBSwDR2KMYpgeSJo0ySjM2+roolJPaKVWDkIb11HWaK6AyTXMtqI33C1MZfsFfJ27wKLj+0pw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7415
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2024-12-20 06:23:24-03:00)
>On Thu, Dec 19, 2024 at 06:48:37PM -0300, Gustavo Sousa wrote:
>> If we look at how the members of struct intel_global_state_funcs, we see
>> a common pattern repeating itself. Let's add the necessary
>> infra-structure to allow reducing the boilerplate. We do that by
>> adding common generic implementations for each member and adding a macro
>> INTEL_GLOBAL_STATE_DEFAULTS() to be used when initializing an instance
>> of struct intel_global_state_funcs.
>>=20
>> That way, a global state that does not need custom behavior can have
>> its funcs structure be initialized as in the following example,
>>=20
>>     static const struct intel_global_state_funcs <prefix>_funcs =3D {
>>            INTEL_GLOBAL_STATE_DEFAULTS(struct <prefix>_state, <base_memb=
er_name>),
>>     };
>>=20
>> , without the need to implementing the functions.
>>=20
>> That doesn't come without cost - we will need to store two size_t
>> members -, but that cost is arguably justified by the simplification
>> gained.
>>=20
>> In an upcoming change we will put that infra into action on existing
>> users.
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  .../gpu/drm/i915/display/intel_global_state.c | 41 ++++++++++++++++++-
>>  .../gpu/drm/i915/display/intel_global_state.h | 15 +++++++
>>  2 files changed, 54 insertions(+), 2 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_global_state.c b/drivers=
/gpu/drm/i915/display/intel_global_state.c
>> index cbcd1e91b7be..4b4c33fa99fb 100644
>> --- a/drivers/gpu/drm/i915/display/intel_global_state.c
>> +++ b/drivers/gpu/drm/i915/display/intel_global_state.c
>> @@ -59,7 +59,10 @@ static void __intel_atomic_global_state_free(struct k=
ref *kref)
>> =20
>>          commit_put(obj_state->commit);
>> =20
>> -        obj->funcs->atomic_destroy_state(obj, obj_state);
>> +        if (obj->funcs->atomic_destroy_state)
>> +                obj->funcs->atomic_destroy_state(obj, obj_state);
>> +        else
>> +                intel_atomic_global_destroy_state_common(obj, obj_state=
);
>>  }
>> =20
>>  static void intel_atomic_global_state_put(struct intel_global_state *ob=
j_state)
>> @@ -164,7 +167,11 @@ intel_atomic_get_global_obj_state(struct intel_atom=
ic_state *state,
>>          index =3D state->num_global_objs;
>>          memset(&state->global_objs[index], 0, sizeof(*state->global_obj=
s));
>> =20
>> -        obj_state =3D obj->funcs->atomic_duplicate_state(obj);
>> +        if (obj->funcs->atomic_duplicate_state)
>> +                obj_state =3D obj->funcs->atomic_duplicate_state(obj);
>> +        else
>> +                obj_state =3D intel_atomic_global_duplicate_state_commo=
n(obj);
>> +
>>          if (!obj_state)
>>                  return ERR_PTR(-ENOMEM);
>> =20
>> @@ -382,3 +389,33 @@ intel_atomic_global_state_commit_done(struct intel_=
atomic_state *state)
>>                  complete_all(&commit->done);
>>          }
>>  }
>> +
>> +struct intel_global_state *
>> +intel_atomic_global_duplicate_state_common(struct intel_global_obj *obj=
)
>> +{
>> +        void *state_wrapper;
>> +
>> +        if (WARN_ON(obj->funcs->state_size =3D=3D 0))
>> +                return NULL;
>> +
>> +        state_wrapper =3D (void *)obj->state - obj->funcs->base_offset;
>> +
>> +        state_wrapper =3D kmemdup(state_wrapper, obj->funcs->state_size=
, GFP_KERNEL);
>> +        if (!state_wrapper)
>> +                return NULL;
>> +
>> +        return state_wrapper + obj->funcs->base_offset;
>
>I'm not really a fan. What was obvious code before now looks=20
>complicated.

Well it is 1 somewhat complication here to simplify N cases in the
subclasses. Maybe that's worth it?

>
>Also this no longer matches how any of the standard kms object
>types work, which I don't think is a good idea. IMO if we
>want to do something like this then it should probably try to
>cover all kms object types.

Do you mean to try to implement this on the DRM layer? In that case, we
would also endup having to implement this here right? Because we have
our own thing. Unless I interpreted your comment above wrong...

--
Gustavo Sousa
>
>> +}
>> +
>> +void intel_atomic_global_destroy_state_common(struct intel_global_obj *=
obj,
>> +                                              struct intel_global_state=
 *state)
>> +{
>> +        void *state_wrapper;
>> +
>> +        if (WARN_ON(obj->funcs->state_size =3D=3D 0))
>> +                return;
>> +
>> +        state_wrapper =3D (void *)state - obj->funcs->base_offset;
>> +
>> +        kfree(state_wrapper);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_global_state.h b/drivers=
/gpu/drm/i915/display/intel_global_state.h
>> index 6506a8e32972..e47e007225cc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_global_state.h
>> +++ b/drivers/gpu/drm/i915/display/intel_global_state.h
>> @@ -8,6 +8,8 @@
>> =20
>>  #include <linux/kref.h>
>>  #include <linux/list.h>
>> +#include <linux/stddef.h>
>> +#include <linux/types.h>
>> =20
>>  struct drm_i915_private;
>>  struct intel_atomic_state;
>> @@ -15,6 +17,10 @@ struct intel_global_obj;
>>  struct intel_global_state;
>> =20
>>  struct intel_global_state_funcs {
>> +        /* state_size and base_offset are initialized by INTEL_GLOBAL_S=
TATE_DEFAULTS() */
>> +        size_t state_size;
>> +        size_t base_offset;
>> +
>>          struct intel_global_state *(*atomic_duplicate_state)(struct int=
el_global_obj *obj);
>>          void (*atomic_destroy_state)(struct intel_global_obj *obj,
>>                                       struct intel_global_state *state);
>> @@ -26,6 +32,10 @@ struct intel_global_obj {
>>          const struct intel_global_state_funcs *funcs;
>>  };
>> =20
>> +#define INTEL_GLOBAL_STATE_DEFAULTS(type, base_member) \
>> +        .state_size =3D sizeof(type), \
>> +        .base_offset =3D offsetof(type, base_member)
>> +
>>  #define intel_for_each_global_obj(obj, dev_priv) \
>>          list_for_each_entry(obj, &(dev_priv)->display.global.obj_list, =
head)
>> =20
>> @@ -96,4 +106,9 @@ int intel_atomic_global_state_wait_for_dependencies(s=
truct intel_atomic_state *s
>> =20
>>  bool intel_atomic_global_state_is_serialized(struct intel_atomic_state =
*state);
>> =20
>> +struct intel_global_state *
>> +intel_atomic_global_duplicate_state_common(struct intel_global_obj *obj=
);
>> +void intel_atomic_global_destroy_state_common(struct intel_global_obj *=
obj,
>> +                                              struct intel_global_state=
 *state);
>> +
>>  #endif
>> --=20
>> 2.47.1
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
