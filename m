Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C32606B1038
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 18:32:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9135910E6C9;
	Wed,  8 Mar 2023 17:32:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1E80810E6E1
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 17:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678296725; x=1709832725;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=WQTRbDMk4LUvh53LiMtCOzkJ8XE6lATV0Re790VuEA0=;
 b=WyO0UFUO/3y0FOmWRDHoRBGewlTU3Psj5Jmf/HzuDTJ1MTvIW9l34SIS
 YxeWzhFdV97aP5+0MN1un32mmJMCxPH8D0uzNJ87woD7nz9E3VKlHCfue
 ub/vurqasuDYqBCXWGBwbQ6/W6p/zPa7otIGza9QlXw0+dTeZF6VPiDQH
 uHu++LtKvaDziMN0GU8F7Cq4htu08CAP7f3q6ulFEV9VbDeJgCWrTsvcM
 hL4/DaL5NWgAWUmBwUSf3hCS+BOldld62vIMZJaCWyv9ivosOJKBgGOWu
 4AGCj3AUuOAJhCTYCfhxder5jV+VLJi404zpihMW6ruwFd27fk5pYiP1L A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="334933607"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="334933607"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 09:31:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10643"; a="745989059"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="745989059"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga004.fm.intel.com with ESMTP; 08 Mar 2023 09:31:54 -0800
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 09:31:53 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 8 Mar 2023 09:31:53 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 8 Mar 2023 09:31:53 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.176)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 8 Mar 2023 09:31:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NSjWU8TDXvIdKQNuW3ySdywqW1V4cSltdKE08zKP/ULdi4w1EIxdNxByut4EiqKB49ENnkSVDnFcT//MXg72XZVJcIXloJinQK4xux7ZGjTeF2b5jKuzIrCEKx+QNa27ChtvL1TC2xs6J3SYAKeyT7SZIhVHbng6ITO5148xwlJodvMsCjZg0JEXHnLcxlwPdcLXb5Y6ygp4dBWmoBj2SRKI7nuIcg8mnZSCH8UzHqcbE/K8w5asuBL3TYyeioIcYk4k1Vd9NGk3wGmHSchw0l3XCXKYhveR7JCoNtRmOfwHsvuR7k0Z6J6ILb3YV2WlT0sFq9sj9BM6VUf7quC5+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j77jeoYOG5eH2BsVY1+Y8TUUXfx1yE1XK/+5MVyAHZQ=;
 b=Gl1dn51STdoqs51dkRlvEIN4+2CBoZcFxwCQOiVq/XzCweiiJYobS7OqqHT5REuh/U7tuIWK7EmhH76P/Z6wyA+bFzMGOJB49T4p/LxYbWoMWW6GHEY+sT+ufheWbdMyhVMaLPeajxorkSR0onhHj7NiSh14i8lZVEzBMLmJ3oU4mhnuUIFASnArkp3yN0zQC56Fw26r6FzJEbqbh3EKCNAv+8IYcEdw3YdMpmztTdavI6Tuo6HeVJjPlDpZEV28h8ztUDCQiLz8k7v5W+I2HMLrH6o3vSJoJ/o207P26HdCrrQbWxnGpRttrdfXJTtJbA7c/HfTQuYy9ONu+f3k6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by CH0PR11MB8088.namprd11.prod.outlook.com (2603:10b6:610:184::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.29; Wed, 8 Mar
 2023 17:31:51 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6156.029; Wed, 8 Mar 2023
 17:31:51 +0000
Date: Wed, 8 Mar 2023 12:31:45 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <ZAjGgQQiAWCr4Mo0@intel.com>
References: <ZAiKuulQBp0569s/@intel.com>
 <20230308133624.2131582-1-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230308133624.2131582-1-andrzej.hajda@intel.com>
X-ClientProxiedBy: SJ0PR05CA0018.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::23) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|CH0PR11MB8088:EE_
X-MS-Office365-Filtering-Correlation-Id: 96ce2c36-078c-4cb4-d26d-08db1ffb00b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UnSGhZFadTsNFwIEBtsJwOhU8UrhkLEJSMfBc+a2bYniNA74KmV4oarw/9bY12oYcd9gjgmLY8FgxY5XoIwx+/gQlj7oY10RRQolJr/OypGERT1EUdT97yU5qmYAfUxdbSEjuUlLe/nRbBZS+AVGq3rTcRiXbV0u9KFYLGS59AG1VtcM6q3kFZR7IWhd4jRpaMjT5NK8HsBFOMOHA8irMV6m1vBQbp+LX7dQkC+x7p/dOXl/DUoXOq16DUdAryJVKv8qSKl+U/QyGtN1LDsnJe1mhBElRNhi+2utPGpruvv6RkNyDf3rrU3Bjvs/cCsBqp8YQKiU7UyMpHfG2EcOLjgX7kITYiFTDZGTeESbiEF7V4918vNnctXC87gqTSKdD7rRSAyNWDvV8SEXfDEr6fWDOqnRxg8Z2Dp+md3ZkrkLx6tinqonOnwdXiW5qW+1xsxBmdmvHqKn6ccMGm1gW1w4eWqERDEtSclxaX488tf76BVxshJane320/Hr1IBM5oCu57u5FMt0L4ffii7teXcZqA39/Eam9TRHP87fowd1GRBJaKhG/NCox1ROSTBLiEkOPeYLl1eeuP0DimEnaM2F43VJ7BHe14ihdCw/scbaeDrXu/eKU9n7x/ZAcBuy8xvRZG0IJlZccKQahK0cWw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(346002)(376002)(366004)(39860400002)(396003)(136003)(451199018)(36756003)(6636002)(37006003)(316002)(54906003)(6862004)(2906002)(478600001)(6486002)(5660300002)(8936002)(44832011)(8676002)(66556008)(66946007)(66476007)(4326008)(41300700001)(6666004)(6512007)(82960400001)(186003)(6506007)(38100700002)(86362001)(26005)(83380400001)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?AVrjcQTmEQmudlONhMgAcQNvPrsQYkdQR1FiwLhLDVdTlW1djAInFhSWakkR?=
 =?us-ascii?Q?eStESEyfKA/k6J1TPEzdHnNJo7gYcs8H8C3h+wFbq8I6CNQMb8LDjjfGqC7O?=
 =?us-ascii?Q?c47w8VMXYPUUphV4yfJv9crw7rCX35vGDgm1kzfmSiXB5pzKUhHqEcX4hbZf?=
 =?us-ascii?Q?7VmyYwXK7YA/EcS9ahKhQMgdTBP9Duc+XgM4EV5X3VU2w3eyPvaKYf0ntFSB?=
 =?us-ascii?Q?+Vs6kLnG2Ptx7ATB8Dtn60G3LPVpYezHn3EADO9PUX9Z6yO8T8OFsqp8Kidt?=
 =?us-ascii?Q?ljkCBDQI60WGqBKeIDB1oiOa9xzkebM/bLhKVN5M9MZ7jD6UYZJ0DaQnfQqL?=
 =?us-ascii?Q?FPu7ze/sJ8YmrbegszHEkotafguuX6G+uJd0ladjg/lTfgdlayOqTAgI9OMB?=
 =?us-ascii?Q?AlvwHNX6v2qDQ0FlN4d9yqMDOj79ur/1hG2bPnB4lktcDiMRKS2MqkAaPCP3?=
 =?us-ascii?Q?h5vh5WmoDF80PPog277vHOF8PZ9t4TUqb+btLM3Qno3QMN/CkSX8fvf+Qhhm?=
 =?us-ascii?Q?lzIZ44zsc2qYVK/4DrdV9qIosC26IB1xpO55XFYQCrGC4gpn4ucSsqF3aF8A?=
 =?us-ascii?Q?vWjdrkr9AyyZip3x4PpccWx8KgdG+XVGOd6fzxMBACXv7YsqkRy1ewaV/EN6?=
 =?us-ascii?Q?a+C3SF7evnnhopW/xGLrHLjsD0L4xRua4jHAEYKNuqF1N/ZuHn4doBYvNDJF?=
 =?us-ascii?Q?E2qmVkfkLECkXaNS3YRyImMunH+eqP/hdHwzjuUsrPPhFY53j9kJ6A+2HIPZ?=
 =?us-ascii?Q?0XrxgiTRBpRnF0tU8JK3l/Z6WHu5omLVxd6EaWehcmOOLSgV/FUwHNXG5Jio?=
 =?us-ascii?Q?ACGjRuKjkhCe/u//lkeO8YCyl2QisM2nok/CJ11/2Cc8lE+/D4MabynovmLg?=
 =?us-ascii?Q?Y/ro4Ey4KE++6hMNW1GECyd1Y4kTe71fpZWORSGGbXcmFMUX67Ntv0NmiZ/y?=
 =?us-ascii?Q?7D91CeXi7A9kTXBmp5xvtjcHoATXudftlUVF6iC3547mue5xQy9uKnTsadWM?=
 =?us-ascii?Q?yk17c48OR2tuwq0isq35jaDTWGu8Cy3REvUQzsiMOEdRZDQUCAWTbyXtD8VV?=
 =?us-ascii?Q?7k/r8NwMKaae/bHhdPeYMlKNzyjm7oNhH53UeL19IBB/IP0NEAANNXYbGNVa?=
 =?us-ascii?Q?Jjqa3n5Lcl+bMqeigg10bvAP/YJXqydEwkNJHOtvKRGNPwByLqu0qnwPUaeV?=
 =?us-ascii?Q?N1NuoTeFNKk4v9hm5SSKbkjS/Dq23ZhJZywAOYCe0oXUUBWRAAmoYMwiqJ94?=
 =?us-ascii?Q?j8J0WP2ebQUKxo6gr3uDP/AiJA9ttfWLqqGU/nD90opyV9yWuu4uSm2qoa+6?=
 =?us-ascii?Q?hDSdbEkEFqkUOt2BPKed3nn53aFr2TFolwLmvvPr2QnQNw75eVqmCwFu47kS?=
 =?us-ascii?Q?lmZNfJqmfMtl3WTPG5SX2R4IWV+kChiG+si2z8zNCnZeHG3smRScqtH5OI2H?=
 =?us-ascii?Q?WSruAs7YC73A1Fv40c3Omy0AoKMx/3HJnNoU4cbdowccX288ZIWEHQMNB9xP?=
 =?us-ascii?Q?D1EPWKWBPLCiBarGEqIE/0zYWoZ09coU3+DovvMVyL6BoIoYH0S70EtbbxnD?=
 =?us-ascii?Q?HqeNEqXdsQIO0cIX/xLGDPSje5z2zRORfjoLmGM6O1VVe6px9KLdJ+DMDpKD?=
 =?us-ascii?Q?zQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 96ce2c36-078c-4cb4-d26d-08db1ffb00b0
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Mar 2023 17:31:51.3772 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AP66Wpw096Bg5VaWa4X96VFsCxpV9dYBvgekCAxzx3BeNH7VKLYbmu3pSKnUnm/vdta7sgjF6gkaD+qXJhvO6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8088
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/gt: prevent forcewake releases
 during BAR resize
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
Cc: intel-gfx@lists.freedesktop.org, Matthew Auld <matthew.auld@intel.com>,
 chris.p.wilson@linux.intel.com, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Mar 08, 2023 at 02:36:24PM +0100, Andrzej Hajda wrote:
