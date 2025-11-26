Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CB27C880E7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 05:32:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 639DB10E507;
	Wed, 26 Nov 2025 04:32:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NxNr9LLd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3642410E507;
 Wed, 26 Nov 2025 04:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764131546; x=1795667546;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W5zuEV5dE7hEtUMhEzUSWkgez+AgWXMXyJ9yWIALLjw=;
 b=NxNr9LLd7TRRNUtdwBALr7A+HhQ4KWaFdhyxGRnfugVBlFesM5SnS5go
 BjAc2QB677RO+XJE9mh90A2dCPj4kI8PkyaoRAAipGOBznA9IfB/Ltl0P
 vR2ZYsoHt5+rUDzL7vau+vom35flf6NA3G4HUywEPPT4vAlQCkxEnWi+J
 x276YQaDWK9I0a1XYMMIYZsYeckT0Apxt52XTqWp8QLBtWhm3OXaqTuPG
 Kh65Xzp0j13wxHCOXbCpsaC740IeyvdL5svsGvkOahnNpJHtRSkKd97R6
 k8nJ6HS9HFwEgfrZ2MpepM0l1Uk6xSJdeoJfmVj41RE72qUmLYN4v/dL/ Q==;
X-CSE-ConnectionGUID: if6N0VmfThuwLTc5G1H1yQ==
X-CSE-MsgGUID: zzesCH0JQgCjYW/JLCvKjQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="83551820"
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="83551820"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:32:26 -0800
X-CSE-ConnectionGUID: aAljsCDDThOT214fy5cn2w==
X-CSE-MsgGUID: 5RadvNr/RkKL5HvPOxhUqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,227,1758610800"; d="scan'208";a="197773667"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 20:32:24 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:32:24 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 20:32:24 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.0) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 20:32:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=k28tVxzmC2QhlK2nCq0a1P+tOz/s4ARjqoYtpHYnzyjcpmgGjTxJTP0/qhl4d/x0Ayy5UQuIRkvECXRFoDpDTJkXBoF7uBwtDHzvpmz6JGis/pfEC0aVjAs0OinqHs2i7dsWfOwSky0u26PapjE/G5ydq/DpeL8oUPQL8VqhBTVXoIyCOV0VldhIxDrCW9PZvlYYTUzmX3SgEH4ia9rL1eKdf8+Pxo1TQUIK3VUvbRNJ2Yew97WJJCK3Wvqlhg/WN09LGZ9K65VXd3w5dPp5TzEKsYLOQHA4iaD9bAd4kgSlHK594O4u+XHIQUVB8geOOUhOcsuAVpoZXPcU9Toguw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=H0kVD/g58AHl5IPc1dyJHOlvZ6ihr11dfs0gBqOsPhA=;
 b=ejjMe640MGWNIr9id6ddMeFHpxdodCalicrxxaILhtoRwbszi9jK9K93Sq+zxxl3nOZE4DoEIBIzR7xVGJfGgHaP1iwTryHdMikezU8G2LLK0CaXL+rRmd4JKQg3PRPwvLz9mMBvqIwTJOLD3yxrPYQ0D1e7QFlCexNbgXhBf93TiK/+xIAd6JQ5zIP2hbvi/OwtKF+N5NUONb0//dw6msKiAegpUXDdNGOsoD0RHKfhZQshFxapY6MctVmHklU4yzBiUVP6Q+gXO7WTvvIExA0e7ETyiQqk+L8lhV/pwFz1vVxBpJWOu89lZ2lpq//oziIhGPOrhOFJLDQChdSJMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CO1PR11MB5010.namprd11.prod.outlook.com (2603:10b6:303:93::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.11; Wed, 26 Nov
 2025 04:32:22 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.009; Wed, 26 Nov 2025
 04:32:22 +0000
