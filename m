Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0FFA28555
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Feb 2025 09:12:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 223FD10E748;
	Wed,  5 Feb 2025 08:12:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LWGkWioC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B936510E744;
 Wed,  5 Feb 2025 08:10:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738743041; x=1770279041;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=1JdYdR3BbgI8+FKun5HzNohDMuanFQJwFikZlrkHSdE=;
 b=LWGkWioC6f+cwIxlJz7n40S7UlVrbPk1hD37gAGxzg0dsUHRvpnKbsKC
 bL2S6BIfupW9mL1c0k0gOyk7i6a+AEKybLEBNNjVA+o1EOM/PZFTQt6Nx
 4ll8IgQfB+g4jErxE9WBDnAYM+vGR+LiMUOCIwdF0ks50K2veNgIufDYT
 yBfUjbx1cpu38OAHTMt28cnvXhF8NONlfQPhc2qJ393MIizK8WmZsfh5I
 LiyQCbyjoB0BOkfzz5kogpn5JL0Md37rGOgXhA1FRqE0cFpMSnmaYGKt4
 FUXWOLh2bwDkjZQWC9ZJvET1KYu8lv9y2iJ6ZLjrAhWUg65J0PImYi1Pq Q==;
X-CSE-ConnectionGUID: G5mDtXhlQRa5cjR97VPNHw==
X-CSE-MsgGUID: iuAcwJnxQhuHUCtAHH/g2A==
X-IronPort-AV: E=McAfee;i="6700,10204,11336"; a="26900828"
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="26900828"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Feb 2025 00:10:40 -0800
X-CSE-ConnectionGUID: LTtcVXAgRUeX1VQhsSRxRg==
X-CSE-MsgGUID: IQQgQ8xwT/6NEgoihlrEDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,260,1732608000"; d="scan'208";a="110719595"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 05 Feb 2025 00:10:39 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 5 Feb 2025 00:10:38 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 5 Feb 2025 00:10:38 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 5 Feb 2025 00:10:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ypWhpN+8zV0S7rU5pBvsa5FKcfRfYdfXaju6bO+3aVN3Dcj/zkLwTkQJwzNevBpiyB+lwxN7FMA+DetlKdBbkEMrpgBGtsM2rteOrdFByDEUsK+IxThx/3qs8uckPGf57wOVI0kzWZUjJXFcyGZUtQKtQhZag+Fc5rnVcHdEEfphVSfMim287YAL7hnohJ6FXZVo696a61UUpBI1maSiM71PazpWaDZ3kG42/ohYkSBuT4sSZ23ESt27iviRWNlrN8VqOziQlJKeIU0LPc0++TV+tU2acyWkYTbrcAsWjaTyst04O3Gff/RNOpKA5APHW0+8mrj8H5vt/bON/Zlhbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vFHZvSquZhedqwPu42GxruqKRHGQ7vLIeDp0i4DISLc=;
 b=Kzov8Ri/f6JJ70ARcs6e2pcTYDcRWiTnb4mFErgOylnu/YtEUeUEK9RLfXk4Ze6rgivCgp+tco89BO4o7scSWKg7dgWnN9i4W98Mle+jfUtnPtycN++pG+JO7pXJ9phpLG/IHoY+YJ8SMnTxrXu7xGeVU5SqIYFqSYOtKh6LFd0QPo0HVeYHaOcijWvDYGnA/Xk/J4Bd6zYLaFhIbGcr6KVMXgFDOBJO4SPYtXbobmxIecRTFdUE4/AeFeVYTd9PFT3GJys+zFeiHMa0a7XtuSfHT4wM9NIBtGsHT541saW95/YjiLFqMVSHaLW5ftUnTTeV+n1aS9/BvHOp6i9kMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB6133.namprd11.prod.outlook.com (2603:10b6:208:3cb::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.10; Wed, 5 Feb
 2025 08:10:23 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8422.010; Wed, 5 Feb 2025
 08:10:22 +0000
Message-ID: <7bee2352-a17f-4024-9cdd-4812bea6b920@intel.com>
Date: Wed, 5 Feb 2025 13:40:16 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] drm/i915/display: Compute the scaler filter
 coefficients
