Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 486FB7866B3
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Aug 2023 06:33:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A53C610E481;
	Thu, 24 Aug 2023 04:33:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qv1-xf30.google.com (mail-qv1-xf30.google.com
 [IPv6:2607:f8b0:4864:20::f30])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DA8A10E481
 for <intel-gfx@lists.freedesktop.org>; Thu, 24 Aug 2023 04:33:05 +0000 (UTC)
Received: by mail-qv1-xf30.google.com with SMTP id
 6a1803df08f44-649edb3a3d6so2476416d6.0
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Aug 2023 21:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1692851584; x=1693456384;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=LYepecjqIS3nUPrt1DOsbK85/55DFiOoyodo+8f801Y=;
 b=LRzWT3pBoZaya1Be9HuWY9OjxmLyh/2NZpxv91n4hJXOldbgOtNWRDTZFJvx0z7/ET
 ZhX3ih6kskh99EsmYqlkqwwUi+hmBnQvXGbLL4Y6hWq2ffCnuBGC52ReQjfWlTEIv8AR
 ANe0PF04WvYO9o1mG+J/PVm3Y+yadQv8v8WKs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692851584; x=1693456384;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=LYepecjqIS3nUPrt1DOsbK85/55DFiOoyodo+8f801Y=;
 b=ZF4VfwUEcBcBztRNc5yZcajq15xoFYT2zVOmEgU8j6GbTKoaY7c6W5Z8G22pzRj7hl
 6ZHIStCdVYUnNg0gEqYdiEDlx9p0zN1FlvzV58K+0wPzqjugx49O44ycZCwv3iFUMsRK
 oUrQN73/phwe1NYxKb/uAYM2AweWhVFMsh8qvv8CNgeOfEJA28SGFXFc9BA5c2/WmI2H
 XQdGzPcft3y05HV5VvWutijt1MNaZpBFpvLBJ+QeCxUz39Dz8WwtNTUCzBptV35KYGHm
 2u4hmo8K89f5Hu/Nue9sJmL8am/Zh8sK3lRCHDQlz/4XST0ANBAMPDzwrU+nrsZznnUm
 jqpA==
X-Gm-Message-State: AOJu0YxzLwqMfIYSq0wt4i5bQQMlTrzfzrOad4tBaXyn0h1OP1SrT2Ia
 NPbdjkk6h9qXvJv/2QX2SEhZ4R4rpCo4hVvSuGQ=
X-Google-Smtp-Source: AGHT+IEdOY7ITm8EfPRWyRdxvuoUXc9wTf16OE+re3zw0Tj2kVBGLjKUxGdkQP5bI3nfgE0nxqLZUw==
X-Received: by 2002:a05:6214:2346:b0:63d:580:9c68 with SMTP id
 hu6-20020a056214234600b0063d05809c68mr13932532qvb.32.1692851584366; 
 Wed, 23 Aug 2023 21:33:04 -0700 (PDT)
Received: from gildekel.nyc.corp.google.com
 ([2620:0:1003:314:321d:e6f5:6dbd:3e5])
 by smtp.gmail.com with ESMTPSA id
 a3-20020a0cca83000000b0064910f273aesm4913632qvk.146.2023.08.23.21.33.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Aug 2023 21:33:03 -0700 (PDT)
From: Gil Dekel <gildekel@chromium.org>
To: intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Thu, 24 Aug 2023 00:31:03 -0400
Message-ID: <20230824043240.323564-1-gildekel@chromium.org>
X-Mailer: git-send-email 2.42.0.rc1.204.g551eb34607-goog
In-Reply-To: <20230818170156.2194015-1-gildekel@chromium.org>
References: <20230818170156.2194015-1-gildekel@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 0/6] drm/i915/dp_link_training: Define a
 final failure state when link training fails
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
Cc: seanpaul@chromium.org, Gil Dekel <gildekel@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Next version of https://patchwork.freedesktop.org/series/122643/

Reorganize into:
1) Add for final failure state for SST and MST link training fallback.
2) Add a DRM helper for setting downstream MST ports' link-status state.
3) Make handling SST and MST connectors simpler via intel_dp.
4) Update link-status for downstream MST ports.
5) Emit a uevent with the "link-status" trigger property.

Gil Dekel (6):
  drm/i915/dp_link_training: Add a final failing state to link training
    fallback
  drm/i915/dp_link_training: Add a final failing state to link training
    fallback for MST
  drm/dp_mst: Add drm_dp_set_mst_topology_link_status()
  drm/i915: Move DP modeset_retry_work into intel_dp
  drm/i915/dp_link_training: Set all downstream MST ports to BAD before
    retrying
  drm/i915/dp_link_training: Emit a link-status=Bad uevent with trigger
    property

 drivers/gpu/drm/display/drm_dp_mst_topology.c | 39 ++++++++++
 drivers/gpu/drm/i915/display/intel_display.c  | 14 +++-
 .../drm/i915/display/intel_display_types.h    |  6 +-
 drivers/gpu/drm/i915/display/intel_dp.c       | 75 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_dp.h       |  2 +-
 .../drm/i915/display/intel_dp_link_training.c | 11 ++-
 include/drm/display/drm_dp_mst_helper.h       |  3 +
 7 files changed, 110 insertions(+), 40 deletions(-)

--
Gil Dekel, Software Engineer, Google / ChromeOS Display and Graphics
