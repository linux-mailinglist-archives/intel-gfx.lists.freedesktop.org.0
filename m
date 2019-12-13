Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2224111EAD5
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Dec 2019 20:03:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE1BE6EC22;
	Fri, 13 Dec 2019 19:03:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc44.google.com (mail-yw1-xc44.google.com
 [IPv6:2607:f8b0:4864:20::c44])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 06A6F6E2F0
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 19:03:10 +0000 (UTC)
Received: by mail-yw1-xc44.google.com with SMTP id u139so242533ywf.13
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Dec 2019 11:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=uzQrZEqKcLpD2oBlC+eLNydVPHbkab7c0nRU7s5qezA=;
 b=LGm6rxAAbOy8vfBGq3VdGkOejPhVUDFUrqy/heuVUYW3xA/3Z7Yi+/jXYjGutFwh+A
 55AsLN1bCPs4qEzvnNHj6lFK8tzyNPf7EAw+VcsbPEFpYm+Yjq9vjKIGM7DADNDieU1T
 tKEhFE5W37P27+O2JymulUbNzUo8p7Qv7s5/UMRMslUFFy5xXCRCWFABk3IE5sMtFp6m
 TmUqHhutnLcC21x1u9ZfKCIKjKJm0Ki9H4nzhcbjy/wpXm0BmvZ/OXqmkVn8YmD847+y
 XlkRa2zwsaLVsA5d5Yo4EW1kIYDZOseUraX0byTxVvpj7uZlHx/6bVlq6MWal4UK45bn
 nvLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uzQrZEqKcLpD2oBlC+eLNydVPHbkab7c0nRU7s5qezA=;
 b=jZvgvwXARQNwkdRp4DesETrqLCiFenawF0TFmXtZ5GSvpoj1EI2tKsZh3X//4QzpkZ
 QWDt9jmlltrCrHXICiaKyaPBopczVa78orwRB/dzdyYH8+rOrBtKrbt7MddO/E0swjNm
 qUVY0kz63rDZQGGYhuZXn0w4suqjfqrfpnJGAxuqxki55dA1zKSTeSDKkMgXweQOJza0
 29gRzKeikGIwXc/VmKG6Ji3BMVCLTPcyiFxdMDIGUIiYxdiDXIUZxEAsuD8rc69xM+cu
 Xa2WDL+SSr26YQV7fNkwHzXYYtgYQp6a79C5XMYGchYaS7pcshRXOaoGoeA3ZJq7aE0z
 BjXg==
X-Gm-Message-State: APjAAAVp8UU17jJDfZpeRZT6t6cuBSqf+aOGJN2nPHEL9MlPszuBIFUw
 zREQqASIoeaML3LPMSl6q7fahA==
X-Google-Smtp-Source: APXvYqynOkiFD4ba/dSo9ItCUKEoXNfLH0pz+/2X89dULU3okypsbK/x9spQOpA14f+ceC1sbfpFoQ==
X-Received: by 2002:a81:615:: with SMTP id 21mr9156217ywg.460.1576263790124;
 Fri, 13 Dec 2019 11:03:10 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id a74sm4407964ywe.42.2019.12.13.11.03.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Dec 2019 11:03:09 -0800 (PST)
Date: Fri, 13 Dec 2019 14:03:08 -0500
From: Sean Paul <sean@poorly.run>
To: Ramalingam C <ramalingam.c@intel.com>
Message-ID: <20191213190308.GE41609@art_vandelay>
References: <20191212190230.188505-1-sean@poorly.run>
 <20191212190230.188505-9-sean@poorly.run>
 <20191213115825.GH3829@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191213115825.GH3829@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Subject: Re: [Intel-gfx] [PATCH v2 08/12] drm/i915: Don't fully disable HDCP
 on a port if multiple pipes are using it
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
Cc: daniel.vetter@ffwll.ch, intel-gfx@lists.freedesktop.org,
 Sean Paul <seanpaul@chromium.org>, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Dec 13, 2019 at 05:28:25PM +0530, Ramalingam C wrote:
