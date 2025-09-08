Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E9AB48851
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 11:25:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F98110E4AA;
	Mon,  8 Sep 2025 09:25:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iGb2b+hO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB9CE10E4AA
 for <intel-gfx@lists.freedesktop.org>; Mon,  8 Sep 2025 09:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757323548; x=1788859548;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=7ggDblfuhSc5HZgK2iQBiXoaviRqd84JEqcNhWlWAoE=;
 b=iGb2b+hO7H+ULw0CrpzKgfisLgLZHfYvtSLVemiVFboX5m3exfh+2aOc
 gkL6dq4bT53/FgERd6KISF3ePfbc+VYKiS59ls/DrQlr03eSj42KNTJwf
 ZcYksQO5dgUZFVZyfACh+yQjM9jM5U/Z+g2X+23U29goXVEpLP6JnG8sq
 SRkpGI7vDhWJussPdFQVoQDAomhZ9HO2US36za5zZuc/hoA42Hyhepxwg
 RMAVKXogRj7BIeDVhzECGOq469g30KeI3mdeon0arKuVu0gLCD58i37cP
 G9Y8P2iaXbzqH9ekvhqOwggizdVt1K8X6bd+92vu784sjYp7C70B/ESkS Q==;
X-CSE-ConnectionGUID: R8tWx3O4S1+qWpUVNOL9OQ==
X-CSE-MsgGUID: wcMPO2OmQVGiqC4JdgXlBA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59503524"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59503524"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 02:25:48 -0700
X-CSE-ConnectionGUID: NOOkGkOLQCuV20iGxZMzWg==
X-CSE-MsgGUID: xduXKFy8SK6Cvmr0zhM67g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,248,1751266800"; d="scan'208";a="177063986"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 02:25:48 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 02:25:47 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 8 Sep 2025 02:25:47 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.64)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 8 Sep 2025 02:25:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NeO4IXraffVxM0XUGZo1cpxpillPY7tPoOxrOIWGUX4gZGfAf/PM3xB+y+RAqyfQbn4KaAS0UVxI5W9vOh3LAkQ35yM/nwvTdKW2daPpkX2u4gxw0l/eP9vtdc6y4zrDbcv8v0Oz1+TgSIJmbB9ivx2xmZBfIqtzUMxOUIlnM258aHkkS0pGIdk6IZ4PkDTkSLFoCE+iUxCEiGMv+d+GL+DqlkcYVxV63j/NR66DpfLLz6rqF7kLuxczu3LnZVO+5mpTHK/BYcXXgRM/IbuHn7ILWhdf+J7ORSsWtUrdcz9aJ/0I1zF2PSu7Ce45Dj5nVPxqvun/83DvoLRoDY4MCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Fd3B4UT8XI/sijvSU9x55yTUX3oQSBMgLtMonnP7ZNs=;
 b=sxTHOLN2gKtaj5loPwIpKWZL01Gsf8YmOWjuZn/daJCE/kveELVnmybb393J8uBMne/OQjegp5JtXMw1KvqkojqdSfMVWwIO6mpSS0BGLCrTttRK2mH5dEBdsMfprh8WZH3NCkG1JJWzxIEppAl4FI/nikP15N7RHRZDqXBFSF9yb+42TVsYEhpnL02EVvx8HXqpgOg/hx1Rib0gs4k8IlwdLccnx6tHOGw5qbtnhoKV3v7xCswqTV9YPlGdZ1bolxzJ7kbisf4ai5xUvil7x7O3Q3O0ayI3GKSNkRAiCXUP3YyODSUH4pZwK3YEXDqeUnjzm2A36hIYdQjw0d3Qxw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH8PR11MB7990.namprd11.prod.outlook.com (2603:10b6:510:259::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.19; Mon, 8 Sep
 2025 09:25:45 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9094.018; Mon, 8 Sep 2025
 09:25:45 +0000
Date: Mon, 8 Sep 2025 09:25:39 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Danilo Krummrich <dakr@redhat.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH 4/6] drm: Avoid suspicious operations in
 drm_fb_dma_get_gem_addr()
