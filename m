Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8A89882AC
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Sep 2024 12:39:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D28910E1F7;
	Fri, 27 Sep 2024 10:39:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RcgkgVP9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5E9DB10E1F7;
 Fri, 27 Sep 2024 10:39:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727433584; x=1758969584;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=uwKH6tp1phRRN9oo4zyO9pzzUat3NKKM8FyS5O6+cc4=;
 b=RcgkgVP9Do3/h/uILou0b7mD223qSQM1C5cL/sphczMAy/gBvtJIGns7
 shT45ZvXn/T/5Yk7jh7QheW0YzLUtgWYMdJ08H21Lgavl/zPt3WfvEXte
 0Seo6VcWBw2t94vN1eG9xsdIfDTtF1ETRjDPBse4Ng2KkR5sE1VqKXCug
 nBjwTQhBiRwDwsa1DpONdJNIEJisZN7UrWEBrmRJkpt/t5j11fLvdmZC1
 hw8NrDLZDpPqnsrpJkmvqgaCou4vUen5sJ6unqw7C0y94WxzdDUf51US2
 XqiHFk6cK0Al9/pAMHLEu5w11uGTWhHzuOlNhVm8zsTJO6LhoqH8c+3Y5 g==;
X-CSE-ConnectionGUID: T+8jKCcJSpySZwEHv4M1Lw==
X-CSE-MsgGUID: mx+yzDewTSy0iVcFo/EgGQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11207"; a="26670754"
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="26670754"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2024 03:39:44 -0700
X-CSE-ConnectionGUID: etxlbpX/Q0W5Olq2wC2jOA==
X-CSE-MsgGUID: FA16XKNwS+mEd7Sa6GbMvA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,158,1725346800"; d="scan'208";a="72809940"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Sep 2024 03:39:43 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 27 Sep 2024 03:39:42 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 27 Sep 2024 03:39:42 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.46) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 27 Sep 2024 03:39:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=JqkUZgxBr3DxJa+Xyp2WMCAWSqIzkWiFwXKZ02W0xqZ4bZ/JtM5H5iP51WSdWhTHewcNwvMC1Vc6ItVEGOEfDjUZG8DisITf8vMphDGvIo/6ELNCMctGEQU/zBP+EFn5HHPQhV7UC46gN0nDyUjjCVjEMmrq4BswQ3M4ags3mKUFc+fuKwFZXp69wAzNSL4o9nAdhvl/zp3eHeO2uIA/NACeRb4PmzGczhpq/T46NvxwNpyyNNSMtymrEq0/D6W9FGym6d7M2rq/Qp2bz+agglK7IqD935NC4ES0hdSOr/A0I3rf14fRB6Twh+bSY9avP+N/WXUkx0D96uLMRrPa+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Mw1yFJ0ZCihyCgQihg1SHev4F7nYnp2BcV7OHqVTXow=;
 b=JRwnhlZ4/HWdUzNY+d7D6ZCIldcKX/IdA2rz1+zmKdmpsHkGg0tsJ1nPy/b1gh15vrOsC486X77OBVOGP1qFh7x7MisU08jAfk3j68+t4sBbWdZk4+FWUm65qkksE+ztEO47oItUqJ095jTTdzGNUHSv2bYrO/wYqNZCyEtmaMwG/C2kIxRgTP5F7/YAPbGORW5KcQszNu1bnS8o8cScD5xl1fByj1omC26bqVmRIcWU4RPxypauJYmJJlTp4+0pK4WmimG3rFhkC9uJ+jKtOaKwbXKTNgV2dR1mifsU33OGbONnlF2edhuC6vLCGJKOlcPxfkPPWILsUDd27lpWBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by MN0PR11MB6009.namprd11.prod.outlook.com (2603:10b6:208:370::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8005.22; Fri, 27 Sep
 2024 10:39:35 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8005.020; Fri, 27 Sep 2024
 10:39:35 +0000
Message-ID: <3d689407-5549-47cd-b61a-70fb2189232c@intel.com>
Date: Fri, 27 Sep 2024 16:09:29 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/17] drm/i915/dp: Modify compressed bpp limitations for
 ultrajoiner
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>, <suraj.kandpal@intel.com>,
 <ville.syrjala@linux.intel.com>
References: <20240927083831.3913645-1-ankit.k.nautiyal@intel.com>
 <20240927083831.3913645-14-ankit.k.nautiyal@intel.com>
