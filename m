Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FE938A79EA
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Apr 2024 02:37:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 772CB10EA07;
	Wed, 17 Apr 2024 00:37:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HxcdDFtd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F415210EA07
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Apr 2024 00:37:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713314252; x=1744850252;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=D2g4JahL5Y8qshSLGAxY8p1aR3cYGABM1jAgD5qYGXc=;
 b=HxcdDFtd9u0qoOQ1xE6lMM2LrQLxPxiCZYefS2yUGwwwQQCXmVqQrs9i
 zbreBYEJpFWCflmbNgTBBJg9PWg4eO8Fi8L62QYgiB2gC+/QkfCuBVFXG
 sjdczcmiOQX9IHzj1UuyYvubd11wSXyCOSFdEdQx3bMYOx+4MlucNyPK5
 BOqM3nhuUo6hsBXc5xDqsQA7srCocLCJBNViSd26UmeyeOD/cR1ILgDAA
 neG0/bucGWkpsj/CCwr4Vpto3hUfslCzy01qErBexHZjx3eTMJZmKXS0B
 db/5gEEapxk8UXXidAljdpUayZkVpx+tnp1tkzc9UnvejYI0yItBpxqJz Q==;
X-CSE-ConnectionGUID: Ry9j5a2iTw+lJmGnpcxyNA==
X-CSE-MsgGUID: NMBxSByrQbuIxD5piCicEg==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="8668223"
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; 
   d="scan'208";a="8668223"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 17:37:31 -0700
X-CSE-ConnectionGUID: nBQk2cJzRFih6tGJnchpNQ==
X-CSE-MsgGUID: 6bPzbAvgSgqVbDRJ84DDgg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,207,1708416000"; d="scan'208";a="23033739"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Apr 2024 17:37:31 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 17:37:30 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 16 Apr 2024 17:37:30 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 16 Apr 2024 17:37:30 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 16 Apr 2024 17:37:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H6Qcfle79nY9/LEmjreMQKxLoHRuXNyIdZwjc+jzy0ZdAcJlY+a1qLWnd12WiEBNQRZ6x5P3wPIxIb+NQECdJvInooK3E4E56u2YTnxFAgmwq+ASnr5zrg63QpYwNhgxrm2wODS2lntH7TjtNq6YAWu9Bo3Jkq1BUW3+Yaxy/xZGh2wHPnLDmItxsuBTS1H5F5SsnLVpAvk2MQs5GbafGhULi8Yoce3zs3+d4E2XCb9iQssieWjEH3ACJAyAj40baN35715CR8Gt3MTl3w6QLmBFnpQcJVNTw5nSniK4ZQFqXrz4zs1kCVrBsr3pWXIRQewEMKYMpzlv0Lp66o3s7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=b1bkHMKouqSWEGtq2IKXon+74xVhX7p58SRu4gUJ9MM=;
 b=mwnmv9ORogv5ad8lgJ0hxy/iWGo+vCLPvXV/hdFSdhJRzQLWI8vqfQaQHV/Hx5pVXciYyqhBDyIDeyN5zYiw260eceBIDxNx5Hp+x0o2jQ7Z13clj00uyArBa8YB8f1ljB3ANMAfXxriWQpnVSNElh9vd59ww+7DMwv5yVLjVgKmPz7elntV6U//lUoWYsYmJxoi14LGVnR7H/8cuKB+kjkXq6A91YHUE89kNl/v434NgxMN8+UYbsirkDMzhMsa1moAylpax3gqMSJoAiPLsUsrFSoeAyOFr/lNVWv5QwAaGxrkC9kAJGtO5+nkmQISFmJuwubUD+im4zqM4iDIrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by CY8PR11MB7748.namprd11.prod.outlook.com (2603:10b6:930:87::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.31; Wed, 17 Apr
 2024 00:37:28 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::71ea:e0ea:808d:793b]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::71ea:e0ea:808d:793b%4]) with mapi id 15.20.7472.025; Wed, 17 Apr 2024
 00:37:27 +0000
