Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 218718417C9
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jan 2024 01:47:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D67610EB03;
	Tue, 30 Jan 2024 00:47:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A753210EA87;
 Tue, 30 Jan 2024 00:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706575626; x=1738111626;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=N5PIA+65YQysVL3r7Yjt5IFGqAAfaB2rk3oXv0sHUYQ=;
 b=gDPfzhAf65aasuVB4uexXGHlzLoL+bvIabXRC2/u5M14c8h7xQYZFHhw
 csRJZBjT4T1wIUwyWMA1H8ntUhs/zZj0GbuWQM8iZVSTw0V5w5Kzm/v2U
 +2Qvo7BHImkcc1cl7ONcTYFeSRs9RL87O4C5BMy9hdZUbpGmcIOG9ZysP
 XpnoF1K3vKyN9FxTZFzbkupGW3n2Lahh+S/fv9wdQsqbTe/hFXzRgUKyi
 2Y5AnzCkOJIpFN3VwkbTZLYh85pzI64t4WgxDPoWD4GUPJPV7gnEerWeh
 Pg5hFnwPHhb3IqF1B/6fGbDe2QdNYQ0QeNZBGxAGBWXP9mETHOams1M4S A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="16659640"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="16659640"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 16:39:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="931269204"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="931269204"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2024 16:39:47 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 16:39:46 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Jan 2024 16:39:46 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Jan 2024 16:39:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NF0r4KxyVT6e/WY25cwA98Eq6ILE3basF5tATmUtjHkbtwjHJX2Ig8MLeBZzkvR1+62+PX7S02swcTe3vXQ3577ADd9zqO3DIBrDpZF+aFTtSEZxFi/LE3ObczscCvnPL2M9DlxgLKKI3jyDxe049dBf207nT165BWCa7dmYoKb2htEs9mWpPBuCO5vcg/PVnC8DJJmIO1x6o3urMlAwhGpdJMkmxzI5dkW8YGpe5El3eVNrexiTABoDEnoWCiLDNKEINQ00pWhB9UOm5ihin6eyFNXC67n3znTD17IVdn95uF++sLjDzQdUP2qdDZyGtXLRK8aJr5HB+fm/gsb79Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Zcgc+fhLv5vmrMG9vuGm+Pz9GMmjC6dO+xYbWMlFvQs=;
 b=PZCx8AmVetps7I+h0m8BEBWLgC4Uq+mR3B+V/VD5vbwE+cR69B6tYIdbYmdqvN5rpEKhtVkelusGIhPF4aO2cm2LdG6qWubcscVtSUOTUym0Jyy0mabo+D9yMWT1EmANfqFmjH4Ci08EP1gOanLy8R/ihWLehQoYWfCT8kRt/K8HZ5pVDfbfNcvM4kmMqumkhuEBzkvlLkLPNx/cAqi+5fOgBoxms0rbw213plwtXRL3X51XmJm01nbjJFA1YPpinO55NYd78A3LUttJ3ukG2P5HcVtf5ZO/D/LTF4kdnuHGXqruLD0fYsmtwS2ZEOjbdKjtz412NZhNCFJX2hmD3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS0PR11MB8182.namprd11.prod.outlook.com (2603:10b6:8:163::17)
 by PH0PR11MB4917.namprd11.prod.outlook.com (2603:10b6:510:32::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.34; Tue, 30 Jan
 2024 00:39:43 +0000
Received: from DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3]) by DS0PR11MB8182.namprd11.prod.outlook.com
 ([fe80::2157:7433:d32c:a8e3%4]) with mapi id 15.20.7228.029; Tue, 30 Jan 2024
 00:39:43 +0000
Date: Mon, 29 Jan 2024 16:39:41 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Subject: Re: [PATCH 1/2] drm/i915/xe2lpd: Move D2D enable/disable
Message-ID: <20240130003941.GC1201779@mdroper-desk1.amr.corp.intel.com>
References: <20240126224638.4132016-1-lucas.demarchi@intel.com>
 <20240126224638.4132016-2-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240126224638.4132016-2-lucas.demarchi@intel.com>
