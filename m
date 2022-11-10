Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5EED624881
	for <lists+intel-gfx@lfdr.de>; Thu, 10 Nov 2022 18:43:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D61D110E738;
	Thu, 10 Nov 2022 17:43:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3911810E748
 for <intel-gfx@lists.freedesktop.org>; Thu, 10 Nov 2022 17:43:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668102214; x=1699638214;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=5lUr7Rm6PATIt0lWoqZTl2kdWyQSuBB06OH+TtNYQQo=;
 b=ab4dDm/4pzw9L2sgKZ5q1R92ukQZME9Q/Pq2M6mTH0DQM1X1trB9Uhre
 ACCOGlrcxnKTuIqPp9Rx9+wDUiItTRFhDZzSu7iWxfDqlailOe3fYlgwO
 kKJXhlFOZTm20ss9ihBq/Vy81w+bJjZzlSH/I5nkX1bMz37sW3GQCWEuS
 L29hLVSwZrkEtQrGwQaq1ovytdxf0zKknD5kXdsxbxpUXEi1ReMVt6W6/
 YOiBbU3uhGUl9gzeBqZkbsxt1YBieqB2nigZmlf7GacfKEegrys50QACG
 rkB1t+47INBP+TKtbk7YNuhLN38YLhg3kAWODX+RoK+hj/vs91yTgPrUV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="298884247"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="298884247"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2022 09:43:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10527"; a="700892326"
X-IronPort-AV: E=Sophos;i="5.96,154,1665471600"; d="scan'208";a="700892326"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 10 Nov 2022 09:43:32 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Thu, 10 Nov 2022 09:43:32 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Thu, 10 Nov 2022 09:43:32 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Thu, 10 Nov 2022 09:43:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fiCul0hsx3rh1llC7h44OXrPEiKZBMoRISReAQ/WwdTVbblZRge+fE+YsfhUlC/ZajFFjW4GHA551OQddXq1FwWEt/6i3XLQD3VMx0yHmI+nvGVYjhn52Oos+F9ocNLJVpD1RxtF5yVQaWNz8ey91pa44vKf0dRInICNfdeCojHALlDatqC+MYv8zjZ7xLveN6ZNn/ulZTZBz/LSmqxSwk7EzAgi3eAGnAsckTrVoOzGKNjFE9n2DQOAMYyW+VLyZu8ugX+3rFptVWq93IxnMADdJJcHbCLP2Ka+fr+PjPzssop/+fsG+jmUpaAxYDDjPuvzx642wueqyu8iQp1djQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bTRR8/i2XKrMSuzugG6hMiwIujUTrENpASAergSSHw8=;
 b=NheX9gCOIAvjPlLb4UVVM9vbkhlPVY/B97/LTTMZQFSMzHC44lZEEOtIkT4JF1sH1+ACCbRQNJuk1A2NoCPZdIALbByaLx3APoVfQVd5QpS1idyzAnZGRPfrVSNjPyhWSOrtXB0uDBS5BGmDzOKPrn8vvHtilRsgQhJTOkMjwUznJj+7RP5x6it702yHE3Y9CPnnCopiUevuQIhDifM1dRM6eoE7Tig1ENxlF+XZtIN6N16ouym1ohnSkBtWOv4g4qJNqkgDb+a1NNsoPromyd/RHkGl/Fa//ot6oVGKBr9U6/1rMZrp+XC9h+HYzJAs2Z8x9ygcyzpcpnr78MC2Qg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MWHPR11MB1632.namprd11.prod.outlook.com (2603:10b6:301:11::11)
 by DS0PR11MB6326.namprd11.prod.outlook.com (2603:10b6:8:ce::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.13; Thu, 10 Nov
 2022 17:43:30 +0000
Received: from MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e]) by MWHPR11MB1632.namprd11.prod.outlook.com
 ([fe80::6dfc:c022:bd04:fe3e%7]) with mapi id 15.20.5813.013; Thu, 10 Nov 2022
 17:43:30 +0000
Date: Thu, 10 Nov 2022 09:43:28 -0800
From: Matt Roper <matthew.d.roper@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <Y204QExR4xF515gy@mdroper-desk1.amr.corp.intel.com>
References: <20221110053724.14701-1-anusha.srivatsa@intel.com>
 <87o7tf59rg.fsf@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87o7tf59rg.fsf@intel.com>
X-ClientProxiedBy: SJ0PR05CA0001.namprd05.prod.outlook.com
 (2603:10b6:a03:33b::6) To MWHPR11MB1632.namprd11.prod.outlook.com
 (2603:10b6:301:11::11)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MWHPR11MB1632:EE_|DS0PR11MB6326:EE_
