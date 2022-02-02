Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F85A4A7182
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Feb 2022 14:26:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 56C0E10E389;
	Wed,  2 Feb 2022 13:26:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com
 [213.167.242.64])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B535B10E389;
 Wed,  2 Feb 2022 13:26:30 +0000 (UTC)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi
 [62.78.145.57])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 226DC2F3;
 Wed,  2 Feb 2022 14:26:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1643808389;
 bh=r7MJPQGSddx2yvJlTdD2sROc4M2LSoWvY/g9SM6JIYc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hTrEU0ieozCIxQVfnpyzhotVhNIZEU7lJgu0RdroPF94sTeCJeuhBnsYkJTiwRvf+
 Wou591dxaCggHbWUxVgFIgI9EEgYM0PHRRj7iYo0DG7Q1puChpDlEhWMnpW2TDyAEj
 AVVLizrhvZnvd6A6RWjwX8b+/EPG3kSeCYEIRICc=
Date: Wed, 2 Feb 2022 15:26:06 +0200
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <YfqGbqQQz5vrDaLI@pendragon.ideasonboard.com>
References: <20220202085429.22261-1-suraj.kandpal@intel.com>
 <20220202085429.22261-6-suraj.kandpal@intel.com>
 <Yfp8Q6OFqTAvESOi@pendragon.ideasonboard.com>
 <87y22ts948.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <87y22ts948.fsf@intel.com>
Subject: Re: [Intel-gfx] [PATCH 5/6] drm/rcar_du: changes to rcar-du driver
 resulting from drm_writeback_connector structure changes
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
Cc: carsten.haitzler@arm.com, intel-gfx@lists.freedesktop.org,
 quic_abhinavk@quicinc.com, dri-devel@lists.freedesktop.org,
 dmitry.baryshkov@linaro.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Jani,

On Wed, Feb 02, 2022 at 03:15:03PM +0200, Jani Nikula wrote:
> On Wed, 02 Feb 2022, Laurent Pinchart wrote:
> > On Wed, Feb 02, 2022 at 02:24:28PM +0530, Kandpal Suraj wrote:
> >> Changing rcar_du driver to accomadate the change of
> >> drm_writeback_connector.base and drm_writeback_connector.encoder
> >> to a pointer the reason for which is explained in the
> >> Patch(drm: add writeback pointers to drm_connector).
> >> 
> >> Signed-off-by: Kandpal Suraj <suraj.kandpal@intel.com>
> >> ---
> >>  drivers/gpu/drm/rcar-du/rcar_du_crtc.h      | 2 ++
> >>  drivers/gpu/drm/rcar-du/rcar_du_writeback.c | 8 +++++---
> >>  2 files changed, 7 insertions(+), 3 deletions(-)
> >> 
> >> diff --git a/drivers/gpu/drm/rcar-du/rcar_du_crtc.h b/drivers/gpu/drm/rcar-du/rcar_du_crtc.h
> >> index 66e8839db708..68f387a04502 100644
> >> --- a/drivers/gpu/drm/rcar-du/rcar_du_crtc.h
> >> +++ b/drivers/gpu/drm/rcar-du/rcar_du_crtc.h
> >> @@ -72,6 +72,8 @@ struct rcar_du_crtc {
> >>  	const char *const *sources;
> >>  	unsigned int sources_count;
> >>  
> >> +	struct drm_connector connector;
> >> +	struct drm_encoder encoder;
> >
> > Those fields are, at best, poorly named. Furthermore, there's no need in
> > this driver or in other drivers using drm_writeback_connector to create
> > an encoder or connector manually. Let's not polute all drivers because
> > i915 doesn't have its abstractions right.
> 
> i915 uses the quite common model for struct inheritance:
> 
> 	struct intel_connector {
> 		struct drm_connector base;
> 		/* ... */
> 	}
> 
> Same with at least amd, ast, fsl-dcu, hisilicon, mga200, msm, nouveau,
> radeon, tilcdc, and vboxvideo.
> 
> We could argue about the relative merits of that abstraction, but I
> think the bottom line is that it's popular and the drivers using it are
> not going to be persuaded to move away from it.

Nobody said inheritance is bad.

> It's no coincidence that the drivers who've implemented writeback so far
> (komeda, mali, rcar-du, vc4, and vkms) do not use the abstraction,
> because the drm_writeback_connector midlayer does, forcing the issue.

Are you sure it's not a coincidence ? :-)

The encoder and especially connector created by drm_writeback_connector
are there only because KMS requires a drm_encoder and a drm_connector to
be exposed to userspace (and I could argue that using a connector for
writeback is a hack, but that won't change). The connector is "virtual",
I still fail to see why i915 or any other driver would need to wrap it
into something else. The whole point of the drm_writeback_connector
abstraction is that drivers do not have to manage the writeback
drm_connector manually, they shouldn't touch it at all.

> So I think drm_writeback_connector should *not* use the inheritance
> abstraction because it's a midlayer that should leave that option to the
> drivers. I think drm_writeback_connector needs to be changed to
> accommodate that, and, unfortunately, it means current writeback users
> need to be changed as well.
> 
> I am not sure, however, if the series at hand is the right
> approach. Perhaps writeback can be modified to allocate the stuff for
> you if you prefer it that way, as long as the drm_connector is not
> embedded in struct drm_writeback_connector.
> 
> > Nack.
> >
> >>  	struct drm_writeback_connector writeback;
> >>  };
> >>  
> >> diff --git a/drivers/gpu/drm/rcar-du/rcar_du_writeback.c b/drivers/gpu/drm/rcar-du/rcar_du_writeback.c
> >> index c79d1259e49b..5b1e83380c47 100644
> >> --- a/drivers/gpu/drm/rcar-du/rcar_du_writeback.c
> >> +++ b/drivers/gpu/drm/rcar-du/rcar_du_writeback.c
> >> @@ -200,8 +200,10 @@ int rcar_du_writeback_init(struct rcar_du_device *rcdu,
> >>  {
> >>  	struct drm_writeback_connector *wb_conn = &rcrtc->writeback;
> >>  
> >> -	wb_conn->encoder.possible_crtcs = 1 << drm_crtc_index(&rcrtc->crtc);
> >> -	drm_connector_helper_add(&wb_conn->base,
> >> +	wb_conn->base = &rcrtc->connector;
> >> +	wb_conn->encoder = &rcrtc->encoder;
> >> +	wb_conn->encoder->possible_crtcs = 1 << drm_crtc_index(&rcrtc->crtc);
> >> +	drm_connector_helper_add(wb_conn->base,
> >>  				 &rcar_du_wb_conn_helper_funcs);
> >>  
> >>  	return drm_writeback_connector_init(&rcdu->ddev, wb_conn,
> >> @@ -220,7 +222,7 @@ void rcar_du_writeback_setup(struct rcar_du_crtc *rcrtc,
> >>  	struct drm_framebuffer *fb;
> >>  	unsigned int i;
> >>  
> >> -	state = rcrtc->writeback.base.state;
> >> +	state = rcrtc->writeback.base->state;
> >>  	if (!state || !state->writeback_job)
> >>  		return;
> >>  

-- 
Regards,

Laurent Pinchart
