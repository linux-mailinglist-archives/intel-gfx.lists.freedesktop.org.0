Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 96518787C13
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Aug 2023 01:45:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0F1210E0CE;
	Thu, 24 Aug 2023 23:45:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0EDE510E0CE;
 Thu, 24 Aug 2023 23:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692920755; x=1724456755;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=y4nR1xKPxh2yGcF0H0ixafDRQxUa7irLZ/p2rtnSIw0=;
 b=hrzaMIgiDwIUyZxh5kEknNa+AXVR89wfK9cCufefSR4nqVTdhn7/sG1n
 IoHAsOoNM6Iz8M1YkhZwFDetPrl9DwL1sMp66zecSu1luGJXV2MnUqLlm
 vDZPQDSHoU9JneviTHX0TvQQ9ZHz5pgbxb2pEIox5tKzDQmY7YCFJLpCp
 5/DCL66cUKRvBwLeF1OayilKlVTfed52L621BiOgPLRbHwr4bC26KrxVP
 UDNYVunY0peiI8HUaY8Nh94vTnXse3wt2HrgzYX8PbbecdHxfZUfKebtd
 2MC3pRXo6rLgZMSu/Go8kHg+CRk0wsKJGyaGRvsAhgRCJKWKsSor+ywIO w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="354115333"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="354115333"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 16:45:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10812"; a="827372024"
X-IronPort-AV: E=Sophos;i="6.02,195,1688454000"; d="scan'208";a="827372024"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by FMSMGA003.fm.intel.com with ESMTP; 24 Aug 2023 16:45:53 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 16:45:53 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 16:45:52 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 16:45:52 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 16:45:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pj22KSvHw55NnGGYikLXNTCiwLiq7Xbh+D5aOg+U9g4YVgODCVApPoawZ+2QoEmz1/IGDfiUO7xQOa6vUD+CuuNsFOonXwpyAINvV2ARfrG0eChWjxRSGxvBmjx8RN1bAEtX8rtWE9qwwx41ZFGgighL9qd74ti9agTHnK4OdxOHaN+LqjKeQtGgMObMTnaoOQz0AqK8mztaGs4CzG6aVIsX/0klKdEBmL0wcVNAJc/GCuvukgJtpV4U6+1pg81ZqFLgf21MpKK5zkgjJJ6zOPBpHgRaatdm0isUi/qx/4OR3fRg12hVW23LbjVcRdPgau644mkvn91+Esoe4HXfTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a+fGfeVj8ocnN4th8uQ2N+BnPHUgUnpgz/Epw6Ikm8o=;
 b=EFcwj3aFRFHOrgnVWyNKWs5AxPrPLepqY4YRz2U6pzzvQHDqXB5eNQ0q8RwmB7P6vujEg/P69Mo3nXHmTn6DWFRZYQMCskAm6uj08eLW4AuYyzSLJ62bRezzsj0Iltq3DQB3QjqGy5mTl+YmFujbea9DUo9oaLxjUrfPlMgw3z23HFuem10GasX0A5jMUNIL29x1P5sNc5IcFa7WBDvO5xSBedj8ruhy6XI678mOM+iL/lQrKh9C8Y6DQTrEnzpjP8KCVCIEFWlAwJL5I80g0GWl7WOFM8ORzEccNIewf3Al5AuVlS+gPkhZCmpntAQseJd285Y6eR+u6BwnJg+IYQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DS7PR11MB7859.namprd11.prod.outlook.com (2603:10b6:8:da::22) by
 MW3PR11MB4697.namprd11.prod.outlook.com (2603:10b6:303:2c::15) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6699.27; Thu, 24 Aug 2023 23:45:50 +0000
Received: from DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66]) by DS7PR11MB7859.namprd11.prod.outlook.com
 ([fe80::48d9:4c34:35b:f66%4]) with mapi id 15.20.6699.027; Thu, 24 Aug 2023
 23:45:50 +0000
Date: Thu, 24 Aug 2023 16:45:47 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <20230824234547.GC1529860@mdroper-desk1.amr.corp.intel.com>
References: <20230823170740.1180212-1-lucas.demarchi@intel.com>
 <20230823170740.1180212-36-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230823170740.1180212-36-lucas.demarchi@intel.com>
