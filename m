Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9C00786047
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Aug 2023 21:02:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8024210E0D9;
	Wed, 23 Aug 2023 19:02:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8EF9C10E47E;
 Wed, 23 Aug 2023 19:02:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692817321; x=1724353321;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=VIxylJuFXGuunqv/N+/Wzv57B8oFaKH9kOCOJbRj5JY=;
 b=R254WQHkvKFu3nlYIHlimctm3/YajFZlcDNviUG5deP3fCsVF8BD2DIu
 vC5USSjMf4vV6qJzUd9aXtvWOdeu4FdF/5yqZuSA1pQJSIXlFh73gd1eE
 ypVRsbj3yhySom0bh/8C62kxpbJSJQxysJKdTy3FXNIDSMcdxvTX8ceAH
 HNnL8MkgS9i9PcWWfp+vHfk8YRA/cxPQEjscOa+X7caz2iOMLlNVYRPAN
 vmgiMZk2RWPAyugJf7wmMDs6uISxrJ7Y0mEkqaFIURCKJoqYMyfQJo7ae
 eJAmV8HS6PfGFoo37iwa2eJtS3PUHxjYMB+m6gHWAFaa4I6qsd3GobhTx w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="440603547"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="440603547"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2023 12:01:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="766241139"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="766241139"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 23 Aug 2023 12:01:56 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 23 Aug 2023 12:01:52 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 23 Aug 2023 12:01:52 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 23 Aug 2023 12:01:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YJxMV4FZbaz7ihnNZyhmWr9PGWPWubCf0WvIA+IVcLRcUwwXfj0SziD0jVnVLd+3pxx+5i8Mai7ALpPotq8T10hUeTVP78/L3BuLgbxplnxk4et2s+ijG7pH4dz0fuaFwtOz06E5ds4zJeOTZm9T03eqa9i3e3vY8iTr+6iOHXENq8UaY9JOFbD2/Fa3MfzdqkBEE5H1pijb5Ehdl4n1u2Ff8WaP/ZYiCc6m/ymSmIoTKqgTUC6H03SO9IYBI1a7oEwNO9on+l18UmF8Qm+Azoo5LLfkeSXKzY0mjYROxcIvBp61S5nOqBXlJJIGDNtgS8VaDt4/xezx0rYT5aOH2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=lGF0F+91mJQoFHyjbVj6LpabkRVU0OnXFm5p0BiNApY=;
 b=CzGVmtuj6sYPcm4WwtylwPhZ40NjwqUwKIlFv5/87aTlBRgcYZB1Iq/tLzSt0r6rIJX30QjWY2LStnx1oq4pD//sSJniqY+mbAiennhM/RfmwXTRbkIU7NHdjBzq9me8CG6Qj7Vb0cobfSwsoPysEdSp2mL3oJqhXg7TXsg0VCIOze/pfLlKGQb65X7Qo0EIEYb68HQuP+XYg/MbHhW3+V09ALt1NAPPV0gvqa7DTrIxvvbZjgMo7X/sEOuk2TFC07aBns3LkxoRA/lTp9kUY5+L9PgR2h4e8UvQ4pAPjJQV/ijYBEYk6AtMylV5PrG1I1qOUCZyelTkdCHhAoQVJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 CY5PR11MB6342.namprd11.prod.outlook.com (2603:10b6:930:3d::20) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.24; Wed, 23 Aug 2023 19:01:50 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.025; Wed, 23 Aug 2023
 19:01:49 +0000
