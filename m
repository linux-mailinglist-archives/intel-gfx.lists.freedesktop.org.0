Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DBAB566FF
	for <lists+intel-gfx@lfdr.de>; Sun, 14 Sep 2025 07:59:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 941CD10E223;
	Sun, 14 Sep 2025 05:59:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HyDahN2F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B74D10E02C;
 Sun, 14 Sep 2025 05:59:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757829568; x=1789365568;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=z4fY3UhtgscJ1s9PM3ldyic7NrRYwxXbxmhi/EqH5CM=;
 b=HyDahN2FkokRw+a3o1PPz6rN+fYL+3yIRLkS/by6VkJjmemZ9i62AiTW
 cLic/4XcTwrZ1iHnsZYHOdtbJhYO7/t09tyuAF+zbBW5xk/jdUlJFLQH3
 6135K/OA1wfN9KzhkpvqWzli0j4D9jdNAIMwmrQxTQRiG/IzaJNbuikaw
 BduPDF6XtlqX8ELHvk7ot8xiJQKgQH0LF4PJza9IdJZ5HVJ60Acn1dEDS
 7xC+g+gwRyeFzy/D32u3IgdYoSMmO0XcrwM5m0hY8/Ty+cZVoITlS+gME
 /LEH8CQNpF00Z484KsWz3Oefkl9rzLyiy4Jcq+pKJiGAm1Xx+AaoJBTG7 A==;
X-CSE-ConnectionGUID: 40VpIHHGTlSQp3TyyFFJgA==
X-CSE-MsgGUID: vH7+Hgb1T3atBRvpmtf/XQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11552"; a="59344801"
X-IronPort-AV: E=Sophos;i="6.18,263,1751266800"; d="scan'208";a="59344801"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2025 22:59:27 -0700
X-CSE-ConnectionGUID: tryfNKVWR/efbT/hN8NuVQ==
X-CSE-MsgGUID: Sy2c4x0mQRWJguShxElHiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,263,1751266800"; d="scan'208";a="179578843"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Sep 2025 22:59:26 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 13 Sep 2025 22:59:25 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Sat, 13 Sep 2025 22:59:25 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (40.107.237.55)
 by edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Sat, 13 Sep 2025 22:59:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QAc9Gi6ujlOCVNs1pklRR5YOwll/3zDnTGa757A1pEvBQ75iP68go6I8MGCfZ+uyHW7tD1SctQYNAeRuazfCW+IeNba0IJwMcdPsJ7MrR6pXabC5Mi1quDyxtTIpz6Dg09bOwQc1i7anQtYOOS0LJtR9tzPStMq6odRB5vt/aIxNfcf7ka8yCDs2vbtzmbAUpumpEzq2sSf29Nha4YLG+3J2NjA5wabpXz57uFBim4FjfK0+RZ100udSqV8d2RapjydunGg51lX/ZuyKKgKFDTAeED4SgtESaMsg6O1MaS8qdj9VC/ljVISSiIcWqPd+DCPYD+0IK3d4v+fiVzRgAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y0CpxdQDMTHHLWH8iUrTJT2Acv3KZTRhfDKNhZcvP/U=;
 b=fYyOONW7mjIR9VwfIBwS7Xzkxm+xsbAkvic5pt4EttK+CrTqdh2KwhsBaR2W01NWsSDpO+ENTx86D3ONpbdiEBvEIJJsYruMlVabMoYqiBN6MSRJnA4mb3NJYhgGQ8ixJQ66yKwr6DE6Wg40ctlagpkkXANfkZREhZR6/G1oyZp3IsFTjf43Bo+UiE1gFz8X1a89NIqEgs6zBMb4lJB2n86f20eA6Tu0Wn4rugC7TIXCNC59VG2/u/1P54A+1JKpJPShKDI/99o3hXqLynLcU92MN6w+5IckWUFLPNfmhJ1CUhOSfTiN2846V85LK4+qcYZSrLqknJPlhj6YORme2w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ5PPF64191BB3C.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::82f) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9094.22; Sun, 14 Sep
 2025 05:59:16 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.9115.018; Sun, 14 Sep 2025
 05:59:16 +0000
Message-ID: <f4fb8190-668f-4692-a610-9d7015130ba6@intel.com>
Date: Sun, 14 Sep 2025 11:29:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/15] drm/i915/display: Use vrr.guardband to derive
 vblank_start
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250911024554.692469-1-ankit.k.nautiyal@intel.com>
 <20250911024554.692469-12-ankit.k.nautiyal@intel.com>
 <aMLb17oJa__bPVoA@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aMLb17oJa__bPVoA@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA5PR01CA0001.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:174::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ5PPF64191BB3C:EE_