Content-Language: en-US
In-Reply-To: <20240927083831.3913645-14-ankit.k.nautiyal@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1P287CA0002.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::22) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|MN0PR11MB6009:EE_
X-MS-Office365-Filtering-Correlation-Id: eb8888f3-ce01-488f-9195-08dcdee0addf
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?aC90a0FOcEJTUDI0enVWNU11T3BUTk9aM3lxNldtTktiWlczbEVZd0RSU1Vy?=
 =?utf-8?B?ZGUyeTFzOW1aUlBaWlcwOFUrTk41aFkrUGh3QXBsVGFoMnB1U1RxMHhJTnZ3?=
 =?utf-8?B?TGNCZW4rYUNYTy9YNnNSTWdDWk1LOGR2NDd0aENBbllHZnh3OHVEMDRaRG1L?=
 =?utf-8?B?Ri9RRko3UlA3MlBLYURjaUFYNjBPdnhXdndIRnpVdklzQm9nSUhpMTZkZVB6?=
 =?utf-8?B?Ty83dENOMDB4SjVYcElDQjQ5ZFBGV0E3RHBiNFNNQmdqTTlrVWJjYUkzUnpK?=
 =?utf-8?B?UXQ2bXByY2tpUlI2TVJ0RTV4S3NjSUtSNGlZS3pKZis3Z0dtWnUxUCtzcW55?=
 =?utf-8?B?THlGVWM2MEs2Y1FhLzRxZmErSXdBRGwxc0JYYm5rbDFGUGJFQWJValg5Ly91?=
 =?utf-8?B?QWpUcWtwUVV3RDRxTUVKdnA3ZmMrQllJVUUxclV5RzRWVE1CN01udlE1OVR1?=
 =?utf-8?B?Q09EczcxVzN0VG16cUVKdFNoczIyUHM4NXk2UWFFNEYwTlNXOGdhUGdtVXox?=
 =?utf-8?B?di9rZGpnL2k2ZzRTbGFJYnR6ZWdKcytQY2ZvaUJpMmNldHZKVzkrOFM1L2w4?=
 =?utf-8?B?RHRhNEtwUEJPaHJUV0M5MlRhY0M0NkpOZ3daemNoaXk2c2NxRWwrZmxNOGRR?=
 =?utf-8?B?SGFsSlpNZlV4QWg5c1FteW4yZk1CTEMwMTdNRUcreXZTYlRudUwxUTVvT080?=
 =?utf-8?B?UkVWTE9ST29iUytrZUJuZ25ydjEwSFdQcGpRekNWQ1BpdlVSTURkcmlQN2g2?=
 =?utf-8?B?NFlQWnJQQkFldVk3aDZZYVdCR1hFdExlY012T0VwSU1ZeXdmYk1ORkVIMS9Y?=
 =?utf-8?B?ZlFZWG51MG1naE0rVlh5U00zZm5jZWdDczdKVjJuMzBiSlFVMmc0QmhQUDFm?=
 =?utf-8?B?TWVFWmZvMW5NQklVOVkyRzY4Q3E3K3ZnSzRrM2JtRGFWTjJnR2llNnVuK0dQ?=
 =?utf-8?B?MGlsNFUyYUtEOUxGQnlZNXR5ZWhZMkxRRG0vSERYR3BpV25adEwvWXAveWNC?=
 =?utf-8?B?RmwzL0dxZkxVUk9UYjdQQTRQd1hsSEh2NU9WVnFNVmpZcEdhNEpJQzl4ME5V?=
 =?utf-8?B?TkFLQ0Voc0djTGNyc1hacXhFN2pGcmZzVnRuTnJMY1lqUElvdGVnQVdFeHN3?=
 =?utf-8?B?WVJjdVg2ZnV0dmhTanQwbC8rVXA3QjZNZU1oUnppOHNxOE5MQ3IyMEppUWtU?=
 =?utf-8?B?WnBnMkxGbm11VytxQldwcGlrTWZsSVh5c21xQ1hjSTRHSzNMdm00QmxWVzhz?=
 =?utf-8?B?L3h4NFBvL1RlVS9UdndSMUk0ZHVHNW5IUElNRzNNYmg4dGRrb2ErUTJjdlk4?=
 =?utf-8?B?TitJVUVEb21Fd25RdktJRDd0TDUwT3BndzZRbFUvWXpJQWNhTDZoUHVjcVRi?=
 =?utf-8?B?Vy9lWnAwc1QzYU5ZTTNoTlI1Qm8rTlg4RHM5RVhENmVUWVRGZUEva3lxRzE4?=
 =?utf-8?B?LzNReE1KV3AvK1JEV2JEMjRxbDFRTk1pL0gwdXNWUkEwZy9FTUkvNjJ4djhL?=
 =?utf-8?B?RHZwTWM1QnFIRFV6cXB5bGt2OTdhdGZLUEFTUlNWVTRvaXN4ZzhlampjMHdE?=
 =?utf-8?B?bXJ5SG9RZ2FiWFVMMG8waVVoNXBZM1pmNnBXcURUK3lwUEJuVlFsVVZrUlJ6?=
 =?utf-8?B?YXFLdXhrUVovditpODh4ZDNKM3Y5KzNZdWFZanE0c1pySlQyUnZCWlNGaEdE?=
 =?utf-8?B?WGJtVmRld3Vza2hyRzExRksrcEZCV0dxM2NaTnc5c2wrTmZneCtodW5MVXBS?=
 =?utf-8?B?aGlNZVRxY0I5RHBQMTh6YlY3SWNOUm84QS9mcUhvS0grSHBFbWkwakRlemk2?=
 =?utf-8?B?UDRueGVRdG04bEp3TFhRdz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?VnVSL1V1dlh3R3FOc2Viakl6b1hGbm9tWXZXaWQrR3RzcENzcGhjZXJaUE4w?=
 =?utf-8?B?dGpQZkxDTnN1aFZPRjYxYW9QNm5yK3l3dEYrT3NaZW10RlFDNFk2c2toSWo3?=
 =?utf-8?B?dDkxalNjREtmWVV4Y3BSZWFZZTdFNmw1NXJ6eTMxM2VOTUovTlNJemJySmhv?=
 =?utf-8?B?cGlZdFdOai81UEdad3NKU1JFZHlUa01MVjhoRTVSS3RUaG9ELzF3dG9HTUhy?=
 =?utf-8?B?cHFoWjNCWjVuSERtQTRtL2ZzcHA1d3pidGZDODFnT3dVU2VGYnhMOTllNTNC?=
 =?utf-8?B?T2VmQUtEbklMS0tGdGI0N09xZERMZGRkYko2UW1GYkxrV2Zvay9SWU84QkRr?=
 =?utf-8?B?NnM5QU5IcXo4SDNWYVhYNzFGSUdJdHhGc25IaXdaQ20xaTAvb2ZjS3ZJNzZw?=
 =?utf-8?B?S3hRRlZ1dTY1Vm9vT2JwdktuKzZnNi9Ic2RsdldMTk83YitEREhQTFg2MUox?=
 =?utf-8?B?UHJnSHR6eHYrTWRiQitmVkUvbDdWZkRMSXp5b1M4TUJYR1gzZ2pORkpYZEhw?=
 =?utf-8?B?bW5RWjEvWU9vZjFMOGpENXVzMzgrR29pRHc1UFlPVklHVzJTcWc1aWtkWFpM?=
 =?utf-8?B?aElxcVFiMmJBY0QvR2k3THhnQS82Y0lXM204c3FZaWVBZDg2cmFiZW0ySXdV?=
 =?utf-8?B?WHFWNVJBbVczZXBCK3BRdmROdlV4YW1abkF5NnFocGdKT2tQVEFySk13WUh2?=
 =?utf-8?B?SDUzYnAxL1R6Z3IydkdNOC9hSVBCUnU4NkV0TGROelBLaWtOM3dTdTh1YzVi?=
 =?utf-8?B?KzlZejE2cEdqTGhLdmJxQzdhdXJ2ZWxxVkZ1TjczT215d1M4elgyVUdCNTNJ?=
 =?utf-8?B?MWFoV3ZMSEZ1K3FRcDY0MlFnbngveklTZ3llaWhUYnpNeXdzZWs0dkdERXd0?=
 =?utf-8?B?aERjTHh5dnBVOHppM1FSemNQWUVSTno3MUVXV3p3bzdZeW81Zml4cHJHeWtj?=
 =?utf-8?B?NHZwZWxFR1NiV2ZsRUtneVRTd0x1ay9SMkZZcldjemFXRUNIUjFUUXJ2MVU5?=
 =?utf-8?B?Y2djaG81bEFySGc4M0h2VHgxYzB6K3JmckxRS05FYVB3SWdhemZkRGNWZjlr?=
 =?utf-8?B?SkcrRW80U25Ldk5oRFg0YitnYmZGcStBOHNpQjhCRU40QUdqcFlrZ0F5RktR?=
 =?utf-8?B?d1VGL1dNZ0VIVnF3YnVwb2xaU0IzbkZBU0tTOTVkY1d2amtFS0lUZTBsOVU2?=
 =?utf-8?B?cW1ZNStlZmZNU2lML3hxSHpLZnRRYTVCSTNqWkV0eGlvQWkyTEsrMnFKSlI2?=
 =?utf-8?B?R2N5SWxFdm9WWE1sRkZ6SmhjNWc1R3JWL0h2TjJwZHFucEpzSVRJZjVjYjIz?=
 =?utf-8?B?TVBndWNyOHJmeXJBTDNQazJSc2cySVl0QkJGWGxvb0tUTzJZWVNHUFBmbjVk?=
 =?utf-8?B?dk5wYk1RYlJYcUl6Q1d0K0JNQ3lhUDRHLzlVc2NYck00QVVKekZmS05ETXI2?=
 =?utf-8?B?dDRsVWlTVkF0d3ZqZEo3VTFQSmZMcUpZNHNjak15MkNiY25EYXpGUmNGTFp2?=
 =?utf-8?B?d1p1aFQ1QkJJZytOZS9yRmxhTlVOZTcrcXRUc2dxSDJRQTRqY0VVQytXYWVQ?=
 =?utf-8?B?VWd0TTBuSVoyOVRiamY3em5kSllrUjlMS1krTUJJaU9CaTRDb3pQcm5taWsz?=
 =?utf-8?B?MllZUUpnN2E5TnBsWlZwclBTS0VRZjEzUUlkZE04bnZzYVBTTmdyQ213RUJC?=
 =?utf-8?B?WFNXLzZOWU1ZRExtU1hxdFhZbDVlaU9KVWV5T2dNNjk2d0QxeTZkd2ZSY3FT?=
 =?utf-8?B?YmtQWXduY2hZQXdCRWFsb3FLZUdUaTZISjF4NmxzM21MWjZDM3BQSHY2emdS?=
 =?utf-8?B?aVUxb3p0dkQvTHJ2Z2J3Rm9ZUEZmVDc2T1lSUkZXV0ZPUC9xQmpJYXhpMVMz?=
 =?utf-8?B?YUU0UDlXVThqUmdOQmRzNEM2Yy8wTE1mTlJKTGExZFZTbDRrZVdTdkFrWUpm?=
 =?utf-8?B?eEZabUlURUZtMjVYaStiN3Fra1l2R3BQYW5kMlpxcytNTkpQL0dTaDZFUDJi?=
 =?utf-8?B?eW93YTFEVHMzcGtOd3BjZUk5QzZwVmUvakdRMVdFZlBGR2F5bEY2cjBsWE10?=
 =?utf-8?B?UFl0dExxQlp2SCtjY0ZQREJDeVlxd3lLbjRlVTd0bzJTSVpBMDZxY09tSWsz?=
 =?utf-8?B?dllCNjJnTUt0b2ZXU1NMZ2oyR3dROTh5T0ZmUXN3NzVNMldQK3N6NDJBSXI5?=
 =?utf-8?B?blE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: eb8888f3-ce01-488f-9195-08dcdee0addf
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2024 10:39:35.4536 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wkWMKI5iJwJaYdzPLab5GSLJQZc6K8mJ1NzyIhdJZrf1ADSYfs2ap6VlnATkiWDXsSuZnjSXjM6V4MU6HdrTy4itG7Mxg5W9nBwuca5FThY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6009
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


