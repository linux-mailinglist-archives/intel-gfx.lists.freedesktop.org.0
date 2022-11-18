Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C34E62EA96
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Nov 2022 01:53:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C778C10E6D3;
	Fri, 18 Nov 2022 00:53:22 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 829DC10E6D3
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Nov 2022 00:53:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668732799; x=1700268799;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=2y6eFmVz+XyUY/fUbJKi9E7wwTtrbH9BGwtmw22nigM=;
 b=Oz1gvVE5buUPEXoFmrJVglzzVSNJgoGrwNQ7xjR31xlHIRAsCqZNItbG
 rMyD5b3jvrodGvdlNAPjL4r4wKbc02+kJTq1s1nCWJjxUdVeVLLwhWdk0
 oTIVKuUKwUCOaVT3uty5UpnfhQjweGnbXlhdK5Dxnfh0eBRgb0YMBz3p3
 R98NziW+0MfZmCm2Ekfooi0lWKWXU3UG2cklV6A22YW+sy2en3xGZUEFN
 Mf9IpwYAfXrfkgC3RMFGGd+NkOtjyxo+yDuN+/M9h0K066IgteYjyQmeU
 F07G0Dfcih/oZjzSa8MmyUy/UEsH+KhzLtJbYdJVtBFwu5JkoAnNq5Tm5 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="293409542"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="293409542"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2022 16:53:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10534"; a="590826496"
