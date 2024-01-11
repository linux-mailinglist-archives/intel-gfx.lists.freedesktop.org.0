Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DAF782B7F3
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 00:22:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59F3910E0F2;
	Thu, 11 Jan 2024 23:22:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2265C10E0F2
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 23:22:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705015323; x=1736551323;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=9zF9t8AoCVgQG9dDXXGykNq5+LKZTA8Tt4PkUxXtBL8=;
 b=UxueajjnFPl/iISg3vvcdnkobLgnNMHkGgu+oVfYgliUZozIMD0kNe6g
 hLGzJinLlTvY1HyZMSTfBOLNqAHkUgHXal9D1KJHFKj69BxIo2sFnVeL4
 nxz6nnrccxqdlteUu2Fk7F2g2XhnmSkwHXpUrJlZ+rWUXSgcXFFUU8Dh4
 aAs1WxGgJYKb4l4uK6arZPf5nNL/xqCZQpJdERTXFsN8ytkzXjg5YaJOo
 KEDm2FEqG+RVJI6XvPKoWRUKUejGo9VjkeIZnComK+rIvkWQ4uMVuiwTQ
 eHs8ll8i0PXZ35tHqdwr4YZRmB4jbRGDlMKyn8vEbUgL20AsgXBsX28LQ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="17632385"
X-IronPort-AV: E=Sophos;i="6.04,187,1695711600"; d="scan'208";a="17632385"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 15:22:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="1029730110"
X-IronPort-AV: E=Sophos;i="6.04,187,1695711600"; d="scan'208";a="1029730110"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jan 2024 15:22:02 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Jan 2024 15:22:01 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Jan 2024 15:22:01 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Jan 2024 15:22:01 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FFbJHhxINmelKgFAy1FmuaDSihXbOFOBkBZ1Ov541QACaVKUJVWjcRNaD6XnoJ41FiMjlwcwPktPerMuuv73Gp1G7V3g7q0iSoYWrTIj5/rBjD/hj9QEJl7l39nVaZwpmZPs2YR9NM5wb9+e0ljj/bOCzAGyKmlK6v6SeB/9WYTXes6s1v7ZZfZdhoMQpdSZ7ftinfhM6Z7+U1ncrduyxoDq6pZHYpvOyaItuxqNBpKfu7ms3e65LHQYqc7ZQqR7S3sQaJN9iPftx0SXvZZcie8ZYccpkIKP4ObghyFFzaga5AfrJiGJroPZ+joDt0HeIvgeRcULzo5S/qOEbm8ILw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nt+JocMNvRIE0kdvPTos1FNsSBipMp/rKhnkQ1PmwTk=;
 b=hIxOqcuNDX4LTEIeedGnZU1tLTkpczDV/yqq9aoH0nNlom3C8oOtSzcW5GScozlF6wXLyCYmZ0f4v5iFV7ZmO5+FhlyLH9kA6tQ81/l98I7jVsnusWl3g6Eoz6UFEm4mjrYDSWvqaIhprBCFf69W8eGAftGM3NtiQ9zJLH4KiAuMwh9h3Ynq/D19NxmgYil58f8BM7AKaL8PZfC95DZ09X9JKqcFtUkCd9YscQUI6JQn1xqQ5EfFcwIFm1p7vb1oPlF4NQ+qjpr0x2LIKPlXFinYiP/f+CCZae6U6taFib0qT2Yk6IioFWgTCoGOw0Z+AN8V6N/tDYoW9rQ3IxP6UA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 MN2PR11MB4694.namprd11.prod.outlook.com (2603:10b6:208:266::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7181.19; Thu, 11 Jan 2024 23:21:59 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7159.020; Thu, 11 Jan 2024
 23:21:59 +0000
Date: Thu, 11 Jan 2024 15:20:34 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 2/6] drm/i915/opregion: move i915_opregion debugfs to
 intel_opregion.c
