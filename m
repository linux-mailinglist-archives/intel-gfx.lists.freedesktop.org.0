Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5115D6B302A
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Mar 2023 23:04:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4613210E1CF;
	Thu,  9 Mar 2023 22:04:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8AA0910E8F0
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Mar 2023 22:04:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678399477; x=1709935477;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=6+nWx1Nu6N28itJDDjG8e4x2NkPrn3ZosVK2OMgt1aw=;
 b=Iocrl4TRZHmDMdM1ifdw3oa+fBy5SwLz1am3u7f0I4+c6R/0sQlHAk0B
 U5fn4sSzkjCRJQeP9Lj08gHGmegA0zSKPC7ue0lmpZ7Jic7HL6rsiEZ1t
 OWwPu473L3tyKgWT2NSvkn3oqJMK/tgExWoxPkS4QIUzmyjjweWqdXt9g
 K4wFABPTDxwisL2anODRIG/B3JvwHrLldO/rQS7TYJ/3EfJp+pEHvX/hA
 jlpiUzwB6hVNFYnAKjXiTJjHC4irqoNZHY8ZTtYRWTgIOQaXBZRoPDM9+
 K+myqibTgNxR/tWH69eRYJEPHepz2Ue1gK+gNZY6Pgo/hIiMyT8jIkcBs A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="335280810"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="335280810"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2023 14:04:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10644"; a="654932343"
X-IronPort-AV: E=Sophos;i="5.98,247,1673942400"; d="scan'208";a="654932343"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga006.jf.intel.com with ESMTP; 09 Mar 2023 14:04:01 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Mar 2023 14:04:00 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 9 Mar 2023 14:04:00 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 9 Mar 2023 14:03:59 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c5zdEuq5wjexvgxnWPEsS3Bsa20VbRHawCNlJBlHREz6WAvwFKSjeOEy0ozSeBgHLUy9dDidiApp7CYmdkSdtYceao0PLfGo4V2gLHuShNJ1YHVOo/K8jlZ36i+vnZMMJZX7++etP524ImRZvYnOpyLD+3gAejPo1OJVWBEEX/yt+QI2q8pdDvycsuux27kbE0tOAF64i8Kux2yZ+MnvXS1DOpZwrd+ldXucSZxjllLXHQGi5dmys1///NYVGNmwuyxs11WlFfWOfgzDpjc2iKAPIjv81thNFX2J22vMJdx3wsOkIy2Kff1AGEWOeQ1KnpoJ8z1458tGjm+22zopwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QkgBL/b2+wJxNkrQmNAAUvtgXwY920mYcDaZfJ37g3w=;
 b=n2UN7GJ+ZwWg8gwPhvGcUN++JBbQblMtF4vN6Ki0WBQiaUq48nhDfGqyN8jqM2AVdWvCntMeig3uR/8Sch87Qa+UEISIC07PtQSDE0MDgIN03qp9vXZsH/X3EB1yPysly4qsf4AGlzxpueFmVyDg89XBeEemxaer1pxdo4WcM3yd+CgJfogF+n+qTeATTzeuejQFkPbRloU14f874Hk8WRK9yhLtJY1/zjBBmrffcUfa6gW478JiYsairb6SOiubYCHPLSZ/l/RbZYaOZjVaaUlLHjGr7f9HXB4/clhc9wsP42yYqZKyV4MAptFvV+RMd8t67wBHI50UuKtvsmzyzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MN0PR11MB6059.namprd11.prod.outlook.com (2603:10b6:208:377::9)
 by DM4PR11MB7400.namprd11.prod.outlook.com (2603:10b6:8:100::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6156.28; Thu, 9 Mar
 2023 22:03:57 +0000
Received: from MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158]) by MN0PR11MB6059.namprd11.prod.outlook.com
 ([fe80::3bd5:710c:ebab:6158%9]) with mapi id 15.20.6156.029; Thu, 9 Mar 2023
 22:03:57 +0000
Date: Thu, 9 Mar 2023 17:03:52 -0500
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <ZApXyJsA6WUxrood@intel.com>
References: <20230308165859.235520-1-rodrigo.vivi@intel.com>
 <ZAkGJw5ZNgvuS01d@intel.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZAkGJw5ZNgvuS01d@intel.com>
X-ClientProxiedBy: SJ0PR13CA0235.namprd13.prod.outlook.com
 (2603:10b6:a03:2c1::30) To MN0PR11MB6059.namprd11.prod.outlook.com
 (2603:10b6:208:377::9)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MN0PR11MB6059:EE_|DM4PR11MB7400:EE_
