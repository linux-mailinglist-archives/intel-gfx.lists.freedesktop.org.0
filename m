Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 10214A16ED7
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jan 2025 15:52:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A7D8910E427;
	Mon, 20 Jan 2025 14:52:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f4R//0CK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6D84D10E427
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jan 2025 14:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737384769; x=1768920769;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=iaGBOULE9ZfftfK9vf9ZIY1a8TeZWhRwO0ZwPKxRqIQ=;
 b=f4R//0CKJ/BRmKxqWMvNSGk7hLMQztwPQ7y6xIyloVSucnb5Lr871TQR
 qWhdmGzxIKTdAW7AYZBgnlWz/10x4mS46XEzEU/djhbRYV5MLtkeauXFk
 pRfdQe04vFkLPVTXJOyiaMZvCMZziRtYdzFQ/lbGd3D7hKeIN/PA+YT9G
 QUdgnSF3DZMfI4WpRLkQX0GXtRXaOF9tWfgKCaRwHEOx1PTp/EU22Vgy8
 7hBkLctefJTN56NqkKm3wrtngzwEZqt6JmZ++GY3aksHmEhnzl0jVVrIX
 jaHPfIFz+bmnYQ4FMFjyWQ3LT6lb44LocSISXQdvAAuoKqhj52yZcydJO w==;
X-CSE-ConnectionGUID: m+r9Q0jTRbWDHntUgDhCQg==
X-CSE-MsgGUID: x61MKZifTr6adWBP5KBYmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11321"; a="25382690"
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="25382690"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2025 06:52:48 -0800
X-CSE-ConnectionGUID: lNkWfIj7TEy8WbdIwRa7bQ==
X-CSE-MsgGUID: qC2Z9+6cTFSFssXKfGNL8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,219,1732608000"; d="scan'208";a="106662708"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Jan 2025 06:52:48 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 20 Jan 2025 06:52:47 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 20 Jan 2025 06:52:47 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.44) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 20 Jan 2025 06:52:47 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mOVLV8EEmAKfuWufy+crUiX+DBQNaXn4w5v1USadRUopew8haPNwH8ie/beggSJUr1qGRIh1rT8Cd3d6VvUDrQrTroVkhP410+0pUJE85BZf355rO1mYI8VRIWl98LYMQQw19uNNSGUtiggoY6LUEXiCuTIT/ZtfG/0oqtfqihRMj60XLcHuMDF46afdBXu95Vq8dA5sEEPYslAR1D1ur88SELdCYM0ZjGXufLtO1xde9pgTin1VmZZIX8lyU20+ezD7fbXhtItXew1XmPVRO8BRjP/+h7PTW+7PdwWz9OIyjkxAWmSkKfqm0WW0xQ7+x/VLtL8oAj/2Zf+4w8GBGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GtjDSEFXiHbTEuao7Ljc1bQB5anRyR5WBFt4WsWfAZE=;
 b=EBNT15CRKk62Cw0sLmdVlGHV2YZuQIhOZE3wr7e3hNV9Gri7nEIXEmToEzM6iPaSWkRpVGPR0PMbLL5hVHJyGK/aLvugPtP9UrgF8O0lzsnRhAP0H6xDq4t4i1MKLbGkbmwhPtZly8Njijw3XoawyRXFmzsqUVWRe3mZEUnE/hTAfo3qa70hUQ9wqndX2OSwZ8W0wl2gnhykkzDSutrJTO0pYQz8VVkpp2vpgkuwZVFXsVLkp22kZJOE5jYtqYx5+Vc9FnDu7wbVyfvhatBO+PRKZ7zvUeFnzZdZcR65rpwxVyRvQRfAYHESR1Grt6efKvw8WUvTI4tTDFLUhOyAkg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB6974.namprd11.prod.outlook.com (2603:10b6:510:225::16)
 by DS0PR11MB6328.namprd11.prod.outlook.com (2603:10b6:8:cc::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8356.20; Mon, 20 Jan 2025 14:52:45 +0000
Received: from PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a]) by PH8PR11MB6974.namprd11.prod.outlook.com
 ([fe80::c0b4:f63a:9c33:ec4a%7]) with mapi id 15.20.8356.020; Mon, 20 Jan 2025
 14:52:45 +0000
