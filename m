Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A6BDAA9F2B2
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 15:48:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2837910E54D;
	Mon, 28 Apr 2025 13:48:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YOppRTW3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC6E810E52F;
 Mon, 28 Apr 2025 13:48:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745848135; x=1777384135;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=SywbjeU1GbCrNAZ7Hosn2yyfEXmmDzk+5pPAjMkv8mQ=;
 b=YOppRTW3J0kPaNHJ5g81UU3Yrp8P/RB/ZQTcrWy8fPsPLb5pmf9w96b8
 UBJHLV9PSKOMFsUkFM40+dwG8b2nBqVjQIutm6XpLFF/PPmP0leXihaok
 oCzkiZgC1YDYbi8R2Sum0lZxiDVIzevltq/hRg/iTA0eyTszm2jnADx5Z
 snyZbpZSI+iZfBJVOUHOTN5haCNbN1CBQQchYTVnBNFh5EBq7Ot+hX7cu
 onXZbjMVO0BqVvWsrhQshZwae2j/MM2DtnOH2SHLLEO0urkWV7r0nBcs5
 /Ps8A6LDRFhXN29e/WwxSA++piEVmBTOZm+shRDiRASlZALA9PUIJVY5F w==;
X-CSE-ConnectionGUID: KWci0l88STG5gkmvFAbOKQ==
X-CSE-MsgGUID: jZSPXGfJTVWGiZZIpYxh4w==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="47598059"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="47598059"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:48:55 -0700
X-CSE-ConnectionGUID: xvHR/yKKSUWkYH8SE2Semw==
X-CSE-MsgGUID: oLZXsTppRWCMmBYngFoPzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="138337435"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 06:48:54 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Mon, 28 Apr 2025 06:48:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Mon, 28 Apr 2025 06:48:53 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 28 Apr 2025 06:48:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jaHGAGq5q4uTDKWgUkbFnVGwxuMcVVdbd99r6KmuqUutNBYjvDE0cBG1jbnlER94Xc/leuVJZ+CxIXi6Ft+6nVVxiss6v/j0/9OAg5N2VYCkltH7bykViMmxbvmWzoyS532mTD/f/J8CvUGFFQ4d/EAYi15rwqteQDdZHgJsI9Re7Dp2Wvamvk6qmib9QXTDCp3I35idk36LrgyjxOwJa5SiAHvGG11Z6tYNQAVrsnGvq67IPPz0rUB5NQjwr91GiUqdcanIEaB7/muhruED356vhitFyaLgnf4b9WCRv853UG4EoO/A4yEm3UplDZas36Yz+ZtxrPC8rsDkSls7Uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YnGjW7Z6wq5vd62rNCQFyMCUKAtd9tvrdC7OLg9MF4E=;
 b=gUCMdrwM6lEm25STLeR2CGZtTC3Q4976V5fj/BN45uUGzoXlXi8rhC6Zu/k2SbHCXtjGID22atjUMhpPB7gtaEIAFumror2bFAjiFvbJBFAJGk7n/MHhhVf96PzDCSHRGHEB1zL1FWEjn+2SZpOqlQ6txjC5kHRbgOlk5+xM3bZhhM99Pm7RpZ10PhWXwEQ7fJnGad3jpgp8sXLfNLhugsAbwu9QP8rOxzIDZhdb+2YsywmgQc1nkpyLtWlmUWF4tV3aHjhbRqX5PCX0hqTsbzxpYdiiCLuaMhoygTgT00Y8XxpeSq+0efOq9T1A1b5ewMB4UHca1V0aIK9JTfPVRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ5PPFC0624F2CA.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::850) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8678.34; Mon, 28 Apr
 2025 13:48:51 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.033; Mon, 28 Apr 2025
 13:48:50 +0000
