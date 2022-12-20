Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C21CC651F75
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Dec 2022 12:10:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D963710E3AA;
	Tue, 20 Dec 2022 11:09:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6533A10E3A9
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Dec 2022 11:09:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671534581; x=1703070581;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=psOuYtUz7WLY8o1RIJF2NvaWmMNSsiRvgy4fir1LZI8=;
 b=eydnXJ+pTRZ5E/MBy5cewQ7di8/yVGt/8usek/YcBnn2q6rJZf1cbzdN
 xgnFHrwjkGc/v+mp9qphhbU17oBYnZx5hWE2+yaXKgebI70R1HIAnXevM
 ieAVfOF3lIUWS/x0VAek4L7WKCgSdB3nense/QR5873OihQhDrIYLmFcp
 2yhgRvcpBWOVdxatCzz+Vh0IRR9bA5+Uw0Rs/ZAPYYkhAZ94LAi5VcvOa
 CqXrMb+icM7M/YEUpMQsJrZjln4lxVY5MFZFrvPqdlIRdWvrRoQ7sQ6wm
 ZvcThHQo4BGYprduDmiSYVT0C3/LYx9DdbP8hwB/W0EhBop6DzYr+APw7 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="307269235"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="307269235"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 03:09:40 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="683373383"
X-IronPort-AV: E=Sophos;i="5.96,259,1665471600"; d="scan'208";a="683373383"
Received: from ideak-desk.fi.intel.com ([10.237.72.58])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2022 03:09:38 -0800
Date: Tue, 20 Dec 2022 13:09:35 +0200
From: Imre Deak <imre.deak@intel.com>
To: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Message-ID: <Y6GX7z17WmDSKwta@ideak-desk.fi.intel.com>
References: <20221215155138.246676-1-contact@emersion.fr>
 <20221215155138.246676-2-contact@emersion.fr>
 <Y6GQ1XvL7wU0kLbO@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Y6GQ1XvL7wU0kLbO@intel.com>
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp_mst: don't pull
 unregistered connectors into state
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
Cc: Jani Nikula <jani.nikula@intel.com>, Simon Ser <contact@emersion.fr>,
 intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Dec 20, 2022 at 12:39:17PM +0200, Ville Syrjälä wrote:
> On Thu, Dec 15, 2022 at 03:51:50PM +0000, Simon Ser wrote:
> > In intel_dp_mst_atomic_master_trans_check(), we pull connectors
> > sharing the same DP-MST stream into the atomic state. However,
> > if the connector is unregistered, this later fails with:
> > 
> >     [  559.425658] i915 0000:00:02.0: [drm:drm_atomic_helper_check_modeset] [CONNECTOR:378:DP-7] is not registered
> > 
> > Skip these unregistered connectors to allow user-space to turn them
> > off.
> > 
> > Fixes part of this wlroots issue:
> > https://gitlab.freedesktop.org/wlroots/wlroots/-/issues/3407
> > 
> > Signed-off-by: Simon Ser <contact@emersion.fr>
> > Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > Cc: Jani Nikula <jani.nikula@intel.com>
> > Cc: Lyude Paul <lyude@redhat.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index f773e117ebc4..70859a927a9d 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -280,7 +280,8 @@ intel_dp_mst_atomic_master_trans_check(struct intel_connector *connector,
> >  		struct intel_crtc *crtc;
> >  
> >  		if (connector_iter->mst_port != connector->mst_port ||
> > -		    connector_iter == connector)
> > +		    connector_iter == connector ||
> > +		    connector_iter->base.registration_state == DRM_CONNECTOR_UNREGISTERED)
> >  			continue;
> 
> We can't really do that. It would risk leaving slave transcoders
> enabled while the master is undergoing a full modeset.
> 
> I think a couple of ways we could go about this:
> - kill the registration check entirely/partially
>   I think Imre already has some plans for the partial killing
>   due to some type-c vs. pm firmware issues that also need force
>   a full modeset

Looks like in this case the problem is that the core's check for routing
changes should be applied only to connectors passed in via the commit state,
however it's also done for some of the connectors added by drivers as a
dependency. Making that consistent would need the following change, probably
fixing the above issue as well:

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atomic_helper.c
index d579fd8f7cb83..9c4c67f8059b8 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -673,9 +673,15 @@ drm_atomic_helper_check_modeset(struct drm_device *dev,
 	if (ret)
 		return ret;
 
+	for_each_new_connector_in_state(state, connector, new_connector_state, i)
+		connectors_mask |= BIT(i);
+
 	for_each_oldnew_connector_in_state(state, connector, old_connector_state, new_connector_state, i) {
 		const struct drm_connector_helper_funcs *funcs = connector->helper_private;
 
+		if (!(BIT(i) & connectors_mask))
+			continue;
+
 		WARN_ON(!drm_modeset_is_locked(&dev->mode_config.connection_mutex));
 
 		/*
@@ -708,8 +714,6 @@ drm_atomic_helper_check_modeset(struct drm_device *dev,
 				       connector->base.id, connector->name);
 			return ret;
 		}
-
-		connectors_mask |= BIT(i);
 	}
 
 	/*

> - relocate this stuff to happen after drm_atomic_helper_check_modeset()
>   like we already do for eg. bigjoiner. IIRC this was discussed as an
>   option when we added intel_dp_mst_atomic_master_trans_check() but
>   I don't recall anymore why we specifically chose to do this from
>   connector.atomic_check().
> 
> >  
> >  		conn_iter_state = intel_atomic_get_digital_connector_state(state,
> > -- 
> > 2.39.0
> > 
> 
> -- 
> Ville Syrjälä
> Intel
