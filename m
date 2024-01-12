Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5805F82B869
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Jan 2024 01:05:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC26F10E9CA;
	Fri, 12 Jan 2024 00:05:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0A4710E9BC
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Jan 2024 00:05:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1705017916; x=1736553916;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=wbO5Oo/6QhQiVYDcw9avZ1ZqgmEbzUFJZcjjFL9WAW0=;
 b=Fv/oK61TBmvnYntDk3niuTpgXMkYme3I9Jvnj620AR3d4qC9dHf5vr3A
 f7oQ5FZhtxxTqrOdGL1FzJMmlRRJ80+PYQU2qUetO8NS3LwaWXymbrs5P
 xtjt9J7B5yjLJme67IfvOG74eO0gYDkE5dREb5LE1HHIzMW7hH/gl0KjW
 MZi4OL+J+ELmrTarJ9CoPtJvdqg3WMXhcbTV9Ct8fNjRSmd5Z9jvvD96u
 1a8HkhW0l3Bx8//NqHNRefd0nS3aS9jR+9GL1NwwDaD5Z5Zvo4sRORVjy
 E5KiCnVAGjxuAPCViGX5wkRc1ykPjBJq5pYdi8RhUSiPId6TZtiFneV2Y Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="6400111"
X-IronPort-AV: E=Sophos;i="6.04,187,1695711600"; 
   d="scan'208";a="6400111"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2024 16:05:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10950"; a="1029737824"
X-IronPort-AV: E=Sophos;i="6.04,187,1695711600"; d="scan'208";a="1029737824"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jan 2024 16:05:13 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 11 Jan 2024 16:05:13 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 11 Jan 2024 16:05:13 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 11 Jan 2024 16:05:13 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PvYusinncDTYRttG1f5JE05NOmliqUQowI/K7M1b0FvvGVEEkzv7Mef/UzD7ggx3Mi9TpqWlZCzSm47XuypJ4G2d0LFbv51BrgU2/AwJFuZlNwqIq2kDG9OJyIHndl0yZus2Y5Jlini+B8x319Qkh6lSRDrphx7nE/RPyUzRubf1XQ5UJpwGd02I8VQxVSnCFBaZz4UBAbSMp+EYn8U0ME4BE++F4xz3h/yRMGJTW3nh0B5TTVuXFsE3Z2XPbBslchjyjSSyd3yX+PYg0yMY2LJlP/Q3xBsWmgqeomqWH8fcXruFtOFrAWrH9JANqJTNzjShysUOT/xTwgBCoq3CBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GWG0c3x22PyiM3ONeFBpOtbUhWxwk/4Z1xD1MSmeRIk=;
 b=iMmsSYwqwXTEn/Zkjz3wSpOmbL4sAwuEMdjLm8wCy418lML/ZKflvLlmi8+4gcPmXEiKhxm3zsebAw9Q6JXuXfX3av5rPfwe+gMDmR7hxOuE/7gPtfUrOOyBTIN0MoEt98L/ZE9r7XbO5qxBEWuLybPwzjt+gUtnvJiF3w/gj3rRENgMsQAFCryy4LOEEncsZgyya8Pr0wT9oYIRo/mK2Z+ymPuN519zX65w1FYd6eLOgqvXgdf9XxSSYlEX8mNqGju60Pz+dyt0Kbzw3cwBWqrvKrTq/hJpy9ASU6FszCxksQs46bzsDm5XJkcAJRMv3KyQz9w+iDuUkmeCC7caAw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5971.namprd11.prod.outlook.com (2603:10b6:8:5e::7) by
 IA1PR11MB6097.namprd11.prod.outlook.com (2603:10b6:208:3d7::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7159.23; Fri, 12 Jan
 2024 00:05:09 +0000
Received: from DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10]) by DM4PR11MB5971.namprd11.prod.outlook.com
 ([fe80::35b5:a275:4f49:2e10%7]) with mapi id 15.20.7159.020; Fri, 12 Jan 2024
 00:05:09 +0000
Date: Thu, 11 Jan 2024 16:03:44 -0800
From: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Subject: Re: [PATCH 4/6] drm/i915/opregion: abstract ASLE presence check
Message-ID: <ZaCB4Ne7sXnZvwCw@invictus>
References: <cover.1704992868.git.jani.nikula@intel.com>
 <1829415d3e7b29e78c46b20bca8175ef373bcd92.1704992868.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <1829415d3e7b29e78c46b20bca8175ef373bcd92.1704992868.git.jani.nikula@intel.com>
