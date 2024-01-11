Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E085C82B7DA
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 00:12:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5921810E0EE;
	Thu, 11 Jan 2024 23:12:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 102AE10E0EE
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jan 2024 23:12:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705014765; x=1736550765;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=gZQZURXfE2ujtQQPkc6VV8gkJrModtlztmCP0GNVBgg=;
 b=E3goqo71L6qvh2CcvIroVnybASWIxS/4E0elOfLTQovbN+tZ9E5VCc3M
 tlsVQV+UujGl3woT6ChMbAKubkHJgdFuo7Il8hjAYrBMSitOG6nlCE46N
 EVn1sSAYGYNzuQZWZao8CA5ZlhWdxxPW+TpxFe13ogR/vdnpFZo/GCQ8c
 pGVi8fF/i80xgTfqU0jp/EDKVW9QdFTlJFcEiZM5TKcG7kqqalemTWCtH
 sHbTr/PpX5C0z58v+XBahVcr71Cr0DXw1lqqvx7FGGHz3m4QhY/lPYHlJ
 QNn0N0l4jyWJTwjprdLLlgRVwq+xlSUQFNLfht4bTbcpeOZrVvY5wFUE6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="20492615"
X-IronPort-AV: E=Sophos;i="6.04,187,1695711600"; d="scan'208";a="20492615"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 15:12:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="732393602"
X-IronPort-AV: E=Sophos;i="6.04,187,1695711600"; d="scan'208";a="732393602"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jan 2024 15:12:43 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Jan 2024 15:12:43 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Jan 2024 15:12:43 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Jan 2024 15:12:43 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=X6h9z6UwyAkm1oZatcgNK3JPG2jex6/KApU/YT2mTfJYFeaBqGcV8C9MOiGqct56sb+/ibfpdDkRMoNlnFn/0/gVD1E5NCqrgbrTdBwBkZo80ywOo6Oy64SInBYnEF23r+8hmvS0jY6sCEz8hdeWpKkp6QMSKCAolawGn0qO14ycvrb4TlrFpoSAeGyIUsJ13RMCsLfPVRBt+OG7NtDllpV1qjP5FtO4dkeHQmxNAmLlG+l6zhvtH3IJ86aXIdISY11u2XDlR+237Mpq6DeL7EGuRMLm1+Uall1OTfWsvBwNuNZ1FBLSnwdcCtxhIyaItPGCi12ZeNAmigSDs/EYiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dfM/iBljICDZ3667o8YhU4ed6Mz8IFR/WdPxyH0rgsg=;
 b=OsSdd3yBjsuaB0TdS6a4zyct3it98cmaI3v8lWheeG6QudqFxGEYByPLqzupKdbuoyq5K3B9iTs5bkz/v7nDwq1kDY27sJhU4hco1s7Cj3fCki+mFrc0RwoHULWOUlCHONFh4UR9eVtPQqESPX5BKyFmvUNGFA9dsj+AaLqO03xa13XcjSabnZSE6fc4sR/9MaULycfbRAYLDvw+4psy76Y7NgXnLYaLijLiInamkDOQGu69nrKbRC/KxTgto9hlzSDoEJkCMWIl3IXuaGGK84tsvSGgB/ufom33nzxSwV39H9aZt60zTCwLGlgSXViHcxCjBNwexyxik4g7ISldyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 PH7PR11MB6548.namprd11.prod.outlook.com (2603:10b6:510:210::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.27; Thu, 11 Jan
 2024 23:12:41 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7159.020; Thu, 11 Jan 2024
 23:12:40 +0000
Date: Thu, 11 Jan 2024 15:11:15 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 1/6] drm/i915/bios: move i915_vbt debugfs to intel_bios.c
Message-ID: <ZaB1k7EB508NhhDb@invictus>
References: <cover.1704992868.git.jani.nikula@intel.com>
 <5e14a9559b6916022b506e5eb8d943783dc627a2.1704992868.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <5e14a9559b6916022b506e5eb8d943783dc627a2.1704992868.git.jani.nikula@intel.com>
