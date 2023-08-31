Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC0078EA10
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Aug 2023 12:19:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75EB310E5E6;
	Thu, 31 Aug 2023 10:19:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A970010E5E6
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Aug 2023 10:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693477172; x=1725013172;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=2cc+LawF5LP8X+93wQscU8i1tnCVOVGvXDAGoKnJ5+o=;
 b=mHS/vB9hzeiev5QDS9x79RLIQEjHsunX7g2tQ9bdPYOUig1jiVd9ct8Z
 kfzGRH4jTakbhLraif7mjjomWMR1zDsPCHRk7Q+PJ0Im7nW7Ekhh2BGLT
 zvc2k1sNcKk/dOXfiiUtTVENrJBoDi9B40FBTpLR7q+tnZgbaVfHoqaWh
 FKy1V6N85NT6BOLtbMOtdw8C8xkcbmjsmSJWGuFDx31zUPQY2R+BaUfbK
 oSZf5NPSqlFWkpy+F/Wyf2l+Pwjq9pEldQm9WKD2FPFr5jeyzuZaHQh+p
 j1GoWtT6sSXUYAhfqFxGJVSOZfyWGvh1r9+vQSDlNgaRpEbhGmIEm9FMY Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="378602036"
X-IronPort-AV: E=Sophos;i="6.02,216,1688454000"; d="scan'208";a="378602036"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 03:19:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10818"; a="774483000"
X-IronPort-AV: E=Sophos;i="6.02,216,1688454000"; d="scan'208";a="774483000"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Aug 2023 03:19:30 -0700
Date: Thu, 31 Aug 2023 13:19:47 +0300
From: Imre Deak <imre.deak@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Message-ID: <ZPBpQ4sqKBBGyesL@ideak-desk.fi.intel.com>
References: <20230830140421.2031111-1-imre.deak@intel.com>
 <ZO+0pV+B05Q7ea0x@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZO+0pV+B05Q7ea0x@intel.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/dp: Drop redundant AUX power
 get/put in intel_dp_force()
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
Reply-To: imre.deak@intel.com
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Aug 30, 2023 at 05:29:09PM -0400, Rodrigo Vivi wrote:
> On Wed, Aug 30, 2023 at 05:04:20PM +0300, Imre Deak wrote:
> > intel_dp_force() takes the AUX power reference as required by the DP AUX
> > transactions in intel_dp_set_edid(). However the low level AUX handler
> 
> you mean intel_dp_aux_xfer right?

Yes, intel_dp_set_edid() -> intel_dp_aux_xfer(), the same way as in
intel_dp_detect().

> > takes this reference already so the get/put in intel_dp_force() can be
> > dropped. This also fixes a problem where the TC port mode changed while
> > the AUX power well was enabled.
> > 
> > Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/8779
> > Signed-off-by: Imre Deak <imre.deak@intel.com>
> 
> It makes sense to get that in lower levels, so
> 
> Reviewed-by: Rodrigo Vivi <rodrigo.vivi@intel.com>

Thanks, I pushed the patches.

> > ---
> >  drivers/gpu/drm/i915/display/intel_dp.c | 7 -------
> >  1 file changed, 7 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> > index 9d303caf969e0..16fb12d187a29 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -5365,9 +5365,6 @@ intel_dp_force(struct drm_connector *connector)
> >  	struct intel_digital_port *dig_port = dp_to_dig_port(intel_dp);
> >  	struct intel_encoder *intel_encoder = &dig_port->base;
> >  	struct drm_i915_private *dev_priv = to_i915(intel_encoder->base.dev);
> > -	enum intel_display_power_domain aux_domain =
> > -		intel_aux_power_domain(dig_port);
> > -	intel_wakeref_t wakeref;
> >  
> >  	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s]\n",
> >  		    connector->base.id, connector->name);
> > @@ -5376,11 +5373,7 @@ intel_dp_force(struct drm_connector *connector)
> >  	if (connector->status != connector_status_connected)
> >  		return;
> >  
> > -	wakeref = intel_display_power_get(dev_priv, aux_domain);
> > -
> >  	intel_dp_set_edid(intel_dp);
> > -
> > -	intel_display_power_put(dev_priv, aux_domain, wakeref);
> >  }
> >  
> >  static int intel_dp_get_modes(struct drm_connector *connector)
> > -- 
> > 2.37.2
> > 
