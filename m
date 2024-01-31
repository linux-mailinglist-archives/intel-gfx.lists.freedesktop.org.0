Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BB00984366D
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Jan 2024 07:08:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 030D610ED46;
	Wed, 31 Jan 2024 06:08:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3691110ED46
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Jan 2024 06:08:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706681280; x=1738217280;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=A9kIieaNfuG588ODik/KjuCpnLEUQPAo4Wrn7GRrBrA=;
 b=QmWCYaHycxaUT/zVYfWqGUyrw9fgm7s87ZU1JC9Kno1fKRpYqxeypm/T
 ZFIEjl4CITGTmGz1gfGXumI2sGxT3STi0KxWhw55UU9/wN45aXW/eq5FE
 hk6xLT0wXct6kVMj9vpP+Gt3B//HbtCLWrXCLG6g/NYtmaYtG3niam9xD
 4pQwMgzq9NLiiTndi0XXzwIpP+OpkL9j5eeW/siHyeseFVO1fg15X/37w
 yrz0pPj/W3CGMeuu7LqORdBYq4ybjz+3BhlwHKvOWezz1gRpszB+GOUa1
 xwm3ggsY7JwHw2Tfcz3PyfrMkpTK4a/P4dTRPTpfMuPgp7jJah1AY9B3q w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="17034564"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="17034564"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2024 22:05:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10969"; a="737994426"
X-IronPort-AV: E=Sophos;i="6.05,231,1701158400"; d="scan'208";a="737994426"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Jan 2024 22:05:28 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 22:05:28 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Jan 2024 22:05:27 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Jan 2024 22:05:27 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.168)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Jan 2024 22:05:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=CXxncvpmqQcNiCN+sSYfg5YFcQmqy3+FtAR7GPejtHNXqG8Yq9HGnBui1LLKxRg9S8BP5IJW1t5FMUL4UIKNEtzBlKlXplBqs73JS8KaGPwZnBbZxzvgmCla71YFgm4NeDzb7X84lXJJBnFviDwlsk7onpSU850M17s6oGYv3bIiUKvWgi8Vr6dx3fGPv0icrV+epOtk98Dh3La6R0moBi0y1rjlMFK6rfQ12MN3119wxA0IFarMo2ryayGeX5682ajJQGzSWrBE6wCDRAq63r/3uhXrplOb7y4gTYGv367WHZtAUkjSbJvjBL/leQdC449fftfXCfKW9nMreCov/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wNt1bhPihgGfjoGJIWdWnQjsYZ5ORRJZoLL6SEzCFRs=;
 b=iez+At0OgzzRij8K3wnkovIT81O6Fldiml782HVR/2j6F3amUcXKk8j5yVL0iKVzVwRYbHa5u1wFId2dhZyoZkuL3HGeTBRIp51DRmzs8qVV1U4hoxXe5ZBZDDF96OMsLOoCpRU1SKNd+njE5Q0vgr/o/itC/WQl9R3BNSMU50jJy9AEZIG2HrjJ7gIb8fjoWAvgUm++/6mrc2IbnUpjoNILYmCh3kcy66e7ED7lgNagTn3RckKtom+dZNcv0cZrI6HEatgLCZNznpWNVzcF2wGnFublzsR9xYgAd5x3L0S3bO7/b0Ghr7FFhsmViFts+Asy5LU8BvOAi3OjlVslLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB8297.namprd11.prod.outlook.com (2603:10b6:a03:539::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7249.22; Wed, 31 Jan
 2024 06:05:04 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::ee74:40f:fb96:34f5%4]) with mapi id 15.20.7249.017; Wed, 31 Jan 2024
 06:05:04 +0000
Message-ID: <559190a3-052f-4b28-9c72-16bc13d0f296@intel.com>
Date: Wed, 31 Jan 2024 11:34:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] drm/i915/mtl: Add DP FEC BS jitter WA
Content-Language: en-US
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20240129175533.904590-1-imre.deak@intel.com>
 <20240129175533.904590-7-imre.deak@intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240129175533.904590-7-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0045.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:22::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB8297:EE_