Message-ID: <129b7560-8e49-43c1-a26b-750ae22f0b73@intel.com>
Date: Mon, 28 Apr 2025 19:18:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 09/15] drm/i915/vrr: Write DC balance params to hw
 registers
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@intel.com>
References: <20250428062058.2811655-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250428062058.2811655-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428062058.2811655-10-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MAXPR01CA0095.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:5d::13) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ5PPFC0624F2CA:EE_
X-MS-Office365-Filtering-Correlation-Id: f1894581-b66a-43b9-aa8b-08dd865b6831
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WGtJMDJOaG51TlpCWkVjekY5RmxMeEJXTndrM3J2K1QxNGErZ2NRanY2a01v?=
 =?utf-8?B?L0Mwbmhob3YwYXR5MlZycGZ6V2YvVmhhd2pxNFFOR21uM0hSM3Y5VWQ5L0Q0?=
 =?utf-8?B?R3NiaXYvQjg4Tmw5a3NOeUorRDN6UDdNMml1bGR5akJCVmlKbFFDblJVcVRM?=
 =?utf-8?B?bmxJTGpUSEhpWk4yWGhwUjQwM05mL0VZaDl2VWFodUdtcDNjSjAvZ2xDU0No?=
 =?utf-8?B?R01JT09qU2pueEpSSWR0V2pvVmpYZE9iSWw5U1JZbTRVMG1laE1SM3U0MGNr?=
 =?utf-8?B?Z2RSdHdmcTE3VldGS1g3R3d5ZjVsbjk4NG9MKzRXb3JJWEt3WUEyZk5hT3Ja?=
 =?utf-8?B?M1ZrZUlZN0xxUnVWck1qWVpVN05HVUxtVmpMMFA0VTh4OTFqUVBnNXZHa1o2?=
 =?utf-8?B?Zy9qWGU4RlBTQkJSK3ZONXFKWFd1L25lVFRyWHl6STlvTi9UN0dsZ2lXQjZu?=
 =?utf-8?B?ZHhRZkhabFMxbFFIZm52alNxSXVPNEVMV1p1QzBsbHRQN0d1Wkg0K1FPQzd1?=
 =?utf-8?B?NzljSkpsMWluY2VOdEF0NVhWcTdDdFRvNjFBSjRiN1JsWFFDMFJCZERnTEMr?=
 =?utf-8?B?WHpaWERXRklvSWVOMmVCYTZ2bnNRZC9aZW41QVhQUVNGa29CcTZtZGdQWnBD?=
 =?utf-8?B?OEZtSCtyNWZMV1lsSVBmcDFqRlpMNWNjVm1OOHFQa242V1JGZHJ3VnBVaCta?=
 =?utf-8?B?WmNBek5kek1pWk1lVEgyWjNCNnQzemNFcTFsY3lnVDVLcHJJTDhTMG5YV0to?=
 =?utf-8?B?R2NNdktHTXcwSVZnMEt2cnBBOGhXeGZGQVZnUWVneUJtYWFvcEtFUWlJeVUz?=
 =?utf-8?B?SHBGT3ZHR0pFZFRiaEd5dDRXTzYxMTJ2Mml1REdFSVRYYUV4WWdrbCt2UGJP?=
 =?utf-8?B?MExRd1ZqYTlMNGhqVzZmS3dyL1RwUHY2VVYraWFRSTVzaUpRUzFoRGF1aldS?=
 =?utf-8?B?Lzh4eTRLZWhDZzdudEVoREkzQ041NXRQWHdkUXBkSlhBUkFSUkphOXBRdktv?=
 =?utf-8?B?djNxNWZJdmNtSGpNUW9Gc3VVU2toRDVzQW9rb0ZQOGNjUEY5NUo4YW9kcEFB?=
 =?utf-8?B?RzFkelQwdHpBUFU4bWFWWGEzeWZPOXExaHFEem81bkpFWThiK1V5YjRsZ0Fp?=
 =?utf-8?B?bkNyR2ZJZjNYcnZRVklxRVI5M3IyNlczZ3gzMlliRTYrMUhiMkxYOEw0TnFJ?=
 =?utf-8?B?T0h5aHVXR2xnUExRYmtCMG5ndUxLUXdERDQ3TkxSb0JGOG1kYXV3UDM1Vjlo?=
 =?utf-8?B?WkEwUnFwK0drQlFpZWFtcFFwYTZaeGNTWTNoRVNDYXgvYjhPdXExQm5CKzFh?=
 =?utf-8?B?azVJdzVnKytrYU1SYnJOS254bEhXbzMvQUJNWXVZTnJLNWwycGxHdlB2ajh1?=
 =?utf-8?B?eWQxK25vdlMzcFF4cTZ1YVJ1Rjh6azFDTURaNlVFajFwYjVFNDZvTkI3aS9I?=
 =?utf-8?B?TmNUZ1dYU3FGa3BUZE0vdkdhczhnMkVBWDJuWTVrSlN0ak1wd2g3MEQ0ZWVy?=
 =?utf-8?B?ckNOV2YrWnJsLzVBaG90Zno5Y0dKWDc1eDlSK0dwVndOOHVPT2JYSEVTcGYx?=
 =?utf-8?B?QjRBeSt6UXMwSVBsaUw3U1lRZ2d5Rkt5bTlYSUQ4UGQwaFdCTUJzN08vNWxE?=
 =?utf-8?B?cHg5dXVsT1h6N3lKbkRQaDl5OGs4RUVva1BLb2pCa05mTE5Pd0hVQm54MUpz?=
 =?utf-8?B?b1VlOHFpMzMxaisralJvb00wb0dCN0tqU251ZXA3TVNRSDYveGxCdkpGQi8w?=
 =?utf-8?B?YUV0aGk2RUhTSFI1WG4rRGpXL0Y1NTlwUzB1bEpGdmUxenJvL3Y5SG5tSU92?=
 =?utf-8?B?SlRUNEdkcFoxS3ZPellYenJpL05Kci9rUjZURTgxVnpjSG9uRkdHODhhRmhQ?=
 =?utf-8?B?SHVCMW1nTlp6L2plYkgwZUYvd05IRDRHdjBTTW9DSTRxZVpTT0NtUWlYTlFE?=
 =?utf-8?Q?elfWKKnioCY=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?OVloYVlqSk9xODAxWUFyK3EyTFROYTlPKzZXN1FtalVNbmlGV0JrTDkxc1hX?=
 =?utf-8?B?QlgyL3BpRWRHN1BCZURuTHpaZTdHMEYyK1FXd1hnLy9hMGdqT0xKZnptQW1D?=
 =?utf-8?B?S1pZYU9vNkQ4Tk5Tbm0xWWhRbFVUS2xUK3NVRm5SV0ZobHp2YzZ2V2pkeDd1?=
 =?utf-8?B?b2k0blQ5NHM5SjRwWjdDb05wdk12UUpSSzlSZTJucEtacUExMEl5M1Y4TjA3?=
 =?utf-8?B?ZHA3V2xsWFQxN21YNDU5Y0xoaGxzTXlrUWlDeEpoeEI5NVh3OC9MOTVrWW1B?=
 =?utf-8?B?R2VwZjdaMHBhUCttSEN1cXVucm1xNjJUTFk3SGFzdWZjUlFBeGJndmNreXVm?=
 =?utf-8?B?ZW9aeHN0aUFVU2xjQjE2RHJRTFhkaTh2anFZSWgyakNNS1Z5cGJnWi9VazdJ?=
 =?utf-8?B?TXZqWWlBMTlhZWhRYVdMYTFYbGdYcWdtVjhEQlFiVG4zeVB2M3FmUEhKRXlB?=
 =?utf-8?B?MW9PV1QvaVZvaitMc0dvNzZDOW0vUThnZTZnMEtqT3JUSHdEUzlCM0I1d0x1?=
 =?utf-8?B?bmdCYUFXSC83aEtydThPR0twVy9KcVZ5SG9iUmhiTUc3RHVhWkcrbnZjc1VG?=
 =?utf-8?B?N2tFR3pNa2t4TE5ldjZZcW9NYzFHTnVqd1FoUWV1TlFYdkJOSkRGRkpPQ0Qy?=
 =?utf-8?B?NGpKM011OXkzQ1JneVF5V1AxcDZ4YWVpRGJJS0YyM3JtNFI4ZlMyV3ZaYWEv?=
 =?utf-8?B?ZklxUlJPR1NIQW9TUHh4ODUrM0cyY2c0alJtZTBSU2VpT1o3T3F2aDJCT1I3?=
 =?utf-8?B?YkkrNi9LbmU0L0NsQW05S2VqWUJjbW5JYlFkdzAwbjRmbjJOQ05sR2NZSUlR?=
 =?utf-8?B?aEJZK0FvQkh4S1lDUTRhVnRQUkVYZEo3WWIxMkUrQnpaZzJDd3FOY2h6bTRq?=
 =?utf-8?B?Y3U0bjVQWDBhVTI4eEtKMThCc2xaOGR4ekUvODljRHI2SFRtZFBjT1ZkRnhq?=
 =?utf-8?B?bTNXU2Y3SkRaekp0bENkWEFCUXZXSDYzRExtV0dtQTFPZGNaUjNzR1FVWE5q?=
 =?utf-8?B?TmdDSDhkd2NMMVYrbFRzT1VFaUFqMFhvWmNEZUlEbkhySG1JL0NWREJETjdl?=
 =?utf-8?B?am9ZSGFwb0t5d2JQSUpPRUdSNzF1SEZ4bytlcytPYzR4dmZCak8waXU3MHhH?=
 =?utf-8?B?NlMvVG9SOURRU2ViVWxuTm9aWCtSN0ozaTFlU3dnSk5WNWtacTg2UW5QVDlX?=
 =?utf-8?B?T3o4TzRZaml1NGwzTHN4cUFVeUJydlpiWVdwUHhFRDVQMTRWc1N5cTNzdU1i?=
 =?utf-8?B?OGprbTd1N3o1UHVuMlgwMHJaR1RwamRmbVBiSUg4c1FOUXovNUh3eEg0K0dG?=
 =?utf-8?B?S2FPTDBSL09rWitDQnRxT2loREVUbVBuN1d4RytjaWYralZwUUlWUkw5U0dz?=
 =?utf-8?B?R2tlK1ZCSUQxT2IyWUJXekJxS0pXL1hPbnZEV2IzWTQxYVBPa2tUcFFiQTVx?=
 =?utf-8?B?SVF6dEhhSGorY21ZQ2NNbVBWU0EycU5lcUZYZ01rMTdOdTcyYm1mbkZTWkI0?=
 =?utf-8?B?eTJjWVNvU1MvL2lZUTlqcm5wMGV0TTZqdEN0cGpJd25lWC9jVVZKaDdLdXc1?=
 =?utf-8?B?SUNlWDJwWXI5eW9mYzRrL2oydDFEeFEyUGVVYVdIVCtoSDJOVGVTaEFIdlpN?=
 =?utf-8?B?ckx3RStyb3hVT3NZRHhSbzJkMUFmSVlGZXdGSGdHNE5SdGpsR0d3NmlRcFoy?=
 =?utf-8?B?SEpLTHZhclpIU0ZMR2d6YzJ5NmFyUHhJb016c094cTV4WDJHejR6ZElvZS82?=
 =?utf-8?B?VzVBbXNxb29BU1FKRUlDNjYyallBSVNjZU8zbHZiajlTbmdnOVROaVVuL0pm?=
 =?utf-8?B?SE9vZjRnWXZMK0RMemxESGVtOFRXdVFURlFpRGh2SEdQMVZqaWRDaStXdXRT?=
 =?utf-8?B?QkxSU3pOTnFTR2VOUWJqaGVHUHVkWFlFdlg1bEJhUDlXMFBkL2RkcE82dVZt?=
 =?utf-8?B?VDgzR0F3Q0hWZ0FWRkZQQ1VnVktDa0lTRW9xRE9sNFRidEZtSEp4VHNNVlpy?=
 =?utf-8?B?VFd2N05wR2VWNzRPb1I2WFVEOGZSVmFpcUxXZXNaaDUwWWVUY2J6SmRBUFQ3?=
 =?utf-8?B?RzFCNkRaazRESE5jNFBkV2pUTHFRZ0pSVkk0L1JURXBhOUlNNERVdHpqZnZt?=
 =?utf-8?B?eE9VVjFDWDRmd3Z1dVQwR0diYlBGQUNmU0RVd0I2RUxlSkY5SmZ0Y2hTM25s?=
 =?utf-8?B?Nnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f1894581-b66a-43b9-aa8b-08dd865b6831
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Apr 2025 13:48:50.8414 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: x/zTXoDP7gN7UE2BLpBdbc4RTc3x824tDqdAonMIoA0XqVc1m5gkR/dHYo4ofbUGfsIdbqqv0F7kCIehwGUp0xV/ng/oxzgFsWjQKRc3Q9o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFC0624F2CA
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


