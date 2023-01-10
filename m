Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 814F0663682
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Jan 2023 02:02:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D4F6A10E523;
	Tue, 10 Jan 2023 01:02:19 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CBAA10E044
 for <intel-gfx@lists.freedesktop.org>; Tue, 10 Jan 2023 01:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673312536; x=1704848536;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Yks88MQky3hpaan8A544e9dFXSUzROSxm5X4mThbDjk=;
 b=XHB5b6sZJ1XFf0FfCu6jQzRCEWPLzriWLBa2cgsWA7k7F7s5Cr7urCGN
 umBKXCjZ2nwCETJcU7o7vImFDU8hMl+pHbY8KuOPklz/NmKesbRiCSzOX
 HR2b3tf+LYdJVibSO0ddFciiofOMyDUVCgJhA/Y+8V4n9pf/4jgOEX6+m
 jhV2kCKVqFuo4eucmwGXrzYXYPx9ow2VojWQpRuu1PfIXiFFUETSRBz7x
 BQo3T84aHbriHkV2xf7r5im5YjCjeBkrN24QBuJbSe8lYFDReoQ7rFZEO
 SSXK/xR3XrsCEmsPu4rG+rWXeUZgFS/CSRIvEv0sVcUsrbKTjPAp9n3qH A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="302723926"
X-IronPort-AV: E=Sophos;i="5.96,313,1665471600"; d="scan'208";a="302723926"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 17:02:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="656858493"
X-IronPort-AV: E=Sophos;i="5.96,313,1665471600"; d="scan'208";a="656858493"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga002.jf.intel.com with ESMTP; 09 Jan 2023 17:02:15 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 9 Jan 2023 17:02:15 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 9 Jan 2023 17:02:15 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 9 Jan 2023 17:02:15 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XZBCDCkODPySzQKp1lBQ1z5ejdTMyRyjGo5FggffKDif4ddzU8MKJhrS52nDCi38UgzT9oR/z+/YXlfs5NFOsDPe5KSggedMDozMJCGyN4uTKE3ZYcdm7UdnKpIe7uLkTV1pyv5YOo4ViSQUnAT7wwy4dalkpP96f6QmWK5cA5wLpB0kiRtxOF6+/ZjaniOJd4p/kHOQ9b0wavf33Wx/tLqgsCQ4KeN7Qxz66VpG5+cb6pUKWxDJqZ+N891SPj5NpJhWXjclf+3fSWjqOW49Dd+VD8bvv+jJMRq1p0oENBD+YXKM/OG1SoPz1JZ1z8tVywR6WhUoqrlTBVlf5V6N9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uVLI5iIcXY6MWmqF8sXl/Ux80FUgaGRHkM2g89fzP6c=;
 b=GcxPbKxLuBQDwgzURnCP50M4VTE0rEqMXrbVkCMLI5HHlsAJTDEHHIkzJWOUX52tlA4dXH5hXHD37X08LSUMUiukRRsoZfrrqEFODHHk1ZKv+zfKI0OM5KNXZmR84CvsnUvOLYp6NNTgv49xbhxPJWsbiPPBOllwr/MUKi0q4VNiRHKv+iP3girDtMLR8ZzKB0YSBJ4HyckrmvkgZRHpTYTBVE3k3rvzX3Aio0gnGDr3NAXNJYg+suaGyGyhjqhSey08wLqv37OxjHoXd/PMYz563zP/mAlph3cS3h65fGvoz9SaDnBC2Udln0Eg6HLqW1P/7U17LTLuw1MJFWFtoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SA2PR11MB4890.namprd11.prod.outlook.com (2603:10b6:806:117::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5986.18; Tue, 10 Jan
 2023 01:02:13 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::68d0:f8e0:eaf3:982e%9]) with mapi id 15.20.5986.018; Tue, 10 Jan 2023
 01:02:13 +0000