To: Nemesa Garg <nemesa.garg@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
CC: Naga Venkata Srikanth V <nagavenkata.srikanth.v@intel.com>
References: <20250113104936.1338290-1-nemesa.garg@intel.com>
 <20250113104936.1338290-3-nemesa.garg@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250113104936.1338290-3-nemesa.garg@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0076.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ad::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB6133:EE_
X-MS-Office365-Filtering-Correlation-Id: d43197ed-2691-4c58-a76b-08dd45bc89df
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OWlvc2RGeU9tbkJuWVY5Z0N0N0FuREZ2M0xSSXliTlUxNE42ZXdPN0tZQll1?=
 =?utf-8?B?ZkRDMmUvRlJ2WlF1VXYyUjJEVEt0dFhzMzZEdk5xSWVWZERRejhnRXRtbEF3?=
 =?utf-8?B?K3Z0WER6SVpSblgyNHY2R1ZQVGIwVXhPcGlIWkRIOTVncHBJNzZRcWV6Vm1E?=
 =?utf-8?B?ZVVuamtCaEQ0M2pkTTNvelo2b3F4UktCV3J5dE43NEh6Nm9od0RnbWRiaGVl?=
 =?utf-8?B?bVlpcjNwTDVNTmJqaVEyTGRhcVNqL0xjaXBwMXJMbVFvOGF1dUdxMkVFZEJx?=
 =?utf-8?B?ei9NTksxUGxzcjBmRHNRUlBzSTNQZE5PN1EySHo5c0hLcGcrNlZFeWdNdXZq?=
 =?utf-8?B?N2syelczRzlhZGEycUNudlpnUk9mSjFyVjVoK0UxZ0N2cUtlM1A1Z2QwRlJJ?=
 =?utf-8?B?Z0dzcFNtSFlKbjdnb1E2THlYeEd5ektTSlRPOHJiSFRORWFtTU5BZXkwalJl?=
 =?utf-8?B?bFpRd2o2VWRqY2V1WmNxL2NWd2UyWnVVV0tPZ01kWVQ5d21FVUdrQ1ZSVE83?=
 =?utf-8?B?MWtJQ1BXYXgyMXRYa3FyUFZPbFZ4akhLZ2NJdUFVbHhRb3AwaE0rM2pSWDc0?=
 =?utf-8?B?K3JCOGt2RlRvNFAwNUI3cFNDdG0xak0vQ2kydXNLWnUxWVFJQ0ZScEpQeDVk?=
 =?utf-8?B?NnhQeEdGcDFBOFhhazJ3REludmFnQWcrbG9icTgxWkE5ODFINXBhYW05cC9p?=
 =?utf-8?B?cDBWamFETDFXVVo1VFR6Mk5kUjNIY3A1c1dEZmhrSWtFQXlGdmd6V0VmV250?=
 =?utf-8?B?ZnZEazlMaWpUYjVIanczdW51YXRWZlZzK1V6OS8wWUJRRVRWTGRxb3pUMEs4?=
 =?utf-8?B?NmJIVVVJbkM4ZkF5aDhTT1Ara1JmQlBFOEtiM0luaGpIZlpHTXI1Y09jaWhW?=
 =?utf-8?B?TVNUZnM1NzZXWmF5aU5TbkI4MkVCNUVIa2Q3MlVzOTJjTElkR0xzQlNaS3VZ?=
 =?utf-8?B?LzhYNG5SV3FuNnMxY2lTTXowc1hMcUFTTDJ1WlRQdExLd3AyNWZhUjhDTkRK?=
 =?utf-8?B?WHlUa24yQU4rS3NiUmJCZUtqSUtReVpJWWdNOFFHcUhlcFN6NGdjOHZCOGJB?=
 =?utf-8?B?WDBDRm5rMHdFcTlSbkgxZHBGNTVHeEN1dTdTM0tML2VZcThGL3Y0anF6WW1N?=
 =?utf-8?B?elAzK3R5bWpaUG4vTE8rT2tpaVJ2cDhqY1B3b28yVTFTQ1BGazF3andCZFZ5?=
 =?utf-8?B?ZFJTTU5OTjhlZnpUTzJsZ3dVd2xtamhMNmd0S2pCMHErQ0l6YjdNaXY4MmRh?=
 =?utf-8?B?cHVpcHF0UGN6dHZwY0JuMUdJenNXSnVvMEpJc2FBamI3YlMwMW5WT2hoN1Fv?=
 =?utf-8?B?V3BZK0lISnplSklMa1pmVUlWQUJJek54Q3ZaZUVhcGR1YjdobkdkQkROS0dD?=
 =?utf-8?B?WmZEYlU3cWlJSXVDQ25CbzR5eFZWV3RtUHd3TFYyYzA0bkZTN1QvUml3ZlRQ?=
 =?utf-8?B?cjFRRi9xc0NJbWphbUtwNFlOUDR1MzZsTEtpU0JiRlZrWVBMWnBETFFQL3lo?=
 =?utf-8?B?N0hLWjMyV2JCMU1RbW16Y2VibFhCRFpJVXBhbHJUK29sZnV3ZGhPV2p0U2to?=
 =?utf-8?B?UVRJOTNTemFxa2ZGcUdVbHd1aHhURzRhalZIK3hONWdjdm5FWktMRjA2U3RQ?=
 =?utf-8?B?bHA0Q01zRFBBdktsS0tzKzdUYmdyek95UGRIRThncFFzMFV5SjAwYi9oUmNv?=
 =?utf-8?B?V0dxKzR3YTFWSHBjTFJLSHE1NDIxams2MEZqV2Z4VEFMRndTaTE4SUZ2eWxZ?=
 =?utf-8?B?cTNjalp3YkxoRlhVWFlXRHJlRFN3UUQ1YUtSV3RxcEpnb0kvVHpMUkVVZ1Vm?=
 =?utf-8?B?NnQ3dktrYWVYYk9yMHh2R1BDT2ZsYm5BYkwxaG1pcDhVZ0ZpaEZvdGJ4VDRN?=
 =?utf-8?Q?TChbkhXBrxwHe?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?d2tIclZJRUZ4OEZsbyt2OXpuZjJiWG91bGN2OFVGY2dLb3c4WlhJZy90eSt0?=
 =?utf-8?B?VHhuRmhBa3dsbjdOYlNlTFNyY291dVFLSzZ5d1pUYUJZZ3h4OEZ0d2R0V3NI?=
 =?utf-8?B?a0JBM1p3aWppTWJ5dXhoUmY0Z2h6cTJMdVVieDBkSWJuajF5OXp5cVh4Uk1B?=
 =?utf-8?B?THlaRUlzdFdSNkh3eHVjMXFjQm41RGJIQnQ3ZmtkRzhCeUVqWkUxbXREQWpC?=
 =?utf-8?B?RTFzTWdZeHdXc2ZMai9VK0FDRmNYaTNRK291RVRBUm5EN1RNblFmOGQ2UW45?=
 =?utf-8?B?WnVycjVyaWI4M0ZOUStvcGJXZEpLN0VTMGJjN2FKekp3WXppOEVhUk9QV3Zk?=
 =?utf-8?B?emNkV3o5OS9DZ0NQRVhEZkZwV21HdTN5Q0NYZWZzQ1F0RFNsVHA0NTltbUQ1?=
 =?utf-8?B?bHFuY2tDVXRycldReWJDR3MyNkxScUQ5WkxqRzRrQWVieFNXTzNTQkdhcERF?=
 =?utf-8?B?dTVNdlg4K0dNVXMrNjlNUFc1ZXJHZG9ncXFaVTIvSEc1V0xWck45NFhoK1BQ?=
 =?utf-8?B?OG5ZR05DMEFhNWlaUkxpRFJtYmhBQkd2RHhCZ21ZdmlOYUV5dnhoTzJqRUNP?=
 =?utf-8?B?bVEvY2d0UUhScS9xZVRzZkh0aktSMFgrZWVidmxwdWkxUXNnT1J0QUttNXVR?=
 =?utf-8?B?bUlzSng5cnQvRS96d2U1QU5GUDB4TFZGU3RaQnplcDZYOFVKenJSQ0gxYzlS?=
 =?utf-8?B?ZkJjY3RDVGRoTUkyRkpGdGcycXRzODk1enNhaDZ4by9WblJNdFcvUjVocUVE?=
 =?utf-8?B?dUdTdkYvTm51WTRqRXV4bzFpMlA1YWdxMllYcnF2b3NIcUtleVBraEFjZG9B?=
 =?utf-8?B?UjdQZEhSRnpBYXF2WGNFQVd4RkNXVlRSdUJqNWNKWVFzbktRc3pyM2krV2F3?=
 =?utf-8?B?U3VpalpVN2huRVhzQW11YzB4b2VEMGs0L2xBTEN6UTVmRXM5c09IdXo1dlQ3?=
 =?utf-8?B?VTRML3dGaHRudy96Q1lVUTBVaE52UldhVytvTStYYUZTZjNsdVUyZ21meXR5?=
 =?utf-8?B?MityR1FKdExJRUdrTkk3MW1BcUprNjdOcTUyQmJQWUVTQ1BYVFNSand5V2ds?=
 =?utf-8?B?bDZ5aHdoNGVOQ3krM3g5YnZJOTFoQ0Jhdyt1b3duUHJiQWlRd3JUWHlSM0ZW?=
 =?utf-8?B?REM4bm9qblBIeURUcTFTbmR3c0F1cGljM0VWZmY4QWNObFBhNkdhcE5NVTBP?=
 =?utf-8?B?Z2lZaHYyN20xSHVQSHpCWm03WUpiRUg0OG1xUGdNd25FTW5rN3FSSGRwVUd3?=
 =?utf-8?B?a1psbkVGMmRSVmRVSG5EMnB5VVFWTFRaZWgzN0ExSnpDVDNSc2ZIQ3lkWnQx?=
 =?utf-8?B?MDVGM1FiNmQxQndZUXM3MFlvei9HNW9pNDVzbWlmS0VFQkpNc2hTbDhmUXkv?=
 =?utf-8?B?NURRSWkzdjlZWHRVaFQ5bVA1TWdCY0pSckJOL2QzMVJMRUI4MzFQSkxIaXdF?=
 =?utf-8?B?SGcyS1V2Y2xlQVVmaFU4dG42ZGNyZ0VJWmhjNXM3ODJuKzl2NXowWmZWbWlC?=
 =?utf-8?B?T3orak1YaEhYZEdOZ09OcUNXSUtaRzI0emRsY0FLZ0NsY1FDbHFPVWc5RVp6?=
 =?utf-8?B?OU1pOVgzOFVINVZnazlCTnhRSzVVWEZsRE5GRXUxR0RlcXBVQkErMjJqd0tW?=
 =?utf-8?B?L3l5SU5Mb2FKdnp6U0R2Mnk2cXdhL0dId2x6a0tqNFNvTzluaThEeXNPekRH?=
 =?utf-8?B?NzZwMk0wMStHTjZhOWwxVFY0VlVQci9oOFNiaVZwR2JpUXFxMVVYekhtUDBB?=
 =?utf-8?B?TzVEQWc5WFI5VzVrMHU2Q0tuWTlZMWJLNThMWmJzVlNpcEtuU1E5QTQyNldG?=
 =?utf-8?B?ODBLV3luNlU2eVQ1OHJxdS91WmFRVjZtUXVQUFVZNFhKZDRLUit4WmtjSFFQ?=
 =?utf-8?B?aEZqbGkwMDlnZkRPU3VMRHFmUUo1UHNHbUNmb1N3VHhYanl1WjZiYzVzZXN3?=
 =?utf-8?B?V1N2TDVjaGVxRUNzN0pIWXQyTXFqSEJVTUpwL1pIcm9KODBKcDI0czYxbklT?=
 =?utf-8?B?aFpKVS9uQlN0TllOdjR2aXBZU2ZzVHVzb0FkWlhsbnRaZks1dVIvMnlTR2pL?=
 =?utf-8?B?dG1wZ2o0cWh5TzFmd01aQTJEYmxnSi8wRWtZV2hoYVdTZnBWMzQzbmQ4M3RD?=
 =?utf-8?B?WDEvWjlSdWNVVE1JaS9LWXZiY1BkMHFPa29KaS9NeVRnc1hQSEZDQzlmYWtu?=
 =?utf-8?B?TkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d43197ed-2691-4c58-a76b-08dd45bc89df
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2025 08:10:22.9252 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2LCuq6/yx9KfISPE5QqmMESoSFJpaCq2dsw0+nbT36p3o3J1Hsbq5r3rlxZZ+3Fkjr6iNbLWLrzqYTPHnzV98WWJ+UOX89O906DAHrHoYsw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6133
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


