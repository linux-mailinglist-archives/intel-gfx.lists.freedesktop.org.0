Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C693DBFFD45
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Oct 2025 10:18:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 380E610E8CC;
	Thu, 23 Oct 2025 08:18:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="W4Oz4/ab";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3FB7B10E8D9;
 Thu, 23 Oct 2025 08:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761207512; x=1792743512;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=EiQR508Lb3h7qKiCtySL9LOiK27KxdQOtHRxLb4kmt8=;
 b=W4Oz4/abVlFBxaUYXjtb8vMMMnmZlWyOHJtkoDwW4GjpPaiOMgBy3xQi
 2Yy6li64lycrzmhZf6/fSP6Dz2pqemKk5qK+jvcTNnweh+JmIGJOgkiBh
 qVK0+xOxuPbhwEI7HQxE6CXOvdfSWQeJijZV6t8E37Gsay6S0TNLkMVp0
 ravzAnkOREB9AxD7xjJlkcLxjgu/RGgU7ggCrLOthTvwQ6iOqD+ggp5Ya
 Gs4PdEkGXLSKICJnZfEj/3z+/e/JGCx1vrsuEdEt49JtviNIs7CanisTp
 p/yLAfw7b6c6g3IZzqH6jnX86rtnn/XVRT0vFcZAsJZ+sJJBbs8cLFFmx A==;
X-CSE-ConnectionGUID: vOLYeQxfQAWRGXzE0xH7Bw==
X-CSE-MsgGUID: KMt0GF/qT+u3wZCnR17o6Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62579851"
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="62579851"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 01:18:32 -0700
X-CSE-ConnectionGUID: GfJcQLUjSa2IEOQTfB7/mw==
X-CSE-MsgGUID: JsuK1ZKxR+OjjLhDR4j+Bw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,249,1754982000"; d="scan'208";a="189362813"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2025 01:18:31 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 01:18:31 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Thu, 23 Oct 2025 01:18:31 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.50) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Thu, 23 Oct 2025 01:18:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=LcZlNUJYHJDF22nvqhjrmTHuAoq8M2UCsxoatAp3aUkxtGSpcBNiVMU3KDEwP1TRfjZZdyrsMvd+XYi2Ih3C2+a3gSIJmjzBTOwX6VI+GOIx6UhNDAyzcoJ037otmEfYyD4mxFeiB7rCdSnnmMXIDbLoVLaQ6Rh0rf/VC9YRyVl98o2MdfavZx7ZS8H8dxR8Rng9yPmKyHFck7Z+rf1m/HNDhEWQkfNDKiSKEFSvT4Crh6ol6EEzZ9nesKpBWoVhPRu98+fWZEa8p4ohW/MrG2r8SeLJmSLSsVRqKz5FIlhbh5aJ0n+agyHhDHlhbECy1s+eJ5KWL9zWQ+dy0zng1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=eMKzaswAh7ffwXDFIlwnhtEgEZ5VTN6pwdV8svmj/ng=;
 b=bxwE5ORLQG5G+KYEM76uhiK06xP87+tnKwmniWFZc+Jih1xjPXfAtHrVgleD8m0sVkfGuWOZhgzKXSSdKisSrsnKFTGDuX9uHyfd+Obm3CO1nz2wXed1zwniKibu5srUbZv/f0RRlfJQ1orL39OaOhBQvCAN5G7bBE6rIJabR0NHygbCXRIiAN4XtEelvAJcHpLgAiuy2FXFFLx3sBkqA5jq61NCfKyyIc/9Dd5pI4PJfWSO9TXNkq9Sc5rJ5hFBNveMAtMO9+fiZJd02Jr1BSQXtM6G4hzel5JDpG4uqBcVmaWmksFMUJdfHQjV3XU9DKBnKkntJWBbcDMPkuJrCg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by IA3PR11MB8940.namprd11.prod.outlook.com (2603:10b6:208:57e::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.12; Thu, 23 Oct
 2025 08:18:29 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::dafa:d38d:8ac1:e843%6]) with mapi id 15.20.9253.011; Thu, 23 Oct 2025
 08:18:29 +0000
