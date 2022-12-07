Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 450A46451A3
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 03:01:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 88AAB10E0D4;
	Wed,  7 Dec 2022 02:00:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19E3910E0D4
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 02:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670378456; x=1701914456;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=VO/E4J+iqN0JpK54CPFmass8b9or10afa3AHeO4JPgI=;
 b=aaU76/vKeK2uRYmz0CEppbU0jbhvVDrJbEd3tktVQd0lxQaAzfoftmLE
 zbNjC6KcHYWmXMIgLLgbBFgKgCqJhQdIhYJNsTFq7TeRWLwm39KlKICN9
 k1yeZlQXCMsGThYMLRomyXYpmKQqGNwOt/eDpNWuQ9Q9ON9MEUOLr/kHY
 /70qL2CvltS3qn4bxZyUv/BVBNpL0Ck4aRkQSywkZ+0hAwH2MqCaPag6x
 dSH9kVjpZlBuBuCkXH1j59VebTWhdb0rUIU+4AeinegqyX3BEpGX/xxd3
 Xg4J6LppeJXwRo13Be/FpsAe8rw4+y5PFWvCeEet/o39DoFdoxR9SVo7t A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="381073157"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="381073157"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Dec 2022 18:00:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="596793714"
X-IronPort-AV: E=Sophos;i="5.96,223,1665471600"; d="scan'208";a="596793714"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 06 Dec 2022 18:00:54 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 18:00:54 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 6 Dec 2022 18:00:54 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 6 Dec 2022 18:00:54 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 6 Dec 2022 18:00:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UnAAyha+Ib073weDso5+W1McCTb18GuS1DsarU8imiuPqmMoXpLVs1zeS79PjLUIXykBHWZuGURSYQOpjkOJrRxWRmvoBkyEAHyVts/OQ1GlAe+IRALSFQ2Y0DXVOQsnWXLAnNDA4Hs5/gWVWmoCQebJA8N9J44GJLYYrrOcG40NlWKiYwevpZwL7INW/4uyliRdjGYv+F6icdRlu4zHQtMyj+weJILlhcY1tj+RwONhJFuaZfeDleRCeX2oNZdxaCkTGS3jk8rysOaRoBFfGYFit3yX7gPXN1UpbT8o/oXDby50UhTaJ50dFu8MWuvPYJrDLH6zc+jtAJwyi1I/lQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=rPf0LyrYAAl6o6hOfU2uNBBTe92dfbbOzm6FJ4YUnYY=;
 b=Gmaa6VgIzcndkA2s7KXa6R5HOHaxcxDahwCh2p6SZ+U2xsYU4qiX1++nToFRgFxCudsPKyG7sXk0Zl+AnGS6Xl5wZF5E2twwnDMxRuFJDc2EZqM3zFpd5mGlX25looZi+/bk8WlFqGUhe/ApvlnHtU5NudaR5HbvXSK3xrY7OokCyY5CD9glmzi0UcAVI2XGHr2WUQ1U5H6Zr3KhYGUkdmALWi36MqiWTEWavfoTAD7C1ET/I99tI3WmS9v7rDwxpXKC2xbFUeTUd8BYIkxZakL0FtnbsBaysG2orATiu0N2tL7bZ06irPHBlS34XIppnyW20R86qa9YaN4rwqqDDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5488.namprd11.prod.outlook.com (2603:10b6:5:39d::5) by
 DM6PR11MB4644.namprd11.prod.outlook.com (2603:10b6:5:28f::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5880.14; Wed, 7 Dec 2022 02:00:51 +0000
Received: from DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::f7a8:6d03:2464:2afd]) by DM4PR11MB5488.namprd11.prod.outlook.com
 ([fe80::f7a8:6d03:2464:2afd%5]) with mapi id 15.20.5880.014; Wed, 7 Dec 2022
 02:00:51 +0000
