Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 425C04F18A7
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Apr 2022 17:42:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C6E810E1E3;
	Mon,  4 Apr 2022 15:42:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-x341.google.com (mail-wm1-x341.google.com
 [IPv6:2a00:1450:4864:20::341])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7EC210E202
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Apr 2022 15:41:59 +0000 (UTC)
Received: by mail-wm1-x341.google.com with SMTP id r7so6189346wmq.2
 for <intel-gfx@lists.freedesktop.org>; Mon, 04 Apr 2022 08:41:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=w/8gSEP4Y+eg37m25uJQz5khDGVPC4yhdT96CaWdyw0=;
 b=N4+YgRJe42fB1eU5chTRyIrJsJEZk6Ohiq8wOaDzS3zQoXpNMU61NytJCd3mGxk5NB
 RUcUsKm6dj0xPIPd9herf3yvjUUjlyMVRjGVA/BvvmqBWBdMr6hSaEYdgP4QjjQ+Bdin
 LgbjQTU6AMYdtUAukCD9uYirxEUcgpV97u0MA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=w/8gSEP4Y+eg37m25uJQz5khDGVPC4yhdT96CaWdyw0=;
 b=unAyV4obIJZ1rJfVQKnTUYUj/C8RK80AeO4FxCUHpwJVR0hYjLzG8YjwvI1JLtMYr6
 oJTwixEKc/0OE67B1TDGiMSzyUczruZCVnlDXAnxvwRT+QSoGRz3lK7/XBfCFC8UTROA
 vrQMapTBEOb+vgjYk2QZi59Hpz9tC4xrcASQEYGgwXdbGcPthvE/Dko8JqMtdlXYxPVn
 F5eeatyldBspnwzAZdWYLizbfKXxbbOomxBkxJ2biF9zaEwzEZ/tV4v7rcQMVn+KCoqk
 DW8oTwW2lH7zhwgh65EyUUOA6IiJ9WWa7L9CKMGRdq0tfMmpOSANPWmSPRIPKfR2IH7j
 6U5A==
X-Gm-Message-State: AOAM531t0XViWBwjh5Q91E5yBzmR2cjzblUO+YipZ2QFuO5m02wp/cZS
 HmgqnURoCu3OsUQ6zEcbIEWSCA==
X-Google-Smtp-Source: ABdhPJxvSAN9N+oXgWgJAgqJGpVN8hxCSh5GJvn81nGq8M6C/b1tKa2Ujp1uKzGkDLow5XLzpEbAqg==
X-Received: by 2002:a05:600c:5023:b0:38d:1261:aac6 with SMTP id
 n35-20020a05600c502300b0038d1261aac6mr104459wmr.180.1649086918325; 
 Mon, 04 Apr 2022 08:41:58 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id
 c11-20020a05600c0a4b00b0037c91e085ddsm20983676wmq.40.2022.04.04.08.41.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Apr 2022 08:41:57 -0700 (PDT)
Date: Mon, 4 Apr 2022 17:41:56 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@linux.intel.com>
Message-ID: <YksRxORJDvfigbZG@phenom.ffwll.local>
References: <20220328075020.708022-1-bhanuprakash.modem@intel.com>
 <20220329060731.785476-1-bhanuprakash.modem@intel.com>
 <877d897z90.fsf@intel.com>
 <b5041da6-9a2b-c687-5dc9-c587eb6230b4@intel.com>
 <87fsmt6s8w.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <87fsmt6s8w.fsf@intel.com>
