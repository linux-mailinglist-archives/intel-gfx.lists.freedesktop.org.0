Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D73D9A2A4FB
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Feb 2025 10:47:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A47A10E1D9;
	Thu,  6 Feb 2025 09:47:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fGn9hjxp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9281410E1D9;
 Thu,  6 Feb 2025 09:46:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738835176; x=1770371176;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Xq3zD+oWaACg9qsCyFsQzoaon9ZTtJ43J2OqCYKsc2I=;
 b=fGn9hjxpxm8UMQx54FmH+LkecKIk0PUTgol6JFAY0jaKfqEfiTjD0yC+
 V4ChUfJ7Foqx2nSvxr21fxnSiohqFllXxAUVlvPcbjCSP4xmQiAajpxcR
 HFdO0Z8/uzo6Iz6HA8hBrrtTYXaEXnkZM+jif+YqzmYrzsLOsV4LFejoM
 6hw7Nv0LYQGooX4q95BCz5iEaAYAGZa7+tZctO5HKOKk8rXYgKIYg133r
 um+JyoZsBITjuiMMayYtDEBFeT9OEp1F8yZqHaYDVYkUWfz4YYlcgBlaz
 W8THwayBzq2EFEHwGsLUSyCp/ZI7gxwWMURVlqX7Cq/8sNmfTLRdjs6pB A==;
X-CSE-ConnectionGUID: a0vikzOBTDqclzDgQeUx3g==
X-CSE-MsgGUID: svJlOwj5S8uNekPcrFt1qg==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="43091926"
X-IronPort-AV: E=Sophos;i="6.13,264,1732608000"; d="scan'208";a="43091926"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2025 01:46:16 -0800
X-CSE-ConnectionGUID: dDpGvLNJSSepFcSagtRlMQ==
X-CSE-MsgGUID: Lgg7kNnHQg2XBpPylSMZqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="148370577"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Feb 2025 01:46:15 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 6 Feb 2025 01:46:14 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 6 Feb 2025 01:46:14 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 6 Feb 2025 01:46:14 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yO4q/BZgQoI3Ad120ChEdCarT8woFrbmGbe4TdpV2/oTwhV00pDV8vpccwEHkvWQ9xZFe73l+URHtKPAhWi9KdfVUAOxBbn/Qf/Zr0cb/FTdLCrmqK+PgHCwTyPYhkYs+4SRc8bBNLlAbf41MJ6kq0XdwttX/BPvL3ykt2S9IPxRqNdT7oUgIMzLTSRwtCwA7g0P9hQNlAGo35VlbLG8w2pefOU21Fc7DT6jq1qyvpIAG0oi5Fmnn2GeVnSpuMa6U9AYWKqUm0ddsrXstdNXI6zcC2/LDqQjLv2c3ivhOrda341TfQIgL6evKW+5rLmMsksm7QYMIqdOVJole7oW0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=80GcZK8bnoMvoEeNS6dgh/CfLtDqlBfceEGIZfL6KkY=;
 b=B0WZCDpshz2MUKSDKVZ5bkWerZiK9vZILDigSgwDdjE5L2ufz2buvelIqeBepDece0I34LAHIr9oKWPxqFMR6DGLFkHmO2s9VpaBdLLVSA6fcvqdgeEns4uo7OM3cTWtS+rzVu3dqpj3JqNOnRsECZQD4uxccARDEzkOlJLLRuCrIPoFtLJwtWD7VlebjVnVzN8V0FxQPsZjYUfH1fVIfhikPUME0iF//spN1hM9waM1LJNaj9u1gEWcKdTZNK3pT+jkLZ25R0b53y0GuXgkL1OqCRgJc7smb/D3DT75k39/yjZr+MpIQULXppPFJRIKGMuGRgsdCI5ndfpEg9PKdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY8PR11MB7364.namprd11.prod.outlook.com (2603:10b6:930:87::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.24; Thu, 6 Feb
 2025 09:46:13 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.010; Thu, 6 Feb 2025
 09:46:12 +0000
