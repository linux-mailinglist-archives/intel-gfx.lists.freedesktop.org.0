Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 189A163FB81
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 00:01:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 152D210E684;
	Thu,  1 Dec 2022 23:01:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2645610E684
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 23:01:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669935672; x=1701471672;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=6toFE9DK1eSYXRsZh+mp1O9nyo3jPCAQh6vTeBK6X84=;
 b=fduRjtK/UuYEH1ulbc5lpPAfvnhQQobt9Y86Utc5womwqszq98cMLQnI
 0D3hp2ZF5p+VECyiNVWK9FtGFn0novx+U3plXSeuCigzUVb3pBMxBGr9U
 4qPy0+xjwPW+3nLzAOrDuFBSmKwBqMpxWbaObfFeGS5Rl0wycVl7Z+k9C
 X2Jx+yjp3sMgCaEQpR5H7L/U2X0mj423yycsgHvlOZqP2kekxb23a479W
 K6WA9A2ezQT6OhetM/w6tExXMi5C12XkndpHNcBp9c/WEI5zhLHo0Kyo3
 UbLFqN3PSbEVKkqGLHBzW4ZZetUsGjksri/YV6LEDhHc/76PBbE8KfypY g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="295512230"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="295512230"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 15:01:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="713401913"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="713401913"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga004.fm.intel.com with ESMTP; 01 Dec 2022 15:01:10 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 15:01:10 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 15:01:10 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.105)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 15:01:10 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V7MhyLCe0P39IqEXNfc6SUHd+kcBhXK2nXTSvFulZ9Fj3FVyQHKzg+3IsVZPMThyl5iLq2okerfOJuE5xfGxpyiBYylrwdNO5H83rzE6wjlOdCkTcCMtl1Q4U/YrvyTVfIMTzg9tKd8ikREBzrccxOYpB2VbOzoE59hJDPHSFaN0SVVfNoCTcmcEzijAkEOzIJ3/KXcKKiKsIA2OhKC/OvI5sWGUP2VPNTu1iCty9Uefs8XFvAsmEZWRgL6G2SQ9HtaDMuJYez9NdW/1yA7jTOM1dJQwaVrZie3ZQ9nIkkQDpitOvH/OscmQQ5ZOvc2O4ze319z19H/Mpl378XI/DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0ZjPPXwbd/r6o6AqZzVGddCdxjNIbDsBAQWYjwVicfk=;
 b=el6E3oO41plxlx2iaESJzrLTqPSbnyfIow7jQVzcH+0ZHC+T4Df7SsbECZCXWSxnS3zzZNMKBzhVYXNLbRMUXi34C78CIKUlSf/i3inMvnJaGPspIUXy2IFu6yE5i1UqvI7w0SMMuCmdjGUdfXdXEVFYYEMdKzwz1j6gMaOHHakzUSwJsf/PWLiFg84VWidEfm4zSiXe93J5VW6Q2Loqkusbl3Br8DQK00EgT4/KwMJEioGb8eYaTSNSt+BlP7HiK/FBhqSS1p/VGeJ0s1C1qzHb82h+5wwz9dLsTheL6Qq+izfqpIZaZB4liPzJw0xyI1ML6cInv7D6cwvynZTPhg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CO1PR11MB5090.namprd11.prod.outlook.com (2603:10b6:303:96::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 23:01:08 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5880.008; Thu, 1 Dec 2022
 23:01:08 +0000
Date: Thu, 1 Dec 2022 15:01:05 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <Y4kyMSEltDvdD7uV@mdroper-desk1.amr.corp.intel.com>
References: <20221130231709.4870-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221130231709.4870-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: BYAPR02CA0065.namprd02.prod.outlook.com
 (2603:10b6:a03:54::42) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|CO1PR11MB5090:EE_
X-MS-Office365-Filtering-Correlation-Id: 119ce75b-4d67-4b60-7d92-08dad3efeeb4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: w3ajOuQfzJzTJQ7PzHkKp5Sia/qpzmHFqs0YEXjPr3VqbIf+WIgzV4RZT4vnVNCIvh1XadAffd2eNquMApi3VyetWhZPMkC5ZQJFyHCssIgArjm+Xb1zv5p5Ufst7NWDOvd9BuP9zy27bpzdfVcWfujMuOlyXjqA6B/29K9ztXZkHseePhwRNjojY7+HBfRPOns8lQ54KtTvPSP+TtJ21UYXT1tHPFkAxQVA0ScPYhqzLuYNdsnAij+K6ngA4oRbzYb6FRXCKIqo04Ltxl+ImXytPim9DKtyWkwpzVqCN3BXMQDXEEnFNa2qGyNmDlTBcuvTGS0nJYHMQnlzdB5Zh47BmkMrPiR60BT26qdHOAfkp77CdZ9CAKTHHF5/opsCKJ6v1Sg7INessU+lf6JTNM0A7ew1d0nwrAHgj/O/q2TsgafGM2Wjbxw7cGejqjMizfGq1bfUe3ec/TR0GEsMxQDJrpSNFVfVprlH0iAmMXHnQvdV41WuqdO3TTvhK/TcoO/GW9NHgHS4dzMy0fEiGtiUkvLl2Qp544c3+2nR5+HvYiK6mGyM033b9++ieh1EvDBsRldRTSTZFMyaAT/+pYhPxmVe4y2Hqja/PXbJ/BqE8N9AbDLKyxWuWavqNgJT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(136003)(376002)(346002)(396003)(366004)(451199015)(66946007)(107886003)(478600001)(6666004)(316002)(26005)(66476007)(4326008)(6486002)(6862004)(6636002)(8676002)(8936002)(6506007)(86362001)(6512007)(2906002)(66556008)(186003)(41300700001)(66574015)(5660300002)(82960400001)(83380400001)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?k0c/7oXO66ofwtf/EhSzrJKuCeXopB7DVfRRHITT4KY6hmm7L2CHmct9Kv?=
 =?iso-8859-1?Q?l22kZEyHGEi/aZo2g6UGUzvjhwrXZhApUeH/Vt3eafq7zJugNPMAZ6Irmd?=
 =?iso-8859-1?Q?fSQIkqpyoqioG5FtNNooh/BPHxvEX8jGK5bdjjhaUZXy850UtMPvmGEDIj?=
 =?iso-8859-1?Q?QRoZXnzLYErfgcOOekaTb7DSLi0jUold5wzauJBC3xKfCy7Gn2HRZH7wDZ?=
 =?iso-8859-1?Q?Jly0fHZDZ057zwftE41uC48oHDIP8rv2YWCu4nIveDhXAQO+F4F6pPIn74?=
 =?iso-8859-1?Q?ATcBaE8sqVFdR7BKHYAmI5E4ZhPwpjSuvZnCowF8FjPsPb6aF8r6oBQu+r?=
 =?iso-8859-1?Q?hdFxjop2fOzhI8YLkcPMOAfTfapvFgXTo11BkJOv38CJLzlGX06u3eo5xq?=
 =?iso-8859-1?Q?unxE/n454zeX//2S8ZKwmp/Nk4ELRIIZtPz1Jmmq6MeeSv8vvlAKFCio5i?=
 =?iso-8859-1?Q?wDdblj8fEdehVwFmTBY2ZxUYmx5cUk1gkdxdEso9UeRNf7DWozb1YUmHsg?=
 =?iso-8859-1?Q?TlNn3VZGBkG5G/msxWTrRi4+ic5Tm/bxQtrbHWyVcpXoTTWh0sJi+t/83b?=
 =?iso-8859-1?Q?AYnuthxCsN94zDK/UwDdLPS4m/fJqfpo/NtFvgr0DUJE+gpOO5Wh0kMaox?=
 =?iso-8859-1?Q?FyNGQz+A/VsQ+7VF+Igg4ec6zseife5TqNomo35Hb/EJby2my87OxVCOFM?=
 =?iso-8859-1?Q?0QFM5ZtaTbyj/AhMtMtBFfOSYJ4hXJfqymBd+9S8SUiECku/w9o57ySZol?=
 =?iso-8859-1?Q?ZOY4RG02N4CvRn+JDXo5GrntlsXaNwBeYivwCfg/TuB8p8XL0Jlni1iXeE?=
 =?iso-8859-1?Q?CYFiV7rp12DgtlrRzoX9tOQPyP/VBPyDkmr5WWBeAGWvakwcN0dAx8DxdY?=
 =?iso-8859-1?Q?SgRUxqrWGyX9OfwBE/GmIAKhiJEl0AaoiKuh3W5uvG9CPSDgkXklGw33p2?=
 =?iso-8859-1?Q?5P3hfJzG7mI+Nq3m9rnkFUvVWgMpWIWgsW2tkZkThP7UNjRufw+y/k1MQt?=
 =?iso-8859-1?Q?/bPPD6ZjrGYUW4rQVIEg10bUO26Ubo030XVo6TxvrL8K65NEg90n9pr7Bn?=
 =?iso-8859-1?Q?Q1Lf1Zd69ycPWjewlKCR/Ysi6PhEO27QpM3mhvyBSSvMAlK/p3X/c/FOCo?=
 =?iso-8859-1?Q?F5GJmP+UpuFlm4Rx7DUtpDV6+nfFTSHgpJWPN9uxRDfKvMVVMj/JpvX59o?=
 =?iso-8859-1?Q?GK0g1Et/aekvbCu7CpekkdfVwWMMTU/DiKxyulsqGbeSXxHLlPHIf3FdT2?=
 =?iso-8859-1?Q?MZ9/qzX8fD0xj+B7gmeth9ELuXqGhrlA+5tZDWF9zji1MU6e2jRx7F0Gj2?=
 =?iso-8859-1?Q?zxFqmXdN169OoAf7aYAQyDROQ83PJcZYVCp5XU4BHjCSn+uxVRsppQrZp+?=
 =?iso-8859-1?Q?a/GFnJKNPuZ5hDIoWVGsG5Dxj/06pi6MiTRlGWwgZkfI4tHMBT0nHPWZ/F?=
 =?iso-8859-1?Q?4O5BUrOy/MNMCuUw1bFyXdmTv65X1rlDMVC87wKlsuwXM1gJFEy0I8QJ9D?=
 =?iso-8859-1?Q?DR6yPstSLqK+oSLd8KRY7Zg/nwEIu12zs4/jKU4SSqWXaV3dfxFEo6YHhj?=
 =?iso-8859-1?Q?FcQbwNqqlvUDHX64sD8E4DuzAcF3ChA8Z+FOPfdKomObNuPF+JI3kCQrqB?=
 =?iso-8859-1?Q?8mJLfhYw5lBhgn0eGIs8MpHoiNtVcdF2/IpRlG4gS0THrBwLJ+4UXOjg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 119ce75b-4d67-4b60-7d92-08dad3efeeb4
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 23:01:08.6640 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: umTSl4CpUGFSFSgFpIiikfy96HzVG0SoZ2c3xkil3tpw2KqnNk0DeZIIy7yX/rCSZV5iRUz8P9DqLmPIjwKDgoFMCjddUzu7nA2RsEatHWI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5090
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Initial display
 workarounds
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 30, 2022 at 03:17:08PM -0800, Matt Atwood wrote:
> From: Jouni Högander <jouni.hogander@intel.com>
> 
> This patch introduces initial workarounds for mtl platform
> 
> Bspec: 66624
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c  |  4 +++-
>  drivers/gpu/drm/i915/display/intel_hdmi.c |  3 ++-
>  drivers/gpu/drm/i915/display/intel_psr.c  | 27 ++++++++++++++++-------
>  drivers/gpu/drm/i915/i915_drv.h           |  4 ++++
>  4 files changed, 28 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index b5ee5ea0d010..8f269553d826 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -1095,7 +1095,9 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
>  	}
>  
>  	/* Wa_14016291713 */
> -	if (IS_DISPLAY_VER(i915, 12, 13) && crtc_state->has_psr) {
> +	if ((IS_DISPLAY_VER(i915, 12, 13) ||
> +	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
> +	    crtc_state->has_psr) {
>  		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
>  		return 0;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index e82f8a07e2b0..efa2da080f62 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -537,7 +537,8 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
>  			       0);
>  
>  	/* Wa_14013475917 */
> -	if (DISPLAY_VER(dev_priv) == 13 && crtc_state->has_psr &&
> +	if ((DISPLAY_VER(dev_priv) == 13 ||
> +	     IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) && crtc_state->has_psr &&
>  	    type == DP_SDP_VSC)
>  		return;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index 5b678916e6db..7982157fb1ff 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -797,7 +797,7 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
>  		return intel_dp->psr.su_y_granularity == 4;
>  
>  	/*
> -	 * adl_p and display 14+ platforms has 1 line granularity.
> +	 * adl_p and mtl platforms has 1 line granularity.
>  	 * For other platforms with SW tracking we can adjust the y coordinates
>  	 * to match sink requirement if multiple of 4.
>  	 */
> @@ -1170,11 +1170,14 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  				     PSR2_ADD_VERTICAL_LINE_COUNT);
>  
>  		/*
> -		 * Wa_16014451276:adlp
> +		 * Wa_16014451276:adlp,mtl[a0,b0]

These days we don't really add steppings in these comments; at best
they're just reiterating information that can be easily seen from the
code below, at worst they get out of sync and cause confusion.  I'd drop
the "[a0,b0]" part (which also isn't accurate anyway if you're using
range notation...it would be "[a0..b0)" in that case).

Honestly even the list of platform names on workarounds is of
questionable value and I'm thinking about writing a patch that just
drops all of them throughout i915, leaving just the workaround lineage
number.  Maybe I'd keep the platform names in the few cases where we
have multiple workaround numbers (with different sets of platforms) all
requesting the same programming of a register...

>  		 * All supported adlp panels have 1-based X granularity, this may
>  		 * cause issues if non-supported panels are used.
>  		 */
> -		if (IS_ALDERLAKE_P(dev_priv))
> +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder), 0,
> +				     ADLP_1_BASED_X_GRANULARITY);
> +		else if (IS_ALDERLAKE_P(dev_priv))
>  			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
>  				     ADLP_1_BASED_X_GRANULARITY);
>  
> @@ -1185,8 +1188,12 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  				     TRANS_SET_CONTEXT_LATENCY_MASK,
>  				     TRANS_SET_CONTEXT_LATENCY_VALUE(1));
>  
> -		/* Wa_16012604467:adlp */
> -		if (IS_ALDERLAKE_P(dev_priv))
> +		/* Wa_16012604467:adlp,mtl[a0,b0] */
> +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +			intel_de_rmw(dev_priv,
> +				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder), 0,
> +				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
> +		else if (IS_ALDERLAKE_P(dev_priv))
>  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
>  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
>  
> @@ -1362,8 +1369,12 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>  				     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
>  				     TRANS_SET_CONTEXT_LATENCY_MASK, 0);
>  
> -		/* Wa_16012604467:adlp */
> -		if (IS_ALDERLAKE_P(dev_priv))
> +		/* Wa_16012604467:adlp,mtl[a0,b0] */
> +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> +			intel_de_rmw(dev_priv,
> +				     MTL_CLKGATE_DIS_TRANS(intel_dp->psr.transcoder),
> +				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
> +		else if (IS_ALDERLAKE_P(dev_priv))
>  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
>  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
>  
> @@ -1625,7 +1636,7 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
>  
>  	if (full_update) {
>  		/*
> -		 * Not applying Wa_14014971508:adlp as we do not support the
> +		 * Not applying Wa_14014971508:adlp,mtl as we do not support the
>  		 * feature that requires this workaround.
>  		 */
>  		val |= man_trk_ctl_single_full_frame_bit_get(dev_priv);
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index a8a5bd426e78..ecb027626a21 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -727,6 +727,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
>  	 IS_GRAPHICS_STEP(__i915, since, until))
>  
> +#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
> +	(DISPLAY_VER(__i915) == 14 && \

As Tvrtko noted, this could come back to bite us in the future if
another platform shows up with 14.10, 14.50, etc.  MTL has exactly
version 14.0, so best to make this

        DISPLAY_VER_FULL(__i915) == IP_VER(14, 0)

so that it won't automatically capture future platforms by accident.


Matt

> +	 IS_DISPLAY_STEP(__i915, since, until))
> +
>  /*
>   * DG2 hardware steppings are a bit unusual.  The hardware design was forked to
>   * create three variants (G10, G11, and G12) which each have distinct
> -- 
> 2.38.1
> 

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
