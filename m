Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C6A79ADB38D
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Jun 2025 16:22:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2A3FD10E351;
	Mon, 16 Jun 2025 14:22:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lqxQd2a1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24D3B10E351
 for <intel-gfx@lists.freedesktop.org>; Mon, 16 Jun 2025 14:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750083752; x=1781619752;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=KgHaII+b5OgIn6z8FAkPX6uEkJVl93LyOhywQiQuqUU=;
 b=lqxQd2a1GYn6AEPJm2H5xieRbyeLczLr2zAZVGoVLmAUdpPF7PZ9EbQt
 2vcFEPOxPasfxJRuly13ml59Nwc5TfIZZxmkBaQCDCOhVbJaMd6ximRwm
 RWIhcleynlAx8lyMfAHF7BV2cjJqYnxrS+JYR9cqbkq5+O6Xx7YA3/M8Z
 7gZ9xur2rm2L6sEikOvRgh6gzUxJQaxGHHP3eTdbYP+U5H55mkQARy1iE
 EDuuy53MMJ8BVGy2viFqwzu8uz2VsgphkJBeWaXyZtySYUVVFanT3mOFe
 6cJjMBEbOG51lNJlx/URh93UGyvvRmmJUOtExCrem8ENUc/bnNRK2cVCx g==;
X-CSE-ConnectionGUID: k7jHT8QFRKKujAY+efjS2w==
X-CSE-MsgGUID: Fn0GZKXoRrWarFslmy9/jw==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52371861"
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="52371861"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 07:22:32 -0700
X-CSE-ConnectionGUID: GLZ9ifz6RBWdLF4mM5xrEQ==
X-CSE-MsgGUID: DoB9cJk2SEuW0Qz93z1mwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,241,1744095600"; d="scan'208";a="171711299"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2025 07:22:31 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 07:22:30 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 16 Jun 2025 07:22:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.80)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 16 Jun 2025 07:22:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=u4AtnnVC9CLTJj/VHQpTZTvouQLegUUGfhW1vf/WD0+ZWuH0FVBPMnpPzNOqw0La5PTsYCjwrTvFcpsBTvNUGPl+V2N4RqInXgik6m5qzAMxsqaLmRUFywKbWGZe5c2cVukVxhJlplXyOkDiD9JTjPEPZsLl2nHSkd7mgRlDnDQZ2ll78xWcpRG2QGAXoFTQON2FcQ6t0GK4pBuZG3AgmoYvTMKcOE/BMPIuDz3g26rC5jT9jFsdSQteAPmoqOxC5Zl5pxC7KWlvT/gYXvealzGf/8ZHQvpkOHbcaE38ptIVQzntuy7oY6FLQH7aS8G404zOZ0vRiYWVIAHfV5CCoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/535P1bUJBpYJSQdkV0ox5+ON8R/mhgekB+npRDwnEk=;
 b=a2/c+NVRNtzyWI35NBdDQ/+wTRB/WrCTyr9iV+BKdZvP0rqlKr0/khVfDSsGabcTO0IyX0u6IOZR/HDWUaW4Bf0v5CsVkvwtFvI0Ta985debGGKeNAES8EJvWs8wOm/8hzHYavz3u3uUbzOL+nPkjqBEao6JHnE6hZVu56P2YBy7vG8wwA1SpZ5hfg5Ux9kvdPXXUSgegvUIiiZ1iYbtIL+U7/erZ9T6TEFld3QM4hc5fjernNYGnXR5baJxsMybvewIKMj4WbfMt2oIau68FoASNPwBhR5MvYio6iSeQKaiWvrlOOPGRo+IqU7IEQrBYP9dpAbzxjtF5T2Z/UfjCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by DS0PR11MB8163.namprd11.prod.outlook.com (2603:10b6:8:165::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8835.29; Mon, 16 Jun
 2025 14:22:28 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%4]) with mapi id 15.20.8835.018; Mon, 16 Jun 2025
 14:22:28 +0000
Date: Mon, 16 Jun 2025 14:22:22 +0000
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <chris.p.wilson@intel.com>, <andi.shyti@linux.intel.com>,
 <krzysztof.niemiec@intel.com>, <krzysztof.karas@intel.com>
Subject: [PATCH] drm/i915: Add sanity check for relocation entry pointer in
 execbuffer
Message-ID: <lofb2i4actwlvfk6xbtihirrc34j3pb6xecvcl433a2xbm7zy6@akz3ko2bh2i5>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: DB3PR08CA0001.eurprd08.prod.outlook.com (2603:10a6:8::14)
 To MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|DS0PR11MB8163:EE_
