Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F4217B443B1
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 18:56:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12D8A10E339;
	Thu,  4 Sep 2025 16:56:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CsFNjeYj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0861510E2A8;
 Thu,  4 Sep 2025 16:56:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757004997; x=1788540997;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OHG7Zdrvqo3cyqGFno/Hgw/CfIKjuA5eXn3DDI6PpvE=;
 b=CsFNjeYjgrPVTNbftOG9/3XnPkKtT11hL0yOyOODFc3J18sQV4r8a+c3
 8p5gA/KKLYZ9gNFphvAa6XrI600OVfagm1uPeWAjY4UCOprGAnZTel+GH
 vC6ThT9Zy/MigqJOZGU85VjkbHDJIUJyYjJGfMC89aXiGtwq/nRm23oTO
 WWY4+7EeJxiWTCpgAJKp2S7ZHWlEyfzUJ5R9sv4XsdIIPxAvmfQv1yXJF
 Th/zQUv4RlexuMpmy4fbBSmNArbUtyMjYmU7AfUAk1C9yQS1jN3RpJ+Jd
 ayXXs6fQz1AlzIEfnV8OGRBXKohN29nfdtHUqFsoalIvgfgXRLlWSCV+N A==;
X-CSE-ConnectionGUID: nJGGqttiQZqYXHH9GH2wYg==
X-CSE-MsgGUID: uZdswP+7RvyoY7ghHLNlfA==
X-IronPort-AV: E=McAfee;i="6800,10657,11543"; a="58565365"
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="58565365"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 09:56:36 -0700
X-CSE-ConnectionGUID: wXOkW/YeTkmvW0qQfaBbRA==
X-CSE-MsgGUID: xlWAFZPdRE+TT2wsBjniYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="172302293"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 09:56:35 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 09:56:34 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Thu, 4 Sep 2025 09:56:34 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (40.107.101.83)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Thu, 4 Sep 2025 09:56:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Tf4pXP40dUWrnzfmC526AbYFwkFhQUYekj464J15F6rKluby3DVXLvrIvkLzCYWltKGJl2gd4ZKUrlScTyzk3n5P35MjD265Z7DBI9R0MqR3DNSmYgdu1ZMlQ19QgIwR9s0fpFmZ6JRW9aqqUqkHLow9SHCWzCgDjH2+qvCWrew8Moyb45jCZI+hdciCHLpIRhWPkKSA/XHJ1pZVstmschRrJ76a2DWnno+hqh8ZUsNgXbsrdJrtIQkTt6YQvhrYQEvQXMz9krcWbbjQqNp+t2f7mmsMl5SI8c8uFrwclgZlLBMTVVNc5uKGXUfgAzooj5izifm2E51N3YI6rSBrYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NGT2qGFXNno0UYOVs6hXcLwhOND+uNTBSl3hurE5Jo0=;
 b=x0i92zo/Tt2+CsdvUsr2VlamXduebQPenUaq7eCvPtsBnENmsIHqyWPVNR7ud9uuMcfcGIC1r+YVBJ4iILVAJTZFO9Y+/3pkTTUaV8DP8aIsxbseG9XCXnKSJ2tEOPWHaA1HpYGmaP3kgdMhjJAYy4sDM0RVIf8ECzFe69o77kIlyzvnIHoN9V4dnIofo6yXii9dDk0IJrUauK5ps4wdjPBjRhQlCG+to9AfXpERSHzVkMQ0/OJIyH1ZhKgtBkyLqEMFNxfg/onUGW0SNFrHx3qEkPXx+Osesldc02MMM66Ci6lp62g+LsKfg6wc7KAtLEPAxBLclhpBcRAtKO0lEw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by MN2PR11MB4726.namprd11.prod.outlook.com
 (2603:10b6:208:269::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.18; Thu, 4 Sep
 2025 16:56:31 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a%6]) with mapi id 15.20.9052.027; Thu, 4 Sep 2025
 16:56:31 +0000
