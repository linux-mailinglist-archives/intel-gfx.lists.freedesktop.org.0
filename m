Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42341B1807B
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Aug 2025 12:56:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEC9E10E3CF;
	Fri,  1 Aug 2025 10:56:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Zw8Ga6tH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08ABE10E3CF
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Aug 2025 10:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754045786; x=1785581786;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=OXmS0plfbhQr06B+4LPwLBRzcsI+4nJ/V869brBuhs0=;
 b=Zw8Ga6tH2dSGVQ6jjogJ351iOeeMzkvixqPE9hD+/rzwYrcjM2/nbI69
 3p2Zzhsh1QHgqSdjITK7n6DstVc3yBchjaHQd3+z4CpMHCsrp+Euok8Ck
 r9vqmpL/FdT8qS5MxMjWr/gRx2qvMJaafZmyoVm41Nv6Cru1P2fGWivcC
 qIoHKiVwmtVBaBWZffbcIRntwL3vnZeN1PoIjkfk7Mb2aQGggdwFfLqLc
 mN4rhN5vYGRwb3/cni86mb2RXt2llT3E1EwPduYnbRpjHdf/PPTswBqgY
 Cx0+GcsZOI2GmEFDeIRNlvPD2C4T59pHtyiNF8LaDCvqQbg25frHrWZIJ w==;
X-CSE-ConnectionGUID: GSOSbz8aRKupXJpH9l0tOA==
X-CSE-MsgGUID: J7rPxPZETZ+bzbxwBCymDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="56349165"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="56349165"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 03:56:06 -0700
X-CSE-ConnectionGUID: tFu0y75RR1yj257DHkyyOw==
X-CSE-MsgGUID: 0kD5vU1fTfO3pXP1k3ojkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="163459678"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 03:56:05 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 03:56:05 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 1 Aug 2025 03:56:05 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (40.107.244.52)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 1 Aug 2025 03:56:04 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QkUsi8CEvvISu13R5Gynnd2/bjfBeLoRXqludqwOpJ+XmGHH+KIj2z3RsUFWUz1pNIG6xlhRRhialyOuEmI3TEG3ZET3JRT+jmjaZNPoJEuXiP6XpIAI5y3FF2tEFX4Ns5z6gdxLiO33Rq/iZYC5PbI+7eYGxtEJ5/ccAcEnM2UoUaYBMRtP+MyL/q4tzuuuT/moz38E8JidmweHz3MRH8Hd5kYAQ9nMRLxzQDyCRhV7WlhF7xqcmsN3p+DUAW9EOonxjAlLRJzmK24Zhk3nyQs/NLhiuRhL0nH+zVwbSR4toxMplbsKZYrdLx2OQmJ1a9DyPaDG9ldnDe/hJry5Eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0r2xEQxiO3/N4t72XO1kbrSbu/yaOVnzK09oQY/JMyI=;
 b=IIrlJ4GgLV0dKbET+WS+k8wC3fuLnG/HIx789TtZqOs6+xFfltKbQ+RYngZNU5jX5bG/A+YCws3zqhHYDilvunrBbdFX/3Po6sDhztzoom3DvquH6xM5aeO2svdxb8UKry1mGXhStTjN2/1flVeAuHO2RpJ61OR/HoiAJ5/f5LTlY8u/v2I93qYltOiNthSgWMOme20bTNzQmrAgGnRXh89EEXPQN6RqUL9CZjfj3I8d4wIhiA23Wvzww3awCnTvUjTl30tAGYm3/+0dLSjQOPAycLqrwpS2y6FNPnPVy1Rvs8fOOUxiOkQ14YlNWK+Yq2rcC8OlDs3t/Wf6qP6dMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by CH3PR11MB7371.namprd11.prod.outlook.com (2603:10b6:610:151::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8964.29; Fri, 1 Aug
 2025 10:55:48 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8989.010; Fri, 1 Aug 2025
 10:55:47 +0000
Date: Fri, 1 Aug 2025 10:55:39 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Chris Wilson
 <chris.p.wilson@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH v2 2/2] drm/i915/selftests: Do not leak vm_area_struct on
 early return
Message-ID: <lgp4mnl54dx6e53hsljmem7dp332bady3oehxuizdoa7ljnbfg@v3lnipfbf27x>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1753859971.git.krzysztof.karas@intel.com>
 <d8277e3af09c388fa5dfbf5c9bb3985ae0b191a2.1753859971.git.krzysztof.karas@intel.com>
 <aItYo4Tplir6z-fO@ashyti-mobl2.lan>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <aItYo4Tplir6z-fO@ashyti-mobl2.lan>
