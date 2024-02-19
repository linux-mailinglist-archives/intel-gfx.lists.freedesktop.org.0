Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DB23285AD03
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Feb 2024 21:20:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BF6510E188;
	Mon, 19 Feb 2024 20:20:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="idHRz3u/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E926A10E188
 for <intel-gfx@lists.freedesktop.org>; Mon, 19 Feb 2024 20:20:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708374028; x=1739910028;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=ofYlzeGBSkBxonRFdrrw+1kwnIBYF05eKqNFBCwk6kM=;
 b=idHRz3u/bXPjdE4ny5mTzU1QcbimTGKGBg3qC1ijfCGRe6vNZJVhzyF9
 GG9FA9XkyBhbimyPWc3aogDTlLKc0f93HSM86o07WWIWLHnkGMfkdVGPA
 JnXORAJrVBy/SkiDXekvU+MnZllGKxyQvhHQi7vtogBnLL9rqD//bir4U
 YkM+/V+oni5K7aX2eDR2Nfw1l630GObQSVmo4raqGf7GyYSV1/CcrBfXt
 QyyY+d3KxGquqvwvAAg20fq4qGVHafrNoY2j4G6L9qYlZvjpb8kJexhsq
 QLUAC/9e+StGeUmf8H/qls5FkozEJ0QiV7y9ev55TU9dtxbYsR/zntgmM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="27909701"
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; d="scan'208";a="27909701"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2024 12:20:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,170,1705392000"; 
   d="scan'208";a="4613910"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 19 Feb 2024 12:20:27 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 19 Feb 2024 12:20:26 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 19 Feb 2024 12:20:26 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 19 Feb 2024 12:20:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nlVAFBKrgC8PousCmX6FnSo1oYpkDIHU9H1SUVfyFlzQ/HbU21JJpXm/fJI9q3dDcIgKWaOYAfsmoe/QZrwVug4v1kB7oc91c40Ns9Ls56HZeMzjkqmxDjzeUtqNvTj/FhXUSmKyzeRYpXBbJVBZy1IP+qwOCD/WfCovQe5st/yCHVsu5+Z5jFjvB9xKflC5oNQlc0jqROJChTQjGWr0FseOC3QCGsk2EgooxAGQoJzMCOF85DPlj3C5rxcZQ/K13nLpy1TBfQ1kpLNSEZvg4WlBcuL7Ig2GzkGVXr1uiz9t8wm1XeBG/lXnC7K9Cvn+vMs81otDw0VPrXcbr3ESVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1Ht8cEqMoAlzYs/CojdTzn5hg9SVXktz5O0NZ60CMdA=;
 b=hbwHA9thgoi4uzbFxvXjLtE1jtxn98tS/6AGYYVPnhTCVa5MIAWccDyDKveokhcyzGX6dScU7Mc2x5meSs8ODRDxuZZe6wchI/GlxTHk2y0nciHNigUME8g2cp1QDQ4W1XVqkubo3R6qKVEQaFS0+UVFK2nG3a4tSVYoZ3aVnUY9JRk8IxUTuBeX+eM+ncar0yt19ero+GGerZm9LCIyFN8ecNQVDd5C4q5mGBUvEDEopnJrHhzJmTi+TOATNgmAGJm2ful4+udhf3cgnqaInWhzUbYdFo8wFgTDTdEQKtbf4qGfieRazCs7RhJsaSbW3IkBUs339v1aw2FeEfVJRA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB5261.namprd11.prod.outlook.com (2603:10b6:5:388::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.38; Mon, 19 Feb
 2024 20:20:24 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::a7f1:384c:5d93:1d1d%4]) with mapi id 15.20.7292.036; Mon, 19 Feb 2024
 20:20:24 +0000
Date: Mon, 19 Feb 2024 15:20:20 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Bas S <schalbroeck@gmail.com>
CC: <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH] drm/i915/display: Allow tighter hblank span
Message-ID: <ZdO4BNYXKo9ZKR9J@intel.com>
References: <CAAuj=_fEjHCsGYzdA20LvP_292oaTHEC4PE4uNFdWHE4UkBMJw@mail.gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAAuj=_fEjHCsGYzdA20LvP_292oaTHEC4PE4uNFdWHE4UkBMJw@mail.gmail.com>
X-ClientProxiedBy: BYAPR04CA0029.namprd04.prod.outlook.com
 (2603:10b6:a03:40::42) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB5261:EE_
