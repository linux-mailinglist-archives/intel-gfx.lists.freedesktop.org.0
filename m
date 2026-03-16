Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFOyGGmut2ldUQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 08:16:57 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB2CD295806
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 08:16:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0AAD10E2C5;
	Mon, 16 Mar 2026 07:16:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CD2WnWNB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4451E10E270;
 Mon, 16 Mar 2026 07:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773645413; x=1805181413;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k/SCwQ1eVUic9DtCWKtr9bM+m3ZAtBCIRiK7oEcQzQs=;
 b=CD2WnWNBPaM9LFVTOH/usmEUQEhKpXmjyVnxUk9IZwXV5NTEEWX7NUqB
 UG8tEsRGELU2cAh42oYaE658pnE4TnQe0RfqH4CUuteN4YSUzuGmyHjVC
 iFaNGTnXH1FZAvu0ufOow4AvwfARQYOQIDrcba/LhULTJh1CcC9vGwq2Q
 Uj/3CrM4yMPa0tkbUk7TezjSKulu9IahfGlEFG521mnEOzGPcWh74f6Zw
 h1xAQslfMHiasjyAL9XfMhxQixqQ7kU9mba2YvVDZB2PMPaDVBgUQgdt+
 rKYp/jx8Qxc4HoWnP14yxwBZ6k+D3bfaYh802FBYDbqOVWZ/yfsYFNA5F A==;
X-CSE-ConnectionGUID: TpNKl8khSqOHu6OocviCyg==
X-CSE-MsgGUID: 4frsxB45TQuqt38jb36frQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="78548558"
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="78548558"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 00:16:52 -0700
X-CSE-ConnectionGUID: AdpCQiWFTiu4VgtbDOW6BQ==
X-CSE-MsgGUID: q4JwM8hFRNCRum3kJrrV7A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,123,1770624000"; d="scan'208";a="221908656"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 00:16:53 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 00:16:51 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 16 Mar 2026 00:16:51 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.65) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 16 Mar 2026 00:16:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=eZLOfHTeriTbO4K6uUPn9+cEJ+piZMXaM7Xznp7DF91ZtKslqTWcQOy6QBNHtmEoKAyM5U+AgEv12YMAWWEHF3aj8qH6zlSLtZOr3iWh+L91O+Ed1GZeaNPuaIbe6FNTuGsTIimFyAAz1/Vuam3qpab1IBwlM1cT7GdwoEVbkZRFE8998BjNu5OAfK7e677DUP8JRbZiTG/mfsYOSeQ41731sqG2VShneO+HlyVD+n83K3Sx4W4NO3L48lAYw8nXXwiu308ug8NEhKdvLZXCcl1IOyey+A3i1Za4UzdXe31wWduSkqKB5unw8TKntBf0hSOgTK77yCK9yn3SOp2n3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jwsYcCtWjUZTdb36suSq/mJPyl6PZojEKMYV68nPsow=;
 b=aJt6w6u5veCclXdccfd+5WZk/JpEFgiAfPlrCuYX1nBH4Ug6xniUXpBg/gR2+tin1LUn0VLQn/nWDvNVP4vLx8HqFvkB/ov7fb41QpN5FrbPa9z171g+kqmSctzeej24vrdI1j5MLda8f6u43ul6IZSKCKQ9PcNAGm0RhNuiVuBn7mcn2rE4+3Kmkw5gdhivC4C3h5cB9A+wWgnTMhX+mUqsLW/92PgwJhknmwh3FXqlb6PyoQCyUj7qbHh0PiqZMu8hRPc+o9IVFAVBrLkbeVZqEU6rLSKZ3bBrGqEm69sEmkx8yXBSgEVA2lgixFHK937lfnjKGneD4JNli/VfkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by BL1PR11MB6050.namprd11.prod.outlook.com (2603:10b6:208:392::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.16; Mon, 16 Mar
 2026 07:16:49 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9723.014; Mon, 16 Mar 2026
 07:16:49 +0000
Message-ID: <53c3f610-942c-46bf-be5f-a4c51625c358@intel.com>
Date: Mon, 16 Mar 2026 12:46:39 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/10] drm/colorop: Add DRM_COLOROP_CSC_FF
Content-Language: en-GB
To: Pekka Paalanen <pekka.paalanen@collabora.com>
CC: <dri-devel@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, <harry.wentland@amd.com>,
 <louis.chauvet@bootlin.com>, <mwen@igalia.com>, <contact@emersion.fr>,
 <alex.hung@amd.com>, <daniels@collabora.com>, <uma.shankar@intel.com>,
 <maarten.lankhorst@intel.com>, <pranay.samala@intel.com>,
 <swati2.sharma@intel.com>
