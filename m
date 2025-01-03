Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E89D4A00901
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 13:04:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8896A10E897;
	Fri,  3 Jan 2025 12:04:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZRob1GED";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70BCC10E897
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 12:04:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735905857; x=1767441857;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9joCq81AS1B976DP7gNaghZidqWhu8pP9TofofZBBlE=;
 b=ZRob1GED9vwTsc8dUwIMKvB6wjA3/FUB5f0I26K3WePXPt5Ybd+lREWl
 ca91nTHvzcUPQANKy3KQjVZ8tEuZft3QdPcXIkVVF7v1FJ/zmNXRTu7f8
 YWR+CyIWHTJPNAEMeFMvkTECZUAO3S0XcDgtLJtKHcbb5Rynd5EBxCmq/
 lBAm24LXOPPOEs8bgJWcehWYZia1yqICcRnLPw3kCEsdJq05HnF9DmvV9
 +GBQM0uJt7UQDABfH7knZAwdCgGO8k2gRJ1pEI3V2C1LQ7l1/y7QwjKAO
 yvSWWOINanoJLeT1aW0qQsHjTCVAl2nIR8pxINAOZYfh7/XE/rhe3+E1g w==;
X-CSE-ConnectionGUID: GEl6Q9zyRAmcIxgNQtxYgQ==
X-CSE-MsgGUID: 7w7oy+ahSXGvFOKNYGmwqA==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="58620744"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="58620744"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 04:04:16 -0800
X-CSE-ConnectionGUID: /zzJjQgJTuu7YTyoFU93ig==
X-CSE-MsgGUID: Nc5K4+ioTj2eUOfN3oVswA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="102288992"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 04:04:16 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 04:04:15 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 04:04:15 -0800
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.46) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 04:04:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ZnwKBSjlgtc9ixP5qTSILQ04/dogssmuV09FgkSHdSD/dLiogWPbPCCBdpLPSd+EsKkE06Y/Y/Ry5+2R+KAv+oJrZIBLRBxdMlubTC+aKUAmtdPwf53srhaKf7+yK2xUrkY7Rssvw4xTn6yee95ooOfRkwbFm5B9QV3W7Hd+BeqrffNBTtLb6hotSFKZ7oE/VFH9SMuh2W0A75nYVnzhoEy7V1F2BETmVpOJWiAngUj9zN83vuCfbu0M2UHq8QqXrjxlrIi5b28bD01dKO1X4l25C0uXhLQoennIoopBZI+rPad43TF+1pM+Ptt6WxKL5f/EVJDG2vsR+G7p4qLaLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Db/Ftz6xv4GVsIfRjpg7f+U3r8QmgfhNmb2oMAdJr1I=;
 b=zAviW8+dpu5rpUVuCXVyl7JCkB27iCnTRXguQ+arRhvB28XOOieYkqH9XoZz9ACYoXRZg8XTKiJicKVnC1tddnnk7MiqgIVyazlbdbBG6OO3AfutA8zCWv6D1dqG5eOf56i8ucMegLBZ0jEb8UvKjiYb/JSlwmljIQOzT7CtJym+BRruyAMbLcrOidnOcnj3qfKfFpuCr9yi9VLL78iIg9MI/NlAVWy4tL3kARRbzHYd0JyI4QAZIW4oV3goCRuRPvja913acu4nQ6qeO8fuYxeDfUiCp+hZKl1gIg1ypH26El1YTdzwOnShKuokG5mWVn3/cVVOwIQsJ0HqvJXsMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by BN9PR11MB5241.namprd11.prod.outlook.com (2603:10b6:408:132::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.14; Fri, 3 Jan
 2025 12:03:56 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8293.000; Fri, 3 Jan 2025
 12:03:55 +0000
Message-ID: <8a75e356-2015-4187-9a73-176b61ce4be2@intel.com>
Date: Fri, 3 Jan 2025 17:33:50 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 14/18] drm/i915/vrr: Fix vmin/vmax/flipline on TGL when
 using vblank delay
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-15-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241210211007.5976-15-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PEPF00000187.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c04::4d) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|BN9PR11MB5241:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e7dfd39-a9d6-4545-7802-08dd2beeb29e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WnZJTDUwOWdvZ0cwMlJQSXdIZm9DLzNRNHIvSk9YUms5VGVTZWVqKzRKTGpS?=
 =?utf-8?B?bUVhaUtyRVhPZkVuSitnaXhwUGNoanVicGxzRUJRcXg1NmJjRjFjQmJieFFX?=
 =?utf-8?B?Y3lMakwwbGV4MDBudmgzdXZHcFF0ME1aK2tVRzVZWTIyYXhOcE4zMDBVTUhh?=
 =?utf-8?B?K1RPemM1bDRUdUg0d3JLRFN6U2dWdWZuRXJ3U3lDaVE1Rk5uVk00YjRzTFk3?=
 =?utf-8?B?N3F0Rjlab2xkQ2M1a29WYmdoKzNEbWFIZjJZNGVCbmtSdE1CN24vd25mY1U2?=
 =?utf-8?B?cElGemRkcWtqa0tjSW93clcwdUdoUEFYMmlycWlMdzllblZZK2E5a1pNTS9K?=
 =?utf-8?B?UEUwdUR3ckhmZDIyZzc1TWo0Z1lMMnF6R1ZzbjNTYkNMa3c2MGVKdldZZUtV?=
 =?utf-8?B?RVo0YXZ6Y2xXamFHODFETUF1RkFiSlR5V0dQa3loVGx1MnZnTTErVUlhWHRm?=
 =?utf-8?B?MUQ1bDRWaGZOOWlxd1NTSGxTZ1JHc3h3TjFkN0JSNlNVc0NZV0NmNnBjaVVO?=
 =?utf-8?B?b29NSUVWSVhJUGdnZmcwSHdKZ0c3aWMxdm0wL2dxamQzMUJnN1RQeEEvbjQr?=
 =?utf-8?B?bFE5RW5WSzA3YUFZMm44ZVlncHdwQWw4d0JPMzAzMXhORFdKQWVOeTNEcHEv?=
 =?utf-8?B?MGxHWU4vV0dmMW9xYUduWUtIeFM4cnNHMWpTbFJ6ckFCMElUQm1iaDVxWlNZ?=
 =?utf-8?B?RHpwUjVBRzNralp6T1k3N3AzTEtxVGxxQ0dKZ28zYkJ1T3d4ZCtENEN0bWRQ?=
 =?utf-8?B?c1NzRit0YkMzRTdmeHdSdkQzOXQ5SlFXWDFSUjh3OGoxR1h3anNPOGdiVDla?=
 =?utf-8?B?NU1xbjh1OGM2QUhaYk9FYWVZTENRS3ZUTUJkOW5ReEdOeEhabmV6eWczYUQx?=
 =?utf-8?B?aTRJVGR5VGtydHpiaFU3SmR3MmtUejEveUx2Wi9vM1FFanhPT2NFYmFpUnlZ?=
 =?utf-8?B?c3dIWjlCTjBlekN3UHpXVkk0eitOZXpFTlJsTDFNdEtVZjFWdmMrb2NMUVgx?=
 =?utf-8?B?R2krcnFkMjErSFZtMHZFYUdCU2gxZ1ROK1AxOVZHNDZIS3JGWUU4N1NJeFho?=
 =?utf-8?B?M1JOYkFOd00yNnVqdnV2U3JDU3hNQjFnYVZqbW5LdTh1WWVqMkpBNFdmRlM4?=
 =?utf-8?B?NXRzdWJPcUszN1M4TDQ1aHRoZ2lXWHFjcWNiQW5qa0pHdzN3VHlHSFlXRzRT?=
 =?utf-8?B?STBiUEthdEhkMkNsbjBsbEtOVTNSVXUvU2xmVDJUbXNZOGZMcDhESkthQjJU?=
 =?utf-8?B?bTNSMDJZLzBJQTdzVjRtMlVuM2JJMXYwek9kcW4za3RIMFNtN24wSDM2ZUZZ?=
 =?utf-8?B?aExUdENlV2NiZ1h6dEY4SmU0bGp3WW9tNEkxalhlNzNIdWU1VUpXWGEwRzY4?=
 =?utf-8?B?T0psYVA0NUdyVjBYdDZRa1FGR1huSjVtbXVIZ2dobzYvMmJsa05xWG9QRW1q?=
 =?utf-8?B?YTQreTNETm5YMWxudWxaeG1JS1lIdzVveGpZOWpzRURwaUF4bFFZdGc3NVVy?=
 =?utf-8?B?aGJBeDFQQTBCNG1ZaGt0TW9FNjhSQ2VIQUNLc1RZK25YTzNrbDRDbTQrTHlU?=
 =?utf-8?B?dkRiU1BLM0Z5c210TkwzK0VDRlpPV2ZnSm5DNjdIRFA3RkVkZkpHVWxDUStY?=
 =?utf-8?B?ek5YS042TjRuajlVbzZBZ0d6bXdJODlpUk8rUCtuQ2tWeXJUNkhRNTVoVENE?=
 =?utf-8?B?ZC9oWmF6aVM2YS9UdXZWc3FqZjh4cStoYVBCV0FKckJlYzEwNG9nUVVvck12?=
 =?utf-8?B?S3pldERCWUNydmtzK1BCK0l3VG1aalBJb1JCck1zMkhnK2FtNEZHR3ZPOXlO?=
 =?utf-8?B?ekxSUys0U0lCNFRFaHY4QVBvUitBZlpOYnBLTjlZbVROTnlVbStnSDRwVzRr?=
 =?utf-8?Q?6IP3Tpg0/iAF9?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bkp6blpkOWl3M2JIYndIS21QdkpUb3Zxelg4RENFaW84MFdiSzdoOWlmMUIy?=
 =?utf-8?B?S2xsVEttNytFOTUvbGduL1AyYjNEcUJhYzIyMmRZQy9xRjNxUUdMQ3BTYzRa?=
 =?utf-8?B?Qm1UbmVZUUFDVjF2a0tVZlRMdjN2eTNQSVFobVQzS0tJbHNRbmhQanFleEs0?=
 =?utf-8?B?TzV6Ni83MWhUZDVEamxZTXFSdVpjdlNPT3RKcThWcEpvSDBzUXdpZ1plUUVJ?=
 =?utf-8?B?UDFUclNBcGY1VkN0RXRMYVczLzZZcTZBVHlodlg3dU83VGVWWFVFNGhGRlBL?=
 =?utf-8?B?N0MvNURyOWpHYSttUzJNTE9JSzBGYTc2MTlha21rUTY1dE5jYjZ4Y0NGKysx?=
 =?utf-8?B?R3FNVGh2Q256U0JNQm9yVjZaOXJHME8xUElBdHdnZXRmZzZwUDIxZVhWMnVt?=
 =?utf-8?B?QXl3dGVqOXdlbnpwbU5oakdzZ1RmbHk2ZmlZSnlURGFoUXN5dlhSbGR6Mjd4?=
 =?utf-8?B?VkNhcDBLZGZPa09ZdWRJL3RzLzVyRGNLN1d4WlQvREk1bVVrMXZPOTFwS3l2?=
 =?utf-8?B?aGZTek1peGQxVmFuMjcvTXJzNnlWT0pNeXQ3aTJEUmhPSTV4TGVFTUEzcVJi?=
 =?utf-8?B?WFpzWTFqYnFhMlpMN09pVlYwN2JmTi92djVmZjVnNEREVVp4d2lSaEhzcmt2?=
 =?utf-8?B?NnA4MExHa05IK3drN3F4REJRdjB4TUxUL3dnTGF3U0N4N0o0TGRpcThobGsx?=
 =?utf-8?B?M3B6b0U5NEpKL3Jlbms2SU1aTTZTUjZpUWQreG9hOGFMcWhUb3Izbjk1RU44?=
 =?utf-8?B?NFJUTURyZ2JMN2pjTDdQeElPUVVJSFc3K1ZGL0RCcnZMdzV1YkdrRFpHZHg3?=
 =?utf-8?B?TnZ1Z3hNOFVpTGJ0ZC9ZTHlMY2Y5ZXZRQWVlYkZsc2QxLzgwWE1yOUNmbDQ5?=
 =?utf-8?B?MG51dGxQUnJWbHZ0R3h2ZFFHYkp6akxDd0JHRk90cXBveVd5VVRxUGdjTkxT?=
 =?utf-8?B?M3NqN0U4S2VFaE85UytkLzFmaVpTbkFxQ1drdDRla0V1dG1YcHEweWFsMzNK?=
 =?utf-8?B?bkxNNUozMHpXKzBIUVQ2aFZiNDV3dDlBYVYwMHA4WjhDWVRjMm5UK2JraWRF?=
 =?utf-8?B?M1ZOZWRUSDljS0haamNxOEV5Q1NUYTB6TnIraWpCMEgwUkpDN1hLSCtRMEQ5?=
 =?utf-8?B?eWhxcjJyNUNiU29jc2hpY3dtV2NnSDQ0a3plYndNK3hBZFJsQjV0UDB4MGZ6?=
 =?utf-8?B?QitxUzZZdWZNcjN4MlI4dWpHcko0aXZJSEI2ZVlYb2tlYVhGWmp2cmdBb1RO?=
 =?utf-8?B?UFNhaHRHZ01nQlFjSTNDS0E5QW12RG9mbm9Ec0tyaE1mNHJrdndUYjRQU0VU?=
 =?utf-8?B?Q1c4QXVBQkZRSmY2a3hweHAyUlR1WXY5UGl5dWFPZU5maGJVT2V1TDFsZ21F?=
 =?utf-8?B?dHp3M0JHSTRqNU5aN3pVNktQdGZ2REJrd1FyL0RwWGFUSWVqQVdOL2xSWXZk?=
 =?utf-8?B?eHVUa25UekplVlJRQjlxNThtYXllR1RsVGlQVTE3WjNTUSs3UUJDN05ML3Vu?=
 =?utf-8?B?Z1VyYjR5WHNjVmZJREFManN0bWdnam4yN3I4NVl0NDRhcHFuMXNKdExiMmZT?=
 =?utf-8?B?azg0SmZSTkZnSHlVWXhHYnluWXE1UkREdit2Q2dWU3JXbytTUXVEYlFObTJB?=
 =?utf-8?B?b21iYVRKdWVpcHJLWk1uMU5ZOTZWdDA2MmcvQ2xFeHg2OGxVMlB1UkkySjNS?=
 =?utf-8?B?STBHR095aGpEdVFtV0g4K3pFaFo2WktGR2IvTGh0ckZ0Z0YrQmkvRnQ2NStY?=
 =?utf-8?B?UFhhQ0pWWXZEZUluWTF6Q05oMUhmUU41QzluSDBrTWFnMm9hMmdRcmRWNkZU?=
 =?utf-8?B?T2trdUMvOG93QlB3WUtGQjl5NmpQVVVQdktHVnkxZmxOcjNXd1RVS0RmTk9p?=
 =?utf-8?B?V1lIZnJyaExhTVRHMlRmSkZVMU9RWHNuSEcydS9BQUdqY3dNZ0hEQk1VMzlV?=
 =?utf-8?B?bGJ3d0d2WEVpcXByTUZyeGlzbEdvc1A4SVZRT0dhY2h2cGEveHczUHJpaG5r?=
 =?utf-8?B?akR0RjMxZFYxU2l5bFBRUFJSbjRLUFBTM0JqVk9vdlJ2OExMd3dPZU5QaVkr?=
 =?utf-8?B?WXUvckVCcHdJVlpVRVhGTmQ3QXY0V3Zwd1hTdm5rTlV3L1RiS29OV0c3R3Fq?=
 =?utf-8?B?a3VCNnRYYlQrWVhhaWRudjIyd0dXa3Y0bDNXUE5uQXRrYlJVNndmWk44cUNs?=
 =?utf-8?B?K0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e7dfd39-a9d6-4545-7802-08dd2beeb29e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 12:03:55.8634 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dUKgZaVr01eqftWWdQgdugsoJ7WaMx8Or4sT/RRRgEzeIjGjQMN/qpiMXQyVDszmMZjE8AlJcUqGcsKlGepxnZnssWDJvvsZt6vJuvOoHYc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5241
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


