Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0A6E5966C1
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 03:29:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4798410E2B6;
	Wed, 17 Aug 2022 01:29:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8411510E29B
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 01:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660699745; x=1692235745;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9EDvrDgl+TSxa203z0HmLkpfLQFzGO+X/4UlGipBdA8=;
 b=EtY0rSlkxqgxENsZqs9Oi4Zy32EYml4KSZqT/1eNg4ZmsWlCnk1CC11S
 tzA2xzOGIawhqusy60qyux3CAppMYS/suhEyERWVetzf9EFmlM1DFIWsG
 ZbHJBkZ7CRc1/tUrFn+9ZljZTEVPP9A5xj3eTVzDldgwjwrWvfUukkny8
 1aF8ch2ufhWq4QeJMOfojcbrwFAuLVPys285+BT2HjCGzFqrYC6tCVhzU
 RS6ATS+QqbLlwnjC4lziDhCxNzxK3RdpDpb+oUPj1L5JWKBZD8rqC9giF
 Abets0MfVyLb3WO6n9Rcmh1Owv+6wB/NuKitAjmA8IcDQIUZ+0DbULZPQ A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="318375988"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="318375988"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 18:29:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="710363825"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga002.fm.intel.com with ESMTP; 16 Aug 2022 18:29:04 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 18:29:04 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 18:29:04 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 18:29:04 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 18:29:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WWH6xRnWbByK8imTIWseEBL1v/LLdZdn9Z2uwpVQowT9UlY5PDr4hYFBg0mgOFT9px775E0gRfi4dkQ4EH7XaISbceVLoeGuDFGhO7hooZjvIGZ2DmjnZj44WYo/OHEASafcGrztaIWFeb3zUDpxbzpAPS7QXn4iORXBQeFZfkSeTBgHDub4cdMiytd0fxGxFlpdFm7EJAPJ3weix9oCHmYQKHMVKp83kP0WlQC4UjcVt5SR+qd8c0HHbPgKsYqmB1IjwYWNYabf39gawb61SwBuBQ+13XYiUHcsHyvyZNBQjsaWzN/1kpE9BOrbBs7I7b/ezkseZENiHAz/zzevlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gwDY5Y+eBzCym2bRjb2Sd14OtdIx+DgZ0p7moJOvnBs=;
 b=c4lOucPfLW5HdkUrEQz6YpSastXU6jz4sMmO1qwQ3kixgsXxCxaLU/3tOGIaQ4cyUcLEExhmSIIsjtqiAK/lZxonqkyXu2cqobxATopaC2vgnJLcIst28rFwMG3FWutR8UMv4IFu76u+sTlhBMrxSvPmHIe3Br3uR453Q5/Fei6bOiF+Fa3jrA4hx6PFYziyiyb4NthGmcu1jrsQklBoPqqSIYdrYnhy+RnsRlGqKMlulj9Qudezq1fEoMkaYziN5/YWfjl58mLcB6OL+wUFxTKgkiLocnmX9KYOnVlaNaAYXE52I7Mnk2f0R4+v9PImc0VU/s/nBEdgt1maVad16A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by MWHPR11MB2063.namprd11.prod.outlook.com (2603:10b6:300:29::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5504.16; Wed, 17 Aug
 2022 01:29:01 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 01:29:01 +0000
Date: Tue, 16 Aug 2022 18:28:58 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220817012858.yjxhoeo5p3e2q5cu@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
 <664ed8395a6028e654cbc2251605e967a9d46289.1660230121.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <664ed8395a6028e654cbc2251605e967a9d46289.1660230121.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR21CA0013.namprd21.prod.outlook.com
 (2603:10b6:a03:114::23) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 190bcb72-22db-4f98-8f85-08da7fefdd7c
X-MS-TrafficTypeDiagnostic: MWHPR11MB2063:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LZ21XeFchwvzVHvqWQ/20GFPuQnBfR/3eJQqHGheyfGejD2z9+qz47Em3/q5fPhdUtwaem/thidYDYvlD3PlxL52/sdvSKcOvS/vUNkByqwiv6eAnROZSdY86X77sWfJhej9CuEXrvdDcer6xVzWtHf7370RalkEGYKMbgoOtbbGHpENSVfBbsxRkRwJG+t9VNHAnGVS1RIKpM47uRVR/rDOYtBEmTg6noGFSIC9uBdkvi4Dzxjy5hQa/p4I0wgXb2947ZWrBAm4g69aVO26fEpv9CTHxccHZjcy5M68KfUWnj2jE9XYVPjORYWlPafyPcQOqzfWUdRDo1rcDlXmLGTxYfmNXnmTxetBbKpDZQES/I7q3xSp4Q8cIkXaa7q/vu2KK6M09Daeu1FVEh3KCKAQ7ndxpig1xBoyNLoVBy4UZuNKDLvuq3jKsCGOQxTPRTV/WvHwvQTMZVhaCHm0niWDq9CDYn75LQzOTIjh5pT+lJTE336xn9vNFhAs3uIG2gn10ZVP98ixztOVnEsOJFs5ywoPNa8KscO3S0cFQ/WK9aKTkFwllSrIWjmYj3BfCTmQKk82xcMckDZ8bOWmYlr2lOU7jFxx0dEUA0HfPL5dGjxAf69MUR2HUyCCssEmlFztOOztN641nLuiOv9FJaN6fCTWELA7th3wfHS+CnbJ5Fwvcz94acOB/0YaGspR6Ken3okSMmSoDU+EqNhkdWS7UoHOjIEGDoiOcS9dJz6dfDMuA3Wo0/vB9+YJBmWx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(396003)(366004)(346002)(39860400002)(136003)(6862004)(82960400001)(5660300002)(2906002)(86362001)(41300700001)(6666004)(6506007)(38100700002)(6486002)(6636002)(83380400001)(186003)(478600001)(1076003)(4326008)(26005)(6512007)(36756003)(316002)(66946007)(9686003)(8676002)(8936002)(66556008)(66476007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ZCKrLrVA+Aha73QIH+4JUb1l3dsC72eRjqxxwPvZwoJkYMBvAd2hn/1nXVq6?=
 =?us-ascii?Q?JBUuNAtFcJYzwFPdBxDKc6utjFyPqR+tJOSAtceUMMepCWYVfWkHKbTl3hg3?=
 =?us-ascii?Q?jN3C3Z6Zig+ivJSDAaTyBigcZuhdWyVLyuUD8f5cIM+JLuuePr8TcA2u8ZIX?=
 =?us-ascii?Q?M0P57yLpEhXwqdt2qiMKRC8BWXgtE/0FPw2OorU1bc5yJ5lCSV45uw+tJSI4?=
 =?us-ascii?Q?RrpnU3W6zAOLotVR2sceAD7DvSAJW2rRxJq2hdloGat8C3LKRCp/MdF2Y93c?=
 =?us-ascii?Q?c6wvqmHNU2Y3Zyr6FssAesQLNAGPZzAXV9xX+GnueYrPVZvjsN0R6XfIPyye?=
 =?us-ascii?Q?RGMUesHit4MGU3yhDg2MQcYY/nIXfuv1bKpUxKZsLHYEDEBb9HvOGVPC8yM7?=
 =?us-ascii?Q?cXdRjZuch+bOro7b1xTsb+Tt1WiC3a7HVbEs6xvqz83D9pgUBkusJcpAju4b?=
 =?us-ascii?Q?0fwl5TyfkmJMoAdcJl1gfsBt6SagN+zPWslaT4lVJh0d1dlLJEH9xt2YMR5H?=
 =?us-ascii?Q?D/5BNb4pmk+t1jrA38hP0Xit5F6/8LGfO9g2THlzAQA4HdDSsR8efatpfHlJ?=
 =?us-ascii?Q?56OZsiySEDJKPMqJM00P4goDO2fmDX/2aXnnQFe1vc3+oFRNZwubw69+koIV?=
 =?us-ascii?Q?OjwiSDbHrWBfn5mJP5PSKKShAHsTKr/j+XMFXRVNStsT4ykIArUGLFntWT4g?=
 =?us-ascii?Q?M9jjsE3xp8DGKz98+gE18yK2/Kle93mKOTMp+dCgDiFmHZA8iI4xKKDMWvSv?=
 =?us-ascii?Q?RXMt8JUbOSusZk9tpk0zKDEiCtdSRUO9acjxg3fIq0iZwIXAEiKYhlOkeoE/?=
 =?us-ascii?Q?UiLIgJvhdWaT82RMIvLB8iMFfxMygJX/IB8UTGVAXQ3CX+onudW7WDOV92t9?=
 =?us-ascii?Q?AtOuj52v1Jgm8MgeQ3p8fCAejzg9PpaR3tKihnXuMScZopnZpKu88g0ViVD8?=
 =?us-ascii?Q?Z7/wBHId16F3ibll9EtvcvebLalYBYbKA+jzFT+AHfYiU3xoOUtyQmIrdPMY?=
 =?us-ascii?Q?5+r4Yzz/f7q8w51dAHn2XIPx+IKaQ3+g5Li9o6LfkcrhJFOGo4d4pV14lYnC?=
 =?us-ascii?Q?e2TFmPBlIdQT5k6HrMc0EvV2pycpOV8RvtP6JgB7SzfXO6JG9ePrntZwQkJY?=
 =?us-ascii?Q?yzOHb1SF4BMroCj6nXVwDlFnDN/xW8vkQ0WhV8bhWETq95K19//064fRzkgz?=
 =?us-ascii?Q?54OR4lWZ5Ypq/KwwPZzCRe2DnPQq7PnL3FayQDwjOKVd+SXlAsGWlIWf2dw3?=
 =?us-ascii?Q?Po9ypo3sqe0IEcRncL/TNJo8k/S4/dbbK0JrwpTukcLcoBnO6fn5Ld8OmmF4?=
 =?us-ascii?Q?L4h0Lgay/qFDWwVz6PXapFRQKJMlnORMouQOa4hBCTd3A92v7pPSXt4CfBDk?=
 =?us-ascii?Q?cgQkc2tDSRRA8yBASHpRjjuKhJCDcC4TgLApbF9LsroeT4nzf1S+S2eRoOZQ?=
 =?us-ascii?Q?nqmKcErrYaLN1VrkL9rpxScADNHRgLLwS7bcG7Cea0OzY3dfoBCKUyVg+hOk?=
 =?us-ascii?Q?lIXUf8RCpYn2SLQ3kHlE0SG6pZeCu9eptYGnrF7Ga3zp10teF6sN7PhNdtnK?=
 =?us-ascii?Q?2XcuILtNG3H3lf7F6kuR5idSzvGwVVkA1u7aJvgHut6qkTMiC3wf8Vjpq+LW?=
 =?us-ascii?Q?4Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 190bcb72-22db-4f98-8f85-08da7fefdd7c
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 01:29:01.7748 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mv1oF594o8u36ayKGYi58kcvgtfi0F0bePor223BAZdgIDiwN8H1YV3gLhjr7WhMtlZavDObE7aiz3Hk5TOwlWZsnLNZf5w4vAOmIJ7jsmE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB2063
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 04/39] drm/i915: move hotplug_funcs to
 display.funcs
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Aug 11, 2022 at 06:07:15PM +0300, Jani Nikula wrote:
>Move display related members under drm_i915_private display sub-struct.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> .../gpu/drm/i915/display/intel_display_core.h |  4 ++++
> drivers/gpu/drm/i915/i915_drv.h               |  4 ----
> drivers/gpu/drm/i915/i915_irq.c               | 20 +++++++++----------
> 3 files changed, 14 insertions(+), 14 deletions(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>index f09bbb7b5cc9..ff76bd4079e4 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_core.h
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -13,6 +13,7 @@ struct intel_cdclk_funcs;
> struct intel_crtc;
> struct intel_crtc_state;
> struct intel_dpll_funcs;
>+struct intel_hotplug_funcs;
> struct intel_initial_plane_config;
>
> struct intel_display_funcs {
>@@ -40,6 +41,9 @@ struct intel_display {
>
> 		/* Display pll funcs */
> 		const struct intel_dpll_funcs *dpll;
>+
>+		/* irq display functions */
>+		const struct intel_hotplug_funcs *hotplug;
> 	} funcs;
> };
>
>diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>index 375f526215a2..513fae9e7a81 100644
>--- a/drivers/gpu/drm/i915/i915_drv.h
>+++ b/drivers/gpu/drm/i915/i915_drv.h
>@@ -94,7 +94,6 @@ struct intel_encoder;
> struct intel_fbdev;
> struct intel_fdi_funcs;
> struct intel_gmbus;
>-struct intel_hotplug_funcs;
> struct intel_limit;
> struct intel_overlay;
> struct intel_overlay_error_state;
>@@ -509,9 +508,6 @@ struct drm_i915_private {
> 	/* pm display functions */
> 	const struct drm_i915_wm_disp_funcs *wm_disp;
>
>-	/* irq display functions */
>-	const struct intel_hotplug_funcs *hotplug_funcs;
>-
> 	/* fdi display functions */
> 	const struct intel_fdi_funcs *fdi_funcs;
>
>diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
>index 0389f532d926..c1b8f949c53d 100644
>--- a/drivers/gpu/drm/i915/i915_irq.c
>+++ b/drivers/gpu/drm/i915/i915_irq.c
>@@ -4370,8 +4370,8 @@ HPD_FUNCS(ilk);
>
> void intel_hpd_irq_setup(struct drm_i915_private *i915)
> {
>-	if (i915->display_irqs_enabled && i915->hotplug_funcs)
>-		i915->hotplug_funcs->hpd_irq_setup(i915);
>+	if (i915->display_irqs_enabled && i915->display.funcs.hotplug)
>+		i915->display.funcs.hotplug->hpd_irq_setup(i915);
> }
>
> /**
>@@ -4424,22 +4424,22 @@ void intel_irq_init(struct drm_i915_private *dev_priv)
>
> 	if (HAS_GMCH(dev_priv)) {
> 		if (I915_HAS_HOTPLUG(dev_priv))
>-			dev_priv->hotplug_funcs = &i915_hpd_funcs;
>+			dev_priv->display.funcs.hotplug = &i915_hpd_funcs;
> 	} else {
> 		if (HAS_PCH_DG2(dev_priv))
>-			dev_priv->hotplug_funcs = &icp_hpd_funcs;
>+			dev_priv->display.funcs.hotplug = &icp_hpd_funcs;
> 		else if (HAS_PCH_DG1(dev_priv))
>-			dev_priv->hotplug_funcs = &dg1_hpd_funcs;
>+			dev_priv->display.funcs.hotplug = &dg1_hpd_funcs;
> 		else if (DISPLAY_VER(dev_priv) >= 11)
>-			dev_priv->hotplug_funcs = &gen11_hpd_funcs;
>+			dev_priv->display.funcs.hotplug = &gen11_hpd_funcs;
> 		else if (IS_GEMINILAKE(dev_priv) || IS_BROXTON(dev_priv))
>-			dev_priv->hotplug_funcs = &bxt_hpd_funcs;
>+			dev_priv->display.funcs.hotplug = &bxt_hpd_funcs;
> 		else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
>-			dev_priv->hotplug_funcs = &icp_hpd_funcs;
>+			dev_priv->display.funcs.hotplug = &icp_hpd_funcs;
> 		else if (INTEL_PCH_TYPE(dev_priv) >= PCH_SPT)
>-			dev_priv->hotplug_funcs = &spt_hpd_funcs;
>+			dev_priv->display.funcs.hotplug = &spt_hpd_funcs;
> 		else
>-			dev_priv->hotplug_funcs = &ilk_hpd_funcs;
>+			dev_priv->display.funcs.hotplug = &ilk_hpd_funcs;

pass by comment:  eventually we will want to move all these irq related
to display to display/, right?


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi

> 	}
> }
>
>-- 
>2.34.1
>