X-ClientProxiedBy: BY3PR04CA0021.namprd04.prod.outlook.com
 (2603:10b6:a03:217::26) To DS0PR11MB8182.namprd11.prod.outlook.com
 (2603:10b6:8:163::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS0PR11MB8182:EE_|PH0PR11MB4917:EE_
X-MS-Office365-Filtering-Correlation-Id: 824c3e68-36ee-4e83-aaa5-08dc212bf3bd
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: dJS5/VhwMxa3+JjtKz4iYK5yY56Z4mGhFo0S3C9AVA51b/9wtWM2vuYFUD8Hn4lVT4zB0CQ5dOI12paE8TVXDHcFQOa47xU8xFghmQmlD8G4FyS1TEVuhwcaKVIm4CkiP0cd81UrR23nX56taNcBmAEsu6QDNm06NYiC/QdezsQAjEtqcC/wz225EY9HyV+CR0qOe56fqhGGjrEV5tUsTGHOShxeB2eAAtSVVyPkXfNxNzibk+DccL4TxueQDw9cV77dwFbBl/jk/S5lvQN4Wi8R0Y/tQWyWy17vOofHm0KGTLsnCT9CQCX93Ug/jKuZ33Ea26T73XFi5eB1l0y/U2X/ZjMd8ApapQ3mAew2fzCEiRmMGYd1SKRXyCwvhS9FkEcTM9piE/R9oNabyhcYPR1ygyZS3IYlDyyU+OR7s6GfPFw6ePlWF0eiOtOnujPJ0IyiXmoFcIUhmxWwbIk/76/oWIrZJpX+7QmQHADGV8lsKBoupAxFldy8NH902iB3hSQ87cyF7AX5l717cB1CGAajL/KC3uysBY+I7W1bhmrJ7i8dY7R1YAf28lmCVf4y
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8182.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(396003)(39860400002)(346002)(136003)(376002)(366004)(230922051799003)(64100799003)(451199024)(1800799012)(186009)(41300700001)(2906002)(5660300002)(33656002)(66476007)(6506007)(66556008)(66946007)(6486002)(86362001)(316002)(6512007)(83380400001)(38100700002)(1076003)(8936002)(26005)(478600001)(6636002)(82960400001)(4326008)(8676002)(450100002)(6862004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?jry4WLAt/Mi2wDHa4QqhgDZ0o32y8WJXnquqzUtcwAH1stxu2Ax/LhG/HpTh?=
 =?us-ascii?Q?TrG41zNtDIkpXO4WOOQ6EiIRSrpx9uvwNdME0UCR9b09fGID1ZTj5sxoURX0?=
 =?us-ascii?Q?UXgGu8n3fxIXtAzAfjMstIu/t/dxQguqn0VbyOVjke5BQM9J2ktRqSAbgIMz?=
 =?us-ascii?Q?Idc2oJQhc6juUrHdDnFbuGg9stqGA3iyjWRayjNKLm+/R6LnDeNXP0PeobU4?=
 =?us-ascii?Q?j/Q12fQglX1Z7rcXWtxKPAfQsS/Dl7XB/6Zstuyng7GkogT7YtQjtdDWu+zc?=
 =?us-ascii?Q?ig5k07wFMz4+TAsUa/Icc3k12pT3Xp2VuPUTgElEEzBVOAWGPTBNmMVIRCuT?=
 =?us-ascii?Q?6bpcFxzP7Us2d391sQNEtqMfOofbBt56iOv2COU3pMm2LSASqPBmOsoUM5Ie?=
 =?us-ascii?Q?U1i20vq+YQkkGtxqejHTDTiPwgwi+Z+lV6XI/uRv1tk0kPBp268hsZsJ6Jyw?=
 =?us-ascii?Q?o5h+w80MZkWnNs3h+pRc5QbKHgyNAa9rveeKADMZfMHvwJuEh0scDRd+QrZq?=
 =?us-ascii?Q?F7PGh90bEbGWwgjF+tQVhdIVf3OA3Ez8twHsF1ugKOs1nkbD7bRJIhRs+CXy?=
 =?us-ascii?Q?2g8o6Kgp0xQtmO+rsCWl53BvyxqlCkTFQnLXvpsN+7VtFp52YCHepZo+cLQm?=
 =?us-ascii?Q?i/OfbnHDXX/QfjgkzpzymSFQ8Dkw5DLa+rsfInGp/BxPnDG/+bQoX1iZl7Gg?=
 =?us-ascii?Q?Uqpeao1TNObuYHtoNILYH0xQgzeO/TFRpMQo8Mf2M52eHtPlI6Tevak20oKx?=
 =?us-ascii?Q?mV3r7JNif7fgFcnT2DsNU8L5a8i5ZI+CdhuOJ7gYeqcyG6Pk6K78y7tkdgb8?=
 =?us-ascii?Q?9UA3IG9hKLdL9kODM8ogKnHtfz1uCk6hH4ALi6gZOEA9fUjEVzQEqWe4sPon?=
 =?us-ascii?Q?NClerl49Yon4zFeJQl3ejeS+EQW4WtbGJ/PLTL+vvqx078ge0+8ESHp40CrW?=
 =?us-ascii?Q?Y5tjNa3dWf3OVwuBnox4LJC66o+FLkmAfnxwtTQW2wZBE4g7J2E01sf58bNc?=
 =?us-ascii?Q?4XaYrEkwyB4KZaFPgTMkJbGDM4+qio67pbyEkghyNjHvfxGi6q53h5bNU/Ns?=
 =?us-ascii?Q?nJczPnWSe32ymCdFUJIgyiAjg+gHUz/ad0Hc2EbMa2uhUe9SWr30QR4lc7PG?=
 =?us-ascii?Q?YgG84c+IW900Ow2dhzsKFA1v/rF0pL5mfr4cQY6VbshuIg62YAH2blcbn24Z?=
 =?us-ascii?Q?xXKGGUYCGKykyz/7GYKmljQvXH/zSugi0SSyrUPI/oxFMl0JOROCvYJ0HTQz?=
 =?us-ascii?Q?bsmK2XFpbPNxWDeUFYKtFemPESxrAtnHU5LojkjsWac13AvsKM+916pygr0m?=
 =?us-ascii?Q?djn/fv1ouhmIveRDCOSWTRXpf9b8+NA7SAXRGgqGJJ56CIq9CrU4hD2P+R17?=
 =?us-ascii?Q?OJ+/qd06qHLvEskMP2bYAY+gtLmZLxgDgcwB/Gi+bwvZBjWJuESF5Q6gFnvb?=
 =?us-ascii?Q?rrbAaA3hYrD7LkAvNDEMM+uFL3EcBacGRi/OVuuEyQJfm2CvMrFjMiW9rSsV?=
 =?us-ascii?Q?vF6uhjmb9yKkgBamXk807Jz8lQd4GKZntrXcIqA/KH/VuUfiHC9gXTaGNp5a?=
 =?us-ascii?Q?14FvPuIkMyyV1QE5fNZCb6sTG0TLGbpsgMxDhBMgIEzwg7F6TuzcGmFkNbpZ?=
 =?us-ascii?Q?Fw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 824c3e68-36ee-4e83-aaa5-08dc212bf3bd
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8182.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jan 2024 00:39:43.7372 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: BMN+Ii5Dotbi0qrXuCMSKBSn4l/R8e0eBzr97j4808UGB/PKOQNQ8Qv2expsxOkUyBbZPAbsRJZ5gvFF8FQbZMwRTtTQ5fcbgmII5CwPlAo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4917
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
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Jan 26, 2024 at 02:46:36PM -0800, Lucas De Marchi wrote:
> Bits to enable/disable and check state for D2D moved from
> XELPDP_PORT_BUF_CTL1 to DDI_BUF_CTL (now named DDI_CTL_DE in the spec).
> Make the functions mtl_ddi_disable_d2d() and mtl_ddi_enable_d2d generic
> to work with multiple reg location and bitfield layout.
> 
> v2: Set/Clear XE2LPD_DDI_BUF_D2D_LINK_ENABLE in saved_port_bits when
>     enabling/disabling D2D so DDI_BUF_CTL is correctly programmed in
>     other places without overriding these bits (Clint)
> v3: Leave saved_port_bits alone as those bits are not meant to be
>     modified outside of the port initialization. Rather propagate the
>     additional bit in DDI_BUF_CTL to be set when that register is
>     written again after D2D is enabled.
> 
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 44 ++++++++++++++++++------
>  drivers/gpu/drm/i915/i915_reg.h          |  2 ++
>  2 files changed, 36 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 12a29363e5df..188c537dbb5d 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2429,13 +2429,22 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	enum port port = encoder->port;
> +	i915_reg_t reg;
> +	u32 set_bits, wait_bits;
>  
> -	intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port), 0,
> -		     XELPDP_PORT_BUF_D2D_LINK_ENABLE);
> +	if (DISPLAY_VER(dev_priv) >= 20) {
> +		reg = DDI_BUF_CTL(port);
> +		set_bits = XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
> +		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
> +	} else {
> +		reg = XELPDP_PORT_BUF_CTL1(port);
> +		set_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
> +		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
> +	}
>  
> -	if (wait_for_us((intel_de_read(dev_priv, XELPDP_PORT_BUF_CTL1(port)) &
> -			 XELPDP_PORT_BUF_D2D_LINK_STATE), 100)) {
> -		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link enable for PORT_BUF_CTL %c\n",
> +	intel_de_rmw(dev_priv, reg, 0, set_bits);
> +	if (wait_for_us(intel_de_read(dev_priv, reg) & wait_bits, 100)) {
> +		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link enable for DDI/PORT_BUF_CTL %c\n",
>  			port_name(port));
>  	}
>  }
> @@ -2898,13 +2907,22 @@ mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
>  	enum port port = encoder->port;
> +	i915_reg_t reg;
> +	u32 clr_bits, wait_bits;
>  
> -	intel_de_rmw(dev_priv, XELPDP_PORT_BUF_CTL1(port),
> -		     XELPDP_PORT_BUF_D2D_LINK_ENABLE, 0);
> +	if (DISPLAY_VER(dev_priv) >= 20) {
> +		reg = DDI_BUF_CTL(port);
> +		clr_bits = XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
> +		wait_bits = XE2LPD_DDI_BUF_D2D_LINK_STATE;
> +	} else {
> +		reg = XELPDP_PORT_BUF_CTL1(port);
> +		clr_bits = XELPDP_PORT_BUF_D2D_LINK_ENABLE;
> +		wait_bits = XELPDP_PORT_BUF_D2D_LINK_STATE;
> +	}
>  
> -	if (wait_for_us(!(intel_de_read(dev_priv, XELPDP_PORT_BUF_CTL1(port)) &
> -			  XELPDP_PORT_BUF_D2D_LINK_STATE), 100))
> -		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link disable for PORT_BUF_CTL %c\n",
> +	intel_de_rmw(dev_priv, reg, clr_bits, 0);
> +	if (wait_for_us(!(intel_de_read(dev_priv, reg) & wait_bits), 100))
> +		drm_err(&dev_priv->drm, "Timeout waiting for D2D Link disable for DDI/PORT_BUF_CTL %c\n",
>  			port_name(port));
>  }
>  
> @@ -3323,6 +3341,9 @@ static void intel_enable_ddi_hdmi(struct intel_atomic_state *state,
>  			     XELPDP_PORT_WIDTH_MASK | XELPDP_PORT_REVERSAL, port_buf);
>  
>  		buf_ctl |= DDI_PORT_WIDTH(lane_count);
> +
> +		if (DISPLAY_VER(dev_priv) >= 20)
> +		       buf_ctl |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
>  	} else if (IS_ALDERLAKE_P(dev_priv) && intel_phy_is_tc(dev_priv, phy)) {
>  		drm_WARN_ON(&dev_priv->drm, !intel_tc_port_in_legacy_mode(dig_port));
>  		buf_ctl |= DDI_BUF_CTL_TC_PHY_OWNERSHIP;
> @@ -3543,6 +3564,9 @@ static void mtl_ddi_prepare_link_retrain(struct intel_dp *intel_dp,
>  
>  	/* 6.i Configure and enable DDI_CTL_DE to start sending valid data to port slice */
>  	intel_dp->DP |= DDI_BUF_CTL_ENABLE;
> +	if (DISPLAY_VER(dev_priv) >= 20)
> +		intel_dp->DP |= XE2LPD_DDI_BUF_D2D_LINK_ENABLE;
> +
>  	intel_de_write(dev_priv, DDI_BUF_CTL(port), intel_dp->DP);
>  	intel_de_posting_read(dev_priv, DDI_BUF_CTL(port));
>  
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 27dc903f0553..f034b7b0f1da 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5684,6 +5684,8 @@ enum skl_power_gate {
>  /* Known as DDI_CTL_DE in MTL+ */
>  #define DDI_BUF_CTL(port) _MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B)
>  #define  DDI_BUF_CTL_ENABLE			(1 << 31)
> +#define  XE2LPD_DDI_BUF_D2D_LINK_ENABLE		REG_BIT(29)
> +#define  XE2LPD_DDI_BUF_D2D_LINK_STATE		REG_BIT(28)
>  #define  DDI_BUF_TRANS_SELECT(n)	((n) << 24)
>  #define  DDI_BUF_EMP_MASK			(0xf << 24)
>  #define  DDI_BUF_PHY_LINK_RATE(r)		((r) << 20)
> -- 
> 2.43.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
