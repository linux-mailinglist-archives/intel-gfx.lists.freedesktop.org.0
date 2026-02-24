Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GHlHCaATnWkGMwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 03:57:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A751181316
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Feb 2026 03:57:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3F5610E48E;
	Tue, 24 Feb 2026 02:57:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rzm03IL0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5FEC410E48D;
 Tue, 24 Feb 2026 02:57:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771901852; x=1803437852;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4hIEZ4fk1bYzVNZG4Dtdk7mj3aLZ02tiBATtmpej+lU=;
 b=Rzm03IL0Vn4BMwlqJQAJ8roayxWNGJwQSTvWkze2De4ooJln/WSOycqe
 Ed+7000e77pv1d2fL3alwu7biWvaSQCNwIt7ntVSStQqKani/zRZ2ikhB
 65To6FOnhjnY2gJ0232fC5SRXuPo1SuhkW431zwhItMACE6lNBz1vfcPa
 nCgmbxAuu59V2LxolWFTE0WI2vT2/nzIPD8FZgGQdk0/fPr9un93SslHI
 4O+SCIfSGAhpU148eKyHMTBYkOMd2T7/5HIP5PWLxo1e+83igl6Y6ed01
 gcJpwSY9OpUR7XQdFciQ1oWyPBzlyL6Tei2uZtGajUVTF+aS0N6VCiix3 g==;
X-CSE-ConnectionGUID: OevyNDhqQsu09aisuChr7g==
X-CSE-MsgGUID: UrQ7Q4WXQ+WqEd75JPCkuw==
X-IronPort-AV: E=McAfee;i="6800,10657,11710"; a="71940255"
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="71940255"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 18:57:32 -0800
X-CSE-ConnectionGUID: H2D9Ji1GSM+0h2Hcsm7ewg==
X-CSE-MsgGUID: 2eCSMfvFQGmIHrawF6aKyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,307,1763452800"; d="scan'208";a="214043942"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2026 18:57:32 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 18:57:31 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 23 Feb 2026 18:57:31 -0800
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.25) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 23 Feb 2026 18:57:31 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FA1iy29dIfe4aIg8baQgEXqsPdmdCcIzBKOnk0OL2MBZe7LRrRUgl8e+J43kjAxLU7RN6eysKOBEsB+iBrReUFT3DWFtBj8GMYVY72B3tQ7ZRELxHYTgdli+NYCNZVZqToAX+KvNgE43JHcXKT/5Uqm64KXYXWTv6S4yX3ILrrIYh1sscv+GG22DeWcXAgS7WEJdBVIVNF6uLC2O4TlmgAXCtQLhb2Iq8WId+pDxo/Nm7oaekd+yjZeL7QXR/tGNcW3LGoEapf+QW79DMJ/gj6MOxPN/Vm3yuNgRe/0z/tVSQGA+dPM1c1LGFvcs2x4PDgpsrDNdu+Rv6JEarc+Xjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ejwBau715jhEwoKFecPbjNnC4D3KFQAVzkINYPSZ3ro=;
 b=bcW0huqoCWQi8GkEeChbWPChM1ihQkXFdbOB7Oe3cJh4/eoGxTHNLTwlZZzdPgMVeiGp2e0Dkx9Vhf6c7hrAWprwKEn+CE1SHEDXsFxMmd3T93bN8PT2ommKazXh1IQZImcTZ3EVGHSi5vZdIG9dBV1PelCVHkDamYEo2OMrd9qNMlSZBQ/F5hDgvhDdq5mJmjPcyZ51GYpGAhSdHJSY/WhMyydgsoekc0RJ5XYDsAzy0QTfDEFcpyZ+j6/l2hIIzryeo7bYLdsJKdFGMryw8vHqZHNwFTEf4RflT1KIZjd2cY4YKqz4Ms/i0Zz3LA02/S6YqbmLrb05YkJAaMT3Yg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by CH3PR11MB7676.namprd11.prod.outlook.com (2603:10b6:610:127::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.22; Tue, 24 Feb
 2026 02:57:29 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::9d4a:f89:f548:dbc7%6]) with mapi id 15.20.9632.017; Tue, 24 Feb 2026
 02:57:29 +0000