X-ClientProxiedBy: DUZPR01CA0169.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:4b3::13) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|CH3PR11MB7371:EE_
X-MS-Office365-Filtering-Correlation-Id: fc84b7ee-c1f9-4d63-04d7-08ddd0e9f892
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UlNWOWZaS015UGVzSGUwc1lqR2dFUnJJd2dHcTN2WGFpQk5NTi94L0NWa2xV?=
 =?utf-8?B?NVF5K3RKUkVHVkVxMEx2S3M0WXRXY1pHM2RDeDA5YVcva2t2Z0hqVGo0Z1A4?=
 =?utf-8?B?U0FyaW9OUmNaYlZ3eWFkTjFPWkw3MDB5ZzU2bEFCQ29CWEFVcG1yNzFhd3ls?=
 =?utf-8?B?YVZkaC9aRjlFWFNUWXo4V1AxcW9ydmtMcThwUlpzMTlrSmRRenF4UE1rOHhQ?=
 =?utf-8?B?eXZLQUs4Y1dpLzRhbG1heW9qREFsa0NySm1FQkp5aUxsakJDREVTWXFQRUov?=
 =?utf-8?B?NW4wek5xYktSbHNzMWtqQVBnY1o1eWtOcUtrcUlYeW5QMFdKYVliVHkyMHJh?=
 =?utf-8?B?aHpiTmhQUytaVXo5OVRrQTNkSzl4ejhrcVlRVDJ6YTB3blZJWEpodlBSQ2pZ?=
 =?utf-8?B?cFpiTTNxNEVpUEtRb1RpZU5Hd1JQa3RBUGwybkxFR28ydnBYbnBhWHl2ZitC?=
 =?utf-8?B?bDhZQ0Mxd3pNRVUwRGQwZWo3USsySTNzWkgvbEMzaEhMVE5HUkhTNUhSK3Mz?=
 =?utf-8?B?cGxxV3lUK3EydWZQdkVnSUtmNXBCbW5WZi9TVDl0WDVyVjJ2WXFnZG1rRzVY?=
 =?utf-8?B?MTNOM2lESTJFT251NXA3cVhCamdnTzlQb3hWN3NneHZUSUV3ZHg5TFRLbTF6?=
 =?utf-8?B?dWVyakkwSjNxclRpdVJnN3BkU1pzdzNLRndUdjRZeDZ3cUhNWWZvZXpERWk1?=
 =?utf-8?B?Vk9qTVIxdXRZQ2NmMkNBTmNDWFhKODZVOSt1RnNLWjJsZGJlU2RmMDRuTnFP?=
 =?utf-8?B?bVNwblZSb0pETFFoemFBTGdxTi9RVHFTV3hzSjJ1U2NHNHhxbmN5anRITnc4?=
 =?utf-8?B?eVcwZzFKRTNhVlZBaXZjaHIxcnBOcGIrNU1zNXRpQ2tOcmY5SzJuN0JFeDh3?=
 =?utf-8?B?eGs3OWdvZ1BTS1JWZWhOdnI0c0p5VTJwU1FaNnVWbVhkMjF0MGFqTnV2ZWcw?=
 =?utf-8?B?SFdzdHllQzZ6VG5URHJUdU93dk5KZFFpdlRENTVocHpIYmh0VlV0ZncvdTFP?=
 =?utf-8?B?UzlxLzRYd3RUdi9iMVk1Yi9QRmVxaHFoeWIvcGFDek1BeDNNOGpIYXFiSDlD?=
 =?utf-8?B?OGx1d3VwaUtZd21TTkZoK1g5SWRiZkYzYnRhMzJyV3E3ZlNDWmNkdzY1a0Y4?=
 =?utf-8?B?dENFaGU5eTdmV0RzdWp4MUtVaFZZVmszMFc0Nm9sVFFIRVBPMktaVHExUzNs?=
 =?utf-8?B?dVFHdm42THVqeGRkQmlXeFBjQllnbDFBZkJJVW1TdU5zaE5jVDVPME10bVM1?=
 =?utf-8?B?TWtNL1kwRXV2UlN6YU45UXJrUnhHaGJBVmhQVGNhZU1IZndlVDhtYTlMMGkr?=
 =?utf-8?B?N0dsRXFGNzdNSWxVb2JrbG1TMlg3bmdtWVdiQWdtZE1qdGxGREdSdHR2WnIz?=
 =?utf-8?B?NVRDelVKTkFZZ2VUUGFOWTFLZnM4R0M4ejVSRkZzOE94eWdsMllrV0lQSFJ4?=
 =?utf-8?B?R3pXYjg3RWxGUWE2WFFGWFpKcDE5akY3Z1pBSm9obTR2SWVrU2xsTU40QzVt?=
 =?utf-8?B?YVVJOTl2SnE0WEd1bnZmQ0VzZHd2K25pejdvK2pCZmw4Znk5UkZ2SHRNUUhF?=
 =?utf-8?B?c2N2c2ptVVVWcFJKYzVmRjV5QnVIMVNMYjVoUDc1cDBqT1ZXQ0M5UUxDaStr?=
 =?utf-8?B?R1dCZnRpUEdaQWgwN204SXBwbkRUaW1PcC9HS0wrVUpGM0hpeWtDVlFlemdx?=
 =?utf-8?B?aEpCS0xPNEw5Ty9aclFnbUg1Tm9NRXh0NENFWTFyaDN2SkdBdm9sNWFrV3VE?=
 =?utf-8?B?S280NnRWWmo1QXdmV0xXdDd1Q28ycFNLQWtFTHE0NlZ5dG50SkZGSisvMjhr?=
 =?utf-8?B?b2JIRFRCWEdNVDF0ZEpsd0llVUFUZmNjNVhwYTdvMG9lYkR2U1YxTjYwcVZy?=
 =?utf-8?B?ajR3V1JKbnEwVTIvWVY5cW13ZW54NTJPQ0hyYTNjZHJ6QmsyYTBQcnJqbVN3?=
 =?utf-8?Q?H+DQVGvQWaw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VEo0a3o4OG83am4zOFlxbnNGYzlLcUdNdjMveEo3TVlTVlAvRzhjQWhyNmF6?=
 =?utf-8?B?Q0M2elprWFRjSFFoMXM0SkNZN1A2Vjc0ZVlOWmxkVDIzbnVKc2NUY3VqN3V2?=
 =?utf-8?B?dkpreG5WNHJVTlBzWDdGVVdWTVlRdUZOWFoxNndXSU40L2lPT2c1eGRmSlRn?=
 =?utf-8?B?cnYyZVpJVWsrU1lFdHJRbGlvWW1mbUhlbDYvWm1saHoxaWJITENHTGNnRndu?=
 =?utf-8?B?ZElDbTg1SnVlaGZjZHd0dk9ESWNWejZvdzZzcXZYWStpOGY3R2FzbkZmbjQw?=
 =?utf-8?B?bzBVNExJa3FmcVkvSzdKNm00bEtJSW8ya1RVQUxqNXVVR3BrVWVBN3ZMYnpK?=
 =?utf-8?B?c0NsY2h6bUhOMzBzWXFGWlQ2RlpCcTY0T2dIMzhPeHp5OUVVTVFMUVlaT3JB?=
 =?utf-8?B?UnpaWGozd1IzNUpzUmlmdU1rM2xHTXc5cE1ESXpSYXlNc29aajRxV2F5NWRR?=
 =?utf-8?B?anNnZzhMdWpEbEJiR0tSY1k4Q05lWm8raDgyT0NJOHlxcDlhZDJnRlRCYlM3?=
 =?utf-8?B?WTZ6Yk43eHdYS3c0enZ2NSs0c2hTenF6RVd5VGc4MEVOejdTeUowS000aEN3?=
 =?utf-8?B?VlY2OWNJUUtaZW0zVFBmNzcvZUlvZEFORXF5MFhIN3g4OXdQTWJyaDg2bVNz?=
 =?utf-8?B?U2dxbFdXZklBS2xyZFdJZlBFRUpVWnBlUUxHby9xVjV6Q2tQN0VxMmJDYkZQ?=
 =?utf-8?B?UUcwYjR3Yytla1NZWktIMjVvdW1WNWVZZ0lxcW9MMzQxeTk4dlhnQmJ5MlJo?=
 =?utf-8?B?VVhKR0dybmhXYVJrTUN2djBUNVJXNDVBRzJHdytta253K05XUjhqc09QVm9I?=
 =?utf-8?B?UzloWTBkR0xmMURxdjNqaEprcThiVWdXVUpydzVYM3FHajlsMktod1kvd1Jt?=
 =?utf-8?B?SHppeDRuTnQyUHhpRzIvaEtlY2FHa09MQ0s3RFViRHgzWmNUSmxGY3BlOUZu?=
 =?utf-8?B?S3ZHOHRuMG56ZVhrdlRaUUxhcWNRRlNQWWxqREdLbnd3Q2hiTUsrVmtJU3ZQ?=
 =?utf-8?B?NE5ESXMvVVJNc1ByalVCa2ZTREh4OGU3RkRhQzRuTUdxbEhSZ2hySFhSV2gy?=
 =?utf-8?B?S3pKUURJc1ZtdWp1MXQwc2hkRGcyeU1QdmdRWTQyMlh3UlQrdlYwVGZ1eVVW?=
 =?utf-8?B?TmdheWRKVWk3eE8xOGxUZmNZS2Y0NFdWbndSK0luUG1WUWxZM3FaSUgzZlk5?=
 =?utf-8?B?NGJ0amZTMzAzWDZuanBYMk1ScFNxaG1sd2M4NHgyZitnbzlrR1Fwb0JtaU90?=
 =?utf-8?B?a2lpNm1UQ0lKeGVldWJDcGttUVAzOGhCdHFYUnMvdlFRdjBTdHhOS3RsSzJR?=
 =?utf-8?B?dWtDVzNFYjB2UmRDSkdJMHdhSWppWkVoVDFockRyZ2tyeHUvQ0lhNCtIcFJX?=
 =?utf-8?B?TEoyTU4zTXU2MndndW92eTI4ajFhN3ZxZnk5Z3lrTzhNc1FmZTVUN0l1a1Rq?=
 =?utf-8?B?RVRaaW5pRG9aU2ZscDNIMlVMUExyMTNqN3JhbXhKbkpYWmJ1R3Y1eWx2RGd0?=
 =?utf-8?B?eFNzUU5JZ2MyS05sNTcxNjdRczJiSWN2S3BBMVp4SUVvaCtubWoxTmIzWS8w?=
 =?utf-8?B?QnByU1puaWdvWW9ib2kvMXJXT2Y5M2NtOFBzSlI4bE5Gd2k5SFhKNUp4MC85?=
 =?utf-8?B?RkdHaVVoWk5oTS9qaVpscTJjL1V6SEVXWTQyVnhPL1hUZTFFa3Qvem5pczVW?=
 =?utf-8?B?TVRmeW5mWThJOWt4ZU40V20zU2xwclVlalBpSXRHeUxDRWZ4eFk3SVc2UllB?=
 =?utf-8?B?NC9CL1hzRXdZUThmV3JjS2UyRTNhUUlYWG55K1FaeGRXTGd5RVRxRFdnV0JO?=
 =?utf-8?B?TlBRT0xnamJISDRuK293VTdOcHBucVB4M2hhK3dHWWoxTkFTaVBSZlphakZL?=
 =?utf-8?B?RXJyaGlha2JHNXVSWTJKMHVlUm0rbGl3SEwzaWRNVmF5c202MzJUcEdHU3I2?=
 =?utf-8?B?Z0V6dHZhM243S0R2cmFBeU1jbXN2SFNjVCtvRXFBRy9GUzNlc3VlS0tXby9n?=
 =?utf-8?B?Q1lpT2NFd3dkZ3lQSWpYRCtLa3AvaWNoSVVvcU9rYXBRczY4WGVUNVA3RExH?=
 =?utf-8?B?TTJXM2pJbkFOQXBOcEtzanFVTDJlcUhDcWQrNWVMb20vUU9qS29UWGlPSXZG?=
 =?utf-8?B?QjR4VUR3a1J5amVGSkN1WWs0V0R5ZTJTUmc0dHZpN2FPZmNjTUFhZUtEVE1o?=
 =?utf-8?B?bVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: fc84b7ee-c1f9-4d63-04d7-08ddd0e9f892
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2025 10:55:47.7133 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yuFdpeZ4sdw8dx66H2GBTLNwIrtSoYA+ha4RTtKmDqPiL5J6hSjRrrlYoMI3IySd6nPtbrooMxo7tWLUWfHOsUWkv4BH4ETPJIvA7e7E1Fw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7371
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

