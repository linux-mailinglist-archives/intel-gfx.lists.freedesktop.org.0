Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCE879D554
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 17:52:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F82710E080;
	Tue, 12 Sep 2023 15:52:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5680E10E080;
 Tue, 12 Sep 2023 15:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694533961; x=1726069961;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=zHtXqCXcaWT44H+VirBGgmXhoOgiXDduz/s7va16xEU=;
 b=PHe94tg3TuLiXLLAAe4ddpAQtpaH55j9DP2Wxp5ZviiBwBBJbJ5rukMy
 0hsOVLHrJ+L+zqpoBPVHPw7c5GDK4oWGRTe3IajDiZrucVxUsjbXjPrBK
 qRPUKohRfJOxBwaKPpSpBsB1gjfLg/RijheuY+2mbKGX4OEGpMiJWcgXc
 Le02YK0WmOYGF3nhnnK9lhpcZWr9Zog25tK7J5Ndeo+YBAhVJgreoqiK+
 sdVm7KRZEOt8+TcmjJI110DI6JyygInYV9uKS21KYsx+4L2YckRDLCGpd
 Csr3TrfW0nkjVoaKI7UDRAfDWQ8+yfiUbBkobiE2rA6hChFGuGSsr4DD3 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="444848512"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="444848512"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 08:52:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10831"; a="886980581"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="886980581"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 12 Sep 2023 08:52:12 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 08:52:39 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 12 Sep 2023 08:52:38 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 12 Sep 2023 08:52:38 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 12 Sep 2023 08:52:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OuRPSqu4X5uh+C42A9zy5ypVCCD/7orFWRaWw0HbHPwLaC5a8eS2mLHtRhpwQt2y8byLlWw/v9x5wa4LMjY8o2ZoxoZls2qbJHTVqUtILQJ/eoUoLIL6JFJc4LiOIixYPALWTBJcvl7Ua3BD4alBcCtIkNFcxDVNogQuza5c+3fZOf4s1KPmxuwY/5QDR0tH1iYCZD6gnwskPdLPmrD8u8mdEQk7MIBbh8n6gliit9uRII9rSSFThvn1hT9ya8dLNVTB1ePlajdqTxnuesWXKYKZAIQFF6JlUj2f8g+CmlUH8ziU/I3nx9uBI7S5/M8plkexmk6lQtizfpnMkFogKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gadBePO6UhuXVLMJ3FoEZHT4kOODHefhW/7u6ezCt5s=;
 b=BO06BwhBJ+46/zl5emx/g6W+D9R3333VzhwmGW5S7P8n0X+5Dgl71JZGYysHl9z363g0x/jAEdilI2ScbpQsh/C+FoOywh7Qhc8/yOk16lcYaqGHs+UlTD34t8jHdHinaGwJn5xp+RbY/Wj9q8iHdX2TmKy0wjf58ZUPMbt1B8CnRt6NtGftwUpZhc8DTZAZ6bl6fD9jo31nBVLFOPzg2+FuZFRSaKN6Oz+dMJsZdn3RVZ7N7ZylPi2bKTWiBRi61b3SKVc0tCD637i3cMp20IyJHAMBPe8E7ZE97z9fmsdgdbDJeumG4Isyjd9kylgksLN1Cf+kvovypXGkYDe+ng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ2PR11MB8568.namprd11.prod.outlook.com (2603:10b6:a03:56c::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.31; Tue, 12 Sep
 2023 15:52:36 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6768.029; Tue, 12 Sep 2023
 15:52:36 +0000
Date: Tue, 12 Sep 2023 08:52:33 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230912155233.GK2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
 <20230912044837.1672060-16-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230912044837.1672060-16-lucas.demarchi@intel.com>
X-ClientProxiedBy: BYAPR05CA0101.namprd05.prod.outlook.com
 (2603:10b6:a03:e0::42) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ2PR11MB8568:EE_
X-MS-Office365-Filtering-Correlation-Id: 52c3aaf4-7216-4146-43c0-08dbb3a8491e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JMppzkeJm76epe1ErHOUZpABjK73pbDU6EVp0k94O7Tot5yC+sDwFgQ+qsnBjyHOHuM8arspHPcj3lE5MBraStQnVgiT0VnzLcb78/h6y9qDhmWdminjtun+Zd1yUzpA/jYgOG7pCMH2eIT1vG2okKA5WKDV+p8GpTVcXSy3jSE09h3/3kqNrtwasQNywDOjMuoAFqP6V+CQ7Y9Jp69exLyGyOnDKWccO+TKqCXb5mpBsZeaZPvsVI3Ww8P2O+/VnVLTmbmSJpyCf2q/qrt/cidQU4bYAncDNErKn0o6E52rDVyDOXI2yzb/ZX29C3UXqIgJB60reOoBPVDqXzXrfYZrsPWCmPhXMcSyMcLq8eQ+QuTx3+TL/Bp3Rk8UbfdC0zzaJ59cVhOCURxKZmAVog+rrv6AhOfgCVTOeV2a0iEQG1aUPLdOfTrKsfx8n3zO8pWroHddv9F45psjm/sjp34ZaxseFE7pzZwCx0QRCaGMgUqeVz1oubiDNL6lyYXJW1rAQldvYNHGCxBhs+3pd4u/cxQUjPgD/DvZ/vRWhXcCf9INUYyGolDW4MxgmKz6J+rF3EtNN+ck9ozxR2YlttWsH3dPvX0QDibacRZmFMVIr3yCt3w9ySG1dckT86lN
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(346002)(396003)(39860400002)(366004)(136003)(186009)(1800799009)(451199024)(8676002)(316002)(6636002)(66946007)(66476007)(66556008)(26005)(6486002)(83380400001)(6506007)(6666004)(6512007)(1076003)(33656002)(82960400001)(38100700002)(86362001)(478600001)(2906002)(41300700001)(450100002)(5660300002)(6862004)(4326008)(8936002)(169823001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?nosNTLyQvvVvQijAKlfU3afgtD9q2f4CQq29wgmYwla69BqD86bUHrnLapg9?=
 =?us-ascii?Q?0gcGv1AjeizjD8Z/lAGhUGumnV2QFLTUoa6kA3LUzuV/DY3+cnJp7uOGikOw?=
 =?us-ascii?Q?5wUP49cF5bgEfW/NBsN0nUtcqR7us1k2YF7I4DAEy5Zeo23nemxos9utkmOA?=
 =?us-ascii?Q?hxPIvhtcKciuNmqGGw1C9rL9Lxmic2+6qJDPGPmgMyb7NnUlWjhdGJKOcVTP?=
 =?us-ascii?Q?UBlb3+3IlfMT8kXIPOxtdQ5vOJJrF6Lm4HA3W8gxxRqa3YaJ0e8jLmdJPBX3?=
 =?us-ascii?Q?B7sg5N/acGobToHQddU8jNGk/14ICHplEe+JxG7yVpMISi5IuaCV9SQIyYXR?=
 =?us-ascii?Q?F/Hl9IZGNnvI0u/0ILVHQxwd4y/g1b4gYI83kQpWsbBRAi0xRlLkUbf3aRlJ?=
 =?us-ascii?Q?W4F1JAjwB4dmDXNhxFq7fa1e9qTezbaPufoiAFoW09p12lhFTE3flUbpxzrX?=
 =?us-ascii?Q?hwY72gb9SZTpNj5Vqf06bNR+1n4nO5mJzHp8JoYFlKdaCGTz2EgUM0PZfq4z?=
 =?us-ascii?Q?/OyUdEYirMR6GRD6A0ce8UIh9kip/BSAQTC6l3VwfbAPzhmmAPtpfe3k8B5t?=
 =?us-ascii?Q?jGssfIlaWEo35hRpby7PSzwcwgfZsAsq/UiCIFBxlbAp2daH4wfLSsF9La8S?=
 =?us-ascii?Q?dQh2d85wgOfKlxCIGAfrSuvkyOmEk1Zc+j3RumSxTNh0CeQjZ/hjnZEY/pLp?=
 =?us-ascii?Q?HOwmi2iidZ2TPia27/7jExH1NKREw3qmSMzRT0dpSJpc6udzPFAYLF0cyN8K?=
 =?us-ascii?Q?6X/RW0ivbn+x5S7eo7KkEsYb+2oohu7wSBhRPzejoAIMbag7SEPS4twJL62f?=
 =?us-ascii?Q?vXO6BBpe2Re535nFZnIQPJ9aeilScAb1upaqc/mWE/WXchEWktL9gASuCLEd?=
 =?us-ascii?Q?Y/O1g0aZlf7xOARRFXWJK697bloYltqcTJgEIVYGjHeEYWkaHS5QbvCJZmZa?=
 =?us-ascii?Q?HzoVNimGvVThTXRSPSBA25N6qmgvz1MDHew83JgHU+VHKrGemGpEBjuhfWAg?=
 =?us-ascii?Q?9tefqu8C72scW4UcNgSEQhpInQ6GImZRtqck632ta6gZ9dRE7AUDE40TmvoH?=
 =?us-ascii?Q?73/tyPzfGealFe9PLFy2tiZB7bT2gz3hOw4KKgd6+BPSkXPSfRmVHnMQWEGq?=
 =?us-ascii?Q?mrg6Gydu7uJos754gN+CsLUDfkPCoPS0TbMCZZ9s85eu/fnI3ETng+xILFkC?=
 =?us-ascii?Q?kaPFVs0pcr+WJn2Z3h0fzfGvk0mTGCLT/U9cMYqJNXprZYQqo/VpCYdAF5Od?=
 =?us-ascii?Q?nj97TvSgQkYJ5AkF2PovcvxQUfVfN1SFpLhwItbg07OOUga+z8wxF9Dquq8b?=
 =?us-ascii?Q?UEdRCWMfCHWpPu6w+/2gNFz5/IYfOjAPI7PVCcptGFz0eKVE9UQh434DOlzv?=
 =?us-ascii?Q?xJ9VwCbS0Y19WHkpIA6fLGx9RBWJL08V+YJ/ItGDOt3z9gYkX6k28Sy0hZwD?=
 =?us-ascii?Q?l7G+wZZaXZ9b02TdcwAh6qA4xSyxgomdHArFXd2a5slU8p3QNhnS71SuUYS3?=
 =?us-ascii?Q?Mv8iwL/7kcQXf8fBGZUQOayTnTGFHkb9gTa0+069eOu67bHVsB+Ymn4Rx6OY?=
 =?us-ascii?Q?oclMYXKPp+09RGCI0CSw4jOCuv7jQqx9AK0D2q1ZLf2L2MPq1I/pQcStUcdz?=
 =?us-ascii?Q?lg=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 52c3aaf4-7216-4146-43c0-08dbb3a8491e
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Sep 2023 15:52:36.7001 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: O/qQpQooyJN6oMTKAYIAYnMH+H6a5WfTHkgP2NpQMKIDy1Tlrkupay+WrOPyK07bOKoKTQBcHImPBMg+VDvQRctKDalK467j43KgQDNUAU8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8568
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3 15/29] drm/i915/xe2lpd: Re-order DP AUX
 regs
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

On Mon, Sep 11, 2023 at 09:48:23PM -0700, Lucas De Marchi wrote:
> The address of CTL and DATA registers for DP AUX were changed in Xe2_LPD:
> now they are all in a single range, with CH_A and CH_B coming right after
> the USBC instances. Like was done when moving registers to PICA, use
> a helper macro to remap the ch passed to an index that can be used to
> calculate the right offset.
> 
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  .../i915/display/intel_display_power_well.c   |  6 +++---
>  drivers/gpu/drm/i915/display/intel_dp_aux.c   |  8 ++++----
>  .../gpu/drm/i915/display/intel_dp_aux_regs.h  | 19 +++++++++++++++++--
>  3 files changed, 24 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> index 820b7d41a0a8..ca0714eba17a 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> @@ -1800,7 +1800,7 @@ static void xelpdp_aux_power_well_enable(struct drm_i915_private *dev_priv,
>  		icl_tc_port_assert_ref_held(dev_priv, power_well,
>  					    aux_ch_to_digital_port(dev_priv, aux_ch));
>  
> -	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
> +	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(dev_priv, aux_ch),
>  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
>  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST);
>  
> @@ -1818,7 +1818,7 @@ static void xelpdp_aux_power_well_disable(struct drm_i915_private *dev_priv,
>  {
>  	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
>  
> -	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch),
> +	intel_de_rmw(dev_priv, XELPDP_DP_AUX_CH_CTL(dev_priv, aux_ch),
>  		     XELPDP_DP_AUX_CH_CTL_POWER_REQUEST,
>  		     0);
>  	usleep_range(10, 30);
> @@ -1829,7 +1829,7 @@ static bool xelpdp_aux_power_well_enabled(struct drm_i915_private *dev_priv,
>  {
>  	enum aux_ch aux_ch = i915_power_well_instance(power_well)->xelpdp.aux_ch;
>  
> -	return intel_de_read(dev_priv, XELPDP_DP_AUX_CH_CTL(aux_ch)) &
> +	return intel_de_read(dev_priv, XELPDP_DP_AUX_CH_CTL(dev_priv, aux_ch)) &
>  		XELPDP_DP_AUX_CH_CTL_POWER_STATUS;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux.c b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> index 2d173bd495a3..b90cad7f567b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux.c
> @@ -687,10 +687,10 @@ static i915_reg_t xelpdp_aux_ctl_reg(struct intel_dp *intel_dp)
>  	case AUX_CH_USBC2:
>  	case AUX_CH_USBC3:
>  	case AUX_CH_USBC4:
> -		return XELPDP_DP_AUX_CH_CTL(aux_ch);
> +		return XELPDP_DP_AUX_CH_CTL(dev_priv, aux_ch);
>  	default:
>  		MISSING_CASE(aux_ch);
> -		return XELPDP_DP_AUX_CH_CTL(AUX_CH_A);
> +		return XELPDP_DP_AUX_CH_CTL(dev_priv, AUX_CH_A);
>  	}
>  }
>  
> @@ -707,10 +707,10 @@ static i915_reg_t xelpdp_aux_data_reg(struct intel_dp *intel_dp, int index)
>  	case AUX_CH_USBC2:
>  	case AUX_CH_USBC3:
>  	case AUX_CH_USBC4:
> -		return XELPDP_DP_AUX_CH_DATA(aux_ch, index);
> +		return XELPDP_DP_AUX_CH_DATA(dev_priv, aux_ch, index);
>  	default:
>  		MISSING_CASE(aux_ch);
> -		return XELPDP_DP_AUX_CH_DATA(AUX_CH_A, index);
> +		return XELPDP_DP_AUX_CH_DATA(dev_priv, AUX_CH_A, index);
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> index 1e9e018a2a48..b4e96baae25a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_aux_regs.h
> @@ -14,6 +14,13 @@
>   * registers
>   */
>  
> +/*
> + * Wrapper macro to convert from aux_ch to the index used in some of the
> + * registers, similarly to __xe2lpd_port_idx().
> + */
> +#define __xe2lpd_aux_ch_idx(aux_ch)						\
> +       (aux_ch >= AUX_CH_USBC1 ? aux_ch : AUX_CH_USBC4 + 1 + aux_ch - AUX_CH_A)
> +
>  /* TODO: Remove implicit dev_priv */
>  #define _DPA_AUX_CH_CTL			(DISPLAY_MMIO_BASE(dev_priv) + 0x64010)
>  #define _DPB_AUX_CH_CTL			(DISPLAY_MMIO_BASE(dev_priv) + 0x64110)
> @@ -21,11 +28,15 @@
>  #define _XELPDP_USBC2_AUX_CH_CTL	0x16f410
>  #define DP_AUX_CH_CTL(aux_ch)		_MMIO_PORT(aux_ch, _DPA_AUX_CH_CTL,	\
>  						   _DPB_AUX_CH_CTL)
> -#define XELPDP_DP_AUX_CH_CTL(aux_ch)						\
> +#define _XELPDP_DP_AUX_CH_CTL(aux_ch)						\
>  		_MMIO(_PICK_EVEN_2RANGES(aux_ch, AUX_CH_USBC1,			\
>  					 _DPA_AUX_CH_CTL, _DPB_AUX_CH_CTL,	\
>  					 _XELPDP_USBC1_AUX_CH_CTL,		\
>  					 _XELPDP_USBC2_AUX_CH_CTL))
> +#define XELPDP_DP_AUX_CH_CTL(i915__, aux_ch)					\
> +		(DISPLAY_VER(i915__) >= 20 ?					\
> +		 _XELPDP_DP_AUX_CH_CTL(__xe2lpd_aux_ch_idx(aux_ch)) :		\
> +		 _XELPDP_DP_AUX_CH_CTL(aux_ch))
>  #define   DP_AUX_CH_CTL_SEND_BUSY		REG_BIT(31)
>  #define   DP_AUX_CH_CTL_DONE			REG_BIT(30)
>  #define   DP_AUX_CH_CTL_INTERRUPT		REG_BIT(29)
> @@ -65,10 +76,14 @@
>  #define _XELPDP_USBC2_AUX_CH_DATA1	0x16f414
>  #define DP_AUX_CH_DATA(aux_ch, i)	_MMIO(_PORT(aux_ch, _DPA_AUX_CH_DATA1,	\
>  						    _DPB_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
> -#define XELPDP_DP_AUX_CH_DATA(aux_ch, i)					\
> +#define _XELPDP_DP_AUX_CH_DATA(aux_ch, i)					\
>  		_MMIO(_PICK_EVEN_2RANGES(aux_ch, AUX_CH_USBC1,			\
>  					 _DPA_AUX_CH_DATA1, _DPB_AUX_CH_DATA1,	\
>  					 _XELPDP_USBC1_AUX_CH_DATA1,		\
>  					 _XELPDP_USBC2_AUX_CH_DATA1) + (i) * 4) /* 5 registers */
> +#define XELPDP_DP_AUX_CH_DATA(i915__, aux_ch, i)				\
> +		(DISPLAY_VER(i915__) >= 20 ?					\
> +		 _XELPDP_DP_AUX_CH_DATA(__xe2lpd_aux_ch_idx(aux_ch), i) :	\
> +		 _XELPDP_DP_AUX_CH_DATA(aux_ch, i))
>  
>  #endif /* __INTEL_DP_AUX_REGS_H__ */
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
