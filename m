Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MLYnECRkgGml7gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 09:45:24 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C418C9C76
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Feb 2026 09:45:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E2C010E3C4;
	Mon,  2 Feb 2026 08:45:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hz4z4Bo7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 37E8910E3BA;
 Mon,  2 Feb 2026 08:45:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770021920; x=1801557920;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=VfpOx85YJE6iVmT+MLzX8xoTephx0QYAH1BCBtdZkWY=;
 b=hz4z4Bo7j6tigVNgcBWkwsWnQtxOjIRPXZjm+bE0xnxUyiFVgsnYqOV8
 FgVziwilIqgtIc/kKMzLpOFHWNFe1YPxXujkfuGm792jUDdvOC+yzc3ti
 rkKNRl6NWDlX6DZNQzw+j9NYYaK5ISzeYKrh1jW8SH7owfsv8qU814HE+
 dh1HglhvepS3/G/ec7YKzFWZdWHNqL9tdlCs0h1VlIogKQyPHu1mMZaVy
 SRlPy7qnVjdVUsRZeakfm/0oDUFjDl4j5WXyeYw6wbqgld/UwQzPKxwMf
 xqVzsHETx53AM/FMrL8o5j27XzRs3DjKiZ7ePorYg7mKlMfuHkSb9Uymd w==;
X-CSE-ConnectionGUID: agKAAGNoROC/YO5s+Xv+nw==
X-CSE-MsgGUID: 4MAFI0dPRdOlVAf5WGwtsQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="71260364"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="71260364"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 00:45:20 -0800
X-CSE-ConnectionGUID: J4tdT6vkTbSMgx+keUVfkQ==
X-CSE-MsgGUID: xE14mo8FTYyATu9C/zF9Xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="208562688"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 00:45:20 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 00:45:19 -0800
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 2 Feb 2026 00:45:19 -0800
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.66)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 2 Feb 2026 00:45:18 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YApme5m1SF06Xqy8Z9OCBLQ48yTnMNUaxuRy+tzqCGPMBOnAM12stFhVHZRHOrTJSI8cI9Ay2Xfhdd4r8Bfng1Chf0/sy1iIu3xnXjebptXeLj5xemxI9Y0TpnB1dzgXBNSSOShLuGAmRR76IEuYbkrRVnap+PIQ7amNevdoulx1KLBOwhKzN4sAZRsAjFu61p9TzEEpgBIaqFgQ9PKTZZzUzSCcGXSbRyQw0B6gR3r2hnfuJbhew3QcWieK+G7GpzQk5dCF0Z4hffuisMm019LMyfRJuzTy+asu/sVcHh5d7Atj1aynTfbV+0SvOtNYwZfnO5BjBkrgGE+JUVOW+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5+DdentU8Cj/Fkj6RC3EOcolHZgKlPymvIRMu3Y0jNA=;
 b=OZMS/EI42yxiLWsqsTHug7rFb4Lm8sixFE2bK0ZwFu9K95FfvRBu+XZaZPLQezcOvpm207WNnKnwzNlvjyccOM8zrGNpxaYVX4iDQihMNeccScAa4JSMwJly4TRNLfPFbAzDIsVHLMpYIeq1RllTYR4Js2roNpw/j3Z3eefFLKzp8KncI7ZNJKY6nHvRLjoffnT2/TYtE/JutwM+f2XZ4mLiM+YwuOjNP8m+iFmFl++A3mRYnkWLss8brd89YUCMGAfu6uB5Yw3z44iGfKeiasf5Jiv8y35vxa1zF/JUtVDjtkdsYSkjQDqlcSxQrR2F449+FKsx2cmytLIBT1eRlA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA1PR11MB8280.namprd11.prod.outlook.com (2603:10b6:806:25d::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9564.16; Mon, 2 Feb
 2026 08:45:15 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9564.016; Mon, 2 Feb 2026
 08:45:14 +0000
Date: Mon, 2 Feb 2026 08:45:04 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v3 1/6] lib/igt_device_scan: Don't print fake link
 bandwidth attributes
