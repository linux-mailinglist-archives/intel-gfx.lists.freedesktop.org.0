Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A21B66A5FDF
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Feb 2023 20:43:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 06F6C10E06C;
	Tue, 28 Feb 2023 19:43:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D79EC10E06C
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Feb 2023 19:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677613378; x=1709149378;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=krZ3OGMec/b/v/Ghm1xZzS4R0ok9soFdiZ4ANQfcAaM=;
 b=a3xBzARsK3WZq9eXgEQ/FUqucDVQdQ9brz2pyyVmo5a6uUZ6WUZfyzt0
 GFi7mkXWx9WXJl9iQLLeOS/qLXXrihCc5l1lcrPUyzegT2cVEXl1kz5Ti
 P8IX3GG9/tiGpjWdS2XXOKdH1Hi/A5S/URL1E3PAljKW7FreJzDzZ4WHM
 u8UImIgHH6H/wkvXnkznZ4ru1Kr1v0h+6XRO1QzjXZsXUIau4nDWQopQy
 euzwu2gtxcLIIVsZrJcJqz07KZiLh0r1lJXCPydyeUAOchEHHCt1GvFS3
 W8yfJXQeNdjtr0k1tIIsu4ylU9ECtULGhL2ba7x+pcC14ibbTdeWbmpQd A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="318030818"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="318030818"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2023 11:42:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10635"; a="919911292"
X-IronPort-AV: E=Sophos;i="5.98,222,1673942400"; d="scan'208";a="919911292"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga006.fm.intel.com with ESMTP; 28 Feb 2023 11:42:55 -0800
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 28 Feb 2023 11:42:55 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Tue, 28 Feb 2023 11:42:54 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Tue, 28 Feb 2023 11:42:54 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Tue, 28 Feb 2023 11:42:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rb/mc04N4DjnmJ619KXMDl+NSsXaNJPDGGl8IpDI4A3AKqVgGBYnZURtUN8fEgIEvuYT2eJ8TTK2fZK6DTEdi3l4y7PLh0oZn1g7ixFKLeCIzgJceay+0RGp7E3t/79ecggzHbwXhhwHmLv1mZkICp13heVybEIWOLOzne0EAAUovDBi+p3aSKiAB8QDfvibk/yFBsHH+LuoFlQTi/EBHRzGYLAbnXCad2CMHtzX9/ePy68qcu9c/jOD4yE4d0snJPxd7pJG9zGv158Jhy1pptzBMTL1smW61Szq9ZLBF4EnrI92OeEuKsz6pmv2sgqXmWGb6EIXUnIJZ3l9woIK6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hfMoXn6CHXljUhXMW0mVrY1rdXIM0ewnpZV8acdJG40=;
 b=QF8hj17PVjA4V/DjWJ4DmoYAVrQ1aY5kU+NcAa9J2ldHVuSMKpwhvPiTe+2BUvD+1KNnKuXb0waLFi75elP4Z9fxlGch5H7gvfLXKqgSief4GQVPMyIFrSzw6/ITS7rgicxP9wIXPVdDOMGradGhCa8MXUbDutVUZ+1g+DTBjcvThSspA7bwQbmLbsgmP4LCD+htkSTHj02bgiDK02avf0P6SoFq7lvcV2kGMW/UpMH1lcNLF/TgMMksbyii+HOS1ttKlBVM4WRkFfzG3NMfa+JSmHEpGLSd61BVraCTWTAzlQqnaa5zbrPS9nXc8f307Ygt4EKkDP0QQnRG1LDg0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BN8PR11MB3556.namprd11.prod.outlook.com (2603:10b6:408:8d::31)
 by PH0PR11MB5577.namprd11.prod.outlook.com (2603:10b6:510:eb::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6134.30; Tue, 28 Feb
 2023 19:42:51 +0000
Received: from BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e]) by BN8PR11MB3556.namprd11.prod.outlook.com
 ([fe80::8808:cbc4:63f2:eb7e%4]) with mapi id 15.20.6134.030; Tue, 28 Feb 2023
 19:42:51 +0000
