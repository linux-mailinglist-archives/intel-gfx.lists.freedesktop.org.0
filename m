Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4A859669F
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 03:23:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 94AF610E282;
	Wed, 17 Aug 2022 01:23:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3CCD210E282
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 01:23:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660699414; x=1692235414;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=H9A04tUnEq8JNuRWmCKoMItMy4Xq9TgqLWu14/i4X1A=;
 b=bze8y3rlPLrYf006N8oXgKwQxwdASibh9lctXKbdGBcJ2rTC7wME788n
 +fWv0oR/Lm3/vojm9CfmuvGBn3T5YaOrh1z3ojJLf5/en5M5WX8n38GR+
 0Xq/bLCrHomZz8GeDUsuD8osK53w9UL9gbpWLVZhxGFkT2V7pxz0oEvue
 Q/UHGJLCQQmjAeg7GflxmTlEUtU7Hgkcv1wZUlUrpqG1DjqgJAZdXu3g3
 DjhnNTWReauy9X8VHJpnM3wdu/bWQqLu86cVd/4yEQ7xT83TULntgYUfF
 8nEu1IRVt8GWMBx0Iyz33DasylQ6sksp12OTfztxwcW29bT8WyoTO6ywF g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10441"; a="354118232"
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="354118232"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Aug 2022 18:23:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,242,1654585200"; d="scan'208";a="636154005"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga008.jf.intel.com with ESMTP; 16 Aug 2022 18:23:33 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 18:23:33 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Tue, 16 Aug 2022 18:23:32 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Tue, 16 Aug 2022 18:23:32 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.108)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.28; Tue, 16 Aug 2022 18:23:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K70w2FDYeRZv0Lr+Iuj8vka9OyxvpqNUDNpdSWrpF5H7OF0cNDFlyGGM76zrH0cykITv7FOo8m9HOpfSu2VR41OTCmX/SbOV9wIQvOYQtjdSBaj/E4b0zYjGXU227T609hghR2/ZQntvFVMqn1NK3rEJ8c0573tp7DQzc474+Rmdpnmjb/ZcyrfBq6qUWw98sY7cFUAGg5yZZsXtpa+2KODBE3BGZOVK5BBjGrW2kytalGHuPb9Kn1kkNa2xFnRp1MH9E2Z4C+BNmZ2wwta6bg//neEYAS6rhskWktrMTtq7JK9ysdLi0WAT3RjnB3WOkPo3ab8bKlGhtcRsvsLMNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=8Q9ngTO8i4MvjTuxzLjq2GgiVKQ/XRUo3bUUuvOu+uw=;
 b=UyTjuppA9/09uQBo8gZzrvKOS4EvX8o9a/AiwCaTCzY84yb8awn3hSheLwDdNpis5TsDJqN5fSBz12C19gwcVhdtOM/qWAysVcxIXz++aJ2CAZxwNRHGVwMU9HvFrjC+OpDAQbJgHTprWQ50nDvCtBzuLHQfw88m4kd0orj+Yd+0ppG4Tsu+GLmNgO/DbUU+bzVUIkYUkchOtuyIz7kaN/yy3bL4dCuA0hHiaBJBPY2qgp1ihi+z0KtnrzmwBYBBTMZnHWA3st+yBM5ooh5XhNOzwrrycFX+ikKg9vz7A9Jlji3UmCqKom92kFhv576ELupHPndV5QN0lZHSPzsaHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by DM6PR11MB3676.namprd11.prod.outlook.com (2603:10b6:5:137::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5525.11; Wed, 17 Aug
 2022 01:23:25 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::a012:82da:5edb:513%7]) with mapi id 15.20.5525.011; Wed, 17 Aug 2022
 01:23:25 +0000
Date: Tue, 16 Aug 2022 18:23:22 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <20220817012322.rm4xuqdt7vxtmtov@ldmartin-desk2.lan>
X-Patchwork-Hint: comment
References: <cover.1660230121.git.jani.nikula@intel.com>
 <a5641ef131cf70d404b5344eb8c3cd1688fdaae6.1660230121.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="iso-8859-1"; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <a5641ef131cf70d404b5344eb8c3cd1688fdaae6.1660230121.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR17CA0064.namprd17.prod.outlook.com
 (2603:10b6:a03:167::41) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 8ad4f881-56f0-42ec-564c-08da7fef14ca
