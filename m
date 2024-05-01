Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A00C8B8443
	for <lists+intel-gfx@lfdr.de>; Wed,  1 May 2024 04:18:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E04BE10FE03;
	Wed,  1 May 2024 02:18:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HFRi8c0k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A767310FE03
 for <intel-gfx@lists.freedesktop.org>; Wed,  1 May 2024 02:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714529913; x=1746065913;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=nZCjQSLVDM3Wmec6Ztra664dyFRPJL25jCsi6AGpu0g=;
 b=HFRi8c0knWxo1F32JYTTf/iV0czyKwNPYjoiLrqs/eKNDdU/7DfvYlTh
 9TXXW2SzS3e+4Yn/RisrIOm1N7kGjO1PkxJzkSyd3ahdCpzqiZII13ttK
 B4zKpWT07MFf4IkHsF2mBaPK433lgFJCV5LLIMtGmbLXolNqPfIqqt7gJ
 HGstKqgOoksFQOjD3kirxWr8rlmE9eEGaxhFfdPgGuIu1/3URpTGAAtKG
 8gu2lXtxrkE9p+XbjUkjG6Rcp85h9y7W+VMObc2KqblMVDGzG7IiSQ0qV
 2OGxtzd15klUa6+/H5ZQSQ9uk7aczuM7sMTEJZFiHp39/vnhneJVZlgLb A==;
X-CSE-ConnectionGUID: pM3fp0MbSPuX+dJHXuxMdQ==
X-CSE-MsgGUID: 0wNL6rh0TJmUBs463JUkmg==
X-IronPort-AV: E=McAfee;i="6600,9927,11060"; a="20877642"
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="20877642"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2024 19:18:31 -0700
X-CSE-ConnectionGUID: YYzmAihaSkm+oxzF2Ol7nA==
X-CSE-MsgGUID: iTlJeHOCTpq6d6cajwLGKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,244,1708416000"; d="scan'208";a="31452220"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 30 Apr 2024 19:18:31 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 30 Apr 2024 19:18:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 30 Apr 2024 19:18:30 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 30 Apr 2024 19:18:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PRs6f8ePJYVPkzCkD4OZbPI10nT8Tnxi9W9wVuZ7mZDZs28OG1+7EaHpmWrl4mGbo0eWRsDdQSm8nqv7vGMK293OlIKH19giJOLEpFP+pMY4MD0iy/2siNiH9rQvbc9/Mb9YgTnmHE9abq46AxoEAzt1Ps5xn1cJVTktcia/V13ekVPoP2EOE9W1+EKm/vQnVzhZXbEV/+QHKbPhNtkyulIwvrASBs4QZEySCpIDjU1OW1TSrzg+G6U95TD9ieHJPi6zhfVm41yU3tWsn++ZbVBocKbenh7Lu9OEiwE40Bxsd/tXcLqOGwOuDZjEnbU2kbRxgA8B/9Y0Dh2HagLdmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pm91yNco3YnJDX6lMLmsH3WnIKm70hYWCg1cSyRS56w=;
 b=EIsqAN040iIRN2Yrt4v04+CzX9GMSLM8r2mgnUWxbK6MkXe888tg4oqed8PzUYZ0G/cHgKKM6kz2lplG3d4N/t0co+1w+LpSNnlZMF8pObzbGgNQgyMM5N3l/kMuCrwg9QeYiajW02Gxox5Npe4xUn7IOeUEGZyGjx0GXahzlKTHHbXvPdenNJpcqgoL5ylVVdJa4g3+jwWHcb1XkYXQvylDn/FxWN/f2msiSybfTV/zKZj1iimSiczRmgwZUBey53/LAsuhyxJ5DC7cxK+WvLcZ2Esy/TpvsKaqgsg8fVCCaOctJm0MwozG6lCvbl3zzogwShzInIdAMmWhgpvBhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA3PR11MB7653.namprd11.prod.outlook.com (2603:10b6:806:306::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Wed, 1 May
 2024 02:18:28 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::cf6f:eb9e:9143:f413%5]) with mapi id 15.20.7519.031; Wed, 1 May 2024
 02:18:28 +0000
