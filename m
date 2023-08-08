Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C642A774C5A
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Aug 2023 23:07:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F77A10E0F8;
	Tue,  8 Aug 2023 21:07:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B997310E0F8
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Aug 2023 21:06:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1691528819; x=1723064819;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=iQmoHRVatNSkaNugpaHWzL/WyA9oJK9lFTDbLdCZQiE=;
 b=a1EoWBIK1xhAP25mkIRvnBA/O/GG+VZysRikxx+LEEoVK/MeFTfb0mUB
 3rSwhj+qBOnm7k2lNtwMJxxv2xir1L/v0Q/LP1TFYDncIpHYFagQwJN6/
 +bXBqGF4h7439prll4mMdpiUysxPjXQHjXv7vxkF15zgvITmnFKIz+Zke
 vhtOOnOgWo1+kOQTnVY8w/Orneeb7AYLtnKMzC4hW8xxnLvDsDEJHNA13
 g+Oq/2Y2KDXixtuLgU5UXq5Mz2joop/KpDA3PdOQQUESId1qzvGow29Kd
 ulPHpo1UbSu1cG5LEOxVVdLfokSMID6gX5W7PVjSVNC1pYr+6lz6eN0kP A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10795"; a="369856444"
X-IronPort-AV: E=Sophos;i="6.01,157,1684825200"; d="scan'208";a="369856444"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2023 14:06:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.01,202,1684825200"; d="scan'208";a="874948233"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga001.fm.intel.com with ESMTP; 08 Aug 2023 14:06:58 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 14:06:54 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Tue, 8 Aug 2023 14:06:54 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Tue, 8 Aug 2023 14:06:54 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Tue, 8 Aug 2023 14:06:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Hgo9D2ouR3L2Owky1YJf5cQGhE1t51+VuNYmNSpR1/D7DL3EmaPalmFvnDx+CGTDgNAHpV2rcKORCjdQnu5AklNtwgWPrrBuUz3SP8htLf6UysZpgQK4JfJPO2cNplfaG6ZUxohtJjFonyYMQ9/sP/BEzSJAwIzYDv2Ht2dgTBMfjPFZy3cgrn6xE8xlS3BVurpGChvaIb+ZvBAAkCQMMis9QpA4YNWWmU9BTyapuEPsm9cnsFIEauCGwd9ckbLQvKoArnNyFX93m6zUY2Cecz3z/qwXu9ppO/WaHfTX0vNMRrYdWCYo9TFQmHAESszxnOGt8xQeWfbDnzrehMte3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=MoFQ6sfkKCAZ2Ll14MC8sneVM9UKEQwEqu26BMMju/A=;
 b=n99I8xy1vSEpaFKm1ofRKeWAe+XC+6KTxUY+RYIUbPP6yApymDBXoUcs/UHMIpjwySdAI9FOVdTSp9VVCFAQweaZHOnGq2QIZjLXqeQ5hGV0ZgSJjLNI/X+aEr7nopNYNXb87go4Em45WKQz7LnrVMDHjAJ/gqT/w6qvVuTN25o5y6DOmqwkYTiAWuUGq/AvHBpnYFRIhWh7fE+7B/+E97PzKGrpOj1M+RXy9iFezCnSAsuLxt/A0dB2OLzo8dJdEOU/iv4wTDrYUDt28zbB3aVZNkWtu0sKfRT2nGxYZARiGkyCnWAP1vQ5w4Nd8XRF3nYT+iVohoilL5kFT0zAsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by MW4PR11MB6689.namprd11.prod.outlook.com (2603:10b6:303:1e9::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6652.27; Tue, 8 Aug
 2023 21:06:52 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::7f94:b6c4:1ce2:294%5]) with mapi id 15.20.6652.026; Tue, 8 Aug 2023
 21:06:52 +0000
Date: Tue, 8 Aug 2023 17:06:47 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZNKuZ7Q9xhg6g8uB@intel.com>
References: <cover.1691509966.git.jani.nikula@intel.com>
 <fe51744aec9e2f465caf0d699b8a15591859f89e.1691509966.git.jani.nikula@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <fe51744aec9e2f465caf0d699b8a15591859f89e.1691509966.git.jani.nikula@intel.com>
