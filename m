Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 990B4A61707
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 18:05:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D30710EA12;
	Fri, 14 Mar 2025 17:05:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f4vLYzLH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE2A510EA12
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 17:05:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741971917; x=1773507917;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CqLBwr6xtQGhU4s8bhL/32hPCb+um5QYQU9m67k2u4g=;
 b=f4vLYzLHV8EfwCE0w4b5vBDibdIzzEkn8BJdlF1iIXPnFKYNKpA2fK04
 J4w5tohkC/6NT/cMO9rx2IrZ1gKNUpcvnFuHpx4kgbs72+65HWLIjQy4E
 CTNzgkjr8yrtbb/XKTuQluj/r44RFp21XvF85/GC+6X6C26Lc/MSQk7cp
 9341gQx5w7qn1FiqIllEwnjn4D6p1rWybKcD+TtiIswHbBpkXXqlC7a46
 dkQo/wRQIU5D+kjBkvrHm9YoW25L02Ff4E0C+fkG6jPY+vnBUbwMvTTxe
 6LtcKiF9EBeQ2NSCJqNOt1RJdAoIy6fve7hHVPGl30fSKOBNzuZXN9nTH g==;
X-CSE-ConnectionGUID: 2YdzjqWMTtCujrAfFVkKLQ==
X-CSE-MsgGUID: 7lbRAW9wRiGVa71wK/AwOg==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="60674942"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="60674942"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 10:05:13 -0700
X-CSE-ConnectionGUID: OTjOHWkLQ+iZe3dRb4ybqw==
X-CSE-MsgGUID: VCLJTXtKTkmnRo5zZFx5BA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="152228058"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2025 10:05:13 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 14 Mar 2025 10:05:12 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 10:05:12 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.174)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 10:05:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=cGvpEva129MHn4T0ZXxw09gPIk5kO0vBXusyQLJw4E6ReW4t6IfYmVEie+5iw9iq4rnq59YFSGLcH5wNdwJ0ZGZMGPuv4HAEArKybK35RjbYkGYnSNRlCHZ2XOsf3zyBr+QfmtgfLT8r/ziL1jco8UFvWUVJru1D3jPl40EIXF2czkdeVHReyzeRaRqtKB9EbL0XFtCLxWMUNfbXpjR058FJVrarZEQn8h21Y1zsYAk64VshF7c9aY2L4vcNZTF+bxbnda9Xr+Vo7VDKf5jJamjF0Cwz6zlwUj/JsWQdkRLoFKpBYGVq/kp4HkJHjWmgoGw1uIMVOndHShhuWQEChw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1NmJJ37dhPIp6qG2xGVOv5hEZ2xPBML2rCp0oBT+Xq0=;
 b=ZPZJy5uT8lrxpCpWSuTjZZT9OfeYTKqnmvPUSUH3yosrsG7qgNa/d8lN86K5aqYpkR/pYz15aGLsJ5pK+lXJFVVL3wnZlx1Ufz/k2I3l+6JvKriWZRSFihYO3+na6xfIhYiY4z5pBKtBHGYxClmVMqBTMnIysZeUMFWKVyRNLASHcr/i3ELdHfuePpSGgwiHWzuozwtxqEEOyr2XISb1XKLHZHqdAldg+omtOSJKBuae39bz/MrdYFGFZh8hD5osuBpx+WVfPl/WNsJE9f70F14Rw84Z3/IpbDmkLQTqNR2PU592ohRacqCE/uhoghIUnFZd6TiPLmTNnBeAfQIJRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8019.namprd11.prod.outlook.com (2603:10b6:8:12e::18)
 by SA2PR11MB5097.namprd11.prod.outlook.com (2603:10b6:806:11a::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.28; Fri, 14 Mar
 2025 17:04:35 +0000
Received: from DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695]) by DS0PR11MB8019.namprd11.prod.outlook.com
 ([fe80::d2ab:ff8b:3430:b695%6]) with mapi id 15.20.8511.028; Fri, 14 Mar 2025
 17:04:35 +0000
