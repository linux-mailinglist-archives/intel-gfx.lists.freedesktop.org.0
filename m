Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D756C79925D
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Sep 2023 00:43:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 877EB10E210;
	Fri,  8 Sep 2023 22:43:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DDB4410E08A;
 Fri,  8 Sep 2023 22:43:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694212991; x=1725748991;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oUFOCZ96zoKdyIKgjO5pKfgXpl670o1ZOHbftXvkD28=;
 b=ECSWxbf2XyqGePOimIsErjSumd6Xy7HXLqO+zaTPTAeif8gxoFnW4ksb
 TVVBfWtwNDTgHzqDz+wbJX0aprErJlqLgSt6ecfXGiZRFNXwHSne6gswI
 spFyr4VxbzZ2hZkVud3SqwmDNUj52AJkpwOKTB0fzBgp65e1nANaCqacG
 i97guE9QungwtEEkYFYHMDQgYsCvFA9DoMBolR/8lfITfilqVCyu7/U7s
 M8vxnVtrsoYyt62vCz5uXtsAy1nYJkaqrqGeQjCTvbWI1knaiyvjCgXA0
 xBZ2teHyzfFbhx8k5n5uxq/8Ov6c9/rTe+R1Kg3ZMThGxwBBRKhwet15o g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="408742673"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="408742673"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2023 15:43:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10827"; a="736105525"
X-IronPort-AV: E=Sophos;i="6.02,238,1688454000"; d="scan'208";a="736105525"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 08 Sep 2023 15:43:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 15:43:09 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Fri, 8 Sep 2023 15:43:09 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Fri, 8 Sep 2023 15:43:09 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Fri, 8 Sep 2023 15:43:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MjKp3AHgN32g4ItQIca/xnDZAFtzpDCuTcAXDQ83iqqj9Zg1AwxAQo9ePswGAoCksRXLq6ZcSv+K3i2hXvSDY1TiQPyqAr/5awoMHqnx65qgDglXBV9YUU3AZxCPmPFcaI2U2AheCufiz1O1MqbI8AWjLdn3T6nY/Wb2ZRh4l69VHWdQMAEJ95HIuj6Vw/AxSjbiNhifwotYRDplKnfbzuB3tc0vbHdJJmDJianZP1SQta6CK+pSSN3cTZc5qtxdfiBqFCfumctaes93Im6PZhvW0dsCDaLOrsJYj8j6etLg6kNFzKeiyOoW1Rov1kBeL9RxDFYrQdnPOJBbfwnWDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=U9eGaa9Ujjsb2aTfLUdbM2qwJyz+pEO4EB2S757yPGw=;
 b=dR8L0QTcEyQVMyw3L1nB5R5z7Dc05td78UnV8k2JG+w9HMH4CckJkECfNZk6QaAbDejwqZnK6wBlSPeoILP7ihWpOpb/k3djMqx8Wvvj2Ena2SCmuxRsus82XgHUeNEXV8iTwyfnSanqK3fFQxVu40fMW//RFGnzcuFOkSzsnNDkshx1JeHPtTA4ZFFRPOWT/ddc0qJRisruk4hNoqug+yF4tbmyQjVaaeZ/HexI2XtXKJvUxwrBkVv7N8fUpeqze8YqgPjVBkZ7DWmJZFbGraGxKopc6UChi7MS8H1Lz0H2JmXQsFpcoFKE7jz2x0AyL6EgtRjmeWD0OufLX0L5cg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 SJ2PR11MB8297.namprd11.prod.outlook.com (2603:10b6:a03:539::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6768.30; Fri, 8 Sep 2023 22:43:07 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6745.035; Fri, 8 Sep 2023
 22:43:07 +0000
Date: Fri, 8 Sep 2023 15:43:03 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230908224303.GX2706891@mdroper-desk1.amr.corp.intel.com>
References: <20230907153757.2249452-1-lucas.demarchi@intel.com>
 <20230907153757.2249452-25-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230907153757.2249452-25-lucas.demarchi@intel.com>
