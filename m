Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC966752A0
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 11:37:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD5A310EA02;
	Fri, 20 Jan 2023 10:37:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 10BF910E0EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 10:37:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674211024; x=1705747024;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wTCXfp2FjFGfvmGkVENq4R2VbacEwzouwoKVfRs7Jq0=;
 b=gte+IZqzRW5BjyArRvuZJjuvaBv58dLRmWTHPHS/bSmts+se4MnewS85
 vUt3ypySn8SWfDESzGTGKGV877pijrA7z4QZmc9LGAyaADtLZfgZ2CCHQ
 O9I9gv+6ClaHzV0y96CJgOOa+AOJylGJ+Y2jH9fj0243jzlomepulNZ7Q
 TzZVRzqnCXZZCVjwbLAuzDvtaVlqM3WIH42md8Fqss01ByxQk5sfQrrlU
 JgxDhl/f5vuN/rKHMSZLc/EHWKFoTw8gnyz6LSf88WyVelu7kLyqmm3Oa
 PGUNRbtLUUv6cGvnS3TWZMANjA78WghYrOuGwpSkQhZb+SDiDLQzUV7Ic Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="327645763"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="327645763"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 02:37:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="653750514"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="653750514"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga007.jf.intel.com with ESMTP; 20 Jan 2023 02:37:03 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 02:37:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 02:37:03 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 02:37:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=koZYAec3+ukj8FxjVYRpM5ctnviw2Lu56EEmTRRPtzORTSfbUZN/eVqiYbArENPYnnQjWb703lV35ZxF4ebDMHgHfTo7R0a0qj8lY0ZkzJ+c2WJAcslk2fnHNowB6I7bDGkp0bk+9MXZoRfMFVdFaRflWM9ROkjNgGGsYP4oGn/wRBxZ2S4gmGMtbuCXjisn++o2cnPyzy4jZtNTj0dQ9vJhlUR/GTiDsnO7Pfp20lTR8zTR0JKptdI0+S93fJQMwYwghiWjiCyuVJO9EePrRRQeGYTcrYQPXKzj3N+ZMWo9yGghIwNf0kfw7+Nrv2Wu2sIYUu2QreL72Fc7NjhfVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hQruK5iwNfvnE6TVEBwoDr3FGV5TWNA1+jS0Ae/67a4=;
 b=lf0hbMXnQ5yKBmu6Po6YtTVaYDpNDBnz2jxIi0PyCxrG9kQrph+hc9bdug/x2qbiSyw1tbPmym8ZcNDcMtLUcV77v7RY2CJclynJzwZvLxHqpU8VABhIAQiB3d2yLtCWxsmw38iXNLk8EH15Q1jAblMhq8cmxsZMwvXRxvz6RSlKhPGxnDheR7ORxIMTarOAJG+15IoEvjzgQiXa2vnD7/bC1wnoohqFS7IvWdCpWhehIV+qPMUCk2ivThuT+KatHb0kZ+bcY0bF+oTUP5OqhdZCUqp9lBVkdvdeOOLrRPXPWXd4rxRMmp5Df72lrU3B6BIDS+EEJeigfo14nY/Zzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by PH7PR11MB6953.namprd11.prod.outlook.com (2603:10b6:510:204::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.26; Fri, 20 Jan
 2023 10:37:01 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.025; Fri, 20 Jan 2023
 10:37:01 +0000
Date: Fri, 20 Jan 2023 05:36:57 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y8puyUWi1GZswFEp@intel.com>
References: <20230118131538.3558599-1-jani.nikula@intel.com>
 <20230118131538.3558599-4-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230118131538.3558599-4-jani.nikula@intel.com>
X-ClientProxiedBy: BY5PR13CA0029.namprd13.prod.outlook.com
 (2603:10b6:a03:180::42) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|PH7PR11MB6953:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a9a122f-a6b3-43f3-7177-08dafad2439f
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: op9y4M17DV37YrtVYIHMcRJ6l9fQobVNh/LcA6qCN/fd21465otU0/G4knvEVVy6VAFlgYIKqoWp1rwNoWsNdndJOatRuc63+w41GlTvV6VSrdFiiauXvRyxtFrChCulftraSj8psfnle+4qa9MAYulaHKKG/5ksEjkLYZP0FjSEHvqYki6B114MBx9n7HUuPZHVEEgRPljtTct7cG4rcSegx3gXK55zrJ9ONhlDlvCX15KNZEDgjc2cJfy9bhng4y/qK98QgOMfuZchPCzvjsTwVpgZW6dQWUwdPQD8Lb/0bv3eUGRbPoSF+/BwMPjUiLKFj703gmfGf7pz1dWFYkhWOrPwvSB6V14RJbXZ5HN2jpYWYlR5JvzS8g6YMIAzUSR3XFMBfTsSRd3IHSBuYgyUb8R0eMzlmDki5JmgkqUuny5DMk2VRAlCebWroZ//9i/Ev7xbA4OzuDZKMEupuDb7vA9Ehu2WQMB38wkj2rNU5Yl7uaDKdZG+PJL2546HtDeM9ieOty5LS5hyHM3cCQGFC8rQjqMZwq7j1ybLg0OPxu3v9gTqB+PFkuGu9gCFQg9jFYAING0YdQ+iWKxeYUOCCc3zZJTFTav0/NrJKrLn8eloGcizPJE02+Otl9aJ9qpCAYU8TIYVWNLeC1wh0Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(346002)(396003)(376002)(366004)(136003)(451199015)(2906002)(83380400001)(41300700001)(66476007)(66946007)(66556008)(8676002)(36756003)(4326008)(44832011)(6862004)(2616005)(8936002)(316002)(37006003)(5660300002)(6636002)(6512007)(186003)(26005)(82960400001)(478600001)(38100700002)(6666004)(6506007)(6486002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DXNNayVwOqYvK4sDIt7lFmwojWYWGvDuhN7wuyzNPB2xQ2sidE77NcVtOW+9?=
 =?us-ascii?Q?fnfcMPlDClk8iU1RwPcah4sog8iN3iN0F3HJnc1bkspuhVVKYza+rsc5vhOu?=
 =?us-ascii?Q?XUDmiVdOEXDANMlWVbxV3FQDK36trkGjVIgi528B2yVXJZNBOVBXBL7Lm1hn?=
 =?us-ascii?Q?3DW8ubudL00hAqEmj+yshWsE23LuhE2d+9ZcAelyfpVH1DDo3uWVmH5//3fW?=
 =?us-ascii?Q?TqnviTcuvdb9IAbWs750KP5gGmr3mHd9o66SQEvmhZnIQsUx0pWJmY2OXwDS?=
 =?us-ascii?Q?N1wWGYafbpyRgc5mUta3ybT0AUjwqCQUkbk07U8vGAKSnNryz8b+qeEBvDzt?=
 =?us-ascii?Q?zqzva4JyQz0JDZK6LR53QhkxGrSDwsgDc51iteqb4oyoKhJtqTJZZEbbuyhc?=
 =?us-ascii?Q?Bftk9QcSK1/TAuEuFA0IFk2akdviDeDMOmcnXJL8Wc2/8F6lVS2LK6/XA6FC?=
 =?us-ascii?Q?p73Tr/p5+xF6eM1eyOTuDqEMi+TasrnxEx8r35FHM0Zro0iVH8fAjI+kvaG+?=
 =?us-ascii?Q?YHkj1yYg5LadfztoQ0OXyv2vaKzODTXCOV0RWuyE0c9BzCiA8n04evqairVo?=
 =?us-ascii?Q?Ml4LJL04kiUUq1Sbv7JYATBjKK+kASSu/6YgASZoJSI4PZ6bsTiVT4tmCXau?=
 =?us-ascii?Q?GjgrNMvfa8U+SAZ3NRstMW4DndbzkdEbuIpYbL8VN8mPkbAHk9iSjfA621wi?=
 =?us-ascii?Q?Ogq8wBRSyzANxz+ZVTpQ+B0EsP4pbFv0JIXk3jvb9pyEHIWSS99uHG8StU/7?=
 =?us-ascii?Q?d0SqWdHHop2xj28Ke3XRZUfJqXjKT+bQrsfwWLRbklfR8vYD2wBLW6fqggyZ?=
 =?us-ascii?Q?059JA6dPirkXS/T9BkTpe0DeXlOh7Qfk8jnrEKUaNXBRxALrMgB3Bea7HLsj?=
 =?us-ascii?Q?f0wA4RNDOcF1cYRTSLYGsoNlry3Aka0W+U9GQjIRT8tGLqHaHswXVnUHdDe5?=
 =?us-ascii?Q?cXgF8NfJgMRB1+nO3+VCAGNfFHy5dA6U3T7jBvUFOJkoQYIBRKk3+kBGB6V+?=
 =?us-ascii?Q?1F/BWQBRDqNyH3ufQ1TR7sNA7YqcHEWQtmS8ycR780uGjo71VMWMaRhKZzto?=
 =?us-ascii?Q?ElvOyIFpiEJydcmvUQgKY+EfVUDzXX4iwWWDaTDCyZB6AelIA6jDOsPk9y0k?=
 =?us-ascii?Q?+aTF63mOiBaAWoD4HOpHmyLW/xUagctY0COEoce1a+w7qLGEVH8Thf1Surmq?=
 =?us-ascii?Q?zEZEQvkZWopqKrf3AYumGr+TmbFO2P9s8opngdsJJkVdZi/29MMxHe4ps0p5?=
 =?us-ascii?Q?ssLVWvt5E325G5Al1bcT6P+Mg/jwF/2WvGRLo51fNCNP2EAhZ7TRdhUbhZOF?=
 =?us-ascii?Q?tKpgxasMcdEbko50su9JM0SJFX4s51YSX645MjrqomWxV6G8tv0vgDKauyVn?=
 =?us-ascii?Q?fjxl5I8uHrSiMx9z77tJHsusD78BQCJxiWbMHerWxEVldsUE1hAFdePiNYY6?=
 =?us-ascii?Q?O/+dP86Xbw53nY+dCMcGtfj7R1sq8AgoNoKzlovv6ZKzxVmrIZhuKHQS1WWG?=
 =?us-ascii?Q?eW/31517yUxABdDMEwwJwHKifn8E59cQpRmIgn7LxsTrj6Zz6chYmq7HWB47?=
 =?us-ascii?Q?8gV8DIMhbw8mtXaL/+ReHUTBg/9K5zZu1vLl9qzV9eBtGPswtn8MTZk3Y6ud?=
 =?us-ascii?Q?/A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a9a122f-a6b3-43f3-7177-08dafad2439f
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 10:37:01.3601 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F/QPMotiQqYSllXEJQx8PHqwOlLrZKBWlN0GkE65OpFhI7iwyUk2ddG1oyGtiEfJr65RulnRzCzph8X0WZc0iA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6953
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/7] drm/i915: move a few HAS_ macros closer
 to their place
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

