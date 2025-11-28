Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8F93C92218
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Nov 2025 14:30:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79ABB10E096;
	Fri, 28 Nov 2025 13:30:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ClmM/Zre";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 938F710E096;
 Fri, 28 Nov 2025 13:30:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764336638; x=1795872638;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=pg5U58DzeAekugrxMNjvn1x1EpvDsa6pZDQhkVb/Vt4=;
 b=ClmM/Zred2emnd5kuTia4DfexCYOndtDnV22KOIO9fAUHzqDPfCToHH+
 vC4bS6ieKN1AnPpHIuMWjiI+u/o52WaPvooaTASUylbxfbT2f33BGD51I
 QCcJUXm7a90fxFHX3VX5Ib4bRjzP6gItUOMpSs2TAWM8W0N/mvrrh/o9m
 KCUp8v90O1D9B9aRWWU81wBBWZNEcs8zPnHUksVDASK18c7xanGSar1cY
 7YqM2ZiVpvBczXB+ifi5mvFK7YEnJoDkj+E1B9jSVXyX0Lizii9Xb+ivL
 7UvuhitKqhOZsnH3EZJNL5eTkBJCDtUU86fZHE7RsdxzHU/kmfRV8j3Tl g==;
X-CSE-ConnectionGUID: VjT2w7GMSz+W8jH1BFeYQw==
X-CSE-MsgGUID: NvKedkJRQHyVP2ik/iFEOg==
X-IronPort-AV: E=McAfee;i="6800,10657,11626"; a="91844965"
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="91844965"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 05:30:37 -0800
X-CSE-ConnectionGUID: dMpdbqQsRoWo/Lr585Xotg==
X-CSE-MsgGUID: ir7kaUd8T5a0oEW5+Bif8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,232,1758610800"; d="scan'208";a="198570542"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2025 05:30:36 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 05:30:36 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 28 Nov 2025 05:30:36 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.3) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 28 Nov 2025 05:30:36 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PN3nlWtdpTfy1bVHjI9KQG0GVhbOkGq5+OG3oes+DYT4LUGLnzs9ET5MQvHh2mtXPdeY1mva6qcBtPi49KqKMT76wYSJynZDLiv0vn3NZ+90EFpSCqEONpG7Zp0r6eCKq2cUCDPp3xIJGIg2Y968/MysdDnputcRKMW/9pUPRrnUqZiNKq13WebFHwxM5N5MZ6DlPsCpiLrEh8IrQvWLa8ckgcQWhYheeG+3DOWyduftwVjgYQHipoDXPbRDEm37Hvlzsf6Ni5OH9rJ+XwgFO9owwe5UzoGxcKkwg0Sm4T3lbGoG6U7rxVvGSO1R6cc7ORQ6k1pVAPJUpce2xokhqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Z2KtuZxj4XraxsJhsRuLt+7kIY5L3Xeq2FXesZOADGY=;
 b=IkJBT6FFJAAOXPpNJdg4swXFK515G74v7r+9N2BlB3OHVD3d0Ynj16VYOs21DRqQk3NLnOay6WP4Q1kLzmajA/cA+W7bnxaORQIxi9AmsYD/VskH60pm8cqXD9jL26gl8ona46eySExWxuaqIN2f4QSdKgWFMaHTR5aH5zsZe6f5kRxqtYj+/YVo1e+b13BkK8/ApZXMljeYUz/fRViJXiM59ngolMSyjakImRHEq0z9XFbR4vYaArri4JXd8UcoKp5SfCCosVRD/kHCZ/R4TfbrMtqsj3zCNOhs8xMTXyWkplOida1nh4QYmKEaPJGO5nhPtLAF3KYh+4Kn5fUv7g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH8PR11MB6952.namprd11.prod.outlook.com (2603:10b6:510:224::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9366.15; Fri, 28 Nov
 2025 13:30:33 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9366.012; Fri, 28 Nov 2025
 13:30:33 +0000
Message-ID: <e89f8d2c-c40a-4fa1-a9c5-e458d6d8c806@intel.com>
Date: Fri, 28 Nov 2025 19:00:26 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 07/17] drm/i915/vrr: Add compute config for DC Balance
 params
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <ville.syrjala@linux.intel.com>
References: <20251127091614.648791-1-mitulkumar.ajitkumar.golani@intel.com>
 <20251127091614.648791-8-mitulkumar.ajitkumar.golani@intel.com>
 <15ccb5b6-2e28-4b93-a907-0eb314cb5a1f@intel.com>