Date: Fri, 14 Mar 2025 18:04:25 +0100
From: Krzysztof Niemiec <krzysztof.niemiec@intel.com>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, Andi Shyti <andi.shyti@intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH] drm/i915/selftest: allow larger memory allocation
Message-ID: <wf7iikxwpvqx77267aaxqhdtg5qjisdowuh5bnnv2o47jowzvb@avicp6k6yjtj>
References: <wv4aw6syqjox52lpgkddxykr5namvan4eb7b4obj3rligwyp7m@33c3ko2mj7sp>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <wv4aw6syqjox52lpgkddxykr5namvan4eb7b4obj3rligwyp7m@33c3ko2mj7sp>
X-ClientProxiedBy: VI1PR0102CA0060.eurprd01.prod.exchangelabs.com
 (2603:10a6:803::37) To DS0PR11MB8019.namprd11.prod.outlook.com
 (2603:10b6:8:12e::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8019:EE_|SA2PR11MB5097:EE_
X-MS-Office365-Filtering-Correlation-Id: ede5d26f-aa52-456f-6689-08dd631a4bef
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RmtHdVArVCtxeDgrRjRRRkttdVVFV3doN2Q3UTIxdGx0c1BlQXJGYUlLZU1V?=
 =?utf-8?B?RHNaV3FaNkFORDJoaUwwNldUeXF3U2hCRytZV05JYzBtMTBJekNGVTExOEc4?=
 =?utf-8?B?cXZ5Zndxemp5T2Z6Vko4cVJoYWdkVzhQMThZSGlQUlZ4WGNtT3Q0M0RTZFFR?=
 =?utf-8?B?amxJVmI5R1h5SUJaWnFTVTExc0dLOXpHVEF1R3d4V1lzeUsxclEzUFVyckVZ?=
 =?utf-8?B?akowRzNycXEzbllVZHRJdVZHNHdacFBVNzFMMWJBc01jNG9xWk5ha2lrT3Zk?=
 =?utf-8?B?TnBZVG16UUYwYnRNNit3UHJNckE4SU9SblZMUXdQZWF1Z0d5T0x4TC9KTzlY?=
 =?utf-8?B?MVQ4YzZqeVdROVpTZWMwSlFuQ0Uwek80eUJEelhIZ3F0NDU1TUhPUUs5Ym1H?=
 =?utf-8?B?b0h5NDc4T05DeEp6L3VmQXVYUGR3K3JrUm1QZi83ZytJek1CTWM2aGJWSEpi?=
 =?utf-8?B?aUxtM0FHSWJhekFXZFU2Qkx6QkpwQ3Z6L2VHVlVnblJ3L1IrNTlpZDJoWUNU?=
 =?utf-8?B?ZzJBVEtYbFhXQkcvVjdNUHRNdzdzeVBtdkpDbU1mQkNTakkwNFpTekhkRXpu?=
 =?utf-8?B?WFRtazBHa0lYN0g1NVBJU2JROTUrTGhMSitaR084MjZtdy9UanQ2a1ZCL0E5?=
 =?utf-8?B?MURHbWpCTU1DNkpleUN3bC92V2k0MmNsbmo0RDdiMXZaU1puZFBUQ3puUG5h?=
 =?utf-8?B?K1ExY0lnYmN1eHdaNG92Yk1YN0xoYmtNVlVLU2pRSnhlMEJPbTM1a1o4NC9k?=
 =?utf-8?B?aHhIYXpMQjNLalIwejBOVEh2SXpkQzJrd0hqYm11TEN4UGVYZmdySkl4UWZ5?=
 =?utf-8?B?QTlLS2YxRWZHcVRoTWVkSFM5MlE0K1NXRWE0eVVxYXpFWi80cC9SY3lBajhQ?=
 =?utf-8?B?SHd5S3NGTFc4WTU3QThKV1hWVm90aE4rN1NhNU96NmhaZTJoRXJpYUE5OEFk?=
 =?utf-8?B?SUNrWmJSODhvQ3dvSXdlckFKbHhUd05ZZG9lUDlOT3pIYzdMZnFrazRhS2ZV?=
 =?utf-8?B?aVhKaWU2TGRpUzcwdm1jMjE5L292Mm1nMGs2L28rYWE2TzFTaFltY0JYOHo3?=
 =?utf-8?B?UWZQZlJsdHJBamhhd09iUFRCTEFHazN1Ykk0TkpjdklmTW12dzlVZm1vTkpF?=
 =?utf-8?B?TjlFME9PM05pbm1RTjM1RElwWUF2M0Q1cCt6ZDNBcU9hWkI1RTVkaWpTTnV3?=
 =?utf-8?B?Y1ZBODdqRE8xaDdzVHVIenVKS0s4TW1ONlJQcWNyNk9sNU1CTy9LR29pM04v?=
 =?utf-8?B?U1N1TVhDU0lkbHpBdzZtZ2hGNWJtejdPUE5JTjR5eTJCVUdtL2xFbnczbVNr?=
 =?utf-8?B?aVNwVHBvMEZXeDUzUE5nS0oxbjAyamJCY2dFRWVuTEo4VWVIMVY2YmNmcldN?=
 =?utf-8?B?dWM5a2pSVFdEM3RwWTlYKzhyV2tJdUUyRVh0aUlZL05neU0yNUZDbk1vc0d4?=
 =?utf-8?B?YzRwcWUvQ0FFVDdTMndON1FsaDdTOVI5dEJiZDBIT1p5Z3lhQTBWbEtyaXhX?=
 =?utf-8?B?VlJjMGFESHVYbFpRODA4Q3FGNDBmcmJTcFJzVnZYMjRVdkZIMnZvS3hLQngy?=
 =?utf-8?B?TkV5cjRzWHVTUzFsZ0xBc3l3OENJY0Z0eitTMlBDNjhkZjZ1aDhuTjZKd1o5?=
 =?utf-8?B?cW1SRGNxY3BCRGJxRy9NZUR3ZUpjM3ErT2hVN21ZR0s3NTB4dHpEanFvM2xD?=
 =?utf-8?B?bnBRd0M2aE5CdTR0ek1pK3RpSW52aFQ2VEtKNDRYQktNcnBYT3pKNEpJYUww?=
 =?utf-8?B?SXBITXRBMFlNM2ExdTcyZlJpN1BoOG1hV3dRTVlScjlPM2ZMRDVmbCtScWZj?=
 =?utf-8?B?Tjlac0N6ZGpLQnhuSG1xUT09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NDFycFowaGh4RzRVVWlwbGxkS3kyQUFwUk1UdDJHZHhGMVlWTVpvVXd5UDRN?=
 =?utf-8?B?WlFXL2VmN3FCcFVuSFp4TzFNNEJqWDF0cXNwejNPNVhrN0t0YlB5WkxFRnV3?=
 =?utf-8?B?S1lxRm55eTFnNlk0WDBHSnNjTFRycFZFeWkyVEdDbTdJRU9ickJKYzBsWWRZ?=
 =?utf-8?B?MVVLK2VyMmpTUGFQY29UNUNXQ2pROVpocy94RDJ2VTZxQTdhRTVwQjZBUEpT?=
 =?utf-8?B?cHRzckVZTnFRSnVaOXBySkx1UUZpYk4yVTVqYXVpV1VEYjZTeVZXTUJMNmFX?=
 =?utf-8?B?N1hCU251dDJOWVp3TVF0bkYwZlhLTWEyK2NzenpZQ2dFZFNPK1hGRjhVY1N4?=
 =?utf-8?B?VkUyaFJGa3JVbUxrc3kyOG1TUzFFUll3Q3RYTXlaTWY3aUxvR1p5ZVorcVFL?=
 =?utf-8?B?MFU5M2dCTTF6WWVobDFoY1IydDUrdTY3NVlWaTBnYUhLS3dEbUtrMTIwWjdX?=
 =?utf-8?B?WHZwRHNPanBWbzZjby9TZGJWdHpuQnJRMVdJN1l5am05QkxSWnB5a1pBTzQv?=
 =?utf-8?B?QVVETTRqL1FnSmxsTkJLSTB6YUxPZEF2MHpqZFY2V1A0VXRxM0tvM2pPMGJ5?=
 =?utf-8?B?RVQzT2phQTJuNE12d2hGejRHRDcyRXc0THFHSk55bW1Na0h3blBGSGtnU1NU?=
 =?utf-8?B?Zkc3M3V3U2RodnE2WDU1a0JIZkpEWWwwSmhHdHFSRnlRcURheXZZL01tVHBZ?=
 =?utf-8?B?OHpWSFNIUW8veFBLUVJsOGI1Z2pTa25CcFlTYnVKMllMRElnY3dNREwyeDBD?=
 =?utf-8?B?K1l1QkFkOStLTDBpdmtlYzBNOUV1YlI2NGNUMmpNZktGSlk3U0txTENYRkJT?=
 =?utf-8?B?WWg3cy9uQzZSa2ExMXAxblBldms0NE05SUhIc3BacXlLM1NaS2h0M29zOFg5?=
 =?utf-8?B?Z3lEUjRtRDNnaEhjdXZPeTBJd1ZPQlo0aG81cjUxSUxjYkFXYVlRayszVWJz?=
 =?utf-8?B?d3E5MW0xUW13ZW91RTU5dkx5ZjhmcDdXK1BNbGZxMlpPNEM2bDlSOTF1OWta?=
 =?utf-8?B?ci9GMUZ6WEhqOVZnbXY4RStTcG5iUDhyQmtHVWl5dTNBRnVSUElCQnpoNU5W?=
 =?utf-8?B?eXRJZ1RrNlptWVNtcUdiSHc1N25QYk55NVIwZEFOUHlzM0U2TklMUUs0eFZN?=
 =?utf-8?B?NHVaejVrVGlJODRHS2tFc1NhZGx6OU54bm8zZS9yUDFKRXlLb2FZNlc2ZGRi?=
 =?utf-8?B?UFBoT3dmUURoMUVRVEZENHJHNUx2bXQvUlhLM3V0VUZMUXlQMUdaUGN0UG44?=
 =?utf-8?B?b3ZFdk9DTWhxalpvcE8xcCs1ZWtOVE5KNEMxY3FHdXI0UjIwQms3RUVwVnhU?=
 =?utf-8?B?b0poZFU1bjFnYmhBRW5WZWwyOHhwdzFMUVppcGk4dWpDL1NralprOU56T1N5?=
 =?utf-8?B?RW9IQ0VFa1VZQTMzMlBBWlA3TjlpVWphenZ1QTZOWWNhMWkrMDMzM2hLeURs?=
 =?utf-8?B?WEdmZXNkcnlMV01XVEl0anlUaTlwQkVmM3NWRy9BOE5PamM5YWV1bkZwTUg4?=
 =?utf-8?B?SThNdy9LQS9ET3M5b3k5UEdjeDhvUUZ2OXhQUjZKQy9meTZDczJwelBaTVB1?=
 =?utf-8?B?MU5pQ1ZRR2J1cEFqbHNaalc2cityWWZicllRRUZZaEJKUUdBR3NxeW1EOGF1?=
 =?utf-8?B?Zmo2bmpLaXlsZXhtNFVUdncxeG5KNkhEVThoZEtiSmhVMWdHd2c1d2tjQjY0?=
 =?utf-8?B?dTQrTWlSZjNqNml0MThpYkRBRCtqemdvTWpmaDlnRlV1ZVlONXgxYUhKb1pT?=
 =?utf-8?B?VXhsVXVqejFCSjVvTXdNK2l0UFBqVDlsSWlPakRrd1oyRTY1SC8yT00veTYw?=
 =?utf-8?B?Y0hFd2trMktnd1crYllKajd2ZWJ5N0JJUnRjWjlMWFhZWHFkbGk4N0FFQTd4?=
 =?utf-8?B?Uk00ekpBUkg1cGNpVm14a2M1VkZRR0VUMkpOcWM0bUNjbGgwQlo2bUNhL25z?=
 =?utf-8?B?aXdRblZyK29hYVhxNmxQeUR0WEhkcXMrdXF3Z0RScEFWK0VOS0krRzVlaUZz?=
 =?utf-8?B?ZGV5Ri9RMWxkRXFqbVZTNHQ4WXRyUEFHNEt1R2NUODlPUms4MjdWdks1OTlD?=
 =?utf-8?B?VUxJemRsRTc2aDUrR3lOTkxSU0FWN2pualNDZzJCd1FJbCtpVEZmelJvUkZa?=
 =?utf-8?B?R3B1bWljRXMzTTN6TlNFLzdXaTBrTTF2VEwwR2dMOXJ2SEQ1SGZlVllZYUdY?=
 =?utf-8?B?bHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ede5d26f-aa52-456f-6689-08dd631a4bef
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2025 17:04:35.2367 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AUaGlcPqJaPnO8doCMTQMyQLZAwyCP8xEtesZgWly3wx5fK0Ege5EBBU+TkT/wSgCL1BEmtZXNcf5xoT+0cI4zsCiOa1nE74WmBxL3wjHvo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5097
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

Hi Mikolaj,

On 2025-03-14 at 15:42:23 GMT, Mikolaj Wasiak wrote:
> Due to changes in allocator, the size of the allocation for
> contiguous region is not rounded up to a power-of-two and
> instead allocated as is. Thus, change the part of test that
> expected the allocation to fail.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9311
> 
> Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
> ---
>  .../gpu/drm/i915/selftests/intel_memory_region.c  | 15 +++++----------
>  1 file changed, 5 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> index f08f6674911e..ce848ae878c8 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
> @@ -413,22 +413,17 @@ static int igt_mock_splintered_region(void *arg)
>  
>  	close_objects(mem, &objects);
>  
> -	/*
> -	 * While we should be able allocate everything without any flag
> -	 * restrictions, if we consider I915_BO_ALLOC_CONTIGUOUS then we are
> -	 * actually limited to the largest power-of-two for the region size i.e
> -	 * max_order, due to the inner workings of the buddy allocator. So make
> -	 * sure that does indeed hold true.
> -	 */
> -
>  	obj = igt_object_create(mem, &objects, size, I915_BO_ALLOC_CONTIGUOUS);
> -	if (!IS_ERR(obj)) {
> -		pr_err("%s too large contiguous allocation was not rejected\n",
> +	if (!IS_ERR(obj) && !is_contiguous(obj)) {
> +		pr_err("%s large allocation was not contiguous\n",
>  		       __func__);
>  		err = -EINVAL;
>  		goto out_close;
>  	}
>  

If I understand the test correctly, the goal of the part that you're
changing is to see if an attempt at allocating more memory than
max_order is properly rejected. Since the allocations are more granular
now (not only limited to powers of two), and size doesn't get rounded up
to the higher power of two, we should be able to allocate 'size'
exactly. Meaning we lose the intended functionality of the test (check
if we can't allocate too big of an object), because we're not allocating
too big of an object anymore.

I guess a check for contiguousness does not hurt, but the test behavior
is fundamentally different here. Maybe manually rounding size up to the
nearest larger power of two would be a better idea here?

> +	if (!IS_ERR(obj))
> +		close_objects(mem, &objects);
> +
>  	obj = igt_object_create(mem, &objects, rounddown_pow_of_two(size),
>  				I915_BO_ALLOC_CONTIGUOUS);
>  	if (IS_ERR(obj)) {

I'll paste some more lines from that test here:

        obj = igt_object_create(mem, &objects, rounddown_pow_of_two(size),
                                I915_BO_ALLOC_CONTIGUOUS);
        if (IS_ERR(obj)) {
                pr_err("%s largest possible contiguous allocation failed\n",
                       __func__);
                err = PTR_ERR(obj);
                goto out_close;
        }

This is the next check - we see if the largest possible allocation
(according to the old logic, it would be 'size' rounded down to the
largest smaller or equal power of two) _does_ go through. The success of
this particular check isn't affected by the allocator changes, but since
rounddown_pow_of_two(size) is not the largest possible allocation
anymore, maybe it's better to change this too (e.g. drop the rounddown
function). This way we keep the intended test behavior here as well.
I suppose this is still in scope of the patch.

Thanks
Krzysztof

> -- 
> 2.43.0
> 
