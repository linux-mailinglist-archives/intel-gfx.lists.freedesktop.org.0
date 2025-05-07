Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9713BAADF84
	for <lists+intel-gfx@lfdr.de>; Wed,  7 May 2025 14:45:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25F3710E7A4;
	Wed,  7 May 2025 12:45:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nBWdJVLT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C42EE10E36E;
 Wed,  7 May 2025 12:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746621934; x=1778157934;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=sVeJDPT9A+WZdedHSSsnKuloLR3xHOxCQZvy0YJ36Mo=;
 b=nBWdJVLTScn8Z+gbqdoC3zDwqSEFx1/gAvc1lp1SkcnnUPFlWHzBkqb9
 Dn1TZMpKWEBBkmGcODwxA30YsO03rwcLTTk+SPd3Py9XkvsGxmYk4R9eA
 B1D910rdLiJyAhI69szghpbF8nktMT11Bjz3639OGJE4WxHBtWHKUc9AP
 8xUodcTH7WR22zjbOc7iUDHoutrDjIz7h2DJGa+G2VGRS65qvzorMJygZ
 8k0wSBCf1ONp6f0lr5QARt5SrqfYV9IPWhU0npOsv9o9TfZCcYTVrAK5n
 1Qx+wxCNhC1jbW2LD/9yxTKT4J2U6Ef91801UAyuj+SwRQ1pGkGsEvKz/ A==;
X-CSE-ConnectionGUID: GLPYh6jWQ4eA2D7ptPmqvA==
X-CSE-MsgGUID: m18SMablT5K4jwfGAANhfw==
X-IronPort-AV: E=McAfee;i="6700,10204,11426"; a="59004243"
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="59004243"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 05:45:33 -0700
X-CSE-ConnectionGUID: kg581SK6SNuTDou6oTzSxA==
X-CSE-MsgGUID: WZpR/QsLT7y0W3OpbhnA8w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,269,1739865600"; d="scan'208";a="140788663"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2025 05:45:34 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 7 May 2025 05:45:32 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 7 May 2025 05:45:32 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 7 May 2025 05:45:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K+ljOUjB65MXSAqj1nwIYuT5ZiwKBY+EXd6+Bp3Bb51HZi08xrefXyz/WxkNbTVwIiS0mkaIbpB7N+ZliVAXB3xSn7vu5WGPvUdriCbwFaYbGPGA0fubPLPFhn9Zlgnzb0C/fc614qkC3NggrsMEewHvp9+/RK6vCVWxli0MqsGItij1ZGV79lfwvt/Cy3g0mC1lcmmlagH4gwplCZRQgvpKmaR/h0w668Ho4MjNG/Ecgg618oLpkHD1AVG0JkJmp/cWH1s3e6hgCb+xZ9Y9GcYsDKMS6EN2kx4CcT5qakTvytts+CeZu8XGvSwOjVsWY5bhQBaWN82Os3H5zRJUfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ijrCPusVBVjg/3R2xouylasdCahlD7k5x462nBS0ZiA=;
 b=ETcK3MU5CB2vcI3aZkWKVMq8nel10eZfVoyliu1hW8SNLYkO0G15g5/FiMCtlxj1AqE3PLErJsb/GkasajcR71c8B4roZIvw1jDh8wOf+oKtFX3G57CI+wfsxBQD+eJHT0+NZkrBwzbwHMyXv+kOr3FLo3nmcGLkgk0Dclyatvm71z3snGjAQqSOgiXFjBzBEIJ8wY3I3OnC/0KLavWZVDjNJ3Y8Rnmx2oCQqcOYnflyo3RcXZ3qFCeezY4frgDxJAIs+YLHZK1stAJtMZI1KEr+AlLf19eMQxgHWq9chDlnQ0no5wNEhMU1Hux+vS19kQNuKurjj4YvINSI/zLQ/g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN2PR11MB4613.namprd11.prod.outlook.com (2603:10b6:208:26d::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Wed, 7 May
 2025 12:44:57 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Wed, 7 May 2025
 12:44:57 +0000
Message-ID: <cd82e4fb-9185-4227-8c06-df4b451250cc@intel.com>
Date: Wed, 7 May 2025 18:14:51 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/12] drm/i915/display: Factor out intel_display_{min, 
 max}_pipe_bpp()
