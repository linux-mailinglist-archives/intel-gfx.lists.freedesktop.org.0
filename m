Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WC+zLgghHWqiVwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 08:04:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 208AA619F6C
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 08:04:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8250F112DF4;
	Mon,  1 Jun 2026 06:04:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QQ66Od/k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76977112DF4;
 Mon,  1 Jun 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780293893; x=1811829893;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=iQBZ4bfVzKjRj6tC4L8qCVxAomRuf5g6G4jNfLedYY4=;
 b=QQ66Od/kOqrrcHJDACAXnHHf+rD+Ap+RSkLayy9oLoN9yXOIoQEs09IR
 TEPiPLrOfH3g1u6aQzLJ+QEDLQVAOpMuYzEwgXF3BNRoIQp4zM7TLnyEt
 IQIBEtEqd5jE0bWa5WXpXkMpzpJqt64eytMOJyijemne1XYiB9jNipPYM
 aRSV4zag1w3mdSWwb6OJ4L9AU2jJXyPOF+ZPjviibVuaVfgKmogBus3iC
 88qDeQQ/tky9E8kEHg14s3pJvRCs+pBWCA+sMDd9jM6GWVxTbf9150Oux
 jD2UHb6VIDmZElDqBqYI4QGgVAmD9xFiePgU0Ysjyg8cQSo0LZUUSASNH w==;
X-CSE-ConnectionGUID: dhyVs/LWSk+Lh7rtSmFvLA==
X-CSE-MsgGUID: oOOBbsYhTYS9AG7b0S1w1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="98611573"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="98611573"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 23:04:53 -0700
X-CSE-ConnectionGUID: aj4xpgZNTEqq4/6YEYAwEQ==
X-CSE-MsgGUID: U64+SJXyQqqUhmxsduXBbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="239071066"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2026 23:04:53 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 23:04:51 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 31 May 2026 23:04:51 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.41) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 31 May 2026 23:04:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nozSH37/4qRrIoAeIdfIjX3e63AN8+c78weW6xWs2qN6Bighh/Q0IpGI70QJ8mdulhmMho6xBUKo/bhjkoV2hrPPxPN833n9VkXxF4t4UPiKrqoEXGnVO3cUlwE3jQ3Zc3R2vN+URXM8jStSXeyj70BJO4ruFp25ez97lCX+L+7gROc4PQFaE7XgZNNYI1O2m8WdMWMjssE2G1k7Lu81hdmWL+i8pGzDQDg3oVuKqyWd1TIYTJaFg5JHfxx8iV1a/nA0ttxioAEou4zugnsFiymu7+ePf+/PfsYP6vDaQZVtxPMQNg8GyAuEa7m43s7RkY9tUDO0Jd3Pi7G6GBWPdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2eJx3ixyrI2ftd7OvlQCqOmc6Z1CarZejNsUp2HarBs=;
 b=gmmTbxEhA69cj9K5I4Xf5XgVeWEAIm5nA4XijUR1sMtpnFQiLjqdk4vgzhE1hbxYczqffu8wT05RemKPGxaRmNhfXw7DdV5zWLlzPrgzi4PZmvMGL4fYyi0iQtVAwUVWUzGinLXOT2llXUqKOzzyj1yd1p5qiExkDdYi4Ud2AEXaBjmXEtwjvFic06lb9epSJECofDEwnde4fY5V/ygZtU4YY6ZUdCxC3qVX8nqwhFC8R4/qK5Xendrprz1ZZOYuKVQPei/KH3z5CB0oLfFFDVJJeiUYfraBMBbAxCzefXcj8n1rXxGFsGExgZW1imf32yyyOrc7lCl3QKGRPSSRVA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SN7PR11MB7993.namprd11.prod.outlook.com (2603:10b6:806:2e5::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Mon, 1 Jun 2026
 06:04:42 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.21.0071.011; Mon, 1 Jun 2026
 06:04:41 +0000
Message-ID: <3798d16f-fe08-4a6e-8cd9-06cf7bc692ed@intel.com>
Date: Mon, 1 Jun 2026 11:34:33 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] drm/i915/color: Fix step discontinuity in Pre-CSC
 Gamma LUT
To: Sean Paul <sean@poorly.run>, <intel-gfx@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>
CC: Sean Paul <seanpaul@google.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, Simona Vetter
 <simona@ffwll.ch>, <intel-xe@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>