> Tests on DG2 machines show that releasing forcewakes during BAR resize
> results later in forcewake ack timeouts. Since forcewakes can be realeased
> asynchronously the simplest way to prevent it is to get all forcewakes
> for duration of BAR resizing.
> 
> v2: hold rpm as well during resizing (Rodrigo)

oh, I really dislike this with_rpm... a get and put directly would
end up with a much clear patch... :/

but anyway:

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>


> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> ---
> Please ignore resend of v1, my mistake.
> 
> Regards
> Andrzej
> ---
>  drivers/gpu/drm/i915/gt/intel_region_lmem.c | 25 +++++++++++++++------
>  1 file changed, 18 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_region_lmem.c b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> index 89fdfc67f8d1e0..2a3217e2890fc7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> +++ b/drivers/gpu/drm/i915/gt/intel_region_lmem.c
> @@ -54,6 +54,7 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t
>  	struct resource *root_res;
>  	resource_size_t rebar_size;
>  	resource_size_t current_size;
> +	intel_wakeref_t wakeref;
>  	u32 pci_cmd;
>  	int i;
>  
> @@ -102,15 +103,25 @@ static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t
>  		return;
>  	}
>  
> -	/* First disable PCI memory decoding references */
> -	pci_read_config_dword(pdev, PCI_COMMAND, &pci_cmd);
> -	pci_write_config_dword(pdev, PCI_COMMAND,
> -			       pci_cmd & ~PCI_COMMAND_MEMORY);
> +	/*
> +	 * Releasing forcewake during BAR resizing results in later forcewake
> +	 * ack timeouts and former can happen any time - it is asynchronous.
> +	 * Grabbing all forcewakes prevents it.
> +	 */
> +	with_intel_runtime_pm(i915->uncore.rpm, wakeref) {
> +		intel_uncore_forcewake_get(&i915->uncore, FORCEWAKE_ALL);
>  
> -	_resize_bar(i915, GEN12_LMEM_BAR, rebar_size);
> +		/* First disable PCI memory decoding references */
> +		pci_read_config_dword(pdev, PCI_COMMAND, &pci_cmd);
> +		pci_write_config_dword(pdev, PCI_COMMAND,
> +				       pci_cmd & ~PCI_COMMAND_MEMORY);
>  
> -	pci_assign_unassigned_bus_resources(pdev->bus);
> -	pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
> +		_resize_bar(i915, GEN12_LMEM_BAR, rebar_size);
> +
> +		pci_assign_unassigned_bus_resources(pdev->bus);
> +		pci_write_config_dword(pdev, PCI_COMMAND, pci_cmd);
> +		intel_uncore_forcewake_put(&i915->uncore, FORCEWAKE_ALL);
> +	}
>  }
>  #else
>  static void i915_resize_lmem_bar(struct drm_i915_private *i915, resource_size_t lmem_size) {}
> -- 
> 2.34.1
> 