X-Operating-System: Linux phenom 5.10.0-8-amd64 
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display/debugfs: Add connector
 debugfs for "output_bpc"
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
Cc: Arkadiusz Hiler <arek@hiler.eu>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 airlied@linux.ie, Alex Deucher <alexander.deucher@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, Apr 04, 2022 at 01:46:23PM +0300, Jani Nikula wrote:
> On Mon, 04 Apr 2022, "Modem, Bhanuprakash" <bhanuprakash.modem@intel.com> wrote:
> > On Fri-01-04-2022 06:10 pm, Jani Nikula wrote:
> >> On Tue, 29 Mar 2022, Bhanuprakash Modem <bhanuprakash.modem@intel.com> wrote:
> >>> This new debugfs will expose the connector's max supported bpc
> >>> and the bpc currently using. It is very useful for verifying
> >>> whether we enter the correct output color depth from IGT.
> >>>
> >>> Example:
> >>> cat /sys/kernel/debug/dri/0/DP-1/output_bpc
> >>> Current: 8
> >>> Maximum: 10
> >>>
> >>> V2: Add connector's max bpc to i915_display_info
> >>>
> >>> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> >>> Cc: Uma Shankar <uma.shankar@intel.com>
> >>> Cc: Swati Sharma <swati2.sharma@intel.com>
> >>> Signed-off-by: Bhanuprakash Modem <bhanuprakash.modem@intel.com>
> >>> ---
> >>>   .../drm/i915/display/intel_display_debugfs.c  | 46 +++++++++++++++++++
> >>>   1 file changed, 46 insertions(+)
> >>>
> >>> diff --git a/drivers/gpu/drm/i915/display/intel_display_debugfs.c b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >>> index c1e74a13a0828..694d27f3b109c 100644
> >>> --- a/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >>> +++ b/drivers/gpu/drm/i915/display/intel_display_debugfs.c
> >>> @@ -663,6 +663,8 @@ static void intel_connector_info(struct seq_file *m,
> >>>   	seq_puts(m, "\tHDCP version: ");
> >>>   	intel_hdcp_info(m, intel_connector);
> >>>   
> >>> +	seq_printf(m, "\tmax bpc: %u\n", connector->display_info.bpc);
> >>> +
> >>>   	intel_panel_info(m, intel_connector);
> >>>   
> >>>   	seq_printf(m, "\tmodes:\n");
> >>> @@ -2275,6 +2277,47 @@ static const struct file_operations i915_dsc_bpp_fops = {
> >>>   	.write = i915_dsc_bpp_write
> >>>   };
> >>>   
> >>> +/*
> >>> + * Returns the maximum output bpc for the connector.
> >>> + * Example usage: cat /sys/kernel/debug/dri/0/DP-1/output_bpc
> >>> + */
> >>> +static int output_bpc_show(struct seq_file *m, void *data)
> >>> +{
> >>> +	struct drm_connector *connector = m->private;
> >>> +	struct drm_device *dev = connector->dev;
> >>> +	struct drm_crtc *crtc;
> >>> +	struct intel_crtc_state *crtc_state;
> >>> +	struct intel_encoder *encoder = intel_attached_encoder(to_intel_connector(connector));
> >>> +	int res;
> >>> +
> >>> +	if (!encoder)
> >>> +		return -ENODEV;
> >>> +
> >>> +	res = drm_modeset_lock_single_interruptible(&dev->mode_config.connection_mutex);
> >>> +	if (res)
> >>> +		return res;
> >>> +
> >>> +	crtc = connector->state->crtc;
> >>> +	if (connector->status != connector_status_connected || !crtc) {
> >>> +		res = -ENODEV;
> >>> +		goto unlock;
> >>> +	}
> >>> +
> >>> +	crtc_state = to_intel_crtc_state(crtc->state);
> >>> +	if (!crtc_state->hw.active)
> >>> +		goto unlock;
> >>> +
> >>> +	seq_printf(m, "Current: %u\n", crtc_state->pipe_bpp / 3);
> >>> +	seq_printf(m, "Maximum: %u\n", connector->display_info.bpc);
> >>> +	res = 0;
> >>> +
> >>> +unlock:
> >>> +	drm_modeset_unlock(&dev->mode_config.connection_mutex);
> >>> +
> >>> +	return res;
> >>> +}
> >>> +DEFINE_SHOW_ATTRIBUTE(output_bpc);
> >> 
> >> Looks like an excessive amount of code for a single value.
> >
> > Yeah, but these values are very helpful in many IGT tests like 
> > kms_color, kms_hdr, kms_dither, kms_dsc etc..
> >
> > Otherwise IGT needs to request the kernel to get the EDID, and parse 
> > that EDID to get the "Maximum" value which is redundant (Kernel is 
> > already doing the same) and not recommended in IGT.
> >
> > And there is no way to get the "Current" value except reading it from 
> > i915_display_info which is again not recommended in IGT (As 
> > i915_display_info is Intel specific).
> 
> Note how we have intel_connector_debugfs_add() for connector debugfs and
> intel_crtc_debugfs_add() for crtc debugfs, and how this patch just mixes
> up the two by looking up crtc and state from the connector debugfs.
> 
> > This debugfs is already introduced & using by AMD: 
> > https://patchwork.freedesktop.org/patch/308586
> 
> Wait, what?
> 
> Both amd and i915 adding the name "output_bpc" is *not* the way to
> roll. We only add i915_ prefixed debugfs files from i915.ko.

Yeah vendor prefix would be nice, but it's debugfs so we can always fix
it.

Also would be really good to pull that output_bpc into drm core if it's
something standard that igts need in general, so ideally we don't just
standardize the drm side, but also the testcases that need this and make
them generic to run on any kms driver.
-Daniel

> 
> If you need this to be a standard interface across drivers, IMO it
> should be added in common drm code, not sprinkled around in drivers.
> 
> I see that amd is already using this in what is basically drm core
> debugfs namespace, and there's amd specific IGT built on top.
> 
> Adding a bunch of Cc's to get some clarity on drm debugfs naming and
> usage.
> 
> 
> BR,
> Jani.
> 
> 
> >
> > - Bhanu
> >
> >> 
> >> BR,
> >> Jani.
> >> 
> >>> +
> >>>   /**
> >>>    * intel_connector_debugfs_add - add i915 specific connector debugfs files
> >>>    * @connector: pointer to a registered drm_connector
> >>> @@ -2330,6 +2373,9 @@ void intel_connector_debugfs_add(struct intel_connector *intel_connector)
> >>>   	    connector->connector_type == DRM_MODE_CONNECTOR_HDMIB)
> >>>   		debugfs_create_file("i915_lpsp_capability", 0444, root,
> >>>   				    connector, &i915_lpsp_capability_fops);
> >>> +
> >>> +	debugfs_create_file("output_bpc", 0444, root,
> >>> +			    connector, &output_bpc_fops);
> >>>   }
> >>>   
> >>>   /**
> >> 
> >
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
