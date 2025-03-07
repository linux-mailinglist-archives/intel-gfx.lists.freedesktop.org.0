Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B4B2A56775
	for <lists+intel-gfx@lfdr.de>; Fri,  7 Mar 2025 13:04:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB17F10EB40;
	Fri,  7 Mar 2025 12:04:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MBpyOgfn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E21CF10EB3E;
 Fri,  7 Mar 2025 12:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741349064; x=1772885064;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=q4C0RSrA2meSUtPwhRaJ/EtA8aipNW3da29iXH/HBmQ=;
 b=MBpyOgfnaFG8TQwfQf2ZPZsBNCfHEH5cS/nMA+doZ9n3ly3jTHIVfvCP
 3J/8YkisEAoxVcwVGg6b8Bmv+gna7SbGDET3Fw3fnt09GSpLOIVQ3M2/O
 LQCvmOHorIcSLNvqS7AfsHjrdyFpmNDyj6U4x1MJ+wIxVVWpSJqjYRm6q
 dtqqNqoaGOApgYsjedRHgPY5Y6UspDLWLDOJ6V+gmbtJQ1ao2xfX5IxVz
 sgkNpzWSEBTxYEwuMLsDJdzwp9YqNirYRzCN/UT6+U0XmcqDcmZKeofHE
 ep6vVYWxTJOn99C1tVWviX6mdqVGaTLYs95AIcSMWEeNJxTizpgQF3qdz g==;
X-CSE-ConnectionGUID: m1oGGAkNSs6sprzhWMLnig==
X-CSE-MsgGUID: QvkS5RypRV6SF3//QFubWQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53030299"
X-IronPort-AV: E=Sophos;i="6.14,229,1736841600"; d="scan'208";a="53030299"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 04:04:23 -0800
X-CSE-ConnectionGUID: RzvswX9wSY+fQ85Zs1l18g==
X-CSE-MsgGUID: 5h9uw01rSqOknn+R+La4AQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124527607"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2025 04:04:23 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 7 Mar 2025 04:04:22 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 7 Mar 2025 04:04:22 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 7 Mar 2025 04:04:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RkTYm+pk/Pa0txWtLfjxGLsGLlw5fU6A9bZ9oVA3MEBKyGd6ZuOzQ6hfibkTkfYuybYATH1+PFLoYM+szr31nCa+52dd9n1jxBSbq0bMQnhnwHK7Dqn52BcZfE2yvprAlnbptNCyKVDw2yiLRJp0/azlWgtTQ3TYkvmvS2SFUvSYG6uE3WvBIbyEo9NFCguHM3hHsaw7+MtHa3DdgGlEP+nZi44VuXK1XNxpbnCjRkfkVDrV6QvcdNBdNgAkTs3tOAmz3i6tFtCmdbOyb0jXFjsWoE6tvtRXvTMoRCSKUQ0z/kLSimZW/cV6+Anlw+WPZdNXknup0MVfaXD1WgG8Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KAAzuVFg0w50ORuf6BDneDOEcVL9FtPjY8i/V45uEUw=;
 b=MWqYNQIjd60OakQj4GHTJMILD/D46xYz+qzPG1sTJ4YCp/bfouV8dztEzg8D4WaAHVFB8uDNLaKoZ95UceoUYhLHfwYSDmtUhMMzAA9UNUtvREAL52Y0TVgrduD7rteSsQEh2Fht/fxI3cOZzIQtIYLEgcwNeg9e9qp1umLFV+mJCEG9LcOJbVrDMKcJlMA/LwWqiFetxXEJ9B3Iu+2LwlFmxEz1yJmEFMuWdOnwNoBKP0h0WnQfBgA/od/W3ilG+tNg9uLVinF9NyGgewnYDe3vs62Df+pqjRoXcmeP7gVpMRrRnsAtWdOyL5XfwoT3QaT3WhS5hBGrFxV7m61svg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN6PR11MB8193.namprd11.prod.outlook.com (2603:10b6:208:47a::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.22; Fri, 7 Mar
 2025 12:03:53 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.025; Fri, 7 Mar 2025
 12:03:53 +0000
Message-ID: <9d1d55c7-199b-47a6-913e-d221d7cf2853@intel.com>
Date: Fri, 7 Mar 2025 17:33:46 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/21] drm/i915/display: Use fixed_rr timings in modeset
 sequence
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
 <20250306131100.3989503-16-ankit.k.nautiyal@intel.com>
 <Z8nRZPU6__OTBWHe@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z8nRZPU6__OTBWHe@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0067.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN6PR11MB8193:EE_