Message-ID: <84718850-dab5-462d-97fe-f62c21dcb30d@intel.com>
Date: Tue, 24 Feb 2026 08:27:23 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/8] drm/i915/backlight: Short circuit
 intel_dp_aux_supports_hdr_backlight
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>
References: <20260220050217.2453681-1-suraj.kandpal@intel.com>
 <20260220050217.2453681-6-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20260220050217.2453681-6-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0022.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:b8::7) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|CH3PR11MB7676:EE_
X-MS-Office365-Filtering-Correlation-Id: 216ddb2f-610c-44b6-32fa-08de735072d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aENtd2EwY252d3Y0d1Y5OUUwWTF0K2lVaWdmVTQreUp3bG9zL0I2cXhKb2dh?=
 =?utf-8?B?aXd0bU5jd3Rodkl0MlNGMWQ1cysyUktkbU1qYVFIeU5IZG1aWE1DelBwendp?=
 =?utf-8?B?ZnNIUVdteXRaam9VaUx0WkwwNE44aTlvamRlbEhMRmdtYXdhVmMyVzQ4OU9Z?=
 =?utf-8?B?TTBDVUt6eWtia1BVM2VWd1k5NkladkVOMHl4cGFBUXZhZE42UmhHUWVITFVt?=
 =?utf-8?B?dlpDYi92YW5wS2hPNlJGWm9OMzExRW1sQkpHU0U5bmV3MTJOWFlZeTBSbDEw?=
 =?utf-8?B?VGZtUkUrL0M0UVhORzY2dnAzcll4eG4zOUovdkdzT3FBMkhwdW8vY2EvNDl0?=
 =?utf-8?B?NVAyZkQwVGFMMlYxQ2VQaTl1TTBnWkhLYTJvMk9BS1B0Mm42WS9ubzRxc1VN?=
 =?utf-8?B?bStBanY0NHNPSk1SUEFlc2ZGcU9FOWNDek55cHliM0MrR2lrUjhFVG1TTzVq?=
 =?utf-8?B?QUYzUUVFVUQ2NU4xaEY4OWtML3NZbTNlUUZ4OHNQUi9Eb0QvcWs5YWxKQjMx?=
 =?utf-8?B?SlYxNElNSzloVmNBeEdyRWc3TWJKWkFmN0RGYzFzTTZ1V2xPU0NBbDQzMDZl?=
 =?utf-8?B?SDl4OFNpUUJCZ0J0ZWlhV2pGTlhvZ0xUM29rblFDNEttdzUzOHB5ZUlITndh?=
 =?utf-8?B?QUdRWStDRGJjSHh0YUpXVmJkOE16cjJJTldLdjlZUDlwOG0zM3FtcVcrRFpr?=
 =?utf-8?B?VXdGeFAySm5yL1Nma0VqZHgrbWxBWVJaWVI3UHAvbXhGQkhISkhaN3RHL0xP?=
 =?utf-8?B?TW9jRnBiWlJKck9hYXd4WUg5QXdrZVRKNkY0S0NBVGcwVkx6bG5hZ29iMlJ3?=
 =?utf-8?B?RGdidkFJMEdZbW9tbFFlREhEUnpvVUpIOUF0OEFGTU9PdHhRclh3U0pGUitt?=
 =?utf-8?B?clVlNUp1Z3B6Y2gxSzJQVjdBajNpakZTNHQrc3g3ckRwVmRyV1E2SW9rZ0ww?=
 =?utf-8?B?WVlzNDFFMHFRQTBMQlFUUXUyS0VwMDJOQVIzUHJnL1BjVVRDcksrZDhMUGU3?=
 =?utf-8?B?ZGlseTZWVEYzSTR1aFZCdkhZL0tNejFQS2NrRTl5WjVQdmhpa1dObjYvMDB1?=
 =?utf-8?B?MWI3NnlOcm9nck9MZDc5M1o1b3FqclczT3JGZmtHb24xa2l3OWJtTXozQlA4?=
 =?utf-8?B?RFRjRE5xZ1VNRlFiTEwrVjdCY2FmT3o3d3FWblNjRy9pODRvMTdkdGkxVFZw?=
 =?utf-8?B?V3FlZHl6YUpFTXpkV0RYR2RjWHRScnZUU2RGNXRIZFFmYzFKK3k5bllXcnUr?=
 =?utf-8?B?RmVqWWxEVkVjSTZmTnZVYzZaUzY4bDNPV0xITEpaKytNQ1hpQzdyK3V0azJl?=
 =?utf-8?B?WjFPTExEbHVENWJQVTM3VWlCYlRuNGVFd1RyTmxRdUZKSGRNa2pWL1B1QzNQ?=
 =?utf-8?B?cUEzRG5rVy9PdVpsVnh1bG5pSEs1cGJnREpjM0dYdnlzRkl6QmJRck1xWXVx?=
 =?utf-8?B?OFM1M3pqQTV0TW5paldXb3p3KzlXb2paTVRCQ1JNS2NRVzhtMFJ6anF5c0pj?=
 =?utf-8?B?VGJ1Q2FSTklZcjJsbjZDSDc2VVV2TDAzMzRVUGQ0MGswQ2pMRTRTSFZ5YTh1?=
 =?utf-8?B?aDhUTysvNXkySTE4QTlOYlQzVzgxUzhVTGtHSVU5RHJ6N003YVE3RmorcXBM?=
 =?utf-8?B?N1E5enFDREVlUFhsZzd4R1VIenhSaVBRZ0E5NnFNSHByZDVhU0FoS3VTcEdu?=
 =?utf-8?B?V1ZKc3pJRlFmN09vVVhZb0lRc2JEWHY3bE5JbmZZZFFDdUt0WjN3Z2pRa0VO?=
 =?utf-8?B?S0RTeEtFejVtbHFKbVBFMGw4NDY3bTdhTFpwMjVUQS9ubTNDNjRmcjdmSVV0?=
 =?utf-8?B?ZnZkclcyNkZxM0NzYzJOL3pPck9QajJSeFdiRjNwVmR1UXBBUjhjak5vYzQ5?=
 =?utf-8?B?NGx5TjhOdG5BU1JNam1EdkQ3RXFMZ1dqRjRENUZtYUpYeVRwMFNTUkd6bXk3?=
 =?utf-8?B?K3RsQWpTM1BXcVh4NnYvVkowcmJlSG8xK2RHMkZoSDdOd1JsUUM3cDRLQUFp?=
 =?utf-8?B?U3VQLzFMRzQ4WnRjYW43VmVwQnVYbUt3OGxVSWhpSnRCakRlR0FCNnoyVVE4?=
 =?utf-8?B?RndFZWVqM3FlL3RLTzJNYVZnNzVhTm1pdFNKQkJ3UFZPM3FiRkZlWWhHSnJQ?=
 =?utf-8?Q?jSMU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S3huWktDLzNCUWdjRThYTnh0TzJXSTI4eExKUWJyc0JnOStEMkYvWHpkd1lm?=
 =?utf-8?B?dzZGRlIweFNEMWpUU25JaGlKQjQvdElXQWsrbUdXbmhTVWY0b2FqaDFqNFpF?=
 =?utf-8?B?TmNkOU5IWkd6TFJ1NS9NYWRRdnAxdGJLcjhuak9uand3WERxMmRMWWY2TGt4?=
 =?utf-8?B?bGJkeDMwSTkzNXN1MnNuMGhKODNYVTRnQ01SU1ZKcmZMU3lMNkc5WVBSQXV0?=
 =?utf-8?B?dFlCZ2FwcS9zczBXVnJZYS81VlRHYittSzQxa2ZDczQvbjRBblczemNRajVq?=
 =?utf-8?B?SUlON3A2aVBWYVlmL1NRSm1lTE1seGNuRFo4aFJFMk90YkpIaEJJQXFWVmlW?=
 =?utf-8?B?ZlNPUHdaWUhRVmxJRFJhcE9jWFFuVzJvZEdxWjZLbHlTaHQvbUVpVUowTGhF?=
 =?utf-8?B?Q3p4UVJIejBTZkh1VmRXVm92dlQvWGlWQXdFZHRNZlljdlUyemFNRkNYeTF4?=
 =?utf-8?B?ZmlOR3BNb3JtMXA3aHljNFVCZ2l0azkxSkRwbzZZc0pOQkN3b2N2cmZHTzhw?=
 =?utf-8?B?ZmRZRldBbVR3QXhzdHhHYWNSQ2wrSndndExHWElvVmY4VkFObkNOMlFYdDFR?=
 =?utf-8?B?czUzL20vT3pQdk96OU5xbTBVTkZFRENrT2FUcExDQkZNZkFoVVl2WDMvZmo5?=
 =?utf-8?B?Z0VsM1BNOThnajdkcktnMFZtWDhoMVorbTIxYWtlT0Z4aktZRnh0T3h0UWQv?=
 =?utf-8?B?RzgyYzh6WE4rOWRNZGRJMUVJbnd2ZWlCLzF4Y0F1OXNISDVCdWMvSmduUWI1?=
 =?utf-8?B?USszanBXMWV4d0xDTlF1Q0thd0ZlVGFxL3hvMHpGbXpTVDBuWUNLNGxlSkY0?=
 =?utf-8?B?U0NLNHM0RHpheC9PdW1MQjFpdHMvVzRvNjFaeU1BVkpOcks5VXE5Ly81WDFF?=
 =?utf-8?B?UEJzTnFFaURIMmhiNVV5VUVHV1A4cVZNS0RvV0tnaVRYUkxKaktCTzJvNnpQ?=
 =?utf-8?B?L3lCUGxoS3VKOFJXcWhVOXFhTmZaWVY2QmV6dUJOR3RWYkd3SHBialBnczZ3?=
 =?utf-8?B?VnJmNFVENHF0S1NwNlF4Z1hLMUhGTlVhY3J0bjhGdXVFSW5BQmxYT1NkTUxV?=
 =?utf-8?B?MmRKQnRNNmJkRkhrczdKK09yZDZZYzEzY2ZEbklHL0djYUVQQjdUdndLdU5H?=
 =?utf-8?B?ckgxUXlaR0tveEw0c21nTUU1aW5Db2ZNWFRyaXk3UmdxR04wM3Foa2lmMDFq?=
 =?utf-8?B?VkZ4N3krOXdzVDNlZ0labXVkZkRsVlVVaW9ucXdaeEc3TG9lbHVUUlc5cGxp?=
 =?utf-8?B?SkJqdWhYd1Zwb1RvenY1SGVxbEFScGlHSHloT3NHUjNCcWxpZ0d5V0tVbkhF?=
 =?utf-8?B?QlpVaUM2MEZxcEhDd3NLYTNOMFlSN3RvWmN6TGtZdUl6eTdSNklYMFlhWnFJ?=
 =?utf-8?B?UThMNU9zdE1iWndvWHVncG5hT3dXRTJOM3VrVnJkZFJJdnh5amdrdUxjUm5t?=
 =?utf-8?B?dXJpc0Zwb2p2NDBiOFd2SGdjaEtQRlZoS1ZTYytxeWJxOFZHZWNHbmxadzd1?=
 =?utf-8?B?ekZNeHJZTGJDT25iV0lQc3lHNVVyOThjWEpmVXk1bjNPK2IwRXIyVkpTN0lN?=
 =?utf-8?B?ZDBEMUs5aEtzNTA0QXEwWkxLWG9QblFOUmlmL0xBR25oYk15VE8xTkJWRms2?=
 =?utf-8?B?d2hJR0Z0bUx2WGZjckt3VytRazJIWHNxRkFZL2tnRnBsZ3RJeGlSU3orRTZw?=
 =?utf-8?B?anQ2YmZIaU4vdjZhWkRRb0p3TllYaXNiM3ZEYUVEMEdUL0NnRURmV1duY2Z1?=
 =?utf-8?B?QXJQUFFmM1lhcTQvaTVpaURwNmJXaFpRS3piaUpXdGpRMlFtbzV2MEk5VVVm?=
 =?utf-8?B?Z3M0b3ZML3gzemxLNUhQYm9idi90czRqTDl2Y2FGRUlGWFdLdzZES1FUeFhl?=
 =?utf-8?B?UEZ5WDR5aEhuZ2xDa1NudjB2YTM0ekhuTkVuTnNMdFBTOTlLeGwwNmVobEta?=
 =?utf-8?B?c290RktEUzJkY2NKaFZzU3hkdUVwUjRNbVVTczNhemZPU241TTc1Vy9Qd2JK?=
 =?utf-8?B?VGVBQ09DQ3RDNm5FaWJNYVlQZHc3SzV0Sit3Wk03MHcvTjJGenRxZTRYUVZi?=
 =?utf-8?B?VnZZWDV2MnpVcEVvYVU1NkRCalRiRnZ6cmdVS09RQlJ1ZExEVjVHTXFIdmR3?=
 =?utf-8?B?a1BNT0FNWXlLTkM3ck03YktIWURuekNzdHRvdzhISjdvWGxVNW5ac3ArOXR0?=
 =?utf-8?B?UVhpdDdUQS94ekJGSVVkZWI4TE1kOUxINThEVmF0NW1iRTZ3bng0K0NFOVcr?=
 =?utf-8?B?T3ZoaVhWaEtTUWt2SzBJSGlROXdpNDRocjREcDVJQ3J2ZkRyZzNSQ1VSVTFT?=
 =?utf-8?B?NjdrWldQOW0vdFVUU2ppaVFDdVFmeUIza3IvSm5FcWVrZmpFczZNc0dmUnpX?=
 =?utf-8?Q?DsAkR9qifwxRNLMI=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 216ddb2f-610c-44b6-32fa-08de735072d2
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Feb 2026 02:57:29.7366 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: T/MATXTQk6C26wFBhLXghpIK3KEe+A/qls4ZHxhI8M4LEBfIFEZesTNkKL93mgkcIZokoyyY/tYIB0qn2WkEFA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7676
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 8A751181316
X-Rspamd-Action: no action

