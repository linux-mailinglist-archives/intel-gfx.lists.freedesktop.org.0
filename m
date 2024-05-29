Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3847E8D3D77
	for <lists+intel-gfx@lfdr.de>; Wed, 29 May 2024 19:35:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 79CB010E5A1;
	Wed, 29 May 2024 17:35:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EiM8Hbjd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19E9610E2E2
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 May 2024 17:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717004138; x=1748540138;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=QvMcwJwG/MDM329QT1x2/3YJ6KwcUqDtKvp8mT1uUnQ=;
 b=EiM8HbjdJhHdA2Fb0U+vTwKP2FAu4Qs1R7C6JOrHwhzQ9wNWDjdrai6B
 PAAV96CDuvNKI/3N2yjZ2FoG186c+6Rk2NSS3mmdAVGvhX0wvN0v4ccYN
 xjYR6cszVpxp7nmELd0iYO9ZD2WQuzTx7G/rSojiHl1LgqYWYadsXYDm6
 RWjrpAXKUP87LvYxHf2hOb23QK/FLhkbvQOj9F2L3YaW+ezoKYGX262fL
 EAwMpZBRYY4fpZmc51ZayEl6C1UFb2xsodmP1ABVWvwVrzm+eMBokFy7N
 gcj5ZE94Y+K6KNMWCxHjdtvPR1dqUv1v5ylyNq8KnAGyzNtmF6zh28/3P A==;
X-CSE-ConnectionGUID: AyhDwRVlT6S0JycoSU5iow==
X-CSE-MsgGUID: SP6yrgsjRLGznTA22l/VBg==
X-IronPort-AV: E=McAfee;i="6600,9927,11087"; a="13274385"
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="13274385"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 10:35:27 -0700
X-CSE-ConnectionGUID: 1Ymt6OdoS7uUzODmxydhPQ==
X-CSE-MsgGUID: D+3pZ9WNQdCdC3xS9vEHMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,199,1712646000"; d="scan'208";a="66389121"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orviesa002.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 May 2024 10:35:28 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 10:35:27 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 29 May 2024 10:35:26 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 29 May 2024 10:35:26 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 29 May 2024 10:35:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q/4lZaIJ4vyk/TVZB7xzLsV8Qc42JtMX6drY6VUA3itslvRhNxeKl9y7c+vfH4L3Uef49nbzPP6G0xzxyi1y/ddyjs+ZjacH7vK2TaSG7o6ST5RITG/Mz6PCvXVIBKXylwOsrT0Jb6HXW9UBqCXke6jyi/32E5yTKhwIzVFNumXtKWGLWVR9HMy27Ud4WZhp5CCmAUbdwLnNlffxpiC1TBFj+4PJSajRivrZp2mqgBDxRTRaYxzuqFTYXPuT9s2z9o8szjfXG+kz0l5pmYQWdGJ+GNOQvDLZAkenn1xo+7OsQ3wDj7DBxYEjuaJci6HEBRGd0NXdB0kUIorWbvrQNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=v8Bxl+QL7u4LlShQbUX4PsTevMd95CsTlC8LJReiUJE=;
 b=ceKKVAgrW2T3VonsYzNnk3imIutfJh22RWK9jrrveeALzenEh5dJK3iH7OMnsteP07BVuEealmnu4/88YVwhSDMWdBp7EjQ0hBrtSMebOMT3AqpQKIzAGKw/wr+5qJIqdiw1ZIX+zGZXvz8tFLFKCFVN9+vI5WkYGGG1FeEiN37rgLSRj4pr9KbpmoG5MiSu9Wums+QAyxB3ndQcyo0K+AyWWnmHHN1X8FYjGEHYraEChaewIZ1CCWJkNe+2eHU8CcFO2e8gr074EsQfvIBeHuwI6B5mLrejv00SUc/bkuVzmwaWCSyEO8mNtFFtuXgVkp6ZqE6UpvVAwim4qFdNfA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by CH3PR11MB7844.namprd11.prod.outlook.com (2603:10b6:610:12a::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7611.30; Wed, 29 May
 2024 17:35:19 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::8dd1:f169:5266:e16e%6]) with mapi id 15.20.7611.030; Wed, 29 May 2024
 17:35:19 +0000