X-MS-Office365-Filtering-Correlation-Id: 03f6f292-c41b-4e67-d630-08dd5d7020ea
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Z3JXNzVvdFJxVFRZc25DWUlvQ2YzRVN1RXQ4YmdxcWk1UWgxYlF2ckYxcEhI?=
 =?utf-8?B?eEtVYkVsSERPTTBkSlNrZ01zbzFxaXBYcWRXVng1c1BqRDhJRW5BTmhsdGhS?=
 =?utf-8?B?TXUrZVlrRVRtRElkc0Rzck9MUnRaTmxsVGQ1aHd0L2lyZnltZ3lxUkFaam5y?=
 =?utf-8?B?ci8vcEVrWDd5LzgyYjZQN1NLUTlOR2VocjB4YWw1YUloc0FWUlJUSzJMK1h5?=
 =?utf-8?B?bUI5bUNRbVNiNi9ReFR1QWpUc2Fha1FSSFJsTGRWK0t2TzRjRkRvakZPRjRS?=
 =?utf-8?B?Rk5tN1doZ2k4S2kzS3NmZ1R3bXhhcU1vbjN6aXRTd0JiTHBVeFRQN2I2c1Ra?=
 =?utf-8?B?dTg3djRZeHU2UHhnSElaZDEzcmk1a0JuMDBHNEtIRUxvQmFBdEp3N09nTlNP?=
 =?utf-8?B?S2JlVFBleVVLZzdIT3JtTnJjbzB3ckwzT0ZCZjVTUFprc1M0b0tYaUh2ZDh2?=
 =?utf-8?B?U3JVMGFBY1BVajBBWjU4SkRzVzhFRmI2ZVc4MmYxQ25hM3dKUDBzbEh3VFVQ?=
 =?utf-8?B?MFZJSTh6cjFyeGNhK0ttNk5kZlhyeDRzdHlzVjZLRWJWamVTWER0Q2xETGZF?=
 =?utf-8?B?K1ZnY2pib1p2MG0yNEhWZ2lidVN5aVdGVVNKc0lCaDJ6amlGTEoxNityU2lX?=
 =?utf-8?B?KzNrbU1PL3pxN1pZc0JoUEJvL250QWdod0plb25uSWZRYjhIUmFudzlaTFh5?=
 =?utf-8?B?bzQ5VzZ0WU1XdXZOSVUwOVZhNEhiRU03T3RwVmxrOFVvZk1YOVd0TVZOQWZ3?=
 =?utf-8?B?djBUYkdwSGcrODgvZWlqTmVyeDdpRG9XVjE1UVpYWG9xcDV5NzdRbW9WcTZW?=
 =?utf-8?B?Ujg2YWE4MHdDcEVQalVOSzNQR2NOeFd2L2g2TE5hcFpuR0xrRWdQYk9PUXNz?=
 =?utf-8?B?Y1J2dC9jUVZ5SlN1NFZIaXFJalo4NXpVM0lSMlMzOGVBMzJoMTlvY1g0Zmlt?=
 =?utf-8?B?V216VFlTWW1rTE5UdmtIQmRrQzhqVmRWY0VMbVJadzhFRkdaRnQ3ZkdvVHlq?=
 =?utf-8?B?VVRoYW9zQ0N0NFg4L1BkODkrZm92MDg2OFZPeEw5V2FOT04rTTZqOVpQZFZJ?=
 =?utf-8?B?aEV0c3BPZ3k0dE41WHB6MVhNQ3ZRam12bzlBangycGVVZitMTTlLY0dPQ05G?=
 =?utf-8?B?SkFucWlkRUVFQkg3VncrcDc4ckwyYU9qa1cwM1ZnVi9JMjZQSWQxYUxXZUJp?=
 =?utf-8?B?b25LQWdlYWRYNnRMRmdXY1RweDBHNzJsT1JhRmV1dytscDhkY0krai9PL0cw?=
 =?utf-8?B?ODVKTWNUTEZKQ2RXblRSSkhqUHNZaDlyYW1kaTdqOFM5SFFPaGVlUzBMMWZj?=
 =?utf-8?B?VVRMM2Q4TlZtTlZMUlVuTkp2T2xmN3RNODZnRWdFSFFTOEdnOU5KSy9OTGxU?=
 =?utf-8?B?ZnVaT082SG1BakNWMXVCem95azRTRWpVQXg0KzRUQmJUWFRESEw3dHhOUG9L?=
 =?utf-8?B?VW41VGZlemk5NDNvMjdrZjlLMldzemJmeTZ3KzZiZFpaeHExQzFXcFdUVjVj?=
 =?utf-8?B?T0FFYXMrRWdFVnVZcUNvQ04vMGJpUjFvSHRyWmszRDRkUFlTOHRWa1k5U3VN?=
 =?utf-8?B?NS9Bb21WdnFiOVFMREpsekVuNUVUZDlsNUZDa29sajFYdmRlSm14azVwUXRx?=
 =?utf-8?B?WG9tU3VQbE1Sdy9hQ3VpazJkVGJyY1hoVWRNaUhFMGZEN3c4QS9xSG1adFJt?=
 =?utf-8?B?QXZUL2tjM1hTaVJUZlh3aC93Yys1SEwzK0Rub21maCtqRUkvNVBZcmZ1cDVw?=
 =?utf-8?B?OHRHZ0w3NHZMaTQ1dFNKOWxkaEhOYmtvVXZqRVEyeEdCZys5bVI2dEd3M0h1?=
 =?utf-8?B?WWh3dlI3TnBuYUVSYld3V0Nuc01VYmlsVHdtUGhuZXcvSmVuWW4yRWZ2YXBX?=
 =?utf-8?Q?Ns98fCRGBcZgz?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eTZWY0tkTWVLUXhNcVlrMU1RTU9QdkllVVI2cElXaVZxcHVaV3pjOXVEZ2VI?=
 =?utf-8?B?Um9UQng5NEs4RnFDeUd4L3hNSnI0WVQ5Y25Id3MzR3lpYUVTVnZvYmpCaFVQ?=
 =?utf-8?B?M3I3VDhXYkM2VUsya0VxdGdXcDk5dm50QjllSWgyK3FpbVJIbVJ4bkJFMzdz?=
 =?utf-8?B?bzFuQ3g0bkg5ZlZCeVRtTjRXeEJnRTg4RUxRR3QwMk1ORm1xRmxuZmNteTdy?=
 =?utf-8?B?SzRpemh3Qlp0dmVUbG96NUlIQ0RKKzVQTmROb0ZnakhYS3cyR3FGdUd0M1Ry?=
 =?utf-8?B?YWtMMHg5bGdwbUZ5K2RiV0dLYXJLT2FHb1VEZGtsa3EzR01wa3hlbUc1SGVR?=
 =?utf-8?B?UkRsNXoyQTRINFc1NUFOSVdpU2ZMWGNKTFBQdkc5bXVqTXJ6QmJvcndnZ1Yw?=
 =?utf-8?B?cWpLRWNqNE9wOS9CL3k5NjE2RHgraWg4S1p0NGJvVmJ3cUNPcHpwNFY3UE80?=
 =?utf-8?B?aWcyakRzd2xaR05Wa2piL3c2QUQyUUtWTldQNGZqVVI2TTg1V29xeGZWK1Fp?=
 =?utf-8?B?STF2MTdYYXBpbjA5U3l6UFFEYjNLR3RBRDFiNDh4Q2VjL013UHdqSzVkVGt1?=
 =?utf-8?B?VHdiY2NCOENOb2kwZ2E3aWZQZjdFckdkT3dNUjlXZitGRE9DSXI3QkhNYlFL?=
 =?utf-8?B?RmJ3SGNRUFFyNjMwT09kWThEUzBGZU5FakVWVXN1ZEFDbWc0VHVUdXJUMHg1?=
 =?utf-8?B?T2hlV2JxNytOSUJwLyt1WmZTWUVRdWREUmFJTFVkdVplVnFKQURPR1VJUU5W?=
 =?utf-8?B?dC9iR1U4d2tCVEVJV29MTkdxWExUV2NrY1NpOGI5NkcxVzJ4Wk0vVmU1WEhF?=
 =?utf-8?B?R2FmbTVMVkprWXNiU1p1aHRlaUVZUU1CR0hJTmlqV2R2SVFOdEVPSnZmV2lZ?=
 =?utf-8?B?UE1VVUUrdlplRUJZNGFnczJpWW5PMTEycmhseWZSakRjVlVpSFNCMmpMd3RK?=
 =?utf-8?B?NHRrTXh4Q3M4YVgrNXc0SGxGaDFJcVBwU21SZDFJUFNrQXZSTzY1VDBWdUxV?=
 =?utf-8?B?SXlYTzJWYnI5bnlPenlGS1AzUlFnSFFvVnc1UkU1d1crUXZ0RXlHUWE2K2p1?=
 =?utf-8?B?MkwxY3NjYU15TGZtMVczUXhWM1l0TnU1SmhEOWU5d2wzd1Q4MWJXUFlZQmlO?=
 =?utf-8?B?bDl0SjFUSXJ0ZzFua3gzdm4zSXNwREtDQjBCNEFCMGpzbHZHeDBFYmlzZnFa?=
 =?utf-8?B?VWZQN1dQQmtOc2hoeDdTeHEvSjhWbHA4L1VETXh3WXIzL1ZDRkRNQWhoc0FK?=
 =?utf-8?B?TkJ0cGFDREN5Q1lMMmNzNXh6dWE1VnhVd2NNZ1B3S2IxeElrclI0STJiTS9h?=
 =?utf-8?B?cjFPOGtxck1LUUx4bE1xUkJMOFMvUWI5cEJ1T1FXLzJkQUEzYTVqZGhrcW52?=
 =?utf-8?B?M24rZyszK0dYRFdlUWt2ZlB4ZmVmdUNmRjk4Z2wrM1dkRG5mU3EwbzBGbjk2?=
 =?utf-8?B?dlFsQWNLY1hpa1lQakh6MVpFTXlTMFZuRngzWUNZUGkwaFQrSnFmaTM3cGN3?=
 =?utf-8?B?cUxCL1JVei9RNnFrMEJMbXB4b1NpNG5IZTRJemxZTENWOThCaitJUXZEenV5?=
 =?utf-8?B?N1RiMExWMzd4SXYwdzUwU1dKcVZ1TWRaM0oyQzhpM0RoWWRxNzBkOExteGpR?=
 =?utf-8?B?Q1N1ZmorWjYxOGhSR3Q3WHlES0VJVWVuTkxCTkZVeTZZRlJPNzRDSHRCclV4?=
 =?utf-8?B?VG5OR2RlK2xjaHlna0VnWmE2WHROc1h5L05CSHFLbDFKRDh6S1liNEdvcWVZ?=
 =?utf-8?B?SHZOS003MnZZRWIvbThnazd1L091SWVBNWtXaG1Gcmw2NDZEaUhlSWpLWHJX?=
 =?utf-8?B?cmw5eC9naS84WHJqWHVObjMwMmdUd1NZSXN0K2hMMk1BR1M3SUNqQ3lsdFkw?=
 =?utf-8?B?TDYxZkp3dmEzTHFWcnVOL0NUa2RobjNiWndtdUhpenAvb1BQajV2REtPY1ZL?=
 =?utf-8?B?MElQaTZLbkNLMkZKSXhQbDRiQlA5azYzeVhKcWFRZ0VTL01selVOdGEvZ05y?=
 =?utf-8?B?OHVxbTlia25XUDVWRzJYSjYreUVrWGpYM0xVaU5ZV3hMTWx2SGRiZXlhTjRa?=
 =?utf-8?B?dTJsUGNOMUw5dno4THlwYzNHakdhUE9ubXI3ZTJzZ1hZLytQZ2ovalpTdFpo?=
 =?utf-8?B?K3ZVTTV2Y0tEU3hYMlJUVU5kdG4vUTFLSG5IbGdjbmhOL1BCOU1wY1BadE5s?=
 =?utf-8?B?cEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 03f6f292-c41b-4e67-d630-08dd5d7020ea
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Mar 2025 12:03:52.9905 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: JNwJs1NC1JYleh76XnCTyUmYZXXNLxj7iyJB3KRbZe9cyWtTANgGrZYw/HbrjCNiqvSf029Bmo0nXEAda4ZY+d05OKeztqe9vNXRqa2fxWY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN6PR11MB8193
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


