Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 55BB05FF34B
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Oct 2022 19:57:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4330D10E098;
	Fri, 14 Oct 2022 17:57:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D91A10E098
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Oct 2022 17:57:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665770239; x=1697306239;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=JH/cqJOE56NpCB+7bSxHRiYU/AO0pUd/2x8quRD1w4E=;
 b=a+ij6ob4rGFjJOtJoFNOVM+h59hvXTTtKU73TJH0aVKEZNKrNK5RbyAE
 OwcfPejxOgD5ueUxOACpWM5LdP2/1jI4KhR87QDmZM81KX97YsS2NgiFY
 ajIdJ4WcEK8M7bsKG+xsNA0hHotIaBWmd2gvXpJgtnPIeICz5wCO1vl49
 mRos5he1YuCxiPqTC2TJVvp4dEGNCTithjVZk2rz+SSrUVu9Ifw5kfTQR
 zarmU1pQy28g1Fe3COyIqafTLep2oyyUX3Rs0P1eJQDCPhY1p4mh0+o1K
 LHiMZIY8vjzs5AyuRNs8x2x9+lNiJY9zr8T8wgjOONv3+MtUuFHFiKkbW A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="306519195"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="306519195"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2022 10:57:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10500"; a="660814043"
X-IronPort-AV: E=Sophos;i="5.95,184,1661842800"; d="scan'208";a="660814043"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga001.jf.intel.com with ESMTP; 14 Oct 2022 10:57:18 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 10:57:18 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Fri, 14 Oct 2022 10:57:17 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Fri, 14 Oct 2022 10:57:17 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.57.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Fri, 14 Oct 2022 10:57:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bTHiMilJ6wQk7xVQB/3ZUOvXQlS1j78VpKnF0gssgQ43RV5vXeSDbCqAgLd0gwuAYTssBymWrT+lkE8VoWJL877B0+gWV/3K2zl3xCwobSm0YgMZMbkY/rAPLlc/FN3xK+p3OLUiWGxKEZopqjZF9UGjl7Hwrek22CA5IZfIIYNtS0ZhvzdRsNu4SVjHYH4xATFvUnUIDIDCTzzLkrbzG1lrNAgLf0/8MQtof7NMgz9LhJpEIKmtGIOBs6F4mC3E4D0EhPrZpIE0anygyCGVozHkyYYO5OH6f3JG98F2iBPimw0CTak9dZBis1/evlyH9bjVq/fcBp2fe4xooT3ByQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sy5VTD4GwyCjzJNscDDeo9N+AM1jjrK799k1b4RRSzw=;
 b=oPdUgo+5cPpBJXMLP2+5tOJ6qkAXmQ918ES8wQBqzCSZet7HfkNa8egtf/7qOYMbAmAiisZVSafQzyUoggEZAxDwZL6BQqsEKd/6O0pEv2tq97cQmvnJ/1R80ck+mSqjXE6VDX9VpzvmhKWnkc506HViybe574Uvn9NYy01L+ZFQ8C48HuUQ36+qmSPuXF7dGmWF182ACfhTUFhoMFRXurwy5XREu2PjKVLOsnrVeRzioc0euHo3BCjLlgOmOrmCCjUFQuX1TZKs9Mcq3jYPwWbRD6wHgcchok0esjUB3p2m6FH05YybH/vH12mps1BmQl4StZ+ZAfCzyFhfwLt8Mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by PH0PR11MB5951.namprd11.prod.outlook.com (2603:10b6:510:145::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5709.21; Fri, 14 Oct
 2022 17:57:15 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::29f8:1b74:685c:6198]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::29f8:1b74:685c:6198%8]) with mapi id 15.20.5723.029; Fri, 14 Oct 2022
 17:57:14 +0000
Date: Fri, 14 Oct 2022 10:57:12 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>
Message-ID: <Y0mi+NUjLYiAaQD0@mdroper-desk1.amr.corp.intel.com>
References: <20221006163200.2803722-1-andrzej.hajda@intel.com>
 <20221006163200.2803722-5-andrzej.hajda@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20221006163200.2803722-5-andrzej.hajda@intel.com>
