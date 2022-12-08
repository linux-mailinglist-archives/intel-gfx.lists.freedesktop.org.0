Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 542F0646616
	for <lists+intel-gfx@lfdr.de>; Thu,  8 Dec 2022 01:48:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1182A10E140;
	Thu,  8 Dec 2022 00:48:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D32C810E140
 for <intel-gfx@lists.freedesktop.org>; Thu,  8 Dec 2022 00:48:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670460497; x=1701996497;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=l6Yg5uXCdG5g/I2RaLpE+WpOQgycCmmdCbBkgq7ehvA=;
 b=IRg7v+BZ0PnpBo2sAu8Gn1H1irAjh18mbMYF+Qfk4XLh5wEEQYsccDJu
 KGx/zH/Av/symRHYDV0AObIb53ZYOZPQY9yo5pqQnhydU07Y4VvLnjxVq
 3+XLLkQNo5OC7dl3veo2aL9upu5WLZ4wEgG6323vEJLtCOEciT6zp3EGH
 5qurJJ4sEssuye+21YlKhpLgMhl4aa98kIx8y4JzySTxtqsEOg6uXyF1w
 puQXcUfZzj/Z6xdwlLC3n9O5fiOZUDM+GC1bAY6jkHYgONmrfQd7JMna1
 xDerBCMVaN/AYiqw9pFealiGO/aU0c3HGW4yK0OM3yqCbknb6wg3e0Su/ Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="314685596"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; d="scan'208";a="314685596"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 16:47:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10554"; a="677562212"
