Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F402ECD6D
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Jan 2021 11:04:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80F516E415;
	Thu,  7 Jan 2021 10:04:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 28A6C6E415
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Jan 2021 10:04:32 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id r7so5027730wrc.5
 for <intel-gfx@lists.freedesktop.org>; Thu, 07 Jan 2021 02:04:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=TOKENw19JN7GMD9uSy3dV/DFZRl6GO+oyV6IQtDql0k=;
 b=ZohrA9yuVm/9+HRj3f9dFkiH5fuIGvc5yO+ytdlPVqWSyOxHtgq1oip9LjRLl8xRDL
 NCOULf9WP6hQ9heYUccqjH9ff57H9S+6CBjslEystlHQIN6hO/hVwWdBDRfdpyk90wNr
 1IuHz+ux5G0AOifHT2pNQt82JZg/81go4qe28=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=TOKENw19JN7GMD9uSy3dV/DFZRl6GO+oyV6IQtDql0k=;
 b=ViMkzAQpWc0uPhUgzWUC4Hj5mAZ2BYrgxCm4alRuoqgXNSaLvht2dJFaZtUBbo5myi
 Rp0+vAXYy21XA3Zkb2e5A8XWPOCuu+0UBHcDigQYfe6+xYSHbxavYmCOdNX68f2gbOQp
 Y/C4iZG2Vf/B/L64zxfz45aZW1IvrXi6eKQJOYOGkie7v17TuYlG+5fGodk5L4ZXdT21
 E+2SEDSXeooA1Rqxgsyg/De5xZfG0WhDlUlGwl0RkUP0IKtaVPKpy+3gqF33vFSaL/Qh
 9G/OU17ADWg0X7B543s9N/dqvGr/6UPIc3MbOb1m5D6aTo/P2Xt8OfFA1Vk0pDc8H2xr
 /7Mw==
X-Gm-Message-State: AOAM530jYj8zGptaNAUavUb61lQDxmIYB6k0fTFdwOEo1V/kKdqqg+xI
 adi75I2dQquuSgvAJWpzmEZJvMY4TsQQlLRm
X-Google-Smtp-Source: ABdhPJw93sU9VHbuFSRfTMBc3y4T7GSMwp97h60xsiW1i+WHC8/ovqYvh5KUlI9ju7eQZFDS565yNQ==
X-Received: by 2002:a5d:4dcd:: with SMTP id f13mr8203608wru.10.1610013870758; 
 Thu, 07 Jan 2021 02:04:30 -0800 (PST)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id 189sm7084352wma.22.2021.01.07.02.04.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 07 Jan 2021 02:04:30 -0800 (PST)
Date: Thu, 7 Jan 2021 11:04:28 +0100
From: Daniel Vetter <daniel@ffwll.ch>
To: Jani Nikula <jani.nikula@intel.com>
Message-ID: <X/bcrK5P7Igijwn+@phenom.ffwll.local>
References: <87lfdpndkt.fsf@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87lfdpndkt.fsf@intel.com>
X-Operating-System: Linux phenom 5.7.0-1-amd64 
Subject: Re: [Intel-gfx] [PULL] topic/dp-hdmi-2.1-pcon for drm-misc-next
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
Cc: dim-tools@lists.freedesktop.org, Daniel Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Dec 23, 2020 at 10:14:58AM +0200, Jani Nikula wrote:
> 
> Hi Maarten, Maxime, and Thomas -
> 
> Here's the DP-HDMI2.1 PCON support topic pull consisting of the series
> [1]. The series is split roughly 50-50 between drm helpers and i915, so
> a topic branch seemed to be the right way to go.
> 
> I'll also pull this to drm-intel-next once you've merged to
> drm-misc-next.

I didn't see this merged into drm-misc-next, so pulled into drm-next. I'm
processing an entire batch of pulls, I'll ping you on irc when it's all
ready for backmerging.

Cheers, Daniel

