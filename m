Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0FA17835E
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Mar 2020 20:50:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 432316E056;
	Tue,  3 Mar 2020 19:50:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
 [207.211.31.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 484556E056
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Mar 2020 19:50:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583265012;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=vf4h5E8IkOQ4lygsPliUgjFr5XtylcraEA/u77n/sos=;
 b=LDf86eTyZN5wa4esE33NT9Ibayu2gYGGQW1hw1SY9qsavOG7sVdN/xwbuLredk9NoJB18d
 8oqGQ4IPDAKjuXAbFJnWahbI1Wm96HgLLMIz2mRTUC1oKaRkBBxFqDArdyt1PH8kSA4Fcf
 AMPSWmfM/+QrxcAbsGqidLRw1d9k4I0=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-433-EyUc8vHFOxCk2YB7k92NOQ-1; Tue, 03 Mar 2020 14:50:07 -0500
X-MC-Unique: EyUc8vHFOxCk2YB7k92NOQ-1
Received: by mail-qt1-f197.google.com with SMTP id r19so3006948qtb.10
 for <intel-gfx@lists.freedesktop.org>; Tue, 03 Mar 2020 11:50:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
 :references:user-agent:mime-version:content-transfer-encoding;
 bh=vf4h5E8IkOQ4lygsPliUgjFr5XtylcraEA/u77n/sos=;
 b=loMTKincPg/GLwtZyzUyfj9CTcPYaa/JuKRv0/UAzaziroYaB+JBHZKIgSFpbKM9kM
 2yJIS/RTkrqbo2lrsVYLfW49vnPOXSPcK8cUfXsai459Ax1E5+/dPrmob4NFBQL8rOnM
 QKFEcDwUbnA/bl62Caia3LISVenqQ1WD3zsS6Y2JfML+TOVYvAkHqzVCfl83ALP6aXXb
 qdteSARrIHLxA/mnfgL9SKgbKQFjCDx1DKDc6w6qxzTFFbHRlGCAOjsKZV6HtGxEA2gy
 04I3vfSse9V+rpW/x3DO5dCnDAFVVAYcuj1FH/mFyu0icyusUWI/9nGciQ98s3UmYiso
 mBqg==
X-Gm-Message-State: ANhLgQ1EvaWNqYFGoXLPixMpFMOsq0zk8PidbPf3eTBU0zp6moGFj/mV
 k3YhoAPdOr2PSO2ZSMPph0ffavni2c5BL+mbHfnxO/CJAy8bHo2cTFuB2y6xdMO3uSJnXYuW91R
 LYHqGn6sB/n474HQrDvt9neUgBrcz
X-Received: by 2002:ac8:357b:: with SMTP id z56mr6087800qtb.226.1583265007035; 
 Tue, 03 Mar 2020 11:50:07 -0800 (PST)
X-Google-Smtp-Source: ADFU+vuoqlsF5Q/fYco3ByAB69bUva9hDSW7kKRqW116dyUw2Moz1OhiY2NeJtVZGwucZU1EvvG+kQ==
X-Received: by 2002:ac8:357b:: with SMTP id z56mr6087777qtb.226.1583265006801; 
 Tue, 03 Mar 2020 11:50:06 -0800 (PST)
Received: from desoxy ([2600:380:8e4d:1b16:f190:533c:5a8b:4a57])
 by smtp.gmail.com with ESMTPSA id f13sm8159246qkm.42.2020.03.03.11.50.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 11:50:06 -0800 (PST)
Message-ID: <8560ac83111aed7b4cf74b96ae578682a764f5c8.camel@redhat.com>
From: Adam Jackson <ajax@redhat.com>
To: Lyude Paul <lyude@redhat.com>, intel-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org
Date: Tue, 03 Mar 2020 14:50:02 -0500
In-Reply-To: <20200211183358.157448-3-lyude@redhat.com>
References: <20200211183358.157448-3-lyude@redhat.com>
User-Agent: Evolution 3.34.0 (3.34.0-1.fc31)
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Subject: Re: [Intel-gfx] [v2,
 2/3] drm/i915: Force DPCD backlight mode on X1 Extreme 2nd Gen 4K
 AMOLED panel
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
Cc: Jani Nikula <jani.nikula@intel.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Maxime Ripard <mripard@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 2020-02-11 at 13:33 -0500, Lyude Paul wrote:

> -	if (!intel_dp_aux_display_control_capable(intel_connector))
> +	/*
> +	 * There are a lot of machines that don't advertise the backlight
> +	 * control interface to use properly in their VBIOS, :\
> +	 */
> +	if (dev_priv->vbt.backlight.type !=
> +	    INTEL_BACKLIGHT_VESA_EDP_AUX_INTERFACE &&
> +	    !drm_dp_has_quirk(&intel_dp->desc, intel_dp->edid_quirks,
> +			      DP_QUIRK_FORCE_DPCD_BACKLIGHT)) {
> +		DRM_DEV_INFO(dev->dev,
> +			     "Panel advertises DPCD backlight support, but "
> +			     "VBT disagrees. If your backlight controls "
> +			     "don't work try booting with "
> +			     "i915.enable_dpcd_backlight=1. If your machine "
> +			     "needs this, please file a _new_ bug report on "
> +			     "bugs.freedesktop.org against DRI -> "
> +			     "DRM/Intel\n");

Bugzilla's been put out of our misery, probably this should point to
gitlab instead.

- ajax

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
