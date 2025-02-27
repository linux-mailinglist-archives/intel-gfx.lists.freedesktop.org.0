Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 34991A47A4F
	for <lists+intel-gfx@lfdr.de>; Thu, 27 Feb 2025 11:29:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2142D10EA8E;
	Thu, 27 Feb 2025 10:29:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="al9imjZA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49DCD10EA6E;
 Thu, 27 Feb 2025 10:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740652149; x=1772188149;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=0QiaZ6dd8EuBX+vVra5fXQKAW145NWho+AQJamIOm3E=;
 b=al9imjZArFYQTwEFVIVwRooeZKPKUku7O+GP+CEfGx75dkjKZiO17juC
 L5LFM6Iq19fAOoTFZ30ybFPKmKlyRDXtvDw9D2DFxDZ02Mu+ut2bUK7Tp
 cxdJ4urwFrjw0EM9SSU41kpYgCZJACzrHQP1gQ9RFqi65ZFmR5WmT0Ev/
 kXs/n0Qe6jzUAIM8KXWqdRGdnEGlAM8BjJXcS87DFbsDvuQ/p90l4sIcM
 92zJ4bRvI1TrDnbDE+vI5m0U6VFLtbzdSdk1EFSprHU/IK5ATjNQsxGNW
 1q5C3iKJ0AQKPp5oawnPoNjsg5grEtOnyRzmeRa9YmkzUF31aKwztzo0m Q==;
X-CSE-ConnectionGUID: URXADcGUQW2addU2UysY4g==
X-CSE-MsgGUID: mvS6Ozc/RIiHMMjiH/8yeA==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="58950902"
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="58950902"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2025 02:29:09 -0800
X-CSE-ConnectionGUID: 1A77HUObTnWl8vLG1zqe3w==
X-CSE-MsgGUID: TbTCR/VrQPSijMD5YttOkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,319,1732608000"; d="scan'208";a="116757649"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Feb 2025 02:29:08 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 27 Feb 2025 02:29:07 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Thu, 27 Feb 2025 02:29:07 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 27 Feb 2025 02:29:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=xETlI+oUCMXRjXFxbBSeRo7+sd1haszuo3A3/GB1ahuAW4AlxWO/Mzjlg0JS0QKaQ0+IGKLvjCvPlEl8/l6ilqi+O72xlWMwJYmgnrgncHCu5ZirhvEU1yPz21PtzlTHLmEfk+GC5n0cF5YZsROmhdMWoOz/cTPXN85rSeC/1TvNbXVzr5AWajRurV4r9nN8NwEt0eaOqCY8QBpuTwfMJpzYA4YUUkTvU6sXNADqgCJloCSbfOXE0/Sj5m1xyTcdKDESUnV4eyQ3IwWR3jk1Vq2sN5hdK1TtXS77cbGdFLvrHrEZLMxUPqSAiUnWLf18lyxREHa9ngG5kmQ5zz+3LQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q6iuCToRzqppgNJFgeVMJ2plkqkVq7fHMBiiCl3msiQ=;
 b=kEXMnyuLBPzOqyNVGtIV6tMAu3TEXeMw/fTNwTN2obJd6XKo9Kr6vTGCq0S0u6eecbconMTjbc9ItauoHCYQ+rLFa3i4hU9IXLYLvUnB8F8yBtSAhAaIWWoStf7k9oV90vahBP3J4T0lTLV1t6LEP5f1+6nwzG6fE1C7Bzy7X8yomwcn0LGO8IBugBh3OSxvyWhrMm41o0DSNHqjI3lnCy1Uhj52bgEInWx/koz13n6BwtG/C4nm5MwlbX5KxojkVULjeONJ54X2ebsJWtcqyEk9QSMdpGqKn2zliugVpC7ZVATTispn1svN0m2ZOcb/GJeqYL7fmb/WBndRlQorcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MW4PR11MB7077.namprd11.prod.outlook.com (2603:10b6:303:223::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8466.22; Thu, 27 Feb
 2025 10:29:05 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8489.021; Thu, 27 Feb 2025
 10:29:05 +0000
Message-ID: <c9800f86-d3eb-4a58-a597-ca692c2a3b0e@intel.com>
Date: Thu, 27 Feb 2025 15:58:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 16/20] drm/i915/display: Use fixed rr timings in
 intel_set_transcoder_timings_lrr()
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 <jani.nikula@linux.intel.com>, <mitulkumar.ajitkumar.golani@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-17-ankit.k.nautiyal@intel.com>
 <Z78sqJU5ikVe3mUb@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z78sqJU5ikVe3mUb@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0151.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a00:71::21) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MW4PR11MB7077:EE_
