Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 42AD5AAC4FD
	for <lists+intel-gfx@lfdr.de>; Tue,  6 May 2025 15:02:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A3F210E68A;
	Tue,  6 May 2025 13:02:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N+Uq8On3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6977A10E689;
 Tue,  6 May 2025 13:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1746536544; x=1778072544;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=od3iWNAawJaNPUb248kqcZN2GscD4xSYq2ORQhQwrTk=;
 b=N+Uq8On3jgbb8L36pCbKVxrp31Yj7MMKjVU/baYeIqvIyUhH7mRR6qXk
 qK78NOTKSIIookdKpVaiXBs92t8krcE9Y0kwG2nnZ6BA24PH/sxw9RczY
 eM8rKTY2aRvLMniRb/24nM7MoSjYmbOu3Q2ktl2kFAXZMzUQQIvbWes/0
 9iz/KbPJtHObk2sZlKD8H5HSB3950b9gt3XLAqvVz6h+TLeKrb558WoHy
 rE7A26OhDIj+U8RahXLVdtcGGetAeHEQ+QNrFnkahEqpOtsKsAUjCChoI
 HmBOUos4IVXQDtvwdvII/4RZslABpqjQUXhDg5JuiHqew4iH882uXnzae g==;
X-CSE-ConnectionGUID: eGAWHP/XT4GXN6XjbsQKDg==
X-CSE-MsgGUID: kzAvBhdOSiKm267iVQKp7w==
X-IronPort-AV: E=McAfee;i="6700,10204,11425"; a="47461638"
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="47461638"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:02:23 -0700
X-CSE-ConnectionGUID: 89yKw2RLRIucoyr3TPZq/A==
X-CSE-MsgGUID: SX3Jwz/jRXCTJw66RiKFtA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,266,1739865600"; d="scan'208";a="135516124"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2025 06:02:24 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 6 May 2025 06:02:22 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 6 May 2025 06:02:22 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.175)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 6 May 2025 06:02:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=rF0AqzGmzsSwx4T3cvhN9xk7Pch+B7i34x1zzbUhdhV748o1//k0GGIP8UMaIz57ypgbN9eaFXP0mTScBI7B8p0JjN8VDUGN6p0HRmUlOm+u2wnsqWwpO0fL3YLvBk3GJcy116QBjcDTafSeeXiVQPJLTU2lfMggTvPEKI2rqw7EN86QOeHpMJpE6ywf9foLAgBXZABIFNH95MqnMepkceymhjsUfI7s9n9xYGuDHWkqhWJoxWid8JflriY6gextD2D1JZtxSktsSn6O/XFrikuAE8N6S+BgP3rX9AxtFI5bEE/fKfKuBzvHyRbO1KU8o/dYHNMEfPo+3Ssm6O/jYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tYHc4MAdkeW8Pl9qF9wFknphIIdB3Lp2M7328M93BTE=;
 b=OpNkCsypAtj8fesL2QGdRlh0sbOaFh6h2T0BLgudxiSZHo7uYm4xFHrimReZnalk1D0qx5gsJFY6bN5v+yFVs9CkQj6j682XCPf6v2n/+fMSbvqddSgXsusam4Hq/+MdZEu5fuL2VypihjYXHlzRV0mpJhz637hU8qg1jf/e1rEWgrn3RbuUDo11a/RT8qdSSepNS1wPrvjDrYu5Vw4TZvUr4tRYCKM6A3HxSVkN9BHYkGefqyPhxXhGWusINeuhWmZCiLw4cDGjztL4xN6XetqtFv3UdfB806aFHLsdSslsc5P4iS27Wa1cfLhH3dYXf/4GZGPhr/VAGCo7UXTObw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA1PR11MB8200.namprd11.prod.outlook.com (2603:10b6:208:454::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8699.26; Tue, 6 May
 2025 13:02:17 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%2]) with mapi id 15.20.8699.026; Tue, 6 May 2025
 13:02:16 +0000
Message-ID: <200c83bc-3f51-4ddb-b5b7-18d1a855b8a9@intel.com>
Date: Tue, 6 May 2025 18:32:10 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 08/12] drm/i915/dp_mst: Add support for fractional
 compressed link bpps on MST
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <intel-xe@lists.freedesktop.org>
References: <20250428133135.3396080-1-imre.deak@intel.com>
 <20250428133135.3396080-9-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250428133135.3396080-9-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0098.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:af::8) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA1PR11MB8200:EE_
