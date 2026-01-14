Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 82547D20301
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 17:23:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEC9710E62D;
	Wed, 14 Jan 2026 16:23:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ilGcofG7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4967410E62E;
 Wed, 14 Jan 2026 16:23:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768407792; x=1799943792;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=/ZbjdpUJd6D03JSiVVcOxtR8/3xu/E++LtASW5nin+4=;
 b=ilGcofG7WmbxfSw7floq+1qBI5mdoX1iYjctXGMn9KC3evrn8FSyNGtH
 W6yNe3raTeEvplu6a3A+IawsnHs44FnYCBanbpNgWW6b8kT6EnxcaDJiE
 vgTDhw3GYY5BNU1+44NCZbWGYepgdoohftQsa4/RNmTWp2rx6j6sjaNtd
 UxiQn7T5AbTxfNBhox0hT7wcpm6XFHoLhPzSP21lC7i9AUMQsALb3+MAB
 /Q1uU6XAYUKNLBRBJCFLTQLcZFwMS2Ly9AxdMMzkblyfc9rq9gzrJWh+7
 LFf1kscMyL9e3Uu5l9AR9Ukt+yHftkE3NoPYo72pSk8sgaUKkIj8rKNeh w==;
X-CSE-ConnectionGUID: 4Mb6VS+aT/++LOii02njJg==
X-CSE-MsgGUID: urzBbn+pQ/CuM6uCeZqsaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11671"; a="80007397"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="80007397"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:09 -0800
X-CSE-ConnectionGUID: C2IHxuCKSAmxFhx1xglQqw==
X-CSE-MsgGUID: 8xrlZDngRXO4IIh2IvvHig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="235443558"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 08:23:10 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:08 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Wed, 14 Jan 2026 08:23:08 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.28) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Wed, 14 Jan 2026 08:23:08 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LmumAkNnbwcvY6+JvwzKHzzJGOnTXCmoSI9LTtduA4q50yKolzyigHmyPPVSLSvOoTzliU2mBqRTVPSlrxsnGygqZNG7VcAVMICLFw4eDcTsXorPwllFOMFkwsTeH3S8UxKvvmCwwHi+7rU6mR6f8ZK2JdOxeEsZT8SsNP2y1T3SEk/d0lAfEYaZAVfgPCQcJNKNyVTg02qYE6wDARoXz5pVvCzvmF5jTI6zqjp9dTQpl0fb2M9Ts7WjIunk1Yv3mczNefMZ9GjRx809lWuPWecT2Z4ItHzJotlWqLcJJwuxhKC8/oDKtYs7HTTHwjbbm2YH6P8LZ0BTF2x7zcYhoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=UmRiEMwDKhxSzuwMgh1hHzwit5vwXiu8+Fa2nhXml1E=;
 b=c6zWk1Ym+bQcoeVtN4fIvW0E76hblhdXOkOZG4DL9x86JWhg88s48IM9w5mfZJFsjC+cAms73O8dAk4Orecg+XC01wiJvetqiUuBVIlAUqOG88bcWY+eyF3VXLjotCxDLUVACivZrFiUiBkEQHrs4w5KOhoOBeqXTcyDHeI+4lcfkVsHD8rY3O0+Ig7T2pnkVBLphJUDo8jnWbk/3yufINEgYz8AtdpBHSxLOsVWRn+vb+x83gfBagy/hVkWBCL5c6tDs9XAQ6Yu3UGZBxC9z+JOmVUS0L1EgnVLM0z7QccJiVEmziW6JIm9dXjoDIb99R9MECmel0L7KUR/6ocO2A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com (2603:10b6:a03:2d1::10)
 by DS0PR11MB8017.namprd11.prod.outlook.com (2603:10b6:8:115::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.9; Wed, 14 Jan
 2026 16:23:04 +0000
Received: from SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f]) by SJ0PR11MB4845.namprd11.prod.outlook.com
 ([fe80::8900:d137:e757:ac9f%3]) with mapi id 15.20.9520.003; Wed, 14 Jan 2026
 16:23:04 +0000