X-ClientProxiedBy: BY3PR05CA0014.namprd05.prod.outlook.com
 (2603:10b6:a03:254::19) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|MW4PR11MB6689:EE_
X-MS-Office365-Filtering-Correlation-Id: 386ed7d8-58e7-4201-699a-08db9853631e
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: +fvMG1Ji4QMFRGF1c6RIMe19PQD6iBakYhxHyELHQTZEvwYRuhTcMxDUlwXc0BGDl9Vv1G24O6F8frXSqXNKYUi8vw6fg4EjicK2qg4tRD9Egr0hkKQjCRKoJ3L+hX5lio9m7tNiqDjxHBF6FlL7OgTNyFVNtTbEZzUF6Jibtbk9tcw27hc7e3zZQFIEFSTAOxj4M9SK1Lv810DRBA3C52a6602yyP7lYJOEu6ZUVVHcbl7NiXvHBTEzGYm1uBzITWB9cpcNrLVAM5c5X+lkUeOQN3Rm33p9/bvqaSmxO3ZCVXTNlM0MwypfIVqmyFc2tgaAtT4CCm0fzemIZfTwlDAiGtp9LQOQZjD+0y+yNGFuwISPb03uIu0DrBFzso87Q5kwz1lVRPaVffHQjrQVGEwDpEYK5Zk7GR4KPjU0UUW4eH0ud4f4UljMOEFOYAMiJiJSE27tq1Z+t6VqNxgpzd/6VEe0GHJG90h10PGsyf2hTh9aOFr1FI4c4hi/MKmN/KSSbfEpJdmBQKcHZNUTbtybnOmo3q6MDGnsVGh8h19GDlw+JM9KR3+qapXkv+RWlOR4BwYl0tp4wFzGBE+IE6sTCEsFyjFmZWwvLCLk5Etox+/b78eTsqd9CDbFC+5E
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(396003)(376002)(366004)(39860400002)(136003)(451199021)(1800799003)(186006)(8936002)(44832011)(6862004)(8676002)(5660300002)(4326008)(6636002)(41300700001)(316002)(83380400001)(86362001)(2906002)(6512007)(6666004)(6486002)(2616005)(26005)(6506007)(36756003)(66946007)(66556008)(66476007)(478600001)(37006003)(38100700002)(82960400001)(226253002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0rgggOhlvuRz7OJ7ySj28hH+PS5eGLXdRhKWr69hwCO2OnbUHRPieGvJKZvz?=
 =?us-ascii?Q?7QQ+WRbtMu1pXO1pp4llEDqI6q9tm8mMDZdZ/IN4alzIjbAwjvRCc9tUegXK?=
 =?us-ascii?Q?SzBIL65P3u1eDdeTIO8pS8+ne1GMdeIuJ8uF7ANXyFB+usWMbuzCsnRk2bqY?=
 =?us-ascii?Q?4Nw9BOuZu8LtcC8hBI9L3VjEENsvFclLPjoU+zvfpERhOGvMijAnRfQDxMdv?=
 =?us-ascii?Q?tH/06kc2VZqIf2Jc62wbnsdKaitNP2yhFHSrFffVqXsmVllEzLROycT98xs9?=
 =?us-ascii?Q?OY92fViOMT12jVboOC1FPrOskXf9hjPGGCvKjNUtnokD4/042LjYbWozD/co?=
 =?us-ascii?Q?fwJTOGi+6mqbFVexLtbpNvOpQJKqoOTb0F+X9ATM9HSxn/Rk9nj9reWkjK5/?=
 =?us-ascii?Q?E+WPyNiS5XkBCHtjJ7Mt9l+GN2d7v2FuN4FlN16mo7qh3g2t84IkopgWzCCN?=
 =?us-ascii?Q?yorN2hdK4dvWtJ/EURvMQdYCD6UGTboE/lL1f0KjKsQJocHdw2MIoOY7maP+?=
 =?us-ascii?Q?m/bj6qnbEIL/UU8OME1IH9QqWMc+zOSx/K0gw+QyjwBCbA9AxLBjx+UAOjwS?=
 =?us-ascii?Q?FGICmbsT3CworHuu8nnknVEkTDIThDYJGsy7g1VIr+l+37goFi2e/DK7dSii?=
 =?us-ascii?Q?60/xSvVaScZYzfMuDxnWhXBWXifCvTUc/MxHSx1+/SuizUaVkY09yBkVRt1V?=
 =?us-ascii?Q?gAb/zvcifhnRrrdqIloXzumPstklgT2WY7RKKFIy3hrR/yZQfVgzM+xmF8oc?=
 =?us-ascii?Q?7jg3wnJKxlMbzvbs2HURX0d2NW+T1m3kRyHPC6pvhRXLi4XghS6c6Ld1n/kf?=
 =?us-ascii?Q?WTNGWj+RK46mvAgdcW6fbl94i3hSrYJjrQ6yJPwxflykGwIm9Na5r/azBO8Z?=
 =?us-ascii?Q?OUWjs4Bt60temwoLus/RHWwn8yVuy7vPuS+dXo6JjEvVDZyppOd94AJ6rGTd?=
 =?us-ascii?Q?2KUhS/8c9PB8YWKm3A4HvN+jiZFE0ZuA0qdbJTbwAiHql/yRfaKCWepvx1to?=
 =?us-ascii?Q?w4oM8MP9RJf0NOFDYZ54FLlMMVa2bNO28YNWdclw+quyvCLxyn9Krg0j9UUS?=
 =?us-ascii?Q?JU7UAyew7jnS9/wUU05a8OKD26FEL5lxFfZdFGXiM8yzpXcQ/j8VGPlqb/OO?=
 =?us-ascii?Q?sbI/XJRoMvHihB5dRZAxwsOU2xlQcT3v6+LyvhosxWiWBAehjx2ZvpBwhnwZ?=
 =?us-ascii?Q?mpLXXgFURkbF0gEBjKpvmZR7uXfdQMG8cXCpMhhhqX00nJ4sXYXKx2Z+2uW/?=
 =?us-ascii?Q?yZkZj4PFcj137tn/LxKo/UcwPxQ38GkYonNG7EP8TvWwBy79JEhtT3OY6z9G?=
 =?us-ascii?Q?qYsifV5UzI6A2Iez+UOQjUoJstrkSyC2MNdQ9k7kU0pL0cMPdmgid/ROO1Rc?=
 =?us-ascii?Q?jbTSLtX4VKTe487fNmkvN7pMa6F5H/Wyh1Jf7/QmgXyUzIgUEHnoY0GAdhDr?=
 =?us-ascii?Q?XZ8b9xWMMOlwboVP8+n/59lceljnwoE3WwoVlV37tbDwT/M3Ofqvxd/MXYU4?=
 =?us-ascii?Q?dQQgmmWW/jJU522m/cdavO4PJUehoUDk7x6Sq00b0HGqCzgO5MtzCEQMhaLw?=
 =?us-ascii?Q?VErAD9153vNLYQ0su1CqLn58Mz7SWbEBfQz+oPcf+qwAWmO/EjIOH1ZsOQ7X?=
 =?us-ascii?Q?zw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 386ed7d8-58e7-4201-699a-08db9853631e
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Aug 2023 21:06:52.1364 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: W+4NqT8HD/z/PUYmZv9slaSq/y2J7rH0oJvWmGPu9ibd7fp+N0AGoXUKzWbrpgLjRN6kVRo8UjN07SZK0vTW4g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6689
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 4/4] drm/i915/irq: move all PCH irq
 postinstall calls to display code
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