On 1/13/2025 4:19 PM, Nemesa Garg wrote:
> The sharpness property requires the use of one of the scaler
> so need to set the sharpness scaler coefficient values.
> These values are based on experiments and vary for different
> tap value/win size. These values are normalized by taking the
> sum of all values and then dividing each value with a sum.
>
> v2: Fix ifndef header naming issue reported by kernel test robot
> v3: Rename file name[Arun]
>      Replace array size number with macro[Arun]
> v4: Correct the register format[Jani]
>      Add brief comment and expalin about file[Jani]
>      Remove coefficient value from crtc_state[Jani]
> v5: Fix build issue
> v6: Add new function for writing coefficients[Ankit]
>
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> Reviewed-by: Naga Venkata Srikanth V <nagavenkata.srikanth.v@intel.com>
> ---
>   drivers/gpu/drm/i915/Makefile                 |   1 +
>   drivers/gpu/drm/i915/display/intel_casf.c     | 142 ++++++++++++++++++
>   drivers/gpu/drm/i915/display/intel_casf.h     |  16 ++
>   .../gpu/drm/i915/display/intel_casf_regs.h    |  19 +++
>   drivers/gpu/drm/i915/display/intel_display.c  |   3 +
>   .../drm/i915/display/intel_display_types.h    |  13 ++
>   drivers/gpu/drm/xe/Makefile                   |   1 +
>   7 files changed, 195 insertions(+)
>   create mode 100644 drivers/gpu/drm/i915/display/intel_casf.c
>   create mode 100644 drivers/gpu/drm/i915/display/intel_casf.h
>   create mode 100644 drivers/gpu/drm/i915/display/intel_casf_regs.h
>
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index 3dda9f0eda82..6f7f47af894e 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -286,6 +286,7 @@ i915-y += \
>   	display/intel_pmdemand.o \
>   	display/intel_psr.o \
>   	display/intel_quirks.o \
> +	display/intel_casf.o \
>   	display/intel_sprite.o \
>   	display/intel_sprite_uapi.o \
>   	display/intel_tc.o \
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.c b/drivers/gpu/drm/i915/display/intel_casf.c
> new file mode 100644
> index 000000000000..b507401457bf
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_casf.c
> @@ -0,0 +1,142 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright © 2024 Intel Corporation