X-MS-Office365-Filtering-Correlation-Id: a5194109-71d7-4a6f-35cf-08db20ea2de2
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tvZe1Ac7v4ZGyRZblZ+b6e6zunzTM5rvGZdeCifvduDV4iFejyGmJb4OvqVybr6RRS1tUf0SK0aHk6KF/a2E0+JaW4X8RYjImFn+Q2aJloNrUDqraA/WYGJ56GrFL3vsXoUsTN/nOYfq+eOaTneOlkE3yMe84cpqkuCZ32uefV0hzEeCIP/h/bS1Iirwhkcf9UN7MOF6KJyWLQOZU8bZBXxjaXHzzHj3YYGjk49vZWLfM5XvGv0XwOqs7HVJvbC8r8hfqqFdfdMS8D4eKZ1xnihNVz7hWU+vnQcG0HNU6g70LOBM9nAfAgkUcfrJoRvFZIYFJss8PkPo4sevIRSal9k+52m4tvbWVmZ2e8/6oCIQH3O05f33AC/7UKZFzL2kH/sGh8y7F0XlAIx7KPgKNmvfxYgMENmKj8aHaf2H/0agSHFQYBVyvWfEYMiE1dhSlTduUwzT+88totpzCVQkjoS1dpg4IHalmxGXogi+jq6EL0Hyazlxs+YjADweuFmwX2gdsl2FPcpxjXEhzvKnFlEdD+EHQP2mSlaefj6s4eNZ19M1S/MIq8MZlqY1wRv2LRcYEcytcG56tIJD5Q/qg7LVEMSCBTB9k5jBJPZ1xR7+q6tyzncI2+HBKqv+9Uko
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB6059.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(376002)(346002)(39860400002)(396003)(366004)(136003)(451199018)(6486002)(6506007)(83380400001)(44832011)(5660300002)(478600001)(966005)(2906002)(66574015)(41300700001)(8936002)(66946007)(86362001)(6512007)(66476007)(4326008)(26005)(316002)(82960400001)(6666004)(66556008)(38100700002)(6916009)(2616005)(8676002)(36756003)(186003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?iso-8859-1?Q?NkpZbyK45a2dk9c3MF1SgNRDy/KdXDqMn8Yh6imu3wXLZTtRXwu6yFV/dK?=
 =?iso-8859-1?Q?ek99HXN/MF6GNs/+H1a0bxIa4hae1azDH9pj4njGkqegUG2yuAtEeiWcBT?=
 =?iso-8859-1?Q?B6Egt4ibBTJci4UySvj4QtcG4998pn4UzHcf8XQ50Ho/fLjFoUgA6ZWnpB?=
 =?iso-8859-1?Q?DiRv3HBjVfaUleS6SOAFDUHXCt8k4upoMafsRMhHuSlNp96K4DDk+E4LYT?=
 =?iso-8859-1?Q?37L0kr6TcRJmxiPKvaKQR7kccrztlL7IZgJ3/KOk6pOtwb3gLYVh+Yvbms?=
 =?iso-8859-1?Q?xxC9/gvHL08rNB0j6pssZTpyqDCt/3nFECzJK8bzO6bU0TIHdWnO19sUy/?=
 =?iso-8859-1?Q?xVMZej7MQBexwA9Jsc9btaPpqM7Y0cOXpPTrG8RO189jOviyvnryWnYjip?=
 =?iso-8859-1?Q?nVHjQPw68l/jO6onb6xLD7pMsw8+gackQdGZf5tMMobM5GUyqB9rNHoDvc?=
 =?iso-8859-1?Q?jBeYOJ1zR/X2QZZGMd/LsvAUzEWlgQ5n8u689UF/Na33FgwbIwJ/FJdYaR?=
 =?iso-8859-1?Q?+8Yh8cFA+6bYUTgKL3KsGyr8fQZUobH3Ku2S9VjhS/KDWD8JNYjhb5kWO/?=
 =?iso-8859-1?Q?rOOdX+Pc5iXi5UZydUMQpjpdQWN3PQRdEi8Qlq7E6AjnUa+kiMvZk0DTK6?=
 =?iso-8859-1?Q?hymeXQqm7+HsvqLTg8+OhhW301NH4VCyLZlb57bqC3ZwSNnoepsQeE0PQ7?=
 =?iso-8859-1?Q?bNjtKb5jog9+Pt5voNZQcugDtV9jJWxG7r6arodDZg0CnT8/7PhLmIL4e/?=
 =?iso-8859-1?Q?Dpqpdl3+ZwWuJLwpp0eFIvyNLfjT/P9ctW06hJQaDBPra7v/iNa/ojdCzX?=
 =?iso-8859-1?Q?ZLCW8+sTZL5wc7mV6EDafKDCwVwZvUbiPGroPFbt70Lyqfvribiy0B9GHy?=
 =?iso-8859-1?Q?79ukVdhYPjUEPnOUjJT7ApOEL2gT6IAXehrwfIRh2xIU0ymPz3qLwbRKuM?=
 =?iso-8859-1?Q?j9HTba730MdZYg1kladn9HEJOpwaEZcMMz8LyH1I+w9ZDVMuQMcpwLORaS?=
 =?iso-8859-1?Q?5Yk2kEzLkKfcV0H8Vo75OiJhEbRhHlhxTOOg2dTZGNKUjLPcaze+RjXZfI?=
 =?iso-8859-1?Q?AFPLCXwiffDXNahLqFqnMqwq2uIUpDz6cNDOzA6F22BkdyFRk4RYyYPywg?=
 =?iso-8859-1?Q?OO7XtU4jCjEfmVZpmb73llvfMVtl8YqdSlzHqaojXOsiKy99Qp5W56o23+?=
 =?iso-8859-1?Q?fBp8YL36cc6ucoeU4QfEnHHQMs6kvYHNUK2+JwIR4+obctYNbiEceVIcdD?=
 =?iso-8859-1?Q?dV+bigvCK1GAx75c+hOgi6wvAreTIyC16juYrp2Lhklb2XEn50WdT33X2L?=
 =?iso-8859-1?Q?MhCc5+a3kSJKvqesN1TML1PcIqO3ZVLGCM9GxzyCApyybIiniO42Fysj+f?=
 =?iso-8859-1?Q?6R2gdH0JXLwGMjlSYEHiWKS310i9harGtXcRFiWoH7x0AX/4bCopCR5X4u?=
 =?iso-8859-1?Q?xgnP5wqUXzTWj5WjnKTZTmVe+IitvHnoM+Ampt60tElAKB5Adp8/6EO7ZN?=
 =?iso-8859-1?Q?ViCJ2KW1oKCNwHCHWek/6ugi8lSVcqHO+hlEssZVnFMypFNoKm5JopOMTb?=
 =?iso-8859-1?Q?l74xXLllzqLA7UAYzFULpjbKosvXKHLOfYjTlA3wcM6tqtF0sIdgbcel8h?=
 =?iso-8859-1?Q?TTV0RnRPublGX0WknFzg33lh85//1nD5g3Y55ZeYiI39zOOLpVRc+c7A?=
 =?iso-8859-1?Q?=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a5194109-71d7-4a6f-35cf-08db20ea2de2
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB6059.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Mar 2023 22:03:57.0104 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: miEJI9qyqWFb54wCcsOCYgO02RV7hjASl78PMMAFP4JC8bqka/Zwvmg5fh80LoAZ8PhAhY8dXWwiaj9CWetcBw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7400
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
Cc: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Mar 09, 2023 at 12:03:19AM +0200, Ville Syrjälä wrote:
> On Wed, Mar 08, 2023 at 11:58:58AM -0500, Rodrigo Vivi wrote:
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
> 
> I was wondering if we need to preserve the comment about irqs,
> but since this is the only place using this lock, and it's never
> called from an irq handler a non-irq disabling spinlock will suffice
> anyway.
> 
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

thoughts on this: https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_114868v2/fi-kbl-7567u/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence@pipe-b-dp-1.html

maybe related to the usage of this uncore.lock in

drivers/gpu/drm/i915/display/intel_vblank.c

?

Should we create another spin lock and include both of these cases?
(Then the irq comment is relevant again :))

> 
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
> > index fdab7bb93a7d..68c6bfb91dbe 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > @@ -253,6 +253,9 @@ struct intel_wm {
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
> > index a53fd339e2cc..c78e36444a12 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -223,6 +223,7 @@ static int i915_driver_early_probe(struct drm_i915_private *dev_priv)
> >  	mutex_init(&dev_priv->display.pps.mutex);
> >  	mutex_init(&dev_priv->display.hdcp.comp_mutex);
> >  	spin_lock_init(&dev_priv->display.dkl.phy_lock);
> > +	spin_lock_init(&dev_priv->display.wm.dsparb_lock);
> >  
> >  	i915_memcpy_init_early(dev_priv);
> >  	intel_runtime_pm_init_early(&dev_priv->runtime_pm);
> > -- 
> > 2.39.2
> 
> -- 
> Ville Syrjälä
> Intel