On Tue, Aug 08, 2023 at 06:53:31PM +0300, Jani Nikula wrote:
> Unify on making the calls from display code. Need to add an if ladder in
> gen8_de_irq_postinstall() for now, but the function looks like it could
> be overall be better split by platform. Something for the future.
> 
> The display version check for mtp seems a bit suspect, but this matches
> current code.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  .../gpu/drm/i915/display/intel_display_irq.c  | 19 ++++++++++++-------
>  .../gpu/drm/i915/display/intel_display_irq.h  |  2 --
>  drivers/gpu/drm/i915/i915_irq.c               |  8 --------
>  3 files changed, 12 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index a697e0b32c34..62ce55475554 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -1537,7 +1537,7 @@ void gen8_irq_power_well_pre_disable(struct drm_i915_private *dev_priv,
>   * to avoid races with the irq handler, assuming we have MSI. Shared legacy
>   * interrupts could still race.
>   */
> -void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
> +static void ibx_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_uncore *uncore = &dev_priv->uncore;
>  	u32 mask;
> @@ -1624,6 +1624,9 @@ void ilk_de_irq_postinstall(struct drm_i915_private *i915)
>  		      display_mask | extra_mask);
>  }
>  
> +static void mtp_irq_postinstall(struct drm_i915_private *i915);
> +static void icp_irq_postinstall(struct drm_i915_private *i915);

