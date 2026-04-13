Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aB+EJlXz3GnZYQkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 15:44:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BF2E3ECAFF
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Apr 2026 15:44:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0081510E43B;
	Mon, 13 Apr 2026 13:44:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Sd2W0/9G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C9F6F10E0DF;
 Mon, 13 Apr 2026 13:44:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776087888; x=1807623888;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=bwYzFLwNI/6vkN2Gr87qcyFT2sZ3FS9khYUkjNw8l7w=;
 b=Sd2W0/9GzNM9sF1H3Y2nG9zZE7BeYwpKiPzsOpDMXlrwogB5KIQZnmHV
 A3Gc76uu6FcozQAbk7fCW+g7eJlyvIk6Fw/JsNiDw7t+y2ANFStZzBP3B
 MAT3HDT0SPg9OIq6e0aNeVvpr4UpoZwaD1ynYGxDjPSXpVqX4R+0vNW56
 SRvIli2rk6Sz/oP6cDju1UZzCgI4LgTGYax1ZEeHCBHQ0+gR/JpMPIBxG
 f7B6NACMlwg2CSYEy2ZLnNSs8OvsQf3ob74Y7+sX/Jg+921oFNMwxTeSr
 Nn9eNIe7lcDAriPJmA3G97rIN0btpPCA1kgrQ3HBAZ5CtK815d/dOB24+ w==;
X-CSE-ConnectionGUID: sR8uW4pIQCKFbROoxEVf1Q==
X-CSE-MsgGUID: 4Dty/KvoTQGGhrThihwChA==
X-IronPort-AV: E=McAfee;i="6800,10657,11758"; a="76054062"
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="76054062"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 06:44:47 -0700
X-CSE-ConnectionGUID: VahvDtdgSLm7wLxRfMucwg==
X-CSE-MsgGUID: Wxk30IYOQ8aSMIfHnlgd9g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,177,1770624000"; d="scan'208";a="260228725"
Received: from slindbla-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.182])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2026 06:44:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Kory Maincent <kory.maincent@bootlin.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Dave
 Airlie <airlied@redhat.com>, Jesse Barnes <jbarnes@virtuousgeek.org>, Eric
 Anholt <eric@anholt.net>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Andrzej Hajda
 <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>,
 Robert Foss <rfoss@kernel.org>, Laurent Pinchart
 <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Chun-Kuang Hu
 <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Matthias
 Brugger <matthias.bgg@gmail.com>, AngeloGioacchino Del Regno
 <angelogioacchino.delregno@collabora.com>, Chris Wilson
 <chris@chris-wilson.co.uk>, Thomas Petazzoni
 <thomas.petazzoni@bootlin.com>, Mark Yacoub <markyacoub@google.com>, Sean
 Paul <seanpaul@google.com>, Louis Chauvet <louis.chauvet@bootlin.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Simona Vetter <simona.vetter@ffwll.ch>
Subject: Re: [PATCH RFC 10/12] drm/i915/display/dp: Adopt dp_connector
 helpers to expose link training state
In-Reply-To: <20260413153436.2a08be28@kmaincent-XPS-13-7390>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260409-feat_link_cap-v1-0-7069e8199ce2@bootlin.com>
 <20260409-feat_link_cap-v1-10-7069e8199ce2@bootlin.com>
 <e253ca4fa0b493032a7b35a0a20689b9d9e0c4e7@intel.com>
 <20260413143402.76f5c3c9@kmaincent-XPS-13-7390>
 <9f4bb4501c4885f432cbe9b6a10b7d27e40b0876@intel.com>
 <20260413153436.2a08be28@kmaincent-XPS-13-7390>