On Wed, Jan 18, 2023 at 03:15:35PM +0200, Jani Nikula wrote:
> There's not that much organization with where the various HAS_FEATURE()
> macros are placed, but at least try to group them closer together.


yeap


Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index ad0c5fd0cc92..73ce5447cae8 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -187,8 +187,6 @@ struct i915_gem_mm {
>  	u32 shrink_count;
>  };
>  
> -#define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
> -
>  struct i915_virtual_gpu {
>  	struct mutex lock; /* serialises sending of g2v_notify command pkts */
>  	bool active;
> @@ -444,9 +442,6 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
>  
>  #define INTEL_REVID(dev_priv)	(to_pci_dev((dev_priv)->drm.dev)->revision)
>  
> -#define HAS_DSB(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dsb)
> -#define HAS_DSC(__i915)		(RUNTIME_INFO(__i915)->has_dsc)
> -
>  #define INTEL_DISPLAY_STEP(__i915) (RUNTIME_INFO(__i915)->step.display_step)
>  #define INTEL_GRAPHICS_STEP(__i915) (RUNTIME_INFO(__i915)->step.graphics_step)
>  #define INTEL_MEDIA_STEP(__i915) (RUNTIME_INFO(__i915)->step.media_step)
> @@ -858,6 +853,9 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  #define HAS_RPS(dev_priv)	(INTEL_INFO(dev_priv)->has_rps)
>  
>  #define HAS_DMC(dev_priv)	(RUNTIME_INFO(dev_priv)->has_dmc)
> +#define HAS_DSB(dev_priv)	(INTEL_INFO(dev_priv)->display.has_dsb)
> +#define HAS_DSC(__i915)		(RUNTIME_INFO(__i915)->has_dsc)
> +#define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
>  
>  #define HAS_HECI_PXP(dev_priv) \
>  	(INTEL_INFO(dev_priv)->has_heci_pxp)
> -- 
> 2.34.1
> 