thanks for doing that... made review easier, although this patch almost got me
confused.

maybe worth a follow up to change the functions placement and void this
extra declaration and also ensure they are all together?

anyway,

Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

> +
>  void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_uncore *uncore = &dev_priv->uncore;
> @@ -1641,6 +1644,13 @@ void gen8_de_irq_postinstall(struct drm_i915_private *dev_priv)
>  	if (!HAS_DISPLAY(dev_priv))
>  		return;
>  
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		mtp_irq_postinstall(dev_priv);
> +	else if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
> +		icp_irq_postinstall(dev_priv);
> +	else if (HAS_PCH_SPLIT(dev_priv))
> +		ibx_irq_postinstall(dev_priv);
> +
>  	if (DISPLAY_VER(dev_priv) <= 10)
>  		de_misc_masked |= GEN8_DE_MISC_GSE;
>  
> @@ -1721,7 +1731,7 @@ static void mtp_irq_postinstall(struct drm_i915_private *i915)
>  	GEN3_IRQ_INIT(uncore, SDE, ~sde_mask, 0xffffffff);
>  }
>  
> -void icp_irq_postinstall(struct drm_i915_private *dev_priv)
> +static void icp_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
>  	struct intel_uncore *uncore = &dev_priv->uncore;
>  	u32 mask = SDE_GMBUS_ICP;
> @@ -1745,11 +1755,6 @@ void dg1_de_irq_postinstall(struct drm_i915_private *i915)
>  	if (!HAS_DISPLAY(i915))
>  		return;
>  
> -	if (DISPLAY_VER(i915) >= 14)
> -		mtp_irq_postinstall(i915);
> -	else
> -		icp_irq_postinstall(i915);
> -
>  	gen8_de_irq_postinstall(i915);
>  	intel_uncore_write(&i915->uncore, GEN11_DISPLAY_INT_CTL,
>  			   GEN11_DISPLAY_IRQ_ENABLE);
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.h b/drivers/gpu/drm/i915/display/intel_display_irq.h
> index 2ccc3e53cec3..2a090dd6abd7 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.h
> @@ -58,9 +58,7 @@ void vlv_display_irq_reset(struct drm_i915_private *i915);
>  void gen8_display_irq_reset(struct drm_i915_private *i915);
>  void gen11_display_irq_reset(struct drm_i915_private *i915);
>  
> -void ibx_irq_postinstall(struct drm_i915_private *i915);
>  void vlv_display_irq_postinstall(struct drm_i915_private *i915);
> -void icp_irq_postinstall(struct drm_i915_private *i915);
>  void ilk_de_irq_postinstall(struct drm_i915_private *i915);
>  void gen8_de_irq_postinstall(struct drm_i915_private *i915);
>  void gen11_de_irq_postinstall(struct drm_i915_private *i915);
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index d63f79259637..1bfcfbe6e30b 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -792,11 +792,6 @@ static void valleyview_irq_postinstall(struct drm_i915_private *dev_priv)
>  
>  static void gen8_irq_postinstall(struct drm_i915_private *dev_priv)
>  {
> -	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
> -		icp_irq_postinstall(dev_priv);
> -	else if (HAS_PCH_SPLIT(dev_priv))
> -		ibx_irq_postinstall(dev_priv);
> -
>  	gen8_gt_irq_postinstall(to_gt(dev_priv));
>  	gen8_de_irq_postinstall(dev_priv);
>  
> @@ -809,9 +804,6 @@ static void gen11_irq_postinstall(struct drm_i915_private *dev_priv)
>  	struct intel_uncore *uncore = gt->uncore;
>  	u32 gu_misc_masked = GEN11_GU_MISC_GSE;
>  
> -	if (INTEL_PCH_TYPE(dev_priv) >= PCH_ICP)
> -		icp_irq_postinstall(dev_priv);
> -
>  	gen11_gt_irq_postinstall(gt);
>  	gen11_de_irq_postinstall(dev_priv);
>  
> -- 
> 2.39.2
> 