References: <20260306165307.3233194-1-chaitanya.kumar.borah@intel.com>
 <20260306165307.3233194-2-chaitanya.kumar.borah@intel.com>
 <20260310163229.521186ab@eldfell>
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260310163229.521186ab@eldfell>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5P287CA0020.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:179::8) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|BL1PR11MB6050:EE_
X-MS-Office365-Filtering-Correlation-Id: 75c0f840-6acd-4e0c-e5d7-08de832bfd28
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|7416014|376014|1800799024|18002099003|22082099003|56012099003;
X-Microsoft-Antispam-Message-Info: 43Q1DkMbN9x/bIMmmpq3t6f2Ny3qdFyX5FLq67bK1muEVxc7taRG9wwGEjd5KazWhvyfae8c0q/Rf11VzfAWEnpbfkkBaAx+J0kbsVhZBVwtmDW5n1RzwXcQflgN+KpUHPhDgsBLoSL/P0NoRUUHwiFKzHgesl6iPeVvDDgw3M88sGhexhsHmfFck9RSZx5JnUQjn0+rTKGvWDPuA5acqdf9XtOV6K+CWwv8i8Ve9ktXO9hH+AcYhzuIyWmE/HjXEdoRcpsRZcDi5RGUd3Kf3dfX7fA900y/c3Rve+IBZ82WmnlSkBQzvgEwFYo7janymEew4qO7VGbbL4xU0LYYShpajd89IaKQtZ9PPIhSFrASo01GWCMP214tXeZbuBqLTWyWJzA2rg6KzgXc3SPWifOSmR2Ddknsu2LVCDRWHLo6KsVZ7dZMsR7IVgRhhLC9oXEFJ9QsP0V18yUh/2SuOTNuRokPaBLi5foJ717jUHxjb3lsyfPa/0imOKOi0twM7i0unHT1OpiUZ8rw0xeCENn+h05jeQOIuVn+rgq2QP9CsvOmhUgOmHkeneNmFVriscoKb9pqfLyfbXnAzGeo5LjXh+v5UKEKRfcM0sJ7upvieYBPLHmZqpbn9zt6TJKa/iMOCX3OLQNK6r2eoRiA6Wk+nMYU2HZObCC+7kq3UUDnnpmPe33t0KX6fCA5VV/SUnkbf09EuUJlA6qtzRRjcg2dNN5rO7VG5DbJkZjSePg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(7416014)(376014)(1800799024)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VDAySDV1NzRzMWJ4b2hSZ1hGUjBKU3JoZUlpdVg4ZjlvWTRNaXdhZmZaU09W?=
 =?utf-8?B?Z1QwbVRJcGI5UGlIUlMvMGtic2UzQThXZy9HNnU5ZnNtbEdNM3lyRGE0dDZT?=
 =?utf-8?B?Y2dNN1RGa1RjRUF3azJpb3Rocm1Xd3AyT05hbGRQRVBwaTNyQnV1WElOQ2JE?=
 =?utf-8?B?U0gvWjh6cDdId0FJTFBlUjdUVVZteVhlVDFOL3Z6dzJub3Z6NTNtODNLYjVV?=
 =?utf-8?B?N2ZJS1R2N3d2cUN0aHF4V3prL1dKVzBnb1pORzBvWDJzcjcvZWMvVjllaXFv?=
 =?utf-8?B?bE10OGQ4N1hhTlFlVkZmTFlwaFdpNUNLQUNNL3dwd2lrZTl1cTUyYVVCdmJM?=
 =?utf-8?B?ODdGTlNINFFlTTNVaE9SQUwxbzhsRUovMXdxU252Y2hpTVhtVE9WalNDNm42?=
 =?utf-8?B?Q3kwWElKWVlWYnJTMURSV3hPTkhFYTFMZnRxUHo3b2ZuUWVmNEZ3UDFoYzRZ?=
 =?utf-8?B?MzY3TngrQitwd1pEYXhKWWF1MjkrejBFR2p4ei94T3hzdlhscVRDZUVnMmQ1?=
 =?utf-8?B?QnQ5TFQ4ZFNEcVNXZ1BRVlgrVWxRVytvTUVrRlBlRnY3QkNjOU1TRHRpNmtJ?=
 =?utf-8?B?Q3hBcDlSK3ZyZzNNaEQvWjVDaGpMY3Q4OThqSUJKM2NTN1ZZV1djQmJ3UmJI?=
 =?utf-8?B?b2RTMXN0MTdsY3drbUVLU1VYenYwenU3WE5BbVp4dTRqR24rbURtcVBKNGdJ?=
 =?utf-8?B?RFN4MVlKZkNwem9OUWIyOFR2ak9mVlo4TFRENVZjekJaWU5hZjBmb0xiQ3p2?=
 =?utf-8?B?Q1lkVXRBbUQzYSs5VFhOYlI2anMySk0vdDliMFplRkZmWDVKK2Jjb3RvSW9J?=
 =?utf-8?B?ZHlHem9nQ0U0ZGVMNm5SZ2JBdTVzN1ZRaHErUytlWlN4bzJRMVlOTjZuaVM5?=
 =?utf-8?B?MFlqR0FvZjZsZ1l3VWJtSUhjY0NlaUZlTnhoSmxSaHBOdjFleWVTZjAwekYv?=
 =?utf-8?B?N21HUS8yWnIwbVF1Y3VvMnl3NTYxNENEWE5kWmRGSzY1c0dJbXFnTDV4QnQv?=
 =?utf-8?B?cG1BR0F6K2NXSThqMm9PMTMzSVU3dUxrUys3S3BCTi9pVjl5Q1R3SU9SM3M1?=
 =?utf-8?B?WHdTKzJTaUgxOTZ0VStHUlN5aXFLVXJsSVZaa1BlajhVSmIxamlWcERpSFk1?=
 =?utf-8?B?S2tld1JZV0xTZnRTL1dCMFJWeDJkN2hzVFlJdm1hWHBOckNIZ1FCeXZDRGpI?=
 =?utf-8?B?RElCNzRTbEVUMkdKa2kzaVpPOEdNY1dFTitpcDB5R0thcHhlejM3eHRYVW4z?=
 =?utf-8?B?Wll5WHluUVhKdnYyZlZQejJ4VWVlOVpkK0loR0VKaTQ1cEZIUnpKV08zMmZE?=
 =?utf-8?B?WkQwOU94RU5GU3RycW9jU3lBT0pPeWlSaXl6V29hZnZmWlhPUHBRclpJeC90?=
 =?utf-8?B?N0pnWXNxSTFEbVRWazFkaHFFTzJ4YUlleHRmY3ArWnJFQkJocEdTL05Jd3Jo?=
 =?utf-8?B?NmlTekw3STNEOStYNjhwZjlJNkFROEIvNVJjd3F1ZTl5N2NlZTJ3WjBYOUM2?=
 =?utf-8?B?azVDN29wbUtlamszaEdMTEdZeG02UzVNWDBnQzVoRm5ITkVEcTJlOEZ0QjJa?=
 =?utf-8?B?UDZhbTdNWStKbzFraCt5LzZ4NWxscmJzUjRzdnhJUnU3MEhtMzJDUlRlcVRP?=
 =?utf-8?B?eG5obVEwZm4vWjd3ZzVaREJrRVdCamZDNEEvVVIxQ3RINnpuWGN3YnFDdTlQ?=
 =?utf-8?B?Y09LNWlXSytlU0FPUmdpOVoxVXdUWDdodjJRUVoxSktKdUdaRkp1c0U0MXNj?=
 =?utf-8?B?VWk5N1RVcGxDdFJUdWVUSHhnMHQ4ZU5LalFLcUhxWlZCRG95clo0anVpUDc1?=
 =?utf-8?B?V2ozUlZkbTVVN2tVY2JvWXErRHh0MjJEVGJDNmNxeFhDaEMvQWVPanlLRW55?=
 =?utf-8?B?TmlLOUVYZkdXZGxPZ2xwSmd2cHh6U216MHZ5YjVXeUxDY0FPQ1JRVkg2T3pl?=
 =?utf-8?B?YXM1eUFHbllmemo2L1dtYnJ5eVpCeUsrcHJObkZvdkhXbGVRYU8vUDdwRDRP?=
 =?utf-8?B?Ny9rK2hpQXF4Q08raFlUV2dYenBjbElnN2Y1dXFvSjhUVzBmVTQzQ1IwV3BJ?=
 =?utf-8?B?N2NrbmpxWGNVckRrNmx6VWxFb0U2YStxYXJVWTFOSkRNMmo5ditzNTNxcjE0?=
 =?utf-8?B?ZUs1dExtcG9GaXhXY0d0eTJjUk1hblpqeis2SUJrcEdEYy9jWnY0enFZN205?=
 =?utf-8?B?MVRpNzBNNG1aSDdicjN6UkpvbXhuVHlYOW5zL1RBaTR2VTBKU1FHV1l1Y2Jw?=
 =?utf-8?B?Y0VLaVFhZ3BmOGU2a3A1YlFFbG8xNU5CbVVwUWJQRmFiZHg5bXNkQUdmeUpu?=
 =?utf-8?B?N3lnM2J6V1M1N1pZRHMyOFhVbEwzbDJ0Q21mcVJibmJFZnRkNE1PVTFuQWVH?=
 =?utf-8?Q?ftxksI1oxsRqyoWc=3D?=