References: <20260528230817.2455072-1-sean@poorly.run>
 <20260528230817.2455072-2-sean@poorly.run>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260528230817.2455072-2-sean@poorly.run>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0027.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:178::15) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|SN7PR11MB7993:EE_
X-MS-Office365-Filtering-Correlation-Id: cc7202d5-d250-4d49-4851-08debfa3abb1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|18002099003|22082099003|4143699003|56012099006|11063799006;
X-Microsoft-Antispam-Message-Info: sA3kagvEwU+qkHkvIu2Dpp67Q3AsGrgsyhl/oxyIclHH9dS6pM3tFpe81wXewjTOPH5uEUN4aa3GLo91MXN1Sz3v/9MkBkt/O36E39HJt4TrkBbDnb/wK+xN85Xn5CVk/k/xsRREvOcH1fpi6/H5jXGjpoKerRBA/yooSuaSN70l/rFhF+etRUzxm95Ml4TAgMF4PiXXNunhtWqgxd9EOBL0bgai5SSMf1kU0AiBHhXTnLuBDu+zrBcK02vstgOGTLTJbgm2k2C2ZGiK5ReYN1bbzJlJkcz59HwzMJtKlTiCVjyUEyAInUYHU5YAoX8Sv5/3NghdZbXWJavTiscAxrnSbbywF5ZJBhirTzeYqBombpT/YNcKWIeicQx7DE2VeQEuLKBBGnK7EChfjL4ReTAmEOWwc5NSRwKGPmoCXWYCVUeRh8MWhDXdlxgUD9/Zl5feaZMAr+yXY+gV0wIcv7Leb/2yTb9OpuHgNZ0KK7U9iZsnTdq43zQwSogRnJMJ1jdjZXUMADJKHyRBxkqxZNvlx4lJ7zBgl82usDhrYMcg0Gvfov5H35qolbaDPN2o/MXcCEdSJaT8KWT2ImDJDbstfkH2OmOQMBE7YSAWx/rjveM+jK/Nh/66V2J72g/PclXvqmLhWHD6u/Znth5dZoSzGbUxZF3V08p3RWYNiHvTQASk4DKNMxxp0Lv9ugH43j3e04kClu6ZTscqB7VQ6w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(18002099003)(22082099003)(4143699003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?blBkRG9QT3FYYzZDb2FXR2pIV0R4aGVjRldqYlBpQ3VGenlQdzFXai9mZVc1?=
 =?utf-8?B?TndEMCtQR25zZEl4MWR1YklwdDd3UFdMUTZsMVBINmRWQXJLYnE5TlJRcFgr?=
 =?utf-8?B?d3hyQ3NNWERkYmZld2hiYnoxRUJudzNtSndhendvdWlzM091Q3ZNckxVUGR1?=
 =?utf-8?B?NzVzR3ovdTdMWDVhOC9aZTZCOFowN01tR3huaXloSEtkT1U1REl4cEY3Ympu?=
 =?utf-8?B?TGMzR0d3UXc4QmR4WUhndHR0NzZWaXBXWVhLUEFTSU9DaTVKVFplRjQ0NXA4?=
 =?utf-8?B?WjlXeldhTlE2K09oZm1lUHJSdkhYcTkrU0ViaXFnUmZXbEZxcFJrb0dvR05h?=
 =?utf-8?B?MlNIVHJhWkpyQ0JMeElnQm9RNW1RYXRpbmUzclhhdUMvVEtSVDhYa2w3UU9I?=
 =?utf-8?B?OEx0NFlyeTVZTTB3akRQV25ZODREd3RpQ2tuVDhPOU9ncEpiTm1hNU9paDUx?=
 =?utf-8?B?NHhPQ1lyRXg4NCtMN09TeTAzQm1HRWFmcjQzS0l0Nnh3QTExRXVpNHRNVDdD?=
 =?utf-8?B?NTlmSGJqUzlIWEczK3RKdDhOdElWeHdJZk5UbE9PYUFJNGU2THlWWlNlSzI1?=
 =?utf-8?B?WjJYNUJhRnVYWFMwSlR1U2xxK1lUQmZtN05lZ3o3ZTZnNlc4U0dTckRhWVNy?=
 =?utf-8?B?K3ZBdzVwRURrdXpLNjA0ei9Qb2tDcnJpZTZ2Q0sxbC9DcC9xOWpVM05rdm81?=
 =?utf-8?B?b0J0dVRIM241a3M5bU9uczRWSWVieWFqV0wxS0RHWnhmeVBka1JZYkxxSnFu?=
 =?utf-8?B?RVNRK01aVnBkOUV1aHZhb05pS1VjMElYcWJpYXFhbmoybmM3dDFFSlh2eXk5?=
 =?utf-8?B?UUVWUVdlSEdBb2JBTXRoMTdya05IZGpIMjVyUm52ckdpRnI2d0IrZklDQzUw?=
 =?utf-8?B?NDFCQjFIVGo5L1JxQzYyQTkyZndJS1VuSU0wcSs4a1VuQlgzRVdIRnQwS0RC?=
 =?utf-8?B?eUhiL0NLMGtvN3dVVlZ3MXdaY0xtbWs5eG4zK0EzSENhNi9WZWdkYVVDL0tq?=
 =?utf-8?B?cDJUcWYvV2dqMi9UNk5HRmhrQmV3cEpCNS9hV3dpVnpuclhWdUtBUmJvRkZP?=
 =?utf-8?B?Y3RFWTJDK1NkeXpkTUpHcmpIbi9lVGJUR3BuSVQwOW5NeUtQVjVlWEZlcENq?=
 =?utf-8?B?czlGcU1yWkg2QW1qUmhLcWtDQUFWSG96YklPVGQvbURCRXBiODI0WDlBdjgy?=
 =?utf-8?B?dm56cmNDWStXckUrbUhsd3JSRkFEU3F0ak9RK3dGakNBaXhURVE4V3JybkpL?=
 =?utf-8?B?dHNiMkZDQUhLM0E2dkd4c3Q5cDJ5U2x0Z1BZTVhNNnM3aHJkODU2TVVrZHJs?=
 =?utf-8?B?YnYzejRuKzB4UUlJazU3b3hXREFkZTlKUlA0NllJL09tU3FKNUVJWnNLcDBJ?=
 =?utf-8?B?TTdqT2JXemlJNVVyMHVmZmQ4ZzJwT2lkcUR5bFpWcUV4RDkzMC9Dd1NURHlt?=
 =?utf-8?B?Mk8vd3NrY0ZWOWViNU1DcG9hNU9NVU1MZHp0dFlnUUtWdEpGbHVpR01md2VH?=
 =?utf-8?B?NktRWmVhUlFMUndjcjBBem8vdFF0WVlXWDd0SkdrdEp3eSttc2N4bDZYYzFx?=
 =?utf-8?B?KzI5K2xleXJtdUdXTnp4VFhjVHkxYXdYUGUzTjRKN2NnSmc4eW9TTkhOSDdV?=
 =?utf-8?B?MndyM2tWekxEdHl2MmJXa3lCWXgvbUI1elRmVFVxcSt3Q3JuQnpJZFZ0RFpV?=
 =?utf-8?B?ODhyODNmUlRPUVdTT0wvVmlPbS95SVhCTElLU2ZGODVlVlZDbjBCTllEMXQ0?=
 =?utf-8?B?Nml3K1NEUWhnNjcxdDI4NmJFMTZrV256TXRGdWpHS05uSDVTaEdPM1V5cmZ5?=
 =?utf-8?B?V2pUN0trQ3M2RS92U3kyQ3F0MS8vVVc5OHF0VHF4d1h3SlZEMllialprQWxp?=
 =?utf-8?B?TnpDbGJuckFzRDRaREV0RGR2bHdBSklOdlRyYkR3NXVkSEhPMkRWd3hPOG9i?=
 =?utf-8?B?NGhpUU1sckRHOXdSM2lJMUdRZzRUd1NwVDVwamF6WTFTZDIrQVFaRUVqNGps?=
 =?utf-8?B?TzBZaEJrOUdvem9NbGo0U2FMbEJwbGlpMDJxMjdYbFlQcWdPRHhocGJyMERI?=
 =?utf-8?B?QXFzNTFjVXVnMUpTM2s5UGJIOURYRE01OC92aGY2Y0MxOENDV1NGRy82eVRM?=
 =?utf-8?B?aUJCU2tac3BXb0lSZmRwUmhXSFZPNWhYZ1AyN3VWTXV2bll3ci85dHROSkdO?=
 =?utf-8?B?eHNOeDhscWdQKzQwNHpZR1NETTNsTmcvSmg0dmhaOUxUTHd1REZxU3pFVHla?=
 =?utf-8?B?YTkxV2hXa0k2elVrUEtPZWFHUWxMcWl2SHN3dDBVc0FIRllLTDlVRmdZZlFv?=
 =?utf-8?B?VXNBZUdTN0xZak95WFdaYnhVeE1KMGdFV3hsWWhVT3hIbHpYLzF6WW5TaTVv?=
 =?utf-8?Q?nPP00FEOLxdDE6hU=3D?=
X-Exchange-RoutingPolicyChecked: S7ZlBjKmYDa0vAjVbtU4xk0h3Dc4J4Nz74WpE2I2jLRJ0YRfLt1wnX2YLnHVWDywdd1NVnXhsgq/ZASHKnVF3rAoNUwAG4BAy3zk3xwDC6PuNLzk/HKOjyFNxiU6n1oHfMGiV8IZEYUg6qXtT1k73GbxjKLNqehUBdrc2MmvUVf/CuYa1hxc3dh/lo4pUT2yjDH5Fz7/Hu3SY7zf8oxcu3+IV46IX7RTpjF0+YbX6WHjBGkM8eOKEgYYvZzlPAw4p1mbn5A6UHFEd3bhGOyRvUTk9yt4HXm3/ER6jTFfOfz1Hrah5Rm3dFI+rPcQCASgUbArXvP2IklwMTIRaMsJKQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: cc7202d5-d250-4d49-4851-08debfa3abb1
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jun 2026 06:04:41.8029 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VH1RMGGh3RHmwEJyyqZYxBDKdDZlA+5i+5MaG4iXAt2LbsaSI7ZgMmG9a9PDiIOA7X87g7tszqh36x2sj4XwHlzLR5T59my5zj3gbeN9yKM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7993
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[google.com,intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,lists.freedesktop.org];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:email,intel.com:mid,intel.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 208AA619F6C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr



On 5/29/2026 4:37 AM, Sean Paul wrote:
> From: Sean Paul <seanpaul@google.com>
> 
> Clamp Segment 2 to the last user-provided LUT entry value instead of
> hardcoding it to 1.0 (1 << 24) to fix a step discontinuity.
> 

It defintely make sense to me that the point corresponding to 1.0 should 
be programmed to the max lut value that user-space provide. I am not 
quite sure what should be the case for 3.0 and 7.0, however, I presume 
it should be harmless for now. So as of now LGTM.

Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

> Signed-off-by: Sean Paul <seanpaul@google.com>
> Link: https://lore.kernel.org/intel-gfx/20260521180143.2143262-1-sean@poorly.run/ #v1
> Link: https://lore.kernel.org/intel-gfx/20260525135730.1122696-2-sean@poorly.run/ #v2
> 
> Changes in v2:
> - Split out into separate patches for pre/post csc fixes
> - Dropped loop bounds fix in favor of [1]
> Changes in v3:
> - Fix stale commit message
> 
> [1]- https://lore.kernel.org/r/20260519075245.383864-1-pranay.samala@intel.com
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 7185f3628dcf..458508bcf1f4 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -3968,6 +3968,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
>   	enum plane_id plane = to_intel_plane(state->plane)->id;
>   	const struct drm_color_lut32 *pre_csc_lut = plane_state->hw.degamma_lut->data;
>   	u32 i, lut_size;
> +	u32 lut_val = 1 << 24;
>   
>   	if (icl_is_hdr_plane(display, plane)) {
>   		lut_size = 128;
> @@ -3978,7 +3979,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
>   
>   		if (pre_csc_lut) {
>   			for (i = 0; i < lut_size; i++) {
> -				u32 lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 24);
> +				lut_val = drm_color_lut32_extract(pre_csc_lut[i].green, 24);
>   
>   				intel_de_write_dsb(display, dsb,
>   						   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
> @@ -3990,7 +3991,7 @@ xelpd_program_plane_pre_csc_lut(struct intel_dsb *dsb,
>   			do {
>   				intel_de_write_dsb(display, dsb,
>   						   PLANE_PRE_CSC_GAMC_DATA_ENH(pipe, plane, 0),
> -						   (1 << 24));
> +						   lut_val);
>   			} while (i++ < 130);
>   		} else {
>   			for (i = 0; i < lut_size; i++) {

