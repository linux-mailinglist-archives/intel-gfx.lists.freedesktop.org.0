Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DF166E57E
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jan 2023 19:00:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4F6610E305;
	Tue, 17 Jan 2023 18:00:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B7E410E307
 for <intel-gfx@lists.freedesktop.org>; Tue, 17 Jan 2023 18:00:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673978427; x=1705514427;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CW97zAx1MROnuMpJs6RDWNJtjJtDPj+NTXSmYHmsKRg=;
 b=DPOlZSMzAu2/Re8y2gGhDSFpDQqRTqlKqVM4Fup7gRA6o8Akriu3BDUe
 Jf/iCUZsgO+HdWedQEsBVxM0nln7lNDjNnYpwDFwQBj3BmUAS8Q8ZF5ST
 NHcs+H0F+txMQG4rQQu0C6ZvZtq24ONXrIJZ+A9N90xCyC1UdxkMvs4y2
 QJkWmqWDwnobERPaRG8nxBN+YxQ7noGYaGciihPzHZAnhHQIh0SzpZMCg
 TTVgY+M3ksSpKzE6hsvnE47Nvurr6L2gpaU3kgU/q7OOX+1QSUUPvLPCs
 OmZeX7zUhR5a2i4GPNtRINpaINF5An1jmQ5MrfEj8DBNhSecUtQVDSECv Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="326042747"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="326042747"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jan 2023 09:59:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10592"; a="801830859"
X-IronPort-AV: E=Sophos;i="5.97,224,1669104000"; d="scan'208";a="801830859"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 17 Jan 2023 09:59:21 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 17 Jan 2023 09:59:20 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 17 Jan 2023 09:59:20 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.174)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 17 Jan 2023 09:59:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KFwbEI8B4md36bLUmT8Gi+L/Dbz4jqmOoagJ/AimWcJsCIPbtnVYxGknBF4YEZ/i2ieANf4oCitMcXTuCzaYB/ul+JxP02Sh/AHUizSuwtN5hGmQqyhqhujJk3UG1Y8pCHlHqtvMuDUHxa41HS/q+NPekOkjpGrjrTK+ySAlYQ4+WAsJAjapyP1MZCrNUQb3Ig8/GbMPkIZJGjEMYqcETc4kYZoL2MBF5NgLAEyWg7d/IaYkUyvhW2UKjkXlRWQn6LZ/wpfV5GJbvd0EJ2wbioVov3zQafgjzqSrasnS6V3OOiH5LzrA4ha6ELd6WNrx9Vbqb3R3OeTZ9TgbijYKng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ktHmZrxDQ8gznGrxMTEVMH2NkZjWLx1/UGzHNHLAKFo=;
 b=l8uMrBZ8r70KXq4s6M5LSTXsY2fceDyFMSf7fiu/jbo5r+/ohE4uI+yKrV+QMxnp7kEIYL6sgWaLq44pHP9mHyTIq1MQGsN6Od6J5MkJYK7sLQxPSZoN3xRR8zubFZL+IqvdGC+we++zW+nM99orTMLvDyHyoyb1sSo6Jt74CXWX8BMY3M4pqz1DR3IHSNZbWtf0Dyu1EORgyBBOCnz8dGc5G6N7mIEK8e0OBBN3suUsYoOlScHHLScrekUwTkha9oEKEJI2aRjBkMvNK16CFfM4NfO5YATY6pnc4ndGxT7mx7yPBObg6iOZKtUyTfx7q8HotKg2RX0BReb6ef5JXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA2PR11MB5084.namprd11.prod.outlook.com (2603:10b6:806:116::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.23; Tue, 17 Jan
 2023 17:59:13 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::1818:e39d:454d:a930%4]) with mapi id 15.20.5986.018; Tue, 17 Jan 2023
 17:59:13 +0000
Date: Tue, 17 Jan 2023 12:59:09 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <Y8bh7WSIJg18ta92@intel.com>
References: <20230116173422.1858527-1-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230116173422.1858527-1-jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0121.namprd03.prod.outlook.com
 (2603:10b6:a03:33c::6) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA2PR11MB5084:EE_