On 20-02-2026 10:32, Suraj Kandpal wrote:
> intel_dp_aux_supports_hdr_backlight() prints debug message for
> intel HDR backlight version. This is fine when dealing with eDP 1.4b
> and lower. When we are talking about eDP 1.5 it causes confusion in
> logs since we need to use VESA AUX backlight functions but this
> print causes confusion as to which path code take.
> Short circuit this function with a eDP version check. Make sure this
> is only called if eDP <= 1.4b
>
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---

Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
-------------------

>   drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> index a921bb4ccacf..c7143869bafd 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_backlight.c
> @@ -701,8 +701,8 @@ int intel_dp_aux_init_backlight_funcs(struct intel_connector *connector)
>   	 * backlight interface at all. This means that the only sensible way for us to detect both
>   	 * interfaces is to probe for Intel's first, and VESA's second.
>   	 */
> -	if (try_intel_interface && intel_dp_aux_supports_hdr_backlight(connector) &&
> -	    intel_dp->edp_dpcd[0] <= DP_EDP_14b) {
> +	if (try_intel_interface && intel_dp->edp_dpcd[0] <= DP_EDP_14b &&
> +	    intel_dp_aux_supports_hdr_backlight(connector)) {
>   		drm_dbg_kms(dev, "[CONNECTOR:%d:%s] Using Intel proprietary eDP backlight controls\n",
>   			    connector->base.base.id, connector->base.name);
>   		panel->backlight.funcs = &intel_dp_hdr_bl_funcs;
