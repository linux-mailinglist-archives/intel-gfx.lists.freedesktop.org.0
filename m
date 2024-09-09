Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F309971018
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Sep 2024 09:47:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95ABE10E2FF;
	Mon,  9 Sep 2024 07:47:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jLVgVMHz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBD1C10E2FF
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Sep 2024 07:47:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725868032; x=1757404032;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3MfSZfqUFeQJvs/oMkecej5e+czrqbSSxThCVgl0OU8=;
 b=jLVgVMHzJheFXQR28MzfOh7hJ3erb8MQdMZ1XFnVfz+/k/8IHsaJD0vp
 1ZcszIyYo7pJICfFKeK9DUBYjnS4hhSCO4omYyHFBh5t4z3nKdMFrdQlS
 dQduz/PxvlNNf1sEeuWcqNb3ECDhxJNlZrm22nEYsswkKqqW1J4zffBE5
 4LRz2eH0njGVtfDy3MPdBlm6z3oUK1RoomyEdwuymbtIzoxcZk5AT8UyD
 5XwvAcqBMAGOk2Fc79UjyJBDSLBskfA6Z/5JGN/zSh1oayrWjC6uPZLX6
 LO5gh18zMobveQD60dI2cgWH5n6yp8qze2zxS14u7A/vd9R93TDIUwX1f Q==;
X-CSE-ConnectionGUID: ezuImxYOSUS7EGhluwHDFQ==
X-CSE-MsgGUID: 2UEVethrT9+G70IwQJXfxQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11189"; a="24419044"
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="24419044"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2024 00:47:11 -0700
X-CSE-ConnectionGUID: pTY2pI4bQX6+aksFsNxk1w==
X-CSE-MsgGUID: 20JDLjLXTTq0ReoVc9xokg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,213,1719903600"; d="scan'208";a="66887720"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Sep 2024 00:47:12 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Sep 2024 00:47:10 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Sep 2024 00:47:10 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Sep 2024 00:47:10 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jYbqaoK7cG+luWta4jyX8+BADWw/k/GcKc0A6djLQLpTwVKJClUzq6d4SmtOZt8VGfmuq6UYQkJlAVs8M3DgcixG72V+EoeS2WdVY09KROGTWLd3MMp90rZN/QEqgReCZPhcU2qUhA1RRj3Bi8SS7gZohR48XqVcPpfEWsH4yFCq7HHD1lDla2My62Ki+Gh4xliRGWP3e2lwd6qRCpcdOoUAtTcAVMCQEXsorvSuHdASzNT5/yZh1ETKJSpOtRDivqOEjnJfkM0tCwgiuyTcifXslV4hik0JrIEKJG+muyfMBDW2uHgQ7gXMoDNAZTCC1+8gzcJO1UfStB9UVoj1FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zwl8mRoxljjiiuYENYT79J0yPpVm/SseMGeCA5xtQm0=;
 b=N9BnibAZL26RjE/89nlTVmbdLDpD01cN2Do/gaDIjvX0Gc6uknhjGfYn4AcOQF28Jlz3mf5MsmZMN2AY7q8CnTZbysp+SzWgEvqLfYigq1oXtB+wNZlP3LouQeD5tA9jZ2dlgxD1Pf/HBG0EtIoOe4pEFQAHQ9ZdkIcPGqo08cYnxvHEiA/5QIUPewJi9SGxWmJlYfw7oahSrklxOq/fMp0TcxY9sCctGAx0Sy2KaahlrkyftkzB1d/Bxm1oxqCAW5sbcqlY6UjZ7c1LKN+qDPaN+EuR3zP6MBInhs1WEr25paLLBzb9f1Z02Ugf8hO4mrwGMICr82XFkQc624y4/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6554.namprd11.prod.outlook.com (2603:10b6:510:1a8::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7918.23; Mon, 9 Sep
 2024 07:47:08 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.7918.024; Mon, 9 Sep 2024
 07:47:08 +0000
Message-ID: <dca1c23f-10ff-414c-a0cb-ff3d78a6f963@intel.com>
Date: Mon, 9 Sep 2024 13:17:00 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 05/14] drm/i915: Add some essential functionality for
 joiners
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jani.saarinen@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-6-ankit.k.nautiyal@intel.com>
 <ZtseuOqSAGGamFb1@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <ZtseuOqSAGGamFb1@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0048.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6554:EE_