X-IronPort-AV: E=Sophos;i="5.96,172,1665471600"; d="scan'208";a="590826496"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga003.jf.intel.com with ESMTP; 17 Nov 2022 16:53:18 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 17 Nov 2022 16:53:18 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 17 Nov 2022 16:53:18 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.108)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 17 Nov 2022 16:53:17 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZnTJ2sGg4qXuakitdTDFsmwqf5nUW+KW5Oa6YcQpwRchHig3qP5H1rWwsgQniQgACkfN3JrGCalgXNLJZaICu806uZlNfim1ZXjLdrRUYo4ajscS4AdazDNa9g39EIfSixx7t8P4bbFVv5hrgLFmOLlSyS4KY4FaQFgDFbtHnu+bi3dLQTbBlnFGVX1HeaM6mWyYEypCCwgztmg8+Rq03NxsFGVqLit3U07iCOiJm3RR9xlwxMC7L9OQb2/UvrjIbx9atuxsGamTP6OgMcILD/I7nIvnoCECuDPZuSgqTqY0lSPHXgSkVfu8zyBmLFyJ+Gb1Be2CNyjg9BIsLqBxmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=pWJ+Yt9ekYF+UFRqokxwGsdumileZM4IfliOysKHQgw=;
 b=Ivmw+rl0ZDUKDBjyqrjYIZQoPlYV/wfhCvVYn2zIFOGO4iuOQ2IOuykMhT9f4jhtjiGmTKj5auaPENlyJZE4YsxWPqxetz/3KV0tF9zXoGyln95UIQkrxxgWKcDOQMPcwp6l6JOqb091VAPOQZhvbEp6MLfUBd0mHfw/v2Df2C1nzu1VqwgseztP70GIRpYWaSEpekEWdDkOPaYtGiHWLTnF1thokwy+kUlszMSqGzc5q+19tWgdogB1nakt6otah9vBeJABRGOT3/04FWSLq+rF4EXl78A76bqtnivS0IO4pW4vd06aE5xpF2vjavnlBfBAE/EXt54qs0MygvpwdQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by BL3PR11MB6507.namprd11.prod.outlook.com (2603:10b6:208:38e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Fri, 18 Nov
 2022 00:53:13 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5813.020; Fri, 18 Nov 2022
 00:53:13 +0000
Date: Thu, 17 Nov 2022 16:53:10 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Anusha Srivatsa <anusha.srivatsa@intel.com>
Message-ID: <Y3bXdleVwDohbGGa@mdroper-desk1.amr.corp.intel.com>
References: <20221117230002.792096-1-anusha.srivatsa@intel.com>
 <20221117230002.792096-2-anusha.srivatsa@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221117230002.792096-2-anusha.srivatsa@intel.com>
X-ClientProxiedBy: SJ0PR13CA0099.namprd13.prod.outlook.com
 (2603:10b6:a03:2c5::14) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|BL3PR11MB6507:EE_
X-MS-Office365-Filtering-Correlation-Id: 99679fb6-a000-4ea8-dd82-08dac8ff44d2
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: bym11G2/wmoGQ2CYfPKLC/Q0kPlqp9zomrIkpswMQwdM4ScITbfDXXY3PzQ/Yyvkf5bqcj+tYM+N4VXT1Q5UhEcOlBSfDq25+y1nQJ0Umet5Qp8QvB1CFWZCuXsplgL89tUmrket3RnRGoFqOCli3IGtlL2e2Vq5tPRDAXOneAtomxsfTntkQDGteQCV+WaLv4XSThLYM8CvYPHERlNiV1RDHTNg/GoIWHpZyZZIrXTp9biuFnT/dMd0ngXu5Lydpe8OB4lEJ1APv6C4Q2UPaw8AmMvYgO9ESiCMBff7UpHjTXkn1fWAtYOfV0422xLw8Fmk94SDGAa+5jiciiB9hphae24TPyR3zinbVejePEohjSgtzyeX6U9AlkSPZWL5ldQhfODpXlIZcU8rWc+EKOHvbSaIkrpCXcAFPjNgv1JEbblVwZ2OCv/oxXyGSEkrQ3Ckki/Q5fm0OJALAnUrHMMv8WgxGvt21yOptbyPlF/XZAl53y1Z+z86o81eLLJ8pa4nPZiiPsIxmzW9wP0ac2sMCZPyl7PpdypqYXsQnuxakEswiNZNB2qU33XGH9mT2HQCh8wXC/jS+21retUwAe9sBhWkq4NyMHOURLLmqe8dDBEp/skbXXQr7PDhcd0F0gLOIMdlrSYJk0iYXAgW93YMeZcEoTPbxoSWZ/YWo0qOBuwzCiCDaTVnCVszzRFW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(396003)(366004)(346002)(39860400002)(376002)(136003)(451199015)(6512007)(26005)(2906002)(478600001)(5660300002)(6506007)(6486002)(186003)(86362001)(83380400001)(66574015)(107886003)(6862004)(8936002)(316002)(4326008)(41300700001)(6636002)(38100700002)(8676002)(66556008)(82960400001)(66476007)(66946007)(17423001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?Wn5J2PiK/Df8J2Fabfjh8EwGjluseQkBGTljVNigUaEdeg4+4Qg0m40B53?=
 =?iso-8859-1?Q?oHDsE11Vs/fa0fBeP4+hm50aYrbukGMZmt9zuM2ElaJhd2ZgFn8qAHSX4p?=
 =?iso-8859-1?Q?bn8+y/tMwXwMewcvnf3py+bl9WVfj1uqZAP+i4cssWUZN3z0Z5XVYBk86o?=
 =?iso-8859-1?Q?3npQ8WmkjFw1ou38hwwBj1Yuj6lA08WbflBG8wnueM9BcWTD6ClKPTLbyw?=
 =?iso-8859-1?Q?6eIT6f1kXlJuBbwGihJMmvP7B2mm3qWOh7wu0OceM1WlZSA2XzsCyuNcL6?=
 =?iso-8859-1?Q?jCCJPOy0i29noQoz9YR7Kd7UrZ1jrvgDFJY9/zjMYq4+6TK5bWxAIvI5AH?=
 =?iso-8859-1?Q?tHfp2aga2Iw4Lf3mLONDgI3J9hof/LmScobDldCBGctLdiHHvwNJKl+BSx?=
 =?iso-8859-1?Q?mjKsJb64Q+HuVeCeJkSspnTLfpk7Btj33G+eoo6DQ797KZf7TtL2CWtgge?=
 =?iso-8859-1?Q?vYFZVjHYZ9WGVSyce2ZL36HrEdiTTW7IVtKsr6lrGSZ82+NyrMZMsHdaju?=
 =?iso-8859-1?Q?jMF2JvvMMGI1/ObixEE9b2x4Bw8pYhbZrXFXHxWwFyklI7p5dRI+mO2TOa?=
 =?iso-8859-1?Q?yBVRtFbP6PxLdFlEzWAAtPa+s8oT3bVCgAgwLm+Rs0xa9ZmjkbC1W9XOUw?=
 =?iso-8859-1?Q?EaGDGpuAywiUeuhe5A/GJck08sEJ6pVpfI/e5RKfelIQee/HlyBWBtUpBr?=
 =?iso-8859-1?Q?InErTUv42/859KG+fafWal4LVH0CZ+zHK7mFqwMPeLan+9J/RBBZRYxRTz?=
 =?iso-8859-1?Q?rq+3EzpEu2nogoIWEyjmts5hlu0HiacJJVR0ThN2lYZafxhw2dBc0NRv/U?=
 =?iso-8859-1?Q?6WTP90w/46OT5bTnZVMeMoT7xHCadqp6kdH7e29jVX/XjHai15mxwMobbi?=
 =?iso-8859-1?Q?lfErHfEdmRBnDnD7mKQvrnYPPj+aHQC9qdtzwM5t7O06PG46yvT3DL0CaJ?=
 =?iso-8859-1?Q?KUy4KofEdU6Qo7LE/4q9ydJf9DByZf/wKS3AdUWdAnwYDFzNukjQwW/4e0?=
 =?iso-8859-1?Q?O956MHWWkRheNrjGFsaHynTKWSp9Uoui38WG+iEHXbE2SjzvjQR/25hi6i?=
 =?iso-8859-1?Q?G8Extej+T1wfNIUDzsaF+5obOfnH6b86W3YTyWnSKsLFrSSYeDJc0N5wY/?=
 =?iso-8859-1?Q?q3N2gGdemuBSEdEq+cPnxaljqXbglu4jsS5fDPNMJwwx5lRQ1lSQksi+b9?=
 =?iso-8859-1?Q?gkhfhk5wrBIBqWZh2NrFcuuDNSnh6OKxxHm4VcYDQtG4B2Vpr+CQnlJCvd?=
 =?iso-8859-1?Q?ySmnBs4yDXQCSnvJ7RLHAIeKh1XlcRxnHtwmCao7l+zhHAJrdevb9f1xnF?=
 =?iso-8859-1?Q?HHaZaX43FPLM6PxtNN+nb6zmJc625znOnpuvgPmakoF9/LIHXBG2CSpDQb?=
 =?iso-8859-1?Q?961Xzz5IEq4+z4n+urh4C1b7oDE4Gre2qPik+Sdidch2syiafTDFpeg54S?=
 =?iso-8859-1?Q?vFfAVB9vwTsO4b9bqsP5rDi1qOtin+e9hBFQJCpkdSd+1wXXhjkVA+PFQK?=
 =?iso-8859-1?Q?mkpGayJtVkIwgRiMK27U6u4WVF/D1BK6GQkjcHBg693CJGo8CGE9UKSWBA?=
 =?iso-8859-1?Q?UP6gZ+NQlLet3RxIu/COWJko3iTAGWQWT8x96L0ULkRUfT68VzXRS5pRXs?=
 =?iso-8859-1?Q?OKgUVp9vNbi/TiTHcAYh8IdGLcmPy+luPw5k90i3lzo6LmJ53KDWzxgQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 99679fb6-a000-4ea8-dd82-08dac8ff44d2
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Nov 2022 00:53:13.6824 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: P7XTetp+VJwLKD9B0NqUDpnH3i7FtWeKA2I8B9oOrB2XuueSkaDCT2KNEYzXvPeAi9/b+f3hDqrAyC+bAn0aYyWzcOa8grdZqU+7Z+YMb7E=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6507
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915/display: Do both crawl and
 squash when changing cdclk
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
Cc: intel-gfx@lists.freedesktop.org,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Nov 17, 2022 at 03:00:01PM -0800, Anusha Srivatsa wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> For MTL, changing cdclk from between certain frequencies has
> both squash and crawl. Use the current cdclk config and
> the new(desired) cdclk config to construtc a mid cdclk config.

s/construtc/construct/

> Set the cdclk twice:
> - Current cdclk -> mid cdclk
> - mid cdclk -> desired cdclk
> 
> Driver should not take some Pcode mailbox communication
> in the cdclk path for platforms that are Display version 14 and later.
> 
> v2: Add check in intel_modeset_calc_cdclk() to avoid cdclk
> change via modeset for platforms that support squash_crawl sequences(Ville)
> 
> v3: Add checks for:
> - scenario where only slow clock is used and
> cdclk is actually 0 (bringing up display).
> - PLLs are on before looking up the waveform.
> - Squash and crawl capability checks.(Ville)
> 
> v4: Rebase
> - Move checks to be more consistent (Ville)
> - Add comments (Bala)
> v5:
> - Further small changes. Move checks around.
> - Make if-else better looking (Ville)
> 
> v6: MTl should not follow PUnit mailbox communication as the rest of
> gen11+ platforms.(Anusha)
> 
> Cc: Clint Taylor <Clinton.A.Taylor@intel.com>
> Cc: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cdclk.c | 181 +++++++++++++++++----
>  1 file changed, 150 insertions(+), 31 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> index 25d01271dc09..1280a08b9c72 100644
> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> @@ -1727,37 +1727,79 @@ static bool cdclk_pll_is_unknown(unsigned int vco)
>  	return vco == ~0;
>  }
>  
> -static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> -			  const struct intel_cdclk_config *cdclk_config,
> -			  enum pipe pipe)
> +static int cdclk_squash_divider(u16 waveform)
> +{
> +	return hweight16(waveform ?: 0xffff);
> +}
> +
> +static bool cdclk_compute_crawl_and_squash_midpoint(struct drm_i915_private *i915,
> +						    const struct intel_cdclk_config *old_cdclk_config,
> +						    const struct intel_cdclk_config *new_cdclk_config,
> +						    struct intel_cdclk_config *mid_cdclk_config)
> +{
> +	u16 old_waveform, new_waveform, mid_waveform;
> +	int size = 16;
> +	int div = 2;
> +
> +	/* Return for vco ~0 (-1) and follow complete PLL disable and enable */

I don't think the mention of ~0 / -1 here is helpful; we added the
helper function to hide those low-level implementation details.  Just
say something high-level about what you're actually trying to do like
"If the PLL is in an unknown state, force a complete disable and
re-enable."

Aside from that (and the typo in the commit message),

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> +	if (cdclk_pll_is_unknown(old_cdclk_config->vco))
> +		return false;
> +
> +	/* Return if both Squash and Crawl are not present */
> +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> +		return false;
> +
> +	old_waveform = cdclk_squash_waveform(i915, old_cdclk_config->cdclk);
> +	new_waveform = cdclk_squash_waveform(i915, new_cdclk_config->cdclk);
> +
> +	/* Return if Squash only or Crawl only is the desired action */
> +	if (old_cdclk_config->vco == 0 || new_cdclk_config->vco == 0 ||
> +	    old_cdclk_config->vco == new_cdclk_config->vco ||
> +	    old_waveform == new_waveform)
> +		return false;
> +
> +	*mid_cdclk_config = *new_cdclk_config;
> +
> +	/*
> +	 * Populate the mid_cdclk_config accordingly.
> +	 * - If moving to a higher cdclk, the desired action is squashing.
> +	 * The mid cdclk config should have the new (squash) waveform.
> +	 * - If moving to a lower cdclk, the desired action is crawling.
> +	 * The mid cdclk config should have the new vco.
> +	 */
> +
> +	if (cdclk_squash_divider(new_waveform) > cdclk_squash_divider(old_waveform)) {
> +		mid_cdclk_config->vco = old_cdclk_config->vco;
> +		mid_waveform = new_waveform;
> +	} else {
> +		mid_cdclk_config->vco = new_cdclk_config->vco;
> +		mid_waveform = old_waveform;
> +	}
> +
> +	mid_cdclk_config->cdclk = DIV_ROUND_CLOSEST(cdclk_squash_divider(mid_waveform) *
> +						    mid_cdclk_config->vco, size * div);
> +
> +	/* make sure the mid clock came out sane */
> +
> +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk <
> +		    min(old_cdclk_config->cdclk, new_cdclk_config->cdclk));
> +	drm_WARN_ON(&i915->drm, mid_cdclk_config->cdclk >
> +		    i915->display.cdclk.max_cdclk_freq);
> +	drm_WARN_ON(&i915->drm, cdclk_squash_waveform(i915, mid_cdclk_config->cdclk) !=
> +		    mid_waveform);
> +
> +	return true;
> +}
> +
> +static void _bxt_set_cdclk(struct drm_i915_private *dev_priv,
> +			   const struct intel_cdclk_config *cdclk_config,
> +			   enum pipe pipe)
>  {
>  	int cdclk = cdclk_config->cdclk;
>  	int vco = cdclk_config->vco;
>  	u32 val;
>  	u16 waveform;
>  	int clock;
> -	int ret;
> -
> -	/* Inform power controller of upcoming frequency change. */
> -	if (DISPLAY_VER(dev_priv) >= 11)
> -		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> -					SKL_CDCLK_PREPARE_FOR_CHANGE,
> -					SKL_CDCLK_READY_FOR_CHANGE,
> -					SKL_CDCLK_READY_FOR_CHANGE, 3);
> -	else
> -		/*
> -		 * BSpec requires us to wait up to 150usec, but that leads to
> -		 * timeouts; the 2ms used here is based on experiment.
> -		 */
> -		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> -					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> -					      0x80000000, 150, 2);
> -	if (ret) {
> -		drm_err(&dev_priv->drm,
> -			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
> -			ret, cdclk);
> -		return;
> -	}
>  
>  	if (HAS_CDCLK_CRAWL(dev_priv) && dev_priv->display.cdclk.hw.vco > 0 && vco > 0 &&
>  	    !cdclk_pll_is_unknown(dev_priv->display.cdclk.hw.vco)) {
> @@ -1793,11 +1835,62 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  
>  	if (pipe != INVALID_PIPE)
>  		intel_crtc_wait_for_next_vblank(intel_crtc_for_pipe(dev_priv, pipe));
> +}
> +
> +static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
> +			  const struct intel_cdclk_config *cdclk_config,
> +			  enum pipe pipe)
> +{
> +	struct intel_cdclk_config mid_cdclk_config;
> +	int cdclk = cdclk_config->cdclk;
> +	int ret = 0;
> +
> +	/*
> +	 * Inform power controller of upcoming frequency change.
> +	 * Display versions 14 and beyond do not follow the PUnit
> +	 * mailbox communication, skip
> +	 * this step.
> +	 */
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		/* NOOP */;
> +	else if (DISPLAY_VER(dev_priv) >= 11)
> +		ret = skl_pcode_request(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
> +					SKL_CDCLK_PREPARE_FOR_CHANGE,
> +					SKL_CDCLK_READY_FOR_CHANGE,
> +					SKL_CDCLK_READY_FOR_CHANGE, 3);
> +	else
> +		/*
> +		 * BSpec requires us to wait up to 150usec, but that leads to
> +		 * timeouts; the 2ms used here is based on experiment.
> +		 */
> +		ret = snb_pcode_write_timeout(&dev_priv->uncore,
> +					      HSW_PCODE_DE_WRITE_FREQ_REQ,
> +					      0x80000000, 150, 2);
> +
> +	if (ret) {
> +		drm_err(&dev_priv->drm,
> +			"Failed to inform PCU about cdclk change (err %d, freq %d)\n",
> +			ret, cdclk);
> +		return;
> +	}
>  
> -	if (DISPLAY_VER(dev_priv) >= 11) {
> +	if (cdclk_compute_crawl_and_squash_midpoint(dev_priv, &dev_priv->display.cdclk.hw,
> +						    cdclk_config, &mid_cdclk_config)) {
> +		_bxt_set_cdclk(dev_priv, &mid_cdclk_config, pipe);
> +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> +	} else {
> +		_bxt_set_cdclk(dev_priv, cdclk_config, pipe);
> +	}
> +
> +	if (DISPLAY_VER(dev_priv) >= 14)
> +		/*
> +		 * NOOP - No Pcode communication needed for
> +		 * Display versions 14 and beyond
> +		 */;
> +	else if (DISPLAY_VER(dev_priv) >= 11)
>  		ret = snb_pcode_write(&dev_priv->uncore, SKL_PCODE_CDCLK_CONTROL,
>  				      cdclk_config->voltage_level);
> -	} else {
> +	else
>  		/*
>  		 * The timeout isn't specified, the 2ms used here is based on
>  		 * experiment.
> @@ -1808,7 +1901,6 @@ static void bxt_set_cdclk(struct drm_i915_private *dev_priv,
>  					      HSW_PCODE_DE_WRITE_FREQ_REQ,
>  					      cdclk_config->voltage_level,
>  					      150, 2);
> -	}
>  
>  	if (ret) {
>  		drm_err(&dev_priv->drm,
> @@ -1965,6 +2057,28 @@ void intel_cdclk_uninit_hw(struct drm_i915_private *i915)
>  		skl_cdclk_uninit_hw(i915);
>  }
>  
> +static bool intel_cdclk_can_crawl_and_squash(struct drm_i915_private *i915,
> +					     const struct intel_cdclk_config *a,
> +					     const struct intel_cdclk_config *b)
> +{
> +	u16 old_waveform;
> +	u16 new_waveform;
> +
> +	drm_WARN_ON(&i915->drm, cdclk_pll_is_unknown(a->vco));
> +
> +	if (a->vco == 0 || b->vco == 0)
> +		return false;
> +
> +	if (!HAS_CDCLK_CRAWL(i915) || !HAS_CDCLK_SQUASH(i915))
> +		return false;
> +
> +	old_waveform = cdclk_squash_waveform(i915, a->cdclk);
> +	new_waveform = cdclk_squash_waveform(i915, b->cdclk);
> +
> +	return a->vco != b->vco &&
> +	       old_waveform != new_waveform;
> +}
> +
>  static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
>  				  const struct intel_cdclk_config *a,
>  				  const struct intel_cdclk_config *b)
> @@ -2771,9 +2885,14 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
>  			pipe = INVALID_PIPE;
>  	}
>  
> -	if (intel_cdclk_can_squash(dev_priv,
> -				   &old_cdclk_state->actual,
> -				   &new_cdclk_state->actual)) {
> +	if (intel_cdclk_can_crawl_and_squash(dev_priv,
> +					     &old_cdclk_state->actual,
> +					     &new_cdclk_state->actual)) {
> +		drm_dbg_kms(&dev_priv->drm,
> +			    "Can change cdclk via crawling and squashing\n");
> +	} else if (intel_cdclk_can_squash(dev_priv,
> +					&old_cdclk_state->actual,
> +					&new_cdclk_state->actual)) {
>  		drm_dbg_kms(&dev_priv->drm,
>  			    "Can change cdclk via squashing\n");
>  	} else if (intel_cdclk_can_crawl(dev_priv,
> -- 
> 2.25.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