On 9/27/2024 2:08 PM, Ankit Nautiyal wrote:
> Add compressed bpp limitations for ultrajoiner.
>
> v2: Fix the case for 1 pipe. (Ankit)
> v3: Refactor existing helper separately and add only ultrajoiner
> limitation. (Ville)
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index e7fe100ef8db..3d4d8e58380a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -896,6 +896,11 @@ static u32 small_joiner_ram_max_bpp(struct intel_display *display, u32 mode_hdis
>   	return max_bpp;
>   }
>   
> +static u32 ultrajoiner_ram_max_bpp(struct intel_display *display, u32 mode_hdisplay)
> +{
> +	return (4 * 72 * 512) / mode_hdisplay;
> +}
> +

Just realized, we dont need display in the function.

Also missed to add separate function for ultrajoiner_ram_bits as:

static int ultrajoiner_ram_bits(void)
{
         return 4 * 72 * 512;
}

static u32 ultrajoiner_ram_max_bpp(u32 mode_hdisplay)
{
         return ultrajoiner_ram_bits / mode_hdisplay;
}


Regards,

Ankit

>   static
>   u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
>   				       u32 mode_clock, u32 mode_hdisplay,
> @@ -907,6 +912,9 @@ u32 get_max_compressed_bpp_with_joiner(struct drm_i915_private *i915,
>   	max_bpp = small_joiner_ram_max_bpp(display, mode_hdisplay, num_joined_pipes);
>   	max_bpp = min(max_bpp, bigjoiner_bw_max_bpp(display, mode_clock, num_joined_pipes));
>   
> +	if (num_joined_pipes == 4)
> +		max_bpp = min(max_bpp, ultrajoiner_ram_max_bpp(display, mode_hdisplay));
> +
>   	return max_bpp;
>   }
>   
