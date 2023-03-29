Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E31BA6CF332
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 21:33:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DE4210E180;
	Wed, 29 Mar 2023 19:33:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E886710E180
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 19:33:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680118383; x=1711654383;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=AJBRkB5OUuuVOcdFw5EhNdAj5KxlZtBojay0/k/1fyY=;
 b=gTDx2CD7gh+RnpvYyqe3R+5i6OWZow9IzDvmMgKHe2tJVzu9o0pzgZ0J
 n5ry7s3mkeysMEYVAhFyy9LcagDQZIDE98nUgzkyYm4FYgImRuJ7zwoAV
 pmfbwRC3KbftLkiExIw/Tl6/Ym8jgjxu3ZeoeZOnZUwOnUC8sueFOD14k
 Ew1n6Jv2HNqilT+vvCcGV1dcabxF8TmEKigCJLuOgBVOwt9Salxr5W1Vx
 DH2q0Hx2rtInfm6AWuDGc118kqqhgHHlQ8CJW3eAhKcvaBT3rWlxRdxvL
 yECSYCflFnnWFyhUW9XnBicIZ6WdYi7+q7IEbhNDuN0Bc/5lIxD0OIgim A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="320638638"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="320638638"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 12:33:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10664"; a="634588670"
X-IronPort-AV: E=Sophos;i="5.98,301,1673942400"; d="scan'208";a="634588670"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orsmga003.jf.intel.com with ESMTP; 29 Mar 2023 12:33:03 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 29 Mar 2023 12:33:02 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Wed, 29 Mar 2023 12:33:02 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Wed, 29 Mar 2023 12:33:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RHouLTVkVuj9s7IjSHjl2tRiMxBqkY7DtYOyNe5AUdimVMNkEA9Pr5zpRjyUcw44/cJMjAv0v8HGLOgMqIdsCJunF8nAdxNqKqfRshMJPQJkT6IFt8uPnJ7IhrPQhwz2Xy4Zzb47DLhy03GPfVzY8TqFULUz4gZqfXR/H+J5Mffh6rPOUIAhAIl002jFMRH/Ne8NOhBt/i4WKNgldvM0NDDZMVLkzQf2I+ntwui7cfx69hFZ30dLllFPs34EiaP58/dZ/FvsQ5o8JKetchRDpmn+7xFuFqhDA0KedQuRO7mf4jzO1c7H4EETBJUTFJeOCNq9dSwe5QbWpke57/KS1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yakugHmuBxRqBMil/qr7xDvGn9NZUonCmVZMG92UZvk=;
 b=hvvIv0NANDK9kR32wAKTfcQ9ay1/NnyDVpIHIu9M3ocNOmwTE9V0tI9Q6TLklR2A5RukuQJ5XszgZwkNLkBHDTJBYJc7LWiqv4+hlKu+yMjnzqRwX58m01LnPojAnrKJInequ3JVC3VUXo9fjAOK6FHONmMTFroGMC6ZAQLZPHgmeEIVHws1zeML88UPr/9gksiKwG1JUYN7lub4nyZTQQVeUqmB+CPVYNI3E5BgColZ4Git3k65K5ulI5K2VJBm2pIyw5sFIVSTo45ZB65M/dCrGuNqaVqYGKBRfLmo5Vdk5SsUDFEd/VyB4ylWfAKAQriM/9gtYbHNkiLnPW3rkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by SA3PR11MB8021.namprd11.prod.outlook.com (2603:10b6:806:2fd::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6222.35; Wed, 29 Mar
 2023 19:33:00 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::2b57:646c:1b01:cd18%6]) with mapi id 15.20.6222.032; Wed, 29 Mar 2023
 19:33:00 +0000
Date: Wed, 29 Mar 2023 15:32:55 -0400
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <ZCSSZyYqplVSR8T9@intel.com>
References: <20230327161223.406573-1-rodrigo.vivi@intel.com>
 <87tty44zi7.fsf@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87tty44zi7.fsf@intel.com>
X-ClientProxiedBy: BYAPR01CA0017.prod.exchangelabs.com (2603:10b6:a02:80::30)
 To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|SA3PR11MB8021:EE_