X-MS-Office365-Filtering-Correlation-Id: cd656c73-618c-4fc2-efd7-08dc2222912e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7C/lCXDWqgmqBX8a9Y3LmrCF24GlWMWZBif4SHQjHFwcY8YSx62BwU6RunTb4e4p58a1HYslOzuMFZClpz5C1mInvqnN0KOUxMqIJu3yegCBVl/g2U7ecYlmeyAma4/cffT9hkgZRxZfHrJoSR72XIs4PzeQ6XsmzSGfKtvGsb4IZug1Mvzuwo/8GaJiVlPJmqGl7UePJHZSxsXL2VDv+C6QUp749e5rn61aD+r5UUpI7hZdDznJisMVR8G5sIv1dzA3UrA+I+JFE2+iedsR0OpataIybo9MeVsLKfZWcdkG7JcErdHpJgzVBxW/2Bis2WGX8tqZQb0NCxPtMLqlVoBCEgI4jzggEtAWJYDWfwKXCxTfNdIr+n9OKSwo5EQfnkdczfHIidCPkb84TvyCGmXtNeslM4V4DvcCJzKkjv8Z0eUQUye5al9MSM5x9v4GO75jTI1mRWW6p0Wh+O6Z3xrLdAT04OAaI2IEN6/RfnIFEuae7lsEcbNJifGwWUmyYR8yprGXNHtY5XFpYY/DcLXvFqcBYMG4QQR82K2rz7ZY7kdIzeIAjME9J13f3VFgUhX1qObqBXHvEaBzANRMoEwnhgoT1u7D04ceXsg52PbhOR0nkr3+2f74oHeq3wZMqnjZQ1cUfsbR3PhhMkNmTg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(136003)(346002)(39860400002)(396003)(376002)(230922051799003)(186009)(64100799003)(451199024)(1800799012)(31686004)(41300700001)(31696002)(82960400001)(86362001)(36756003)(26005)(6512007)(38100700002)(2616005)(6486002)(53546011)(6506007)(2906002)(478600001)(316002)(6666004)(66946007)(66556008)(66476007)(8676002)(8936002)(5660300002)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?akdpR294dDZXRjJMUTQyVGJOUGQxZlhKWE1RZXRMOWdRMDVLQis2WDRjdmNp?=
 =?utf-8?B?YklhbXNKRTJUSFBWRXNVN1Bhb011Z1JsUFBrTEcxNEQ0ekt3MzRPcXh3Tk4v?=
 =?utf-8?B?bWpuVFJrNHdNWmVhdXE4ZUtwdnNzdFR5Q3lLdVZoa3pTekU5SVBYRzBDMG5n?=
 =?utf-8?B?MjRxWTFEcEtyeGVpdFhHRG8wUHZWcHB4SnFNbk4yMVVpR1BBRmh4NjRDcHpD?=
 =?utf-8?B?UGZKV1FTVGRwS3kyVXBNYmF4YTVRU3FaWENaUm9BMnQ3a3hvczVwR00rVWg5?=
 =?utf-8?B?Mk52M1VRUDdBSnJvckZRMlV2NEZqaFUwWjcxRkZtUzMwMzcrbXptZlEyNXlq?=
 =?utf-8?B?eVQyNm5lVVNmZi9PamN3cTVkUzN4anZjMVN6YldvT2J3cXo4ODBVN3F2Wmlt?=
 =?utf-8?B?TlZudmtPckRkQ214dHdRSk9BMjdNQkpIRk5DcS9UV3RTZ0M5VjdxcmFoa1lh?=
 =?utf-8?B?M2hUMnA1cnNLZDFxNWpOMU9nM1IxMEt0QllqbTB6ODMwUEFQUXdOTVlxTTBF?=
 =?utf-8?B?a1l1eHZjK0puV3NXMjA0L28ySEY1WlpLam0zSnRIcEtPTTVoYVRzWHB1MUJ2?=
 =?utf-8?B?TW1lanNCakRMMnU2NndmZGcyTkpyTDAwL2VKeS80ck8wb1FSeGJVQVMzV1Uz?=
 =?utf-8?B?UExjbU5VejJoU21jQklqNFNZR3FGeDZ1UnVDQ1FoalRkc0ZaTWhJSFZTVzU5?=
 =?utf-8?B?WE11bmFLMGZpZ0E2TGdOU1NpSFgzQUNpVStaOStmVGs3L0FGZk5ScEQzem9k?=
 =?utf-8?B?WDhmd2lsYzU2YmlJcFhMY3pqcnRIRlduSFpOZnNFWkVEUXpwSUZSdFNFd0Ez?=
 =?utf-8?B?SEw1RTU1VXFiclJSU29jYkltZWpoaXB5c00vemliWHR2cnRJY1dHOHZDZmJZ?=
 =?utf-8?B?T3dTZjZNTzlseCt3VTc5ekFlRnZqTktCTFZmQlhSdVpOcVBEVFN5VzQ4ZlE4?=
 =?utf-8?B?UjB6dERoSEJ3OHBlWjlWRmUxVVU0WmhzSndqVFBMZUFCd1R3QXpVOTA5Qkxk?=
 =?utf-8?B?WEQ0bmdvUXJOSThVVGZjNkx3bFd1blFVNDFNT3BabEg5b0U3U0QwMklUc3Rn?=
 =?utf-8?B?ZjBLbzRiMlNRUUlPQlpuaFE1WEk2R2RJTG51MkViekVQRlFCNGhHaFVzandI?=
 =?utf-8?B?SWk2YW9yM01pNEhPTVlMZFdRTkN3MGVtUUlVMVJtalJvcTNucUZkd1lTZEYw?=
 =?utf-8?B?QitBbmtQWk01MUljSUJJU1dtSks4Qk9PdDNta1BhdFZMQUxMOFRxYWswY1E1?=
 =?utf-8?B?WEs3Tkl1VktmVFJXT04zcHk2RHpEdGJYeU5LY1lYbVE0S0MrNHpyQk8zbnY3?=
 =?utf-8?B?N2xJZWRUZHlGVHlONWU3Slh6RVNyaWtVVHpXcmFsRDBrUFhHMWlwSUJaVlRm?=
 =?utf-8?B?T3FYaHZSYU5JUUZBVHFHRi9iZUxvUkJZRitwbzZTdzM2dXpzR2tVcHQ0RlhF?=
 =?utf-8?B?RkFBNGRUZjlZMHo2Wm9ROU5wR2hqb3dwMEFLb3RvbGd5UzNwWWJCdU5QL1hP?=
 =?utf-8?B?VmVBWkNIQkdXdU5LRnlLMHFlWDdQd2MrM3dWOHBoTll1cnkrbVBHSWtsWVU5?=
 =?utf-8?B?L3FDY2t6U3VHMGNkcDlVd3RJUzZSV05CR2ExNWxDWDdjV2tjMldFYkRYMEI2?=
 =?utf-8?B?Qk9lRE9XTWJTOVhadWF1dzFMdDNsZ1BBWHQ2Qlc2N3kzU0h2aHdPR3lXdmNt?=
 =?utf-8?B?THBzMERubHVncXpuamFxbTNCdFByR3ozOFpleTdNTXRCY242TXRkT05jT1dO?=
 =?utf-8?B?MElnbFJ0bnRaWmVYWkNUOVplWWFqVlZzKy81V3ZYakoxQS9udnBkSVBQSGRo?=
 =?utf-8?B?OThjcUJCaGdqcVdwanR3Y0IvaVF2YmViblZJTkg1N3lSaUFxSnROZmwwMzdy?=
 =?utf-8?B?TFNTTklPalovZk5odHcyWUFXOFRjZXdUMTVTUEExdDljakd3cUZ3azdNQ1Bn?=
 =?utf-8?B?NVZDYk5YT1ZnNEUwZDNha1FWMTJWeWVBdWN2Z3dkaEJxZGxyVkl6VDBna3RK?=
 =?utf-8?B?TWNmOFJaaVVkOVhzb0k1Ykhlb0ZtRUhwM3dRT1NZdG5yb1NYR3ZKQm90emE1?=
 =?utf-8?B?cUlDMkl5UFl6MzlUZUZNMjRPMlYzMDBYdXcwdXNHbEJSQTEyMjl4RXUxc2c2?=
 =?utf-8?B?eXVna1lqUjdJYndzVjdHM3JNRnpiQm9wZFhqNEJYaytaSzRPVWQzK2dMRk1U?=
 =?utf-8?B?cnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: cd656c73-618c-4fc2-efd7-08dc2222912e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2024 06:05:04.3134 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yrqJo+zwmP/Soo7eow6luBWRZfK2KrN1Cqn0gmrqG8Zr4UnhL7duaEDi8JDJC/i3zcPLj2+AXQA+ICZC+b1qLD85FzpNd2G53srdnYWuxnM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8297
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