Message-ID: <02251d7d-b127-4d5c-9225-990dd9d5cd49@intel.com>
Date: Thu, 6 Feb 2025 15:16:06 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] drm/i915/vrr: Reorder the DSB "wait for safe window"
 vs. TRANS_PUSH
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20250130184518.22353-1-ville.syrjala@linux.intel.com>
 <20250130184518.22353-3-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250130184518.22353-3-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0040.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:81::9) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY8PR11MB7364:EE_
X-MS-Office365-Filtering-Correlation-Id: 2803e429-2a9f-47c2-3e7d-08dd4693177d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dkl3R084bFFZN2piclFueFNmcmhhalZDYjdqZmJhUzFSZ3g5d0hDSnloTkZl?=
 =?utf-8?B?S2hsZFRkdXNQQXFwUFphdm5HcUxRS0JiTzdPWC8yUE84bXcyZ2FmSFE1dzV3?=
 =?utf-8?B?NTJabGgvcU84OE5zdGVwVUVoNzZpdjM5U3hmMGVOUGdRRmt6ZFZyZ1kvaHVD?=
 =?utf-8?B?ZHF3NTh2cEd4aTFORldJVThsOGU1QzNNdWszWVZCVjB0U2dTQlJNMnNuYjE4?=
 =?utf-8?B?VCtJZEcwNmtKeGFkekxhQUpwUFlqWDA5SnBtNUdpc0Q2dzdpVis3R3RIQTdH?=
 =?utf-8?B?dWNkVERLOVB3NWR4c1h6SjZhUFh3OXRRYVMzRWl3TDl3UTdaSS9XZ0QyR0JI?=
 =?utf-8?B?aEh4L0l4ZlJsb01SdlIxZkdMdUxaajdGNnZZOENnSHhpRnVuOE5vUjJha1c0?=
 =?utf-8?B?TmxncDhjTG0xOEFZV3prWlU3dEdjVU1jTWNaYXViODFwV3k4UHh4Q0dHRHVo?=
 =?utf-8?B?NXIyWEZpc2F4RDU2dnJIbXh0a0NBT2VLOWlkemkxSVVtOEFYUlJMVEQ1MlYz?=
 =?utf-8?B?ZXlzcjR6V0VzOGhMWXVTMVJNencxc09pcEt3NkFoZTYxZWRoKzI2VDRIWGJp?=
 =?utf-8?B?TVVzd0NQVkVOUnVLNjV6NnZEc1dNZ3ZSSXpYeXdJQzBSdE9wQTJPVmNES2ZY?=
 =?utf-8?B?M3NNYVhMTjVLcVRGYmppZEk2dFF6dngwMFdTei80dldUdEcxTUxTTHpQY28v?=
 =?utf-8?B?ckpVaVFUWVZhUUpIQ3pxRUNDSS9uWnZLcSsvSmIrUHlUKytUWkM0Y3JZTng0?=
 =?utf-8?B?clhLR0dQNnZNcWNmaFJFWVRWamhyZkpTVEt1YkEvV3lMK0RyeFRyVDJXTWds?=
 =?utf-8?B?Uy9DNTgyWnAxNFNHNXU2VnBxYldpSDNLNG12dTJPemtyMWJCdEpGNnUwcUti?=
 =?utf-8?B?cVBGOE1CYWZML1JNVzhsZk4vako2TEhCWWtwVlZya3Vld1lnN0NVcFQ3cDg3?=
 =?utf-8?B?d3VpTis1YzB2OEkvTDNwb1FFeTJxUHArMDZTSzFJZlgreW5KT2xDbXU4a1NJ?=
 =?utf-8?B?MUtrcWc1ZUMyajBrTkNHb2g5MlBObXZMRHNBa3BEMjhuTWl1emVGaHgwREd2?=
 =?utf-8?B?UWd2aDZVYzRkYWJnVnBEb0JBMHhnRHJtSUtkQ2hUSkVTTmpGRkl6WjA5RitF?=
 =?utf-8?B?OFF3UDNFdERRY3JNWEJ3cVNpWG9sZkwvMy9sdWM4bzA1dWp6SUU3eWdDM0Fs?=
 =?utf-8?B?MFAzL3VoUHdlekU4bThTeFdkdkZQRFRYZmNNdk9LYUxOZ3FHY1F3ZVFTNnZt?=
 =?utf-8?B?WkFyMVEyZEFhZE1BOVBWaXMvK2R5T25abWRpT2tFRDM2aEFiQVpUYjBGZVJh?=
 =?utf-8?B?SEVsYXpMY0szNUpoYWVhV3U4eGRReWcxTGhzb0QvYkhFcktoSXpHMDhVVlY3?=
 =?utf-8?B?WFFkQWtTRmFaeWlHU1gyNjFhcFJsNnR1Uk9rbHFZenpOTG0yMDJtNlIrQmlp?=
 =?utf-8?B?U3ZFWWIzNlRWYkdDb1lFbEV6QURFTWhLMmxObjJwQUozbmlIenZWQ3E1U3Nk?=
 =?utf-8?B?YURTOWhjQ3BYSGRzdGRUbDhBT1dWaURpd0d0eHkvSmRkbnNzUm9DaDkrb2dB?=
 =?utf-8?B?bm5DbDBxVDcvVWVqRk1XNjIwVGNVVHp0UDVaUk5QSHdwNHB6cHJOYjJuTWd6?=
 =?utf-8?B?WHV5eTJENHlUREVzQjlrYmNic1k3YzJWVFdCRGxpUTd4SGJaNUZBTmg0Kzgw?=
 =?utf-8?B?M0UyQlFVTWZtSWo1YTluUDJzQ1paWWRyR2hUdkk4MC84VXRud0U5NzNxNm5Z?=
 =?utf-8?B?VmViTjAxR1RXTElScU85TGwxZXVVNFM3WCswSWhpbmtnVGxhYnU3STFOczJB?=
 =?utf-8?B?QU9lZWg1MjVxcGUzNUpERG1MeExiWkgxVlk2R1NNUzhES0tSZGNTUTJIRml0?=
 =?utf-8?Q?Gyz+xUdncKbCR?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q2l3c1YrdmpxYUl0WmRYRmd6M2RBaCtoRDFTdDlMOFdkT2tudG9kNGljbDVN?=
 =?utf-8?B?NUVTOFVjbVhHTHVoZzZ3VGw0cmxKTW8zS2F0V1VmTkRHWEtSdmJOeVRaazhW?=
 =?utf-8?B?eEdadW9aa29wMFBmTjk2NkIrRm9SNDZMZHNWTEM4amp6MEJ0Ti9xS2RNZlpl?=
 =?utf-8?B?OFU0c2liMlBRS0kvdjNGcXRYV3N2eUNNbUdJUG5FdFlJU1dDeFlKSU1SWWRD?=
 =?utf-8?B?UHBKbXJvekJKV21OeS9mcTVFN0hBRTJ6OUFibzZpQ3ovV2o4Z2tjMm1hYy9l?=
 =?utf-8?B?NmFRbU94c3poSitTTGkyNjhoaDFrQTZlNzg4ZEV5MUplcldHQ0JEYXlhUEJU?=
 =?utf-8?B?QjlqTUZHZmxmekFDRUVIczBpQzQ4VCtaNmVZYjBIM3ZxeHVnUFJ5b0JKaVgv?=
 =?utf-8?B?RSt4cWx2bHdIZVhleUNlMkFnc2lwVFpYaStwdC93Z0hpNVFUMVN3KzZOVXpG?=
 =?utf-8?B?U3daMlB5TlpwMHhybG9JTklOWXdwUmo2QTAySTJpeDB0WXhnTE9pcGZ1Z3p0?=
 =?utf-8?B?T0dWU0tEWGwxVkdaakl6VUo3NjFhQ3hMRXZaY3AzSDZJM2JLenFzNGt3L2ND?=
 =?utf-8?B?MEZQN09TZjgxMmNIQ1dpckhJdC9vVUxZeFU2ZWUrT0ZTeVNVVTduY28rUnd3?=
 =?utf-8?B?aElnb08wRDl2THoyZEQvYVVWWEo1ejZJZjgrWVl1eUxaTnVXckVJcUh4TjI0?=
 =?utf-8?B?azhxOUh2eWx3ZWRWcmc0cGdkZHBOZzcybEM2ZVNDaVc3RmN6V3lhL01NN2F2?=
 =?utf-8?B?NnYvOFJqSkI3TWFTZW5HN1RaMGRnUEppM0Q4Sys3STVqbEdhU1kza3lkVXRB?=
 =?utf-8?B?bHBEa0pPQnhRSzladmIweGxabjd2UWhoL2ZRa2VFYW1jdVZKTFkyZ0VkeGg3?=
 =?utf-8?B?Umk2c0QyZ3Z5Y3FBVkF3bmxuUVhYdnRidWxaTVI3Z3RlS2FlOGxoaG9iY2p6?=
 =?utf-8?B?OW9DREJ3SkpmeTdRL0Jqd0ZYM0pFcHhNZDFnNU1TVXJLc1hNVXRQcGUxVm82?=
 =?utf-8?B?ZVYrdVFXdWJrcWRmU2xrcGF0cHVRbm1ickl1OXh2N2t0VENKenVQWUF5UnNX?=
 =?utf-8?B?elJPY0xFWDc3OUJHM2gwdjlUbkF1bWdxWC9CK2oxSEJBWkdzVGZYL3Y2WmhE?=
 =?utf-8?B?WktWOGQzMmdmczBPOSs5NDkzYUJmODExbVR1Ri9pdjNZNkpxUjZoS2dUNERW?=
 =?utf-8?B?dGFjUFNhUnBDZjk0Vm9oNENVdU9WU1hOT3cyTElVWEE4YXluSkU4RTlzKzNv?=
 =?utf-8?B?STZzN0plOHU3YnRLeUE5b3JYYy9NWHBqcldOaDdaVFMwWlM4bnM2UDBrMzU2?=
 =?utf-8?B?VnprbmllbXl1eFE2K0hFRlVmZXAwYk03WFEwWGFDTXJXSDNTSytUMVFZSDFP?=
 =?utf-8?B?NFZlWVRWTzM0N2I0bUlkazY0VFBkK1RtS01xRGsrV2tTQnFYblpkb0NvcTlO?=
 =?utf-8?B?ZC83VjErVW1TdThka3ZQVXFaMDlWN09pVEE5WkFqaGhaSDRYNHZvZkdlN0Ny?=
 =?utf-8?B?UDY2bk5jVVpEblpGN1d4YjlkMUZjcWZzUEc4RXVER0kxSDdmeS90V3BTUGtn?=
 =?utf-8?B?Q2FLMUV5VXJiTzg2MFIxcjBpak1mRzZWSXdnMFdVRmZ6QjBUd3NvdFFSRFJs?=
 =?utf-8?B?dDhUVEZ1dExWa3c0aDkvelh4V1hEY2pXY2pzcTJFREYwYWJLVVhqUXEvaS9s?=
 =?utf-8?B?aWs5WGg4SHdFOU1zUWVYcit3dDRKcXIwODlkV0w3cEpheVdHMzhFeFB0SmRH?=
 =?utf-8?B?REkzb2hXN0FNKzVzQzFUVlB2V2R5RE0vVDkvYWY1LzVOMzdNSnk5eUFVUk1q?=
 =?utf-8?B?VlM4MWlnMWxwbmJFdUhscGdVZ1k2MHZVVk9ObENZVDhmNEM5a1h5NE9zN1RH?=
 =?utf-8?B?RmZlYVJ1UGdsbmttU2t2RlNUY0ErSG8yMC9BaWh0ZDVqTHMvRkxFRzdLbkJw?=
 =?utf-8?B?ZEtSaExFK0RlNHhtRFU3dnFJWnFMTUFob1daV2VTWUh3aUs0S0ZYVlNNUVAr?=
 =?utf-8?B?SElEWnBpSndEZGVDOUM3dk9JVk1kNlc1azZ1V2Q3Sjh1UityR08vWG5jRUs1?=
 =?utf-8?B?U0ZqNXQ0MkdnQzJqOW1McWNLaU9iTDZRMDcwSVkzYkw5ek95aWZmZkJDUkhQ?=
 =?utf-8?B?MkU3NDM2eGJSTjdZZVp5cVJ0WjAwblRwOWZJYm1FS3VzS3grL1MxYXhTdk1V?=
 =?utf-8?B?a0E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2803e429-2a9f-47c2-3e7d-08dd4693177d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 Feb 2025 09:46:12.8384 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OelTfLnM3iidNy/0MCDEW/IIpib0YAmXkOiNY8SRKY4xoQkZ8oec8oh9vjOD72h5Uvr9XdDGLfZAppg0zkC71cI3NNBUHyPMl++A1A3/EK8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7364
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


