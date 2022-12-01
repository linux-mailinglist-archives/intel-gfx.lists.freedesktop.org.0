Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B09363FC32
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Dec 2022 00:44:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D68810E692;
	Thu,  1 Dec 2022 23:44:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B59D10E697
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Dec 2022 23:44:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669938254; x=1701474254;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=ZJXAYJij5GjLXaWfrlnFabCUpyV39pFkMlym91FLJ04=;
 b=VHRsp/DzTlpdm6lFdm/hiNsYiZ2CzvGfRLycpf6wuYte52V+H79ZLhxB
 hm+2QVXQwVXC8PQFUeXW6ola3ZeiGDzhBSu+uF/qY9CJ6RrOn30jxuiqE
 /Shh4rrZSwQlTIX1FSEG10dggXfCLy93dsobhFGv5fXCIc9/ZDFmAZ3M4
 +uQI6ZgeOSp7DhHjYCP96fjgPpe+sh24I+0qrjvYxxfuGCFQBI/8GaiZ2
 FaEdLQVW73HoOUDl2lm2Ycg0TeIk5UQNnQN153UV5s3QQG95mp3tAY7FV
 iWBah/YH4Mafnl4H6iDrFW+EuQYKXvFSklkNENsEnuhz2aW9XuleiftT0 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="380114863"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="380114863"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2022 15:44:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10548"; a="889932037"
X-IronPort-AV: E=Sophos;i="5.96,210,1665471600"; d="scan'208";a="889932037"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga006.fm.intel.com with ESMTP; 01 Dec 2022 15:44:13 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 15:44:12 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Thu, 1 Dec 2022 15:44:12 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Thu, 1 Dec 2022 15:44:12 -0800
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.174)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Thu, 1 Dec 2022 15:44:12 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fjG35le+HTIKYgI0fkFAuoWv3EGCLbvggtStr9X9Dj/IgW42ENfxF1JClwHGxqHAIDLBjsZwY5764/g8RyH3MZWXiH96S2uI11o73iJjK/Fkybhexjxx2gBJO6e/2uiwVM0rjOSMrOkwvAyYlY2a2Z9NNdiREjiYyZM1cUgKXa4LNdWbcsmTMIJoFxpozd2fz5z+BfnI+8DZTWuwS+UIuRGg9KSv58I6zizfhdmx2/y2byicudv5NTItwSkGgc9g3xGdqF/DI+qFhGC/VnQXN2eehRs0IEw/sjcB6c2rk7wWkD0gsXrDEKp14h9TZr7SN02eAFvl8DXLwvkOxTkM3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=XSKUwai5WF7jtzxwk/MAqUpMWeV7sSegH024+ZnjdMI=;
 b=TWWXjZK7dkvvSLMQVREAaHUVYymQORILF5UoQGEFfZ3A9SRK7pJJYd0/onLasCd55IAs1wO7nqtg+A2S3ZbE6rknT6Cyleim9ZUziREAbYLaKGy1YYyTNSW/gbx5oQ5uizykNT5SBuOakmY5hL+YhuDuMlK2564VcZxCn3YTzXgP2SrlFNm4DcKYDvOIuy8XQECQtMvPGkwo39SbrAa7EpH06DTo0dXQTM4rsS8rR9XJ03jrM0AKqsy6s7/rHJR3SU5tYWKOA7htMxfGXy+jWs+Lins+CsCGuIsWz3pOqjoRh9gbJycyWG33tNE7BIcICh08lJ2H1wpYbZqUfI9tcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by PH0PR11MB4885.namprd11.prod.outlook.com (2603:10b6:510:35::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5857.23; Thu, 1 Dec
 2022 23:44:10 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::48b8:5304:2638:3475%7]) with mapi id 15.20.5880.008; Thu, 1 Dec 2022
 23:44:10 +0000
Date: Thu, 1 Dec 2022 15:44:07 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Message-ID: <Y4k8R4wNXPF7Pwcq@mdroper-desk1.amr.corp.intel.com>
References: <20221130231709.4870-1-matthew.s.atwood@intel.com>
 <Y4kyMSEltDvdD7uV@mdroper-desk1.amr.corp.intel.com>
 <20221201232725.rnn6ct2fae2rwcqe@ldmartin-desk2.lan>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221201232725.rnn6ct2fae2rwcqe@ldmartin-desk2.lan>