X-MS-Office365-Filtering-Correlation-Id: edd2e063-93f8-4b3f-708d-08db308c67f8
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: U3y/rxG/aUKM3CVW8vPOeWsvFA8QyXioQsBD4KFakqySpM1Tuj32kqz2s1rTVzRBr40j1LRcwzayl5GbPYLqozumsnzMrcnqVj3k7hhlJQNpymRAJM2xxM0NoIoMUu6sA6SKDMsBthC+yT8sR7dSWx+N/IgHOMZ4JubVIgKVjhYxQF4w9d1rzOUsIVBoRmFdsu3SEmDJDixB5CIfyhLKw8Zjj+pCWFSutEYT0lirp3aHOqQqU9HOUU7ZV8T1sQaEuI+xtkFc4GF5R+hQMcUGb2VptMgPv/o47QuVRPV4cMDipEQ7Ztf5IhsyffZXgyyRTAiEGJj5Jq9kDxpsm2ve8pdzTPOZh/jPtGdMp49SWfB8taWFeSufWwQngJDl565Fo+nfN944AVgUJNeUuAb6WqMiYIaFcCB338cVAyvMqqnrOzZF1qjHFGPc9UkAN9RD5+kkv6h/neC3KOxlJfEYycCi+AAaG0Vgczv/glLlTV5U/1KXJ8GjIQGwf3MBfvLc
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(366004)(39860400002)(136003)(376002)(346002)(451199021)(316002)(6486002)(966005)(6666004)(37006003)(478600001)(6636002)(41300700001)(4326008)(66476007)(66556008)(66946007)(86362001)(36756003)(66574015)(83380400001)(2616005)(2906002)(8676002)(186003)(8936002)(5660300002)(6862004)(44832011)(82960400001)(6506007)(6512007)(26005)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?2ql2gWYvkxwGsr96ni+YRnS9XKVkphgOcwixGXa+Kry+aW7aC88mqlnZql?=
 =?iso-8859-1?Q?xn8j6JXh9GAb6O/UNP4kWX6/yTn/2pTdxe2E6rc3QD/IVXmhKF+WCNlMH3?=
 =?iso-8859-1?Q?f9P1zWG970yrAPEAy7BjFfUxckBv3jSzKoYwRGFZbIM+AoVp3JycYkVaYb?=
 =?iso-8859-1?Q?xfuO7/1Dmi8EK+OiLyFvRgjDNjZ6m9NzF/jS3C/r3FqyMMyAVsScSEzj18?=
 =?iso-8859-1?Q?fPNI24EECS/N4bKuBZsNWpvUEXjY2q1OZoTpN8JHitg1wmEhJcXXOXyA4c?=
 =?iso-8859-1?Q?wF/AH/4YHsa4JRpXC/M/L5cGcN45oyPKfCxaS3+/zNQjj41uPlCzU7I2TN?=
 =?iso-8859-1?Q?AhT6re7WcoCzg2Ov/knbEy++DV1Ijy/iEdgXB0hbXB1mhFZQlYqANB1o62?=
 =?iso-8859-1?Q?D2fSjSyd+aOj+orMEf74tyK3h6gbXgCzCN3pOLdAb6elhQLAuKFXbn2Lvf?=
 =?iso-8859-1?Q?9NAL+aWLt6LdvmS53nyaMw9/QxDqOtQ+lmu4MUnijsc3bLtwHfoM1Hw5r7?=
 =?iso-8859-1?Q?LQ2MW1CIg2pLdxbkegpYBjgiN32/jKahQXSxAs6QRSUw8aVb1hnXLI43S1?=
 =?iso-8859-1?Q?dT/bXAhDDB8LW2v6KLZS2srg8q8Sa1mltOLvrprhV47zhtl+zwzZ4Jw0tE?=
 =?iso-8859-1?Q?gllWJwZpBezTm75Xq1rAqoleIfweu/8LrTjevG2Wi83q6iZCzJljAeDCC3?=
 =?iso-8859-1?Q?hTPX9cLt3JlQgcb3gXFXzManVDhGBaGVFRnWXQ7ZatpzdXGWN8gCNr0QR7?=
 =?iso-8859-1?Q?Ua/8ZbXVcBvsj4kqdgEgUtD2+mll2tGWUFRJmVB7H8akO1dKVHqnWRpfP4?=
 =?iso-8859-1?Q?mdxIVsbQ+gyi41N5PlQQfRfb6XDu9VqoVstMOeTQHunEwabyGsDRaqiTzL?=
 =?iso-8859-1?Q?1TdiNJkknbajO301cBeKvKr4/RlbMVPY8z/lHcmIS0+bHzDX4ugOeYFxY0?=
 =?iso-8859-1?Q?q0Kov/5vS+P0+WfB+mtNKK3YqaLzTTL7yQlYz+srbk8TAN9mmOzeZA/n2w?=
 =?iso-8859-1?Q?sLl4W3f564GXD6kMllZKvWdyb86/I5JUqiBzAEKo5eeXp7HQOBJiGq1iG0?=
 =?iso-8859-1?Q?XRJFFLCqH1V1/4wvfhujBGlmJazX5EMVaIHIrpO/rwFjrLBUVCqDXNa/TS?=
 =?iso-8859-1?Q?OiwppMZFRqvSZ1xC5TQlh/1B/dcsqj3zh8xJnrBzMr0d94jX1k61OqBKn3?=
 =?iso-8859-1?Q?1W5hKFCtRx6rlgtz6W90DYolZ1wyJ2EaDyETb4tVtrnPkYZrLPyIUNAYAd?=
 =?iso-8859-1?Q?ZJDNGdBvtcCzRAvCLG+rSRf20a2gg0gOj/Hmsh1Xnm4Vc5EcuZbncBuUPW?=
 =?iso-8859-1?Q?7knRc4tuliVKqQAgimI0YI2CORm8uU05l54BHLgcmNJQseGmtVc/rEK/C7?=
 =?iso-8859-1?Q?mBOVqvswj1V4K9OHRRc7jrQKNMh2lLJKL0MUCYTH5gJVTafjeWMEZ4mzqB?=
 =?iso-8859-1?Q?RE//kyMOVplk46JPlt4fWSjaCOJAZqiCR6/CFZExXp2qufBwDcONXpDITP?=
 =?iso-8859-1?Q?e++cckOFu4RGrQs/4534bfliC4/7fihZj2w9W/UIzrc9pr32YKhntOwMPe?=
 =?iso-8859-1?Q?HmbuNT+kolHDz5cDlYPH+3kI8fKro/saav5l0LPSG7/lN6Pz/tzKb1A0Zm?=
 =?iso-8859-1?Q?9VG9VQLje20vikx3ydm/QgmeNlAHUhP+Cr?=