X-ClientProxiedBy: SJ0PR13CA0107.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::22) To DM4PR11MB5971.namprd11.prod.outlook.com
 (2603:10b6:8:5e::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5971:EE_|IA1PR11MB6097:EE_
X-MS-Office365-Filtering-Correlation-Id: 55c9d253-1589-4e4b-e601-08dc130223ab
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lIsXrfYs5t4uCUznHIBYFC7N2DigRLONnxTgQNsaqeQwtevYJnOgyEMZyxhVfslFBRc/ZaH/m6tWc2AoyVtvSjSDe/H6uSoLhCpWVI0RA/g4U4kQkJNEcSt6/RnK0Dg2QkogWIjAA7E5RRNc9h4ROssMSDWiMZ31woYNsio5R0z8jDJkHNoaERy3p0LPyrBwwxm2YGYgRHned7lA6Us4CNaIPCqGvaApJsKo2tWyh7md4giz/r+jqxUMclQUDVwYKIjQ4xuh52HPRg/V0a8jgiF3KK0zJdG5Kkv+fU2LovT5aoTP0NbIPHNFWayU93MIFBG2v5jzTjpQ8CfOG0wG8p3JD7Lg1vyqe7vQu2c0rPWy8cE/dbcUg1nd7WVZJz9PTIYxHMtrdTCT2Z9+ELuj/aJS50Jc4/9WUbCRJROJ8uXz3yi6avy+d8qSIvVIRNWAY8MhoSQEfT4/PoIKnyks00W376FlBYnvWz+KcU24TbVWcVA23FpdfT5NP4EQJFWaBXjr7jjc0VG/uXbsW5b7JGYj6Vne2YOnIHNC4MLi4XttmMY4q1RP/JbdspQ8KPyV
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5971.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(366004)(39860400002)(376002)(136003)(346002)(230922051799003)(1800799012)(186009)(451199024)(64100799003)(5660300002)(2906002)(33716001)(41300700001)(6486002)(478600001)(38100700002)(44832011)(83380400001)(6512007)(26005)(9686003)(6506007)(6666004)(86362001)(82960400001)(6862004)(8936002)(66946007)(66556008)(4326008)(8676002)(66476007)(6636002)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?P/Ss9OW4Ha6wVKSIVFCr3cNUmFDukCBuP5swpLuxCerCi+3ZSKRRtV5SnwSo?=
 =?us-ascii?Q?SEPxsEKBea9WCOXmI5uVtx4bs5+lgR7OK8db1Z36KOPzfSglwbJXbsASnZLi?=
 =?us-ascii?Q?nP+V7wO5M+bHqMTpX7qWICna8XsW534xx3XHjccVx/sjg8I8Zqir0f8zPkGX?=
 =?us-ascii?Q?vryVHQP7750/ap15Q29q5D2xrDpBNroia75XP2sWwWMVMsVypqfWJWdhHPra?=
 =?us-ascii?Q?kVO8/GuqGRHxQhuy73NmHEI8/wWJPwOVwMerl689G4xirK4ndLXh6ida5RYL?=
 =?us-ascii?Q?4lksP1etFJDBZw1dPnTBDXOBNukHBC6gN/UNqgOpX8L2ezQFQ/EsKFhX+xVt?=
 =?us-ascii?Q?7DOTef4O3Grxw2cZpVDL86i7MjFVwVrjiZ8H4WDjGW5RZHSoGfhsf7mq7SKT?=
 =?us-ascii?Q?q/Qu1IvJhkG5CYcG3dwZuUXjmxhzSSdbxdj6U7AP55TrXZmH9tcahPqvfTRx?=
 =?us-ascii?Q?Qbk/+fHIWDyaVFauO5r22Q3jBDYIPChEzTYC//4zxaxaaFpx7lvV3l0dauoT?=
 =?us-ascii?Q?y5DOvr2JPZpW3e70mXfCukKjZ327S9KQQIBHAm1k8/KONM7q4SWPvgtHm/El?=
 =?us-ascii?Q?MtKiImEDLA5H8diYhih8oC2n6XRJNR+k2wV3vG4/VOeFDmUZTjDXV++NsGJf?=
 =?us-ascii?Q?xJsRHfjYw+/bODItPC7WylQoLiw5NTSXLQ6g2zRBj//S3Pvc/sQrtAhVfjFo?=
 =?us-ascii?Q?qNvqP86EJrfcyRVngYVoyg9d8uYCRuWqxhxpocGztozgJyGJaQ7FQ+qhIaA2?=
 =?us-ascii?Q?te30dfH8vMLBvUBEGZ55l5KQyrF+RwyUH9mE+3ZTlWUkTohN1lAmx4cV1ylY?=
 =?us-ascii?Q?8Bxbat3Fwq6vCnJqdE5ZUhqmOrZcJFhTBrpS6ZzwN7g858Agsx6h3LRWblh/?=
 =?us-ascii?Q?dsa8pNpwkihgLvlyPRkgICQFRccQUbKyj3nZY5RJX5Tvk1VqFRqYjpVQxPda?=
 =?us-ascii?Q?fO2txD/JNZ4sIU2TtR4+1OSj1NHuT/eqfG/7SNNdmdRdXM/nWzGxO6jYUeXr?=
 =?us-ascii?Q?1bxMzMi0qykFooScKqT9z8H/5YsCe5CqfU4MfYX42BKwqQHro1pzwLgWKTt3?=
 =?us-ascii?Q?8i1mpsl+Sqs+vKQLbzavwx838WdKdwDoJMoBppAW29jW7Zq5A7sI2EacXcJu?=
 =?us-ascii?Q?H7ir487FNwcYd9QJ1WDiSo1QiQCroJFGfaPU0xAhgLvqPBQmq/DRq2tqqO9q?=
 =?us-ascii?Q?31u2Zi/WGy9CbfjyfJjijDT7IrodqXzP0dNZgEV7sgX+KIYxV/uXwKp1eQzA?=
 =?us-ascii?Q?lCKfy4bpnijzOUXDtELoFz9RJTUhsMJSylOxDy2QuR+fe3yLw0SFu45Lv3Oy?=
 =?us-ascii?Q?faaxYxwgoGI5iLjihHixPKVqf/XJV9gfOm6eCoKkEbZa9uNeLRsl8x2w5vFP?=
 =?us-ascii?Q?dRMZ5cN3jPNpG7eGLVkcej2io0JpwAY2BiCpmwVZMtmv0Al9p840Dpsmme75?=
 =?us-ascii?Q?GYflzXvk+XGmbMw4L97gGcefy7Nfv5zO4L/IEiCeG3aPJthj3CyGo7MrkGEo?=
 =?us-ascii?Q?zBtgzXr9Fb5Ci8MGOWzXPFl1g4E+Cg7kkYRcDCDXuaHmlX/zC4sUwcljTgDy?=
 =?us-ascii?Q?T+a0XNueX4tZK8LCytk5QZ70Md33dO9mtmykAofILDEFNGXCj1b4glIlclfs?=
 =?us-ascii?Q?obRkIFBVhxIbC+JFyIwbh0Y=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 55c9d253-1589-4e4b-e601-08dc130223ab
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5971.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2024 00:05:09.0446 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: A5hwQfbBo1iLKEUpi9bmEXeltC+mlxsL+zYYa+69we3Pfu06hc/vwmOvjP8FG4HqYR7kXYABKlfnzw5ToNDEV/YiLkGWKugtd0DehU0psY4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA1PR11MB6097
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

On Thu, Jan 11, 2024 at 07:21:17PM +0200, Jani Nikula wrote:
> Add a function to check the opregion ASLE presence instead of accessing
> the opregion structures directly.
> 
> Reorder the checks in i915_has_asle() to avoid the function call if
> possible.
> 
> Cc: Radhakrishna Sripada <radhakrishna.sripada@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 6 +++---
>  drivers/gpu/drm/i915/display/intel_opregion.c    | 5 +++++
>  drivers/gpu/drm/i915/display/intel_opregion.h    | 6 ++++++
>  3 files changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 99843883cef7..f846c5b108b5 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -266,12 +266,12 @@ void i915_disable_pipestat(struct drm_i915_private *dev_priv,
>  	intel_uncore_posting_read(&dev_priv->uncore, reg);
>  }
>  
> -static bool i915_has_asle(struct drm_i915_private *dev_priv)
> +static bool i915_has_asle(struct drm_i915_private *i915)
Why not move this to intel_opregion.c and export it instead of
intel_opregion_asle_present ?
>  {
> -	if (!dev_priv->display.opregion.asle)
> +	if (!IS_PINEVIEW(i915) && !IS_MOBILE(i915))
Can we extend this check to dgfx as well?

-Radhakrishna(RK) Sripada

>  		return false;
>  
> -	return IS_PINEVIEW(dev_priv) || IS_MOBILE(dev_priv);
> +	return intel_opregion_asle_present(i915);
>  }
>  
>  /**
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.c b/drivers/gpu/drm/i915/display/intel_opregion.c
> index 8b9e820971cb..26aacb01f9ec 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.c
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.c
> @@ -632,6 +632,11 @@ static void asle_work(struct work_struct *work)
>  	asle->aslc = aslc_stat;
>  }
>  
> +bool intel_opregion_asle_present(struct drm_i915_private *i915)
> +{
> +	return i915->display.opregion.asle;
> +}
> +
>  void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
>  {
>  	if (dev_priv->display.opregion.asle)
> diff --git a/drivers/gpu/drm/i915/display/intel_opregion.h b/drivers/gpu/drm/i915/display/intel_opregion.h
> index 9efadfb72584..d084b30e8703 100644
> --- a/drivers/gpu/drm/i915/display/intel_opregion.h
> +++ b/drivers/gpu/drm/i915/display/intel_opregion.h
> @@ -69,6 +69,7 @@ void intel_opregion_resume(struct drm_i915_private *dev_priv);
>  void intel_opregion_suspend(struct drm_i915_private *dev_priv,
>  			    pci_power_t state);
>  
> +bool intel_opregion_asle_present(struct drm_i915_private *i915);
>  void intel_opregion_asle_intr(struct drm_i915_private *dev_priv);
>  int intel_opregion_notify_encoder(struct intel_encoder *intel_encoder,
>  				  bool enable);
> @@ -111,6 +112,11 @@ static inline void intel_opregion_suspend(struct drm_i915_private *dev_priv,
>  {
>  }
>  
> +static inline bool intel_opregion_asle_present(struct drm_i915_private *i915)
> +{
> +	return false;
> +}
> +
>  static inline void intel_opregion_asle_intr(struct drm_i915_private *dev_priv)
>  {
>  }
> -- 
> 2.39.2
> 