X-ClientProxiedBy: BY5PR17CA0043.namprd17.prod.outlook.com
 (2603:10b6:a03:167::20) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|SJ2PR11MB8297:EE_
X-MS-Office365-Filtering-Correlation-Id: 03e5d1b2-e5d0-49ba-4cf4-08dbb0bcf828
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ktU1QyRbVl7TLaoZEy0yOfXO0CmSyTtWlqCFuxLlIhU6TN1Ij/17uiy9MLEz0u0PoZf0pynKIBfb0dcqb9BvLX8Sa0sPCNuJ1zpFKD4WMdbix8uYgWeXVwP9JzBD5HfJe56G8UOCcM4d09l+3SRq99jEZnqXJHwHwKs10oGzfuqi3s6tYUnlHL+yJ+tzXhNUlvb7jgAm9L2OR0cPN3jMDR99wSmsY3t9FKn3I7P8Arlluo1e+ZnNCD91VE6ZdJ5CGx+TBKZdZfi7MHISr4zRuqdddHXniT9UtoCLRO60g0xlY+6actuEJ5afoYqmjM9TOUdMo4hQms1WCBpJZyv+XAauxkfJTK9iNZdfHY0o0c6ji05sqPNaxytuadrNKbEELz19M09FdnS6/htgy+wEIjIAW+T7pO5bWDd8MIVSIh7DuTQSEE/WkHCLmkBM98KhgISzEZuhjI2asQcG6yFtG5RZqUEJmCnwL2mbTuKFr5ObjnyxZvX0oo0QyaHpnHvKiN0Mj2eb22kobvA+uuWlpnTMdgPy8Qw6g4I34V38OZ8uYWM/gJ49snA5Z8BFLmUP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(396003)(376002)(39860400002)(346002)(366004)(451199024)(1800799009)(186009)(66556008)(66946007)(66476007)(316002)(6506007)(6486002)(6636002)(41300700001)(6512007)(478600001)(6666004)(8936002)(4326008)(8676002)(6862004)(1076003)(26005)(5660300002)(38100700002)(82960400001)(33656002)(2906002)(450100002)(86362001)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?V90AzxEEgCHBtCypHarAihBCBjxZ+172HqqylBac7U74kWgs0ohEpL4qvXoG?=
 =?us-ascii?Q?daX73ivmM7pj5tkOJb2k6b1FN9CXeKYVxiN+h4LnGr3QCvKw+xGFpFxnQJAq?=
 =?us-ascii?Q?VdpLwSmgxUwOG5dyw1Yj34XOqkY5SuLnOD1NAaQ9jF2yY8Sr4julZ5VrRhuN?=
 =?us-ascii?Q?IZTEltmNIArKlT6ZmJp3i8WcAiQjV47uz0BWl9fcTLpJU+IQSZVQaT+o+PDl?=
 =?us-ascii?Q?j9cET8q59rbSC47FqP5clkaStPHTBJzA1aQCIDBQsdVywxfQkjeNgUxjXzCN?=
 =?us-ascii?Q?Zh3k2lA13yZwSL1LS2CQJ1i4jn7m7POFu5Zyo2SIa4c1IJiRVw2lCet6BVxe?=
 =?us-ascii?Q?ADkqJtoJAiVV6wQ5JD4WO3P5yZG0e+znnPvlEiwFMLG+IzR6ov6PR/frD2iJ?=
 =?us-ascii?Q?oGQxmh04b7semvBGx14kt6rHoOBGBICsrgooiobpTxZS7ES06M21oNShjHdw?=
 =?us-ascii?Q?pAym7aAzkR6/jvBszMh3nG50jK1A/PqcI+yWpTwYSPJ0uKLpCUGlwTHcdp9r?=
 =?us-ascii?Q?YOt+EsHCvCzESPZWLYbppSihzzbAgsjK8QP/ZmFtAdikkOcutRcs/DPnpmoL?=
 =?us-ascii?Q?UnSpgAchTQRNprU8n/xP3mNGrbMBvlJi8p/pEh4qKswKlObRVvrh4wHd36AF?=
 =?us-ascii?Q?e8BJbk2Ces99yPDLTrEJWMnPCmvvAR+LbMwTyPrEuX+iMoLT7ndw/ux5GG3n?=
 =?us-ascii?Q?yry9FaZ/Pb7RcjjBbDlBSyGl/ubvH20IQ0HhYFDEJGdHoaHjfin2gBQOKLSi?=
 =?us-ascii?Q?yWeensQL6uPlP7FHbpXBhgLKDjX9IqT+1w45dQg7Nw3TQhqfKrRiXnqwj1l/?=
 =?us-ascii?Q?ltpZkqZCIbK9WJRK1X1ORGhqjNOcqCiXZ1lYmc1gDX1CX4gMIPCXOl6OzIkp?=
 =?us-ascii?Q?zGzZa0OtAc1hiuikdAGuYTxG8KvXe5B5CvBDqvVwG40SKvhL77JSaZXCBIpm?=
 =?us-ascii?Q?5XLLu+rUO2orQ9VQ97DAvz9Pejj3U20Cs2ob/RWkwTkfrW+0cQeUb5jAuXXC?=
 =?us-ascii?Q?ODjJqnNqIJrkEyw45YevQ6jNNoDd1H6ZiERWYn1D7zQfS4eadULRg8CkKj1b?=
 =?us-ascii?Q?j5I1+SWSD1eE5Emdh9x3FLZXIgzfbn+wE6HgoGoQLrwrQukyTG1XR6omUTUO?=
 =?us-ascii?Q?yvBDUmuUr49zIo8ZB/6P7S0za/7dSO16wFatR8O54396RcexpxerSwF7glAn?=
 =?us-ascii?Q?LXFs+Cx1WxZ8/JFcm+qyNMsTXqr7lFqfuCCJ8Ty/N3373OyOyVyaGZyt9Ngu?=
 =?us-ascii?Q?q1oS2xn+9gUmC4eOlPSgzM03nFlQamLv/q+kVxVIqUfJ8E4Sw0Gx2naks/GV?=
 =?us-ascii?Q?JG2626OCP+9kEM7aDZktKoyei9XCFW2QggdO+QtmfXeVKaqCB9JCOqLZ3b51?=
 =?us-ascii?Q?VAAIabnm+t6PEiCLZecSAjFb+g29NWCTFMQcG5vdpp8+PTK9IkLhTJu9Evhs?=
 =?us-ascii?Q?bTOD2H0+XvkA8+nBGTbEHy4mXmiXWpSoSQ4BOg5uKofzaGcCVd39TUk4T+7h?=
 =?us-ascii?Q?3IPCfF09D36jV6CW46Zkq/YHgwiJeYkcp9ETAyj/45mhmEI4jzWl4KNM92SE?=
 =?us-ascii?Q?wcE6LBlcV1BR37VQ11W9MAWq7ni6mqIifpS8CGgXm/3DaItqcPVgpBNve1Ph?=
 =?us-ascii?Q?Vw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 03e5d1b2-e5d0-49ba-4cf4-08dbb0bcf828
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 22:43:06.8087 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: LqQgdLtWCsrB5L0cDqqOJpQtxvFVO9IYCyZIJt+vAnO1hVVqrUL5vuVs+GtnuNNqmncqfhlzet7KGA24Vg9yo4hJczXkrmEq26VLfwrzS3o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB8297
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 24/27] drm/i915/lnl: Introduce
 MDCLK_CDCLK ratio to DBuf
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

