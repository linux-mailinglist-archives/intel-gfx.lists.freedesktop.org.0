Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F26540CE1E
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Sep 2021 22:38:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E59586EA2B;
	Wed, 15 Sep 2021 20:38:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qt1-x82f.google.com (mail-qt1-x82f.google.com
 [IPv6:2607:f8b0:4864:20::82f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EC556EA2A
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 20:38:40 +0000 (UTC)
Received: by mail-qt1-x82f.google.com with SMTP id r21so3578253qtw.11
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Sep 2021 13:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xeRLmgfKFXSNrBEqFH+XDGPxoP99dQXEItJsdczm5RY=;
 b=VZQiBzTZEdVgVXSsmOIfrfUILdxqFnEFuvX8dafusu4T89rZdldoiwI0yE0ymDMx72
 mlDmWhVQWQ7EDJvU1YeRm8R5MhdoYgARcWfuy76wTva9al70sBQjb8+AmUopyyjPd9LD
 9TNUXEgALKQIQaioRf8mz5+WD1/9M1bR9T6dbFFYgwQJAbqiwXngONr4t6u9iVaXQOTq
 +ae7TP4gVSYUogAH81KBZidLBq4ieZ8ctMEPdpleT15b3q+XAF5mt3ly+H/UFztvlC6k
 0NFYSi/JL1TvfoqYgJBjgPCsob1KFkj4wz0RE2NWWbDUjaIO7LdOWNDRBvELGSv3BXpN
 RgCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=xeRLmgfKFXSNrBEqFH+XDGPxoP99dQXEItJsdczm5RY=;
 b=kqUP63EUEpAHBdhCwrkOEo+qg6K6QEU3tD6tsJ2iHD1J78WePZPQLCpTUlRxPkNRP3
 578jFvFpCCLfusualvfBu+Ar9ngXHfeuui2BjlGf3guoiHlIF3eliWRax+HKmXvSxkHE
 ie2wMON2B9pZ2CIo+hcSHIB5scvE5SBWL4PAmY0DHCpC73SSN6rnKMRBfuqY6a9iJq+o
 odmXLuKxSXIL66q47TYz0ZFvdOG4i+1PP1bMRkOkllU7qrJihXoGFBF/VSPnggWjtYap
 f+YXcN5VwAGSE8OXinE1dOoXZA7FAVDw93YbAFCiu8tseom57e/kHaD/kGa45I0/5IFH
 jGTg==
X-Gm-Message-State: AOAM5320PX/7SJDwauwOgHjS6MVyEsOQP99g4XjDxxHU1GZHpLJEwVdv
 6wn2JyC9xGlyvGTlirXpLRpjuw==
X-Google-Smtp-Source: ABdhPJyhYBe2sSzQKivDQaRBW5ncUqjFOL3+neOAsrVNmtqJMfZPWYpJtAb2qTIDvtX/TtzUhYf/og==
X-Received: by 2002:ac8:c82:: with SMTP id n2mr1782692qti.207.1631738319454;
 Wed, 15 Sep 2021 13:38:39 -0700 (PDT)
Received: from localhost ([167.100.64.199])
 by smtp.gmail.com with ESMTPSA id h9sm833644qkl.4.2021.09.15.13.38.38
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 15 Sep 2021 13:38:38 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 freedreno@lists.freedesktop.org
Cc: swboyd@chromium.org,
	Sean Paul <seanpaul@chromium.org>
Date: Wed, 15 Sep 2021 16:38:19 -0400
Message-Id: <20210915203834.1439-1-sean@poorly.run>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 00/13] drm/hdcp: Pull HDCP
 auth/exchange/check into helpers
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Sean Paul <seanpaul@chromium.org>

Hello again,
This is the second version of the HDCP helper patchset. See version 1
here: https://patchwork.freedesktop.org/series/94623/

In this second version, I've fixed up the oopsies exposed by 0-day and
yamllint and incorporated early review feedback from the dt/dts reviews.

Please take a look,

Sean

Sean Paul (13):
  drm/hdcp: Add drm_hdcp_atomic_check()
  drm/hdcp: Avoid changing crtc state in hdcp atomic check
  drm/hdcp: Update property value on content type and user changes
  drm/hdcp: Expand HDCP helper library for enable/disable/check
  drm/i915/hdcp: Consolidate HDCP setup/state cache
  drm/i915/hdcp: Retain hdcp_capable return codes
  drm/i915/hdcp: Use HDCP helpers for i915
  drm/msm/dpu_kms: Re-order dpu includes
  drm/msm/dpu: Remove useless checks in dpu_encoder
  drm/msm/dpu: Remove encoder->enable() hack
  drm/msm/dp: Re-order dp_audio_put in deinit_sub_modules
  dt-bindings: msm/dp: Add bindings for HDCP registers
  drm/msm: Implement HDCP 1.x using the new drm HDCP helpers

 .../bindings/display/msm/dp-controller.yaml   |    7 +-
 arch/arm64/boot/dts/qcom/sc7180.dtsi          |    4 +-
 drivers/gpu/drm/drm_hdcp.c                    | 1197 ++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_atomic.c   |    7 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |   29 +-
 .../drm/i915/display/intel_display_debugfs.c  |   11 +-
 .../drm/i915/display/intel_display_types.h    |   58 +-
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c  |  345 ++---
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |   17 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     | 1011 +++-----------
 drivers/gpu/drm/i915/display/intel_hdcp.h     |   35 +-
 drivers/gpu/drm/i915/display/intel_hdmi.c     |  256 ++--
 drivers/gpu/drm/msm/Makefile                  |    1 +
 drivers/gpu/drm/msm/disp/dpu1/dpu_encoder.c   |   17 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c       |   30 +-
 drivers/gpu/drm/msm/disp/dpu1/dpu_kms.h       |    2 -
 drivers/gpu/drm/msm/disp/dpu1/dpu_trace.h     |    4 -
 drivers/gpu/drm/msm/dp/dp_debug.c             |   49 +-
 drivers/gpu/drm/msm/dp/dp_debug.h             |    6 +-
 drivers/gpu/drm/msm/dp/dp_display.c           |   47 +-
 drivers/gpu/drm/msm/dp/dp_display.h           |    5 +
 drivers/gpu/drm/msm/dp/dp_drm.c               |   68 +-
 drivers/gpu/drm/msm/dp/dp_drm.h               |    5 +
 drivers/gpu/drm/msm/dp/dp_hdcp.c              |  433 ++++++
 drivers/gpu/drm/msm/dp/dp_hdcp.h              |   27 +
 drivers/gpu/drm/msm/dp/dp_parser.c            |   22 +-
 drivers/gpu/drm/msm/dp/dp_parser.h            |    4 +
 drivers/gpu/drm/msm/dp/dp_reg.h               |   44 +-
 drivers/gpu/drm/msm/msm_atomic.c              |   15 +
 include/drm/drm_hdcp.h                        |  194 +++
 30 files changed, 2561 insertions(+), 1389 deletions(-)
 create mode 100644 drivers/gpu/drm/msm/dp/dp_hdcp.c
 create mode 100644 drivers/gpu/drm/msm/dp/dp_hdcp.h

-- 
Sean Paul, Software Engineer, Google / Chromium OS

