Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 08B0DA12881
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jan 2025 17:19:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 62DFB10E761;
	Wed, 15 Jan 2025 16:19:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mYyqgIcP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9666B10E08A;
 Wed, 15 Jan 2025 16:19:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736957943; x=1768493943;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=AWx9YiVlD0p3GBU5MUyVo0HEAzRaf6yidFnbtLuN848=;
 b=mYyqgIcPa0k9sDOADkirHeDQc+fk1BT8WQYcGCoR2Mz2+zFzfhHPGkoB
 SmqT5vbBvUPYaR90yQmWzopzfIdCyZuVD/QfAh1AFdvDdPYKlR0YOwmz7
 /AbLNCHIRnqXXRVj6f11JRkzj/rgzMhYYouJPplbTT7E7CbGjp9vGCZ3s
 KcLUc4t4PJrdOEHDzJblfULZ9yJktu5smt931KjDGPQSkqDgmUgla/yq5
 wgpARJnq3Yy8ugQ73qRoz//4ADNinw9BEG4AU9qVJSu3RGa5lONRhMTE1
 CJnoZF3wNalDiHqgvs1wwDN0qPphiFVjmJdF364KYBoe8jhpnTr2xxabU Q==;
X-CSE-ConnectionGUID: F6HJWz8UQVSg+ekbdymm5w==
X-CSE-MsgGUID: //Ncoa0ORYiBBgvq3kqcTA==
X-IronPort-AV: E=McAfee;i="6700,10204,11316"; a="36515345"
X-IronPort-AV: E=Sophos;i="6.13,206,1732608000"; d="scan'208";a="36515345"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jan 2025 08:19:02 -0800
X-CSE-ConnectionGUID: c7a65HdhTlK9HZ0nASHA1g==
X-CSE-MsgGUID: o98oIVNuRWKh2uSW/qpEoQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="110170897"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 15 Jan 2025 08:19:03 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 15 Jan 2025 08:19:01 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 15 Jan 2025 08:19:01 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 15 Jan 2025 08:18:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=zS2AFnXxVtiwoJa8uCMi346zS1bFep7UY/B5Ay78Ftkm2jmSFmiEB+LHQICsKarO7xngmsfyoPZ/mpHs4YLbhQ6z4r2PHv1zstLauswNxfMxW0NTqnnOlS9UkTrlFLM/LyZvBrcSQjMQCKe1sD0Dq98m5GxVsb1ia5b5nJp7F+PnrjxKjNFVdGXbZ7XQTtZBIfYT4m4FKqgUlI9t4tfEuTxiJ6GEaNSw0E4l2Qbj6bXA+c6CVb1ZHcVZENcoXKMgJiDoI99/OcV9Wwj6eNNHRtQTA2DuEqoHpEkXRAuYQUVz3wAbR21I/och2fvSOweWaL3pw/7CsE7dlJ+neeTe3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=I8rf5FJPVxyt3IjukDjFZ9fIdh/qXannQLSNDvfQCZc=;
 b=XxCLfjOiIaRqIAr7Vjd7zW1Ljqm+T1ah67W5jgQtBaJM3STvwuVkpxY01b2sLzHevr3SETBsAKvffcplUiQvfDls1stM6j5PymCiZjcauqryqvS5OZnUoLZ8PuwuH98h35eZxIUP2zLk76KsHPkjxBpsi3BrJm2CpgPySN19uHsw4/Af2QIWj4NU4Z8Fb60cqqzokm42XMsk8/MIOqjfzjIX8cYhgUPDdoloiUv7FVg5OyaNAn84+unqYQ+gSdKqwJ3x/ZY4K+n2QWv6AVkqSdy7Vk1LZWzMYFHLaXUdOZ9mmf725kYHqSCjfjd+YjMw25i7MKBV7E+D1fnn3KGN1A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SA1PR11MB8327.namprd11.prod.outlook.com (2603:10b6:806:378::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.12; Wed, 15 Jan
 2025 16:18:54 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%4]) with mapi id 15.20.8335.017; Wed, 15 Jan 2025
 16:18:54 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z4fPO_hBt9tr-gY1@intel.com>
