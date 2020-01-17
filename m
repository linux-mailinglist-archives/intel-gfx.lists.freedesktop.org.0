Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 583611411AD
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Jan 2020 20:31:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A73D16F8D3;
	Fri, 17 Jan 2020 19:31:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc41.google.com (mail-yw1-xc41.google.com
 [IPv6:2607:f8b0:4864:20::c41])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E7166F8D3
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 19:31:06 +0000 (UTC)
Received: by mail-yw1-xc41.google.com with SMTP id z7so14843934ywd.4
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Jan 2020 11:31:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kJmv9QEn/Ba0CeGMsutg8elT7GBn7HEVuIj01puRU4E=;
 b=K2nGsQ8iVjyLaGJTqmT8F2sJ/E37U7ny3toeUjN+NAAQd1XTV5QqsnrjC/kFxglgLz
 w104INbbKkwdboTOfgnRAvKxdydXTLYz6dfvcf2sYXC9IresV4ObCTdDEtniSWhFOJmO
 NsFc9UShM+qu2ntSlWcIOfRFqchM4nxKkQA6BKuUHMDVxmcwBun5icq8q6dgju0LU72O
 eHMDqWvCzIJrrijuK1kAPDWrJ7BOyQDRXXvobTkJrIq1GYZ05Ce2NOul/4p8BG7DE2/y
 wW3RQcf1/SwYJSuP3HubJc3y4h9wRpyHIFgjvlPeWUsOx4ROx63Ixm8xLPZitWTr3x1f
 If8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kJmv9QEn/Ba0CeGMsutg8elT7GBn7HEVuIj01puRU4E=;
 b=IM9H8a7KH+F1JRAqvJA2IF3iXU9UQvMiu5T+a8Oi9sJ9g/+Vb405WlzODEJOP6k1Ut
 Mj8oPpC839nFsaljOd8kW+C25BD6tP7P4ZeXWtuhwm+HUG1XuKmweZ5NUNFsOpYB5iik
 lgYCDKc2+Tu6y5iHKGs01a1TXxB8XGCE8ngzajyO/K4L2n4QbBfp/3LF0xfhWey8CDK1
 OFSlJHmCnZyJzwwVMHkqnItCAd3Jvd3foDqJNEQUlrOBMfrjsA+QdUFBYrpoNc/JSRtc
 HbV3dl+cNA2BUdrI7glDWFkC0hIcWmbGN5zHlal6NgPZqjrjcNA+oLzfQctF+u/xHp6l
 ESpg==
X-Gm-Message-State: APjAAAWIl8LQzMYi/sWLElP5pDtDFeqfb32+tV2k9Oqvo4U+4BgsLqdH
 0I9EciPhk5zY4wORM/D41CGnmg==
X-Google-Smtp-Source: APXvYqxr6bizWZrpW7rhzbCUaElAYeiTybqyCUBEpZfIN3udvRrWrZBpK7DTB2AZsJNeR5I+TBHkDw==
X-Received: by 2002:a81:31d1:: with SMTP id
 x200mr32712338ywx.506.1579289465397; 
 Fri, 17 Jan 2020 11:31:05 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id k5sm11863306ywa.80.2020.01.17.11.31.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 11:31:04 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Fri, 17 Jan 2020 14:30:51 -0500
Message-Id: <20200117193103.156821-1-sean@poorly.run>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 00/12] drm/i915: Add support for HDCP 1.4
 over MST connectors
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
Cc: daniel.vetter@ffwll.ch, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Hey all,
Here's v3, which addresses all review comments in v2.

Sean

Sean Paul (12):
  drm/i915: Fix sha_text population code
  drm/i915: Clear the repeater bit on HDCP disable
  drm/i915: WARN if HDCP signalling is enabled upon disable
  drm/i915: Intercept Aksv writes in the aux hooks
  drm/i915: Use the cpu_transcoder in intel_hdcp to toggle HDCP
    signalling
  drm/i915: Factor out hdcp->value assignments
  drm/i915: Protect workers against disappearing connectors
  drm/i915: Don't fully disable HDCP on a port if multiple pipes are
    using it
  drm/i915: Support DP MST in enc_to_dig_port() function
  drm/i915: Use ddi_update_pipe in intel_dp_mst
  drm/i915: Factor out HDCP shim functions from dp for use by dp_mst
  drm/i915: Add HDCP 1.4 support for MST connectors

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  27 +-
 drivers/gpu/drm/i915/display/intel_ddi.h      |   2 +
 .../drm/i915/display/intel_display_types.h    |  27 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 619 +---------------
 drivers/gpu/drm/i915/display/intel_dp.h       |   7 +
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 680 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  15 +
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 195 +++--
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  18 +-
 include/drm/drm_hdcp.h                        |   3 +
 11 files changed, 932 insertions(+), 662 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_hdcp.c

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