X-MS-Office365-Filtering-Correlation-Id: 69bebea2-5ee2-4bc3-4662-08ddf353d67d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UWRhampYdUhwZjN4L1lQR0Iwb1EzeUszNStkMW5obVREZE8wUHZtUHBBSjR6?=
 =?utf-8?B?bWQ3NlpyRXZMLytTQ0ZIOXVUd0h5MUg1aDBMUHNMam1wUVo0TU5Tc21LOVZ4?=
 =?utf-8?B?dDA1T1JLV1l5Mk1WbmxQb0ZtREN5dVM2UXJUNUZYTm5Bb0JCSHFaUEFnMmFU?=
 =?utf-8?B?em9ST1AwcUtHcEhVNFJQUUhkRHhpWEdHRi9menZoRndHdko4ei9wYnJUOGFp?=
 =?utf-8?B?SU9jR0hUWkZJWFdwUDcvQWlCTlVCV1k0cjg0bUZEaEtWQzhXajlKWkV5ZE9r?=
 =?utf-8?B?bWQ0V2NnT0VZYzNBWUxwaUxLY094TXE5dDRLak85YUd4YzhtS0d6OE5rOXVT?=
 =?utf-8?B?b29CbWd1alhwUWl0L2xMZjlORlpYZ0N6YUtvbXpCTmUveDhOVk1mUVI1R0k1?=
 =?utf-8?B?QVA2YTRGMStjRzJBOVd4Umozc3V2SW9BbExLRDN3OGdudGwwWC9BanhnYjlO?=
 =?utf-8?B?ZXRBTkRhMmczdkhiSGxzazFNeGdjekFSRGNJQUJHYUowamNSQmhZVGNLRWxS?=
 =?utf-8?B?Q3JqV2tDandtS1lTamY5a0lwUjNVVkZRRDU4TThPMmJienptU1dMdjl1bUxO?=
 =?utf-8?B?ZThaVENzWlJ6R29KU2E2RnVuRWpNbFFEcVp0N0ZBMWRYbC82RDl2UFRnY0Ez?=
 =?utf-8?B?TGc4UDZHa2w0M2pqK3ZhMTZQUFIxcVozcE00VS9GcytmK3BsTlg3RzFPUkhk?=
 =?utf-8?B?dWJUTllabzhpNGFDZXo1M1ZWa1BrS2hmNkg5K1JIcDVDRi9CVlJENkRiRDl4?=
 =?utf-8?B?SEh5ZHowdkFjUFgxVVR1MWpZTTg1TTZnK1pudEpXZGZ3bHBjTkRoZTBxcER6?=
 =?utf-8?B?bVNUWWVDNjEzRXNiSi9hUTBuNXRISC9KNHlrMHFpclRjKzAzcVl5NlJnSjBS?=
 =?utf-8?B?OGhYaVUxVTduUk5pMTdISFQyYnBDZ1pkK1pCRmV4RmpzZWN0aFlZNU5WK3hC?=
 =?utf-8?B?Nk43cjVORzN5U3ZqODdFNWlTaC9HTHJxR0VCc1BQRG40akp1cUR0UGdEb0x0?=
 =?utf-8?B?M3hMWG55K2tobUxURDN2SlNjTERXUnprK2hTNDBtSkFIdm9Jay8rZXFpRzI1?=
 =?utf-8?B?TFMvbTF6TnNRVUpyV0NFT1F2blBOdGNscmQycXVuWlI4aXdORkpzQmNob1cx?=
 =?utf-8?B?TGhKK2ovS0RUbTRsRnpOVy94T0xrWGovenFnWHVJZ2dKQk5GYUR3ZTJsWDBx?=
 =?utf-8?B?dUl4TStZRFI1c1p1bkJ0UEIxR3FtdVNTWGs1c1dSRGlaWmpnb2hma0I3WXpG?=
 =?utf-8?B?anZGYzFRUnZwUjJOaHNiN001bW5ZVzhza2lNeUp4Z0RXNUdoUzJ6RGVMUTZn?=
 =?utf-8?B?SksyM0ZWc3BUQ0F1ZFpZTm53eExJcnN1bnF0NEdFRDNJYUtyL1phM2xweDFo?=
 =?utf-8?B?eG8rYlhKMEpOalBjSU1JQWhkNUdCNjlVRlNoVUh6SVpXTGlaZ25taFF0d2VO?=
 =?utf-8?B?TU5CbGl3YmdWNnFpbFVUbEtaM2JydW14UE9RSVJEcm9XcktEMHR3MHI4MWQ4?=
 =?utf-8?B?c1dyTUh4MkZlYXh2SG1IazVyd1NhTDl2OW4vVWJqSFlsUFN6VnE4VlhhSkhX?=
 =?utf-8?B?MXhVZ3lTdVk3aE5vYjZubkh3SmYzaGxwblVRUlhlVTkycDM5ellXdjN4NVpu?=
 =?utf-8?B?QzM0NGtoalY0dXB6aUhGKzROcW9RV3NXdlJlcnlkd0NaWGJyT0R5cHRqZkRE?=
 =?utf-8?B?UG5jZEc3REIvUTRJTmxrUWlLWHIzUWRFenpocHY2d2hBcGZHY29zLyswcjBM?=
 =?utf-8?B?RXpGNmdWOWdaelo5UjdnRG8rRFVycm1hRlFHOUxybTZxM0RVVE80a0tUbmZi?=
 =?utf-8?B?dVlYMDUxOFJjNVZJMDVteENWNVlEMmlUenZFL3J5Q1VJSVJ6SjYzZ0RyRkNv?=
 =?utf-8?B?V0FRT1ExL0VDc0N6eWFjZUVNN2REUTlzSTNJVXFwcWpRc3dCT1IyQjFRdVFB?=
 =?utf-8?Q?v/HpMPDtyzM=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?QWIzNU9Bc0lpNk8vWFBQOGFXYWJBQTZKOHFydHNzSjZockNETStGYmN2RmdR?=
 =?utf-8?B?cUttOU1vcklIOTZaTHZmZWszQWh4MXN0dmJiTWJjZnJUNlFOQVJHY01KZW5G?=
 =?utf-8?B?TWZwRGtkbldtbVZ6U2VzQlI1b0xRVkwvYjIxd0cwSU1FVkIvQk1aU2p0bUZ0?=
 =?utf-8?B?Vm9UVU0xdjdneEN4Z2hGc25nb3IzRlNHRlQzcWZ1cHBiTHJsRjhuM2ZVbUE4?=
 =?utf-8?B?NjJIRkFhRCtrdzdOcE1kSU9hMjA2cWF3VXc2MUswMXpaTk5TRHlSRzVLREVn?=
 =?utf-8?B?Y2gxYWFDQ0JQRmpKeUNkSWwxdzhKeTVIcHV6dXlHLzZzdUFHUVRBNmhES3FH?=
 =?utf-8?B?dXV0bHZ4VFEyMThYQTJOZEZvZUdlVTZyMSs4YkUxcVhFSTgxUzdteDdaMm9S?=
 =?utf-8?B?eXEyRmhaMUp6UlAyL3A4bEd4aUZMKy9TNkRYMVdWV3RHb1hHTXFuNzFyWU45?=
 =?utf-8?B?dGpPSVpIWm9oM0ZPR2FjcUdwVFFxVlFMcTNVWkJsRTJleFFuNDA4QmpUUU43?=
 =?utf-8?B?S084ejRsZWx4YWtPeGNaaUxHSERDTGxhNzRBT3BxZWxvQm92WW5FTmFGQTR6?=
 =?utf-8?B?Wjh6aVpLSDVzM0l6WVA3WGZENG1IZ1dENHE3NU5KdlV1YWlVUG1HaXdsR2ho?=
 =?utf-8?B?MFh3SE9GRmdrNEkzVmtVVmNyNllpZG05Y0UvcmIwd1hsd1UvOUY5eGJmSENI?=
 =?utf-8?B?T1NkM0N0MGZIVWp3cDhmcTc5NWxrUm8rSVFlU1BPOStid1ZJelQ4ZXo2SEZF?=
 =?utf-8?B?U04vRzFqTkh5TmErQXBqd2dPRGlMKzVyd3ArMWZudFpPMkVsVEVHU3lZS1NN?=
 =?utf-8?B?UTVaOTJ3S0Z2QkVPN2prcE1TNWJDNy9nSHNUUXBaYk9qOUo5UEpKVUhVUFRh?=
 =?utf-8?B?djM2YWl3UnNNcDczNjJzcWwvL3o1Sk1XeWRyY3NkV0x6N3VpZllNcExEVTVt?=
 =?utf-8?B?QkJRaG10TjBRNExydElWMS8xTHd0RVFGd0JGZVhxZ3U4UjR2YjBKOEVMTXdy?=
 =?utf-8?B?QTcyWDRpZk1LcnprdlBVaHM2ajBVZUhVdm1JL3ZOeVZNTHJhcGxsQ0J6NWN3?=
 =?utf-8?B?UlBiQTFDUmh0Y2RybTFPVlp5d1c1TnloY1RpcVJlSWVFWWNSMEZmSHprOVVT?=
 =?utf-8?B?eWFveDhobTAxbWZ0R1JBU0cwL3h2T2Nxa2EyQ2o2RXNUTXdhdDNGVk4vNnFM?=
 =?utf-8?B?cjFaaThNUGFPaVMxcFg2S3pxb3M1NDBkWUtNY2NGM1RvQnFhUzFjaEloWk1X?=
 =?utf-8?B?c2R5Y1crRzhHRWl1TTJ1Q3hudlgwcjRST01mVm1udkZVeUFmeHhiNFdnTDRT?=
 =?utf-8?B?ZUNwdmZKZXJ6ZUZKWk9DOFJNT0pxTmN0aW1zK0tGdGg5RVdVbVU4dUNCK0FN?=
 =?utf-8?B?Y1V1cXR1YlU0VEROMzlKQkIwak4wUXYrSEJZdEVNOGc3WW9VU09rbzZlTWZh?=
 =?utf-8?B?aTloQTc5YjUzYk84UCsxc2JwSG9vcThmSzYvZWM5Nk4vcXU3U3NtRUZleXFE?=
 =?utf-8?B?YzkyNmNSQ3RrKzNJWjlhc1E1WU9BTjBtRXNZTklRai9WRTU3NFBuTzN5eFVN?=
 =?utf-8?B?dnVOdlFMNlVCTTdSZzcvb0tYdW9FYUlZaG5vcGhHTVFYTWhIQ1IvaWFUZkJw?=
 =?utf-8?B?RS9uaVJJNGdjMFBQV2xXK1hoVzdOY3NTekZyZkpMOURVSkJYeW9ON2RwVXBX?=
 =?utf-8?B?ZHZjMG5NWEFxS0tSanZmRzNUc2o5NEVXaU9QYkJRMzRydUl0a0MrUWdIQjFo?=
 =?utf-8?B?YXZCVHFaT01xZlpPc0xQc21BTUlBVzdhZC9LM3AwYnVIOTFqV0YzTUp2NWp6?=
 =?utf-8?B?V0tLamM1dHpKenVISk1IQUhUVVAzQ3N6amxvSE11M0gwQ3VOa29QWW9Rcm1P?=
 =?utf-8?B?enRHT05nL0pSem9ZNFFGS3VpcEVFS1F2SmR6bkNQYmRBdWFtdUJyY3A2OXlo?=
 =?utf-8?B?TE45eWU3dVZuWUNoT2ZOR3hybnRzSTBERUxBcXZjWHZXN3NzdEI2WE1zZjhr?=
 =?utf-8?B?Z1R1Y0xEM0dTVWk2a3dCRVE2aERuZjJGUitqandUYTBVdWJiYXloWENTdE5t?=
 =?utf-8?B?U3hnOWZGRjlPaS8yT3ROV211R0JyK1l2RkNhbVNzbWM4RzdGQUp2MURZb0c0?=
 =?utf-8?B?MnYwMjJMMDNJanZnWVNOa2RZbE9FSUVIRDUwbUk3WmNQUEFHd1NPUytnTzhj?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 69bebea2-5ee2-4bc3-4662-08ddf353d67d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Sep 2025 05:59:16.7447 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6FfeJkojEW4nKOEAJSMBilqFWVTqf30+yqO2Yif9yBGKcvwU0PozJxP/pSMKfiJzKdtBs9UQy5oei+f5pAD2rX0j8MG5ptjjZODrQMPXC5U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF64191BB3C
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