X-MS-Office365-Filtering-Correlation-Id: 3d063869-9021-43bf-fd08-08daf8b48abb
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uXSNg7I/ltj79+ZgTzw8vX6VEiBPq99SMRMpCOW4tF6mr7KyvPOyI0xynMxq+8stdATpt/nAgNZh9ZVDsbbr0/q5FQ3qwItypea726Yfte4noQdgWNm5NMcH4dLUl2z2+tfpRRUaMswOaR7uno0d9tt/+5DdNFC8fMIksCoYZHnvXtLr2e93wfxysjWx18QVJXWydTRDa1DKvvJhKGy+OGLWlJZcow+OTyON/YUalOdA4Y4ZcN7N3SmPITP0JrX+B29YnoahFYz3etP2mehA7+l7pVVHjkuAB/hzHXziiGggSuzqTF4FZuaKDYYaR1ethhBsohTTvu0Smp4oLznxcH70TM7vgleKk3Q82fvXs1TbQZKxl9ZcPJ69InYHecCU44Uu/R17aws2LI+5qyKJ2EHY/tNLrA75DKUJddHb7jk5m568gHfRczyBU6OS2IZb7aAQC/FJunM3K/i9c6mZk58fc11zdz/Pfk7U7VNNwosLhEOZSiUognu71q9gUj6p4VqsITajQ5zpd6v7++/gA5VBmjIeoY9xaQDUL5tem5rcZQZZI3nOD8H2SvX20mzydZ/PX3SmnnOa/0qHkR+kk13vOy1Zg0623NlOITNcw/gWYQ5ZsBukuWfKH1UVllEpBMpqlfQtBfggRXT4QGxt0A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(376002)(346002)(136003)(39860400002)(396003)(451199015)(36756003)(86362001)(30864003)(66946007)(8936002)(66556008)(44832011)(8676002)(6862004)(66476007)(2906002)(4326008)(83380400001)(82960400001)(5660300002)(38100700002)(6636002)(316002)(6486002)(37006003)(41300700001)(6666004)(478600001)(2616005)(6512007)(6506007)(26005)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?pPiZIg3ytoa390YeCsnQZgjgZKKo3Pxrp4ynzqedCPmh3kcf59h/Yt3z+adq?=
 =?us-ascii?Q?vrMibE77l5mGhPX+SrTjuEBJJJGtJ0ITnMCHOsrSgEa5u4ArQSZaDNlXcylh?=
 =?us-ascii?Q?ZQ2opxDGMsxRZsySYywhyCnpxL2xTXwpGafophN6iREMy7lywOMglWwOYcjO?=
 =?us-ascii?Q?kr1W6ys5L6b4yYkdULBLM3CNlx3M/ZajsCNAExYzQsVBdV9tenkQegP6Zy1y?=
 =?us-ascii?Q?mkWkNKX2DhfJ1Bnbs5Xz67QpQ1ZjOAh4OsVBomuvItXHzoFoXZEjbKgsKRDb?=
 =?us-ascii?Q?bJqGUvYgF4zN8tg+60BWb6ogNr7DlS8VaI/ckuGxekvn1CcADhKoEyVFM6Rm?=
 =?us-ascii?Q?bgkqornFYG6AzVDWSvuYdBfw2g3Zn31xV7LyS6Vfu6g1KHGtIfSbu9SLxQaO?=
 =?us-ascii?Q?jJK0zyehra/rMFpQ3GO5/xQ2JIjLJlIyTNLCssOAPdQpBtETnhkdGbRVs6rs?=
 =?us-ascii?Q?DuwBUR0zmSHMpmIIcqSmvhrckodJUQ9WatGUL2B0b+XB7WjRkeAZe2g4Rz5j?=
 =?us-ascii?Q?nukbYUgMjZDP48PPJj/A+x0dB8ILMpDydZ2IRiES1+sxqSmMvQBPWf6N3s3J?=
 =?us-ascii?Q?Mb8dNn03HMD5Aj5AthU+muzx1VmPIQgPBOr/0asckY2TI5zc5BFKzn4DzSUj?=
 =?us-ascii?Q?DIl7wyGispuI5PUwD4iKtU8Qr6pKNA7qJLGmpNdJ4Ev0PdYsI1AKp6yukrfp?=
 =?us-ascii?Q?bo0VL29mXN4ciNVypz3JeBYdIU/KzLuQ7fghhtsaRQM6FnOqb6X8mvmQYVz9?=
 =?us-ascii?Q?20NfQytb7I/qbOhPoQ6Wi2fX4MUOYDWpUWFL5E1j2p+YM93yUuH5DcLVWWj9?=
 =?us-ascii?Q?lmbtTOCA2BjVWFg8Ikfdg4T461BUcjpAEtKNblsNtRnNGt5zxDRvVLXRUfPh?=
 =?us-ascii?Q?RmD23ss7ByEiaT3EcXk4EMqMssjvoHvK1aJBWAoFNSnr2159uIVgTZ7QPV6d?=
 =?us-ascii?Q?icRoTUHe5z0LiH+Cn2N6kSc41SIrA8XPL8qwxsG1wVnRaSK/F87fk6hLaNls?=
 =?us-ascii?Q?zH+APHjQ99fUhMvzYDXUqrMra/jae0HeCO7yOg6bYGR5vx11Q5rG1XTqDQDY?=
 =?us-ascii?Q?5DGqBeEU5bxc88FmcZ6X2v7NcJCpOREgYfkrO9TpRYwbW/e9sG/K1jfaml3/?=
 =?us-ascii?Q?0FavTamLk0eTZiNtulYg/iR/f8qiRfTtFFDuKKgm3HG3czmE5LPZIzgMLJjW?=
 =?us-ascii?Q?eonzCToxU5UswJ30vwhFng7IYIfhDrgm3soDkJLkyxhEb9L2dCAE7Qn+p4Nh?=
 =?us-ascii?Q?ArXGYZXbgF3Bz0PdO3LWnBkV0Iz5OfQ+wn4HRjNOSOjkWivx3zvDjkgdoC0O?=
 =?us-ascii?Q?l+LoA9AG8YgM+jP+m2JxTrYbyvU/F9hVuG8Vvql9LSpQOn5cB+0hpmuRVPe/?=
 =?us-ascii?Q?7sAzgLko4Uub3GC5219TMhmylFVxP+lHD8nIyndxm1Eqx2WGhRKRWNEZkHWX?=
 =?us-ascii?Q?Ir5+InWONyHDkPAifFoQI7N0DuaH2BO3W4rtg+mrWsZM70lmYfCrTYxyHxrN?=
 =?us-ascii?Q?9sa1wERRZXMu6KK4xRhFRi1VuNuBfJPtrl4A2UUwxbPZyTiu5+cUyYtoNrSZ?=
 =?us-ascii?Q?TiJXoE91TkQ0u0wLPAv1jkZGngE3dmhOQrX6artVDVMnXghzZWWZp48QDeVC?=
 =?us-ascii?Q?9w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d063869-9021-43bf-fd08-08daf8b48abb
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Jan 2023 17:59:13.4536 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zdujJx0bH9aEpvrZqCABrVx915BXQ13UW789Z40UHQnKtNtBGL3/l05omnJGjEGe43jUMjSI4iC/YvOVm3tQtQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5084
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: add struct i915_dsm to wrap
 dsm members together
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

