Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A52EA6CA840
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Mar 2023 16:54:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C02F10E3AA;
	Mon, 27 Mar 2023 14:54:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F0F0E10E3AA
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Mar 2023 14:54:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679928875; x=1711464875;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=/RWe3oGoN2AcKUiThr7aSEqv6J9GUMfJ+q+0PbGGm10=;
 b=mPrv2GFkUcjLXVHbUlN2qUW4rMtonRYV/N4A980loPoD0XVgkq1q6Pbp
 PLSX0/JSiWfipQAzTHQ8JI9+ixuZOETgAhIMHM9dewjQCyxNXmFwlKt/i
 TzZFh1cnZCh91/nb3Fxe2kO/vch3Lpxw1Ol8BOnlax4ZtT62MyPjU6bzG
 P2GSk92c/BDYbU+JxageIlC0KxLGOjd0nZERMFTmDzyqrKsKfbS6Q9DJF
 vs801FTTl6+R9jZUOAej66q4mvu3CAHoKuDWCGA4BbdqsdQ1vLDOQfPy/
 6zxJ+1EIYZcVbJf/Zlqd+6TEJkOm77TSrIA6jjMZqfjY2wtHiZ/uP1GfN A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="405210974"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="405210974"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2023 07:54:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10662"; a="772733731"
X-IronPort-AV: E=Sophos;i="5.98,294,1673942400"; d="scan'208";a="772733731"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 27 Mar 2023 07:54:15 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Mar 2023 07:54:15 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Mon, 27 Mar 2023 07:54:15 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.41) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Mon, 27 Mar 2023 07:54:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MqV7JS/6gIc0wE4nBCiqFMZBlRZTlZFzxAuj9nA7fQr6jaAVKNbzK9PhbL1FfM7+WRtoU+F6MjsbBcKW9uS34PN2aCc/ygrOXp7faECE+61vb2Q+4HO8VCuajTemfFL/+/JbhRIb89AjNhUEIxMuxqCx7rJfzuqtmF6uW4kbGF79gJbtUe5hUKlA8jeW85b6erq8pqdObPJCejP+YZ4Umcv5e3JwTIgbWb5IRGdwZ9pj3XXEHNiIe7xMZOHG2J7Q2TrI/HxU6QMBS8kOX8pngIZBj+WghOEEtQCZaBwBRIPFawwHD51DAyaj/KJUoPGkAmS1PVsZN4u/a3aZHzF67Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j7+0CLUBVbAasvtedvxDtIDfeJgWoI0NFK3ICUUar/M=;
 b=J0VJvPcRkTBfXMcHvSdyiTiUKj51QZETNQoBU3ST7I001Ee4IXOQQV4SguH58uVB8bIl61CIHyoKJ98nXgEDTFZi2e7JJih9jcJoiScXOfzA2+26HOFVNfG5Tmk/dJ1lJID/zoUzKLDaipeqflIcMNdUn72d6qR1be8vDML8UlzjUIny6p1Fv2Jg/+FxB5HqP3nCIWthu9hTb6c/ZbUe5F2Puw6xfszmgf7NOPQbrrdiSg/NG23NPfs7cw5cNYLoXUYtBhlYi+Wf0QICDCJBRJZsgs5VPHKNcSWxd05QVBo8Eq1mCtPyk+2IxRTWe+CVx5Vut98VgBJUgKeihwaBfg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB6053.namprd11.prod.outlook.com (2603:10b6:510:1d1::8)
 by SA2PR11MB4970.namprd11.prod.outlook.com (2603:10b6:806:11f::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.28; Mon, 27 Mar
 2023 14:54:12 +0000
Received: from PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::3b2c:bb0a:17a4:55f]) by PH7PR11MB6053.namprd11.prod.outlook.com
 ([fe80::3b2c:bb0a:17a4:55f%6]) with mapi id 15.20.6178.041; Mon, 27 Mar 2023
 14:54:12 +0000
