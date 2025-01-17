Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8939AA155CC
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2025 18:33:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B19B10E00E;
	Fri, 17 Jan 2025 17:33:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JmE08nHg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7724810E00E
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2025 17:33:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737135224; x=1768671224;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=d/7xn95cmhEB0KsG1eusaugNIuKRbl5dRclvxAVZPUA=;
 b=JmE08nHgbFEalnTFPz+uubB95fWAKFTVXMI5NjTmW+G+QmKRZjm7d2Uw
 90KVjRIl4H3ydaOkLkS6Rt9yDgYjB5uPxzCQfkDUMICHcEI5efQIlpSVN
 dO334BnegiKajQoBCYG3LToTByvufpttXfKfzMq3Fi8W3EJvoUAqr/4DS
 PiN+fHpQWwbCo+54DE9ImJLDMoZ8fY8DS7kOBIGP5t/zlTWeMucI3SzF2
 CUfu4Sf5O6E6aWl+NgS7Xx3oyO3CUmuyL3YsOMK16i0+xdtfXl+WnIh6N
 aFCQGQ0iY6llPzgf97YMon3w+TNLCuF8nppWiRWQrzWwPAqRy42Hajvxc g==;
X-CSE-ConnectionGUID: /Nr77p96R0CvMPf0B3ihhQ==
X-CSE-MsgGUID: 8g/psuc/R76Udkl7eZwTjg==
X-IronPort-AV: E=McAfee;i="6700,10204,11318"; a="36785222"
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="36785222"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2025 09:33:44 -0800
X-CSE-ConnectionGUID: 8Jzv/t69T2CEfVk8186Lcg==
X-CSE-MsgGUID: 7jvLn4//RvOxuDt6UDhjjQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,212,1732608000"; d="scan'208";a="110867210"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Jan 2025 09:33:43 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 17 Jan 2025 09:33:43 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 17 Jan 2025 09:33:43 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 17 Jan 2025 09:33:42 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Yik5f9usv2wgHcfCKbZ5o/CInX/6pIkB7b1k+ulGVUFQAPIc0EgALuOTSIXrKb40WB+3ODu9n+evAgY4lxfD6qiDb+FcG3A1S7lvVuj/rZ/6J3MHEtP0swEo1kCk/MD84fO1wNGvl6bMXzREI+h1i9a4a+CZJbFkjaLXyayjcaizvbGDMdXhrpAbk0c3/zpzsBdAR/ShRLWdxvlgiOgx7zoCp3sTYztaUWjOsus+o/fnnKjRchAso/PMvWDM9hiIHt2YiuV574nKGnByu3QXl6X/9hqQTvc8iWQjyh1YH1Gd+8ur9lej8rOgOuzXuf3f7IPXYuWNz4AepswA8C1Rpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Q1nvIQt9Q3ZdgOI1W5Y3DkVZTlsJjfNkqbPDOX17kFM=;
 b=fDuc352X3IPQaOKa6LTFPXsr76TQCRoSRV8NePOzAxt2JpaH2oioVaAEOXT1WMcR43jeT0RrShMRYKbFTBKKSLK/jUG3qLw16TEviJOkHXfWZ134RjTYEdlMdnCqLl4T79a9WbanqdIfzL8TQ/zKBMszUPSiG7Jw1YUEAfy9ZrsQSmmxrdGz9/k9JLgbjDTpyJJIkLO/tC/bjNWrXaBsxVH5dWlKfenOfZyBDOwLLQHeq7aZL7Ibql/QruMekcVfTXwnA0+OTb8LX0fBTk15SeqWzPNTYI8fGgXTOa5Ba1RCVNg/YBZB6LWnSlmYqNvAOSIgogPkKQDHNuR3FSE04g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by PH0PR11MB4949.namprd11.prod.outlook.com (2603:10b6:510:31::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.15; Fri, 17 Jan
 2025 17:33:40 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%3]) with mapi id 15.20.8356.010; Fri, 17 Jan 2025
 17:33:40 +0000
Date: Fri, 17 Jan 2025 18:33:34 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Nitin Gote <nitin.r.gote@intel.com>
CC: <andi.shyti@intel.com>, <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v3 3/8] drm/i915/gem: fix typos in i915/gem files
Message-ID: <jakp3dxqakiwmzftzarjwndg7yrayh3lcwrnakjfc2iuvqt34t@rn265q4eeouv>
References: <20250113184318.2549653-1-nitin.r.gote@intel.com>
 <20250113184318.2549653-4-nitin.r.gote@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250113184318.2549653-4-nitin.r.gote@intel.com>