On 12/11/2024 2:40 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Turns out that TGL needs its vmin/vmax/flipling adjusted based
typo: flipline
> on the vblank delay, otherwise the hardware pushes the vtotals
> fiurther out. Make it so.
Typo: further
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 32 +++++++++++++++++++-----
>   1 file changed, 26 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 15017254d250..c08dd1e5cffc 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -118,30 +118,41 @@ static int intel_vrr_vblank_exit_length(const struct intel_crtc_state *crtc_stat
>   	if (DISPLAY_VER(display) >= 13)
>   		return crtc_state->vrr.guardband;
>   	else
> -		/* The hw imposes the extra scanline before frame start */
> +		/* hardware imposes one extra scanline somewhere */
>   		return crtc_state->vrr.pipeline_full + crtc_state->framestart_delay + 1;
>   }
>   
>   int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state)
>   {
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
>   	/* Min vblank actually determined by flipline */
> -	return intel_vrr_vmin_flipline(crtc_state);
> +	if (DISPLAY_VER(display) >= 13)
> +		return intel_vrr_vmin_flipline(crtc_state);
> +	else
> +		return intel_vrr_vmin_flipline(crtc_state) +
> +			intel_vrr_vblank_delay(crtc_state);
>   }
>   
>   int intel_vrr_vmax_vtotal(const struct intel_crtc_state *crtc_state)
>   {
> -	return crtc_state->vrr.vmax;
> +	struct intel_display *display = to_intel_display(crtc_state);
> +
> +	if (DISPLAY_VER(display) >= 13)
> +		return crtc_state->vrr.vmax;
> +	else
> +		return crtc_state->vrr.vmax +
> +			intel_vrr_vblank_delay(crtc_state);
>   }
>   
>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state)
>   {
> -	/* Min vblank actually determined by flipline */
> -	return intel_vrr_vmin_flipline(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
> +	return intel_vrr_vmin_vtotal(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
>   }
>   
>   int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
>   {
> -	return crtc_state->vrr.vmax - intel_vrr_vblank_exit_length(crtc_state);
> +	return intel_vrr_vmax_vtotal(crtc_state) - intel_vrr_vblank_exit_length(crtc_state);
>   }
>   
>   static bool
> @@ -290,9 +301,18 @@ void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
>   		crtc_state->vrr.guardband =
>   			crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
>   	} else {
> +		/* hardware imposes one extra scanline somewhere */
>   		crtc_state->vrr.pipeline_full =
>   			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
>   			    crtc_state->framestart_delay - 1);
> +
> +		/*
> +		 * vmin/vmax/flipline also need to be adjusted by
> +		 * the vblank delay to maintain correct vtotals.
> +		 */
> +		crtc_state->vrr.vmin -= intel_vrr_vblank_delay(crtc_state);
> +		crtc_state->vrr.vmax -= intel_vrr_vblank_delay(crtc_state);
> +		crtc_state->vrr.flipline -= intel_vrr_vblank_delay(crtc_state);
>   	}
>   }
>   