Message-ID: <2w6o42r4xfhrkv2bhqeptru6szdvmv6qunam3y6t4uqkapclyt@m5zgjm42fsnr>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260128161041.225652-8-janusz.krzysztofik@linux.intel.com>
 <20260128161041.225652-9-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260128161041.225652-9-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: LO2P265CA0194.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:9e::14) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA1PR11MB8280:EE_
X-MS-Office365-Filtering-Correlation-Id: 4d44b244-0f09-4398-cb99-08de6237623e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VjRValg0R3BLWFBOYjBNQ3hWZHZFQW40dkd2VHZTR3FESGJMbDJQMGRoZi9K?=
 =?utf-8?B?N1VjN0R6dkxvanppWEp4QUlKMFJLTDk0WGpQdUt4WXIxMkdVcUFzdU45bUQr?=
 =?utf-8?B?OFpvZWJyTmtielJCcHVpeFBiZHpqZmJoWm9LYXpacjdCelV6cHJnbFYvS2ZH?=
 =?utf-8?B?OEYrdHB1YWV6NmNmSlVrUURUdlNOWlQwTk8vVmlMMVEzS1JCK2gyRlljeWRy?=
 =?utf-8?B?WnFrNVRPTlZna291RHhTOVl4Qmp1OWJrZTQxY3M0ck9QMzlUeCtNdEFSOEJs?=
 =?utf-8?B?R2pFOWVGVGlBbXJUYTE0MFhXSWIwNmxaQjdDMThqT21TY3gwWEdZME1NdXly?=
 =?utf-8?B?MnNaSm9WakVaTGZIUG9HalprekMxdmdVRXlWVGNLb2ErZTdWUUdrRldoSGww?=
 =?utf-8?B?Umd6aXhNd1lDRmM2TS9xYVY5dUYrTWRKV25OVHFHeVVjVVRmcWJsdmNLYWtx?=
 =?utf-8?B?OEpxYkdxSzNWNlFZTmN0aTM0TzJhdUVWV3JIM3RLZjlmRjltc0ZxMnBlN0N0?=
 =?utf-8?B?MU5JeVlHQnM3ZEptaE1oYTYxMkhoOVhqSmNrOUJLK3RDVzl0UC96cXFCRjJO?=
 =?utf-8?B?K0U5WkJYZ2VteWxlRDVCbmlLVGRqMTdIbDY3YVNIc2hieGQ0YnUybDM5eGYw?=
 =?utf-8?B?aEd6V1E4YTl6eFRJM0VnZEtYOXJHR2ZENGIwWEk3c0g3ZUxic1JqTW5xNTJ5?=
 =?utf-8?B?Tzhhbi9VR1Q0T1E2RUVhRkhPY1lUTXlUSGFZYXZhY2JSMytmU0kwc2M3bjJx?=
 =?utf-8?B?OFFCcDd4WG0rRTRIRGU3OWZjSStmbFl2cnRWL2JJRTlueFlSQ3drdXhBWWxw?=
 =?utf-8?B?SXkwMzJFbGJTU05BWDl6YlRrbkhFamVxdU5jdlBjNmo3TUJkbC91K1BwNVZn?=
 =?utf-8?B?Szc1Z0g4WWdyY293eHFWS243STQrcjFjU2h3akhiUm5KQ1VBTW03OHlHVW13?=
 =?utf-8?B?NXluL0h1d29tSnJJQkNtZU8yTVlUZ0VTb1FuNXZUakljbE9sNFFIWUhHVmpD?=
 =?utf-8?B?dStFM1ZXSXJnb01ycTU1ODdMa3ZkSzJsakJZbVBrQXhwVm5SL0oyMXRlVWNx?=
 =?utf-8?B?VlFKTDlDT1pJMUlET3ZrZFZIMzVoU1lLU2JqK0RrbWUxSlEzbk5YQzRqUW9Y?=
 =?utf-8?B?MjlYRnJaREtmNzRkYlFxbGZ2cGt6cWVmSEZsa0pXbE5wUnNsRklhQXB6Mm4v?=
 =?utf-8?B?NVk4NVdPYllXaHNtQmRLNDc4NElVeE5xMUk1MCtMR1ZkK1o5TnpucWhvU0Zj?=
 =?utf-8?B?K29DTllhQU5YYmRzN2dndmR3bnVRZ2kxQkZVaEc4ZnhxQnlkR3BiUmlnTWx4?=
 =?utf-8?B?bTk0bGh6dFV2eFFiRVlqYStMQlVaNEVSZ2kvbDdYWFc3VjkvLzNYb3M5cHZ4?=
 =?utf-8?B?V3RBY3dhWjU5YUl2TTVJRnhhMWlGcHJCalprZ2Y2dzd4cjlKKzFlR05kTTdT?=
 =?utf-8?B?Slh0OGlEcWNXa2FYWlpDMWZWUkJ2TkswV3o1NlZ1TmtWUTR3SlpWbUZuZzZk?=
 =?utf-8?B?ZTFObUl3SEI2WGNTVGdicW1ScjNNZDBDT0VFMTFRUHJjL3FxMnZhUXlaZzYx?=
 =?utf-8?B?YzhzcUVsb0JRRXVSVG5IQ0pGcytpYmd0UktiYmVUQWlRSjBOM2UwSTFqdEdr?=
 =?utf-8?B?bnErdTRMVG1RMDVsanptSlgvYTNKWkhCRTQ5ZVhyK0ZCNzFibkp1ZVprZVlq?=
 =?utf-8?B?aytneVFyaml0ZTZHVUI4b1I2a0JENTg2dGJ0SG5RV0dXWEp4MHpTZEhISXky?=
 =?utf-8?B?aUpXVUp5TGtRSWZsRUovWGtxL1NEakk1WE1WR1dYQWM0OTB1RWVjQXJmdm5i?=
 =?utf-8?B?SWRkV041MlR5N0Q1V1p3b0FtNmpFNU10Q3llby9ONnZGbmZLSnpVend5RjRM?=
 =?utf-8?B?MVlvelhBUUxTaXdzRzhkdWVHUHdvbVdaazhCTkdyQ0N4dVFIemV3Q3NCaHAv?=
 =?utf-8?B?QytGSGJadUFnL3lWWXcvaE9vaW1LWkNIZkk5SDdLbVhjd0RtbG1ta1ZJbzJC?=
 =?utf-8?B?aU1Wck9abVZ5em5YQlZJSEsvL1p2UVNFRGZnSVNXY2J4VzdTTFNtU1Zkb3Nh?=
 =?utf-8?Q?MffYUh?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RXBkTnhQQTA4N0JaUU1KZ1BtU2x6TmkvZ3J3MXBvbW14aHhPS3ByQW9mUHVH?=
 =?utf-8?B?RTNBQ3B4RkljS20zVk1YUDRtSDNmYndrY2xTRDY4cDRick5FbW03d3ljNjl2?=
 =?utf-8?B?MXVUaEIzcU01Y25zSjVaWFlVMG1wemxVb1JRUnRuMDVRbXBYVWJNZy94S2Vx?=
 =?utf-8?B?M0llNEVpVWptVGl3UmdWbGY0eDBYaVUzblJ2eVlIMTk0QzY0WExtcEE2VWg1?=
 =?utf-8?B?WC81TW1sSlhVQ2loYlNXQTcwUUVDTFViUklWNTlBcndLWEFKN0dGWnNHV1JW?=
 =?utf-8?B?d2RIM2JhZXh0QThmem1QU2FsU1RCM1hFOEJ3VGxiRXJFOWdSeklYRFowMmpj?=
 =?utf-8?B?QVQ5NkdDV1VTQktBVW9PeG5helNCd0xWMXZUTWpKRE8zNXUzWGJwNmRBUzNQ?=
 =?utf-8?B?ZThsYm1WbXJKTDN2ck5iVHdNVDIyRlRmNXFkQWc1UHlQd2s3WjNoWmpEdjRz?=
 =?utf-8?B?T2xRVXNYOGo4N1M1TkJBRDcybGN3YjlNVGhHMWVHUEtOSVZabm50dFFZVWRm?=
 =?utf-8?B?TS9vUUsrbnh1cDhzS3BPWUx4RDhvWnlTcjM0aVhId0VFWjBWOC9YMEZpL3o4?=
 =?utf-8?B?Q3V5Nm0vcXExak9xYXlCWDNuQytYQVR3SDhkTUpjVXdmQWt3M2RhVVpkZml2?=
 =?utf-8?B?S2p2Ky9yM1NkMjFxUmhWSFkzZVczSUpaS1JPS040MGZhKzJaQVh1UHA3bzdO?=
 =?utf-8?B?TTJUOUhDL2ZJVjBLaXMxTGsvYjhSZzJzeE43VVo0SU1OQlVLZElCdUtrSUJG?=
 =?utf-8?B?d3k4ZDZjYVJHZXBpbFY1M1hKY002ZHZCemNwQW81N3NiM2Vqb255WnlLcG5T?=
 =?utf-8?B?czA1S2Qzc3czUzNtZlFsRkgvRy9Cbk9rODd5alhCSEo5ZmJUZDFjenMyWS9G?=
 =?utf-8?B?TEx3QkJ3bEpPQWpiZXVpU0syZHUwcktKVlpSdE5WOUxHYks3UU9FZlYyL24v?=
 =?utf-8?B?dU0rOGJLOHdpMjZxTHBLSExJZVQyQ1ptOEYyZjhSZmJaUWk5VnpVVlJleWp1?=
 =?utf-8?B?eVJTakk3UHovdExoWk5WUlVBSFpzV0lQWFVQRnY1MG9FS1k3RmEwOVJvNytG?=
 =?utf-8?B?ZXhXTGZ1YUN6WHBHVEY5WFhnU1cwazlwU1l1VGpCSHBKQ3Rkdkdrb2JlT2Q3?=
 =?utf-8?B?aDdGSkRBa1hqTzZJUEc1WTZQWDBLTGcxMW54aVY4WVowTGpzb2NacGtuVWFM?=
 =?utf-8?B?Q1p6eG9WTndoOTU3RndsVVpyUDAzS3Z2a1ZDSzNzZk1rY3huNTIzVHFJUUo1?=
 =?utf-8?B?a3FHT243cWVxeGlqQTBITmFXcTVpNkg0WjZ1RzU1a1FBVlBSMnVPS3NMajNp?=
 =?utf-8?B?MXVQb3luK3FFcytwUlNNOXluUmNrVmhXVW1zUFZXM2Nha3R3c3EvR1lKR2ll?=
 =?utf-8?B?QSt4c1dhQnczZHpuMWhhMEZoZFlTdFdDNDViSVp2aEZvU3VXeG14Z1g1T0lR?=
 =?utf-8?B?Ui84OE9iVlBHMG8vYzZNclNXSHk0dGYrcForY2ZudHBMVi9FYmFKYzdUeWhx?=
 =?utf-8?B?MzRNc0o3N05XOEZDb0pHK0pDYWMyNjY0d1c1R1gwY3dwT0dpUzJwZnNHUDVS?=
 =?utf-8?B?azlNYVR5bHpOcGMvaUplU055aFdoY1M1YmpXOVZUOVFMMExJS1VLd0lOU3da?=
 =?utf-8?B?cU5XME9tcE0xSlQyRWZ0dk4yK0ExYXJ2bStidExRZWE0dlN3azZ6YWtySnVW?=
 =?utf-8?B?RHRXOXMzRk1ydHJvekI3S2xPK1d3T25tTE41bmlXR1V4K1ZFZk45Wng1aEhY?=
 =?utf-8?B?YjAxN0dJK0QwWUdCeXVraE9PY1pVT01QeVNSREtCVXVFQVRZZFlNamxOR1JM?=
 =?utf-8?B?aXN3QWVlWVV1d0t2cVJrdUw0dUloMjRHRU54YzlseHh5T2RiN3M3bFZwejlQ?=
 =?utf-8?B?REFvdFdBR25pRm14b3h4YW1wNjRwQ2cxc1Iyc1MxN0lLYmh4azVCaW9EUUhl?=
 =?utf-8?B?anV2d2h4V2x1Rk8xZkNTMnA4TGhEUDZJUWl3VkxmR0N0eU9QMGlpZXFmVndp?=
 =?utf-8?B?cHBJWVdKdFhXN1JRWU13dG1Ld1IrMlJRVTBIRVhsdHcvVEZlT0E5YUZIN1h6?=
 =?utf-8?B?U1ArNTJGUGtaZzJiQXNvVUs0QWRDdjI2djgrUU93eTIvb0JNM2ZXQW51T2Fy?=
 =?utf-8?B?ZEY1dW9DTXdFeG1NRDd1dENTcHFiSFRVRkxDUENaZFRsUC9sd05pa0JCTW5w?=
 =?utf-8?B?Q3JOZHdtdUJXczcyTFpRNDNuSGZ5NXhOeElRM0xIUC81RXBnT1VjMkRTb0FV?=
 =?utf-8?B?Y3U1YWFVR2RKR0xqZmprMWp1SnBGdEROQURLQ2VRd0YzVWN2OXZYS0pQZ1BI?=
 =?utf-8?B?L2FQb2hHR3NXWmlaVk8wR2JXRVUzaVNrVy9yQmdaLzJXeGQ1V2NlazdpNTZF?=
 =?utf-8?Q?l0mKdsEjbVMCDIxM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4d44b244-0f09-4398-cb99-08de6237623e
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Feb 2026 08:45:14.5452 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: XmTkGojhIKkc/lD4llV2NJwzf8gLLwnYfON8Ij+Gk9oROfuqV898aIkTQooEXS2X7euLteexx2LWJdKln2uGddFuuQNVrGuZ05FX5ff6qUU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8280
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MID_RHS_NOT_FQDN(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[8];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.karas@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 9C418C9C76
X-Rspamd-Action: no action

Hi Janusz,

> Users of Intel discrete graphics adapters are confused with fake
> information on PCIe link bandwidth (speed and size) of their GPU devices
> reported by tools like lspci or lsgpu.  That fake information is
> unfortunately provided by hardware, Linux PCI subsystem just exposes it
> untouched to upper layers, including userspace via sysfs, and userspace
> tools just report those fake values.
> 
> While we can't do much about the kernel side or general purpose userspace
> tools like lspci, we can try to address the issue with our lsgpu utility.
> 
> Correct link bandwidth attributes of a discrete GPU card can be obtained
> from the kernel by looking not at the PCI device of the GPU itself, only
> at a PCIe upstream port of the card's PCI bridge.  For integrity with
> content of the sysfs and with output from the other tools, we are not
> going to replace the fake information with that from the bridge upstream
> port, only show that port and its attributes themselves while listing
> devices.
> 
> Since the tool uses our udev based igt_device_scan library for identifying
> GPU devices and printing their properties and attributes, modifications
> that we need apply to that library.
> 
> As a first step, exclude the fake data from being printed.
> 
> v2: Keep dump_props_and_attrs() generic: hand over decision on omitting
>     link attributes to the caller, and implementation of the check to a
>     helper (Sebastian).
> 
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10753
> Cc: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---

I mistakenly commented on your v2, so I'll repeat it here:

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