X-MS-TrafficTypeDiagnostic: DM6PR11MB3676:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QymY8rVZ6S/xLHab3BZvxDncwvofIuDcmYYv+3w+NqJ1YMgaHVvOShSt4qN0rUilCvWGUtcGDZBel7FdEwmyd7/hb52z70FlM+hi6TcXlbxRbtdEOW00e1Zhkp1LsXMToPMcMel7qf9B3P9yoxkvO7udd9wpfVL3fLXRh7iShxaSlwQ+pqn1zSPJJUW6tPqkQLUoGBn4sOVJAkD5OnToWsxwz/jXnvlMNbQtdkDDaIKDipRlPjP6wGq21Mg0qv/LLN+/a4XPd/WEc7V8CcT5pVwBub6/54WrBBn5n88GKcbgxodQvkBoVccKUYbRg2WvIBE8GP3mBthkix9QZ0fqYsDlNxvMRg0PK9MPvx+9TqRmBmzFHSVMO1t6OMtQkID1l3lwvXGdQk2juu5lDWwr9+ajUf0rp0ImRmi+FYGowPpKVyz1jF151j64PBiWj9y68BvmPjgRkMdIeepbFviaBAQkMsCVeqYOxhX1RG/aBuAwnEQfLBYFpOiI63hnf33Whowky6RHPjFxpC2WjwufSwnMx/haOAlzDkTbgOQmNZkkV3uBsxhC/dTFLcDHhjJ4V1CXddgyXJjUyI8JiQ7FhtnsqK25CRxueBvmKieMCgYe6RRgP3NI6ltSuS6BiQ6rR7mduAZHJnzV8P5jEpRzZBOX9gXt1o32TJNSCBf3+umCKKwD99TIGSKELQ1HhRuqxWpHCcR8TLm9WVLPDAGud5wJazj6HED387zZKi4cllg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(346002)(376002)(396003)(136003)(366004)(39860400002)(6862004)(41300700001)(26005)(6636002)(186003)(6512007)(1076003)(9686003)(2906002)(66556008)(8676002)(82960400001)(4326008)(66476007)(66946007)(38100700002)(316002)(86362001)(6486002)(36756003)(8936002)(478600001)(5660300002)(83380400001)(6666004)(6506007);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Zog4YBm0bFLFQEzuPNicbgTWf3ojgVAMkakyyw9IjYqaSu3azJsd4syDtY?=
 =?iso-8859-1?Q?8v9N358rgBy3h6UVKM61ZC2PD3fT/qTuuV1/5zjkabtoNX3Ssq3UquJGUm?=
 =?iso-8859-1?Q?Zt7phJzH45307cvKUpvLwDZTmCGeN2OWq7kepaw5h1tmzPSsAnhcxncMWv?=
 =?iso-8859-1?Q?KCoA26knqBWAmg3SgvOO8i3cSJZMQIcWhnveAPEVWQT1hrenOzF69fanyr?=
 =?iso-8859-1?Q?8vJr/hWZnVoHVN2eYY9ueWygqMhKovYV1URSXDHRzpKVXG2ET7+Dy+exkP?=
 =?iso-8859-1?Q?YEiSiL/LlAfK9gJQ3X9lybjmOBoc7XqEtvEmoLx0ir0yWiqJvVUTQgDCzR?=
 =?iso-8859-1?Q?e+gBBSb86STnx4H3n1GjGF6BRZmlH6wut/6ofAhVn0rMsktR4GuozgH3R2?=
 =?iso-8859-1?Q?pFqaEJAJUBTblkFzcn5t9cbyBuwpxzso4CvFZCUSH0ByBrg5CNBw6ElYRg?=
 =?iso-8859-1?Q?XaajQxmCHgXOaSkCUiA/zN6LgovlGPWmkbE0i8UQMgt2emaETvvkcv9ddv?=
 =?iso-8859-1?Q?Te8+ctJeVDrQm6AOc2K2+TvuKJ1BPXYky9KrIaxgDHHvZ8A1BKwa7dvAhR?=
 =?iso-8859-1?Q?VpZxwHTmq70TpO9LgB0Fne8uyN+335VxhUwQL9sXdnF1NwfGCsbVCCY3ed?=
 =?iso-8859-1?Q?tsO6k9PL43E0C23CCvi0zqSyKlMmHtJVzYw1PMi4jKmqksRFrLSCBQMmFV?=
 =?iso-8859-1?Q?j3wmOiU/9aZGQ6tspGbSWbNB4cV5ZIop33qYtU2UBE9xb4xdeUBBbwH7YF?=
 =?iso-8859-1?Q?mRA3l/hsliFnVnfkxPq2c4i7xyeGn5mmbZQ4TbCN3RePKN8XhzrTJ+z2MY?=
 =?iso-8859-1?Q?ZFKTUtH+XJGmPGgmD/EG6xpRZXlAGi32IcikADKQTnQxulcrVKEVKSyCtv?=
 =?iso-8859-1?Q?Ml0DjcLt5/Zbz11JbS79YlJ+KYXKj35x6idXioCqcFHV4K+p5zQbjnT/VL?=
 =?iso-8859-1?Q?76URYcQXTcb+eaLGi0T45up3z8pUzstNEbYzNDtY+CEtoLPgrEeAtQroir?=
 =?iso-8859-1?Q?zIJlElkgiTloE/munpef57FXiZu5oOjL0No9KYfFtogODX1Ix4ZKftr2+e?=
 =?iso-8859-1?Q?5cvw6BV6nafQoB4A1hOuLit5/XDfprXzi/+48KwN8sF0AppVHIJRE08om0?=
 =?iso-8859-1?Q?yck61EsrjThDhf64H0Lq92suThaBSnt96LYQqaXsYrcox7SZOJEdF+MxBa?=
 =?iso-8859-1?Q?L7tjPKeqYRMqeHCFKFB9J2MnrRSdQgAZRFFVWqMe2vuOtRdnUFi/HWa9x6?=
 =?iso-8859-1?Q?dqgCFT7WpWDGMghvaRmN7rNQ2W19KR5zC88Is6kfV3diw7I++CxY+153DP?=
 =?iso-8859-1?Q?wOtkVBD/g+8T93PpgxQ/LyS/iUl6L28zQbF3R8AmQuMsv2hVo+KKj52fC9?=
 =?iso-8859-1?Q?Fw0031SyYeg/GBe+UXYPJ7oxhvHtiv8VSwzoURCDUJDj1Vfk2lHpfaNL1N?=
 =?iso-8859-1?Q?w/ErqW9cItjiDbSjXXSZgFX7W7yzRsk5foR/KgSuYotaxXp5QjAzvR5hSl?=
 =?iso-8859-1?Q?zn+pXMYjr5BzTq5HX3bAN7ZqzDnyO4wlOSwqD0uvbhFrjttXcN/EFuLCFH?=
 =?iso-8859-1?Q?Z80AW2OSv4M87oxPzFPGQqNWavtCggKp7jaZ7p5aq0mKWGpj9UdfLOftlX?=
 =?iso-8859-1?Q?cSEoIkzskLfj9a67l+Wqr3VhtaXbT3gJvslQaIuOrgmYFlt/wtAL6rsg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ad4f881-56f0-42ec-564c-08da7fef14ca
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Aug 2022 01:23:25.0624 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: siRtrGpc9a9URQJ8D8gMjGhii9msgXKoPB9wUjPAcJeyO1W94Glr2wSmMhFG79WOfjVet/+wA/IlbeXOa82+xAYYjgWPpWlZt3yU3KFOejY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3676
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 01/39] drm/i915: add display sub-struct to
 drm_i915_private
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