On Mon, Jan 16, 2023 at 07:34:21PM +0200, Jani Nikula wrote:
> Wrap the stolen memory related struct drm_i915_private members (dsm,
> dsm_reserved, and stolen_usable_size) together in a a new struct
> i915_dsm.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c      | 10 ++--
>  drivers/gpu/drm/i915/display/intel_fbdev.c    |  2 +-
>  .../drm/i915/display/intel_plane_initial.c    |  2 +-
>  drivers/gpu/drm/i915/gem/i915_gem_stolen.c    | 36 ++++++-------
>  drivers/gpu/drm/i915/gt/intel_rc6.c           | 12 ++---
>  drivers/gpu/drm/i915/gt/selftest_reset.c      |  2 +-
>  drivers/gpu/drm/i915/i915_drv.h               | 53 +++++++++++--------
>  drivers/gpu/drm/i915/selftests/i915_gem.c     |  4 +-
>  8 files changed, 64 insertions(+), 57 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index c508dcf415b4..b507ff944864 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -331,15 +331,15 @@ static void i8xx_fbc_program_cfb(struct intel_fbc *fbc)
>  {
>  	struct drm_i915_private *i915 = fbc->i915;
>  
> -	GEM_BUG_ON(range_overflows_end_t(u64, i915->dsm.start,
> +	GEM_BUG_ON(range_overflows_end_t(u64, i915->dsm.stolen.start,
>  					 fbc->compressed_fb.start, U32_MAX));
> -	GEM_BUG_ON(range_overflows_end_t(u64, i915->dsm.start,
> +	GEM_BUG_ON(range_overflows_end_t(u64, i915->dsm.stolen.start,
>  					 fbc->compressed_llb.start, U32_MAX));
>  
>  	intel_de_write(i915, FBC_CFB_BASE,
> -		       i915->dsm.start + fbc->compressed_fb.start);
> +		       i915->dsm.stolen.start + fbc->compressed_fb.start);
>  	intel_de_write(i915, FBC_LL_BASE,
> -		       i915->dsm.start + fbc->compressed_llb.start);
> +		       i915->dsm.stolen.start + fbc->compressed_llb.start);
>  }
>  
>  static const struct intel_fbc_funcs i8xx_fbc_funcs = {
> @@ -712,7 +712,7 @@ static u64 intel_fbc_stolen_end(struct drm_i915_private *i915)
>  	 * underruns, even if that range is not reserved by the BIOS. */
>  	if (IS_BROADWELL(i915) ||
>  	    (DISPLAY_VER(i915) == 9 && !IS_BROXTON(i915)))
> -		end = resource_size(&i915->dsm) - 8 * 1024 * 1024;
> +		end = resource_size(&i915->dsm.stolen) - 8 * 1024 * 1024;
>  	else
>  		end = U64_MAX;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_fbdev.c b/drivers/gpu/drm/i915/display/intel_fbdev.c
> index bbdb98d7c96e..19f3b5d92a55 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbdev.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbdev.c
> @@ -170,7 +170,7 @@ static int intelfb_alloc(struct drm_fb_helper *helper,
>  		 * important and we should probably use that space with FBC or other
>  		 * features.
>  		 */
> -		if (size * 2 < dev_priv->stolen_usable_size)
> +		if (size * 2 < dev_priv->dsm.usable_size)
>  			obj = i915_gem_object_create_stolen(dev_priv, size);
>  		if (IS_ERR(obj))
>  			obj = i915_gem_object_create_shmem(dev_priv, size);
> diff --git a/drivers/gpu/drm/i915/display/intel_plane_initial.c b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> index 76be796df255..bb6ea7de5c61 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane_initial.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane_initial.c
> @@ -107,7 +107,7 @@ initial_plane_vma(struct drm_i915_private *i915,
>  	 */
>  	if (IS_ENABLED(CONFIG_FRAMEBUFFER_CONSOLE) &&
>  	    mem == i915->mm.stolen_region &&
> -	    size * 2 > i915->stolen_usable_size)
> +	    size * 2 > i915->dsm.usable_size)
>  		return NULL;
>  
>  	obj = i915_gem_object_create_region_at(mem, phys_base, size, 0);
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> index bc9521078807..de873498d95b 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_stolen.c
> @@ -211,7 +211,7 @@ static void g4x_get_stolen_reserved(struct drm_i915_private *i915,
>  					IS_GM45(i915) ?
>  					CTG_STOLEN_RESERVED :
>  					ELK_STOLEN_RESERVED);
> -	resource_size_t stolen_top = i915->dsm.end + 1;
> +	resource_size_t stolen_top = i915->dsm.stolen.end + 1;
>  
>  	drm_dbg(&i915->drm, "%s_STOLEN_RESERVED = %08x\n",
>  		IS_GM45(i915) ? "CTG" : "ELK", reg_val);
> @@ -276,7 +276,7 @@ static void vlv_get_stolen_reserved(struct drm_i915_private *i915,
>  				    resource_size_t *size)
>  {
>  	u32 reg_val = intel_uncore_read(uncore, GEN6_STOLEN_RESERVED);
> -	resource_size_t stolen_top = i915->dsm.end + 1;
> +	resource_size_t stolen_top = i915->dsm.stolen.end + 1;
>  
>  	drm_dbg(&i915->drm, "GEN6_STOLEN_RESERVED = %08x\n", reg_val);
>  
> @@ -365,7 +365,7 @@ static void bdw_get_stolen_reserved(struct drm_i915_private *i915,
>  				    resource_size_t *size)
>  {
>  	u32 reg_val = intel_uncore_read(uncore, GEN6_STOLEN_RESERVED);
> -	resource_size_t stolen_top = i915->dsm.end + 1;
> +	resource_size_t stolen_top = i915->dsm.stolen.end + 1;
>  
>  	drm_dbg(&i915->drm, "GEN6_STOLEN_RESERVED = %08x\n", reg_val);
>  
> @@ -414,7 +414,7 @@ static void icl_get_stolen_reserved(struct drm_i915_private *i915,
>  }
>  
>  /*
> - * Initialize i915->dsm_reserved to contain the reserved space within the Data
> + * Initialize i915->dsm.reserved to contain the reserved space within the Data
>   * Stolen Memory. This is a range on the top of DSM that is reserved, not to
>   * be used by driver, so must be excluded from the region passed to the
>   * allocator later. In the spec this is also called as WOPCM.
> @@ -430,7 +430,7 @@ static int init_reserved_stolen(struct drm_i915_private *i915)
>  	resource_size_t reserved_size;
>  	int ret = 0;
>  
> -	stolen_top = i915->dsm.end + 1;
> +	stolen_top = i915->dsm.stolen.end + 1;
>  	reserved_base = stolen_top;
>  	reserved_size = 0;
>  
> @@ -471,13 +471,13 @@ static int init_reserved_stolen(struct drm_i915_private *i915)
>  		goto bail_out;
>  	}
>  
> -	i915->dsm_reserved =
> +	i915->dsm.reserved =
>  		(struct resource)DEFINE_RES_MEM(reserved_base, reserved_size);
>  
> -	if (!resource_contains(&i915->dsm, &i915->dsm_reserved)) {
> +	if (!resource_contains(&i915->dsm.stolen, &i915->dsm.reserved)) {
>  		drm_err(&i915->drm,
>  			"Stolen reserved area %pR outside stolen memory %pR\n",
> -			&i915->dsm_reserved, &i915->dsm);
> +			&i915->dsm.reserved, &i915->dsm.stolen);
>  		ret = -EINVAL;
>  		goto bail_out;
>  	}
> @@ -485,7 +485,7 @@ static int init_reserved_stolen(struct drm_i915_private *i915)
>  	return 0;
>  
>  bail_out:
> -	i915->dsm_reserved =
> +	i915->dsm.reserved =
>  		(struct resource)DEFINE_RES_MEM(reserved_base, 0);
>  
>  	return ret;
> @@ -517,27 +517,27 @@ static int i915_gem_init_stolen(struct intel_memory_region *mem)
>  	if (request_smem_stolen(i915, &mem->region))
>  		return -ENOSPC;
>  
> -	i915->dsm = mem->region;
> +	i915->dsm.stolen = mem->region;
>  
>  	if (init_reserved_stolen(i915))
>  		return -ENOSPC;
>  
>  	/* Exclude the reserved region from driver use */
> -	mem->region.end = i915->dsm_reserved.start - 1;
> +	mem->region.end = i915->dsm.reserved.start - 1;
>  	mem->io_size = min(mem->io_size, resource_size(&mem->region));
>  
> -	i915->stolen_usable_size = resource_size(&mem->region);
> +	i915->dsm.usable_size = resource_size(&mem->region);
>  
>  	drm_dbg(&i915->drm,
>  		"Memory reserved for graphics device: %lluK, usable: %lluK\n",
> -		(u64)resource_size(&i915->dsm) >> 10,
> -		(u64)i915->stolen_usable_size >> 10);
> +		(u64)resource_size(&i915->dsm.stolen) >> 10,
> +		(u64)i915->dsm.usable_size >> 10);
>  
> -	if (i915->stolen_usable_size == 0)
> +	if (i915->dsm.usable_size == 0)
>  		return -ENOSPC;
>  
>  	/* Basic memrange allocator for stolen space. */
> -	drm_mm_init(&i915->mm.stolen, 0, i915->stolen_usable_size);
> +	drm_mm_init(&i915->mm.stolen, 0, i915->dsm.usable_size);
>  
>  	return 0;
>  }
> @@ -587,7 +587,7 @@ i915_pages_create_for_stolen(struct drm_device *dev,
>  	struct sg_table *st;
>  	struct scatterlist *sg;
>  
> -	GEM_BUG_ON(range_overflows(offset, size, resource_size(&i915->dsm)));
> +	GEM_BUG_ON(range_overflows(offset, size, resource_size(&i915->dsm.stolen)));
>  
>  	/* We hide that we have no struct page backing our stolen object
>  	 * by wrapping the contiguous physical allocation with a fake
> @@ -607,7 +607,7 @@ i915_pages_create_for_stolen(struct drm_device *dev,
>  	sg->offset = 0;
>  	sg->length = size;
>  
> -	sg_dma_address(sg) = (dma_addr_t)i915->dsm.start + offset;
> +	sg_dma_address(sg) = (dma_addr_t)i915->dsm.stolen.start + offset;
>  	sg_dma_len(sg) = size;
>  
>  	return st;
> diff --git a/drivers/gpu/drm/i915/gt/intel_rc6.c b/drivers/gpu/drm/i915/gt/intel_rc6.c
> index 2ee4051e4d96..5c91622dfca4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rc6.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rc6.c
> @@ -301,7 +301,7 @@ static int chv_rc6_init(struct intel_rc6 *rc6)
>  	pcbr = intel_uncore_read(uncore, VLV_PCBR);
>  	if ((pcbr >> VLV_PCBR_ADDR_SHIFT) == 0) {
>  		drm_dbg(&i915->drm, "BIOS didn't set up PCBR, fixing up\n");
> -		paddr = i915->dsm.end + 1 - pctx_size;
> +		paddr = i915->dsm.stolen.end + 1 - pctx_size;
>  		GEM_BUG_ON(paddr > U32_MAX);
>  
>  		pctx_paddr = (paddr & ~4095);
> @@ -325,7 +325,7 @@ static int vlv_rc6_init(struct intel_rc6 *rc6)
>  		/* BIOS set it up already, grab the pre-alloc'd space */
>  		resource_size_t pcbr_offset;
>  
> -		pcbr_offset = (pcbr & ~4095) - i915->dsm.start;
> +		pcbr_offset = (pcbr & ~4095) - i915->dsm.stolen.start;
>  		pctx = i915_gem_object_create_region_at(i915->mm.stolen_region,
>  							pcbr_offset,
>  							pctx_size,
> @@ -354,10 +354,10 @@ static int vlv_rc6_init(struct intel_rc6 *rc6)
>  	}
>  
>  	GEM_BUG_ON(range_overflows_end_t(u64,
> -					 i915->dsm.start,
> +					 i915->dsm.stolen.start,
>  					 pctx->stolen->start,
>  					 U32_MAX));
> -	pctx_paddr = i915->dsm.start + pctx->stolen->start;
> +	pctx_paddr = i915->dsm.stolen.start + pctx->stolen->start;
>  	intel_uncore_write(uncore, VLV_PCBR, pctx_paddr);
>  
>  out:
> @@ -448,8 +448,8 @@ static bool bxt_check_bios_rc6_setup(struct intel_rc6 *rc6)
>  	 */
>  	rc6_ctx_base =
>  		intel_uncore_read(uncore, RC6_CTX_BASE) & RC6_CTX_BASE_MASK;
> -	if (!(rc6_ctx_base >= i915->dsm_reserved.start &&
> -	      rc6_ctx_base + PAGE_SIZE < i915->dsm_reserved.end)) {
> +	if (!(rc6_ctx_base >= i915->dsm.reserved.start &&
> +	      rc6_ctx_base + PAGE_SIZE < i915->dsm.reserved.end)) {
>  		drm_dbg(&i915->drm, "RC6 Base address not as expected.\n");
>  		enable_rc6 = false;
>  	}
> diff --git a/drivers/gpu/drm/i915/gt/selftest_reset.c b/drivers/gpu/drm/i915/gt/selftest_reset.c
> index 37c38bdd5f47..a9e0a91bc0e0 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_reset.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_reset.c
> @@ -20,7 +20,7 @@ __igt_reset_stolen(struct intel_gt *gt,
>  		   const char *msg)
>  {
>  	struct i915_ggtt *ggtt = gt->ggtt;
> -	const struct resource *dsm = &gt->i915->dsm;
> +	const struct resource *dsm = &gt->i915->dsm.stolen;
>  	resource_size_t num_pages, page;
>  	struct intel_engine_cs *engine;
>  	intel_wakeref_t wakeref;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 72ca62c22797..13fab81a39b8 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -86,6 +86,35 @@ struct intel_pxp;
>  
>  #define GEM_QUIRK_PIN_SWIZZLED_PAGES	BIT(0)
>  
> +struct i915_dsm {
> +	/*
> +	 * Data Stolen Memory - aka "i915 stolen memory" gives us the start and
> +	 * end of stolen 

The 'Data Stolen Memory - aka "i915 stolen memory"' should probably be moved
above along with the struct definition, and leave just the resource part,
something like Stolen gives us the start and end of stolen...."

or something like that...

But up to you, the patch already looks like a good move

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> which we can optionally use to create GEM objects
> +	 * backed by stolen memory. Note that stolen_usable_size tells us
> +	 * exactly how much of this we are actually allowed to use, given that
> +	 * some portion of it is in fact reserved for use by hardware functions.
> +	 */
> +	struct resource stolen;
> +
> +	/*
> +	 * Reserved portion of Data Stolen Memory.
> +	 */
> +	struct resource reserved;
> +
> +	/*
> +	 * Stolen memory is segmented in hardware with different portions
> +	 * offlimits to certain functions.
> +	 *
> +	 * The drm_mm is initialised to the total accessible range, as found
> +	 * from the PCI config. On Broadwell+, this is further restricted to
> +	 * avoid the first page! The upper end of stolen memory is reserved for
> +	 * hardware functions and similarly removed from the accessible range.
> +	 *
> +	 * Total size minus reserved ranges.
> +	 */
> +	resource_size_t usable_size;
> +};
> +
>  struct i915_suspend_saved_registers {
>  	u32 saveDSPARB;
>  	u32 saveSWF0[16];
> @@ -205,29 +234,7 @@ struct drm_i915_private {
>  	struct intel_runtime_info __runtime; /* Use RUNTIME_INFO() to access. */
>  	struct intel_driver_caps caps;
>  
> -	/**
> -	 * Data Stolen Memory - aka "i915 stolen memory" gives us the start and
> -	 * end of stolen which we can optionally use to create GEM objects
> -	 * backed by stolen memory. Note that stolen_usable_size tells us
> -	 * exactly how much of this we are actually allowed to use, given that
> -	 * some portion of it is in fact reserved for use by hardware functions.
> -	 */
> -	struct resource dsm;
> -	/**
> -	 * Reseved portion of Data Stolen Memory
> -	 */
> -	struct resource dsm_reserved;
> -
> -	/*
> -	 * Stolen memory is segmented in hardware with different portions
> -	 * offlimits to certain functions.
> -	 *
> -	 * The drm_mm is initialised to the total accessible range, as found
> -	 * from the PCI config. On Broadwell+, this is further restricted to
> -	 * avoid the first page! The upper end of stolen memory is reserved for
> -	 * hardware functions and similarly removed from the accessible range.
> -	 */
> -	resource_size_t stolen_usable_size;	/* Total size minus reserved ranges */
> +	struct i915_dsm dsm;
>  
>  	struct intel_uncore uncore;
>  	struct intel_uncore_mmio_debug mmio_debug;
> diff --git a/drivers/gpu/drm/i915/selftests/i915_gem.c b/drivers/gpu/drm/i915/selftests/i915_gem.c
> index 2535b9684bd1..d91d0ade8abd 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_gem.c
> +++ b/drivers/gpu/drm/i915/selftests/i915_gem.c
> @@ -44,7 +44,7 @@ static void trash_stolen(struct drm_i915_private *i915)
>  {
>  	struct i915_ggtt *ggtt = to_gt(i915)->ggtt;
>  	const u64 slot = ggtt->error_capture.start;
> -	const resource_size_t size = resource_size(&i915->dsm);
> +	const resource_size_t size = resource_size(&i915->dsm.stolen);
>  	unsigned long page;
>  	u32 prng = 0x12345678;
>  
> @@ -53,7 +53,7 @@ static void trash_stolen(struct drm_i915_private *i915)
>  		return;
>  
>  	for (page = 0; page < size; page += PAGE_SIZE) {
> -		const dma_addr_t dma = i915->dsm.start + page;
> +		const dma_addr_t dma = i915->dsm.stolen.start + page;
>  		u32 __iomem *s;
>  		int x;
>  
> -- 
> 2.34.1
> 