From: Imre Deak <imre.deak@intel.com>
To: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 08/15] drm/i915/dp: Use int for DSC slice count variables
Date: Wed, 14 Jan 2026 18:22:25 +0200
Message-ID: <20260114162232.92731-9-imre.deak@intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20260114162232.92731-1-imre.deak@intel.com>
References: <20260114162232.92731-1-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: LO4P123CA0381.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:18f::8) To SJ0PR11MB4845.namprd11.prod.outlook.com
 (2603:10b6:a03:2d1::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ0PR11MB4845:EE_|DS0PR11MB8017:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b6718d6-0071-4a86-88fa-08de5389313a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|1800799024|376014|10070799003;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WUFyTy80dk9UK2s3Zm9IZ2lKTnJnWHBFb3N0dFRsdzRRd3RGMGJrbk8wZVFa?=
 =?utf-8?B?NUxZMS9rN1NIUGNnYS9VTC9uSFQyRFZlUjljQ1ZKY1hMM0FCcFl0WTE4c29I?=
 =?utf-8?B?bUNURmJzOFl4WnpESE9KMUFUWmNYK09IalFXblBJR3FlY0EwK2hlNU1icis2?=
 =?utf-8?B?TkRqWlRZZUJSMktFU09TTlArNE9HSkhkNHRvWUVtckhTWUQraGMrVENXdGpG?=
 =?utf-8?B?d0wvMzhweG5BQU9ZV0pETzB3Sit0cUduWW5qODhhWE1hYzlEeHFabDNwWjFW?=
 =?utf-8?B?b3RoM3k1MUp6eGpIQnZ3Z0FodklRNVRmRzZKSjhFWlBnd21nVURHcGdJTTVD?=
 =?utf-8?B?Ti83NUVEbmNTRzlFdnVlaEtzdU91bzgvaHdWelk4dWtPWVF4VkpTRUpHV1FR?=
 =?utf-8?B?c1d4NmtXSlpRRzJFdWM1eHBOUjJNaHR6dHB1Z2VxOVpqSW5CVk9MNEoySE05?=
 =?utf-8?B?TVg4Z2ZjZ0VLZnZkVnhJWEp2NzFHc0xBTVRXRzc3OE5OVUV0V2FKTHBaTlAr?=
 =?utf-8?B?eWFObFNlZUwxV1VwSCtrUDBtQTloTGsxZzUvZHpJU2F1UFQ5Skl4amt6R2o1?=
 =?utf-8?B?aXV0L0pFTm9wM3hXYWNBRStKckhUd1BPaUJnTUpscFF3L0d3azhTbTYzKy9n?=
 =?utf-8?B?RjNhZ25TM3dBa0ozQVM2YlBtckxMczlXbDdsZWNabTJ6MlgyRjc3VEVxVzN3?=
 =?utf-8?B?Q205dXVZcDg3cXdIUWJqOSsyNmoya2JydC9EcW5kT0FXYlE4ejZCcXRaWjI2?=
 =?utf-8?B?aXExTHRLSmNtSE5KY1FiOTl1MnJhNUtYVUUrdGd0dyt0a2ZBQ3hqZTRETklE?=
 =?utf-8?B?M3lHc1pUWkNuRC9kMW9hNUFvREpCVTliUS9RM2lrQk84dXFVYk00cTRCdzg0?=
 =?utf-8?B?SUxNOFRkVGIrQU1FaUVKcDA1dWhpZU5wdXRGazI5TUI2Ymd3endHMkNLWkNl?=
 =?utf-8?B?Y2lxSC9Da2RySUQzQ3YrU1FhZ2lISEc0S0dDRVdpZFZyMW5rZUc2VDhFcDJF?=
 =?utf-8?B?dlNteEtZeHZhM1Q2OTBEdDlHZnFhL3Q5NmN2QTdWQ0QwbmxnY3ZwY0JSZkE3?=
 =?utf-8?B?OUpQbTdjbldUWnJ2L3pwZS9pQ3BMRlRreHVBSEF1NjlDeE03dGwxeHBsVitx?=
 =?utf-8?B?bEc4UkJ2Mkt4UE9rVjFHVTRrMEdQZVVqWkVzcG9wbWJRc1JpeW1iTktwOThU?=
 =?utf-8?B?RzdjQzY3SnlxWWpYN1JiRVJVUHNLOTJLd2huRmxhMUQ2cXRUZ2gzN3FqTXA1?=
 =?utf-8?B?Mkg3WDRaK3pNM0lMSVlsQnN1RWxOL1NURDRuUzZaWUpLaHNBZW9XZTAvTVgy?=
 =?utf-8?B?ZytFUVFyc1VoWGJDTGFBN1lQdmswQVZTY3dQU2JjYVluOWZiYTg0L3paVVlt?=
 =?utf-8?B?S29HVXE0V2lSNUhiekg0VHBHV1VKWjR3d0oxN3BHakYrSm1oQ2t0VmViSDVq?=
 =?utf-8?B?VldHYkc0blN3WXhnSlFldkc1T2RjMUd3WFAwMnhZQXhEZ1B1dkMyUFJrc0JS?=
 =?utf-8?B?eXFNeGhFbnF3RzgveGRMWUxhaFJTU0FvbkwvUjNVcTRLa1BGaWU5NU4ycXdm?=
 =?utf-8?B?L3g0c2NkSlZhdDlmMFZQcXAyRWo4QXBiZDJNalRJVjAwcDVSS0dsd1FSM0I5?=
 =?utf-8?B?TFVpV1RaN0FpUmtleUxxcHBrTi9xMWo3a0dhVVgrcUErYXV4N2tlaWxBZmN5?=
 =?utf-8?B?QlRRSC9zVER4eUJwRlVMbndYVnFzVzhMN3lXMEFRVFFpbEJlSnZtdUtQSWti?=
 =?utf-8?B?eGlCeDM4eTVQRTVZbFQ0Z200d1pGZ0FQNmdMUUdzNEs4Rno0RGV6R2kybVBP?=
 =?utf-8?B?a2lxRW9PVDZpTG9mencxcnl6ZW9XUUJGckFQN3hwYTFsQkMvRFBoYTZvWlQz?=
 =?utf-8?B?bko2Yk5NNnFIeTE4TE5JOEdjVC80dmltMURLYitKbFJqZHQwdEpnTHl4T3RM?=
 =?utf-8?B?MzB0SzRzVzkvNzhzb2dLTFVHZzdwZzJpTXU2aktKOGdtTUdOTmtGWUdRZkFW?=
 =?utf-8?B?RUxiN2hTQTk4dnFwSkV3YSthZGdDOGhBTjlFRDhtQU1KbklwN2drZlJ0RUpO?=
 =?utf-8?B?WkZKRDhxMFhkblluUEhOVnBUL29DczVsb25mMGFJR1RVM1hiVVRPN1dicjI4?=
 =?utf-8?Q?wuyI=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ0PR11MB4845.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(10070799003); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aWk2T1dHUklyNXJrWHhMMUxCUVJwbnNZRlEyb0hpQnVaNUxsQ3MvTk1WWnVS?=
 =?utf-8?B?OVMzaFlmVWFkVFFrSFJpY2V6RDdWVk1Bb1pWS3k5VnQwaDJ5cHBMK0phdUJs?=
 =?utf-8?B?MDE0aDBwUWx2OUpPKzlJV3ZQRVlFdEdLUTd1S01RSnlKdk9DamxFRDRJNHVt?=
 =?utf-8?B?VU5zUmdCOUs2RjN0OE94em5VMFVhNS9HbEFXNUpWOFZ2WGptRkdqUlNEYUcx?=
 =?utf-8?B?ckhQSkEwR29JZ3BiVXFkaExGRHJaRUVVTGRMK2JkMmVCMTV0Rmp5QjRHcG1i?=
 =?utf-8?B?djc3NG5JdXprKytUZHI4Q1NXTXVqc1NZMkVxdW9raHhVTW1NRFcvZnAyUFlD?=
 =?utf-8?B?RzRkTXh0VGhRMWtYVmU4NmVaVFNVZHg5N1YrSU00bjN5bDRtMVJKRE40S3Fm?=
 =?utf-8?B?N1VhVTRHdWo3NW80VzVKSGd2OXh3S2ZBM2ZoWUpvYkw0bFJDVURZMXB1SEtY?=
 =?utf-8?B?dThERFczTjlocHYvOHRnRk90eG5QQzczcjJWYm9YMi9KU2gvQTlkQ2l3OU12?=
 =?utf-8?B?OHIvaU4wdXJtTzRtNUkxR1N5a3BoVWhGYTlEK1RON3pxVnhscTJ5REdNUi9h?=
 =?utf-8?B?MTFQYVRnKzBWWlJJdktLeTJGYzVSaGpDU3FrUVFaaHM2Y05sQ2x3LzNERzgx?=
 =?utf-8?B?V1hjeFp3a043Z3RLL3VZWUxhSTRiOGJURVhHNm1iQ056NVZuMFYxMEFTbkJp?=
 =?utf-8?B?S3hTTUlabHV4MnpKOFlHRFJ3bjZtMTh4aEMrYy94TndZQWtIZTFHTW9GQjdj?=
 =?utf-8?B?QW0za3NEUjNTL2VMMXA2d1lqZDBGVitSQU8ya0t4dFptYXV0azFXSVBVUmxu?=
 =?utf-8?B?ZmpsaUpvUmkwVDhhdUlLMVQ0dUxUa0hXSDlvbmFrbnR2b2xUMnNHRkd3WjY5?=
 =?utf-8?B?dDJVUnlFZndtTEt2VzFoUUErazZSckwveE82Uys0RlpHZnh3Y2dYbEwxTHky?=
 =?utf-8?B?SXFZVlhwbHBSaUltcjZNR2JzQm9yTWRNTXhYdk1zSjhkRXdNY1dIVm9pSXUx?=
 =?utf-8?B?Q3dHUDQ5Y09mellHaDBIYnY1WG5WUWR6c2tGSGsxdTJTZDJicFFWcXhPVm1Q?=
 =?utf-8?B?UUtoS0E2Rlp2VE5zNEszVjRvT2gwSHg1TnVNTzRnN3hDZUpBeG9IbDhFc2Ft?=
 =?utf-8?B?WWJGbGx1NXBId2RjSFZzUEhwR3dHUlFaZXR0d1ZBQXYyS0Y0UzM1c3B3bGE0?=
 =?utf-8?B?Qkd6anVxQ1pod1E0REg0cW1idUtyU2RCb0w2VkxjM3BTb0FDK2lZZUZXc0s2?=
 =?utf-8?B?aFI3c29xRi9tVHdFY3FpeFNoTzloWUxVSUk3Wm02RnZhd1BRNG5xbHZOREls?=
 =?utf-8?B?aWg2M0swODJaZmRMVG1OVGxIVVJNam1JSjJoTEcyMXZrN1lhdDROajBjcmRG?=
 =?utf-8?B?RTI0L3FTNElWYnZVdDFLd3piSXN2YldmUlJOOGpReGRpRDJtWDRqVUJ1ZFFR?=
 =?utf-8?B?TVlqN0dGMGlIeCsrV3ArNGdNc0ZYSm1GU29Ibk5SK2ZQRVNka0Rtb2p1dkF2?=
 =?utf-8?B?YWltZXM4cjZFVmdMaSthM3djYUxOdXNLYmJqa1o0bTkyUmQ0OFF5TTZsRFIv?=
 =?utf-8?B?azBPR3g3OTZyLzlCME1yYVoxWWdwdS9IbGVQSTB1UmFERzA3Ky9XckhPaTNt?=
 =?utf-8?B?MjdaOE9BM3ZoMnU3MmNKZThvWkk3TTRHejhielFNZDJrMGRQdnk4KzVQak9p?=
 =?utf-8?B?VFVzSGhzU3RTa1RON3R2d1EvZEcydlJmMXUwUlpBNm9CR3JXNkNYZ0ZoSnIx?=
 =?utf-8?B?S3VoVWtqZ25ldnhjMVk3T3I4cGh3OW5nc0puMVFBK3VocHZYNHRYYVIwUzJm?=
 =?utf-8?B?aWRVMG91NUI4bHh5UlYya2F4aXQ4WDR5MExNdHN4T1hZajRJbGVsSXh0akxF?=
 =?utf-8?B?V3VQR3B3R2xQQVArZDRUZzVrc2U5bGkvM3NxVWRyTHBISVozZlREcmpScit4?=
 =?utf-8?B?ampyK3RGQy9NSmdVTjZNbHVHV3loc3lJcjRoQ2hYRTBwVnl5dWJzQ3J0VVh3?=
 =?utf-8?B?KzZRYnZpVHkxWnJ4RDRVV21qLy83a0ZCVDhLZkM3SUFHNkR2NFFSRWR1a2xk?=
 =?utf-8?B?SjRuRjQ0aFE3bUtWSEJhUGlMNXArQnJTTUxha1Z5aDBvbXJXeHRUZS9GMk45?=
 =?utf-8?B?WkJrNnAzdzdTMHl5ZFBCZlhQRENrbm9leWtUWnhUL1F2S2l1bHJYaFBtenFP?=
 =?utf-8?B?d0ZCTFhtaE5Mdzl3Sm02WnllbzJvQjNBZE5JL3ErVldqME5BWDhrdkZPL2N5?=
 =?utf-8?B?Rkx1bkY5VTc3MnlmbGtXcDZ6TEgxaUNLaHBDTFIvRTc4elBJRG9aZi9pbmpB?=
 =?utf-8?B?bUk4YWtGTE5HYjFMRS9JVU9EVUZYQmhNYjRNOGErQXI4MkJuOVB1ZXhsa29C?=
 =?utf-8?Q?0cuqWbBERf/yYQvtYKmExL0wBCJm5lcB12FFlvm2UJ8Eo?=
X-MS-Exchange-AntiSpam-MessageData-1: a5hGwAdFYTnbZw==
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b6718d6-0071-4a86-88fa-08de5389313a
X-MS-Exchange-CrossTenant-AuthSource: SJ0PR11MB4845.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jan 2026 16:23:03.5935 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: E8W5LOvzI4JzOjG9NefgEr1/kWMpSePJQmFSFav/EvYsN+s1VkOP2/tHrDC4dogWcUiYEGwE7Cngt62Vr8bLQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8017
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

There is no reason to use the more specific u8 type for slice count
variables, use the more generic int type instead.

Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 4455d0a2e59cb..bd35a2ba30421 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -963,7 +963,7 @@ static int intel_dp_dsc_min_slice_count(const struct intel_connector *connector,
 					int mode_clock, int mode_hdisplay)
 {
 	struct intel_display *display = to_intel_display(connector);
-	u8 min_slice_count;
+	int min_slice_count;
 	int max_slice_width;
 	int tp_rgb_yuv444;
 	int tp_yuv422_420;
@@ -1008,7 +1008,7 @@ static int intel_dp_dsc_min_slice_count(const struct intel_connector *connector,
 	 * slice and VDSC engine, whenever we approach close enough to max CDCLK
 	 */
 	if (mode_clock >= ((display->cdclk.max_cdclk_freq * 85) / 100))
-		min_slice_count = max_t(u8, min_slice_count, 2);
+		min_slice_count = max(min_slice_count, 2);
 
 	max_slice_width = drm_dp_dsc_sink_max_slice_width(connector->dp.dsc_dpcd);
 	if (max_slice_width < DP_DSC_MIN_SLICE_WIDTH_VALUE) {
@@ -1018,9 +1018,8 @@ static int intel_dp_dsc_min_slice_count(const struct intel_connector *connector,
 		return 0;
 	}
 	/* Also take into account max slice width */
-	min_slice_count = max_t(u8, min_slice_count,
-				DIV_ROUND_UP(mode_hdisplay,
-					     max_slice_width));
+	min_slice_count = max(min_slice_count,
+			      DIV_ROUND_UP(mode_hdisplay, max_slice_width));
 
 	return min_slice_count;
 }
@@ -1038,7 +1037,7 @@ u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
 
 	/* Find the closest match to the valid slice count values */
 	for (i = 0; i < ARRAY_SIZE(valid_dsc_slicecount); i++) {
-		u8 test_slice_count = valid_dsc_slicecount[i] * num_joined_pipes;
+		int test_slice_count = valid_dsc_slicecount[i] * num_joined_pipes;
 
 		/*
 		 * 3 DSC Slices per pipe need 3 DSC engines, which is supported only
-- 
2.49.1

