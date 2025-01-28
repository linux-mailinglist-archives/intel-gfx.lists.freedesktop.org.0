Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A91AEA20F33
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Jan 2025 17:52:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F0C6410E6D5;
	Tue, 28 Jan 2025 16:52:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AGyfnVkj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F53010E6D5
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Jan 2025 16:52:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738083165; x=1769619165;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=Jyj1NXz+wnQt7fLqhjYVsk66WhvzB2/fz1J9MMOLA7U=;
 b=AGyfnVkjaQUF7BPX+WBe5hi8khOrFhrLPrL/ULOD/NPBvLRP6H+yPiDd
 w1C1f8c55Nsk3Da1SoqiEEWfAuvreUiYWywkqLfjn8CUm197SIczkRxiC
 ZO+15kd5ctnpbBX2j8/c1rTsSw59G9HGJH3LyPp01mwk7LJt4tuj46Tus
 5mg9PnnZM2xarjUs1mkzzT6s/5fKC3ynkatK8i+IZQYjoGe7JDmLZDikF
 hpS7wLz/b31d4c1flId3CrK2fYob45vjsjj/uFKhn5GnYo4hQtCeMjkOG
 r0tgggXoH8Qdt02TCRgy7x+HT4cgEmWBK5/8f6lB1ZsoMHhxI0RWm+qhK g==;
X-CSE-ConnectionGUID: rFkfxOcESAGyppj/MgGV5A==
X-CSE-MsgGUID: vvs64a6LRVugXeCoLxBKQQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11314"; a="38680479"
X-IronPort-AV: E=Sophos;i="6.12,310,1728975600"; d="scan'208";a="38680479"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2025 08:52:42 -0800
X-CSE-ConnectionGUID: 2t16wB4dQC6CKYQcVpe0Eg==
X-CSE-MsgGUID: 81uFS42pQkmYupK1Z+nzRA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="113769092"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Jan 2025 08:52:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Tue, 28 Jan 2025 08:52:40 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Tue, 28 Jan 2025 08:52:40 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 28 Jan 2025 08:52:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TVKOXiqA/3GNsqupnRFOroF7c2e1HWywKNJmWq/6gU1d0kXDmNINB0NTtH26fZCu4+6Nv3YXH11RXJWD6EIVFZbjnldbgTEhm/h5MjnvApDBt+ak0HfAzGmbWFKCN4MTrsCFX4SUkLLX9BfXjLnmovm3rK3fTRRpJPvjWMmadSixRg0XJz6iozzlcY25XPABrINZQmPQ4DzG+WmGvTyx6VV60TFZwGK7p9sCJzRdZpsOxQqNu5ey/uH3zwjaCDDWKkm1KPMJ/GJlFqq5L8rGOgqRG37a6tagYY+AVjcB/1MaY5rFBKiQjR7gdUGplUnSA2wfZ72A+PjtRq1cethVnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yFKl2OV80tDZmr+lmSwqCJ+UKAt0qXYQ05Dgt9twcgg=;
 b=d16EeycTk41vABimABkSUo7htOBtK4PbblzJKZKUgbVRw+iAUcPwqazfR0ctFiDzlFDDT1cmBtWGCfasJMmCh0VlzFHhv7iO4yRc7HQ87nT8UJ7Cvj7wQhFlROCODhUijt3C55ADWHlziVtWQ56uabWURul+TxqfBkTyVNVoIlAuIdaQNzhcizJ6hWaFcVOP5RW/tv/8THezmG2vHTLHCXiNnWFbkSolZ0UUVGOj0gODhkvrByfcIHghU5MPxrUMCuYEPyAjqWLNH2CEOzGKH1m8FkMGOhAYwdMSLYUy3Q1D/0S3Q8+zOh09zlD50zNdTuG03ShXM461fK2zeCQe9g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by SA2PR11MB4826.namprd11.prod.outlook.com (2603:10b6:806:11c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.17; Tue, 28 Jan
 2025 16:52:34 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%4]) with mapi id 15.20.8377.021; Tue, 28 Jan 2025
 16:52:34 +0000
Date: Tue, 28 Jan 2025 08:52:31 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: "Maurya, Ranu" <ranu.maurya@intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFp?= =?utf-8?Q?lure_fo?=
 =?utf-8?Q?r?= drm/i915: Add Wa_22010465259 in its respective WA list (rev3)
Message-ID: <20250128165231.GO5109@mdroper-desk1.amr.corp.intel.com>
References: <20250116093115.2437154-1-ranu.maurya@intel.com>
 <173712235524.721130.6721338394306486980@b555e5b46a47>
 <SA1PR11MB8448036068B294FB5DAC1F96FAEF2@SA1PR11MB8448.namprd11.prod.outlook.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <SA1PR11MB8448036068B294FB5DAC1F96FAEF2@SA1PR11MB8448.namprd11.prod.outlook.com>