Date: Mon, 13 Apr 2026 16:44:34 +0300
Message-ID: <d2ac83145ffda0c77692b44dc3b34e9d90252efc@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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
X-Spamd-Result: default: False [0.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[34];
	FREEMAIL_CC(0.00)[intel.com,linux.intel.com,ursulin.net,gmail.com,ffwll.ch,redhat.com,virtuousgeek.org,anholt.net,kernel.org,suse.de,linaro.org,ideasonboard.com,kwiboo.se,pengutronix.de,collabora.com,chris-wilson.co.uk,bootlin.com,google.com,lists.freedesktop.org,vger.kernel.org,lists.infradead.org];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.989];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 4BF2E3ECAFF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 13 Apr 2026, Kory Maincent <kory.maincent@bootlin.com> wrote:
> On Mon, 13 Apr 2026 16:05:53 +0300
> Jani Nikula <jani.nikula@linux.intel.com> wrote:
>
>> On Mon, 13 Apr 2026, Kory Maincent <kory.maincent@bootlin.com> wrote:
>> > On Fri, 10 Apr 2026 19:26:53 +0300
>> > Jani Nikula <jani.nikula@linux.intel.com> wrote:
>> >  
>> >> On Thu, 09 Apr 2026, Kory Maincent <kory.maincent@bootlin.com> wrote:  
>> >> > Switch the i915 DP connector initialization from drmm_connector_init()
>> >> > to drmm_connector_dp_init(), providing the source link capabilities
>> >> > (supported lane counts, link rates, DSC support, voltage swing and
>> >> > pre-emphasis levels).
>> >> >
>> >> > Add intel_dp_report_link_train() to collect the negotiated link
>> >> > parameters (rate, lane count, DSC enable, per-lane voltage swing and
>> >> > pre-emphasis) and report them via
>> >> > drm_connector_dp_set_link_train_properties() once link training completes
>> >> > successfully.
>> >> >
>> >> > Reset the link training properties via
>> >> > drm_connector_dp_reset_link_train_properties() when the connector is
>> >> > reported as disconnected or when the display device is disabled, so
>> >> > the exposed state always reflects the current link status.
>> >> >
>> >> > Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
>> >> > ---
>> >> >  drivers/gpu/drm/i915/display/intel_dp.c            | 31
>> >> > +++++++++++++++++++--- .../gpu/drm/i915/display/intel_dp_link_training.c
>> >> >  | 25 +++++++++++++++++ 2 files changed, 52 insertions(+), 4 deletions(-)
>> >> >
>> >> > diff --git a/drivers/gpu/drm/i915/display/intel_dp.c
>> >> > b/drivers/gpu/drm/i915/display/intel_dp.c index
>> >> > 2af64de9c81de..641406bdc0cc9 100644 ---
>> >> > a/drivers/gpu/drm/i915/display/intel_dp.c +++
>> >> > b/drivers/gpu/drm/i915/display/intel_dp.c @@ -45,6 +45,7 @@
>> >> >  #include <drm/display/drm_hdmi_helper.h>
>> >> >  #include <drm/drm_atomic_helper.h>
>> >> >  #include <drm/drm_crtc.h>
>> >> > +#include <drm/drm_dp_connector.h>
>> >> >  #include <drm/drm_edid.h>
>> >> >  #include <drm/drm_fixed.h>
>> >> >  #include <drm/drm_managed.h>
>> >> > @@ -6337,8 +6338,10 @@ intel_dp_detect(struct drm_connector *_connector,
>> >> >  	drm_WARN_ON(display->drm,
>> >> >  		    !drm_modeset_is_locked(&display->drm->mode_config.connection_mutex));
>> >> >  
>> >> > -	if (!intel_display_device_enabled(display))
>> >> > +	if (!intel_display_device_enabled(display)) {
>> >> > +
>> >> > drm_connector_dp_reset_link_train_properties(_connector); return
>> >> > connector_status_disconnected;
>> >> > +	}
>> >> >  
>> >> >  	if (!intel_display_driver_check_access(display))
>> >> >  		return connector->base.status;
>> >> > @@ -6388,6 +6391,8 @@ intel_dp_detect(struct drm_connector *_connector,
>> >> >  
>> >> >  		intel_dp_tunnel_disconnect(intel_dp);
>> >> >  
>> >> > +
>> >> > drm_connector_dp_reset_link_train_properties(_connector); +
>> >> >  		goto out_unset_edid;
>> >> >  	}
>> >> >  
>> >> > @@ -7162,10 +7167,12 @@ intel_dp_init_connector(struct intel_digital_port
>> >> > *dig_port, struct intel_connector *connector)
>> >> >  {
>> >> >  	struct intel_display *display = to_intel_display(dig_port);
>> >> > +	struct drm_connector_dp_link_train_caps link_caps;
>> >> >  	struct intel_dp *intel_dp = &dig_port->dp;
>> >> >  	struct intel_encoder *encoder = &dig_port->base;
>> >> >  	struct drm_device *dev = encoder->base.dev;
>> >> >  	enum port port = encoder->port;
>> >> > +	u32 *rates;
>> >> >  	int type;
>> >> >  
>> >> >  	if (drm_WARN(dev, dig_port->max_lanes < 1,
>> >> > @@ -7213,8 +7220,25 @@ intel_dp_init_connector(struct intel_digital_port
>> >> > *dig_port, type == DRM_MODE_CONNECTOR_eDP ? "eDP" : "DP",
>> >> >  		    encoder->base.base.id, encoder->base.name);
>> >> >  
>> >> > -	drmm_connector_init(dev, &connector->base,
>> >> > &intel_dp_connector_funcs,
>> >> > -			    type, &intel_dp->aux.ddc);
>> >> > +	intel_dp_set_source_rates(intel_dp);
>> >> > +	link_caps.nlanes = DRM_DP_1LANE | DRM_DP_2LANE | DRM_DP_4LANE;
>> >> > +	link_caps.nrates = intel_dp->num_source_rates;
>> >> > +	rates = kzalloc_objs(*rates, intel_dp->num_source_rates);
>> >> > +	if (!rates)
>> >> > +		goto fail;
>> >> > +
>> >> > +	for (int i = 0; i < intel_dp->num_source_rates; i++)
>> >> > +		rates[i] = intel_dp->source_rates[i];
>> >> > +
>> >> > +	link_caps.rates = rates;
>> >> > +	link_caps.dsc = true;    
>> >> 
>> >> You have a source, you have a sink, and you have a link between the two.
>> >> 
>> >> Source rates do not reflect the link rates common between source and
>> >> sink.
>> >> 
>> >> DSC depends on source and sink, and it's not statically "true" for
>> >> either, and depends on a bunch of things.  
>> >
>> > At init, we are reporting the capabilities of the source. So we list every
>> > link rates that the source can achieve and we report that the source is DSC
>> > capable which it is IIUC the code. Or maybe I am missing something?  
>> 
>> IMO link caps is the intersection of the source and sink caps. If the
>> sink is unknown, i.e. its caps are the empty set, then the link caps
>> should also be the empty set.
>
> Ok thanks, I am rather new to the DiplayPort world so thank you for sharing
> your knowledge.
>
> IIUC currently the drivers are not testing all the capabilities of the link,
> they try the more "powerful" link and decrease the link parameters until it
> works right? So there is currently no way to now the full capabilities between a
> sink and a source.

It's at the discretion of the driver, and e.g. for i915 it depends on
whether it's eDP or regular DP, and whether you plug in an SST sink or
an MST branch device. At least that's how it was the last I checked,
there's been changes. ;)

>> If you need to know the source caps, then they need to be presented
>> separately.
>
> With DRM properties we can see possible values and the value set. 
> My though was that the possible value are matching the source capabilities and
> value set was the one negotiated between the source and the sink.
> This was straightforward to me but it indeed can confuse between source
> capabilities and link capabilities. Have you a better idea?

Ah, in that sense the property might work, indicating the possible
values for the source.

But do see my other reply elsewhere in the thread. The chosen values
might not be as helpful as you may think.

BR,
Jani.


>
>> Moreover, the source does not unconditionally support DSC. See
>> intel_dp_has_dsc().
>
> Indeed thanks, I need to investigate that function.
>
> Regards,

-- 
Jani Nikula, Intel