> 
> BR,
> Jani.
> 
> 
> [1] https://patchwork.freedesktop.org/series/82098/
> 
> 
> topic/dp-hdmi-2.1-pcon-2020-12-23:
> Add support for DP-HDMI2.1 PCON
> 
> From the series cover letter:
> 
> This patch series attempts to add support for a DP-HDMI2.1 Protocol
> Convertor. The VESA spec for the HDMI2.1 PCON are proposed in Errata
> E5 to DisplayPort_v2.0:
> https://vesa.org/join-vesamemberships/member-downloads/?action=stamp&fileid=42299
> The details are mentioned in:
> VESA DP-to-HDMI PCON Specification Standalone Document
> https://groups.vesa.org/wg/DP/document/15651
> 
> This series starts with adding support for FRL (Fixed Rate Link)
> Training between the PCON and HDMI2.1 sink.
> As per HDMI2.1 specification, a new data-channel or lane is added in
> FRL mode, by repurposing the TMDS clock Channel. Through FRL, higher
> bit-rate can be supported, ie. up to 12 Gbps/lane (48 Gbps over 4
> lanes).
> 
> With these patches, the HDMI2.1 PCON can be configured to achieve FRL
> training based on the maximum FRL rate supported by the panel, source
> and the PCON.
> The approach is to add the support for FRL training between PCON and
> HDMI2.1 sink and gradually add other blocks for supporting higher
> resolutions and other HDMI2.1 features, that can be supported by pcon
> for the sources that do not natively support HDMI2.1.
> 
> This is done before the DP Link training between the source and PCON
> is started. In case of FRL training is not achieved, the PCON will
> work in the regular TMDS mode, without HDMI2.1 feature support.
> Any interruption in FRL training between the PCON and HDMI2.1 sink is
> notified through IRQ_HPD. On receiving the IRQ_HPD the concerned DPCD
> registers are read and FRL training is re-attempted.
> 
> Currently, we have tested the FRL training and are able to enable 4K
> display with TGL Platform + Realtek PCON RTD2173 with HDMI2.1 supporting
> panel.
> 
> The following changes since commit b3bf99daaee96a141536ce5c60a0d6dba6ec1d23:
> 
>   drm/i915/display: Defer initial modeset until after GGTT is initialised (2020-11-26 11:01:52 +0000)
> 
> are available in the Git repository at:
> 
>   git://anongit.freedesktop.org/drm/drm-intel tags/topic/dp-hdmi-2.1-pcon-2020-12-23
> 
> for you to fetch changes up to 522508b665df3bbfdf40381d4e61777844b1703f:
> 
>   drm/i915/display: Let PCON convert from RGB to YCbCr if it can (2020-12-22 17:59:07 +0200)
> 
> ----------------------------------------------------------------
> Add support for DP-HDMI2.1 PCON
> 
> From the series cover letter:
> 
> This patch series attempts to add support for a DP-HDMI2.1 Protocol
> Convertor. The VESA spec for the HDMI2.1 PCON are proposed in Errata
> E5 to DisplayPort_v2.0:
> https://vesa.org/join-vesamemberships/member-downloads/?action=stamp&fileid=42299
> The details are mentioned in:
> VESA DP-to-HDMI PCON Specification Standalone Document
> https://groups.vesa.org/wg/DP/document/15651
> 
> This series starts with adding support for FRL (Fixed Rate Link)
> Training between the PCON and HDMI2.1 sink.
> As per HDMI2.1 specification, a new data-channel or lane is added in
> FRL mode, by repurposing the TMDS clock Channel. Through FRL, higher
> bit-rate can be supported, ie. up to 12 Gbps/lane (48 Gbps over 4
> lanes).
> 
> With these patches, the HDMI2.1 PCON can be configured to achieve FRL
> training based on the maximum FRL rate supported by the panel, source
> and the PCON.
> The approach is to add the support for FRL training between PCON and
> HDMI2.1 sink and gradually add other blocks for supporting higher
> resolutions and other HDMI2.1 features, that can be supported by pcon
> for the sources that do not natively support HDMI2.1.
> 
> This is done before the DP Link training between the source and PCON
> is started. In case of FRL training is not achieved, the PCON will
> work in the regular TMDS mode, without HDMI2.1 feature support.
> Any interruption in FRL training between the PCON and HDMI2.1 sink is
> notified through IRQ_HPD. On receiving the IRQ_HPD the concerned DPCD
> registers are read and FRL training is re-attempted.
> 
> Currently, we have tested the FRL training and are able to enable 4K
> display with TGL Platform + Realtek PCON RTD2173 with HDMI2.1 supporting
> panel.
> 
> ----------------------------------------------------------------
> Ankit Nautiyal (11):
>       drm/edid: Parse DSC1.2 cap fields from HFVSDB block
>       drm/dp_helper: Add Helpers for FRL Link Training support for DP-HDMI2.1 PCON
>       drm/dp_helper: Add support for Configuring DSC for HDMI2.1 Pcon
>       drm/dp_helper: Add helpers to configure PCONs RGB-YCbCr Conversion
>       drm/i915: Capture max frl rate for PCON in dfp cap structure
>       drm/i915: Add support for starting FRL training for HDMI2.1 via PCON
>       drm/i915: Check for FRL training before DP Link training
>       drm/i915: Read DSC capabilities of the HDMI2.1 PCON encoder
>       drm/i915: Add helper functions for calculating DSC parameters for HDMI2.1
>       drm/i915/display: Configure PCON for DSC1.1 to DSC1.2 encoding
>       drm/i915/display: Let PCON convert from RGB to YCbCr if it can
> 
> Swati Sharma (4):
>       drm/edid: Add additional HFVSDB fields for HDMI2.1
>       drm/edid: Parse MAX_FRL field from HFVSDB block
>       drm/dp_helper: Add support for link failure detection
>       drm/i915: Add support for enabling link status and recovery
> 
>  drivers/gpu/drm/drm_dp_helper.c                    | 566 +++++++++++++++++++++
>  drivers/gpu/drm/drm_edid.c                         | 103 ++++
>  drivers/gpu/drm/i915/display/intel_ddi.c           |   6 +-
>  drivers/gpu/drm/i915/display/intel_display_types.h |  10 +
>  drivers/gpu/drm/i915/display/intel_dp.c            | 440 +++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_dp.h            |   7 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c          | 233 +++++++++
>  drivers/gpu/drm/i915/display/intel_hdmi.h          |   7 +
>  include/drm/drm_connector.h                        |  49 ++
>  include/drm/drm_dp_helper.h                        | 218 ++++++++
>  include/drm/drm_edid.h                             |  30 ++
>  11 files changed, 1650 insertions(+), 19 deletions(-)
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
