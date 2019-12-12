Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B5311D69D
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Dec 2019 20:02:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1DB596E0EA;
	Thu, 12 Dec 2019 19:02:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-yw1-xc42.google.com (mail-yw1-xc42.google.com
 [IPv6:2607:f8b0:4864:20::c42])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B6E86E0EA
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 19:02:33 +0000 (UTC)
Received: by mail-yw1-xc42.google.com with SMTP id i126so1349520ywe.7
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Dec 2019 11:02:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nc11bY85WqRuCb8plQBvaSHDeJ5ol8MFPdYDFbykNcw=;
 b=Bstnau0LK+GriJz2guTX5RtxMFP9l+nPaun+B2W6cAAGaptekqEWhWiGQfUCM69xsw
 OQ2bZXj7vv3sdL69ZZOIGeIr3lipArNVZCycs2mUbTcRtyZ9pgGgigdh/rLe7cv6Q44a
 VqrlIBf/bIK9im4MluiHlnjKIare1pl9ecDSOb1prK6pt1HpWGSvnSHVJHdGJSlD/0L4
 vo1WnQJm6awlFCXCJ5orCxM1QC9/qm4AaV/kmbzKpkCEX1DDOrnsomv3IRiP6K4sFvSE
 j8cYDDBLs/KoSO+KFqWCQO0BVs5DiDezciyQwqvqrbO6axMvYHPoq8roo5hIvdxDs9dy
 J6Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=nc11bY85WqRuCb8plQBvaSHDeJ5ol8MFPdYDFbykNcw=;
 b=re5YWmAQo/ongQ5XcVO2vCigkxyACohFmuNnMH3J7qtdcYEpv/kygT5J9dzL9NhYQ5
 Gyd9ji2AEfcgyBhiM7uEdOBgFSkiWKar5qDR0BPVW+eabhGEoi0t1bX3q63HYyhWGp2u
 st7uc7Z+qacJzZP+/NdMk7XD19XzCe+8/wSk9cT3RK9Ah3uYbFI7C+RQ5aTmDxlwYDel
 ybkMLN2zYPM5qP1y08yKHmqaW26bb1GUnH8Z/k9EyyM6TUf+NAJJIGRae/ZFxKMa8mvT
 +LyoXAHQ3aXMemrTlpXQTJzmnzVYi5Dn3eofmjOtd3/qZENanBBq2dZrkQa9kwzc52CD
 TmLA==
X-Gm-Message-State: APjAAAWwXfECrmItZkDT/x5Ak8CbhP3BL6r++0OuRXZMQSgfImcVhtQC
 BirkhopEMtSE0jNRkGloO2aKiQ==
X-Google-Smtp-Source: APXvYqydX5H7CKqEZ3/AQYO0reBaz3ublf/HHch2QjFv+oKb39DCDEQemGqDE3RzjYzC3Mbu+0jS7w==
X-Received: by 2002:a81:2746:: with SMTP id n67mr5310851ywn.182.1576177352628; 
 Thu, 12 Dec 2019 11:02:32 -0800 (PST)
Received: from localhost ([2620:0:1013:11:1e1:4760:6ce4:fc64])
 by smtp.gmail.com with ESMTPSA id d199sm2570003ywh.83.2019.12.12.11.02.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 11:02:31 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Thu, 12 Dec 2019 14:02:18 -0500
Message-Id: <20191212190230.188505-1-sean@poorly.run>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 00/12] drm/i915: Add support for HDCP 1.4
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

Hello again,
Here's the second version of my set to enable MST over HDCP. The big
changes stemmed from Ville's review. It was super helpful to get that
pushback, and led me to more critically debug the disable paths. As a
result, I think I chased a few more gremlins out of the system.
Individual commit messages have the v2 changes, so I won't enumerate
them here.

Thanks in advance,

Sean

v1 cover: https://lists.freedesktop.org/archives/dri-devel/2019-December/247501.html

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
  drm/i915: Expose HDCP shim functions from dp for use by dp_mst
  drm/i915: Add HDCP 1.4 support for MST connectors

 drivers/gpu/drm/i915/display/intel_ddi.c      |  27 +--
 drivers/gpu/drm/i915/display/intel_ddi.h      |   2 +
 .../drm/i915/display/intel_display_types.h    |  47 ++++-
 drivers/gpu/drm/i915/display/intel_dp.c       |  79 ++++----
 drivers/gpu/drm/i915/display/intel_dp.h       |   6 +
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  90 +++++++++
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 190 ++++++++++++++----
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  18 +-
 include/drm/drm_hdcp.h                        |   3 +
 9 files changed, 352 insertions(+), 110 deletions(-)

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