X-MS-Office365-Filtering-Correlation-Id: 27087816-5907-4f1b-b721-08dac3431487
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: j3F/9HfFVpBVeAEwHLQ4uQgDhDBqKERHrN77nEDm6ylycVefYh/bXWNCtJxZCRCa5Dvy0e2FQR2tMq8RMSzC8wIMKZBCR0PFVGHo04Sn7d7LqJCUYY0qAQrfArsTv4q+pdO09qGKnJCaT+Xaux06OGbHVbXAZLAbWUgzRQvLj0bME4vyIvE94V0jraUlpUCwxAPzbyh69qrwcApTAyVSZR7Noep9orGkplTSPx2ENI3GriRTDksjW+Wt73iVE8HVAeveoGdl2uYm2vbHWvb7oN5WP6aNrzCHBm/oAFbSEGYIHKhEajij4Cxb3qKKvsFDMxtGw1Yq7cZMBhHjeRLS0mGkUPyEMWfWzl84L3zt0OJmoyAE4r05kvylFDaXcHi7RB8ruLbnQn5Dpa7crDR9J6DXIHEzRvIOrlH1uzQuDb6TBfD5ZP/qFbBWEKBLU5PuYjr8np50qp9iWbiIWQlgkKsHSl8z0Jb/vYSzuzyS2mSNIUtkRGuCAcqj3USRySYs/Jkv70/vWUKKQHQgWx5A62RwXSbKKNGH12v4oQ7Sn1oNPnCOy+yHoFLVTi3Z6AsXYm1biIPE+XxYmA5NM6rKuYrEBFTJIL89scFOfTnpuspVYd2hwh9lj0GvIAbF2Wd+7VDE1h8WVc1RNnSW+xQzWS/lYD5Vds9WmF0OsCjdHstvSltB1LVAt3QIlixy//X2/wWoCHsVBjiqc2saYS4oYA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB1632.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(346002)(396003)(136003)(376002)(366004)(39860400002)(451199015)(6512007)(26005)(82960400001)(38100700002)(8936002)(66574015)(186003)(6506007)(2906002)(41300700001)(66476007)(5660300002)(8676002)(6916009)(66946007)(66556008)(4326008)(478600001)(316002)(86362001)(6486002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?EFa3K8O03S6QW8M4G0lODKl4zWDh2esMIaht10W+/FZ2X4m/8nJKQXScH/?=
 =?iso-8859-1?Q?y2eJ9yo0n/By/7ahayCDIpWzKzwhydIrx8S0UUu6IbocJtpbg6dcxlh516?=
 =?iso-8859-1?Q?7u8dnHPfUcB0zB6iFXo1/iB3D3biMJwDEEFcPgwHJCu0PY8elzfgc4olbu?=
 =?iso-8859-1?Q?MqroASD44xGewRENgn3b/9Orqkl3S8hJ+y34hDBsteV/joeAjFWnSrNxWA?=
 =?iso-8859-1?Q?ASmXEsOua/Hgr6yYwjAcfEjsN/AluURTVvOPyf4FcMViva8JgIPcOrk6pu?=
 =?iso-8859-1?Q?I5g29XHyYvXh60m6EfrIzj2jvKlOt3sET9wxvC6Ku+kTLdEGFwegbCPoAq?=
 =?iso-8859-1?Q?/UCa+jpHQ3K7PZ7ws31c68NFDy1O1zDfCMlYDC1JPZqO+p0cMM4/UW5TV/?=
 =?iso-8859-1?Q?lDBLlM4exiDqWTI8hdcMOZ06HhRz4Jkf4ebVkcODKWkcVeuASlpxPjHnmP?=
 =?iso-8859-1?Q?u3B4HhihwSpymyyxJ/2RtWuXmYeMXPLuECo82gQ+RYtlQqk1yjSivjIHDx?=
 =?iso-8859-1?Q?70T5Y3/abTh8mgRt+GUBT7or+CPZiMpaA2ZKPwhfu01BAQdaeTHHa9EGLr?=
 =?iso-8859-1?Q?rGDXnq4WRDdG1PgQGFYEC1UEcjp5JhCI39ZS4VF9iz1lO99jumKgqo70MR?=
 =?iso-8859-1?Q?imN3ymqSDGk09sRdu5TGXJfzwLetewT26Nj6Qg5N02aGLGnllJGW+vf1DW?=
 =?iso-8859-1?Q?lhQmdo3M2iELxH6fsw0VXJXlvyctj4BuRgK78SBFwYwI8w6K5wYbjwqrm/?=
 =?iso-8859-1?Q?DS5RxyfXT5FcqYMGSLiofkl6ZLZai0WxIDCSpPc27iqBE0/+piFisoqzxC?=
 =?iso-8859-1?Q?yOaDm0E7d4Z6iWu4luDhKsJexAztRq7AP986+csky6Cp3UfJd8D5IcjHVW?=
 =?iso-8859-1?Q?6xbNoKlx4erq387ZCsjwASQRoxKNRVZ27FmNos8IjcC4PJfTNVI3+jaI8o?=
 =?iso-8859-1?Q?ZdneTMFZf6p3EiE0lkI1qxZj/WKJ2+ptnwC2ZKhq+Sjg362+tyCod5Cil/?=
 =?iso-8859-1?Q?4j9EBXWLFnFMLQx4pA3Sz9QWOWqbN74hus3NkwObjtbL3BopypqYwIJYaM?=
 =?iso-8859-1?Q?EcbPn83W3s2mEpJG25wOp24FpqgnwvzHM1HKosnJfQCyNSOJIntU1DEOam?=
 =?iso-8859-1?Q?YckptuLGJviFiJrS7wiML7AMxSZei/4ZMndsLxXW7IumLl7mY8Pp7hQ6z6?=
 =?iso-8859-1?Q?afbLYvoh+FA0sGxcexhZdOZxlZ9toLUCOuqFUPkI/KmKgykRbbkHgdxJAf?=
 =?iso-8859-1?Q?81HuSqoI24j0WwdbUPtKs7mJsh14Z8+pn12EgzCyk/YIKOoiFQHavlki/K?=
 =?iso-8859-1?Q?1//Sl8ILI89ZLk5/XGG7lRi9JErhrkQSKk4OtB2d2kypF1UybmbjNpT3AJ?=
 =?iso-8859-1?Q?3KqLH4g2PWXUPMKvzOmKnYoyoOcHowp8rwtc0Oa7t6X9dN1qxtX03YDmy0?=
 =?iso-8859-1?Q?ygvN36ekTL7JuXpzw/1nis+FPNv5hrv1Z6kXMqXJDMREe6XpGe8r4NDHrE?=
 =?iso-8859-1?Q?Ftv5+7i4o3/Py6EI+yrZ5L+Q2xOhyqxmWECkX/rGY2dimxKnP2QIOucPAj?=
 =?iso-8859-1?Q?2lODuZpfHa3KH4nD3HSnPKeJUb4D81N8bZ2h3MsSndVa3s9IYA1zhUAeGG?=
 =?iso-8859-1?Q?7mmYUy5//0Y3h2QZsn3AmaGeBgWGKqX+dRcuLig6l11SJL2Ww1R1Jing?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 27087816-5907-4f1b-b721-08dac3431487
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB1632.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2022 17:43:30.2416 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: hciUpKztudEn3pS73eFsbdEuQ4E66pF5IiVP44ajFGEbaYjAmXyAWtvLQPm52ewL4GKfg/KYIxzIdbVF9bf6JZO3rp1LT7a/vujFW2o3W58=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6326
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Add missing checks for
 cdclk crawling
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

