Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 67F47C06A5D
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 16:14:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6E89110EAA2;
	Fri, 24 Oct 2025 14:14:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uu2WQZnY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35D6810E1F9;
 Fri, 24 Oct 2025 14:14:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761315261; x=1792851261;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uB3RDbm6lorVJuV8+NdRDN1FyQcFo24+8RaN3grdsfU=;
 b=Uu2WQZnYo9KnkYcsSEFSUE0DHVAdHkSdO3UetGqAiUj1M5mtG8lF5a0q
 vAS9GJehMR8oXZSLD0UwLX126PtNnaTiMZHxWdOKWL2Qq6v/u9XeIK1tP
 dDTPIhnU9qK6tXkYEwFPVdgZCQAKI51Jel+ivKfhoKpFn+AsG30Ls21nU
 C09+BCqz9O2YhuRw7hqyongUFmwkyz2E6tAToUj62O9plZ2sFwhCkytIV
 TD37mbwJ1H5p67LWVM/L/YGf5m/DfkMurvqnGIt4Kw1ttTQsGWjza/pgE
 8n9vDkGHsewn2VzKB/UmDFee3vNTzx+DbxB2RbZrUj4qy+EcEvNWmZCqn w==;
X-CSE-ConnectionGUID: jXDDc5RcSkGzZcOJlMbQag==
X-CSE-MsgGUID: YhdakrkpRr2O4ji7zx8ABg==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="63200508"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="63200508"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:14:21 -0700
X-CSE-ConnectionGUID: UgzrCqgMQCS2eE+HZRbP9A==
X-CSE-MsgGUID: 159jy+v3Sz6wuTU370Jnlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="183663616"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:14:21 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:14:20 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 07:14:20 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.48) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:14:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mUupznVl3F4Qf5VotHqerFSijgmeMZCWPGr3AuPaHF9ubPQ8Yq2WSb8uCpItwgIpA+xI2ZxDwJWClF1n0LGSgdi8bEWri9MU08za6QqXQqU0X/cxxwX1MWLWkfe1aAjx416n3tnliqDnbPTamyc4I50A4mTR7MSuPoqYFNaGUQbelc10VyXZKKYtYLKDARQ20rFtm8si3b2FS1sxk8VX/Me2ZnljJF3Sw49QvRT/inVYWjcvKC0q45aheMV0F7nyyhyMSB6r2mI9wjclgRUqIP7uYDTsbEtZ8SQLIcCiSLYojs6SlfMdUTqFPJG2ZVEBx+5cmpqUmFtRzdq+F+5moA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ebOtB6NbR9diwijWhMn0S8y6LNWB+D4lDnY4ZHK3Fho=;
 b=DukqbO9NGM9fo/Z1S3McXxYKLmGm4LbUuq1OOaERPF9eWgkMUp818Feipwe7ScFLSf97emx32qPhk0QOcL0uN7XH642pfW3Hss2ab/6An/XIeQ8OF57MbeGyfYXHyREC2hvJPxedtF+1pdD32cku7aoSM3TiYruAUVZN/X0RazD11VRYAklBYqKH3kT1M3Qy9DK6Byb4BmOscD6owqKw22xcWr1W0Smc/3Tv0QQXdn2LszVIQ6D8j27l1e24An+KNnYmGv9TQUw6Fg9htuxT3U6OZNKJWtAsIkmyuZgkwo7zrUMsFIwUHyugXbOIXzQ9ZV/qQ7kd1JKMkMbazL/W8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH3PPFEEDD586DA.namprd11.prod.outlook.com (2603:10b6:518:1::d5e) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 14:14:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 14:14:18 +0000
Message-ID: <58812da9-3c98-4a2f-9d1a-3af14d72d2f3@intel.com>
Date: Fri, 24 Oct 2025 19:44:11 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 17/22] drm/i915/vrr: Move HAS_VRR() check into
 intel_vrr_set_transcoder_timings()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-18-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-18-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0P287CA0009.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:d9::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH3PPFEEDD586DA:EE_