X-MS-Office365-Filtering-Correlation-Id: 10b50e92-bc7e-483b-83a2-08dd57198f60
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?S0lla05WWWM5bnpVUGYvUjA1NnRNRGpGOFdkOEpQckdqWkRMN21zM2x5S1gz?=
 =?utf-8?B?c2JIeU42U2NIMnBnSDZRclhXSHU4dDlKcDFFaVBwU09jVkxvd0R0clhHdWUw?=
 =?utf-8?B?V1Z1QWhYVEVheGFaUlNHbEtacXNMUFBud1E3Y042cDRrRlZxNTlrNzYwMVhi?=
 =?utf-8?B?YUhvSVZiYndhWnJxY3U1TEhpUFQwOEViMXJVOWxIMTNMei9wWnZ1RXFFemJv?=
 =?utf-8?B?S3JWN0dhSXdnczBQUkZqYWdjNnZMVy8vMjlYL3FTZURIZ05vL3ErRk1URk1q?=
 =?utf-8?B?bWs5cXRrZGJ4UUtETjZwRHpqdlJJREMrRUVEM0JsZDV3VzZnQ0RBT0tVaEhK?=
 =?utf-8?B?UTJPbTJNU2x3UkphRU4rQ1NBYzcyajgvdlNXSlF4K3BRdEUxcE8zRVlhOGdR?=
 =?utf-8?B?K0dUOTVXcVBJeXFYelY5NjBIVUhSWG1pMFh0MGRUL29lNm01RVFQeUtmWlFu?=
 =?utf-8?B?OEpIdmFTeE1DWUJiQzJ2ZnNVQ25va2s0TlRpekZzTm5yMWFRZU1xTmZHVVZE?=
 =?utf-8?B?WUF4ZUZxTTdVdE5Pdm1XVlo4ci91ZlpvdXVsQzQwSTlyaGtDOWVZdFk3Qysz?=
 =?utf-8?B?TTBSZURHc3JxNHVaSU1pVENlcmdMcDViQlF1THJ2NU5Ob1EyaGFHSHVLTGRR?=
 =?utf-8?B?Tk5IWWVEcTZybGpxSC9BVy8xWVFBU0xTL1RQNFZTTUNGMEd6YnhaRGd4Tnlu?=
 =?utf-8?B?Ung4Nmo1dGZ0a0dveWh5Tk1FaHgyUTA2Rmg2TURacHlRK3M1ODBKWit4Z01J?=
 =?utf-8?B?ZHhXVlRSK3B5QTNCVlVDeHdRVlFiNUJ3WlJIKzZzbEtLekVjMk9SNFNjTDVj?=
 =?utf-8?B?TFFpemFZTElqMWNzenk3SjNZdCtTcnlybk9CMlhkSUNsckkyUkNMdGdlWW1o?=
 =?utf-8?B?cjJ1NG5wejVyOWdvdmVWTEFsdER3QVRROXM5OUV4aVYzZzZTL0RBWlN0ZUly?=
 =?utf-8?B?SjUyT0lkbWJIcTh6RFBIMUw1Szh5cmxvVEdvUWgwZHVSUHNVWHFBSysxclNq?=
 =?utf-8?B?dklLOUNWMUVUM05DUU0zNktmZlF4MXVxYVkwYnlXYmo5M2pNdm5tNWNYcGkr?=
 =?utf-8?B?OWYvd0NNQUZ0SEFMTXFIWWcrM2pLQ1FPRU1yZjI2cnZsTGszMkxUcTk1K2hZ?=
 =?utf-8?B?Q1Y0U0ZsMVB3c1ppNFNNYnpLY09Kc00vWCtXNG1ycHhEUkQ4K0dZcnpva3Jl?=
 =?utf-8?B?cWVCb2lBOVdRcHdUTjdHTVIvSTRSMTV0ZEZOM3diT2hSY2VTemVlbGh2SS9l?=
 =?utf-8?B?dlhTWjVqZkNVYSt0cTRYNloyVktNak1SMlU4UDNoWUxNU2xsYmRRUTFIWDJF?=
 =?utf-8?B?TDVtRFM5dm9Oa05XMEtDTHhlT1Awa1Fsays5N2lMRkNVcVRQWlpEaEdvNmc1?=
 =?utf-8?B?VDJ3NVZadXB5THp5MmQrTnMyWEhGM0d6eDVIdmpvdTBmNEZib28vbGhSdENI?=
 =?utf-8?B?M2NoYXNIYjk5bmV3QU9IOUVySm9YWmZ4WjlzV001VlZTTkNXb1VueStFLytV?=
 =?utf-8?B?T1hlbWFvNVFTMlUxcWI2RlZtSTVGNnI3U0VPSU40Rm9ubVBjaEFrZ3BIVkFP?=
 =?utf-8?B?YTZ3MWh6QVFZckRUeld5eHpvb2ZKejNLSFVqOXFNTWlxVU15SFJMMlJqNitj?=
 =?utf-8?B?UHVQdWtrcmJiSzcrdnhoZFR4OVh1dk5WbVFXeGdUUmJJOGxFN3VsNUxUTDVp?=
 =?utf-8?B?TEExS25RcG5ub3IwZFNVcTdVZHR1Q1JuMTVibDBNUXZtTFlXY1VxQzBhTy9I?=
 =?utf-8?B?UjEweGhlM2FaUmpQSWFuUUc3Q3J1NEg5dDFLeHJBRVNFTUdnWFhvYlNwN1Q5?=
 =?utf-8?B?WjNqZmplWHFXK3BXM0pmOFBIT1I3Qzh6UlRaMlFkVDkxdVNaaTJUQk90N0dh?=
 =?utf-8?Q?DN3FGjVNUsvPi?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?THZwc3RCK1JxY2JGZkNYRG9ndWpUZ1JkRDJkNE5YbHFuR2djWGpVR2JlOHBZ?=
 =?utf-8?B?T084Q1MxSlFTYWs4WENNMEJkb3BvVFAyNm5CQlNrVGVIQ01YQkFkL2tyUkF3?=
 =?utf-8?B?b08xS21yVDFkeHphd052Rm9Ia3VEd0ZtblJIMDRlK1MzRHlQNTk3SjVDRFZw?=
 =?utf-8?B?V25UTzlta0wrN1RlbXRuMDU2QUhoNEVmSW9DbXQ4WUViUWtkWk5NWUdWUUFH?=
 =?utf-8?B?VS90V0NJZE9sV3ZmUFkxUjY4cjlUeVZ6RmFyb2RsQU1rYVBnQ3BjbW5hc1Ns?=
 =?utf-8?B?ejlTcDB0TTRhQ0JVYWR3MURTamZIeGhVazd2Y05ZbjV3V0pnLzFnajIxa3Rz?=
 =?utf-8?B?UEFycUFMUnZieVhxRko2dnRqSzhPN1FsVXpPcTNXc3hLbkFTOGh5cWoxamJz?=
 =?utf-8?B?MFNDM1A5VzVPbSt2aTZTK1p1RkFVdXptb2FwdWw3M0FSUSs4NDczL01LNG1J?=
 =?utf-8?B?aEVOYnhQTVR2d2RJb3JZazRUbi9iaGROYXVCc05obFlrVlZUMmdyODhmRVd0?=
 =?utf-8?B?ZzBlNCs5Qk9DMzNvK2dPSzhPdjBRZzZWckd5SUNUa3NsQVZCa3dlVndKc05U?=
 =?utf-8?B?c2RrdFhNT1lPR0ZXS3JsT2lTallNQ2ZWWDRMeHErSFZWOE1WUWgyazdQTWgv?=
 =?utf-8?B?MlBLenZUMzVVS0NDSFVRWm1jWkZhbHJDcFM0ZTB2VG8rVjJCQ3ZkSmdjOEQv?=
 =?utf-8?B?Rm9KeHR1bTZZWmpMVk9NbE04OWdyblo1a2ZTYXN3c1hTNUlUT2xUN0pxWjlK?=
 =?utf-8?B?bkI5bkh2NHNIZmhPdDNZWi9NTVc4MXhKdVo3ZWhjM1Q3Q3h6VmcyRVJXMlY1?=
 =?utf-8?B?elZoSG1hZlliUFF5amR3QXZacGV3NlBvLzlrUE9qYWtERWFuWWtXMVNQZk9U?=
 =?utf-8?B?SE9YSGprTGlrK0ZjdTJhUFhBYWJ6WmRueVZtOFRaZTViTHNmNHVlTmQ4MURX?=
 =?utf-8?B?NTJnQ25ZVVVldVNWbXNrbFlnUFhnNHhvcVNiZDNOWC9mNmV6WGxMQnJ1WU1z?=
 =?utf-8?B?YmNlMWtNM3RYZENrOWMzS21NTHdiR3dVcmRwVDFTMXcrNXV2SmxoMlpnaFMx?=
 =?utf-8?B?bEJoK1dqSkdJSVdQakFUQ1grOEpUc1lHVjllVTFjMTJHSEc3QXpUalJmTGZE?=
 =?utf-8?B?MWJCUEtqNjgyZzNHUGs3amtUY1d5YXRldmVlclcwMFdKYzRFUDlVUzVWZG4v?=
 =?utf-8?B?K2p3K0VIUlIzT1pKRTUrMnZMaFJXbGZDd1ZLVStjcUsxUVI3blA0amVHOTlR?=
 =?utf-8?B?Y2Q0NWs2WCtSMVJiZUtVMXN0NXREUHlQRWZmcWdzVjVXL2dHMmpSQVJOZHBa?=
 =?utf-8?B?bVZTQTNaQXN0bnBxbTZtOTFZcUdydjRvK0lvaVl0Z21lL1RVb0FWQ25pVWFB?=
 =?utf-8?B?cUtEQ0pqY0o2N1o5R2hHUGlHZW8zSno0YUxNYVpnMmlVSTZyekl5NUlBa1dR?=
 =?utf-8?B?TW5weFg3MVJBQlV0REVJcXVDdkNDZzZ2Vm1nOHZiYTV4V2E2cTRxWE9uMGZD?=
 =?utf-8?B?M1A4L2k1VzhDNnFJM3ZlaHR2R3hsNGlTWGVub1dlQzhUbHVyV1YyQVFSMFI4?=
 =?utf-8?B?OTdjb0xoUXVTajcySWoxN01udFMyMTJPMm9kTXlOZ3V5ckpaY3pXV0QySkZ4?=
 =?utf-8?B?YnQzaUhTOVA4ZndqOWl5ODdKYlRxcjZYWnhPMnBZeFlyclBmVm9tVDVETTdG?=
 =?utf-8?B?SzFXdnkyb1N1ZU4vQmw4bzVLNC9NVGt5VjFXcTFhYzhYcHpSWkpWUVMzdVlj?=
 =?utf-8?B?NUlHMDJCQVVnUmdFVE9iUTBlSmxacVRCblZhUlJBdFFTcWRvR3hVMkUzUzVI?=
 =?utf-8?B?UTZHSFhmQzRTTzhjYi9WbElhd0NEOGNVTG1OUVRJV010QXJDU3FTVzViNDI2?=
 =?utf-8?B?ZlgvU3hZWjV4TFFqSCtIeUhHaTVEMFMrYngzRUZlY28rUlJnZ1p6aDBEZmNS?=
 =?utf-8?B?OTdiazBTd2RtUis3UEZCOThxb1puUE8vVUpoaTFwTVMyVEpDVXB0K2E2U0tU?=
 =?utf-8?B?VFZEUHpGRUJPcU5nNElUSWlOUXNxZlROUkdyNHR6cExvV1oyeEV4Z2szaDZ2?=
 =?utf-8?B?bG9YSTFDWStBWHg3QUhwSDJYa01Ja2toZDVya0grZkR4UFR2UExSR1NRTE9E?=
 =?utf-8?B?NzluWUwvZDNUQUV1ZGhheHhKMzR3WHJRckdiYWJYWFdWaWN2SERCVTJHUXRN?=
 =?utf-8?B?MFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 10b50e92-bc7e-483b-83a2-08dd57198f60
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Feb 2025 10:29:05.1169 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: t806EKoL1k0iOBjcAwqoHWBXvgnm8by9wOfGMVZWTeQ3m1N0oFKuNdE8fjbcncRz1xPkwN3HOIud2OgZgH5jPVBZeQk2W0LdvSDMXZJrcc4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7077
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


