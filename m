Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B086752B3
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Jan 2023 11:43:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B2B310E0EA;
	Fri, 20 Jan 2023 10:43:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEB7A10E0EA
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Jan 2023 10:43:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674211415; x=1705747415;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2OSG7fNlrhngF1bdtELQ/aGOs8KUUoJKyGkG7sZIov8=;
 b=H/LGAVkcWnRaH/kYbba2GEaxybjdNCohcqfjlyNI9ce8/KMhNHiHAbIM
 YoB4dq1tK2pU9G0x5fGREJHbjvok5F5zrFTJyaxPQp3UooP1F8SQa8TOi
 92Noje0w9RoA/waBqTGtmQPMjtdyQvQuBcnXykRztoEKqC1/Nw2R8MyiU
 fO8rReTX/WBNnONseJx24DPmZJ2Uh+B0bqOpXxhxDPFad7ofTDUr6yjZL
 /TFgO9sfVNQYGTA+KanPHmRF8Gq/GQLUaqjA5WEFM8ckFwOmfGQHHVnLL
 Fzbx1JrpzTR/TRXHQimo0Zdb3GsGcLv02xqNmfYqgR2G3+91//Fi/i0P5 A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="411784194"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="411784194"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2023 02:43:35 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10595"; a="749299233"
X-IronPort-AV: E=Sophos;i="5.97,231,1669104000"; d="scan'208";a="749299233"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP; 20 Jan 2023 02:43:35 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 20 Jan 2023 02:43:34 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 20 Jan 2023 02:43:34 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 20 Jan 2023 02:43:34 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZzFvtQHg0WrMDkYGdvP8tQzgDblwsZghoAI2yy8JEPF1x/ubbY8jC4fDltpkuQCBl7UJ7mxva97c/9fdPWvH7Ywyd4ZCRA/1f5Dlnj9rj16OMrnrMIP++BMo1O9CZwx83fEJFJUGXNKKwYPH6gEHPmfkrD0EQScWzP0AKj0C/YuehxC6TwZja7McFRlIVwDqYlMzzDEhq2CBG3I6c2guyU8zFv70Uq0Plpzuc5Tfi2DkcImHm7skx3WuDBxijFbHxIDXr8ZOlIk8iPtkpYAfE4gt13iprjB/rGfJSN8u7nqXkIW4Je0Jntclt5rTRhnSQ7ZzDPBQm3P2E388fJjv4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YfYBtQoVCE1GcwUMAHCXHUpnIZu8wBrD1P0prrKOmFM=;
 b=A63gMaFlzpM139xdnCMI922WYkRqH3cv33r/fB/W3nZjx01MSqAZ0lx/SZ6sIYH9xf/n+gX8aEaO9MLl25eGBkXOal0AvcAw/x88K54065cAdkqR0ijY1EHR/x82p0u5jcZw55vncvweCtt0519U4uwV78lZNO6OTmsHkX3x+5B55s8nqSI2d9FrEuMRARutcd0pfGwclHD0+tP6B8QDfdgTDBEV1OghjcIrApoT2ehh/KLk9M9mtNsS0d56dUQtnrUidd/qSZLYc83Wlm48C7GtTZ9koInqDsBTKLajAgzghb/rvPHxMhn4eEJQd1K0I6jmv92ps3xVKq+h3KU3Bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM6PR11MB4753.namprd11.prod.outlook.com (2603:10b6:5:2ac::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6002.27; Fri, 20 Jan
 2023 10:43:33 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.6002.025; Fri, 20 Jan 2023
 10:43:33 +0000
Date: Fri, 20 Jan 2023 05:43:29 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y8pwUeDTaoteUmI9@intel.com>
References: <20230118131538.3558599-1-jani.nikula@intel.com>
 <20230118131538.3558599-6-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230118131538.3558599-6-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR08CA0038.namprd08.prod.outlook.com
 (2603:10b6:a03:117::15) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM6PR11MB4753:EE_
X-MS-Office365-Filtering-Correlation-Id: e7c4725c-50c4-4421-f172-08dafad32d05
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QSSlLoN89tqUoFO2b5fF6WlyBGebu0s3ZKBmk8Y3e8ROn4TYOkU4/jpUTG66XIzc0RnxGrsC2DrB56EfFKPzdfLxAnSXk9QiiFOSZClomarn9/tnTyX1omSGo3ggmZx03T/zR/OeQpo6g2eIwJrVVmlFwzM9m5x/YsyPyYVAWEkKW8nkyKabFumHoT4ISWlbvKXMwn299d7BOiUTtlWT4bm8kkm+IDNRdOGnPJZeiA9ADdEdTeN+D7F/3fvdRzZsnsH2+3UcAVJXKmnhGgh+pSvlhaCdMEOi1CzrLPRAUYfWMY4TI2oxDQifxTniNAywihzog2MFabDGeNjJQ6yhaz5ufBHK601jv3ZFEj++DaHQSEVqjwa7m4zKfQAdD/k8n7ckrPoPHd/ZlGQAlypF1x616EIHDbWA9gN11PWjDRiehhFd/AIoD7Ua09u1xwZOtb5EvltWrOA3IYqCtRVVO2x9HRZc1pdnOIp2keoM8lIytZXxPsaYxjSLdSHDYXeX8NuKUZNExUh0XLr2vSPO48TpKKbLObX4XitnMEaUUWIBeKxPOle/86sf0gmCmSJvlxH9S5ISx3XW+m8+01xQ0+JPtNsGYbHYZWWpD13MnrJT2qtjtfBFJUgvF7O59ZNGwxD3rbdiG18eZlnSkLCXrQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(376002)(366004)(39860400002)(136003)(451199015)(186003)(2906002)(6512007)(26005)(6506007)(6636002)(37006003)(316002)(2616005)(6486002)(478600001)(36756003)(6666004)(38100700002)(82960400001)(86362001)(83380400001)(41300700001)(4326008)(6862004)(44832011)(5660300002)(8936002)(66556008)(66946007)(66476007)(8676002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ETMV7YOogbqvoNLwiO90Xixp7svS9+qYHaxXqwOxbnQDZRyZKmDZgKDAWdh8?=
 =?us-ascii?Q?J7DE70kMZXBp1AiaP4d21ET2eumR6Tqhc29QIckTg1wYTCDOtYcQ8zI4o4fb?=
 =?us-ascii?Q?3E18EefAid3oKSWsD6Q+VaK81My+aJmW8yjcR2MFwmx73gF3Bkq5c1XDGrxr?=
 =?us-ascii?Q?ZKEytpOQoFExUX4clIJd1Y/fSqo6O7FKBpSdZpkG0pTipHCauHjcu1wLis6J?=
 =?us-ascii?Q?V8LCwN6dPz6R2e7QsPNVTRWy4tXtFCAANLMbRRd7/lhTdFGEAEBwpDoZQVJ6?=
 =?us-ascii?Q?jdidixk0YtaE+KBSdyGWf41lm50vVA5bhwPVHgVcEtwCE46gO7+KAVp1uQmc?=
 =?us-ascii?Q?5Y2SBEoIAE+W6HwPjvgO6445StrQwVsSfssZJAtdrQIe3r1DelTiY4IbyVSk?=
 =?us-ascii?Q?2XO+o4cJbXc1VlHuVd+vu+wPEtWg6BojCx9bG2lAuKW6D/zaljKqFDlleZ+6?=
 =?us-ascii?Q?opOQ0RUw/g3UiWRXDsAmRP8pXrzSpeHHjaJe02ONkV617hI2Na2+QWBSGd8L?=
 =?us-ascii?Q?s8BPESbK/ipGe5QgdAmdmLlsuvm6fC9jvtEiSoaOWVoblkhNGF2Opt9ONVKT?=
 =?us-ascii?Q?JLJOa3cCCGjvglEpNt2fihQ7Q4hczKEzauAPKwA7ISp75lOjkhuJmKTwL+9/?=
 =?us-ascii?Q?/hPWYU/iTPWhaqgWpYgAi2VQsDO32V1nDPz9Hyl5Vq9/9Fjsz9PYI/VkiCyn?=
 =?us-ascii?Q?WOarRNihQnWRv5GwqHw4hOOO3IOHYkpjNDC3nFZ7hlyrtaCBBqZRNOgvVy0s?=
 =?us-ascii?Q?wnY+2Kcl3AIt5Nl33NMmSltdpNWamJ1nq+lxdtGMCCh7DdWjTkRXBiMZlCjv?=
 =?us-ascii?Q?9ae8r/jnjGOtUovdbA7JG0hN2MQMaQVX+b9gmJ0vSqQaVb43wZoQ5lXRhnUB?=
 =?us-ascii?Q?G4dOIcxwsH2lNbNgx1rD7SDFyFZIEmSkHuLFp+9jcD9TmsTNJ7ydQ5jdVDQz?=
 =?us-ascii?Q?rO15Fdv84HLF4KIqOKJWtLntiHW9unomkR1zURNhVOg0Yi8Q8lFA59GeIWxM?=
 =?us-ascii?Q?bFcGjlZK3ItwGOeoZz4r05/QWA9ugF8Y/P3eICIqBEYW8KvDVt86NN45d91j?=
 =?us-ascii?Q?58aogNB/xRk6PVeHPvD8cAzDBIT8yZAOyptUrMSleK2WWMSHjj0ORMzKz9mz?=
 =?us-ascii?Q?u032wFxveJz/HYRYL7E7sJbd4r8fuRV78E/YEDG7siIETkJGmLug9iQjaOmn?=
 =?us-ascii?Q?M/+4D61F6pznxaRzV6oYPrwCXUtu8TCJnUQNJ5XvM16OTWnx4TkYCoBJ1hpq?=
 =?us-ascii?Q?L2v3auvZvVsACdTkoNpdFEMpARI92ija1mlxAHO2AcIJcOUpsBQh4oi/P86l?=
 =?us-ascii?Q?IgvfmYgyVo3DNGCxvnHVKdQrbC+FonKTaKxD+Dxi2uu9h+PoxF/OfCvar6Ha?=
 =?us-ascii?Q?tj/sbRzswDgV5NPFCkfht1WOKo5b6A/0ILDOnZFg/Uh8w9SR8TuTXAuKgvlM?=
 =?us-ascii?Q?rErPJZVCshYNM2YyLIOgAADDSo3TcD/uf7PWq+e0vazcNAYfLVhQ8M7jAat8?=
 =?us-ascii?Q?FM3hDZ3pTCuZCqvGgl6HUfLHsZ9CzkmpC9Q7SaX5dppV9oU/fqQuXeKwpilB?=
 =?us-ascii?Q?kyLzpzWy+sXY+EEU4SekueGf6UIbBQlq+FJ8ZUa71znSw+EYtJtwqg08Rv56?=
 =?us-ascii?Q?9Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e7c4725c-50c4-4421-f172-08dafad32d05
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Jan 2023 10:43:33.0494 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: n07wLnt7rdAA9BwyH/H9KxgtVf6snzjvLB+G3smURTx7VavPsJ9U7ITT/M0hllDyDz5nnrU5ZuhqvLqCp/GEkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4753
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 6/7] drm/i915: move I915_COLOR_UNEVICTABLE
 to i915_gem_gtt.h
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

On Wed, Jan 18, 2023 at 03:15:37PM +0200, Jani Nikula wrote:
> Declutter i915_drv.h.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_drv.h     | 2 --
>  drivers/gpu/drm/i915/i915_gem_gtt.h | 2 ++
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index eed552e507dc..d12c7932677a 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -68,8 +68,6 @@ struct drm_i915_clock_gating_funcs;
>  struct vlv_s0ix_state;
>  struct intel_pxp;
>  
> -#define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
> -
>  #define GEM_QUIRK_PIN_SWIZZLED_PAGES	BIT(0)
>  
>  /* Data Stolen Memory (DSM) aka "i915 stolen memory" */
> diff --git a/drivers/gpu/drm/i915/i915_gem_gtt.h b/drivers/gpu/drm/i915/i915_gem_gtt.h

same question here... used in gem_evict which does not directly include this

> index 243419783052..3d77679bf211 100644
> --- a/drivers/gpu/drm/i915/i915_gem_gtt.h
> +++ b/drivers/gpu/drm/i915/i915_gem_gtt.h
> @@ -18,6 +18,8 @@ struct drm_i915_gem_object;
>  struct i915_address_space;
>  struct i915_gem_ww_ctx;
>  
> +#define I915_COLOR_UNEVICTABLE (-1) /* a non-vma sharing the address space */
> +
>  int __must_check i915_gem_gtt_prepare_pages(struct drm_i915_gem_object *obj,
>  					    struct sg_table *pages);
>  void i915_gem_gtt_finish_pages(struct drm_i915_gem_object *obj,
> -- 
> 2.34.1
> 