To: <imre.deak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-10-imre.deak@intel.com>
 <abe21867-4735-4e73-a16a-bee34658cae7@intel.com>
 <aBon62ld9JyoRuY1@ideak-desk.fi.intel.com>
 <f5d72e0e-894d-4061-874b-d56d13741caf@intel.com>
 <aBs80q9JJaCArh9W@ideak-desk.fi.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aBs80q9JJaCArh9W@ideak-desk.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0112.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN2PR11MB4613:EE_
X-MS-Office365-Filtering-Correlation-Id: bdf19781-d24c-4eed-f5ca-08dd8d64f931
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bjZmWWVZSEx4Rmczem0wZzJIdFZKeEllcFBPdjhFdVpreGJuMXErb1RhVmpJ?=
 =?utf-8?B?eGowR1VEQVVKb1k4ZEJUWDdsM2wwQXlsbnZHSC9qdnppekN3RFJuOXIwdVVP?=
 =?utf-8?B?TXBUSFdFMnlzN1hXYVpsbllpM3ptcTRleXNzbzJ0OWZ3UCtvZTBUUjErWTBy?=
 =?utf-8?B?dkE0R0IrejIwUTRCVzBkQ2FIVUZCbXZZdlB2azFybHVEd3U3VURNQ2IvSVpo?=
 =?utf-8?B?UFQrcDNsa2JjamxUTDIxOTUyQTk2dmNwNWNRRC9QRGIrQ1M4NVE4cnRUK1RK?=
 =?utf-8?B?UGFnbVA5WVdwdnIrVFB3OUN3dmZCVS8yYUJwY1BuSW41akpOY0puWTdhU1NL?=
 =?utf-8?B?YmQwNEgybENjOTNqSEd6Q0htcTI5dC9CaWoyWG9Dclk3Y3Z2QU9tRzdESjdT?=
 =?utf-8?B?NWRveWVtNXRCQ21VWityLy9iSzhJNTlrL1E5WUU3VGdjNThpbjNCcnByRUhZ?=
 =?utf-8?B?NklVOHFEY1cwS0dPSjByK0pGZ3dPRmk4VDZRM3JqVXJIQXkwSzRGanVHL2Mr?=
 =?utf-8?B?OFQ5UHdabG5SdDl1UFdwNDMzNUpoRXJsL2JhRXYyUWkwZlI4K1I3d2Nuamw5?=
 =?utf-8?B?Q0syWWd6b0VXQUtVcDFuam5HMzloOTVqWHQyb0xIUVJjRU0zckVyUURrckpm?=
 =?utf-8?B?UXduMEw0YXh4NUN3MENCRlVkSEM3U2ZBSSs3VFo5eVBGanZUVlZ5YWI0b2Nw?=
 =?utf-8?B?WlZZMjJ2Q2J0bm1tb1pWdE9xd3lOdCtrbStLclcramFBMk93SHRuOVVBbzUw?=
 =?utf-8?B?aEZMRzI5MDFmT1BCYkE2RXdIWGxDSURZczYwS1pwMjE3cjRHVzV5RTZDL1lR?=
 =?utf-8?B?MVNrckIzUFZVcVI3Z3VvSlY0SUlkRDZPSFhTaEYzRUR3U1lyeGdEMDdQS3FE?=
 =?utf-8?B?a1BlL2dFaHdKZnU0QlQ2WTRTU1NCNU13YlJodDlOMFYrRGh4RWFUOTkwT1pz?=
 =?utf-8?B?WlMwWkN0bk4yU0gxTElaNkJoZGdPTW5LbVRNb1RjYkl4ZDhaUkdPODcwc0dj?=
 =?utf-8?B?ZHg4bmRTZnkxcHhxSi92dnkxUlR1NHUxODBIelNxTVUvNS9Lb2xzVFJISUtq?=
 =?utf-8?B?T3gwYk05d0t5QzRIMThhZmE3MTZvT3l5Y0hNREk3UHNaOGtoSXZ3N1JaR3NX?=
 =?utf-8?B?WWdqM1V4Q25kd0RzMWVuTzhTQnZYZTFhMUdESmFpZGVBRTk2bTdvRUZncFdN?=
 =?utf-8?B?OGt1Q1duNUYzRGJmZkxIMk8vQWlReHhaQmhLQ01iSFd3NEZnR0poSXkrTjFU?=
 =?utf-8?B?SDR5U2JSeS9TLzVtMEhtMWxCd3ZtZWdQY0E2OE1JNEMzS0o2L052YkhKNGFy?=
 =?utf-8?B?R203VWlBQ0t4S0xZRndTelVBYXI3V1hXbzlEdCtDeCtFd3NqMnhRaCtwbDJq?=
 =?utf-8?B?UU5xOVVVM0UwV3R2MTQvRlF1anpvWVI0S0xKNUZSSDliNll5VUFnSmFMNEpP?=
 =?utf-8?B?WW9Nek9tUGwwL3pGOUx2MktJZHF2eGRBdWk0K1VaaWQ2YkFUL2RrME5ERE5s?=
 =?utf-8?B?dWRVVTBGNXdaS1FsODZRVENIbFdXNUpndDNsSkNzVXQvakhidzVJcGJMV3hy?=
 =?utf-8?B?MEQzQ1N2dS8yOHNabzI4bGtZUndZdVZwNXREWXlkOFRQbTBiSSsxcVNEZjl3?=
 =?utf-8?B?NnR3bHp2b3lPV29Cck8wRTVLSnFWM2xiWDJsYWk0ZjFzRlp3akVpUW9hQjBk?=
 =?utf-8?B?ZXZwSkl0ZEsvdFVTdVNBOTdVMzZpYzJBYUl0MGxGRXlRYXhjQTdweWNWdWk2?=
 =?utf-8?B?M2YyUCtnRFdWV0JOaGRwYlc1bnZkdGpoWEJOTDI0VUdSQlBrQk5Nby9haDBL?=
 =?utf-8?B?RWdsRmNWNXJSa25LWHU5aU9oTnJ6akhJT1UxZ3RIWWNUSy9FNEJ0TDhUT3FD?=
 =?utf-8?B?NGJDbHBnWHd5T3Z0NWIvc3pObHQzVE9HRWNqM25uMUdHbEtHY1lJSlZ4MzJL?=
 =?utf-8?Q?vQR8KaUueTk=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QjU1eTdmMGNrNGpGdW5YZE9vdEFtZnd5UklrcTgzWFhCTTJHVUNnSXJRcmRW?=
 =?utf-8?B?dHgrd3VBZlZFcFdsRHhUcStMRHd2elRlalVhM1NDMFY3cmRhRUdvVjhHYTNm?=
 =?utf-8?B?U2FYN0E0N3hEV1Q5ZXBaRGI5SUZ6RjRxRHNicENxN0NqQytJZ1FRVXdtb3dq?=
 =?utf-8?B?bVBVTTdWQi9FajliY3NqWmExNEVOU1ptL3VvT0V2Mm5ZQW0xYllsSk9IU3Vy?=
 =?utf-8?B?elArbTl2SU9VUDdSd0Z1V203bmkrVGtqL2dlYkJ1YlZaT3BWOEhBZUZ2Nlhj?=
 =?utf-8?B?aUtRMjBvUkQ3WG9Hd296bHN2aUZKcjNMcStWS1VqSEQ3QlQ3aHhYYnV0UzA0?=
 =?utf-8?B?RXI5QXJjUzFQMndDdW9sWTVGSkJXNmk0OHBvTzhsQXZ5clN5SlJ0ZE9rL01y?=
 =?utf-8?B?QnU0TU5DYm1aeDY2NjQ3eGJicWZqUTZrZURneDA0M1QvTXFKYjdhL242QnYr?=
 =?utf-8?B?cFJsOEdiVWVHSzU0Sy8xejBQVWM0U29ERkYrWUtjU1NaS25Bb0UxVUdKcVc2?=
 =?utf-8?B?UVY3YUxLeHFvbHJ6THRzWWtLTWkyZWJZcU1TZTJpa1F0OXNVSU5tTTZFVWFu?=
 =?utf-8?B?aCtlbTdObDl6WU16TzRLM3BEYXhiNUdjRzIwSlNJSmN5L0hwVWhKZ25VOERQ?=
 =?utf-8?B?NFlMUkRpWEY4c2R1MlJLcWJrODQva3BMZklyTzRzYThFTWozanIxa242TW0r?=
 =?utf-8?B?KzVpeUd0QSs2REJLOU1QWDV3cTJWSys2U0szZkVFU0NoTmlmajA5cEdnbUwz?=
 =?utf-8?B?TWZLd2lSdWdxVERxZmFvSmxlRytYM3BYY1B1cHNSemxzTDdka0RMTW5jamhv?=
 =?utf-8?B?U2pIaGtxeVVOQmhYdHlzbWFRSmxZUVZ4WnNHRElGU3V0dzB5dW1WLzQ3QXBB?=
 =?utf-8?B?bUUzMFBubzEzM1BudndTaEpXTmU3aDA5Q1dZNmJSTXM5V05pS3I5aEMvcXAx?=
 =?utf-8?B?T3J5U0Z3UVJoSmppUFRaSnU3K0tXeWdWZzBzOThiK0ZPbEwvMFFyNjdUWDRE?=
 =?utf-8?B?STVOcG45TDh6dFNBdzhyYUVoUFZSeG5WTjZSMjMxR096ZUtVS2QwaHFJMWdG?=
 =?utf-8?B?VkU4eWZXdFd2a0ZCQjVpTGsxUjFtY2RaQWpEQlpmM2xKUHRaWERQN0VXS2tT?=
 =?utf-8?B?MUdSa3p2QUJFQWVKWUZNNDVuNDJzclFYZjhEUGVoVVYrM2pCdGU0Y01HblpW?=
 =?utf-8?B?aUxCL0ZQemNUMEZCTTZOaUVkQTZoYW82QVZIOEVzMEpYdkUzYlplOVl4Rnpn?=
 =?utf-8?B?N25XUFpPZjZPRHo5NWxMRmxHSWtXZzV2V2dVRkhQdW5sRzlkZ2UvL3o0UVhn?=
 =?utf-8?B?MEovbXZpeElEQWhHa1FmMGE3aXpmY3FNSGpOUWxQSDFMT2ZJOGo4cExTWGdr?=
 =?utf-8?B?QWd3bk13ZkZQUXMzZnN0TUwyNkFqWHNBWDU1dS8zSU9EUXBqUmoyWVlLSWZJ?=
 =?utf-8?B?bGtQM1d1MW5HUEU2ZndXSFRFNlU5Vk5mWmlKWGd3Vjh5OTNXYTNRamVKNEJB?=
 =?utf-8?B?ZGIzMnRZaHZtdjdLVTF3SGlhaFdtbVNxbTZCaHBqaGVvL3pHbWdacUJkSmsv?=
 =?utf-8?B?THFlUGh6c2Rta1V4b3lIa0NaS1c4UEh6c0QvRVZqdXR4N2dhT0NsUnZLTEFa?=
 =?utf-8?B?ZjdxZk5Qb1lrb1BUcHlpWUJwa1lwemY4UG9uT0lDdE9vUEowYzRKZVNNaGUw?=
 =?utf-8?B?Ykxtb1QyU2c2SVFveGRpYXo2VU5wU1Y1MWliQnZQUDBzV3Qyd2tKOWhpQjU1?=
 =?utf-8?B?blEwM3hjR2pkeGYyb0twYWNrcyt3MFg5WFMweHNmZGJJYk9Yb2J5WThHcjN1?=
 =?utf-8?B?eVdNU08vbmU2WXJCVC9uQmhjd25yYVpHb1JoNGx4dTBTekF5cjZtUjN5Umcv?=
 =?utf-8?B?b3lUT0Y5VFE1UEJudW9FMGd4WDZIMWVQNUxwdmZEYWJ5OU1zTmgydGV1VFFp?=
 =?utf-8?B?K0t0TlV0ZUVnTkxYUGkvM1R0Ymh3bCszTGtRRGNLUWRYSzFPWkRBcjNrOVVM?=
 =?utf-8?B?bkRhRE9Xc3NiNVZvMGxwaDBpV2hRWmlHbTR5WXRFNHNBaUxkOGpvSTMrc2lQ?=
 =?utf-8?B?TnV0NVpXelVSczdTQnhJUENKWjBqOVpwTHBreTI1Z01uRDVxZllFazlNQXF1?=
 =?utf-8?B?TGhKWG0zUUZjMUVJNGlIMnF4bGxhcG9XSHl5MEhxOEJCdFFzM3daRCsza0x3?=
 =?utf-8?B?cVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: bdf19781-d24c-4eed-f5ca-08dd8d64f931
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 May 2025 12:44:57.7076 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: e4DbZc0IPklYKh59G1nZOVLf6kNdmk6U3NOiy4yFw7lbcH18G+Sezvm2YSjnDQPw/0xs16kVvb0nYq0/PHW78AS+RkKIcZnX0of78cMg0No=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4613
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


