Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D5FA9F1A2
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:05:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D20A10E4D0;
	Mon, 28 Apr 2025 13:05:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mKcANbdx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B50F410E4CA;
 Mon, 28 Apr 2025 13:05:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745845510; x=1777381510;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=HjvlCqTdejKO5iM1BL7mVsLgy1ngx/b6Ai88+puVTQg=;
 b=mKcANbdxf9Xvw6/Iwf5FVfPhTKUaoaHsFbCjkcy8Hez0NOqQq2wnfSHU
 U2WuLwRv51IeYNAtevym64cX1xQCSpvl5aMvKk4zfby1H748rvU+9c4q6
 8/1/dhsecwqOJqh3qgB+rkwc/o3DHovMnU3ui+xAEO/CPiOtSj91oFkV0
 2aGVxJawxhK0zRKxxsb5/fedl/GoLnOs6MNHpedxKdZoPuQBPLXahBtzQ
 j8OkcGygUo/yt/LuaQCCZy3GCTr7BE9nMS9wocR8T/T/l3tZ32IZPf4dM
 mb2BHKM0opMWMvniTDxw7vhLLKmzZMiy+QV+d1mwfpT9K1VGfeZ131lE1 g==;
X-CSE-ConnectionGUID: lA3FuOkvRQSbpXhf53SXGQ==
X-CSE-MsgGUID: oi1t47TVQB21YLwepXAfqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="35047720"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="35047720"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:05:09 -0700
X-CSE-ConnectionGUID: exFUz87hTiOeJ8gpFlc8Eg==
X-CSE-MsgGUID: ig/1TufiShSeFcTRDUfqFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="134014289"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:05:09 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:05:08 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:05:08 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.45) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:05:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xyb/bKvXtbmcI+4N+v45MlsN55Ns5CSuZn+e0/z9J0xC+r0LSjcuQ7YYe94WTvoX/vx866NKl2tJPEQG4CTLkb5pKntHN6Z/+Clo1LwSSbn3WdCigoksCBOWf/182DMPLg4FRBfdIhfXPwPbxADPcSgugAemBEIdd1Olhdtx+0mJr8OstE8ryqVuXOHz6d2+bKlrkfE81GNgtVW6ynmZPPNUVt1i7wsPnniXMF7TF13J3erOWiceOZuujdXaqtJ3HocAqnhVlYEk2ekypukunKD+wCFC9pNu9bza/Wg776hqMBIkJpiFXhqaJ0+6UGNXzLzrBKHg0BtA/yr9nDeBcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FU1lkRzpMCCHo7EjImDZWsZlytH4CuzIPs+mZEhZTU8=;
 b=PORIGpZ+MGfAV2L+84B9HNgbqaSce9D6vYIdqBWK3i/LHUomJdZRYto5CCerqfcvrV+aT7O47DVnSw0t+O0hearGmgwkVbCPii7l92SNIiHc0U91/itpSDZ1YhsG8MtG1NPoEQQdcmBsQDxiBMXbxstYtYBQn4lxItiBxVsjZONb42vPCSJKqVYB3Fl3WlNl+7Ars38VOoVGwA72qy46ul0kAba1uygxNcO3FQGUeuLYsnRqp314kB6E3QLmGEROd+yjaaCG/93+rnABeiIZfQHcLOjc5/0Wk2APtDKXAJKalvzISoTwLarvsqnYeFrA1mWf6PaL38lT7StAcUrGJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CH0PR11MB5249.namprd11.prod.outlook.com (2603:10b6:610:e0::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.33; Mon, 28 Apr
 2025 13:04:39 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.033; Mon, 28 Apr 2025
 13:04:39 +0000
Message-ID: <8802cf3c-5b56-4258-8083-7a954de1e6e4@intel.com>
Date: Mon, 28 Apr 2025 18:34:33 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 04/15] drm/i915/display: Add registers and bits for DC
 Balance
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@intel.com>
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250428062058.2811655-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428062058.2811655-5-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0095.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::6) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CH0PR11MB5249:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a884cc6-eb14-487c-7cba-08dd86553bf3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NndINi9NUS9qUHZZcDVMN0lyTy9BcTVnQnBzTnNrSis1MXZFYWh5KzdsQnFm?=
 =?utf-8?B?d1FVakx3RkFjN3luMjBhaVBmb0d2RnhwaDZReW9yZVRMdzRHQSs1d2ZwSGJ2?=
 =?utf-8?B?YVZwM0ZpQnowKzZEOWpURFo3dG5FblhyTWxQS3JjZHJWaTArd2daMDZGVEls?=
 =?utf-8?B?NTNCTi9velc2SUtkYTNycHkrRFl6T2VrbFF6R2gyZThkZDN0L0ZJZURabHpl?=
 =?utf-8?B?dkM2aldiWnphNktvcDBNZU1zS0FneVJQMWF0TlpBUHpyMHEvRXZ3cUYrNFFP?=
 =?utf-8?B?VWlOTzdkV1JEK1lUQ0ZvS0dhZWZSbnQ4ZG1SQlFnOUVKaGR2WHlEMTJxaW9a?=
 =?utf-8?B?RVJyMlJFa3lGNlFSekxCVU5MYi9scGtjVjROd2VIVGdsNGpnaCtXcmJBTmZh?=
 =?utf-8?B?VG9nTWx0NE9pMDNxTFo4MXhsVUE0cWtVWFBmSXNDbCttNFpHU0IzM1BxY1J3?=
 =?utf-8?B?ZWxlLzdGMk5EOWpCUVBVbWtOdVBHWFJVMldZdWFyK1NJeThvWmZBVEY1Tk1U?=
 =?utf-8?B?VzF4VTBtRmd0Zjd5OXdISDRqWGRlbjRod0xzWU1jeDlsbWx5aWxSTXdjZVEx?=
 =?utf-8?B?dStuK09tVXhLUFI1SzRoMlBsRHNvTmJ4ZE9iZlpWT3V6RjN1Rm1VWmZHQks3?=
 =?utf-8?B?KzJvTDAraVAvMHhkUGlPYmg1dnhmVlJBeFhuYzNKVEZiR0lLTHJpamIvbHdu?=
 =?utf-8?B?NVlVTTE5Sk1FL3pITC8yVTMxZXRHTzBWemhpcTJGRFM5MjlGUUlEYnpka1A2?=
 =?utf-8?B?Wi9qdWtZWStoWnNPY1kyQ2o5eUFxZXlaeTkrTkJkMThSUGpsUDZTSWtiSi9G?=
 =?utf-8?B?cnFLM3hCWklGTDdiU1RQNks2S0c2SWk0RUZEU29qVTFiVnlIbUd1eStVWTU0?=
 =?utf-8?B?Y201Sm5LYWRtWkdRSTlReFUxOVlCTTRhandQd2p3aXkyaVJvcGJETk1iRDJC?=
 =?utf-8?B?ZjFBUzZURzhrOXlSYml1aXZvMnQwWEp3Ni9zYjEweG84NWZOMW83S25kQTFI?=
 =?utf-8?B?bVFpN29nTzI3UnJNWGkxRW1rV0FrcnBRMm5TTjNTWlVCSERHMWRvaXBaeVZG?=
 =?utf-8?B?UjR5OFhzcEh3eG5mRVhaRHZnaEZCMVA4L20rZXFzZVdpcXpOREUxTWduUHdN?=
 =?utf-8?B?VHJNTEtGS0x2QnJHaFEwYmlJVmgvZElyY01pcGhMK1lXTzRqZTBBcHdCQWls?=
 =?utf-8?B?Q2sxTGFhR1FTTXVuMEF1bk9qaTNOdUpKV3VBelJuUXlNMTcxR3gzdTlGSWZG?=
 =?utf-8?B?c2FTK3VFN2l5U1RPVVZZREp0ZzY4RmNtbFpVMGFtbEVaWVFZOVZlMmlUbFls?=
 =?utf-8?B?cVNVQ1FXQ1lNbFJ3WWhsZy9tb3RZVFRpR1JmcVlHRGFhQW9HS0hKeEFReFo3?=
 =?utf-8?B?eU5BN2RIbTg0ZFFxZ2EyUXFyNmR0dkpiVit6ZnJsdTA0My9rUnlIUHV5cnky?=
 =?utf-8?B?MEhHdlFLcG1oVS8wLzVCdVVhVzNuN0M1VWFsa0JTbU1zSFlyZERoK3dzeDg5?=
 =?utf-8?B?ZnpGdGJpVnlYd3lYQnZBMWV0eVFUWTk2bW5QUHoyblM1eHJZTmZYNXZGZ0ps?=
 =?utf-8?B?RDFyVU1Jb1pyZFlJNUM0QUp5QUtMQ20vQW9xY1YrTVRwMFg2NFZ4Y1BPcy8w?=
 =?utf-8?B?c2IxRHozZlFQTjV0U2FETGp2U1pMWkRKa3hVREJzdlNDRVFJQ0xhdFQ5aE14?=
 =?utf-8?B?eEYvME9KWWFmaGpFT21Fa3VhTGdzNHZSM0kzVW1KTVJ5dE90ZmtXQ3hiQzhV?=
 =?utf-8?B?Wk9BY05lZ081YlJFbWJYMUExcGQ4VitZem5jK1RUREdUNHlYZDM3dU8rMDJC?=
 =?utf-8?B?cjNmWld5bGNWWFJKanhKWFdDMXBKNTFoeHRMLzBONE5SSWM3dHlHSnVwQmxI?=
 =?utf-8?B?WUZEaEd2OUliK2FUVlpFaTdlM2ZvUUJHelM4R2lNbXZnN01vbi9jNzVSVTlk?=
 =?utf-8?Q?8bY6SFZy9nE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?YXBjTTZzb2pmUGpSSFl6eUgvb1Jzb2d3UmRxaUJoTnpUUjNHN1ViRmVDSFY0?=
 =?utf-8?B?cThNM05iNWxkcE13UkhVUlNmbTFiczN6dDZPQ09CcU84L0kvUFZvbFMzVTNI?=
 =?utf-8?B?dzl1NEpVTDljNWpGNmxrd1Y4QVpRRTJ5dDR1K2libXhUU0lLdUpxZUZXUUxw?=
 =?utf-8?B?REx2SWFJNXRHMXZnYnRoc0ZPei91LzVyOXdxT3RtVFk4aGpRUTJuQWdWOXI2?=
 =?utf-8?B?Z0Z3OEV1U0hjRi9jOHNWQVQ3anYvejdFdXZJVzhGbk1KWU0ramo2QUo1ZmJZ?=
 =?utf-8?B?SnU5MzJjUStTeitGeVdmMjlLekYvL0dLL1BuYnRxNXd6NTNVYjFuUmFGRnp1?=
 =?utf-8?B?NDhnMlAxT2NOOUJPUDFSb0pwNXk5OVdRK0FWQlh5SWI0dVBNT0dUdllzbGRy?=
 =?utf-8?B?andQSXlteStzenhzeVpCSlB2ZHkxQjNZRHdUa01IWnJFL1U0UEZCMXdQVDlJ?=
 =?utf-8?B?SzE2di8xR291a3NETy90b3N4ZjBpVmwxdFZGN2g4Ym90ZkZmRXk0TTVaRjFh?=
 =?utf-8?B?RVlDZEhNcVpnZ3pxSGVaTTVaWFRKb2JxQ3M5ZUI4NlJoV0lMUldyWk5KYjhJ?=
 =?utf-8?B?SlR4Nk5tZUNtZEtEVlNxZCtORmJwdXFTMFNzQnVSRVRxU0NmUWxHdTlZV21n?=
 =?utf-8?B?MXhGL09FZloyQW8reWdvbHV0eE16ZERYUHgzalFIbFlkUTVJblpabktvZkpG?=
 =?utf-8?B?ek5qcVFYVnVZRTNXQlJqelhBdjByQldFZzZCUEJRdzZEdVNwTmlFdzBraGtC?=
 =?utf-8?B?emMxOXJkUVVqWXNBWklmbHVGR0lseDA0OGgzR1FqckdDdHJyQ1Q3cUVmNXln?=
 =?utf-8?B?VXdPUlppcG1KRUVnWTJlQVNqSkV1ZENyMThQdXZRRUxMODJRTkNoWkpDWEI1?=
 =?utf-8?B?QjZYVjl1MFBuUzhMZmZ4aGFVVzJrUmt3ZXpPQUNDaktPbG9rbElMUXdWOTVH?=
 =?utf-8?B?cHJrR2lING5Ybjk1ejk3L0Q3c0g4NjdwMlFEcmdxVnFKRk9DSWtybWJZWjlm?=
 =?utf-8?B?bDJsZEpxeGhicUs0S2tqTndtUUFhMG1CS2RvWmhTYjZsR0p1TGhYcE4xVnpw?=
 =?utf-8?B?WXZQRmF0YSs4ek5IeWduWllGckFxMFNKejdJS0JUaHNpZ3hLN09MQzhPWXBM?=
 =?utf-8?B?SVl4NmEvWDllOVNlVTkzTGlZVjdGWWJOalczOTB0TmJIOEgwTktXNDBMQklV?=
 =?utf-8?B?RVh0VzJPRWUrb29aOVA2OVg2VmJyLzNCK0h5MENNNkp0Wk1IVHBOS1hDZFgr?=
 =?utf-8?B?U1RvOU0vZUxHNEtnR0g4YzJYcnVsUlUvM3FVYUtqa2tFUVBWaDUxem1WMVR6?=
 =?utf-8?B?eHcreWorNmRCQmxiMk0vSzNXUmE2V0lhWVRPMENzR09oZS9ad3Rqb0QyM2xU?=
 =?utf-8?B?NEJnZEdmcmFCVkhHWFlKdVhvTnY0N21sdmVuUk00QkxPaThjQlQ0SUlBbVBw?=
 =?utf-8?B?TmpLYnBIMFNvUG5Zb3dzT2d1bXhpaXl6TnExdmNtcmxNNjkwQ25iWkRkN216?=
 =?utf-8?B?QUJMcm1FaDRNSFhaQ2h6YWhsNDhCeStURFNJb01vemdOYjdFWjRkOG5yTER5?=
 =?utf-8?B?TXBvd2o2Ujdlb1hIS0o4RzZTSisxWHRyN3RmWllOcmJzbFZtaHpqMGw1aE1F?=
 =?utf-8?B?OFhyU3JVaGdNZDVRL09rRmM1cldkZnpaN2QwZEZwSlNDRjJBa3ZNWFl4VkZt?=
 =?utf-8?B?dnJzOEVOYmpGQUlYYUNmSEl6WE5BQWRLQ1ltbktaODZ0cVRGSitMNnZBVTZI?=
 =?utf-8?B?eGlzSGczZEVDOEo1Q0Zqc1I2VEFvdnZrR3pmSnFrWWxWUmhaRVkxRnJSMDdE?=
 =?utf-8?B?VTlqSVpHZXQwQTBLYVJwUkdEeDBGaVBzeW4yT0xNUjF0Y3ZnUXp2NzcwMjNR?=
 =?utf-8?B?M2hlejdURnFTN1hhSTg2YkdWVnFRLzlKNzBodHN4MTJONTdXQjFFNVQyRXcz?=
 =?utf-8?B?VDBCZUY2UnZpYWljdytNZGlYb1FZRTFBU004MWlReENMV0QrM3BCYmJCN0RG?=
 =?utf-8?B?dkRBK0Z4RW9mbUNuM256RnlNUFRqcEFNQ0h0MGxLeE1ZaytYT2lTN0xtV01h?=
 =?utf-8?B?dStnT2VCVVlsbWxmcS9tWlhWaEJnS1cwN25RYWRaYytBR2hWQm9vVk1aZzlw?=
 =?utf-8?B?ejQ1ZlRUYTlYdUMrc3hYc29JMUVPcFVJUUdMR0ZRR2JGVW5Db202QmlPSHVJ?=
 =?utf-8?B?dmc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a884cc6-eb14-487c-7cba-08dd86553bf3
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:04:39.6518 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: k6xTsGWAdikRHZYg6A7Y8tQsgPtHwut0GlFK62bAylPVWywOSjcp7KlPtbZknFXM7EqCx3FOIwh8mVzmaMRJ4dzU+BsEQwULNwYQENt6lnk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5249
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