Message-ID: <f47461f76315069590390f3dd9fa115d293187a7.1756995162.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1756995162.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1756995162.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: WA2P291CA0019.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::26) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH8PR11MB7990:EE_
X-MS-Office365-Filtering-Correlation-Id: c8dd5f86-e3dd-4072-6eb8-08ddeeb9b03c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NTZ5dkJ2NWhuQ2k2YXJSRi9Id2F0SFkwUEdvYzZTYXdQeHRtWXNDd0k5Z2Zi?=
 =?utf-8?B?d3ZEWjdqRW9NdmNKemVFUGFJUzNHbStYMzl2SjNra2U5c3d5QzdhS3ltcG1U?=
 =?utf-8?B?K2ZhYWd3K29YQkFIbFdvR0tmMWZyT3NFQ0xJVlJwLzcwYmM0L3I4UmJBRkNq?=
 =?utf-8?B?eFFwLzhCcjM3MnI4Y0hqY0RzeDhsaTJtQVJBUlFjTzM4dmlmR3NVaEtid3lK?=
 =?utf-8?B?WXpxcjIrUG1EU2l4NTQzalZVL3U4SDA2RlVjSllJTEFaOFc1Z0FqbXFUNDFn?=
 =?utf-8?B?QlJZRmlSUnU5Y1dYNjh5Sm4rN2xYMFl3dXE0cExVMW9PUEtFcU0rQVZFd25S?=
 =?utf-8?B?dmtES2U5VGtBR0M2MndUR1M1TDhZbDF4STRMYjJuTFdnSzBxcFg2SSs4Nk5F?=
 =?utf-8?B?N1p2OXJ3WFFQY3NaenFYRlFIVzcxUGJMZHFLbyszc0psanRDRzNhRjZSYmNI?=
 =?utf-8?B?ZjViY0pJYUNHZDExdGQ0b3JNOU13ZVQvdThSVTVjMUZ2STN1elVCd2JqMlM3?=
 =?utf-8?B?MEVhSlJZbDZxUE4wWjZtcFVMQlFvaThaK1kyVW00eVNES3Y0QlVKZEVaNVpU?=
 =?utf-8?B?YzYvMDFWc3RsWm1kaUpLTGk4Sm5XdjVUNFNhUFVCMDl0WG8vU0VBNi9vbWxD?=
 =?utf-8?B?bkRFVEQxTS9UWStNcldxcnlYbHUvRlZ0REs5YWd1cW0xTHJKaFZTTGZOeVlE?=
 =?utf-8?B?OWFUem9HN0lGUG9LczlkdndpbkxNR0JuNkltNUpqTzhEaGt2YWtSWFp1K3V0?=
 =?utf-8?B?dkVZVnhVMjhqUTVqRGIxZ2hrSGowZWtMREtUTlNoYTlaZ0hZd05YQUV3TGps?=
 =?utf-8?B?c0llU05FdzV5SUNmRktDY2hVWTQ0bG1IY2JwcFVvRWt1THFaWkIycHRHMGpo?=
 =?utf-8?B?VVFVc0gzb2ZDU1d3Ly9tMnNlTFE4L3U3UWZqTnYxOHhYU2dnNlF0dlhlWGJj?=
 =?utf-8?B?bFpBYWNrTm5YTFZ1SVl2L1NSTVBHOVRKTjRtdEtsQ1NIRGxzV2lGcEVuUWtn?=
 =?utf-8?B?SVpmY1VmY1BTcHNxVFBMVWhYUGhSQVhHdmNkTUFrUEdJbU5vSHlTcmZidVFu?=
 =?utf-8?B?K24rSXRjQi9NM0xpV200YnlkSitVQ3k5S1JySWswN1oyUWc0SUhhNGtrOVEy?=
 =?utf-8?B?a2ZieWs4WDZsM0ZGUGZjZ09RZGVSSHZCQ0R1Tmc3YkFlNVVEUjhGeDhEUFdm?=
 =?utf-8?B?UjVycXVIbEh4V0pBS0ZTN1I5Q0RHcVhTLzU4eHZtejY1RTZVRDVZVUNrejc2?=
 =?utf-8?B?eDJMUG9TdmtDVU1Ccy9WdEovR0Q5TDl0dmt4SEsyOGh3UEhoN3hKV0g3T1JO?=
 =?utf-8?B?TTJvc3JuQlRPQlEyWjM5L1hPRm9TbU1tSjBxNi9EQnQzR3ArWDdLTWdCTU9a?=
 =?utf-8?B?czFmWUh3QUZXSVlBMmhOSE42T2Y2Qm9KaHExejdGcXhHS1U4dXRSRGlPdG5R?=
 =?utf-8?B?N2RhcXhVTS9tM0N5QXF0L3Y0VTJKTDhsNHVEb25jRzJieitvRXJzN0lwVGxC?=
 =?utf-8?B?am5SWU9pTEhDZ1I4T1Bmc1liOHYrSEVOMDA3aFcwUkRRM0gzRTNrVTJQK2M2?=
 =?utf-8?B?N3Z4V2taQkpLMmh5WllpUVJ2YXFFTVVGeTBNYTNsRE4zcy9xQ3BRd0lTVjFV?=
 =?utf-8?B?Nk5YR3lQcmZyMjM4c2ZsTmI0ZU1RdVpVOXo1U0hDNjJHaVhIcTZ6ZUVJWEts?=
 =?utf-8?B?M2ttRU5XMWJLUGJDRTNpdXNjVWZMdXh2QXNFMlpQM1RobkhSeTZrdGRyQ1RB?=
 =?utf-8?B?QlNiUkhDcEZwU2FUc2xyZis4ZTFqYmxSZC9MeDBNS3EyK1pJZzFSQU93NGhD?=
 =?utf-8?B?Ym1HUXhJaHlXMHFWdk1zSTY2aEduNGozYXM2MVpvWTRCOVN5c0tmbVFiUmpL?=
 =?utf-8?B?UXZDLzhhV3lxaGUwdGQrMUptVGhnMzJNeTNaSGRLdmdqV01DRGpiWnlsOVlJ?=
 =?utf-8?Q?2+oPxDEURYw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N3RRRTRQbEtqZDlxU0toMGQwQ2xjV2xTUzhlUEVlUmNlbkpLSHpxU0M5M05H?=
 =?utf-8?B?Rzd2SzFwMTI1TE5ybjhqaGQvdXNPa3E0ZDZVdUdHVjZSNU50Ukw1UnExUllQ?=
 =?utf-8?B?R3Mzam5wTndUdDdDdFgvNnh1MmlmK01wYkZOeFZJUkU1VFRRSThjTHVSbThj?=
 =?utf-8?B?N2t2a0IwY05IZGE1dUN5NkNoWnhIWGQwOFZqNXBhUjdBRGsrVWYwQnRqT2I5?=
 =?utf-8?B?TUt2UUZkcHRtTmJWUEszYnhnMGhvbDR5WjdoWWU2aFA3V2lUSDNHOEY3S2Nt?=
 =?utf-8?B?bXRxNlNnMFpPY3JVUTd3cjB0aUcvekhwS0pBWFk5d0t5N0NPdGtkVU5QR2tl?=
 =?utf-8?B?NUR5dUpBa2lZRW5mWWREWm9pb0pobmRBc00rd1REMDlHVEcvSDlKeXlTT0tt?=
 =?utf-8?B?SVRhT2FlNmdXeW1OTklnMjd2WThuM3hxS0tCczFTTklwN2lxNXF3OFF1MDNC?=
 =?utf-8?B?ZmcxYmh5dW10a2lnMHlEMHFVWlFxckt6d0NTcVdDR3ZmVFpPeDVhK1laQzN0?=
 =?utf-8?B?TGh4emxxd3JPWkNVM0NSR2hOQ3dmcjFORGlNQ1k4WTROZmlDemMyNVBFMU1E?=
 =?utf-8?B?S013UnU2ZkVOYXBObDNiQ3VNN1FOYkdmRjI0MTJtd1hXUWh3SEpxUldKWXBQ?=
 =?utf-8?B?WHZUN3FFcUtGSVdtbkRreFQrVlhuRXNXeGxBM0RMbnVqUEtjYU9DRmc4cWlL?=
 =?utf-8?B?cElCaTIyOEFHY1hUa0hVUzR5ZGVCK2hlK0VzcVk0OEx1QjQzbXVCNzJERm52?=
 =?utf-8?B?MWdXd2svVC9BV2pvREtVR1pnUWd2OVdrR3VYNGVua1BSOXVhSHgwaDh3MjBz?=
 =?utf-8?B?WVlQMDJUSHJZRGVrVjU3YWl0NlJFTTNOeEJGSmlPZlVwVElxdExlaXN2dnFH?=
 =?utf-8?B?Wjk3WHhYY09FSlMyTlJ3eTNIWTJ5YmxtTzBQcC9saWRScG5kaXlyKzMzQkoz?=
 =?utf-8?B?ZGZwWTY4cWJKb2VFSER1Ym1CRlVZSGhvTlpIRFNJRWttN0x3bXl6VTZMSDdS?=
 =?utf-8?B?bXJaS0Q2SVNUZDVWdXlwUjlFcG9uVmFMeExXanRtVzRpaWpvcFpSVVVnZXpR?=
 =?utf-8?B?Yy91SWlQaHFURlhMK29xSUhLZWp5ZGVRWTJOcmE1YlQzMTQ5eVBhMDJZVElp?=
 =?utf-8?B?b1NGWmZBUStTYnlMVjJDRVJpV0F3YVVhWmtGb0owellvUXdHRnEwenAyNDdn?=
 =?utf-8?B?bkF3UmhUUUZqdWhUaWk1RDN0NlNKRVllOFRtK3ZybXlseEZuSzJnQ0QvMXBO?=
 =?utf-8?B?MXpjd3pyWjlRRVBDcUZubWR2REVtY01RR2dZUUlIMXdJbG9IUFpFb2xVQ0ZJ?=
 =?utf-8?B?SEJ5b3RaWWNyaWhmSkxwclZpSG5McWxLd1pTMWN5cUtVUXFIbGRtby9PeHh0?=
 =?utf-8?B?aUVuV2VHaElSRjYvbmg5OWlmbFlHL1BpY3pQY21zQXp1R284UGhseFVvVG44?=
 =?utf-8?B?aWtadlVHdEZJZ1ZFNjRmMEhkVDBrRGZsaklGUlVrTGFGOUhHZndKYzZNbHFz?=
 =?utf-8?B?SFI1T0c0OUgxWkRJWmpUNHRmSTNxbCsyck1CaEVLK1AvVllxdXhwd05qbnkz?=
 =?utf-8?B?RW93eWlrbWd2WktQNmN6U29GVDJPOURXbWQ2cFE1eEhNdHlQMm93ek9QZDFD?=
 =?utf-8?B?MnhnVWRaUzJadTRXYWJCUm9CU1VQdVd3bWNmajNMZWx5SmlPcTN3RXNqZndC?=
 =?utf-8?B?b2ZZaGtKZ3JQZFN5dzMxaElaTytxQmdROFlsR3ZuaitxQTJkZ0ZIMWRmcjVu?=
 =?utf-8?B?QlNlYk80bmNyRFhvR05PRDk2WVNqV3BrZng4WjBvclJId29LL09JVi9TWjBP?=
 =?utf-8?B?QkNnQkF2YXdSampvdElsOGdIREpnU2lwdHFPVkQrM1VOeldWM2xzK2tBYXFq?=
 =?utf-8?B?cDNzQXhNQzBzK2dFZ0JxMjlsanRpUGN0SVhlN05Tdlp0VGNnVGQxWHdDRndq?=
 =?utf-8?B?SHprSkorNEFnWDNSUXplTitmNFdOUXlTTVhhekVuTXZPTzc4blVvTi9yTnZ2?=
 =?utf-8?B?blVJQjlaU3dLRHhSdGJEakRDWXpRTkQ1RzlKYytaTGZOZDhmR0IzdjRlVUk1?=
 =?utf-8?B?YVVXb2VmdzhhL0xidFNPNnZnUEM5TXVlSWlNSzdqakZiS0d0WndvV0tCRXA0?=
 =?utf-8?B?QkY0dGcwWjFrRWNBalA3MVN5ZHl5VlVrTnhZb2xGb0hpZ3hycjdCaGFwbksy?=
 =?utf-8?B?NGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c8dd5f86-e3dd-4072-6eb8-08ddeeb9b03c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2025 09:25:45.0700 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CH4Qfj5pMOzRp1b+QsOPH2EUgfRVX6Dce+F2WT6yhwfD2Sheb+T8ahjnvO17/OpJddBDoIIwa0c2QChuaktMX6hRL00HHatlBWTLakiq+QM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7990
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