Date: Tue, 28 Feb 2023 16:42:43 -0300
From: Gustavo Sousa <gustavo.sousa@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>, <intel-gfx@lists.freedesktop.org>
Message-ID: <20230228194243.5o2yweiqc4krqts4@gjsousa-mobl2>
References: <20230224002300.3578985-1-matthew.d.roper@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20230224002300.3578985-1-matthew.d.roper@intel.com>
X-ClientProxiedBy: BY5PR16CA0009.namprd16.prod.outlook.com
 (2603:10b6:a03:1a0::22) To BN8PR11MB3556.namprd11.prod.outlook.com
 (2603:10b6:408:8d::31)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BN8PR11MB3556:EE_|PH0PR11MB5577:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ea7f00d-cbd8-4efe-fb48-08db19c3fa42
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: S2KKL+0pecR2/Y5fk6pzPzWednvtNFGWMi3mj7/4SMm5MrarDerX52Eb5BKeU7rSN/cD8W90TwpvJWV7XFB3ecwWKVmFa/jJcfrdqtcKTKCO5V+eg+F86HB/4Xfk+2IvGgLbynKBwHJiB6vw0nLHA6CUxqCX6hGa3fAf+Y3HQLhRnqdRMp8/BgDvbfoF6Xf5/rz+BW64+PjjDR7QYW0P5YiX36Ih2Thc3w1IVRqsY5+ikF02nDuV9qNZj7iynhd1zeo/+URmiibokJ14od2R7+w22e0NL1ET9GziL5Yv77ZLDTD+Jll4MK3WOgoSbSkoGg6yH17Gmy/ZFjUtFAUGRsQBRHnPtsO169yFnDH5YisjevKmas6RBOSKA0LNd5dSgb79hn2UjvO/E3UpNMh3JmEjt+1RtcnWO0Eie/w3vW2Lwx12FRQSyQQXJQ+f7tGo0w94/h9HEisUVes8V1TR5vDHPUfdTSWh3Em3mJEXdS3kuQzLN7J3oi1EVShwD9JZVjf2Oa8tDyBuBawQzrIRvwl/6cRswogZUZPywTYiUw2KK2XYrZAmyqcqq1FGBP5httpBPffvwH6Rv+2n4vYyg9Z9XnguRLsx+4Ci/S8G40fXXpghKDVWA8mdDhPc8biqvwdCXtg+68FIv3S8nWcfzg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN8PR11MB3556.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(7916004)(396003)(376002)(136003)(346002)(366004)(39860400002)(451199018)(86362001)(41300700001)(66946007)(66556008)(66476007)(8676002)(5660300002)(8936002)(2906002)(44832011)(38100700002)(82960400001)(6666004)(6486002)(478600001)(316002)(33716001)(83380400001)(9686003)(6512007)(186003)(26005)(6506007)(1076003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?feszeo7r4lCMveZ3VHrf6c5S+OCyWgidKWW5RuRF8M0Bm2/H+TQC1tjxeMDH?=
 =?us-ascii?Q?fvW/AqAQq0mOpkgCpqmh6LO6Ap+NAGuHAgo73bviPr7JkQH2+naZE5xKBdgR?=
 =?us-ascii?Q?JREyfPR3m1wsd8zKNH2Hx8AskAyd6X7YGmgnPJ/YT5sKeht57en/lg6txfRR?=
 =?us-ascii?Q?ivHb7VgfgHIPwzF1KKNbCJyP7Q/Qm1l0SdfPI8zkQ9BUVq/9bdptyVaJ9M59?=
 =?us-ascii?Q?WfNr6Jli55/q5qPmDFc/LvpD8mIV7yiABBqS1ZqV5pQwMNgXFHeM+gyMsa9n?=
 =?us-ascii?Q?hJJzodLfGLuzcFikrfwTEEmAH3H6UGHtDuW3xzbZz+YVqNcW+QrfjEtZ+Akc?=
 =?us-ascii?Q?x5T9KNPTJlZOGHeqJAHurhM60Y3Ip3ATCO6KcmSANniR3sW4GkMxFjeecBEa?=
 =?us-ascii?Q?XBaW/baxTrtBKzwXc35lNu73RHK8rgPH66W25Q1rSrgH7JuR8oCT6gNo/eCT?=
 =?us-ascii?Q?riNsMsuugW//nT1MMMjb5xZFTTh/byrzr2TWryaWNfv1Dm4NgwClpL3X6v0o?=
 =?us-ascii?Q?bNahQtThALC5f761Rm0yhiRamz82TZMIEklZisj7O+YHJw8c35yS2u05s2CS?=
 =?us-ascii?Q?i1eau19yGqFmauC4jefMymSiTRjbqMnt9jKGIMAd4JxZgNRHliQS6qTlgP6E?=
 =?us-ascii?Q?69JGxEk6ThUeOUsVvQgN/Xa7YSm8no9rTKKuCoj+z/Svn5q3oLvTrfKLkJY2?=
 =?us-ascii?Q?5VR+hhGlEi0y4jSm9FnQtgivjw9ypQo0+NPKSlmK3C0ybCmon9wr0hqQsY/6?=
 =?us-ascii?Q?xPPMuWSmydKYbbl3DxEYDK97fPCdxGsfZORaEQ4BPihgUOmrN0cVoiitwPNc?=
 =?us-ascii?Q?1tgR+wsgTEXfacmb+ykPKQNQiXbIYw5fMzC68+Zt06dUKurC1SIkDDw3HtFR?=
 =?us-ascii?Q?Ff0PFUyXKC5fyGrl6XmWwyI6UoYJwHaKr8jiJ7Q9b2NJWawK8kX+nBF7aIE+?=
 =?us-ascii?Q?47Ye/x/7C1PWQ3GLaPmJqx0S837sMgJZMt+quK4qUrN65lirrKZ5wb65+Gmz?=
 =?us-ascii?Q?cSOGftMB2IeMAgLGGYcu/Pziysc/yEy1ynxFp5nKVqM6Jl7BAzrejmaPc/HY?=
 =?us-ascii?Q?vl0MxPdIZoNv87oXzOuIUHliJGQM0BENL/Hr6y1NX2pxTjN6PExbRpR0MouR?=
 =?us-ascii?Q?QRABr9SgtEgrtxn54xvIVd9ve+M+GJ/gw6uleguNUDkHQ2FgBlspIMGA+0Mn?=
 =?us-ascii?Q?828EUJ1RbKRAZkP2AEMCLxequIpH8EfA348SjvoNArXyCaZmUNn+np+dxkfu?=
 =?us-ascii?Q?hs1g676/KgBeyMAju7lJzXjclHQdVl1asXh3aBSotaouWBXVu/cOPBku5xwP?=
 =?us-ascii?Q?pPAizCGuESdWf6LTXpyPwyeuuDAYmQl5AegZyuSfFfmVJC0qhMR4WTaTXx0o?=
 =?us-ascii?Q?+vqsiwKs72Aztvk5j1HEGwYnmwOAT1RIFuxSHmP+eqJwZV3iyUGT+6haz7/u?=
 =?us-ascii?Q?EFIZU99G5JsKVzo0CRqT7MZaFPVc/4qQtKUxinVt88E6BIcjA/0wUNmUkYU6?=
 =?us-ascii?Q?dJkPlomJ9gngKDhBiJkqb37ct0AFWou9x/o2Ng0k9APn+O2eRv8N8rAmrjtu?=
 =?us-ascii?Q?c/MxqpJJ7n0vp00xXE8cJbqJ3COBd6SlHt26pzU2HUmrjeLrDCWMzDJ+rJAN?=
 =?us-ascii?Q?ig=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ea7f00d-cbd8-4efe-fb48-08db19c3fa42
X-MS-Exchange-CrossTenant-AuthSource: BN8PR11MB3556.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2023 19:42:51.4661 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fBsQS4QnWMfoXkCRnXtdiimOObXp7JBjVPHcqZQMR1iGvPE9f7yLV8mOHj6yDR5LMDvmeCtr3rNeOGikjq4VGA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5577
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915: Whitelist
 COMMON_SLICE_CHICKEN3 for UMD access
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Feb 23, 2023 at 04:22:59PM -0800, Matt Roper wrote:
> A recommended tuning setting for both gen12 and Xe_HP platforms requires
> that we grant userspace r/w access to the COMMON_SLICE_CHICKEN3
> register.
> 
> Bspec: 73993, 73994, 31870, 68331
> Cc: Dongwon Kim <dongwon.kim@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.jo.sousa@gmail.com>

> ---
> The bspec update to add COMMON_SLICE_CHICKEN3 to the tuning guide pages
> is still pending at the moment, but should be finalized shortly.
> 
>  drivers/gpu/drm/i915/gt/intel_workarounds.c | 25 ++++++++++++++++++++-
>  1 file changed, 24 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> index 1ef9c9fa2eff..0444c715998a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
> +++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
> @@ -2194,6 +2194,10 @@ static void tgl_whitelist_build(struct intel_engine_cs *engine)
>  
>  		/* Wa_1806527549:tgl */
>  		whitelist_reg(w, HIZ_CHICKEN);
> +
> +		/* Required by recommended tuning setting (not a workaround) */
> +		whitelist_reg(w, GEN11_COMMON_SLICE_CHICKEN3);
> +
>  		break;
>  	default:
>  		break;
> @@ -2227,6 +2231,9 @@ static void dg2_whitelist_build(struct intel_engine_cs *engine)
>  					  RING_FORCE_TO_NONPRIV_ACCESS_RD |
>  					  RING_FORCE_TO_NONPRIV_RANGE_4);
>  
> +		/* Required by recommended tuning setting (not a workaround) */
> +		whitelist_mcr_reg(w, XEHP_COMMON_SLICE_CHICKEN3);
> +
>  		break;
>  	case COMPUTE_CLASS:
>  		/* Wa_16011157294:dg2_g10 */
> @@ -2264,6 +2271,22 @@ static void pvc_whitelist_build(struct intel_engine_cs *engine)
>  	blacklist_trtt(engine);
>  }
>  
> +static void mtl_whitelist_build(struct intel_engine_cs *engine)
> +{
> +	struct i915_wa_list *w = &engine->whitelist;
> +
> +	switch (engine->class) {
> +	case RENDER_CLASS:
> +		/* Required by recommended tuning setting (not a workaround) */
> +		whitelist_mcr_reg(w, XEHP_COMMON_SLICE_CHICKEN3);
> +
> +		break;
> +	default:
> +		break;
> +	}
> +
> +}
> +
>  void intel_engine_init_whitelist(struct intel_engine_cs *engine)
>  {
>  	struct drm_i915_private *i915 = engine->i915;
> @@ -2272,7 +2295,7 @@ void intel_engine_init_whitelist(struct intel_engine_cs *engine)
>  	wa_init_start(w, engine->gt, "whitelist", engine->name);
>  
>  	if (IS_METEORLAKE(i915))
> -		; /* noop; none at this time */
> +		mtl_whitelist_build(engine);
>  	else if (IS_PONTEVECCHIO(i915))
>  		pvc_whitelist_build(engine);
>  	else if (IS_DG2(i915))
> -- 
> 2.39.1
> 