Hi Andi,

> Hi Krzysztof,
> 
> On Wed, Jul 30, 2025 at 07:40:18AM +0000, Krzysztof Karas wrote:
> > This structure may be leaked on early failure paths, so include
> > vm_munmap() call in them to avoid that.
> 
> this commit message says nothing:
> 
>  - which structure?
>  - where does it leak?
>  - "in them" where?
>  - "avoid that" what?
> 
> You should consider that the person who reads the commit message
> doesn't know anything on what you are doing and he should be able
> to understand without reading the commit itself.
> 
> Reading the commit is necessary to understand the details of
> what's explained in the message.
> 
> No need to resend, but please reply to this email with a proper
> commit log.

I apologize for the inconvenience. The following hopefully
better describes my intentions with this patch:

"""
It is possible for the vm_area_struct to be leaked upon early
return from __igt_mmap_migrate(). The "addr" gets its value from
mapped memory by igt_mmap_offset(), but it is only released
inisde ___igt_mmap_migrate(). This means the execution must
successfully complete all the calls inbetween to have this area
unmapped, which is not guaranteed.

Amend the problem by moving unmapping vm_area_struct to the same
function where it is mapped and ensure unmapping is done when
error paths are taken.
"""

> 
> > Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> > Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> 
> Anyway, the patch is good:
> 
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> 
> Thanks,
> Andi

Thanks for the review!

-- 
Best Regards,
Krzysztof