X-MS-Office365-Filtering-Correlation-Id: a928fd0c-72a1-4cc3-e0cf-08dcd0a39b21
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NEsxM3FlMDMxWDk2Nmo1c1V6Rmw5eWxNTU4rcklrZll4S0FZU0NyOXJ2dTIv?=
 =?utf-8?B?dm9lOUlBZGdRZ3pzZmFtOXZzNkVmY05DOHFQTXRNcmNDZDhmeEpaUTFYZ0Yw?=
 =?utf-8?B?TWtBNWpMR2w3U0NBNGlJZDJ4enVhcCtxc3g4MUtIZkpPNW1jTmpabnNwSHpJ?=
 =?utf-8?B?bmkzbm9BN2MvQy9tZUpNMi82WWdobGhZMldjekhJYXVwSHAyTnMwU3ZmdG9J?=
 =?utf-8?B?KzRaM2ltZEoxM1RNVEdlVUhUWW9jUVJaWktnZzBFcFBSM3RreU9UZUZXRW90?=
 =?utf-8?B?cTRkNG11c3RwWm1kMG5YR2hBQWQ5SStvZGszZHo2aVVaUVNwbFhPZnVCZGxQ?=
 =?utf-8?B?cEhoeUhXVmZhQjlqNEhrNTRVSlFDRWJDa3BRT29MMG9hTlRZcE1VbVRwUndG?=
 =?utf-8?B?bEpWMkFVa1QxZkN0VzFMVmpyT0hNOCtocFlmZUwySURDTzBJNFBxcHJVSXdi?=
 =?utf-8?B?ZGI0SHNDbU5NZmlzbmRxRms0UGFXRjVKUkE3bWhGNU0yV2tjWnFzNkFXL2NV?=
 =?utf-8?B?WFZmbTVGL3BkOXFoejJFV2JrVGlnVTNaVW5jajNvSHNCQVNYNCtSVXdpOVlK?=
 =?utf-8?B?SkhBTC9rR0pQQlk3MXJ0ZE1XcGo1bXg3TTEwK0tJVUo5QmlUMVJOSmRSSito?=
 =?utf-8?B?WjRJSG5rOXl3MXZ6cG5Ja2dpQUJOMGlXQTNsS1NkSTFtSVVQUjd3c1dMWVZh?=
 =?utf-8?B?MkpYZk9mWWtQSUpJdDZOVW9WOVVkY0xZVXV6WTd2V2V5R1RZQm1YOFBtS1JU?=
 =?utf-8?B?cDYxdDdaQm5hTW43MndQZlE4OXFrUjNZdkhYb200em45d1FqaXVpTVRmaHhp?=
 =?utf-8?B?ZUYycjdReVNsSnMxNWIyMFdCOEErQWg0QUFyY3hzUGw2QkxHbHFSMGNlS1JW?=
 =?utf-8?B?bHk0UlBPZVJRV3JnVk8wUzRKL0RnTXNuZkl3bmhRNUxPVjF3VFUrZmIzOXhU?=
 =?utf-8?B?a1FZNTl1ZS9PMkFEa2Iwa2Q2ekpWK1NnZHRNVUFzYVg2YXduY2s2V2hpSEJN?=
 =?utf-8?B?T1g0MFU0ckI4UzhkL2ZQclRDSU9EdGREaC9iR1ZvdHJLWlVDN2p1b0MxU1Uz?=
 =?utf-8?B?RnhqWW8vdnE3dEM0cTl0QjA5aC92alYxWXJVZldobUJWVVZVQVIrSVdIcVFm?=
 =?utf-8?B?TFBWN2lEYTlnYXlBYXJDMzhsbXI5SjZ0YTUvZ2NEVWw3aUNVT2dnMVdCNTJh?=
 =?utf-8?B?dXZWcXRBSTcxZ05aTytlK202K2RMSk9kTW9CdHRjc2FKeklvenFjemswYStz?=
 =?utf-8?B?TXB4N1lmbVRxRzdRaUZ1S1BnVE9NbGJDNjFOWlZPL2dZTUtrMEQ2L0NQdjBU?=
 =?utf-8?B?aUhsbGYrMTl1QjhUOUVhUDI0YmNIYkRwMW9qUUtJbXliV25lVVAxU3Zyb29R?=
 =?utf-8?B?UGl6YjhNdGNneXNYYlZEY202MllyRWxtL0RWcGN2RkpTYnVUNlVZbHFmTUVG?=
 =?utf-8?B?bGdlZ2FKbTdQOGNFUmRwNVAyTFVIcTdSekd6cUNPaGZtRzFKZWZTS2RuTDVF?=
 =?utf-8?B?Zjh0N3MyZEZEVkF3cnppU1Q1QU80dmVEaGV6aFdFMEkzaWFXK3JyOVRYNEUy?=
 =?utf-8?B?TWFsRW1KOHpIeFFadVZUcnNUTVVGVkE1Q3VpeDIrVkgxbGl0ZkFFd3NOa3hH?=
 =?utf-8?B?Z1hvc1lBamNrZS9ReFpCS3U1Wlk2OWFRbTJsdlI5akZZcGRhTERscEwrM3RQ?=
 =?utf-8?B?VitXRnJtNkl4Q0JtSlBKNkFxM3hMR21MWmtUTEVkaHBnSUhIQlFYcnhodlo4?=
 =?utf-8?B?UHg3UHQwZmxxNWY4c1hpSjliSG9YY2lmcHZWaXY2c2lJZTYrVGovOXdveDlQ?=
 =?utf-8?B?dDNRc0ZPREFiZXBRWldwdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TkxESlBWejFzM082MTY0dUluNm1lZkVvbWY4VndrbDR6anJiQkFtKzRnajlW?=
 =?utf-8?B?aWJJZ0pyQm1IWGxSRGEvdUxzbzZWc1V0bHVEK0xPUy9EdnVNdWFhc0o2WERT?=
 =?utf-8?B?YXNKQU4xTnAzSTVDamc5ZVlLWEZ2MGtRZ3pleEV4MVFzQ0ZPaXZxZTBtZkh6?=
 =?utf-8?B?WHFXVGpaVjJpaGJDTzVsVWtETGkvNnhiRE93Y0JVUzlQK3l3bDNia1JVRW5V?=
 =?utf-8?B?ME5rTm9rUmdMbjFzZWpPWHAwWE5rcGowRWhJL1hxYnFSMHhJaXZmOE8yc1g4?=
 =?utf-8?B?TUtoU3hLQjZVNFI4aFlyUkJtU3pFOUxTL2w5UE9Sa3NxWDBJeHUvU3JrbUU0?=
 =?utf-8?B?WWpZUVl4TllWZjU2SFVpQ0ppb2d4VUFCNW9GMTNxdjUwUmNZOS85WjlLNmJE?=
 =?utf-8?B?dExyMEtScG9jUjdUNThGeVdaUHArU0NPQi9wY3JqREZGMHdvSVFPMlBPbUdI?=
 =?utf-8?B?NGFUQXFQYzV5MFRpaEVGM2twQ0ptTm5yYmxPMGsxSG5McVBhcTBmUUNLQ3By?=
 =?utf-8?B?Z29nRlNKc2ZsamFWTzFibzR1RjZIWCtUVmNQMHNYSUdLUDVmeDdQckJ2dFgw?=
 =?utf-8?B?NWpXaXhnL0Y1K0pqQTkwaEt5MjJJL29nOHhhSy9CS1B1Ti9TdFF5Y1A0bVQv?=
 =?utf-8?B?VkhZSFNIVmlDajRmSVNwbnBNMDdhWDkzcEEzeUZjd2xXL2Zqc0JhdDE2WHFG?=
 =?utf-8?B?ZEhPY3Q1ZDJNZ2wydlZpTFcwYWN1dmZQcFo5N2M1S010cnZDTlhObVJtS3R6?=
 =?utf-8?B?T3RkYVhXamRGYVZJQUdsK0x2MHVCb1F4V0pBVzg3blgza2Z0TlhUWHhoempt?=
 =?utf-8?B?OGZWbjhHeWhManFxTEZYc3c4RVY3cUg3ZUhiZnNVYlNPREhmYnNmNzJRQmdT?=
 =?utf-8?B?cGJsZzJLU2dSNDExcVM1SHBNZi8ybHJvK2h1RlNWNjVmUFkzUjBya3FZbjcy?=
 =?utf-8?B?QW9YOHZ3VzFWUGJhSDAvdXJSeDBVNXJieFg3SHRnVDBuQ2c4K0srWVVJVlV0?=
 =?utf-8?B?L0hpNUluNGZ6Qi96VjlORWU3eVY4YkpuQThKbkJ6M2JOZVNmeFRvYlVOZFlP?=
 =?utf-8?B?aGd2UkMwRTNyRmdkQzcwdkg2S0hmQ1YxWkJIaGI5K2J3bzR4Nk5YVmhmaVRV?=
 =?utf-8?B?d1pqc3k2UjNZR1VlTzRIVlZ5QzFpdzRrNUFHdjhHdENGODVjeEZ0QWE3NUdW?=
 =?utf-8?B?a0lYWnNZSnRBR2VUcm50U3JhTEF2ZVhLL0xWaW5qYWE3VVRuRFVNVWJQYXhi?=
 =?utf-8?B?dGpoQUJCRzlhOEhSWCtPbUh3WmlPZmEyUnk3aUxEbUZJTnRSbTdtSnFQRElr?=
 =?utf-8?B?MEZPeFJJZjhIVGx0ZTNpVHBIWTcwMzkzb3BOZUJUa21TUnFWNWJQdW1uM3NF?=
 =?utf-8?B?OFllNEdnNVFhYnZEN05qZGQ4TGZqTC9SYjYzQXJEZ2tZQzdJSVRLRmMrT0M5?=
 =?utf-8?B?KzFpZnhSbm5Jcm5ra2NITk9KSlh5SlZNMklwTlh1anR4RndsTnhjR0tZdEZK?=
 =?utf-8?B?eFFjQlozTEVsU3MvSUNsRnFaTkZ2WSsyVDJ2d2RXOU1veC9xWitHL3ZCYjFs?=
 =?utf-8?B?ZjVsTkc0M2gxdlZpN1kyRUNScExvdkRvd0lCU2srYVVOdFBKcDdYZCtXakR1?=
 =?utf-8?B?RXVEdFEwMmExVnRSZHU3TEJ3V09TY3Q0ZDRWT0NBQ3k3T3FzUCszWG9lMmM4?=
 =?utf-8?B?akowekZkTlVMV281WlpKc0JXVWN4aGY5Y21ETzRic01ISm9PZFNpdElMZUo3?=
 =?utf-8?B?dXNNL0hjYWs0WjZ6UjNjaGJTQ09ZQ0hhSWpyVW95QjBTejdROHpDanZwZU90?=
 =?utf-8?B?Y0w3NjkwT1BjeEd0TXpka0NaYW5mVm1RY25tRFFkLytlU2pmdHZWa3MzUlVa?=
 =?utf-8?B?dmJMTnkxU3lsWEwzUDdVSGJHVm1uaWQ3S0ZtcGlFdnFsN2l3MTdZQmx1bldO?=
 =?utf-8?B?QXIyekF3YUxTb2lLeXVXazkwRFFOSHV1YVl6NG4zeUd2VVJVM2dWYjBnMUE3?=
 =?utf-8?B?dHhQR1JPYVNzeVRneFI3eWk2THNNKzluaVduYTZnNk1ZY0Vvb1Q1WUVGQVNx?=
 =?utf-8?B?VDk4c0ZHWHNQODl6V2FYVmg2bGszYzRsZFVrUHhDdWRFeEdMSTlQR2c1eUtH?=
 =?utf-8?B?dU1EZkVwcGlUS1k3WVp6QkVBMUdFWWU5RHlBOGhONkxaZjY4VXdMSVlqTXpC?=
 =?utf-8?B?M0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a928fd0c-72a1-4cc3-e0cf-08dcd0a39b21
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Sep 2024 07:47:08.2644 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sMhn/WlypiEhc52pFEUy7TQiZ2QQaFBSCvwJgSJI6O9iv4uCFC5o0wVDpjeQ76Lx1fq1mpde7unRGr0IF7C5j2RMMHcYiZ4EM1V8dk0SvqI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6554
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


