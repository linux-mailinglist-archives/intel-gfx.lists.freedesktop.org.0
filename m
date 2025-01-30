Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ECF0A229D3
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 09:49:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF76710E2BF;
	Thu, 30 Jan 2025 08:49:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n/jZv1ib";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B1F210E2BF;
 Thu, 30 Jan 2025 08:49:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738226975; x=1769762975;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=rcnPXnlVrGjY78Zs82iKOk8iUSgNSU9ICxR4FXSh020=;
 b=n/jZv1ibq9V9FKEcEPL8z3avB17cNEEpzWzYT+GEJoFVvNOUAPCgEjEs
 NvJ71FkQZ4peFy19C07EYyGkFTVsWP008p0UceGKi7l8TaFtfUIL5q2UU
 Lpu0jPLvm2aGlx5GHWhAPsFGDn0YiO9xMMpCHMp9+W1Yqlq1HhaFL7WAb
 XwDmzVZgue6aeaONK6s38RHRwHj198+GO9drOx60l/xbIhiOUqS60f8+i
 w4RUrOT9q2/tYvfL/rVFyGDuEieaQT0j1hi0fLRD0WmM40LZtFvFbr9Lm
 QIBRWjqGUOhhRPtkCVhh3acjhHQVnZjGXgHJ+24pPye2aA4seupwKZN6K Q==;
X-CSE-ConnectionGUID: HTuzLqk+TqyqZi+YdcjHcg==
X-CSE-MsgGUID: /uhJz/naQyalzva6SmRv5A==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="38867218"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="38867218"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 00:49:33 -0800
X-CSE-ConnectionGUID: IsWzweeqQImxxihnkpZtUw==
X-CSE-MsgGUID: LQrCPHp6QeS0/FdH6BGyMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113276058"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2025 00:49:34 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 30 Jan 2025 00:49:32 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 30 Jan 2025 00:49:32 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 30 Jan 2025 00:49:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xrdFvsq5aV+Ou1/JIW0wbXqjwSiBrLT4H1TiGdU+1rJRNKbw9Z7F4vbQvzZD5DieyDF7vQWLaaP5tNg8oGRFQ/lHUHY/zy0XaYVXnb0mmxZ+YjRzviSn59nDTtH8MtPbxLBENPB/v+K92sk0/Ut/6rjUNmVR+qUAMFkH2lteLcZHA4ptTVW6P9K9SNX/k9LvfGg7n9ybCaok5ZzdezjlSvZkBdc5R5Nxd5TMEzc9SWWPW0Tnofl0dat0EevrWcGW4fB91x14guEDTJU50tlbdfHGuJTtszPUNfJQkjiyxEasFzJtfjWQLCcDBasIrnorGjxVK4KITQvdgx9FLyTNkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/p+cKCwCfHB/sF8Wz5jfmKNzchHpiVeLFnvv/96Vnd8=;
 b=JjUtlSfiJsnj1sEMl4hdOjQRTCGwz/Lel0+yryDlleQE11Jw4EDGZJejtVigyTQptOeRQFvn2uEUBxPdTKYVribOwrZn0QvDG7cFHSgqOOh9MO9pAwjgGigyHMHin7inj1tY7ynh5f8bxJ9X4G8Qy/9fdrSEiIRvCxn17qgzctPut59SqkpzRFeRQRuVNjMswNgpkiwxsc9oHrAom96gVMwKGTfDBBCCtQam5jpjxh4nDlpVyDxLLwS/Z500NMCN7tRPn54oW1aHtD3jNAgZhOD4UtpYE5xKU2offi0v/s69cvvbAK9trr78BxAWpVygf+lvBxauNI/btH3FQwnc1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB6974.namprd11.prod.outlook.com (2603:10b6:510:225::16)
 by SA1PR11MB8253.namprd11.prod.outlook.com (2603:10b6:806:250::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Thu, 30 Jan
 2025 08:49:30 +0000
Received: from PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a]) by PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a%4]) with mapi id 15.20.8398.017; Thu, 30 Jan 2025
 08:49:30 +0000