On Thu, Sep 07, 2023 at 08:37:54AM -0700, Lucas De Marchi wrote:
> From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> 
> When we change MDCLK/CDCLK the BSpec now instructs us to write a ratio
> between MDCLK/CDCLK to MBUS CTL and DBUF CTL registers during that
> change.
> 
> Previsouly DBuf state and CDCLK were not anyhow coupled together.  Now
> at compute stage when we know which CDCLK/MDCLK we are going to use, we
> need to update the DBuf state with that ratio, being properly encoded,
> so that it gets written to those registers, once DBuf state is being
> update. The criteria for updating DBuf state is also a CDCLK/MDCLK ratio
> change now.
> 
> v2:
>   - Remove condition check for display version 20 since it's compatible
>     with previous versions (Matt Roper)
>   - Squash the serialization of global state when mdclk_cdclk_ratio
>     changes

I'm not sure I follow the serialization change here; can you add some
more explanation of that to the commit message?  If the mdclk:cdclk
ratio changes then that means we're changing the cdclk (either on its
own if only the squashing waveform is changing, or along with the mdclk
if the PLL is also getting reprogrammed).  In either case we should
already be serializing in intel_cdclk_need_serialize() due to the cdclk
change, right?  Is the new check added here actually important somehow?


Matt

> 
> Bspec: 68864, 69482, 69445
> Cc: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 28 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/skl_watermark.c  | 28 ++++++++++++++++---
>  drivers/gpu/drm/i915/display/skl_watermark.h  |  1 +
>  .../gpu/drm/i915/display/skl_watermark_regs.h |  2 ++
>  4 files changed, 55 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index abe845906c7c..677a50c28dae 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -39,6 +39,7 @@
>  #include "intel_pcode.h"
>  #include "intel_psr.h"
>  #include "intel_vdsc.h"
> +#include "skl_watermark.h"
>  #include "vlv_sideband.h"
>  
>  /**
> @@ -1800,6 +1801,16 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
>  	return vco == ~0;
>  }
>  
> +/* Return the MBUS_CTL's encoding of the mdclk/cdclk ratio */
> +static int get_mdclk_cdclk_ratio(struct drm_i915_private *i915,
> +				 const struct intel_cdclk_config *cdclk_config)
> +{
> +	if (DISPLAY_VER(i915) >= 20)
> +		return DIV_ROUND_UP(cdclk_config->vco, cdclk_config->cdclk) - 1;
> +
> +	return 1;
> +}
> +
>  static int cdclk_squash_divider(u16 waveform)
>  {
>  	return hweight16(waveform ?: 0xffff);
> @@ -2735,6 +2746,8 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
>  	struct intel_crtc_state *crtc_state;
>  	int min_cdclk, i;
>  	enum pipe pipe;
> +	struct intel_dbuf_state *new_dbuf_state;
> +	struct intel_dbuf_state *old_dbuf_state;
>  
>  	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
>  		int ret;
> @@ -2768,6 +2781,21 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
>  		}
>  	}
>  
> +	new_dbuf_state = intel_atomic_get_new_dbuf_state(state);
> +	old_dbuf_state = intel_atomic_get_old_dbuf_state(state);
> +	if (new_dbuf_state && old_dbuf_state) {
> +		new_dbuf_state->mdclk_cdclk_ratio =
> +			get_mdclk_cdclk_ratio(dev_priv, &cdclk_state->actual);
> +
> +		if (new_dbuf_state->mdclk_cdclk_ratio != old_dbuf_state->mdclk_cdclk_ratio) {
> +			int ret;
> +
> +			ret = intel_atomic_serialize_global_state(&new_dbuf_state->base);
> +			if (ret)
> +				return ret;
> +		}
> +	}
> +
>  	min_cdclk = max(cdclk_state->force_min_cdclk,
>  			cdclk_state->bw_min_cdclk);
>  	for_each_pipe(dev_priv, pipe)
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 64a122d3c9c0..1fefb02876c8 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3472,6 +3472,16 @@ int intel_dbuf_init(struct drm_i915_private *i915)
>  	return 0;
>  }
>  
> +static int get_mbus_mdclk_cdclk_ratio(struct drm_i915_private *i915,
> +				      int mdclk_cdclk_ratio,
> +				      int mbus_joined)
> +{
> +	if (mbus_joined)
> +		return (mdclk_cdclk_ratio << 1) + 1;
> +
> +	return mdclk_cdclk_ratio;
> +}
> +
>  /*
>   * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
>   * update the request state of all DBUS slices.
> @@ -3483,10 +3493,16 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
>  	enum dbuf_slice slice;
>  	const struct intel_dbuf_state *dbuf_state =
>  		intel_atomic_get_new_dbuf_state(state);
> +	int tracker_state_service;
>  
>  	if (!HAS_MBUS_JOINING(i915))
>  		return;
>  
> +	tracker_state_service =
> +		get_mbus_mdclk_cdclk_ratio(i915,
> +					   dbuf_state->mdclk_cdclk_ratio,
> +					   dbuf_state->joined_mbus);
> +
>  	/*
>  	 * TODO: Implement vblank synchronized MBUS joining changes.
>  	 * Must be properly coordinated with dbuf reprogramming.
> @@ -3494,13 +3510,15 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
>  	if (dbuf_state->joined_mbus) {
>  		mbus_ctl = MBUS_HASHING_MODE_1x4 | MBUS_JOIN |
>  			MBUS_JOIN_PIPE_SELECT_NONE;
> -		dbuf_min_tracker_val = DBUF_MIN_TRACKER_STATE_SERVICE(3);
>  	} else {
>  		mbus_ctl = MBUS_HASHING_MODE_2x2 |
>  			MBUS_JOIN_PIPE_SELECT_NONE;
> -		dbuf_min_tracker_val = DBUF_MIN_TRACKER_STATE_SERVICE(1);
>  	}
>  
> +	dbuf_min_tracker_val = DBUF_MIN_TRACKER_STATE_SERVICE(tracker_state_service);
> +
> +	mbus_ctl |= MBUS_TRANS_THROTTLE_MIN_SELECT(dbuf_state->mdclk_cdclk_ratio);
> +
>  	intel_de_rmw(i915, MBUS_CTL,
>  		     MBUS_HASHING_MODE_MASK | MBUS_JOIN |
>  		     MBUS_JOIN_PIPE_SELECT_MASK, mbus_ctl);
> @@ -3521,7 +3539,8 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
>  
>  	if (!new_dbuf_state ||
>  	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices &&
> -	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus))
> +	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus &&
> +	     new_dbuf_state->mdclk_cdclk_ratio == old_dbuf_state->mdclk_cdclk_ratio))
>  		return;
>  
>  	WARN_ON(!new_dbuf_state->base.changed);
> @@ -3542,7 +3561,8 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
>  
>  	if (!new_dbuf_state ||
>  	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices &&
> -	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus))
> +	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus &&
> +	     new_dbuf_state->mdclk_cdclk_ratio == old_dbuf_state->mdclk_cdclk_ratio))
>  		return;
>  
>  	WARN_ON(!new_dbuf_state->base.changed);
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
> index f91a3d4ddc07..54db5c7d517e 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.h
> @@ -56,6 +56,7 @@ struct intel_dbuf_state {
>  	u8 slices[I915_MAX_PIPES];
>  	u8 enabled_slices;
>  	u8 active_pipes;
> +	u8 mdclk_cdclk_ratio;
>  	bool joined_mbus;
>  };
>  
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark_regs.h b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> index 628c5920ad49..4c820f1d351d 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> +++ b/drivers/gpu/drm/i915/display/skl_watermark_regs.h
> @@ -38,6 +38,8 @@
>  #define MBUS_HASHING_MODE_2x2		REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 0)
>  #define MBUS_HASHING_MODE_1x4		REG_FIELD_PREP(MBUS_HASHING_MODE_MASK, 1)
>  #define MBUS_JOIN_PIPE_SELECT_MASK	REG_GENMASK(28, 26)
> +#define MBUS_TRANS_THROTTLE_MIN_MASK	REG_GENMASK(15, 13)
> +#define MBUS_TRANS_THROTTLE_MIN_SELECT(ratio)	REG_FIELD_PREP(MBUS_TRANS_THROTTLE_MIN_MASK, ratio)
>  #define MBUS_JOIN_PIPE_SELECT(pipe)	REG_FIELD_PREP(MBUS_JOIN_PIPE_SELECT_MASK, pipe)
>  #define MBUS_JOIN_PIPE_SELECT_NONE	MBUS_JOIN_PIPE_SELECT(7)
>  
> -- 
> 2.40.1
> 

-- 
Matt Roper
Graphics Software Engineer
Linux GPU Platform Enablement
Intel Corporation
