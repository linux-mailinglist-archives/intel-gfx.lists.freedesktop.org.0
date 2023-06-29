Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE63742501
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jun 2023 13:32:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31A8F10E127;
	Thu, 29 Jun 2023 11:32:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8478610E127
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jun 2023 11:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688038354; x=1719574354;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=CjJULbKu46uQDMAdMc12qbNeCxsW0OwffvcWGvSTaEA=;
 b=b39Phq3pn/shbdD9JA7Uo7Nb0x1asPZZRlW6dGbjMJCjIpMVjWanv4Cx
 CpaT2MUGqWfU6vWDCUChJZkiwrLVOnMV23lDUtamgM9moIDhOAmPKtxCm
 8Qs6N3qX0u3EQwTLAUEk1+HDdoWWjKF5+QfEfR7C9jMR16MJqWFrL9KmV
 WMa4F7SnGPbnl80CPx+/uJ74Y1nHPvt8cAX8ohVS6+g4BBul8w139mqWa
 S5SI8VPysv7cwUbxnMakHe2IyJnzxHn07nfozujnDp6V5JDcFvADAGI2B
 yQztYe+o9b5z+mBvcV16qmCdpVgHPAOlONfntbnawl7E6TmEDwQZG3mmk w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="448466101"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="448466101"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 04:32:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10755"; a="717326875"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="717326875"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 04:32:32 -0700
Date: Thu, 29 Jun 2023 14:32:22 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <ZJ1rxgwwBBDnKL0C@intel.com>
References: <20230628141017.18937-1-stanislav.lisovskiy@intel.com>
 <87o7kzsjvs.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87o7kzsjvs.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Don't preserve dpll_hw_state for
 slave crtc in Bigjoiner
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

On Wed, Jun 28, 2023 at 06:10:15PM +0300, Jani Nikula wrote:
> On Wed, 28 Jun 2023, Stanislav Lisovskiy <stanislav.lisovskiy@intel.com> wrote:
> > If we are using Bigjoiner dpll_hw_state is supposed to be exactly
> > same as for master crtc, so no need to save it's state for slave crtc.
> 
> Could this help with [1]?
> 
> BR,
> Jani.
> 
> [1] https://gitlab.freedesktop.org/drm/intel/-/issues/8720

I don't think that would help, here this is mostly a cosmetic fix
to remove dmesg warn caused by slave crtc sw/hw state mismatch, because
we don't calculate pll state for slave crtc in Bigjoiner, but still try
to verify it against the values in the correspodent hw.

Stan

> 
> >
> > Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 43d6ba980780..c3e93bdde29d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -4568,7 +4568,6 @@ copy_bigjoiner_crtc_state_modeset(struct intel_atomic_state *state,
> >  	saved_state->uapi = slave_crtc_state->uapi;
> >  	saved_state->scaler_state = slave_crtc_state->scaler_state;
> >  	saved_state->shared_dpll = slave_crtc_state->shared_dpll;
> > -	saved_state->dpll_hw_state = slave_crtc_state->dpll_hw_state;
> >  	saved_state->crc_enabled = slave_crtc_state->crc_enabled;
> >  
> >  	intel_crtc_free_hw_state(slave_crtc_state);
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