Date: Wed, 23 Aug 2023 12:01:46 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230823190146.GA1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-17-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-17-lucas.demarchi@intel.com>
X-ClientProxiedBy: BY5PR13CA0021.namprd13.prod.outlook.com
 (2603:10b6:a03:180::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|CY5PR11MB6342:EE_
X-MS-Office365-Filtering-Correlation-Id: ab500077-c33b-4549-b99a-08dba40b67b0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LxXwPHW/JZjoE31p7NsaV2QGhmhkUZnaOygY9YLrt2Oh+7rischGBIsk7wxUZzIT1ivWXhx+pS7SYVitfEhmxMajXuEJ7umbrgBd0ZRizdcj+FM8Mk3EBNiZqjKvV8mWgKvGt0/3ssfSWi1C8rzzLC3jtggudKLr5G06cxpMWDLAH6G7Yy09JMs4qvxuONh7ODL73Dfb4OmfEU5nHFGv7XBoLXTLCucPpVwJEie0hM6paN45Xc1QzzV5OQ/QJDsXH16fOdOqKZkRpDVZWAs1cI2l62I4PJ8zIx+ZCQ3qnTj/tVud6XJuBSlrYoUdc2yDNy1HfC5Yhl6oIQsdLrApI2n+1BSY0fJp5JsYtCO8URXvA+wEhk4nlMrQqe4KVCEtyUHorW951gKNh66/K0H4j+FyKKOhW7cX+8BdWdoIEo5AIvAvgWVe+od4jqKaGLyfVaHbJvzx6ezaviG4QMVJYikApJ37CdJKELT+l0UN9xsQ9LBJv0YoDQMRCkROyVumxzcnpSODDpvzhNigqYfxNbC1snpJhFPUdGw0OPHclo1hCAHy6F+SAMTM92jDfVNH
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(39860400002)(376002)(366004)(346002)(186009)(1800799009)(451199024)(66476007)(66946007)(6512007)(316002)(66556008)(82960400001)(6636002)(450100002)(8676002)(8936002)(6862004)(4326008)(41300700001)(1076003)(478600001)(6666004)(38100700002)(6506007)(6486002)(83380400001)(2906002)(86362001)(5660300002)(26005)(33656002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3CseMHIOImHUXLNoInaGxLPJNdC2tA7gOcbKHcv9zOmLdzqpKeo/nqRHZxa6?=
 =?us-ascii?Q?5l1TSSJOMQyu5gQz6UqKa8H/nUpDy0aawzIa1uzaKC7lHJjW22W6AOcB1pRI?=
 =?us-ascii?Q?OnWx0TalDaAOrabsfdMhKeN+Xf9JKaeywrMAKaoGHglenLvM8S7Gs1msxcxr?=
 =?us-ascii?Q?cItVa7eGSR4Tq/eA+5CEECZXMhwUi7pJ7tuQRidIaTg6UeSFwdDR5hDpe/Rn?=
 =?us-ascii?Q?xvPJm88WEyJ8tGTF2Q2+v6c3DjfxuIBeMcMpdnvjhYAmPjzN1gmOTReY19zG?=
 =?us-ascii?Q?zcV8pHA9Ns77GNavE60bEDLhzNPLG7Yx4UraIEdjJVBQHy3wIh0PPjYa8Jzb?=
 =?us-ascii?Q?x7RiA+30Ws6cxIeftVWATvIcoI6d4yMz18QoQ2x0ICua613pNADoaRaf496D?=
 =?us-ascii?Q?By8Jv3BLdJz7jqGvOE/2cGN2m0yVVa+u3QjXJ4wL0PloYdVe93ZyCBtJOj95?=
 =?us-ascii?Q?kJxRmY+N6n9jNXF67e7n2HnMNCH2/TjFnpzw3Cp2VscBFUKP8bdyZkz6cNmB?=
 =?us-ascii?Q?rovPseMqWalGZQr8JRXsiTevDpTZR8Z1qNJIDNIaLIlQibpJfkitl8nDs1AG?=
 =?us-ascii?Q?xKw6q3af51c0s/EGeapevTRRilqXLjZWFG/Itv7JYdunEX8WaCRJGfzAnuEb?=
 =?us-ascii?Q?BjOA/+cYfdaGvpH7MSzI4FMG2Wh3pAM6TPlrnUji+2gCB+C+ucxaOKCVCCDQ?=
 =?us-ascii?Q?zNfmWxGiJHX097tQSqinuVSGuHzoEO4RH/L7E0ad6as3OTfTKbUjr1mdKgVi?=
 =?us-ascii?Q?UQxF43j9ZY42cDhoD0Bbpsq8REnQCX8q5OiLZyg2yvVayj9iACGdhfMZ4lhL?=
 =?us-ascii?Q?6Zpm2awMf0LqoGKBlvjFIQHPEY56Ngzg7uF0S7fFepkORNrH2LZ9Abpyc4Wk?=
 =?us-ascii?Q?WWZXnpgklgZhoyv7N5lDPvkAZjngT85/rR53f8ubwPWGhKfE4HhHaiG9Uo4q?=
 =?us-ascii?Q?j5DYDO2qYCGw9xQXkujVgqz8DRhh4DvrATauCAPSXfdldDDUB7TxOy7ZYC11?=
 =?us-ascii?Q?kSdWrkl5lKem1Mzg5NBiqR+BQn66n59/PULvjZ6rOG24k91twJBHgguXp4N/?=
 =?us-ascii?Q?WhpVmR1bFeRBY0hUmRQ5b9QkUV+CjZvoigNro+92CLShfoSQv1tRmnqoKE6k?=
 =?us-ascii?Q?/g9LiC+hacAvhklEOtRkd/qh8RWEkhbdzrBRlgeIj12OrdXvP2wwT1in4sMn?=
 =?us-ascii?Q?MSMZdBl1MCt6bwW2fdXrGj6nchpLebeRosR4LJPeWYxg/kqTceAhjRA+W3xw?=
 =?us-ascii?Q?W2qpwvkZyzKaH0ZY0yzRQCDogmJZhfAw+NR+/3CxFOwwDKMT/VZPlxsUTcNS?=
 =?us-ascii?Q?7JS5mVH0o5mp9IqkjkzElsrKBHWrNFYd7AVRd85KhmcBJ4si71Odi9BHx8rg?=
 =?us-ascii?Q?N/WmB4nd6xpoSkJjgqmbGDFvl+/gd1qe8wD+Sw2vgbNPFdvzmCPW2TeNuKos?=
 =?us-ascii?Q?VOdujGLG7hTxRUNonSNbeS8DLz8pc1LSF5CUpiDQRK16EU+8bqDDP7+V417o?=
 =?us-ascii?Q?krT2F4iJlh1KBczLLpr6l2P+snUQDrEjJdAaE9pvzqBf3kNUqU7mZaNpjCkO?=
 =?us-ascii?Q?L6UE5vSbgsHZudJn0CXq/JT7U4iYvD6fafuiPqwiJmLc+m8YffgS/rDvyBmq?=
 =?us-ascii?Q?MQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ab500077-c33b-4549-b99a-08dba40b67b0
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Aug 2023 19:01:49.5675 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: dCq22XqOb7KC/HXEs9unX8Zl8K4sUdGjP/bUtVs9EvHMtLibjh0oQ2sRgkY0bLqNjx/XPnoHyro8nfCbovKSBAHVUKtF8JMeAJvuCd7rP6g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6342
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 16/42] drm/i915/xe2lpd: Move D2D
 enable/disable
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

On Wed, Aug 23, 2023 at 10:07:14AM -0700, Lucas De Marchi wrote:
> Bits to enable/disable and check state for D2D moved from
> XELPDP_PORT_BUF_CTL1 to DDI_BUF_CTL. Make the functions

As of Xe2, DDI_BUF_CTL is now renamed to "DDI_CTL_DE" in the spec, so
you might want to toss a mention of the new register name in the commit
message here to make it easier to lookup in the spec.  E.g.,
"... (now named DDI_CTL_DE in the spec) ..."  Otherwise,

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> mtl_ddi_disable_d2d() and mtl_ddi_enable_d2d generic to work with
> multiple reg location and bitfield layout.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 38 +++++++++++++++++-------
>  drivers/gpu/drm/i915/i915_reg.h          |  2 ++
>  2 files changed, 30 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 61722556bb47..a9440c0ecf61 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2356,13 +2356,22 @@ mtl_ddi_enable_d2d(struct intel_encoder *encoder)
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
> @@ -2809,13 +2818,22 @@ mtl_ddi_disable_d2d_link(struct intel_encoder *encoder)
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
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index dcf64e32cd54..84c5a76065a0 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -5723,6 +5723,8 @@ enum skl_power_gate {
>  /* Known as DDI_CTL_DE in MTL+ */
>  #define DDI_BUF_CTL(port) _MMIO_PORT(port, _DDI_BUF_CTL_A, _DDI_BUF_CTL_B)
>  #define  DDI_BUF_CTL_ENABLE			(1 << 31)
> +#define  XE2LPD_DDI_BUF_D2D_LINK_ENABLE		REG_BIT(29)
> +#define  XE2LPD_DDI_BUF_D2D_LINK_STATE		REG_BIT(28)
>  #define  DDI_BUF_TRANS_SELECT(n)	((n) << 24)
>  #define  DDI_BUF_EMP_MASK			(0xf << 24)
>  #define  DDI_BUF_PHY_LINK_RATE(r)		((r) << 20)
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