X-MS-Office365-Filtering-Correlation-Id: 55cf84d1-d997-4818-3f95-08dd8c9e3a23
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dDFwSlhFL21yQUhwSTZwbWU0RGVSY3hrbmZhcWZMZHZTOUFSVCtQNWRJWm5i?=
 =?utf-8?B?UjZMc2ZnSWRFNHlDWnFuTi9NeHRlS1BDM1ZuOEwzTXVxWXdFdU9hNGtpOFNl?=
 =?utf-8?B?NEN3MkdtSVp4eU02Y2Y0b3pxVUdPVzVsK1laUTVNMjJ5RVJQQkZVTllmRG5x?=
 =?utf-8?B?dVRqY0JHVjE3VVo0Umx4OFY4T3RDdEZOYnpTc2htZjJYazBJcHpFYzFuaTZD?=
 =?utf-8?B?TTUrY1cvdklCY3o4NjIrNUE3SFE4cmxFdVcvMFhWYUtiOHQ3WEZjZWsxTVVa?=
 =?utf-8?B?RGpYSmI2Wk1hSEVCa3FnM3NyemlqOXRxSDBpVVdkalljUlY2Ujh5SmFJelNZ?=
 =?utf-8?B?SEFtdFlnR2wyeEt1SFhCQWFlam5MZzgxT015R2thcmd6VURocURRWXRzU1lQ?=
 =?utf-8?B?K3RqMHN3VTFCdHk5ZFVhTTFudmJmL2FoODIzUWdMMDZyck13QVRsU3ErWjU2?=
 =?utf-8?B?aWtSdCtnZzZFNFd0RDkyUm02bEVBNmh3cGdxZmptQzNBWVZzaTlvNGRLcTN3?=
 =?utf-8?B?a0ZpUXBmdTg1SExJcjJLMzJnaWRJbVBHcC9KZ3lleDJNaFlLbEZkeUszQ1hq?=
 =?utf-8?B?Z01kc1R6Q2s2N1B6MldOYmNWeUptbzJpWnFXY2JmYnhzd0Vjcm5IUldET0Jr?=
 =?utf-8?B?cTcrSG9NaDdVZWVFWHZvNWE1N0hRdktGYlhSaVlBTGkyZmlUUTJDTDRGOXVM?=
 =?utf-8?B?Rm1DL3BTZHBhQlFIdlc3dE9IMGloU2ExNkp1M2I2UGdFTUFybG93bU9USmJB?=
 =?utf-8?B?Z051NUpPNkV2dG9BNU9MeVQ1YWZHWjFFc0xadDlacERkRGJzaGRPNlVCbjVw?=
 =?utf-8?B?bUxQblJkeDg2am9nYkNKZUUyWHJTK0FReUtqUjluS1VZT1ZRSUZwVmVLOXFa?=
 =?utf-8?B?L2RGWnlCVEF5QklqQWFzemNJSjU0aU5oVmkzL1pNbjMwSUVmdngwcVdVVEdH?=
 =?utf-8?B?UjlWZDhwTzRQa3JicSsrcGhNYlgxM2JlT0NmTDRNcEZncE9yT29RL2FnWGpE?=
 =?utf-8?B?blpjOXM0TGJSdUphak4xSEdQZ1F3MHl0Y1VadUhsSVlSMzBxZzUxZDhUeFlq?=
 =?utf-8?B?OTdldURuVitFS2ZsbWFwZTI2U0pNdzczV29jWExaS2JNU2M2dmorb3hYdnAv?=
 =?utf-8?B?aHVEc0JGQ2xmRU0xdzFJQk5LZ2FsY0orNGdjUWFJWkwxQnZTTkl2WDE5c2c3?=
 =?utf-8?B?bGw3YkNtZEYrTG5Ed254SHRGRlFMQmhvL1U5bkJzd29iQnJOTXhONkJmM29j?=
 =?utf-8?B?UFd1RCtMRi83UlY1U2JJTzI5YTMvSkFTbmJzY01ldUh0M01PbHl5OUFzeEVp?=
 =?utf-8?B?MS9XS0dsdG1wZEFKZEMxRUNQdnVGSmdCYzBDTk90UEtPNitTS1llZHkwWWtM?=
 =?utf-8?B?RnJ5UGhXT1FKVGphUzdtUHp0bEl3YnJHaDEzdVJ3R0dxT2lJenl2TmxXeU9q?=
 =?utf-8?B?ejRlZFhyTUUzQ2NXM3Z3UXFWZ1lIUzlFdjArRlh2b1cvOXJtSFRZbmo5b1lR?=
 =?utf-8?B?ZWJHN0lackJHRFBTSmF6clJmUVRmL0ZkNE9DY3NjWHRpTlpSUlY2OEYxUytn?=
 =?utf-8?B?SGM2N0tBWFhMZFl6dHBEUTlOR2N6WGJtUEI1QWtzM2g3YlVzdldJci9PMzY2?=
 =?utf-8?B?OHNFaUxEdTVxczJSdzdqQXNDU1FWejB6NzZ1VFJvQ2R3M04rczBaOU9NUm9t?=
 =?utf-8?B?Tm9xSGllS1pHam1CYit4UUcrdHRqV1BtNGgzTG5uWXAvQS9wNzNuU0FGMTM4?=
 =?utf-8?B?dXdBTEdBWDNMQzhOVzVOeUV6ckszcmg1cm16WTI3RlNPME45ZEt4NUxGdlM2?=
 =?utf-8?B?YWNaL0VCR3JyU1lraVZ5LzVySXpVQTRUcUsrbU5IcmRyWDZoUjJydVZwN3cz?=
 =?utf-8?B?Yjd0TitSc1lLQXUrbUQ3QzVDb3VLNU1xVjRRTTdOd1NtWUE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFdMNGN5Tkl4Q1lXUmxOTE9lZVYvL1c3WTZoVWdTbEh6VG1WNlg2aFhlTXN1?=
 =?utf-8?B?MEkxUzYvMWwxaEUwSXI2WHFpdFdiR2pEWlBoRStjNmhPWElTQ0NIOUtLNTR5?=
 =?utf-8?B?YWVBYWZFdWtUTnpsZmVtSmt2Z1c5RGQ5TWNNSW5iSmc2aEJtbzFsKy9HOTA3?=
 =?utf-8?B?SHNBK0tITTh2ZmZsRWs3Q2x2cHM2V005ci82dVI1T3BTZGZuT3A1RzJaV2ZS?=
 =?utf-8?B?SDh5UXFvZXZ3ejdEVExydHFDNzhTTm5PRmplVGN5cTRwdGJwUkVJTzVLME94?=
 =?utf-8?B?R05abnd4TTNkTWxPckUxdjFnclZnQlpMRmd4bG5UTnZFQmFKL1M1eENrRXhK?=
 =?utf-8?B?L0VCYmxxM2U5dHRuVDRPQXdMWStkUHpUMXpnRHp1SEVMV2cyMjVqVUlsVVB4?=
 =?utf-8?B?UmRmd2hIZjMvN0hiaGlRa1RMOEQ0WG5VaWVWay9aT3VJdkdxUGU3V3Jtd1ZL?=
 =?utf-8?B?QmUrM1JGU0JMYW1sNEhWVlk4NGNhdENqOUcyNS9IZWlMdFNtMm1FT2w3L2pR?=
 =?utf-8?B?NXVBd0FjMW8wVWxMd1JoKy9yaGFQcUtTZ2NTeHV1NzlHV3NxVjZlQ0J4Mnhr?=
 =?utf-8?B?MjFQUzV1aGtQSlduYXAyaUhneEtScE93QmhkbkFqZnpMdEQ2aDA3T3JCdUw1?=
 =?utf-8?B?bmRpSnczMjZWTVgrdEZ5SGtOdHkrWEVYYzZKNC9nRURBSkFaeEV4eCtXOGtU?=
 =?utf-8?B?VjdiZ09DcWNmZmp1eC82MWNhREI5ZldkbkxZOE02NUJQd0p2b094N2g4VmRN?=
 =?utf-8?B?YTVsMzhwR1phTjl6YXk0SFZYTlQrTmhMY05vTHB3cVpPK0hSWE5OeU1MUlBi?=
 =?utf-8?B?Tk1ZR3dHME1XZkJYR2p1SlZHaXpheWNZNmtZNW5URWovNm5yMDhGWllUZFUv?=
 =?utf-8?B?VFUzSUtic1dDZXpKNTVLUmh0citJcjFCSjg1YklObHA0bm9UQThDMUNvQlNV?=
 =?utf-8?B?bmc5UE8yUU9NeVZYYWhSNkNBMkhTbFhDMnJZWVM0M1VjdmRVZ1JaOG92d2xz?=
 =?utf-8?B?VC9XRlEyYXN3UXREbk55eEJ5ZEZvVDVkbml0dU1zSWNleHkzbFdodHpwd3NR?=
 =?utf-8?B?V3pYY1BYNDZLd3RjY3JVOGRnTjJ2QytkdDg4N2FRcERSSEFrQUFFWHlwcENX?=
 =?utf-8?B?amV5VXlmT0tuSGcwWitQVlAyMjE5cTlPVmlkNXhXWjEvZCtzRnBaSi9vYXFU?=
 =?utf-8?B?aWZDWnA1UDRrTGlud3FSMGJkT0ZwbVAwMUpXK3drTDBVdTRRb25JV1dmb0dl?=
 =?utf-8?B?V2RjQkRmd2RIN0s3bVpjMmNUdjhJSC9sNnpqbkJsT3ZsbDBkL0c5VTRIR0Js?=
 =?utf-8?B?UVR1bVF3WEtZeitmMGpLK2I0SFMrSW43SEpnTFU5MTlHWG5pYzhjbC9POGN6?=
 =?utf-8?B?Z1JlbEp5TzdDSStHVC9WQXJSS1N1QlFiOGZNRXZUbWVxQVQ0clRlT25RZERj?=
 =?utf-8?B?aStsZ1FjVWNQbUR5bTJ5VXFIRnBhKzRwdm9lME40aFBZYWVZU0h0QmdvNGhC?=
 =?utf-8?B?SUhnakhZSmNsemc3VEI1OEpjWkYrbHYzN1RqYmdPSmg3eEVrbXJMMEs4RDJ2?=
 =?utf-8?B?anY5TFd0TVo4ZzdjS3RleEFKVzRyU1hXQkpjeDR2S1NLZ1ljVElEQmdMRmlo?=
 =?utf-8?B?OHVIV1o3K1lMSGtkTnV2Y21STExVTnhNOTBVUlRGUis3S3BML1IzeEREWXBN?=
 =?utf-8?B?V0NrUXBNNzU3R2VaRWNDZHQraUNFZ1RpQnEzQ0M2anNiZUdHTHZ1SVRaQ3FB?=
 =?utf-8?B?OFFwU3NlbGpucmRQbFpPYWY4enZZVTJoeGswVjB0LzM2MytLb1QvbmM1SUlL?=
 =?utf-8?B?ZVRETUZJQUxrZElMb1NKeStzckVnOU9Ja2VBMk1zY0k0RVVDQlZDdDUyaFY4?=
 =?utf-8?B?czg4MjFGcE9yQVg4Q0RvZ016ZGFtZG9jSE02RGlqaTFvRys1Q3dXTFlYaFRE?=
 =?utf-8?B?T2ducWxLcGNVNC9kM3BJdUx4M3hmc3dYVUhUVXNCM2NMWEl4ZnFPVVRKM2hJ?=
 =?utf-8?B?VE13L3BHNnliZ1AxeFRoRGwrS1dZZTNsOEIxaCsxNXRYYnhEOHJnUzhvOU9Z?=
 =?utf-8?B?Vmk5cGRiaWRvMWxtUzBxbjdMUnFEQjhnVTUyRnZLY3pVYUIzK3NqN3lncTJS?=
 =?utf-8?B?cVp5aVB6MlFpTVk2bUU4T2ZLUVpOZm1GOTFCOGhWUW9jUjJkYmsvMjhwVjFV?=
 =?utf-8?B?OFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55cf84d1-d997-4818-3f95-08dd8c9e3a23
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2025 13:02:16.8013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Nx2qUSO+NyMsC9IkeH0fpvHdDKc/iqKiqk9J0faR7H5wFLvby11F5BtaKTuD2fU0P3BwtrhRaECGBQgLH+o1Q4Ucxt6u4n0rBXx+Jb08Sx4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB8200
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


