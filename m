Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DB2648AE5
	for <lists+intel-gfx@lfdr.de>; Fri,  9 Dec 2022 23:49:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C23310E085;
	Fri,  9 Dec 2022 22:49:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C411510E085
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 Dec 2022 22:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670626180; x=1702162180;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=6G8yHlpX7zYVjxGA1kwgyx5D6v2VrdD55ZZU2nA3Qkw=;
 b=BrPEcHxDtuZRUE73cvlMFR1qQmAmvfJlQ3a/PMOVOpiNumdFyJa295Id
 iu//nkQ0EkP/klPVmb/aHCehw4ueEtXZgpV9ocOeaJbsCOj23Bfxr7OQp
 J5t+y6jmxISqtvqHGB2MDYts/U+MZEjrWXWI+1EZ19Y4e8mJqQ393zVBo
 2iMIKzvdk/lbqW8Sj1cEUcKmYdeBnAqMZBXokmIMAGAJbbBz9r31/Jxnz
 Uaz3wyPGT06eayeLOGM2X23LIDKPSkoQp/Uys8El7Klh3Vx5M445TDBDD
 WkQubybbVZ2LBNYmkb4+aBR2eFIho5lVHrWyB3GIBDzca9D7s+eoywz3v A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="316264427"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="316264427"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2022 14:49:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10556"; a="976427557"
X-IronPort-AV: E=Sophos;i="5.96,232,1665471600"; d="scan'208";a="976427557"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga005.fm.intel.com with ESMTP; 09 Dec 2022 14:49:40 -0800
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Fri, 9 Dec 2022 14:49:39 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Fri, 9 Dec 2022 14:49:39 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Fri, 9 Dec 2022 14:49:39 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AQ3qQz51IOiHH6j6Veyv21Z+ao5w7XmdVlzwm1+ijgXGz8FU6QCmFMWPMdvJqwB84HqztInCTcdo+tWsxC8gSNnyXM5pBb1oKSSnWG4nwsgtV/pNa6PafDBL2ZGZjgWpGQ7vDat4XB3Q7ySyNicVvi+wCOO/SFsqci2apvtqyqqYE7i/YjjYRKz4McQiUysDE2q4dnqwkfkQh+51RGnyZ/cgQCXw52Za+QKo7UETFQfetS2pZtUe/ygamXriL2BFU8xrU4Y4UQSrUpSxq98WIjo0QKVIv1GhN3lGs21TeyVJRwZwgL/NDrBF8+e/Ug15O+5VycaVxCwKshXNoTVGiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yUqtllZmxzbBB8RHujZKROhl27UrKGl4OKHUwRV93yM=;
 b=LISHv79SJp84BX//vyBDLiouuCT7LxZTWc6LvxTZIrfeqMATLswpzUqQENDWL57/Xsrra/KXibXROBNRCgVbEe0xLQKP/lxK8+0x0tbiv6V0Sfl2rEAgETlsicVjAsn5hyq45QqSTL7yyD7GaEUuUN6RHsjjve8Kq1rmhBiAJ/3y4T7VRmS4Aw21YOXrDw1BaZIfWP5UfDiTMLal38nb2xzw0BUu34kEZQmF5jYte+Sw7jkb2zm5o0Euvzt0wV4ENVjI4h4p+Co3EC+HxQ9yqfunsItYT+sqJLQUiKQowqZYUmrx0Fytt/onNyrEmHuZdzDFetlWNOaVXO2rRC3qPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by CH0PR11MB5427.namprd11.prod.outlook.com (2603:10b6:610:d2::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5880.18; Fri, 9 Dec
 2022 22:49:37 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5880.014; Fri, 9 Dec 2022
 22:49:37 +0000
Date: Fri, 9 Dec 2022 14:49:34 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <Y5O7fni8yzeV+cqR@mdroper-desk1.amr.corp.intel.com>
References: <20221209220543.502047-1-matthew.s.atwood@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221209220543.502047-1-matthew.s.atwood@intel.com>
X-ClientProxiedBy: BYAPR07CA0093.namprd07.prod.outlook.com
 (2603:10b6:a03:12b::34) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|CH0PR11MB5427:EE_