References: <20250113204815.114019-1-gustavo.sousa@intel.com>
 <87msfth14h.fsf@intel.com> <173687228001.2823.13065824358956469360@intel.com>
 <Z4afvb-BsavfTC54@intel.com>
 <173694505428.3159.15238384116175670777@intel.com>
 <Z4fPO_hBt9tr-gY1@intel.com>
Subject: Re: [PATCH v5] drm/i915/cmtg: Disable the CMTG
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Wed, 15 Jan 2025 13:18:48 -0300
Message-ID: <173695792830.3159.388878827702803545@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0361.namprd04.prod.outlook.com
 (2603:10b6:303:81::6) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SA1PR11MB8327:EE_
X-MS-Office365-Filtering-Correlation-Id: 0059e334-59d4-4aa1-25a7-08dd35804df7
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TWgyT0RTME02cmlWQjdWMzlZODQ5Y1RYSVA1RzA1Z1U3QjZWM29palZFeXM3?=
 =?utf-8?B?NmtRUHlDSzgxY3V1dnFzVVFsd1hOcFNwOTRkRmdxMFRRUSswVGtSa3FmV2Jw?=
 =?utf-8?B?T0lMaG9ZUzM1NVpOL0I4aGhFR0JreEhpQXV3SnZwdG1XZmNickNhT2lzZy81?=
 =?utf-8?B?a3l4QkpDOHp0SXdhbEdsYWVzTDZZNEQyeFFvcm1jZnU5NDdwZHg5U2FIYmpC?=
 =?utf-8?B?cXRZODJEcEpRRzlvbHNvQjRVQkxqTndlSXZKYmZ1NTloWU9nQlFmeGd6dmUy?=
 =?utf-8?B?ZWJRQjdZcllRMXEwVHRaSktyQVBSOHhTMTg2TGhINjQyRXdiaVBaYldqRU5O?=
 =?utf-8?B?V3B5UlpiaEJJSFYvQ1Mzays4WXNOK2ZhZVlyaDBJQUUvK0JoSHo0bVVtNGxr?=
 =?utf-8?B?NlBRVnVONUhyOFFDZEpSdTZVRGdYMlRPNlVjNU5JU05iRUdRY01OSkZaNE1Z?=
 =?utf-8?B?U1VMRHJ0LzgvY1RJRUw5VGNGZEljaG55WW1haFVLVm0rQ3FWemhZUElodEFR?=
 =?utf-8?B?ZXFPVkFaK01sVVlSdkxzOWpDelgvem9vbEI0OUowMnR1RFNNSjc4RDVmMVZI?=
 =?utf-8?B?NXNaS3I1RlN4cnR6VURhaVQ1RXNYZm1xaTNZamkyTzN1UzFqREF0bjBWcTVG?=
 =?utf-8?B?aGp6a2hYWDI3ZzFGejlvbjJwQXoveVlvQ0g3Vkg4WXd2bDk0alpQRnArZ29a?=
 =?utf-8?B?QWpzd25SbVN4YktwMFdsS3BEbUh1Q043ZXFjbmlXOHdnczhDRjBFMjFHeWxX?=
 =?utf-8?B?RUt1alRzQnhZL3d2RE9yQVMxK3NVK3dRWGZDYXNEWDEybzVPTXExZnVrcHdl?=
 =?utf-8?B?QUUyNmd4UERzYjJHNEUxQ3VodlpLTEU4eXNaclZ0cGtUS2ZTSW5GNUhLaXlM?=
 =?utf-8?B?bTVEOG5MVUZ4aVAwOTdZL243VzA4djNydUJSSy82ZU41Q1lpL0NOT2IrMksx?=
 =?utf-8?B?Q1VLSC9tdVcxWGpJTU5FU3BaVSsrNERNaXp6Tm5sY09FMi9xR3ZGMVZ2WGR4?=
 =?utf-8?B?dm9xYnVwWGJWMWUvSytBSTZ6YXZCVlp0MDk5SVByWlM4b2N2VDJ4WTZ5WS9C?=
 =?utf-8?B?L0FHdWRhOXJmdkY0T2JqUTQxREFHWDZkbFZzcnI5K0gxVVhHNm1FVjVsK0JX?=
 =?utf-8?B?M2FDcE5nWWJ1S3A5aysvdzRnSzlEdXYvR3lEQVh2TFdocHpydWZ4cFNkcHIr?=
 =?utf-8?B?TjFLRnRYSnc0RElCMDZwajdFR2MrOHhFcXNlZFZjZytqblY2TEROYzZDVThu?=
 =?utf-8?B?ZkZmS01uYmtwdU9KVUpGSWtPaGpUbU52TFpXb1N3K0ppME1qeGJaUjhkSUF4?=
 =?utf-8?B?c2g1WWNUcnh0b01LT0hhL2tnaDRTRVQycFFZL0w4L2hjdjJRRXBreHRJWVgx?=
 =?utf-8?B?c2NKcHRRQ2wvMDdxV2ZMT0JEMEhXbTZ6ZHZvUDFQVTFHVThWekF3SnRhalEx?=
 =?utf-8?B?c3NZRU5uNXVZaUluVUc5Yk90NU1ualZ3eDJKY0QrbDBFMHRBZThKV3dLZVhT?=
 =?utf-8?B?OEtiVjlhUTl2Z2M1VFc3RG41aVVvM1JRNCtLcSsrYVNKeUo2QzZjNUJ4UlRG?=
 =?utf-8?B?bjdrblc5OCtKQ1lONXlSSmgrUzJDVC9iYVhBQ2VYUG1KL0VEWlBEcVlhcHBS?=
 =?utf-8?B?QjRTQ3B0c0haUEt6bWNCd3laUGwvYTdGRjZCV21JbVY0bzAyQ0ppMlhaV3VQ?=
 =?utf-8?B?dC9qbVJPQW10Mmg3K2ViamVhMmYrbVVnNVIvVHlIakNSeWtiVEloaGVMTHBM?=
 =?utf-8?B?SXNuOSs4U1JMRk0yb1MySWRLREI1SWRrNGtmdjB4cFRKdytVRUdURUJqTVd4?=
 =?utf-8?B?d2JPQ1ExZC9WdXdydVl4N0Z1Mmw5bXZoOE5yYnBkNEVydE1OTHYxbE0zTllp?=
 =?utf-8?Q?z0yO8matBeECc?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R2xLUFAyY0Rlek10MXpVMDF6dWRCc2ZGSEZyOTkwV0JxTDZGREpBaUVndkRL?=
 =?utf-8?B?UXptNFBzcS9UZGhkZ1Y1QUpkZEZZSDZ6d1VkTThVVUVkZlRmRDYxOXR3NStC?=
 =?utf-8?B?RTBBbjNMOU5kUUVTdTZ5WXgwYjFxSkxaU3lTWlBiM0IwWEFwUUhnMXM3RTRj?=
 =?utf-8?B?ZG5WaHBsdkZoWXlyMGRkRFlGdmdpanBWV0t1TS91eTkxK3I2NW9nYkFybzZt?=
 =?utf-8?B?MXNJdzVRNkxQaElnRGZwSEcvcGpZa1daQzlUK0VvNlY2eDdESXdqL3RjUXBx?=
 =?utf-8?B?LzlCUzF1MnY1Z045Z3Q0ZkJ4MVZuQmhzZ0dKWU9lSUFMdHNWQTZ2c2VDRmRx?=
 =?utf-8?B?N25zZmFmVXVmQUF4UkJ0Y09uVmxiTmZoa0JCbFkrYnluWm9HdkZuS3NlSTNm?=
 =?utf-8?B?WnBhVWk2djVldURFalhCVmUxK1BJckc4VUxJWWk3KzFHY3UraXVsZys5cFl5?=
 =?utf-8?B?bkNzZ2V1empnWUNXZUljWnBGYUFmZ0NHYmFnSFNlTU9hUVBuQWo1UFRXTVJu?=
 =?utf-8?B?Sll0YWZ5WUk1T3JHUCtPWG9wOVBZRkRkdFNIRWF2eWFNeVJyZ24zQnBwZEhL?=
 =?utf-8?B?L3hTVUJDa3F4K0M3UVl6ZEhSR204SnoxZC9SbjVzeFFCaHJBbGI3bmdBSWpY?=
 =?utf-8?B?d3BOZlhKYjJieVZYV1hEeHRPSllHUVRYZkFxSURsbnpWM3krVmFxVmpnR1FK?=
 =?utf-8?B?T1JRV3ZPcXB1dHJSSE4vMHM2ckhGMmp4MmhxaDRVM3k1VWVscUxNaktmT1h3?=
 =?utf-8?B?bmU3VU9HY3h2c2pCWE1Ha2RiWkh6dk53QVk1QWNlRCsxcVFvMU5mTjZzMVFB?=
 =?utf-8?B?dXlHZDY5b0ZBSGtQMmZ4T1dqd3VmUDA5UUN0ell3NDlHeklZVUVodnlTMGJt?=
 =?utf-8?B?SkRzUWJhUjc5QXhpN0xZS0pySVlzQlFuQmoxUE44aEZ1YU5nNUZGV0ttQTBI?=
 =?utf-8?B?L3JEY2I4RkxhK0NtM2xja0ZpR200Uk1oS0wyODlqMUFRT3kvZDRKaUgwN0xB?=
 =?utf-8?B?ejlrcVFlMHdLYWRERUhPU0gwdStIeVQ5Nk9MVFVjSitEMFJybGFtRmJpT1hR?=
 =?utf-8?B?bGRmMFh3VDhXZUx1cUNTQ1Mrc1ZQSnJWZ1FFNFF1ZnlLVlBXT3hoRTVlUGYw?=
 =?utf-8?B?bEZ0VVZxdlpzNmNFOXd4Q1VwclB5MUhXZzZDOEk3ODQ5cmdYZkkwZ1FWR1NU?=
 =?utf-8?B?c2ViS25iY21ubmRweTIwb0VtWU5ZSWhQbjRrSk1kQnlGMVp3Ty93Qk5aOWlk?=
 =?utf-8?B?cDJ1WlhBMzlUYno0dFE5am56NUswMjVLQnRWQkhOUE02R0RJaFBjZmhtUTBV?=
 =?utf-8?B?Qk9pSFRhdXYwQVlla2t1dllRRzJsWUNTaVVmZmRnUS84QzVIMkFzdU5LUVZm?=
 =?utf-8?B?Slh6TDdCQmJkS2RaaUsxY01NZWlsZHFSRU9qajM5eW1iQUtDVHJwdXFJejdu?=
 =?utf-8?B?a2ovNW1wTjBWT3I4MHhjNGJ2cmZmRzgrL2hLdnFRRXJkb1pZWWxndU52d0lW?=
 =?utf-8?B?N0t6bW9NUnJuYjdQWStGWUEzMkhmaW5jeU5hTXE2QXBZVnlpVEJtSTExQ3hl?=
 =?utf-8?B?eVpkb2hTc29wNG9YRUhPdndEMDFxaVllSDVLMWo5bVNTUzdibUh1Wm5BZXVh?=
 =?utf-8?B?Vi92RmtlM3lHSmVvWHNDTGt0VGVQMXRTaXpMT0NHZEl4TmlHaGQzQWtXYUV2?=
 =?utf-8?B?aWFZZzNSSGl4ZkVKZmNJT29tVnRQeWZQT3RVOEVsdERIVXBFQzg1aVFwbDlL?=
 =?utf-8?B?RVlNS1YxSlU0ajE2ZCtBM1QyUk83azRST3JLU0NIY1c5dVFNU20rcnl2NDNx?=
 =?utf-8?B?cUo4R0E2UUhSS2JvbHhxZVNaaGxoMlhnMWJvTk9aWFo4Y2lrenFvM0R1R3Ja?=
 =?utf-8?B?R2R0N2svZHRVUE02QlNmdFNFMGp2a1YzV21saW1RYmRwR2t0NGRnVXpIS0pQ?=
 =?utf-8?B?TkM5T2JKSGN2VlJ5OFFFZXA0cVYxZkg1MmU5ZStzVWtkM0NTWXR1V09TME1U?=
 =?utf-8?B?K0lnU0FPQmNJbi9EWldHZjJpeS9JNEZxeFl2UHNTQUlUYXp4aDk5QWQxZlhj?=
 =?utf-8?B?a0VDVmJZY2QyOGRDcmVnditQWlNhYWFaK0JCZ2NRVG5XRkQ5cWVJTzJrRklO?=
 =?utf-8?B?VU1FWUNKYnBtNnVnR1VQSC9FUzkvSWlWLzhnVkF0S3VtbXRNdGd1QS9lKzg5?=
 =?utf-8?B?U0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0059e334-59d4-4aa1-25a7-08dd35804df7
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Jan 2025 16:18:53.9746 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EQ8p6gxS8iKYT3T7kxi0f8okvZzKik4urXLvczJVxnzFXJqJouvWeXJSe8EmwgmixLLEMY3M2DcwFSwFPMTVyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8327
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2025-01-15 12:07:39-03:00)
>On Wed, Jan 15, 2025 at 09:44:14AM -0300, Gustavo Sousa wrote:
>> Quoting Ville Syrj=C3=A4l=C3=A4 (2025-01-14 14:32:45-03:00)
>> >On Tue, Jan 14, 2025 at 01:31:20PM -0300, Gustavo Sousa wrote:
>> >> Quoting Jani Nikula (2025-01-14 12:21:50-03:00)
>> >> >On Mon, 13 Jan 2025, Gustavo Sousa <gustavo.sousa@intel.com> wrote:
>> >> >> The CMTG is a timing generator that runs in parallel with transcod=
ers
>> >> >> timing generators and can be used as a reference for synchronizati=
on.
>> >> >>
>> >> >> On PTL (display Xe3_LPD), we have observed that we are inheriting =
from
>> >> >> GOP a display configuration with the CMTG enabled. Because our dri=
ver
>> >> >> doesn't currently implement any CMTG sequences, the CMTG ends up s=
till
>> >> >> enabled after our driver takes over.
>> >> >>
>> >> >> We need to make sure that the CMTG is not enabled if we are not go=
ing to
>> >> >> use it. For that, let's add a partial implementation in our driver=
 that
