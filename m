Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C29BC433577
	for <lists+intel-gfx@lfdr.de>; Tue, 19 Oct 2021 14:09:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 226166EB9D;
	Tue, 19 Oct 2021 12:09:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC51D6EB9D
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 Oct 2021 12:09:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10141"; a="215415149"
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="215415149"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 05:09:04 -0700
X-IronPort-AV: E=Sophos;i="5.85,384,1624345200"; d="scan'208";a="483194951"
Received: from ideak-desk.fi.intel.com ([10.237.68.141])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2021 05:09:03 -0700
Date: Tue, 19 Oct 2021 15:08:59 +0300
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: Vandita Kulkarni <vandita.kulkarni@intel.com>,
 intel-gfx@lists.freedesktop.org, matthew.d.roper@intel.com
Message-ID: <20211019120859.GA1598321@ideak-desk.fi.intel.com>
References: <20211018065207.30587-1-vandita.kulkarni@intel.com>
 <20211018065207.30587-4-vandita.kulkarni@intel.com>
 <87v91tqpl8.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87v91tqpl8.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 3/4] drm/i915/dsi/xelpd: Disable DC states
 in Video mode
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

On Tue, Oct 19, 2021 at 01:24:51PM +0300, Jani Nikula wrote:
> On Mon, 18 Oct 2021, Vandita Kulkarni <vandita.kulkarni@intel.com> wrote:
> > MIPI DSI transcoder cannot be in video mode to support any of the
> > display C states.
> 
> Imre, could you review this one please?
> 
> The added confusion is that POWER_DOMAIN_TRANSCODER_DSI_A and
> POWER_DOMAIN_TRANSCODER_DSI_C are never used anywhere and
> POWER_DOMAIN_TRANSCODER() does not take DSI transcoders into account.

<tl;dr>
You mean they are not listed in the power_domain->power_well mappings.
Those power domains don't use any power wells above PW#1. PW#0/1 is
handled "automatically" by DMC, so we don't have to toggle the power for
those manually. However they still need a runtime PM reference, since
whatever HW domain you want to use, the PCI device must be in the runtime
resumed state. This is ensured by the always-on power well, which every
domain has a dependency on.
<tl;dr>

The transcoder power domains are acquired in get_crtc_power_domains(),
doesn't the DSI encoder using the DSI_A/C transcoders?

Yes, POWER_DOMAIN_TRANSCODER is now broken wrt. DSI due to
POWER_DOMAIN_TRANSCODER_VDSC_PW2. So that would need to be moved after
the TRANSCODER_DSI_C. And the POWER_DOMAIN_TRANSCODER macro could be
also simplified afaics.

Otherwise this patch looks ok to me, just the bspec links would be good
to have here too.

> 
> > Signed-off-by: Vandita Kulkarni <vandita.kulkarni@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> > index 709569211c85..8406db5e573e 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> > @@ -3105,7 +3105,8 @@ intel_display_power_put_mask_in_set(struct drm_i915_private *i915,
> >  	BIT_ULL(POWER_DOMAIN_MODESET) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUX_A) |			\
> >  	BIT_ULL(POWER_DOMAIN_AUX_B) |			\
> > -	BIT_ULL(POWER_DOMAIN_INIT))
> > +	BIT_ULL(POWER_DOMAIN_INIT)) |			\
> > +	BIT_ULL(POWER_DOMAIN_PORT_DSI)
> 
> Everywhere else POWER_DOMAIN_INIT is last in the list.
> 
> BR,
> Jani.
> 
> >  
> >  #define XELPD_AUX_IO_D_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_D_XELPD)
> >  #define XELPD_AUX_IO_E_XELPD_POWER_DOMAINS	BIT_ULL(POWER_DOMAIN_AUX_E_XELPD)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