Date: Mon, 27 Mar 2023 10:54:08 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZCGuEPfP3VDcdHou@intel.com>
References: <20230327105330.312131-1-jani.nikula@intel.com>
 <20230327105330.312131-2-jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230327105330.312131-2-jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR07CA0010.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::23) To PH7PR11MB6053.namprd11.prod.outlook.com
 (2603:10b6:510:1d1::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6053:EE_|SA2PR11MB4970:EE_
X-MS-Office365-Filtering-Correlation-Id: 2c30209e-769e-443f-29e9-08db2ed32044
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LquKEhZXuxSeaG5NIsXZxyKxvpYEymkZBEXR0yk0YGuQZAUIMzWuvUUSOmX18JtXnm6mPsNYWt4fPl0n4ejmQWNDRBJfaC+kW7Ki4Yjfa89+FlVQzQwWD1/EU7/zMIRIOo0xGnKImvRdUz2TdSeb9+ikSQlzDQSg1/xFZcpVo3jfslcFjZ/Tsw8hc2D8oKK0UUrgzRK3/Fu0jwOTVxaXNQzEJShuQl7ibInywRtDGHbaL8I0dHXwXA3q/YpnzFBk2ghVhTP0TyIABvaSN5vvxMZkguQkREOD7ReAmNOYJI+EwxVamhNu9Fji5rUqV35OYRNIJWp0xyY88/YvRlnQA9vJd7TaN3bikF0R3FMRcvo6keI0Hzm0pNRNXexhvYUIuwkR8McjKRcoDVkcKexp6TUd0OB1glsNdqafJ7wFAbENoJjqWOwLe+CjqmJERjMSq3zW2FxkWKR7qakTwl8hxe2OgOjA84H6nliJNUuJZENz5c/1kDrRKEfC63kMiv/AL9vUcSdTBUiOxHYCiN/AgvBWhoCtt8kSW1dGdfWgZ8C3Zeeg6nInhKLS7FEIBGRn
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6053.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(396003)(376002)(136003)(366004)(451199021)(2616005)(83380400001)(41300700001)(44832011)(86362001)(36756003)(5660300002)(38100700002)(8936002)(82960400001)(6862004)(6486002)(6636002)(478600001)(8676002)(66946007)(66556008)(4326008)(2906002)(66476007)(37006003)(6666004)(6506007)(26005)(186003)(6512007)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?bHTypUo37NWCAQAgC059eni7YbIs2NHI8mJwlzRkn1MVh9UUH/ZSVHsBjBWj?=
 =?us-ascii?Q?pvBkJ86ra33uGcGShBpZZUw6O5EKAdXPfX1vuzQN56jzDoP1Z77azkSmI1qO?=
 =?us-ascii?Q?zpDo5LJDafi2bE5HD/3KUK2UhKh+Sy/SYijiUT7Ekc40tHjq5QRpy+GYE/87?=
 =?us-ascii?Q?yj2wbEX3yMG9sGLOUbDNd4mJjNjhjBDGAK23tUGV+OGS5HZlbnyqEhybCdS0?=
 =?us-ascii?Q?Vp0tRi+lqSqgh8hfuv/3QzLE7rZ93boNlUDpEhpYChuqYUrEudmH7LPHsUJ3?=
 =?us-ascii?Q?2a7fD+mW/LbAlmAr2XxIKNDDWY92hW39wwSbe3prOKkhvYQDrXqiwb/K7Wzr?=
 =?us-ascii?Q?g+2wwNaMyIAdgibfUN8/8NoQ8sBnaFVfezJKTQLN4oDXkun7NwjcLR0yKzwP?=
 =?us-ascii?Q?XXIVo88JbH+T6Nz7Kcag8I9CCu0s4KhN73VXyZbekf5Gtz6pBjwKZezRJ6yi?=
 =?us-ascii?Q?IBjrZZFYa9nisplZXvNtGNn3y/A1s731JXe5JwJHgEUb3niGA8xB0dZwpFIe?=
 =?us-ascii?Q?cZG14c+fJKGjJeTTg0YbxjEJ0wLxOsiFvg3n8/RYBJpf1lP8VTBPKpRTnxtt?=
 =?us-ascii?Q?qlKFlSxkV6TOc34Sy1/c94sWPpwaIF4DORdNmuNpJE0m9Iu1h8wtaSwPSm7I?=
 =?us-ascii?Q?Pa+QQPIiLTYaakx5AFHlmHB5liHGiGkNLjTHnagKphYfuLFMoBF1STgw51Fc?=
 =?us-ascii?Q?ff6Mi6k8yRNBw8RleeAAXAcFXk3PlQSP+h8eGp2Rhz5hhgyMhuHRjcZmT29e?=
 =?us-ascii?Q?mHzvavs/5pAtSZ+zxyD/BtrDCjEUeYdxJPifoV+pI4dXfLoH4SAvZ2Zw9z7q?=
 =?us-ascii?Q?bYAZc7W3jBSJsEFyqnQMGwikctT4DZh/tAeK4rWOso+LaV222cOYcUOGkExg?=
 =?us-ascii?Q?vb7s/1B5P3o4GZH9CA3vbIT09y0PvVogqvGhj91rkvSLBN/8AiyJo8L+bsW6?=
 =?us-ascii?Q?SMfkr4dfq2Xi96qMIpwyEdhNWJ87t6BimnlON9R6vYFz4Hl8tPSsqplwKGsV?=
 =?us-ascii?Q?14EUuNRfUWhMoPzwqnUtp21nN4vGGJK4JDCXbYCh3EvXeVD/V5gn2W8XzRo1?=
 =?us-ascii?Q?GtTn0tVpGO6JeUXMvNi8CjHZojseSa85XZFVlRBQVALqtLdBbHgAc1SpcpA5?=
 =?us-ascii?Q?goijFmNmtOGItpZcUULOH86EQVyHUfkOmjHKIbTGhaOY8Jhq99xvLj1ZUTXz?=
 =?us-ascii?Q?hx2gh/U3ySnlM902twjoGZfoIJ81SIWfhZ5ZoTC9NkytsBeigt62LC1AG8Rh?=
 =?us-ascii?Q?IbMY4CM1pk9Vb/H5JcV6LAa3uThXbDmHFFWmTnRodWAjnr8Pg7PtIaFc4Bm+?=
 =?us-ascii?Q?9J9FdlZ38r5hkMG4MpifhInz70Axhs4Z5Gt/L9Up4U7+WcIAOBQaAHJy4S/X?=
 =?us-ascii?Q?AI/fdQjB32ccrrETQRo78mX/DOPo1PixYEfNUjOsu9GDAUVqX/9qFdfpocz0?=
 =?us-ascii?Q?1SP9ZxS1egX6QJuMJ7arlOIERuKtbRXyK8CV4MgD8+iguBwnaTtL2AtakDC7?=
 =?us-ascii?Q?DCNITih7UrtesghllKI3lj6kHFMk1H6g5hwCNG5H5zdgLfTHhYS5pMtdDQZq?=
 =?us-ascii?Q?eeeVsTwrBHow3sRLOGumK5JwxwVy87k6LZfkKvZU?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2c30209e-769e-443f-29e9-08db2ed32044
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6053.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Mar 2023 14:54:12.0028 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Qd5i1lp+BKMr2KaVEjwn3DLwlgpqgVAm1q9//mxOo0TzmtXVWIfpw0rJvhxPjShLCI5Hub4VFPMx7V0R8hKytQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4970
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915: remove unused config
 DRM_I915_UNSTABLE
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

On Mon, Mar 27, 2023 at 01:53:30PM +0300, Jani Nikula wrote:
> Essentially this is a revert of commit d9d54a530a70 ("drm/i915: Put
> future HW and their uAPIs under STAGING & BROKEN").
> 
> We currently have no users for this config option. The last one was
> removed in 8c26491f5853 ("drm/i915: Kill the fake lmem support"). Drop
> it altogether; it's easy enough to resurrect if need arises.
> 
> Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> ---
>  drivers/gpu/drm/i915/Kconfig          |  6 ------
>  drivers/gpu/drm/i915/Kconfig.unstable | 21 ---------------------
>  2 files changed, 27 deletions(-)
>  delete mode 100644 drivers/gpu/drm/i915/Kconfig.unstable
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig b/drivers/gpu/drm/i915/Kconfig
> index 98f4e44976e0..06a0ca157e89 100644
> --- a/drivers/gpu/drm/i915/Kconfig
> +++ b/drivers/gpu/drm/i915/Kconfig
> @@ -164,11 +164,5 @@ menu "drm/i915 Profile Guided Optimisation"
>  	source "drivers/gpu/drm/i915/Kconfig.profile"
>  endmenu
>  
> -menu "drm/i915 Unstable Evolution"
> -	visible if EXPERT && STAGING && BROKEN
> -	depends on DRM_I915
> -	source "drivers/gpu/drm/i915/Kconfig.unstable"
> -endmenu
> -
>  config DRM_I915_GVT
>  	bool
> diff --git a/drivers/gpu/drm/i915/Kconfig.unstable b/drivers/gpu/drm/i915/Kconfig.unstable
> deleted file mode 100644
> index cf151a297ed7..000000000000
> --- a/drivers/gpu/drm/i915/Kconfig.unstable
> +++ /dev/null
> @@ -1,21 +0,0 @@
> -# SPDX-License-Identifier: GPL-2.0-only
> -config DRM_I915_UNSTABLE
> -	bool "Enable unstable API for early prototype development"
> -	depends on EXPERT
> -	depends on STAGING
> -	depends on BROKEN # should never be enabled by distros!
> -	# We use the dependency on !COMPILE_TEST to not be enabled in
> -	# allmodconfig or allyesconfig configurations
> -	depends on !COMPILE_TEST
> -	default n
> -	help
> -	  Enable prototype uAPI under general discussion before they are
> -	  finalized. Such prototypes may be withdrawn or substantially
> -	  changed before release. They are only enabled here so that a wide
> -	  number of interested parties (userspace driver developers) can
> -	  verify that the uAPI meet their expectations. These uAPI should
> -	  never be used in production.
> -
> -	  Recommended for driver developers _only_.
> -
> -	  If in the slightest bit of doubt, say "N".
> -- 
> 2.39.2
> 