On 9/6/2024 8:54 PM, Ville Syrjälä wrote:
> On Fri, Sep 06, 2024 at 06:27:58PM +0530, Ankit Nautiyal wrote:
>> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>>
>> In most of the cases we now try to avoid mentioning things like
>> "bigjoiner" or "ultrajoiner" trying to unify the API and refer
>> mostly to all this functionality as "joiner".
>> In majority cases that should be way to go.
>> However in some cases we still need to distinguish between
>> bigjoiner primaries and secondaries(such as DSC register programming).
>>
>> Create correspondent helper functions and start using them,
>> in order be prepared for adding ultrajoiner functionality.
>>
>> v2: Fixed checkpatch warnings (Ankit)
>> v3: Introduce ultrajoiner helpers in next patch.
>>
>> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   .../gpu/drm/i915/display/intel_atomic_plane.c |  2 +-
>>   drivers/gpu/drm/i915/display/intel_display.c  | 52 +++++++++++++++++--
>>   drivers/gpu/drm/i915/display/intel_display.h  |  6 ++-
>>   .../drm/i915/display/intel_modeset_verify.c   |  2 +-
>>   drivers/gpu/drm/i915/display/intel_vdsc.c     |  4 +-
>>   5 files changed, 56 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_atomic_plane.c b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> index 928d985f9985..83ed018b1735 100644
>> --- a/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> +++ b/drivers/gpu/drm/i915/display/intel_atomic_plane.c
>> @@ -725,7 +725,7 @@ int intel_plane_atomic_check(struct intel_atomic_state *state,
>>   
>>   	if (new_crtc_state && intel_crtc_is_joiner_secondary(new_crtc_state)) {
>>   		struct intel_crtc *primary_crtc =
>> -			intel_primary_crtc(new_crtc_state);
>> +			intel_joiner_primary_crtc(new_crtc_state);
>>   		struct intel_plane *primary_crtc_plane =
>>   			intel_crtc_get_plane(primary_crtc, plane->id);
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 257e479310c2..3278debf47cc 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -254,6 +254,50 @@ static enum pipe joiner_primary_pipe(const struct intel_crtc_state *crtc_state)
>>   	return ffs(crtc_state->joiner_pipes) - 1;
>>   }
>>   
>> +static bool intel_is_joiner(const struct intel_crtc_state *crtc_state)
>> +{
>> +	return intel_joiner_num_pipes(crtc_state) > 1;
>> +}
>> +
>> +static u8 bigjoiner_primary_pipes(const struct intel_crtc_state *crtc_state)
>> +{
>> +	int lsb = ffs(crtc_state->joiner_pipes) - 1;
>> +	int msb = fls(crtc_state->joiner_pipes) - 1;
>> +	int i;
>> +	u8 bigjoiner_primary_mask = 0;
>> +
>> +	for (i = lsb; i < msb; i += 4) {
>> +		/*
>> +		 * Regardless of how joiner_pipes mask is set, currently
>> +		 * we always assume, that primary pipe bit goes before secondary
>> +		 * pipe bit. So in each set of 2 bits, least significant bit is
>> +		 * bigjoiner primary pipe and most significant bit is secondary pipe.
>> +		 */
>> +		bigjoiner_primary_mask |=
>> +			((BIT(0) | BIT(2)) << i) & crtc_state->joiner_pipes;
>> +	}
>> +
>> +	return bigjoiner_primary_mask;
> This seems needlessly complicated.
>
> Something like this?
>
> return crtc_state->joiner_pipes & (0b01010101 << joiner_primary_pipe(crtc_state))

Yeah makes sense, will remove the loop and use this.


>
>> +}
>> +
>> +bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>> +
>> +	if (!intel_is_joiner(crtc_state))
>> +		return false;
>> +
>> +	return BIT(crtc->pipe) & bigjoiner_primary_pipes(crtc_state);
>> +}
>> +
>> +bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state)
>> +{
>> +	if (!intel_is_joiner(crtc_state))
>> +		return false;
>> +
>> +	return !intel_crtc_is_bigjoiner_primary(crtc_state);
>> +}
>> +
>>   u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state)
>>   {
>>   	if (crtc_state->joiner_pipes)
>> @@ -290,7 +334,7 @@ u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state)
>>   	return BIT(crtc->pipe) | crtc_state->joiner_pipes;
>>   }
>>   
>> -struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state)
>> +struct intel_crtc *intel_joiner_primary_crtc(const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>>   
>> @@ -810,7 +854,7 @@ intel_get_crtc_new_encoder(const struct intel_atomic_state *state,
>>   	int num_encoders = 0;
>>   	int i;
>>   
>> -	primary_crtc = intel_primary_crtc(crtc_state);
>> +	primary_crtc = intel_joiner_primary_crtc(crtc_state);
> That rename seems unrelated to the rest of the patch.

I can have it in separate patch.


Regards,

Ankit


>
>>   
>>   	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
>>   		if (connector_state->crtc != &primary_crtc->base)
>> @@ -4530,7 +4574,7 @@ copy_joiner_crtc_state_nomodeset(struct intel_atomic_state *state,
>>   {
>>   	struct intel_crtc_state *secondary_crtc_state =
>>   		intel_atomic_get_new_crtc_state(state, secondary_crtc);
>> -	struct intel_crtc *primary_crtc = intel_primary_crtc(secondary_crtc_state);
>> +	struct intel_crtc *primary_crtc = intel_joiner_primary_crtc(secondary_crtc_state);
>>   	const struct intel_crtc_state *primary_crtc_state =
>>   		intel_atomic_get_new_crtc_state(state, primary_crtc);
>>   
>> @@ -4550,7 +4594,7 @@ copy_joiner_crtc_state_modeset(struct intel_atomic_state *state,
>>   {
>>   	struct intel_crtc_state *secondary_crtc_state =
>>   		intel_atomic_get_new_crtc_state(state, secondary_crtc);
>> -	struct intel_crtc *primary_crtc = intel_primary_crtc(secondary_crtc_state);
>> +	struct intel_crtc *primary_crtc = intel_joiner_primary_crtc(secondary_crtc_state);
>>   	const struct intel_crtc_state *primary_crtc_state =
>>   		intel_atomic_get_new_crtc_state(state, primary_crtc);
>>   	struct intel_crtc_state *saved_state;
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
>> index c0f8bb7e5095..840a98947de8 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>> @@ -424,10 +424,12 @@ enum phy intel_port_to_phy(struct drm_i915_private *i915, enum port port);
>>   bool is_trans_port_sync_mode(const struct intel_crtc_state *state);
>>   bool is_trans_port_sync_master(const struct intel_crtc_state *state);
>>   u8 intel_crtc_joined_pipe_mask(const struct intel_crtc_state *crtc_state);
>> -bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
>>   bool intel_crtc_is_joiner_primary(const struct intel_crtc_state *crtc_state);
>> +bool intel_crtc_is_joiner_secondary(const struct intel_crtc_state *crtc_state);
>> +bool intel_crtc_is_bigjoiner_primary(const struct intel_crtc_state *crtc_state);
>> +bool intel_crtc_is_bigjoiner_secondary(const struct intel_crtc_state *crtc_state);
>>   u8 intel_crtc_joiner_secondary_pipes(const struct intel_crtc_state *crtc_state);
>> -struct intel_crtc *intel_primary_crtc(const struct intel_crtc_state *crtc_state);
>> +struct intel_crtc *intel_joiner_primary_crtc(const struct intel_crtc_state *crtc_state);
>>   bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state);
>>   bool intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>   			       const struct intel_crtc_state *pipe_config,
>> diff --git a/drivers/gpu/drm/i915/display/intel_modeset_verify.c b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
>> index 3491db5cad31..b53b810c6470 100644
>> --- a/drivers/gpu/drm/i915/display/intel_modeset_verify.c
>> +++ b/drivers/gpu/drm/i915/display/intel_modeset_verify.c
>> @@ -193,7 +193,7 @@ verify_crtc_state(struct intel_atomic_state *state,
>>   			"transitional active state does not match atomic hw state (expected %i, found %i)\n",
>>   			sw_crtc_state->hw.active, crtc->active);
>>   
>> -	primary_crtc = intel_primary_crtc(sw_crtc_state);
>> +	primary_crtc = intel_joiner_primary_crtc(sw_crtc_state);
>>   
>>   	for_each_encoder_on_crtc(dev, &primary_crtc->base, encoder) {
>>   		enum pipe pipe;
>> diff --git a/drivers/gpu/drm/i915/display/intel_vdsc.c b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> index 2e849b015e74..8158e3702ed5 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vdsc.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vdsc.c
>> @@ -742,7 +742,7 @@ void intel_uncompressed_joiner_enable(const struct intel_crtc_state *crtc_state)
>>   	u32 dss_ctl1_val = 0;
>>   
>>   	if (crtc_state->joiner_pipes && !crtc_state->dsc.compression_enable) {
>> -		if (intel_crtc_is_joiner_secondary(crtc_state))
>> +		if (intel_crtc_is_bigjoiner_secondary(crtc_state))
>>   			dss_ctl1_val |= UNCOMPRESSED_JOINER_SECONDARY;
>>   		else
>>   			dss_ctl1_val |= UNCOMPRESSED_JOINER_PRIMARY;
>> @@ -771,7 +771,7 @@ void intel_dsc_enable(const struct intel_crtc_state *crtc_state)
>>   	}
>>   	if (crtc_state->joiner_pipes) {
>>   		dss_ctl1_val |= BIG_JOINER_ENABLE;
>> -		if (!intel_crtc_is_joiner_secondary(crtc_state))
>> +		if (intel_crtc_is_bigjoiner_primary(crtc_state))
>>   			dss_ctl1_val |= PRIMARY_BIG_JOINER_ENABLE;
>>   	}
>>   	intel_de_write(dev_priv, dss_ctl1_reg(crtc, crtc_state->cpu_transcoder), dss_ctl1_val);
>> -- 
>> 2.45.2