Message-ID: <e3f7c043-3606-76c1-081e-ae8b49f74563@intel.com>
Date: Tue, 6 Dec 2022 18:00:47 -0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Andrzej Hajda <andrzej.hajda@intel.com>, <intel-gfx@lists.freedesktop.org>
References: <20221206234908.2339645-1-andrzej.hajda@intel.com>
From: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
In-Reply-To: <20221206234908.2339645-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0PR13CA0024.namprd13.prod.outlook.com
 (2603:10b6:a03:2c0::29) To DM4PR11MB5488.namprd11.prod.outlook.com
 (2603:10b6:5:39d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5488:EE_|DM6PR11MB4644:EE_
X-MS-Office365-Filtering-Correlation-Id: 62ad6e02-b4cf-4ecb-3266-08dad7f6dd05
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uLpxB3C46d1Y+k83VJXBwO7Pt97mZ7l5YYdN/waHiXke7W6WmHfvzAHHUIt0vPFKC3Ep/7xKvuWL7j73DqGXqrHIZ+urJnRmTZtiOdGEdQ0+il5ctx7GEGcVm+yplhNO/TsjetfLsyCe6gsnLpQBHa8eHit8Nk0OahkZSsN8YlPXpUknMFcQ2v4IV+ktS3CdRF8Tb9syMp4evshYN2aFMvnPZ6OdxQOkGI1rqJP6DZ5OZN8z3F69yb9YCdPCsLWslNFDfwAOgIOg0gfuIy9YOVz+bEp4Q7Frjb9VzSATDXraMUG7YbMPqN1qNbKHg9ItJhvQKFwodHUE1+wCHaelwyiiP31KT2IA8rZVOGC9p1Hx/d6KruYCWI+xVZBBHguiCutSS27DOeUx1BEMcgr/MnKgjpe6sAY+56zTRG4EQ8R57iXIQp7hxosr/WgQSp7qmUIBH/c/+VhEvNZsDKgKD6RemUoO50Rf3cOt+ApWZdwbw8ptSd1LRPhPn5O31lEmexjJZRONWOJFkDnVdoGgY9gkNm0RsjdQJF8NDgGNBDhc5PhwoVKMEc6t6/hjMKHOIO+Ch6DOsBTTMqAO4PnoGRK78e6AREnSwMmEttp0yPtEcrAzSoHmW48Ccznww9bqVCDAGVdaUmqDQdQlkJadtZB04erx+ZrWWq9vG98UIKg1Q4rsDV26ETgcnqxVNPh0
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5488.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(376002)(39860400002)(346002)(396003)(366004)(136003)(451199015)(36756003)(54906003)(38100700002)(31696002)(86362001)(8936002)(41300700001)(2906002)(4326008)(5660300002)(83380400001)(478600001)(66556008)(316002)(6486002)(66946007)(2616005)(31686004)(82960400001)(8676002)(966005)(6506007)(6666004)(26005)(186003)(53546011)(6512007)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aHB6WFBNcEdmQWJZYzR2bTlpTWhHZFcvMSs4bFRRNXNZY0VjcC9BZytSb0pm?=
 =?utf-8?B?M3h5dGlrWUp2TjFibEVPZnFja3ZhVHZUWDBlTE4yamRqWWRyTENZSWpHbUdZ?=
 =?utf-8?B?U2E5UkdTZVc4bStST3dtMzRLWnpsdDRIL3pmaFV6REJJMXhYNkVUVVA0TElh?=
 =?utf-8?B?emExQi96b2J1bTh2V0duRGNPK05DMTZveWRkaGRmQWNWVG44c0ptSUdUZXA3?=
 =?utf-8?B?bVVNeFo4QXVmdDI0VW1MVlRXZk80c2lTbFQzaWYxV2pvN1dFdXhYN1pBaStS?=
 =?utf-8?B?TU14SUgrR2NwaTRVaHVLQkhqZXE0VitOS3gycmR2ZVdzanRRV2xwTkU0NjN1?=
 =?utf-8?B?bjFVWGNraFM2Q3pZUGpuZWVPR084bTJkYnIxclpYVHF4Rkk1YkpxWVBibTNN?=
 =?utf-8?B?UmwzK2NiQ3Znc1JSQ3FRVkVQa3AwNHN6REVyeDRnR1hmYit1eGtQL3V4dk5q?=
 =?utf-8?B?OXFLSjZOR2FtQ3Q0dWlIVldna05sUSs3dWFzR3plQUdVb2gxTVpsOFlWUnlM?=
 =?utf-8?B?V3RQRXQ0VTVrbTNiK0VtVlJxaVdsTDhaVUxFVXlPdW8raTBZeng1UzcrYm41?=
 =?utf-8?B?Z05tWTZENzdIbjhZL2VCVmdNUGQxaFM4YUFvd2E2dGVzTUFQcFB1bkFraDlH?=
 =?utf-8?B?dVhiVHhhSTYrQU9iY0FNNnRPU2tYa0JmVENqa012ZHZLN05UQmlpdGpCOXhk?=
 =?utf-8?B?VUxtcUNmRklJZXVORitsZ0o1dU8zamczYjJFWFpxR1k5dXFqMkcvUy9MUlN5?=
 =?utf-8?B?VFJ5S2kvWFU5K0pFQUhzWkR5WkY4ZlpGK0FzdERvazUxSDU3Sm95c0RKSG9K?=
 =?utf-8?B?RXdwQzNROVozcFdhUmxKb0xIaXNsVGZmMC9NbFdIN2tQdkx2a2pVbFZKbEY2?=
 =?utf-8?B?Z3Vxei81bzlzZWtjaEp5T1dmWjBOWFZoZEREUExBaWoxSWs5YnRSN2t6WXFo?=
 =?utf-8?B?UVQxclQrZmNlUVR5OUVpVVhhdW9WRktDaTVmcEdzaUhGQ2tsZ0tqNS9MUE9v?=
 =?utf-8?B?VWx0MEZVN3R0ZjE3d25BVXQvVmJETmVtNDAwVWJtL0NLcXFtckdGR0hRTi8y?=
 =?utf-8?B?NFpoejE3SVZpRFlnN1R5eHErNFIwbnptZ2RUbUNGY0dKejNhb1Flay9Qcm8r?=
 =?utf-8?B?OGdQQ1U1dmRWUUFhY21tSFJJYnl3bGQxL3JybytRWkc3bDlRTUVjMHUrODU2?=
 =?utf-8?B?TVAwcG54NlZjNzRLcGdLSHpxVGk4blNuTmR6RHhQT2VWOGRDS1VydlMzTGxC?=
 =?utf-8?B?SGwySDh6azh3K1JFcmMwMGo2K1o5Q2M4d1pjTHd5WFRUK0xBUHREQjNFWFBi?=
 =?utf-8?B?RjRNdkIzcXlIR0dqbUU5d01La3U0WUdHdVNHN2M3eVdRS3Z2ZHZvZFRYTEVw?=
 =?utf-8?B?NlU5c3R6cjQzM0lxTXROeWtlTmhJRG1TMnBVcVVZNnEzdkptSkxuWXMrUHI0?=
 =?utf-8?B?VkxtYzl3RWlDeEx6S1FLUU1TV2xBQWt4MnVOU1I0T1BXanhjTnZ4MTdiOFVH?=
 =?utf-8?B?bWpBNUh6RWJjVWFSOEFYdUwxbE9EcllXcmJXd2Nvd0o0UXhpOUNweG4vSVdG?=
 =?utf-8?B?a25QTzJ1TDN2K0M5eWhyLzVwNXk1bXpNS1Y4U1hOelhwVllXa2hMWFVhVkNS?=
 =?utf-8?B?SUNyMU9VbnIrQVUzNFliaUJ4TFVVTy9ZS3JmaEExRDJmY213SWtkR3h4eVZF?=
 =?utf-8?B?cTAvQWVZcjNWVXJyUjJybGVpeEw2aVpEanl5R2dqa2plRU42VmpxRWE3a0k0?=
 =?utf-8?B?eTZPMFFtR0JQWTJDVjhncVJrV1JWTWwwWmxwZWZvUGlsQm4yODRmRG91ekVp?=
 =?utf-8?B?MkM1L1hKNWNXQ3ZXNzVxRUdETS9mNzJRNmg2RksxK0FuL2kwaTBlbkZPVEhF?=
 =?utf-8?B?Nkd3allIS2pvOU9JdXJIVU9zaWdzcTRKM1plNXozSGJQYVMwUjJPN1JLNWhC?=
 =?utf-8?B?M2E3RjgxSk9ibUJMb0xDSVh6aFBOQ2xKNWpJdmRrM3dJWW1kRGxOajZPREJm?=
 =?utf-8?B?Q2FqeXpJQTYvRDYzeS9BdjlHMEhwazVLZnp3RnQwVjRDeVN0QWhpeVNCaEU0?=
 =?utf-8?B?dTVCdzk2djVIVHFreGp1bmM1dU9zY0VhNUxvUzRlWUY3emhJYUhGZVNacXZo?=
 =?utf-8?B?cUp0YzZHWTFZU3l6b2NOaFdVRm1icWxlWjhhY281OFJuZnVLUU8vYWpJVEhD?=
 =?utf-8?B?ZGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 62ad6e02-b4cf-4ecb-3266-08dad7f6dd05
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5488.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Dec 2022 02:00:51.0886 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: gekbZvtI5VzGKETgPq+cQ5kiIyVsTT7Gb54DEiWAqvjfWeOkDdKTsXo0Yi2nHaauqttdCkUNy9G0v6O+ImGz3LDZnUr5bSBMOefJbmg9NJQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4644
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: ensure CSB FIFOs after GuC
 reset do not have odd entries
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 12/6/2022 3:49 PM, Andrzej Hajda wrote:
> CSB FIFOs stores 64-bit Context Status Buffers used by GuC firmware. They
> are accessed by 32-bit register. Reads must occur in pairs to obtain
> a single 64-bit CSB entry. The second read pops the CSB entry off the FIFO.
> In case GuC reset happens between the reads, FIFO must be read once, to
> recover proper behaviour.

 From the description, this seems to be a bug in the GuC firmware. The 
firmware is supposed to make sure all stale CSB entries are discarded 
when it gets reloaded, so it looks like the issue here is that that code 
is not correctly handling the case where there are an odd number of 
stale dwords. All the registers you're reading in this patch are GuC 
registers, so it should be possible to implement this fix within the 
firmware.
That said, since we do need to keep support for current/older GuC 
versions, we'll still need to merge this WA and then disable it when we 
detect that we're loading a GuC version that includes the fix. However, 
I'd prefer it if we could first get confirmation that there is indeed a 
bug in the stale CSB handling inside of GuC (I believe Antonio is 
already looking at that) and that this is the best way to WA the issue, 
because normally we try to avoid touching internal GuC regs from i915 
unless there are no alternatives.

> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/7351
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_reset.c      | 25 ++++++++++++++++++++++
>   drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h | 13 +++++++++++
>   2 files changed, 38 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_reset.c b/drivers/gpu/drm/i915/gt/intel_reset.c
> index 24736ebee17c28..8e64b9024e3258 100644
> --- a/drivers/gpu/drm/i915/gt/intel_reset.c
> +++ b/drivers/gpu/drm/i915/gt/intel_reset.c
> @@ -721,6 +721,30 @@ bool intel_has_reset_engine(const struct intel_gt *gt)
>   	return INTEL_INFO(gt->i915)->has_reset_engine;
>   }
>   
> +static void recover_csb_fifos(struct intel_gt *gt)
> +{
> +	const struct {
> +		u32 bit;
> +		i915_reg_t csb;
> +	} csb_map[] = {
> +		{ .bit = GUC_CSB_READ_FLAG_RCS, .csb = GUC_CS_CSB },
> +		{ .bit = GUC_CSB_READ_FLAG_VCS, .csb = GUC_VCS_CSB },
> +		{ .bit = GUC_CSB_READ_FLAG_VECS, .csb = GUC_VECS_CSB },
> +		{ .bit = GUC_CSB_READ_FLAG_BCS, .csb = GUC_BCS_CSB },
> +		{ .bit = GUC_CSB_READ_FLAG_CCS, .csb = GUC_CCS_CSB },

For MTL we'd also need the GSC_CSB, but hopefully we can get the updated 
GuC before we remove the force_probe and therefore not have to support 
this WA on MTL.

> +	};
> +	u32 dbg;
> +
> +	if (!intel_uc_uses_guc_submission(&gt->uc))
> +		return;

The GuC still gets the CSB interrupts even if we're not using GuC 
submission, although in that case it just pops the CSB entries out of 
the FIFO without looking at them. Not sure if we still need the WA in 
that case (again need input from the GuC side).

Daniele

> +
> +	dbg = intel_uncore_read(gt->uncore, GUCINT_DEBUG2);
> +	for (int i = 0; i < ARRAY_SIZE(csb_map); ++i) {
> +		if (dbg & csb_map[i].bit)
> +			intel_uncore_read(gt->uncore, csb_map[i].csb);
> +	}
> +}
> +
>   int intel_reset_guc(struct intel_gt *gt)
>   {
>   	u32 guc_domain =
> @@ -731,6 +755,7 @@ int intel_reset_guc(struct intel_gt *gt)
>   
>   	intel_uncore_forcewake_get(gt->uncore, FORCEWAKE_ALL);
>   	ret = gen6_hw_domain_reset(gt, guc_domain);
> +	recover_csb_fifos(gt);
>   	intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
>   
>   	return ret;
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
> index 9915de32e894e1..beeb7fbff99453 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_reg.h
> @@ -154,4 +154,17 @@ struct guc_doorbell_info {
>   #define GUC_INTR_SW_INT_1		BIT(1)
>   #define GUC_INTR_SW_INT_0		BIT(0)
>   
> +#define GUCINT_DEBUG2			_MMIO(0xC5A4)
> +#define   GUC_CSB_READ_FLAG_CCS		BIT(16)
> +#define   GUC_CSB_READ_FLAG_BCS		BIT(3)
> +#define   GUC_CSB_READ_FLAG_VECS	BIT(2)
> +#define   GUC_CSB_READ_FLAG_VCS		BIT(1)
> +#define   GUC_CSB_READ_FLAG_RCS		BIT(0)
> +
> +#define GUC_CS_CSB			_MMIO(0xC5B0)
> +#define GUC_BCS_CSB			_MMIO(0xC5B4)
> +#define GUC_VCS_CSB			_MMIO(0xC5B8)
> +#define GUC_VECS_CSB			_MMIO(0xC5BC)
> +#define GUC_CCS_CSB			_MMIO(0xC5E0)
> +
>   #endif

