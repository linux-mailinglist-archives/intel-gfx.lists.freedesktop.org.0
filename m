Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDBA6C58B6
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Mar 2023 22:23:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12FB710E14D;
	Wed, 22 Mar 2023 21:23:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49D7910E14D
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Mar 2023 21:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679520182; x=1711056182;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=8HONJssv5fXQDAgvFs9+pqZJ/M7r7XKJOoqp7aJRu4M=;
 b=MAI3IqJpPBvDey/kBWoHxiNL0Wv09Xak3/qqrC492bGKVuavDummhSUH
 kKoWcaPKAGaSyq3126XrX2k92xwVsUO25XQScQqXMS5AV6+n1QNiUFFXS
 dMACZZdBiseYmOQg7l4BYI2BfkI2lpZF0jxkvj5iEPDPjmRgZ+kPQ4MIp
 tDEe+BPgybIhEAyRIVZyB1T+EtBYydLIyaI85patEPDEKhCNHChvn7d3x
 3Ptzvw8WgDQw9j+X/QLBD/ls/9D58Hve8wi7moenvhRP3uq7wwLfEFTy4
 re6i4Y86dN49x417rE/6mEcMF9IHq0qXQKLnZcV1Cq+FSl+YcWUPhW+54 w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="340874100"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="340874100"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Mar 2023 14:23:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10657"; a="712401280"
X-IronPort-AV: E=Sophos;i="5.98,282,1673942400"; d="scan'208";a="712401280"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 22 Mar 2023 14:22:57 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Mar 2023 23:22:56 +0200
Date: Wed, 22 Mar 2023 23:22:56 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <ZBtxsHKk1ztYLB84@intel.com>
References: <20230322181219.5511-1-ville.syrjala@linux.intel.com>
 <ZBtmuYJ2re9NkvQX@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZBtmuYJ2re9NkvQX@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add i915.enable_sagv modparam
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

On Wed, Mar 22, 2023 at 04:36:09PM -0400, Rodrigo Vivi wrote:
> On Wed, Mar 22, 2023 at 08:12:19PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Currently we have no sane way to forcibly disable SAGV, which
> > makes debugging things a PITA. Manually poking at the pcode
> > mailbox with it's various SAGV/QGV/PSF formats is no fun,
> > and likely to be clobbered by the driver anyway.
> > 
> > Let's add a modparam for this.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/skl_watermark.c | 4 ++++
> >  drivers/gpu/drm/i915/i915_params.c           | 3 +++
> >  drivers/gpu/drm/i915/i915_params.h           | 1 +
> >  3 files changed, 8 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index 50a9a6adbe32..ff70225c0263 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -411,6 +411,9 @@ static bool intel_crtc_can_enable_sagv(const struct intel_crtc_state *crtc_state
> >  	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> >  	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> >  
> > +	if (!i915->params.enable_sagv)
> > +		return false;
> 
> would this be one more ifdef for xe?

Why? xe needs it just as much.

> should we hide this on a HAS_SAGV?

If we have no sagv then we're not going to enable sagv anyway.
Doesn't matter if it's blocked a few lines earlier by the
modparam rather than falling through to checking the other
stuff.

> 
> anyway, let's move on:
> 
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks

> 
> 
> > +
> >  	if (DISPLAY_VER(i915) >= 12)
> >  		return tgl_crtc_can_enable_sagv(crtc_state);
> >  	else
> > @@ -3696,6 +3699,7 @@ static int intel_sagv_status_show(struct seq_file *m, void *unused)
> >  	};
> >  
> >  	seq_printf(m, "SAGV available: %s\n", str_yes_no(intel_has_sagv(i915)));
> > +	seq_printf(m, "SAGV modparam: %s\n", str_enabled_disabled(i915->params.enable_sagv));
> >  	seq_printf(m, "SAGV status: %s\n", sagv_status[i915->display.sagv.status]);
> >  	seq_printf(m, "SAGV block time: %d usec\n", i915->display.sagv.block_time_us);
> >  
> > diff --git a/drivers/gpu/drm/i915/i915_params.c b/drivers/gpu/drm/i915/i915_params.c
> > index ade744cccfea..66141906ea05 100644
> > --- a/drivers/gpu/drm/i915/i915_params.c
> > +++ b/drivers/gpu/drm/i915/i915_params.c
> > @@ -121,6 +121,9 @@ i915_param_named_unsafe(enable_psr2_sel_fetch, bool, 0400,
> >  	"(0=disabled, 1=enabled) "
> >  	"Default: 0");
> >  
> > +i915_param_named_unsafe(enable_sagv, bool, 0600,
> > +	"Enable system agent voltage/frequency scaling (SAGV) (default: true)");
> > +
> >  i915_param_named_unsafe(force_probe, charp, 0400,
> >  	"Force probe options for specified supported devices. "
> >  	"See CONFIG_DRM_I915_FORCE_PROBE for details.");
> > diff --git a/drivers/gpu/drm/i915/i915_params.h b/drivers/gpu/drm/i915/i915_params.h
> > index 3f51f90145b6..6798b5c2363d 100644
> > --- a/drivers/gpu/drm/i915/i915_params.h
> > +++ b/drivers/gpu/drm/i915/i915_params.h
> > @@ -56,6 +56,7 @@ struct drm_printer;
> >  	param(int, enable_psr, -1, 0600) \
> >  	param(bool, psr_safest_params, false, 0400) \
> >  	param(bool, enable_psr2_sel_fetch, true, 0400) \
> > +	param(bool, enable_sagv, true, 0600) \
> >  	param(int, disable_power_well, -1, 0400) \
> >  	param(int, enable_ips, 1, 0600) \
> >  	param(int, invert_brightness, 0, 0600) \
> > -- 
> > 2.39.2
> > 

-- 
Ville Syrjälä
Intel
