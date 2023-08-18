Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B1BFB7813EE
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Aug 2023 21:52:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48FBB10E0F4;
	Fri, 18 Aug 2023 19:52:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06CBD10E0F4
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Aug 2023 19:52:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692388375; x=1723924375;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=2bfP88/U5FHH6xYlvCaOXePiQqKYrvPoqnvmrLVZmAI=;
 b=b6eEt4mnYvgLjYGdE5tSXmn7tFpNS3UnO7e/1cuhZdWuSMSE5tQn/Dhs
 KRxE01bYRagv8VQ3mRi069MFT1ZC44bKny+/jJnJQLjL2SoQh2NFhQbYH
 lMlHXM0Xgc/qCXdDoO9jAZnh1L3OQYML0OOqsFafbtB9xVov914Nqlutd
 FZcERrHHU9+DjRy6KgZrT7bTf3fG349nTSRxOvcJgLIp5n8SqvXUoOr6y
 hdhmgXNCJy2ZYoG0xBoG/ph7fDsauZDJuUgmvj/Btdv+jq8gC8hmnVehQ
 FNwxELSRJwO26qbs6rKt34da6j4HD0R4/UU40GjgOSoPA74XLVOp720Eq A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="352771357"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="352771357"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Aug 2023 12:52:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10806"; a="981766848"
X-IronPort-AV: E=Sophos;i="6.01,184,1684825200"; d="scan'208";a="981766848"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga006.fm.intel.com with ESMTP; 18 Aug 2023 12:52:53 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 12:52:53 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Fri, 18 Aug 2023 12:52:53 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Fri, 18 Aug 2023 12:52:53 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.177)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 18 Aug 2023 12:52:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BT1t1aqWOhIhuoDGgKyLPsM0RXz3k711e8BFV0qU9qYBi0NP9ZoTukmhMUPKcE0b9jE0U6Kvl6RWOYO9xj5Zb2IyNmsQr6AQzQ+teFIAfQwcyiY59QzaVn6k3LZp0mQTVdT3E4h1/FTOp0EtyapjJpljVsVQNKGRZO870vgMuyzo3ddXU9Eyf63syreXSj8QZRjaZSuGe6rBlmP5HemBnKuyvQRWbwSmjT4pwoJN92H3bY4KOj0xCfKTvF4oDeKsAClJWw7g1WqSRrXWaD0N6cGynyK607T62mNmmmV6EZ5CGP3oIEpDt71fo4sBZMyzYwrtDzfayeTJ4Dva0qn0sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uqSLKt5uK32kuYSO3Vmqt70RIUoERyEv/Efh9xJ+etQ=;
 b=R4cMr6NGsqPo1bjNBOudbk53zPtp/9G7kLcts9aDPAVYgw4/aPGPRqFGXIWaz8PIZrS3urXdHsUeNcWA4sozE+51stG5Ry1cLWq2c3BrcBb+mpVE+jDbzRo1Zadlsbn0peaFF0n5rhyN9fu/cqIQxFz2HTcCKkFTciImICYi4vpWL9o6cTSTKXtZJscCyyelOOggiT88LWmAESVnnU6eEdpkJViaw4+BswNWky1ds/dJjCxBtXGkk0NNq7OM+6ItnykpihrBZ+J202Ytz78dyj/HjU6kAPzPPKWbvArJOnxHJ8sXWaBAEh8nvw/E9aWMrA5jzn6nJDhSJ88xEiu3cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 PH8PR11MB6901.namprd11.prod.outlook.com (2603:10b6:510:22a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.31; Fri, 18 Aug
 2023 19:52:50 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::de6b:b5a9:e542:b41%5]) with mapi id 15.20.6678.031; Fri, 18 Aug 2023
 19:52:50 +0000
Date: Fri, 18 Aug 2023 12:52:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
Message-ID: <20230818195247.GA986140@mdroper-desk1.amr.corp.intel.com>
References: <20230817175312.295559-1-gustavo.sousa@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230817175312.295559-1-gustavo.sousa@intel.com>
X-ClientProxiedBy: BY3PR04CA0017.namprd04.prod.outlook.com
 (2603:10b6:a03:217::22) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|PH8PR11MB6901:EE_