X-ClientProxiedBy: SJ0P220CA0003.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::34) To DS7PR11MB7859.namprd11.prod.outlook.com
 (2603:10b6:8:da::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DS7PR11MB7859:EE_|MW3PR11MB4697:EE_
X-MS-Office365-Filtering-Correlation-Id: a3f5c6e3-7169-43fc-debf-08dba4fc3f17
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rfsMfbfeBheRTD5d0bZxXPOkYq10oGyVPQ9b/XBdBlVQY+39OPsTo8M4Zlv1+8tstLMp2YDpYyBT0Y+I7SOgbkKVFQ82CzgU7rktoLqPNiRplDZFVwqoY3lAOuiaKcchi9ZMSE72QjpCJGP5Zgj5ioCN8mZHxlTykJFatNCJTlt3cAB0koGcZLx419G750REhzVZdOlzss3nkSO+9Br0GfS6MWUpy3QC+rD5FYkZKGIx5RRFFPfVKevDgtqz9N7I0pdoEOtzKJBDY1StdwZ29dmeDIh58tzz7G8rOiU9F1de5Ylyo+RiYz20sgk2uutHaa/gtqW130eB52ACOS3uNiT4ZOaaUcyEjNHOGDOUtM+xrMsMQMMhzcA1pnqzqsGZ1zI4Dn1ceul+lf+hQOzNoNnJE96qhTyGMwT90nAOULEouGlwdDe8fieJK5oCWzZE//8vzcVmhYcFAc7cPe5MgRbRzpn00R+yQnn4dCYjWQlSPAFNtUhZzAkDjgqgiyjP9BZoo/EgNbgFFntMGV+CgM5HfLctSyVYR3VZf0urwUi6xl2HtYC1DDzuNPpZs4lz
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB7859.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(376002)(39860400002)(396003)(136003)(346002)(186009)(1800799009)(451199024)(1076003)(5660300002)(107886003)(4326008)(8676002)(450100002)(6862004)(8936002)(83380400001)(33656002)(26005)(6666004)(38100700002)(82960400001)(66556008)(66946007)(66476007)(54906003)(6636002)(316002)(478600001)(41300700001)(6512007)(6506007)(2906002)(86362001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?LbC/JKsnd8T4Xsd+M+BQiakMs14b8LqKScGi+XMZwHgr5u7/iJFhNXPjC3Iy?=
 =?us-ascii?Q?qujGniQYYwG3gz1iNobZqTf5hWQnJSeZMCYf/4aLBTVB62qsNyUkLPGki2SA?=
 =?us-ascii?Q?Zb0I4l3jeUC9cICs5vGskVsqad/UXv0aLUQITnxwvi13FvFDTk+5EYLVpEma?=
 =?us-ascii?Q?HRIpkqu6wXIkEr0jexMcUtGymKS5DlcplQPjw7zofUBKybI6vd/fxq3Gdz1J?=
 =?us-ascii?Q?z2EXHyMTdHMMK8upILBYVUar7SNgzHgwdAKNGlp0Iznm6lefaCG9R2MGdfQ7?=
 =?us-ascii?Q?irED/fvcrCYrYSJSjVDoX9ardWcK25laFcPQZuh0Hm4MatNpepc0JPgxyuQ4?=
 =?us-ascii?Q?xsOizmRCKQ6tSuiKeBNqacTwkYBDxWHbFncD91nh9BHydY2itBS54CWmqk9G?=
 =?us-ascii?Q?RuvnuFXgqJhogdOH0nbbYQw3DgahMeNIexfXp3cdcbJIg7mWOsqbwbk7iuMi?=
 =?us-ascii?Q?zYQD+E6kvOv8+iOuNsWCPZlPOvE09lY2fPZSMlBz8Ok2mAZFI+j+Q9wG+SQZ?=
 =?us-ascii?Q?C3oCt4qIOhcqWl+d6Lz9SNcYPo5blBezLlREUlPPxXy9Eiokv9WS+L4iS8Ij?=
 =?us-ascii?Q?XEweIIb4UC8kE0hTaakNPhYA6vQkypkgRe1lArjcARgkiy1ZUSFxF/vtYuxd?=
 =?us-ascii?Q?Hgkcx4yvfyUQW1sGntdK3ZPhjXl5K9/myQLqZwV+CTTyQON3nMVfypFQBg9f?=
 =?us-ascii?Q?ei6mDldrQ6QUMdlD8xMhd/EAtiOUuCZZNa3sZ7Cgp37i7sTk0K61irksAWmV?=
 =?us-ascii?Q?FXNwXcLDetNzelvdQKku2kZxiCwamx3JsKb3PutVxpjnH6Fbp2S2UHeu3c8y?=
 =?us-ascii?Q?plGWyaKmEhW7r92o8sW8et73xkmbtP7rdncx0kasrsnjGnCw6MzhN31duISp?=
 =?us-ascii?Q?cCsIfq4aKdf8ClVc+EVroKKx+rmYecMiDL65qyFbjOx3UZamWmqRwjRI9pTF?=
 =?us-ascii?Q?oM7pUcJwgAYyCiiJjIK2JAbZnwKKiojqsvOKewwE7OKlkYInDaNPhllF/tuf?=
 =?us-ascii?Q?Jf8gZM3DYrWz5nz+qSL0GbcJ/wqZvVHxByllgPmQXdQ8mZhTgUKz3N4qwnoO?=
 =?us-ascii?Q?tDrwMN/it+IQ5IQdViDgzKhBA8J7LLo86oSTV68UPfp0WknLSRzgxqgSBwQV?=
 =?us-ascii?Q?053u+mVC01rWvB9cvmmbjAvJ5R8M+eamNbxZQdwN5HAUf70ErKqPKYOFRFMf?=
 =?us-ascii?Q?5BTGBj2ySgmo5TNv8mJ8g6Rj8LwxBf61gFqxbsGPpNjzbRfuIsMmfTVZ9zlT?=
 =?us-ascii?Q?JYWaeY3IFZ4v4zRg52tcWQwmgmbs3Ert/4niP0Y7/4R3xispYrYEyP29/oRW?=
 =?us-ascii?Q?+KtYA+lE89sIQVnl7d4YllonAmhkAgPlCr1BBb957G5QND3MtlFIGCPflrrN?=
 =?us-ascii?Q?JbqPJ9POV0UZEgPFj3rOZCQfFl4XFQ0StMPWq///Eod7+xWCukrY8Hpvz5sb?=
 =?us-ascii?Q?LDTNU9LhWjnR4VrbGkr7gYbmcfQiooprzf+PvSqy7N9HoCaQy++Lksy4QXbA?=
 =?us-ascii?Q?4HNL8vIS4pAJesREckEJ4NaOuM1Q5Wy8xPZj+7FAONH6rAjKnIUEWirx6Zha?=
 =?us-ascii?Q?xl05RqpnJmb4DmRD8J0bg37U20/pGb+/CDcFtE6kehw7UPRvmPbvrFAiWM8t?=
 =?us-ascii?Q?6Q=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a3f5c6e3-7169-43fc-debf-08dba4fc3f17
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB7859.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Aug 2023 23:45:50.2921 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uxdThP7LgQWWwJQODyWeKS62kak6klIN8LgEKYKX74/P4LqXc8u4co9TGLjFY7XdneitGit4y9G5VJWevaX3MReqjkZASefNNpqyJYK9t5g=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4697
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [Intel-xe] [PATCH 35/42] drm/i915/lnl: Introduce
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

On Wed, Aug 23, 2023 at 10:07:33AM -0700, Lucas De Marchi wrote:
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
> Cc: Mika Kahola <mika.kahola@intel.com>
> Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Bspec: 68864

> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 16 +++++++++
>  drivers/gpu/drm/i915/display/skl_watermark.c  | 35 ++++++++++++++++---
>  drivers/gpu/drm/i915/display/skl_watermark.h  |  1 +
>  .../gpu/drm/i915/display/skl_watermark_regs.h |  2 ++
>  4 files changed, 50 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 04937aaabcee..aa1000db3cb9 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -37,6 +37,7 @@
>  #include "intel_pci_config.h"
>  #include "intel_pcode.h"
>  #include "intel_psr.h"
> +#include "skl_watermark.h"
>  #include "vlv_sideband.h"
>  
>  /**
> @@ -1827,6 +1828,15 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
>  	return vco == ~0;
>  }
>  
> +static int get_mdclk_cdclk_ratio(struct drm_i915_private *i915,
> +				 const struct intel_cdclk_config *cdclk_config)
> +{
> +	if (DISPLAY_VER(i915) >= 20)
> +		return cdclk_config->mdclk / cdclk_config->cdclk - 1;

Should this be DIV_ROUND_UP?  Bspec 69482 and 69445 both say "If mdclk/cdclk is a
non-integer value, round up the result."

You might want a comment on this function noting that it returns the
register encoding of ratio (i.e., "- 1") rather than the ratio itself.

> +	else
> +		return 1;
> +}
> +
>  static int cdclk_squash_divider(u16 waveform)
>  {
>  	return hweight16(waveform ?: 0xffff);
> @@ -2727,6 +2737,7 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
>  	struct intel_crtc_state *crtc_state;
>  	int min_cdclk, i;
>  	enum pipe pipe;
> +	struct intel_dbuf_state *dbuf_state;
>  
>  	for_each_new_intel_crtc_in_state(state, crtc, crtc_state, i) {
>  		int ret;
> @@ -2760,6 +2771,11 @@ static int intel_compute_min_cdclk(struct intel_cdclk_state *cdclk_state)
>  		}
>  	}
>  
> +	dbuf_state = intel_atomic_get_new_dbuf_state(state);
> +	if (dbuf_state)
> +		dbuf_state->mdclk_cdclk_ratio =
> +			get_mdclk_cdclk_ratio(dev_priv, &cdclk_state->actual);
> +
>  	min_cdclk = max(cdclk_state->force_min_cdclk,
>  			cdclk_state->bw_min_cdclk);
>  	for_each_pipe(dev_priv, pipe)
> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> index 64a122d3c9c0..79454b4d99e3 100644
> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> @@ -3472,6 +3472,23 @@ int intel_dbuf_init(struct drm_i915_private *i915)
>  	return 0;
>  }
>  
> +static int get_mbus_mdclk_cdclk_ratio(struct drm_i915_private *i915,
> +				      int mdclk_cdclk_ratio,
> +				      int mbus_joined)
> +{
> +	if (DISPLAY_VER(i915) >= 20) {

We can drop this condition.  Since mdclk_cdclk_ratio is already "1" for
pre-20 platforms, the calculations here still come out right (returning
either 3 or 1 depending on joining) there too.


Matt

> +		if (mbus_joined)
> +			return (mdclk_cdclk_ratio << 1) + 1;
> +		else
> +			return mdclk_cdclk_ratio;
> +	}
> +
> +	if (mbus_joined)
> +		return 3;
> +
> +	return 1;
> +}
> +
>  /*
>   * Configure MBUS_CTL and all DBUF_CTL_S of each slice to join_mbus state before
>   * update the request state of all DBUS slices.
> @@ -3483,10 +3500,16 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
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
> @@ -3494,13 +3517,15 @@ static void update_mbus_pre_enable(struct intel_atomic_state *state)
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
> @@ -3521,7 +3546,8 @@ void intel_dbuf_pre_plane_update(struct intel_atomic_state *state)
>  
>  	if (!new_dbuf_state ||
>  	    (new_dbuf_state->enabled_slices == old_dbuf_state->enabled_slices &&
> -	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus))
> +	     new_dbuf_state->joined_mbus == old_dbuf_state->joined_mbus &&
> +	     new_dbuf_state->mdclk_cdclk_ratio == old_dbuf_state->mdclk_cdclk_ratio))
>  		return;
>  
>  	WARN_ON(!new_dbuf_state->base.changed);
> @@ -3542,7 +3568,8 @@ void intel_dbuf_post_plane_update(struct intel_atomic_state *state)
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
