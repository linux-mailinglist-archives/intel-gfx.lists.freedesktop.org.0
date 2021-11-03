Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 33AA14447E6
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Nov 2021 19:06:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEC9E73DBD;
	Wed,  3 Nov 2021 18:05:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA54473DC0;
 Wed,  3 Nov 2021 18:05:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10157"; a="230281851"
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="230281851"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2021 11:05:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,206,1631602800"; d="scan'208";a="501192085"
Received: from stinkbox.fi.intel.com (HELO stinkbox) ([10.237.72.171])
 by orsmga008.jf.intel.com with SMTP; 03 Nov 2021 11:05:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 03 Nov 2021 20:05:16 +0200
Date: Wed, 3 Nov 2021 20:05:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Maxime Ripard <maxime@cerno.tech>
Message-ID: <YYLPXJoC7TZcwejb@intel.com>
References: <20211102145944.259181-1-maxime@cerno.tech>
 <20211102145944.259181-2-maxime@cerno.tech>
 <YYJsM6/hZ43b1tm9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <YYJsM6/hZ43b1tm9@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 01/13] drm/connector: Add define for HDMI
 1.4 Maximum Pixel Rate
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 amd-gfx@lists.freedesktop.org,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Daniel Vetter <daniel.vetter@intel.com>, Phil Elwell <phil@raspberrypi.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Emma Anholt <emma@anholt.net>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Kevin Hilman <khilman@baylibre.com>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jonas Karlman <jonas@kwiboo.se>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 intel-gfx@lists.freedesktop.org, linux-tegra@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Dom Cobley <dom@raspberrypi.com>, "Pan, Xinhui" <Xinhui.Pan@amd.com>,
 Robert Foss <robert.foss@linaro.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 03, 2021 at 01:02:11PM +0200, Ville Syrjälä wrote:
> On Tue, Nov 02, 2021 at 03:59:32PM +0100, Maxime Ripard wrote:
> > --- a/drivers/gpu/drm/drm_edid.c
> > +++ b/drivers/gpu/drm/drm_edid.c
> > @@ -4966,7 +4966,7 @@ static void drm_parse_hdmi_forum_vsdb(struct drm_connector *connector,
> >  		u32 max_tmds_clock = hf_vsdb[5] * 5000;
> >  		struct drm_scdc *scdc = &hdmi->scdc;
> >  
> > -		if (max_tmds_clock > 340000) {
> > +		if (max_tmds_clock > DRM_HDMI_14_MAX_TMDS_CLK_KHZ) {
> >  			display->max_tmds_clock = max_tmds_clock;
> >  			DRM_DEBUG_KMS("HF-VSDB: max TMDS clock %d kHz\n",
> >  				display->max_tmds_clock);
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index d2e61f6c6e08..0666203d52b7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -2226,7 +2226,7 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
> >  		if (scdc->scrambling.low_rates)
> >  			pipe_config->hdmi_scrambling = true;
> >  
> > -		if (pipe_config->port_clock > 340000) {
> > +		if (pipe_config->port_clock > DRM_HDMI_14_MAX_TMDS_CLK_KHZ) {
> >  			pipe_config->hdmi_scrambling = true;
> >  			pipe_config->hdmi_high_tmds_clock_ratio = true;
> >  		}
> 
> All of that is HDMI 2.0 stuff. So this just makes it all super
> confusing IMO. Nak.

So reading throgh HDMI 1.4 again it does specify 340 MHz as some kind
of upper limit for the physical cable. But nowhere else is that number
really mentioned AFAICS. HDMI 2.0 does talk quite a bit about the 340
Mcsc limit in various places.

I wonder what people would think of a couple of helpers like:
- drm_hdmi_{can,must}_use_scrambling()
- drm_hdmi_is_high_tmds_clock_ratio()
or something along those lines? At least with those the code would
read decently and I wouldn't have to wonder what this HDMI 1.4 TMDS
clock limit really is.

-- 
Ville Syrjälä
Intel