Content-Language: en-US
In-Reply-To: <15ccb5b6-2e28-4b93-a907-0eb314cb5a1f@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5P287CA0274.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a01:1f2::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH8PR11MB6952:EE_
X-MS-Office365-Filtering-Correlation-Id: d4bc1702-ab00-4f7a-eb38-08de2e824eaa
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cTkyMWc1SEN2NFIvaFNIdEdVZllrSW1oMEtnNlBDRFVLNWpZVTgxZGk3RlFG?=
 =?utf-8?B?bHZiMXZwZlBpMnJqb1hyakNjL3lVSGZzREdpNnN1QTkrbzVnREZtbzVTN0Y2?=
 =?utf-8?B?SGpSRFBlNXVLY2tnNmJObHlGaWUzb2FHZFVjVWU2b1I4d1B5b2NtamhPVk1z?=
 =?utf-8?B?Slg0MDJVZUtmMU9EdExCaW5HUlh1RVNLSjZRbndKSEVnY2JLaGhWREF3cUli?=
 =?utf-8?B?WXh3ekV4Ylk1a0NNbDR1bUkxY2wvZ1ZWYWJqSUNCOEk5YUxGWmdwZUptT2pK?=
 =?utf-8?B?VWlSYVI2LzRZK3VjdXQ2Y1cwN1FFeVFUbEdYOEhwOWNWY1VjMm52cUdCUXBy?=
 =?utf-8?B?UEJlclBkdlNXeFAvaWs0RThuRlRvKzNsdUlubGtBTGlkRUxJZlViNUZpZ0tE?=
 =?utf-8?B?d2E4UDZVTTJpeEt3eldXTHNtdU1hWFpaRTgwZjNGSkdub1dmbjNWVC9jeE9L?=
 =?utf-8?B?YzFDMjNXZUIvbjhJZjcycVRBUDlvWXg3aFJjVUJQY3BVcTZLNEFzZ3RMMXJv?=
 =?utf-8?B?RHJsbHFwSWNLU2FsZzRFNkduKzM4VjRnMXNmdENZODBaekQ2SU1rTnJCRG1y?=
 =?utf-8?B?MnNYZzl0czF2QW1UYnJJRlQ1V2ZhRllFZXdJWTNlKzRoWExmL3RFR1M2dG42?=
 =?utf-8?B?UUwweFFGWnhKdFhlcGszTjlqT1VHYXN3bFg3Qzhuc1lvb09TVmhRdVQ4cTQr?=
 =?utf-8?B?RGx0ZWZLWlYwTnRxR3pkZ2phcXFwdm0yRm9IZi9BYlN1a1o1VmF0Y3FYT0Fs?=
 =?utf-8?B?ak1sTjR0SVpuRUtIb25YcjdiczNxMS9XMmI3OWl5bWNUTHVGMzRvTERPeFJQ?=
 =?utf-8?B?L1FyL3RVNHhWYVRTRnJ6QlJjcmRFcFN1czdsUXM5ZkFiSGlvaTY3MW5FUlZw?=
 =?utf-8?B?VGkxRlVCQktDcmJnWmxJNEprTFJVM1d2VW1yYmtCa0VBZnE2RTNGZTMydWNP?=
 =?utf-8?B?VitVWFlvMTdSSlVHU1hDbjFvSzdONStpNjVJaDhycHU1Qk1OU0xUdERTcTV2?=
 =?utf-8?B?UVBvUE9YYnRrM0RhQkdQNW9NZktJSzRwQjRSY0ZEcjBjYlhuU0tBV05iOHBx?=
 =?utf-8?B?eUpDZ1VKZzhCcDl5NEd1RFBaVmtjNCtQNk1jay9Pb0l1a3hQNXk2aHEwbDNU?=
 =?utf-8?B?NGRoYy9EdGpDaGJYenJtbm1TZ281d0diMWI2eEJIcGpYRDh3dlB4QWF4blU1?=
 =?utf-8?B?TnNlNzVVRnk5cHFTc21Ja01TMzdmeEdsNGZzR3FDdWx3WmRDUkNDV3JlbXVZ?=
 =?utf-8?B?Y0p0TkMxZlZvQ1cvR2cwYVNOTUJWNnVGc2xLOFNRQW9DNytQOGhJN2ZoSmE5?=
 =?utf-8?B?L2dtZXk0b05wWWF2VmM1aDJnK3dYamNpNWI2Z1M1TXQ2WG96N1dOWEYxMita?=
 =?utf-8?B?M0xDSllaSUsrQXl1OUZpRDM1czBJRHVYc2xvNjZHRDZPWENlSWxXRUg5TDBN?=
 =?utf-8?B?UmZvR3dWclJwSzdkNVFFWWgxN0R3c3lyeTd6OWtoWXYvdkRvQUd5YjgzTEFL?=
 =?utf-8?B?TjdFbG0zc0p6a1ROVnlLb29UUDgyY1FQVTIxRVEzVTFLTU55UTM1cjFXa0gw?=
 =?utf-8?B?N3orL2dGbDN6NXplVmhQUFdFRmhBOGdMRFY3MHZZcjBCV3ZyRm00MDBHK3lH?=
 =?utf-8?B?eC9UVEhjZGdjdGVpU0UzT0NtZXZmQmRJVUg0U0RYdXhxK2hkY0lGb3p2Q0R6?=
 =?utf-8?B?UllvcXNsREJoMC9zdy9tVTV3UVRJUGFFaE9jMFhvTXdNQ1ZUY3h3UjN1ZHl4?=
 =?utf-8?B?NWFMSXd4d3o2VFF6SUJwMzE1b0o5V0x6bW1zcE02bGZLaVEySkJJdFpwRk92?=
 =?utf-8?B?KzYwS2RIbUFhUmtGUnpPWHdxOFgrUG93cFB2SkFITitNU05VWDdvOUtuaCsy?=
 =?utf-8?B?STVVdGFpQmNZSDR2WlNEZ3JaRDdCM3NoV1pFNEs5cGF0Y2RQNWxlbVFLM2U0?=
 =?utf-8?Q?Wpecw0JLGg0XRJUDiIDwgV1BomFOdNGU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Nzh1TnZOSzNQVFdRQUVLMW9uTFRBQkEzVlhCS2NvbDE3NlVCV3hwczJncEF3?=
 =?utf-8?B?ZS9rUVNjQWlmVkJ0cnRqeG9zTUZzQ2JMdWg0eEFYeXlRZWhla0xrWkJtSjdE?=
 =?utf-8?B?dnplUjErMTJ5SURGL2Rud3BjdXMrdHc0V2Qvdjg1aGlWeTlxcU9HUHZaRStz?=
 =?utf-8?B?OG1UNzdQUXdYMFJ4bk95RTdOenRSSm43cEpkTnNqYlhhNEl4K3p5VHI1ZGJn?=
 =?utf-8?B?dUlLTTJDYzl6aWc2bmgyUWJucHhsaEdMZHROZGJOOWlpK1lpbWdIdDRnaE9i?=
 =?utf-8?B?UVdEQUszdjBmb0tRSy9QR0NGejVTbHN4MC9xSHp2RXVaR1J3bXlLM1RsMFRI?=
 =?utf-8?B?dWsxdVVobTFJWW8xdlpJc3N0cy8wV0VqVWtMWDNtaDVFeFZXaDFvbEo3WmZS?=
 =?utf-8?B?WW8xOVU1dDRvT0VsaGJGb3hEMURFK3E0UFIxeWpYZ3dReUY5YllZc0ZJYVJ1?=
 =?utf-8?B?Sjdlei9uaUcvWHVMbndaY0piSFhJV3JJbHFBbDNuOGtVeGRtcWkrV2RFWGE0?=
 =?utf-8?B?TnpMQktrS3JUNVhZaEhpTTQxR2tweU1VNkpBMUdlK1VTblN0Q1ZkN2pjY2Na?=
 =?utf-8?B?Rjcyd0pxMGVZK1BhVk5UcVgyL1dMMGlNWjNuOXZQRnJnVGYxL3Mxem85NlQr?=
 =?utf-8?B?b0NtVmVnU1QwVTRNZjkxMHM4RGI3elVaQ00vZWxqU29CSDZIK3ZsZVdyc0E0?=
 =?utf-8?B?ZExmWWM4cFgzNFVsbjlTYVl3SlBwTDNDUFVhQ0ErcHBTVFNkRUFTS1hoU0xz?=
 =?utf-8?B?UFFxSDFkSjBCd0g4SGx1eG4xcTg2V21La1BKRW9NamMwZWNEYUpkcmswd3J5?=
 =?utf-8?B?ekFMNjNaKzVDTDNzdWYzWDM3aUk4dkF5VGFVSWdIUnd0NSs1MTJvKzFuNWEw?=
 =?utf-8?B?RStkdXpKbVpmVzU3NkcrcmV0WHE5MzRwU2JYTmhkRVltVlNuV1NGVHdOWjIv?=
 =?utf-8?B?YytSczdZcCtZR0RUbUlRNGVyQjNVUmpFRjhBZEJlUFNROW53UEgzRHpaWXRP?=
 =?utf-8?B?NjZSdHFBekhzaElSZ1Vyc2lFcUg0bTdFWCt3S05QTFp5enJOUmxOc3h2d1NW?=
 =?utf-8?B?ZDM2bW8zVCtxYmVJTk1FWkd6R2pyU1dTS3kwY0ZOZnJHQllUMWZMM0ErTnhh?=
 =?utf-8?B?OFZXNk1jSmlUSXB3S3V2aStXWmZ0KzFITm9lT3J2SkZDbURIMGloQ0U1OHN6?=
 =?utf-8?B?MGJpa0NxMmNnZmU0MWZNUDJKdDZRZ2daRkRoOGE3VWdpMDFhd2wvRHRxcVlD?=
 =?utf-8?B?ZFB6cHczZ1ZMUC9SNllWVUN6bjZUM3NMcEJ3dUlxMURxQW9SdHV5TDR4N3ZK?=
 =?utf-8?B?dmhsby9mL2M3S2RXaEVPZXdwVFFBa3FST0R1TkpjdzBPU0JLbllNVFZvaHk3?=
 =?utf-8?B?ZkZwRU0xTXZ1Sk1Yb1Vhc1Bra1JXRlZlbzUzRG42eWo1MFRQd2hZS3BmTGIv?=
 =?utf-8?B?TGdraGpRNTNrVHE1YU9FbmRFODgrajhOWWUvbEhxVzQ4YlFFNHlYT2duUlJN?=
 =?utf-8?B?UzlDNWFueEpOK3lGLzVFYW50elRybmJ2OEFlWnNzUVZ3ZjlDLzh6NE53dDRK?=
 =?utf-8?B?bmNWK01xZjUwaGkvNzAxeVpBUWlFWkd3VTZGNlQySGh0OFdybkl6cFk1L1lM?=
 =?utf-8?B?SGxLTmYxTWtRa1RQSi9XOWh4Tmt5S1ZvVUhFblJKSmRpbXV6SEpmNFUvK0wz?=
 =?utf-8?B?dUkxcURYeXBpbzBtamVIcHBvNVdNREc5R01yMEVXWjl6YXczTGZRb3FBZklS?=
 =?utf-8?B?d21Icno3R2FLM1ZnVE0vOVJHS3dSVExyRHdUY3llS2o4TjlMRUVxTFpYV01U?=
 =?utf-8?B?OUNBcTljWm1SdnFyUnZwaGRTOW9vTTNPV01VSnRmWFJjeFo5b2dYL1Q3VnJk?=
 =?utf-8?B?QTVIb3c4dDVHYitEcUhOdUt3L1FnZ2VXYjJkZk5LSW5GV2ZFWkRwdnhvcHpt?=
 =?utf-8?B?d0ZiNkYrYURJd2V2aWdaczArSysrVXR2UlU2Y3JKOHlYL0g3ZWtCaUxiTFJp?=
 =?utf-8?B?Ym95elhkQ3kyYVJmZnhZd2RpNUpKa3RQVTI1dHFkUkE1UEE5bXZrOWJPOXdz?=
 =?utf-8?B?ckNDamt5N2NVNENpMkwyZTM0bGd0a3lEdjBtRi9NZGdaYlRZdFlod1RQaTMz?=
 =?utf-8?B?R3pNd21GdDRXMEp6ckZ0amVmanoyQk9DamhTUlBPSGl2dEFkMlM2UUtkTGox?=
 =?utf-8?B?UXc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d4bc1702-ab00-4f7a-eb38-08de2e824eaa
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2025 13:30:33.7020 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n5ENa1jKdzMgSFLsAIHK2H1sschGlU2KPv7kKBY4uiZ8R/FtqDx21/+DyVE4jrJzcVEYqHK6Wb7rAUJCYLEcd9/0jagFaivJZIJuY6DzLUk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6952
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