Date: Tue, 30 Apr 2024 22:18:24 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <jouni.hogander@intel.com>
Subject: Re: [PATCH 05/19] drm/i915: pass dev_priv explicitly to
 EDP_PSR_AUX_CTL
Message-ID: <ZjGmcO2B--qp60n9@intel.com>
References: <cover.1714471597.git.jani.nikula@intel.com>
 <66ec1f81be49c87cd9613ba052ce6fd50362d0e0.1714471597.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <66ec1f81be49c87cd9613ba052ce6fd50362d0e0.1714471597.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR03CA0025.namprd03.prod.outlook.com
 (2603:10b6:a03:1e0::35) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA3PR11MB7653:EE_
X-MS-Office365-Filtering-Correlation-Id: ea453c2b-ba60-4185-6e7e-08dc6984fd04
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|376005|366007|1800799015;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?lu8clD/U68cIfiWUCL0Rw5dZjl8YAH5PWxnfzzHb2fHniL7BBlPhvIREY10c?=
 =?us-ascii?Q?QpkRFRgrm1CncewD07ZbhGFO60wnMXYBr82ft2O/Xu2zw8eocBFrj5mYRZwO?=
 =?us-ascii?Q?lxYkIWJWbICJQEFVQiCiP25UbBpfjVAcYa8p/gF1TXSTf6ztBoIP4DBlCGPT?=
 =?us-ascii?Q?aGsachyw+eceiXwKan8NU0UTUucWkJeNioF+207Kl4kSsKjiUrvA99gYuIyj?=
 =?us-ascii?Q?AfVI5jEFnLJcV4rz/4SQUacql5XODsm9fhPVhlodgsWqMBCTe1JbMgFG3pG3?=
 =?us-ascii?Q?KuM4GrPSMzMNQ6gPQ0KdjHqLW4KQsMCtaQQkXnrzqeiXA5BPANk2VHhQ3Oee?=
 =?us-ascii?Q?S2GlN6+5D3zAcy9VUPkIsHvorNheNQM8C8kj0yQd47Vgqm1/8hn/8Lw84ba4?=
 =?us-ascii?Q?ug/Sd+q8bPSksVTrTR+dtKexSJwI5eI5FbgxSWB6FcW0W9aDhPfDNYwN1PfT?=
 =?us-ascii?Q?SB5j9y8mV1981vA8Ut5jcyKkg9MuJ3gP5MH+XuVjO64fWTMBF2Tn2zUMVAfN?=
 =?us-ascii?Q?ylSgm2xiNrVM86GbFGAPq0ktrjTxMDG6IeiPy+7QShQDtwBvW0GxSPclgBMQ?=
 =?us-ascii?Q?2XqFl4hmXv+PqElCFc6Eb70BhAcna4Zr6mvSN1QqXawSsuWdMRLA2f7yq+1y?=
 =?us-ascii?Q?GE+u5+6QsTDh05elrt4HfJ5qL0bR7EtLy0qrC5sHuaY2kXk4CbNoabmUuC3h?=
 =?us-ascii?Q?yWy27EBNFHJYJuoJBcKSFRRSdScQkePFeyIvNopGfihvcGRO2yiOt6C+wg1V?=
 =?us-ascii?Q?hsWNVcXzjzXFid4ZuFgc/Rv6eDapENmjiapkxUL90UTXLrUGieMeygsjzH7r?=
 =?us-ascii?Q?ehfLwc9RBNnXlVbqVlZslCQjONYtZc+5Qp3SOvsbSDUAR2qTRTvtfM8GkPW+?=
 =?us-ascii?Q?Hi2H5lqeKfXf+hhBlHUBqN4IeIaAfYd1AlKZsyx1neUV4aaySmRhOxR4+VY0?=
 =?us-ascii?Q?K9QGEr0s8LeTDqZJLOEDZu+2FOYJ55DcQCGHivmiGF98LUBWldrOQdZjc3Oc?=
 =?us-ascii?Q?bNNfMyLktjHojRzygMeWarpppG4q+XAP4J5H1ER9Bq5dZfyFBLa1tC7Rzym+?=
 =?us-ascii?Q?LBNcam6RZFjk+mex+1InuKAVCXdC/2FSZjtlHGXmRYn0XnJ++jpqPEpkKC42?=
 =?us-ascii?Q?S0URaW7h4bFFEYL9LsYO5Tk0iWqUwu9qwmKijmy6R64ItKCMPENtJGChB2JQ?=
 =?us-ascii?Q?Dm230LkL6e2MV4gLQIWufiNOKMZPJgfNTshydWr4sSNRfKBpuWLu11+awX32?=
 =?us-ascii?Q?M8WDOqNg5uVsv0qETkueDqH4iwoA+GZLb1ri0rkreg=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(366007)(1800799015); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3gXqEAFtOrN+AueApzgk7QQU+GVO5M5vVcuPHT52rbPy3WE9gcaxYlqz5odw?=
 =?us-ascii?Q?Sl70umNO05oOCzB89FSj+/++K6l3JITa2n3yEq0e9bZ1cH2uAx0xmYa/Z0Bm?=
 =?us-ascii?Q?G0gRXqZhZnuMdrqccRyIy0TTlo7BiUVKB/3P95iXDiuH8CVrnIERJITPmGk7?=
 =?us-ascii?Q?wsPaqxIRsGETvACSQJqjWJKJHPYgwhrsn8v7P3Vhgznj8XoBC2TZ3biXCYje?=
 =?us-ascii?Q?cdo+Ut+iM4i8eIo19TvWWdpfsjlHXrIslgwtR6SKelfmGXoXt91cDn5Fn9LT?=
 =?us-ascii?Q?y4zuKk9PdBPIYZkgj3oVwbA9CxKdfYHanX38gvX2vgmyakMWTIvZiolKI0W8?=
 =?us-ascii?Q?nrcDfVUfCKgUg4ZjnfsdoYowgnkK9UZZTIPk5Ww7ifZ7xaeXmkV/H+2BB58y?=
 =?us-ascii?Q?fQhYpDnjVGifNsWdy18A7Y3+0TzW1BGRLhDUEWQ8wVoaHyZCL+S4oO1b5eUO?=
 =?us-ascii?Q?eqk9mfNOl+PMEg56QJW/n61jy5vgqX0P1ZnQj41DJZXJuXgdt4QymsDSdPfk?=
 =?us-ascii?Q?7HGRIHRfzvPK7xziv8076/2u9yi/EFP/klZzDrFAXfy97+m19pJPw2ZCKGay?=
 =?us-ascii?Q?ql+QimhyMWPW5rMeGud3T9Nc9HUN2YM6fNndGydEmRyrtJwucAlN48q1TGCN?=
 =?us-ascii?Q?3K+2yAFv+1Jffop6QB2Oc73I7tBmtsLCsv1lKnRXyT8EfoIKb0XvFWCzC3eS?=
 =?us-ascii?Q?RLxaaw6QwSDYSFHKYkWZVHwEl7mZUgEyosEXWnJQccXcX0Z99zDt1TlhbaXz?=
 =?us-ascii?Q?1EoBaqM7pst3DUSJLDueVOi8+g8+yICkV+Zt38E2Z8DCI7ra6Mv49rMqcgt8?=
 =?us-ascii?Q?ZYsv3fXA4rwn8tg0zILLSy5UshcU0t/EETOo/i+XMSteqevKwdttqJLUFzSW?=
 =?us-ascii?Q?2Yis8LQABTNhMPKW5FKadMDtRk5UTGYd2/v2IeXbd7syX3C71B+r0jtolSAM?=
 =?us-ascii?Q?vmGF8bUv29c2FnoGBC7L/AL9lEPpk/DFuIDdR3LrfTfyK6s/W5QOEyB2UnWg?=
 =?us-ascii?Q?6E251fhRvOmWTYAzGhn1finXVDPo/LPXSo26SBu81OffD+xt89faiSGI+2tl?=
 =?us-ascii?Q?HR5YJHSK0fwssXzQPN0nXCCOPMNAep7rEwMfxsnK610VJ4VIBQYQJxB5oi3R?=
 =?us-ascii?Q?M2fOOCVU2Lq76uebApTL4rG8/GAKuqNUmHUUPcxdMLCfbCL0M+zpOaDNk+V5?=
 =?us-ascii?Q?oZ9EMrsMqJQGzpHggnDgGvI1iF4q8Yc6ZZdZKyIuAnRGkmJhHbrOnEpxdzOY?=
 =?us-ascii?Q?TvLb8BNEWoDF5P9cziISRqPjIVUne59N8/cfoxv+stmjPbBbXxMCHu0K21UU?=
 =?us-ascii?Q?6vyEDSRtbHhN1dr0WKU1DPG2Ft1yTx1bJ7Smzz4tJzp+1qoh3IEHCmmv3It/?=
 =?us-ascii?Q?Exd1A13Palj6WE9v1l1jsXwh/4LzrvSQ8Ia0WPV93QvuToKCwzkpVpJxcsIU?=
 =?us-ascii?Q?p8VG7gzr4ajuyewlWSCVVVw+5KvwWU/cwpLvHACP0Ez96cg1Z4B2ZHac76/7?=
 =?us-ascii?Q?Q857a6SCuKaF5sL70Uac36z0++1NlrFHupAqSuP9/R1FrOdMkWd5Rv70IVir?=
 =?us-ascii?Q?4iF3Ia9nesMxLKOpNIOb03pmPB8g/zAnKFcVH3HrBGj9gQNjQLc9GJbcfUO9?=
 =?us-ascii?Q?6Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ea453c2b-ba60-4185-6e7e-08dc6984fd04
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2024 02:18:28.4229 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: PP6DuaJAJi84HuRHDxmckZ23PgfB1xleo4Dc+emP3DiJAhjJSjaEwmdrKmC/w+H8KyDX03MyotShsgRF1VJmyA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7653
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

