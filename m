Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F00F18CA0CF
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 18:41:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE59A10E7DA;
	Mon, 20 May 2024 16:41:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Km8Vl5wT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CBE6C10E7DA
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 16:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716223300; x=1747759300;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=9HPonggfaLAUaDC11jWLmozm7ZTBzJ5is6AMVe7Jam4=;
 b=Km8Vl5wTLXj4DmSRSLEFFoIy0haE2fB8sbILzWp5L5vD8dr7QknfIRfa
 8ZoaguXe2AOt6OrufhpEHN/RW1YwKBLWQeBPGGyD2eDTlDunrX32F+hhf
 Inpi2i4bQdroIdqNMq5MSKcLbBJRk3YyZZTz7c3u7NdMCYvehwdXCyff4
 +b8RAeC/6zlv2aJ9huagzdn2yYh/iPUFdQ208Yxkr0kbP0QQ1u/ZVnHzH
 MQ3CeRebeztOSrHtQ0nku0/vBL7M9BDm9kof+8ovrw/eMECJ7DHR0gn/6
 F7xwkv1bJI3wanEJlS1PQdfoLiOL3TNKsFtdVgA1bJIlLub7Nc/lz3gO/ Q==;
X-CSE-ConnectionGUID: 5PsbLu6DShm/UN72Ze+A4Q==
X-CSE-MsgGUID: TzPA5ulJSk2rvUVZKWalOw==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="29883056"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="29883056"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 09:41:39 -0700
X-CSE-ConnectionGUID: CGXItdwVR2GiLvuQmYoLKA==
X-CSE-MsgGUID: enzFKtdRRd6AQOJdhYCoYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="32579094"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 May 2024 09:41:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 20 May 2024 19:41:36 +0300
Date: Mon, 20 May 2024 19:41:36 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: Bump max TMDS bitrate to 6 Gbps on ADL/DG2+
Message-ID: <Zkt9QI3kjNOO1asd@intel.com>
References: <20240516182715.27119-1-ville.syrjala@linux.intel.com>
 <87le44u5uh.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87le44u5uh.fsf@intel.com>
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

On Mon, May 20, 2024 at 01:37:26PM +0300, Jani Nikula wrote:
> On Thu, 16 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >
> > Bspec lists the mas TMDS bitrate as 6 Gbps on ADL/DG2.
> 
> *max
> 
> There's also ADL-S with display 12 and 6 Gbps support?

Looks like it. Too many weird platform variants...

> 
> BR,
> Jani.
> 
> > Bump our limit to match.
> >
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_hdmi.c | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 0faf2afa1c09..bd0ba4edcd1d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -1784,7 +1784,9 @@ static int intel_hdmi_source_max_tmds_clock(struct intel_encoder *encoder)
> >  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> >  	int max_tmds_clock, vbt_max_tmds_clock;
> >  
> > -	if (DISPLAY_VER(dev_priv) >= 10)
> > +	if (DISPLAY_VER(dev_priv) >= 13)
> > +		max_tmds_clock = 600000;
> > +	else if (DISPLAY_VER(dev_priv) >= 10)
> >  		max_tmds_clock = 594000;
> >  	else if (DISPLAY_VER(dev_priv) >= 8 || IS_HASWELL(dev_priv))
> >  		max_tmds_clock = 300000;
> 
> -- 
> Jani Nikula, Intel

-- 
Ville Syrjälä
Intel
