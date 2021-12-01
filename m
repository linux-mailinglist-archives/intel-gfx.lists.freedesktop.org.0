Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DAE46453E
	for <lists+intel-gfx@lfdr.de>; Wed,  1 Dec 2021 04:07:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9700E6E420;
	Wed,  1 Dec 2021 03:07:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B80FD6E431
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 Dec 2021 03:07:22 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10184"; a="236601907"
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="236601907"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Nov 2021 19:07:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,277,1631602800"; d="scan'208";a="540652822"
Received: from orsmsx606.amr.corp.intel.com ([10.22.229.19])
 by orsmga001.jf.intel.com with ESMTP; 30 Nov 2021 19:07:20 -0800
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX606.amr.corp.intel.com (10.22.229.19) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Tue, 30 Nov 2021 19:07:20 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Tue, 30 Nov 2021 19:07:20 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Tue, 30 Nov 2021 19:07:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=B0Y4entPy6YXES/q9TgYpokaMbYybdXLZoUUrryQ6Nkq2p6aasVOKKWbP8ub5AED9edCxmXNXBN9p8EomFgrjTnymTQIYG/LfSFs0vK8Lrx8SLdtPccXt2FLVZDfceqZ0bPtP/6kmnnctQ6vyP1LsFmTchIgcbXaur7rbGe3y4NjrGI+u1e0Fg/gtIMjfB0YbF7OtTcMluAZfDGG6rFXvfb9ykAW4uZrOmACApL5CCELm7NDab20AeI+a0TH1lpIwRrMD+ql72CdBfFSD9OwYQ3wd5Dg3n5qbGailC/09rxqIwdMtlT1lPxKEXO1LXjmKkucppnOxJIPYACS/mehBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q5ZvEXKcKxzEJlcklk3S6i9pbW2GgQs9KP0ACIlxErw=;
 b=HRoFDkJw4B7XVN6LV7NBOd1GFV+WfOXw1AqIUVTzQ1ejvmLykztVSul2Gnb/JAure3ttU29LJ6es3i3ipA78QsIpOqMEVJXWjqnZSlLeyhV1N6sNJftRG6BeHQPO1TYkDw7d1zjNQAg7spO2tX0wJnRRug/KRePugcu+udWqmF0woT1MWFo7HQ9pdUHc4b/vRa2gCAh0xLUeWnTFjhMcTodj2v8QtEfaG7eFJe53/HnBj6VUbwqc3LklPNu5RSVC4ECSmYdLSs083c8UdUKB5Ztn2sUBXvN7bjfsEAZepPYur/oOz8x7vBHHH9vjW8eYjkEKEJUbosRNi4MC2ykJsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q5ZvEXKcKxzEJlcklk3S6i9pbW2GgQs9KP0ACIlxErw=;
 b=XhC+KGEFb4TZlYAgL7IamgXv/AL70sHx5aresRLWIAAlx7zJu/fB7cHNt65Hg6u3epU2QypVxgDM9iEiQeYl7JyzaxD1BhxT0KI+gjZUxEQ0v8qbE6XyjUpr56Wo/SdIdxnHxBBjsw7KmBwG86BVSFheXx3EvfNPDL5PiazPyGs=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH0PR11MB5642.namprd11.prod.outlook.com (2603:10b6:510:e5::13)
 by PH0PR11MB5660.namprd11.prod.outlook.com (2603:10b6:510:d5::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4734.21; Wed, 1 Dec
 2021 03:07:19 +0000
Received: from PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::d8b9:b1c1:dd29:82e7]) by PH0PR11MB5642.namprd11.prod.outlook.com
 ([fe80::d8b9:b1c1:dd29:82e7%8]) with mapi id 15.20.4734.024; Wed, 1 Dec 2021
 03:07:19 +0000
Message-ID: <c0415f1a-b28f-c03c-bf83-fafe33d1fe78@intel.com>
Date: Tue, 30 Nov 2021 19:07:12 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Firefox/91.0 Thunderbird/91.3.2
Content-Language: en-GB
To: <ravitejax.goud.talla@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <tejaskumarx.surendrakumar.upadhyay@intel.com>, <hariom.pandey@intel.com>
References: <20211123144559.3474989-1-ravitejax.goud.talla@intel.com>
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <20211123144559.3474989-1-ravitejax.goud.talla@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: CO2PR04CA0172.namprd04.prod.outlook.com
 (2603:10b6:104:4::26) To PH0PR11MB5642.namprd11.prod.outlook.com
 (2603:10b6:510:e5::13)