On Thu, Aug 11, 2022 at 06:07:12PM +0300, Jani Nikula wrote:
>In another long-overdue cleanup, add a display sub-struct to
>drm_i915_private, and start moving display related members there. Start
>with display funcs that need a rename anyway to not collide with the new
>display member.
>
>Add a new header under display/ for defining struct intel_display.
>
>Rename struct drm_i915_display_funcs to intel_display_funcs while at it.
>
>Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>---
> drivers/gpu/drm/i915/display/intel_display.c  | 28 +++++++-------
> .../gpu/drm/i915/display/intel_display_core.h | 38 +++++++++++++++++++
> .../drm/i915/display/intel_modeset_setup.c    |  2 +-
> .../drm/i915/display/intel_plane_initial.c    |  2 +-
> drivers/gpu/drm/i915/i915_drv.h               | 21 ++--------
> 5 files changed, 57 insertions(+), 34 deletions(-)
> create mode 100644 drivers/gpu/drm/i915/display/intel_display_core.h
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>index f143adefdf38..24ab1501beea 100644
>--- a/drivers/gpu/drm/i915/display/intel_display.c
>+++ b/drivers/gpu/drm/i915/display/intel_display.c
>@@ -4144,7 +4144,7 @@ bool intel_crtc_get_pipe_config(struct intel_crtc_state *crtc_state)
> 	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> 	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
>
>-	if (!i915->display->get_pipe_config(crtc, crtc_state))
>+	if (!i915->display.funcs.crtc->get_pipe_config(crtc, crtc_state))
> 		return false;
>
> 	crtc_state->hw.active = true;
>@@ -7119,7 +7119,7 @@ static void intel_enable_crtc(struct intel_atomic_state *state,
>
> 	intel_crtc_update_active_timings(new_crtc_state);
>
>-	dev_priv->display->crtc_enable(state, crtc);
>+	dev_priv->display.funcs.crtc->crtc_enable(state, crtc);
>
> 	if (intel_crtc_is_bigjoiner_slave(new_crtc_state))
> 		return;
>@@ -7198,7 +7198,7 @@ static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
> 	 */
> 	intel_crtc_disable_pipe_crc(crtc);
>
>-	dev_priv->display->crtc_disable(state, crtc);
>+	dev_priv->display.funcs.crtc->crtc_disable(state, crtc);

lgtm. Regarding names: it's a little weird to have "crtc doubled in the funcs.crtc->crtc_
and it not being consistent accross all functions


> 	crtc->active = false;
> 	intel_fbc_disable(crtc);
> 	intel_disable_shared_dpll(old_crtc_state);
>@@ -7586,7 +7586,7 @@ static void intel_atomic_commit_tail(struct intel_atomic_state *state)
> 	}
>
> 	/* Now enable the clocks, plane, pipe, and connectors that we set up. */
>-	dev_priv->display->commit_modeset_enables(state);
>+	dev_priv->display.funcs.crtc->commit_modeset_enables(state);
>
> 	intel_encoders_update_complete(state);
>
>@@ -8317,7 +8317,7 @@ static const struct drm_mode_config_funcs intel_mode_funcs = {
> 	.atomic_state_free = intel_atomic_state_free,
> };
>
>-static const struct drm_i915_display_funcs skl_display_funcs = {
>+static const struct intel_display_funcs skl_display_funcs = {
> 	.get_pipe_config = hsw_get_pipe_config,
> 	.crtc_enable = hsw_crtc_enable,
> 	.crtc_disable = hsw_crtc_disable,
>@@ -8325,7 +8325,7 @@ static const struct drm_i915_display_funcs skl_display_funcs = {
> 	.get_initial_plane_config = skl_get_initial_plane_config,
> };
>
>-static const struct drm_i915_display_funcs ddi_display_funcs = {
>+static const struct intel_display_funcs ddi_display_funcs = {
> 	.get_pipe_config = hsw_get_pipe_config,
> 	.crtc_enable = hsw_crtc_enable,
> 	.crtc_disable = hsw_crtc_disable,
>@@ -8333,7 +8333,7 @@ static const struct drm_i915_display_funcs ddi_display_funcs = {
> 	.get_initial_plane_config = i9xx_get_initial_plane_config,
> };
>
>-static const struct drm_i915_display_funcs pch_split_display_funcs = {
>+static const struct intel_display_funcs pch_split_display_funcs = {
> 	.get_pipe_config = ilk_get_pipe_config,
> 	.crtc_enable = ilk_crtc_enable,
> 	.crtc_disable = ilk_crtc_disable,
>@@ -8341,7 +8341,7 @@ static const struct drm_i915_display_funcs pch_split_display_funcs = {
> 	.get_initial_plane_config = i9xx_get_initial_plane_config,
> };
>
>-static const struct drm_i915_display_funcs vlv_display_funcs = {
>+static const struct intel_display_funcs vlv_display_funcs = {
> 	.get_pipe_config = i9xx_get_pipe_config,
> 	.crtc_enable = valleyview_crtc_enable,
> 	.crtc_disable = i9xx_crtc_disable,
>@@ -8349,7 +8349,7 @@ static const struct drm_i915_display_funcs vlv_display_funcs = {
> 	.get_initial_plane_config = i9xx_get_initial_plane_config,
> };
>
>-static const struct drm_i915_display_funcs i9xx_display_funcs = {
>+static const struct intel_display_funcs i9xx_display_funcs = {
> 	.get_pipe_config = i9xx_get_pipe_config,
> 	.crtc_enable = i9xx_crtc_enable,
> 	.crtc_disable = i9xx_crtc_disable,
>@@ -8372,16 +8372,16 @@ void intel_init_display_hooks(struct drm_i915_private *dev_priv)
> 	intel_dpll_init_clock_hook(dev_priv);
>
> 	if (DISPLAY_VER(dev_priv) >= 9) {
>-		dev_priv->display = &skl_display_funcs;
>+		dev_priv->display.funcs.crtc = &skl_display_funcs;
> 	} else if (HAS_DDI(dev_priv)) {
>-		dev_priv->display = &ddi_display_funcs;
>+		dev_priv->display.funcs.crtc = &ddi_display_funcs;
> 	} else if (HAS_PCH_SPLIT(dev_priv)) {
>-		dev_priv->display = &pch_split_display_funcs;
>+		dev_priv->display.funcs.crtc = &pch_split_display_funcs;
> 	} else if (IS_CHERRYVIEW(dev_priv) ||
> 		   IS_VALLEYVIEW(dev_priv)) {
>-		dev_priv->display = &vlv_display_funcs;
>+		dev_priv->display.funcs.crtc = &vlv_display_funcs;
> 	} else {
>-		dev_priv->display = &i9xx_display_funcs;
>+		dev_priv->display.funcs.crtc = &i9xx_display_funcs;
> 	}
>
> 	intel_fdi_init_hook(dev_priv);
>diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
>new file mode 100644
>index 000000000000..aafe548875cc
>--- /dev/null
>+++ b/drivers/gpu/drm/i915/display/intel_display_core.h
>@@ -0,0 +1,38 @@
>+/* SPDX-License-Identifier: MIT */
>+/*
>+ * Copyright © 2022 Intel Corporation
>+ */
>+
>+#ifndef __INTEL_DISPLAY_CORE_H__
>+#define __INTEL_DISPLAY_CORE_H__
>+
>+#include <linux/types.h>
>+
>+struct intel_atomic_state;
>+struct intel_crtc;
>+struct intel_crtc_state;
>+struct intel_initial_plane_config;
>+
>+struct intel_display_funcs {

in the same line as comment above. Maybe we could give this struct a
better name? Because it's already inside a intel_display.funcs.crtc

display->funcs.crtc->get_pipe_config()
display->funcs.crtc->get_initial_plane_nfig()
display->funcs.crtc->enable()
display->funcs.crtc->disable()
display->funcs.crtc->commit_modeset_enables()

and then call this `struct intel_crtc_funcs`.

This can be done later as this commit itself is basically moving things
with the same name inside a substruct.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

Lucas De Marchi
