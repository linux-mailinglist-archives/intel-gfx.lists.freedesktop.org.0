Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCCBCEE0CD
	for <lists+intel-gfx@lfdr.de>; Fri, 02 Jan 2026 10:22:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9469D10E0DC;
	Fri,  2 Jan 2026 09:22:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SCsNpS9M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E3CB010E0D7;
 Fri,  2 Jan 2026 09:22:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767345734; x=1798881734;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=NSNI3W+TSo9VPfpCDeTsH6cfmIWE8DczC0oTOVbXwOs=;
 b=SCsNpS9M6fT90l2My+nEdus5dS48AZdEa6lRV0P5+i7VhgjDmfWMJpvV
 agnDgwi9WPisT8yi7ELq1XRi3aBYONX9FOvNzG8G3cdo8GFWoRIq59JBp
 p8rhDw4/k6cypq6lCH6clUq8WM/P1ONk55GuaCIbibb51Yxq3yMAniAcy
 ThhGWZtQoOvLGJ0oMOQDZtmMUSCPpZzjtW9DAJoZyrVhNqUrSYui4mz70
 oYj5fVWPIjUAxOOT/7zcZRcyo24ygD49zrx5Yt4NJVt9yeDE/ALV9Uf4n
 f6ezZWSdGnYzWZi5WZMrr9AxMzTsOemNmfqd0fBjnPgNqqkvw4y5iuFNO g==;