On 11/28/2025 6:40 PM, Nautiyal, Ankit K wrote:
>
> On 11/27/2025 2:46 PM, Mitul Golani wrote:
>> Compute DC Balance parameters and tunable params based on
>> experiments.
>>
>> --v2:
>> - Document tunable params. (Ankit)
>>
>> --v3:
>> - Add line spaces to compute config. (Ankit)
>> - Remove redundancy checks.
>>
>> --v4:
>> - Separate out conpute config to separate function.
>> - As all the valuse are being computed in scanlines, and slope
>> is still in usec, convert and store it to scanlines.
>>
>> --v5:
>> - Update and add comments for slope calculation. (Ankit)
>> - Update early return conditions for dc balance compute. (Ankit)
>>
>> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_vrr.c | 46 ++++++++++++++++++++++++
>>   1 file changed, 46 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c 
>> b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 650077eb280f..45e632e8a981 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -6,6 +6,7 @@
>>     #include <drm/drm_print.h>
>>   +#include "intel_crtc.h"
>>   #include "intel_de.h"
>>   #include "intel_display_regs.h"
>>   #include "intel_display_types.h"
>> @@ -20,6 +21,14 @@
>>   #define FIXED_POINT_PRECISION        100
>>   #define CMRR_PRECISION_TOLERANCE    10
>>   +/*
>> + * Tunable parameters for DC Balance correction.
>> + * These are captured based on experimentations.
>> + */
>> +#define DCB_CORRECTION_SENSITIVITY    30
>> +#define DCB_CORRECTION_AGGRESSIVENESS    1000
>> +#define DCB_BLANK_TARGET        50
>> +
>>   bool intel_vrr_is_capable(struct intel_connector *connector)
>>   {
>>       struct intel_display *display = to_intel_display(connector);
>> @@ -342,6 +351,41 @@ int intel_vrr_compute_vmax(struct 
>> intel_connector *connector,
>>       return vmax;
>>   }
>>   +static void
>> +intel_vrr_dc_balance_compute_config(struct intel_crtc_state 
>> *crtc_state)
>> +{
>> +    int guardband_usec, adjustment_usec;
>> +    struct intel_display *display = to_intel_display(crtc_state);
>> +    struct drm_display_mode *adjusted_mode = 
>> &crtc_state->hw.adjusted_mode;
>> +
>> +    if (!(HAS_VRR_DC_BALANCE(display) && crtc_state->vrr.enable))
>> +        return;
>
> Can simplify to:
>
> if (!HAS_VRR_DC_BALANCE(display) || !crtc_state->vrr.enable)
>
>     return;


I think we can introduce intel_vrr_dc_balance_possible() here itself, 
rather than later.

So:

if (!intel_vrr_dc_balance_possible() || !crtc_state->vrr.enable)

     return;


Regards,

Ankit

>
> IMO, if (notA or not B) is more readable than: if not (A and B)
>
>
>> +
>> +    crtc_state->vrr.dc_balance.vmax = crtc_state->vrr.vmax;
>> +    crtc_state->vrr.dc_balance.vmin = crtc_state->vrr.vmin;
>> +    crtc_state->vrr.dc_balance.max_increase =
>> +        crtc_state->vrr.vmax - crtc_state->vrr.vmin;
>> +    crtc_state->vrr.dc_balance.max_decrease =
>> +        crtc_state->vrr.vmax - crtc_state->vrr.vmin;
>> +    crtc_state->vrr.dc_balance.guardband =
>> +        DIV_ROUND_UP(crtc_state->vrr.dc_balance.vmax *
>> +                 DCB_CORRECTION_SENSITIVITY, 100);
>> +    guardband_usec =
>> +        intel_scanlines_to_usecs(adjusted_mode,
>> +                     crtc_state->vrr.dc_balance.guardband);
>> +    /*
>> +     *  The correction_aggressiveness/100 is the number of 
>> milliseconds to
>> +     *  adjust by when the balance is at twice the guardband.
>> +     *  guardband_slope = correction_aggressiveness / (guardband * 100)
>> +     */
>> +    adjustment_usec = DCB_CORRECTION_AGGRESSIVENESS * 10;
>
> The current value represents milliseconds x 100, so 10 msecs becomes 
> 1000.
> This scaling can be confusing compared to working directly with 
> microseconds or milliseconds.
> IMO ideally we could define the correction aggressiveness in either 
> usecs or msecs for clarity, but that might make it harder to match 
> values from the spec.
> If this factor changes in the future (e.g., to 400 or 1400 based on 
> experimentation), we might need to recalculate if we switch to pure 
> msecs or usecs.
>
> However, I think it would still be clearer if we rename the macro to:
> #define DCB_CORRECTION_AGGRESSIVENESS_msecs_X100 1000
>
> Then, when we use:
> adjustment_usec = DCB_CORRECTION_AGGRESSIVENESS_msecs_X100 * 10;
>
> it becomes more intuitive because we can see the conversion: msecs x 
> 100 x 10 -> usecs
>
>
> Regards,
>
> Ankit
>
>> +    crtc_state->vrr.dc_balance.slope =
>> +        DIV_ROUND_UP(adjustment_usec, guardband_usec);
>> +    crtc_state->vrr.dc_balance.vblank_target =
>> +        DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) *
>> +                 DCB_BLANK_TARGET, 100);
>> +}
>> +
>>   void
>>   intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>>                struct drm_connector_state *conn_state)
>> @@ -399,6 +443,8 @@ intel_vrr_compute_config(struct intel_crtc_state 
>> *crtc_state,
>>               (crtc_state->hw.adjusted_mode.crtc_vtotal -
>>                crtc_state->hw.adjusted_mode.crtc_vsync_end);
>>       }
>> +
>> +    intel_vrr_dc_balance_compute_config(crtc_state);
>>   }
>>     static int
