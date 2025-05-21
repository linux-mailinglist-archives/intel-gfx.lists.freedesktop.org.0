Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E13ABF8F4
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 17:13:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E145810FA53;
	Wed, 21 May 2025 15:12:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="K0dZ6+Sh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D39E10EADD;
 Wed, 21 May 2025 15:12:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747840358; x=1779376358;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=+9+GRw4xq+DVFqZvq2yxYp2xQh3r8BjvLwSPx7zULbw=;
 b=K0dZ6+ShMG5V0KyhSgzT5Gv80iTZXA+LhYYdejWQeu5N19xbG4ALsPE+
 i1TFaTl8yXhWcbkOGfhR1ye57F5Xbq7HiF0csw/3OrQyrbdw6pXhUCSle
 SyGp3QmyzmmafgXJf/hi9YbCpyLkAC3D/Eh4jFiecYJwk/UoZOeMPRZ0t
 YsGP0nbdbDSc4fwoyyTXmzcD49FT0fquhxAoERvgJcfZ2dSloNYEyWPDy
 /gaTQSqVdUNPchZw9KxR8HR7u0gUI+YYvJUT+ad5XCYSZYnOqnO5/3JiW
 eoDgyXu2KeK6HJfpfBf3xnOg8KZjmsGYn1aTLISEZzokHVnITReK7UFar A==;
X-CSE-ConnectionGUID: 8ZBYo+kgTSqM2wD7XjfFTA==
X-CSE-MsgGUID: HVGBsaX2SjW5XJbH67XY3A==
X-IronPort-AV: E=McAfee;i="6700,10204,11440"; a="49921768"
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="49921768"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 08:12:37 -0700
X-CSE-ConnectionGUID: upQsOlCwRv+KFSZbeq3lfg==
X-CSE-MsgGUID: XKtCMTfRSZeQ+oVGUbGHqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="177270190"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 08:12:37 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 21 May 2025 08:12:36 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 21 May 2025 08:12:36 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 21 May 2025 08:12:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dJmGPCHVMZPmZEHpkbIHIoP96uZhAS3rzwU3YCwSAe0nJI7mgJh5UnsqQt9pWD9ZuSHBMO0ANIa0yQ35A6DqE5y5H2tgrGh0qD4/tGf53Kzl8OIDm4mDh0Rb81eLt5b46SHxghwuoD0iP1wXu1BJum43weDr9mRGWzLvoDUqXZXoTw8cU6LZx7DVlJkpErQzpcxp2iAVB19qBsH3/XlWsHzxZMrz8QAH+pyjlIrL4UlthbIAQgI5PR8Jkid4GeU6CEdT/JphQ6sIserKESuovJhgBx8ANoM9rRaZGTyrN3mthaHNm6yTkfi3s8HJJz8xSLMt3jFihLOGzaxsKdJhqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8JKe9099gaK/xmsuszXDbhb7L4UbJg3doWeifCklQEA=;
 b=w1gfMCudgfSh7tv5ZnxF4E0yEiAxukjTwr8VD2pYC0kbK5LD7Y2IYm5W4fhAs+jfqL7tkp33Dsclx/bopSMlDp+ab/eZzWKIoNDLkRutO08U2IDWKq/jq+10ofF2EMzWIgH0ouqKS7B8qMEcV8BxTxYFUh8ypngqLx6VB4CpXq99db4LcwWLcdsBRHPah6QoB74tzlRvwhbK6P7V/Vua/M9vq1QofNcdZy4zpI/JCrVQxOZKZWlusLArfIoPFOLIq/iM3swExBPGgsaZa207TFPxdgy8csYVcs7KTcUVJsqxa2Ah27VnJRHwi06DakDuuONm8D6cMJ7kpIVUc66nMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by PH0PR11MB7710.namprd11.prod.outlook.com (2603:10b6:510:298::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.30; Wed, 21 May
 2025 15:12:01 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::7141:316f:77a0:9c44%6]) with mapi id 15.20.8746.029; Wed, 21 May 2025
 15:12:01 +0000
