Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F934EF23C
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Apr 2022 17:11:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 563E210F601;
	Fri,  1 Apr 2022 15:10:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6476710F601
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Apr 2022 15:10:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648825857; x=1680361857;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tVL/PRdrJ0gu41qD1pc/Xp9uFe8tz9pDzAqaxJKHbX4=;
 b=enY2/QHZBEnVD3Rbo7AsbsBgJMTR/YL7gO3C/w+BfRx+psagy3ZbpoEM
 bZIqwHpYSzwm9waYyXwZYW41Jc3kYzlW0YlzMtrDGrDeKGJpahzeLnqW8
 oTTqRN1ukgN+h4+p/rGPuLqRJUdqKi9qkJoJYUUlLDHrLYGRSWh2Aum0b
 zzpdS/mMuSw6RYIz7wqDrUf4GTPHcVS9IeIAHhpNE8ryB6w6zqMtasa3H
 pFJfXtWbYZWz4qp4kB5xf4cEi8WFwbQR5l1dNK46+uPgugi6+64Xdjhrj
 fKP3OxWVeTMYXeB96El2LkEMQO8H4fFwLMNMDwwXe8R8nHIRK0tMQECZ7 w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10304"; a="346595287"
X-IronPort-AV: E=Sophos;i="5.90,228,1643702400"; d="scan'208";a="346595287"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 08:09:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="695918675"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.61])
 by fmsmga001.fm.intel.com with SMTP; 01 Apr 2022 08:09:38 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 01 Apr 2022 18:09:38 +0300
Date: Fri, 1 Apr 2022 18:09:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YkcVsjxOK3vUZw3M@intel.com>
References: <20220331112822.11462-1-ville.syrjala@linux.intel.com>
 <20220331112822.11462-12-ville.syrjala@linux.intel.com>
 <87pmm28bps.fsf@intel.com> <YkW1K8FGAQziqODL@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YkW1K8FGAQziqODL@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 11/11] drm/i915: Allow static DRRS on LVDS
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

On Thu, Mar 31, 2022 at 05:05:31PM +0300, Ville Syrjälä wrote:
> On Thu, Mar 31, 2022 at 04:59:11PM +0300, Jani Nikula wrote:
> > On Thu, 31 Mar 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >
> > > Nothing special about static DRRS on LVDS, it's just your
> > > bog standard modeset. Let's allow it.
> > >
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_lvds.c | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> > > index 73129d21f5e5..e8478161f8b9 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> > > @@ -968,7 +968,8 @@ void intel_lvds_init(struct drm_i915_private *dev_priv)
> > >  	intel_connector->edid = edid;
> > >  
> > >  	/* Try EDID first */
> > > -	intel_panel_add_edid_fixed_modes(intel_connector, false);
> > > +	intel_panel_add_edid_fixed_modes(intel_connector,
> > > +					 dev_priv->vbt.drrs_type != DRRS_TYPE_NONE);
> > 
> > I guess the final question on this, and the previous patch for that
> > matter, is why would the VBT block your regular modeset between two
> > different refresh rates?
> > 
> > It does sound like the VBT setting is more about OEM decided policy than
> > anything else.
> 
> Or just lack of validation.

After staring at a bunch of VBTs from these laptops with high refresh
rate panels it seems some of them do not declare DRRS support at all.
So it looks like the other thing we need to consider here is VRR support.
There's also a newish field in VBT for VRR which seems like something we
need to start looking at (currently we only look at DPCD+EDID for that).

And the even bigger problem is that several of the VBTs have
panel_type=0xff, so looks like we really need to make that PNPID
matching stuff happen :/ Filed a bug to track that one separately
https://gitlab.freedesktop.org/drm/intel/-/issues/5545

-- 
Ville Syrjälä
Intel