Update to 2025


> + *
> + */
> +#include "i915_reg.h"
> +#include "intel_de.h"
> +#include "intel_display_types.h"
> +#include "intel_casf.h"
> +#include "intel_casf_regs.h"
> +#include "skl_scaler.h"
> +
> +#define FILTER_COEFF_0_125 125
> +#define FILTER_COEFF_0_25 250
> +#define FILTER_COEFF_0_5 500
> +#define FILTER_COEFF_1_0 1000
> +#define FILTER_COEFF_0_0 0
> +#define SET_POSITIVE_SIGN(x) ((x) & (~SIGN))
> +
> +/**
> + * DOC: Content Adaptive Sharpness Filter (CASF)
> + *
> + * From LNL onwards the display engine based adaptive
> + * sharpening filter is supported. This helps in
> + * improving the image quality. The display hardware
> + * uses one of the pipe scaler for implementing casf.
> + * It works on a region of pixels depending on the
> + * tap size. The coefficients are used to generate an
> + * alpha value which is used to blend the sharpened image
> + * to original image.
> + */
> +
> +const u16 filtercoeff_1[] = {
> +		FILTER_COEFF_0_0, FILTER_COEFF_0_0, FILTER_COEFF_0_5,

Indentation seems to off. Use just one tab.


> +		FILTER_COEFF_1_0, FILTER_COEFF_0_5, FILTER_COEFF_0_0,
> +		FILTER_COEFF_0_0,
> +		};