Date: Wed, 29 May 2024 10:35:16 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <chaitanya.kumar.borah@intel.com>
Subject: Re: [PATCH] drm/i915/hdcp: Fix IS_METEORLAKE usage for HDCP line
 rekeying
Message-ID: <20240529173516.GM4990@mdroper-desk1.amr.corp.intel.com>
References: <20240527052118.1624216-2-suraj.kandpal@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240527052118.1624216-2-suraj.kandpal@intel.com>
X-ClientProxiedBy: BY5PR13CA0019.namprd13.prod.outlook.com
 (2603:10b6:a03:180::32) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|CH3PR11MB7844:EE_
X-MS-Office365-Filtering-Correlation-Id: a45d58bb-19d0-42f4-9c12-08dc8005b595
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230031|366007|1800799015|376005;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?eqm8DdklnHcgge1Red0K2enB9x6jkguHYtBscSD6CsTYBtZG1i8UJlXRz7W9?=
 =?us-ascii?Q?6MktObFYZrhaM0qFkTjMqxA2KNIpMo7CVQl0z7npOB+ONrtpTpnq4yOhUXbV?=
 =?us-ascii?Q?9bUIk+DB4xlpGX/HDeGqb4Qu+y98rgKWnokxrXt3ZkcxerTZrsgtntf3KzbD?=
 =?us-ascii?Q?FhOIKEs3ibIa4PJwzgOkX6lpVO0bdSEseDl9bdiMpwGSeXUrF+dh6VAVvULt?=
 =?us-ascii?Q?vXhkw6Znv3SKMinRdUXf8vuSIw1loEIZbKgt5EPZ0rtVvCDN45LrngMl5uGv?=
 =?us-ascii?Q?OSWYuJPu8KYBMtXdlKc6lASO0WDZLb3ovnVRZjuj3R8Q+sbNJgx+oeL2qOJ6?=
 =?us-ascii?Q?YZSNMXsp4V6eE0Xnu9pZ0XpL3M9p3ZZLRigsEoXSb2AfwIwOX4gcYahqeRBf?=
 =?us-ascii?Q?DqodgCNFAJoZSO/G82UE0PZQ7mglYn7PkZiEqVoRlSqSoNDDZgxxEAiVIW2d?=
 =?us-ascii?Q?hgL8gtBzWXpO9UzoM/2EbAisecQ+FSEZG2naixuH+VlHYT1+gfqYHUf9IIcM?=
 =?us-ascii?Q?P++xbgkuyKHQsMXolKstRB65RBvJ2K4Uzg9ukhh/KSaqQk/ceHzcuOhLa45z?=
 =?us-ascii?Q?zta078ZOtZr+C1kheY2RR7YmtPM0KuhCwMzeNn+Lv2cX5zxy8nksq/G5KzAT?=
 =?us-ascii?Q?g36GI+XL0yrjjjI7xHfqeqNSKW6rGt6b2e/g15oj93eNsWzReaV0yhXxKaHB?=
 =?us-ascii?Q?Y2x6prKtKu2Vo6PUg8C1AX1s49rDP0w3HZAO/3+SABEWj+AjuAvMP5HlAlCk?=
 =?us-ascii?Q?Lfzjjy8E0OOSvnmbYHvrNjCm3S8NuFqFWsu3y67lx/70sP45pkur53LBJU4d?=
 =?us-ascii?Q?g0rPhMBiOtXU2qMnlMAtx4H4Hf477a1SC2vncrfxmhIj/IxzGO0ifRIuJzdG?=
 =?us-ascii?Q?Zaw4TbQOboQwzWiHiVqTiYWJNDFkrmEqMfC25+NliMEwZOkTQqY0w/c53+El?=
 =?us-ascii?Q?aqMRNFc6zaJl8QJ5kJPYJPvUQZfsNYetJnCFGGxTH36z/IEVECP0VJDV7f36?=
 =?us-ascii?Q?YCoxmF0VVsoNjDomMD64v8te2xZOV6Y834+6N0h6/FXwLCp6Ij3DjI3ClihD?=
 =?us-ascii?Q?8Agpt7P4AEkcKT6Tncx7N/HqabdJoIlGkUNuhjkTC+GvyxansBZx/BiVqqMn?=
 =?us-ascii?Q?oAx+uvzGsL6FX89oBE5uKG6M4r5IuO+2DUWIzk5oodSsCdd/68+cQFSHoUFi?=
 =?us-ascii?Q?P8h5krQ8GgD0C7WxvleGyrF8mMd3nuloSGzOUx1jc7UgcEDkIdA/hAMix6T+?=
 =?us-ascii?Q?Q88r99dpvUuJssKU4KAhvRl2Nsf3DXBbiccVP3GFgA=3D=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366007)(1800799015)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?uYoRbXzP2Zyc5dISS+rZCkjHMoIhmNqYuoCiIW3Rwa1HyNWLPkCDlj8A1b8A?=
 =?us-ascii?Q?ZPQRytuXarg5yX+abmTr4LfeZegPbgQHpiGAGMUNVA0POm5thGLodoA7UeHD?=
 =?us-ascii?Q?CaMvrUSudT+ubm9LL9dfSICeWVJ9QzEBG6o/VwmvWLHhQwoV9b8g4XKhhg7m?=
 =?us-ascii?Q?9FmAD1QEyDngVNoF7TSAgKjIruc8+SF5EnXa6Ca3ReY4lgM0pbXs4HswMvsw?=
 =?us-ascii?Q?rXilecqyVhd5KDkKkdbOL+89kfC4dI1BND9ar72Mo1/JdzFrQecjMhXMur+t?=
 =?us-ascii?Q?6XwzgspEzDfmAld4PPMvhdFxNaKtWjJLrBpyPjSDvQcOAgqsRy+nWr/p9EtL?=
 =?us-ascii?Q?r6WqC7WB4bmhijd1jV5HK+y8g8p3E7P+X7VTwjHedW4ysLVfLkbhr/c21rle?=
 =?us-ascii?Q?v71RHrG1f1w0yV3QQBJ9qiw14qv53QHSrmpa5PXToParAGPa3+S42prHWqlM?=
 =?us-ascii?Q?HfooFPx2l3JGqZYb3B4shWLBSyrEqLJL+6VugKdhMytB0Kq2QHiuuUq68l8E?=
 =?us-ascii?Q?RRPBSF04V7RJUu5q0kvG/afjdRD2Ow96EMdcMHadpJqf0saa/ZxL76GKeSAJ?=
 =?us-ascii?Q?aw51XpxOju8M/Y2BHiPBo3307zuVwJGUReL7lHP5ypnfOmwjm0igMkLAY5Wp?=
 =?us-ascii?Q?WpNiqn6JkuZusw9vv9wrDeeL/SesL6GVqcyBMcw9o5pUAVGOSkY5yehqJT8f?=
 =?us-ascii?Q?coU4aMXvDP3+lVxHn18qlPCF90jz4ibSYwB6tfQTrdfZGlFYtFht/fwOfXYK?=
 =?us-ascii?Q?Gf9XA4SIK4U72CWorkj+XlTw/iY/vjD2+3DBvhQdGhRWhC7hlwBciQ9xcVfO?=
 =?us-ascii?Q?NzycbEuSpu3HF1kbe/TcznGSmhRKcmNBMzVWwTT/dU5Iya4TTF3UGlu3WWSE?=
 =?us-ascii?Q?1nQPy9NkPehp8pi+on4XJKjAVIorXLyeh5lZ1vTw+XAn4mCDFKT9FPUr2WeK?=
 =?us-ascii?Q?7RySdBgBMmfoH9uTvYNSA0rZfgUXFNQS9OXnqVGOt/hVLoOGPYzw9CfbNM1m?=
 =?us-ascii?Q?43gmHh7YPXPChfvHWcyAiv90sdEC6zCHIYwO87wXWVCCWCKaIWhEZo9hYRJa?=
 =?us-ascii?Q?+rSs0Q/1ecAy1qNMU3lg0DdInvn5unXfZAXBpm31q7k/vUmHvGMWfRbjedMT?=
 =?us-ascii?Q?w6BMGM5m1aHjx9JbAI/lbvIHo5nV4nculC/roft9JVy84OAa/Ydt4/Yw9Ejs?=
 =?us-ascii?Q?pI+9VmWrT7WYSqWr5+geh3pa5ZrdZm/RCiDts1OIL5op68k/h2KBQv8gQn6R?=
 =?us-ascii?Q?qWEFYi2E0oS0dc6jBcgSK0k1hDJGjhzfc6Wo10m5nbC3IcmhZWuI6f0n4BEE?=
 =?us-ascii?Q?QiC72D16Qo+fiszI4Ak4nQhEAiAHUebdyAJ0IeUrcCzZrv1ov6jWU5SvOquB?=
 =?us-ascii?Q?0ivDN/Nm+jGK5l11OgvBeWpuJehe5HiBY4y1izit6194m88w3LU88MT9TtIw?=
 =?us-ascii?Q?4/JK+CzgCln9stCjMNkAvbzhV7B8uikniNKIeqdzr/0T3fF+ZkWeEXUKv20k?=
 =?us-ascii?Q?Ikj7vM5vQrtFmwRWPG/Cqtw8ZsGDuhNjDBA94uTbedMl+cf4X+WCT/sAVv+U?=
 =?us-ascii?Q?ZoAhfKclDAbYqBlAWlH4JHrPFmLSZyIrE46i+Of8Owi1up/yHrFa5KKUOpjJ?=
 =?us-ascii?Q?DQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a45d58bb-19d0-42f4-9c12-08dc8005b595
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2024 17:35:19.0537 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EsDHCYoGFT3QYH691gG/dDZjdz7GenukSc1m/sqKMrIJpxyuS29GLeIEB3+G6Fa7DdDkzj7K1sL2MOqKJ5fEEOYr6zMYmJBTatyneRtEs2U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB7844
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

