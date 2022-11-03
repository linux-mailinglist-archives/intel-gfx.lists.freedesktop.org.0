Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3417F6176AA
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Nov 2022 07:19:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 22CAC10E237;
	Thu,  3 Nov 2022 06:19:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B05BF10E237
 for <intel-gfx@lists.freedesktop.org>; Thu,  3 Nov 2022 06:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667456372; x=1698992372;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=3Gj6WpJY6fo4JSBjsVJpEyYu5xSeZ0AutG6H4qG3X5s=;
 b=eczvP4ZldSzqpsSH/CK5rP/uFfSqDgzL8b77WYio6XCMOKTcwoa+oS91
 fDLsklI+swN1FKUJZsJVK2in2RsyxGLTG9+Fw6QM7QoyLvbagXAT9CLwk
 impQxczckokEAhkC72txTHHDHTOZBaY22Hy4+KqpL6ZBqsZWRUvEW1b6H
 lw0pO4UkXismsJDJgSAAYyL99wh5nd+d+unx/I580ovjjAKwDbt34WP+T
 p+3Wf70InKhkDSbuhXc2YLXUsEwofJoh72cOpmfPBluaAzrXyFhLvrxdE
 JVFjs/y46tiVgv/zShNJrrwqqzR733Ecj9ZdtehPQH4jxF/t3hxVctAZG Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="395904203"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="395904203"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 23:19:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10519"; a="634547268"
X-IronPort-AV: E=Sophos;i="5.95,235,1661842800"; d="scan'208";a="634547268"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga002.jf.intel.com with ESMTP; 02 Nov 2022 23:19:31 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Wed, 2 Nov 2022 23:19:31 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Wed, 2 Nov 2022 23:19:31 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Wed, 2 Nov 2022 23:19:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ai4iULvGSgroXvrzmpK9tn71Qjonk8+dUuKaBM7gslP3sypvwsMiUxBU4sdld5++1a4Wn/5efQsfJ/Mrg2O0babQRjj/FOuXWVqr/NEV0IE8EI5pJeuS8+abtB3A8C6KC/3bNlTWYMBYPbCzpeR+sP7MM1ZrbrD/r0D+rwpAYVoRIpa/9B4lHveJ1kNXgztjVZrzTCSg2TNljC5jk5YNHbWF3FfrLwU4uCPJE3Hvsyxu2qJ5cNXN4qmE8FCDhByHJkYuHtmyMAlSPhuAPWdANiEGXd5whlWmdbbDRd4wCTkHew7wWyMT9O1CxHcqul5X52j/B84HTTKPd0K12FTKgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9xQc2hEBAhtKkyjqkOcDJMtgTE7h4YzCTQUiDGGXtcw=;
 b=W+bo8zEROrz11ZsfUABiY+YLRB62ioafavk1SAq1PP2g7t5lIbU+6qiZQUs5fK8wI1rZGMijKWctZ1XvudoOizHepIcM9XHeOz0TbvEZvJbKBoqpVmROgB92ZpuSZcaH5iAk7EZHLo6OvIbsgdQLmD+KuxEcrnAtUvd8kldz46NjLbUZ6CLbpHwXlvv0LdAc1t5/O29EE9fAJ/PX6B5g8zZ0wVtVoZ7vn0geiZw5+Zs5zh0wto27T3uGNYsgqNeMULBq+rwn4VeAZOthN5lc9XJVYo7L+hbGp7m+wcKMAmzcyFUFzL9Ns7AqZw0mb478hEnCnZRxSrQ47tASL/plBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB5031.namprd11.prod.outlook.com (2603:10b6:510:33::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5791.20; Thu, 3 Nov
 2022 06:19:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::21a6:81fa:3ed7:a486%9]) with mapi id 15.20.5791.022; Thu, 3 Nov 2022
 06:19:29 +0000