Message-ID: <9f7466b5-e5e7-4603-b564-0ef7f073d2c7@intel.com>
Date: Thu, 23 Oct 2025 13:48:21 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 12/25] drm/i915/ltphy: Program the P2P Transaction flow
 for LT Phy
To: Suraj Kandpal <suraj.kandpal@intel.com>, <intel-xe@lists.freedesktop.org>, 
 <intel-gfx@lists.freedesktop.org>
CC: <ankit.k.nautiyal@intel.com>, <uma.shankar@intel.com>,
 <gustavo.sousa@intel.com>, <lucas.demarchi@intel.com>
References: <20251015040817.3431297-1-suraj.kandpal@intel.com>
 <20251015040817.3431297-13-suraj.kandpal@intel.com>
Content-Language: en-US
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
In-Reply-To: <20251015040817.3431297-13-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0101.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::19) To IA0PR11MB7307.namprd11.prod.outlook.com
 (2603:10b6:208:437::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA0PR11MB7307:EE_|IA3PR11MB8940:EE_
X-MS-Office365-Filtering-Correlation-Id: 53e30cc3-76da-4d50-03b2-08de120cbf2b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?V2E1RGJ3bkVWdGZvMmJoNGlhREJDM05FYU1kbDhMYXJFbGdvWHpvNkI5L2Ir?=
 =?utf-8?B?UWFHalVZOUh0S3g4K0xyZ2VCdlBybG9PYklySW5ZbytkMFl6VWV0elRrNXZZ?=
 =?utf-8?B?aHJoK2lxZ0IzS2tkU3JZK2xWTHFnSEplSWV5UEtMeUpXZ0R1ODFOSjdYNnFJ?=
 =?utf-8?B?cHpTTlRCNUYzVEQwOHRmUlVUMzZERnM3UktuOWRoSFUrNmoxS2pocXFJUWN6?=
 =?utf-8?B?dGoyTTlYOVZOa1dPTlMwY0dEcERQNEorNEYzMG5RSTZCaFBoYVNMeEJvVER5?=
 =?utf-8?B?Q3NXeUxKWVpoY0t1TXhlQ0ZOK1pzaFcrNWVHdzN5UmxtV2xKQm1rWGNkU3Y4?=
 =?utf-8?B?L3JpeDIyeDR6aURGQllhOWVlS0RiSmVFT05qdjhmemttVHBqaHlma1BFUlpi?=
 =?utf-8?B?czRDWCt6NkJnL2FDaDZGR2JUYXRJNkFORUQ1OGh2NmJJSldkcEZjU0VCV1FG?=
 =?utf-8?B?LzZZN2Nzb1JOUUNET2VTZXdrc3Flb0Mwc3BRcEFnbHoxWjE3REUrSWZsK2VK?=
 =?utf-8?B?MXFNRzVQdWgycW82V0ozalhPQ1B5TFI5SDVHazZjNHhJQmxJM2lrbW9PSHlu?=
 =?utf-8?B?TFlONFhxNzlyZ0VtbWg3eUZ6dkhYVjB6SWF1UjN1ejlQM2ZhYSt6TUk5TTZj?=
 =?utf-8?B?WmFQYkhzY2hOVlhNOGpXckE4UlNvNmlhL1FkTExTekJuS3gvTjhZK0t5MUNN?=
 =?utf-8?B?UVkrb1VQQW55Njd1WkFnZVhYNUZKNCtBeXBBUzc2WDJXaWszTGk3aUQrT1pQ?=
 =?utf-8?B?VktDZ1hNaitGM05WaVpFUkFyS21mVi84NnRuUXJIK0JGRVFHQ1NmREh1SGVM?=
 =?utf-8?B?K2I5WFZOQWdRMnBEUmlpOU1UazhFanliNTFZUUkraHRjZEpxSXEyZXVXWlUr?=
 =?utf-8?B?NWRuaE1BOTVQdVNzZXlWR29zRW8xN3UraTh6MzRRMTNOYWdlQndtRE9xYUxG?=
 =?utf-8?B?K0xxNFluU3l1MUh3ZzBhelZ4ZHdoelBvaTBnaDF0ZDJxQjJvU0ZXbWNyVXJJ?=
 =?utf-8?B?WVZJYU5ZTzZUcVl1MDlOSWowNlI1bzg0cWo0ZUVzZ2IrYnVBVjVvc2psTEJ0?=
 =?utf-8?B?Ky9lT1pFWTh4cGlhK3JtK0tGY1BkK0NXU3NuVjZIQUF6OGJiVkhpVEhHUkpO?=
 =?utf-8?B?bjBSZkhZclQwRzdUY0JnRVMvbVRrSkttbVZHaDFqa0VkSkpQSnp6NXk4bEFu?=
 =?utf-8?B?bTE4RE9RcCtmZWU3Z0NOVHU3cm44Mk8wTS9nZ1dKdzBoMnlpWjN0S1l0U1I5?=
 =?utf-8?B?azIwNzdvWERucWM4S3dUZmh2NFBJZFBGWkZzNjlURTBWTW1ZZGFRUTMyTTg1?=
 =?utf-8?B?cmRwcjVQbGN1NEN1Rk5sY2Nsb0t3ODhyYnhZbWgva3VMejJxYnlQNnRIc2gw?=
 =?utf-8?B?dmI1Smh3K0w3bXVIVHZwdFdYRGYwNFRNQTNMeUVBRzlCcWN2c2lEQUJxckEr?=
 =?utf-8?B?VHBsUWhQcW1wYXlvSkJQOXhuOTNTaXBpdSsyRWQyUW9xRW85RWp6ZjZEZEdn?=
 =?utf-8?B?SEVlTFpMUXFNMHliQjdIT0tYUm1BRFdEMEhJZUhseVVRQmdlZGhDWnh5YnBB?=
 =?utf-8?B?WXNOaWRxMytzbGRXdS82ZkI5b1BLSXg5eEg5SzdoUEZhT08yMC94c3pFMXFs?=
 =?utf-8?B?VUNvMnh4SU5jOHNiQjZpSGVydGZxVUo4TFl3T3ZORytNd3VOcVlweTVJYW05?=
 =?utf-8?B?UHl4WU1MSDFqUjdudmw3Y3krV0VJblVqYVI2ZytDZDc4T2lnbHM5cVg1dlBK?=
 =?utf-8?B?cHRreVRQSUVwdnFPK1dvbVRBMHJ2eGRRTnJsWkRlaGVmVEdGNm5Kc1ZLT2lO?=
 =?utf-8?B?NXRWRG1udzBvaTJrSlR0YW91OWNpeElXOWFYWWx2MlNxWmNTVFpTcHRXWEhU?=
 =?utf-8?B?MitUakhIVXNRVHM0VWljbFVjL3h5V3h6STdwOExWcG5BVmJXUkViZllXRjhM?=
 =?utf-8?Q?ex6oGSj+hTrRpG9mj1Ucp/SsJ1Uqzqm4?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TEpEREUyNGxXTWJJNVN1WWsvQk5jVTZlekQrejFpTXcrdktiT20xbVZ6bXh2?=
 =?utf-8?B?VDVoenBmTTVLdTJXeWpDUkx5SDZyczg4K083c0lGZVNOaUxhbkdzZGNzTXFr?=
 =?utf-8?B?bGZBcG03NVk3LzRXOFVFaFdPUFUyQndLaTduT1I0SlBOZkNUQ0F5eVI2OU9l?=
 =?utf-8?B?dWJQVENGaFUwa1JqSklmWTlIRTFXdS8xTFFoNlVRZVhKeVNXSmE0TXhOZDZp?=
 =?utf-8?B?cFk5K094alNKSS9CenJVQU80YXBkeWRWMEZXVklDN0RXaUx3ZW1zVzZxVnNH?=
 =?utf-8?B?UlR4ZlJPZTVndlVReUVzUFlpdWVVcW43QWVSSXI5eUg1V01iVWxDYW5WTjFF?=
 =?utf-8?B?TTRTdEtLMXFja3RVUXM5ajZCNURYUHRJQnhDZmNrOWh5Q0pmSnFSN2VoNjhw?=
 =?utf-8?B?b0xiZmdDWkZIaU05WTJmbTN3aE5DYi9NWWFFdTVERThjR0dsdzcxdWI5UmEw?=
 =?utf-8?B?THFYUFZ0N1BjUjUwS21vcTVjTWJKL25wVkNIbnBaR3dRYmYxVGdUZkRrUHJ0?=
 =?utf-8?B?dDl2ODBaQi9ORnA5V3dmWUdSZWE0eDVhQzRaZTQ0ejYwZnZ0NU1kSVlsS1Nh?=
 =?utf-8?B?NHM3SDljcXdyckZ0NUM2NFo1VjVwMGNKNFhzWHova1NUdkh0KytXbWxqdkNU?=
 =?utf-8?B?ZzhaOG1NUFlVdTc5U1hHWU1Xc3pUNXQvR2Q2OFpOQTg3RmJ1eWtwdHp1SmFw?=
 =?utf-8?B?RmxSUGtMdER4SnJyb3EreDAzN1JKMmJ1eGl6WXZKQi8rSFBEMmVwcGtmbEJo?=
 =?utf-8?B?akVuT2JRWmJWcjNRSHgram1EaVk2OFlBb1NlUGhEeE5CYzhNaHVnbC8zVXBT?=
 =?utf-8?B?elJqYXZHa1p5ejYyRzltZXQzbjdTTXBvRWF5SkVWS2pIZ3NVREpORFNFY05D?=
 =?utf-8?B?dWpKRHBzS3RUNlduSGFmOVZKWlVDbTVDMUIyN3NlRUdLcU1kYjBBemM4N3hl?=
 =?utf-8?B?UzIyZFBjRmcra1ZWaG14bm9paGJ3OVJJTkN6QnppSzBxaEEwRGg5SmVUNTJn?=
 =?utf-8?B?OGpXdHFOWmxBK2VOTkVkVnNPek54azdlMmdzTTFiNTJPdE9ZYldKVEZ6b3NI?=
 =?utf-8?B?UndFZGoyMENjbkU2cDVTcnlMRUlxekZJN3dJRG9qazZoRE1DMDVDR1puT3A1?=
 =?utf-8?B?RDZpV0Q1R3N5YnhrK04rclFtVVpROXl5bml5NVBzZEtNMC9zeTlBWW5Scld5?=
 =?utf-8?B?M0hubFFpZVNBL0MydXNLeWxTOWV6bytRd1p1cWY2R3NqY3pLT1FPdkJkMzZZ?=
 =?utf-8?B?amlRcDhtbnhSZjRFZ1UrdTloMkxxWm9ENUoyTzJZRm9uSUpsdnpMUGxIZTkx?=
 =?utf-8?B?b3JSVnhxUGN0SEQ3QSsyVjFoSnlFdnA3SEV3OEszKzdtUHBPakQyQ25BZUdl?=
 =?utf-8?B?dXRkalY1NGEweVowK0VMZUphQ2xzTHYvSVY3LzhGSmEyT2ZrdjBGcldVUjFt?=
 =?utf-8?B?RGlMUTdLaDZGVDg3WGQ4QzNwZ1R4SzFPVWsvU1dvaHFPbXV2bHRrZTFYMjBx?=
 =?utf-8?B?QnRJeHNlb2JCZnBSUjNKaU9aek00eUhqV3MrN1JkZjFydU1nNm5tOGxxeW5q?=
 =?utf-8?B?UEZKcmQ2cWwzck4vUlRLcEVFb1l4QnN1YlFQR2syc1hPZk15bEFLWTJxOGZU?=
 =?utf-8?B?QjJzSHpMM0plV0ZrejU1cmhhZEllSUNVbzQwZVpDODY0dGMwcWFmUC9xMTVJ?=
 =?utf-8?B?bFgyVHUreUtWMEp2NlpuV2V1RnRNdCtBanlRVUpPcE5QNzJhUTZWQmJKTDBK?=
 =?utf-8?B?SUxWZ2tmNnliRnZ6UWt3aVQrZjRnVkVyRlBjb3daWnZReGtPZ202S3R4eDlx?=
 =?utf-8?B?NEFldUF1aWp1VUl1NzNKdy9pakhPVDZhN2pzcklqNkZDVmdQS0QvemRyRnJk?=
 =?utf-8?B?K25oRGxYRTlWVjV1cFFNbXo5dGVZd0dKRitNbTg0aTV5YlBDaVFaZkpEencx?=
 =?utf-8?B?WmxLM1lmYitJdGkyMTRBRWhDVlJOVW5way9Eb0JYaUtWaXZZeCtrT3JleFY5?=
 =?utf-8?B?WVlUQW5iWnlkRnRFT1dHOGJaZFZvblZKamJmQStKOEZiRWZudDYyRXJ6UjBa?=
 =?utf-8?B?Yk9DWXR6SmpyQWFSV1lLY3F3TkhhZnpXSzlxcE83M0gyN05lM3J2cG8vdkNH?=
 =?utf-8?B?VWIxeEZKVmdjTUVBVHNMQ1QzamRCeVd4K0N4WStSQ25VcHRJdWFNck5lZEg1?=
 =?utf-8?B?cUE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 53e30cc3-76da-4d50-03b2-08de120cbf2b
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Oct 2025 08:18:29.3277 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GNpdtes4jECJL/dHd0AFT912asj/qwPBD6SSuDf5nvNP2TaHheKdaxxCQKpBJ+E1w+VTfy/pE+F2V46YRC8J+g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA3PR11MB8940
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


On 15-10-2025 09:38, Suraj Kandpal wrote:
> Program the LT PHY P2P transaction which uses P2M cycle to get
> get data fro Phy when it is ready and then go read the MAC register
> from the MAC address space.
>
> Bspec: 68966, 74497, 74483, 74500
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  10 +-
>   drivers/gpu/drm/i915/display/intel_cx0_phy.h  |   5 +
>   .../gpu/drm/i915/display/intel_cx0_phy_regs.h |   1 +
>   drivers/gpu/drm/i915/display/intel_lt_phy.c   | 115 ++++++++++++++++++
>   .../gpu/drm/i915/display/intel_lt_phy_regs.h  |  15 +++
>   5 files changed, 141 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index c50233f17bc6..b060a5007921 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -125,8 +125,8 @@ static void intel_cx0_phy_transaction_end(struct intel_encoder *encoder, intel_w
>   	intel_display_power_put(display, POWER_DOMAIN_DC_OFF, wakeref);
>   }
>   
> -static void intel_clear_response_ready_flag(struct intel_encoder *encoder,
> -					    int lane)
> +void intel_clear_response_ready_flag(struct intel_encoder *encoder,
> +				     int lane)
>   {
>   	struct intel_display *display = to_intel_display(encoder);
>   
> @@ -135,7 +135,7 @@ static void intel_clear_response_ready_flag(struct intel_encoder *encoder,
>   		     0, XELPDP_PORT_P2M_RESPONSE_READY | XELPDP_PORT_P2M_ERROR_SET);
>   }
>   
> -static void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane)
> +void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane)
>   {
>   	struct intel_display *display = to_intel_display(encoder);
>   	enum port port = encoder->port;
> @@ -156,8 +156,8 @@ static void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane)
>   	intel_clear_response_ready_flag(encoder, lane);
>   }
>   
> -static int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
> -				  int command, int lane, u32 *val)
> +int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
> +			   int command, int lane, u32 *val)
>   {
>   	struct intel_display *display = to_intel_display(encoder);
>   	enum port port = encoder->port;
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> index 283be36d5dff..a5446686b23b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
> @@ -22,6 +22,8 @@ struct intel_display;
>   struct intel_encoder;
>   struct intel_hdmi;
>   
> +void intel_clear_response_ready_flag(struct intel_encoder *encoder,
> +				     int lane);
>   bool intel_encoder_is_c10phy(struct intel_encoder *encoder);
>   void intel_mtl_pll_enable(struct intel_encoder *encoder,
>   			  const struct intel_crtc_state *crtc_state);
> @@ -53,6 +55,9 @@ u8 intel_cx0_read(struct intel_encoder *encoder,
>   		  u8 lane_mask, u16 addr);
>   void intel_cx0_write(struct intel_encoder *encoder,
>   		     u8 lane_mask, u16 addr, u8 data, bool committed);
> +int intel_cx0_wait_for_ack(struct intel_encoder *encoder,
> +			   int command, int lane, u32 *val);
> +void intel_cx0_bus_reset(struct intel_encoder *encoder, int lane);
>   int intel_mtl_tbt_calc_port_clock(struct intel_encoder *encoder);
>   void intel_cx0_pll_power_save_wa(struct intel_display *display);
>   void intel_lnl_mac_transmit_lfps(struct intel_encoder *encoder,
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index 114f6b2113db..cb2ab8442aa1 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -50,6 +50,7 @@
>   #define   XELPDP_PORT_M2P_COMMAND_WRITE_UNCOMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x1)
>   #define   XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED	REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x2)
>   #define   XELPDP_PORT_M2P_COMMAND_READ			REG_FIELD_PREP(XELPDP_PORT_M2P_COMMAND_TYPE_MASK, 0x3)
> +#define   XELPDP_PORT_P2P_TRANSACTION_PENDING		REG_BIT(24)
>   #define   XELPDP_PORT_M2P_DATA_MASK			REG_GENMASK(23, 16)
>   #define   XELPDP_PORT_M2P_DATA(val)			REG_FIELD_PREP(XELPDP_PORT_M2P_DATA_MASK, val)
>   #define   XELPDP_PORT_M2P_TRANSACTION_RESET		REG_BIT(15)
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 3aa8b3b345d3..32a5a60fe92f 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -19,6 +19,10 @@
>   #include "intel_psr.h"
>   #include "intel_tc.h"
>   
> +#define for_each_lt_phy_lane_in_mask(__lane_mask, __lane) \
> +	for ((__lane) = 0; (__lane) < 2; (__lane)++) \
> +		for_each_if((__lane_mask) & BIT(__lane))
> +
>   #define INTEL_LT_PHY_LANE0		BIT(0)
>   #define INTEL_LT_PHY_LANE1		BIT(1)
>   #define INTEL_LT_PHY_BOTH_LANES		(INTEL_LT_PHY_LANE1 |\
> @@ -999,6 +1003,113 @@ static void intel_lt_phy_write(struct intel_encoder *encoder,
>   	intel_cx0_write(encoder, lane_mask, addr, data, committed);
>   }
>   
> +static void intel_lt_phy_clear_status_p2p(struct intel_encoder *encoder,
> +					  int lane)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +
> +	intel_de_rmw(display,
> +		     XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(encoder->port, lane),
> +		     XELPDP_PORT_P2M_RESPONSE_READY, 0);
> +}
> +
> +static void
> +assert_dc_off(struct intel_display *display)
> +{
> +	bool enabled;
> +
> +	enabled = intel_display_power_is_enabled(display, POWER_DOMAIN_DC_OFF);
> +	drm_WARN_ON(display->drm, !enabled);
> +}
> +
> +static int __intel_lt_phy_p2p_write_once(struct intel_encoder *encoder,
> +					 int lane, u16 addr, u8 data,
> +					 i915_reg_t mac_reg_addr,
> +					 u8 expected_mac_val)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	enum port port = encoder->port;
> +	enum phy phy = intel_encoder_to_phy(encoder);
> +	int ack;
> +	u32 val;
> +
> +	if (intel_de_wait_for_clear(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
> +				    XELPDP_PORT_P2P_TRANSACTION_PENDING,
> +				    XELPDP_MSGBUS_TIMEOUT_SLOW)) {
> +		drm_dbg_kms(display->drm,
> +			    "PHY %c Timeout waiting for previous transaction to complete. Resetting bus.\n",
> +			    phy_name(phy));
> +		intel_cx0_bus_reset(encoder, lane);
> +		return -ETIMEDOUT;
> +	}
> +
> +	intel_de_rmw(display, XELPDP_PORT_P2M_MSGBUS_STATUS(display, port, lane), 0, 0);
> +
> +	intel_de_write(display, XELPDP_PORT_M2P_MSGBUS_CTL(display, port, lane),
> +		       XELPDP_PORT_P2P_TRANSACTION_PENDING |
> +		       XELPDP_PORT_M2P_COMMAND_WRITE_COMMITTED |
> +		       XELPDP_PORT_M2P_DATA(data) |
> +		       XELPDP_PORT_M2P_ADDRESS(addr));
> +
> +	ack = intel_cx0_wait_for_ack(encoder, XELPDP_PORT_P2M_COMMAND_WRITE_ACK, lane, &val);
> +	if (ack < 0)
> +		return ack;
> +
> +	if (val & XELPDP_PORT_P2M_ERROR_SET) {
> +		drm_dbg_kms(display->drm,
> +			    "PHY %c Error occurred during P2P write command. Status: 0x%x\n",
> +			    phy_name(phy), val);
> +		intel_lt_phy_clear_status_p2p(encoder, lane);
> +		intel_cx0_bus_reset(encoder, lane);
> +		return -EINVAL;
> +	}
> +
> +	/*
> +	 * This needs to be added to give PHY time to set everything up this was a requirement
> +	 * to get the display up and running.
> +	 */
> +	udelay(150);

How was this delay value derived?

Thanks and Regards,
Arun R Murthy
-------------------

> +	intel_clear_response_ready_flag(encoder, lane);
> +	intel_lt_phy_clear_status_p2p(encoder, lane);
> +
> +	return 0;
> +}
> +
> +static void __intel_lt_phy_p2p_write(struct intel_encoder *encoder,
> +				     int lane, u16 addr, u8 data,
> +				     i915_reg_t mac_reg_addr,
> +				     u8 expected_mac_val)
> +{
> +	struct intel_display *display = to_intel_display(encoder);
> +	enum phy phy = intel_encoder_to_phy(encoder);
> +	int i, status;
> +
> +	assert_dc_off(display);
> +
> +	/* 3 tries is assumed to be enough to write successfully */
> +	for (i = 0; i < 3; i++) {
> +		status = __intel_lt_phy_p2p_write_once(encoder, lane, addr, data, mac_reg_addr,
> +						       expected_mac_val);
> +
> +		if (status == 0)
> +			return;
> +	}
> +
> +	drm_err_once(display->drm,
> +		     "PHY %c P2P Write %04x failed after %d retries.\n", phy_name(phy), addr, i);
> +}
> +
> +static void intel_lt_phy_p2p_write(struct intel_encoder *encoder,
> +				   u8 lane_mask, u16 addr, u8 data,
> +				   i915_reg_t mac_reg_addr,
> +				   u8 expected_mac_val)
> +{
> +	int lane;
> +
> +	for_each_lt_phy_lane_in_mask(lane_mask, lane)
> +		__intel_lt_phy_p2p_write(encoder, lane, addr, data, mac_reg_addr, expected_mac_val);
> +}
> +
>   static void
>   intel_lt_phy_setup_powerdown(struct intel_encoder *encoder, u8 lane_count)
>   {
> @@ -1417,6 +1528,10 @@ void intel_lt_phy_pll_enable(struct intel_encoder *encoder,
>   		 * register at offset 0xC00 for Owned PHY Lanes*.
>   		 */
>   		/* 6.3. Clear P2P transaction Ready bit. */
> +		intel_lt_phy_p2p_write(encoder, owned_lane_mask, LT_PHY_RATE_UPDATE,
> +				       LT_PHY_RATE_CONTROL_VDR_UPDATE, LT_PHY_MAC_VDR,
> +				       LT_PHY_PCLKIN_GATE);
> +
>   		/* 7. Program PORT_CLOCK_CTL[PCLK PLL Request LN0] = 0. */
>   		/* 8. Poll for PORT_CLOCK_CTL[PCLK PLL Ack LN0]= 0. */
>   		/*
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> index a4aa2a3e0425..5fb4331c387f 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy_regs.h
> @@ -9,12 +9,17 @@
>   #include "i915_reg_defs.h"
>   #include "intel_display_limits.h"
>   
> +#define XE3PLPD_MSGBUS_TIMEOUT_FAST_US	500
>   #define XE3PLPD_MACCLK_TURNON_LATENCY_MS	1
>   #define XE3PLPD_MACCLK_TURNON_LATENCY_US	21
>   #define XE3PLPD_RATE_CALIB_DONE_LATENCY_US	50
>   #define XE3PLPD_RESET_START_LATENCY_US	10
>   #define XE3PLPD_RESET_END_LATENCY_US	200
>   
> +/* LT Phy MAC Register */
> +#define LT_PHY_MAC_VDR			_MMIO(0xC00)
> +#define    LT_PHY_PCLKIN_GATE		REG_BIT8(0)
> +
>   /* LT Phy Vendor Register */
>   #define LT_PHY_VDR_0_CONFIG	0xC02
>   #define  LT_PHY_VDR_DP_PLL_ENABLE	REG_BIT(7)
> @@ -29,6 +34,7 @@
>   #define LT_PHY_VDR_X_DATAY(idx, y)	((0xC06 + (3 - (y))) + 0x6 * (idx))
>   
>   #define LT_PHY_RATE_UPDATE		0xCC4
> +#define    LT_PHY_RATE_CONTROL_VDR_UPDATE	REG_BIT8(0)
>   
>   #define _XE3PLPD_PORT_BUF_CTL5(idx)	_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
>   								 _XELPDP_PORT_BUF_CTL1_LN0_A, \
> @@ -41,4 +47,13 @@
>   #define  XE3PLPD_MACCLK_RATE_MASK	REG_GENMASK(4, 0)
>   #define  XE3PLPD_MACCLK_RATE_DEF	REG_FIELD_PREP(XE3PLPD_MACCLK_RATE_MASK, 0x1F)
>   
> +#define _XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(idx, lane)	_MMIO(_PICK_EVEN_2RANGES(idx, PORT_TC1, \
> +										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_A, \
> +										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_B, \
> +										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC1, \
> +										 _XELPDP_PORT_M2P_MSGBUS_CTL_LN0_USBC2) \
> +										 + 0x60 + (lane) * 0x4)
> +#define XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(port, lane)	 _XE3PLPD_PORT_P2M_MSGBUS_STATUS_P2P(__xe2lpd_port_idx(port), \
> +											    lane)
> +#define   XE3LPD_PORT_P2M_ADDR_MASK			REG_GENMASK(11, 0)
>   #endif /* __INTEL_LT_PHY_REGS_H__ */