On 9/11/2025 7:55 PM, Ville Syrjälä wrote:
> On Thu, Sep 11, 2025 at 08:15:50AM +0530, Ankit Nautiyal wrote:
>> When VRR TG is always enabled and an optimized guardband is used, the pipe
>> vblank start is derived from the guardband.
>> Currently TRANS_SET_CONTEXT_LATENCY is programmed with crtc_vblank_start -
>> crtc_vdisplay, which is ~1 when guardband matches the vblank length.
>> With shorter guardband this become a large window.
>>
>> To avoid misprogramming TRANS_SET_CONTEXT_LATENCY, clamp the scl value to 1
>> when using optimized guardband.
>>
>> Also update the VRR get config logic to set crtc_vblank_start based on
>> vtotal - guardband, during readback.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 36 ++++++++++++++++----
>>   drivers/gpu/drm/i915/display/intel_vrr.c     |  9 ++++-
>>   2 files changed, 38 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 55bea1374dc4..73aec6d4686a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -2638,6 +2638,30 @@ transcoder_has_vrr(const struct intel_crtc_state *crtc_state)
>>   	return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
>>   }
>>   
>> +static int intel_set_context_latency(const struct intel_crtc_state *crtc_state,
>> +				     int crtc_vblank_start,
>> +				     int crtc_vdisplay)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +
>> +	/*
>> +	 * When VRR TG is always on and optimized guardband is used,
>> +	 * the pipe vblank start is based on the guardband,
>> +	 * TRANS_SET_CONTEXT_LATENCY cannot be used to configure it.
>> +	 */
>> +	if (intel_vrr_always_use_vrr_tg(display))
>> +		return clamp(crtc_vblank_start - crtc_vdisplay, 0, 1);
> What are you trying to achieve with this? As in what problem are you
> seeing with the current SCL programming?