X-ClientProxiedBy: SJ0P220CA0009.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::25) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|PH0PR11MB4885:EE_
X-MS-Office365-Filtering-Correlation-Id: 0e5a2912-032c-4928-a426-08dad3f5f1a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gFPQJiXSX0A3Ne899Y27f8FrjnAwHNYZ395TvqtE+C1g4Kcpz3PzuOY6riZPpM6f6taHsAHAcIMxrncoWXukgx4VGAI8o60LCW/G9YqpdD4YO+w/KBPHZr+/ggD/U066UUbtbC5gdoZGyMA7Ecc+Si6qzOI6vSguG1u6RYuj/gn1Drxr9/JcEXuhcyEJVtIAQIoC8NlmJVi/CT+Gq41fnNtU62Kv6DfOcU8o9s4mUgTJhUwMgS5e1K86ktNSxol0qp0E1E9iV/dVhjmXMZRtO/WIqnkhTwC8tRcDJCZraAx+RS80tF9/wCRMjMS26i8i8IqdEGJdj5weQilo9njfgEdqsl83MLJhZk/++wOHB4c2tPJ/JdqUcFC7yExHF6D6U3wqpmAzd8citCkryA0kM8G8LzldolPRRhsGpaSsRvVOCgghgkxKrSwclY4hnErrQzGsBx6U/M6x6KWC/tHIBb9dO3WCWJT2hN9QsGj7l5FS4BkXszIwgJNoPF+K/IP6lAEPB1PsxRGgIIVjWL7lY34pCVYuh5oxU8Xzlk1Ipfl+faePwej7H15wMghEN9IzBmAeHGDrVSu2SJ18QFyiwBq1SUmGICRlciePgeyd1e01WkVKCAjo0k2dJCdjV7zx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(39860400002)(366004)(396003)(346002)(136003)(376002)(451199015)(86362001)(83380400001)(66556008)(38100700002)(66476007)(82960400001)(8936002)(5660300002)(2906002)(6862004)(478600001)(6486002)(41300700001)(6666004)(66574015)(66946007)(26005)(6506007)(6636002)(316002)(8676002)(186003)(6512007)(4326008);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?O/1K9vxj5WOmtgSKzY3ljLRGx/1ShnJbO6eRNDQZ6I6ocPHvbaJgyfUES+?=
 =?iso-8859-1?Q?oNszdQ4+UMF55vcjVKDYC3IPK070FC6RAb8jvruVImR5oHNnQzFFoAOcEx?=
 =?iso-8859-1?Q?jmz+YNd8Y8lXDVmm2igWcFK9ikMZ+E1NyoTSFqQGNjgrICENtUT9mL1Fzd?=
 =?iso-8859-1?Q?/tByXtHCWI3ryLgvwOMAz11vnNJBehxhEqadXqpXu8Fmk4Byevs6CicNi+?=
 =?iso-8859-1?Q?73QUyb4xldjrXGb20NQMnDqveg1ATwngg4HuPNCAoNyUZmNaFVGOu5Lhgb?=
 =?iso-8859-1?Q?M8yUwE5XPOsgcNOKQPykXvDaNF45/E46IX4Y16kwhE5+tdb8N1d0DWtoI6?=
 =?iso-8859-1?Q?2nmRgwQaUSTFfrCHWdMRRjDyxXwLv7qpdDCd7qOMJVufz3USITO1gJsbz7?=
 =?iso-8859-1?Q?xwwrNRZNruCFtAY459TNUDh8F3xomiYacT0qY4gLPjsECI+LnrgcGqVJTO?=
 =?iso-8859-1?Q?ZkHeWypKLVInJ/LYHqhtXpGfPXx8LBFzo2zaUpuBR8BSTom0729WfhkVF0?=
 =?iso-8859-1?Q?f4kDCgzoNCHfKDOggmnt67+2wB4YdlW3uJMNM164sJ/gFa36wsQmxJvyBr?=
 =?iso-8859-1?Q?DePYygZHZaKMbc6o6OvA/3LHdOFqh6CSh2KuG+7+d0SVTJLmNRV2Wh74l0?=
 =?iso-8859-1?Q?hHy0S82ydM9zT8OmeO3CGfV8lBf1ztiMPI1IqtGYmNtJzG3DYp/R9+5ZiT?=
 =?iso-8859-1?Q?s1bWh12MPfsO66IIaZHtfOunmPJtHLuL4qyMf62iYG8zCdKB1U6ceKXm6V?=
 =?iso-8859-1?Q?8OASE6cOo6TeGglUSggELjEGVaEH8RGt/Ue1Sn+K1eaxGkX7IL8mEXYYEL?=
 =?iso-8859-1?Q?Yqpc7xRAFjue+t0nwVCSMljqTPm29Zb6lgJ2kiU4ZPoxMbeXatAhbNp7hZ?=
 =?iso-8859-1?Q?6HyhGkkFGWX0YXThdI6rxM7/kKFo/gFwhoGesRa0gedmOaCMIof6HMAQaX?=
 =?iso-8859-1?Q?zStEBzv8rlcA9xeNRv1ykzEuSma2WM0pefCtyJ0/9crfqAtZTva5tec95R?=
 =?iso-8859-1?Q?0C2Yqa8PHI9LCfynL5UuCj2uPm5XN8l02ZQkON//GP+WtTYowOajTeu2nC?=
 =?iso-8859-1?Q?att7shWcgMokdnGYOTHNYB/jpE18IEFbgqZpSWSSqPPSDeWhpM3H1oFtiH?=
 =?iso-8859-1?Q?eaNL6iLYMnQI7a9mhdyQuyY5HhkcJGvuErA1VTeRVx2m9Ug5+gxOeX9w95?=
 =?iso-8859-1?Q?mx45JjktqeiWfN+uHzSZAVNQMMY0VBca015j+AH9DwNDTrk9el/31FfDhl?=
 =?iso-8859-1?Q?xqjd6gGpNxfd6YOij/lHv2MGXBfSlre6V1qI8PbeKPeZnXotEKd5b7qtpq?=
 =?iso-8859-1?Q?wqGnkV9Qs/YByK40+SOK1cBgKi0jIyLWT0/igAJQ4+scF69kQD0GWBA9pJ?=
 =?iso-8859-1?Q?KikQd3BcipS75ps5vMD7W5OsT+hAuSIJXyx5DmZtZfS1f7faLGQj3nwrjk?=
 =?iso-8859-1?Q?wGRavWZzeJKB1Y9NvmPuC3p5KZMTo1NUernnef0EHSAAt8BBhmhKiKP2Vn?=
 =?iso-8859-1?Q?5rvZavE/zA7FvQgLjYtTN0jHlFSKrREFma2DZv3eFGgbBEcfttKhp+9T7X?=
 =?iso-8859-1?Q?lMKnBY5OgQnwDQ7m9SVcTZ00ueuQePa3YXmYE7+9v4b9nHSQSsiT8sPiGH?=
 =?iso-8859-1?Q?bz6+9YSy3qQv2J4m0J6mVBrGabXK1WSZGBSpfO3NPZryj2uzgqGO5Tew?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 0e5a2912-032c-4928-a426-08dad3f5f1a5
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Dec 2022 23:44:10.1896 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: H76jz488DnKSs7GIU2Gck5FaYEX7gdaIwSXP1hYVGL4PhR0OlyKHJVy6Ckql7poBaNIkMCYK67bbRW25RHkZ6EHQNP9Oy+LkOkEAMOvZfNI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4885
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Dec 01, 2022 at 03:27:25PM -0800, Lucas De Marchi wrote:
> On Thu, Dec 01, 2022 at 03:01:05PM -0800, Matt Roper wrote:
> > On Wed, Nov 30, 2022 at 03:17:08PM -0800, Matt Atwood wrote:
> > > From: Jouni Högander <jouni.hogander@intel.com>
> > > 
> > > This patch introduces initial workarounds for mtl platform
> > > 
> > > Bspec: 66624
> > > 
> > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_fbc.c  |  4 +++-
> > >  drivers/gpu/drm/i915/display/intel_hdmi.c |  3 ++-
> > >  drivers/gpu/drm/i915/display/intel_psr.c  | 27 ++++++++++++++++-------
> > >  drivers/gpu/drm/i915/i915_drv.h           |  4 ++++
> > >  4 files changed, 28 insertions(+), 10 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > index b5ee5ea0d010..8f269553d826 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > > @@ -1095,7 +1095,9 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
> > >  	}
> > > 
> > >  	/* Wa_14016291713 */
> > > -	if (IS_DISPLAY_VER(i915, 12, 13) && crtc_state->has_psr) {
> > > +	if ((IS_DISPLAY_VER(i915, 12, 13) ||
> > > +	     IS_MTL_DISPLAY_STEP(i915, STEP_A0, STEP_C0)) &&
> > > +	    crtc_state->has_psr) {
> > >  		plane_state->no_fbc_reason = "PSR1 enabled (Wa_14016291713)";
> > >  		return 0;
> > >  	}
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > index e82f8a07e2b0..efa2da080f62 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > > @@ -537,7 +537,8 @@ void hsw_write_infoframe(struct intel_encoder *encoder,
> > >  			       0);
> > > 
> > >  	/* Wa_14013475917 */
> > > -	if (DISPLAY_VER(dev_priv) == 13 && crtc_state->has_psr &&
> > > +	if ((DISPLAY_VER(dev_priv) == 13 ||
> > > +	     IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0)) && crtc_state->has_psr &&
> > >  	    type == DP_SDP_VSC)
> > >  		return;
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> > > index 5b678916e6db..7982157fb1ff 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_psr.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> > > @@ -797,7 +797,7 @@ static bool psr2_granularity_check(struct intel_dp *intel_dp,
> > >  		return intel_dp->psr.su_y_granularity == 4;
> > > 
> > >  	/*
> > > -	 * adl_p and display 14+ platforms has 1 line granularity.
> > > +	 * adl_p and mtl platforms has 1 line granularity.
> > >  	 * For other platforms with SW tracking we can adjust the y coordinates
> > >  	 * to match sink requirement if multiple of 4.
> > >  	 */
> > > @@ -1170,11 +1170,14 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
> > >  				     PSR2_ADD_VERTICAL_LINE_COUNT);
> > > 
> > >  		/*
> > > -		 * Wa_16014451276:adlp
> > > +		 * Wa_16014451276:adlp,mtl[a0,b0]
> > 
> > These days we don't really add steppings in these comments; at best
> > they're just reiterating information that can be easily seen from the
> > code below, at worst they get out of sync and cause confusion.  I'd drop
> > the "[a0,b0]" part (which also isn't accurate anyway if you're using
> > range notation...it would be "[a0..b0)" in that case).
> > 
> > Honestly even the list of platform names on workarounds is of
> > questionable value and I'm thinking about writing a patch that just
> > drops all of them throughout i915, leaving just the workaround lineage
> > number.  Maybe I'd keep the platform names in the few cases where we
> > have multiple workaround numbers (with different sets of platforms) all
> > requesting the same programming of a register...
> 
> I'd be happy to ack such patch :)
> 
> > 
> > >  		 * All supported adlp panels have 1-based X granularity, this may
> > >  		 * cause issues if non-supported panels are used.
> > >  		 */
> > > -		if (IS_ALDERLAKE_P(dev_priv))
> > > +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > > +			intel_de_rmw(dev_priv, MTL_CHICKEN_TRANS(cpu_transcoder), 0,
> > > +				     ADLP_1_BASED_X_GRANULARITY);
> > > +		else if (IS_ALDERLAKE_P(dev_priv))
> > >  			intel_de_rmw(dev_priv, CHICKEN_TRANS(cpu_transcoder), 0,
> > >  				     ADLP_1_BASED_X_GRANULARITY);
> > > 
> > > @@ -1185,8 +1188,12 @@ static void intel_psr_enable_source(struct intel_dp *intel_dp,
> > >  				     TRANS_SET_CONTEXT_LATENCY_MASK,
> > >  				     TRANS_SET_CONTEXT_LATENCY_VALUE(1));
> > > 
> > > -		/* Wa_16012604467:adlp */
> > > -		if (IS_ALDERLAKE_P(dev_priv))
> > > +		/* Wa_16012604467:adlp,mtl[a0,b0] */
> > > +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > > +			intel_de_rmw(dev_priv,
> > > +				     MTL_CLKGATE_DIS_TRANS(cpu_transcoder), 0,
> > > +				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS);
> > > +		else if (IS_ALDERLAKE_P(dev_priv))
> > >  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC, 0,
> > >  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS);
> > > 
> > > @@ -1362,8 +1369,12 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
> > >  				     TRANS_SET_CONTEXT_LATENCY(intel_dp->psr.transcoder),
> > >  				     TRANS_SET_CONTEXT_LATENCY_MASK, 0);
> > > 
> > > -		/* Wa_16012604467:adlp */
> > > -		if (IS_ALDERLAKE_P(dev_priv))
> > > +		/* Wa_16012604467:adlp,mtl[a0,b0] */
> > > +		if (IS_MTL_DISPLAY_STEP(dev_priv, STEP_A0, STEP_B0))
> > > +			intel_de_rmw(dev_priv,
> > > +				     MTL_CLKGATE_DIS_TRANS(intel_dp->psr.transcoder),
> > > +				     MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS, 0);
> > > +		else if (IS_ALDERLAKE_P(dev_priv))
> > >  			intel_de_rmw(dev_priv, CLKGATE_DIS_MISC,
> > >  				     CLKGATE_DIS_MISC_DMASC_GATING_DIS, 0);
> > > 
> > > @@ -1625,7 +1636,7 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
> > > 
> > >  	if (full_update) {
> > >  		/*
> > > -		 * Not applying Wa_14014971508:adlp as we do not support the
> > > +		 * Not applying Wa_14014971508:adlp,mtl as we do not support the
> > >  		 * feature that requires this workaround.
> > >  		 */
> > >  		val |= man_trk_ctl_single_full_frame_bit_get(dev_priv);
> > > diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> > > index a8a5bd426e78..ecb027626a21 100644
> > > --- a/drivers/gpu/drm/i915/i915_drv.h
> > > +++ b/drivers/gpu/drm/i915/i915_drv.h
> > > @@ -727,6 +727,10 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
> > >  	(IS_SUBPLATFORM(__i915, INTEL_METEORLAKE, INTEL_SUBPLATFORM_##variant) && \
> > >  	 IS_GRAPHICS_STEP(__i915, since, until))
> > > 
> > > +#define IS_MTL_DISPLAY_STEP(__i915, since, until) \
> > > +	(DISPLAY_VER(__i915) == 14 && \
> > 
> > As Tvrtko noted, this could come back to bite us in the future if
> > another platform shows up with 14.10, 14.50, etc.  MTL has exactly
> > version 14.0, so best to make this
> > 
> >        DISPLAY_VER_FULL(__i915) == IP_VER(14, 0)
> > 
> > so that it won't automatically capture future platforms by accident.
> 
> I think it's better to do a platform check as the other platforms are
> doing. See DG2 for example:
> 
> #define IS_DG2_DISPLAY_STEP(__i915, since, until) \
>         (IS_DG2(__i915) && \
>          IS_DISPLAY_STEP(__i915, since, until))

I guess that's fine in the short term, but in the long term that's the
kind of thing we need to move away from.  We're really not supposed to
be using platform checks (which are derived from PCI ID) anymore going
forward.  At some point, even things like IS_MTL_DISPLAY_STEP() will get
replaced with something more along the lines of

   IS_GMDID_DISPLAY_STEP(12, 70, STEP_A0, STEP_C0)

because the expectation is that none of this is actually tied to the
platform anymore, just to the IP versions of the various chiplets (which
can be mixed-and-matched and in theory could be re-used on other
platforms).  But today MTL is the first/only hardware we have using this
design, so it doesn't matter too much; we don't have to clean this all
up immediately.


Matt

> 
> Lucas De Marchi

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