X-MS-Office365-Filtering-Correlation-Id: 769a6f01-944c-4ee3-d962-08dba024b3c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: x09E8t/UZ/OAEFZY9eS+Jx4sFLteEPbT1bBXsfvBrT8DJhddl1Axh3rCRgnUur4Lo6lMqpEMVrDzajGqf3vnJv2UFZXk3bnM/JfuIGI+81r/gmTibtYL+ylJF3vYvkHRTENMyUJCCXxojgWLfvvvFMHJqXP90h3aYrzVsu/xsgTdSoKEacmSrwHOHij/i9eBgPbm6FYeyTDDj358MIlcXDKHJv9S560HuqIU6rC01IMPtXjS/Nl3kmQ7bDKQLko45W14HNWXfjhZ/nLOBIdLq/GWFU9xBE9BN6dVFP+b0HXcjJUUEreL++xmdyNA8S+kVWr7KD1dxuWEg3Rnvj5ffum1ZJvUb1naBvdo5ZUq76JqNDTDkYg/CZdNcVyIRmD5yxX9ph1ZjlmtgZSO32G5VHRPWVQ9hiNl9v5ByZb7JMsTm2IzIaXZk/zqJpkXlorpQZtOlNKyjeEVkWZroG2wEDw40eeKFf9WVcD2DEYU+Ti6CBzzMsN0FA/nJR1Q4wUNAmcT4Y+Kv0FQxmVRz8CrlMnCksC4CvYts3b4HUkbUvGOwTKhC3tKW6Ycmxz/A8Lq
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(39860400002)(396003)(366004)(376002)(136003)(451199024)(1800799009)(186009)(86362001)(33656002)(82960400001)(38100700002)(5660300002)(66946007)(6506007)(66476007)(316002)(6486002)(478600001)(6636002)(6666004)(66556008)(26005)(1076003)(4326008)(8936002)(6512007)(8676002)(6862004)(41300700001)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?K65Si+LT+CntYJ/HXvnZB1yv2pPpe/bRcbsnPWHEADndlNGfFyPABNdRIadk?=
 =?us-ascii?Q?Rd79qHR5W4qJKYJBzP2831I1tmA+rakIzLuCgBxMeezpBdZ7nojBCUTXq8O4?=
 =?us-ascii?Q?QQL1rNe3qBHWJJ5lwnktjM5iaVEhhF+tqY9L/K24t6lIKHCfQrmj/rSaHXuW?=
 =?us-ascii?Q?2K+J/qCm88Y6zCS7blQODigbxs/8kKJQ7D1lk+YzreMGFpG9T+h+E6whor04?=
 =?us-ascii?Q?vlt3ok/Iirl6XWPeLpkA47Hd7hidir1AykP2s16P4LBou0mKY25VaPLmsK1R?=
 =?us-ascii?Q?NOKEyNkxqSq/6iBzxy37ZHQC5kkEociQMKUaU4m7SQ10VqVZuVoL3b+aq8F7?=
 =?us-ascii?Q?DeKSs+lS13OVpErGUACUb4mkwYBIebfO43G1JooVWs32LLNjZNQxc/xniiBZ?=
 =?us-ascii?Q?+Jw2FvsF2yYvCikIyX8LlATXugdwXtTX8xV1wmp1KGu6OBGRBuFP9YLOwXPl?=
 =?us-ascii?Q?Vcw/laN8Lr+fORfphdHx8iypVPCNT3GFwWOvDE9vUTuPeLv5XY0OAcuYIGkr?=
 =?us-ascii?Q?FbjCzJ5+weBlBSzt2U5017eDVHshFFPZKhzL9rTmHpEyFW2xoHLEP02AjTyx?=
 =?us-ascii?Q?SMMQOG9QeH+anOeJ/4HMO1E1XknLlr2uZaFVV1GHI1KLzicaTeIqsp/WhROH?=
 =?us-ascii?Q?qKsJhWRqB+SWQK/e0GORLxyFy3TR+6Naz7+kbMb5KQzty8n+3b0L8bOoUVRl?=
 =?us-ascii?Q?nPqSbHPcMBKSrD3ZSFvjFhM3I+dknSVUhBH23CyFYwhSsSgu5ofLH3mZBjjK?=
 =?us-ascii?Q?GdFk6u+PuU1BA+lo5NiReGaydhbqtempXE1804rcDa7uv9OQI9Yvo/MwsY3J?=
 =?us-ascii?Q?rAjdJUBOrprHk5+0bTVHb+AouGafmI/gOhGB6HO2Fe6Sqv7AzvJLxrUEzNPt?=
 =?us-ascii?Q?HOdxfz4ROHvNoqYeneDw4fLdMAIRK+qRMCuyIq36oCz0djteKn8+wtyN6kLV?=
 =?us-ascii?Q?ec2C2WoRNCwq84oVlcJQVSdDdoNzIKlhNejI76WNLH5jeOAU8RKZuGp6PsYQ?=
 =?us-ascii?Q?11QC3hvfiH7+O062ReW3dpVwzEGUDWHutOjyuGJqAIaD+3RfQdWU7WAjESs7?=
 =?us-ascii?Q?ERshswTNTK4t+8NCxwWH0zhcX/IFG5dpoXh52AETZeI4LEuglwODnKIACe7m?=
 =?us-ascii?Q?LORdsZNk0MhtES3F3NKZk9XxU+2kGDHePb64xX6fiAHmn06opExSMGw2jF7q?=
 =?us-ascii?Q?HrlIYCPfaQZ02c8Hlaiv9L1aq9W942p/2Us+bhcuwHy8v0BZ1jtDsDnH7p6N?=
 =?us-ascii?Q?abJzvaupozzhDg97Dty4IF8UKrYBdzZQcz64hwyhQvLZRsPZjqJ8qLUWtq8b?=
 =?us-ascii?Q?vsgXejyUZsr2gQ+hoW5wq6o6fGxub9LdnWdjBVYjaQIV6ziSNhxSrm8MeddV?=
 =?us-ascii?Q?86PyApCaLcMCrqaty7m5D60Ohf7vVrIIZS772qv9EPhTSYaDrDxfq760nSmk?=
 =?us-ascii?Q?nt80tuA5SDzrMmuI8L9zMWn/u1T05nkVSybmOZv1G3RLckt638qxB2KaW6TK?=
 =?us-ascii?Q?VwDjPNa4FjIBY7Hk1xMycomno4nFDWYhOVE3PNtT3gZ1bENIMiPaq4lx/20A?=
 =?us-ascii?Q?VA8RToSWyvrTbiME71rz7HOrCgw7+qTM5p7T4bMRhgnC6DMEnAS+aUILHsWa?=
 =?us-ascii?Q?vg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 769a6f01-944c-4ee3-d962-08dba024b3c9
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Aug 2023 19:52:50.1267 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ke6Lbwmugu2Jk+Le1NHz/1ZSAw1RrBPlGgb3OKwl8zsaF56iqW8Du5PEKk0Q3H7az2nQ3DHq33EyN2uFogyja0PIrOtVffRy1wc1Y7wz0Vo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6901
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Remove unused
 POWER_DOMAIN_MODESET
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