Date: Mon, 9 Jan 2023 17:02:10 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Message-ID: <Y7y5EvDoqJGwYkXR@mdroper-desk1.amr.corp.intel.com>
References: <20230107053643.1984045-1-chaitanya.kumar.borah@intel.com>
 <20230107053643.1984045-2-chaitanya.kumar.borah@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230107053643.1984045-2-chaitanya.kumar.borah@intel.com>
X-ClientProxiedBy: BY5PR17CA0007.namprd17.prod.outlook.com
 (2603:10b6:a03:1b8::20) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SA2PR11MB4890:EE_
X-MS-Office365-Filtering-Correlation-Id: 8c6de411-7c66-4851-18e2-08daf2a64f14
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 3GKohaSmvR7/x1Y5RwiqwNRXhWbG35rT65yl7BsAU0ln9DS9zLgCRe+SM8aLKR+3F9ydOJ6ot9F6hIpa4imBnuV0ZxxdM8RnaiJ1BDVHjivEI4MGwM+u+BbIho101pj+YzdZI/2ZDtkVwbPEMcdEeN5DQoweVruU+NuY3YyRW2u8wbP0QCbvuT/I5ZAObF/o4vXaCxXDHqZB5ZPlA7zpJFfa723sIFAt/+M8ee35KL8s8WnKKxdWY0Mw7ZO/ujm2CE/4qYrJFiJ8xRqMRYWD0L7K0ooz63BDN2t00CCZ+fh+pYOpJw2fVtE/+d2M40zPBe8CzQFJITr9DOQFDK+EAibha9+qLV8luPQXb+N3Pqmx8FcLNgPU5GFc5ab9z3TY9uqgxdzl2ubH0Krt4RNGfZms883Q0PcMeGSlO1DKLosV8BcoNtwrslSAOx8OmLsBXrtXi3xqr+Dq3bP7po322VR3x3JXHcP+VQodZvQYuvh0u7k2L9+qoLZia4QY9IRro/GQL046cjoXc+ZXIYB2Pp/OJH8Fzu42mvL8f4es7jW8oxxH+lwHnMX/XP7fQuLDFNWIf5pJQ9NvmDB91eU4B/Gb+VUZJYkV6Mkn31RkB3aPjj095x0RBbWcbad+kGVQieTjBPwWNBJ9N9csiktrSw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(39860400002)(376002)(346002)(366004)(136003)(451199015)(66556008)(38100700002)(82960400001)(8676002)(66476007)(4326008)(66946007)(86362001)(6636002)(41300700001)(6506007)(6512007)(6862004)(8936002)(5660300002)(83380400001)(6486002)(186003)(478600001)(26005)(2906002)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?2zTnPSgjWrc3hEJHrAS3m4oZCpZd671z4sl9kKaoRMk4c39RECGQyYRHAL5g?=
 =?us-ascii?Q?zF4gFuoP+ss26b3dTjUtdlk64MCjRwi4WGz3Kn8bENCtrZ856Q1J6qe3tdAr?=
 =?us-ascii?Q?S4NBjGJTZSGKhQqFIc26KF5XzQg4CXsKrsKxAllWCcqv1420a5ARUhj2sxeO?=
 =?us-ascii?Q?f5dE/hxrnMe04efRNYtXz3/3vf8sohCsYMCBbuOHOUf+j3vyeCTKGFaBZxK4?=
 =?us-ascii?Q?lX7UIf/m14Rwp+b7KXC2fPXTnCgd17c6zcDBBB2sCqFddcmHSD3HMoZuJrr4?=
 =?us-ascii?Q?c7A3OgCq5y+3Av7SolygYJbhMabWGHtLOz+tRjIvL3CXqN+B+aDO5WrvETlR?=
 =?us-ascii?Q?kKqo1WAbYXvUlrxj6E2EThgwIG9Kn1FNMlpGsXMv+UjBtu+QBa6MyceQ9IyB?=
 =?us-ascii?Q?UCHjj0NrjnFgmeVkHm6NuT9HnJ4SkfH4yGL0c0FUS1v+UIRYLkRpfVMADC0f?=
 =?us-ascii?Q?WRvGAB6iRl8c76g/jhDvoqUd7gvnpsQpL9LgtLrgiB8ib9V47epOiUcjmMOT?=
 =?us-ascii?Q?VcOYUE++FeplYHPOZaKzBW/WwpocH7VVr/r6uKobgPW7yrq/qldbhKZYSIWF?=
 =?us-ascii?Q?weW3QTFGC1Jrs9qMOZXQTFlOjvLHqID4azYBG91uzRpxAVJ48+KOfb/wwdMs?=
 =?us-ascii?Q?WhRaSs6c0oSx7pTAamAx/MN/rMxrKmnmzdm93M5H8+dPcMht9kP0CtEHFR3+?=
 =?us-ascii?Q?NMWShwUwbNgcxYPCyUj5piEC5mOSjvY4zgdy5DFBYqCV4Vi+Gnrqjhri3MaW?=
 =?us-ascii?Q?V1qCFH1ZuXfr4Xjx1xtEVhnVkW2KjYvgPRDDzEAP/ja3V3MJdb7UcwGb52RA?=
 =?us-ascii?Q?jjBpEIyD72Imz9tImrhTygvQwv6SiltCrNQU1Di5QpChFQAyDuIMrZWtJFSX?=
 =?us-ascii?Q?YMunKrk6Rgr6Pp+4fiFe1ezrDfZRqdXRztnFrZRaZj+2r2tPg4FM17+59ntq?=
 =?us-ascii?Q?0tdkPv+DhGH8EsGIaHWVlSX63LuursW0x098IjQju9mEFMHhHvQelKFH3rQN?=
 =?us-ascii?Q?fdn0lwYjQ60N9lAg9Po/4DI9nHfbaRU9fQeF80iLPRUcZnN69ElVEoVaBUUg?=
 =?us-ascii?Q?l3XuEtDQ1utjNAzJZ2l83H09olapVoIYBOcIWM9z/anuc/XYvCWUG2QE+Rqh?=
 =?us-ascii?Q?x0YdQ1G0tTxKqBZYHqpDN04NK6Zfwstf0fFrcydAEISPuYQhImVL7IKfdpyq?=
 =?us-ascii?Q?HLO80BwtXMnmV1iEjaNQHapuX67siwLFx6ru+9njApH1cyF77DagmCHjqMOD?=
 =?us-ascii?Q?MrCO1je331YHXoJHbFjn8XcFGHKmVH2hLk8lJ1/5GCrQFG5O2URGPoyjwFRO?=
 =?us-ascii?Q?1KaoIVAOwrZuvQ2OwKfBC1KcgZZOQ/5wb9Z+veajqyoo6fNOd61a8kSMaIjZ?=
 =?us-ascii?Q?8rrSAGrOpnt9vXf30pL81SB5FY7utm0odEn1HjZ4mcNtL6R8Ys9eIrO2sr/Z?=
 =?us-ascii?Q?HL8l7VVAsdzRq3OYq8EAf1qzNaRn1HcfsoetKQYLmpqebh5UaLjXTNo3GJNR?=
 =?us-ascii?Q?3xyUCv1PlrxLfJ8Xj882um0ewMwlW3yyyKx+Vu1zE60vL5ATXS021cksbJeh?=
 =?us-ascii?Q?nQW0jDTQdXPxOliMjUVeZzAnBH5Ki4jeiEeB13nggTY3vxuZr7qF7mwlb6mz?=
 =?us-ascii?Q?AA=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c6de411-7c66-4851-18e2-08daf2a64f14
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2023 01:02:13.2963 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7O+siOpoSQOKRO3F/AdoQ1tTMpU9+r6H3I+lu1xGT5KvlndP+ld6kmaycKJVBF8FlpauEjhZ7ztr2M6LieWBafIAUju4hFuVxYrqplHLwZ4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4890
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [RFC 1/2] drm/i915: Add rplu sub platform
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
Cc: ville.syrjala@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Jan 07, 2023 at 11:06:42AM +0530, Chaitanya Kumar Borah wrote:
> Adding RPL-U as a sub platform. In RPL-U a new CDCLK step has
> been added so we need to make a distinction between RPL-P
> and RPL-U while CDCLK initialization.
> 
> Adding a sub-platform, enables us to make this differentiation
> in the code.
> 
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  arch/x86/kernel/early-quirks.c           | 1 +
>  drivers/gpu/drm/i915/i915_drv.h          | 2 ++
>  drivers/gpu/drm/i915/i915_pci.c          | 1 +
>  drivers/gpu/drm/i915/intel_device_info.c | 7 +++++++
>  drivers/gpu/drm/i915/intel_device_info.h | 1 +
>  drivers/gpu/drm/i915/intel_step.c        | 3 +++
>  include/drm/i915_pciids.h                | 7 +++++--
>  7 files changed, 20 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/x86/kernel/early-quirks.c b/arch/x86/kernel/early-quirks.c
> index a6c1867fc7aa..1ba9926c8974 100644
> --- a/arch/x86/kernel/early-quirks.c
> +++ b/arch/x86/kernel/early-quirks.c
> @@ -559,6 +559,7 @@ static const struct pci_device_id intel_early_ids[] __initconst = {
>  	INTEL_ADLN_IDS(&gen11_early_ops),
>  	INTEL_RPLS_IDS(&gen11_early_ops),
>  	INTEL_RPLP_IDS(&gen11_early_ops),
> +	INTEL_RPLU_IDS(&gen11_early_ops),
>  };
>  
>  struct resource intel_graphics_stolen_res __ro_after_init = DEFINE_RES_MEM(0, 0);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 48fd82722f12..c88e514728a0 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -619,6 +619,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_N)
>  #define IS_ADLP_RPLP(dev_priv) \
>  	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPL)
> +#define IS_ADLP_RPLU(dev_priv) \
> +	IS_SUBPLATFORM(dev_priv, INTEL_ALDERLAKE_P, INTEL_SUBPLATFORM_RPLU)
>  #define IS_HSW_EARLY_SDV(dev_priv) (IS_HASWELL(dev_priv) && \
>  				    (INTEL_DEVID(dev_priv) & 0xFF00) == 0x0C00)
>  #define IS_BDW_ULT(dev_priv) \
> diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
> index 6cc65079b18d..e9f3b99b3e00 100644
> --- a/drivers/gpu/drm/i915/i915_pci.c
> +++ b/drivers/gpu/drm/i915/i915_pci.c
> @@ -1234,6 +1234,7 @@ static const struct pci_device_id pciidlist[] = {
>  	INTEL_DG1_IDS(&dg1_info),
>  	INTEL_RPLS_IDS(&adl_s_info),
>  	INTEL_RPLP_IDS(&adl_p_info),
> +	INTEL_RPLU_IDS(&adl_p_info),
>  	INTEL_DG2_IDS(&dg2_info),
>  	INTEL_ATS_M_IDS(&ats_m_info),
>  	INTEL_MTL_IDS(&mtl_info),
> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
> index 849baf6c3b3c..88f3da63948b 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.c
> +++ b/drivers/gpu/drm/i915/intel_device_info.c
> @@ -201,6 +201,10 @@ static const u16 subplatform_rpl_ids[] = {
>  	INTEL_RPLP_IDS(0),
>  };
>  
> +static const u16 subplatform_rplu_ids[] = {
> +	INTEL_RPLU_IDS(0),
> +};
> +
>  static const u16 subplatform_g10_ids[] = {
>  	INTEL_DG2_G10_IDS(0),
>  	INTEL_ATS_M150_IDS(0),
> @@ -268,6 +272,9 @@ static void intel_device_info_subplatform_init(struct drm_i915_private *i915)
>  	} else if (find_devid(devid, subplatform_rpl_ids,
>  			      ARRAY_SIZE(subplatform_rpl_ids))) {
>  		mask = BIT(INTEL_SUBPLATFORM_RPL);
> +	} else if (find_devid(devid, subplatform_rplu_ids,
> +			      ARRAY_SIZE(subplatform_rplu_ids))) {
> +		mask = BIT(INTEL_SUBPLATFORM_RPLU);
>  	} else if (find_devid(devid, subplatform_g10_ids,
>  			      ARRAY_SIZE(subplatform_g10_ids))) {
>  		mask = BIT(INTEL_SUBPLATFORM_G10);
> diff --git a/drivers/gpu/drm/i915/intel_device_info.h b/drivers/gpu/drm/i915/intel_device_info.h
> index d588e5fd2eea..3e3ca5eb073f 100644
> --- a/drivers/gpu/drm/i915/intel_device_info.h
> +++ b/drivers/gpu/drm/i915/intel_device_info.h
> @@ -127,6 +127,7 @@ enum intel_platform {
>   * bit set
>   */
>  #define INTEL_SUBPLATFORM_N    1
> +#define INTEL_SUBPLATFORM_RPLU  2
>  
>  /* MTL */
>  #define INTEL_SUBPLATFORM_M	0
> diff --git a/drivers/gpu/drm/i915/intel_step.c b/drivers/gpu/drm/i915/intel_step.c
> index 84a6fe736a3b..df75057eaa65 100644
> --- a/drivers/gpu/drm/i915/intel_step.c
> +++ b/drivers/gpu/drm/i915/intel_step.c
> @@ -194,6 +194,9 @@ void intel_step_init(struct drm_i915_private *i915)
>  	} else if (IS_ADLP_RPLP(i915)) {
>  		revids = adlp_rplp_revids;
>  		size = ARRAY_SIZE(adlp_rplp_revids);
> +	} else if (IS_ADLP_RPLU(i915)) {

Since the two blocks are identical, it might be slightly preferable to
just combine the conditions; that will also help make it clear that this
is intentional and not a copy/paste mistake.

        } else if (IS_ADLP_RPLU(i915) || IS_ADLP_RPLP(i915)) {
                ...

> +		revids = adlp_rplp_revids;
> +		size = ARRAY_SIZE(adlp_rplp_revids);
>  	} else if (IS_ALDERLAKE_P(i915)) {
>  		revids = adlp_revids;
>  		size = ARRAY_SIZE(adlp_revids);
> diff --git a/include/drm/i915_pciids.h b/include/drm/i915_pciids.h
> index 4a4c190f7698..87bb7e26dfb6 100644
> --- a/include/drm/i915_pciids.h
> +++ b/include/drm/i915_pciids.h
> @@ -687,10 +687,13 @@
>  /* RPL-P */
>  #define INTEL_RPLP_IDS(info) \
>  	INTEL_VGA_DEVICE(0xA720, info), \
> -	INTEL_VGA_DEVICE(0xA721, info), \
>  	INTEL_VGA_DEVICE(0xA7A0, info), \
> +	INTEL_VGA_DEVICE(0xA7A8, info)
> +
> +/* RPL-U */
> +#define INTEL_RPLU_IDS(info) \
>  	INTEL_VGA_DEVICE(0xA7A1, info), \
> -	INTEL_VGA_DEVICE(0xA7A8, info), \
> +	INTEL_VGA_DEVICE(0xA721, info), \
>  	INTEL_VGA_DEVICE(0xA7A9, info)

I know the bspec orders them like this, but it's probably better to just
sort these two lists numerically.  These bspec pages get reshuffled so
often these days that trying to match the bspec's strange ordering isn't
really worth it.


Matt

>  
>  /* DG2 */
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