> On 2019-12-12 at 14:02:26 -0500, Sean Paul wrote:
> > From: Sean Paul <seanpaul@chromium.org>
> > 
> > This patch is required for HDCP over MST. If a port is being used for
> > multiple HDCP streams, we don't want to fully disable HDCP on a port if
> > one of them is disabled. Instead, we just disable the HDCP signalling on
> > that particular pipe and exit early. The last pipe to disable HDCP will
> > also bring down HDCP on the port.
> Sean,

Hey Ram,
Thanks for the quick reviews!

> 
> We have a complication here. till ICL this will work as the HDCP
> instance is port based. But from TGL, HDCP is transcoder based.
> 
> We need to handle MST HDCP enable and disable differently for <=gen11 and >gen11.
> > 
> > In order to achieve this, we need to keep a refcount in intel_digital_port
> > and protect it using a new hdcp_mutex.
> > 
> > Signed-off-by: Sean Paul <seanpaul@chromium.org>
> > Link: https://patchwork.freedesktop.org/patch/msgid/20191203173638.94919-8-sean@poorly.run #v1
> > 
> > Changes in v2:
> > - Move the toggle_signalling call into _intel_hdcp_disable so it's called from check_work
> > ---

/snip

> > --- a/drivers/gpu/drm/i915/display/intel_dp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> > @@ -7580,6 +7580,8 @@ bool intel_dp_init(struct drm_i915_private *dev_priv,
> >  	intel_encoder = &intel_dig_port->base;
> >  	encoder = &intel_encoder->base;
> >  
> > +	mutex_init(&intel_dig_port->hdcp_mutex);
> its initialized at ddi_init itself.

I thought it would be safer to initialize the mutex for non-ddi based DP and
HDMI encoders as well.

> > +
> >  	if (drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
> >  			     &intel_dp_enc_funcs, DRM_MODE_ENCODER_TMDS,
> >  			     "DP %c", port_name(port)))
> > diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > index c79dca2c74d1..fbbd4da7c491 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdcp.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
> > @@ -779,6 +779,19 @@ static int _intel_
> hdcp_disable(struct intel_connector *connector)
> >  	DRM_DEBUG_KMS("[%s:%d] HDCP is being disabled...\n",
> >  		      connector->base.name, connector->base.base.id);
> >  
> > +	/*
> > +	 * If there are other connectors on this port using HDCP, don't disable
> > +	 * it. Instead, toggle the HDCP signalling off on that particular
> > +	 * connector/pipe and exit.
> > +	 */
> > +	if (intel_dig_port->num_hdcp_streams > 0) {
> > +		ret = hdcp->shim->toggle_signalling(intel_dig_port,
> > +						    cpu_transcoder, false);
> > +		if (ret)
> > +			DRM_ERROR("Failed to disable HDCP signalling\n");
> > +		return ret;
> > +	}
> This wont work for TGL+, where HDCP instance is transcoder based. we
> need to disable the HDCP per stream for TGL+

Hmm, I'm not sure how that would work for MST. Presumably you would still have
one port, but multiple transcoders feeding into it? Any chance you could send
me a bspec for HDMI on TGL+ so I can make adjustments? :-)

I also don't have any TGL hardware at my disposal, but hopefully soon.

Sean

> > +

/snip

> > diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > index 5066efadca85..905b188782ed 100644
> > --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> > @@ -3247,6 +3247,8 @@ void intel_hdmi_init(struct drm_i915_private *dev_priv,
> >  
> >  	intel_encoder = &intel_dig_port->base;
> >  
> > +	mutex_init(&intel_dig_port->hdcp_mutex);
> its initialized at ddi_init itself.
> 
> -Ram
> > +
> >  	drm_encoder_init(&dev_priv->drm, &intel_encoder->base,
> >  			 &intel_hdmi_enc_funcs, DRM_MODE_ENCODER_TMDS,
> >  			 "HDMI %c", port_name(port));
> > -- 
> > Sean Paul, Software Engineer, Google / Chromium OS
> > 

-- 
Sean Paul, Software Engineer, Google / Chromium OS
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
