Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3F097F0A3
	for <lists+intel-gfx@lfdr.de>; Mon, 23 Sep 2024 20:28:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A9CAB10E461;
	Mon, 23 Sep 2024 18:28:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R8jnxOly";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACE6910E46B
 for <intel-gfx@lists.freedesktop.org>; Mon, 23 Sep 2024 18:28:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727116116; x=1758652116;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ikMDdtzWk760db6LuF8yUVe9bu5gYC3To7TO+9TBfTw=;
 b=R8jnxOlyjQfIHT42kwTkleVUyf9n0qyXOp+gnipd3xUpCE07RCYQR5pG
 YSTPb6UvlrNuH2I+1BYFRyS7haFYS8UnXRj/JJwu52Vq+5vbhPBrQN2Q1
 Mc2V3vZX2wQmuFZkdGiNJVgXzq4OpF6GXkij8+rhkdcv8VdchlSqh+acu
 UWi3Iku0wa16Srk9smoo58uuQuyLdHYikfMfZ0B3lS9hYNNptkKSJ2sLy
 MfjqUHn0oUwB38Tx4QLpiblZQ1rf4V9YBQnKJ8HCX+gWo0HiiXBPcuL/g
 ZUFBoxfasg0KDW14zFUQ5JqpKCmZhVuk1p3NHPwlibiEYZVAw7ITRgL+i A==;
X-CSE-ConnectionGUID: 8Smm0wKrTDG2xnHMJAU6XA==
X-CSE-MsgGUID: fyDirDW0SPqyWEIKVupKsg==
X-IronPort-AV: E=McAfee;i="6700,10204,11204"; a="26034808"
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="26034808"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Sep 2024 11:28:34 -0700
X-CSE-ConnectionGUID: sa+pc73NSTCTbpY0a8P3Gw==
X-CSE-MsgGUID: FvksCZQcQpmcxOCpy+iLfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,252,1719903600"; d="scan'208";a="71297387"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 23 Sep 2024 11:28:31 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 23 Sep 2024 21:28:31 +0300
Date: Mon, 23 Sep 2024 21:28:31 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: Suraj Kandpal <suraj.kandpal@intel.com>,
 intel-gfx@lists.freedesktop.org, uma.shankar@intel.com
Subject: Re: [PATCH 1/2] drm/i915/hotplug: Reduce SHPD_FLITER_CNT for
 DISPLAY_VER() == 12
Message-ID: <ZvGzT9OQUlk3vyeL@intel.com>
References: <20240923031007.1058072-2-suraj.kandpal@intel.com>
 <20240923031007.1058072-3-suraj.kandpal@intel.com>
 <ZvGnm0Uj0KzErdM5@intel.com>
 <20240923180919.GA5091@mdroper-desk1.amr.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240923180919.GA5091@mdroper-desk1.amr.corp.intel.com>
X-Patchwork-Hint: comment
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

On Mon, Sep 23, 2024 at 11:09:19AM -0700, Matt Roper wrote:
> On Mon, Sep 23, 2024 at 08:38:35PM +0300, Ville Syrjälä wrote:
> > On Mon, Sep 23, 2024 at 08:40:07AM +0530, Suraj Kandpal wrote:
> > > Reduce SHPD_CNT to 250us for display version 12 as it lines up
> > > with DP1.4a(Table3-4) spec.
> > > 
> > > --v2
> > > -Update commit message and comment [Matt]
> > > 
> > > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_hotplug_irq.c | 6 +++++-
> > >  1 file changed, 5 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > > index 2c4e946d5575..8427386132e6 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_hotplug_irq.c
> > > @@ -849,7 +849,11 @@ static void icp_hpd_irq_setup(struct drm_i915_private *dev_priv)
> > >  	enabled_irqs = intel_hpd_enabled_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
> > >  	hotplug_irqs = intel_hpd_hotplug_irqs(dev_priv, dev_priv->display.hotplug.pch_hpd);
> > >  
> > > -	if (INTEL_PCH_TYPE(dev_priv) <= PCH_TGP)
> > > +	/*
> > > +	 * We reduce the value to 250us to be able to detect SHPD when an external display
> > > +	 * is connected. This is also expected of us as stated in DP1.4a Table 3-4.
> > > +	 */
> > > +	if (INTEL_PCH_TYPE(dev_priv) < PCH_TGP)
> > >  		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_500_ADJ);
> > >  	else
> > >  		intel_uncore_write(&dev_priv->uncore, SHPD_FILTER_CNT, SHPD_FILTER_CNT_250);
> > 
> > IMO if we start reducing this for older platforms then we
> > should just do it for all of them, instead of based on some
> > random cutoff.
> 
> There is a note in the bspec (page 4342) that says
> 
>         "Program SHPD_FILTER_CNT with the "500 microseconds adjusted"
>         value before enabling hotplug detection."
> 
> for CNP and ICP which is where the cutoff originally came from.  I'm not
> sure about CML (which uses CNP), but ICL at least supports DP1.4a, so I
> think the note in the bspec is probably just outdated and we'd still
> want 250 to ensure we align with the DP spec.

The 250usec has been in the DP spec forever. DP 1.4a vs. older
is a moot point.

Also, this is about filtering out glitches generated by the sink,
and anyone can plug any DP sink to any DP source. So if the 500us
is a problem for TGP+ then it'll be a problem for LPT+ as well
when using the same sink.

For IBX/CPT it seems we can't adjust this to a more sensible value
(the only choice seems to be 500us vs. 50us), so LPT+ is the hard
cutoff unfortunately.

-- 
Ville Syrjälä
Intel