On 1/31/2025 12:15 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Currently we trigger the push send first, then follow it with
> a "wait for safe window". That approach no longer works on
> PTL+ because triggering the push send immediately ends the safe
> window. On prior hardware the safe window extended past the
> push being sent (presumably all the way to the pipe's delayed
> vblank).
>
> In order to deal with the new hardware behaviour we must reverse
> the order of these two operations: first wait for safe window,
> then trigger the push.
>
> The only slight danger with this approach is that if we mess up
> the vblank evasion around the vmax decision boundary the push
> might get postponed until after the next frame's vactive. But
> assuming we don't mess up the vblank evasion this approach is
> completely safe.
>
> As a slight bonus we can perform the push after we've done the
> LUT writes as well, meaning we no longer have to worry about
> extending the vblank delay to provide enough time for LUT
> programming. Instead we will now depend on the vblank evasion
> at vmax decision boundary to guarantee this.
>
> However vblank delay (or framestart delay) is still the only
> way to provide extra time for the LUT programming in the
> non-VRR use cases. Let's assume we don't need anything extra
> for now, but eventually we should come up with some proper
> estimates on how long the LUT programming can take and
> configure the vblank delay accordingly for the non-VRR use
> cases.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_color.c   |  2 ++
>   drivers/gpu/drm/i915/display/intel_display.c | 12 ++----------
>   2 files changed, 4 insertions(+), 10 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 8400a97f7e43..be2691a80227 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -29,6 +29,7 @@
>   #include "intel_de.h"
>   #include "intel_display_types.h"
>   #include "intel_dsb.h"
> +#include "intel_vrr.h"
>   
>   struct intel_color_funcs {
>   	int (*color_check)(struct intel_atomic_state *state,
> @@ -1987,6 +1988,7 @@ void intel_color_prepare_commit(struct intel_atomic_state *state,
>   
>   	display->funcs.color->load_luts(crtc_state);
>   
> +	intel_vrr_send_push(crtc_state->dsb_color_vblank, crtc_state);
>   	intel_dsb_wait_vblank_delay(state, crtc_state->dsb_color_vblank);
>   	intel_dsb_interrupt(crtc_state->dsb_color_vblank);
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 60867b5b03ec..69dbb0eb5ca1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2630,14 +2630,6 @@ static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
>   	if (intel_crtc_needs_wa_14015401596(crtc_state))
>   		vblank_delay = max(vblank_delay, 1);
>   
> -	/*
> -	 * Add a minimal vblank delay to make sure the push
> -	 * doesn't race with the "wait for safe window" used
> -	 * for frame completion with DSB.
> -	 */
> -	if (intel_vrr_possible(crtc_state))
> -		vblank_delay = max(vblank_delay, 1);
> -
>   	return vblank_delay;
>   }
>   
> @@ -7735,10 +7727,10 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
>   		intel_crtc_planes_update_arm(new_crtc_state->dsb_commit,
>   					     state, crtc);
>   
> -		intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
> -
>   		if (!new_crtc_state->dsb_color_vblank) {
>   			intel_dsb_wait_vblanks(new_crtc_state->dsb_commit, 1);
> +
> +			intel_vrr_send_push(new_crtc_state->dsb_commit, new_crtc_state);
>   			intel_dsb_wait_vblank_delay(state, new_crtc_state->dsb_commit);
>   			intel_dsb_interrupt(new_crtc_state->dsb_commit);
>   		}