Message-ID: <8efae266-811b-4bb1-aedb-da3156301918@intel.com>
Date: Wed, 26 Nov 2025 10:02:14 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 16/18] drm/i915/display: Add function to configure
 event for dc balance
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251117054442.4047665-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251117054442.4047665-17-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251117054442.4047665-17-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0209.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1b0::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CO1PR11MB5010:EE_
X-MS-Office365-Filtering-Correlation-Id: c34264df-3e5a-4fe2-9490-08de2ca4ca91
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?YldaRWp0K0Z5YmpHYzRUd0tzLzQ3WUxyRk1zSi81Y3dRUkIzeVFIcTRHL0ZO?=
 =?utf-8?B?Y000WndVNDF3QzBqT3l6NkV0QkZUdU9uTU5DTEJTUVV4WmZWRndjcVk2MXcr?=
 =?utf-8?B?SklHM3VaaS9uajhZWHE4dkRFYmZVRlZKWEJLdzFPM25NS0pqaVpwdHRHbi9x?=
 =?utf-8?B?anF5SXJJU2tVMzBBaFR2YkJPMkJtWTNvNkhWKzBMT3BPay9pWE1hT1B0bU1F?=
 =?utf-8?B?OXdseEFpTzgyaGl3NWVYZEdqd2EzaXN0VVp2QlJUVkowak9lTWgrMHAvTk83?=
 =?utf-8?B?QXc0RUVhYTgyN0d3UXdFTVR0QlRBV0JZZFRSYnlXQk5JZUY1cDVTNlVBN2dt?=
 =?utf-8?B?WWREOXFxZ3N2V0lZTGVzeEJHOTVoMnB0bVM4T21vZmlRbWEvWUlWZUVndU50?=
 =?utf-8?B?UVJqOVBkakZ1cFZqaWhmUWpORUZXZnN0VmF5cFFvQlY2cXlDZElzN3lxSnVz?=
 =?utf-8?B?YUVjeHJVcCtkNG5vc1A5RjJKTXlaME95ZEdNczhLdXlydHduVWtndE9QcStt?=
 =?utf-8?B?VFZDWDJlQ0dWVjRiRXhUYUxyUi9hMExvcUE2S1hPcm91YjNTOExsQ2dudGdn?=
 =?utf-8?B?bVlkdytxd0pza1ZKc3BwdVo4S01JNkpQdEY4U2p0YlFnUHBEZjFLNXV5eDh4?=
 =?utf-8?B?Zmd0QlJ1Uy9KcGJkcldHV1RNNU8wZFZLb0pVdHdaTm5pbFJXQlFaRVQ3K2VW?=
 =?utf-8?B?RTFSWk9paVNCRk5KS3IyOGpDRmorZGxxMWVpMVlHN3lmbEljSmVTc05DVDlM?=
 =?utf-8?B?SFduSC9QRUI5RlN0STlXSnVOYkhzaXE5UlZ5YW02dW5oRDVocmVscEFYYzgw?=
 =?utf-8?B?U0FyUC8zbFpyM0FLbEVzTDNrMmZIc014WGNOUFRWYnZqUFcxZStQKzBiVXVY?=
 =?utf-8?B?OW5qMGQ5MnFPK2tQYUdNbDREY3hJZ3lKS05tUmdkVThjSElxcFBCckNVRzdp?=
 =?utf-8?B?Q1IxdG1MZGMrT1FMdzEzVk5FWlJSRVJ1ZzlqUllkSzJOV092azJWM0d4R0Z5?=
 =?utf-8?B?Mk9uVGtIOGg4VWtLVGkzbVNZRUNjaXJQU0IvODNDTXBlR21lc0ZkVXd0M1pk?=
 =?utf-8?B?SG1FcllrTHlHR3hUbkVkNGw1bU1uS2V4elg2cWpDMCtDRUJ2VURlVklkM243?=
 =?utf-8?B?WG9GQ04vSEEwcXREQzl2QkVkSkZTdTRlYWQwVks5R2dnT1M2d25TTlZzWERa?=
 =?utf-8?B?OWRjU1JTODV2QzRlM2ZUdDFtazZBb3VLaXhnMFhic2ZZaWNuYUQ5YWtGZlJT?=
 =?utf-8?B?VU5zaTY2MXZsM0Nnc2RNSUFOU0JqVk5XYTVGbWlpVElHZTlWamlpRzJBNnMv?=
 =?utf-8?B?UTRaYy9HK0t1N3hrZWRaZlZFdmFPV1l0QTFMR1JZSXJCMXRWblJyblZXU3Yz?=
 =?utf-8?B?YTl0U29lRXlJdnVhMlNLcW1OOHhsUmxWZlhacGsrM3llczhFTmJRdWdOUkY4?=
 =?utf-8?B?cGVxZzdGSzJJNjRVU1RXUjR2aGo0L3lYR3JBNWExc0tHSEtjakhOb0tXa24w?=
 =?utf-8?B?aDhZWkJTUG1yaTVnNzJKSVh6Sktwc2Nyek9SVE0xeGQrT2R6VENqUnF4SG9X?=
 =?utf-8?B?YnBrWFdnNWZ3cjJ0ZFljcGlRUko3VTNsVDRpcVQzNkUxZHIzQldCRmo3ZDdF?=
 =?utf-8?B?OGhaTkwrNmpFOVU4Q0VPWUg4c25RNFF6cmtRaTVjS21UdWhwSG8vR3F2S1Vm?=
 =?utf-8?B?QTZqNWhXemNjSlF6b2J2cGtXL0J3UjVaQWpZOWVNYnQ0bDhlY3h2TkpwMk9x?=
 =?utf-8?B?T0x0NE9ibU9mQUY0NlRZWDYvRmdtbmQ1VW9sWmFvV28xdUJDN0Q2T1FmNjdK?=
 =?utf-8?B?dENWZmg3Wm9YZXQ0Qjg2eFp5K0JCeEZFYytySnQ0WlVkNWs1THZOUDFCd0du?=
 =?utf-8?B?OXdkQ1J5T1RvNlJUTGhKazVPVHRRNVdVWEZxd24vMEtjUWRURU1FNnhNUjhz?=
 =?utf-8?Q?oq7UeDeOZeNAwiuqusDdInfJgdsxBeHR?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MzdZSDNvaEh0bkc1WWxuNU1wNk12SmR0aC9McDJKU1YwM0VXTmpySDF4VHhJ?=
 =?utf-8?B?U1FZSFIzT0wrc1lLbk5TU2pGYzNLMmVtbTltbDJDMTVyMnQ3aS9sS0Jlb2Rx?=
 =?utf-8?B?K3IzM1R0d1JkMGtySEpnRW5semNVdU9FcHhqS0E5c3pXNVpLaHFUUFRBMUdL?=
 =?utf-8?B?RTBxSFpuT3FlZS9kZVhvOXh0d3lmai80ZWJpclNiUGljaC9mWER0QnZkelg5?=
 =?utf-8?B?RXhPdXM3Y1FNQnZIT2xxOGw2Q0U2MWZpd2xuZGZCUUNyd1ZCT3YyQ2Y2ZitD?=
 =?utf-8?B?c1VlOVJPd09KWE80WjdEYTdZVzNnR0MyQW53WnZIdjlkb09NOW94UjBGSFFT?=
 =?utf-8?B?eXJlV2xlQzJIbFFCSkRwTkNNd1hjZStPNUhQZC9jQjlrdzhJMExXZ1V5MnMr?=
 =?utf-8?B?aTlrazlUQkl0THlNNjM5TWl5TktINjUxQStJalcwaGV6a2UvbmhEdnU2WjE0?=
 =?utf-8?B?SXd5SXppZ3loNm5ML3dCQUZBbnRxRm8rZWI3a2dNaVhSNnZTUERKb2hRVmZK?=
 =?utf-8?B?eVg4SUpZRFJ4ak00TGdiYTJNSG8wbDVySHZZWE1LYWpHbDc3RmxpdjQvdi9i?=
 =?utf-8?B?Q2FCeXY0eHl3QkczeXdtaHJ0ZUZUOUZhTUJqNHNjZWtXWGJxTElJdG5UZU5y?=
 =?utf-8?B?aWRHeHFuRktrZjNBR1Q2OWN3MGlpV0VweVFiK0h6NHNFWWNJRVdhQ0NOcDkw?=
 =?utf-8?B?a0JRQitXWmkyNHdKY1IvdGRybTVneW91OHY3ZlZsaktNaEw1SWZvdFdaQi9O?=
 =?utf-8?B?ZjUrZFg1SU5NaTM1ZEcvbzJuNnlQbHZYVmorbGxwaUJuVi9sVGpCUVFaNVpu?=
 =?utf-8?B?a1I0NUt6NUVYVG9ncG1SdERlV1JwZGhXZGtabjNqQTlnZWJ3TmJ6SjZhZHZK?=
 =?utf-8?B?OEN0cTVkdkVTd0Z0SDV3TUZra2dqQ2J2TTdaUjd3NUNUMVVlcC93NElja3lk?=
 =?utf-8?B?ZGhWWGxmVllJTjZQdTVuamM3aHRNclZva3JCbVJGbzhaQWtDTU8wTW5wODVy?=
 =?utf-8?B?MllkZVNtSkI2WmhVS25sbkpXWCtjZmFJZEkrd2VSb24xYngvbDRWK3huSWVT?=
 =?utf-8?B?NDMxUXloTGlqSW1LK3ZobmN2UHhJVjcwRFh6bFh2N1lVaEd4bnRuTkNuN3dE?=
 =?utf-8?B?RTB6bkt6dU1TYzVqQk5JeW1TNHFVMzVrL1VzdmRzQnNIUFRHMHNGbmxaQ2oy?=
 =?utf-8?B?Sm9nL3ZQdWdvaFd6SWo4NGxjREVINVFiSVFZK1NtNEVobzNHa2xrYTZsbGR5?=
 =?utf-8?B?SFlwc0lhd1F2enRkcTBpUjhOdWNUSDBtZmZaczE3bmc4K0J4bS9WZlJBTWpC?=
 =?utf-8?B?QTZrZkxicE9zREVxYVRQaGdkbTVvbXEvc0JKcmtkelJzMWR4eGh5QlFXbk44?=
 =?utf-8?B?aUpoMVBjK1JYZmR4YmF3OG5nSUFIUFlIT21lZUdaK2FxUy82Zm91STlsaWd1?=
 =?utf-8?B?V0pPY1ZQU2NmVWV6WkVGamIvQ2FUVmU2ciswRzViWlBIT0tVT0prK0hXenZ5?=
 =?utf-8?B?d2M0aXNVVGhoc1lRbDZ1a21zcERIdGhPU0xSajZqYVBEMDZIaW8wUjBwaHpR?=
 =?utf-8?B?U0x1TW9EVlVIMldTb3UyUmpmZHRuUkVJZzFLRWRGVThEdmVjd2VhNVN5aWhV?=
 =?utf-8?B?b1NocUV5RndxVzZ3RWMxM1NvYVVhZlhyU2Z3WkhBbE9BTlROOWJJQ2Vmc0dP?=
 =?utf-8?B?NzNMeHV4dk5UNXdvUWZnTjE0YWhMc01EZ0NLTmovMnBJMGsvZzB6UGhGUUM1?=
 =?utf-8?B?ZGhXSlVDY3J6Wm9yMTFtSktlYWVudGYwK3RzRm84UHlGT1pBejFsc2plcjc4?=
 =?utf-8?B?dXB6eVpGMjlic2dlOGFiRTNha0lnUTBLQVJNM3pYbzl1L1hCTW91ZTBRemlY?=
 =?utf-8?B?UDcrZXpZK2h0aVNmSzVoT2w5bnE1OGdsN2h3RC9xbzJRVWNYMy9mQ1pyaTZz?=
 =?utf-8?B?Y0NFK28xUEtwbWszbmlhd2hHaDVidmw0YS9ybFBFT2tJMkszbGo4V1h5R0RU?=
 =?utf-8?B?b0hPbUpZd3IrQnJNN3ZWLzlOMFJOcVNlWmtPUDN1YXlMc1dRcExIUGMxemM3?=
 =?utf-8?B?dFUvZ01QSVdZS1pUYitCVkErMmcwVEtzWmFFbncrekZBd2ZxWXoxVFMxUjJW?=
 =?utf-8?B?UDRuV2VUMEt2bE5KQjh0YWYrVTJweWhNdkp2bW91VzJFcWtsa1d6WUFwODVh?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c34264df-3e5a-4fe2-9490-08de2ca4ca91
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Nov 2025 04:32:22.3548 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: g/od1kixzE6J0u6Lr9XFsx28woHg0SSSbcnVvCD9vG6j7yBD1zZL5ogsOm9F4sfQjSQAD4st/eRFHRS7LfDyRgNcb6r95dHdWgDUJrLtybU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5010
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