I'm not terribly familiar with HDCP, but from reading the spec my
understanding is that in general we need to enable rekeying for HDCP 1.4
and disable it for higher HDCP versions, right?  That would be the
expected "normal" programming for all platforms if we didn't have any
workarounds.  However the issue here is that we have a workaround
(Wa_16021352814) which affects the early steppings of certain platforms
and instructs us to "Prune timings with hblank below 138" instead of
disabling rekeying.

In that case, I'd expect the logic for this function to be something
like the following pseudocode:

    needs_wa_16021352814() {
        return IS_DISPLAY_STEP(IP_VER(14, 0), STEP_A0, STEP_D0) ||
               IS_DISPLAY_STEP(IP_VER(14, 1), STEP_A0, STEP_B0) ||
               IS_DISPLAY_STEP(IP_VER(20, 0), STEP_A0, STEP_B0);
    }

    intel_hdcp_disable_hdcp_line_rekeying() {
        assert(output is HDMI);
        assert(HDCP > 1.4);

        /*
         * Wa_16021352814: Rather than disabling rekeying, we need
         * to prune timings with hblank below 138 pixels, which is
         * taken care of in xxxxxx().
         */
        if (needs_wa_16021352814())
            return;

        if (DISPLAY_VER_FULL() >= IP_VER(14, 1))
                intel_de_rmw(TRANS_DDI_FUNC_CTL, ...);
        else
                intel_de_rmw(MTL_CHICKEN_TRANS, ...);
    }