X-MS-Exchange-CrossTenant-Network-Message-Id: edd2e063-93f8-4b3f-708d-08db308c67f8
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Mar 2023 19:33:00.4161 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: wlpZK+X8y10ubSjUQwfrTJ2+bDMhWwl70cdd9Ydsd7lkeSP+xf3bKyDPDuo1OsBhqwuOEOXe79jUQhVpJWyJAA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8021
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Restore dsparb_lock.
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

On Tue, Mar 28, 2023 at 07:22:24PM +0300, Jani Nikula wrote:
> On Mon, 27 Mar 2023, Rodrigo Vivi <rodrigo.vivi@intel.com> wrote:
> > uncore->lock only protects the forcewake domain itself,
> > not the register accesses.
> >
> > uncore's _fw alternatives are for cases where the domains
> > are not needed because we are sure that they are already
> > awake.
> >
> > So the move towards the uncore's _fw alternatives seems
> > right, however using the uncore-lock to protect the dsparb
> > registers seems an abuse of the uncore-lock.
> >
> > Let's restore the previous individual lock and try to get
> > rid of the direct uncore accesses from the display code.
> >
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
> > Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Link: https://patchwork.freedesktop.org/patch/msgid/20230308165859.235520-1-rodrigo.vivi@intel.com
> > ---
> >  drivers/gpu/drm/i915/display/i9xx_wm.c            | 13 ++-----------
> >  drivers/gpu/drm/i915/display/intel_display_core.h |  3 +++
> >  drivers/gpu/drm/i915/i915_driver.c                |  1 +
> >  3 files changed, 6 insertions(+), 11 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
> > index caef72d38798..8fe0b5c63d3a 100644
> > --- a/drivers/gpu/drm/i915/display/i9xx_wm.c
> > +++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
> > @@ -1771,16 +1771,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
> >  
> >  	trace_vlv_fifo_size(crtc, sprite0_start, sprite1_start, fifo_size);
> >  
> > -	/*
> > -	 * uncore.lock serves a double purpose here. It allows us to
> > -	 * use the less expensive I915_{READ,WRITE}_FW() functions, and
> > -	 * it protects the DSPARB registers from getting clobbered by
> > -	 * parallel updates from multiple pipes.
> > -	 *
> > -	 * intel_pipe_update_start() has already disabled interrupts
> > -	 * for us, so a plain spin_lock() is sufficient here.
> > -	 */
> > -	spin_lock(&uncore->lock);
> > +	spin_lock(&dev_priv->display.wm.dsparb_lock);
> >  
> >  	switch (crtc->pipe) {
> >  	case PIPE_A:
> > @@ -1840,7 +1831,7 @@ static void vlv_atomic_update_fifo(struct intel_atomic_state *state,
> >  
> >  	intel_uncore_posting_read_fw(uncore, DSPARB);
> >  
> > -	spin_unlock(&uncore->lock);
> > +	spin_unlock(&dev_priv->display.wm.dsparb_lock);
> >  }
> >  
> >  #undef VLV_FIFO
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h b/drivers/gpu/drm/i915/display/intel_display_core.h
> > index 0b5509f268a7..e4da8902c878 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > @@ -264,6 +264,9 @@ struct intel_wm {
> >  	 */
> >  	struct mutex wm_mutex;
> >  
> > +	/* protects DSPARB registers on pre-g4x/vlv/chv */
> > +	spinlock_t dsparb_lock;
> > +
> >  	bool ipc_enabled;
> >  };
> >  
> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index 12b5296ee744..e90a0c0403a6 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -223,6 +223,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
> >  	mutex_init(&dev_priv->display.pps.mutex);
> >  	mutex_init(&dev_priv->display.hdcp.comp_mutex);
> >  	spin_lock_init(&dev_priv->display.dkl.phy_lock);
> > +	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
> 
> Can we do this in i9xx_wm_init() instead?

I was going to modify it here right now, but then I noticed
the cases above and remembered why I have put it here.
All the display locks are getting set in here.

Probably better to move with this patch as is and then add
a new on top moving the various locks to its individual inits?

> 
> 
> >  
> >  	i915_memcpy_init_early(dev_priv);
> >  	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