Date: Wed, 21 May 2025 10:11:55 -0500
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Harry Austen <hpausten@protonmail.com>
CC: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <linux-kernel@vger.kernel.org>, Thomas =?utf-8?Q?Hellstr=C3=B6m?=
 <thomas.hellstrom@linux.intel.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH v4] drm/xe: Allow building as kernel built-in
Message-ID: <s43s6p2p6frhqg64r42s5owhyiczkfrsgmt5fecosmout73x5m@aq22nie755nt>
References: <20250516104210.17969-1-hpausten@protonmail.com>
 <32da3736-9ac1-4524-94e6-28a81f23bf31@linux.intel.com>
 <DA1P8NCLUFU8.N64BOSMN6G9J@protonmail.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DA1P8NCLUFU8.N64BOSMN6G9J@protonmail.com>
X-ClientProxiedBy: BYAPR08CA0072.namprd08.prod.outlook.com
 (2603:10b6:a03:117::49) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|PH0PR11MB7710:EE_
X-MS-Office365-Filtering-Correlation-Id: 4e7b80cf-f939-4532-ed6c-08dd9879d65b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?iso-8859-1?Q?nKGm8yfPGCPTYDOmcFmyaP0H5k9EfKp1cae4bOpUPRVYTP4qId2wQzSgNM?=
 =?iso-8859-1?Q?DzgmkZ7Sntg74fUHoyP01OhA/Axfwzm5o8K3CYLgNMhor0iXnacDvrGmMe?=
 =?iso-8859-1?Q?6tVx1a9ltqwhIb8NBOwb2/Z6q/T/hR5c/lYuXMRPG+2Ljtx34Z9FoVefy4?=
 =?iso-8859-1?Q?ZBRpoBFQ2P3PDw4Uo2EAmu3XZd3gZn1eW+udUc4cF01I/cOCyGmWz4ISS3?=
 =?iso-8859-1?Q?Qm3ToC4EaMLXfl5LZ0jZqdGJLKjkz9F2X+t0GUbm0ynMrbRMOXnBXSdecz?=
 =?iso-8859-1?Q?4dUhxvNve92G6C0zKh2usTd6tI879lYmIcqNk1WtbMyPluKpOyYMaOfCKm?=
 =?iso-8859-1?Q?mWB6wxSmOJkRB0rHxjERLj56BS0t6aSUbhKxX8zed7imlJUNcCKlTOwdOT?=
 =?iso-8859-1?Q?Y7u1dPuANNrKcS96PVKxUcl8DxGQeaaJZr51gAh8bYTjzLQUVqnmmdQXF8?=
 =?iso-8859-1?Q?K8YhmwxjwrrGI6Hi67USEUcmA0FPZGpBatfpZDsaKvVurFFalCBQctoGRs?=
 =?iso-8859-1?Q?Gmq5QTbH8DNj0sWbXHsJImKpgNjsQuR8QkcLdN0rwZXVEEBzPPvT3lxLQQ?=
 =?iso-8859-1?Q?cmP6q6AQda84TI+miw5pq0QS1oZuuKMrv3Ruwd2hDHy6Eav+R4gt+mD84A?=
 =?iso-8859-1?Q?wskQYmgK+gC5WH5in0JfyyzP27HO5BmEG6VGeCaV6br6xNdVmh7TL1cXws?=
 =?iso-8859-1?Q?iUYfi5ALDherNHiBTpKkNBlOc9anzq5aRqeW8l1MR0aRiP3FTcGigOQnQK?=
 =?iso-8859-1?Q?BGsIifkVcuUf2W+EoPh/K6FHpd7+zn82DjG8HIr8IyMQiGqWdzsmD3jgtU?=
 =?iso-8859-1?Q?g9gEI7Dkour6/BNm66XQBPYPqY9YIp5TU22bog7uO7oCML3Lfk6jHidnSw?=
 =?iso-8859-1?Q?Nfj24eAQzRmjlVvXTYHmkgo7D8cJ5EwAplpZ4YwEsB5xnatrTt5INkYJ73?=
 =?iso-8859-1?Q?PL3XJw109VX8ZfMRjerqODzBZzZtbSLRNLJVYhPBDkpgghoymOWz812PIo?=
 =?iso-8859-1?Q?zwMH6iKWPDW/aKR0OMFUFlu7xkB/AkGyyRZ+xugvpAudWe9iKWY0iR404/?=
 =?iso-8859-1?Q?LZXaMYp73s2juRZCSz/+SVX3Y9sKqdKzy1PqH16akWP+Y9imtGX9ZHwTsm?=
 =?iso-8859-1?Q?lUPyGhhIiqySjZPHK2tiNYBBk0ZYCujxKmCnLPhvBj+v/Uv9Yf/UdsXNp0?=
 =?iso-8859-1?Q?iLlNNl2h47VcE5rE8+PMveIBXhcUbc4L43U4nC0+/HrO7Tbj1jDwYNf7yR?=
 =?iso-8859-1?Q?ZDc9UXFLWxXg4HJBiYqRjekeN0yWlrusCPm9DD++1hKFYD89XuEU7T3thd?=
 =?iso-8859-1?Q?/Djpa1UeLF3FRi0UCv6baApRIRSd6d5Nckhx5z3H1EtTUmveAqmwm1KpvZ?=
 =?iso-8859-1?Q?fTYFYg2hO2rtN8Z5P//fzka94m/ez6lCbEcmaPjGb0XIh6TmaQI1ESq+Z9?=
 =?iso-8859-1?Q?C0uqIXovBKDv+3qfrqgmXsfGNmESpmLfGZIc6S5/I8b+iEnfnxklK4weEs?=
 =?iso-8859-1?Q?E=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?aVWJvM2vx5G08TvOeb8VsxDvURIcGkU2R1b+WJTrc1Opu5keS5lfHgqR8d?=
 =?iso-8859-1?Q?0CsAtP31NbxSYopMSaU86UDHb1cPV+YY3eE7w3wMKVWrfMDLcFRbsZ+8jb?=
 =?iso-8859-1?Q?Vak0/olwpYkm8r9HYPp3GCxnkj5dSg3YcwzVUwGdAZZm3Di/GLouQElbiN?=
 =?iso-8859-1?Q?n8+kfoG7ys3oUOF1Dt8t4gj8Qljo5aV4/m+0yBW7oLwOHqXJYWa4966rTb?=
 =?iso-8859-1?Q?Z+zAVHVc8oLzhPquy/kRRhpjx+tSbM6dpXbBwTej652CUqD78GrTfUnrNR?=
 =?iso-8859-1?Q?JKAymg8MKLuqHbWKKDITzKf2ooUgci2Gp5pTeCMAc5AVcJXnwMkvcekI66?=
 =?iso-8859-1?Q?esEeFyWmi9DSxd2D2fvOhOrVKXhXWIMDijx1HpzYtR0UCg9KXohuKnqAt3?=
 =?iso-8859-1?Q?w/qZPlu2IidRcKYR6sxXPz0or6lyFRtpAg4iW3VwmGD7X9SFSYM3HZ/voo?=
 =?iso-8859-1?Q?pyvLBJJ02irje2CBWiTc9vRexrYuY+CejdzDvRZRDRRyiOaGEa/P6nYTUX?=
 =?iso-8859-1?Q?2mmbHY0M2MpRocge44XSiqHZPmSF5sAItjvmr+NDGcsYk6awZB4s+fhU4H?=
 =?iso-8859-1?Q?6aPrE6t+PI5dtm377PfliTEIUoiXauUdEvJQXwcavgYiHq7HgJSTGd8+xR?=
 =?iso-8859-1?Q?9Gc/2yjwpG7jh48WR2SIoVRPzIfJI5GCav3GBikop6Y8j4QunVXURgOl5L?=
 =?iso-8859-1?Q?nSUzPssld80UfOCMbojG4xS79hNvXuzqMcEtl3JKketeSYppFf7wT4gX4a?=
 =?iso-8859-1?Q?1FWZNfJLclcuGRmlN/mzeV6KpFbuPm3XFekeAPOS/oVNLAmBEWLI3I6c0U?=
 =?iso-8859-1?Q?nVTqUGnyqK01/1kxETPJhtZq4PjU6IrDCr0DarokAejEF+CjW5rF6FiJXd?=
 =?iso-8859-1?Q?fWWvqPEVLsLxfpJ5QDQxKZrRke+Ze2zvf4kE2GzTjg5iM2DtMSXlEV5HE4?=
 =?iso-8859-1?Q?ZXYBiGbx04FCH71oeeKkCt4wQWFuSiA/1N2QioZGfq/1J2wypT5HGwvoQ+?=
 =?iso-8859-1?Q?yn7uZNDIQPSHwRSaxV5/R8HKrlh4If+n9fbKfn3UClu9VRrxkoqtQzQUfg?=
 =?iso-8859-1?Q?Na50h1iR1TLB7PMk5mG6MEOYmyClZzrE/MCP1RsqHHaA+MtEcBX3u89Vuv?=
 =?iso-8859-1?Q?UkWYH8iMQmTgWgPOrTZTcypQEDle7iuIP+XcBahJiDJFJ4d/rnzctOK0BM?=
 =?iso-8859-1?Q?Imm4/gY5kbJIEZ/zaoEq1jPXk35tQU3e7j6CTufZ3q2Y4fIpta6psx4bDo?=
 =?iso-8859-1?Q?33HFakABZI7fzOOAuqU6ACq9Wc7vEPdZiAIaMkCKoIkP3p7s1qtVH6i9IF?=
 =?iso-8859-1?Q?ZCuE4iOnG1/tVyu6gZeFMrziU2jtE5nL8p4wGrMk65mCbzjZ6cMti5Q9tK?=
 =?iso-8859-1?Q?Ao4LD+1E8pwFBbyxU2ms+faWPSfQuk6iNT6vJLwhrt1Fa6IC2n/3yduMVA?=
 =?iso-8859-1?Q?rCS5jLPAinTyn2O2O9NFejwP7KUgDONj0pGPXF9OBp02s8JZE3ygmzHpTN?=
 =?iso-8859-1?Q?HO09tHmgpDgXDlgepiTVTJxQefnGA6NReyexWA6zYGx1lJqC9lchINr/+v?=
 =?iso-8859-1?Q?iGbGLlvKsBfoOx3pmlhG4Ov3/LQg9my+AHdyQ9N1iRydpNcVlmraet+E/R?=
 =?iso-8859-1?Q?HlKDQG5D1URgJ1p+Th3Ua1VHUZmTOp1RKCWAf19xejshR4gL3fow2ZzA?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4e7b80cf-f939-4532-ed6c-08dd9879d65b
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2025 15:12:01.4006 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: nLzxlPCoPtzJYPOjxF+Mz4MHJJlnnmqkjEfA0DJqsqh6u3yXvXrc909sL6je+x+xBykqWTattRiC6j9aCnxJ5kr0bbbs9PC6Tef2Br414f0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7710
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

