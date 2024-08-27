Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E3F95FFA7
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Aug 2024 05:13:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7665610E15F;
	Tue, 27 Aug 2024 03:13:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y+1xjMj9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3EAA110E15F;
 Tue, 27 Aug 2024 03:13:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724728392; x=1756264392;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=n5XgIm2wbnTER1KzqExf9kr9Jb2QEempt/TYCFg4sd0=;
 b=Y+1xjMj91WKY3SPvB3cEO9fmgz4ezY1PHngU9SvKSMPFiRQVWViyg6gR
 W1WTCTwOiQy9nqDLcRB/oBq2L82nsWNMQ+6L3eLJmYAaVyW4D3Ih4rnme
 KD9Pvp+Fm1IdREFaAvjnEm5hRHO4RMXok8eQsxmkBZWj45OAVcC36zJAp
 VS7FOPcHnBuV0ny1T5/5R7cGA39SCbPTNWOfI7vmOaThcrb0KE8+JZfQh
 rQy5gWOreIhVr3+7HGpRFX6hH1UlouVoloh9lFAn18juF+sEkDweIWC10
 R3TyPR7aClODh2JHgJL/p4E4EjToSFS3CAYcC2DPHMFHeZjh1LnixHeG2 g==;
X-CSE-ConnectionGUID: R98ht10pShm8LaNYVqp3ew==
X-CSE-MsgGUID: LX9g1OilQraqelMJ9iJVpg==
X-IronPort-AV: E=McAfee;i="6700,10204,11176"; a="23152766"
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="23152766"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 20:13:11 -0700
X-CSE-ConnectionGUID: 5PvklhzbQUOkfi4LEj0E2Q==
X-CSE-MsgGUID: ghNguYEYTOi22wEDVL3pKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,179,1719903600"; d="scan'208";a="62766607"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 26 Aug 2024 20:13:10 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 26 Aug 2024 20:13:10 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 26 Aug 2024 20:13:10 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 26 Aug 2024 20:13:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HPIsFUb0SqVdgZMZA85owFNA/RauNQVO3+y4PWW1Z2jMJL8c5WCcjR+CjgpHzW3GSmie28MQ75ES0ud5PczoEzPphxVWcOGHhUJJqnWYHclFsinkS4MZf5RxWyrid8sGb2HBMUK2zKMqYMVMYmqpbJ5CU92Vs6Qdu2kpj0eL4AVeK3p3p7byy1kJYb91uOsOhHusoJQPny1xsB9oOaWP8N57+umbZNdu8hQv1I7Ozildjji41baqzJblSmgnf6Z4kfp93Qq6OQZZTQGa5ohx1QFytXiYswvzr7XecvbfE/6UKDpHL0/VEQ3KVIoLt2Yqh7RQtFNnjTOSBETN6ilSeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QuIa1FCzpcyRS3iuaARIjV22/ZiC4Ei0mTESWOcHoI0=;
 b=yMMHxGCsvxJx5nlVRW1fUU9DLJs/wxxi5nDwWzqABRU7ms6RxDxQI7T/FQoV+S2e5LUtewWOLEMUOusxB9To6twEFNGExF7rafkjw8U3DRF89UIHoaQZK1wrcnQvVl7LHiBo+VQlFyvbw3/qWM/jtTuAgvK10AlxUD/Ny/m7KLe63EXe9L6nPjNX5WTfOB3amCMzOph4i27scGsYpWBwFdQdgtzKHjQ7Hw/LiT4TfKltiqfxb4SCE3FVOEqD6ItJTyFJEyF+NNOA0UcCmX3VH/UBOBaeRtbrTCIE/fP/IqszpHgdyZYX1I/ZYtD1nHMc4RhZmZbbKSYS8Rxn3EN6pQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6522.namprd11.prod.outlook.com (2603:10b6:510:212::12)
 by DM4PR11MB5295.namprd11.prod.outlook.com (2603:10b6:5:392::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7897.24; Tue, 27 Aug
 2024 03:13:08 +0000
Received: from PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332]) by PH7PR11MB6522.namprd11.prod.outlook.com
 ([fe80::9e94:e21f:e11a:332%6]) with mapi id 15.20.7875.018; Tue, 27 Aug 2024
 03:13:07 +0000