MIME-Version: 1.0
Received: from [192.168.1.106] (73.157.192.58) by
 CO2PR04CA0172.namprd04.prod.outlook.com (2603:10b6:104:4::26) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4734.23 via Frontend Transport; Wed, 1 Dec 2021 03:07:14 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 15959ddf-2d0a-4b2e-be55-08d9b477acf4
X-MS-TrafficTypeDiagnostic: PH0PR11MB5660:
X-Microsoft-Antispam-PRVS: <PH0PR11MB5660CDD11979C384CF8BD82BBD689@PH0PR11MB5660.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:279;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tm+j9+wIBS9A2zyEYOZE78fMVOEjQA98zNwMhJ8jULBvlxq6bwqGovwC1LC8LDossiY1KcEw94ddjboNola7Nd6bCnPI3/tcBIZJqIQzcWWvPFefwiZdI6BpHuZh734hZdWe1w2sOU5o1QgqKnu/5ZxcC/NnPeLOMwBzRx81zR7eNYVqe/XJ5OonIzxXVMMlyZLu9rIoS8PlyYYzE5uJd8724SOww9ElNJiBULg6o3pa9fxzwTIWzxKGxaCB9Oery0zMJifXZPI90N5zX3VOi8dCjFNlblJIjquQOHlEcD54u2IAobPM/EQc5mvb5tgjry54uQQLk6SKkNvVGKPicTyOsXMg/Es9izzk9nUrUn8PbASIV2YZG+rMFtnrsNFT/paGDMPj8Z6c/Jhu7avYVVdbJpDmk+Can6kMtaf9R/ujJ01fmLhoWvXveND5OPfZFylO9pmeeRsyJkl+8ssb8IQej/YED7y0C1snG6PkbAg15iEPiLBmMaRPToOC5yc3eRZE6oIUy+vo8AtKKcJBJ3wDaN5cOdYQkTpqoB17yHdruKTY+LKD3bdtYXMmEURI42iCqJxp+8ryTanQc6DQoouXRQ8RP1V7KFbQC9ToJTCMkQixVZOMTqHTFADDXYiJti04FZCLaFb5wDl8AzOjHGGpNYpdRWK5hqgOadYXD0BfuKswjQpns9XzQS0R7mUgSPG/2frbTW5gSkt+G05GVYbK1pGqjAmhmChsqIYjGftJV36J/L56AHe22EbZUaWy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5642.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(66946007)(6486002)(956004)(26005)(2616005)(83380400001)(316002)(82960400001)(38100700002)(31696002)(86362001)(66476007)(53546011)(16576012)(8936002)(31686004)(36756003)(508600001)(5660300002)(186003)(6636002)(2906002)(66556008)(8676002)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c21TMVFOT3VxNXBaSlowSkZpQzF2L0Zza0JEQlZ2WE5RdHZBNiszdjEyMFE5?=
 =?utf-8?B?MXZVZzg5elFEOEZ1aXpkR3ViNUxaQXEyL1JOK0QwN3pVVlR1VEtETVBnZ2F0?=
 =?utf-8?B?NE1PakN5Rnd0SlN1bUwyTGdQMU9ucVRnemduMjQvT1h3bEprT3dOd241dEU2?=
 =?utf-8?B?VWdFZTVSUG1aZUpWaS8rd21tK1VId0xQN3NkRUxGMGxzamNMMDFYNi9vSVI5?=
 =?utf-8?B?ait1T25mTU9MWlZOaEdvd2pORmFWMTJyRVVxN0dOSHVNaVJ3WnhuWVRvY1pm?=
 =?utf-8?B?YTRKWC9TYnNkRVA4TDJ3K3RWeVhraTFzb3lWZ2lLd0d6K0p5SWdCSmNCVkVj?=
 =?utf-8?B?MmMyaFF5NVRYdERkUFcwaVNleGg0Z0s3WDZYd21pVldLMmpMeTFOL2pjZHpS?=
 =?utf-8?B?V0VBN29FVmp2RDhkOTdUdlBHdndJQXBySWxjbHV1b2VwWVhVaytvWm5jeGlm?=
 =?utf-8?B?bDcyT2VRUFV5Ymwwcms2RHEyQ0FFNUxJODBqNlVCelptUWo5ZFdzai92WDNr?=
 =?utf-8?B?QUhjb3pKQ1JSc01WaDhVSURiU0ZTaFUxUHN6RnhpR0xkQ0xlcUVRZUZGN25Y?=
 =?utf-8?B?Vm5nOFJoeUtOMnR5cGE4Q1dadXpwOU9oaXR3Um9YRHU0dWZiYzhqelJYeWJK?=
 =?utf-8?B?TVlvanUycVo5OHRycEdsSUc1VzZra1Vod3lIWnNQZ2I3SExWT0RTTWRYMU41?=
 =?utf-8?B?ejY3dUV1dTFUODFRdFZJR0hzUEZkK01qY3YzZ1FtRVdETXcweURNTjF3REFS?=
 =?utf-8?B?cEZwUGlRUXkrWjMvUHpCdllVSGpoR1ExbUloR1c3ejhmejJBWXNTVTBZTklY?=
 =?utf-8?B?bzlFaDRRb0orTDlINW03QWt6bThJbVZic0JnTHVpZWE3eUd3NXdnNnVJZGFN?=
 =?utf-8?B?cEsrdDYzNWRxRjJiNDFpalBFOTBtNXc2YkwwNTAzaDZpUDVpSFJZNTBRM1hD?=
 =?utf-8?B?YzNSM2ZUTi9aVFNGUUNpSnppSTd4emNLS0piTTg2U0lPUXhpMXpsQmdtZjBj?=
 =?utf-8?B?Q1lseHBjSElPRGxVa0kvNTlqK3pkazV3WjA4NGQ5b1RKNElSNTgyV1hxa1lM?=
 =?utf-8?B?R3NVNVFVUElLVGUwdDdZdnA1Tkh2Vmh3TWR6M2FNeGZneGxEL08xbnBRb2xO?=
 =?utf-8?B?S0FsSlp1UVJxalAwSTN1K0t4ZWlnbVpTZEc3L3ZMTWZVTnlURDdGdzRqbHRU?=
 =?utf-8?B?a1ZmSDlQVWVoU0VVWjRsOGlTMEFJRkxmZVkrS3ZGUzFELytneE03RDY4RXpl?=
 =?utf-8?B?aUZ1aW9iSXZ2M2FKMGd3VitZMlFEendKWG1RNXJPc1ltU1hRY3l2UW1YRHAv?=
 =?utf-8?B?MkxYRXJIQVBzbHA0UEZRWjRoU2x3S2pJL29Bd2dueEFVeTcvRlpWbzZrcjFa?=
 =?utf-8?B?aXVlUnhCWHk4cWVqS1E1YnRrYjBFNzAvSGtaSkp6R0R6VWtBblZKVExUV2lH?=
 =?utf-8?B?c3doazJqcUJkR1RIN3cyMS9nZmg0aWpCR3NvbFlBN1ZzUUtLbjUyaEYvSER3?=
 =?utf-8?B?aTYzV0pGcjVXZmpKOE1VckNZRVZxdHNCUVpvZENuNHdHdS94aUl0OU5WeGZr?=
 =?utf-8?B?VFRMUXU2V3hLUkZnOHVxZkdST2plUi9BRzJab256NTF0Um1sUUkzTE9yazQ2?=
 =?utf-8?B?bHg0WXMwVUd5dkRxMDRVRmN4aW9yTXVhamEyOUJyakt6UGU0Rkx6bGZwVmhC?=
 =?utf-8?B?aHlpOU1UTWI1S0JOd1FvRlJZdXhFTmpBd2ZxTERmeVhYUm1YcEszN2RrMDM2?=
 =?utf-8?B?THNRR3NFWUVGS3JYelU1TVlJdzNBRUJrZmZqbG85VHBuM2lrUUdhUC96bzEw?=
 =?utf-8?B?ODRXTGh1L1l5N3dYOC9GNFlieE85VUtMeExiM2xlSnNRR0hwcW0yY2I1OHh0?=
 =?utf-8?B?SmZwOStybzczV0k2UDNYc2ZsZWFJNURsVWVJTHp3V0plN1NJd3VwUFZ2UTlY?=
 =?utf-8?B?emNLODNpMzJ4VUJWaDBYcWg4cEtZN3gyOGdvbDBuaHFLaFBySWRnQ0laaFY0?=
 =?utf-8?B?U3V1d2FucWtPVUhuUi9DendTZEFVcyt3eTEyMjYzNE1vR2NzRjhxTHNyVmxQ?=
 =?utf-8?B?UkwrZm1GZW5lclU5bE44amdudytIeE1pSDUzclJvTmRoZGl2b215YWsxQ0hZ?=
 =?utf-8?B?UEZsd1JISXM5OWc1aFFtQ0pDRFdRSFNVNEpuMmwrQlAyZkFEbkZ6cVl4eWVO?=
 =?utf-8?B?aTBmUS91SlhhcGxWWEpNbTBLSGE5RW4vSURkK1ZzakdrcUh2dms5N0dEc3lz?=
 =?utf-8?Q?wm9Wk2z5eY4O5OEHKKd8Uw8Q58kOW7176n5ncQ5o98=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 15959ddf-2d0a-4b2e-be55-08d9b477acf4
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5642.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2021 03:07:19.0228 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: brwLv04cd2/Uyjn/HMvUWi/zCwAuoNwaULFZ/UccW1Oj2GgZq2xL6Mb91hKwf4FP7d1YpqA3Vv2ZFTY2W9ulZ9KkxRzCDtPIbvWQk48nH00=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5660
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gen11: Moving WAs to
 icl_gt_workarounds_init()
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