Date: Thu, 4 Sep 2025 09:56:22 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <juhapekka.heikkila@gmail.com>, <jani.nikula@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <juhapekka.heikkila@gmail.com>, <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/i915/display: Use DISPLAY_VER over GRAPHICS_VER
Message-ID: <aLnEtkH2axNnG3td@msatwood-mobl>
References: <20250903170821.310143-1-matthew.s.atwood@intel.com>
 <175700478100.122246.8257747418250302965@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <175700478100.122246.8257747418250302965@intel.com>
X-ClientProxiedBy: SJ0PR13CA0179.namprd13.prod.outlook.com
 (2603:10b6:a03:2c7::34) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|MN2PR11MB4726:EE_
X-MS-Office365-Filtering-Correlation-Id: 1b012244-2f33-422b-0495-08ddebd3ff6c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?czdYMkNGVHFNRjV2K2lDbzlub0lwWXh5N0t4VFhIeEFBdDI0a21tNEE3MlE0?=
 =?utf-8?B?QmJxVG9MTDRGTlEyZ0t2bG56aTZvY2tkL21tdXVoVWVJcUdhQkZTUjkyb3Fs?=
 =?utf-8?B?SFBjVnJlVWVCSFc4aXRwTUdZUHd1Q2RZOUtxcW1SK0xKWmlDc2E0SXQwN2do?=
 =?utf-8?B?RlFpeVU3OCtVRXlHMVJWRnZHYUdHYW9tY1BOUWxkckVNSFE1Zm5WS1d5UFJL?=
 =?utf-8?B?amVkWDNVNlZsSTJXNFBKdDAzNmVwWThUUllUNm5SeXVnVDVmcmY1eS9xbXFT?=
 =?utf-8?B?UngrS3ptcUkwNG5MZVlzNkI5cGJyZm9aOE5Wa0lJWmpTR2VuOVBmRmtlbGoy?=
 =?utf-8?B?cjIrYVVXK1lRZVRyY3hFNTFQanBHYmF1K1J5aXJhTlIxZ0pNTFVJU0pNSmJW?=
 =?utf-8?B?bzdtSkJab2JjbElnZ1JvYk5LR1dIclVPcHp0WlZmYUhiOU9Ba0xRMEJIVzZl?=
 =?utf-8?B?WlI4enJ1MWcwWVRzdWM2MWtkT0ZXSE5BbUt4b3FSM25mcGxhZlJBVVVBTjlS?=
 =?utf-8?B?c1FkRWlWSjhSODNpeThZVk8xRjZmUmVpemgzMS9Sd0RZbm1ERXo2c1JkZWlZ?=
 =?utf-8?B?WnBqL0h3SGI2QVROQ2V4ZEdCYWliQ1UrdWRwTW84ZTllZDZzbVBrM3poblVK?=
 =?utf-8?B?aGhodGIxQnlVRlBhTTFZNWxNWDVlOHhydXdySThVa0dNWVhVYmc0eWt4ZDB0?=
 =?utf-8?B?S0tBLzJJSUJiYW8yVVlBUmNuQ2lHdVEvdE5pV0lqU0FWWEdqN2ViUlV5T2xj?=
 =?utf-8?B?V3Bhd0UzYnphcTNGVVJ5UlJ2d0QwZi9vS2VSdXNwWHdlNmJob0Y2VCtRUE9p?=
 =?utf-8?B?eWdCSjVlcVhrZ004TlYwdFJjaXNUWml5SlNWMjhldi9QRDFaeHZ5aXJ1bkxN?=
 =?utf-8?B?eDNTQ1VJMW9mRFRUOE5oN1B6NnVSNWR3L2xmRCthZ1dlWnZKbGF3WkpKRGJl?=
 =?utf-8?B?Z2RZeEVmS0dMN29YVVVvbWdQdDc0aXJNV2Vlam5vYTZndmlpOXQ0STl3UzA4?=
 =?utf-8?B?bmFkZnZNdXVkcEkyYkN5UWxuTXdTRWtVenBVR3JCckc4RFZCNVhqcDZRZlFH?=
 =?utf-8?B?bnFRV0kzZlF5WitGWXFkQXNKazllWlBNQzlpNlZlRTk5T2xySUczOHkvQUNT?=
 =?utf-8?B?YXdRVGJhb1JWMS9OVEFDdWlvM0tFeSt0WUlTMXhvNVh2VEtKeGFJc1hlVVhL?=
 =?utf-8?B?Nk9Jd3g4dHU0OVZ6c1NKaXN2SnltWm5HaTZMOUZjbjhxTktXZngrM1R6Mi93?=
 =?utf-8?B?UTdqMnU0anNMTWJrbEV1bm5LV3Fpd2hhVGdDckVJTXViU29jbTU4cFpHeU1B?=
 =?utf-8?B?UUlmamNRQkZ5MkNoRDR3SEJBQ2xsNi8rOFRNZmlWbGx0YmZMUU1zeU1oYXlF?=
 =?utf-8?B?c2RiRW81eWpKODdsUDg5eW1ERWNuUG03VENGTlZHMHJYci9aaHZxZ1ZRdkhs?=
 =?utf-8?B?VlVPTXpyZVFQWTFWZTRHL09NT0dFNVJPN05hWCtRK1VWVHhtN2ZjbTJ1TkF4?=
 =?utf-8?B?azBuc3dHbDEyTTR0NGN0VDhGa3ovTFVJeTY3QzdkcTM2dHB4YUcyWmljbVM3?=
 =?utf-8?B?SlJCcXk3WjhrVmJ1UjVxR25xeHdLNjRydDdEUU45M0k4OTQ4cm1wR1JjYm12?=
 =?utf-8?B?Mkpadnl4aXFGcHVXRy8xbDVrV0Q2c0VDanRjZTllb0ZxUkcyTDZZWUlPTFQz?=
 =?utf-8?B?eXJzR0thMi9KM3hjYW96cTV4ZDNobk1xeVVRVk1RRFl3cG8rVFd0ZkhqZno3?=
 =?utf-8?B?RzgxMDQyYjQrQkpYVC9ycW4yQ3o5ZFVZRHE0NjJLYUN4ZURsU2Z5b2NRa2tk?=
 =?utf-8?B?ckk4K3l4WXVidUJpZldoZWs5OXhkSVBsUFpsbFJ2Z0EvWSs0S3AxVm12SzlW?=
 =?utf-8?B?cFVlckIvd3hmczQ5OTlXNi9hQ0EvWDM4dnhRM2wxQzY3d3hVblAzSitFQW0y?=
 =?utf-8?Q?YPuOcFnoSNc=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SzVQZzhEbjFBYmFWVXZHMTFGTlhyN25Jbm5DenJPZVZLT3YvREQ0czJ3ZHph?=
 =?utf-8?B?YjByOFRjN29GYXBsdXBldS9EaXVCVUFsZjhEblNMUHNTRFhPdVdmOWdLa0NP?=
 =?utf-8?B?Q1g2K0s2Y0tSU0lpRkNGWHkzYjY0UnRSdXBTaTI1WUF5T3l1WkhzazNEV1ln?=
 =?utf-8?B?THFPRWhlWWxsbjkyU1hOb3I4dDM1VzJjUkVucHhPQ2R0cUlpUDU0aW4rWlF0?=
 =?utf-8?B?Q1d2dFpKQlJ5cE5JdFhjS3FRR3dPU29QVVc5TDNPSHZUVXJ6b0hiYUNLNUt4?=
 =?utf-8?B?cUZxR3ZJdzlrRnRSMVZmbldFZm9oQjM2ZkI5NGhoQjd5Ym1GdzQwemprakZY?=
 =?utf-8?B?OUtiQVQxdXVoWno0aEtFNUpDNFI2dGNpejN2bXA1aDI2VDdGZmJjSkQrREI5?=
 =?utf-8?B?OWU4SXNrMEFrRGxtYk5zSUVSVnhQVElVcFd5NnJuQnB3UjlZbDB5ZERTSUls?=
 =?utf-8?B?N2pzdE5ud0VTWm9sQWJHc0MzdWU3Z29UYTl3clV4Rkd5VVBFcDJDTC83OTQ0?=
 =?utf-8?B?V2NndjZHUnlEWHhTVGFmMTNIME16eHVEaGwwOWhzbjh2dFo1Mkp6Y2U2R1Mw?=
 =?utf-8?B?Y0Jkam1EbUg3WmZLbHQyYWczL1FFTzc1VnlUamI4NCtTYnZTeVR4T0J3M1hF?=
 =?utf-8?B?OHAwMVV6REtsYXlNWTVvMS8rNVN2ZzU3c1VRWi9VQkxxaEtlSWZyb2FGZmN4?=
 =?utf-8?B?R1FuQXZzZVFyR2Nra09sMm1NR3doYUtKcE51eXYwb2V0bi9IY3JmRXhGZE9J?=
 =?utf-8?B?eDhqaVFrV3J2Y091V1pxQXYzem1WNHgyOEErSVNndko0UlVJVUN5UEp3cWVu?=
 =?utf-8?B?VW5pR2NVaXllQzc4WW9HVzNFS0hWc25kVEVieGptc3pTOC9iNEpYbGhaZkJN?=
 =?utf-8?B?cGRJTXV0YkFBNGkwYTZhaDFIZVdudjN3enpaYUZFdVBUL0JQZzk0ejZlWEhL?=
 =?utf-8?B?QXVCd3Jvb2l5aUwxNDNIL3VBZnovaVZoS1hCN1p3QjJPK1cvUld5R1NVczU1?=
 =?utf-8?B?WnZ1MzRNQTBkUHNlSXcvOEtxYjd0MFl0eVdTdWswWTh4M281cm90NklsNEp4?=
 =?utf-8?B?aFI3RHo1Q0JOUE9VSzd3NTY2RTNMOXU1TlJFT1FHSGh3N1Rha21DZ2NsZity?=
 =?utf-8?B?VkQvZzdOdkpmdnl6VnMxdmM0WGhZR3k4TS9IeUlSckRCY0ZkNE9uSXhkTVBL?=
 =?utf-8?B?M2J2aERvUXEwcWhrL0h3WUR0Q2JVbG5BSFRqUUw1cXE3cml2ODNCbEtqQXBQ?=
 =?utf-8?B?U0JUT3JodjBnQVdoUlB5YnBaZUE2WDhWQ2FPNUVacDllK0p0bVNtZ3BLRWdZ?=
 =?utf-8?B?NjYwamI0MGlSbmRHdGJadm8zSk5BdnZJc2lQTGRiOVlzZE1sYkxXMy96UFhp?=
 =?utf-8?B?VTIxN08xd1pYTmNQRGNEZ1BkemE2ZkxyKzlOS1lnQ0RtRmlzN1VmRlUvWlZr?=
 =?utf-8?B?TEVzTkExV1k4TngzQkdGQ21pR1FWWkxnelpITWl2TENVelNQa1VXcFdGc3F0?=
 =?utf-8?B?SkdVNEN0NXRLQlNzRm5yUWtyS1p5QVVqM213aUJQYnpNa1E3cW1JU1RjNEJR?=
 =?utf-8?B?ZURoMjdNZWxPOTZCTmtXSlNFTGxFck14TThoeWFodFY5eFByVVpQRDlSaWhx?=
 =?utf-8?B?K2swbUc3ekwxVm51RGtrMWVVc2c4MHRnaktlK0t5UnllRjNIVmJPd1RKd2FL?=
 =?utf-8?B?ekFBSkN1RjkvaHg4bSs2RGcvK2dDS1NCbU5JdXNwK0FSdGhkMnFJdXRxOTh0?=
 =?utf-8?B?bTVxOSszZEJjWVdYUGJhQy90MlVIRnhDU1VocitiNURCRU1CcjZ4RmRaWVMz?=
 =?utf-8?B?QWgvZ1UvMC9PeHlHSEpPa3gzMkpsa29xc29JaHUzMzN4WkgzZ0VoaTY5Z0lQ?=
 =?utf-8?B?d1dGQ2tPRkMvVkd5M0lSUVZKUkRqb3d6dEF1M3BJUzh0UVNHbEVBTE40L2ZL?=
 =?utf-8?B?K1hBREV4NGo5SlBDSmcrc1hnQnBCUjRDalMwMTNiYVdCQ2ZXNjVxVStqNWY2?=
 =?utf-8?B?MFVCcEVaTlNxbyswMmVpaGhWS04wN2ZNdkZxMjFYd1BJcm9nVnkxK28ybTZT?=
 =?utf-8?B?V0JYR3E3d1ZHRiszSnZRaUdscWtiZzE4ZktDSnBRTFpvYmlwdVhGSFZMQlZi?=
 =?utf-8?B?TlVrYzgvRUtNb096QzhzSHhPNjlucktRZUo3SVU2eWIrdVdxMzRCOGdRckNY?=
 =?utf-8?B?K3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1b012244-2f33-422b-0495-08ddebd3ff6c
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2025 16:56:31.4708 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 111z+p0G5WleActekOOq2l3jm+8wrsp+dnB/usB913PaV6iSEriSuXJMgwgHAAH4NPpDxT/e3yB8hK2y/ZWl66XCQGFxJzTvg8a8eSYOwjU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4726
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