On Wed, May 21, 2025 at 08:35:05AM +0000, Harry Austen wrote:
>On Mon May 19, 2025 at 4:14 PM BST, Maarten Lankhorst wrote:
>> Hey,
>>
>> On 2025-05-16 12:42, Harry Austen wrote:
>>> Fix Kconfig symbol dependency on KUNIT, which isn't actually required
>>> for XE to be built-in. However, if KUNIT is enabled, it must be built-in
>>> too.
>>>
>>> Also, allow DRM_XE_DISPLAY to be built-in. But only as long as DRM_I915
>>> isn't, since that results in duplicate symbol errors.
>>>
>>> Fixes: 08987a8b6820 ("drm/xe: Fix build with KUNIT=m")
>>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>> Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
>>> Cc: Jani Nikula <jani.nikula@linux.intel.com>
>>> Signed-off-by: Harry Austen <hpausten@protonmail.com>
>>> Acked-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>> v4: Add Jani Nikula's Acked-by tag
>>> v3: Simplify KUNIT dependency, as suggested by Jani Nikula
>>> v2: Ensure DRM_XE_DISPLAY and DRM_I915 can't both be built-in
>>>
>>>  drivers/gpu/drm/xe/Kconfig | 5 +++--
>>>  1 file changed, 3 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/xe/Kconfig b/drivers/gpu/drm/xe/Kconfig
>>> index 9bce047901b22..214f40264fa12 100644
>>> --- a/drivers/gpu/drm/xe/Kconfig
>>> +++ b/drivers/gpu/drm/xe/Kconfig
>>> @@ -1,7 +1,8 @@
>>>  # SPDX-License-Identifier: GPL-2.0-only
>>>  config DRM_XE
>>>  	tristate "Intel Xe Graphics"
>>> -	depends on DRM && PCI && MMU && (m || (y && KUNIT=y))
>>> +	depends on DRM && PCI && MMU
>>> +	depends on KUNIT || KUNIT=n
>>>  	select INTERVAL_TREE
>>>  	# we need shmfs for the swappable backing store, and in particular
>>>  	# the shmem_readpage() which depends upon tmpfs
>>> @@ -51,7 +52,7 @@ config DRM_XE
>>>
>>>  config DRM_XE_DISPLAY
>>>  	bool "Enable display support"
>>> -	depends on DRM_XE && DRM_XE=m && HAS_IOPORT
>>> +	depends on DRM_XE && (DRM_XE=m || DRM_I915!=y) && HAS_IOPORT
>>>  	select FB_IOMEM_HELPERS if DRM_FBDEV_EMULATION
>>>  	select I2C
>>>  	select I2C_ALGOBIT
>> Reviewed-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
>
>Thanks!
>
>>
>> Can we also get rid of the IOSF_MBI select? Not even xe_display depends on it, leftover from initial porting. :)
>
>As this seems unrelated, I'd be happy to submit a separate patch for this
>afterwards. Thanks for the suggestion.

same comment as in the previous version of this patch. What I don't like
is that it doesn't prevent you to do a bad selection. Instead if you set
DRM_XE=y and DRM_I915=y, you lose DRM_XE_DISPLAY. Silently. This is
equivalent of chosing the options via make menuconfig:

	# initial state
	./scripts/config --state CONFIG_DRM_XE --state CONFIG_DRM_XE_DISPLAY --state CONFIG_DRM_I915
	m
	y
	m

	# set CONFIG_DRM_XE to built-in
	./scripts/config -e CONFIG_DRM_XE && make -s olddefconfig
	./scripts/config --state CONFIG_DRM_XE --state CONFIG_DRM_XE_DISPLAY --state CONFIG_DRM_I915
	y
	y
	m

	# set CONFIG_DRM_I915 to built-in, we lose display with xe
	$ ~/p/linux-dim/drm-xe-next/scripts/config --state CONFIG_DRM_XE --state CONFIG_DRM_XE_DISPLAY --state CONFIG_DRM_I915
	y
	undef
	y

I'm not sure how to prevent setting CONFIG_DRM_I915=y if
CONFIG_DRM_XE_DISPLAY is selected.

Lucas De Marchi

>
>Harry
>