X-MS-Office365-Filtering-Correlation-Id: 4b607e9a-1aa6-46f2-e568-08ddace1391c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eUlNd2FVeFZwUXdxUzhZSnVHSVovQitBT0NpVlNMQThaM1A0WUplaGR5Rnhz?=
 =?utf-8?B?TTRhVTY1cnpqWXZobGFUSHJHWFhwenY3OFJqMFRrbW5ieXBReGt3d2tqVVA1?=
 =?utf-8?B?Uyt3ZnZ0MlhrZzlIZEV0TzRrVGd0a05ic293S2k2L2QxQ2FQZ3M5cUl6UDVM?=
 =?utf-8?B?ZklUT2JRMVpad0lKOVBaRXcyMGgwN1d0dGZsc0V0elQxSDNxYWlQeGJPQWpO?=
 =?utf-8?B?bU5xcTRFcTIranFpSVRVOWhDbFpmRFBGUklnVjkrVzVQMDZpS3FSckc3UUx2?=
 =?utf-8?B?QzlQNlA5WFczd1VNQXdPbkwwT1V0R1dsL0tHODRnRmVHcy9XYlFlUUEzUHEw?=
 =?utf-8?B?OXJEMnhOR2xEQldtVm82Ulg0VHhBd1dmV2lna1MrcTdEOUFCVU9qVjJnR1hw?=
 =?utf-8?B?WlQxakhuMlJDT1hldXNpYlF1dU0wZ3cxcEVhRyt2ZkJ2a0YwS0pqb0hHOUhx?=
 =?utf-8?B?NzROcnVuTzFUTFJzdTlvb0FxbHQrWHdiT0ROeU94RHVrWlZYMjY5R2V4V2dJ?=
 =?utf-8?B?Q2pGNExBQ1Rlekk0RE96WUZXSVQrSWNtNGM3UzBEa3d0dVV0SzhZN3owaXJJ?=
 =?utf-8?B?M2M5VmRjekx5dTlUUG1OYTRYRU9uZDNuQ2FOSlI0a3dHamdGc05WNFZoTGpC?=
 =?utf-8?B?UUg3MnR1eDREcWNzbWFHM1Fmc2JCejhNbHlIaVc3L0NaMnBQUFpsVHFjK1hD?=
 =?utf-8?B?SVdCem1JSW9EVmtiTkppbmkvVkdhYW00eFVMWFcyT2l3UW4vZ3hMT0orejhP?=
 =?utf-8?B?S0NqamtTV2JxYVVEWGZ0bFM3UXJacnBHVW9RUkNXUk9SZWF1QjkxNHd4QXRs?=
 =?utf-8?B?Z0NCd2h4M1FOcFp6VWl0aU5wSEFOSW55Q2R3V3YwZGhqN1Y4dzVGYnVPc0Fh?=
 =?utf-8?B?SjI2Zml1Ny9vK09GZnkrRkg0Yi9hTkVBaDVlc3N5aDlXL0NHb2U1cm5pWFVE?=
 =?utf-8?B?dGZmcWZGd21OaDZ5b2t4RFJTWGJSQ0FYbFREUHNoSm0xSWNlN3NUM3ROWXZ3?=
 =?utf-8?B?QUNyeElRcXk0VzkvbE5TK09yY1dGek1MMlBuVXE1Y0ZNTXlOaUNqNXhnVk04?=
 =?utf-8?B?bk5yYS9YM2hkRnpscFM0SmtkRkpUOUo3aHRjTDI3dGUvWm8vWDNCMGRFOHF0?=
 =?utf-8?B?eGtGWllPODFtUHFkbFFEa1ZpSk1aQmhFKzlPZ0o5OVZkSlJwNkhDc1FZNGFi?=
 =?utf-8?B?dnJoOGt0b2daTzU5c01RQkxuUjA0U3BIMHlRTXhVRmNoSFVTMCtJaVQ3VEV2?=
 =?utf-8?B?ODhLQTBNdmczZXgvbTRGM1NHNFlVSFNZc2Z5ZlRQeDFkNVFRQTdvalJ4Rm53?=
 =?utf-8?B?ZDFldGwyMzI2V2VLNnpvOWNuMUJQUjVCU2M2by9icFp4OVBLNVNJTzltRUpR?=
 =?utf-8?B?ZHNEV2xaV25rM3pSLzcwSmUvT0U2Wmp0MVhFRWJOSnJUK05qL0lvV3Fic3FK?=
 =?utf-8?B?NldqMkgyd1R4alF1bHlhM05RM3BCdE9KQkgrNlM1Ym0yZEpRcDJzTzZpTEg2?=
 =?utf-8?B?eE00NE9LRFVmbmRKeVd2OEVhNVQ0TGhKRDRTWTZVSXJpSDlPZ1VyT25jS3FJ?=
 =?utf-8?B?UmFEcUJnL1pHczVPMDZGUWZFYUZwSXVjakhvWitKdmdDdlpwby9mWDZzTjlC?=
 =?utf-8?B?VjlqMzRoSzBIbzI3K2NlN1lrS2I2UC9jelBvUlVpWlRrb3E0TjdYc0lOZlpv?=
 =?utf-8?B?dDM0NTZ5bk1jYUZObTVOZ2p3TjgzR2J3OUZkMWoyRDRkeWZFQWNjbmFOU29X?=
 =?utf-8?B?SStEcWtoMWxxVDVVK3VEcENFTyt6WVFDVUM1Zy9Hc2RWbForVXNocE1JZDZi?=
 =?utf-8?Q?ubs9qjcJSsNK853xdytD+vnS9+DRkYoVagwT0=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WEdZWnNyV2p3bllJcUxwOTRFRGl6c21NdFlCTmZlSDJ4ZDF6MzVvMTdlQ2ZE?=
 =?utf-8?B?N094QStNaGhxTmhTSDRVa1Z0aWU2ZkVtSHVBK0grVHlnTVlodUpmRUVZM0Qv?=
 =?utf-8?B?ZlJuQ0NqRDRuNEpOR3l3d3AyNERFNmJjMERNQ2psakpxV3JTUWtBb1RQYitB?=
 =?utf-8?B?QUVkQmR5UHkyNlhJUDJmS0NSeTlxUkswZFVFQ2hMTHJ1b0ZXbkpRcitJb1Ax?=
 =?utf-8?B?WDFrTFYwYzMwUm5yeVZSY3d4RFlvblFpSW14NHRVbTQ4WlE0UkUyNkNhcGMr?=
 =?utf-8?B?RnMxSkVhSGZpTGJrUnJzWEpTRGc0R3lKRUYwSlVWM2dpOUxjbTNzcGpmY2Qx?=
 =?utf-8?B?Q0tXdXVpZGlaV1Z3WEFQNFVGaytTa1VZeEtmaFU4bUpZOHV1MlhoaVN4L25l?=
 =?utf-8?B?T0JucThiK0hpSnUvc21xVzVmd2RPSk9QSmh2NkhuZWNESm5takhMMzk5c3VO?=
 =?utf-8?B?eU5lRy9vdjJTYU1XVUtSb1FIa1JzWDJSMmZhVnN2QjRTYzZhTkhxMlFveVl2?=
 =?utf-8?B?NG1hRXB5VUxXSG1FR2Yxcno3YXowTVYyVGw3SkdnTTQrYUNaUmltZzNybHNC?=
 =?utf-8?B?SU1IWG5IM2Y1Nzg4WHJlVFdnaDZNWDZGK0FZTEFmM2VEVHRtOUJIT2NRaVJ3?=
 =?utf-8?B?d29uYmpCUkF5ZDdieEhzYjVRNDQvRUZwbWtwZEhpdDEwbGNXRWtNbnZ3UXNq?=
 =?utf-8?B?TFpXejVLMnZ5Q05OR01BU2o2b3ZXOC9PYUlXYlg2WlNXanZkcEZuWEdnaWRU?=
 =?utf-8?B?Y1hTYVhSeHdSeC8rNGtpWmYweHh2ckwwT3J0ZVZwaTExbm55RCsrL1I2MVY3?=
 =?utf-8?B?NnlHOHBzWGZGckNXemg5aWhpd2kwNlk1M3pLUCtJYkgxOGZSSTRIOXVtQTd5?=
 =?utf-8?B?S3BiT0orQWozdkpzbU9KOXQwVDRhTkFLbjE4cTdxNjFRRzcxVUpoQitWaEcx?=
 =?utf-8?B?blROQnZxeU1weE9qclk3RTNnRUdJS1h4dUJKQmhGUXVLK0YzT1Zma3RLYkpn?=
 =?utf-8?B?ejZ4R3NaNEVhbldRdjVXMmNLYnlHTUNtS3hYSThOV21mb3QxRzBtY2RETC82?=
 =?utf-8?B?SHdVZEpSTGhuU2VyK1lDdDFYbUxUZW5GRWNUMWRkV3h4VXg4WXFKcHJCVHJo?=
 =?utf-8?B?RHNtVEJ3RElSMFh5OVZ2QnFQMk9NOUo4S09GVzQreUM1bmhNNW9OS3hxZ2ZN?=
 =?utf-8?B?RTNhSk9tbGR4cU9XeGhGZC9EVnVxL2NlQ0Z6T2tSVG03alpGWEVnaUR0dHR4?=
 =?utf-8?B?Q2pWMHV6VjBoZmlheDhpL3pGUHgrN09VWU1PQ3F4Qml0MzQ5SzR3SXRud0VK?=
 =?utf-8?B?NDJIQWswZlFUWFVBL0VwNjNZUzN0U1NyUnF4SWw3TFFTT1R5R0VpcWkxeDUy?=
 =?utf-8?B?TlR1ZmlLRDc0dXpPRWJvS1ViYUtHZGI2UllkbU9vSTlYbWIyUlZLUThGV0Nj?=
 =?utf-8?B?M2hVQUIwWFYvOWV6ZXM1SjVDM2cvTWZEQlpUYXJHbUFmQ1Q3ZlZsaXYzMmpL?=
 =?utf-8?B?MFA3cjRyZ3pXdXFoYjVvRUdYeENrQUthZmFITDV5Q3ZBOFQ4ZGNmb2tJTzJ6?=
 =?utf-8?B?L2R5UStvSHFQZjlFbExxT1NscUw3ZlNwbWVyVmtKbnV2bVVUR0JlMkpvU3Jv?=
 =?utf-8?B?VFdsd0tadDdpeHJ2bk9DVVhnN3VCMmFpNlRVMWcySUF2TnNZVkhvb2diQUZN?=
 =?utf-8?B?bm5HSWxHdGhBdEFnc2dxRDd4R1RheFRkV2F3NmF3THgyL2FZaHlHNURHM2xj?=
 =?utf-8?B?Rk9FMDU2ZWFHRzlCRXE3WmFLbjcvYzZHRVhRRjBOdHlvb0hkc2lIMy9OMHhC?=
 =?utf-8?B?QStXc3lYNDFOd3hETEcvSVJFQkJCSk1iZkdxOUt1NFFxZlVaZjhGWXFaQ1pH?=
 =?utf-8?B?QzRXS2dvSE9mR0hRc2sxbWVGaEZRSVlmc0pyUzZkUWxuZFpJZTJiYVpUNDIy?=
 =?utf-8?B?NVY3ODhqaXBZcllGUjZKZ2Z6dzgyUjZPV0JFQ0h0VUpXT1R3YVY4SUpHNkNx?=
 =?utf-8?B?WVhOU2kxaFI4UnlKcXhxNFplMDQ0RllGejh5aFlMb0FxWkpNMys2TlJVYXIw?=
 =?utf-8?B?T1R2Z21udEdDaGlGWm8raUdieGh6Z01VSlR2R3ZtMzhTdWRXdXE4dzhlZEtN?=
 =?utf-8?B?WkhMb3l1c0t2SUczZzFlUzh2b29BbjQ0VjQvZmFseGhHay83ZkUrenM4WXky?=
 =?utf-8?B?ckE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b607e9a-1aa6-46f2-e568-08ddace1391c
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jun 2025 14:22:28.3814 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OgMlhL+OlAkSl/9Jvii6E6DSaQsZsoUeaE1yLWcbaGArdVFfSsQMK7WZb5fppHQSZEejZQGnyfXgFwks1aORl831GUsORHffHFkyLRhLCnQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8163
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

This patch adds a defensive check in `eb_relocate_entry()` to validate
the relocation entry pointer before dereferencing it. It ensures the
pointer is non-NULL and accessible from userspace using `access_ok()`.

This prevents potential kernel crashes caused by invalid or non-canonical
pointers passed from userspace.

If the pointer is invalid, an error is logged and the
function returns -EFAULT.

The failure was observed on a Tiger Lake system while running the IGT
test `igt@gem_exec_big@single`. An appropriate patch has also been
submitted to fix the issue on the IGT side.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/11713

Signed-off-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index ca7e9216934a..8056dea0e656 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -1427,6 +1427,12 @@ eb_relocate_entry(struct i915_execbuffer *eb,
 	struct eb_vma *target;
 	int err;
 
+	/* Sanity check for non-canonical or NULL pointer */
+	if (!reloc || !access_ok(reloc, sizeof(*reloc))) {
+		DRM_ERROR("Invalid relocation entry pointer: %p\n", reloc);
+		return -EFAULT;
+	}
+
 	/* we've already hold a reference to all valid objects */
 	target = eb_get_vma(eb, reloc->target_handle);
 	if (unlikely(!target))
-- 
2.34.1