X-Exchange-RoutingPolicyChecked: idmO7WyyufYJDIWuH/XMosRL2Ck6/gmPh2MEs5GQFEGJedP+BbHrxDE7WTiNiRyGRg/c5Vg3LSXiI2c25xw5zxhgDnjXYvAn6GxTt8fXqQ0SgYx88nQRyCNk6TvYN8ElBR92IB7fX6RnRImvL2NEvHOLqcrYyshAQoR0r87k4FZEJatgpXLlAdRUH/hniUDIaRChEpRlJq7nCtSbB7Glvbn6KzR5e2oiBfcZCJ7UwMAknfjojVFK+SVW3UX4ig2edZJxskjEzeQma4Re1wxGIOSuU4kvXyfLRVxQZKP9z0shx1NjmCj4Ik2xa9YOJmSMKM4GuSEKeQdWHBEnRvWK+g==
X-MS-Exchange-CrossTenant-Network-Message-Id: 75c0f840-6acd-4e0c-e5d7-08de832bfd28
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2026 07:16:49.1222 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3fX0uRGdTPNJUq+cYSY8AH7F1d62bsfSeD9Ap8CUIEuWvdVPX2tLyLMf+8Ikwhz3adYgSm1fC5HoWWfwYpg+Llwdlz2tegrh7SKhxiO0Mcg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6050
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-0.999];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: BB2CD295806
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi Pekka,