>> >> >> only cares about disabling the CMTG if it was found enabled during
>> >> >> initial hardware readout. In the future, we can also implement seq=
uences
>> >> >> for enabling CMTG if that becomes a needed feature.
>> >> >
>> >> >Doesn't this patch disable the CRTC, not the CMTG?
>> >>=20
>> >> It disables the CMTG and that's it for LNL and PTL.
>> >>=20
>> >> For platforms prior to LNL, disabling the CMTG requires a modeset;
>> >> specifically for those, the CRTC is also disabled during the
>> >> sanitization process (not sure if there is a clean way of forcing a
>> >> modeset from the sanitization routine).
>> >
>> >I'm not sure why this whole global state stuff is needed here.
>> >It seems to me that this should be handled more or less the same
>> >as port sync. Ie:
>> >
>> >- track the cmtg state in intel_crtc_state
>>=20
>> The main reasons I implemented CMTG state as a global state were that
>> CMTG is not a exactly per-pipe thing and it could affect multiple pipes
>> (A and B), at least not on pre-LNL platforms.
>
>I suppose. But it doesn't seem to be fully really independent
>thing either especially given the dependency to the port PLL
>and such, and that's all handled per-pipe.

To make matters worse, it is possible for CMTG A being driven by PHY B
and vice-versa.