Message-ID: <5dc00c2d-a819-4298-bdbf-f76da925f801@intel.com>
Date: Tue, 16 Apr 2024 17:37:25 -0700
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] drm/i915: Don't reset GuC before engine reset on full
 GT reset
To: Nirmoy Das <nirmoy.das@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240415164441.5684-1-nirmoy.das@intel.com>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20240415164441.5684-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MW4PR03CA0113.namprd03.prod.outlook.com
 (2603:10b6:303:b7::28) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|CY8PR11MB7748:EE_
X-MS-Office365-Filtering-Correlation-Id: 4cb523ff-636d-40d1-a93f-08dc5e768eeb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E7kVfC7dzoVKhk3W1uyk6na9eAgnZt8IJpzdJOO4oN57VWGelXSiU2LUlU+kLo28PD+/rxboWI82fCjmCme9vIXn6oTIBCiadLskhlA1xy8k3FCeD7oUOXS2iwLao4OSjSWkWq+AaCc8vmI768QOCjuspp0TtwpT3479qosZU/RVY3HO4HkLDaeVAm4ESk71jfiMTsYX4n+5nTNgIwrl/QfVlOaXUH7w2850Z9JM9SS8R7Tw6qrVeLFd+nykqujgLWMywHIlXp8vALZLLxW4ZoKrxdJlvN5GYQgt3qqCJmdTKrAkhIPSlsRfq6T+T8MDNx8MB7dWo7JVFScBUAqbjKWAiZGiIBKPNNFJ1gPvEkv5y4qrxzw+r7VvC95ThcMjSN9zr8e/zorfaL8fOCHynYEfvRFtwZqD4iOT2gLOgraIztSq54DEPkExOhSAViDHEA0VkNbShTNFkgkLA/6jdoCMW+45iRosoaH6OCRlx8La/fDjv0C44jOBH/x0VJJnFa6E9GD17l+uiMVoTfloq23hPLeJ54K7tO2a2cTb4CzW/cjIg9JNrRDcHE81UmWi84EpXo6b5IS+5lJUnanQWBPAfQ8sITFTqicZ6kqLCd8c6U7G4YV0b3hSmqdE7tECVWgQLU69MP+SxrWsEG5W9uyYeC8F8/eYnAM9wN333FA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q0VXYVZXdm4vSHRyVVFhOUo4N3FIZnM0ckViMFNTS3ZVOEF4NFZ2N3F6UTFD?=
 =?utf-8?B?eTVld25aU05WYStnaXVEQ2tyZEJ5cW55ZWpwd0hmK3ZJeFkvanhPUG82dnUv?=
 =?utf-8?B?OU5BK2pXWWdGSU5zTDJoendIcUZkME5MMTRrUzJ3VmVNZlVSUmY0dWgwWmlw?=
 =?utf-8?B?QlV0MTNDK3ZjTFVsRzBkZ0hZTUlZemhib0NtdkR2Z1J4UDR1d1pQZzVaK2Z0?=
 =?utf-8?B?U3ovNDgzTlcxaVFsY3FrQlo0Nms4dzRZRW80V0VUUFJOcUY2SXN6UjlDOG9U?=
 =?utf-8?B?RjlxdGc5UjVqNVpweTF1cW85bzdwR3JPRWh0K1FGa3RmN1FSL2x0Mlh3U3RD?=
 =?utf-8?B?Uzd2YVc4ZHZSZzV0VGdTZ3ZVRndBZUc5akowLzBXZGtFRUMwN2JaSVdaNVdw?=
 =?utf-8?B?N3RpZ3dyN09yME80V0gxWFNsdktkUTcxUDJSWTJIa0JydUo3aTVzZGZMcHhX?=
 =?utf-8?B?THVqZytRQkZtVTJLVGJxYXZ5Z3VoamNLV2NSV2Rma25lWTBRQkdURm9NUTFI?=
 =?utf-8?B?QnpLa21kUGxwWEJhNXc3SXRrRGs4eFdPMEROSFg3ZjlZM3hucXo0U0lWZjla?=
 =?utf-8?B?SXRTeTRyTWVBU3RkSStCRWRrZ0tTcldjQzl1eTFCSnc5dm5EMEw1aUszMDRB?=
 =?utf-8?B?VWlyNUZkWFEwWUc5QTNNemRKd0ZKSkpsNjlWWFloYlp3M1lRNHExSXZhbDA5?=
 =?utf-8?B?dkNtaXd1ZDBkUS9iVUNoK3hkVzdaZ1ZhSmRnRDhBKzh3OVU4TVVobmhmOGNp?=
 =?utf-8?B?UGVndG1DZzFRZnNVTUFuTVhPcEhMY2xyRzBHVm04eEtIejRqd1Z5RncwTmcy?=
 =?utf-8?B?RlkzTFg1a21mQ1ZzZi9ZcnJoYXlKQkMyb2k0SjZkVklYWERaOHhpSGtGU2do?=
 =?utf-8?B?STlPRXJLUW1sMDc2dFFWbkxXazBHTHl5blV5NUFBRTRUL1VSUUhkUTN3N1ZL?=
 =?utf-8?B?ajZYaWl4bHdRNHRvZUUvU09iMzRzTTRjM3cwdnFyaUZkTkVoSFVNcU54M05U?=
 =?utf-8?B?d3ZrNkRFUlV4ZklEUmMzdVlQWGRGVEhnR0NneTVGS1dVRDROczZEU0pCTXUz?=
 =?utf-8?B?Z0VmVVdKYTZCaVVmSGpMTkNzbzBjN1ROTHVpb0Z3aDRvSkd4ejZHQzFzcHBF?=
 =?utf-8?B?U2RHaHpBNWRWMERCMEhrcS9Bc3BpZm1PMW5LajFHY3NQcXYvWjIvbUNjSEhs?=
 =?utf-8?B?bkpMQnJsRTMrNE5YdkJ3VGlTY0RqdjRENDB6YWVIcXBscjBpQk9mNWNQQUxt?=
 =?utf-8?B?dm9BUnZabng4M2R4MDRkQUp0YTYwd3I0b2FtOStwckFRWW5RbFZaV2RzcS9O?=
 =?utf-8?B?TlI1NVBwamc5MjZKdGlNcFVKRm1GcWF4MTNPUlhkVldOWHM3SmJ5NG4xZzM0?=
 =?utf-8?B?elJrQlJtdzlEUTdpWk51aW9hWVJNQ085WGFQRXNpSHpieFZ6RnFnNzlhT0w5?=
 =?utf-8?B?ei80bVkyS2l6TU1QYlJ3ZmYvbUhlWTB6UythVHVqbDhmanQzU1crL09yb0NY?=
 =?utf-8?B?TndMbmtQYVU2RjJrNnNEY0QxZG5la3RiakZSSUdDYjI3SFVrTm5BMURSazNU?=
 =?utf-8?B?bG1kWGc2ZDB2WGR0MDJZUFpyYmtpMXlFWlJ5MG9JNHNnc1NUMVhJeUI3Uzdj?=
 =?utf-8?B?UXd3bWUzalFITk9PdGhxM0lPRk1XVEtldDBDODMwdEtuemJUcTVmL0dXVlR3?=
 =?utf-8?B?ZFhKQzk1cTNDQ1R4UXgyOXBleXU0bXhLRmR0YmxVcTlSb1pUQ0UzZkw0ejhn?=
 =?utf-8?B?RWszSlRpeEdLZ3RaUjNNL3BmdS9jSU1peWdEemxTWmQybVA2c1Z0K3owT0Rw?=
 =?utf-8?B?RTd1d0JDZTUvNGZDU2d3RjVnR1ErdWNJZnFNcnBCMlBzVXNRVm1NaDVLeGtt?=
 =?utf-8?B?Yk91V2JQTlVubjN2WkNNelpsOFE1VEIxaytSUEFDYzY2TXhuWEttdkFFS1A1?=
 =?utf-8?B?MkxJeUdRSjRSSlEyWnJwYVlnbXVwNnlSYzJ0OEh6OGJTcFdBNzUvbnY1dmVr?=
 =?utf-8?B?NHBTWHkwSHdsdGthVE1WQW4xWVQwU1h0MFBUT0JmMzFvZFl5S1B1cXVPSG5I?=
 =?utf-8?B?cVJPOU03YWpXTWkvc3UrenJQVTkwQmNMckdtQTBMSVE5V3lhbHA5blh5c1oy?=
 =?utf-8?B?Z1QvMUxydDQrNWNsV0V1Ym1tb1pzOWJVYjBsUkxGZm85dXpJWVZyZWlwL2ZI?=
 =?utf-8?B?Q2c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4cb523ff-636d-40d1-a93f-08dc5e768eeb
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2024 00:37:27.8429 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7jsKGIRDz2CLQNlnRqjUshuOKcomTxdFyE3WziX+27aQtA+cqgJUoo1eVH5Tikp/rHvUOFpQhdmDzEoXjHIthVsq/jz/ITSWHhO0FtjV3sY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7748
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

