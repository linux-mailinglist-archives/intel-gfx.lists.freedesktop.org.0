Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 304661635A6
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Feb 2020 23:03:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 649DE6EA98;
	Tue, 18 Feb 2020 22:03:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com
 [IPv6:2607:f8b0:4864:20::b42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A1196E417
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 22:03:28 +0000 (UTC)
Received: by mail-yb1-xb42.google.com with SMTP id p123so11321269ybp.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Feb 2020 14:03:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8KjW5PETGWfH5/4eC+9e+aq7YU699R0bBfcOU3DPbDs=;
 b=OEDE0vYWvYbhAQQpJDudn1YoJ9pHBYvb4BiclpyqMyL8eNWvPZqRnP8aQokmisN1kv
 iMUObXjTMMiU3g0iXmazgV1lLm1GMxuBMjAlqevxUCYZ+9xL4LfEEMf0VdO2eB4cZICi
 i0EKaKYJhoA883HBhrT/QoIb/N0S3eTn/RF4aA5aWEWUNMxpkl4cuwGsowQuiV4EFjLa
 BRB2yE2rqJiLYgrGSRYcdWk1soEHg4+XU4dpDFhHx1TW49j8443+IJr3vbYEQ7YXOCVe
 f1BypdcDS0PJ2L7M60I0ibkrqBapAUsZ81oW7xVh+VBH4VoFFv9NAuqbhsMHrtpdNlLl
 z8xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8KjW5PETGWfH5/4eC+9e+aq7YU699R0bBfcOU3DPbDs=;
 b=SJRmBRy2/jjGxucxEEx0M+1zNXvoMFG5vtIwRjtQyoMxxFD8NuWJsdRaU7XdmUe6z1
 9wt6RmwJ5fYhIHPzcVYtqfMA4qxyFKGTFFYV5vx9gHrF5zutAGH/fEQ75ZLuMBDclcAo
 KYziWleoiVH7athZpZpwMZ2BYeWO63Fv1XVWMdeGt5L6gnD5sgRu2ld9jTMuodaxPxHH
 mIfaIfKvJ4pVL6qVPFxWTMiiI/yTtiLdVTrbarUn2Q4aMQGoYC3wqYM0nOxtasgqXIBm
 8Wtzz7IBoO+puLT5ZuhpPfpjXP5mwrl2v6QOnXDVHNOPuXuasWfZwIgADGbbntWcxg4/
 xLZA==
X-Gm-Message-State: APjAAAVtE6E6Gt5DDxQdeG/CYDYUcUWw2T76hv3BAFg33JJY2X9R3ABf
 ubhb3aArJu6V5CRQbScO03JhYQ==
X-Google-Smtp-Source: APXvYqxlBx4UQl03Klj6j0Fy/6geryPzFdK6KGap02rG+Kp/NMEp1srsxXvyzn0jRqBEpWsXEZUXEA==
X-Received: by 2002:a25:b981:: with SMTP id r1mr21093836ybg.320.1582063408175; 
 Tue, 18 Feb 2020 14:03:28 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id l74sm23041ywc.45.2020.02.18.14.03.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 14:03:27 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Tue, 18 Feb 2020 17:02:28 -0500
Message-Id: <20200218220242.107265-1-sean@poorly.run>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v4 00/14] drm/i915: Add support for HDCP 1.4
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
Back with a v4. Rebased on latest drm-tip.

Biggest change was adding the QUERY_STREAM_ENCRYPTION_STATUS check which
ensures not only the link to the first branch is encrypted, but also
that the channel iteself is also protected.

Sean


Sean Paul (14):
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
  drm/i915: Add connector to hdcp_shim->check_link()
  drm/mst: Add support for QUERY_STREAM_ENCRYPTION_STATUS MST sideband
    message
  drm/i915: Add HDCP 1.4 support for MST connectors

 drivers/gpu/drm/drm_dp_mst_topology.c         | 117 +++
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  26 +-
 drivers/gpu/drm/i915/display/intel_ddi.h      |   2 +
 .../drm/i915/display/intel_display_types.h    |  30 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 620 +--------------
 drivers/gpu/drm/i915/display/intel_dp.h       |   7 +
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 705 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  15 +
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 199 +++--
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  23 +-
 include/drm/drm_dp_helper.h                   |   3 +
 include/drm/drm_dp_mst_helper.h               |  44 ++
 include/drm/drm_hdcp.h                        |   3 +
 14 files changed, 1127 insertions(+), 668 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_hdcp.c

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