On Tue, Apr 30, 2024 at 01:09:59PM +0300, Jani Nikula wrote:
> Avoid the implicit dev_priv local variable use, and pass dev_priv
> explicitly to the EDP_PSR_AUX_CTL register macro.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Two things crossing my mind at this point:

1. perhaps we should have grouped by impacted file and all these psr cases
   together?
2. then perhaps while doing the whole file we could already do a
   s/dev_priv/i915 on those impacted functions..

but well, it crossed my mind, but I'm actually happy with this easy
review and perhaps a last full sed s/dev_priv/i915.

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_psr.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_psr_regs.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 0b1f7e62470e..daeb1b65a2e5 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -323,7 +323,7 @@ static i915_reg_t psr_aux_ctl_reg(struct drm_i915_private *dev_priv,
>  				  enum transcoder cpu_transcoder)
>  {
>  	if (DISPLAY_VER(dev_priv) >= 8)
> -		return EDP_PSR_AUX_CTL(cpu_transcoder);
> +		return EDP_PSR_AUX_CTL(dev_priv, cpu_transcoder);
>  	else
>  		return HSW_SRD_AUX_CTL;
>  }
> diff --git a/drivers/gpu/drm/i915/display/intel_psr_regs.h b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> index 5fd4f875ade0..a4f785bcf605 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_psr_regs.h
> @@ -86,7 +86,7 @@
>  #define HSW_SRD_AUX_CTL				_MMIO(0x64810)
>  #define _SRD_AUX_CTL_A				0x60810
>  #define _SRD_AUX_CTL_EDP			0x6f810
> -#define EDP_PSR_AUX_CTL(tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_AUX_CTL_A)
> +#define EDP_PSR_AUX_CTL(dev_priv, tran)			_MMIO_TRANS2(dev_priv, tran, _SRD_AUX_CTL_A)
>  #define   EDP_PSR_AUX_CTL_TIME_OUT_MASK		DP_AUX_CH_CTL_TIME_OUT_MASK
>  #define   EDP_PSR_AUX_CTL_MESSAGE_SIZE_MASK	DP_AUX_CH_CTL_MESSAGE_SIZE_MASK
>  #define   EDP_PSR_AUX_CTL_PRECHARGE_2US_MASK	DP_AUX_CH_CTL_PRECHARGE_2US_MASK
> -- 
> 2.39.2
> 