X-ClientProxiedBy: MI2P293CA0010.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:45::20) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|PH0PR11MB4949:EE_
X-MS-Office365-Filtering-Correlation-Id: 5f99db0f-bb9e-45ed-0cc2-08dd371d150c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WkpEMzY0ZDFwNG03aW54OHkzVGdiRUpIcHpVSkk2S2x3N1lkTXFyYzMySXQz?=
 =?utf-8?B?R2IyVXJSOGZqVjBSQVVJT1dUWFQweDRqMmtmV3MwUk5jZlpoR25MMXgrZFU0?=
 =?utf-8?B?MVE4cHB2YnRUakhrQVgvb29DNGlXZmpuR0Y3d3JGNkFmLzdmTUdON1crS08y?=
 =?utf-8?B?YlVIN2FsR1o2R2ZmZGdJYU1vZDJPSUVTZ1FGMlR4S25oeXF2bjNrd2NoTVha?=
 =?utf-8?B?b3U2RVNFZ0ZNRWxTa2dXNnBSNlBpNmF4WWhCSHdvWVdHSDlwb2JHaGE0aXov?=
 =?utf-8?B?TnlwT1JRNnd1bHRlRUR4ak92WjI2UlhERkk4L2ZTTTFQNDF5OU1SeUxKbXZh?=
 =?utf-8?B?ckl1SzhrOUFlZ05DaVMwVVRqTU9WTWlmQ2doMTkvV0RTMVhUdXFEZGhEZDdx?=
 =?utf-8?B?UzUrTzZOWWtTV21SQmNGcVBSMUxobFFDZkU2QSttYk5vazNYOFdSRWhUdG9p?=
 =?utf-8?B?RjErSThMaDZqbmlOMXhJQjhrY0VtZkpWZjRySGRLQXg2cURWWFliVFdJOW1p?=
 =?utf-8?B?Wk8zQ3JJNEhldnlrU1ozMzJ2U3FEd0tNM1JreS83ZkhoUWtJUld1Mk5vcVFv?=
 =?utf-8?B?VE5xSU1GdzhWdzhLMzF5a0ZybkcyOTlJR0NJbEJBa0RvWE9NZSt3NmkvZ25E?=
 =?utf-8?B?THVOeVkxV01yZnl2dDRjSEVwYjNpNFF4djRpUkwrN0RNV2pzNWRMb3d3MzRO?=
 =?utf-8?B?VWt1Y3VYcVdUQmhJZUJGbmhHWnFmZnV3TFBOSTQzYUJuNXd1dE44U0UrbWVN?=
 =?utf-8?B?Y0dXR1dkTHRkZFJqeFhsd2NkeEd1R2JwTThZRFBXUVRaQlRiQjFVT3cwcE1v?=
 =?utf-8?B?TUVMN0NXeHZENjdLUmh1Qm5HaDVGVm4zTXhHalRFU2FBK2hNckQrVTBpQmd2?=
 =?utf-8?B?dVkyblh5M042d1A1ODFaNGFZUGVRT1RFZ0FsazVVSnBlUlFHV2ZMNEtQMU1W?=
 =?utf-8?B?OXNqcXpLTmhQa2MraHNtbmwwN3VtWTIyL1hWR1NSOXlNcS8vQklHVHg3cVAx?=
 =?utf-8?B?c1FSbHdWOCtoT3NTWldTVVdDMld5eFVvWUJOdWlWSWVpK3ZybVNvV3ZmZWY5?=
 =?utf-8?B?VWVlUGhpUHpMNktTaGJhYXF5eU14ak9OK0lFQnU0bkE3K0JzUG5PZjBXdS9p?=
 =?utf-8?B?RncvYXRJTlF1QzcyM2xydmllaU9aQTV0MVpSbHRWTWcyN3o4b3lZbTd2Y1h3?=
 =?utf-8?B?RmVhNmtnSWJzZEc5c3pFcm9NQUNZeWdpNUl3bUR0OG1WZktUTHlqdW9zRlhD?=
 =?utf-8?B?eUJEZis5elF6TXphQ3FoVnpTQS85RHZCRWJCR1dicmgraGRheHRNZTJJMlQ4?=
 =?utf-8?B?QlRJVGl5aCtxVENvWG5wZEh6USt3YXpJdkRlcU8rRjR3bWhUMkszQmsvUUdU?=
 =?utf-8?B?MTg2dm0wU3ZUUldhM2JxNUVObStBYlBVLzlXS0Y2aDgxeUl6SmNqamZ6akZM?=
 =?utf-8?B?dUJWTTBESUZhZWJIUDg0ZHN0YVd5aUdrVCs2Y3VkVm1mcUpla3RUUnQ5aDlz?=
 =?utf-8?B?T1VXRlpkeldwYTFRRmxNWC9JbEZIVDF6SSs1TFFwMm8yQ0c3akI0dHQ1VXBi?=
 =?utf-8?B?MURhMEZZLzJhUWlwYUhnVWFNVGd4WDVpU25xUmJoMFBoQ1k5U3NGeVh6U2xI?=
 =?utf-8?B?QW9PVXVOTVI4Q1FpYnRRbUd4VkZUdHhTNXg3UzJyUm52Wm45OWRndkV4SzVl?=
 =?utf-8?B?bU1WRFV5T1JpZTd4N1E4TmNkS3lZa0loTm1kSmo5MFdUd3BpemhHbjl5ZDdC?=
 =?utf-8?B?WlA0NEVTSFdQNGhSTFpJS2tLeTNyT2JHVFdQSmJNeFNlZHA1Z3lvRm54djNi?=
 =?utf-8?B?WlBRTyt5NDhoSEhnS2Q2aHVma2ZMUkJBOGRJbXdTdnhJVkg4bmE1bytid2Z5?=
 =?utf-8?Q?IJEvEm08WQ9Dl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TC9TeFRYeFlpb01JSGZZaGpkU21pb1BNUVBNNTBLZTlrZVFvT1BwK0tGUHRx?=
 =?utf-8?B?ZWhjQWhaUEhGOUZOTC9VK1JtbUhTQm5Fb0JQU3RBZnJ3Z2RPVW1mdzZjbUxW?=
 =?utf-8?B?OHRlTE5nblRpV05RdFlaRGlzZ3RaWHFaYitBcE13anAvTzh2dzBtNlM4Wnhy?=
 =?utf-8?B?U25iRmlSTlN6MU1ub3M2UHhLQWpCQ2FXb29DbkZvL1BrOEhmeG9xNzU1U1Av?=
 =?utf-8?B?TTJZN3NFbmJ1TDBEOHpVSmVvSFdQbkg2enVFUFVhQkxWUWdDc1hmRGZRYnBx?=
 =?utf-8?B?M0hwSzRZdlprU2NOYzIvZ1JvOHE4YmxoNXg3cE9tcXFXUGM3MGQ4bjJjRUtU?=
 =?utf-8?B?Nk1DQ0NEbmNBWVVMSmoyUHVMNkdoTWo5Y01iUGpVbml5bFR2S1l5WHN3a0Nt?=
 =?utf-8?B?aFFaT2prRW9oN2FkMjVDU2FkKzQvRUw3djFGUEl3UEhYY3Rwc09QUGFkQUlJ?=
 =?utf-8?B?WGQ5ZGJvOEU4dTlKVDdrNDdDNjZBQWd5dmEwOHZaRDBGZjNvdVB4T0gybmhl?=
 =?utf-8?B?UWx2MWZZQkpSWm5GSlZTeHRBbDJsbnhZNEt0aUpNWUlCT05TMHBhaDcrcXNa?=
 =?utf-8?B?SVJiVGszN1hvV1NoUllmenJlN25QMzV3di9UQ1NuVHlIM3loeVlJZnY0bXZ2?=
 =?utf-8?B?cVVIZStXaUh1d0s1aEVjeDd0ODJUTmR0eUt1bHZDZ3lyWjdvV29WSVJ4RzJT?=
 =?utf-8?B?M3BnRXY2UTVIYVhSRWhwT3QyY3VOYWhveDRRS2h3cVQ4QXdrKzZHUzlVUzdB?=
 =?utf-8?B?U3hiSmZOYkdia1VDbmtBVWlYRzdsd2NQSjdoNSs4NXA5ZXh3b09EazVZR2JQ?=
 =?utf-8?B?b053SUtUSXlVSEZGNjVUT1ArOENIU0hoMGlRa29jV1AwR0NVY2dteTFuNVVx?=
 =?utf-8?B?cTJ4V2JvUi9SZU5FeGEvZTBna0oyUHF0RUF2Rk5McU9GclVMdmNRQWNKdk1E?=
 =?utf-8?B?ZTZSckhwYUF0S1RGTnBMN2JJeFM1OEFzYU1sRHJTZFZNU2xOSGw1Y0t6NG1M?=
 =?utf-8?B?eDJJeU9OWGhIa2g1WXVLOXlTazIxTnNZSUZoQWcxby9KZUt1MlFYL1pXODJZ?=
 =?utf-8?B?Z1RxcmRyaG5SVHNFUUdkRzlzelRXUkRjYS9pekI5TUNjTVBIZlJ5SFpMV05O?=
 =?utf-8?B?cUtydzhFbGJ1WlEwZStiSU9heTF2aVJMWUQrdFZVOGhGSmtqVGl2eWlyTlps?=
 =?utf-8?B?QzVEQVcxUmdvUlpINmVxbEU0NlpiOWFMd05yUXlhNkNZRW9KeWN3dUszVUpL?=
 =?utf-8?B?MFdNN3BzM0hPTlFoYmUxelo3RWZ4N05LTnZScDRNbFMwV3I2K3R1ejBqZGZI?=
 =?utf-8?B?WlNiRGM1MEJndFNpanBmVFplcGVDZTNrQ2g3cmhuTzd6UVBITWtFMFkvT3lu?=
 =?utf-8?B?cTBuamVtZDExRGJ5REJkYVBnTitOZmh1ak9NanZnbG9HVVRJNDlMUkl1ekw4?=
 =?utf-8?B?c3NHSkZUUzBBT3doSVp1dUNWNm1TK1hrMVNBNUhnMU5tcFc1bmR1QmxUTTVi?=
 =?utf-8?B?QWlsV2FRRVlVQ1N1ZXlqU3pXZmNKeW5JVjFlL1FwYmwzTHZQMlFJRXRoWFE3?=
 =?utf-8?B?aVlFSHYwNFUzVzJJbTFRenhJVGIzcGttbW55bXlPa3ZTYjlqc3ZsdHk4QThz?=
 =?utf-8?B?cmtBRnVKaU8zNU5zdVVmakpaa3hITVQzc0h3T2Z4aHlqa1ExWHJITEgrMHZ6?=
 =?utf-8?B?WUZub2JNaHFMSmxXUnVaTVZLWDlpUldpK1ZXVm94cHVRSXVOaTF6RnRwLzdz?=
 =?utf-8?B?cjNhaEZxdENVck1EQ1RGbzdnY1JWZzBLWW9rRTVuNUEwRTRxUXB3MHJ3aGNL?=
 =?utf-8?B?Sno3S2JVOUl5bW5CbG9Ebjc4NFZXbDdGSThEM2lBRmN3TXd6SlUzaTljQUhQ?=
 =?utf-8?B?b0FQYVdvWlYvQ0hNUU81ZGVpa0xhUE04SGY2eDJ3a1Zub1RmRlJUMWxkME9X?=
 =?utf-8?B?MVBWdnkveXc5c1l5SWRVV1lwam8wWGtYTVlIRDRXMmlsRm9wYXVqYURYMUpk?=
 =?utf-8?B?cGJ1eFlraWMzN1RNdFJ5RlE1TDNwN1hGVUZQUWZJWVYzK1M0Mk1jL2Jxa3dt?=
 =?utf-8?B?dVJtcHZaWklTWFVFVlA5RE9lSlpPSmhBTWpOOGwxQUdSMldZTWhoRmxtRjgx?=
 =?utf-8?B?RjN1ZlVrWTF4MHlJSHoxRVc4ZGhaOXljemRTS1lBQjBidXdlTVpsWVorT043?=
 =?utf-8?B?cXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f99db0f-bb9e-45ed-0cc2-08dd371d150c
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2025 17:33:40.4087 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: rluOk4oRnnS7mC3ltMdavXlgdn9VY0tIY9djd6ca3/6ctVhyTrHyW9YCb9Kg/clFToeFsnKUWRQRefJQdUt32HbR/vy4shoiCf9Oe7Y8QxE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4949
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

Hi Nitin,

> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> index b6d97da63d1f..621140a7fda3 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_context_types.h
> @@ -245,7 +245,7 @@ struct i915_gem_context {
>  	 * Execbuf uses the I915_EXEC_RING_MASK as an index into this
>  	 * array to select which HW context + engine to execute on. For
>  	 * the default array, the user_ring_map[] is used to translate
> -	 * the legacy uABI onto the approprate index (e.g. both
> +	 * the legacy uABI onto the appropriate index (e.g. both
>  	 * I915_EXEC_DEFAULT and I915_EXEC_RENDER select the same
>  	 * context, and I915_EXEC_BSD is weird). For a use defined

Codespell won't catch it, but I presume it should be "user defined"

>  	 * array, execbuf uses I915_EXEC_RING_MASK as a plain index.

Thanks
Krzysztof