On Thu, Sep 04, 2025 at 01:53:01PM -0300, Gustavo Sousa wrote:
> Quoting Matt Atwood (2025-09-03 14:08:21-03:00)
> >The checks in plane_has_modifier() should check against display version
> >instead of graphics version.
> >
> >Bspec: 67165, 70815
> >
> >Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> >---
> > drivers/gpu/drm/i915/display/intel_fb.c | 4 ++--
> > 1 file changed, 2 insertions(+), 2 deletions(-)
> >
> >diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> >index b210c3250501..1e4cee857d7b 100644
> >--- a/drivers/gpu/drm/i915/display/intel_fb.c
> >+++ b/drivers/gpu/drm/i915/display/intel_fb.c
> >@@ -563,11 +563,11 @@ static bool plane_has_modifier(struct intel_display *display,
> >                 return false;
> > 
> >         if (md->modifier == I915_FORMAT_MOD_4_TILED_BMG_CCS &&
> >-            (GRAPHICS_VER(i915) < 20 || !display->platform.dgfx))
> >+            (DISPLAY_VER(display) < 14 || !display->platform.dgfx))
> >                 return false;
> > 
> >         if (md->modifier == I915_FORMAT_MOD_4_TILED_LNL_CCS &&
> >-            (GRAPHICS_VER(i915) < 20 || display->platform.dgfx))
> >+            (DISPLAY_VER(display) < 20 || display->platform.dgfx))
> >                 return false;
> 
> Hm... Maybe using GRAPHICS_VER() here was intentional? The checks on
> display version are already covered by the entries in intel_modifiers.
> 
> If we look at commit fca0abb23447 ("drm/i915/display: allow creation of
> Xe2 ccs framebuffers"), we'll see that the respective entries were added
> to intel_modifiers *and* the checks on GRAPHICS_VER() were added as
> well. Perhaps there are indeed restrictions on the graphics side to be
> able to use the format?
> 
> --
> Gustavo Sousa
Honestly, I tried looking for reasons. I couldn't find anything in the
documentation to support. I decided to send upstream to see if it broke
stuff to not do the checks that way. CI seems very clean. Hoping Jani or
Juha-Pekka will chime in if it is indeed an issue.

MattA
> 
> > 
> >         return true;
> >-- 
> >2.50.1
> >
