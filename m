Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 17DDF1BE7CD
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Apr 2020 21:55:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C9156F39B;
	Wed, 29 Apr 2020 19:55:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf42.google.com (mail-qv1-xf42.google.com
 [IPv6:2607:f8b0:4864:20::f42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA6356EB0B
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 19:55:04 +0000 (UTC)
Received: by mail-qv1-xf42.google.com with SMTP id di6so1796577qvb.10
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Apr 2020 12:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fYj3stdlPUe+4l8X4aTsSl2/4/mt1I4ptnkrS7D8428=;
 b=CVR0p9rxeVwOQbUR0L2ZnbiSCo7MNXNR51hBfOl4SzlOHsKqAMZYEsYk8xeuBxeVDs
 47X/2LaJupoH5jynaSXYSlKIbwnTGq8c5qvuQlg9O5ns8TR000LMMk8+2adcDyHDMEr1
 8KYC6hMD8DcKpPKIrwJ4aULor1WVbJhrm5USltryohkD0k0u/kQ/p6oYal+K4iDtQNRA
 MASHydiB4AG5UO7E8r9vljJ01euFrlNn3bxeOtgvW+IzpxRAcUYj8XA+WVJkTxQ1wn4Z
 EF/hmnQpsHsGFCGCSPfWRZ9U76KDh53JMWhRmqbP25fH969p4oc36i5QmE/K0K8ZI6xR
 /kkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fYj3stdlPUe+4l8X4aTsSl2/4/mt1I4ptnkrS7D8428=;
 b=pGWyBtFPo7UKDoTigQk38EHT9JQxIfDr8H+KUhrMKZ0WvD9+7Ky5DTh8e2T3CvB9lW
 x0CcYb1sRsJVToO7Jn/J6fQ7xqwCF3DN9PXtVA9JfloO+8M6hyZ/3EDjDGHnznLzuaEQ
 ZuJByTbWrUpbdFOPXSvDeu4Wsraqt4T2q1y7L8KS+oLUrhyINdNsPsw6w/PAYlOKxjws
 9uiaFUTwKEJZNGxQBKh4kOX13n1olFBsq3CYG981xARoPUNn7oS7dcaCyGGTw7xjqlBD
 PuO0qYgfGSzySs49vNZVytAAA8gbOWnCNF9PcS9S5itlDa8p3dxxy0EhWYn6zaCJ8rxA
 8vfQ==
X-Gm-Message-State: AGi0Pub62GkDe7l3oBF/reYQ173a3MW+XIOddHs0368zC6gAdlgRYf7b
 yCuZKH9LIJ8a66oSsCoPRCfr0Q==
X-Google-Smtp-Source: APiQypLzdsPcgxYBX2cfmzPotRa39j+UnrB4qPLFJn8UgCqPujpdjpb8OMaEX4QrnKJITPx8eTbqxQ==
X-Received: by 2002:a0c:e787:: with SMTP id x7mr34225724qvn.229.1588190103843; 
 Wed, 29 Apr 2020 12:55:03 -0700 (PDT)
Received: from localhost (mobile-166-170-55-34.mycingular.net. [166.170.55.34])
 by smtp.gmail.com with ESMTPSA id j8sm164155qtk.85.2020.04.29.12.55.03
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 29 Apr 2020 12:55:03 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Wed, 29 Apr 2020 15:54:46 -0400
Message-Id: <20200429195502.39919-1-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v6 00/16] drm/i915: Add support for HDCP 1.4
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
Cc: daniel.vetter@ffwll.ch, seanpaul@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Changes in v6:
-Rebased on -tip
-Disabled HDCP over MST on GEN12
-Addressed Lyude's review comments in the QUERY_STREAM_ENCRYPTION_STATUS patch

Sean Paul (16):
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
  drm/i915: Plumb port through hdcp init
  drm/i915: Add connector to hdcp_shim->check_link()
  drm/mst: Add support for QUERY_STREAM_ENCRYPTION_STATUS MST sideband
    message
  drm/i915: Print HDCP version info for all connectors
  drm/i915: Add HDCP 1.4 support for MST connectors

 drivers/gpu/drm/drm_dp_mst_topology.c         | 142 ++++
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  29 +-
 drivers/gpu/drm/i915/display/intel_ddi.h      |   2 +
 .../drm/i915/display/intel_display_debugfs.c  |  21 +-
 .../drm/i915/display/intel_display_types.h    |  30 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 654 +--------------
 drivers/gpu/drm/i915/display/intel_dp.h       |   9 +
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 743 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  19 +
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 217 +++--
 drivers/gpu/drm/i915/display/intel_hdcp.h     |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  25 +-
 .../drm/selftests/test-drm_dp_mst_helper.c    |  17 +
 include/drm/drm_dp_helper.h                   |   3 +
 include/drm/drm_dp_mst_helper.h               |  44 ++
 include/drm/drm_hdcp.h                        |   3 +
 17 files changed, 1235 insertions(+), 726 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_hdcp.c

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