On Thu, Nov 10, 2022 at 01:28:19PM +0200, Jani Nikula wrote:
> On Wed, 09 Nov 2022, Anusha Srivatsa <anusha.srivatsa@intel.com> wrote:
> > cdclk_sanitize() function was written assuming vco was a signed integer.
> > vco gets assigned to -1 (essentially ~0) for the case where PLL
> > might be enabled and vco is not a frequency that will ever
> > get used. In such a scenario the right thing to do is disable the
> > PLL and re-enable it again with a valid frequency.
> > However the vco is declared as a unsigned variable.
> > With the above assumption, driver takes crawl path when not needed.
> > Add explicit check to not crawl in the case of an invalid PLL.
> >
> > Cc: Matt Roper <matthew.d.roper@intel.com>
> > Suggested-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c | 2 ++
> >  drivers/gpu/drm/i915/display/intel_cdclk.h | 1 +
> >  2 files changed, 3 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 8a9031012d74..91112d266763 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -1962,6 +1962,8 @@ static bool intel_cdclk_can_crawl(struct drm_i915_private *dev_priv,
> >  	if (!HAS_CDCLK_CRAWL(dev_priv))
> >  		return false;
> >  
> > +	if (intel_pll_is_unknown(a->vco))
> > +		return false;
> >  	/*
> >  	 * The vco and cd2x divider will change independently
> >  	 * from each, so we disallow cd2x change when crawling.
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > index c674879a84a5..6eb83d806f11 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > @@ -80,6 +80,7 @@ intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
> >  	to_intel_cdclk_state(intel_atomic_get_old_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))
> >  #define intel_atomic_get_new_cdclk_state(state) \
> >  	to_intel_cdclk_state(intel_atomic_get_new_global_obj_state(state, &to_i915(state->base.dev)->display.cdclk.obj))
> > +#define intel_pll_is_unknown(vco)	((vco) == ~0)
> 
> Why here? What does a pll function do in intel_cdclk.h?

Since this is referring to the cdclk pll (not port pll's), I suspect
this shouldn't be needed anywhere outside the cdclk code.  So it might
be best just make this a static function inside the cdclk .c file rather
than placing it in a header that exposes it to the rest of the driver.
I.e., something like:

        static bool pll_us_unknown(struct intel_cdclk_state *s) {
                return (s->vco == ~0);
        }


Matt

> 
> BR,
> Jani.
> 
> >  
> >  int intel_cdclk_init(struct drm_i915_private *dev_priv);
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