X-ClientProxiedBy: BYAPR11CA0086.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::27) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|SA2PR11MB4826:EE_
X-MS-Office365-Filtering-Correlation-Id: e43af468-bf21-4d55-66cb-08dd3fbc2970
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|13003099007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MGJHUnlOcUtuaXBSb0lrVzBQSHVuN0hkRGtFbUNuL0ZuN3hCUkV0OXk0aUtX?=
 =?utf-8?B?V1lWMjRHQm1EQ05pckJPM0hiRzIrRVR0cmxMRlEzMEQvR2RKODB3NUVpSUI4?=
 =?utf-8?B?cWZ1bm5qZy8wS0xuMVhwaG4rMXFMazZuY21MZnVCeGRPL3NBbEgrYjh5TzIy?=
 =?utf-8?B?N2FNaXUvdGowbzFXVGxrTTVHbEM4Z3VndVY2WnE3aHdSZmw4QmxQZGwxK21L?=
 =?utf-8?B?aWZWaWVXTkJmZDFXTXdyejQvZG9LL3Z5UC8rVGJoeGZsbko2ZjdWMks1SUxY?=
 =?utf-8?B?dG1mbjd2MWZqb2lrMjF5T2RYRXFtQnAyVndtVnhLOVk3MEE0Q3J5aURiYmVG?=
 =?utf-8?B?TkRvdXJJcS9hSjIwSlpzUmtPUVhRbFBOSGdwRU5Nd0NMbmJjTXZNUmQzYUJV?=
 =?utf-8?B?aGVJcU92ZVdvRVBTMWxhUVRCaVp3UHdvNzBxRnRlQ1J2aWJQSFp5bWMvOUc0?=
 =?utf-8?B?bnZvazhKNGg3MlZoeUJNQ2dwdEkyRG8rQWFyd296U2NJUHdqV1U2UTJVdVdF?=
 =?utf-8?B?WDZZYmRvUk1rcTlOWVQ0d2NiRi9GdkhZQ1M2bVJTUkxWZVc3bGZqYXNqQi9k?=
 =?utf-8?B?MzFDeWJFL0p6d3owczBFOC9ULytiRTBGNElPUDJ5Q3llSVFmMmszUndBQldG?=
 =?utf-8?B?b0lwMzRCMVdlT3o4TW5sc3pka1NPV09uSVlrYXJDVlczTXZLWWVDTHNkYVY1?=
 =?utf-8?B?SmJXWi9XUlcxazFOOGpoR1lxNWRkU3dycnVqUlpzY3VFbDhyYTkwK2tydng5?=
 =?utf-8?B?WjFDLzhEWlFSa0FnTHA4NTZwcC9VRE9vTlQ3MjUrMlUxT05QMXAyYTdsdmtL?=
 =?utf-8?B?V2h0ZzgzZkozR011RU1tVXBWZHVyaFRuM1p6Nmh6MGNjdTRoRFE5b1BMaU84?=
 =?utf-8?B?Qjl2SXNWSWllSWdLY1BqSFNrZVlqMTg4QnBPUzZaRDNxSDhjQnFHdXQvbHJ1?=
 =?utf-8?B?RXFJVFBCK1FsalpFTDd5Q3V0NUg1dTJ0ZTRsMWwzeEx5NHcxQkJzNjJWYXZP?=
 =?utf-8?B?YUp6bitTMjYxRnk4RFJTWEMwa0hkU05kQ0NMZ2RkdkFrWUE4dVBUS2tTYVc3?=
 =?utf-8?B?dkR2bkd0Ti81QU9BK2JUdXVwZHRicXlIUHZYdmJLNDBBUzYxQXU4UUZRWDBt?=
 =?utf-8?B?bjNYZmF6WmJrOVlYdGRCalZhdmlySTBzNW8zeTNrQ3Z2K3ljYVJSZ1VHcTRK?=
 =?utf-8?B?Y240UEt0K3pBd05CT2thRTZkbGJweS9mVGVDZXZWcDQ4azBpR3grdmVBSTJU?=
 =?utf-8?B?c1l5bnZoMzIyZmw5Q3UwRG1hVDdrb2RWa0FiZHlzK0pmMDhUMnNnOU03SFZz?=
 =?utf-8?B?MWZ5OWhNMTBFRGZlU04rbG1BamZxVGZuaW5vMStpUklVTWVzR2RUeUxvUFQy?=
 =?utf-8?B?NDBnQVpQaXZuQXJidjBpQTlNQi90WUI0SEZTWFM3OUdLOEZHV3ZXYUFJM29l?=
 =?utf-8?B?K1Y2dU5MTkllSHRtWExUUkFneWRReG1kbTZTRHVVUU4yWGM1ZnNPNzd1RFZm?=
 =?utf-8?B?djhxdVBMa2tEc28velRjNkhrRGxEd2VoSmxNeWNpTnAzUWs0elFvWmpJY3U1?=
 =?utf-8?B?OGRHUVRJbkl5cEJtVWc3ZTlKK3pMak9FUlkvdU1hSS9DQk1qL0trOWRid2Jo?=
 =?utf-8?B?UmxDS1crWVRMWlZHUWRYRE44VnkyQit0cEl5bHNIZktYQnlzM1pWb3Z2VW56?=
 =?utf-8?B?TW9Ha3FLMW1DZXZ2R2hmY0QzdUlQMkJJc3BHcWlEVThhV0pTM25lYWFlVlJW?=
 =?utf-8?Q?WWp5vHr1b5FPtA51cs8yOVPSc68PHK6eim8t2gh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(13003099007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NFNjem04S2d0M29jRUlEY25OWGxiOVJwRy9WQVdsTXFzWmx3b3kyOG1OM3BP?=
 =?utf-8?B?dFJJT2g4OEdSeEtOUVN4MmlkQ2k4Z1FqeExoOThmc3lqM3JuNm5WOFVEelV0?=
 =?utf-8?B?dmxvL01saExHZXBrUDRZZkZtZ1IvTVpRWE1acVlrOGhYWmM4eFB6OVF1blN6?=
 =?utf-8?B?Q1Q3a1VuOWV1ckpWdTR1U01ZTWNnejFtSFJlNTVUdGdxVjJFemNtREdGUnBp?=
 =?utf-8?B?SjhBa2ZvUDhzamwrK0VEM3RNei85M2JtUlc1cjY5SWxKZTZORTlvMHFmbDZX?=
 =?utf-8?B?NG9EbmFzRGQrQnRobldCanh5SHdDcjdwR3RkVlVUa0ZMcC9uYU1JYmFKRnZR?=
 =?utf-8?B?Z3Z1anNUendhMWYvYnNLVGVxWFJFN3RBUG8zcndmS3RXa1JnNUlQTTZ3bExt?=
 =?utf-8?B?NTFya2tCWE5BQ1h1Y2tRcXpCeEFLejlIRXk4OEpBVGIxektrdEZ4aTZkQW9p?=
 =?utf-8?B?dnB5WlBxL1RMUGdWUUpaaDR1TkJxdlR2dVZoRDlvTnVUQ0JQUTNxUEgyRisw?=
 =?utf-8?B?Z2hDZ1l3R29HbHA4YmVGQnQzKzZ3UGZJV3U0V29JT1YrVWlyMmxyelN6N2li?=
 =?utf-8?B?ai9PSU1OVDdJNW53Z1RiWWFaTmpDWlVWeDhvcXh4d29HU0hEVGVpRTBXSW9t?=
 =?utf-8?B?TkVvMjZ1VTY3R29SZjQ4ZDBtZHpUVXRJazhJeHAzNnFvWWd0cnEvNTIzdnFK?=
 =?utf-8?B?ZXE2TEsxRkluNlBFVzVBS3FUWFlhSWRSaEp0emR2THdkQVdpS0NKVXRJWG83?=
 =?utf-8?B?Zkd5ZjRRQU1kRVJsTmdQTmI5T2NyYS83Umo4eE00aWJrNjc2Z1VJK2dETmhY?=
 =?utf-8?B?MnhYSmhVbk9sbXdtVEc3a3FaWTNObHhQVHZBTTZKemk3RTNxNDhnd2NQYUlW?=
 =?utf-8?B?TDJFTmE4YnlxL0pUZXNBVFBOQXNITmdBdVU1QzNZaHA1VUNHSFRCczF4eGp5?=
 =?utf-8?B?T01jYlZ6eEo5c2gwNHNTQ1cvTUZvR1lYSENTck45NmovSWhNSm1NcExIcnBK?=
 =?utf-8?B?Z1NtNkdWSUl5d3phR3Z4MUhad014RUdROFpUOGZlSEtvU1hBTWl1R3E5WkJi?=
 =?utf-8?B?cEllRG1YeG1NWU9nRVdVd25GUnkxN05yZ0lVdGQzR0Zzek85azRhci9sSDVR?=
 =?utf-8?B?bW5PRHA2TEM1d3duL1J6ekp0YkJtbGFmRndLRWxNQnNhdUo3RS9jZlJocnd5?=
 =?utf-8?B?THdOdm1NZWxrUU5yUklqTlpGSnYrdHlMd3EvMmRDeTVFek0xOUdoK05XV2Vt?=
 =?utf-8?B?ODNSWFBNT0gzSFFZL21uS3Bmdlo4OFBLNUtIakgrUG5xMkh3ckYzbURNMUI5?=
 =?utf-8?B?RkViSUJ2VXd6OGkzcUhMN2VnelVsOWkvNVQ1VTdwRWpvcFc3bjBrZXFubWlQ?=
 =?utf-8?B?eTNib2lmZm04aTZZZkdlY0VnK2VKSlhCWHlLNzVNTWYyWVpHSGMvWFBUOVJW?=
 =?utf-8?B?VjI5WHlqYVFUeUtCQnVvakZNSTBrZ1pTMkdXbDRSVzM3dkpkaTVvcjZmZHdL?=
 =?utf-8?B?NlY0RGV5QVBFU0c3SjhhQTZPcUxQc3lwanZyNE5hK1dTbmlRMmJTdFdVci9D?=
 =?utf-8?B?TDA5SGwwQ3pVWkcwOHNDc2Y1aXY2UTBUb1NzUnVwN2xGNStWMHZNUXk0SWVR?=
 =?utf-8?B?UGY4NGJ0VWN0cm53YUNibGY0U1V5b0s3NmlweWc1QlVVK1lVZTFKTGswWDBD?=
 =?utf-8?B?Z3Ava3ZqOHNPdWk4RTNjU0tkVkFEbHNSemZjOG9VTXIveW9vV05Kc3ViZWlH?=
 =?utf-8?B?VDBwL1NzQjJ3SU9aVyszMGVCTmRMSWtiYVBTNWtQdExxb1RUQUhUcG5oQ0Ni?=
 =?utf-8?B?R2U1UzV3ZDdBdnlHM3hSKzhYdjlJcHdRZDJ3MFVVVnhPUmVzcWcyU1Y2Sjli?=
 =?utf-8?B?MmpYQWxIN1lqNVRKT0x3ZHY3Q1hrN1poSWE3OTA3MTI1VU4rK3Z4ZWU5eCty?=
 =?utf-8?B?VzRhVVRDRjduT252Q0FIbFRMK3V6bkpibjRvbTNwWTlpYitkeXp4b1hwcytZ?=
 =?utf-8?B?ZGhXdVRhdnRGMldTRjduZE9BcmJyYzZjNnpDNUJuUjl3NjlBdkZ0OGZ1SEgz?=
 =?utf-8?B?WU5zUlNmaVkzdFprKzA4cms3dG0vaU1QYlo4eGt0NndmT0VkU2RaeE5YSXBp?=
 =?utf-8?B?RlBKdkFPMTFXY2tVVkU0SXlKaXMrdHd2MWQ0VVZpbmRrV0laWjlEYlhnMitV?=
 =?utf-8?B?VGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e43af468-bf21-4d55-66cb-08dd3fbc2970
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2025 16:52:34.1430 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PF6Ln7cZmjqzd7v4mlI/ATov+IQYz5xdRdx/9v0qPmmBwCzsfs8pxFhCSz2lgJobzKa06UVnAvu/xEcr7kwX9rs5oHidiGHvCN/SFDwrCN0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4826
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

On Tue, Jan 28, 2025 at 04:47:52PM +0000, Maurya, Ranu wrote:
> It=E2=80=99s a false alarm, since the patch only modifies a few comments,=
 and
> doesn't impact anything which might cause errors on EDID or FLIP

Applied to drm-intel-gt-next.  Thanks for the patch and reviews.


Matt

>=20
>=20
> From: Patchwork <patchwork@emeril.freedesktop.org>
> Sent: Friday, January 17, 2025 7:29 PM
> To: Maurya, Ranu <ranu.maurya@intel.com>
> Cc: intel-gfx@lists.freedesktop.org
> Subject: =E2=9C=97 i915.CI.Full: failure for drm/i915: Add Wa_22010465259=
 in its respective WA list (rev3)
>=20
> Patch Details
> Series:
> drm/i915: Add Wa_22010465259 in its respective WA list (rev3)
> URL:
> https://patchwork.freedesktop.org/series/143546/
> State:
> failure
> Details:
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/index.html
> CI Bug Log - changes from CI_DRM_15964_full -> Patchwork_143546v3_full
> Summary
>=20
> FAILURE
>=20
> Serious unknown changes coming with Patchwork_143546v3_full absolutely ne=
ed to be
> verified manually.
>=20
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_143546v3_full, please notify your bug team (I915-=
ci-infra@lists.freedesktop.org<mailto:I915-ci-infra@lists.freedesktop.org>)=
 to allow them
> to document this new failure mode, which will reduce false positives in C=
I.
>=20
> Participating hosts (12 -> 12)
>=20
> No changes in participating hosts
>=20
> Possible new issues
>=20
> Here are the unknown changes that may have been introduced in Patchwork_1=
43546v3_full:
>=20
> IGT changes
> Possible regressions
>=20
>   *   igt@gem_tiled_swapping@non-threaded:
>      *   shard-tglu: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15964/shard-tglu-9/igt@gem_tiled_swapping@non-threaded.html> -> FAIL<https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-tglu-9/igt@gem=
_tiled_swapping@non-threaded.html>
>   *   igt@i915_module_load@load:
>      *   shard-dg2: (PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15964/shard-dg2-3/igt@i915_module_load@load.html>, PASS<https://intel-gfx-=
ci.01.org/tree/drm-tip/CI_DRM_15964/shard-dg2-5/igt@i915_module_load@load.h=
tml>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15964/shard-dg2-=
7/igt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/dr=
m-tip/CI_DRM_15964/shard-dg2-8/igt@i915_module_load@load.html>, PASS<https:=
//intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15964/shard-dg2-11/igt@i915_modul=
e_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_159=
64/shard-dg2-10/igt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.=
01.org/tree/drm-tip/CI_DRM_15964/shard-dg2-10/igt@i915_module_load@load.htm=
l>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15964/shard-dg2-2/=
igt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-=
tip/CI_DRM_15964/shard-dg2-11/igt@i915_module_load@load.html>, PASS<https:/=
/intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15964/shard-dg2-11/igt@i915_module=
_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_1596=
4/shard-dg2-3/igt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.01=
.org/tree/drm-tip/CI_DRM_15964/shard-dg2-4/igt@i915_module_load@load.html>,=
 PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15964/shard-dg2-7/igt=
@i915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip=
/CI_DRM_15964/shard-dg2-2/igt@i915_module_load@load.html>, PASS<https://int=
el-gfx-ci.01.org/tree/drm-tip/CI_DRM_15964/shard-dg2-5/igt@i915_module_load=
@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15964/sha=
rd-dg2-8/igt@i915_module_load@load.html>) -> (PASS<https://intel-gfx-ci.01.=
org/tree/drm-tip/Patchwork_143546v3/shard-dg2-10/igt@i915_module_load@load.=
html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/sha=
rd-dg2-5/igt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/=
tree/drm-tip/Patchwork_143546v3/shard-dg2-4/igt@i915_module_load@load.html>=
, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-dg=
2-8/igt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/=
drm-tip/Patchwork_143546v3/shard-dg2-10/igt@i915_module_load@load.html>, PA=
SS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-dg2-5/=
igt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-dg2-3/igt@i915_module_load@load.html>, PASS<ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-dg2-2/igt@i=
915_module_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/P=
atchwork_143546v3/shard-dg2-7/igt@i915_module_load@load.html>, FAIL<https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-dg2-11/igt@i915_=
module_load@load.html>, FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_143546v3/shard-dg2-11/igt@i915_module_load@load.html>, FAIL<https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-dg2-11/igt@i915_mod=
ule_load@load.html>, FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwor=
k_143546v3/shard-dg2-11/igt@i915_module_load@load.html>, FAIL<https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-dg2-11/igt@i915_module=
_load@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
43546v3/shard-dg2-4/igt@i915_module_load@load.html>, PASS<https://intel-gfx=
-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-dg2-8/igt@i915_module_load=
@load.html>, PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546=
v3/shard-dg2-7/igt@i915_module_load@load.html>, PASS<https://intel-gfx-ci.0=
1.org/tree/drm-tip/Patchwork_143546v3/shard-dg2-3/igt@i915_module_load@load=
.html>)
>   *   igt@kms_flip@flip-vs-panning-vs-hang@a-hdmi-a1:
>      *   shard-snb: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-snb2/igt@kms_flip@flip-vs-panning-vs-hang@a-hdmi-a1.html> -> IN=
COMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-=
snb4/igt@kms_flip@flip-vs-panning-vs-hang@a-hdmi-a1.html> +1 other test inc=
omplete
>=20
> Warnings
>=20
>   *   igt@gem_tiled_swapping@non-threaded:
>      *   shard-rkl: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-rkl-6/igt@gem_tiled_swapping@non-threaded.html> (i915#12941<htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12941>) -> FAIL<https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-rkl-7/igt@gem_t=
iled_swapping@non-threaded.html>
>=20
> Known issues
>=20
> Here are the changes found in Patchwork_143546v3_full that come from know=
n issues:
>=20
> IGT changes
> Issues hit
>=20
>   *   igt@api_intel_bb@blit-reloc-keep-cache:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-1/igt@api_intel_bb@blit-reloc-keep-cache.ht=
ml> ([i915#8411])
>   *   igt@api_intel_bb@blit-reloc-purge-cache:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-17/igt@api_intel_bb@blit-reloc-purge-cache.=
html> ([i915#8411])
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@api_intel_bb@blit-reloc-purge-cache.h=
tml> ([i915#8411])
>   *   igt@api_intel_bb@object-reloc-keep-cache:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@api_intel_bb@object-reloc-keep-cach=
e.html> ([i915#8411])
>   *   igt@device_reset@cold-reset-bound:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-3/igt@device_reset@cold-reset-bound.html> (=
i915#11078<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11078>)
>   *   igt@device_reset@unbind-reset-rebind:
>      *   shard-tglu: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15964/shard-tglu-9/igt@device_reset@unbind-reset-rebind.html> -> ABORT<htt=
ps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-tglu-10/igt@=
device_reset@unbind-reset-rebind.html> (i915#12817<https://gitlab.freedeskt=
op.org/drm/i915/kernel/-/issues/12817> / [i915#5507])
>   *   igt@drm_fdinfo@busy-idle-check-all@vcs0:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@drm_fdinfo@busy-idle-check-all@vcs0.h=
tml> ([i915#8414]) +9 other tests skip
>   *   igt@drm_fdinfo@busy-idle-check-all@vcs1:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@drm_fdinfo@busy-idle-check-all@vcs1.=
html> ([i915#8414]) +11 other tests skip
>   *   igt@drm_fdinfo@isolation@vecs0:
>      *   shard-rkl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-rkl-4/igt@drm_fdinfo@isolation@vecs0.html> -> DMESG-WARN<https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-rkl-3/igt@drm_f=
dinfo@isolation@vecs0.html> (i915#12917<https://gitlab.freedesktop.org/drm/=
i915/kernel/-/issues/12917> / i915#12964<https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12964>)
>   *   igt@gem_ccs@ctrl-surf-copy:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@gem_ccs@ctrl-surf-copy.html> ([i915=
#3555] / [i915#9323])
>   *   igt@gem_ccs@ctrl-surf-copy-new-ctx:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@gem_ccs@ctrl-surf-copy-new-ctx.html=
> ([i915#9323])
>   *   igt@gem_ccs@suspend-resume:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@gem_ccs@suspend-resume.html> ([i915#9=
323])
>   *   igt@gem_close_race@multigpu-basic-threads:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-7/igt@gem_close_race@multigpu-basic-threads=
.html> ([i915#7697]) +1 other test skip
>   *   igt@gem_create@create-ext-set-pat:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@gem_create@create-ext-set-pat.html> (=
[i915#8562])
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@gem_create@create-ext-set-pat.html> =
([i915#8562])
>   *   igt@gem_ctx_persistence@heartbeat-hostile:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@gem_ctx_persistence@heartbeat-hostile=
.html> ([i915#8555]) +2 other tests skip
>   *   igt@gem_ctx_persistence@heartbeat-many:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-17/igt@gem_ctx_persistence@heartbeat-many.h=
tml> ([i915#8555]) +2 other tests skip
>   *   igt@gem_ctx_persistence@legacy-engines-hostile-preempt:
>      *   shard-snb: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-snb5/igt@gem_ctx_persistence@legacy-engines-hos=
tile-preempt.html> (i915#1099<https://gitlab.freedesktop.org/drm/i915/kerne=
l/-/issues/1099>) +3 other tests skip
>   *   igt@gem_exec_balancer@bonded-dual:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@gem_exec_balancer@bonded-dual.html>=
 ([i915#4771])
>   *   igt@gem_exec_balancer@hog:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@gem_exec_balancer@hog.html> ([i915#4=
812])
>   *   igt@gem_exec_balancer@parallel-keep-in-fence:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@gem_exec_balancer@parallel-keep-in-fe=
nce.html> ([i915#4525])
>   *   igt@gem_exec_balancer@parallel-ordering:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@gem_exec_balancer@parallel-ordering=
.html> ([i915#4525])
>   *   igt@gem_exec_capture@capture-invisible:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@gem_exec_capture@capture-invisible.h=
tml> ([i915#6334]) +2 other tests skip
>   *   igt@gem_exec_fence@concurrent:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-5/igt@gem_exec_fence@concurrent.html> ([i91=
5#4812]) +1 other test skip
>   *   igt@gem_exec_flush@basic-uc-pro-default:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-3/igt@gem_exec_flush@basic-uc-pro-default.h=
tml> ([i915#3539] / [i915#4852]) +1 other test skip
>   *   igt@gem_exec_flush@basic-wb-pro-default:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-17/igt@gem_exec_flush@basic-wb-pro-default.=
html> ([i915#3539] / [i915#4852]) +1 other test skip
>   *   igt@gem_exec_reloc@basic-gtt-read:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@gem_exec_reloc@basic-gtt-read.html> (=
[i915#3281]) +9 other tests skip
>   *   igt@gem_exec_reloc@basic-gtt-read-noreloc:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@gem_exec_reloc@basic-gtt-read-noreloc=
.html> ([i915#3281])
>   *   igt@gem_exec_reloc@basic-gtt-wc:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@gem_exec_reloc@basic-gtt-wc.html> (=
[i915#3281]) +2 other tests skip
>   *   igt@gem_exec_reloc@basic-write-cpu-active:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@gem_exec_reloc@basic-write-cpu-activ=
e.html> ([i915#3281]) +8 other tests skip
>   *   igt@gem_fence_thrash@bo-write-verify-none:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@gem_fence_thrash@bo-write-verify-no=
ne.html> ([i915#4860])
>   *   igt@gem_fenced_exec_thrash@no-spare-fences:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@gem_fenced_exec_thrash@no-spare-fenc=
es.html> ([i915#4860])
>   *   igt@gem_fenced_exec_thrash@no-spare-fences-busy-interruptible:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-7/igt@gem_fenced_exec_thrash@no-spare-fence=
s-busy-interruptible.html> ([i915#4860])
>   *   igt@gem_lmem_swapping@heavy-verify-multi:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@gem_lmem_swapping@heavy-verify-multi.=
html> ([i915#4613])
>   *   igt@gem_lmem_swapping@heavy-verify-random-ccs:
>      *   shard-glk: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-glk7/igt@gem_lmem_swapping@heavy-verify-random-=
ccs.html> ([i915#4613])
>   *   igt@gem_lmem_swapping@parallel-random-verify-ccs:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@gem_lmem_swapping@parallel-random=
-verify-ccs.html> ([i915#4613]) +1 other test skip
>   *   igt@gem_lmem_swapping@smem-oom:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@gem_lmem_swapping@smem-oom.html> ([=
i915#4613])
>   *   igt@gem_mmap@big-bo:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@gem_mmap@big-bo.html> ([i915#4083])=
 +1 other test skip
>   *   igt@gem_mmap_gtt@fault-concurrent-x:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-5/igt@gem_mmap_gtt@fault-concurrent-x.html>=
 ([i915#4077]) +14 other tests skip
>   *   igt@gem_mmap_gtt@medium-copy-odd:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@gem_mmap_gtt@medium-copy-odd.html> (=
[i915#4077]) +6 other tests skip
>   *   igt@gem_mmap_wc@fault-concurrent:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-17/igt@gem_mmap_wc@fault-concurrent.html> (=
[i915#4083]) +3 other tests skip
>   *   igt@gem_mmap_wc@write-wc-read-gtt:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@gem_mmap_wc@write-wc-read-gtt.html> (=
[i915#4083]) +2 other tests skip
>   *   igt@gem_pread@exhaustion:
>      *   shard-snb: NOTRUN -> WARN<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-snb2/igt@gem_pread@exhaustion.html> ([i915#2658=
]) +1 other test warn
>   *   igt@gem_pread@snoop:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@gem_pread@snoop.html> ([i915#3282]) +=
11 other tests skip
>   *   igt@gem_pwrite@basic-random:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@gem_pwrite@basic-random.html> ([i915#=
3282])
>   *   igt@gem_pwrite@basic-self:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@gem_pwrite@basic-self.html> ([i915#3=
282]) +3 other tests skip
>   *   igt@gem_pxp@regular-baseline-src-copy-readible:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-7/igt@gem_pxp@regular-baseline-src-copy-rea=
dible.html> ([i915#4270]) +3 other tests skip
>   *   igt@gem_pxp@verify-pxp-key-change-after-suspend-resume:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@gem_pxp@verify-pxp-key-change-after-=
suspend-resume.html> ([i915#4270]) +1 other test skip
>   *   igt@gem_readwrite@read-write:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@gem_readwrite@read-write.html> ([i9=
15#3282]) +2 other tests skip
>   *   igt@gem_render_copy@yf-tiled-mc-ccs-to-vebox-y-tiled:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-5/igt@gem_render_copy@yf-tiled-mc-ccs-to-ve=
box-y-tiled.html> ([i915#5190] / [i915#8428]) +6 other tests skip
>   *   igt@gem_render_copy@yf-tiled-to-vebox-linear:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@gem_render_copy@yf-tiled-to-vebox-l=
inear.html> ([i915#8428])
>   *   igt@gem_set_tiling_vs_blt@tiled-to-tiled:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@gem_set_tiling_vs_blt@tiled-to-tiled.=
html> ([i915#4079])
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@gem_set_tiling_vs_blt@tiled-to-tiled=
.html> ([i915#4079])
>   *   igt@gem_softpin@evict-snoop:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-3/igt@gem_softpin@evict-snoop.html> ([i915#=
4885])
>   *   igt@gem_tiled_swapping@non-threaded:
>      *   shard-snb: NOTRUN -> ABORT<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-snb1/igt@gem_tiled_swapping@non-threaded.html>=
 (i915#13263<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13263>=
 / i915#13449<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13449=
>)
>   *   igt@gem_unfence_active_buffers:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-7/igt@gem_unfence_active_buffers.html> ([i9=
15#4879])
>   *   igt@gem_userptr_blits@coherency-sync:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@gem_userptr_blits@coherency-sync.ht=
ml> ([i915#3297])
>   *   igt@gem_userptr_blits@map-fixed-invalidate:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@gem_userptr_blits@map-fixed-invalid=
ate.html> ([i915#3297])
>   *   igt@gem_userptr_blits@readonly-unsync:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-7/igt@gem_userptr_blits@readonly-unsync.htm=
l> ([i915#3297]) +4 other tests skip
>   *   igt@gem_userptr_blits@unsync-unmap-after-close:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@gem_userptr_blits@unsync-unmap-after=
-close.html> ([i915#3297]) +2 other tests skip
>   *   igt@gen3_render_tiledx_blits:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-5/igt@gen3_render_tiledx_blits.html> +12 ot=
her tests skip
>   *   igt@gen9_exec_parse@batch-without-end:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@gen9_exec_parse@batch-without-end.h=
tml> ([i915#2527] / [i915#2856])
>   *   igt@gen9_exec_parse@batch-zero-length:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@gen9_exec_parse@batch-zero-length.htm=
l> ([i915#2527])
>   *   igt@gen9_exec_parse@bb-start-out:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-17/igt@gen9_exec_parse@bb-start-out.html> (=
[i915#2527]) +1 other test skip
>   *   igt@gen9_exec_parse@shadow-peek:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-5/igt@gen9_exec_parse@shadow-peek.html> ([i=
915#2856]) +4 other tests skip
>   *   igt@gen9_exec_parse@unaligned-access:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@gen9_exec_parse@unaligned-access.=
html> ([i915#2527] / [i915#2856])
>   *   igt@gen9_exec_parse@unaligned-jump:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@gen9_exec_parse@unaligned-jump.html=
> ([i915#2856])
>   *   igt@i915_module_load@reload-with-fault-injection:
>      *   shard-snb: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-snb5/igt@i915_module_load@reload-with-fault-injection.html> -> =
ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-snb=
1/igt@i915_module_load@reload-with-fault-injection.html> ([i915#9820])
>      *   shard-tglu: NOTRUN -> ABORT<https://intel-gfx-ci.01.org/tree/drm=
-tip/Patchwork_143546v3/shard-tglu-8/igt@i915_module_load@reload-with-fault=
-injection.html> (i915#12817<https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/12817> / [i915#9820])
>      *   shard-glk: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-glk6/igt@i915_module_load@reload-with-fault-injection.html> -> =
ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-glk=
6/igt@i915_module_load@reload-with-fault-injection.html> ([i915#9820])
>   *   igt@i915_module_load@resize-bar:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@i915_module_load@resize-bar.html> ([i=
915#6412])
>   *   igt@i915_pm_freq_api@freq-reset-multiple:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@i915_pm_freq_api@freq-reset-multi=
ple.html> ([i915#8399])
>   *   igt@i915_pm_rc6_residency@rc6-fence:
>      *   shard-tglu-1: NOTRUN -> WARN<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@i915_pm_rc6_residency@rc6-fence.h=
tml> ([i915#2681]) +1 other test warn
>   *   igt@i915_pm_rc6_residency@rc6-idle:
>      *   shard-tglu: NOTRUN -> WARN<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@i915_pm_rc6_residency@rc6-idle.html=
> ([i915#2681]) +4 other tests warn
>      *   shard-dg1: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle.html> -> FAIL<https:/=
/intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-dg1-13/igt@i915_=
pm_rc6_residency@rc6-idle.html> ([i915#3591])
>   *   igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0:
>      *   shard-dg1: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-dg1-17/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html> -> FA=
IL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-dg1-13=
/igt@i915_pm_rc6_residency@rc6-idle@gt0-vecs0.html> (i915#12739<https://git=
lab.freedesktop.org/drm/i915/kernel/-/issues/12739> / [i915#3591])
>   *   igt@i915_pm_rpm@gem-evict-pwrite:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@i915_pm_rpm@gem-evict-pwrite.html> =
([i915#4077]) +3 other tests skip
>   *   igt@i915_pm_rpm@system-suspend-execbuf:
>      *   shard-glk: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-glk4/igt@i915_pm_rpm@system-suspend-execbuf.html> -> INCOMPLETE=
<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-glk1/igt=
@i915_pm_rpm@system-suspend-execbuf.html> (i915#12797<https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/12797>)
>   *   igt@i915_pm_rps@basic-api:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-5/igt@i915_pm_rps@basic-api.html> (i915#116=
81<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681> / [i915#6=
621])
>   *   igt@i915_pm_rps@thresholds-idle:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@i915_pm_rps@thresholds-idle.html> (i9=
15#11681<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681>)
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@i915_pm_rps@thresholds-idle.html> (i=
915#11681<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11681>)
>   *   igt@i915_power@sanity:
>      *   shard-mtlp: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15964/shard-mtlp-4/igt@i915_power@sanity.html> -> SKIP<https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_143546v3/shard-mtlp-4/igt@i915_power@sanity=
.html> ([i915#7984])
>   *   igt@i915_selftest@mock:
>      *   shard-snb: NOTRUN -> DMESG-WARN<https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_143546v3/shard-snb5/igt@i915_selftest@mock.html> ([i915#=
9311]) +1 other test dmesg-warn
>   *   igt@i915_suspend@debugfs-reader:
>      *   shard-glk: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-glk9/igt@i915_suspend@debugfs-reader.html> -> INCOMPLETE<https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-glk2/igt@i915_s=
uspend@debugfs-reader.html> ([i915#4817])
>   *   igt@kms_addfb_basic@addfb25-x-tiled-mismatch-legacy:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@kms_addfb_basic@addfb25-x-tiled-misma=
tch-legacy.html> ([i915#4212])
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-17/igt@kms_addfb_basic@addfb25-x-tiled-mism=
atch-legacy.html> ([i915#4212])
>   *   igt@kms_addfb_basic@basic-y-tiled-legacy:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@kms_addfb_basic@basic-y-tiled-legacy=
.html> ([i915#4215] / [i915#4423])
>   *   igt@kms_addfb_basic@bo-too-small-due-to-tiling:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@kms_addfb_basic@bo-too-small-due-to-=
tiling.html> ([i915#4212] / [i915#4423])
>   *   igt@kms_async_flips@async-flip-with-page-flip-events-atomic@pipe-a-=
hdmi-a-3-y-rc-ccs-cc:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-12/igt@kms_async_flips@async-flip-with-page=
-flip-events-atomic@pipe-a-hdmi-a-3-y-rc-ccs-cc.html> ([i915#8709]) +7 othe=
r tests skip
>   *   igt@kms_atomic_transition@plane-all-modeset-transition-fencing-inte=
rnal-panels:
>      *   shard-snb: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-snb5/igt@kms_atomic_transition@plane-all-modese=
t-transition-fencing-internal-panels.html> (i915#1769<https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/1769>)
>   *   igt@kms_atomic_transition@plane-all-transition-fencing@pipe-a-hdmi-=
a-2:
>      *   shard-rkl: NOTRUN -> DMESG-WARN<https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_143546v3/shard-rkl-3/igt@kms_atomic_transition@plane-all=
-transition-fencing@pipe-a-hdmi-a-2.html> (i915#12964<https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/12964>) +1 other test dmesg-warn
>   *   igt@kms_atomic_transition@plane-toggle-modeset-transition:
>      *   shard-dg2: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-dg2-5/igt@kms_atomic_transition@plane-toggle-modeset-transition=
.html> -> FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/=
shard-dg2-10/igt@kms_atomic_transition@plane-toggle-modeset-transition.html=
> ([i915#5956])
>   *   igt@kms_atomic_transition@plane-toggle-modeset-transition@pipe-a-dp=
-4:
>      *   shard-dg2: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-10/igt@kms_atomic_transition@plane-toggle-m=
odeset-transition@pipe-a-dp-4.html> ([i915#5956])
>   *   igt@kms_big_fb@4-tiled-8bpp-rotate-90:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@kms_big_fb@4-tiled-8bpp-rotate-90.h=
tml> ([i915#5286]) +1 other test skip
>   *   igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@kms_big_fb@4-tiled-max-hw-stride-32b=
pp-rotate-180-hflip.html> ([i915#4538] / [i915#5286]) +2 other tests skip
>   *   igt@kms_big_fb@4-tiled-max-hw-stride-32bpp-rotate-180-hflip-async-f=
lip:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_big_fb@4-tiled-max-hw-stride-=
32bpp-rotate-180-hflip-async-flip.html> ([i915#5286]) +2 other tests skip
>   *   igt@kms_big_fb@4-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-fli=
p:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@kms_big_fb@4-tiled-max-hw-stride-64bp=
p-rotate-0-hflip-async-flip.html> ([i915#5286]) +2 other tests skip
>   *   igt@kms_big_fb@linear-16bpp-rotate-270:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@kms_big_fb@linear-16bpp-rotate-270.h=
tml> ([i915#3638] / [i915#4423])
>   *   igt@kms_big_fb@linear-32bpp-rotate-90:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@kms_big_fb@linear-32bpp-rotate-90.ht=
ml> ([i915#3638])
>   *   igt@kms_big_fb@linear-64bpp-rotate-90:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_big_fb@linear-64bpp-rotate-90.h=
tml> +3 other tests skip
>   *   igt@kms_big_fb@linear-8bpp-rotate-270:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-1/igt@kms_big_fb@linear-8bpp-rotate-270.htm=
l> ([i915#3638])
>   *   igt@kms_big_fb@y-tiled-max-hw-stride-64bpp-rotate-0-hflip-async-fli=
p:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-3/igt@kms_big_fb@y-tiled-max-hw-stride-64bp=
p-rotate-0-hflip-async-flip.html> ([i915#4538] / [i915#5190]) +12 other tes=
ts skip
>   *   igt@kms_big_fb@yf-tiled-64bpp-rotate-0:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-17/igt@kms_big_fb@yf-tiled-64bpp-rotate-0.h=
tml> ([i915#4538]) +2 other tests skip
>   *   igt@kms_ccs@bad-aux-stride-4-tiled-mtl-mc-ccs@pipe-a-hdmi-a-4:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@kms_ccs@bad-aux-stride-4-tiled-mtl-m=
c-ccs@pipe-a-hdmi-a-4.html> ([i915#6095]) +144 other tests skip
>   *   igt@kms_ccs@bad-pixel-format-4-tiled-dg2-rc-ccs-cc@pipe-c-edp-1:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_ccs@bad-pixel-format-4-tiled-dg=
2-rc-ccs-cc@pipe-c-edp-1.html> ([i915#6095]) +19 other tests skip
>   *   igt@kms_ccs@ccs-on-another-bo-yf-tiled-ccs@pipe-a-hdmi-a-3:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-7/igt@kms_ccs@ccs-on-another-bo-yf-tiled-cc=
s@pipe-a-hdmi-a-3.html> (i915#10307<https://gitlab.freedesktop.org/drm/i915=
/kernel/-/issues/10307> / [i915#6095]) +132 other tests skip
>   *   igt@kms_ccs@crc-primary-basic-4-tiled-lnl-ccs:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@kms_ccs@crc-primary-basic-4-tiled-lnl=
-ccs.html> (i915#12313<https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/12313>) +3 other tests skip
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@kms_ccs@crc-primary-basic-4-tiled-ln=
l-ccs.html> (i915#12313<https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12313>)
>   *   igt@kms_ccs@crc-primary-rotation-180-4-tiled-bmg-ccs:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_ccs@crc-primary-rotation-180-=
4-tiled-bmg-ccs.html> (i915#12313<https://gitlab.freedesktop.org/drm/i915/k=
ernel/-/issues/12313>)
>   *   igt@kms_ccs@crc-primary-rotation-180-y-tiled-ccs@pipe-a-hdmi-a-3:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@kms_ccs@crc-primary-rotation-180-y-t=
iled-ccs@pipe-a-hdmi-a-3.html> ([i915#4423] / [i915#6095]) +3 other tests s=
kip
>   *   igt@kms_ccs@crc-primary-rotation-180-yf-tiled-ccs@pipe-d-hdmi-a-1:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-4/igt@kms_ccs@crc-primary-rotation-180-yf-t=
iled-ccs@pipe-d-hdmi-a-1.html> (i915#10307<https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/10307> / i915#10434<https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/10434> / [i915#6095]) +4 other tests skip
>   *   igt@kms_ccs@crc-primary-suspend-4-tiled-bmg-ccs:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_ccs@crc-primary-suspend-4-til=
ed-bmg-ccs.html> (i915#12805<https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/12805>)
>   *   igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-2:
>      *   shard-glk: NOTRUN -> INCOMPLETE<https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_143546v3/shard-glk8/igt@kms_ccs@crc-primary-suspend-y-ti=
led-ccs@pipe-a-hdmi-a-2.html> (i915#12796<https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12796>)
>   *   igt@kms_ccs@crc-primary-suspend-y-tiled-gen12-rc-ccs-cc@pipe-b-hdmi=
-a-3:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-5/igt@kms_ccs@crc-primary-suspend-y-tiled-g=
en12-rc-ccs-cc@pipe-b-hdmi-a-3.html> ([i915#6095]) +21 other tests skip
>   *   igt@kms_ccs@crc-primary-suspend-yf-tiled-ccs@pipe-a-hdmi-a-1:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@kms_ccs@crc-primary-suspend-yf-tile=
d-ccs@pipe-a-hdmi-a-1.html> ([i915#6095]) +19 other tests skip
>   *   igt@kms_ccs@random-ccs-data-4-tiled-dg2-rc-ccs-cc:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_ccs@random-ccs-data-4-tiled-d=
g2-rc-ccs-cc.html> ([i915#6095]) +34 other tests skip
>   *   igt@kms_ccs@random-ccs-data-y-tiled-ccs@pipe-b-hdmi-a-1:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@kms_ccs@random-ccs-data-y-tiled-ccs@p=
ipe-b-hdmi-a-1.html> ([i915#6095]) +85 other tests skip
>   *   igt@kms_cdclk@mode-transition:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_cdclk@mode-transition.html> ([i=
915#7213] / [i915#9010]) +4 other tests skip
>   *   igt@kms_cdclk@mode-transition-all-outputs:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@kms_cdclk@mode-transition-all-outpu=
ts.html> ([i915#3742])
>   *   igt@kms_chamelium_edid@vga-edid-read:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@kms_chamelium_edid@vga-edid-read.ht=
ml> (i915#11151<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/111=
51> / [i915#7828]) +2 other tests skip
>   *   igt@kms_chamelium_frames@dp-crc-fast:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-7/igt@kms_chamelium_frames@dp-crc-fast.html=
> (i915#11151<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151=
> / [i915#7828]) +12 other tests skip
>   *   igt@kms_chamelium_hpd@dp-hpd-storm-disable:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_chamelium_hpd@dp-hpd-storm-di=
sable.html> (i915#11151<https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/11151> / [i915#7828]) +3 other tests skip
>   *   igt@kms_chamelium_hpd@hdmi-hpd-fast:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@kms_chamelium_hpd@hdmi-hpd-fast.html>=
 (i915#11151<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11151>=
 / [i915#7828]) +2 other tests skip
>   *   igt@kms_chamelium_hpd@hdmi-hpd-storm-disable:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-17/igt@kms_chamelium_hpd@hdmi-hpd-storm-dis=
able.html> (i915#11151<https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/11151> / [i915#7828]) +5 other tests skip
>   *   igt@kms_chamelium_hpd@vga-hpd-enable-disable-mode:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_chamelium_hpd@vga-hpd-enable-di=
sable-mode.html> (i915#11151<https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/11151> / [i915#7828]) +1 other test skip
>   *   igt@kms_content_protection@atomic-dpms:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@kms_content_protection@atomic-dpms.ht=
ml> ([i915#7118] / [i915#9424]) +1 other test skip
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@kms_content_protection@atomic-dpms.h=
tml> ([i915#7116] / [i915#9424])
>   *   igt@kms_content_protection@content-type-change:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_content_protection@content-type=
-change.html> ([i915#6944] / [i915#9424])
>   *   igt@kms_content_protection@dp-mst-lic-type-1:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@kms_content_protection@dp-mst-lic-typ=
e-1.html> ([i915#3299]) +1 other test skip
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-17/igt@kms_content_protection@dp-mst-lic-ty=
pe-1.html> ([i915#3299])
>   *   igt@kms_content_protection@dp-mst-type-0:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@kms_content_protection@dp-mst-type-0.=
html> ([i915#3116])
>   *   igt@kms_content_protection@lic-type-0:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-5/igt@kms_content_protection@lic-type-0.htm=
l> ([i915#9424])
>   *   igt@kms_content_protection@lic-type-1:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@kms_content_protection@lic-type-1.h=
tml> ([i915#6944] / [i915#9424])
>   *   igt@kms_content_protection@srm@pipe-a-dp-4:
>      *   shard-dg2: NOTRUN -> TIMEOUT<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-dg2-10/igt@kms_content_protection@srm@pipe-a=
-dp-4.html> ([i915#7173])
>   *   igt@kms_cursor_crc@cursor-offscreen-512x170:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-8/igt@kms_cursor_crc@cursor-offscreen-512=
x170.html> (i915#13049<https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/13049>)
>   *   igt@kms_cursor_crc@cursor-random-32x32:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@kms_cursor_crc@cursor-random-32x32.h=
tml> ([i915#3555]) +4 other tests skip
>   *   igt@kms_cursor_crc@cursor-random-512x512:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-7/igt@kms_cursor_crc@cursor-random-512x512.=
html> (i915#13049<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
3049>)
>   *   igt@kms_cursor_crc@cursor-rapid-movement-max-size:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@kms_cursor_crc@cursor-rapid-movement-=
max-size.html> ([i915#3555]) +7 other tests skip
>   *   igt@kms_cursor_crc@cursor-sliding-32x10:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_cursor_crc@cursor-sliding-32x10=
.html> ([i915#3555] / [i915#8814]) +1 other test skip
>   *   igt@kms_cursor_crc@cursor-sliding-512x170:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-1/igt@kms_cursor_crc@cursor-sliding-512x170=
.html> (i915#13049<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
13049>)
>   *   igt@kms_cursor_legacy@basic-busy-flip-before-cursor-varying-size:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_cursor_legacy@basic-busy-flip-b=
efore-cursor-varying-size.html> ([i915#4213])
>   *   igt@kms_cursor_legacy@cursorb-vs-flipa-atomic-transitions-varying-s=
ize:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_cursor_legacy@cursorb-vs-flipa-=
atomic-transitions-varying-size.html> ([i915#9809])
>   *   igt@kms_cursor_legacy@cursorb-vs-flipa-varying-size:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@kms_cursor_legacy@cursorb-vs-flipa-=
varying-size.html> +20 other tests skip
>   *   igt@kms_cursor_legacy@cursorb-vs-flipb-atomic:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-7/igt@kms_cursor_legacy@cursorb-vs-flipb-at=
omic.html> (i915#13046<https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/13046> / [i915#5354]) +4 other tests skip
>   *   igt@kms_cursor_legacy@cursorb-vs-flipb-atomic-transitions-varying-s=
ize:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@kms_cursor_legacy@cursorb-vs-flipb-a=
tomic-transitions-varying-size.html> +18 other tests skip
>   *   igt@kms_cursor_legacy@short-busy-flip-before-cursor-atomic-transiti=
ons-varying-size:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_cursor_legacy@short-busy-flip=
-before-cursor-atomic-transitions-varying-size.html> ([i915#4103])
>   *   igt@kms_cursor_legacy@short-busy-flip-before-cursor-toggle:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@kms_cursor_legacy@short-busy-flip-b=
efore-cursor-toggle.html> ([i915#4103]) +1 other test skip
>   *   igt@kms_dirtyfb@drrs-dirtyfb-ioctl:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@kms_dirtyfb@drrs-dirtyfb-ioctl.html>=
 ([i915#9723])
>   *   igt@kms_display_modes@extended-mode-basic:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-1/igt@kms_display_modes@extended-mode-basic=
.html> ([i915#3555]) +1 other test skip
>   *   igt@kms_display_modes@mst-extended-mode-negative:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@kms_display_modes@mst-extended-mode-n=
egative.html> ([i915#8588])
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@kms_display_modes@mst-extended-mode-=
negative.html> ([i915#8588])
>   *   igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe-a-hdmi-a-2:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-3/igt@kms_dither@fb-8bpc-vs-panel-6bpc@pipe=
-a-hdmi-a-2.html> ([i915#3804])
>   *   igt@kms_dp_linktrain_fallback@dp-fallback:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_dp_linktrain_fallback@dp-fall=
back.html> (i915#12402<https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/12402>)
>   *   igt@kms_dsc@dsc-basic:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-5/igt@kms_dsc@dsc-basic.html> ([i915#3555] =
/ [i915#3840]) +1 other test skip
>   *   igt@kms_dsc@dsc-fractional-bpp-with-bpc:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_dsc@dsc-fractional-bpp-with-b=
pc.html> ([i915#3840])
>   *   igt@kms_dsc@dsc-with-output-formats-with-bpc:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@kms_dsc@dsc-with-output-formats-wit=
h-bpc.html> ([i915#3840] / [i915#9053])
>   *   igt@kms_feature_discovery@display-3x:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_feature_discovery@display-3x.ht=
ml> (i915#1839<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1839=
>)
>   *   igt@kms_feature_discovery@dp-mst:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_feature_discovery@dp-mst.html=
> ([i915#9337])
>   *   igt@kms_feature_discovery@psr1:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-3/igt@kms_feature_discovery@psr1.html> ([i9=
15#658])
>   *   igt@kms_flip@2x-flip-vs-absolute-wf_vblank-interruptible:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@kms_flip@2x-flip-vs-absolute-wf_vblan=
k-interruptible.html> ([i915#9934]) +4 other tests skip
>   *   igt@kms_flip@2x-flip-vs-dpms-off-vs-modeset-interruptible:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@kms_flip@2x-flip-vs-dpms-off-vs-mode=
set-interruptible.html> ([i915#4423] / [i915#9934])
>   *   igt@kms_flip@2x-flip-vs-fences:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_flip@2x-flip-vs-fences.html> =
([i915#3637]) +6 other tests skip
>   *   igt@kms_flip@2x-flip-vs-panning-interruptible:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@kms_flip@2x-flip-vs-panning-interrup=
tible.html> ([i915#9934]) +3 other tests skip
>   *   igt@kms_flip@2x-plain-flip-fb-recreate:
>      *   shard-snb: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-snb4/igt@kms_flip@2x-plain-flip-fb-recreate.html> -> FAIL<https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-snb1/igt@kms_f=
lip@2x-plain-flip-fb-recreate.html> (i915#11989<https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/11989>) +3 other tests fail
>   *   igt@kms_flip@2x-plain-flip-ts-check-interruptible:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_flip@2x-plain-flip-ts-check-int=
erruptible.html> ([i915#3637]) +2 other tests skip
>   *   igt@kms_flip@2x-single-buffer-flip-vs-dpms-off-vs-modeset:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@kms_flip@2x-single-buffer-flip-vs-d=
pms-off-vs-modeset.html> ([i915#3637]) +1 other test skip
>   *   igt@kms_flip@2x-wf_vblank-ts-check:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@kms_flip@2x-wf_vblank-ts-check.html> =
([i915#9934]) +1 other test skip
>   *   igt@kms_flip@flip-vs-absolute-wf_vblank:
>      *   shard-mtlp: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15964/shard-mtlp-6/igt@kms_flip@flip-vs-absolute-wf_vblank.html> -> FAIL<h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-mtlp-6/igt=
@kms_flip@flip-vs-absolute-wf_vblank.html> (i915#11989<https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/11989>) +1 other test fail
>   *   igt@kms_flip@flip-vs-fences-interruptible:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-7/igt@kms_flip@flip-vs-fences-interruptible=
.html> ([i915#8381])
>   *   igt@kms_flip@plain-flip-ts-check@b-hdmi-a2:
>      *   shard-rkl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-rkl-1/igt@kms_flip@plain-flip-ts-check@b-hdmi-a2.html> -> FAIL<=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-rkl-5/igt=
@kms_flip@plain-flip-ts-check@b-hdmi-a2.html> (i915#11989<https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/11989>) +2 other tests fail
>   *   igt@kms_flip_scaled_crc@flip-32bpp-4tile-to-32bpp-4tiledg2rcccs-dow=
nscaling:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-4til=
e-to-32bpp-4tiledg2rcccs-downscaling.html> ([i915#2672] / [i915#3555]) +1 o=
ther test skip
>   *   igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downsc=
aling:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-yftile=
-to-32bpp-yftileccs-downscaling.html> ([i915#2672] / [i915#3555]) +2 other =
tests skip
>   *   igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-32bpp-yftileccs-downsc=
aling@pipe-a-valid-mode:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@kms_flip_scaled_crc@flip-32bpp-yftil=
e-to-32bpp-yftileccs-downscaling@pipe-a-valid-mode.html> ([i915#2587] / [i9=
15#2672]) +2 other tests skip
>   *   igt@kms_flip_scaled_crc@flip-32bpp-yftile-to-64bpp-yftile-upscaling=
@pipe-a-valid-mode:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-8/igt@kms_flip_scaled_crc@flip-32bpp-yfti=
le-to-64bpp-yftile-upscaling@pipe-a-valid-mode.html> ([i915#2587] / [i915#2=
672]) +2 other tests skip
>   *   igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytileccs-upscalin=
g:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@kms_flip_scaled_crc@flip-32bpp-ytil=
e-to-32bpp-ytileccs-upscaling.html> ([i915#2587] / [i915#2672] / [i915#3555=
])
>   *   igt@kms_flip_scaled_crc@flip-32bpp-ytile-to-32bpp-ytilegen12rcccs-u=
pscaling@pipe-a-valid-mode:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-3/igt@kms_flip_scaled_crc@flip-32bpp-ytile-=
to-32bpp-ytilegen12rcccs-upscaling@pipe-a-valid-mode.html> ([i915#2672]) +4=
 other tests skip
>   *   igt@kms_flip_scaled_crc@flip-32bpp-ytileccs-to-64bpp-ytile-downscal=
ing:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@kms_flip_scaled_crc@flip-32bpp-ytilec=
cs-to-64bpp-ytile-downscaling.html> ([i915#2672] / [i915#3555] / [i915#5190=
]) +1 other test skip
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-17/igt@kms_flip_scaled_crc@flip-32bpp-ytile=
ccs-to-64bpp-ytile-downscaling.html> ([i915#2587] / [i915#2672] / [i915#355=
5])
>   *   igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-ups=
caling:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@kms_flip_scaled_crc@flip-64bpp-4tile=
-to-32bpp-4tiledg2rcccs-upscaling.html> ([i915#2672] / [i915#3555] / [i915#=
4423])
>   *   igt@kms_flip_scaled_crc@flip-64bpp-4tile-to-32bpp-4tiledg2rcccs-ups=
caling@pipe-a-valid-mode:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@kms_flip_scaled_crc@flip-64bpp-4tile=
-to-32bpp-4tiledg2rcccs-upscaling@pipe-a-valid-mode.html> ([i915#2587] / [i=
915#2672] / [i915#4423])
>   *   igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-16bpp-yftile-upscaling=
:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@kms_flip_scaled_crc@flip-64bpp-yftil=
e-to-16bpp-yftile-upscaling.html> ([i915#2672] / [i915#3555]) +1 other test=
 skip
>   *   igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling=
:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yf=
tile-to-32bpp-yftile-upscaling.html> ([i915#2672] / [i915#3555]) +2 other t=
ests skip
>   *   igt@kms_flip_scaled_crc@flip-64bpp-yftile-to-32bpp-yftile-upscaling=
@pipe-a-valid-mode:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_flip_scaled_crc@flip-64bpp-yf=
tile-to-32bpp-yftile-upscaling@pipe-a-valid-mode.html> ([i915#2587] / [i915=
#2672]) +2 other tests skip
>   *   igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-ytil=
e-to-16bpp-ytile-upscaling.html> ([i915#2672] / [i915#3555] / [i915#8813])
>   *   igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-upscaling@p=
ipe-a-default-mode:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_flip_scaled_crc@flip-64bpp-ytil=
e-to-16bpp-ytile-upscaling@pipe-a-default-mode.html> ([i915#2672] / [i915#8=
813])
>   *   igt@kms_force_connector_basic@force-load-detect:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@kms_force_connector_basic@force-load-=
detect.html> +6 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbc-2p-primscrn-cur-indfb-draw-blt:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-2p-prims=
crn-cur-indfb-draw-blt.html> ([i915#5354]) +28 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbc-2p-primscrn-pri-indfb-draw-mmap-wc=
:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@kms_frontbuffer_tracking@fbc-2p-prims=
crn-pri-indfb-draw-mmap-wc.html> (i915#1825<https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/1825>) +10 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-cur-indfb-draw-blt:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbc-2p-scn=
dscrn-cur-indfb-draw-blt.html> (i915#1825<https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/1825>) +7 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-pri-shrfb-draw-mmap-gt=
t:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@kms_frontbuffer_tracking@fbc-2p-scnd=
scrn-pri-shrfb-draw-mmap-gtt.html> ([i915#4423] / [i915#8708]) +1 other tes=
t skip
>   *   igt@kms_frontbuffer_tracking@fbc-tiling-4:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@kms_frontbuffer_tracking@fbc-tiling-=
4.html> ([i915#5439])
>   *   igt@kms_frontbuffer_tracking@fbc-tiling-y:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbc-tiling-y=
.html> (i915#10055<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
10055>)
>   *   igt@kms_frontbuffer_tracking@fbcpsr-1p-offscren-pri-indfb-draw-pwri=
te:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-7/igt@kms_frontbuffer_tracking@fbcpsr-1p-of=
fscren-pri-indfb-draw-pwrite.html> ([i915#3458]) +22 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbcpsr-1p-rte:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@kms_frontbuffer_tracking@fbcpsr-1p-r=
te.html> ([i915#3458]) +10 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-pri-indfb-draw-mmap=
-gtt:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_frontbuffer_tracking@fbcpsr-2p-=
scndscrn-pri-indfb-draw-mmap-gtt.html> ([i915#8708]) +1 other test skip
>   *   igt@kms_frontbuffer_tracking@fbcpsr-2p-scndscrn-spr-indfb-draw-pwri=
te:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@kms_frontbuffer_tracking@fbcpsr-2p-s=
cndscrn-spr-indfb-draw-pwrite.html> ([i915#4423]) +3 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbcpsr-2p-shrfb-fliptrack-mmap-gtt:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@kms_frontbuffer_tracking@fbcpsr-2p-sh=
rfb-fliptrack-mmap-gtt.html> ([i915#8708]) +24 other tests skip
>   *   igt@kms_frontbuffer_tracking@fbcpsr-tiling-linear:
>      *   shard-glk: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-glk7/igt@kms_frontbuffer_tracking@fbcpsr-tiling=
-linear.html> +72 other tests skip
>   *   igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-draw-mmap-cp=
u:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@kms_frontbuffer_tracking@psr-1p-prims=
crn-cur-indfb-draw-mmap-cpu.html> ([i915#3023]) +8 other tests skip
>   *   igt@kms_frontbuffer_tracking@psr-1p-primscrn-spr-indfb-fullscreen:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-prim=
scrn-spr-indfb-fullscreen.html> ([i915#3458] / [i915#4423])
>   *   igt@kms_frontbuffer_tracking@psr-2p-scndscrn-pri-indfb-draw-mmap-wc=
:
>      *   shard-snb: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-snb2/igt@kms_frontbuffer_tracking@psr-2p-scndsc=
rn-pri-indfb-draw-mmap-wc.html> +323 other tests skip
>   *   igt@kms_frontbuffer_tracking@psr-rgb101010-draw-mmap-wc:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@kms_frontbuffer_tracking@psr-rgb1010=
10-draw-mmap-wc.html> ([i915#8708]) +11 other tests skip
>   *   igt@kms_frontbuffer_tracking@psr-rgb565-draw-mmap-wc:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_frontbuffer_tracking@psr-rgb5=
65-draw-mmap-wc.html> +42 other tests skip
>   *   igt@kms_hdr@brightness-with-hdr:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@kms_hdr@brightness-with-hdr.html> (i9=
15#12713<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12713>)
>   *   igt@kms_hdr@static-toggle:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_hdr@static-toggle.html> ([i91=
5#3555] / [i915#8228])
>   *   igt@kms_hdr@static-toggle-dpms:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_hdr@static-toggle-dpms.html> ([=
i915#3555] / [i915#8228])
>   *   igt@kms_hdr@static-toggle-suspend:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-3/igt@kms_hdr@static-toggle-suspend.html> (=
[i915#3555] / [i915#8228]) +1 other test skip
>   *   igt@kms_joiner@basic-force-ultra-joiner:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_joiner@basic-force-ultra-join=
er.html> (i915#12394<https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/12394> / i915#13522<https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/13522>)
>   *   igt@kms_joiner@basic-ultra-joiner:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@kms_joiner@basic-ultra-joiner.html>=
 (i915#12339<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12339>=
)
>   *   igt@kms_joiner@invalid-modeset-big-joiner:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-17/igt@kms_joiner@invalid-modeset-big-joine=
r.html> (i915#10656<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/10656>)
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@kms_joiner@invalid-modeset-big-joiner=
.html> (i915#10656<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
10656>)
>   *   igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@kms_joiner@invalid-modeset-force-ultr=
a-joiner.html> (i915#10656<https://gitlab.freedesktop.org/drm/i915/kernel/-=
/issues/10656> / i915#13522<https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/13522>)
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@kms_joiner@invalid-modeset-force-ult=
ra-joiner.html> (i915#12394<https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12394> / i915#13522<https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/13522>)
>   *   igt@kms_joiner@invalid-modeset-ultra-joiner:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-5/igt@kms_joiner@invalid-modeset-ultra-join=
er.html> (i915#12339<https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/12339>)
>   *   igt@kms_pipe_crc_basic@suspend-read-crc@pipe-a-hdmi-a-2:
>      *   shard-rkl: NOTRUN -> DMESG-FAIL<https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_143546v3/shard-rkl-3/igt@kms_pipe_crc_basic@suspend-read=
-crc@pipe-a-hdmi-a-2.html> (i915#12964<https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/12964>)
>   *   igt@kms_plane_alpha_blend@alpha-transparent-fb:
>      *   shard-glk: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-glk7/igt@kms_plane_alpha_blend@alpha-transparen=
t-fb.html> (i915#10647<https://gitlab.freedesktop.org/drm/i915/kernel/-/iss=
ues/10647> / i915#12177<https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/12177>)
>   *   igt@kms_plane_alpha_blend@alpha-transparent-fb@pipe-a-hdmi-a-1:
>      *   shard-glk: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-glk7/igt@kms_plane_alpha_blend@alpha-transparen=
t-fb@pipe-a-hdmi-a-1.html> (i915#10647<https://gitlab.freedesktop.org/drm/i=
915/kernel/-/issues/10647>) +1 other test fail
>   *   igt@kms_plane_lowres@tiling-4:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_plane_lowres@tiling-4.html> (i9=
15#10226<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10226> / i=
915#11614<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11614> / =
[i915#3555] / [i915#8821])
>   *   igt@kms_plane_lowres@tiling-4@pipe-b-edp-1:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_plane_lowres@tiling-4@pipe-b-ed=
p-1.html> (i915#11614<https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/11614> / [i915#3582]) +3 other tests skip
>   *   igt@kms_plane_lowres@tiling-y:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-3/igt@kms_plane_lowres@tiling-y.html> ([i91=
5#8821])
>   *   igt@kms_plane_multiple@tiling-yf:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@kms_plane_multiple@tiling-yf.html> =
([i915#3555])
>   *   igt@kms_plane_scaling@plane-downscale-factor-0-25-with-pixel-format=
@pipe-d:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-5/igt@kms_plane_scaling@plane-downscale-fac=
tor-0-25-with-pixel-format@pipe-d.html> (i915#12247<https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/12247>) +11 other tests skip
>   *   igt@kms_plane_scaling@plane-downscale-factor-0-75-with-rotation@pip=
e-a:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_plane_scaling@plane-downscale=
-factor-0-75-with-rotation@pipe-a.html> (i915#12247<https://gitlab.freedesk=
top.org/drm/i915/kernel/-/issues/12247>) +4 other tests skip
>   *   igt@kms_plane_scaling@plane-scaler-with-clipping-clamping-pixel-for=
mats@pipe-b:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_plane_scaling@plane-scaler-with=
-clipping-clamping-pixel-formats@pipe-b.html> (i915#12247<https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/12247>) +1 other test skip
>   *   igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-a:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@kms_plane_scaling@plane-upscale-20x2=
0-with-rotation@pipe-a.html> (i915#12247<https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12247> / [i915#4423]) +1 other test skip
>   *   igt@kms_plane_scaling@plane-upscale-20x20-with-rotation@pipe-d:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@kms_plane_scaling@plane-upscale-20x2=
0-with-rotation@pipe-d.html> (i915#12247<https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/12247>) +2 other tests skip
>   *   igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixel-format:
>      *   shard-rkl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-rkl-1/igt@kms_plane_scaling@plane-upscale-factor-0-25-with-pixe=
l-format.html> -> DMESG-WARN<https://intel-gfx-ci.01.org/tree/drm-tip/Patch=
work_143546v3/shard-rkl-5/igt@kms_plane_scaling@plane-upscale-factor-0-25-w=
ith-pixel-format.html> (i915#12964<https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/12964> / i915#1982<https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/1982>)
>   *   igt@kms_plane_scaling@planes-downscale-factor-0-25:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-7/igt@kms_plane_scaling@planes-downscale-fa=
ctor-0-25.html> (i915#12247<https://gitlab.freedesktop.org/drm/i915/kernel/=
-/issues/12247> / [i915#6953] / [i915#9423])
>   *   igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-20x20:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-3/igt@kms_plane_scaling@planes-downscale-fa=
ctor-0-25-upscale-20x20.html> (i915#12247<https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12247> / [i915#9423]) +1 other test skip
>   *   igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0=
-25:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-fa=
ctor-0-25-upscale-factor-0-25.html> (i915#12247<https://gitlab.freedesktop.=
org/drm/i915/kernel/-/issues/12247> / [i915#6953])
>   *   igt@kms_plane_scaling@planes-downscale-factor-0-25-upscale-factor-0=
-25@pipe-a:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-fa=
ctor-0-25-upscale-factor-0-25@pipe-a.html> (i915#12247<https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/12247>) +1 other test skip
>   *   igt@kms_pm_backlight@brightness-with-dpms:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-17/igt@kms_pm_backlight@brightness-with-dpm=
s.html> (i915#12343<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues=
/12343>)
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@kms_pm_backlight@brightness-with-dpms=
.html> (i915#12343<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
12343>)
>   *   igt@kms_pm_dc@dc5-dpms-negative:
>      *   shard-rkl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-rkl-5/igt@kms_pm_dc@dc5-dpms-negative.html> -> DMESG-WARN<https=
://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-rkl-2/igt@kms_=
pm_dc@dc5-dpms-negative.html> (i915#12964<https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/12964>) +12 other tests dmesg-warn
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_pm_dc@dc5-dpms-negative.html> (=
i915#13441<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13441>)
>   *   igt@kms_pm_dc@dc5-psr:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-7/igt@kms_pm_dc@dc5-psr.html> ([i915#9685])
>   *   igt@kms_pm_dc@dc6-dpms:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@kms_pm_dc@dc6-dpms.html> ([i915#3361]=
)
>   *   igt@kms_pm_rpm@dpms-lpsp:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-17/igt@kms_pm_rpm@dpms-lpsp.html> ([i915#95=
19])
>   *   igt@kms_pm_rpm@modeset-non-lpsp-stress:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_pm_rpm@modeset-non-lpsp-stres=
s.html> ([i915#9519])
>   *   igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait:
>      *   shard-rkl: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-rkl-1/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html> -> S=
KIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-rkl-2=
/igt@kms_pm_rpm@modeset-non-lpsp-stress-no-wait.html> ([i915#9519]) +2 othe=
r tests skip
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@kms_pm_rpm@modeset-non-lpsp-stress-=
no-wait.html> ([i915#9519])
>   *   igt@kms_prime@basic-crc-hybrid:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_prime@basic-crc-hybrid.html> ([=
i915#6524])
>   *   igt@kms_prime@d3hot:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-3/igt@kms_prime@d3hot.html> ([i915#6524] / =
[i915#6805])
>   *   igt@kms_psr2_sf@fbc-pr-cursor-plane-update-sf:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@kms_psr2_sf@fbc-pr-cursor-plane-upd=
ate-sf.html> (i915#11520<https://gitlab.freedesktop.org/drm/i915/kernel/-/i=
ssues/11520>) +2 other tests skip
>   *   igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
>      *   shard-glk: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-glk7/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-=
continuous-sf.html> (i915#11520<https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11520>) +1 other test skip
>   *   igt@kms_psr2_sf@fbc-pr-overlay-plane-update-sf-dmg-area:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_psr2_sf@fbc-pr-overlay-plane-up=
date-sf-dmg-area.html> (i915#12316<https://gitlab.freedesktop.org/drm/i915/=
kernel/-/issues/12316>) +1 other test skip
>   *   igt@kms_psr2_sf@fbc-psr2-cursor-plane-move-continuous-exceed-sf:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_psr2_sf@fbc-psr2-cursor-plane=
-move-continuous-exceed-sf.html> (i915#11520<https://gitlab.freedesktop.org=
/drm/i915/kernel/-/issues/11520>) +3 other tests skip
>   *   igt@kms_psr2_sf@fbc-psr2-overlay-plane-move-continuous-exceed-sf:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-5/igt@kms_psr2_sf@fbc-psr2-overlay-plane-mo=
ve-continuous-exceed-sf.html> (i915#11520<https://gitlab.freedesktop.org/dr=
m/i915/kernel/-/issues/11520>) +6 other tests skip
>   *   igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg-area:
>      *   shard-snb: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-snb7/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-dmg=
-area.html> (i915#11520<https://gitlab.freedesktop.org/drm/i915/kernel/-/is=
sues/11520>) +6 other tests skip
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@kms_psr2_sf@fbc-psr2-plane-move-sf-d=
mg-area.html> (i915#11520<https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/11520>) +3 other tests skip
>   *   igt@kms_psr2_sf@psr2-overlay-plane-move-continuous-sf:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@kms_psr2_sf@psr2-overlay-plane-move-=
continuous-sf.html> (i915#11520<https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/11520> / [i915#4423])
>   *   igt@kms_psr2_sf@psr2-overlay-plane-update-sf-dmg-area:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@kms_psr2_sf@psr2-overlay-plane-update=
-sf-dmg-area.html> (i915#11520<https://gitlab.freedesktop.org/drm/i915/kern=
el/-/issues/11520>) +2 other tests skip
>   *   igt@kms_psr2_su@frontbuffer-xrgb8888:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_psr2_su@frontbuffer-xrgb8888.=
html> ([i915#9683])
>   *   igt@kms_psr2_su@page_flip-p010:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-3/igt@kms_psr2_su@page_flip-p010.html> ([i9=
15#9683])
>   *   igt@kms_psr@fbc-psr2-cursor-mmap-gtt:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_psr@fbc-psr2-cursor-mmap-gtt.ht=
ml> ([i915#9688]) +8 other tests skip
>   *   igt@kms_psr@pr-sprite-plane-onoff:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_psr@pr-sprite-plane-onoff.htm=
l> ([i915#9732]) +7 other tests skip
>   *   igt@kms_psr@pr-sprite-render:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-7/igt@kms_psr@pr-sprite-render.html> (i915#=
1072<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / [i915#=
9732]) +5 other tests skip
>   *   igt@kms_psr@psr-cursor-mmap-cpu:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-3/igt@kms_psr@psr-cursor-mmap-cpu.html> (i9=
15#1072<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / [i9=
15#9732]) +27 other tests skip
>   *   igt@kms_psr@psr-cursor-mmap-gtt:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@kms_psr@psr-cursor-mmap-gtt.html> (=
[i915#9732]) +4 other tests skip
>   *   igt@kms_psr@psr-sprite-mmap-cpu:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-17/igt@kms_psr@psr-sprite-mmap-cpu.html> (i=
915#1072<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1072> / [i=
915#9732]) +11 other tests skip
>   *   igt@kms_psr_stress_test@flip-primary-invalidate-overlay:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-1/igt@kms_psr_stress_test@flip-primary-inva=
lidate-overlay.html> ([i915#9685])
>   *   igt@kms_psr_stress_test@invalidate-primary-flip-overlay:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_psr_stress_test@invalidate-pr=
imary-flip-overlay.html> ([i915#9685]) +1 other test skip
>   *   igt@kms_rotation_crc@primary-rotation-270:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-3/igt@kms_rotation_crc@primary-rotation-270=
.html> (i915#12755<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/=
12755>)
>   *   igt@kms_rotation_crc@primary-y-tiled-reflect-x-0:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@kms_rotation_crc@primary-y-tiled-refl=
ect-x-0.html> ([i915#5190]) +1 other test skip
>   *   igt@kms_rotation_crc@primary-y-tiled-reflect-x-180:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_rotation_crc@primary-y-tiled-re=
flect-x-180.html> ([i915#5289])
>   *   igt@kms_rotation_crc@primary-yf-tiled-reflect-x-270:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-3/igt@kms_rotation_crc@primary-yf-tiled-ref=
lect-x-270.html> (i915#12755<https://gitlab.freedesktop.org/drm/i915/kernel=
/-/issues/12755> / [i915#5190])
>   *   igt@kms_rotation_crc@sprite-rotation-270:
>      *   shard-dg1: NOTRUN -> DMESG-WARN<https://intel-gfx-ci.01.org/tree=
/drm-tip/Patchwork_143546v3/shard-dg1-13/igt@kms_rotation_crc@sprite-rotati=
on-270.html> ([i915#4423]) +8 other tests dmesg-warn
>   *   igt@kms_scaling_modes@scaling-mode-center:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@kms_scaling_modes@scaling-mode-ce=
nter.html> ([i915#3555]) +3 other tests skip
>   *   igt@kms_selftest@drm_framebuffer:
>      *   shard-dg1: NOTRUN -> ABORT<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-dg1-17/igt@kms_selftest@drm_framebuffer.html> =
(i915#13179<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13179>)=
 +1 other test abort
>   *   igt@kms_setmode@basic:
>      *   shard-tglu: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15964/shard-tglu-3/igt@kms_setmode@basic.html> -> FAIL<https://intel-gfx-c=
i.01.org/tree/drm-tip/Patchwork_143546v3/shard-tglu-4/igt@kms_setmode@basic=
.html> ([i915#5465]) +2 other tests fail
>   *   igt@kms_sysfs_edid_timing:
>      *   shard-dg2: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-7/igt@kms_sysfs_edid_timing.html> (IGT#160<=
https://gitlab.freedesktop.org/drm/igt-gpu-tools/issues/160>)
>   *   igt@kms_tiled_display@basic-test-pattern-with-chamelium:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@kms_tiled_display@basic-test-pattern=
-with-chamelium.html> ([i915#8623])
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@kms_tiled_display@basic-test-pattern-=
with-chamelium.html> ([i915#8623])
>   *   igt@kms_vrr@negative-basic:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-13/igt@kms_vrr@negative-basic.html> ([i915#=
3555] / [i915#4423] / [i915#9906])
>   *   igt@kms_vrr@seamless-rr-switch-drrs:
>      *   shard-tglu: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-tglu-5/igt@kms_vrr@seamless-rr-switch-drrs.htm=
l> ([i915#9906])
>   *   igt@kms_vrr@seamless-rr-switch-virtual:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-7/igt@kms_vrr@seamless-rr-switch-virtual.ht=
ml> ([i915#9906])
>   *   igt@kms_writeback@writeback-fb-id:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-8/igt@kms_writeback@writeback-fb-id.html> (=
i915#2437<https://>)
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-17/igt@kms_writeback@writeback-fb-id.html> =
(i915#2437<https://>)
>   *   igt@kms_writeback@writeback-invalid-parameters:
>      *   shard-mtlp: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-=
tip/Patchwork_143546v3/shard-mtlp-5/igt@kms_writeback@writeback-invalid-par=
ameters.html> (i915#2437<https://>)
>   *   igt@perf@per-context-mode-unprivileged:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-14/igt@perf@per-context-mode-unprivileged.h=
tml> (i915#2433<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/243=
3>)
>   *   igt@perf_pmu@cpu-hotplug:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-1/igt@perf_pmu@cpu-hotplug.html> ([i915#885=
0])
>   *   igt@perf_pmu@rc6-suspend:
>      *   shard-glk: PASS<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-glk2/igt@perf_pmu@rc6-suspend.html> -> INCOMPLETE<https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-glk4/igt@perf_pmu@rc6-=
suspend.html> (i915#13356<https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/13356>)
>   *   igt@perf_pmu@rc6@other-idle-gt0:
>      *   shard-tglu-1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@perf_pmu@rc6@other-idle-gt0.html>=
 ([i915#8516])
>   *   igt@prime_vgem@basic-fence-mmap:
>      *   shard-dg1: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg1-17/igt@prime_vgem@basic-fence-mmap.html> ([=
i915#3708] / [i915#4077])
>   *   igt@prime_vgem@basic-fence-read:
>      *   shard-rkl: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-rkl-1/igt@prime_vgem@basic-fence-read.html> ([i=
915#3291] / [i915#3708])
>   *   igt@prime_vgem@coherency-gtt:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-3/igt@prime_vgem@coherency-gtt.html> ([i915=
#3708] / [i915#4077]) +1 other test skip
>   *   igt@sriov_basic@bind-unbind-vf:
>      *   shard-dg2: NOTRUN -> SKIP<https://intel-gfx-ci.01.org/tree/drm-t=
ip/Patchwork_143546v3/shard-dg2-3/igt@sriov_basic@bind-unbind-vf.html> ([i9=
15#9917])
>   *   igt@sriov_basic@enable-vfs-autoprobe-off@numvfs-all:
>      *   shard-tglu-1: NOTRUN -> FAIL<https://intel-gfx-ci.01.org/tree/dr=
m-tip/Patchwork_143546v3/shard-tglu-1/igt@sriov_basic@enable-vfs-autoprobe-=
off@numvfs-all.html> (i915#12910<https://gitlab.freedesktop.org/drm/i915/ke=
rnel/-/issues/12910>) +9 other tests fail
>=20
> Possible fixes
>=20
>   *   igt@debugfs_test@read_all_entries:
>      *   shard-mtlp: ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_15964/shard-mtlp-7/igt@debugfs_test@read_all_entries.html> -> PASS<https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-mtlp-5/igt@debu=
gfs_test@read_all_entries.html>
>   *   igt@gem_exec_parallel@engines:
>      *   shard-rkl: DMESG-WARN<https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15964/shard-rkl-6/igt@gem_exec_parallel@engines.html> (i915#12964<htt=
ps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>) -> PASS<https:=
//intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-rkl-7/igt@gem_e=
xec_parallel@engines.html> +8 other tests pass
>   *   igt@gem_exec_suspend@basic-s4-devices@lmem0:
>      *   shard-dg1: ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15964/shard-dg1-14/igt@gem_exec_suspend@basic-s4-devices@lmem0.html> ([i91=
5#7975] / [i915#8213]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_143546v3/shard-dg1-13/igt@gem_exec_suspend@basic-s4-devices@lmem0.ht=
ml> +1 other test pass
>   *   igt@i915_suspend@basic-s3-without-i915:
>      *   shard-rkl: INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15964/shard-rkl-3/igt@i915_suspend@basic-s3-without-i915.html> ([i915=
#4817]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3=
/shard-rkl-1/igt@i915_suspend@basic-s3-without-i915.html>
>   *   igt@kms_atomic_transition@plane-all-modeset-transition-fencing:
>      *   shard-dg2: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-dg2-10/igt@kms_atomic_transition@plane-all-modeset-transition-f=
encing.html> ([i915#5956]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip=
/Patchwork_143546v3/shard-dg2-4/igt@kms_atomic_transition@plane-all-modeset=
-transition-fencing.html>
>   *   igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-a-1:
>      *   shard-glk: INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15964/shard-glk8/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-h=
dmi-a-1.html> (i915#12796<https://gitlab.freedesktop.org/drm/i915/kernel/-/=
issues/12796>) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_1=
43546v3/shard-glk8/igt@kms_ccs@crc-primary-suspend-y-tiled-ccs@pipe-a-hdmi-=
a-1.html>
>   *   igt@kms_cursor_legacy@flip-vs-cursor-varying-size:
>      *   shard-mtlp: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15964/shard-mtlp-2/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html>=
 (i915#2346<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/2346>) =
-> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-m=
tlp-1/igt@kms_cursor_legacy@flip-vs-cursor-varying-size.html>
>   *   igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1:
>      *   shard-tglu: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15964/shard-tglu-10/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html=
> (i915#11989<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989=
>) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shar=
d-tglu-2/igt@kms_flip@flip-vs-absolute-wf_vblank@a-hdmi-a1.html> +1 other t=
est pass
>   *   igt@kms_flip@plain-flip-ts-check:
>      *   shard-snb: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-snb1/igt@kms_flip@plain-flip-ts-check.html> (i915#11989<https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/11989>) -> PASS<https://in=
tel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-snb5/igt@kms_flip@p=
lain-flip-ts-check.html> +1 other test pass
>   *   igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-ytile-downscaling=
:
>      *   shard-dg1: DMESG-WARN<https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15964/shard-dg1-17/igt@kms_flip_scaled_crc@flip-64bpp-ytile-to-16bpp-=
ytile-downscaling.html> ([i915#4423]) -> PASS<https://intel-gfx-ci.01.org/t=
ree/drm-tip/Patchwork_143546v3/shard-dg1-12/igt@kms_flip_scaled_crc@flip-64=
bpp-ytile-to-16bpp-ytile-downscaling.html>
>   *   igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-fullscreen:
>      *   shard-snb: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-snb4/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-ful=
lscreen.html> -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_14=
3546v3/shard-snb1/igt@kms_frontbuffer_tracking@fbc-2p-scndscrn-spr-indfb-fu=
llscreen.html> +1 other test pass
>   *   igt@kms_hdr@static-toggle:
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-dg2-5/igt@kms_hdr@static-toggle.html> ([i915#3555] / [i915#8228=
]) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shar=
d-dg2-10/igt@kms_hdr@static-toggle.html>
>   *   igt@kms_plane_scaling@planes-downscale-factor-0-75:
>      *   shard-rkl: DMESG-WARN<https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15964/shard-rkl-7/igt@kms_plane_scaling@planes-downscale-factor-0-75.=
html> (i915#12964<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
2964> / i915#1982<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/1=
982>) -> PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/s=
hard-rkl-3/igt@kms_plane_scaling@planes-downscale-factor-0-75.html>
>   *   igt@kms_pm_rpm@modeset-lpsp:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-rkl-5/igt@kms_pm_rpm@modeset-lpsp.html> ([i915#9519]) -> PASS<h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-rkl-2/igt@=
kms_pm_rpm@modeset-lpsp.html> +1 other test pass
>   *   igt@kms_pm_rpm@modeset-lpsp-stress:
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-dg2-2/igt@kms_pm_rpm@modeset-lpsp-stress.html> ([i915#9519]) ->=
 PASS<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-dg2=
-4/igt@kms_pm_rpm@modeset-lpsp-stress.html>
>   *   igt@kms_vrr@negative-basic:
>      *   shard-mtlp: FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15964/shard-mtlp-5/igt@kms_vrr@negative-basic.html> (i915#10393<https://gi=
tlab.freedesktop.org/drm/i915/kernel/-/issues/10393>) -> PASS<https://intel=
-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-mtlp-2/igt@kms_vrr@neg=
ative-basic.html> +1 other test pass
>=20
> Warnings
>=20
>   *   igt@gem_eio@in-flight-suspend:
>      *   shard-glk: INCOMPLETE<https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15964/shard-glk9/igt@gem_eio@in-flight-suspend.html> (i915#13390<http=
s://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13390>) -> INCOMPLETE<h=
ttps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-glk7/igt@g=
em_eio@in-flight-suspend.html> (i915#13197<https://gitlab.freedesktop.org/d=
rm/i915/kernel/-/issues/13197> / i915#13390<https://gitlab.freedesktop.org/=
drm/i915/kernel/-/issues/13390>)
>   *   igt@gem_pxp@verify-pxp-stale-buf-execution:
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-rkl-4/igt@gem_pxp@verify-pxp-stale-buf-execution.html> ([i915#4=
270]) -> TIMEOUT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v=
3/shard-rkl-3/igt@gem_pxp@verify-pxp-stale-buf-execution.html> (i915#12917<=
https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917> / i915#12964=
<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>   *   igt@i915_module_load@reload-with-fault-injection:
>      *   shard-mtlp: ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DR=
M_15964/shard-mtlp-7/igt@i915_module_load@reload-with-fault-injection.html>=
 (i915#10131<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10131>=
 / i915#13493<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13493=
> / [i915#9820]) -> DMESG-WARN<https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_143546v3/shard-mtlp-5/igt@i915_module_load@reload-with-fault-injecti=
on.html> (i915#10887<https://gitlab.freedesktop.org/drm/i915/kernel/-/issue=
s/10887> / i915#13475<https://gitlab.freedesktop.org/drm/i915/kernel/-/issu=
es/13475>)
>      *   shard-dg2: ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15964/shard-dg2-11/igt@i915_module_load@reload-with-fault-injection.html> =
-> ABORT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-=
dg2-5/igt@i915_module_load@reload-with-fault-injection.html> (i915#10887<ht=
tps://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10887> / [i915#9820])
>   *   igt@i915_selftest@live@workarounds:
>      *   shard-mtlp: DMESG-FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/=
CI_DRM_15964/shard-mtlp-5/igt@i915_selftest@live@workarounds.html> (i915#13=
393<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13393>) -> DMES=
G-FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-mt=
lp-2/igt@i915_selftest@live@workarounds.html> (i915#12061<https://gitlab.fr=
eedesktop.org/drm/i915/kernel/-/issues/12061>) +1 other test dmesg-fail
>   *   igt@i915_selftest@mock:
>      *   shard-glk: DMESG-WARN<https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15964/shard-glk3/igt@i915_selftest@mock.html> ([i915#9311]) -> DMESG-=
WARN<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-glk6=
/igt@i915_selftest@mock.html> (i915#1982<https://gitlab.freedesktop.org/drm=
/i915/kernel/-/issues/1982> / [i915#9311])
>   *   igt@kms_content_protection@mei-interface:
>      *   shard-dg1: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-dg1-17/igt@kms_content_protection@mei-interface.html> ([i915#94=
24]) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/sh=
ard-dg1-13/igt@kms_content_protection@mei-interface.html> ([i915#9433])
>   *   igt@kms_content_protection@srm:
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-dg2-5/igt@kms_content_protection@srm.html> ([i915#7118]) -> TIM=
EOUT<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-dg2-=
10/igt@kms_content_protection@srm.html> ([i915#7173])
>   *   igt@kms_frontbuffer_tracking@fbc-suspend:
>      *   shard-rkl: DMESG-WARN<https://intel-gfx-ci.01.org/tree/drm-tip/C=
I_DRM_15964/shard-rkl-4/igt@kms_frontbuffer_tracking@fbc-suspend.html> (i91=
5#12917<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12917> / i9=
15#12964<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>) ->=
 DMESG-FAIL<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/sha=
rd-rkl-4/igt@kms_frontbuffer_tracking@fbc-suspend.html> (i915#12964<https:/=
/gitlab.freedesktop.org/drm/i915/kernel/-/issues/12964>)
>   *   igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-move:
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-dg2-10/igt@kms_frontbuffer_tracking@psr-1p-primscrn-cur-indfb-m=
ove.html> ([i915#3458]) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Pa=
tchwork_143546v3/shard-dg2-4/igt@kms_frontbuffer_tracking@psr-1p-primscrn-c=
ur-indfb-move.html> (i915#10433<https://gitlab.freedesktop.org/drm/i915/ker=
nel/-/issues/10433> / [i915#3458]) +1 other test skip
>   *   igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgflip-blt:
>      *   shard-dg1: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-dg1-13/igt@kms_frontbuffer_tracking@psr-1p-primscrn-indfb-pgfli=
p-blt.html> ([i915#3458]) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/=
Patchwork_143546v3/shard-dg1-17/igt@kms_frontbuffer_tracking@psr-1p-primscr=
n-indfb-pgflip-blt.html> ([i915#3458] / [i915#4423])
>   *   igt@kms_hdr@bpc-switch-suspend:
>      *   shard-dg1: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-dg1-17/igt@kms_hdr@bpc-switch-suspend.html> ([i915#3555] / [i91=
5#4423] / [i915#8228]) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Pat=
chwork_143546v3/shard-dg1-12/igt@kms_hdr@bpc-switch-suspend.html> ([i915#35=
55] / [i915#8228])
>   *   igt@kms_joiner@basic-force-ultra-joiner:
>      *   shard-mtlp: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15964/shard-mtlp-6/igt@kms_joiner@basic-force-ultra-joiner.html> (i915#106=
56<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656>) -> SKIP<=
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-mtlp-6/ig=
t@kms_joiner@basic-force-ultra-joiner.html> (i915#10656<https://gitlab.free=
desktop.org/drm/i915/kernel/-/issues/10656> / i915#13522<https://gitlab.fre=
edesktop.org/drm/i915/kernel/-/issues/13522>) +1 other test skip
>      *   shard-dg2: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-dg2-5/igt@kms_joiner@basic-force-ultra-joiner.html> (i915#10656=
<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10656>) -> SKIP<ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-dg2-10/igt@=
kms_joiner@basic-force-ultra-joiner.html> (i915#10656<https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/10656> / i915#13522<https://gitlab.freed=
esktop.org/drm/i915/kernel/-/issues/13522>)
>      *   shard-rkl: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_=
15964/shard-rkl-7/igt@kms_joiner@basic-force-ultra-joiner.html> (i915#12394=
<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394>) -> SKIP<ht=
tps://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard-rkl-4/igt@k=
ms_joiner@basic-force-ultra-joiner.html> (i915#12394<https://gitlab.freedes=
ktop.org/drm/i915/kernel/-/issues/12394> / i915#13522<https://gitlab.freede=
sktop.org/drm/i915/kernel/-/issues/13522>)
>   *   igt@kms_joiner@invalid-modeset-force-ultra-joiner:
>      *   shard-tglu: SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM=
_15964/shard-tglu-3/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html>=
 (i915#12394<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394>=
) -> SKIP<https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_143546v3/shard=
-tglu-10/igt@kms_joiner@invalid-modeset-force-ultra-joiner.html> (i915#1239=
4<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12394> / i915#135=
22<https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13522>)
>=20
> {name}: This element is suppressed. This means it is ignored when computi=
ng
> the status of the difference (SUCCESS, WARNING, or FAILURE).

--=20
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