In VRR TG mode with optimized guardband, the guardband is shortened and 
vblank start is moved to match the delayed vblank position.

The SCL value which we are currently writing as difference between 
delayed vblank and undelayed vblank becomes quite large.

With this large SCL, the flipline decision boundary which is given by 
delayed vblank start and SCL lines is same as the undelayed vblank.

It seems that intel_dsb_wait_vblank_delay() (in turn 
intel_dsb_wait_usec()) does not behave correctly within the W2 window 
(between flipdone decision boundary and delayed vblank start).

It seems to return prematurely. Since the push bit hasn’t cleared yet, 
this leads to DSB poll errors.


AFAIU we are not using the SCL (Set Context Latency) lines to write 
registers via DSB.

The evasion logic ensures we write within a separate window, making the 
actual SCL value less critical for register programming.

So I have clamped the SCL value to (0,1). With this after the push is 
sent the send push bit is cleared after (0,1) lines.

But we still need to wait for the delayed vblank. For this we need 
either intel_dsb_wait_vblank_delay() or dsb_wait_for_scanline_in().


Do you have any ideas, what could have been going wrong or if anything 
we might have been missing?


Regards,

Ankit


>
>> +
>> +	/*
>> +	 * VBLANK_START no longer works on ADL+, instead we must use
>> +	 * TRANS_SET_CONTEXT_LATENCY to configure the pipe vblank start.
>> +	 */
>> +	if (DISPLAY_VER(display) >= 13)
>> +		return crtc_vblank_start - crtc_vdisplay;
>> +
>> +	return 0;
>> +}
>> +
>>   static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>> @@ -2671,14 +2695,12 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>>   			vsyncshift += adjusted_mode->crtc_htotal;
>>   	}
>>   
>> -	/*
>> -	 * VBLANK_START no longer works on ADL+, instead we must use
>> -	 * TRANS_SET_CONTEXT_LATENCY to configure the pipe vblank start.
>> -	 */
>>   	if (DISPLAY_VER(display) >= 13) {
>>   		intel_de_write(display,
>>   			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
>> -			       crtc_vblank_start - crtc_vdisplay);
>> +			       intel_set_context_latency(crtc_state,
>> +							 crtc_vblank_start,
>> +							 crtc_vdisplay));
>>   
>>   		/*
>>   		 * VBLANK_START not used by hw, just clear it
>> @@ -2768,7 +2790,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>>   	if (DISPLAY_VER(display) >= 13) {
>>   		intel_de_write(display,
>>   			       TRANS_SET_CONTEXT_LATENCY(display, cpu_transcoder),
>> -			       crtc_vblank_start - crtc_vdisplay);
>> +			       intel_set_context_latency(crtc_state,
>> +							 crtc_vblank_start,
>> +							 crtc_vdisplay));
>>   
>>   		/*
>>   		 * VBLANK_START not used by hw, just clear it
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 855974174afd..e124ef4e0ff4 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -749,11 +749,18 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   		 * bits are not filled. Since vrr.vsync_start is computed as:
>>   		 * crtc_vtotal - crtc_vsync_start, we can derive vtotal from
>>   		 * vrr.vsync_start and crtc_vsync_start.
>> +		 *
>> +		 * With Optimized guardband, the vblank start is Vtotal - guardband
>>   		 */
>> -		if (intel_vrr_always_use_vrr_tg(display))
>> +		if (intel_vrr_always_use_vrr_tg(display)) {
>>   			crtc_state->hw.adjusted_mode.crtc_vtotal =
>>   				crtc_state->hw.adjusted_mode.crtc_vsync_start +
>>   				crtc_state->vrr.vsync_start;
>> +
>> +			crtc_state->hw.adjusted_mode.crtc_vblank_start =
>> +				crtc_state->hw.adjusted_mode.crtc_vtotal -
>> +				crtc_state->vrr.guardband;
>> +		}
>>   	}
>>   
>>   	vrr_enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
>> -- 
>> 2.45.2