On 4/28/2025 7:01 PM, Imre Deak wrote:
> Add support for a fractional compressed link bpp on an MST link. Leave
> the actual enabling of fractional bpps to a follow-up change.
>
> While at it add an assert before the bpp loop, that the min and max bpps
> are aligned to the bpp step. This should hold regardless of the non-DSC/DSC
> or MST/UHBR-SST modes.
>
> This keeps the mode validation and DSC->DPT BW specific maximum link
> bpps as rounded-down integer values still, changing those to a
> fractional value is left for later, add here TODO comments for them.
>
> v2:
> - Align the min/max bpp value to the bpp step.
> - Assert that the min/max bpp values are aligned to the bpp step.
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dp.c     |  1 +
>   drivers/gpu/drm/i915/display/intel_dp_mst.c | 32 +++++++++++++++------
>   2 files changed, 24 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 7abc5286f4ccc..0f89a301e4a0d 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -957,6 +957,7 @@ u32 get_max_compressed_bpp_with_joiner(struct intel_display *display,
>   	return max_bpp;
>   }
>   
> +/* TODO: return a bpp_x16 value */
>   u16 intel_dp_dsc_get_max_compressed_bpp(struct intel_display *display,
>   					u32 link_clock, u32 lane_count,
>   					u32 mode_clock, u32 mode_hdisplay,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 23bb9aa554fc6..a1203e5f570cb 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -23,6 +23,9 @@
>    *
>    */
>   
> +#include <linux/log2.h>
> +#include <linux/math.h>
> +
>   #include <drm/drm_atomic.h>
>   #include <drm/drm_atomic_helper.h>
>   #include <drm/drm_edid.h>
> @@ -135,6 +138,7 @@ static bool intel_dp_mst_inc_active_streams(struct intel_dp *intel_dp)
>   	return intel_dp->mst.active_streams++ == 0;
>   }
>   
> +/* TODO: return a bpp_x16 value */
>   static int intel_dp_mst_max_dpt_bpp(const struct intel_crtc_state *crtc_state,
>   				    bool dsc)
>   {
> @@ -335,6 +339,8 @@ int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>   		}
>   	}
>   
> +	drm_WARN_ON(display->drm, min_bpp_x16 % bpp_step_x16 || max_bpp_x16 % bpp_step_x16);
> +
>   	for (bpp_x16 = max_bpp_x16; bpp_x16 >= min_bpp_x16; bpp_x16 -= bpp_step_x16) {
>   		int local_bw_overhead;
>   		int link_bpp_x16;
> @@ -482,7 +488,8 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
>   	int num_bpc;
>   	u8 dsc_bpc[3] = {};
>   	int min_bpp, max_bpp, sink_min_bpp, sink_max_bpp;
> -	int min_compressed_bpp, max_compressed_bpp;
> +	int min_compressed_bpp_x16, max_compressed_bpp_x16;
> +	int bpp_step_x16;
>   
>   	max_bpp = limits->pipe.max_bpp;
>   	min_bpp = limits->pipe.min_bpp;
> @@ -507,21 +514,28 @@ static int mst_stream_dsc_compute_link_config(struct intel_dp *intel_dp,
>   
>   	crtc_state->pipe_bpp = max_bpp;
>   
> -	max_compressed_bpp = fxp_q4_to_int(limits->link.max_bpp_x16);
> -	min_compressed_bpp = fxp_q4_to_int_roundup(limits->link.min_bpp_x16);
> +	min_compressed_bpp_x16 = limits->link.min_bpp_x16;
> +	max_compressed_bpp_x16 = limits->link.max_bpp_x16;
>   
> -	drm_dbg_kms(display->drm, "DSC Sink supported compressed min bpp %d compressed max bpp %d\n",
> -		    min_compressed_bpp, max_compressed_bpp);
> +	drm_dbg_kms(display->drm,
> +		    "DSC Sink supported compressed min bpp " FXP_Q4_FMT " compressed max bpp " FXP_Q4_FMT "\n",
> +		    FXP_Q4_ARGS(min_compressed_bpp_x16), FXP_Q4_ARGS(max_compressed_bpp_x16));
>   
> -	max_compressed_bpp = min(max_compressed_bpp, crtc_state->pipe_bpp - 1);
> +	bpp_step_x16 = fxp_q4_from_int(1);
> +
> +	max_compressed_bpp_x16 = min(max_compressed_bpp_x16, fxp_q4_from_int(crtc_state->pipe_bpp) - bpp_step_x16);
> +
> +	drm_WARN_ON(display->drm, !is_power_of_2(bpp_step_x16));
> +	min_compressed_bpp_x16 = round_up(min_compressed_bpp_x16, bpp_step_x16);
> +	max_compressed_bpp_x16 = round_down(max_compressed_bpp_x16, bpp_step_x16);
>   
>   	crtc_state->lane_count = limits->max_lane_count;
>   	crtc_state->port_clock = limits->max_rate;
>   
>   	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
> -					      fxp_q4_from_int(min_compressed_bpp),
> -					      fxp_q4_from_int(max_compressed_bpp),
> -					      fxp_q4_from_int(1), true);
> +					      min_compressed_bpp_x16,
> +					      max_compressed_bpp_x16,
> +					      bpp_step_x16, true);
>   }
>   
>   static int mode_hblank_period_ns(const struct drm_display_mode *mode)