X-ClientProxiedBy: BYAPR05CA0041.namprd05.prod.outlook.com
 (2603:10b6:a03:74::18) To DM4PR11MB5971.namprd11.prod.outlook.com
 (2603:10b6:8:5e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5971:EE_|PH7PR11MB6548:EE_
X-MS-Office365-Filtering-Correlation-Id: 222b8875-0c21-4c4a-7450-08dc12facf2e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BvEFGp4EjqMmHxHYDhS28aBjD1GB2x0zcNNFQo10Dbh2N59ugz9VLLrMXH8bdNCsF7aRwO0Oh4r4n92/0hXVvCCt86QyHNLqkpL9Ud40eMBkPU4yolnY45wfP1EdWLdvsrzIZB5kLwmulUd884qHHhWGi7fOmv1p7FoHxOZ4hIMTDTiwkrMlA/dkL5xfy9yIs6aJqya4tzoDZ3P4lz5iEFy2m7QSuQzKMbBJcFGIVjGNJuVgPW9Vpwz+inZqEqlp3mKemEVgBP3e2t10+FvhVjhjjx9JM+gwGU/d8SsX0pPsCVBDwJiE2gBVyiTIGvubXp1JdBV0h3Fp9DYzc7PqvACfQjTnk/58h0203mxFiYyq01wd35R9J6O1RvXjt8pxYhuv9REMB+qQuuI3cB7QyBZ2OgYNbiYZK6+9PZfKIKrTKmBK3vI5tUfPnExbClb7C8TJY/Rw8oxEq6Qly2X7hkI3oWlcO6/AKKxOruZxhe9GjPjkGFYuaM+OKxNSs06VeB+U3hQpF5mMFQ36hL1XMSzW9d9QHiJd7vZQIkR6PWr0r2H7kAHtKqJpTXfyBhIh
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(346002)(39860400002)(396003)(136003)(376002)(366004)(230922051799003)(451199024)(186009)(64100799003)(1800799012)(6512007)(26005)(83380400001)(6862004)(8676002)(38100700002)(4326008)(33716001)(41300700001)(2906002)(8936002)(44832011)(5660300002)(66946007)(6506007)(9686003)(6666004)(316002)(66556008)(6636002)(478600001)(6486002)(66476007)(86362001)(82960400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9ktxXzO6JtlVsjH5gEaoYEN1k9mibGVAT7lgXM7b3Mygyd5Ze0eGOUlnTg8N?=
 =?us-ascii?Q?kUnAP4lTOBMega5yz4AeuVarIUAwXKWqwSX32VNCseKUrkS13IOJ7uaslS07?=
 =?us-ascii?Q?omjnR8H0nMXdzuD7a7ETzOJ++uxXk9gNcYXD+7uAKP+2HfJghWfVTS69Myue?=
 =?us-ascii?Q?K/T1t78ipqIZZ5diFuCUXgcYuHZ322hbyw+sSi5ZT98pYhM7XZewWP6Bcane?=
 =?us-ascii?Q?nglJZ+xdX2oVIv2ecRk3Q9lLMYTsZpBf5+gYqO0mvwZjvhUZFnrVL7/Ckeax?=
 =?us-ascii?Q?7Zg9sEDzxkE5kmj77/3v+eR5LF0RIwk3DozLa2D4nA1N+X+t6gRjkfb/jNPX?=
 =?us-ascii?Q?V9WLfg/Ii7CPHgLWPq+5j/d3YGKJEAz1gbrWy+skIScfyQ6HAjrplEtzX5Pw?=
 =?us-ascii?Q?ZwjPy2MMsqht/tUI8A58ZKDN1571hP7NhOeWYK0abPtzrYHvG06+YncXSO0u?=
 =?us-ascii?Q?Rv+3B1juwZA19xHCdAKrUxSVT05tkRwosDC1T5GcuEWkFM83TguidpZhRATZ?=
 =?us-ascii?Q?mPdEf+FJpT4rJP6l1znqaIsvx6CPig+n2Ngz91Iv6njiUEuKx/gQCgvr+kNm?=
 =?us-ascii?Q?/ZE6XBDmCjTUtoxsAmHUIfdKKbVT5JttpIBt9ppPCYG8mBXIhoG/Neh94wkW?=
 =?us-ascii?Q?iZJ+fBzWUeVj7vBBQ2Fk51JyQM2yS7rNmq36rTb2EvUBD2Xv/Z4Nfq7r0dhn?=
 =?us-ascii?Q?jntLQgGx3mdWHtExLr5BJROXNNcMbliNXbGt4FBVzNfYvZzefhrGrpVhZQ/r?=
 =?us-ascii?Q?VNCSKiw9HBDQ5bJbVMXcZNa8P1LHdMvMsxFzl3cYmrVSUS+6Dje1mUi7KePY?=
 =?us-ascii?Q?HR24raiIzTgKgxQ6I5CKWj7NnPaZogdagZzEVMfwUDyeQaxWnP/wI0/sk2A0?=
 =?us-ascii?Q?k4PPPU8EsCzsuQ1kKoNCCh5Zxxnr/kxfsV1cr+OL2FpBSCvRpfHChtGXr5Nn?=
 =?us-ascii?Q?YeZr76WQJmtbaXfld23UL1kXZryG3cGew4gi8fxWPcykFJu0UtlxuJcICMUO?=
 =?us-ascii?Q?4OCQ/aXCbbUo1nCyUrqR7S7qIHXNIZT8Th2CRTwdJI6I4+XTfkBBNTE55bT0?=
 =?us-ascii?Q?eLG5n7RT7HFmWc9DMYxOtaMJDBbFdZKm59R1KV4LsB6VmGb8zWORvmN3p+yr?=
 =?us-ascii?Q?42/QoodZ5au7kqMvAfBmvfWSlv7bC3aBCQfHcBAKcRvV3/vgrunvMHa6amPG?=
 =?us-ascii?Q?jFQZmzWnNpl5BQGQgOp0QT8KZPVaRGbNlRPZ47pjWvN7g8hgh24QWns9pic3?=
 =?us-ascii?Q?++HCltTC2Sx+b0Aaxqpi0YoqRIc3+SKTl5BlFrPmA/MKzGram9rMvuZ74AFt?=
 =?us-ascii?Q?7Fq2+xirM4EkhwiB/iNAHUBf7i3u38Gdf1DD9y1hppuWNspEL4NXiRyFxMIB?=
 =?us-ascii?Q?TQg/3+2EhRIQ5EwSlYVoxcdD5cHzyVgA95U0al1derKtNH2NDRAwa4V2tkM1?=
 =?us-ascii?Q?ILHqqlSm8qB9YnEOnuuOKSMHwXuvM82D6VWmYzrGaNDD8I1CuAh4gsXq4Xf5?=
 =?us-ascii?Q?jccJEOFoYBOeancnKShZukXxZqi/V08h78eAO0tBR23+aZKqqwLZ1QOegGBV?=
 =?us-ascii?Q?AhQKaq9iX426qOL8rMq3uBUrHmL0/V08DtWZhrfI3QD+UGvimc18hgwNodct?=
 =?us-ascii?Q?4JjzVIR9ClC+2qdN6m6/QtA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 222b8875-0c21-4c4a-7450-08dc12facf2e
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jan 2024 23:12:40.8128 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AzVGfgYfAyMBgmyH1ozNDAe8gkuy8dKwJjvVXGNxGccNNgj3qd6FC/1mtxzGURVch0GOACwPDq11uzoQsf8o2Be5TjVgbjstVPluSxkI0DQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6548
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

On Thu, Jan 11, 2024 at 07:21:14PM +0200, Jani Nikula wrote:
> All things VBT should be placed in intel_bios.c.
> 
> While at it, shove in a FIXME comment about VBT possibly originating
> from other places than opregion.
> 
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

LGTM,
Reviewed-by: Radhakrishna Sripada <radhakrishna.sripada@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_bios.c     | 25 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_bios.h     |  2 ++
>  .../drm/i915/display/intel_display_debugfs.c  | 13 +---------
>  3 files changed, 28 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
> index 0e61e424802e..cf8e6f7bd490 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.c
> +++ b/drivers/gpu/drm/i915/display/intel_bios.c
> @@ -3656,3 +3656,28 @@ void intel_bios_for_each_encoder(struct drm_i915_private *i915,
>  	list_for_each_entry(devdata, &i915->display.vbt.display_devices, node)
>  		func(i915, devdata);
>  }
> +
> +static int intel_bios_vbt_show(struct seq_file *m, void *unused)
> +{
> +	struct drm_i915_private *i915 = m->private;
> +	struct intel_opregion *opregion = &i915->display.opregion;
> +
> +	/*
> +	 * FIXME: VBT might originate from other places than opregion, and then
> +	 * this would be incorrect.
> +	 */
> +	if (opregion->vbt)
> +		seq_write(m, opregion->vbt, opregion->vbt_size);
> +
> +	return 0;
> +}
> +
> +DEFINE_SHOW_ATTRIBUTE(intel_bios_vbt);
> +
> +void intel_bios_debugfs_register(struct drm_i915_private *i915)
> +{
> +	struct drm_minor *minor = i915->drm.primary;
> +
> +	debugfs_create_file("i915_vbt", 0444, minor->debugfs_root,
> +			    i915, &intel_bios_vbt_fops);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_bios.h b/drivers/gpu/drm/i915/display/intel_bios.h
> index 96673dc707e7..41bfb009d4b0 100644
> --- a/drivers/gpu/drm/i915/display/intel_bios.h
> +++ b/drivers/gpu/drm/i915/display/intel_bios.h
> @@ -280,4 +280,6 @@ void intel_bios_for_each_encoder(struct drm_i915_private *i915,
>  				 void (*func)(struct drm_i915_private *i915,
>  					      const struct intel_bios_encoder_data *devdata));
>  
> +void intel_bios_debugfs_register(struct drm_i915_private *i915);
> +
>  #endif /* _INTEL_BIOS_H_ */
> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> index d951edb36687..9ee7e0738059 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> @@ -97,17 +97,6 @@ static int i915_opregion(struct seq_file *m, void *unused)
>  	return 0;
>  }
>  
> -static int i915_vbt(struct seq_file *m, void *unused)
> -{
> -	struct drm_i915_private *i915 = node_to_i915(m->private);
> -	struct intel_opregion *opregion = &i915->display.opregion;
> -
> -	if (opregion->vbt)
> -		seq_write(m, opregion->vbt, opregion->vbt_size);
> -
> -	return 0;
> -}
> -
>  static int i915_gem_framebuffer_info(struct seq_file *m, void *data)
>  {
>  	struct drm_i915_private *dev_priv = node_to_i915(m->private);
> @@ -1067,7 +1056,6 @@ static const struct drm_info_list intel_display_debugfs_list[] = {
>  	{"i915_frontbuffer_tracking", i915_frontbuffer_tracking, 0},
>  	{"i915_sr_status", i915_sr_status, 0},
>  	{"i915_opregion", i915_opregion, 0},
> -	{"i915_vbt", i915_vbt, 0},
>  	{"i915_gem_framebuffer", i915_gem_framebuffer_info, 0},
>  	{"i915_power_domain_info", i915_power_domain_info, 0},
>  	{"i915_display_info", i915_display_info, 0},
> @@ -1105,6 +1093,7 @@ void intel_display_debugfs_register(struct drm_i915_private *i915)
>  				 ARRAY_SIZE(intel_display_debugfs_list),
>  				 minor->debugfs_root, minor);
>  
> +	intel_bios_debugfs_register(i915);
>  	intel_cdclk_debugfs_register(i915);
>  	intel_dmc_debugfs_register(i915);
>  	intel_fbc_debugfs_register(i915);
> -- 
> 2.39.2
> 