X-ClientProxiedBy: BYAPR05CA0074.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::15) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|PH0PR11MB5951:EE_
X-MS-Office365-Filtering-Correlation-Id: ed1f0276-3ba6-4d32-ff2f-08daae0d86dc
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /7divkV1S3Z+gDyWtZJtUwgUHgN6Se7FEgnoVCehU/BsI9pIpcEN5pA9LZM012wM3LPdUAEto7jDybclJCF+cj/xuoexmOujnylwBeZSaQiMfnt8eFRy7W0pwxz5sGwPgdyksuC0+g5PzvNb3RxsAPPvPSo8TvnS3hsLmqPsji51fAr1rmWvIM4EgObNHTb4/so5EolU3gjmXJEO4FZG6RG0Xxsi3pGuHSw/dWRCQ3Om9s6VsYD8L25ZDXguE/aJc2EKvCt6RQpKgyOgnYDcg3DX47TWGhFFfP6ukZ2eLN+hvEUk31G3+H8BlvXs/4WarpJ11A8slSy9Zw6mq39Y7pn6ufS57+Ti3Jah2L73JlgmpUMtRgyql/2fYNFpaq/xTSXMEVPUMUbnv52xMpo2kWXRq4lVR1HhZKi12II/tvg4ZPGzTOLywHaIWSkhTWLke/Rgf9ANXra+0YHizd1wahBxiMIYLU9K/8w0jAVkcn4yqNBb7MJGJHvpDqwUCB6Afos8RG7j7uttrY8ZIJ4bu6es7775dRQF1/WWHEvpu0ZQdbqEehD4TYIl0d3QWmxueq7MqnvxUnHpaFZIXTxr3hUmTJDa9OEhVY718yUnMMSkkGYPVQNpTtQUtTYFcaFPLkrqG5rXKp4g4xJ9OobmmZJY446gpclpvbuRXFwo+Zp+cEIrDYGVf6iCLhYYgs//JwlG0KoliFTB65oQMETc9VK1sqYGTup/CXc4bk2NRvd68AW/dDHXJQZQa4JbLA6B
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(136003)(376002)(39860400002)(346002)(451199015)(83380400001)(186003)(30864003)(82960400001)(5660300002)(38100700002)(15650500001)(41300700001)(2906002)(8676002)(8936002)(66946007)(26005)(66556008)(6636002)(6486002)(107886003)(6512007)(6862004)(54906003)(316002)(4326008)(66476007)(6506007)(478600001)(86362001)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?BCYo7Gfrw0Ja49eDdjsQAOZzI9U/yb9+K9mB8YKfoC4omoum2/A1qMJV9GP5?=
 =?us-ascii?Q?KnV20Z5GyvF1jkCaRcAwzrWwGzhMQmR5koFj5lP1RNkTN7WiOQMi+7h3QoaA?=
 =?us-ascii?Q?fTYpH0GKoFqbjue4HjI3huEs0hIOKy75bcp2eCjHsx46p9taZDZIFry9L+dZ?=
 =?us-ascii?Q?ud3+st8D1HbhOCVP9Ekb7D6T42L6RNskh7q9jhHIgt+5eu3UNE75Z+vk4lGF?=
 =?us-ascii?Q?aD/UdzwoSM/onKCoVm66qQDoPD6bxEzCyF4ckFG5LtNqxv9Xaf6nEfZYfpRI?=
 =?us-ascii?Q?8gcSIpT9RPaHi7i5fK6ZCPVn8fMwXItq6fmHckslXW4fb+6Dwhpdqp1J83y2?=
 =?us-ascii?Q?LTd4niXaXCVrnC61urP512Sjr4R54BicoCSqOrZPvbW/jpd4e5P9T0jgy4L2?=
 =?us-ascii?Q?X6LgkQGb/A/1mK7+m0B5JtwmTSDEtMrLJ95ypfE34DpqM1eteHz9pbQXxTQn?=
 =?us-ascii?Q?1y4qVal0dJs5QZn/+8FhpZmfsDi2Dgp8N58On52iPp0vFX7w+8sxEx70EsYd?=
 =?us-ascii?Q?TX9pxKx6CnaEqMtvCnbxEPIYN7rTvBuYyv3e96AxcHXDiIGSgxwchhfhR6P3?=
 =?us-ascii?Q?yt4EXFZtkeR2QgsguWFfgFxMuSUwEdKF2N3iBcO39MiZyI11rqZGttRcfqqI?=
 =?us-ascii?Q?Ag/BlI1oQipyBDTkKpwakIbLysv4RxTFHAzPVVmGa3kHKq1qPasVVORy3vCH?=
 =?us-ascii?Q?EKxF2bkzesR6xbrAZZviXZo2FsTOFyQ64cIJ48nV4jXmAzTMaNIxf76+/xI5?=
 =?us-ascii?Q?FqpW5EJ/rjZiQYOT9Y/JkQW66W1R1PoLboL0pFvzbVVVNow+URFw94JMMq2s?=
 =?us-ascii?Q?VjJxoICrnvUGAPb0P6kx37v5NbMqbsd+gnUT7f1iLUhdOU0ybeE+C7rba91J?=
 =?us-ascii?Q?4lr4D1LxuquEI5oVvUqH6liUa3WSV1sqyR9UG4t3Sk/DiRiZ4b+cpB74vxo1?=
 =?us-ascii?Q?1Z+yAcvnngiiayr2LoCvg4mwXiyczQJSscx4O8vb6eFeOpzQvILP9lHsSf1c?=
 =?us-ascii?Q?LzjttJjV+RCgOgqIrt4v9gBKs+FPw05T7vkD3cK4zyxYP8WIb43RDNQVcP49?=
 =?us-ascii?Q?RUqkpKDZ1UKWxICfP8eF++9dXDeI7uyUgTxhdR/2SH4bvWeUdDYJ56jFpvlL?=
 =?us-ascii?Q?zib8WtodRCcwLMXX65OqyZl16o3o0AV4c9yJbi5eEDMKZ01yaKHYzSLp20Zc?=
 =?us-ascii?Q?Fi7IbDTC/3kiaV691JGthxBLY/0urWV1iG+4KbdG++eszn7F7XsLcMLHNxNT?=
 =?us-ascii?Q?N7AIcZCrVo3+ixiMgOs03OzLaMJB1bwoAgyuDWrgjneHn8v67FfVtelr7iih?=
 =?us-ascii?Q?bDkikgn7OaEERM//TcgZGOV/O9rZd+oInkPO5Ojbv5ufd6DlR63cUWK1Z6Xj?=
 =?us-ascii?Q?SYIl14Y8qSkqjD7M1sdh3dK7hW9IziGlE7VjIcR4SDORltXq+u4JrV0jl4HA?=
 =?us-ascii?Q?imXIpx/vdf5obhoDAHgqYY9UR6xr3N/cEp432aWga4MEPbaDDWm89CO7iZ5M?=
 =?us-ascii?Q?y580X7Cp/Kr87R6fuJNN6M5Xnny7F+gcJThhakY0n1LhooBEf2h5Z4t9tje+?=
 =?us-ascii?Q?MPUSBsK7yX5Recpd7SU7XbRzJlmXa67BcPnhYP62vKr1G+YbcmvnZ+IDeoVM?=
 =?us-ascii?Q?vg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ed1f0276-3ba6-4d32-ff2f-08daae0d86dc
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2022 17:57:14.8971 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bI4s4vhpdKtXvUXgh7zuiLWHop+7akks92uU55YOcbeqEAKJmfFbzKmeomOmuOSv3R50uJrraLzkGmcH1kAryFMuXos0leK/7ggxgfuBT+E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5951
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 4/4] drm/i915: use proper helper for
 register updates
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
Cc: intel-gfx@lists.freedesktop.org, Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 06, 2022 at 06:32:00PM +0200, Andrzej Hajda wrote:
> There is special helper for register read/modify/write.
> 
> Signed-off-by: Andrzej Hajda <andrzej.hajda@intel.com>
> Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_tc.c |   9 +-
>  drivers/gpu/drm/i915/i915_irq.c         | 227 +++++++++---------------
>  drivers/gpu/drm/i915/intel_pm.c         |  60 ++-----
>  drivers/gpu/drm/i915/vlv_suspend.c      |  28 +--
>  4 files changed, 112 insertions(+), 212 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_tc.c b/drivers/gpu/drm/i915/display/intel_tc.c
> index b0aa1edd830289..8cecd41ed00338 100644
> --- a/drivers/gpu/drm/i915/display/intel_tc.c
> +++ b/drivers/gpu/drm/i915/display/intel_tc.c
> @@ -408,14 +408,9 @@ static bool adl_tc_phy_take_ownership(struct intel_digital_port *dig_port,
>  	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
>  	struct intel_uncore *uncore = &i915->uncore;
>  	enum port port = dig_port->base.port;
> -	u32 val;
>  
> -	val = intel_uncore_read(uncore, DDI_BUF_CTL(port));
> -	if (take)
> -		val |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> -	else
> -		val &= ~DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> -	intel_uncore_write(uncore, DDI_BUF_CTL(port), val);
> +	intel_uncore_rmw(uncore, DDI_BUF_CTL(port), DDI_BUF_CTL_TC_PHY_OWNERSHIP,
> +			 take ? DDI_BUF_CTL_TC_PHY_OWNERSHIP : 0);
>  
>  	return true;
>  }
> diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
> index 6cbdefadd09180..c08d092cdccafe 100644
> --- a/drivers/gpu/drm/i915/i915_irq.c
> +++ b/drivers/gpu/drm/i915/i915_irq.c
> @@ -325,15 +325,10 @@ i915_hotplug_interrupt_update_locked(struct drm_i915_private *dev_priv,
>  				     u32 mask,
>  				     u32 bits)
>  {
> -	u32 val;
> -
>  	lockdep_assert_held(&dev_priv->irq_lock);
>  	drm_WARN_ON(&dev_priv->drm, bits & ~mask);
>  
> -	val = intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_EN);
> -	val &= ~mask;
> -	val |= bits;
> -	intel_uncore_write(&dev_priv->uncore, PORT_HOTPLUG_EN, val);
> +	intel_uncore_rmw(&dev_priv->uncore, PORT_HOTPLUG_EN, mask, bits);
>  }
>  
>  /**
> @@ -1057,8 +1052,8 @@ static void ivb_parity_work(struct work_struct *work)
>  	if (drm_WARN_ON(&dev_priv->drm, !dev_priv->l3_parity.which_slice))
>  		goto out;
>  
> -	misccpctl = intel_uncore_read(&dev_priv->uncore, GEN7_MISCCPCTL);
> -	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, misccpctl & ~GEN7_DOP_CLOCK_GATE_ENABLE);
> +	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL, ~GEN7_DOP_CLOCK_GATE_ENABLE,
> +				     0);

This doesn't look like the right transformation.  The original code was
clearing the GEN7_DOP_CLOCK_GATE_ENABLE bit and leaving all other bits
the way they were.  The new code is clearing all of the bits *except*
GEN7_DOP_CLOCK_GATE_ENABLE.  I think you need to drop the ~ here.

>  	intel_uncore_posting_read(&dev_priv->uncore, GEN7_MISCCPCTL);
>  
>  	while ((slice = ffs(dev_priv->l3_parity.which_slice)) != 0) {
> @@ -1689,8 +1684,7 @@ static irqreturn_t valleyview_irq_handler(int irq, void *arg)
>  		 * bits this time around.
>  		 */
>  		intel_uncore_write(&dev_priv->uncore, VLV_MASTER_IER, 0);
> -		ier = intel_uncore_read(&dev_priv->uncore, VLV_IER);
> -		intel_uncore_write(&dev_priv->uncore, VLV_IER, 0);
> +		ier = intel_uncore_rmw(&dev_priv->uncore, VLV_IER, ~0, 0);