On 1/29/2024 11:25 PM, Imre Deak wrote:
> Add a workaround to fix BS (blank start) to BS jitter fixes on non-UHBR
> MST/FEC and UHBR links. Bspec doesn't provide an actual WA ID for this.
>
> Bspec: 65448, 50054
>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 3 +++
>   drivers/gpu/drm/i915/i915_reg.h              | 1 +
>   2 files changed, 4 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index e0b75aa18ae33..72a852cccd3f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -432,6 +432,9 @@ void intel_enable_transcoder(const struct intel_crtc_state *new_crtc_state)
>   		u32 clear = DP_DSC_INSERT_SF_AT_EOL_WA;
>   		u32 set = 0;
>   
> +		if (DISPLAY_VER(dev_priv) == 14)
> +			set |= DP_FEC_BS_JITTER_WA;
> +
>   		intel_de_rmw(dev_priv,
>   			     hsw_chicken_trans_reg(dev_priv, cpu_transcoder),
>   			     clear, set);
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 9873daa16c6a1..d86e904ffe893 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -4619,6 +4619,7 @@
>   #define   DDIE_TRAINING_OVERRIDE_ENABLE	REG_BIT(17) /* CHICKEN_TRANS_A only */
>   #define   DDIE_TRAINING_OVERRIDE_VALUE	REG_BIT(16) /* CHICKEN_TRANS_A only */
>   #define   PSR2_ADD_VERTICAL_LINE_COUNT	REG_BIT(15)
> +#define   DP_FEC_BS_JITTER_WA		REG_BIT(15)

Was wondering if this is for MTL+, but it seems this is required only 
for MTL.

Patch LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

>   #define   PSR2_VSC_ENABLE_PROG_HEADER	REG_BIT(12)
>   #define   DP_DSC_INSERT_SF_AT_EOL_WA	REG_BIT(4)
>   