X-MS-Office365-Filtering-Correlation-Id: 008f7c6b-f532-400e-5c5e-08dada37a5c1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Btww/SHec7t2Qf7RU0zs0jINjypG5jwXsvyUeL+LL52+LBY2q39A2sH82Z5mcdnzLX2Qfjd+xgyoeciO4uyXJoMYXhWp9YiOxdR2DL8yO7YPxI1AmX772EqZ39Q/7DPHNlv2Z/haFp63NaVUpcYtWiRbM+yAdWo6tDq4AUbyGx9u9XfFG0uqEP2oosE7QNVtz4sT0BDlUg0bwJk4GPX00IkP/8wAC+Uh9cP0dgTgWDDa82YnzMLhFSsiy/w34FBBOqDLmIVbW5JDSFoMPvJ+sFgH84f++Ysma0mbFJJjrOF5MquxXPHo/alimPTC2e3KfAN0Ry87Yi5xlTgmygkUTD8g821FPWPjYVRPFPUW1xdbdJjTK65hq+/iJ/O8XjPQBJAs6l/KYJAo1zNJpXYkA9Bp6I0pzSqzv5N2m0EwHDOBBoP8Rf7Ry50fRfalf79+EAU/D1HjiNads3m+RjvZu28BgC9I6uWd+uN9ycBSHdqgZsP43UBleEm3nJZCaaohN9Iz9nOnQL0EbNF9S0S0mkc3keNhhFPOHRlIOJYWiFjZxxP0uDsNENhc3QnmwS9u/4ieXtm2KdOh8cnu/WZHgyeaxzPqk547qZ5Y57czvyOLtz6cgYjt/h/U9gosrOm2JmFNL0inbYHPNjfSgJx996+ikDx7XrijjMrYSMd+sy4xnSI0ObFmFmP91S9PbHqy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(366004)(376002)(396003)(346002)(451199015)(186003)(83380400001)(66574015)(26005)(6506007)(41300700001)(107886003)(2906002)(6512007)(6666004)(478600001)(6862004)(82960400001)(8936002)(5660300002)(6486002)(38100700002)(86362001)(66556008)(66946007)(66476007)(8676002)(4326008)(6636002)(316002)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?2l1h6X4D3byDLiPeGcfpbq4L9H2Kp02KEciswK67yVBKVGpeqUqoOke1h1?=
 =?iso-8859-1?Q?9QV0L4jehMHq204eQkc/9C1T8nP7AkDsPMrJdjWZVyQEAHqeP7tOvwDHkT?=
 =?iso-8859-1?Q?4n5Uk0djLLrgKZR8TKuB89K+TrU/czrKZ9zW9aps1KWeQIcw2n524ylh/6?=
 =?iso-8859-1?Q?uyIKfk9zCMxlXF7h3EdaYvl3n9Ob5LR+9XIA9vh3qJjFW4ROvs6ZoMIhp6?=
 =?iso-8859-1?Q?xpqFhiAlIFtCrdtqZjRFrL+E8oQaXl1lstNt9qJY0/HllUwK16oSpg5VaU?=
 =?iso-8859-1?Q?UMEV6X/IFAW7HNWGjMlUmhmdiAGZow6kxKUKtt+sJauOP7TJ9RmBIgTnFv?=
 =?iso-8859-1?Q?spHXNUUDMDdKDXIGGXWLYjlOeaDsOvsZa6fNwYFhYhNHo2SnCDAiZg4A6+?=
 =?iso-8859-1?Q?dfkBULU3gv0vF8kSjggT9zCKnMcj4lVxHRs4D+2zM+h7HUx8MhUytAfehP?=
 =?iso-8859-1?Q?s6UHbBc6803sv5NXA3UEvi47yznCf+ws4ATzwxDINJHZgh9datc0M+UZmi?=
 =?iso-8859-1?Q?c2U/ESXvWzcUyzr1D/uDURxmv1hcd3O58ecVCPjuIh3pAhyRdSANPpEOj6?=
 =?iso-8859-1?Q?mzv3VH/ZkVMJfR7QUnj6Exew68CLSG5rGSQNISHMJJ+qaEwRuWqYSP/IFD?=
 =?iso-8859-1?Q?0Wf0NUSPE0fP7xNIC1Ig4leU1tEVw3gc2Kjk+W1Gz6NaxK0pKCVP1U9gbb?=
 =?iso-8859-1?Q?F1/tx3zOzBrt79+SRxyYqma+Azo3/Fp75wnaJx8xrA4nKxUMKEylVH30zp?=
 =?iso-8859-1?Q?WdXSYCh0KD1DPLp2tTR6pFQx1tghPyvTyUkTs9OPabnRGf0sLhYMRNfSI3?=
 =?iso-8859-1?Q?jscDQi1bY68ufbLuHjADU7Ze9nYfHAuyGKXE7YlWEQel5hl1wke7u3TBGj?=
 =?iso-8859-1?Q?bDSV2gewoOVmVcgNR3r7pO9hr38nNGhpRcvbJCApITdHFysTFFMybKi9Fs?=
 =?iso-8859-1?Q?UlKnTM0+U9triJms53M0lGQ4FCjzzEHZeaDDlhXt+5QKEnAOJ6zMJcnMgq?=
 =?iso-8859-1?Q?vyHBZHVEP8Z0B4VUmg0oVHFNCX2fbRJvGyFhT9hjhy9HVDT2TIIgP/EVIF?=
 =?iso-8859-1?Q?/fFK6lh4w/1TuPf9t5O+ikQZrp+E9Rk9h18czQ3pww6BrsXTl6gmauIvlX?=
 =?iso-8859-1?Q?PdYithTK/nom6JpnkjxGt+hXuSx0b2ngUkGURekrt2m3DruFqhWLxDaGXb?=
 =?iso-8859-1?Q?alaPy799haPNfNKC+/4hj+HmhA3ZT+IqdjwAByUQBqgPhCF5fFGlzpi/cD?=
 =?iso-8859-1?Q?OoKdKYPMJr3Unqdeq+xLMsSiOc48GNa0Wel7OlXiA0iZXnKP4HA8rm9zBT?=
 =?iso-8859-1?Q?PJI6jQN82K1HRuXs5vsVOCX6ZegAxj20aY7z5lD4+rGYk8ph8YXxLwCYrK?=
 =?iso-8859-1?Q?pxm7fOWxp3UJoBZxDZy7+hfauH9wh7zyXpJan+YBzAan2e7bdC+2y3iZEJ?=
 =?iso-8859-1?Q?k7QcXX0eUtAFh9nBzY/62ob8gR8Z20vfUtRmXEyr95ImFS+POqIkXFMT9M?=
 =?iso-8859-1?Q?q7JlUgIfuoqkTpY/8aL7T6pih4zscSnw6gbxi92iPtUcLskYBSInjKHY3G?=
 =?iso-8859-1?Q?4ySgjWVWZKI9VUIsi0V1jKg4PYye/tKw+A6E4B/nNxCwcQ+79SPeSQw+1g?=
 =?iso-8859-1?Q?QI/n8SLAPPJs+5J73n4aKQmuZhQpoqgHFBgUQUfpzdzB8JJjWLAoqfHg?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 008f7c6b-f532-400e-5c5e-08dada37a5c1
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Dec 2022 22:49:37.0002 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: QSI4aCKHDXx85m9M7koSJpfg9lFsZLBjsfVZDUNV5GcBY6Zge5f15//Ze2BEQ22g0YnH5NVHVIw4Dzhwf4fPSeO/LcLl/HYa5FpCbXH3W5I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5427
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v4] drm/i915/mtl: Initial display workarounds
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