Align the closing braces with the start of the line.


> +
> +const u16 filtercoeff_2[] = {
> +		FILTER_COEFF_0_0, FILTER_COEFF_0_25, FILTER_COEFF_0_5,
> +		FILTER_COEFF_1_0, FILTER_COEFF_0_5, FILTER_COEFF_0_25,
> +		FILTER_COEFF_0_0,
> +		};
> +
> +const u16 filtercoeff_3[] = {
> +		FILTER_COEFF_0_125, FILTER_COEFF_0_25, FILTER_COEFF_0_5,
> +		FILTER_COEFF_1_0, FILTER_COEFF_0_5, FILTER_COEFF_0_25,
> +		FILTER_COEFF_0_125,
> +		};
> +
> +static int casf_coef_tap(int i)
> +{
> +	return i % 7;

Should this be SCALER_FILTER_NUM_TAPS?


> +}
> +
> +static u16 casf_coef(struct intel_crtc_state *crtc_state, int t)

IMO consistently using coeff would be better. Currently coef and coeff 
are mixed.


> +{
> +	struct scaler_filter_coeff value;
> +	u16 coeff;
> +
> +	value = crtc_state->hw.casf_params.coeff[t];
> +	coeff = SET_POSITIVE_SIGN(0) | EXPONENT(value.exp) | MANTISSA(value.mantissa);
> +
> +	return coeff;
> +}
> +
> +static void intel_casf_write_coeff(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	int id = crtc_state->scaler_state.scaler_id;

I think we should have a check that id is 1 (for second scaler) if not 
flag error and return.


> +	int i;
> +
> +	intel_de_write_fw(display, GLK_PS_COEF_INDEX_SET(crtc->pipe, id, 0),
> +			  PS_COEF_INDEX_AUTO_INC);
> +
> +	intel_de_write_fw(display, GLK_PS_COEF_INDEX_SET(crtc->pipe, id, 1),
> +			  PS_COEF_INDEX_AUTO_INC);
> +
> +	for (i = 0; i < 17 * 7; i += 2) {
I think we should add comment about the reasoning.

If I understand correctly there are total 17 phase of 7 taps that 
require 119 coefficients in 60 Dwords per set.

Which filter coefficients to be used, depends on window size, that 
itself depends on the resolution.


> +		u32 tmp;
> +		int t;
> +
> +		t = casf_coef_tap(i);
> +		tmp = casf_coef(crtc_state, t);
> +
> +		t = casf_coef_tap(i + 1);
> +		tmp |= casf_coef(crtc_state, t) << 16;
> +
> +		intel_de_write_fw(display, GLK_PS_COEF_DATA_SET(crtc->pipe, id, 0),
> +				  tmp);
> +		intel_de_write_fw(display, GLK_PS_COEF_DATA_SET(crtc->pipe, id, 1),
> +				  tmp);
> +	}
> +}
> +
> +void intel_casf_enable(struct intel_crtc_state *crtc_state)
> +{
> +	intel_casf_write_coeff(crtc_state);
> +}
> +
> +static void convert_sharpness_coef_binary(struct scaler_filter_coeff *coeff,
> +					  u16 coefficient)
> +{
> +	if (coefficient < 25) {
> +		coeff->mantissa = (coefficient * 2048) / 100;
> +		coeff->exp = 3;
> +	} else if (coefficient < 50) {
> +		coeff->mantissa = (coefficient * 1024) / 100;
> +		coeff->exp = 2;
> +	} else if (coefficient < 100) {
> +		coeff->mantissa = (coefficient * 512) / 100;
> +		coeff->exp = 1;
> +	} else {
> +		coeff->mantissa = (coefficient * 256) / 100;
> +		coeff->exp = 0;
> +	}
> +}
> +
> +void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state)
> +{
> +	const u16 *filtercoeff;
> +	u16 filter_coeff[SCALER_FILTER_NUM_TAPS];
> +	u16 sumcoeff = 0;
> +	u8 i;
> +
> +	if (crtc_state->hw.casf_params.win_size == 0)
> +		filtercoeff = filtercoeff_1;
> +	else if (crtc_state->hw.casf_params.win_size == 1)
> +		filtercoeff = filtercoeff_2;
> +	else
> +		filtercoeff = filtercoeff_3;
> +
> +	for (i = 0; i < SCALER_FILTER_NUM_TAPS; i++)
> +		sumcoeff += *(filtercoeff + i);
> +
> +	for (i = 0; i < SCALER_FILTER_NUM_TAPS; i++) {
> +		filter_coeff[i] = (*(filtercoeff + i) * 100 / sumcoeff);
> +		convert_sharpness_coef_binary(&crtc_state->hw.casf_params.coeff[i],
> +					      filter_coeff[i]);
> +	}
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_casf.h b/drivers/gpu/drm/i915/display/intel_casf.h
> new file mode 100644
> index 000000000000..8e0b67a2fd99
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_casf.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_CASF_H__
> +#define __INTEL_CASF_H__
> +
> +#include <linux/types.h>
> +
> +struct intel_crtc_state;
> +
> +void intel_casf_enable(struct intel_crtc_state *crtc_state);
> +void intel_casf_scaler_compute_config(struct intel_crtc_state *crtc_state);
> +
> +#endif /* __INTEL_CASF_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_casf_regs.h b/drivers/gpu/drm/i915/display/intel_casf_regs.h
> new file mode 100644
> index 000000000000..0b3fcdb22c0c
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/display/intel_casf_regs.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: MIT */
> +/*
> + * Copyright © 2024 Intel Corporation
> + */
> +
> +#ifndef __INTEL_CASF_REGS_H__
> +#define __INTEL_CASF_REGS_H__
> +
> +#include "intel_display_reg_defs.h"
> +
> +/* Scaler Coefficient structure */
> +#define SIGN				REG_BIT(15)
> +#define EXPONENT_MASK			REG_GENMASK(13, 12)
> +#define EXPONENT(x)			REG_FIELD_PREP(EXPONENT_MASK, (x))
> +#define MANTISSA_MASK			REG_GENMASK(11, 3)
> +#define MANTISSA(x)			REG_FIELD_PREP(MANTISSA_MASK, (x))
> +
> +#endif /* __INTEL_CASF_REGS__ */
> +
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 4271da219b41..413b7fd7e287 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -111,6 +111,7 @@
>   #include "intel_psr.h"
>   #include "intel_psr_regs.h"
>   #include "intel_sdvo.h"
> +#include "intel_casf.h"
>   #include "intel_snps_phy.h"
>   #include "intel_tc.h"
>   #include "intel_tdf.h"
> @@ -6176,6 +6177,8 @@ static int intel_atomic_check_planes(struct intel_atomic_state *state)
>   		if (ret)
>   			return ret;
>   
> +		intel_casf_scaler_compute_config(new_crtc_state);
> +

This is added here and then removed later.
What you perhaps want to do is have intel_casf_compute_config() here and 
call this inside.


>   		/*
>   		 * On some platforms the number of active planes affects
>   		 * the planes' minimum cdclk calculation. Add such planes
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8271e50e3644..7cb58bf56907 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -929,6 +929,18 @@ struct intel_csc_matrix {
>   	u16 postoff[3];
>   };
>   
> +struct scaler_filter_coeff {
> +	u16 sign;
> +	u16 exp;
> +	u16 mantissa;
> +};
> +
> +struct intel_casf {
> +#define SCALER_FILTER_NUM_TAPS 7
> +	struct scaler_filter_coeff coeff[SCALER_FILTER_NUM_TAPS];
> +	u8 win_size;
> +};
> +
>   void intel_io_mmio_fw_write(void *ctx, i915_reg_t reg, u32 val);
>   
>   typedef void (*intel_io_reg_write)(void *ctx, i915_reg_t reg, u32 val);
> @@ -969,6 +981,7 @@ struct intel_crtc_state {
>   		struct drm_property_blob *degamma_lut, *gamma_lut, *ctm;
>   		struct drm_display_mode mode, pipe_mode, adjusted_mode;
>   		enum drm_scaling_filter scaling_filter;
> +		struct intel_casf casf_params;
>   	} hw;
>   
>   	/* actual state of LUTs */
> diff --git a/drivers/gpu/drm/xe/Makefile b/drivers/gpu/drm/xe/Makefile
> index 5c97ad6ed738..fca8cdb70ce6 100644
> --- a/drivers/gpu/drm/xe/Makefile
> +++ b/drivers/gpu/drm/xe/Makefile
> @@ -262,6 +262,7 @@ xe-$(CONFIG_DRM_XE_DISPLAY) += \
>   	i915-display/intel_psr.o \
>   	i915-display/intel_qp_tables.o \
>   	i915-display/intel_quirks.o \
> +	i915-display/intel_casf.o \

Maintain alphabetical order

Regards,

Ankit

>   	i915-display/intel_snps_phy.o \
>   	i915-display/intel_tc.o \
>   	i915-display/intel_vblank.o \