On Thu, Aug 17, 2023 at 02:53:12PM -0300, Gustavo Sousa wrote:
> That power domain became unused after commit 41b4c7fe72b6 ("drm/i915:
> Disable DC states for all commits").
> 
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c     | 2 --
>  drivers/gpu/drm/i915/display/intel_display_power.h     | 1 -
>  drivers/gpu/drm/i915/display/intel_display_power_map.c | 9 ---------
>  3 files changed, 12 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index 71d70bd9fd82..68cf5e6b0b46 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -186,8 +186,6 @@ intel_display_power_domain_str(enum intel_display_power_domain domain)
>  		return "GMBUS";
>  	case POWER_DOMAIN_INIT:
>  		return "INIT";
> -	case POWER_DOMAIN_MODESET:
> -		return "MODESET";
>  	case POWER_DOMAIN_GT_IRQ:
>  		return "GT_IRQ";
>  	case POWER_DOMAIN_DC_OFF:
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.h b/drivers/gpu/drm/i915/display/intel_display_power.h
> index d3b5d04b7b07..d6c2a5846bdc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.h
> @@ -108,7 +108,6 @@ enum intel_display_power_domain {
>  	POWER_DOMAIN_AUX_TBT6,
>  
>  	POWER_DOMAIN_GMBUS,
> -	POWER_DOMAIN_MODESET,
>  	POWER_DOMAIN_GT_IRQ,
>  	POWER_DOMAIN_DC_OFF,
>  	POWER_DOMAIN_TC_COLD_OFF,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_map.c b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> index 5ad04cd42c15..0f1b93d139ca 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_map.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_map.c
> @@ -332,7 +332,6 @@ I915_DECL_PW_DOMAINS(skl_pwdoms_pw_2,
>  I915_DECL_PW_DOMAINS(skl_pwdoms_dc_off,
>  	SKL_PW_2_POWER_DOMAINS,
>  	POWER_DOMAIN_AUX_A,
> -	POWER_DOMAIN_MODESET,
>  	POWER_DOMAIN_GT_IRQ,
>  	POWER_DOMAIN_DC_OFF,
>  	POWER_DOMAIN_INIT);
> @@ -437,7 +436,6 @@ I915_DECL_PW_DOMAINS(bxt_pwdoms_dc_off,
>  	BXT_PW_2_POWER_DOMAINS,
>  	POWER_DOMAIN_AUX_A,
>  	POWER_DOMAIN_GMBUS,
> -	POWER_DOMAIN_MODESET,
>  	POWER_DOMAIN_GT_IRQ,
>  	POWER_DOMAIN_DC_OFF,
>  	POWER_DOMAIN_INIT);
> @@ -519,7 +517,6 @@ I915_DECL_PW_DOMAINS(glk_pwdoms_dc_off,
>  	GLK_PW_2_POWER_DOMAINS,
>  	POWER_DOMAIN_AUX_A,
>  	POWER_DOMAIN_GMBUS,
> -	POWER_DOMAIN_MODESET,
>  	POWER_DOMAIN_GT_IRQ,
>  	POWER_DOMAIN_DC_OFF,
>  	POWER_DOMAIN_INIT);
> @@ -685,7 +682,6 @@ I915_DECL_PW_DOMAINS(icl_pwdoms_pw_2,
>  I915_DECL_PW_DOMAINS(icl_pwdoms_dc_off,
>  	ICL_PW_2_POWER_DOMAINS,
>  	POWER_DOMAIN_AUX_A,
> -	POWER_DOMAIN_MODESET,
>  	POWER_DOMAIN_DC_OFF,
>  	POWER_DOMAIN_INIT);
>  
> @@ -861,7 +857,6 @@ I915_DECL_PW_DOMAINS(tgl_pwdoms_dc_off,
>  	POWER_DOMAIN_AUX_A,
>  	POWER_DOMAIN_AUX_B,
>  	POWER_DOMAIN_AUX_C,
> -	POWER_DOMAIN_MODESET,
>  	POWER_DOMAIN_DC_OFF,
>  	POWER_DOMAIN_INIT);
>  
> @@ -1058,7 +1053,6 @@ I915_DECL_PW_DOMAINS(rkl_pwdoms_dc_off,
>  	RKL_PW_3_POWER_DOMAINS,
>  	POWER_DOMAIN_AUX_A,
>  	POWER_DOMAIN_AUX_B,
> -	POWER_DOMAIN_MODESET,
>  	POWER_DOMAIN_DC_OFF,
>  	POWER_DOMAIN_INIT);
>  
> @@ -1141,7 +1135,6 @@ I915_DECL_PW_DOMAINS(dg1_pwdoms_dc_off,
>  	POWER_DOMAIN_AUDIO_MMIO,
>  	POWER_DOMAIN_AUX_A,
>  	POWER_DOMAIN_AUX_B,
> -	POWER_DOMAIN_MODESET,
>  	POWER_DOMAIN_DC_OFF,
>  	POWER_DOMAIN_INIT);
>  
> @@ -1311,7 +1304,6 @@ I915_DECL_PW_DOMAINS(xelpd_pwdoms_dc_off,
>  	POWER_DOMAIN_AUDIO_MMIO,
>  	POWER_DOMAIN_AUX_A,
>  	POWER_DOMAIN_AUX_B,
> -	POWER_DOMAIN_MODESET,
>  	POWER_DOMAIN_DC_OFF,
>  	POWER_DOMAIN_INIT);
>  
> @@ -1426,7 +1418,6 @@ I915_DECL_PW_DOMAINS(xehpd_pwdoms_dc_off,
>  	POWER_DOMAIN_AUDIO_MMIO,
>  	POWER_DOMAIN_AUX_A,
>  	POWER_DOMAIN_AUX_B,
> -	POWER_DOMAIN_MODESET,
>  	POWER_DOMAIN_DC_OFF,
>  	POWER_DOMAIN_INIT);
>  
> -- 
> 2.41.0
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