There are two unsafe scenarios in that function:
 1) drm_format_info_block_width/height() may return 0 and cause
division by 0 down the line. Return early if any of these values
are 0.
 2) dma_addr calculations are carried out using 32-bit
arithmetic, which could cause a truncation of the values
before they are extended to 64 bits. Cast one of the operands
to dma_addr_t, so 64-bit arithmetic is used.

Fixes: 8c30eecc6769 ("drm/gem: rename struct drm_gem_dma_object.{paddr => dma_addr}")
Cc: Danilo Krummrich <dakr@redhat.com>
Cc: <stable@vger.kernel.org> # v6.1+
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/drm_fb_dma_helper.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/drm_fb_dma_helper.c b/drivers/gpu/drm/drm_fb_dma_helper.c
index fd71969d2fb1..00aaad648a33 100644
--- a/drivers/gpu/drm/drm_fb_dma_helper.c
+++ b/drivers/gpu/drm/drm_fb_dma_helper.c
@@ -85,6 +85,9 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
 	u32 block_start_y;
 	u32 num_hblocks;
 
+	if (block_w == 0 || block_h == 0)
+		return 0;
+
 	obj = drm_fb_dma_get_gem_obj(fb, plane);
 	if (!obj)
 		return 0;
@@ -101,8 +104,8 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
 	block_start_y = (sample_y / block_h) * block_h;
 	num_hblocks = sample_x / block_w;
 
-	dma_addr += fb->pitches[plane] * block_start_y;
-	dma_addr += block_size * num_hblocks;
+	dma_addr += (dma_addr_t)fb->pitches[plane] * block_start_y;
+	dma_addr += (dma_addr_t)block_size * num_hblocks;
 
 	return dma_addr;
 }
-- 
2.34.1


-- 
Best Regards,
Krzysztof