X-MS-Office365-Filtering-Correlation-Id: 0b8f5de0-b5e9-4de3-0bb4-08dc31883441
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QFIdernSsjg5hb6/UZ8KOHjtxxI+us5sgwJn77kVsjxTzisnvASNygsw8LSRdUAjMIyuM9ge0WNQWX3xjJ70pDbPW3b+h4DR+XpIyBCECQK6lrpr58kxJTSJurrnuK46JrJsLK/YR8aoN90vDR5qS/+vh4DS86pGgxMp3MX88p9PkbyjCD+pulpX0nxbdb0blS7+TR3wbtmXW6DAuS+NGUgKFe6gHLL6TS1zKGopV+Lgcn1l1gdpQ0fEw8E/gLhXT/GiWU2p2Ke8Ae5Tr32BXwhbHR5rQwktayAP151tRFi7X1LIIqrTGGumMpcHDJWhhQclXImA0XuLXKp1OkvBBbTHXhAs1BWDI3xAuIUZ29XApOFcE8+hkFcQS+avcYlgiODnfG1LaxQGhwy2ocGxKMxFWXxi+7T9TZJ2TYd8lrhmc1jZfx3MvrptqyTJLRICq1zOijTi0UVNl5jKo19C8+BmEzzMPymL7nEqAUeXMkCiLAaHQ0qfHKOsaszAfZlH+mnm4rfvNv7526bDuVBeqw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?B89pF8xWJUEa5QsqtpOhAzk9okrq+bkpU5rpoqj93BDII1m+R48SAxCbT5?=
 =?iso-8859-1?Q?9gyHCPjMfxFeaJrRXeupMVSqlMORu74uH5j3tEuULM8UH4bEJGe9I66Rdb?=
 =?iso-8859-1?Q?JVo3Pyrmc9jg4OT8y4AC7V/ao6H1A/KjPWIloQkQHbNIelvdoz8rL9kF55?=
 =?iso-8859-1?Q?mkC2uX+1FK10tRUxfnZSxSOarVroOGzpMpD6lUCIXsHoMdsrOK8QP7fO3d?=
 =?iso-8859-1?Q?5vGiLZAGja4hD+liDNvAXPYFOILYI3yA/0Ol2X5VPJfggxC0MOHKgMnY6s?=
 =?iso-8859-1?Q?WooFZHH9gggdxgV+1B0DVq5le+03cpegJgMBkuQMvAXlYeNVE4PmAPzsxE?=
 =?iso-8859-1?Q?LABBTeltgILE5X0Sm5xY58eulNSfBg4YSEBqHBGAIV+kVhtvGFAVqUFPI5?=
 =?iso-8859-1?Q?DXjtgn/DJDE3Zs6MGILC/ZbLaMfg768s6LR6eFaoCSlzkgabiaI6kyOg7m?=
 =?iso-8859-1?Q?9tfkLfsZGQQMMA89BgpiGDTpU+CW/qE+rFZHuj6+6PNf1hbiuxbxc64IjT?=
 =?iso-8859-1?Q?U3KhV5KzWfimtcqvhtI839Gv1vkcU7sDLR1DafdUSOcQsOxMRz79S6b/N/?=
 =?iso-8859-1?Q?cvfSmjIRi1jd+fIx27wuYRhpE7y/AIQBeaz+w/9clDiipX4DspL24eauZ7?=
 =?iso-8859-1?Q?FhEVdVdUl69vFrvrQGiryrE9A5yUY/hIntsqulE2BZqbb7bcnFn65opoaP?=
 =?iso-8859-1?Q?eXQIOttyRXQ8XW/ejdOcMxBbbwZJpCI4t2BI4ElF3cZ+BVV7qeeQHEyDky?=
 =?iso-8859-1?Q?bSofMz78qOnrnF2a33IAo6Q+50Z0euzwvQYXO9L1FUKfMZ9VNlQOjfAR/G?=
 =?iso-8859-1?Q?kBruXceZjtKGeg/4+X/+cgOhDXBw6gh1FWQCrF8WHJ6OsCaOUvAWWQT/Jb?=
 =?iso-8859-1?Q?8fgFInIu0RHoi2QOe+vu+uFiJvNYR/E309IMubMrWwkYyCtrUDtcZXlHgU?=
 =?iso-8859-1?Q?RDMJ2yxQTRgoz54ZYJz/SKUPH5rjcJcQdrM1p8oz9ETS/Huf8MsSoagJU8?=
 =?iso-8859-1?Q?DAZDCQXoQta0AV3tas7VK9/pizAsob0nuf6d5eJOtOxWZDXqXc/FJcyTSE?=
 =?iso-8859-1?Q?7rLKpEPbX75t1QoXcF0E474FahO2QHMDKB/00igFGdLee0hKsnQwA5IdTX?=
 =?iso-8859-1?Q?YCGrKpZ+jpINZjuY+n7GpagpHazB47AEn0DQPWIRREHGKGHd0tyY/7wvcw?=
 =?iso-8859-1?Q?x8lZrY6K44pvfYGjeLxwTVYBW/DQrstIPFtQnO0XHyBLx+RFVXtkQp2W6i?=
 =?iso-8859-1?Q?pQdBM42+p1SpiBtWIn+2X63aGtxAAcZaU7CV+hlimeW36xu/65uCNenEvK?=
 =?iso-8859-1?Q?qrBEHdd1pEHxyIrP6w+bSz11wbkJjSRTxg82DRQQHKYfFsPjTRbMpG6y70?=
 =?iso-8859-1?Q?3ppXrWBHo1WLXk+3Ta/iDNjC2QfUMdrwegr+4p/ySKW4m09HxcFDYkHQEo?=
 =?iso-8859-1?Q?trlyb7lT+sQMJ3Fm0nM8EgaeEGxWliIg34KCt6pKLE2LShfd0I47a111ex?=
 =?iso-8859-1?Q?1S3Dfg7oBNaW+MPssH+hQihJW9fjHPuJZxyfkVys6WPbuo8000LhKGlJp3?=
 =?iso-8859-1?Q?dUaTzef3fUV6+DQqLDe3GLbR235hlr0iPIAiXmxQyKZ0iE1abogc8vXYo4?=
 =?iso-8859-1?Q?QVg3rCSpOQqWfl4JEB7yLXRFybi8OX1e7E?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b8f5de0-b5e9-4de3-0bb4-08dc31883441
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2024 20:20:24.4013 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: eFPcROFQv8SksYDoIBbA/RZlSZIy0R9T6UIwfdSJlcG7g3h0iidqHxANZL0oRJyiEIB1ukQdglBiZxta2vGBig==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5261
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