On 11/17/2025 11:14 AM, Mitul Golani wrote:
> Configure pipe dmc event for dc balance enable/disable.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dmc.c | 15 +++++++++++++++
>   drivers/gpu/drm/i915/display/intel_dmc.h |  2 ++
>   drivers/gpu/drm/i915/display/intel_vrr.c |  2 ++
>   3 files changed, 19 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index 147adcd18320..8de8e69780fa 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -859,6 +859,21 @@ static void dmc_configure_event(struct intel_display *display,
>   		      dmc_id, num_handlers, event_id);
>   }
>   
> +/*
> + * intel_dmc_configure_dc_balance_event() - Configure event
> + * for dc balance enable/disable
> + * @display: display instance
> + * @pipe: pipe which register use to block
> + * @enable: enable/disable
> + */
> +void intel_dmc_configure_dc_balance_event(struct intel_display *display,
> +					  enum pipe pipe, bool enable)
> +{
> +	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
> +
> +	dmc_configure_event(display, dmc_id, PIPEDMC_EVENT_ADAPTIVE_DCB_TRIGGER, enable);
> +}
> +
>   /**
>    * intel_dmc_block_pkgc() - block PKG C-state
>    * @display: display instance
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
> index 9c6a42fc820e..3d8a9a593319 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.h
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.h
> @@ -25,6 +25,8 @@ void intel_dmc_enable_pipe(const struct intel_crtc_state *crtc_state);
>   void intel_dmc_disable_pipe(const struct intel_crtc_state *crtc_state);
>   void intel_dmc_block_pkgc(struct intel_display *display, enum pipe pipe,
>   			  bool block);
> +void intel_dmc_configure_dc_balance_event(struct intel_display *display,
> +					  enum pipe pipe, bool enable);
>   void intel_dmc_start_pkgc_exit_at_start_of_undelayed_vblank(struct intel_display *display,
>   							    enum pipe pipe, bool enable);
>   void intel_dmc_fini(struct intel_display *display);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index a23cb90b6b7e..74a6d5243f00 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -835,6 +835,7 @@ intel_vrr_enable_dc_balancing(const struct intel_crtc_state *crtc_state)
>   		       crtc_state->vrr.dc_balance.slope);
>   	intel_de_write(display, PIPEDMC_DCB_VBLANK(pipe),
>   		       crtc_state->vrr.dc_balance.vblank_target);
> +	intel_dmc_configure_dc_balance_event(display, pipe, true);
>   	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder),
>   		       ADAPTIVE_SYNC_COUNTER_EN);
>   	intel_pipedmc_dcb_enable(NULL, crtc);
> @@ -852,6 +853,7 @@ intel_vrr_disable_dc_balancing(const struct intel_crtc_state *old_crtc_state)
>   		return;
>   
>   	intel_pipedmc_dcb_disable(NULL, crtc);
> +	intel_dmc_configure_dc_balance_event(display, pipe, false);
>   	intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(cpu_transcoder), 0);
>   	intel_de_write(display, PIPEDMC_DCB_VMIN(pipe), 0);
>   	intel_de_write(display, PIPEDMC_DCB_VMAX(pipe), 0);
