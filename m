Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF75479B17
	for <lists+intel-gfx@lfdr.de>; Sat, 18 Dec 2021 14:49:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF7E9113822;
	Sat, 18 Dec 2021 13:49:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94A2C11381E;
 Sat, 18 Dec 2021 13:49:30 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10201"; a="300698743"
X-IronPort-AV: E=Sophos;i="5.88,216,1635231600"; d="scan'208";a="300698743"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2021 05:49:29 -0800
X-IronPort-AV: E=Sophos;i="5.88,216,1635231600"; d="scan'208";a="520154349"
Received: from aluyckx1-mobl3.ger.corp.intel.com (HELO intel.com)
 ([10.251.213.45])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2021 05:49:26 -0800
Date: Sat, 18 Dec 2021 15:49:23 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Message-ID: <Yb3m47syo/ODE8O6@intel.intel>
References: <20211214193346.21231-1-andi.shyti@linux.intel.com>
 <20211214193346.21231-16-andi.shyti@linux.intel.com>
 <Yb1pjMefjcCn1Ccm@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Yb1pjMefjcCn1Ccm@mdroper-desk1.amr.corp.intel.com>
Subject: Re: [Intel-gfx] [PATCH v8 15/16] drm/i915: Use to_gt() helper for
 GGTT accesses
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
Cc: =?utf-8?Q?Micha=C5=82?= Winiarski <michal.winiarski@intel.com>,
 Intel GFX <intel-gfx@lists.freedesktop.org>,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 DRI Devel <dri-devel@lists.freedesktop.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

> > diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
> > index 95174938b160..3c984553d86f 100644
> > --- a/drivers/gpu/drm/i915/i915_driver.c
> > +++ b/drivers/gpu/drm/i915/i915_driver.c
> > @@ -571,6 +571,8 @@ static int i915_driver_hw_probe(struct drm_i915_private *dev_priv)
> >  
> >  	i915_perf_init(dev_priv);
> >  
> > +	intel_gt_init_hw_early(to_gt(dev_priv), &dev_priv->ggtt);
> > +
> 
> Does moving this call earlier in the function need to happen in patch
> #13 rather than here?  That patch converts the internals of
> i915_ggtt_probe_hw() to use to_gt()->ggtt, but I believe until this
> patch that pointer is uninitialized.

yes... you cought me lazy... I will move it to #13.

Thanks,
Andi
