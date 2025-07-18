Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A59BB0AAFF
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Jul 2025 22:16:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2F97310EA40;
	Fri, 18 Jul 2025 20:16:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZYxSju5Y";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C148C10E06C;
 Fri, 18 Jul 2025 20:16:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1752869791; x=1784405791;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=zci/kKv1tvcDqYtyMa2BvuaTyq6Ztc9qN8M9LHVcYYE=;
 b=ZYxSju5YvyeCasPArpSEp3oPKcilEsKXgAEJOoxyj+m+MWoH+07g1H2K
 pCRDSM42yQYl/M0Zye/O68roAOZ3e0XitJt1xei948j7PEZ+dJmiaxqhW
 9rcHkTqvNk3Kv85hMqTC4FGyktJ0/5wVxTTmxC7LPPv9l/59Dav7lVT97
 jWOI5oNNY84pXCG4sVb4Z0yl+CGzXRz0IFOyfPP37+GfW+0tzCVf7/mlT
 fP67EnXiQ2zpnodx8bhlzzqnQn0LUoS/zZFqkI4LL2AXbjCzDwEtYfw21
 ZF8Zjw/erwRLuRpouVKhL0lO69ZLYTbeRjCXfg51sXpftHeQ/gUTJEtz7 g==;
X-CSE-ConnectionGUID: hBsHquJnRV+bsW334nmBow==
X-CSE-MsgGUID: 2b3nKZVRTiaXuY5thp38bw==
X-IronPort-AV: E=McAfee;i="6800,10657,11496"; a="55292545"
X-IronPort-AV: E=Sophos;i="6.16,322,1744095600"; d="scan'208";a="55292545"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 13:16:31 -0700
X-CSE-ConnectionGUID: OLtgqHUvSGWVx/fJDjTdFg==
X-CSE-MsgGUID: lnLQZNZTT62AXZfy2NbjQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,322,1744095600"; d="scan'208";a="181852182"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2025 13:16:30 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 13:16:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 18 Jul 2025 13:16:29 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (40.107.220.61)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 18 Jul 2025 13:16:28 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fbCe8quvNvfSlP8a1Q5zbtx2SwmD8QTxFpSYqZiQAu2WVWn9Q+S25xV9n0DPNNBo4vaqYJjH6aXgpuUOn7/A9n4Nwy47ypAoNXfb7wnrsL9t0w0h6vuvloKxg4hW43LkPgwAvSzy/SwOrT3dNj5G2Wgw/tFFPsLP6C9RMiGrtXqGi8wPz8DOb41Rr9cbISsdeBPKAU3sd3q2FpjCPsi+oSd74JA1Eiwd1WYqMSlXvfli49KpyPHsti4318dVk2/Sv/7PIYCnny12LsPayZYdMn341+MM+CFj4BVCUuKfCXm0wgrifVvGcnOlQ4iwVcL6umrN9Qod9DDX3/V4P//sHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PwSbKuvTmg8ZPe9T9DWWzx04H+S39kgJdxzwzuEnZKE=;
 b=CZ/CIk9J/NcVE8N1HZ4NcPfsDPFwFCH2de4+fmzIDDECDGUg6r371DQpd4FethyHj/CWX649fwEINFh5JxtOVYBxqzAaQSMJWUpEWzT9Cnan9ne2+l911QXlPcse4z0m5Kui4roHsqImIDeGNAL2QnUquX2hRWMZ7yQD8jjR02eFa8sMPeGT8ckp0mhVnm5on91Njngc/S3Vcbh1THxYYrvpd8Li9LT1m1NmrJhbtXboAo+ny9FAe/jKUZqZMawMU0+aFnAu/ZIKoxm9wTZEOJUDJLpEbIIoB9bnw8nIelYlCMjEfTW76O3LvB9Ki6+Lc7AjRacO6PYm/qph6WRTlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB6758.namprd11.prod.outlook.com (2603:10b6:806:25d::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8922.39; Fri, 18 Jul
 2025 20:16:26 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8835.026; Fri, 18 Jul 2025
 20:16:26 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <aHqBlQ-yY2Lc8TuV@ideak-desk>
References: <20250717051603.1036746-1-chaitanya.kumar.borah@intel.com>
 <175275376596.1809.4970039481532019393@intel.com>
 <aHpuI_h1ytLlujDN@ideak-desk>
 <175285640686.1809.2888738151042642518@intel.com>
 <aHqBlQ-yY2Lc8TuV@ideak-desk>
Subject: Re: [PATCH] drm/i915/display: Skip unavailable power wells based on
 pipe mask
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <dnyaneshwar.bhadane@intel.com>, <dibin.moolakadan.subrahmanian@intel.com>
To: Imre Deak <imre.deak@intel.com>
Date: Fri, 18 Jul 2025 17:16:20 -0300
Message-ID: <175286978035.1474.9787252535829745230@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR03CA0091.namprd03.prod.outlook.com
 (2603:10b6:303:b7::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB6758:EE_
X-MS-Office365-Filtering-Correlation-Id: bdae71f6-8169-4396-211e-08ddc637f946
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dittNWdSMVh3cW5KZ0xJcVNUd1BrTFNLc2lwYk1nbXpnZTZxUEQwMjM5WWdx?=
 =?utf-8?B?UHdtU0RqVkJvVWtuY0o5VzhsSE0zYklKSkNzTHJyTWV0SEdjVGFnSXFFSUF0?=
 =?utf-8?B?a3dXdThyaWozeCtsdXltUmpnMTlPYzNqUVBIdkVMTEtBSmt4RHdBRVMzdlo4?=
 =?utf-8?B?M3ZudkhMVmhNQWJ3VmNpSzZBL002VHZYdFJTaHd6MGFsTWpHZFNTMFBnK2tj?=
 =?utf-8?B?TlpWRitqbnRzc2FUMlAxWndDUnpBN04yM0xURlViTkpJSVNaWXcvclVEOFZX?=
 =?utf-8?B?bmtYby9Ydjgxc2tjbmFaRnhmeFkzVGZVTHFLZE1XWEJveXpyMDlLTHV1Y2s2?=
 =?utf-8?B?U1RFa1FTMSsxVkdTQ3p6Q0V2K3dxbXlrTHgxVWJmRVhvT2tPeENHU2h4UEZt?=
 =?utf-8?B?dzNqRWZCK251cDhVMXNJempidTlTU0xRSkxIeDVTeTY3MkNBOWFHUjBZWFMz?=
 =?utf-8?B?MVJlZXZSc2pBK1REU3Vtb2U3QVByWG8xdTlwSjJsaVJBdHo4dm5zdVkvUDFo?=
 =?utf-8?B?ckZqL29lMTI1S0tMRHovZlJRanp4cW9VdnQzWFd6SllpdDgzaTh1QVU1b0ZU?=
 =?utf-8?B?cTZocng1Um9jVXVRV0ZUL1EvUk13UXNwY1prdU5EQ09FaWpxNjRBRkFLSzRD?=
 =?utf-8?B?SGpwMmttMjdHUmlSbDVlTUh4Zi9weE90V0tpcFNGOVJvdkFjcnJnZmFhRHI5?=
 =?utf-8?B?WHYzaE1pQ1RGZ0Rpd3h4VUIrV0wxZDh4NWJUUW9HbWg4SHFYVDBtMEZsQzhj?=
 =?utf-8?B?WjdlendIb0E4d0FxSk5uTC9mLzZJYWdONnJIRXVyQ0IyY1g0aURoNzJscEJx?=
 =?utf-8?B?VmZlNnJtNERpN0txcU1sMlMxcUg1eVpVN2FkaG8zNk1vK1M4ZllXTExQNGlV?=
 =?utf-8?B?T1R1dVd5OCtFdUljTkd2dFhHclhaOHcxajdFZXdod1N0cXd2ZWVVM0tRYTkz?=
 =?utf-8?B?a3g2NVpRMWJqamc4eFhSN0RLZnRKUGZwVmdVSXJ0NDdXVWxSYUlMT1hZTUhE?=
 =?utf-8?B?L0V4ckFIVnJMQ1NUVHFEejV3NTRDd3BsSjF4OTV3N0hGVlJaSVNJeDE1U05z?=
 =?utf-8?B?M01lWGF2V09IU2x1L1lmNnNIM0lKUkxlMUluUUp3TFR5Q1NuOU5oZm5IZmc2?=
 =?utf-8?B?Ym9WTGt3aUJySVBJSENwWmgxMUpuQzI5bHU4ak5LNnI0UjZSVVQranZFYTFK?=
 =?utf-8?B?UzA5Sk5sMFpUZHZzVDhpOXR3UUQ4SlNIdmRrV2lPN0ZHTlpDMXNIeENvOUZQ?=
 =?utf-8?B?WXhBeVVodVQ1Q3JGaGZsdjNRcGtRSW1HaUtXUzdGNFUzWWhjTHAyeWdaNFlH?=
 =?utf-8?B?TWpiSlAzSlZQYW5uMklaa2lhVlc4VzNsWnFDVDEyRVZPVlAyYUNra1FVcndG?=
 =?utf-8?B?YlRNODhvMW9UV2tVV2lPVFg4UGtjVWI4UFRldlhZVzdjeHBhVktHN1BrNDUv?=
 =?utf-8?B?RXZaK2NHbUsremxzR1U5Zmh3emhJSkhJQiswOGZXZS9tSHl6SU9IK0FVeEp3?=
 =?utf-8?B?Sm1qRENmM3Z3cW94ZXg1NVR4V0hSSmNnT0ZLVjh4WnhHblFYZ0R5YUh0NG9D?=
 =?utf-8?B?NUZQQlRibUxQTEZJUEgvK3ZBUi8vZUpieU9Sc0pJZVg2RU9rWHh1cWFTM0I5?=
 =?utf-8?B?OGZhUmRhemJDL2xkV1kzc2JkMXZhQ1hyS1FUc0JVWHpMSnhuVEk5TFVxV2Fq?=
 =?utf-8?B?cndzYnBTbnd1SGI5Y2dUV2RFa2FUdkFRcGl4Y21tdG5COXdJQmpseml1a1Jy?=
 =?utf-8?B?THptdWVlQitlY0dpRmhSRHl3TkEzVGtlYnBwaWF5NU13UTNVcHYyQzNsYmJW?=
 =?utf-8?B?ZEN0ZjQvWWR0REE1d3g3bjd2ZllWS05Kc1FsOEhnK2lPdFFRZkhTdmduaVFh?=
 =?utf-8?B?NXIvQVNwZ20vRzNUdDZWNVhSczMwQkV3NEdURm5LUGNBUnM5VzBSM2FzZzhT?=
 =?utf-8?Q?x5cysm4JwVA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cVNWcXlMTm16bWhPNlF5aTliSlAwSlNOMWtyZXhCdVVjbG9qRWRrREExaFJt?=
 =?utf-8?B?YlpNYmt5UXRVSEtVajJEczQ5YnN1MUNxWEJncEZDODZBdWhoclgzb0h6Y1cz?=
 =?utf-8?B?LzBRcFduc21aVXlhYVRiNURCcWtQbjdzMVpWT0F4enFZNlBXaFNudzVpTExm?=
 =?utf-8?B?RGljQ0t4SjN2Rlg1RG5OdHhlc2JrSk1mQytTWVJ4eWJPd0NqY0FVQkpqMzNa?=
 =?utf-8?B?eU1uRXkrM0tpSXZlOE5DcEdmMEYrWE9CdmwySlRPSUFMMkNycXlkdWFVTHBa?=
 =?utf-8?B?SUJWYmREL2paRHBsV1c2OXJDK3phZzZ5UllmS0hDRE42VnI1WUsrWFVkZlB5?=
 =?utf-8?B?TFBhRU1zNjZRVHZGNW1memJaOHlEMGo1WDY3RjAwSUhYMnlzRXBhbldtN0tl?=
 =?utf-8?B?QVZrdHRiWldmaldoM0FrUGJmeUwvUFY2OHpZS3RmRitWTFVyKzFTY25CbFF2?=
 =?utf-8?B?ams1TC9saXpSM25sbllHb2hyMVF6bk9WWm5zUmF1SXlsQ2dOYUxaM3FjSTJQ?=
 =?utf-8?B?WjR6VE0rY002VkRDVGZ1VFlTSGxGb0loU1J3S3FWU3VKNEJlUGg4dHBmRGEz?=
 =?utf-8?B?SEJxand0ZUxxM2hvTWRXN2FFQU1WQ2xrcUFwNzlyc0ozd0ZmKzJ2bW92ZmlR?=
 =?utf-8?B?NU5GRXVPd0hQQUxGMjcwUGU5Y0dpRllBYVhOQm1GYzVpNElEQnlaMzRCQTdj?=
 =?utf-8?B?Q3JzQ3hlUlZUSUZnMFBWNWJzNFZPa3c5TW9RYXV1QjYrYTRJdnF5NEZzQUht?=
 =?utf-8?B?Z01ZQ0dXL1pQVldtenZ3SENwL3pLOWJVenlrUjNHWFhiRzVMcUpiZDcvUFpZ?=
 =?utf-8?B?QklPSmZKcEh0OFpGdisyS3ZlN1JvemVKMVpxUUx6VVBmUzMwR3k4b3IvOXcx?=
 =?utf-8?B?UjcvSTdtTk9ydGJBWlZrdUNmYWViNkczZzFwYm9GaTdoZ1JlWHYrOWJUbU9j?=
 =?utf-8?B?SlVIRlRkUnZpVzhvOFBMUnlsdTJyeE1rN2hXeENmWUxQM0RjSzd4d29wbElL?=
 =?utf-8?B?blhucWhJZkc5MjkyaTYwVjZCZHIzT2NLL0s2U3l3R09qNXlmUnY3b3p3cWVG?=
 =?utf-8?B?K1RFbWZtRW0wWnppd0ErOTV3RUE0STBRbGRoa2dlTUQ3aFNpMU4zUit5NlM2?=
 =?utf-8?B?WmFIR1JJTWFjMUphTDdqL0pPT2pGWHkrME9iemczOWMxS00yT2thQVQ2R3dB?=
 =?utf-8?B?Mng1WTdjRFRUaXUzR0tVbW5PUzJZVU96bWtHYVd3a0MyYVorY0ZEcS94SHZ1?=
 =?utf-8?B?UGJyaGJmK2w1Zi9mYU9kc2RTaHUyRXRaQzJBUUtCOG56STVLemNJd2FJWHhj?=
 =?utf-8?B?N2RTNm9lMnpYS3pUYjJIeFBKMFhjd3owajV4dkg1cnVuYzlCOFl3TW9TK3J0?=
 =?utf-8?B?TmVDZEVDZW56TzN2MHhadGRHRk5yY2lNcEtycmRjWU9Jb3VYZWNZaUFZbjM1?=
 =?utf-8?B?WVREV1VYd1h6V2x3Q1BCemhBWTlJSmFmdEhodmdJd2pyWDdydjlpd01oRmpx?=
 =?utf-8?B?VVJYVEZCTXMwZFR1K3l4S3piR0lkK2JnS3hEWGY3K1hpRWVSS1pxcVdwa3lO?=
 =?utf-8?B?eXl2T1NxMjFFS1pNWDV0VkpkT0UrRFU1K1FsQW5FME56QWxPUW9uMG1NM2N3?=
 =?utf-8?B?UTVwVnFOZGxldmpUcytrRDNiWnpkZ2NJMVlEdTFFUnJmbEVMS25DQ296RlVx?=
 =?utf-8?B?eXc3U0RtUHRRUElFRnNxWFBoRWVmTjhTSWlXVkc1VW5PSitnQ0lYZDRKeDFQ?=
 =?utf-8?B?V2pUcmVPUHY1bFhGekFYZWpXb2hxanBJZ2NnZi9Oc1cxckMyLy9VMHZsRkJC?=
 =?utf-8?B?dGpJanZ1K2RjM1FHSzVOYU95ZDFNQXFiR3NtOGUvckNGTXh6clc0aUErNlVt?=
 =?utf-8?B?cVZtNGJnMlp0cmQ5Y2VnaitrdXEvdUxUeWNJZ3Jla2ZJdmFSV1dON1ZKR2gy?=
 =?utf-8?B?WFdMWVl3dnE3YmZIMnVTRjl5NVV2M3F5OHZmZnlsc3RPaHNiT0U4cXpJaDZ4?=
 =?utf-8?B?NEZKZmJYQWthVWpNTWpaMEM3QnNwYklsQXl4U0NTL0FpMkxSRzVLVjFkNDJW?=
 =?utf-8?B?WmdsaW10RXRuKzJINUtJcUpHRyt1U0M2TTJDNkNUMllxTXZWRDlFUFltQ0U3?=
 =?utf-8?B?ckFYcmJFMkxuVnpXZER2cmptejhlTEVtZkJsUytKSWo4RllUQkFFMFJoaDZQ?=
 =?utf-8?B?OUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bdae71f6-8169-4396-211e-08ddc637f946
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jul 2025 20:16:26.7162 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: d2bmITak4fJnUdRcGpDPOh0mosqRejKzV40HCQeitphJK6nNJkZGx0rSHkDT8kQ/q5JO6kk9v7s5bILTZziMaA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6758
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

Quoting Imre Deak (2025-07-18 14:17:09-03:00)
>On Fri, Jul 18, 2025 at 01:33:26PM -0300, Gustavo Sousa wrote:
>> Quoting Imre Deak (2025-07-18 12:54:11-03:00)
>> >On Thu, Jul 17, 2025 at 09:02:45AM -0300, Gustavo Sousa wrote:
>> >> Quoting Chaitanya Kumar Borah (2025-07-17 02:16:03-03:00)
>> >> >Some power wells are only relevant for certain display pipes. Add a =
check
>> >> >to ensure we only allocate and initialize power wells whose associat=
ed
>> >> >pipes are available on the platform.
>> >> >
>> >> >This avoids unnecessary mapping of power wells, particularly when pl=
atforms
>> >> >support a subset of pipes described in the power well descriptors.
>> >> >
>> >> >Suggested-by: Imre Deak <imre.deak@intel.com>
>> >> >Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.co=
m>
>> >> >---
>> >> > .../i915/display/intel_display_power_map.c    | 19 ++++++++++++++++=
+--
>> >> > 1 file changed, 17 insertions(+), 2 deletions(-)
>> >> >
>> >> >diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c =
b/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> >> >index 77268802b55e..ca73e4084354 100644
>> >> >--- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> >> >+++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
>> >> >@@ -1748,6 +1748,16 @@ static void init_power_well_domains(const str=
uct i915_power_well_instance *inst,
>> >> >                 for_each_power_well_instance_in_desc_list((_descs)-=
>list, (_descs)->count, \
>> >> >                                                           (_desc), =
(_inst))
>> >> >=20
>> >> >+static bool
>> >> >+is_power_well_available(struct intel_display *display, const struct=
 i915_power_well_desc *desc)
>> >> >+{
>> >> >+        if (desc->irq_pipe_mask &&
>> >> >+            !(desc->irq_pipe_mask & DISPLAY_RUNTIME_INFO(display)->=
pipe_mask))
>> >>=20
>> >> According to irq_pipe_mask's documentation, that member contains a "m=
ask
>> >> of pipes whose IRQ logic is backed by the pw". I think we are
>> >> overloading the meaning of that field with this logic.
>> >>=20
>> >> * Do we have guarantees that irq_pipe_mask will always be associated
>> >>   with the power well that powers the pipe?
>> >
>> >It is the case on all the platforms and so it also provides the require=
d
>> >way to identify the power well for a particular pipe. irq_pipe_mask
>> >could be renamed to pipe_mask accordingly.
>>=20
>> I mean, that *exclusively* powers the pipe(s).
>>=20
>> As an example, bdw_pwdoms_display appears to be responsible not only for
>> pipe B and C, but also ddi lanes and audio, for example.
>
>Yes, these power wells do support other functionalities as well and so
>they must be registered unconditionally. pipe_mask would still be
>correctly indicating that this is the power well for the pipes in the
>mask; these power wells wouldn't be skipped either during registration,
>since that logic must use a platform pipe power well mask vs. a
>non-fused-off pipe mask.

Yep. I think that works for the platforms that we have today. That said,
this whole thing started because I had the impression that pipe D was
fused-off and that power wells for fused-off pipes should not be
touched.

It turns out I was wrong in both cases:

 * I just got confirmation from hardware team that WCL does not have
   pipe D neither power well D.

 * As you explained in a previous reply, the driver needs to deal with
   power wells of fused-off pipes to ensure those get properly powered
   off in case whatever was controlling display before the driver takes
   control let them enabled.

So, I guess we could either

  (1) go back to Chaitanya's original patch;
  (2) or tweak this patch to use a mask of pipes supported by the
      display IP instead of non-fused-off ones.

I personally would prefer (1), since then we would make the presence of
power wells and mapping more explicit in the code; but I wouldn't be
against (2).

--
Gustavo Sousa

>
>> >> * If the power well that has irq_pipe_mask is also used to power
>> >>   something else than the pipes, we could have issues if pipes in tha=
t
>> >>   mask are fused off.
>> >>
>> >> I'm leaning more toward a solution that makes POWER_DOMAIN_INIT map t=
o
>> >> POWER_DOMAIN_PIPE_* based on DISPLAY_RUNTIME_INFO(display)->pipe_mask=
. I
>> >> have some idea of how to do that without rewriting code to use a
>> >> hierarchical structure (which IMO would be ideal, but takes more
>> >> effort).
>> >>=20
>> >> The idea is to, during runtime and initialization of the mapping, set
>> >> the bit respective to POWER_DOMAIN_INIT in each power well that has t=
he
>> >> bit for POWER_DOMAIN_PIPE_* set for non-fused off pipes. That would
>> >> also require removing the POWER_DOMAIN_INIT from the static mapping f=
or
>> >> power wells directly responsible for POWER_DOMAIN_PIPE_*.
>> >
>> >Power wells that don't exist on a platform shouldn't be registered in
>> >the first place, so it's not enough to only remove them from the power
>> >well->domain mapping, while still registering the power well. Otherwise
>> >these non-existant power wells would still be accessed while disabling
>> >any unused power well during driver loading/resume. Also these power
>> >wells non-existant on a platform would be incorrectly listed in debugfs
>> >and other state dumps.
>> >
>> >However, I realized that pipe power wells that do exist on a platform,
>> >but for which the corresponing pipe is fused off (for instance pipe
>> >A/B/C on WCL) we still need to register the power well. On some
>> >platforms at least such power wells may be enabled after HW reset/by
>> >BIOS and so these still need to be checked and disabled if needed durin=
g
>> >driver loading/resume. I.e. instead of the above
>>=20
>> Ah, I see. Yeah, that makes sense. Thanks for the details!
>>=20
>> Well, although Bspec overview page tells that WCL's display has only
>> pipes A, B and C, the page specific for power wells still lists power
>> well D. So I'm wondering if WCL display just has pipe D fused off and
>> the power well still exists or if power well D being listed in Bspec is
>> just a documentation mistake. I'll check with the hardware team.
>>=20
>> >
>> >DISPLAY_RUNTIME_INFO(display)->pipe_mask
>> >
>> >something like the following should be used:
>> >
>> >u8 pipe_pw_mask(display)
>> >{
>> >        if (DISPLAY_VERx100(display) =3D=3D 3002)
>> >                return BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C);
>> >
>> >        return BIT(I915_MAX_PIPES + 1) - 1;
>> >}
>>=20
>> Well, if power well D does not exist indeed (i.e. not a case of pipe D
>> fused-off), we need either this above or maybe go back to Chaitanya's
>> original patch.
>>=20
>> I think I prefer the original patch, making the power well mapping
>> explicit.
>>=20
>> --
>> Gustavo Sousa
>>=20
>> >
>> >> --
>> >> Gustavo Sousa
>> >>=20
>> >> >+                return false;
>> >> >+
>> >> >+        return true;
>> >> >+}
>> >> >+
>> >> > static int
>> >> > __set_power_wells(struct i915_power_domains *power_domains,
>> >> >                   const struct i915_power_well_desc_list *power_wel=
l_descs,
>> >> >@@ -1763,8 +1773,10 @@ __set_power_wells(struct i915_power_domains *=
power_domains,
>> >> >         int power_well_count =3D 0;
>> >> >         int plt_idx =3D 0;
>> >> >=20
>> >> >-        for_each_power_well_instance(power_well_descs, power_well_d=
escs_sz, desc_list, desc, inst)
>> >> >-                power_well_count++;
>> >> >+        for_each_power_well_instance(power_well_descs, power_well_d=
escs_sz, desc_list, desc, inst) {
>> >> >+                if (is_power_well_available(display, desc))
>> >> >+                        power_well_count++;
>> >> >+        }
>> >> >=20
>> >> >         power_domains->power_well_count =3D power_well_count;
>> >> >         power_domains->power_wells =3D
>> >> >@@ -1778,6 +1790,9 @@ __set_power_wells(struct i915_power_domains *p=
ower_domains,
>> >> >                 struct i915_power_well *pw =3D &power_domains->powe=
r_wells[plt_idx];
>> >> >                 enum i915_power_well_id id =3D inst->id;
>> >> >=20
>> >> >+                if (!is_power_well_available(display, desc))
>> >> >+                        continue;
>> >> >+
>> >> >                 pw->desc =3D desc;
>> >> >                 drm_WARN_ON(display->drm,
>> >> >                             overflows_type(inst - desc->instances->=
list, pw->instance_idx));
>> >> >--=20
>> >> >2.25.1
>> >> >