On Fri, Dec 09, 2022 at 02:05:43PM -0800, Matt Atwood wrote:
> From: Jouni Högander <jouni.hogander@intel.com>
> 
> This patch introduces initial workarounds for mtl platform
> 
> v2: switch IS_MTL_DISPLAY_STEP to use IS_METEORLAKE from testing display
> ver. (Tvrtko)
> 
> v3: clerical issues, extend 16015201720 to mtl. (MattR)
> 
> v4: make sure 16015201720 includes display 13. (MattR)
> 
> Bspec: 66624
> 
> Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dmc.c  |  4 ++--
>  drivers/gpu/drm/i915/display/intel_fbc.c  |  6 +++--
>  drivers/gpu/drm/i915/display/intel_hdmi.c |  3 ++-
>  drivers/gpu/drm/i915/display/intel_psr.c  | 27 ++++++++++++++++-------
>  drivers/gpu/drm/i915/i915_drv.h           |  4 ++++
>  5 files changed, 31 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
> index eff3add70611..8f4880a17ae0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dmc.c
> +++ b/drivers/gpu/drm/i915/display/intel_dmc.c
> @@ -387,11 +387,11 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
>  {
>  	enum pipe pipe;
>  
> -	if (DISPLAY_VER(i915) != 13)
> +	if (DISPLAY_VER(i915) < 13)
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