I'm not sure there's really benefit to the interrupt handlers like this
one...the original code is doing a read, followed by a write to clear
the register.  There's no (m)odify step there, so converting this to a
rmw makes it harder to read and understand what's going on.

If you really want to cut out the extra line of code, it would be better
to create a 'read and clear' wrapper function for use in the interrupt
handlers so it's at least more intuitive what's happening.

>  
>  		if (gt_iir)
>  			intel_uncore_write(&dev_priv->uncore, GTIIR, gt_iir);
> @@ -1775,8 +1769,7 @@ static irqreturn_t cherryview_irq_handler(int irq, void *arg)
>  		 * bits this time around.
>  		 */
>  		intel_uncore_write(&dev_priv->uncore, GEN8_MASTER_IRQ, 0);
> -		ier = intel_uncore_read(&dev_priv->uncore, VLV_IER);
> -		intel_uncore_write(&dev_priv->uncore, VLV_IER, 0);
> +		ier = intel_uncore_rmw(&dev_priv->uncore, VLV_IER, ~0, 0);
>  
>  		gen8_gt_irq_handler(to_gt(dev_priv), master_ctl);
>  
> @@ -1981,8 +1974,7 @@ static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
>  	if (ddi_hotplug_trigger) {
>  		u32 dig_hotplug_reg;
>  
> -		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, SHOTPLUG_CTL_DDI);
> -		intel_uncore_write(&dev_priv->uncore, SHOTPLUG_CTL_DDI, dig_hotplug_reg);
> +		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_DDI, 0, 0);

Similarly, a wrapper function for 'read and w1c' would make these a lot
less confusing.


Matt

