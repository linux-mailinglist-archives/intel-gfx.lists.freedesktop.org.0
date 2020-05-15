Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D63E71D5B04
	for <lists+intel-gfx@lfdr.de>; Fri, 15 May 2020 22:53:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2E7DE6ED4A;
	Fri, 15 May 2020 20:53:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com
 [207.211.31.81])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C6DA06ED4A
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 20:53:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589576013;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iSirVRmDBGbz2dBK3ox+437xYJSgD5zKp5nu7+znOXQ=;
 b=gPSk8AZfdiLV0KFGyblnEgWtdQQLd/grm/Eev0A/kMcbZ3kQX73dpap30dKK8Xu+zC/9p9
 leAsUhWiVA3EiQPnGds1Xx2jSf6HyjVWutIUhgaA4ayp3jlryjPJ4DNpSKlCJir2kMHBnJ
 AykOHqdieWSRWmzPpfJZLDCH4bCDMgs=
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com
 [209.85.222.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-387-GxsUgVSYPs2c_31uV-hqBQ-1; Fri, 15 May 2020 16:53:25 -0400
X-MC-Unique: GxsUgVSYPs2c_31uV-hqBQ-1
Received: by mail-qk1-f200.google.com with SMTP id 189so3519720qke.17
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 May 2020 13:53:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :in-reply-to:references:organization:user-agent:mime-version
 :content-transfer-encoding;
 bh=iSirVRmDBGbz2dBK3ox+437xYJSgD5zKp5nu7+znOXQ=;
 b=Zfhni3PApi5dSOC7HspOcHqdXlWOShe/QsiAan15+PS5httMuSRhWihURpuuvRHrLc
 75jOFzXjJksSAPmmdMAmfA5dDS5ioMVH1sas21fp5giTPWZ1nstQo+OC6ClSTEjcU9SZ
 OsudD3nGp7OFiJw8sahVxrahSmqBt4DSx09/G0dahZOpaW9hC+EIVRKFf3os5P1ARiKg
 xcCWKjvaaUjf1Tx2qnKo2y2ObaRe/BzFBbx7/SqS5tVn/J5lcBue8/cCfrJrq1EVFNhG
 cAJe7rIgLwzp3rUiQteLPsKRXQNSIttXCYLzSakdl5tzCYzuHqtBnYofuTqgZQUveaHg
 FLSA==
X-Gm-Message-State: AOAM530HNu1aj5bgjKdLfaOttqSd+Gft9xl8JwZuBDOH09UpBl1R2A3e
 s2rTubEQ9ZLT8cNP/AfeYKHetCPdthXbEqN6f3DY5KW7bDgwvW7Df7Z+lHmMCpZ1h8BkQ0B7a+R
 sGE6+eIJYgWGE/kv+HhAB552A23Sd
X-Received: by 2002:ac8:1381:: with SMTP id h1mr1950354qtj.98.1589576005123;
 Fri, 15 May 2020 13:53:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxEvvmx6EVX/6NUbDUdHNx5DR7mJTXFZ+rEG+vNaWQTm338LFwYAm6hmn8b9e/ONYfY/AJzJg==
X-Received: by 2002:ac8:1381:: with SMTP id h1mr1950344qtj.98.1589576004866;
 Fri, 15 May 2020 13:53:24 -0700 (PDT)
Received: from Whitewolf.lyude.net
 (static-173-76-190-23.bstnma.ftas.verizon.net. [173.76.190.23])
 by smtp.gmail.com with ESMTPSA id q185sm2287654qkf.100.2020.05.15.13.53.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 May 2020 13:53:24 -0700 (PDT)
Message-ID: <6cd6d9442823ce77bc1f32bbf220db80da7f2b8f.camel@redhat.com>
From: Lyude Paul <lyude@redhat.com>
To: Lee Shawn C <shawn.c.lee@intel.com>, intel-gfx@lists.freedesktop.org
Date: Fri, 15 May 2020 16:53:23 -0400
In-Reply-To: <20200511231915.28069-1-shawn.c.lee@intel.com>
References: <20200417212408.19649-1-shawn.c.lee@intel.com>
 <20200511231915.28069-1-shawn.c.lee@intel.com>
Organization: Red Hat
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/mst: filter out the display
 mode exceed sink's capability
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
Reply-To: lyude@redhat.com
Cc: Cooper Chiou <cooper.chiou@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

sorry it's been taking me a while to get back to you with these, crunch time at
my work started so i've been really busy over the last week.

On Tue, 2020-05-12 at 07:19 +0800, Lee Shawn C wrote:
> So far, max dot clock rate for MST mode rely on physcial
> bandwidth limitation. It would caused compatibility issue
> if source display resolution exceed MST hub output ability.
> 
> For example, source DUT had DP 1.2 output capability.
> And MST docking just support HDMI 1.4 spec. When a HDMI 2.0
> monitor connected. Source would retrieve EDID from external
> and get max resolution 4k@60fps. DP 1.2 can support 4K@60fps
> because it did not surpass DP physical bandwidth limitation.
> Do modeset to 4k@60fps, source output display data but MST
> docking can't output HDMI properly due to this resolution
> already over HDMI 1.4 spec.
> 
> Refer to commit <fcf463807596> ("drm/dp_mst: Use full_pbn
> instead of available_pbn for bandwidth checks").
> Source driver should refer to full_pbn to evaluate sink
> output capability. And filter out the resolution surpass
> sink output limitation.
> 
> v2: Using mgr->base.lock to protect full_pbn.
> 
> Cc: Manasi Navare <manasi.d.navare@intel.com>
> Cc: Jani Nikula <jani.nikula@linux.intel.com>
> Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
> Cc: Cooper Chiou <cooper.chiou@intel.com>
> Cc: Lyude Paul <lyude@redhat.com>
> Signed-off-by: Lee Shawn C <shawn.c.lee@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 24 ++++++++++++++++++++-
>  1 file changed, 23 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 74559379384a..6b1864ce3771 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -611,6 +611,26 @@ static int intel_dp_mst_get_modes(struct drm_connector
> *connector)
>  	return intel_dp_mst_get_ddc_modes(connector);
>  }
>  
> +static bool
> +intel_dp_mst_mode_clock_exceed_pbn_bandwidth(struct drm_connector *connector,
> int clock, int bpp)
> +{
> +	struct intel_connector *intel_connector = to_intel_connector(connector);
> +	struct intel_dp *intel_dp = intel_connector->mst_port;
> +	struct drm_dp_mst_topology_mgr *mgr = &intel_dp->mst_mgr;
> +	struct drm_dp_mst_port *port = (to_intel_connector(connector))->port;
> +	bool ret = false;
> +
> +	if (!mgr)
> +		return ret;
> +
> +	drm_modeset_lock(&mgr->base.lock, NULL);
> +	if (port->full_pbn)
> +		ret = (drm_dp_calc_pbn_mode(clock, bpp, false) > port-
> >full_pbn);
> +	drm_modeset_unlock(&mgr->base.lock);

You're so close, but not quite! I'm fairly sure ->mode_valid() gets called with
drm_device.mode_config.connection_mutex already locked, which means that you
need to use the same drm_modeset_acquire context (if there isn't one, you need
to make it) so that you can safely roll back and retry in case there's a
deadlock between drm_dp_mst_topology_mgr.base.lock and
drm_device.mode_config.connection_mutex .

fwiw - I'm sensing some confusion here about ww_mutexes (wouldn't be the first
time, they're unusual). If you haven't already, it's probably worth reading up
on:

https://lwn.net/Articles/548909/

Keep in mind when you pipe down the context by adding a new version of the
->mode_valid() hook you won't want to drop any locks once you're done in this
function. They'll get dropped automatically when the caller of the new
->mode_valid() hook (so, the one where you get the drm_modeset_acquire_ctx from)
calls drm_modeset_drop_locks().

> +
> +	return ret;
> +}
> +
>  static enum drm_mode_status
>  intel_dp_mst_mode_valid(struct drm_connector *connector,
>  			struct drm_display_mode *mode)
> @@ -633,7 +653,9 @@ intel_dp_mst_mode_valid(struct drm_connector *connector,
>  	max_rate = intel_dp_max_data_rate(max_link_clock, max_lanes);
>  	mode_rate = intel_dp_link_required(mode->clock, 18);
>  
> -	/* TODO - validate mode against available PBN for link */
> +	if (intel_dp_mst_mode_clock_exceed_pbn_bandwidth(connector, mode->clock, 
> 24))
> +		return MODE_CLOCK_HIGH;
> +
>  	if (mode->clock < 10000)
>  		return MODE_CLOCK_LOW;
>  

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