Date: Mon, 20 Jan 2025 20:22:38 +0530
From: "Vivekanandan, Balasubramani" <balasubramani.vivekanandan@intel.com>
To: Ranu Maurya <ranu.maurya@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <sai.teja.pottumuttu@intel.com>
Subject: Re: [PATCH v3] drm/i915: Add Wa_22010465259 in its respective WA list
Message-ID: <Z45jNtZ9S7JiUHgf@bvivekan-mobl1>
References: <20250116093115.2437154-1-ranu.maurya@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20250116093115.2437154-1-ranu.maurya@intel.com>
X-ClientProxiedBy: PN2PR01CA0074.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:23::19) To PH8PR11MB6974.namprd11.prod.outlook.com
 (2603:10b6:510:225::16)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB6974:EE_|DS0PR11MB6328:EE_
X-MS-Office365-Filtering-Correlation-Id: 7d770085-be79-46a6-c385-08dd39621952
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dDg5QkN4NTc0Z3d1N1lHT1I2WWFRdWVuNHUwMDkxOFVreVV1MGtleFJtc3dK?=
 =?utf-8?B?Mks2Qkc0V0JBVFZUUUxwZU1DdmZkWkRaeVZIdTJCZ2l4TkRnQVlMWkMzRE4z?=
 =?utf-8?B?bUJjblBFMHdyb0F3RmZWQUdtSUJadVNYeTV4YTRpUEd1cFRVL3hwcmliL2tK?=
 =?utf-8?B?eC9VRk5MWmhvSDRVMzk3S3ppbVdNQkNadnVSREJyamZxWWRIR3Y4Z1c1MlVH?=
 =?utf-8?B?RlFqcjFTbW5ZYURTaFJmczRrclYzTjRqcVB5UjhjNktDWmxmcmt1SGJ5OU04?=
 =?utf-8?B?MFRyTytjK2pHYloyd0pFdUNFaU14NFlzNnh6ZW1iRzZ6eEUwOWZGOFhTOVlL?=
 =?utf-8?B?K0J0NnJuQ251SnlWWTNSdzdybjhjaTVsbHBOUkhxZlMyQlZQQjlnY0d4WG0z?=
 =?utf-8?B?akVqbExqU1d2UG5UbW0wOU90UWtidlJvSDgveTdnYlFIa1FTYWJDRExKb1F6?=
 =?utf-8?B?ZGJaV29ublg2YkduYVk5MFR6MWVkY1NLY0thTjh5QWJFaVM1emY3T0hTZngx?=
 =?utf-8?B?T2JlWDlhOE0wSWcrV1pMYnM5YXhaZGsyUy9uMGYrOC9ISXdTRDdzalVQU0xu?=
 =?utf-8?B?VmZHNU1jVGl3ZENtUFhKbjZpNFJBYlltQjBwWkpPVUovTGYwQ0h1T2NwZGlY?=
 =?utf-8?B?QkwwNkxRRU51K2Vza0dsZ3BvL3dtVTlKUWFPNHBURktpYmtINU9neE5JeWlO?=
 =?utf-8?B?YklQR3o2VFl4NnRWS1pTSGFqdmd0ZkgxSjhsQUpHeFlPcTBsY2d6OTQvYlkv?=
 =?utf-8?B?MVFKanVMRi9qd0FJalQwRlc5NXNWUk1ESmFqQ1lSNC9JVVpaYzBZeXVtUmEr?=
 =?utf-8?B?bFlrQnpzOUhPS241OVg5dlpEZCt5aGRTK042MVB0ck84SmpyaGp2cGFaa3Ry?=
 =?utf-8?B?WWlHcG1ySkdBd1Rtd293WFF5Y1F0eTBDMi83OFhMMVFEb1hiazVzd2QrU2Y4?=
 =?utf-8?B?a1BIZlZJbEpKL0tRaHlCaVprWkV0VmVKbmxYZjQvY0VuUldjU3Z0a09EME9w?=
 =?utf-8?B?Ry9PUnY3SkJwelYwYUQ2UTMwS0UvaUVoZnJhUTBta3pZcWJQZndKNFA4bjZU?=
 =?utf-8?B?ZkVHaEhSRUU5WldvMm9xME82dHl5NDhqNXBwYW11VFkwQytDQXBYSmZLaGVO?=
 =?utf-8?B?STA2QmFjazZ2UlhSSU4yaUZNSmJNU1JJaUZQQWRXN2JWQ1RRZngranI3YnI5?=
 =?utf-8?B?TnZkZ0pBMHFneUIyT3RhWDEzS0hGTzgrbFAyZXhYbFVFZkR6QjRNS3lXeUU0?=
 =?utf-8?B?UThxekxFdS9WM0FCSmMwRkFVZFFKRTVFVGRKTGQwVkl3emxudzV1WHBtbkdw?=
 =?utf-8?B?bUhjNG9wc0o4UWJVeE1Za1NNK3htMVlFcVNoM1BpZ1pwZHpvWE1MbDBpcWZG?=
 =?utf-8?B?VUxSb2Q4TGRaZXBGeGsvVlhRNDIxWlY3OVBOamo4RU9hZHA1MVk5ck0vd0wr?=
 =?utf-8?B?OW05TXpITWEwbDlJSTRJc09HYko4cDd3Y1RuOTl0VVczRTVkREdzc1g4VmZj?=
 =?utf-8?B?ejNhRWxRVWNzdUlObzRZc0ZsMXFKVllZd1FWWkZhTFVOMnJHRzhrRUVhSFRZ?=
 =?utf-8?B?NWtkRXVRWUVHbUQzcmdGMmlqQ2J1WWpFUWg2cWJWd3J2eER5OW9GS3gyMVZ5?=
 =?utf-8?B?d0dEYVBpT2E5dnk5Q1NlQVBBY1pzZDRObitzTm1uZTVwWTBnNG9HcC9ONzdh?=
 =?utf-8?B?VVBWK21kak1jZ0UzNHVad2trTGRSM0pCd1VqblUzTVNWS1ArZ0pzY3NWQmpR?=
 =?utf-8?B?MXJzeCtQYlRObFg0dHk3ZW1rWWhQeFNXQ08rYUhLVkVsZTk3SDRHajErT09p?=
 =?utf-8?B?NzJVQWZHQk1GcUE5a3UyVFNDQ2VvckhnVWthNnBuVjBtMWZZOUhmaFJtcUll?=
 =?utf-8?Q?RwxGRHRHDLoXu?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB6974.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c0FMZzVGajBsREhrK09rWjB0aTUvK21IZXBwZlVxaGErMlpUWGg5NkpBcElT?=
 =?utf-8?B?WVM1TWtGN3dyQndSTmNEWi9meUYrWEFjUFkyUEgySVJQblZXOVZBcmtIcGpx?=
 =?utf-8?B?QzFXbEVrRXI5ZnN2YmdvZmRiVXhoTnFrdEVvMnpqY25RV0E0TjFHRmtiMzNW?=
 =?utf-8?B?UXJUSjJWZWVCakxQM2pIM05Xajlrc0RwREtFUlkvQUkyZFRBM2hLTGIzVURx?=
 =?utf-8?B?WkdoT0VkZURXVXFDTStGRXAwcW1kYlEvSWxDUWhSdVlXTkdUTXU5V1I3YVZh?=
 =?utf-8?B?K2pBNkUzZWhZNTFBOXc5UzVYdkZUb3pjVWU5bi9LSEF0bWV5cElDNXR2eXl6?=
 =?utf-8?B?OXdUa1oyVGJKdHBRUVdrVGJnS3hlQmxIZXJYaGdzQ1pyblIrZXVvY1I5VHQ2?=
 =?utf-8?B?bmcxSU5McUxacEpkV2w0dU8ydjNoR1ZjZkNQbGpSZmJ0UzVXaFZ2eVFYbk1I?=
 =?utf-8?B?N3IzMXJ4aUxDaEVXVEMzRXJ4NWs4SzVVNVRKOGxaR3pFcnI3ZW5rZ0FWS3dv?=
 =?utf-8?B?SmJwUk9hNzN4bk9XR0l0NjFxd1FVckdmS3Q4bkRydVJ0MjdraDJjS1NGeFFi?=
 =?utf-8?B?Q3ZLOE9TWEx2S2gxdk5DQ2FoQnFiRlVrbWVDWHY3aUxTaFFadDdIZno1L0Jz?=
 =?utf-8?B?ZTdmcDdlMlZXZDZvdDdkckI4SUhQMjdheDcwakVVNDkzUzdCbHh2UWNCalRz?=
 =?utf-8?B?aDhid3NDUWUydk94TzNjSHJxLy9GUWNEVU95cWxiaTUzcFkyeENuRzhmbHBw?=
 =?utf-8?B?L25yeVR6N3pReXpFTVZ3aGZKMFVPSjh2MUIyZTZ2RG5udUdoL3RTZHY0QXox?=
 =?utf-8?B?UzJOZW5VT3o5NUZXWTAvZjNHOFRHODZNaFo0Zy8wTFhPbEpiUWxEZk5ZbG15?=
 =?utf-8?B?TGtHZTZKR0NSMWxZWW93M3poM1k1Z1daeUhYWHBtWHNkWlFqbGR6TmMvR3dM?=
 =?utf-8?B?dkRhTlZzaTNTRm8welZFS3BmRzZBSXoybUNwWUtLcnE3czVlUkVYQWNuSWpD?=
 =?utf-8?B?QUp4cUlCd3FUd3ZuUWtWVXhJR3dzS0NXaVRRcmd4TlowT3BaRFNjOUF2Wkp0?=
 =?utf-8?B?RjBMZGh0OVNlMUpZZE9DWVZLNWZWRFJVZEptTGR6UWp6NUM0YTZ0M1hBUjFL?=
 =?utf-8?B?VE4xZWg2V2svRHkwQTI1Q1R2MGp4bVMvSGk4V3VYM010NGczQ3VxdUJMWk4w?=
 =?utf-8?B?Y3pNaUUwVE1lSWgxV09qL0s4K0V5ZmRXV3pnUjlkSG9LU1V1RURlOHpYeEFl?=
 =?utf-8?B?aCsycDAxUVRvTVNNUGVvZXdHUHNHankwdGxyeXU2UGFKdTNHcUZoVE5nQUll?=
 =?utf-8?B?a1Jza0M1TkgyMGJkZXI5VGVEakgram83b01WRS9Wa0kyNXBUT0JldlpXS2ZK?=
 =?utf-8?B?NTUvc25rZFp3UElRcUlBcjBTRmRQdnJ4TWRGOGNKNnJva0FzNFI0Mjc5RU83?=
 =?utf-8?B?NWRxU1MySHYrQWJpcisxQUFjV3h5MVNVbHA5L0QyZzcxN2IydHhSdUFiTmY4?=
 =?utf-8?B?dXlvS1dsVUwrYnNOT0d2Zm84ZHVTTVdVNk5UVXpXSGFOajU3NnAxQzBsV3Nk?=
 =?utf-8?B?TWFPbHNHU3BhYlEvZGtuZk9zR20xNDBBMDNYZGpmb0hmaC9rZmVtdkRpWFZQ?=
 =?utf-8?B?enU1ZTJDOXlEZ0xDa3lwek9VZnZZMWkwVWM0TTl1bDRxNG5aZ0hNeWRPY3lX?=
 =?utf-8?B?N2ZYWE9jeXMyY3NkOHlkd3NGTGVlUmoyeEpWcUthc3NoeFVoQlgwckFIaEsr?=
 =?utf-8?B?YVp0Vlh4dDRYYTJrc1ZUTWpCYTdtMnRzTlRJSFJHOGpNWlYxd1NuUEw1S2Qx?=
 =?utf-8?B?eHlQd3FnVk1sZ3d0b2pSME0xWUVCdDFKWjNEQzRxNXA5WlFUWnc5OTJ2V1c0?=
 =?utf-8?B?OTBBaFQxZnZ6RUJISUZZVE9OdDBDeDRiRzVjaEZ3MTRhWlcxM3RzdGxNaDJ1?=
 =?utf-8?B?OGNXdWxyU1o1VjBESkFQSzFoRGh5NDRJZXduWDFJbldUVklnN3daUVhkRVNk?=
 =?utf-8?B?MnZ5S1VVeVdhOW1jSTVrNjJGc0ZCR2hicmtYb01mdm9MdWp4NTVUQ3pzWVgx?=
 =?utf-8?B?OUxSc2hpVTFqWkdxdDFGYWZnVzBtc0ZkRjhQUERPdXlrTEh6L1lQYmJudGlC?=
 =?utf-8?B?S0VjQ2dCU1A5SE85NkpLckRud1Z3Q1d2eXhpemROTDUzbnVFMWJkRG1kL3JV?=
 =?utf-8?Q?vHOSd8RrcwlGy6z1qyBQEyU=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 7d770085-be79-46a6-c385-08dd39621952
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB6974.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2025 14:52:45.5237 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cgoHR1y5dkfSi6XGMhYM1OoY84LUxLVJHvc19Dn7bxou5wY3lp6aqercnU+o9uUZ2t0UMQneCS3BmBj3scFJSDtCDVQ22YuEtKGfFIlInuQz9G6TosrS/IXFRb1F8aVs
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6328
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