On 3/6/2025 10:16 PM, Ville Syrjälä wrote:
> On Thu, Mar 06, 2025 at 06:40:54PM +0530, Ankit Nautiyal wrote:
>> During modeset enable sequence, program the fixed timings, and turn on the
>> VRR Timing Generator (VRR TG) for platforms that always use VRR TG.
>>
>> For this intel_vrr_set_transcoder now always programs fixed timings.
>> Later if vrr timings are required, vrr_enable() will switch
>> to the real VRR timings.
>>
>> For platforms that will always use VRR TG, the VRR_CTL Enable bit is set
>> and reset in the transcoder enable/disable path.
>>
>> v2: Update intel_vrr_set_transcoder_timings for fixed_rr.
>> v3: Update intel_set_transcoder_timings_lrr for fixed_rr. (Ville)
>> v4: Have separate functions to enable/disable VRR CTL
>> v5:
>> -For platforms that do not always have VRRTG on, do write bits other
>> than enable bit and also use write the TRANS_VRR_PUSH register. (Ville)
>> -Avoid writing trans_ctl_vrr if !vrr_possible().
>> v6:
>> -Disable VRR just before intel_ddi_disable_transcoder_func(). (Ville)
>> -Correct the sequence of configuring PUSH and VRR Enable/Disable. (Ville)
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_ddi.c    |  5 ++
>>   drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 ++
>>   drivers/gpu/drm/i915/display/intel_vrr.c    | 63 ++++++++++++++++-----
>>   drivers/gpu/drm/i915/display/intel_vrr.h    |  2 +
>>   4 files changed, 60 insertions(+), 14 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
>> index 676c1826f15c..6d89a87b3419 100644
>> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
>> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
>> @@ -78,6 +78,7 @@
>>   #include "intel_tc.h"
>>   #include "intel_vdsc.h"
>>   #include "intel_vdsc_regs.h"
>> +#include "intel_vrr.h"
>>   #include "skl_scaler.h"
>>   #include "skl_universal_plane.h"
>>   
>> @@ -3248,6 +3249,8 @@ static void intel_ddi_post_disable_hdmi_or_sst(struct intel_atomic_state *state,
>>   		drm_dp_dpcd_poll_act_handled(&intel_dp->aux, 0);
>>   	}
>>   
>> +	intel_vrr_transcoder_disable(old_crtc_state);
>> +
>>   	intel_ddi_disable_transcoder_func(old_crtc_state);
>>   
>>   	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
>> @@ -3521,6 +3524,8 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
>>   
>>   	intel_ddi_enable_transcoder_func(encoder, crtc_state);
>>   
>> +	intel_vrr_transcoder_enable(crtc_state);
>> +
>>   	/* Enable/Disable DP2.0 SDP split config before transcoder */
>>   	intel_audio_sdp_split_update(crtc_state);
>>   
>> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> index bd47cf127b4c..d2988b9a6e7b 100644
>> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
>> @@ -1065,6 +1065,8 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
>>   	drm_dp_remove_payload_part2(&intel_dp->mst.mgr, new_mst_state,
>>   				    old_payload, new_payload);
>>   
>> +	intel_vrr_transcoder_disable(old_crtc_state);
>> +
>>   	intel_ddi_disable_transcoder_func(old_crtc_state);
>>   
>>   	for_each_pipe_crtc_modeset_disable(display, pipe_crtc, old_crtc_state, i) {
>> @@ -1326,6 +1328,8 @@ static void mst_stream_enable(struct intel_atomic_state *state,
>>   
>>   	intel_ddi_enable_transcoder_func(encoder, pipe_config);
>>   
>> +	intel_vrr_transcoder_enable(pipe_config);
>> +
>>   	intel_ddi_clear_act_sent(encoder, pipe_config);
>>   
>>   	intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, trans), 0,
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index f523a48e6186..d7580b6e4e37 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -460,12 +460,6 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
>>   			     0, PIPE_VBLANK_WITH_DELAY);
>>   
>> -	if (!intel_vrr_possible(crtc_state)) {
>> -		intel_de_write(display,
>> -			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
>> -		return;
>> -	}
>> -
>>   	if (crtc_state->cmrr.enable) {
>>   		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
>>   			       upper_32_bits(crtc_state->cmrr.cmrr_m));
>> @@ -477,14 +471,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   			       lower_32_bits(crtc_state->cmrr.cmrr_n));
>>   	}
>>   
>> -	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>> -		       crtc_state->vrr.vmin - 1);
>> -	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
>> -		       crtc_state->vrr.vmax - 1);
>> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> -		       trans_vrr_ctl(crtc_state));
>> -	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
>> -		       crtc_state->vrr.flipline - 1);
>> +	intel_vrr_set_fixed_rr_timings(crtc_state);
>>   
>>   	if (HAS_AS_SDP(display))
>>   		intel_de_write(display,
>> @@ -618,6 +605,54 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>>   	intel_vrr_set_fixed_rr_timings(old_crtc_state);
>>   }
>>   
>> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +
>> +	if (!HAS_VRR(display))
>> +		return;
>> +
>> +	if (!intel_vrr_possible(crtc_state))
>> +		return;
>> +
>> +	if (!intel_vrr_always_use_vrr_tg(display)) {
>> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> +			       trans_vrr_ctl(crtc_state));
>> +		return;
>> +	}
>> +
>> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
>> +		       TRANS_PUSH_EN);
>> +
>> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> +		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>> +}
>> +
>> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +
>> +	if (!HAS_VRR(display))
>> +		return;
>> +
>> +	if (!intel_vrr_possible(crtc_state))
>> +		return;
>> +
>> +	if (!intel_vrr_always_use_vrr_tg(display)) {
>> +		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>> +			       trans_vrr_ctl(crtc_state));
> IMO we should write 0 here too.