X-MS-Office365-Filtering-Correlation-Id: de60255a-f493-42ef-d456-08de13079e65
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bUFsQThZN1lqbkJrdm9GaUduYjJ3STdzd1c0NjNsd0hvNjJFR01SMTUxN2Fz?=
 =?utf-8?B?M3FvY1V2Slllcnh2REdLL25wQWovSDZPL05oTStYMmV0Rmt6bDNxRGtRdjBv?=
 =?utf-8?B?SUJJdWxJdGNJY3Z0eVZEVDE3VWx1UHdmN3BhQUEyUUdQdFl3YW5DbllZS0xT?=
 =?utf-8?B?UDJKRG9SSllqRGdrR1hQS2MyZUVBZ0dHRjd5U0FKK0FiemFzbDJTV05JTzdC?=
 =?utf-8?B?WlVCVDNVZFp2YkFEd1FPdm02OW1LVWNYNE1DQjdqWm1wN1IrUlRvQUdMa283?=
 =?utf-8?B?bG9maVJ0SU9FcEF5RGMxNC9RZTRWN2tlY2d5Vi9mS3FKQ0pDSXBpVStlaW9p?=
 =?utf-8?B?U1NQdEhTY3BuRSt6eHJQWGp5emIzRGx6MG8yOU1XY0tvalFxUEFKdkU0Uk11?=
 =?utf-8?B?R3Z4YTZOV1hyamJBcDhTK3dld1RGTTlSUjNFeUo5K2MrZHRCSHZFajR4TDFX?=
 =?utf-8?B?RWJLS3JTaUpKOHBaT29SUlpYOENlNEFKRVRzNFVrN3pWWmxNc3ZIUDRwUjE5?=
 =?utf-8?B?S2k2OUNUckNSdThhcm8rTUZhSmZZMXkvZnZSS0VMTnpBSXJoRnBHM3NGT0Uv?=
 =?utf-8?B?TEowNE95L3lPNCt2NlZ4cXQ5WkpaWGtURFc5bHpPRm1ROFZFWWk2YXhnQkdF?=
 =?utf-8?B?bnQvTUNlMTRUSWN4dzBtTVN4cERmdllkQWltOE41SjNHV1p5ajgrOXRxMUU1?=
 =?utf-8?B?enIyY2hnU3JuanB3T3pCQkFKQTBSdmliUDVzeHVYc3dyV1NGbjFSdDgxWi9B?=
 =?utf-8?B?S3cyazA0c0FxcTBTR0p1TVZZdEZUQXBNT2FReVNBTEdEUThWVERVNnFTQmVU?=
 =?utf-8?B?VTh3c05OQkRWdlFuZ09lQkpvVXNCTjc5T0FEK3BJWTF4bUtTVmtwSkNPMTRY?=
 =?utf-8?B?cTdLejluMWZ0Qm1kNWtTSkFZdEdyWkpHeTBrOE94ekxBR1hFSURCSXZLN21t?=
 =?utf-8?B?d2hLNDA3bEpESjA0VWo0Qkx3RmhxTDQ0TWRUcUxIWGNOZzhEclhjVlByZCto?=
 =?utf-8?B?b1NTMWVhSnhTMHUwUTFEcUswRVpqRTZzb1JlRWcrWmU0dDJ3eDdFM0ZhK0s4?=
 =?utf-8?B?NURnTzgxS21IUXpkQS9LTEp1MEVIQStlZ3lINjlPU0ZzSjNFVnRxMmd1V3hS?=
 =?utf-8?B?WTJHc3NseHJ5bDF5OEQzazFBcFNJNUhhM0szN25sTWR3bEM3djNCaUw1RWtJ?=
 =?utf-8?B?cWRBeUV2V0lWc0VGaWtpNTFQb0NDdmh1RUdTZUFXT0xNci9wMkljRE80NXNB?=
 =?utf-8?B?L2lYWmo4VFNTRFNwT1RtWWFaT0w4MlRXMVhYMHc2MVg4WTNGYk1Sa2lwZjFo?=
 =?utf-8?B?bjFJYThsTVh6L3RnK0lvczUvbjN4MXhtaS8vRHJwdS9kMVhFeVRoVnFFdHpX?=
 =?utf-8?B?dGxxdVpTWmQ3Z0I2Y0FkbVJlMTF6YTBtWXVSN3ZjdU1yK3ozOGRLTEwzTW5R?=
 =?utf-8?B?b25vVzFSTnhNWHdOaGdFT0RxZzh4YlVLb0s0Q0JuUElBYmtkbGhpc3EvMlBk?=
 =?utf-8?B?bGxObmxQeWZaVlIwZDExcnZuMmFIUFEvcS9mK0NOWU9WeUQ1ZEtMUXlQZUtD?=
 =?utf-8?B?amtvLzBITmJXMEllNHhlUVNKR3BQSDBrOGdZNEZIMDdVQ0xEaGY4YmtkMnAv?=
 =?utf-8?B?UVBHMGRSYmtJeFdnRTUycndNMjlySE9VUjE3WVlFbFZnNkhTQVdmQkZRU2Rr?=
 =?utf-8?B?ZnRWUlRnd0REMmFrTEordS9QdWZoY1B1amgxY2svcXhsOHcxTDRBaXhia1J0?=
 =?utf-8?B?MUJoenlGaUlqQXU5Yy9pSDNiOTV4Z0hVRERjQVk0WVZ1aEtZWjNEc0drN3pP?=
 =?utf-8?B?VXlCVFAxYkFoZGJyUXFQZ3h5K1BVc1hPT21KaU8rU21vQ3ZBYnBYbjNab05V?=
 =?utf-8?B?RC9ML25LdGo4TzZiQlJDRzRFMlo5QTZmUmVDQ0pwOFhjakh0STFhUlJvREEx?=
 =?utf-8?Q?vFXinyeu65Wgpgwpt0y2aTdfi0YgvPB8?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VFZkeHFyMDZJQW5LY2NRSklTT3U4WDVUeGNLcDBPN0FZdEQ2SDZZamJvTk43?=
 =?utf-8?B?TWYzOWZ6cWE4U1NoOUU3YmY4VHZXVmlrUXVOcnBiVlNxUkhQVVgwQUVDRERu?=
 =?utf-8?B?QTJZZFJ3WURLR1Y0dURwTkJ3VUpzc0pZUmZ2b1ArOVRZL2lwVGptNmtBL01L?=
 =?utf-8?B?b0k4cUgzZlF4YnFPcjZqaVRJbUxyVFQ4dHZGUEFqQjNZM1djU1c1eWYvVGd0?=
 =?utf-8?B?TFNPdEtROVVFL29pbzhhaVpTTEhlZVNjWnJHWlZzd0F2b0owb1d6NnNCVVZs?=
 =?utf-8?B?cHBGQWtqQkZaME82RGV2RjBvbTltVUVac2lwcXJWWHVqUnJuTVNtb2NpSy9r?=
 =?utf-8?B?ZHBEbXpSWGdSUDBtZGZneER6R2tLTEZpMERkKzl0aVlNaGNOZU05MkFTd2Ir?=
 =?utf-8?B?cmtpTCtkREN6d0o3YmVlcTRjVkV1V0hMY0Z1SXkwZXZLSk03ZkRPWmtjUjZO?=
 =?utf-8?B?VUZQcWRJUW9RMm41LzdKVnljLy9PakV5MFRvRHJhZGI1WndFR0N5a3pUTXlN?=
 =?utf-8?B?b2VQalhZVnd0TUduYm5MZTJvTDNaUnN6b2U3bEliYUM3VWxaM1FOdCsrK1JK?=
 =?utf-8?B?ZE1mRklUSS8vSnR6MXc0cVpjRXpTaXZseStiOTVjQWQwenlXUXVuTVlMcy9H?=
 =?utf-8?B?dGd4MnhGUFc1VFF6RjIvN0RJREo0V0gybUlLRUoyOXdjb05EVE9FaUVwT0Rh?=
 =?utf-8?B?MjAvUDFVeHRRZUZjWlRvNk81SjN4alo3UHh6UUx5SkYxUFc4UmVuaE5BaWpw?=
 =?utf-8?B?dGFWRGxZSWpmN3RpVGpZL3Z4MERMekYyeG90c3VsSEZMUUkwS2pYVGFNT0pn?=
 =?utf-8?B?UTkyOG1RR1RKcXNTNjFRMmlKaGVPTURRbWFJajkxNmRGVks1ajBCSmdLaXVi?=
 =?utf-8?B?c2pCOFNCdDRmbHVxM3hVbUovQ0JnWnRMdVl3b3A0czkwRHJuUG9URVpOYXB0?=
 =?utf-8?B?S2ZPWFVkN2E2c3lTb1dUS1VpZzJoRktnakdOa29zRnJiaXg5ZXhXQUdtOVh4?=
 =?utf-8?B?NDhDdi9qZndnajE3V0ZVaS9kWC9xZVZiR1VJZURycFZNL1ZIMCtOZkJCV1ll?=
 =?utf-8?B?ZURUaFNBTWNMTFBaM1NjSUI4QXk1M2w2V2hLNEtPajVVUGZuZHlRY3YydEZ1?=
 =?utf-8?B?a3JqazhGbEJZczgvV2RCOGx0cnczZkp2cDZuTkpRTmhkOU9iQ2l5MXdPYkRO?=
 =?utf-8?B?ZlFQRjJxS2NwQU5zQ2I5dXIzVys3OEpCTkhQSlZTMldZN0tHQ0w0Uy81OHhH?=
 =?utf-8?B?N1BGaW56bmNUWDA1cFZiM2RlYUd6SjBIcVpZeDFtUVpPZ0xsdUdTNVQvT0w0?=
 =?utf-8?B?Tkp4cGl4b0JHNFovUTBDa210MTZZTVRUODZZOC9COXJhMS9mdXRRWXNFbTA0?=
 =?utf-8?B?WnYxelJXRUc5a1NrdDVSSGJJL3pnODhQVTd6a3RkTUdQMUk5VWhQN2FOdjY5?=
 =?utf-8?B?Y1dJekhLaWtMMTN1RGJJcWt6MGwrcUNnSXJraGdlM2tCUUl2dGRnZFljUDdQ?=
 =?utf-8?B?V2JFWG1pMUVZTHRhdFpmQ1ppY3o2ZnNUcHJQYm9iSHFvSldrUkxtbGZXNzUw?=
 =?utf-8?B?ZkxmT2hKdy9pQ2J4Sk1aQmwrME1xU0NBNUN2NHRLUGU2QXVwME5NcUxrb3dP?=
 =?utf-8?B?dTVwRDFYZktERFRSTDZ4UkVQUjVhbmVSK2VMeFR2YzJCMXFPMzUrV3FTeXJo?=
 =?utf-8?B?YlFiTW5sNWtTOG56NXhDS1pZT1NVaURUT2IwbU5ySHZMQ0o5VDZVZXVDOUFH?=
 =?utf-8?B?TWcwSkdaZHFnYUdzclpIRkVtUjFqT0RsMkpjQjZKMjF5TEFpNGtRandvZGxV?=
 =?utf-8?B?c3BVNVY3RFJxMTYrMDVheENYYmx5SHNMQ1VNemRpYzlwZVJCdXNLUmxtKzgy?=
 =?utf-8?B?dXpJZm5qV1RPSWJISjFtSEo0dW5iVVdaRlVIMDJxRlYyWDdObVl2Y2luVS94?=
 =?utf-8?B?OXBTZGpHNDFDTEFqa200aGE3WmwrcTY1U28vTFdldFVEZ2l6YVpWL3AwZE1k?=
 =?utf-8?B?dCt6WTFYMXBlV0JBN2lsVXV2Uit6VlpDSzdQbTFHNCttRXAxYzZHakY0UGE3?=
 =?utf-8?B?aFhySW1oRHI1NGdYeEdvN0xVRkY1ak9MUUlOTEtlVWFhYU9pVWZqdGNSQWNr?=
 =?utf-8?B?TDBuV0JXSzgyU2NZeHdNNWo0U1BMczVSU0lXTE1LNGZMK1ZidTFFZ0ZISllB?=
 =?utf-8?B?RVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: de60255a-f493-42ef-d456-08de13079e65
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 14:14:18.0035 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FJlUdYb7NR3z32NueVyIZr0fIKfxoJW5FOD05N4zbLk/bW2FQYbzEEvRmzMiQnUewjHX97KJHf9lorzN+kzwZ88nhCJ2P78cEoj6PLefGRU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH3PPFEEDD586DA
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Reduce the clutter in hsw_configure_cpu_transcoder() a bit by moving
> the HAS_VRR() check into intel_vrr_set_transcoder_timings().
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 3 +--
>   drivers/gpu/drm/i915/display/intel_vrr.c     | 3 +++
>   2 files changed, 4 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 490b4f2907e1..2744f83bda2e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1581,8 +1581,7 @@ static void hsw_configure_cpu_transcoder(const struct intel_crtc_state *crtc_sta
>   	}
>   
>   	intel_set_transcoder_timings(crtc_state);
> -	if (HAS_VRR(display))
> -		intel_vrr_set_transcoder_timings(crtc_state);
> +	intel_vrr_set_transcoder_timings(crtc_state);
>   
>   	if (cpu_transcoder != TRANSCODER_EDP)
>   		intel_de_write(display, TRANS_MULT(display, cpu_transcoder),
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index b64a54d22991..29143dd092a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -534,6 +534,9 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>   	struct intel_display *display = to_intel_display(crtc_state);
>   	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>   
> +	if (!HAS_VRR(display))
> +		return;
> +
>   	/*
>   	 * This bit seems to have two meanings depending on the platform:
>   	 * TGL: generate VRR "safe window" for DSB vblank waits