On 11/23/2021 06:45, ravitejax.goud.talla@intel.com wrote:
> From: raviteja goud talla <ravitejax.goud.talla@intel.com>
>
> Bspec page says "Reset: BUS", Accordingly moving w/a's:
> Wa_1407352427,Wa_1406680159 to proper function icl_gt_workarounds_init()
> Which will resolve guc enabling error
>
> Cc: John Harrison <John.C.Harrison@Intel.com>
> Signed-off-by: raviteja goud talla <ravitejax.goud.talla@intel.com>
Reviewed-by: John Harrison <John.C.Harrison@Intel.com>

> ---
>   drivers/gpu/drm/i915/gt/intel_workarounds.c | 18 +++++++++---------
>   1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index a9727447c037..4f7b598d21b1 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -1231,6 +1231,15 @@ icl_gt_workarounds_init(struct intel_gt *gt, struct i915_wa_list *wal)
>   		    GAMT_CHKN_BIT_REG,
>   		    GAMT_CHKN_DISABLE_L3_COH_PIPE);
>   
> +	/* Wa_1407352427:icl,ehl */
> +	wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> +			PSDUNIT_CLKGATE_DIS);
> +
> +	/* Wa_1406680159:icl,ehl */
> +	wa_write_or(wal,
> +			SUBSLICE_UNIT_LEVEL_CLKGATE,
> +			GWUNIT_CLKGATE_DIS);
> +
>   	/* Wa_1607087056:icl,ehl,jsl */
>   	if (IS_ICELAKE(i915) ||
>   	    IS_JSL_EHL_GRAPHICS_STEP(i915, STEP_A0, STEP_B0))
> @@ -2272,15 +2281,6 @@ rcs_engine_wa_init(struct intel_engine_cs *engine, struct i915_wa_list *wal)
>   		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE,
>   			    VSUNIT_CLKGATE_DIS | HSUNIT_CLKGATE_DIS);
>   
> -		/* Wa_1407352427:icl,ehl */
> -		wa_write_or(wal, UNSLICE_UNIT_LEVEL_CLKGATE2,
> -			    PSDUNIT_CLKGATE_DIS);
> -
> -		/* Wa_1406680159:icl,ehl */
> -		wa_write_or(wal,
> -			    SUBSLICE_UNIT_LEVEL_CLKGATE,
> -			    GWUNIT_CLKGATE_DIS);
> -
>   		/*
>   		 * Wa_1408767742:icl[a2..forever],ehl[all]
>   		 * Wa_1605460711:icl[a0..c0]