On 4/15/2024 09:44, Nirmoy Das wrote:
> Currently intel_gt_reset() happens as follows:
>
> reset_prepare() ---> Sends GDRST to GuC, GuC is in GS_MIA_IN_RESET
> do_reset()
> 	__intel_gt_reset()
> 		*_engine_reset_prepare() -->RESET_CTL expects running
> 		GuC
> 		*_reset_engines()
> intel_gt_init_hw() --> GuC FW loading happens, GuC comes out of
> GS_MIA_IN_RESET.
>
> Fix the above flow so that GuC reset happens after all the
> engines reset is done.
>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_reset.c |  9 ++++--
>   drivers/gpu/drm/i915/gt/uc/intel_uc.c | 42 +++++++++++++++++++++------
>   drivers/gpu/drm/i915/gt/uc/intel_uc.h |  1 +
>   3 files changed, 41 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index c8e9aa41fdea..9ebd68ce0c22 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -879,8 +879,11 @@ static intel_engine_mask_t reset_prepare(struct intel_gt *gt)
>   	intel_engine_mask_t awake = 0;
>   	enum intel_engine_id id;
>   
> -	/* For GuC mode, ensure submission is disabled before stopping ring */
> -	intel_uc_reset_prepare(&gt->uc);
> +	/*
> +	 * For GuC mode, ensure submission is disabled before stopping ring.
> +	 * Don't reset the GuC a engine reset requires GuC to be running.
These two lines appear to be mutually exclusive unless there is a test 
for GuC submission being enabled, which I am not seeing. Note that 
"ensure submission is disabled" means "reset the GuC".

> +	 */
> +	intel_uc_reset_prepare_without_guc_reset(&gt->uc);
>   
>   	for_each_engine(engine, gt, id) {
>   		if (intel_engine_pm_get_if_awake(engine))
> @@ -1227,6 +1230,8 @@ void intel_gt_reset(struct intel_gt *gt,
>   
>   	intel_overlay_reset(gt->i915);
>   
> +	/* Now that all engines are clean, Reset the GuC */
> +	intel_uc_reset_prepare(&gt->uc);
>   	/*
>   	 * Next we need to restore the context, but we don't use those
>   	 * yet either...
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.c b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> index 7a63abf8f644..5feee4db2ccc 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.c
> @@ -345,7 +345,7 @@ static void __uc_fini(struct intel_uc *uc)
>   	intel_guc_fini(&uc->guc);
>   }
>   
> -static int __uc_sanitize(struct intel_uc *uc)
> +static void __uc_sanitize_without_guc_reset(struct intel_uc *uc)
>   {
>   	struct intel_guc *guc = &uc->guc;
>   	struct intel_huc *huc = &uc->huc;
> @@ -354,7 +354,11 @@ static int __uc_sanitize(struct intel_uc *uc)
>   
>   	intel_huc_sanitize(huc);
>   	intel_guc_sanitize(guc);
> +}
This seems like an extremely bad idea. You are wiping out all the GuC 
communication structures on the host side while the GuC itself is still 
executing and using those same structures.

Is the failure when doing individual engine resets or when doing a full 
GT reset?

If the former, I think a better approach would be to just not reset GuC 
at all (or indeed any UC) if not using GuC submission. Although, looking 
at the code, I'm not seeing an engine only reset path that does nuke the 
UC layers?

If it is the latter, then how/why are individual engine resets happening 
in the middle of a full GT reset? Don't we just splat everything all at 
once? Either way, it would be safer to split at the GT reset code layer 
rather than inside the UC layer. That is, when not using GuC submission, 
do the entire prepare/reset/init sequence of the UC layers as one 
'atomic' operation either before the GT/engine reset or after it (or 
potentially both before and after?).

John.


>   
> +static int __uc_sanitize(struct intel_uc *uc)
> +{
> +	__uc_sanitize_without_guc_reset(uc);
>   	return __intel_uc_reset_hw(uc);
>   }
>   
> @@ -593,13 +597,7 @@ static void __uc_fini_hw(struct intel_uc *uc)
>   	__uc_sanitize(uc);
>   }
>   
> -/**
> - * intel_uc_reset_prepare - Prepare for reset
> - * @uc: the intel_uc structure
> - *
> - * Preparing for full gpu reset.
> - */
> -void intel_uc_reset_prepare(struct intel_uc *uc)
> +static void __intel_uc_reset_prepare(struct intel_uc *uc, bool reset_guc)
>   {
>   	struct intel_guc *guc = &uc->guc;
>   
> @@ -617,9 +615,35 @@ void intel_uc_reset_prepare(struct intel_uc *uc)
>   		intel_guc_submission_reset_prepare(guc);
>   
>   sanitize:
> -	__uc_sanitize(uc);
> +	if (reset_guc)
> +		__uc_sanitize(uc);
> +	else
> +		__uc_sanitize_without_guc_reset(uc);
>   }
>   
> +/**
> + * intel_uc_reset_prepare - Prepare for reset
> + * @uc: the intel_uc structure
> + *
> + * Preparing for full gpu reset.
> + */
> +void intel_uc_reset_prepare(struct intel_uc *uc)
> +{
> +	__intel_uc_reset_prepare(uc, true);
> +}
> +/**
> + * intel_uc_reset_prepare_without_guc_reset - Prepare for reset but don't reset
> + * the GuC
> + * @uc: the intel_uc structure
> + *
> + * Preparing for full gpu reset.
> + */
> +void intel_uc_reset_prepare_without_guc_reset(struct intel_uc *uc)
> +{
> +	__intel_uc_reset_prepare(uc, false);
> +}
> +
> +
>   void intel_uc_reset(struct intel_uc *uc, intel_engine_mask_t stalled)
>   {
>   	struct intel_guc *guc = &uc->guc;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc.h b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
> index 014bb7d83689..9d6191ece498 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_uc.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_uc.h
> @@ -46,6 +46,7 @@ void intel_uc_driver_late_release(struct intel_uc *uc);
>   void intel_uc_driver_remove(struct intel_uc *uc);
>   void intel_uc_init_mmio(struct intel_uc *uc);
>   void intel_uc_reset_prepare(struct intel_uc *uc);
> +void intel_uc_reset_prepare_without_guc_reset(struct intel_uc *uc);
>   void intel_uc_reset(struct intel_uc *uc, intel_engine_mask_t stalled);
>   void intel_uc_reset_finish(struct intel_uc *uc);
>   void intel_uc_cancel_requests(struct intel_uc *uc);