Date: Thu, 30 Jan 2025 14:19:24 +0530
From: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 3/4] drm/i915/dmc_wl: Add extra_ranges debugfs
Message-ID: <Z5s9FBq-MBidsqKl@bvivekan-mobl1>
References: <20250117220747.87927-1-gustavo.sousa@intel.com>
 <20250117220747.87927-4-gustavo.sousa@intel.com>
 <Z5s3slC8sQm6NGDY@bvivekan-mobl1>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <Z5s3slC8sQm6NGDY@bvivekan-mobl1>
X-ClientProxiedBy: PN3PR01CA0180.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:be::17) To PH8PR11MB6974.namprd11.prod.outlook.com
 (2603:10b6:510:225::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6974:EE_|SA1PR11MB8253:EE_
X-MS-Office365-Filtering-Correlation-Id: 38f29908-a78e-45af-454c-08dd410b0297
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S085YjVGamdqOFVyajcvdkRXR1c2T0Rrd1dFMmEvamhmVmJmeiszTyt2OUNN?=
 =?utf-8?B?QjR5cjZOb0FBYm1RMkllaUZSWHdkdmtwQzNpZ3hlQytlSlNjMXBkOFQyZFN1?=
 =?utf-8?B?UXBhY09rWWdJUGZnVXVzSTAxRmllZjZ5ODEzcmlWYlVpTVgzNHBmU0Uwc0NT?=
 =?utf-8?B?cWc1d2dHYkMxdkpjVDE4ZldNK0JJRElibVpieGV5d093UHJwSTV2eGk2RDNI?=
 =?utf-8?B?Umo1TW1rZlducW9vVSs5VFJEbEJuckQwcFdvMzJZOU1CL2drWVphS25KLzZV?=
 =?utf-8?B?Uk5rWEdNMXk1N2FVMGtTcjFUbUFCR0NFK0NXc0lYRUZhTU85MFpuYXNSOXBO?=
 =?utf-8?B?UU1UTE9CNXhmMm5HOG5JZlBSbkgyQTBPdjJPNnBCc25RbGFkTTNEbFI3bjNl?=
 =?utf-8?B?WlYrNzB3N05zaUxSS1luM0JpZlFHVC9GT2hoU2o3dlozZGU0SjlacXdzMEtz?=
 =?utf-8?B?bVZRNjdYNVhwVEdManR2UGVEREFYSTNVVnh0RlNLWUo5c3hyR0x6Nmx1RXh1?=
 =?utf-8?B?K01UdE1yMUVhZjI4THRrMTlUT09XU0dYS0hkUkR1V1BVVEV0T2Y0bmNhSGYx?=
 =?utf-8?B?cGY4Q3VOd3B6aVlHbFFscytkMDZsWnZXMGFweHNJelU0MmZKNUhpcW9GSEFO?=
 =?utf-8?B?SlNabkpySEczdkR1TlBXTjE1SmpDVXVsWFlhc2s0c2pOcFh6UkdXNFNHd1Bh?=
 =?utf-8?B?N1NvMDRrY2FUcS91VXRWK1pBakU0UjRFZmltMFNuMXBQNDFuV0ZCRDNtTzNT?=
 =?utf-8?B?RXRrbXllS2s2UWJrRC9MVG55Q0ZTMEpRWFhWM1UvS0VkeXpXM0lSUVZ6aWdY?=
 =?utf-8?B?NzhnTFN5RXJkbytRZnljUzhEbWpMNmhXOGRGM2dxT2JhbGtwcTh0dFA1cjJw?=
 =?utf-8?B?T1llbkRiRkozRWlucWRmUjlseDMyalZHekhQMGhCdlh5ZlZEczA0aWxPWHNl?=
 =?utf-8?B?TFk1VUYvYmNkRHVHQzkwQ3hkODFEeUR0bkVaSjFHd3kxQTJBT0RpZFExQzBn?=
 =?utf-8?B?WnVzTFQ5cGlPbHBPQnI1bnNKczVDMGtJMnhCZjAwRk1XWXAvc2IzTW41Uk8v?=
 =?utf-8?B?MTVGK1VuWTNGbTlGNlRReVdmVHpMeXk2dGJrSjExbitRdFhQWWUwdlBFcXRW?=
 =?utf-8?B?RlJ6bW5hUmZXQTZ4ejNnMGJoVkVCMjdKMVVVdnNPR1I3dldzTDY1Z3RVcDZW?=
 =?utf-8?B?THo3SG9vQUxhZndTcEFaK3FKVk1BcExQV3dUdmtTNTF1UzNXZVhubjZ3SkJj?=
 =?utf-8?B?UEZoRkg3OFlHMTBjSlhadEZscnhFcVNhaElPWDB6TVZJMFdKZ2dDcmwxdUJO?=
 =?utf-8?B?L0RVS0FMUDlhSWpKM0ZIZ1Nxc3NiVTdKZHYxWlJhbVZydGNVZG9rSlVjUmV1?=
 =?utf-8?B?cnh6L0YyQTJJczdjZ1NMNy8vWjE2QzBxQi9KMGJwQ3Z3SmFBSndreWpRR0pC?=
 =?utf-8?B?U0IvSk1XOVFleTUzdmkzM3psVzdJaTlXN0RZcWRGd05uRjRMVjF0ZnR4Q3lK?=
 =?utf-8?B?WVlyNGtrWE1CWkxRWHI0RXE2WUtFdFdzQnNFZ3dyNWdmL1A4UnNMZ25tVU53?=
 =?utf-8?B?SjYzZmtrZzJoTFB5bE5ZNFVwYjdydHNkY2hDSE43OTRtM1hpZlZwR0krSjNn?=
 =?utf-8?B?MXVEUlJSTGFaWWVmMjdlU1dKZ2hQQnEwUHZWdFlrQkZkVmpYUWlSem5BMXdH?=
 =?utf-8?B?ZUxqN0tLWkRUU0pGdGg2NldLTThaVk9HSGRJOWNrMWdNTmsyckdxT2IrZWFY?=
 =?utf-8?B?Vlc0VGd0S0ttM0lMdVhGMmh2QWtUdVhCdDN1a0F0d2FUTSticzllVE9sUzFV?=
 =?utf-8?B?eDl4R1NtcGFSZWU1ejMxemxuRjZ6cTdQdFdPbVdXaFFUWTl1QXdlU2k5Ujd4?=
 =?utf-8?Q?jBWSaAq/AYxAE?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6974.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aTYwVURVVWlpaUR3UFJiRXdpZGxGZ2dtdzQ2TjV2Z3orV2d6d0NVdG1UdEV6?=
 =?utf-8?B?emVUSmZHSEhiaWJFWW1Xd00yOE9VMVhKeTl0a2ZXU1BDQmFnMDR5ZWJtbHg4?=
 =?utf-8?B?T3RTOXYyQjEwSVpNL2JsT2hHbndsRHpTMGJvSjFzVDlLemZkbFI1aVRXeGgy?=
 =?utf-8?B?R3htdGJsWlRZM1BjcS9PMzZJWHdSMEk0TlRBdGxWZEMzdUsvM0VHNW1obkRR?=
 =?utf-8?B?dlRWUnZNdkx6ZWErNURTWSsrUlUwa1VLOFFibDZJQ0p2L21GZWg0TTY0YWRJ?=
 =?utf-8?B?S1QyQ2JRZ1h5Ly9ybkdVZ2xDUTRkaStxckpHMklCQitxNndNQXVTeXo0ZWMr?=
 =?utf-8?B?WWZYWXBtK28rOUdBZ3N4SjRFNENWaVhLZW9peXBkWFV5THp3VWV1dW5RRUdK?=
 =?utf-8?B?Q3hjUDRnZW1BU05FQmxEVkJIVUx3SklkV1RxRU9PMm5nS2FwZ1Y1a0RRNVpS?=
 =?utf-8?B?cWNFZ0F2Z1lrOGZCSzdjNGZGdUtKSWxuNnNienFmU0hpemN6QU93aWx6b0lV?=
 =?utf-8?B?c21za25tT0ZML21iSzB3WUpJZ1FkN3kyOXZKcU14N3BWdE9NZ0VSdy9QYU9Z?=
 =?utf-8?B?eVRUdmJyMFgvWC9LcGx2T2xGdkhJS21kdWdNVUNWNkNXelJ5RlZqSkxPN2x6?=
 =?utf-8?B?MG95SGZscDBxUE5Tdzl1QUR6VG5obCswanZYZ2J3YmNIeEg2K0tDUEhicXR2?=
 =?utf-8?B?a1N2WnZyTEVhNW50TWkxY3dJWkxjU1I3R3hyWERkU1NLMVBKY21tQmdXdVY5?=
 =?utf-8?B?ZlgyVnVRYUFXZ09MUmhucEpMK3dXYnV5TnJPMW02UXFSVHBNbDAwZ3krOG5x?=
 =?utf-8?B?MHdzVnJIZlArMkxpcTBwMGFWcVh6RFo0Mk1RYVNJUzIzR25xQ3ZPMWFERnZj?=
 =?utf-8?B?MkpmeHdtZDV6cGFCYzFpYmp5aWdseXhQZWVPRjBTanlzRXZTUXNYZUpWU2VP?=
 =?utf-8?B?T3ZxQTVQZHBjWTQ3U0xtOUVkK2lzUm55cUpVWElML3ExcVdsc3JXZm96dDFV?=
 =?utf-8?B?NjNOUWljRmg0bGNVblJJVjR5bE5lNUdyQUZ3TlJtZnJKTHFCVTBnTzM2OGlh?=
 =?utf-8?B?bTRaN2ZNSzRrcis2QmVyM1YwUktGTmV4aTJHZkRiSkJWZjVOVjdCMzFHNTJp?=
 =?utf-8?B?ZXl5WXJCS3U3UFUzV3hvNThzQ29MRlZRUE1oRTY5bjlBbUVYWXU0WFQ3cVNr?=
 =?utf-8?B?aGZxSU5VU0xuU0NLL1RZSER2SVB4NkpLemc3c01ldXRRc3Urdnh3SDZxTmZz?=
 =?utf-8?B?c01YbkNSNEhoUUlDZ0VFQW9iQS8xUnlrSEQ0akF6cWdtTVJKVUI4MXdwdDkr?=
 =?utf-8?B?MzArVTRFaUlYdmU2QU9GVEowb1R2cW1Sa0sxVXorV2RLa2JYdzcrUTJLZjJx?=
 =?utf-8?B?VlNMTkJ5WVZOODlBUXpMcnBkNlp5em5DYk5oWG1meE1tWlR3VzRwdnJDMnh0?=
 =?utf-8?B?QnN5Mi9MMWY2U1dLTmUwQ1pKcGthQzVSUmxzOE4xRW9LRlAzcVZ6OTFWNE5h?=
 =?utf-8?B?cjBzZWhwajJjclA3dTJpNnRvRElxTjliV0ViT2trRkRvNzlYSWROeDZJNW1N?=
 =?utf-8?B?U0JtN1ZuVHJhT0xvbzdkV2RWMGl3Y0hoVkNQQWRDcWNYVzhrVnBzRHRjRjdH?=
 =?utf-8?B?N2U5Qy8yODhPbkpBaTczZkRjYVBkZ0YydVRTUkhHTlp0ZzFVSWJOb1Y0MVNh?=
 =?utf-8?B?OVFFRDUyQnpJN29PdERMa1BYRkVZdUdOWU0wZ0hlTzZNb3RrZUNmbEswMFpB?=
 =?utf-8?B?UCtTRnRJS0d1dUFmcWlsNUhhMTlTWW44QTJBRHppOE1NeS9RWkxSbS9lRjZk?=
 =?utf-8?B?ZnZabG1ySlhpYlhEUkN4M1ludUNOZUhnRS9rYlBQVmtUSTAzQThTT05YcXNo?=
 =?utf-8?B?cU5ibkZqOGNMc3o4UXh0TEVpMy9iM29OdnZFQ2tDenhaRWpBempVbmswZk52?=
 =?utf-8?B?ME41MjFEdnpjK2lOY0ZvRFVPZ21nLy9iSFpyNXZDOXJBTEx6aWZxKzJRZDJV?=
 =?utf-8?B?NHVIN3ZkRHRwT1U2OTVDQ2hFaEFkSkN1STJpaDZaZHI4OGR0cVJLMmZVTEdW?=
 =?utf-8?B?enIrRkRuSUtJQUkvcUlMRVJNZXFKa1RDQ2JHaCsxTkNsNTFiRERiL29DNTF5?=
 =?utf-8?B?YVpheFlna09PMW1rQzd2OGRDTmt4cm5VdkU5aVJ1L2VhQWNJTno0bDFlUEJB?=
 =?utf-8?Q?IWk5T4rSCrG+vqJLLEqXK48=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 38f29908-a78e-45af-454c-08dd410b0297
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6974.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2025 08:49:30.1604 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AKRJRH9HhY+MyzBWFX/CZ5p5mukid4pLFkJtK73WOC+3RA7ADXheF9a/y468Uf/NYCQ4UE69FN4h2XwzqmIjSDSl50LZ9dP/gceQXr8cIiBBnfUBEjRpLQSqnBiztpzC
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8253
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

On 30.01.2025 14:00, Vivekanandan, Balasubramani wrote:
> On 17.01.2025 19:06, Gustavo Sousa wrote:
> > We already have a way of finding the set of untracked offsets for which
> > there has been one or more MMIO operations via the
> > "intel_dmc_wl/untracked" debugfs interface.
> > 
> > However, in order to try adding one or more of those registers to the
> > set of tracked offsets, one would need to manually change the source
> > code and re-compile the driver.
> > 
> > To make debugging easier, also add a "intel_dmc_wl/extra_ranges" debugfs
> > interface so that extra offsets to be tracked can be defined during
> > runtime, removing the need of re-compilation or even module reloading.
> > 
> > With "intel_dmc_wl/untracked" and "intel_dmc_wl/extra_ranges", one could
> > even come up with a search algorithm to find missing offsets when
> > debugging a failing test case in a similar fashion to git-bisect. Such
> > an algorithm is subject for a future tool, probably implemented in
> > another repository (e.g. IGT).
> > 
> > Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
> 
> Looks good to me.
> 
> Regards,
> Bala

Forgot to add

Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Regards,
Bala

> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_dmc_wl.c   |   7 +
> >  .../drm/i915/display/intel_dmc_wl_debugfs.c   | 254 +++++++++++++++++-
> >  .../drm/i915/display/intel_dmc_wl_debugfs.h   |   7 +
> >  3 files changed, 267 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl.c b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > index 3686d4e90167..c9740250be73 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl.c
> > @@ -276,6 +276,13 @@ static bool intel_dmc_wl_check_range(struct intel_display *display,
> >  	if (ranges && intel_dmc_wl_offset_in_ranges(offset, ranges))
> >  		return true;
> >  
> > +	/*
> > +	 * Call to check extra ranges from debugfs only as last resort to avoid
> > +	 * taking intel_dmc_wl_dbg's spinlock.
> > +	 */
> > +	if (intel_dmc_wl_debugfs_offset_in_extra_ranges(display, offset))
> > +		return true;
> > +
> >  	return false;
> >  }
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
> > index 41e59d775fe5..1493d296ac98 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.c
> > @@ -3,6 +3,8 @@
> >   * Copyright (C) 2025 Intel Corporation
> >   */
> >  
> > +#include <linux/kstrtox.h>
> > +#include <linux/ctype.h>
> >  #include <linux/debugfs.h>
> >  
> >  #include <drm/drm_device.h>
> > @@ -13,6 +15,7 @@
> >  #include "intel_dmc_wl_debugfs.h"
> >  
> >  #define DEBUGFS_UNTRACKED_BUFFER_SIZE_MAX 65536
> > +#define DEBUGFS_EXTRA_RANGES_MAX 255
> >  
> >  /*
> >   * DOC: DMC wakelock debugfs
> > @@ -31,7 +34,8 @@
> >   *   offsets to be tracked and we fail to realize that.
> >   *
> >   * To help capture these cases, we provide the intel_dmc_wl/ debugfs directory,
> > - * which exports a buffer of untracked register offsets.
> > + * which exports a buffer of untracked register offsets and also allows extra
> > + * register offsets to be tracked by the driver.
> >   *
> >   * Untracked offsets
> >   * -----------------
> > @@ -78,6 +82,43 @@
> >   * Once done with it, the logging can be disabled with::
> >   *
> >   *   # echo 0 > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
> > + *
> > + * Tracking extra ranges
> > + * ---------------------
> > + *
> > + * After looking at a list of untracked offsets via intel_dmc_wl/untracked, it
> > + * is likely that one would want to check whether tracking a suspicious
> > + * set of register offsets (i.e. asserting the DMC wakelock for them) would
> > + * solve a bug.
> > + *
> > + * Instead of adding the offsets manually in the source code (which would
> > + * require re-compiling and reloading the module) the intel_dmc_wl/extra_ranges
> > + * debugfs interface allow defining extra ranges during runtime, which can
> > + * significantly speed up debugging time.
> > + *
> > + * Every write to intel_dmc_wl/untracked defines a new set of ranges to be
> > + * tracked. The input format is a whitespace-separated list of ranges and each
> > + * range is in the format <start_offset>..<end_offset>, with ..<end_offset>
> > + * being optional. Note that <end_offset> is inclusive.
> > + *
> > + * Examples::
> > + *
> > + *   # echo 0x44400..0x4440c \ # Track a single range of 4 registers
> > + *      > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
> > + *
> > + *   # echo 0x44400..0x4440c 0x44410..0x4441c \ # Track 2 ranges
> > + *      > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
> > + *
> > + *   # echo 0x44400 0x44410..0x4441c \ # Track a single register and 1 range
> > + *      > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
> > + *
> > + *   # echo \ # Do not track extra ranges anymore
> > + *      > /sys/kernel/debug/dri/(...)/intel_dmc_wl/untracked_size
> > + *
> > + * The new set of extra ranges take effect after the write operation, meaning
> > + * that the next MMIOs made by the driver for registers that match those
> > + * offsets will assert the wakelock (besides the offsets already hardcoded in
> > + * the driver).
> >   */
> >  
> >  static int untracked_size_get(void *data, u64 *val)
> > @@ -176,6 +217,189 @@ static int untracked_show(struct seq_file *m, void *data)
> >  
> >  DEFINE_SHOW_ATTRIBUTE(untracked);
> >  
> > +static int extra_ranges_show(struct seq_file *m, void *data)
> > +{
> > +	struct intel_display *display = m->private;
> > +	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> > +	unsigned long flags;
> > +
> > +	spin_lock_irqsave(&dbg->lock, flags);
> > +
> > +	if (!dbg->extra_ranges)
> > +		goto out_unlock;
> > +
> > +	for (int i = 0; dbg->extra_ranges[i].start; i++) {
> > +		if (dbg->extra_ranges[i].end)
> > +			seq_printf(m, "0x%08x..0x%08x\n",
> > +				   dbg->extra_ranges[i].start,
> > +				   dbg->extra_ranges[i].end);
> > +		else
> > +			seq_printf(m, "0x%08x\n", dbg->extra_ranges[i].start);
> > +	}
> > +
> > +out_unlock:
> > +	spin_unlock_irqrestore(&dbg->lock, flags);
> > +
> > +	return 0;
> > +}
> > +
> > +/*
> > + * Parse *p to match the pattern <start_offset>..<end_offset> and store the
> > + * offsets into *dest, if dest is not NULL.
> > + *
> > + * Leading whitespaces are ignored and ..<end_offset> is optional. Both offsets
> > + * are expected to be expressed in hexadecimal.
> > + *
> > + * The pointer *p is updated to point at the next character in the string for
> > + * parsing a new range.
> > + *
> > + * On success, 1 is returned if a valid range was found and 0 is returned if
> > + * there is no range left to parse. On error, a negative error number is
> > + * returned.
> > + */
> > +static int parse_single_extra_range(struct intel_display *display,
> > +				    char **p,
> > +				    struct intel_dmc_wl_dbg_extra_range *dest)
> > +{
> > +	char c;
> > +	char *s;
> > +	char *range_substr;
> > +	int err;
> > +	u32 val;
> > +
> > +	while (isspace(**p))
> > +		++*p;
> > +
> > +	if (**p == '\0')
> > +		return 0;
> > +
> > +	range_substr = *p;
> > +
> > +	/* s is the <start_offset> substr */
> > +	s = *p;
> > +	while (!isspace(**p) && **p != '.' && **p != '\0')
> > +		++*p;
> > +	c = **p;
> > +	**p = '\0';
> > +	err = kstrtou32(s, 16, &val);
> > +	**p = c;
> > +	if (err)
> > +		goto out_err;
> > +
> > +	if (dest)
> > +		dest->start = val;
> > +
> > +	if (**p != '.') {
> > +		/* only the "start offset" was passed */
> > +		if (dest)
> > +			dest->end = 0;
> > +		return 1;
> > +	}
> > +
> > +	if (*(++*p) != '.') {
> > +		err = -EINVAL;
> > +		goto out_err;
> > +	}
> > +
> > +	/* s is the <end_offset> substr */
> > +	s = ++*p;
> > +	while (!isspace(**p) && **p != '\0')
> > +		++*p;
> > +	c = **p;
> > +	**p = '\0';
> > +	err = kstrtou32(s, 16, &val);
> > +	**p = c;
> > +	if (err)
> > +		goto out_err;
> > +
> > +	if (dest)
> > +		dest->end = val;
> > +
> > +	return 1;
> > +
> > +out_err:
> > +	while (!isspace(**p) && **p != '\0')
> > +		++*p;
> > +	c = **p;
> > +	**p = '\0';
> > +	drm_err(display->drm, "invalid DMC Wakelock extra range: %s\n", range_substr);
> > +	**p = c;
> > +
> > +	return err;
> > +}
> > +
> > +static struct intel_dmc_wl_dbg_extra_range *
> > +parse_extra_ranges(struct intel_display *display, char *s)
> > +{
> > +	struct intel_dmc_wl_dbg_extra_range *ranges;
> > +	char *p;
> > +	int num_ranges;
> > +	int err;
> > +
> > +	/* Do a first pass and validate everything. */
> > +	p = s;
> > +	num_ranges = 0;
> > +	while ((err = parse_single_extra_range(display, &p, NULL)) > 0) {
> > +		num_ranges++;
> > +		if (num_ranges > DEBUGFS_EXTRA_RANGES_MAX) {
> > +			drm_err(display->drm, "Too many DMC wakelock extra ranges, maximum is %d\n",
> > +				DEBUGFS_EXTRA_RANGES_MAX);
> > +			return ERR_PTR(-EINVAL);
> > +		}
> > +	}
> > +
> > +	if (err < 0)
> > +		return ERR_PTR(err);
> > +
> > +	/* Now allocate and do a second pass storing the parsed ranges. */
> > +	ranges = drmm_kmalloc_array(display->drm, num_ranges + 1, sizeof(*ranges), GFP_KERNEL);
> > +	if (!ranges)
> > +		return ERR_PTR(-ENOMEM);
> > +
> > +	p = s;
> > +	num_ranges = 0;
> > +	while (parse_single_extra_range(display, &p, &ranges[num_ranges]) > 0)
> > +		num_ranges++;
> > +
> > +	ranges[num_ranges].start = 0; /* Sentinel value. */
> > +
> > +	return ranges;
> > +}
> > +
> > +static ssize_t extra_ranges_write(struct file *file,
> > +				  const char __user *ubuf,
> > +				  size_t len, loff_t *offp)
> > +{
> > +	struct seq_file *m = file->private_data;
> > +	struct intel_display *display = m->private;
> > +	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> > +	struct intel_dmc_wl_dbg_extra_range *old_extra_ranges;
> > +	struct intel_dmc_wl_dbg_extra_range *new_extra_ranges;
> > +	unsigned long flags;
> > +	char *kbuf;
> > +
> > +	kbuf = memdup_user_nul(ubuf, len);
> > +	if (IS_ERR(kbuf))
> > +		return PTR_ERR(kbuf);
> > +
> > +	new_extra_ranges = parse_extra_ranges(display, kbuf);
> > +	kfree(kbuf);
> > +	if (IS_ERR(new_extra_ranges))
> > +		return PTR_ERR(new_extra_ranges);
> > +
> > +	spin_lock_irqsave(&dbg->lock, flags);
> > +	old_extra_ranges = dbg->extra_ranges;
> > +	dbg->extra_ranges = new_extra_ranges;
> > +	spin_unlock_irqrestore(&dbg->lock, flags);
> > +
> > +	if (old_extra_ranges)
> > +		drmm_kfree(display->drm, old_extra_ranges);
> > +
> > +	return len;
> > +}
> > +
> > +DEFINE_SHOW_STORE_ATTRIBUTE(extra_ranges);
> > +
> >  void intel_dmc_wl_debugfs_init(struct intel_display *display)
> >  {
> >  	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> > @@ -198,6 +422,8 @@ void intel_dmc_wl_debugfs_register(struct intel_display *display)
> >  			    &untracked_size_fops);
> >  	debugfs_create_file("untracked", 0644, dir, display,
> >  			    &untracked_fops);
> > +	debugfs_create_file("extra_ranges", 0644, dir, display,
> > +			    &extra_ranges_fops);
> >  }
> >  
> >  static bool untracked_has_recent_offset(struct intel_display *display, u32 offset)
> > @@ -249,3 +475,29 @@ void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offse
> >  out_unlock:
> >  	spin_unlock_irqrestore(&dbg->lock, flags);
> >  }
> > +
> > +bool intel_dmc_wl_debugfs_offset_in_extra_ranges(struct intel_display *display, u32 offset)
> > +{
> > +	struct intel_dmc_wl_dbg *dbg = &display->wl.dbg;
> > +	bool ret = false;
> > +	unsigned long flags;
> > +
> > +	spin_lock_irqsave(&dbg->lock, flags);
> > +
> > +	if (!dbg->extra_ranges)
> > +		goto out_unlock;
> > +
> > +	for (int i = 0; dbg->extra_ranges[i].start; i++) {
> > +		u32 end = dbg->extra_ranges[i].end ?: dbg->extra_ranges[i].start;
> > +
> > +		if (dbg->extra_ranges[i].start <= offset && offset <= end) {
> > +			ret = true;
> > +			goto out_unlock;
> > +		}
> > +	}
> > +
> > +out_unlock:
> > +	spin_unlock_irqrestore(&dbg->lock, flags);
> > +
> > +	return ret;
> > +}
> > diff --git a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
> > index 9437c324966f..ae61217a2789 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_dmc_wl_debugfs.h
> > @@ -11,6 +11,11 @@
> >  
> >  struct intel_display;
> >  
> > +struct intel_dmc_wl_dbg_extra_range {
> > +	u32 start;
> > +	u32 end;
> > +};
> > +
> >  struct intel_dmc_wl_dbg {
> >  	spinlock_t lock; /* protects everything below */
> >  	struct {
> > @@ -20,10 +25,12 @@ struct intel_dmc_wl_dbg {
> >  		size_t size;
> >  		bool overflow;
> >  	} untracked;
> > +	struct intel_dmc_wl_dbg_extra_range *extra_ranges;
> >  };
> >  
> >  void intel_dmc_wl_debugfs_init(struct intel_display *display);
> >  void intel_dmc_wl_debugfs_register(struct intel_display *display);
> >  void intel_dmc_wl_debugfs_log_untracked(struct intel_display *display, u32 offset);
> > +bool intel_dmc_wl_debugfs_offset_in_extra_ranges(struct intel_display *display, u32 offset);
> >  
> >  #endif /* __INTEL_DMC_WL_DEBUGFS_H__ */
> > -- 
> > 2.48.0
> > 