>  
>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>  				   ddi_hotplug_trigger, dig_hotplug_reg,
> @@ -1993,8 +1985,7 @@ static void icp_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
>  	if (tc_hotplug_trigger) {
>  		u32 dig_hotplug_reg;
>  
> -		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, SHOTPLUG_CTL_TC);
> -		intel_uncore_write(&dev_priv->uncore, SHOTPLUG_CTL_TC, dig_hotplug_reg);
> +		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_TC, 0, 0);
>  
>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>  				   tc_hotplug_trigger, dig_hotplug_reg,
> @@ -2019,8 +2010,7 @@ static void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
>  	if (hotplug_trigger) {
>  		u32 dig_hotplug_reg;
>  
> -		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
> -		intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, dig_hotplug_reg);
> +		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG, 0, 0);
>  
>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>  				   hotplug_trigger, dig_hotplug_reg,
> @@ -2031,8 +2021,7 @@ static void spt_irq_handler(struct drm_i915_private *dev_priv, u32 pch_iir)
>  	if (hotplug2_trigger) {
>  		u32 dig_hotplug_reg;
>  
> -		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG2);
> -		intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG2, dig_hotplug_reg);
> +		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG2, 0, 0);
>  
>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>  				   hotplug2_trigger, dig_hotplug_reg,
> @@ -2052,8 +2041,7 @@ static void ilk_hpd_irq_handler(struct drm_i915_private *dev_priv,
>  {
>  	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
>  
> -	dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL);
> -	intel_uncore_write(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL, dig_hotplug_reg);
> +	dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL, 0, 0);
>  
>  	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>  			   hotplug_trigger, dig_hotplug_reg,
> @@ -2232,8 +2220,7 @@ static void bxt_hpd_irq_handler(struct drm_i915_private *dev_priv,
>  {
>  	u32 dig_hotplug_reg, pin_mask = 0, long_mask = 0;
>  
> -	dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
> -	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, dig_hotplug_reg);
> +	dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG, 0, 0);
>  
>  	intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>  			   hotplug_trigger, dig_hotplug_reg,
> @@ -2252,8 +2239,7 @@ static void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>  	if (trigger_tc) {
>  		u32 dig_hotplug_reg;
>  
> -		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL);
> -		intel_uncore_write(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL, dig_hotplug_reg);
> +		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL, 0, 0);
>  
>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>  				   trigger_tc, dig_hotplug_reg,
> @@ -2264,8 +2250,7 @@ static void gen11_hpd_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>  	if (trigger_tbt) {
>  		u32 dig_hotplug_reg;
>  
> -		dig_hotplug_reg = intel_uncore_read(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL);
> -		intel_uncore_write(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL, dig_hotplug_reg);
> +		dig_hotplug_reg = intel_uncore_rmw(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL, 0, 0);
>  
>  		intel_get_hpd_pins(dev_priv, &pin_mask, &long_mask,
>  				   trigger_tbt, dig_hotplug_reg,
> @@ -2355,8 +2340,7 @@ gen8_de_misc_irq_handler(struct drm_i915_private *dev_priv, u32 iir)
>  			else
>  				iir_reg = EDP_PSR_IIR;
>  
> -			psr_iir = intel_uncore_read(&dev_priv->uncore, iir_reg);
> -			intel_uncore_write(&dev_priv->uncore, iir_reg, psr_iir);
> +			psr_iir = intel_uncore_rmw(&dev_priv->uncore, iir_reg, 0, 0);
>  
>  			if (psr_iir)
>  				found = true;
> @@ -2426,8 +2410,7 @@ static void gen11_dsi_te_interrupt_handler(struct drm_i915_private *dev_priv,
>  
>  	/* clear TE in dsi IIR */
>  	port = (te_trigger & DSI1_TE) ? PORT_B : PORT_A;
> -	tmp = intel_uncore_read(&dev_priv->uncore, DSI_INTR_IDENT_REG(port));
> -	intel_uncore_write(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), tmp);
> +	tmp = intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), 0, 0);
>  }
>  
>  static u32 gen8_de_pipe_flip_done_mask(struct drm_i915_private *i915)
> @@ -2884,7 +2867,6 @@ static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
>  {
>  	struct drm_i915_private *dev_priv = to_i915(intel_crtc->base.dev);
>  	enum port port;
> -	u32 tmp;
>  
>  	if (!(intel_crtc->mode_flags &
>  	    (I915_MODE_FLAG_DSI_USE_TE1 | I915_MODE_FLAG_DSI_USE_TE0)))
> @@ -2896,16 +2878,10 @@ static bool gen11_dsi_configure_te(struct intel_crtc *intel_crtc,
>  	else
>  		port = PORT_A;
>  
> -	tmp =  intel_uncore_read(&dev_priv->uncore, DSI_INTR_MASK_REG(port));
> -	if (enable)
> -		tmp &= ~DSI_TE_EVENT;
> -	else
> -		tmp |= DSI_TE_EVENT;
> -
> -	intel_uncore_write(&dev_priv->uncore, DSI_INTR_MASK_REG(port), tmp);
> +	intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_MASK_REG(port), DSI_TE_EVENT,
> +			 enable ? 0 : DSI_TE_EVENT);
>  
> -	tmp = intel_uncore_read(&dev_priv->uncore, DSI_INTR_IDENT_REG(port));
> -	intel_uncore_write(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), tmp);
> +	intel_uncore_rmw(&dev_priv->uncore, DSI_INTR_IDENT_REG(port), 0, 0);
>  
>  	return true;
>  }
> @@ -3020,7 +2996,7 @@ static void vlv_display_irq_reset(struct drm_i915_private *dev_priv)
>  		intel_uncore_write(uncore, DPINVGTT, DPINVGTT_STATUS_MASK_VLV);
>  
>  	i915_hotplug_interrupt_update_locked(dev_priv, 0xffffffff, 0);
> -	intel_uncore_write(uncore, PORT_HOTPLUG_STAT, intel_uncore_read(uncore, PORT_HOTPLUG_STAT));
> +	intel_uncore_rmw(uncore, PORT_HOTPLUG_STAT, 0, 0);
>  
>  	i9xx_pipestat_irq_reset(dev_priv);
>  
> @@ -3290,23 +3266,20 @@ static u32 ibx_hotplug_enables(struct drm_i915_private *i915,
>  
>  static void ibx_hpd_detection_setup(struct drm_i915_private *dev_priv)
>  {
> -	u32 hotplug;
> -
>  	/*
>  	 * Enable digital hotplug on the PCH, and configure the DP short pulse
>  	 * duration to 2ms (which is the minimum in the Display Port spec).
>  	 * The pulse duration bits are reserved on LPT+.
>  	 */
> -	hotplug = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
> -	hotplug &= ~(PORTA_HOTPLUG_ENABLE |
> -		     PORTB_HOTPLUG_ENABLE |
> -		     PORTC_HOTPLUG_ENABLE |
> -		     PORTD_HOTPLUG_ENABLE |
> -		     PORTB_PULSE_DURATION_MASK |
> -		     PORTC_PULSE_DURATION_MASK |
> -		     PORTD_PULSE_DURATION_MASK);
> -	hotplug |= intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables);
> -	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, hotplug);
> +	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
> +			 PORTA_HOTPLUG_ENABLE |
> +			 PORTB_HOTPLUG_ENABLE |
> +			 PORTC_HOTPLUG_ENABLE |
> +			 PORTD_HOTPLUG_ENABLE |
> +			 PORTB_PULSE_DURATION_MASK |
> +			 PORTC_PULSE_DURATION_MASK |
> +			 PORTD_PULSE_DURATION_MASK,
> +			 intel_hpd_hotplug_enables(dev_priv, ibx_hotplug_enables));
>  }
>  
>  static void ibx_hpd_irq_setup(struct drm_i915_private *dev_priv)
> @@ -3353,30 +3326,24 @@ static u32 icp_tc_hotplug_enables(struct drm_i915_private *i915,
>  
>  static void icp_ddi_hpd_detection_setup(struct drm_i915_private *dev_priv)
>  {
> -	u32 hotplug;
> -
> -	hotplug = intel_uncore_read(&dev_priv->uncore, SHOTPLUG_CTL_DDI);
> -	hotplug &= ~(SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A) |
> -		     SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B) |
> -		     SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_C) |
> -		     SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_D));
> -	hotplug |= intel_hpd_hotplug_enables(dev_priv, icp_ddi_hotplug_enables);
> -	intel_uncore_write(&dev_priv->uncore, SHOTPLUG_CTL_DDI, hotplug);
> +	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_DDI,
> +			 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_A) |
> +			 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_B) |
> +			 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_C) |
> +			 SHOTPLUG_CTL_DDI_HPD_ENABLE(HPD_PORT_D),
> +			 intel_hpd_hotplug_enables(dev_priv, icp_ddi_hotplug_enables));
>  }
>  
>  static void icp_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
>  {
> -	u32 hotplug;
> -
> -	hotplug = intel_uncore_read(&dev_priv->uncore, SHOTPLUG_CTL_TC);
> -	hotplug &= ~(ICP_TC_HPD_ENABLE(HPD_PORT_TC1) |
> -		     ICP_TC_HPD_ENABLE(HPD_PORT_TC2) |
> -		     ICP_TC_HPD_ENABLE(HPD_PORT_TC3) |
> -		     ICP_TC_HPD_ENABLE(HPD_PORT_TC4) |
> -		     ICP_TC_HPD_ENABLE(HPD_PORT_TC5) |
> -		     ICP_TC_HPD_ENABLE(HPD_PORT_TC6));
> -	hotplug |= intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables);
> -	intel_uncore_write(&dev_priv->uncore, SHOTPLUG_CTL_TC, hotplug);
> +	intel_uncore_rmw(&dev_priv->uncore, SHOTPLUG_CTL_TC,
> +			 ICP_TC_HPD_ENABLE(HPD_PORT_TC1) |
> +			 ICP_TC_HPD_ENABLE(HPD_PORT_TC2) |
> +			 ICP_TC_HPD_ENABLE(HPD_PORT_TC3) |
> +			 ICP_TC_HPD_ENABLE(HPD_PORT_TC4) |
> +			 ICP_TC_HPD_ENABLE(HPD_PORT_TC5) |
> +			 ICP_TC_HPD_ENABLE(HPD_PORT_TC6),
> +			 intel_hpd_hotplug_enables(dev_priv, icp_tc_hotplug_enables));
>  }
>  
>  static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
> @@ -3428,46 +3395,37 @@ static void dg1_hpd_irq_setup(struct drm_i915_private *dev_priv)
>  
>  static void gen11_tc_hpd_detection_setup(struct drm_i915_private *dev_priv)
>  {
> -	u32 hotplug;
> -
> -	hotplug = intel_uncore_read(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL);
> -	hotplug &= ~(GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6));
> -	hotplug |= intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables);
> -	intel_uncore_write(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL, hotplug);
> +	intel_uncore_rmw(&dev_priv->uncore, GEN11_TC_HOTPLUG_CTL,
> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6),
> +			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
>  }
>  
>  static void gen11_tbt_hpd_detection_setup(struct drm_i915_private *dev_priv)
>  {
> -	u32 hotplug;
> -
> -	hotplug = intel_uncore_read(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL);
> -	hotplug &= ~(GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
> -		     GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6));
> -	hotplug |= intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables);
> -	intel_uncore_write(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL, hotplug);
> +	intel_uncore_rmw(&dev_priv->uncore, GEN11_TBT_HOTPLUG_CTL,
> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC1) |
> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC2) |
> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC3) |
> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC4) |
> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC5) |
> +			 GEN11_HOTPLUG_CTL_ENABLE(HPD_PORT_TC6),
> +			 intel_hpd_hotplug_enables(dev_priv, gen11_hotplug_enables));
>  }
>  
>  static void gen11_hpd_irq_setup(struct drm_i915_private *dev_priv)
>  {
>  	u32 hotplug_irqs, enabled_irqs;
> -	u32 val;
>  
>  	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.hpd);
>  	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.hpd);
>  
> -	val = intel_uncore_read(&dev_priv->uncore, GEN11_DE_HPD_IMR);
> -	val &= ~hotplug_irqs;
> -	val |= ~enabled_irqs & hotplug_irqs;
> -	intel_uncore_write(&dev_priv->uncore, GEN11_DE_HPD_IMR, val);
> +	intel_uncore_rmw(&dev_priv->uncore, GEN11_DE_HPD_IMR, hotplug_irqs,
> +			 ~enabled_irqs & hotplug_irqs);
>  	intel_uncore_posting_read(&dev_priv->uncore, GEN11_DE_HPD_IMR);
>  
>  	gen11_tc_hpd_detection_setup(dev_priv);
> @@ -3507,29 +3465,22 @@ static u32 spt_hotplug2_enables(struct drm_i915_private *i915,
>  
>  static void spt_hpd_detection_setup(struct drm_i915_private *dev_priv)
>  {
> -	u32 val, hotplug;
> -
>  	/* Display WA #1179 WaHardHangonHotPlug: cnp */
>  	if (HAS_PCH_CNP(dev_priv)) {
> -		val = intel_uncore_read(&dev_priv->uncore, SOUTH_CHICKEN1);
> -		val &= ~CHASSIS_CLK_REQ_DURATION_MASK;
> -		val |= CHASSIS_CLK_REQ_DURATION(0xf);
> -		intel_uncore_write(&dev_priv->uncore, SOUTH_CHICKEN1, val);
> +		intel_uncore_rmw(&dev_priv->uncore, SOUTH_CHICKEN1, CHASSIS_CLK_REQ_DURATION_MASK,
> +				 CHASSIS_CLK_REQ_DURATION(0xf));
>  	}
>  
>  	/* Enable digital hotplug on the PCH */
> -	hotplug = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
> -	hotplug &= ~(PORTA_HOTPLUG_ENABLE |
> -		     PORTB_HOTPLUG_ENABLE |
> -		     PORTC_HOTPLUG_ENABLE |
> -		     PORTD_HOTPLUG_ENABLE);
> -	hotplug |= intel_hpd_hotplug_enables(dev_priv, spt_hotplug_enables);
> -	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, hotplug);
> +	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
> +			 PORTA_HOTPLUG_ENABLE |
> +			 PORTB_HOTPLUG_ENABLE |
> +			 PORTC_HOTPLUG_ENABLE |
> +			 PORTD_HOTPLUG_ENABLE,
> +			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug_enables));
>  
> -	hotplug = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG2);
> -	hotplug &= ~PORTE_HOTPLUG_ENABLE;
> -	hotplug |= intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables);
> -	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG2, hotplug);
> +	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG2, PORTE_HOTPLUG_ENABLE,
> +			 intel_hpd_hotplug_enables(dev_priv, spt_hotplug2_enables));
>  }
>  
>  static void spt_hpd_irq_setup(struct drm_i915_private *dev_priv)
> @@ -3561,18 +3512,14 @@ static u32 ilk_hotplug_enables(struct drm_i915_private *i915,
>  
>  static void ilk_hpd_detection_setup(struct drm_i915_private *dev_priv)
>  {
> -	u32 hotplug;
> -
>  	/*
>  	 * Enable digital hotplug on the CPU, and configure the DP short pulse
>  	 * duration to 2ms (which is the minimum in the Display Port spec)
>  	 * The pulse duration bits are reserved on HSW+.
>  	 */
> -	hotplug = intel_uncore_read(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL);
> -	hotplug &= ~(DIGITAL_PORTA_HOTPLUG_ENABLE |
> -		     DIGITAL_PORTA_PULSE_DURATION_MASK);
> -	hotplug |= intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables);
> -	intel_uncore_write(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL, hotplug);
> +	intel_uncore_rmw(&dev_priv->uncore, DIGITAL_PORT_HOTPLUG_CNTRL,
> +			 DIGITAL_PORTA_HOTPLUG_ENABLE | DIGITAL_PORTA_PULSE_DURATION_MASK,
> +			 intel_hpd_hotplug_enables(dev_priv, ilk_hotplug_enables));
>  }
>  
>  static void ilk_hpd_irq_setup(struct drm_i915_private *dev_priv)
> @@ -3620,17 +3567,12 @@ static u32 bxt_hotplug_enables(struct drm_i915_private *i915,
>  
>  static void bxt_hpd_detection_setup(struct drm_i915_private *dev_priv)
>  {
> -	u32 hotplug;
> -
> -	hotplug = intel_uncore_read(&dev_priv->uncore, PCH_PORT_HOTPLUG);
> -	hotplug &= ~(PORTA_HOTPLUG_ENABLE |
> -		     PORTB_HOTPLUG_ENABLE |
> -		     PORTC_HOTPLUG_ENABLE |
> -		     BXT_DDIA_HPD_INVERT |
> -		     BXT_DDIB_HPD_INVERT |
> -		     BXT_DDIC_HPD_INVERT);
> -	hotplug |= intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables);
> -	intel_uncore_write(&dev_priv->uncore, PCH_PORT_HOTPLUG, hotplug);
> +	intel_uncore_rmw(&dev_priv->uncore, PCH_PORT_HOTPLUG,
> +			 PORTA_HOTPLUG_ENABLE |
> +			 PORTB_HOTPLUG_ENABLE |
> +			 PORTC_HOTPLUG_ENABLE |
> +			 BXT_DDI_HPD_INVERT_MASK,
> +			 intel_hpd_hotplug_enables(dev_priv, bxt_hotplug_enables));
>  }
>  
>  static void bxt_hpd_irq_setup(struct drm_i915_private *dev_priv)
> @@ -4010,9 +3952,7 @@ static void i9xx_error_irq_ack(struct drm_i915_private *dev_priv,
>  {
>  	u32 emr;
>  
> -	*eir = intel_uncore_read(&dev_priv->uncore, EIR);
> -
> -	intel_uncore_write(&dev_priv->uncore, EIR, *eir);
> +	*eir = intel_uncore_rmw(&dev_priv->uncore, EIR, 0, 0);
>  
>  	*eir_stuck = intel_uncore_read(&dev_priv->uncore, EIR);
>  	if (*eir_stuck == 0)
> @@ -4028,8 +3968,7 @@ static void i9xx_error_irq_ack(struct drm_i915_private *dev_priv,
>  	 * (or by a GPU reset) so we mask any bit that
>  	 * remains set.
>  	 */
> -	emr = intel_uncore_read(&dev_priv->uncore, EMR);
> -	intel_uncore_write(&dev_priv->uncore, EMR, 0xffffffff);
> +	emr = intel_uncore_rmw(&dev_priv->uncore, EMR, ~0, 0xffffffff);
>  	intel_uncore_write(&dev_priv->uncore, EMR, emr | *eir_stuck);
>  }
>  
> @@ -4096,7 +4035,7 @@ static void i915_irq_reset(struct drm_i915_private *dev_priv)
>  
>  	if (I915_HAS_HOTPLUG(dev_priv)) {
>  		i915_hotplug_interrupt_update(dev_priv, 0xffffffff, 0);
> -		intel_uncore_write(&dev_priv->uncore, PORT_HOTPLUG_STAT, intel_uncore_read(&dev_priv->uncore, PORT_HOTPLUG_STAT));
> +		intel_uncore_rmw(&dev_priv->uncore, PORT_HOTPLUG_STAT, 0, 0);
>  	}
>  
>  	i9xx_pipestat_irq_reset(dev_priv);
> @@ -4206,7 +4145,7 @@ static void i965_irq_reset(struct drm_i915_private *dev_priv)
>  	struct intel_uncore *uncore = &dev_priv->uncore;
>  
>  	i915_hotplug_interrupt_update(dev_priv, 0xffffffff, 0);
> -	intel_uncore_write(uncore, PORT_HOTPLUG_STAT, intel_uncore_read(uncore, PORT_HOTPLUG_STAT));
> +	intel_uncore_rmw(uncore, PORT_HOTPLUG_STAT, 0, 0);
>  
>  	i9xx_pipestat_irq_reset(dev_priv);
>  
> diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
> index 2595ec5aeb77f6..9f6c58ad8bdb06 100644
> --- a/drivers/gpu/drm/i915/intel_pm.c
> +++ b/drivers/gpu/drm/i915/intel_pm.c
> @@ -895,19 +895,14 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
>  		wm = intel_calculate_wm(pixel_rate, &pnv_cursor_wm,
>  					pnv_display_wm.fifo_size,
>  					4, latency->cursor_sr);
> -		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3);
> -		reg &= ~DSPFW_CURSOR_SR_MASK;
> -		reg |= FW_WM(wm, CURSOR_SR);
> -		intel_uncore_write(&dev_priv->uncore, DSPFW3, reg);
> +		intel_uncore_rmw(&dev_priv->uncore, DSPFW3, DSPFW_CURSOR_SR_MASK,
> +				 FW_WM(wm, CURSOR_SR));
>  
>  		/* Display HPLL off SR */
>  		wm = intel_calculate_wm(pixel_rate, &pnv_display_hplloff_wm,
>  					pnv_display_hplloff_wm.fifo_size,
>  					cpp, latency->display_hpll_disable);
> -		reg = intel_uncore_read(&dev_priv->uncore, DSPFW3);
> -		reg &= ~DSPFW_HPLL_SR_MASK;
> -		reg |= FW_WM(wm, HPLL_SR);
> -		intel_uncore_write(&dev_priv->uncore, DSPFW3, reg);
> +		intel_uncore_rmw(&dev_priv->uncore, DSPFW3, DSPFW_HPLL_SR_MASK, FW_WM(wm, HPLL_SR));
>  
>  		/* cursor HPLL off SR */
>  		wm = intel_calculate_wm(pixel_rate, &pnv_cursor_hplloff_wm,
> @@ -3480,7 +3475,6 @@ static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
>  {
>  	struct ilk_wm_values *previous = &dev_priv->display.wm.hw;
>  	unsigned int dirty;
> -	u32 val;
>  
>  	dirty = ilk_compute_wm_dirty(dev_priv, previous, results);
>  	if (!dirty)
> @@ -3496,32 +3490,20 @@ static void ilk_write_wm_values(struct drm_i915_private *dev_priv,
>  		intel_uncore_write(&dev_priv->uncore, WM0_PIPE_ILK(PIPE_C), results->wm_pipe[2]);
>  
>  	if (dirty & WM_DIRTY_DDB) {
> -		if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv)) {
> -			val = intel_uncore_read(&dev_priv->uncore, WM_MISC);
> -			if (results->partitioning == INTEL_DDB_PART_1_2)
> -				val &= ~WM_MISC_DATA_PARTITION_5_6;
> -			else
> -				val |= WM_MISC_DATA_PARTITION_5_6;
> -			intel_uncore_write(&dev_priv->uncore, WM_MISC, val);
> -		} else {
> -			val = intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL2);
> -			if (results->partitioning == INTEL_DDB_PART_1_2)
> -				val &= ~DISP_DATA_PARTITION_5_6;
> -			else
> -				val |= DISP_DATA_PARTITION_5_6;
> -			intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL2, val);
> -		}
> -	}
> -
> -	if (dirty & WM_DIRTY_FBC) {
> -		val = intel_uncore_read(&dev_priv->uncore, DISP_ARB_CTL);
> -		if (results->enable_fbc_wm)
> -			val &= ~DISP_FBC_WM_DIS;
> +		if (IS_HASWELL(dev_priv) || IS_BROADWELL(dev_priv))
> +			intel_uncore_rmw(&dev_priv->uncore, WM_MISC, WM_MISC_DATA_PARTITION_5_6,
> +					 results->partitioning == INTEL_DDB_PART_1_2 ? 0 :
> +					 WM_MISC_DATA_PARTITION_5_6);
>  		else
> -			val |= DISP_FBC_WM_DIS;
> -		intel_uncore_write(&dev_priv->uncore, DISP_ARB_CTL, val);
> +			intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL2, DISP_DATA_PARTITION_5_6,
> +					 results->partitioning == INTEL_DDB_PART_1_2 ? 0 :
> +					 DISP_DATA_PARTITION_5_6);
>  	}
>  
> +	if (dirty & WM_DIRTY_FBC)
> +		intel_uncore_rmw(&dev_priv->uncore, DISP_ARB_CTL, DISP_FBC_WM_DIS,
> +				 results->enable_fbc_wm ? 0 : DISP_FBC_WM_DIS);
> +
>  	if (dirty & WM_DIRTY_LP(1) &&
>  	    previous->wm_lp_spr[0] != results->wm_lp_spr[0])
>  		intel_uncore_write(&dev_priv->uncore, WM1S_LP_ILK, results->wm_lp_spr[0]);
> @@ -4131,7 +4113,7 @@ static void g4x_disable_trickle_feed(struct drm_i915_private *dev_priv)
>  			   intel_uncore_read(&dev_priv->uncore, DSPCNTR(pipe)) |
>  			   DISP_TRICKLE_FEED_DISABLE);
>  
> -		intel_uncore_write(&dev_priv->uncore, DSPSURF(pipe), intel_uncore_read(&dev_priv->uncore, DSPSURF(pipe)));
> +		intel_uncore_rmw(&dev_priv->uncore, DSPSURF(pipe), 0, 0);
>  		intel_uncore_posting_read(&dev_priv->uncore, DSPSURF(pipe));
>  	}
>  }
> @@ -4339,8 +4321,8 @@ static void gen8_set_l3sqc_credits(struct drm_i915_private *dev_priv,
>  	u32 val;
>  
>  	/* WaTempDisableDOPClkGating:bdw */
> -	misccpctl = intel_uncore_read(&dev_priv->uncore, GEN7_MISCCPCTL);
> -	intel_uncore_write(&dev_priv->uncore, GEN7_MISCCPCTL, misccpctl & ~GEN7_DOP_CLOCK_GATE_ENABLE);
> +	misccpctl = intel_uncore_rmw(&dev_priv->uncore, GEN7_MISCCPCTL, ~GEN7_DOP_CLOCK_GATE_ENABLE,
> +				     0);
>  
>  	val = intel_uncore_read(&dev_priv->uncore, GEN8_L3SQCREG1);
>  	val &= ~L3_PRIO_CREDITS_MASK;
> @@ -4619,8 +4601,6 @@ static void hsw_init_clock_gating(struct drm_i915_private *dev_priv)
>  
>  static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
>  {
> -	u32 snpcr;
> -
>  	intel_uncore_write(&dev_priv->uncore, ILK_DSPCLK_GATE_D, ILK_VRHUNIT_CLOCK_GATE_DISABLE);
>  
>  	/* WaFbcAsynchFlipDisableFbcQueue:ivb */
> @@ -4658,10 +4638,8 @@ static void ivb_init_clock_gating(struct drm_i915_private *dev_priv)
>  
>  	g4x_disable_trickle_feed(dev_priv);
>  
> -	snpcr = intel_uncore_read(&dev_priv->uncore, GEN6_MBCUNIT_SNPCR);
> -	snpcr &= ~GEN6_MBC_SNPCR_MASK;
> -	snpcr |= GEN6_MBC_SNPCR_MED;
> -	intel_uncore_write(&dev_priv->uncore, GEN6_MBCUNIT_SNPCR, snpcr);
> +	intel_uncore_rmw(&dev_priv->uncore, GEN6_MBCUNIT_SNPCR, GEN6_MBC_SNPCR_MASK,
> +			 GEN6_MBC_SNPCR_MED);
>  
>  	if (!HAS_PCH_NOP(dev_priv))
>  		cpt_init_clock_gating(dev_priv);
> diff --git a/drivers/gpu/drm/i915/vlv_suspend.c b/drivers/gpu/drm/i915/vlv_suspend.c
> index 664fde244f59b0..02e63ed77f608d 100644
> --- a/drivers/gpu/drm/i915/vlv_suspend.c
> +++ b/drivers/gpu/drm/i915/vlv_suspend.c
> @@ -194,7 +194,6 @@ static void vlv_restore_gunit_s0ix_state(struct drm_i915_private *i915)
>  {
>  	struct vlv_s0ix_state *s = i915->vlv_s0ix_state;
>  	struct intel_uncore *uncore = &i915->uncore;
> -	u32 val;
>  	int i;
>  
>  	if (!s)
> @@ -262,15 +261,11 @@ static void vlv_restore_gunit_s0ix_state(struct drm_i915_private *i915)
>  	 * be restored, as they are used to control the s0ix suspend/resume
>  	 * sequence by the caller.
>  	 */
> -	val = intel_uncore_read(uncore, VLV_GTLC_WAKE_CTRL);
> -	val &= VLV_GTLC_ALLOWWAKEREQ;
> -	val |= s->gtlc_wake_ctrl & ~VLV_GTLC_ALLOWWAKEREQ;
> -	intel_uncore_write(uncore, VLV_GTLC_WAKE_CTRL, val);
> +	intel_uncore_rmw(uncore, VLV_GTLC_WAKE_CTRL, ~VLV_GTLC_ALLOWWAKEREQ,
> +			 s->gtlc_wake_ctrl & ~VLV_GTLC_ALLOWWAKEREQ);
>  
> -	val = intel_uncore_read(uncore, VLV_GTLC_SURVIVABILITY_REG);
> -	val &= VLV_GFX_CLK_FORCE_ON_BIT;
> -	val |= s->gtlc_survive & ~VLV_GFX_CLK_FORCE_ON_BIT;
> -	intel_uncore_write(uncore, VLV_GTLC_SURVIVABILITY_REG, val);
> +	intel_uncore_rmw(uncore, VLV_GTLC_SURVIVABILITY_REG, ~VLV_GFX_CLK_FORCE_ON_BIT,
> +			 s->gtlc_survive & ~VLV_GFX_CLK_FORCE_ON_BIT);
>  
>  	intel_uncore_write(uncore, VLV_PMWGICZ, s->pmwgicz);
>  
> @@ -308,14 +303,10 @@ static int vlv_wait_for_pw_status(struct drm_i915_private *i915,
>  static int vlv_force_gfx_clock(struct drm_i915_private *i915, bool force_on)
>  {
>  	struct intel_uncore *uncore = &i915->uncore;
> -	u32 val;
>  	int err;
>  
> -	val = intel_uncore_read(uncore, VLV_GTLC_SURVIVABILITY_REG);
> -	val &= ~VLV_GFX_CLK_FORCE_ON_BIT;
> -	if (force_on)
> -		val |= VLV_GFX_CLK_FORCE_ON_BIT;
> -	intel_uncore_write(uncore, VLV_GTLC_SURVIVABILITY_REG, val);
> +	intel_uncore_rmw(uncore, VLV_GTLC_SURVIVABILITY_REG, VLV_GFX_CLK_FORCE_ON_BIT,
> +			 force_on ? VLV_GFX_CLK_FORCE_ON_BIT : 0);
>  
>  	if (!force_on)
>  		return 0;
> @@ -340,11 +331,8 @@ static int vlv_allow_gt_wake(struct drm_i915_private *i915, bool allow)
>  	u32 val;
>  	int err;
>  
> -	val = intel_uncore_read(uncore, VLV_GTLC_WAKE_CTRL);
> -	val &= ~VLV_GTLC_ALLOWWAKEREQ;
> -	if (allow)
> -		val |= VLV_GTLC_ALLOWWAKEREQ;
> -	intel_uncore_write(uncore, VLV_GTLC_WAKE_CTRL, val);
> +	intel_uncore_rmw(uncore, VLV_GTLC_WAKE_CTRL, VLV_GTLC_ALLOWWAKEREQ,
> +			 allow ? VLV_GTLC_ALLOWWAKEREQ : 0);
>  	intel_uncore_posting_read(uncore, VLV_GTLC_WAKE_CTRL);
>  
>  	mask = VLV_GTLC_ALLOWWAKEACK;
> -- 
> 2.34.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