On 2/26/2025 8:30 PM, Ville Syrjälä wrote:
> On Mon, Feb 24, 2025 at 11:47:13AM +0530, Ankit Nautiyal wrote:
>> To have Guardband/Pipeline_full reconfigured seamlessly, move the
>> guardband and pipeline_full checks out from the pure !fastset block in
>> intel_pipe_config_compare().
>> Update the intel_set_transcoder_timings_lrr() function to use
>> fixed refresh rate timings for platforms which always use
>> VRR timing generator.
>>
>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 43 ++++++++++++++++----
>>   drivers/gpu/drm/i915/display/intel_vrr.c     | 13 +++++-
>>   drivers/gpu/drm/i915/display/intel_vrr.h     |  2 +
>>   3 files changed, 48 insertions(+), 10 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index 752ed44d8892..d3c12bc3645c 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -2854,6 +2854,9 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>>   	intel_de_write(dev_priv, TRANS_VTOTAL(dev_priv, cpu_transcoder),
>>   		       VACTIVE(crtc_vdisplay - 1) |
>>   		       VTOTAL(crtc_vtotal - 1));
>> +
>> +	intel_vrr_set_fixed_rr_timings(crtc_state);
>> +	intel_vrr_update_guardband(crtc_state, false);
>>   }
>>   
>>   static void intel_set_pipe_src_size(const struct intel_crtc_state *crtc_state)
>> @@ -5127,17 +5130,36 @@ pipe_config_cx0pll_mismatch(struct drm_printer *p, bool fastset,
>>   	intel_cx0pll_dump_hw_state(display, b);
>>   }
>>   
>> -static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_state)
>> +static
>> +bool allow_vrr_guardband_fastset(const struct intel_crtc_state *old_crtc_state,
>> +				 const struct intel_crtc_state *new_crtc_state)
>> +{
>> +	struct intel_display *display = to_intel_display(old_crtc_state);
>> +
>> +	if (!HAS_VRR(display))
>> +		return false;
>> +
>> +	if (DISPLAY_VER(display) >= 13)
>> +		return new_crtc_state->vrr.guardband != old_crtc_state->vrr.guardband;
>> +
>> +	return new_crtc_state->vrr.pipeline_full != old_crtc_state->vrr.pipeline_full;
>> +}
> None of this stuff should be necessary. allow_vblank_delay_fastset()
> only says whether we're allowed the fastset or not. It isn't supposed
> to check if it's necessary or not.
>
>> +
>> +static bool allow_vblank_delay_fastset(const struct intel_crtc_state *old_crtc_state,
>> +				       const struct intel_crtc_state *new_crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(old_crtc_state);
>>   
>>   	/*
>> -	 * Allow fastboot to fix up vblank delay (handled via LRR
>> -	 * codepaths), a bit dodgy as the registers aren't
>> +	 * Allow fastboot to fix up vblank delay, vrr guardband/pipeline_full
>> +	 * (handled via LRR codepaths), a bit dodgy as the registers aren't
>>   	 * double buffered but seems to be working more or less...
>>   	 */
>> -	return HAS_LRR(display) && old_crtc_state->inherited &&
>> -		!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI);
>> +	if (!HAS_LRR(display) || intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DSI))
>> +		return false;
>> +
>> +	return old_crtc_state->inherited ||
>> +	       allow_vrr_guardband_fastset(old_crtc_state, new_crtc_state);
>>   }
>>   
>>   bool
>> @@ -5273,7 +5295,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>   	PIPE_CONF_CHECK_I(name.crtc_hsync_start); \
>>   	PIPE_CONF_CHECK_I(name.crtc_hsync_end); \
>>   	PIPE_CONF_CHECK_I(name.crtc_vdisplay); \
>> -	if (!fastset || !allow_vblank_delay_fastset(current_config)) \
>> +	if (!fastset || !allow_vblank_delay_fastset(current_config, pipe_config)) \
>>   		PIPE_CONF_CHECK_I(name.crtc_vblank_start); \
>>   	PIPE_CONF_CHECK_I(name.crtc_vsync_start); \
>>   	PIPE_CONF_CHECK_I(name.crtc_vsync_end); \
>> @@ -5569,8 +5591,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>   		PIPE_CONF_CHECK_I(vrr.vmin);
>>   		PIPE_CONF_CHECK_I(vrr.vmax);
>>   		PIPE_CONF_CHECK_I(vrr.flipline);
>> -		PIPE_CONF_CHECK_I(vrr.pipeline_full);
>> -		PIPE_CONF_CHECK_I(vrr.guardband);
>>   		PIPE_CONF_CHECK_I(vrr.vsync_start);
>>   		PIPE_CONF_CHECK_I(vrr.vsync_end);
>>   		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
>> @@ -5578,6 +5598,11 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>>   		PIPE_CONF_CHECK_BOOL(cmrr.enable);
>>   	}
>>   
>> +	if (!fastset || !allow_vblank_delay_fastset(current_config, pipe_config)) {
>> +		PIPE_CONF_CHECK_I(vrr.guardband);
>> +		PIPE_CONF_CHECK_I(vrr.pipeline_full);
>> +	}
> I'd like to see one patch that just moves these completely out
> of the !fastset block, and a second patch that adds the fastboot
> exception. That way if we do see any problems from the live
> guardband reprogramming we can just revert it.
I have one doubt.