>
>> On pre-LNL platforms, we have a single CMTG that can be used to
>> synchronize the eDP TG of either or both pipes A and B.
>>=20
>> As of LNL (Xe2_LPD, in the current patch I mistankenly considered
>> Xe3_LPD instead), a second CMTG instance is added. In this case, we have
>> CMTG A wired to pipe A and CMTG B, to pipe B. For dual eDP with support
>> from the CMTG, both CMTGs must be on. For single eDP, the respective
>> CMTG should be used.
>>=20
>> Yeah, maybe tracking the CMTG state as part of intel_crtc_state could
>> work. Just need to think then on how to handle the pre-LNL case.
>>=20
>> (Furthermore I would also need educate myself on how our driver handle
>> port sync that you mentioned above :-))
>>=20
>> >- read it out
>>=20
>> In this patch I only kept the state necessary for disabling. Should we
>> keep it like that while we only care about disabling the CMTG?
>
>Yeah, I guess we don't need a full readout right now.
>
>>=20
>> >- add it to the state checker
>>=20
>> By "state checker", do you refer to intel_pipe_config_compare()?
>>=20
>> One possible issue here is that for LNL and newer, disabling the CMTG
>> does not require a modeset. So, could we be causing an unnecessary
>> modeset in some cases?
>
>We can skip the check for fastset, assuming we have a proper fastset
>codepath for disabling the CMTG. I don't know what kind of magic
>synchronization is needed around that.