And the logic to prune modes according to hblank for this workaround
would need to be programmed somewhere as well...has that already
happened?


Matt

On Mon, May 27, 2024 at 10:51:19AM +0530, Suraj Kandpal wrote:
> Replace IS_METEORLAKE usage with a more appropriate macro. While
> we are at it also add the stepping restrictions for other platforms.
> 
> Fixes: 6a3691ca4799 ("drm/i915/hdcp: Disable HDCP Line Rekeying for HDCP2.2 on HDMI")
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_hdcp.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> index 02cbbbfd8e25..5767070248bb 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> @@ -42,10 +42,11 @@ intel_hdcp_disable_hdcp_line_rekeying(struct intel_encoder *encoder,
>  		return;
>  
>  	if (DISPLAY_VER(dev_priv) >= 14) {
> -		if (IS_METEORLAKE(dev_priv))
> +		if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 0), STEP_D0, STEP_FOREVER))
>  			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(hdcp->cpu_transcoder),
>  				     0, HDCP_LINE_REKEY_DISABLE);
> -		else
> +		else if (IS_DISPLAY_IP_STEP(dev_priv, IP_VER(14, 1), STEP_B0, STEP_FOREVER) ||
> +			 IS_DISPLAY_IP_STEP(dev_priv, IP_VER(20, 0), STEP_B0, STEP_FOREVER))
>  			intel_de_rmw(dev_priv, TRANS_DDI_FUNC_CTL(hdcp->cpu_transcoder),
>  				     0, TRANS_DDI_HDCP_LINE_REKEY_DISABLE);
>  	}
> -- 
> 2.43.2
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
