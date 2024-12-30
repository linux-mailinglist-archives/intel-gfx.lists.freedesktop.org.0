Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A1A69FE703
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Dec 2024 15:25:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D8A210E4E5;
	Mon, 30 Dec 2024 14:25:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dWSP26kh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27CF210E4F2
 for <intel-gfx@lists.freedesktop.org>; Mon, 30 Dec 2024 14:25:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735568702; x=1767104702;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=hBCTDLbwpsdJEW8NzOOOVMG6OFPj4bZsdin+IxXRSNU=;
 b=dWSP26khmYx/9ex4sE8i4dEs9RAmZ+SMlAaDNI4lGmVgcUBlV2ZnWTli
 HLUPCvRp9MHQkQ3rHIQ/cFR4hS+aWP9LuGp+Q/URUNjA4Gtzm7b1J5E7j
 4tg9cYG7JhCQyiRQ6SYyHnyyMoJEPS7sm1udGNr2Iz/lWFhWYTNfDpvxt
 h3ypTh1gH6NXvDc1gyiKOAEmJ+VS9OfhJka4UHEA4DLg/QMVlEklLubRX
 TUbRRQsQfP+NioCY+UYhpO39AbM5nLS5g4+N1pAh+JL85UZV2XQEK+8pC
 7qzmGbWQEXZfl1TgP+hII+tgdVj3FRaYOHCV+lQFo8M+FZrVOwBbBSqPS w==;
X-CSE-ConnectionGUID: GzseLgnRSVy4dAeAwiAOTw==
X-CSE-MsgGUID: EzQHe2u+Tmar7zJLC7aKGw==
X-IronPort-AV: E=McAfee;i="6700,10204,11301"; a="58319968"
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="58319968"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Dec 2024 06:25:02 -0800
X-CSE-ConnectionGUID: DsSJLEtAT+yTFl1sTFWR7g==
X-CSE-MsgGUID: OcIJrifaQeqMSvzLVgL3eA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,276,1728975600"; d="scan'208";a="131654589"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Dec 2024 06:25:01 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 30 Dec 2024 06:25:00 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 30 Dec 2024 06:25:00 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.45) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 30 Dec 2024 06:25:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QthsjXGqSTPhw8eP3sXDvc8uFuRx2cnS2QUM3gs+e7g9x81Pcr0WHPivJBB+2YsD4Wt90eeOV9SOLaE5Eagcqkap2m3P1Osr9n3C3s67cOUxuytc+WsIGYQ8sMMkEs2Pyb297O5O4Rvkesx/7P7wlGIqJQl6sykZqa7j+4JO/26Gky6JLTTh1jZWCodoe9w6+CSiRjb7qd7KTvFlDjWgwNBAajVW72kjZ91dI/Obv04O5LkLjd7ALEZEWCJD68HnBZxaNzWxpr0BPzNiM6+BFLxeSrfCVARrGgQSCDd/9eTUhwOCAU4o80XEm6ceCEVan252hQHeW6nu8MyZ+WlukA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Qxc5C7nL1fEOACrsy7eA3BURgcSAKY25BOMVyV+E9tg=;
 b=YpfBhmbHPg7HSgiFAw0J3h+wB+DP/Az8O8BFHQh24K+FrdZTw4QO2GP82Q8NFoMQ35nhsYwgy/+uSzSU7cle+zE5YbxN0PWRP5JnlPQft/9QVcQNn3G0IJQgvrAAERIjTDI33m3qW3sYbRK8LsXyVvvjO2qPz29makpdR2nFOTJhos5/tn3tv9/1DHwsH3e4CNfkPx90SVUMa4NtfzBKDVksrgsy/wEWNqI9iXq2G4djcOeOowzAGp0uh/DNXOEoA15FdIo7BTVJRtxOr+O/iX44Zu0tiXlJv/9LRZVBReV0XPIyMGVrHT69fIHYSA7i7oNCcK8Imzs5VkL8JEbygw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SJ0PR11MB5919.namprd11.prod.outlook.com (2603:10b6:a03:42d::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8293.18; Mon, 30 Dec
 2024 14:24:54 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%4]) with mapi id 15.20.8293.000; Mon, 30 Dec 2024
 14:24:54 +0000
Date: Mon, 30 Dec 2024 14:24:45 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <apoorva.singh@intel.com>, Andi Shyti <andi.shyti@kernel.org>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/gt: Prevent uninitialized pointer reads
Message-ID: <65l3gngdry65oy2itvpvydorrmy54efoc3uxbhgvejcwapxz4g@ltqxje6r2snc>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20241227112920.1547592-1-apoorva.singh@intel.com>
 <44nimknwum42txkpwoj6yavnfby2faz2nyapbr4k2i2up6y2jv@l76t4rtzknog>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <44nimknwum42txkpwoj6yavnfby2faz2nyapbr4k2i2up6y2jv@l76t4rtzknog>
