Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E168248A0A
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Aug 2020 17:39:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F5A289C29;
	Tue, 18 Aug 2020 15:39:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com
 [IPv6:2607:f8b0:4864:20::744])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1297C89C29
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 15:39:17 +0000 (UTC)
Received: by mail-qk1-x744.google.com with SMTP id 62so18624490qkj.7
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Aug 2020 08:39:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Jj+Pt1Kndc8K3oV8V7OdxLwRSJ43hPu4IwkadMCPt48=;
 b=djzI6hlBOee7T3E1xxZ/VpCSWZszXEBW0z53cUhsCURGZ2aXfRj2Xn5vJefhsr5ApU
 pZaBSZIKab8jkufOaSdOZzAvQFtODTqfpad2KWvFI6ardAwxJ6a3UwJ2oviBzHILKznm
 ZzLMg1rAyinPqkXKCg0rXaMRKJ3Pqq95sQFfkWGiBTU5Pk5d0r7DBnmODzEWPdSC7PbY
 0ogmgHnAzmXQwhjwKG9fdDH8L9+hlw7R3IkiiWutPc6Ve1LsD3YwDAiWvsNRm9NDzxIk
 UjsBq8Ichm+D1iV0A40H9dbVm9252A8yTyumubUsUkkMrhsXiJFjaxe7XnW1vMurrUhz
 mdmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Jj+Pt1Kndc8K3oV8V7OdxLwRSJ43hPu4IwkadMCPt48=;
 b=Km6GnE1mDXwMbx04S34kG7V8nf+b41m7exiMKtKMampxJjswMxijR5DvrCUz+cde1x
 9mBNmlsUJnpeuQWTC/GM3JBwN3ZVUtls59nBJN5nwkPqq91Q8ctVIpXw5BXlg1a/b5OH
 6XMAWmI/gjREfUTDNI3UNHFByHfWZhsmJiuU5OQVtvrz3FueYk7UlTyXP6kWMWLw+g50
 6GQsMKw5eMwMrVbPjZKE002CajuOlraSkwmrI0v0ABJzEUGR6meEclEKVrd42hCP4yf1
 UAcncVZSYgMUfV3RIGzFj7GgRT0BfBvbmh6LEChsfVEG+AbmoNtgBSufzgyt9CHdHjha
 cbng==
X-Gm-Message-State: AOAM532MfSHANZEEckpMmlBPKYYFlSHC52HV7SOmhe4ZHE8vagwPIOYt
 SP192l75p6yjZPBw6NPr9UgC8g==
X-Google-Smtp-Source: ABdhPJwTYt2995pMFaPFqyOUjqKnNzRVB8PuHMYzdNimx+oTU3eo4vpT4mhKeu7qtvYcVPzojJBPNQ==
X-Received: by 2002:a05:620a:234:: with SMTP id
 u20mr17081823qkm.54.1597765156155; 
 Tue, 18 Aug 2020 08:39:16 -0700 (PDT)
Received: from localhost (mobile-166-170-57-144.mycingular.net.
 [166.170.57.144])
 by smtp.gmail.com with ESMTPSA id t83sm20338566qke.133.2020.08.18.08.39.15
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 18 Aug 2020 08:39:15 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 juston.li@intel.com, jani.nikula@linux.intel.com,
 joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com,
 anshuman.gupta@intel.com
Date: Tue, 18 Aug 2020 11:38:48 -0400
Message-Id: <20200818153910.27894-1-sean@poorly.run>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v8 00/17] drm/i915: Add support for HDCP 1.4
 over MST
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

Only one functional change, reversed the hdcp_1x/2x_present bits in the
QUERY_STREAM_ENCRYPTION_STATUS parsing with a comment explaining my
confusion.

Other than that, lots of rebasing, the most notable being the
s/intel_dig_port/dig_port/ rename. 

Every patch now has a Reviewed-by tag now, I've done build tests on each
patch and tested the set as a whole. Hopefully we can get this landed.

Sean

Sean Paul (17):
  drm/i915: Fix sha_text population code
  drm/i915: Clear the repeater bit on HDCP disable
  drm/i915: WARN if HDCP signalling is enabled upon disable
  drm/i915: Intercept Aksv writes in the aux hooks
  drm/i915: Use the cpu_transcoder in intel_hdcp to toggle HDCP
    signalling
  drm/i915: Factor out hdcp->value assignments
  drm/i915: Protect workers against disappearing connectors
  drm/i915: Clean up intel_hdcp_disable
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

 drivers/gpu/drm/drm_dp_mst_topology.c         | 150 ++++
 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_ddi.c      |  29 +-
 drivers/gpu/drm/i915/display/intel_ddi.h      |   2 +
 .../drm/i915/display/intel_display_debugfs.c  |  21 +-
 .../drm/i915/display/intel_display_types.h    |  30 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 646 +---------------
 drivers/gpu/drm/i915/display/intel_dp.h       |   9 +
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  | 703 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  19 +
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 217 ++++--
 drivers/gpu/drm/i915/display/intel_hdcp.h     |   2 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  30 +-
 .../drm/selftests/test-drm_dp_mst_helper.c    |  17 +
 include/drm/drm_dp_helper.h                   |   3 +
 include/drm/drm_dp_mst_helper.h               |  44 ++
 include/drm/drm_hdcp.h                        |   3 +
 17 files changed, 1202 insertions(+), 724 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dp_hdcp.c

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