On 4/28/2025 11:50 AM, Mitul Golani wrote:
> Write DC Balance parameters to hw registers.
>
> --v2:
> - Update commit header.
> - Separate crtc_state params from this patch. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 28 ++++++++++++++++++++++++
>   1 file changed, 28 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index bc99701be2b5..54b91c2a0a87 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -627,6 +627,23 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
>   		}
>   	}
> +
> +	if (HAS_VRR_DC_BALANCE(display) && crtc_state->vrr.dc_balance.enable) {
> +		intel_de_write(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.vmin - 1);
> +		intel_de_write(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.vmax - 1);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.max_increase);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.max_decrease);
> +		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.guardband);
> +		intel_de_write(display, PIPEDMC_DCB_SLOPE(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.slope);
> +		intel_de_write(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder),
> +			       crtc_state->vrr.dc_balance.vblank_target);
> +	}
>   }
>   
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
> @@ -637,6 +654,17 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>   	if (!old_crtc_state->vrr.enable)
>   		return;
>   
> +	if (HAS_VRR_DC_BALANCE(display) && old_crtc_state->vrr.dc_balance.enable) {
> +		intel_de_write(display, TRANS_ADAPTIVE_SYNC_DCB_CTL(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_VMIN(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_VMAX(display, cpu_transcoder), 0);

Bspec says PIPEDMC_DCB_VMIN/VMAX should not be 0 when VRR is enabled.

I guess `VRR is enabled` here means that the VRR timing generator with 
variable timings is enabled. In that case this looks fine, but would be 
good to clarify.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


Regards,

Ankit


> +		intel_de_write(display, PIPEDMC_DCB_MAX_INCREASE(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_MAX_DECREASE(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_GUARDBAND(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_SLOPE(display, cpu_transcoder), 0);
> +		intel_de_write(display, PIPEDMC_DCB_VBLANK(display, cpu_transcoder), 0);
> +	}
> +
>   	if (!intel_vrr_always_use_vrr_tg(display)) {
>   		intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>   			       trans_vrr_ctl(old_crtc_state));