On 4/28/2025 11:50 AM, Mitul Golani wrote:
> Add registers and access bits for DC Balance enable.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dmc_regs.h | 55 +++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_vrr_regs.h | 50 +++++++++++++++++
>   2 files changed, 105 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc_regs.h b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> index e16ea3f16ed8..a376499fbfab 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc_regs.h
> @@ -117,4 +117,59 @@
>   #define  DMC_WAKELOCK_CTL_REQ	 REG_BIT(31)
>   #define  DMC_WAKELOCK_CTL_ACK	 REG_BIT(15)
>   
> +#define _PIPEDMC_DCB_CTL_A			0x5F1A0
> +#define _PIPEDMC_DCB_CTL_B			0x5F5A0
> +#define _PIPEDMC_DCB_CTL_C			0x5F9A0
> +#define _PIPEDMC_DCB_CTL_D			0x5FDA0
> +#define PIPEDMC_DCB_CTL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_CTL_A)


Use MMIO_PIPE here.

Perhaps only A and B offsets are sufficient. Though in many places we 
have all offsets, IMHO only 2 should be sufficient if the offsets have 
constant difference for each pipe.

Also, it would be better to have separate patch for VRR registers 
required for DC balancing adjustments.


Regards,

Ankit

> +#define PIPEDMC_ADAPTIVE_DCB_ENABLE		REG_BIT(31)
> +
> +#define _PIPEDMC_DCB_VBLANK_A			0x5F1BC
> +#define _PIPEDMC_DCB_VBLANK_B			0x5F5BC
> +#define _PIPEDMC_DCB_VBLANK_C			0x5F9BC
> +#define _PIPEDMC_DCB_VBLANK_D			0x5FDBC
> +#define PIPEDMC_DCB_VBLANK(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_VBLANK_A)
> +
> +#define _PIPEDMC_DCB_SLOPE_A			0x5F1B8
> +#define _PIPEDMC_DCB_SLOPE_B			0x5F5B8
> +#define _PIPEDMC_DCB_SLOPE_C			0x5F9B8
> +#define _PIPEDMC_DCB_SLOPE_D			0x5FDB8
> +#define PIPEDMC_DCB_SLOPE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_SLOPE_A)
> +
> +#define _PIPEDMC_DCB_GUARDBAND_A		0x5F1B4
> +#define _PIPEDMC_DCB_GUARDBAND_B		0x5F5B4
> +#define _PIPEDMC_DCB_GUARDBAND_C		0x5F9B4
> +#define _PIPEDMC_DCB_GUARDBAND_D		0x5FDB4
> +#define PIPEDMC_DCB_GUARDBAND(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +							     trans, \
> +							     _PIPEDMC_DCB_GUARDBAND_A)
> +
> +#define _PIPEDMC_DCB_MAX_INCREASE_A			0x5F1AC
> +#define _PIPEDMC_DCB_MAX_INCREASE_B			0x5F5AC
> +#define _PIPEDMC_DCB_MAX_INCREASE_C			0x5F9AC
> +#define _PIPEDMC_DCB_MAX_INCREASE_D			0x5FDAC
> +#define PIPEDMC_DCB_MAX_INCREASE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +								     trans, \
> +								     _PIPEDMC_DCB_MAX_INCREASE_A)
> +
> +#define _PIPEDMC_DCB_MAX_DECREASE_A			0x5F1B0
> +#define _PIPEDMC_DCB_MAX_DECREASE_B			0x5F5B0
> +#define _PIPEDMC_DCB_MAX_DECREASE_C			0x5F9B0
> +#define _PIPEDMC_DCB_MAX_DECREASE_D			0x5FDB0
> +#define PIPEDMC_DCB_MAX_DECREASE(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +								     trans, \
> +								     _PIPEDMC_DCB_MAX_DECREASE_A)
> +
> +#define _PIPEDMC_DCB_VMIN_A			0x5F1A4
> +#define _PIPEDMC_DCB_VMIN_B			0x5F5A4
> +#define _PIPEDMC_DCB_VMIN_C			0x5F9A4
> +#define _PIPEDMC_DCB_VMIN_D			0x5FDA4
> +#define PIPEDMC_DCB_VMIN(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_VMIN_A)
> +
> +#define _PIPEDMC_DCB_VMAX_A			0x5F1A8
> +#define _PIPEDMC_DCB_VMAX_B			0x5F5A8
> +#define _PIPEDMC_DCB_VMAX_C			0x5F9A8
> +#define _PIPEDMC_DCB_VMAX_D			0x5FDA8
> +#define PIPEDMC_DCB_VMAX(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, _PIPEDMC_DCB_VMAX_A)
> +
>   #endif /* __INTEL_DMC_REGS_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr_regs.h b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> index 6ed0e0dc97e7..1fdba51b4bbd 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr_regs.h
> @@ -9,6 +9,56 @@
>   #include "intel_display_reg_defs.h"
>   
>   /* VRR registers */
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A		0x604D4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_B		0x614D4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_C		0x624D4
> +#define _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_D		0x634D4
> +#define TRANS_VRR_DCB_ADJ_FLIPLINE_CFG(dev_priv, trans)	\
> +					_MMIO_TRANS2(dev_priv, \
> +						     trans, \
> +						     _TRANS_VRR_DCB_ADJ_FLIPLINE_CFG_A)
> +
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_A			0x604D8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_B			0x614D8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_C			0x624D8
> +#define _TRANS_VRR_DCB_ADJ_VMAX_CFG_D			0x634D8
> +#define TRANS_VRR_DCB_ADJ_VMAX_CFG(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +								     trans, \
> +								     _TRANS_VRR_DCB_ADJ_VMAX_CFG_A)
> +
> +#define _TRANS_VRR_FLIPLINE_DCB_A		0x60418
> +#define _TRANS_VRR_FLIPLINE_DCB_B		0x61418
> +#define _TRANS_VRR_FLIPLINE_DCB_C		0x62418
> +#define _TRANS_VRR_FLIPLINE_DCB_D		0x63418
> +#define TRANS_VRR_FLIPLINE_DCB(dev_priv, trans) _MMIO_TRANS2(dev_priv, \
> +							     trans, \
> +							     _TRANS_VRR_FLIPLINE_DCB_A)
> +
> +#define _TRANS_VRR_VMAX_DCB_A			0x60414
> +#define _TRANS_VRR_VMAX_DCB_B			0x61414
> +#define _TRANS_VRR_VMAX_DCB_C			0x62414
> +#define _TRANS_VRR_VMAX_DCB_D			0x63414
> +#define TRANS_VRR_VMAX_DCB(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +							     trans, \
> +							     _TRANS_VRR_VMAX_DCB_A)
> +
> +#define VRR_DCB_ADJ_FLIPLINE_CNT_MASK		REG_GENMASK(31, 24)
> +#define VRR_DCB_ADJ_FLIPLINE_MASK		REG_GENMASK(19, 0)
> +#define VRR_DCB_ADJ_VMAX_CNT_MASK		REG_GENMASK(31, 24)
> +#define VRR_DCB_ADJ_VMAX_MASK			REG_GENMASK(19, 0)
> +#define VRR_FLIPLINE_DCB_MASK			REG_GENMASK(19, 0)
> +#define VRR_VMAX_DCB_MASK			REG_GENMASK(19, 0)
> +#define VRR_CTL_DCB_ADJ_ENABLE			REG_BIT(28)
> +
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_A			0x604C0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_B			0x614C0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_C			0x624C0
> +#define _TRANS_ADAPTIVE_SYNC_DCB_CTL_D			0x634C0
> +#define TRANS_ADAPTIVE_SYNC_DCB_CTL(dev_priv, trans)	_MMIO_TRANS2(dev_priv, \
> +								     trans, \
> +								     _TRANS_ADAPTIVE_SYNC_DCB_CTL_A)
> +#define  ADAPTIVE_SYNC_COUNTER_EN			REG_BIT(31)
> +
>   #define _TRANS_VRR_CTL_A			0x60420
>   #define _TRANS_VRR_CTL_B			0x61420
>   #define _TRANS_VRR_CTL_C			0x62420