Well, the way I understand it, for LNL and newer, clearing
TRANS_CMTG_CTL[31] and TRANS_DDI_FUNC_CTL2[CMTG Secondary mode] for the
associated transcoder should be enough to untie the CMTG with the
transcoder. That must be done before any "modeset disables" (if any) in
the commit tail to ensure that the PHY driving the CMTG is active
before clearing TRANS_CMTG_CTL[31]. Finally, we can program CMTG_CLK_SEL
to select no PHY to effectively disable it.

For previous platforms, the Bspec instructs to follow a modeset to
disable the transcoder after clearing TRANS_DDI_FUNC_CTL2[CMTG Secondary
mode] and before clearing TRANS_CMTG_CTL[31]. And only then deal with
CMTG_CLK_SEL.

So, I would say we have three major steps here:

 1. Tell the transcoder to stop synchronizing with the CMTG by clearing
    TRANS_DDI_FUNC_CTL2[CMTG Secondary mode].

 2. Modeset disables (already present in the commit tail). This will
    happen for pre-LNL and possibly not for LNL and newer if the initial
    commit results in a fastset.

 3. Disable the CMTG by clearing TRANS_CMTG_CTL[31] and then clearing
    the CMTG's clock selection (CMTG_CLK_SEL).

--
Gustavo Sousa