X-ClientProxiedBy: DUZPR01CA0059.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:469::13) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SJ0PR11MB5919:EE_
X-MS-Office365-Filtering-Correlation-Id: 48c66f75-79cc-4a4b-82f1-08dd28ddba96
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?NnpFM0lIdEl6UzgzVUtWZmI2NXFBV2hTaisxV255RjIyUVRmY05aWDlNaldv?=
 =?utf-8?B?NHNvMytxcm9IUkNwNWZEUnphNXd4Y1pKTStadHdnVEpoM1RCaGVVWnNFYzNz?=
 =?utf-8?B?ZGF0Tk5WZWFqWXE1dHBMZ2ZGWXQ0bGdJSzA2YmZlb1dIOHBBTFA5Tk5QV2hw?=
 =?utf-8?B?ZXlTQUNDbXBNaWN6Q0J1REZ2cDdLcDJDOUdEK01saEpJaTM5Y0JrSTV0Qm5E?=
 =?utf-8?B?RDVwOW1xbEs2SG9Zc01LN0VWdVlyWlFnenlsWjRnMllQMHRpbS9vRFR1dmtO?=
 =?utf-8?B?b0pCVkp4YUw4OXlWdC9tVkcxb2Rad1hDNWtpOW4yYzF0SWFvdVl2RnZ6M0Nx?=
 =?utf-8?B?anVvcjdINllONzdNRHZ0TXFQZDcwL21NL3VnWXZTVXJQQnA2UEFhaUZSalFV?=
 =?utf-8?B?ejdWRnQ5UTEraEhUalFrRWozR0dQak9yTU8wMER6UHIzTEJVUVA0K1J5OTg0?=
 =?utf-8?B?dUxjb3JDRG42RDZTamdyK3B6NzQveVowc2VMVmtYaXJFRlp2WTFxZFJ0NHV2?=
 =?utf-8?B?K0tpN2NWTEVKM3hUWmVHOEhRL3V1WE1pSTJTRlNXWEk1N3lmMUJEUUhrUnJZ?=
 =?utf-8?B?M2RuOHdOeGNlVzlTcmlGOTBwM1JPeFFNSkRkZHlUUGFhdUFCQUJ4SEY3Zzlo?=
 =?utf-8?B?UjFJR1lrb05DdXhkS2FzK1A1WHlvZGowei9Cd2JuanhVamFNZE14ZndQOGY0?=
 =?utf-8?B?RzBqWnEwSFVIcFQrTEg2NW9HOE1MUmFkVlVkYTNrZnc3MG5KeUs0Tzg1ZGdL?=
 =?utf-8?B?SFBUandRamZtdzRYVTE5ZEtDeU1ubFNyTjRVM2xrZ3lkQW50ODFmRFRUM3Yw?=
 =?utf-8?B?YXcxNXh4a2JFZSttRjNXN0l2M3o0L0dZTDVGVCtBWDE2WVRxZkxtWVdCZjJZ?=
 =?utf-8?B?TDNxRjQ2WmFVT1RRSXp4OFcwelFqdXMrUWNJOTBaSjB2QTZoWWJOUmxIUWFI?=
 =?utf-8?B?ZkczV1ROVzM3cVprRWFpNUNGVGluNGdBZUFIN2w0dVEwNnF3MHkrSjh5NVd0?=
 =?utf-8?B?UmwxT1pMM1AvdE5xbGV5bDNGeUFldEh6a3FWRmhqV293QlR6ZndjQU44bnZS?=
 =?utf-8?B?TUZ5cWJsVVZzSUduNHZiNXN1MXFHc2U3RkUza3dEWmFZbTNvOUpoZ28rR1M4?=
 =?utf-8?B?enkvVVVjWHlnQ3NuNGNOMkdlbmhSTVd1TnRjRWJrV3BaVWVIRW5nUVVoSUdO?=
 =?utf-8?B?V3NweTEycVh1UUZGdmpjbStnQkRza2VmUnlBNC8xMFY5c2lmSVpSVGJxcE80?=
 =?utf-8?B?eXROaU1BYURKOENRSXE2eVpsS3VrVlVkSEFzaVhsK1dISytJRUd1MFlBSWc4?=
 =?utf-8?B?QjhhSS81V2pPUy9XRklUdFR2Ym5meUY5bW51VkhleUxzNlo2YmVzOGhYcFoy?=
 =?utf-8?B?aUNYWHZKeHhFQ0owS2hXTXdNdE9OOEpGM2IwaU9ydy9vSWNIbDhZV0NHQWxH?=
 =?utf-8?B?dmwxUHN3UWtsNmN0T2gwS2ZpenVRYmRVSnVNV05hSjVXOHo4Qm8zSEtlVHI0?=
 =?utf-8?B?RjN6QUhUQ0I0dW5UaVVvVFJYeDdGN2EzMi9pYjQ3by9tWEppN1RWUGtkVUFN?=
 =?utf-8?B?TWtlejdoZG01SHBGSWNhSyswUnJleFB6dG0xQ2NkTkdPR0k3Nm14Vit1c2Zn?=
 =?utf-8?B?N2s2LzJOdWNwY3R4K2Y0VW83NU9SNGhkRStjT1BnWXYrVTZucXVKSWI4SFln?=
 =?utf-8?B?Qll5cDBia2tleVZuMURjU09aMmNnRXhaZ0puT0oweE0zZnVVcGhrU1lNNjhI?=
 =?utf-8?B?WkI0dWVnQzZVMTkrNUZWVlg0VjJKR3ozMUNHQVpYMEd5aDhPYytkM25Sd1Nl?=
 =?utf-8?B?TTB4bjh5MjU2d2VLTEZuVW4rSXlEcVlqTlNqcUk3THVGc0YrYVdWR1dWSmU0?=
 =?utf-8?Q?/HOI9wU5yKfSB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OS9oRVN6SHBpYllsakpDbEJlcWtXMm1CVVlCM29vaXovbFdCVzYycjJxbnpQ?=
 =?utf-8?B?bVFLTGZxbElkZjJaSlh0anJEcHBQczZ2aG5YbmFaSmV2bTJFU0ZNK3dJSis0?=
 =?utf-8?B?Z01URTVOV2ZFLy8vSm1pclkyTVhhOEh2MEorQ3YvYmpWKzZHNnp4UWIzSk1o?=
 =?utf-8?B?NkVlTUwzMlFoalpIaGNCNmlVR2pJakdnWlFXcVRrL3RRMTQxNmQ4VXRRcEpF?=
 =?utf-8?B?NVptdm5aSnVTQUhPZU1nc1lHekVJbHdqUlljSlMrWGRnZEREUHBXUUc2VzJn?=
 =?utf-8?B?N3VCZzN4ZjZCMVRxbk9qWitzUFRTbElxZ2tBdW8yMitrbUd1Nk1remt4bWsr?=
 =?utf-8?B?NTFxVk9HMUNWVTZBdDZ0ZHp2Z2FFS0F3eUhKZFRNWXhwSFh2MGt6eDNlcStY?=
 =?utf-8?B?VmVjY1dIVlczdTNGMmlWanVZaGRRQkd0M3JQRjAvU0k4UVliUXE1YnM0YmtY?=
 =?utf-8?B?UVNUYVFBU1BLdEszQysrYWxlMXJta1VJUlJjQWRkMGVFcndpZzVuamV6RG1r?=
 =?utf-8?B?NmxoZFpNd1h4UEtGMmMyTGx3eHZtZk5oWTFpN2dXSFJNRDJZekxXQzYxSC8z?=
 =?utf-8?B?L01QU1ZXU0VsY044c1NYazFOL1hoOGo0QmwwdzE5clZOTm9TRWhVSWtSUExQ?=
 =?utf-8?B?d1RQSUhWS01mYkRLQThQMnh6eW8zaW1yY2xsS0NYYmwrVnJ5bHlrK0NtTjhF?=
 =?utf-8?B?VFFKZFdHL1cyaWtua3JCUHg3NzhpcWgwYTJvMDdaM0VuTkcvSmR2SnJPaVJB?=
 =?utf-8?B?RVAvQkxRRm5QY1pYVkJ6QmdSKzhLZldTWTNMOS81RjNRVEEzMnlqb1ZydCtx?=
 =?utf-8?B?ODY3TVZzWUM5cE1sOC9XUUtlOHZHYllUdzRvejJCRUhGN1ZiQ3cwOEhqdEdI?=
 =?utf-8?B?ZlVPbFNsVGVicG43SGw3QVFvU3lnckdDdno1UkIvZHNDcThyNStUL3hkT2Ny?=
 =?utf-8?B?Qi9FZFp2My8rQ1M1WW9MbTNUd21hRnpKdTVJZnNlNTU4T1M5NXc1UFRSc3d2?=
 =?utf-8?B?NnBkemQyKzduNGYyYTNxV3RKczJSVFRKMlRkczQ2c29lTUtQQTc4VmU1TnpW?=
 =?utf-8?B?MEZodE8rWWsydm5adFkyUGlMYldKUlBKUkhhV2x5cGFrbEZsc2JDUlhiVjEy?=
 =?utf-8?B?U0wwSVBVWGRPbC9yQ0xja3ZTYkpqQ2VjYVVIMmgrTStLTVhGZ2xZZ1pzMSt0?=
 =?utf-8?B?R3dMYmJxdGl2dnpETmJPV2c0clRCYzlpN2h1R0JQVWpJYTBWMGY5WWM2Sjlw?=
 =?utf-8?B?eVROSlRDbDRTZ05adVNKRFltMXdFeGdvdDc3Y1NKQ1c4b2dVOUVMeEtKOVV0?=
 =?utf-8?B?TktPVE1jMG1yWUNKamlLQzlxWExrSWxrM3JsTmFRSlYxZTVlVUdDM0loR0tv?=
 =?utf-8?B?bXFDZDJkeGdNUXM4eE5yekZvVjhOQjVvdFBhNFNNenZmTGd3OE5rdFJUS1l1?=
 =?utf-8?B?OHBQZDFQeFRPVVVKNy9vS1NEMGJHSWIvSDhnZW56Q2xZWWxMTzBoemVaYTAy?=
 =?utf-8?B?d3lrVy85c2VDMm91N1BsNFRwK251eVFkbzlBMzYzUnRQRVlJbjBQK3hzSGVy?=
 =?utf-8?B?Nm9xSmpBMVFFNzZ3SUFRZEhOZ2FVaGVYT05XSjVqUUJLUEFqSGZuWHNsZUFE?=
 =?utf-8?B?MU5kZFpnNEVOYTJDdVc1bkdQWjdjc1o0NDlTMk9JL2ZBZlJBSTc4LzVRMFFQ?=
 =?utf-8?B?cFJiUXEveE9haTZGRmNnMG52cW9LVTI1MmZSTWphWmx5dlc0dFc1VnJRTTlH?=
 =?utf-8?B?eXZVVlZ3UXRHSnRwcmJzQ2dFc2Nlc2twclhUQkQreG1jTTRmVmgrTm9vZm04?=
 =?utf-8?B?MG9NVW5GOU1XeHRqSGZNY3V4SEVST3VySGtzVXh3eW1XSklXcnBIZVlMRmdw?=
 =?utf-8?B?UzBCT0VTdkJUOWlhNjJ6b0R6VE5qTThkcVM1dDMrVXJKNnhsRU5TZ3pFb0pD?=
 =?utf-8?B?RHFkZjVHdjVMOGg5ZlVqcFRSelRLbnlJTGppWFVZSmk4TVZYVzlnTVFTTnRx?=
 =?utf-8?B?R25Oa2lJY2hwT3FwQjFKOEFjb2tGcXB0NDNTN3JSUEltejZvMFpxQSs2c2gy?=
 =?utf-8?B?VW1mM09WQWt6WmlaTXYySERqTUJGTkh3eExMREhyODcybmNjVjBYM3R6R1Ju?=
 =?utf-8?B?bzRwcVhYd2MyZnNCWUJPcHJFNzhkb211RkdXN3ZibFhFNU5Lb2hmdGJPbk44?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 48c66f75-79cc-4a4b-82f1-08dd28ddba96
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Dec 2024 14:24:54.1068 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GTYkcdsLKzjkmIARpA6PjItemUZfEsrCctDxLu9bc25b2ub4vmK735yKsp/xnjwbntKOWjfOV/hwmhS7PjtLYkS7+5sJXj9FTFZ+Z7Q4I9s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5919
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

Hi Apoorva and Andi,

> > Initialize rq to NULL to prevent uninitialized pointer reads.
> 
> where is it happening?
> 
> Andi

There are two instances that I see:
1) err = fn(..., &rq); <- this probably will set the rq (at least
looking at the functions that are used to set "fn", when calling
"clear()"), but from the clear()'s execution perspective there are
no guarantees that this value will be initialized.

2) If an "err" is set and detected before "rq" is initialized, then
there is a path that the execution might take that leads to reading
uninitialized "rq":
if all calls to i915_gem_object_pin_map() would result in -ENXIO,
then the loop would exit with a "continue" and err = -ENXIO. This then
triggers "if (err)" after the loop and takes the second "if", which
starts by checking the value of "rq", which at this point would still
be uninitialized.

I think this initialization removes these corner cases, so it is worth
introducing.

Krzysztof