On 16.01.2025 15:01, Ranu Maurya wrote:
> Add Wa_22010465259 which points to an existing WA, but
> was missing from the comment list. While at it, update
> the other WAs and their applicable platforms as well.
> 
> v1: Initial commit.
> v2: Add DG2 platform to Wa_22010465259.
> v3: Removed DG2 platform to Wa_22010465259 since it
>     was for preproduction.
> 
> Signed-off-by: Ranu Maurya <ranu.maurya@intel.com>

Looks good.

Reviewed-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Regards,
Bala

> ---
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 13 +++++++------
>  1 file changed, 7 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 570c91878189..277a4df31071 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -691,16 +691,17 @@ static void gen12_ctx_workarounds_init(struct intel_engine_cs *engine,
>  	struct drm_i915_private *i915 = engine->i915;
>  
>  	/*
> -	 * Wa_1409142259:tgl,dg1,adl-p
> +	 * Wa_1409142259:tgl,dg1,adl-p,adl-n
>  	 * Wa_1409347922:tgl,dg1,adl-p
>  	 * Wa_1409252684:tgl,dg1,adl-p
>  	 * Wa_1409217633:tgl,dg1,adl-p
>  	 * Wa_1409207793:tgl,dg1,adl-p
> -	 * Wa_1409178076:tgl,dg1,adl-p
> -	 * Wa_1408979724:tgl,dg1,adl-p
> -	 * Wa_14010443199:tgl,rkl,dg1,adl-p
> -	 * Wa_14010698770:tgl,rkl,dg1,adl-s,adl-p
> -	 * Wa_1409342910:tgl,rkl,dg1,adl-s,adl-p
> +	 * Wa_1409178076:tgl,dg1,adl-p,adl-n
> +	 * Wa_1408979724:tgl,dg1,adl-p,adl-n
> +	 * Wa_14010443199:tgl,rkl,dg1,adl-p,adl-n
> +	 * Wa_14010698770:tgl,rkl,dg1,adl-s,adl-p,adl-n
> +	 * Wa_1409342910:tgl,rkl,dg1,adl-s,adl-p,adl-n
> +	 * Wa_22010465259:tgl,rkl,dg1,adl-s,adl-p,adl-n
>  	 */
>  	wa_masked_en(wal, GEN11_COMMON_SLICE_CHICKEN3,
>  		     GEN12_DISABLE_CPS_AWARE_COLOR_PIPE);
> -- 
> 2.25.1
> 