If we remove guardband/pipeline_full from the !fastset block, the 
VRR-seamless-switch case will start failing.

This is because the test tries a virtual LRR mode, resulting in a change 
in the VRR guardband.

Since its not in fastset block, we will need a full modeset, but the 
test expects a seamless switch.

Regards,

Ankit


>
> Hmm, except you haven't changed the vrr_compute_config() yet at
> this point in the series, so changing this would break both fastset
> and state checker, I think. So we might have to move this patch to be
> later in the series.
>
>> +
>>   #undef PIPE_CONF_CHECK_X
>>   #undef PIPE_CONF_CHECK_I
>>   #undef PIPE_CONF_CHECK_LLI
>> @@ -5875,7 +5900,7 @@ static void intel_crtc_check_fastset(const struct intel_crtc_state *old_crtc_sta
>>   		drm_dbg_kms(&i915->drm, "[CRTC:%d:%s] fastset requirement not met, forcing full modeset\n",
>>   			    crtc->base.base.id, crtc->base.name);
>>   	} else {
>> -		if (allow_vblank_delay_fastset(old_crtc_state))
>> +		if (allow_vblank_delay_fastset(old_crtc_state, new_crtc_state))
>>   			new_crtc_state->update_lrr = true;
>>   		new_crtc_state->uapi.mode_changed = false;
>>   	}
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
>> index 11b7edbdb116..e77f5b483b09 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
>> @@ -284,7 +284,6 @@ int intel_vrr_fixed_rr_flipline(const struct intel_crtc_state *crtc_state)
>>   	return intel_vrr_fixed_rr_vtotal(crtc_state);
>>   }
>>   
>> -static
>>   void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state)
>>   {
>>   	struct intel_display *display = to_intel_display(crtc_state);
>> @@ -677,3 +676,15 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>>   	if (crtc_state->vrr.enable)
>>   		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>>   }
>> +
>> +void intel_vrr_update_guardband(const struct intel_crtc_state *crtc_state, bool needs_modeset)
>> +{
>> +	struct intel_display *display = to_intel_display(crtc_state);
>> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>> +	u32 vrr_ctl = trans_vrr_ctl(crtc_state);
>> +
>> +	if (intel_vrr_always_use_vrr_tg(display) && !needs_modeset)
>> +		vrr_ctl |= VRR_CTL_VRR_ENABLE;
>> +
>> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
>> +}
>> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
>> index 514822577e8a..e4e9cadcdf9e 100644
>> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
>> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
>> @@ -35,5 +35,7 @@ int intel_vrr_vmin_vtotal(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vmin_vblank_start(const struct intel_crtc_state *crtc_state);
>>   int intel_vrr_vblank_delay(const struct intel_crtc_state *crtc_state);
>> +void intel_vrr_update_guardband(const struct intel_crtc_state *crtc_state, bool needs_modeset);
>> +void intel_vrr_set_fixed_rr_timings(const struct intel_crtc_state *crtc_state);
>>   
>>   #endif /* __INTEL_VRR_H__ */
>> -- 
>> 2.45.2