X-IronPort-AV: E=Sophos;i="5.96,226,1665471600"; d="scan'208";a="677562212"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga008.jf.intel.com with ESMTP; 07 Dec 2022 16:47:54 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Wed, 7 Dec 2022 16:47:54 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Wed, 7 Dec 2022 16:47:54 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Wed, 7 Dec 2022 16:47:53 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J24/Mp9aGY1Ul7+aniRguney6it4XghzxafdH27OJ26E+RbNl0l35zx5NjZ8vNWveheuDb9Iikj7Qm5cGlcygyuTwmq8AvtTe7YmEhnnv4urJCLHgRIn0wliHHwU0/11P2LoblfbBH7/MSUtU+nXu1MwNOZjx62Hb/XCA5QEc2Zn3EvKnvpJnJuCEgbTpL3tWV0NNm/cuuBtTvkG/pjJHsH8x17Tq/mIphK+Fln164l9PQTxaFWuoNuB5XLeUOK2I4HehBEZbmGCb1pnsk2RKz5g8m0JGDG5NL2Z4LLZzHSgiJcnIluXO7M1wuZm8d/SdGA1DI6A+fPEkHc4oeXdjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DOPUXU6tFr74U6yZjIThlj2kN4mHOHOeYF0ZvAakjg0=;
 b=CFGEaNytfBKbJQdOlyKrs6bP/8GPwSsQMXruR4KFbdiLPzhk8hwu5u1vsbrCVAnQFoqco7kp5os23o3yO4AS5FLY55LCSLRHh2/EO2QtQlqDZyewe+IsEke93yJhrYc1ieqrEROyRQkHrk6T6TrfhL7J5nEPTcWRqVd80tpV/56o1tG74S15Jz+7heKkbtcYLwbw/bz8OU6LrzSnMeJIbg0nnPTROek4ANJUuBcP/tjYuTl8s2PaDMQt/FytC6Cglz+B3HaqxZVSLaS/Dmsr+8qTho+tZssXMnmC+typE6fzfIDJUzuHjd7i5NnE0DNomjMWHVqb5SNhgVol7O2Ukg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CO1PR11MB4994.namprd11.prod.outlook.com (2603:10b6:303:91::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.14; Thu, 8 Dec
 2022 00:47:47 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5880.014; Thu, 8 Dec 2022
 00:47:47 +0000
Date: Wed, 7 Dec 2022 16:47:44 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <Y5E0MGY98Wy/mmS0@mdroper-desk1.amr.corp.intel.com>
References: <20221208000131.408928-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221208000131.408928-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: BY5PR04CA0018.namprd04.prod.outlook.com
 (2603:10b6:a03:1d0::28) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|CO1PR11MB4994:EE_
X-MS-Office365-Filtering-Correlation-Id: c0dda76e-fa28-4106-2731-08dad8b5d33b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uQHj0YN7Gfb8AtuNu6sNksH3SPgc50dVcbqovGBv/VrAGzHmsGL1XUMWzVhzjnNPEmGVV+QkrP2aXEnPCueMtaXGr3Jv0CC0yNAeIWUb+qnk/xAlmt3cX74tPFD+ArZFh3Mvn4A8cqq9sUhvgJLURCbli39rR6/mbZg+x1ZNXEWUAeYE1f2+b1VddbQAS5LBc2L0eVaQYjQug7hkDsx1e+fQkYBiZFqTVDCDGFFdJJtljAqlR6xsBSXJ2JkzA9sDOYQ+afiKSqMIWIYhVqvYfHmiHO/0pWlKM5YgANWS0iBKPijZM2i2oBwH3JVjKUEiJI4wAB0fzjws/0Qijl4v6t4FPC+DxmJjPQbBfE+LgLg+25TKyk0tVneX+oqbmgPy9WoQkGTA8hPpPI5kTPRHvjtQ77N1Y8YVd1Dj0RJI9+7z7KtXcHCAGUZmk0SNLJ18hjfuhuhSuSFlz3ISFT4RU3hA9X1Seh4jg0mRYtmf4JGHzAIbYidzv7aGMZ5l3rL+LBeVKbSU0me6BhrSH29Z7x7qLI/NZFPOH0IpqAKeQf5pudTN4nTvD/stJUIyvrZvQ1S38d6zvBfXqrO7JdlCRB9u9Jf8XAj1qG6O/1HXF4Ye0muZica0GuNmc/tmI6GM+j/BvprSBXnhbwJe9wLGqw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(136003)(366004)(376002)(39860400002)(396003)(451199015)(2906002)(86362001)(8936002)(6862004)(5660300002)(4326008)(38100700002)(83380400001)(478600001)(66574015)(316002)(6486002)(66946007)(6636002)(66556008)(82960400001)(8676002)(41300700001)(6506007)(6512007)(6666004)(186003)(107886003)(66476007)(26005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?QytAy33gDyHIZrpoLNeB300ve1w+AQG9lswvyFokTBXmkU/WUZhBSpdmVE?=
 =?iso-8859-1?Q?2fdUmV9n9qj8t+5silpQmwh7HwAmXIRc5ltc5DEvAn8RQ+UPMwsXe7KNm7?=
 =?iso-8859-1?Q?fvWG1D20CygNLVcvbxINp0S2SeCz2q5M6SZtFyKMjhMjr5q/QcpTTj/MwH?=
 =?iso-8859-1?Q?Uyz+/sBeeExqnQfaAgxzBcBHl4LkQZnfZSTUTXOs5k0J0W3/YphMIH/pje?=
 =?iso-8859-1?Q?OnIl7pSD7koZx+EH6TI22tWeG3H1b1rXBFfPphDGfNdHo31hMQQz+CdUnR?=
 =?iso-8859-1?Q?udMl9w+XTog1LtI4nU7fNc8kNJojTxrPhs8q4/P1IDnLQ8Pxa912LaDr6F?=
 =?iso-8859-1?Q?R8EnRB9XKvsFf8zqoEEUVgxxQ1gxUvI3Xg9VQNF10x/kPCqDa/Xj5D3NKQ?=
 =?iso-8859-1?Q?v9kpqZTSZCYL+5+lxa/pX0bLn6aqd5c0YjeoSBKyEVGWXbAdDP6uNuTHxd?=
 =?iso-8859-1?Q?ueccJ5VfExRYXtOQP6fzUESlCLn2ZLdfrsCk4vOLimfPahWhFiBV61vo4e?=
 =?iso-8859-1?Q?aeGt7zSpisEqrEOKvkH4U4JqfIP1XNPtNvJAtj2exV7Wp6FXo5V08gjQay?=
 =?iso-8859-1?Q?AiRWYRAdsqvT65DiDOdbLAMleljXU6XUnWJML7+3SNnm0zcY27x9e9Sb7r?=
 =?iso-8859-1?Q?AR4A3TgK0CdO7U8Xts3TGXHwjR9p+Hhpbm/SSND1NoRpvIUGtyXKSnQzc/?=
 =?iso-8859-1?Q?PgwZUiJWzvyHvYKh3ZoDCjqH8eMYlAKuq116d/Kx9PRdugLtwX+VFai8wZ?=
 =?iso-8859-1?Q?1N1TelB4VmMddMCY6i0gTFtbxpfgTPd7D2hdiZ5rSFNCCl9k3dfX31r+3b?=
 =?iso-8859-1?Q?15k8kLuOQ75+d6qVvkdcLP9apNqs4oPjiOEqPc9guPANJLTeD9aULJ8nWX?=
 =?iso-8859-1?Q?bNsxQHde5SX5uhvd5ZeVavuiADxZAVq3x6DPmoO0aK9cz+fE4ACb/9vtS6?=
 =?iso-8859-1?Q?bgHhcOFmTk6+6NP5E5BbBCe5oaddr3hL5qhdjp7+kpqMBaocYz3EGV9oYy?=
 =?iso-8859-1?Q?MpMvLqACBuWDjmWm0mrJTTXYAd8rZJ3JU2Ksa3YhoLimf4cGwpiy+yRZ9I?=
 =?iso-8859-1?Q?0OgawbLno/te51Pss3EpFGQWGc0cuCUPFDEgFjDrtmVyR1sPMD0lLpM8dB?=
 =?iso-8859-1?Q?OGtBg9a0HA8Pz07FAdqJWlg7b/2LAyojinx6lL6LaWSag320UgEBlzGE2W?=
 =?iso-8859-1?Q?5dgntKGWR8Wez0j2Xv/HsNe2EYRcCpbl/mV3NT49DYqF9SGkw/KZz1/O2z?=
 =?iso-8859-1?Q?VFu1qaTWgHaZu0zUynlOkW3qftuO3BLnbjMRbiHWCw9AcQUd/PZep6gqPa?=
 =?iso-8859-1?Q?KeNmPvpXIeXS0z15Rb0hHM00rTkq6p2E7IcI4ORX8gJED8Q4XflkBrSVMi?=
 =?iso-8859-1?Q?X7wW2+4bu2ft/CeWX08VjKxB5nvpxy4eG1isbvranTJrjP/eqz74iwb2aX?=
 =?iso-8859-1?Q?ZKjSUMkM3zlf5Nzqbj+0aTDA0R2tAut0rvl1OZt6qYVGuuKQRMFaLgTJYY?=
 =?iso-8859-1?Q?pBFibKK0wJpszQuk5HValsZeWLQNIsjLbanYs9Y2I8u4/XN2hocyJFY4NC?=
 =?iso-8859-1?Q?nNKe6iAEWcqn4gPJkXQFvLgLSOa1B6LKeK/AZMtza/rnsQzM52RkckuU5l?=
 =?iso-8859-1?Q?7DpeeGT95C7GPW+HUSYcR2WvuYySGhxWvxiQvdCPs15BSWKinoT7wPWQ?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c0dda76e-fa28-4106-2731-08dad8b5d33b
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Dec 2022 00:47:47.2302 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /dmcYvXlqtFK4PQIgljEL6qj2ScdYxkPnnBQGPkk2xlv+deTr/MP6ucydvODrJPQbVIm3mxYM12A7zbKWYAm438jq6fOukrPVnkIYvw1eJE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4994
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v3] drm/i915/mtl: Initial display workarounds
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

On Wed, Dec 07, 2022 at 04:01:31PM -0800, Matt Atwood wrote:
> From: Jouni Högander <jouni.hogander@intel.com>
> 
> This patch introduces initial workarounds for mtl platform
> 
> v2: switch IS_MTL_DISPLAY_STEP to use IS_METEORLAKE from testing display
> ver. (Tvrtko)
> 
> v3: clerical issues, extend 16015201720 to mtl.
> 
> Bspec: 66624
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c  |  4 ++--
>  drivers/gpu/drm/i915/display/intel_fbc.c  |  6 +++--
>  drivers/gpu/drm/i915/display/intel_hdmi.c |  3 ++-
>  drivers/gpu/drm/i915/display/intel_psr.c  | 27 ++++++++++++++++-------
>  drivers/gpu/drm/i915/i915_drv.h           |  4 ++++
>  5 files changed, 31 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index eff3add70611..dcfd3c43c788 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -387,11 +387,11 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
>  {
>  	enum pipe pipe;
>  
> -	if (DISPLAY_VER(i915) != 13)
> +	if (DISPLAY_VER(i915) <= 13)

This change isn't correct; you lost DG2 and ADL-P here.


Matt

>  		return;
>  
>  	/*
> -	 * Wa_16015201720:adl-p,dg2
> +	 * Wa_16015201720:adl-p,dg2, mtl
>  	 * The WA requires clock gating to be disabled all the time
>  	 * for pipe A and B.
>  	 * For pipe C and D clock gating needs to be disabled only
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index deba0c49c827..5e69d3c11d21 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -811,7 +811,7 @@ static void intel_fbc_program_cfb(struct intel_fbc *fbc)
>  
>  static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
>  {
> -	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp */
> +	/* Wa_22014263786:icl,jsl,tgl,dg1,rkl,adls,adlp,mtl */
>  	if (DISPLAY_VER(fbc->i915) >= 11 && !IS_DG2(fbc->i915))
>  		intel_de_rmw(fbc->i915, ILK_DPFC_CHICKEN(fbc->id), 0,
>  			     DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
> @@ -1091,7 +1091,9 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
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
> index 5b678916e6db..9820e5fdd087 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -797,7 +797,7 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
>  		return intel_dp->psr.su_y_granularity == 4;
>  
>  	/*
> -	 * adl_p and display 14+ platforms has 1 line granularity.
> +	 * adl_p and mtl platforms have 1 line granularity.
>  	 * For other platforms with SW tracking we can adjust the y coordinates
>  	 * to match sink requirement if multiple of 4.
>  	 */
> @@ -1170,11 +1170,14 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
>  				     PSR2_ADD_VERTICAL_LINE_COUNT);
>  
>  		/*
> -		 * Wa_16014451276:adlp
> +		 * Wa_16014451276:adlp,mtl[a0,b0]
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
> index a8a5bd426e78..0ad206f76b7b 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -727,6 +727,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>  	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
>  	 IS_GRAPHICS_STEP(__i915, since, until))
>  
> +#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
> +	(IS_METEORLAKE(__i915) && \
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