On 5/7/2025 4:28 PM, Imre Deak wrote:
> On Wed, May 07, 2025 at 09:29:21AM +0530, Nautiyal, Ankit K wrote:
>> On 5/6/2025 8:46 PM, Imre Deak wrote:
>>> On Tue, May 06, 2025 at 06:37:50PM +0530, Nautiyal, Ankit K wrote:
>>>> On 4/28/2025 7:01 PM, Imre Deak wrote:
>>>>> Factor out helpers that can be used in a follow-up change to query the
>>>>> minimum and maximum pipe bpp supported by the HW.
>>>>>
>>>>> Signed-off-by: Imre Deak <imre.deak@intel.com>
>>>>> ---
>>>>>     drivers/gpu/drm/i915/display/intel_display.c | 28 +++++++++++++-------
>>>>>     drivers/gpu/drm/i915/display/intel_display.h |  3 +++
>>>>>     drivers/gpu/drm/i915/display/intel_dp.c      |  2 +-
>>>>>     3 files changed, 22 insertions(+), 11 deletions(-)
>>>>>
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>>>> index b4ddffe53e23f..cf2c11826ffb3 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>>> @@ -4301,6 +4301,22 @@ compute_sink_pipe_bpp(const struct drm_connector_state *conn_state,
>>>>>     	return 0;
>>>>>     }
>>>>> +int intel_display_min_pipe_bpp(void)
>>>>> +{
>>>>> +	return 6 * 3;
>>>> Hmm.. I think this is DP specific, for HDMI min is 8 * 3 = 24 bpp.
>>>>
>>>> I see this is function is used while checking for min bpp while adding
>>>> support for forcing a bpp for different connectors.
>>>>
>>>> Would it make sense to make this connector specific?
>>> I wonder if it could be kept simple for now and use the platform's min
>>> bpp value in the above debugfs entry. IIUC the
>>> platform/connector/output_type specific min pipe bpps are:
>>>
>>> DP/RGB:      18
>>> DP/YCBCR:    24
>>> LVDS:        18
>>> DSI/DDI:     24
>>> DSI/non-DDI: 18
>>> All other:   24
>>>
>>> It would make sense to add a helper and use it everywhere, but it would
>>> be a bigger change. Are you ok to do this as a follow up?
>> Yes we can have a follow up for this, to get this connector specific.
>>
>> Should we make the min as 24 for now, that will work for most things.
>>
>> Or else we can let that be 18 for now, and the tests when forcing a
>> particular bpp, will then use modeset with try commit.
>>
>> If commit fails with -EINVAL, tests will try again with higher bpp.
> Yes, I think it can be left on the platform minimum 18 (for now). The
> valid range of the debugfs entry is anyway the platform's valid range
> not the connected sink's valid range, so a commit can anyway fail if a
> value outside of the sink's range is set. This is so that you can set
> the debugfs entry _before_ connecting a sink.

Hmm alright, lets have platform min 18 for now.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>
>> Regards,
>>
>> Ankit
>>
>>
>>
>>>> Regards,
>>>>
>>>> Ankit
>>>>
>>>>
>>>>> +}
>>>>> +
>>>>> +int intel_display_max_pipe_bpp(struct intel_display *display)
>>>>> +{
>>>>> +	if (display->platform.g4x || display->platform.valleyview ||
>>>>> +	    display->platform.cherryview)
>>>>> +		return 10*3;
>>>>> +	else if (DISPLAY_VER(display) >= 5)
>>>>> +		return 12*3;
>>>>> +	else
>>>>> +		return 8*3;
>>>>> +}
>>>>> +
>>>>>     static int
>>>>>     compute_baseline_pipe_bpp(struct intel_atomic_state *state,
>>>>>     			  struct intel_crtc *crtc)
>>>>> @@ -4310,17 +4326,9 @@ compute_baseline_pipe_bpp(struct intel_atomic_state *state,
>>>>>     		intel_atomic_get_new_crtc_state(state, crtc);
>>>>>     	struct drm_connector *connector;
>>>>>     	struct drm_connector_state *connector_state;
>>>>> -	int bpp, i;
>>>>> +	int i;
>>>>> -	if (display->platform.g4x || display->platform.valleyview ||
>>>>> -	    display->platform.cherryview)
>>>>> -		bpp = 10*3;
>>>>> -	else if (DISPLAY_VER(display) >= 5)
>>>>> -		bpp = 12*3;
>>>>> -	else
>>>>> -		bpp = 8*3;
>>>>> -
>>>>> -	crtc_state->pipe_bpp = bpp;
>>>>> +	crtc_state->pipe_bpp = intel_display_max_pipe_bpp(display);
>>>>>     	/* Clamp display bpp to connector max bpp */
>>>>>     	for_each_new_connector_in_state(&state->base, connector, connector_state, i) {
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
>>>>> index 3b54a62c290af..b6610e9175a7a 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_display.h
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.h
>>>>> @@ -524,6 +524,9 @@ void intel_plane_fixup_bitmasks(struct intel_crtc_state *crtc_state);
>>>>>     bool intel_crtc_vrr_disabling(struct intel_atomic_state *state,
>>>>>     			      struct intel_crtc *crtc);
>>>>> +int intel_display_min_pipe_bpp(void);
>>>>> +int intel_display_max_pipe_bpp(struct intel_display *display);
>>>>> +
>>>>>     /* modesetting */
>>>>>     int intel_modeset_pipes_in_mask_early(struct intel_atomic_state *state,
>>>>>     				      const char *reason, u8 pipe_mask);
>>>>> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> index 0f89a301e4a0d..73ca9f8efefc5 100644
>>>>> --- a/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
>>>>> @@ -1198,7 +1198,7 @@ intel_dp_output_format(struct intel_connector *connector,
>>>>>     int intel_dp_min_bpp(enum intel_output_format output_format)
>>>>>     {
>>>>>     	if (output_format == INTEL_OUTPUT_FORMAT_RGB)
>>>>> -		return 6 * 3;
>>>>> +		return intel_display_min_pipe_bpp();
>>>>>     	else
>>>>>     		return 8 * 3;
>>>>>     }