Message-ID: <8865235e-1eb5-c97d-59ec-39e125e0bcbb@intel.com>
Date: Thu, 3 Nov 2022 11:49:20 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.4.1
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20221026113906.10551-1-ville.syrjala@linux.intel.com>
 <20221026113906.10551-5-ville.syrjala@linux.intel.com>
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20221026113906.10551-5-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN3PR01CA0163.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:de::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB5031:EE_
X-MS-Office365-Filtering-Correlation-Id: de827631-aaf0-4c62-2a42-08dabd635d3a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8X8ZrD9VlK/xCQ0RPTF3kiBhOyEzFMtxUzba6ZujRo9S3knMATzGs0FgbAE6tTvnYSiYkBgQi5DHJ1gjlLyaV5sqGkL/uU3xISmIElIiviSIjGYgQGfM0gL/wdJ/qc0eJUKsPIm9osfiDmY/oRnYYYMneWMz6q4ZIdkN0tjEuiawHRbZ9X3xReFG8Mf/FVDSWUY1MDb1zGBxqeQpVUwvcvIu4yc69XAbOCPm/n6tRjDL+X6gkLmKMx1SAyHO0PuVBlDu/hEPCz2AmIH52hyibB9TTshQNv8Rohfz7QHoIYRrlk/AxalDPtefr8K9UOoYpCrettnIDNwEj6VQeI1K6jJabcrob0EGEyukk4k3+3aRkrmqWQ8P/49itdx+cK8X5lveW3P7fo6b6s/O/8JvmJX1rW+Q8VYD3GD/lUDzbEjDp352i/IfiWGmNsJzBPTXQRYB5fCdUU/KxRBU5+rrfb5e2dRuC/wm5sht28WDK5nTuZ8OTRCUSkvLCZAhgHbl5qdpsWZM/NRVfqJjqwNuoOGvMdmJb2CzkKEZjzefaIaSL69lMDenX4m083F3XvLd7wOKRMk+G+uXESpFrPuz+mXVPyoM1OeKshtn8729WPoqAzsxZF36I4JlzfyjB9+oJzkglMjfjRVHpQ84Gi2vZUYt0VC9w1ngF3P7UH84fuJUcnLVUWDRyEmhCUerGJaBjb694zY1p7GtAamQNGBZPDS2n1thqRuM+bVEjPQMrAS6AbpiFJ/bl0TXRrFOVAK1L3KzZ7qU9h36P1GBJSDR1J+aEuU10srYWt3YM0tHkDQ=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(136003)(366004)(346002)(39860400002)(376002)(451199015)(83380400001)(31696002)(86362001)(38100700002)(82960400001)(2906002)(5660300002)(8676002)(53546011)(66946007)(66476007)(41300700001)(6506007)(8936002)(26005)(6666004)(186003)(316002)(6512007)(2616005)(55236004)(66556008)(478600001)(6486002)(31686004)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SlgyeGhBSWJBOUJhNzJzTWZjZGJ0b0hYTzRROGZvcDJPNmVNdmlPamFncWxG?=
 =?utf-8?B?U1Zwb3pnd2hrKzQwN2czZ1Z6eWhOYkRuZThqdEJlcEljaVVUTlFkUlRidzh0?=
 =?utf-8?B?TEVDMnU3UFJnOWlaTFMxTGxDdHlTMUk1YnBTR2ZMcmZSbkJORms3UU51ZEdW?=
 =?utf-8?B?VFdmSklVL0dSY1lhTjVZa0ZKUzNlck5NWUZqOVpwOXh0a3JkTkNNU0xjMk1F?=
 =?utf-8?B?SXo4UTF0VUdCYkVhblRjVHZGTlNzNGxSamMyNXZJTXR5ekV3UWZGaXU3L1FG?=
 =?utf-8?B?UWtHdEJYb2N6bEhUcjZ1bUF1V1d0MS9KNUhiWXVwY0FOZm93akNvVnVtM2FY?=
 =?utf-8?B?Um8waGlJRzhjTUJJVDdmNU0yK3VkeUEzMVFhckJkcGxIN0pndWIvdHdQS3R3?=
 =?utf-8?B?SVhYdHhTN1ZIUVFPWnozOHpMT3N2TUFQRkY5VXJEeUVpdVMyN3lBWjlrTGlQ?=
 =?utf-8?B?WE5LNG1ocFo3VzJFenhEdWNtRjhpazcrV1BSRy9VeUFNVSsyS1M3WUgrb3Rx?=
 =?utf-8?B?THZvWFNTZTdvUUQvOXIwcUNNN0hSM2JldkFmclBSWk51d3dBY0F3K1psR2U0?=
 =?utf-8?B?djB1cDNjQWFtMFJFNW0ycVZXcHNIaWdzeGJBNHZkVWU5SmcraDRDY0hac0Jx?=
 =?utf-8?B?SkRUYnV4NENWZFcwSE1BdE5QN3dlblR3MkFBMmVOMU13Q2tjVUdTYWcxS0p6?=
 =?utf-8?B?c3gzR0ZNSlJ3eGdZRS9ra2UrWjl4RGxxNENVTElSZEhGUDlTZk8wdWdvK3o2?=
 =?utf-8?B?VFFlVDhmd3JGNEJFL3hGKzd5VXd6UWVpVEN2cHBheVN0VmlDNzFLWGxLQzRI?=
 =?utf-8?B?Y2JOS3YydWxHcWJDbkErSVF5ZUlvY2ZjYVBMVzJIeWpDYnU4SXdOeXdDS1JZ?=
 =?utf-8?B?cjYwdWNPV3Rad2pobDE5SC9aV1NUaXhGci9jaE0rSG0wdFlvQUhYL0xGdm5q?=
 =?utf-8?B?d0FFZEx4U0pkNTNtaEpWWEUxRzhhblNCaEM3bXhHeFhkRS81V2JCUzYrNnd2?=
 =?utf-8?B?ZDJuSGhKTjlWNFZGOVk5cEZya1NrOXFzUHZENGcvc3pyS1AwQkVzRXZzVXhD?=
 =?utf-8?B?bmlPT1J5VUFaT2FGSmg1UnlUMEJoaG03RkVPcUZ6T0pLU1lhb1JSVkhJVFpS?=
 =?utf-8?B?bkZ5ZmhwajUvN3ZvYkZmQkFXa01ZdTNweHNZazBUUFM3cEIyQ2prbDVkWHE3?=
 =?utf-8?B?QmxDcnQzWS9yWWtlM0FHQlI4SVdFK0p5R2xxRGhWSDNBRlBvS0s2ZEllWFRx?=
 =?utf-8?B?dzRwb2RtcFdId3RUMS85U3hNclpJbDV5MEZxRmdUN1hNcURJdUQ3T1VZN1Fw?=
 =?utf-8?B?RjJRYlUyUUlzS3ovSzJ6RnZ6SEhERUVSZVQxSmc1UHlxVTZPUkkwM0JxTFp5?=
 =?utf-8?B?Y2RpNkNIVGJyS29PR2VFbkNHR25JUnIyZnJtei9GUC9vcElmZTNlZ1lOaGRP?=
 =?utf-8?B?cmtNdzA5ZytvQ3JxSkVSd3dTN0xHUnNPejRiTForQWd2Q2c5ZEZNTFNTY1R6?=
 =?utf-8?B?STJWUUdQR1NSeEx6bWcvWE5LRDYreW9tSit5ejdqUUdkMGRxOUt5bk9hL3d5?=
 =?utf-8?B?d2xuT0tJdmVqcjVsdkY2aVhnY3l5WFlRTlVNUUpxRjA5VGYzakxrSlVGN1dT?=
 =?utf-8?B?L21zMWcxeDJramlzU28waWlDREJ2aDk2UUw2TXJPa0pkVzI4SEVqYlNCVWdO?=
 =?utf-8?B?eGV0V3gxSzE5SU1qZXlLM2JlWUVXMy96dzM4QVkvc0tEVExZSXJ1azRzdlF4?=
 =?utf-8?B?NURsdUlRNGVnNzBRYjdoV014N0lNWkUvcGF2S3dtelNXQXd1SHF4YmNhcW5F?=
 =?utf-8?B?NTNHbjE3ZUkxMUNuUEJKLzcyb1VyMTFSQXVRbkNyaS9XQ25jNWYrdnllWUU4?=
 =?utf-8?B?SVhhZFVkbklMZUtXbExnSFR4STJkTDJUa3pOVFdhTFl1emNQdk1SRmtQRmJP?=
 =?utf-8?B?aWpjaW5EeHlJUTNMZzU5RXFzazN1Qm5kaUEwUk9IMTVHN0hYUWJKcEpFUVBB?=
 =?utf-8?B?M2Z5Rmp3UGFwV0FVZWhPZnRXWDVPYkJvOVJFdVBNTmYxaGlXY3Rab1NyQlhK?=
 =?utf-8?B?eHVUWFYrNm51cTNIbXF4eTdpNTZNbmRrdGJKUHkzNURHaUtRMUNuU0hxREwv?=
 =?utf-8?B?ci8xTmF1NEpJeTU4T2Z3S1BlZWVXcVVjMEtNZzg0akRNK1ZGOGtwZ3JIL0pN?=
 =?utf-8?B?U3c9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: de827631-aaf0-4c62-2a42-08dabd635d3a
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Nov 2022 06:19:29.3612 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vWmWBJW9J5PrwpsHvlcaNtB96naGYvrvGGysqIw3wJcQLaGwoQEnmGmE8GS7YmOfaS2E88DxYsHh/oCRBKEF2Cm030y+ZtxqNhAX69Ytr9I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5031
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/11] drm/i915:
 s/icl_load_gcmax/ivb_load_lut_max/
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