Message-ID: <ZaB3wnOaOcS5SA8e@invictus>
References: <cover.1704992868.git.jani.nikula@intel.com>
 <c10103d2dd775edc1e9f93f09d0834480f880596.1704992868.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <c10103d2dd775edc1e9f93f09d0834480f880596.1704992868.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR03CA0237.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::32) To DM4PR11MB5971.namprd11.prod.outlook.com
 (2603:10b6:8:5e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5971:EE_|MN2PR11MB4694:EE_
X-MS-Office365-Filtering-Correlation-Id: 1bdd117b-d80d-41a3-b878-08dc12fc1c0e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QH0uStZWae/+LV23ZW3f7KstaaHMrBJkaKisySNogIxK36fSQU54TzUIJ/pJHWGJWkzETQVewN8V1Cd0xNalSWvk5y4MBVDXAC+XV83sKc3hhgbanG/deXhsIOPLISLPga22dinsHr77szJhA0IYW9lQkQ+qn7PCQIpom3jGFep4j4kkYYj7LD5lstOrGEze9HhGfl1MvNKqQciHjJYGDcv+fTFC1j2xrU5s8WW9tBvK4WlcvpnWIiUokoPyIMns2nMtbOZlPQ2t2inPGeJLEAHM/lY0dC95TW35d52wcAI6pi0KeL3U6SYaq5OteOtjVtrR+zXtigvkzQ+0p35Vvp09SiVqzemO5CpWRlgAANaVYxTqUEFk3JF38ePRQbxjq+juHkaVmHvgTpU98xjpqpEURzcnVvMcsw6xTXt/4BCEN2DQrTBIxVHhIqmFfoObphx3QyxXY+zNaG0zU7DKlAYJja2ClZRpp9wgmehvrikZgj7/1hq6FlGieoKZc5YxnHPRXSh/kbR6YUCKfRqq0TZ6rpeGr3IXd8AUZhN8aKXA28MoX2TePmPOO1CVgswz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(366004)(396003)(136003)(376002)(39860400002)(230922051799003)(64100799003)(186009)(1800799012)(451199024)(5660300002)(33716001)(38100700002)(8676002)(8936002)(6862004)(4326008)(2906002)(26005)(82960400001)(83380400001)(86362001)(6666004)(6636002)(316002)(6506007)(9686003)(6512007)(478600001)(44832011)(66556008)(66476007)(66946007)(6486002)(41300700001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?oQQ8fqefZK9icliStpHrp667hh00L4pbRP6jjUm8gprXWXXEShyXjOhZquyL?=
 =?us-ascii?Q?qlmDtdGcZ76pZF1GQgK4IPSXCSQFvkGS+c+GSbSLO+uYbXmcJcUF7Y16/cCf?=
 =?us-ascii?Q?GVvYcK38sBn5GZLDUNdSXDLvRi2/hFHArjRtTb0yCSGBj92Xc6bfizkRU0u/?=
 =?us-ascii?Q?CUkeoYA3Y3XFbQlsBj7GpoSfYyGAAuqe0GG55ExijMgNR2DYdbB+EUrOEl7P?=
 =?us-ascii?Q?L0WRH+Lbg/Be6AAbVNswyxddD7meQSScmJgor/WqZJV7guvROXSiPWf9KGtO?=
 =?us-ascii?Q?mD0THW78DDYgBqmjYPke6k+OhD8pq64cdwjSuHMBC5Trasp1rMig4ThemzBB?=
 =?us-ascii?Q?ekmh4i17R48uL+0hFmNbMvBB2s9ASxxtExQGgUvq3oyf6HTP5czrSy7D0JRj?=
 =?us-ascii?Q?K5k/jljMNP/QnWGNajsmHTY2rbvu7m5I3NYK51d8lrVfL19sv8WhYZ/1RlAr?=
 =?us-ascii?Q?dL/E3XJ3G32qjQzYiKGimIIQIq0FhGlld0tpC1OmQq8hmX1MmcuGtcVFQsU/?=
 =?us-ascii?Q?AvM4vJADoztea/r9xsfcueJXqC41vu73c1PsiB87HgE4J7fA5lNvsiD8j8H9?=
 =?us-ascii?Q?Hy70ntHBMqvDmvL5e4Pg2ufAI/SXVTBrZri1O3PfDIX+eJP6pLCTdl+VCqmJ?=
 =?us-ascii?Q?RSeqNPpSF32iQv796EzlQD94EgvZeN1m7my/xZCXXOHDZWA4ydeYIp1pvLU+?=
 =?us-ascii?Q?3SvgOip/sX/MBo1XUGFxlb1PNZNeeXanuDCWzk78pEJoTZpUA6TgbibDM5wZ?=
 =?us-ascii?Q?lk2bCTikICck8rfQl5Qy5OQ1JWm8IPxyuyTItBba/0t0+c0ZbdZomvJNaP29?=
 =?us-ascii?Q?q/FXS2bAu3qpmlBO9Rth9aMU/MgZ8uit6zLK8UO+8JtFLYVKB+kAk/Zh466m?=
 =?us-ascii?Q?GPf8EQPrE5hvI6nYt0/sCXceiOmKW0l3Ir9OUrRxKCTrFWzyv6iqdq32CbVg?=
 =?us-ascii?Q?G6qH7RH/bOMFdk3dBX+MlkJxtO1ZKsL5dSr1a2uipvqyMU4nbNaB4CO9Zp0b?=
 =?us-ascii?Q?xH6cMk4VFh/Ons4hc9qEs2ysDmHczO9g+y+CAFo3X33HNQYIP6YSi33SXT4w?=
 =?us-ascii?Q?gmIMDDHwiR24P68n/N4uFC915ei39ht6fJ0ZAAeeiQ1V1/rYvrWRrx0h7BKx?=
 =?us-ascii?Q?YcinKI8Cp6WA+G4k4Sy54//XmOdL+UE4TTczEh2CBsBN7fXty3bTQ5PUD3Dm?=
 =?us-ascii?Q?fLmaTLvzzE+Azw1KkLaelr8+nqr8PivrYYlRLjJ71cX9j+pXv//1qy8sVkrt?=
 =?us-ascii?Q?bH/06TgI2zOo0riTfTc4y2i2R/M16MOgAQBl8j1D4INplDGHHROJa6gyeaya?=
 =?us-ascii?Q?pSr0uYsNOxcmtZUtF7D7X6Qi8mMQ8mtFJOOUK8kIgZz2GLuSmGqlJEp4ON6r?=
 =?us-ascii?Q?yN3kVCwdFA+EVo0RYOP4YDFmb0CFYPFlX75wUTU6kqeKBJGpR8fTmqxJqfi5?=
 =?us-ascii?Q?kRDQjlqwkiB8AiShDbPmvvNsxcR15Vsn4KZ6BrtuJKTIX9nQl6QvmlCbZdNK?=
 =?us-ascii?Q?gnjvKw7ntOp2e/TESUYpoBXiSr3gYBo6o0PZlFbNItANM35dZ3PelX1SHbms?=
 =?us-ascii?Q?1dheEyhIx/0WxTuIFiZsXC3DCljR0mY4bjIffawqqydn52rcJRuwQU3mthD1?=
 =?us-ascii?Q?1DD5olC/9sdcw0brYs7TtEQ=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1bdd117b-d80d-41a3-b878-08dc12fc1c0e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2024 23:21:59.2949 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DQdvHAG7zl50O9jt1ag3nuFEHDcjU6Kuy7U7LW49gTdiPsUTt1Ee6nNhnKpFrA2Pv9b6tO9YqCWi3S/hHaci2IPPAtL6dyY65PquCMh4GK8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4694
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jan 11, 2024 at 07:21:15PM +0200, Jani Nikula wrote:
> All things about opregion should be placed in intel_opregion.c.
> 
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> ---
>  .../drm/i915/display/intel_display_debugfs.c  | 13 +-----------
>  drivers/gpu/drm/i915/display/intel_opregion.c | 21 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_opregion.h |  6 ++++++
>  3 files changed, 28 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index 9ee7e0738059..6f2d13c8ccf7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -86,17 +86,6 @@ static int i915_sr_status(struct seq_file *m, void *unused)
>  	return 0;
>  }
>  
> -static int i915_opregion(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *i915 = node_to_i915(m->private);
> -	struct intel_opregion *opregion = &i915->display.opregion;
> -
> -	if (opregion->header)
> -		seq_write(m, opregion->header, OPREGION_SIZE);
> -
> -	return 0;
> -}
> -
>  static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
>  {
>  	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> @@ -1055,7 +1044,6 @@ static const struct file_operations i915_fifo_underrun_reset_ops = {
>  static const struct drm_info_list intel_display_debugfs_list[] = {
>  	{"i915_frontbuffer_tracking", i915_frontbuffer_tracking, 0},
>  	{"i915_sr_status", i915_sr_status, 0},
> -	{"i915_opregion", i915_opregion, 0},
>  	{"i915_gem_framebuffer", i915_gem_framebuffer_info, 0},
>  	{"i915_power_domain_info", i915_power_domain_info, 0},
>  	{"i915_display_info", i915_display_info, 0},
> @@ -1098,6 +1086,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
>  	intel_dmc_debugfs_register(i915);
>  	intel_fbc_debugfs_register(i915);
>  	intel_hpd_debugfs_register(i915);
> +	intel_opregion_debugfs_register(i915);
>  	intel_psr_debugfs_register(i915);
>  	intel_wm_debugfs_register(i915);
>  	intel_display_debugfs_params(i915);
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index 1ce785db6a5e..26c92ab4ee8a 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -1265,3 +1265,24 @@ void intel_opregion_cleanup(struct drm_i915_private *i915)
>  	opregion->vbt = NULL;
>  	opregion->lid_state = NULL;
>  }
> +
> +static int intel_opregion_show(struct seq_file *m, void *unused)
> +{
> +	struct drm_i915_private *i915 = m->private;
> +	struct intel_opregion *opregion = &i915->display.opregion;
> +
> +	if (opregion->header)
> +		seq_write(m, opregion->header, OPREGION_SIZE);
> +
> +	return 0;
> +}
> +
> +DEFINE_SHOW_ATTRIBUTE(intel_opregion);
> +
> +void intel_opregion_debugfs_register(struct drm_i915_private *i915)
> +{
> +	struct drm_minor *minor = i915->drm.primary;
> +
> +	debugfs_create_file("i915_opregion", 0444, minor->debugfs_root,
> +			    i915, &intel_opregion_fops);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
> index fd2ea8ef0fa2..7177f50ab0d3 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.h
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
> @@ -79,6 +79,8 @@ const struct drm_edid *intel_opregion_get_edid(struct intel_connector *connector
>  
>  bool intel_opregion_headless_sku(struct drm_i915_private *i915);
>  
> +void intel_opregion_debugfs_register(struct drm_i915_private *i915);
> +
>  #else /* CONFIG_ACPI*/
>  
>  static inline int intel_opregion_setup(struct drm_i915_private *dev_priv)
> @@ -139,6 +141,10 @@ static inline bool intel_opregion_headless_sku(struct drm_i915_private *i915)
>  	return false;
>  }
>  
> +static inline void intel_opregion_debugfs_register(struct drm_i915_private *i915)
> +{
> +}
> +
>  #endif /* CONFIG_ACPI */
>  
>  #endif
> -- 
> 2.39.2
> 