Date: Tue, 27 Aug 2024 03:11:51 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 Zbigniew =?utf-8?Q?Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>,
 Matthew Auld <matthew.auld@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Thomas =?iso-8859-1?Q?Hellstr=F6m?= <thomas.hellstrom@linux.intel.com>,
 Juha-Pekka =?iso-8859-1?Q?Heikkil=E4?= <juha-pekka.heikkila@intel.com>
Subject: Re: [PATCH v6 2/2] drm/xe: Align all VRAM scanout buffers to 64k
 physical pages when needed.
Message-ID: <Zs1D93hrqLRxI9SQ@DUT025-TGLU.fm.intel.com>
References: <20240826170117.327709-1-maarten.lankhorst@linux.intel.com>
 <20240826170117.327709-3-maarten.lankhorst@linux.intel.com>
 <ZszXzIwntGCQobwy@DUT025-TGLU.fm.intel.com>
 <361abc93-0246-4f21-b235-4e0699682ef3@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <361abc93-0246-4f21-b235-4e0699682ef3@linux.intel.com>
X-ClientProxiedBy: BYAPR05CA0040.namprd05.prod.outlook.com
 (2603:10b6:a03:74::17) To PH7PR11MB6522.namprd11.prod.outlook.com
 (2603:10b6:510:212::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6522:EE_|DM4PR11MB5295:EE_
X-MS-Office365-Filtering-Correlation-Id: 713bc53c-79c6-401c-2081-08dcc6462c9d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TThiMHlhN2UyV1pRYmZ5bXJSMzYvT1VkWW4vYVo0QktiaThmNDd1Yk5razNJ?=
 =?utf-8?B?d0ZzL2tsdDlyMEJhVHRjMUtRWGJZMXRnUDJ2Z1ZUVHJGRldJQlZhWXZxSEVh?=
 =?utf-8?B?azRndEc3Y29aTTB2OTdkT1Nxbnc4blJ5L2UzSVFlN3g1WU1QRTVyalZhRFhm?=
 =?utf-8?B?ZnJxRnZMRWswNkx0SWpaRTdmczN0Zk5uSDRISmU4bGlMR1NtTmFPazdLb3Qy?=
 =?utf-8?B?MU9VSFRJK1krSVVKYWxPY3BxMzdOdnlNU3ZwbTZDTElrZEZ1d0JlZUxVVkVw?=
 =?utf-8?B?dzlna1Q5eFI4S2xqRTlFK2hkeXZLZGQ1MG51TzFlTW4yNzlPSkhDcWFnTG84?=
 =?utf-8?B?WGhDUi9EcllGN21SVkwwciswWFkyZnVQVVhyTjVxM0t0NFJDZFJhbG92SnVq?=
 =?utf-8?B?MU1ISWduRmlCVVpwWmhXNGU2OTRkOTZsNjZ1SXlmcUFuKzk2enA2bG1DZ092?=
 =?utf-8?B?UW1BQmViNnFBbkt1Z1pNU1k5MjE5ZmJoRzY2V3BraTdhZkh5Ylo3VGRpOXAx?=
 =?utf-8?B?c2Nnc2ZQNTE3eTZiWTNMeXo4NnF5cVAvN2llKzh4Wk9BWnVmVXdyN3ZWSWxn?=
 =?utf-8?B?Sm52cDdvakN2NzZzZDBOU0tscEZaN0h6NDNJUEQ4VUFVVUJPV3ZIaDg4NDlZ?=
 =?utf-8?B?L2FHTkpCSkJQdTh2RHBucWNqTi84QmZkQzJFSC9aL0NCWCtFMmN3aGpPUGFa?=
 =?utf-8?B?bG1uNWdmZnYrZmgrTmN3SCs5USt5c3RSM29aSks1RUhkTzBoMEcrL3BMeUdm?=
 =?utf-8?B?NXByZHkyeWZtbGZtRW9ZNmFDRGYza3NTNk1ZVVRRT29ZdG01NHZQK0t3WDFC?=
 =?utf-8?B?NjlWdE5aeEZXd3pIQlNYZFBjS0dlVUFXd21xMEQ2QndPWUhmVVZCSXlGTldH?=
 =?utf-8?B?Z3V0STNnUGk1R0RjNkI0S2dUcDhvWUwyZk9CelFMQmVkR3NFY3F4Z2lIN1Fq?=
 =?utf-8?B?VWxUbDd4SmJYN0c0YnhXaHhEQlN1NmRrUDB4SlUweDFPQUFFOHA5eUU4TzI2?=
 =?utf-8?B?SG9va053dHZsejRab1hwNmNGcm1McHY1ZEt3amh2R0drYVN2clBkWWVmVnkz?=
 =?utf-8?B?L3NKdTYwN0UvRFhiZGlnbFc1YmZwODFUQmRhYkw5c1VLU0NCTzlFUE5hYVN3?=
 =?utf-8?B?ckMwNVBONGxGNUE4Z3EyTkE0eXAzR1A5NVNOVkp2Y1oyRWNxM1UzTUltVWtm?=
 =?utf-8?B?akt5VTE0REdmc20zN2dGc01zV0dZVVZVL1NlMnhKWnRTMXcvdjJLSTR5SUVO?=
 =?utf-8?B?NkVOdVN5T25lKy9FRHJXZ0M0TmEwUTZDTEZJcVROQmJoK1UwTzBMSjhhd1Ri?=
 =?utf-8?B?SUx4ZFprbVAzVStVOEVxUE80SHlxRmVES25Xa0JnS29ReTBaT25WVHpOblhn?=
 =?utf-8?B?ZVg2UVk3bG5YSmMycHE0RVQzd2lwWHE5WWpldURqRzAwdEx1ZlpuWWRId2JR?=
 =?utf-8?B?WWRGZUsxNGhMbEFmcmpjekZ6aFk0cTlZeW5QNWc2anZSMnRlaUZFM00yOHFv?=
 =?utf-8?B?TEVnZmlhdkJUM3kzNml6eVdDdkI3anhMRytSRDdtV2NzYVBEY29UbW1OeklY?=
 =?utf-8?B?MWRXUHE1anhGd21hM2FmVjNRRjBldmhTNTlWSG5yUWtobUhKMSt0MjJGRlJH?=
 =?utf-8?B?Q1orbHBLNmtwbEgyU0tZWFV3OHI5b0NsZVU2V2pvLzF5MGJWV0NPR24vd3ZT?=
 =?utf-8?B?Q0ZrTm5FTkNQeEg4aWNqWDZTU0lwaDNEcWdlZHlMUTR0aENiZ2dlLzZHZVFr?=
 =?utf-8?B?WkRIb2tCSU1ucCtnQldTR09JdHoxajdZWmFmOUh3b2hTY1BxUXZQTzlXVnNL?=
 =?utf-8?B?SjhmK25VWFJkOHZ1WWcvdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6522.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Z1dQUGFTRE03anAyUHU3b1BldDYvK3RDaHB0NGQrQ1Nub3hGSyt6eWVoSThK?=
 =?utf-8?B?bjhyclNFZmNLc3JWdXpMQ3dJVzY3TWlSMVMvbUhxblNEdzJybThrNXZBTnNj?=
 =?utf-8?B?WnU5cVg5K01HU2k1NkZwbVB6ZVFQV2x2dzRBajhVYXcrU1VJamxWMUdJcVQ0?=
 =?utf-8?B?ZVJsdUlFZGhDRXZ4bmlOTmtzSWNuUGRrUXdoai8rcXFnVTBBUm5RenNRbmVo?=
 =?utf-8?B?eGRpa0JObXpyQXFpTlJUZ3VDWCs0YmE3cmtjcno4SUZsOEhIYzkrRTQ0amJi?=
 =?utf-8?B?L1loS3FJOUQ5RFVWbFA4MWE4clVZWlQrMmQxanZFRXlyb1BnT05sb3AxdE9w?=
 =?utf-8?B?R1NBMDU5QmV1elc3L1ZzRXVpb25iQlJPcHArQXU0aGd0dHpjQXBoSU54UlRp?=
 =?utf-8?B?VFN1Vzg3T2hhS0dkUkVpMlpTc2dvN1J2Uk01UHFIakRnYjBaYy9YRERZQ1dU?=
 =?utf-8?B?MlZPaXpPd3B1VjkwN3BYcUhISVNJTXVnbmdiMFJlSUFHenJvZ1QzTzN1VC9E?=
 =?utf-8?B?NlEvc0w5MkNWZ2NqQlNtb2hNQkFvV1Z0MlRDemkyRk5HK1dCOXNUeTAzc3Rn?=
 =?utf-8?B?RURVNGcwT2pSNkhSYzYrOEwxOGtoQTJFZ05JZWRSR3VCdmtaNDd1VmpVWk12?=
 =?utf-8?B?ZXhZTFUrU08xOTNCU1pGMUJpbkVkRzEybDRxK2ZJZ1N1WkR1cDBKWURqSUtS?=
 =?utf-8?B?dEtVL3hqV0FkaFZrVUU5TzVsd2JtV0RIZWZQZWk3YVlLbnhlSHNrK3p6dk5s?=
 =?utf-8?B?am56VitxcGVBRVdIWjR4bzFBNUZZemVEdzc1aEpnVXArbGtDMUNKcEJkQTJa?=
 =?utf-8?B?dlkzT3hTQXo2OXF3NSt6M25rcjJjQTdCdEdBblBqRDNGWTRrMUJmd0I1T1dS?=
 =?utf-8?B?bFJyNUZpQnF3SE9IcXE2VmJlWHFhTlgvb2ZZaXdOZ0NQS0xGc3hTOHBTSHZE?=
 =?utf-8?B?ZXorWWc4RUJDYW5UUFgzUi8zRzJDcFkvc3Qrd0xSb2p6UFRMcnVDL1MxTVNT?=
 =?utf-8?B?VkFmcEoveXBsZjNzVlNYN2lDNUc0Z3RMTVFUK0ZCRlA5MEx5aGdBby8zNmFu?=
 =?utf-8?B?Tm9YU25peHpXVktxNlRJM2d5NkxYTk9lZXovSGJFSnVHaXlZanFXTXRvU0k2?=
 =?utf-8?B?dXRCcHdvcmd4RlpIV2J4NThVRWsyYkxQVXE5ZHc2MnpzTDZ6VnhWcDcxaTFF?=
 =?utf-8?B?OHRFNjhLQ3JLTkJ0NktjcVZZYm83blV1NmVUTHFLa1p0NWdyNGNIUXU3cWlJ?=
 =?utf-8?B?K0lhTHoxaTN1ZElmcHdSVnBKNHI2Q3cxK3JxdXRDTitoclhYbkJ4MWUxNTFO?=
 =?utf-8?B?RlZCSmw5Qm56L3lvOE5LMGx4a1ZBbXd2SG1SZ0FRV3VpZHVaU2RwYWtXcmFQ?=
 =?utf-8?B?WVQ5MWJxR3lRVWQ0OWxlNkZXSjRrSy91WWRWcG94UWNYb1RWMjcrSzJRTy9t?=
 =?utf-8?B?c3hWdHMzTjJqUU83MFhUR0lMMDlub3ZobGZ6ZTZGUFdKNE5oTDYyM1pDVE4z?=
 =?utf-8?B?VGlVdWZkNkRteVlLd2UzY3BrWE1PQmM3eWF5RWFrOERQRDBUUEhyTWF2S3Yv?=
 =?utf-8?B?b2RxYWJ1RG9IdG9MTjdPeFpodEQ1bndVTkpDMFVoY055Nko5ZytQbm1CWlVo?=
 =?utf-8?B?Q0tVSnUzSFNOZnpKQkFub3BtcUMyVlNaN3FMYXFMa080YThPNVkyUEdBNTN3?=
 =?utf-8?B?dE4xRmhXdm8zQUdrOFdwMklCSFB3SG5OZEFRWEZJUlhtMEN3MXE1Ym5vZWJm?=
 =?utf-8?B?MmpFM1djYjdHMHZlbVQwUDZhQWNsbjcrcUVsaE4rOGhOVHptd1VtUlcwUU5R?=
 =?utf-8?B?ZnZidDl4VUk3NDltRXhmWEd4N2NxVFhmN1Y3U0pSSlZ4N0ttL0JRVlNxcGx4?=
 =?utf-8?B?aDBiY2VGSm1yZWxjTElMUWxudTVxOGNQTkQ4U1FsWGZyTlllcDYyMjVNeEE5?=
 =?utf-8?B?SzNLSUR6dUc0Mmp3RkxFRDZuSm5QZWZndVNROUJUbjZOYUpwUHlZdzVUQVU4?=
 =?utf-8?B?ZElUOERRSGZnR3ZCNnNKcE4wN2xGRmpSbDNrWEtqVDVZWC9HbldQbGs4RzY0?=
 =?utf-8?B?MEtmWlJkSndmNnk0QzJ4a1hCT2k2VlhSNVlnc1YxRW1aZjdHREFuZTBzYnRW?=
 =?utf-8?B?TnlYUzg4VWhuU3AveER0QkhRbXZKRmZpR2toWVlpdHlJSTJzWDFBeUYzWmdC?=
 =?utf-8?B?bWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 713bc53c-79c6-401c-2081-08dcc6462c9d
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6522.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Aug 2024 03:13:07.9212 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ncyzLvW3NW0RmMZJ8YwOtqIM1kcB9zo5c2NzUeqAWRpu4vzM9i+OENn5vFHbxn+6yIumubNLKQg3APQa/a0YVw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5295
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

On Mon, Aug 26, 2024 at 09:42:54PM +0200, Maarten Lankhorst wrote:
> Hey,
> 
> Den 2024-08-26 kl. 21:30, skrev Matthew Brost:
> > On Mon, Aug 26, 2024 at 07:01:16PM +0200, Maarten Lankhorst wrote:
> >> For CCS formats on affected platforms, CCS can be used freely, but
> >> display engine requires a multiple of 64k physical pages. No other
> >> changes are needed.
> >>
> >> At the BO creation time we don't know if the BO will be used for CCS
> >> or not. If the scanout flag is set, and the BO is a multiple of 64k,
> >> we take the safe route and force the physical alignment of 64k pages.
> >>
> >> If the BO is not a multiple of 64k, or the scanout flag was not set
> >> at BO creation, we reject it for usage as CCS in display. The physical
> >> pages are likely not aligned correctly, and this will cause corruption
> >> when used as FB.
> >>
> >> The scanout flag and size being a multiple of 64k are used together
> >> to enforce 64k physical placement.
> >>
> >> VM_BIND is completely unaffected, mappings to a VM can still be aligned
> >> to 4k, just like for normal buffers.
> >>
> >> Signed-off-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
> >> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >> Cc: Matthew Auld <matthew.auld@intel.com>
> >> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> >> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
> >> Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> >> Cc: Juha-Pekka Heikkilä <juha-pekka.heikkila@intel.com>
> >> ---
> >>  drivers/gpu/drm/xe/display/intel_fb_bo.c |  9 +++++++++
> >>  drivers/gpu/drm/xe/xe_bo.c               |  7 +++++++
> >>  drivers/gpu/drm/xe/xe_vm.c               | 11 ++++++++++-
> >>  3 files changed, 26 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/gpu/drm/xe/display/intel_fb_bo.c b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> >> index f835492f73fb4..63ce97cc4cfef 100644
> >> --- a/drivers/gpu/drm/xe/display/intel_fb_bo.c
> >> +++ b/drivers/gpu/drm/xe/display/intel_fb_bo.c
> >> @@ -7,6 +7,7 @@
> >>  #include <drm/ttm/ttm_bo.h>
> >>  
> >>  #include "intel_display_types.h"
> >> +#include "intel_fb.h"
> >>  #include "intel_fb_bo.h"
> >>  #include "xe_bo.h"
> >>  
> >> @@ -28,6 +29,14 @@ int intel_fb_bo_framebuffer_init(struct intel_framebuffer *intel_fb,
> >>  	struct xe_device *xe = to_xe_device(bo->ttm.base.dev);
> >>  	int ret;
> >>  
> >> +	/*
> >> +	 * Some modifiers require physical alignment of 64KiB VRAM pages;
> >> +	 * require that the BO in those cases is created correctly.
> >> +	 */
> >> +	if (XE_IOCTL_DBG(xe, intel_fb_needs_64k_phys(mode_cmd->modifier[0]) &&
> >> +			     !(bo->flags & XE_BO_FLAG_NEEDS_64K)))
> >> +		return -EINVAL;
> > 
> > I don't think this is correct use of this macro as XE_BO_FLAG_NEEDS_64K
> > is an internal flag we set and typically this macro is used to santize
> > user input. An assert here or WARN would make more sense.
> Ideally we'd use 'is bo created as scanout', but that flag can be set by fb_init too, so if the BO was used for normal 4-tiled before, then as CCS it would pass when it wouldn't be valid.
> 
> I could change it to bo_created_with_scanout_flag_on_64k_platform inline, but I doubt that's more readable. :)
> 

Not trying to block the patch and really don't know anything about
display but still think XE_IOCTL_DBG should replaced by either an
assert or WARN (or Xe flavor of warn). Kinda pedantic but we really are
trying hard to uniformly use these types of macros and this just doesn't
look correct.

Matt

> Cheers,
> ~Maarten