X-CSE-ConnectionGUID: ctuOT+AwR9WGMpPzBvTKPQ==
X-CSE-MsgGUID: aThp0w/NSNK6/m332s3qRA==
X-IronPort-AV: E=McAfee;i="6800,10657,11658"; a="68885615"
X-IronPort-AV: E=Sophos;i="6.21,196,1763452800"; d="scan'208";a="68885615"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2026 01:22:03 -0800
X-CSE-ConnectionGUID: tCaZtRgUQ1qXEoSyo7bwzQ==
X-CSE-MsgGUID: iqikUKMjQvWk/b9fub5GxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,196,1763452800"; d="scan'208";a="201670699"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2026 01:22:01 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 2 Jan 2026 01:22:00 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 2 Jan 2026 01:22:00 -0800
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.15) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 2 Jan 2026 01:22:00 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jTNbklbwbqZyeSxKd7LN+yyDbW6TPoqYXWxykGRkYA5f2W3I/tYWNvJUb9c2kwDbY4pQOttb52RHDptbjWcFXDCAb7SFEOetnbYjUiFBSqBtghfc951sRecrcrbrkJ0ElLcINkTvtu1gZ4xcx5WXHwCMStabSBVUsvwEF7B1KN/HS7W3ugmZcb3CrDpczXnSjbUm/vDBdef4VdlWtAgiFIvWaAr4IsESs8Xp2acE9FP9fbc/WyqOzBGE5AX4x5hR6qUAjS/TkJxwMcyUl5OL8o1oUwgVXU4r0O4X1hT1rRezpA2qBh/JRhcvPYnVW7LAItuDqVQVxSXUS05kCC968A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=2/8FBQALmt/QRma3A+2WgsyyKsrHp0KFMhr84RWb4SA=;
 b=IhXeMaV4VPx9BncHZ/7wE1K9Ort8rSYzrRPOMngpQcWbka/mdTr8chVlr5toBWDgWhpIeLfdgLIA+N7A4UFMRm6VGFG57aijbeZgzHJ8hJ1YmeXiAukhnkWYDBCN2gOnFa8zpvhSB7lhVAkr2awf3exP2I+bdlDrxjdDePnzaDnpilFdOoGj/wkfTlqVxYADVRPFSNn7DN8bOHpiy9Y9seWjeMFZg94+Y7r4oG7zJnBnfZsfleuPL8bbVGSfySFxSFtL8L0bnoOVNsYxUrkAtx/EjI8Nmq7aTscz6k9f/V3j2QvIH4fqdwMVZVuIJ1fVQBInrJmOD4Uaxcuf1IoqWg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by CY5PR11MB6236.namprd11.prod.outlook.com (2603:10b6:930:23::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9478.4; Fri, 2 Jan
 2026 09:21:54 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9478.004; Fri, 2 Jan 2026
 09:21:54 +0000
Message-ID: <06b7096b-f4b6-445c-91f5-8d037a0f6840@intel.com>
Date: Fri, 2 Jan 2026 14:51:47 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: remove accidentally added empty file
To: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20251231103232.627666-1-jani.nikula@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251231103232.627666-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0165.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:1cf::15) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|CY5PR11MB6236:EE_
X-MS-Office365-Filtering-Correlation-Id: 00c8754b-9fc7-4219-b0cf-08de49e05e33
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Q1hVR0xvb2VmcVVXeWNkbnJHcHo5WFdqVXE0bm92bC9CK1pmV3I4a3BwamdX?=
 =?utf-8?B?MmhqNjM3VjVaclM1bEZwaTdEeWRiZDh1ZVZicnBJWDF6bHRvclRPYWJBS0xM?=
 =?utf-8?B?clhRSmZrQVkrcU5Ic0M0OVUyQVRyWkJ0TTJNb1k4TkhQa2twblRPbXNBdzk4?=
 =?utf-8?B?L3RoYUcxaGgwejF5SGhDWmw5Vlg0elA3d3BHbU82RXpkQUZoSzFxTC9SRWZC?=
 =?utf-8?B?dkFLQktUTm1TSmVmd1FYY1ROVlEzaHA0Nnp1LzNzQTBYOVRDZVd4cDlIVStl?=
 =?utf-8?B?dFFTajFicGw3ajYzUHlvdUhXYTFxUnlJd3dHRmV2Ni9OcHduUmhiQkN2R1NX?=
 =?utf-8?B?eUY3TnBBc05INjBYeWNYN3N2TkdlQUl4amJqWStjUGFYWU5XYTFlK0xLZFdh?=
 =?utf-8?B?SkFtNjJTbWZGTTRscTJnU0NTemQrWXoxdUtycXlwaUlGNG9ZamZsQUVhZ1hp?=
 =?utf-8?B?SWljemM3TTZsZWtJd2IwcTZaa0FDQW9KWXZRTEdWWFZUYVNEdDNWOXlnbkVE?=
 =?utf-8?B?aGNPUVNYVTQzd2JVS0MvVDlEdmJYZDhzZDZyNStCMXNoVytGbHFJRHRiK1BR?=
 =?utf-8?B?VklBSWV4SUJyd2xlYU5ucytXZ1BFTm1LWmJGUDVQMjZGVEVSdFZMOUsxUHhz?=
 =?utf-8?B?RGlpZ2RFOHM0UUU0Mm5TK0JmbmVPTTNRaHRGVDdCU293WkhTenJGd1FRMDRo?=
 =?utf-8?B?SDc4V0djLzIzNEpPOCtINTRiWGtlNWttZU9PbDRDTDc4cFhTNUJFVlBKR1pL?=
 =?utf-8?B?ZjRPRkV3N0x6cktWRmdkaGNKSFVxdlNqN0tHVmpjanRwODJ6dVd1dmkwTHdN?=
 =?utf-8?B?TnoxZmtseU1TcXVyS29pQTBJa2lNZytoSm9Eems5MlNjV3JtNWh0SHBXOUta?=
 =?utf-8?B?ci85cE9TeXBVc2V5aGZhL2FBNE81Sk5KaENRaDBWNHg4aDVuamJtS3BsTk1p?=
 =?utf-8?B?aW9EUlZQbkhxQkxLekJ1Y3JYZkk0dzJzZVQ4cnBXUEZJeG5XNVZ1ZmowNXVX?=
 =?utf-8?B?VUxrMGdpSUNqZkh2eVQ3dG05elhaeVFiQTI4UjZsdWZiMG4zMlJOWjZVS1FE?=
 =?utf-8?B?OCtIV3E4MEh2cjNSUzZGb0RRZm1IaGc0NmFSWkg0TGVzc0FkYjJYUC92Z0E1?=
 =?utf-8?B?VnpvNUpWU0c5TDl3WGpxQVNtOTRMZDl2dWlOVjZBMy9KQUs5UXduczcyTGc5?=
 =?utf-8?B?SjdxY3oyYWtYZ1BPREVwSG9IZmdEeVlHZjNmanFWNGJZZmc4L014dGpQNEhT?=
 =?utf-8?B?RXdmU1M2K0hPRXJEZ3JCdnJrRmExOC9YRit1T1FsU1dqcXFWNkRvU2V0YlZm?=
 =?utf-8?B?WVBKUVN4akl6VTlDd3ZVTDc0UWlwS2t2MFd4VEljS1FaTUhjSUtCZnJ5T3Zw?=
 =?utf-8?B?R3NzOXNGNWdiTnA1OWZkQ2ZWNUVMK3U3TUowazJGUkpCbVF5SFZZUW1mdXNG?=
 =?utf-8?B?dURpUFp3VXpWYWdSbHpiam52cWV2WDZBcHhmQ0lLRC9kUHB6bndFM2pWbU1Q?=
 =?utf-8?B?cHR2aUtvd1VxelNzbFk4MzdiSllMZ0g1SnlGWmhSQlZPRWN1OXRKWTFvTGJy?=
 =?utf-8?B?SEJiaW9yQ0xIUmFIeGJNNHhPYmxJZkxvZ005cTZFMExlTWYwQkx3UUQwV0NT?=
 =?utf-8?B?YmVDYzVlUlc4d21uR2hvYThsVmdQNS82SzFEMWdEd3U1TmZqV0Q3aW5adG9O?=
 =?utf-8?B?MG9Za3dUTitnWkcvRnZNMnhNWUt4V29oak9ubzE1enhlb0dVcHVscng3dEhw?=
 =?utf-8?B?UXJzL3VadUdUTytMbytJYnZoSXVKUjBPcW5FRjBnN3dqaUppbWZuY3NhaUZk?=
 =?utf-8?B?YnhYVU9oTW9SSzNxQ3cyN2dIeGhqQmJuWXJ2TFFkNXVSaFdzU09QVTJtYlNW?=
 =?utf-8?B?YjlVZ3REUkR2QWdlTzJiSy9meTVLdFUyQTY4WHNTSzNVSERNb3FnbmZUMG02?=
 =?utf-8?Q?HS4Skavrggg1I/npRjzfCxWkk6FgyDe2?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SGZlQmkvRTUxU1NhN0JRRmx0ZDlNQnJiejZHa2RZYVhMZTlPL3pRS215MjF2?=
 =?utf-8?B?UnhkMUZhSEJuWm5NZGVVekRHVGZSQ09XT0kzdTdzRVZ1RXVUMDNoMkc4VEFh?=
 =?utf-8?B?dThiSUtoUkRBV2Y3WG9aRnNRYk1UOWFBaldjTi9LcncvSThZbk1lZlkyekpa?=
 =?utf-8?B?L1MwcUFrTk82Tm1IbTdDOWpLNVA1NENYemR0b2k0Ym5GaWJIc2EzK0ZxUlAv?=
 =?utf-8?B?RmlPK1E2UGovZGtLNUNLSHB4bU51eWN6KzFiOEgvM0RVNHVTY2RDTzQ4dStP?=
 =?utf-8?B?eTZaTno3WEUwazU5TmtOUTBWTzZMWG9zY1VXbnQzSXh6d09YeVZIMm12YVNG?=
 =?utf-8?B?YnZsbUxRUi9BSE5OL1JpM09GTEtmMkdjTk41bHA5NTZmanZkZGRyd3BFTkNQ?=
 =?utf-8?B?SUsvblNIQXJMeTRlTTlSdU1udndYeHdMTjkwZG9yQXE5ZE5CalJwMTRTdXhY?=
 =?utf-8?B?eGtVeFFMWWdGMnRGWWt5MCswcjMwWmlHUGxDTjZQMWRLcEZxbFdmcmROc3h2?=
 =?utf-8?B?UjdFVzZCbllxOHJ1NkM5dHhKQnJhdkRJT09YLy9UcnFVMVo4NU1VRVFraVlU?=
 =?utf-8?B?dlFJVFRsYzl3emV6b1c1TnhDYWxOQkJ0NStQdTluampvTE8zWWFPVzBPeDFx?=
 =?utf-8?B?ZVEzc0FhZlVLbis3aUVYb2VyR3dmc1U3cm8zNEo2MWh1eFpEQVNPNWw3YU5a?=
 =?utf-8?B?cndCQ3haNmQrSGVpMHlDdDdpVGRoMkVvTTdPUHZGWDhwaWIrWndSK29FZmFt?=
 =?utf-8?B?RjVkVmlKM29ZWk01Wk1oVHFPRklWWmRoNmdoU2ZveXQ4dVJCRXUrN0pSWEJk?=
 =?utf-8?B?aS9wK3JNaWI4My9ubUFvOUExMmF3eEl4VkJQeGIzazV1YXhSUDBMbmZWSXFu?=
 =?utf-8?B?YmNFWjhTTjhDZkI2OWRERWFRMHltMzBHdkRzRGFhaU96eElHM0RoUW0rUVpK?=
 =?utf-8?B?ckhJckU4eU11UWxsK2l1SDFaU05Za2xNczNzemlYS01scVhiU1lIZVZLZkVJ?=
 =?utf-8?B?azB2NW9sdGpWZnRBcVNibytDUzcxNzUxVnE1NGdiWjFvRUlaSlBkdkhwc0hH?=
 =?utf-8?B?NXpJaFdSakUrb3o2QUFod1dvVThsUEVWZkZDUGNjVVdLOHlEN0FwclVpVlFO?=
 =?utf-8?B?MFkyemhOUUFLUmhBQ0cxQkM4SXFlVW51VFBQSUNUZUJCcklSQVQrbjl2QnJ5?=
 =?utf-8?B?dEp5Vjh3MUYxUDBsZE5UMkk5bDErdnZ4b0N0RER0dTVsSlA1ZFJQUUx5Tm8y?=
 =?utf-8?B?dGQ0Rjd5Q1gzWnlsTCtlZXo3S1VFaTJtR2NpM1NMSFRCVDlsaUpla1dQS3Zx?=
 =?utf-8?B?a21tWjhqWWdOdW90bDZ5MllJUmo1OUNJbFNPd1QwdUVtQW1IY0dsYUpxSDNw?=
 =?utf-8?B?a0tGdUZYUEpxSDNDdHY1RjBaR0gwL1l2cXJPY0pIckdVekNPalZnbTQxVmV0?=
 =?utf-8?B?d3NJVEt4UkEzcE45eFRNbHByaEplNDhBV0VUd203emNHSVRCVWRvaWtHQWIy?=
 =?utf-8?B?ZEZpclBaTHVNNCtwSi95SkdNRjM2WWZHdzllSmFtYmREWFUxM3ZKTFg3ZXRV?=
 =?utf-8?B?RFB2MGpNeHEwVEVQUDJxOStBL0EwL1FJcGIyaXFTYUJTMEdWQU1laXZVcm9Q?=
 =?utf-8?B?U2hjK2d2VGhlTVJ6S0hWblQwek9sMFU2aEVDTEMyLzc3S1FjemJ4SmhmMGRV?=
 =?utf-8?B?SVRPMCs0MmVFWjZvNU9ITVJvYVYrZDAyeTh2c3dUay96RU04ZkZCTFhxL2F6?=
 =?utf-8?B?YlM0NCtyVTRvS0RlVU9jSE9TZElIS1hUS3RlSGxNcXVmU2lhWGtaeW92L1ZW?=
 =?utf-8?B?MEdUUmo1THdCU2xyTWx5UEttYWNEZVJkZjNFM2FvWFA1bGhIRFIrNktlQ3lF?=
 =?utf-8?B?dlUxUWNweGRJTkZ4cXI2V0Vxb1BDblJXUjhsdmQvbU5BaEJkUUNmTFZ1N1dB?=
 =?utf-8?B?b1kraURhOFNadHViTzlLTmRTWmVZLzB2bE1iK3EzRlczV1YrbkZYUkp3bXBT?=
 =?utf-8?B?VmU4WW5FVEpDY04wZ3FGSUFYK05uRytqTEFHY2xNMDRUUWJnN3ptOGExc1hU?=
 =?utf-8?B?RERrWVdpcUtiTFlVVVNocTJvUHFWM3dtNE1rNS8yWmV3M3p3dGVWbHdyaVhK?=
 =?utf-8?B?ZktoWVhEbVgxbTM5WHpJcDkwZExpYSsyamhNNG5Ja2FiYXEyUVZQOTlLeXMv?=
 =?utf-8?B?a3ZMSE1ONjB5dlBWWnNsNnVPRndoYmVLQkxYQkFxM2FSck9ZTE96QXYwWWZ2?=
 =?utf-8?B?aGtXbng1MjYwM0MrRFlQU3lCbzJaZDZaQUpkTUJob0Z1MHluM2FjUXFuZFhC?=
 =?utf-8?B?Q2lqWFM3clZQMTRJKzZCVFYwSlRWR05ZQjk4eVhJMENZN1cwZllQT3Rva3hx?=
 =?utf-8?Q?sz+BTl1fJJicpN2E=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 00c8754b-9fc7-4219-b0cf-08de49e05e33
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Jan 2026 09:21:53.9153 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: aOWE8+pdzmeIzIDrR88tSi3KdWGyyON55Qs0bgndZ49sa8VQDtsUodUYqXaJVsWqaA0dyB2WiusAGkDJEnZYG62nztthRn6w/+xSlG3xCc4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6236
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


On 12/31/2025 4:02 PM, Jani Nikula wrote:
> intel_display_limits.c was never supposed to be added. Remove it.
>
> Fixes: f3255cf4490e ("drm/i915/display: Add APIs to be used by gvt to get the register offsets")
> Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_display_limits.c | 0
>   1 file changed, 0 insertions(+), 0 deletions(-)
>   delete mode 100644 drivers/gpu/drm/i915/display/intel_display_limits.c
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display_limits.c b/drivers/gpu/drm/i915/display/intel_display_limits.c
> deleted file mode 100644
> index e69de29bb2d1..000000000000