>
>>=20
>> >- add the necessary bits to the disable sequence
>> >  (no need for enable right now I guess if we=20
>> >  force a disable)
>>=20
>> Yep, I believe I have the hardware programming sequence to actually
>> disable.
>>=20
>> One thing I'm strugling is to find the proper place to cause the
>> disabling. In my original approach (see [1]), I had that done as part of
>> the initial commit. In this current patch, the disabling was done as
>> part of the sanitization.
>>=20
>> [1] https://lore.kernel.org/all/20250104172937.64015-2-gustavo.sousa@int=
el.com/
>>=20
>> >- flag mode_changed=3Dtrue for any crtc that has cmtg enabled
>> >  in initial commit to force the modeset
>>=20
>> Well, for LNL I believe we can skip the modeset and trigger it only for
>> pre-LNL. At which point exactly should we flag mode_changed=3Dtrue?
>
>Around the same part where we have the color_mgmt_changed hack
>in intel_initial_commit() would seem fine to me.
>
>>=20
>> In [1], I forced a modeset in intel_cmtg_check_modeset() for pipes that
>> would have their TRANS_DDI_FUNC_CTL2[CMTG Secondary mode] bit changed
>> (would would only be from 1 to 0 in this case).
>>=20
>> >
>> >I guess the one open question is how to deal with cases
>> >where the same CMTG is used for two pipes (assuming that's
>> >a thing?).
>>=20
>> That's a thing for pre-LNL platforms.
>>=20
>> > We may need to extend the port_sync master/slave
>> >handling in the enable/disable sequences to deal with cmtg
>> >as well to make sure things are done in the right order.
>> >
>> >Also it looks like CMTG is more or less a full blow trancoder
>> >(ie. has a full set of timing registers). The docs are rather
>> >confusing but it looks to me like they're saying that one
>> >should still program the normal transcoder registers as well,
>> >even when using CMTG. I guess if we ever implement proper
>> >support for this we should at least have some kind of
>> >sanity check to confirm that.
>>=20
>> Yeah. I had to go through more documentation outside of the BSpec as
>> well as go asking hardware folks to understand it better.
>>=20
>> As far as I understand, the CMTG is not exactly a full blow transcoder.
>> I suspect it replicates only the functions related to timing generation.
>>=20
>> And it does not actually drive the port. It runs in parallel to the
>> timing generator actually driving the port (i.e. the eDP TG). The only
>> interaction between the two is for synchronization. When
>> TRANS_DDI_FUNC_CTL2[CMTG Secondary mode] is 1, the eDP TG will sync with
>> the CMTG's TG start and frame sync signals.
>>=20
>> --
>> Gustavo Sousa
>>=20
>> >
>> >--=20
>> >Ville Syrj=C3=A4l=C3=A4
>> >Intel
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