Seems the offset is same since IVB.

The Gamma correction max seem to be defined since IVB, but this doesnt 
seem to be used during ivb_load_luts, but only for multi-segmented gamma.

Is it that the default value of 1.0 is sufficient for other platforms?

Regards,

Ankit

On 10/26/2022 5:08 PM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Unify icl_load_gcmax() with the rest of the function
> naming scheme by calling it ivb_load_lut_max() instead.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_color.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
> index 415e0a6839a4..e73e6ea6f82f 100644
> --- a/drivers/gpu/drm/i915/display/intel_color.c
> +++ b/drivers/gpu/drm/i915/display/intel_color.c
> @@ -935,8 +935,8 @@ static u32 ilk_lut_12p4_ldw(const struct drm_color_lut *color)
>   }
>   
>   static void
> -icl_load_gcmax(const struct intel_crtc_state *crtc_state,
> -	       const struct drm_color_lut *color)
> +ivb_load_lut_max(const struct intel_crtc_state *crtc_state,
> +		 const struct drm_color_lut *color)
>   {
>   	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>   	enum pipe pipe = crtc->pipe;
> @@ -1028,7 +1028,7 @@ icl_program_gamma_multi_segment(const struct intel_crtc_state *crtc_state)
>   
>   	/* The last entry in the LUT is to be programmed in GCMAX */
>   	entry = &lut[256 * 8 * 128];
> -	icl_load_gcmax(crtc_state, entry);
> +	ivb_load_lut_max(crtc_state, entry);
>   	ivb_load_lut_ext_max(crtc_state);
>   }
>   