Thank you for looking into the patch.

On 3/10/2026 8:02 PM, Pekka Paalanen wrote:
> On Fri,  6 Mar 2026 22:22:58 +0530
> Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> 
>> Introduce DRM_COLOROP_CSC_FF, a new colorop type representing a
>> fixed-function Color Space Conversion (CSC) block.
>>
>> Unlike CTM-based colorops, this block does not expose programmable
>> coefficients. Instead, userspace selects one of the predefined
>> hardware modes via a new CSC_FF_TYPE enum property. Supported modes
>> include common YUV->RGB and RGB709->RGB2020 conversions.
>>
>> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
>> ---
>>   drivers/gpu/drm/drm_atomic.c      |   4 ++
>>   drivers/gpu/drm/drm_atomic_uapi.c |   4 ++
>>   drivers/gpu/drm/drm_colorop.c     | 105 ++++++++++++++++++++++++++++++
>>   include/drm/drm_colorop.h         |  72 ++++++++++++++++++++
>>   include/uapi/drm/drm_mode.h       |  13 ++++
>>   5 files changed, 198 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/drm_atomic.c b/drivers/gpu/drm/drm_atomic.c
>> index 04925166df98..7296b844e3fd 100644
>> --- a/drivers/gpu/drm/drm_atomic.c
>> +++ b/drivers/gpu/drm/drm_atomic.c
>> @@ -844,6 +844,10 @@ static void drm_atomic_colorop_print_state(struct drm_printer *p,
>>   			   drm_get_colorop_lut3d_interpolation_name(colorop->lut3d_interpolation));
>>   		drm_printf(p, "\tdata blob id=%d\n", state->data ? state->data->base.id : 0);
>>   		break;
>> +	case DRM_COLOROP_CSC_FF:
>> +		drm_printf(p, "\tcsc_ff_type=%s\n",
>> +			   drm_get_colorop_csc_ff_type_name(state->csc_ff_type));
>> +		break;
>>   	default:
>>   		break;
>>   	}
>> diff --git a/drivers/gpu/drm/drm_atomic_uapi.c b/drivers/gpu/drm/drm_atomic_uapi.c
>> index 87de41fb4459..9af73325aa93 100644
>> --- a/drivers/gpu/drm/drm_atomic_uapi.c
>> +++ b/drivers/gpu/drm/drm_atomic_uapi.c
>> @@ -757,6 +757,8 @@ static int drm_atomic_colorop_set_property(struct drm_colorop *colorop,
>>   	} else if (property == colorop->data_property) {
>>   		return drm_atomic_color_set_data_property(colorop, state,
>>   							  property, val);
>> +	} else if (property == colorop->csc_ff_type_property) {
>> +		state->csc_ff_type = val;
>>   	} else {
>>   		drm_dbg_atomic(colorop->dev,
>>   			       "[COLOROP:%d:%d] unknown property [PROP:%d:%s]\n",
>> @@ -789,6 +791,8 @@ drm_atomic_colorop_get_property(struct drm_colorop *colorop,
>>   		*val = colorop->lut3d_interpolation;
>>   	else if (property == colorop->data_property)
>>   		*val = (state->data) ? state->data->base.id : 0;
>> +	else if (property == colorop->csc_ff_type_property)
>> +		*val = state->csc_ff_type;
>>   	else
>>   		return -EINVAL;
>>   
>> diff --git a/drivers/gpu/drm/drm_colorop.c b/drivers/gpu/drm/drm_colorop.c
>> index f421c623b3f0..49422c625f4d 100644
>> --- a/drivers/gpu/drm/drm_colorop.c
>> +++ b/drivers/gpu/drm/drm_colorop.c
>> @@ -68,6 +68,7 @@ static const struct drm_prop_enum_list drm_colorop_type_enum_list[] = {
>>   	{ DRM_COLOROP_CTM_3X4, "3x4 Matrix"},
>>   	{ DRM_COLOROP_MULTIPLIER, "Multiplier"},
>>   	{ DRM_COLOROP_3D_LUT, "3D LUT"},
>> +	{ DRM_COLOROP_CSC_FF, "CSC Fixed-Function"},
> 
> Hi,
> 
> the fundamental idea seems fine to me, but I have a lot to say about the
> nomenclature.
> 
> What would you think of a more readable name DRM_COLOROP_FIXED_MATRIX
> "Fixed Matrix"?
> 
> Alternatively DRM_COLOROP_ENUM_MATRIX "Enumerated Matrix".
> 

I was intentionally staying away from the word matrix because there was 
no programmable matrix but it would make sense to name it something like
DRM_COLOROP_FIXED_MATRIX (or *_PRESET_MATRIX for that matter).

>>   };
>>   
>>   static const char * const colorop_curve_1d_type_names[] = {
>> @@ -90,6 +91,13 @@ static const struct drm_prop_enum_list drm_colorop_lut3d_interpolation_list[] =
>>   	{ DRM_COLOROP_LUT3D_INTERPOLATION_TETRAHEDRAL, "Tetrahedral" },
>>   };
>>   
>> +static const char * const colorop_csc_ff_type_names[] = {
>> +	[DRM_COLOROP_CSC_FF_YUV601_RGB601]   = "YUV601 to RGB601",
>> +	[DRM_COLOROP_CSC_FF_YUV709_RGB709]   = "YUV709 to RGB709",
>> +	[DRM_COLOROP_CSC_FF_YUV2020_RGB2020] = "YUV2020 to RGB2020",
>> +	[DRM_COLOROP_CSC_FF_RGB709_RGB2020]  = "RGB709 to RGB2020",
> 
> I'd suggest names:
> 
> "YCbCr 601 to RGB"
> "YCbCr 709 to RGB"
> "YCbCr 2020 NC to RGB"
> "RGB709 to RGB2020"
> 
> or something in that direction.
> 
> The relevant ITU-R BT specifications use YCbCr nomenclature IIRC. Wrt.
> YCbCr-to-RGB conversion, there is no RGB601, RGB709 or RGB2020. There
> is only some RGB, and which primaries it uses is not always tied to
> which YCbCr conversion was used.
>

What I understand from this is that the BT.709(et al.) only defines the 
matrix that is used for YCbCr->RGB, "what" RGB it is defined by the 
primaries (which comes with metadata?).

I will read up on why our HW names these bits as such.

> For YCbCr 2020 I feel it's nice to remember, that there are two
> different conversions in the specification: the simple matrix one
> called "non-constant luminance", and the complex one called "constant
> luminance". Hence "NC".
> 
> It's also good to recall that YCbCr-RGB conversions are done in an
> electrical space, while RGB709-to-RGB2020 conversion must be done in the
> optical space. It is up to the userspace to arrange the neighbouring
> colorops to use the fixed matrix right.
> 

Ack on the above.

>> +};
>> +
>>   /* Init Helpers */
>>   
>>   static int drm_plane_colorop_init(struct drm_device *dev, struct drm_colorop *colorop,
>> @@ -459,6 +467,80 @@ int drm_plane_colorop_3dlut_init(struct drm_device *dev, struct drm_colorop *col
>>   }
>>   EXPORT_SYMBOL(drm_plane_colorop_3dlut_init);
>>   
>> +/**
>> + * drm_plane_colorop_csc_ff_init - Initialize a DRM_COLOROP_CSC_FF
>> + *
>> + * @dev: DRM device
>> + * @colorop: The drm_colorop object to initialize
>> + * @plane: The associated drm_plane
>> + * @funcs: control functions for the new colorop
>> + * @supported_csc_ff: A bitfield of supported drm_plane_colorop_csc_ff_type enum values,
>> + *                    created using BIT(csc_ff_type) and combined with the OR '|'
>> + *                    operator.
>> + * @flags: bitmask of misc, see DRM_COLOROP_FLAG_* defines.
>> + * @return zero on success, -E value on failure
>> + */
>> +int drm_plane_colorop_csc_ff_init(struct drm_device *dev, struct drm_colorop *colorop,
>> +				  struct drm_plane *plane, const struct drm_colorop_funcs *funcs,
>> +				  u64 supported_csc_ff, uint32_t flags)
>> +{
>> +	struct drm_prop_enum_list enum_list[DRM_COLOROP_CSC_FF_COUNT];
>> +	int i, len;
>> +
>> +	struct drm_property *prop;
>> +	int ret;
>> +
>> +	if (!supported_csc_ff) {
>> +		drm_err(dev,
>> +			"No supported CSC op for new CSC FF colorop on [PLANE:%d:%s]\n",
>> +			plane->base.id, plane->name);
>> +		return -EINVAL;
>> +	}
>> +
>> +	if ((supported_csc_ff & -BIT(DRM_COLOROP_CSC_FF_COUNT)) != 0) {
>> +		drm_err(dev, "Unknown CSC provided on [PLANE:%d:%s]\n",
>> +			plane->base.id, plane->name);
>> +		return -EINVAL;
>> +	}
>> +
>> +	ret = drm_plane_colorop_init(dev, colorop, plane, funcs, DRM_COLOROP_CSC_FF, flags);
>> +	if (ret)
>> +		return ret;
>> +
>> +	len = 0;
>> +	for (i = 0; i < DRM_COLOROP_CSC_FF_COUNT; i++) {
>> +		if ((supported_csc_ff & BIT(i)) == 0)
>> +			continue;
>> +
>> +		enum_list[len].type = i;
>> +		enum_list[len].name = colorop_csc_ff_type_names[i];
>> +		len++;
>> +	}
>> +
>> +	if (WARN_ON(len <= 0))
>> +		return -EINVAL;
>> +
>> +	prop = drm_property_create_enum(dev, DRM_MODE_PROP_ATOMIC, "CSC_FF_TYPE",
>> +					enum_list, len);
> 
> The Color Space Conversion Fixed-Function type is always "fixed
> matrix", right?
> 
> The name for the colorop property to choose one of the supported
> matrices could be... "matrix"? "choice"?

Ack.

> 
> Does the property name need to be unique over all colorop types?
> 

I am not sure if I understand your question. Could you please elaborate?

>> +
>> +	if (!prop)
>> +		return -ENOMEM;
>> +
>> +	colorop->csc_ff_type_property = prop;
>> +	/*
>> +	 * Default to the first supported CSC mode as provided by the driver.
>> +	 * Intuitively this should be something that keeps the colorop in pixel bypass
>> +	 * mode but that is already handled via the standard colorop bypass
>> +	 * property.
>> +	 */
>> +	drm_object_attach_property(&colorop->base, colorop->csc_ff_type_property,
>> +				   enum_list[0].type);
>> +	drm_colorop_reset(colorop);
>> +
>> +	return 0;
>> +}
>> +EXPORT_SYMBOL(drm_plane_colorop_csc_ff_init);
>> +
>>   static void __drm_atomic_helper_colorop_duplicate_state(struct drm_colorop *colorop,
>>   							struct drm_colorop_state *state)
>>   {
>> @@ -513,6 +595,13 @@ static void __drm_colorop_state_reset(struct drm_colorop_state *colorop_state,
>>   						      &val);
>>   		colorop_state->curve_1d_type = val;
>>   	}
>> +
>> +	if (colorop->csc_ff_type_property) {
>> +		drm_object_property_get_default_value(&colorop->base,
>> +						      colorop->csc_ff_type_property,
>> +						      &val);
>> +		colorop_state->csc_ff_type = val;
>> +	}
>>   }
>>   
>>   /**
>> @@ -551,6 +640,7 @@ static const char * const colorop_type_name[] = {
>>   	[DRM_COLOROP_CTM_3X4] = "3x4 Matrix",
>>   	[DRM_COLOROP_MULTIPLIER] = "Multiplier",
>>   	[DRM_COLOROP_3D_LUT] = "3D LUT",
>> +	[DRM_COLOROP_CSC_FF] = "CSC Fixed-Function",
>>   };
> 
> Why are there two arrays with the same DRM_COLOROP_* = name association?
> drm_colorop_type_enum_list is the first one.
> 

This array is explicitly used by drm_get_colorop_type_name(). Connectors 
use an enum list for a similar purpose, so colorops could also reuse an 
enum list here, provided that the enum array index remains in sync with 
the corresponding enum value.

>>   
>>   static const char * const colorop_lu3d_interpolation_name[] = {
>> @@ -607,6 +697,21 @@ const char *drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_inte
>>   	return colorop_lu3d_interpolation_name[type];
>>   }
>>   
>> +/**
>> + * drm_get_colorop_csc_ff_type_name: return a string for interpolation type
>> + * @type: csc ff type to compute name of
>> + *
>> + * In contrast to the other drm_get_*_name functions this one here returns a
>> + * const pointer and hence is threadsafe.
>> + */
>> +const char *drm_get_colorop_csc_ff_type_name(enum drm_colorop_csc_ff_type type)
>> +{
>> +	if (WARN_ON(type >= ARRAY_SIZE(colorop_csc_ff_type_names)))
>> +		return "unknown";
>> +
>> +	return colorop_csc_ff_type_names[type];
>> +}
>> +
>>   /**
>>    * drm_colorop_set_next_property - sets the next pointer
>>    * @colorop: drm colorop
>> diff --git a/include/drm/drm_colorop.h b/include/drm/drm_colorop.h
>> index bd082854ca74..2cd8e0779c2a 100644
>> --- a/include/drm/drm_colorop.h
>> +++ b/include/drm/drm_colorop.h
>> @@ -134,6 +134,60 @@ enum drm_colorop_curve_1d_type {
>>   	DRM_COLOROP_1D_CURVE_COUNT
>>   };
>>   
>> +/**
>> + * enum drm_colorop_csc_ff_type - type of CSC Fixed-Function
>> + *
>> + * Describes a CSC operation to be applied by the DRM_COLOROP_CSC_FF colorop.
> 
> It's a matrix operation. It seems to me that "CSC operation" is more
> specific and does not fit the YCbCr-to-RGB conversion.
> 

Yes makes sense, matrix would be a more generic term.

>> + */
>> +enum drm_colorop_csc_ff_type {
>> +	/**
>> +	 * @DRM_COLOROP_CSC_FF_YUV601_RGB601
>> +	 *
>> +	 * enum string "YUV601 to RGB601"
>> +	 *
>> +	 * Selects the fixed-function CSC preset that converts YUV
>> +	 * (BT.601) colorimetry to RGB (BT.601).
> 
> This selects the matrix that converts YCbCr into RGB
> according to the BT.601 coefficients.
> 
>> +	 */
>> +	DRM_COLOROP_CSC_FF_YUV601_RGB601,
>> +
>> +	/**
>> +	 * @DRM_COLOROP_CSC_FF_YUV709_RGB709:
>> +	 *
>> +	 * enum string "YUV709 to RGB709"
>> +	 *
>> +	 * Selects the fixed-function CSC preset that converts YUV
>> +	 * (BT.709) colorimetry to RGB (BT.709).
> 
> This selects the matrix that converts YCbCr into RGB
> according to the BT.709 coefficients.
> 
>> +	 */
>> +	DRM_COLOROP_CSC_FF_YUV709_RGB709,
>> +
>> +	/**
>> +	 * @DRM_COLOROP_CSC_FF_YUV2020_RGB2020:
>> +	 *
>> +	 * enum string "YUV2020 to RGB2020"
>> +	 *
>> +	 * Selects the fixed-function CSC preset that converts YUV
>> +	 * (BT.2020) colorimetry to RGB (BT.2020).
> 
> This selects the matrix that converts YCbCr into RGB
> according to the BT.2020 non-constant luminance coefficients.
> 
>> +	 */
>> +	DRM_COLOROP_CSC_FF_YUV2020_RGB2020,
>> +
>> +	/**
>> +	 * @DRM_COLOROP_CSC_FF_RGB709_RGB2020:
>> +	 *
>> +	 * enum string "RGB709 to RGB2020"
>> +	 *
>> +	 * Selects the fixed-function CSC preset that converts RGB
>> +	 * (BT.709) colorimetry to RGB (BT.2020).
> 
> This selects the matrix that converts optical RGB from BT.709 primaries
> to BT.2020 primaries.
> 

Ack on the documentation.

>> +	 */
>> +	DRM_COLOROP_CSC_FF_RGB709_RGB2020,
>> +
>> +	/**
>> +	 * @DRM_COLOROP_CSC_FF_COUNT:
>> +	 *
>> +	 * enum value denoting the size of the enum
>> +	 */
>> +	DRM_COLOROP_CSC_FF_COUNT
>> +};
>> +
>>   /**
>>    * struct drm_colorop_state - mutable colorop state
>>    */
>> @@ -183,6 +237,13 @@ struct drm_colorop_state {
>>   	 */
>>   	struct drm_property_blob *data;
>>   
>> +	/**
>> +	 * @csc_ff_type:
>> +	 *
>> +	 * Type of Fixed function CSC.
>> +	 */
>> +	enum drm_colorop_csc_ff_type csc_ff_type;
>> +
>>   	/** @state: backpointer to global drm_atomic_state */
>>   	struct drm_atomic_state *state;
>>   };
>> @@ -368,6 +429,13 @@ struct drm_colorop {
>>   	 */
>>   	struct drm_property *data_property;
>>   
>> +	/**
>> +	 * @csc_ff_type_property:
>> +	 *
>> +	 * Sub-type for DRM_COLOROP_CSC_FF type.
>> +	 */
>> +	struct drm_property *csc_ff_type_property;
>> +
>>   	/**
>>   	 * @next_property:
>>   	 *
>> @@ -424,6 +492,9 @@ int drm_plane_colorop_3dlut_init(struct drm_device *dev, struct drm_colorop *col
>>   				 uint32_t lut_size,
>>   				 enum drm_colorop_lut3d_interpolation_type interpolation,
>>   				 uint32_t flags);
>> +int drm_plane_colorop_csc_ff_init(struct drm_device *dev, struct drm_colorop *colorop,
>> +				  struct drm_plane *plane, const struct drm_colorop_funcs *funcs,
>> +				  u64 supported_csc_ff, uint32_t flags);
>>   
>>   struct drm_colorop_state *
>>   drm_atomic_helper_colorop_duplicate_state(struct drm_colorop *colorop);
>> @@ -480,6 +551,7 @@ drm_get_colorop_lut1d_interpolation_name(enum drm_colorop_lut1d_interpolation_ty
>>   
>>   const char *
>>   drm_get_colorop_lut3d_interpolation_name(enum drm_colorop_lut3d_interpolation_type type);
>> +const char *drm_get_colorop_csc_ff_type_name(enum drm_colorop_csc_ff_type type);
>>   
>>   void drm_colorop_set_next_property(struct drm_colorop *colorop, struct drm_colorop *next);
>>   
>> diff --git a/include/uapi/drm/drm_mode.h b/include/uapi/drm/drm_mode.h
>> index 3693d82b5279..f7808e7ea984 100644
>> --- a/include/uapi/drm/drm_mode.h
>> +++ b/include/uapi/drm/drm_mode.h
>> @@ -968,6 +968,19 @@ enum drm_colorop_type {
>>   	 *         color = lut3d[index]
>>   	 */
>>   	DRM_COLOROP_3D_LUT,
>> +
>> +	/**
>> +	 * @DRM_COLOROP_CSC_FF:
>> +	 *
>> +	 * enum string "CSC Fixed-Function"
>> +	 *
>> +	 * A fixed-function Color Space Conversion block where the coefficients
>> +	 * are not programmable but selected from predefined hardware modes via
>> +	 * the CSC_FF_TYPE enum property. The driver advertises the supported
>> +	 * CSC modes through this property.
> 
> This would be a lot more obvious if it was called a "fixed matrix"
> operation or such. The current wording never mentions "matrix".
> 

Ack.

I also wanted throw this question out there. Since we have introduced 
YUV to RGB conversion colorop which essentially replaces the color 
encoding property, would this also be the right time to bring in 
something to replace the color range property.

I recall Harry mentioning in the cover letter of the original series 
that he was working on something along those lines.

==
Chaitanya

>> +	 */
>> +	DRM_COLOROP_CSC_FF,
>> +
>>   };
>>   
>>   /**
> 
> Thanks,
> pq