On Sun, Feb 18, 2024 at 07:12:24PM +0100, Bas S wrote:
>    I ran into an issue with the i915 driver not being able to drive a display   
>    with this specific modeline:                                                 

Could you please file a bug on this?

https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html

The limits below are per platform/display-architecture and probably forgotten
to get updates for newer platforms. But having more information about your
platform would be very helpful.

Thanks,
Rodrigo.

>                                                                                 
>    [drm]] Modeline "1920x720": 60 120980 1920 1932 1936 1948 720 723 733 1035   
>    0x48 0x9                                                                     
>    [drm:drm_mode_prune_invalid [drm]] Not using 1920x720 mode: H_ILLEGAL        
>                                                                                 
>    After some investigation I found that intel_mode_valid (and in newer         
>    kernels, intel_cpu_transcoder_mode_valid) returns MODE_H_ILLEGAL due to      
>    (htotal - hdisplay) being lower than 32.                                     
>    The modeline in question indeed does not satisfy this constraint, as         
>    HTOTAL(1948) - HDISPLAY(1920) equals 28.                                     
>    Changing the driver code to allow for a hblank span of 28 pixels or lower    
>    resulted in the driver successfully rendering to the display.                
>    As such I propose this patch to allow for a tighter hblank span.             
>                                                                                 
>    Nb: I am uncertain if the hblank span of 32 pixels has been chosen           
>    deliberately and what the side-effects could be of lowering this value.      
>    Any insights into this or alternative solutions would be very much           
>    appreciated! I also considered introducing a kernel module parameter to      
>    optionally loosen these mode constraints.                                    
>                                                                                 
>    The referenced modeline is present in a line of ultrawide signage displays   
>    and has been known to work on other graphics drivers/OSes.                   
>                                                                                 
>    Signed-off-by: Sebastiaan Schalbroeck <[1]schalbroeck@gmail.com>             
>    ---                                                                          
>     drivers/gpu/drm/i915/display/intel_display.c | 4 ++--                       
>     1 file changed, 2 insertions(+), 2 deletions(-)                             
>                                                                                 
>    diff --git a/drivers/gpu/drm/i915/display/intel_display.c                    
>    b/drivers/gpu/drm/i915/display/intel_display.c                               
>    index b10aad1..f6aba1d 100644                                                
>    --- a/drivers/gpu/drm/i915/display/intel_display.c                           
>    +++ b/drivers/gpu/drm/i915/display/intel_display.c                           
>    @@ -7745,13 +7745,13 @@ enum drm_mode_status                                 
>    intel_cpu_transcoder_mode_valid(struct drm_i915_private *de                  
>             */                                                                  
>            if (DISPLAY_VER(dev_priv) >= 5) {                                    
>                    if (mode->hdisplay < 64 ||                                   
>    -                   mode->htotal - mode->hdisplay < 32)                      
>    +                   mode->htotal - mode->hdisplay < 28)                      
>                            return MODE_H_ILLEGAL;                               
>                                                                                 
>                    if (mode->vtotal - mode->vdisplay < 5)                       
>                            return MODE_V_ILLEGAL;                               
>            } else {                                                             
>    -               if (mode->htotal - mode->hdisplay < 32)                      
>    +               if (mode->htotal - mode->hdisplay < 28)                      
>                            return MODE_H_ILLEGAL;                               
>                                                                                 
>                    if (mode->vtotal - mode->vdisplay < 3)                       
>                                                                                 
>    --                                                                           
>    2.39.2                                                                       
> 
> References
> 
>    Visible links
>    1. mailto:schalbroeck@gmail.com