There is one problem. If we do not write trans_vrr_ctl but crtc_state 
has flipline, vmin, vmax all set to some value, then we get mismatch in 
vrr_get_config.

Currently we are reading out vrr.flipline/vmax/vmin only if VRR_CTL has 
VRR_CTL_FLIP_LINE_EN as set.

Also, I think we need to write trans_vrr_ctl in 
intel_vrr_set_transcoder_timings(). Currently that is removed.

Mismatch is also seen where the platform has only eDP connected and we 
just do fastset. In that case intel_vrr_transcoder_enable(). doesnt get 
call and we get a mismatch.


>
>> +		return;
>> +	}
>> +
>> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), 0);
>> +
>> +	intel_de_wait_for_clear(display, TRANS_VRR_STATUS(display, cpu_transcoder),
>> +				VRR_STATUS_VRR_EN_LIVE, 1000);
> Does this do anything? I would have thought the VRR live status would
> clear already earlier when we disable the transcoder?

Hmm, in Bspec:68925 it seems its mentioned to wait for VRR live status 
and then clear the VRR PUSH_ENABLE.

But not sure if it applies if we are disable the transcoder.

Regards,

Ankit

>
>> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
>> +}
>> +
>>   static
>>   bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
>>   {
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>> index 514822577e8a..c4ee8a758e19 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>> @@ -35,5 +35,7 @@ int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>> +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state);
>> +void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state);
>>   
>>   #endif /* __INTEL_VRR_H__ */
>> -- 
>> 2.45.2
