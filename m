Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 27E2B1E572B
	for <lists+intel-gfx@lfdr.de>; Thu, 28 May 2020 08:02:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7EFC06E3AC;
	Thu, 28 May 2020 06:02:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 551FC6E3AC
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 May 2020 06:02:30 +0000 (UTC)
IronPort-SDR: iGm8bgihNO60HR8o8OwO5NzoFLrVp290kxEraV+4IH6+BhrU1QwJWgP59V5TutqKquzNbT+WtB
 Wf2viJUpy6uw==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2020 23:02:29 -0700
IronPort-SDR: jFytJNg/s0l6lCxpavbqmRHYFasg4LOeYEjY7yPUB8fpCN/XUEiJwkuLLk2RBRtVoJpj1S/kPS
 r0X8Vzochc/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,443,1583222400"; d="scan'208";a="291883989"
Received: from unknown (HELO karthik-2012-Client-Platform.iind.intel.com)
 ([10.223.74.217])
 by fmsmga004.fm.intel.com with ESMTP; 27 May 2020 23:02:28 -0700
From: Karthik B S <karthik.b.s@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 28 May 2020 11:09:26 +0530
Message-Id: <20200528053931.29282-1-karthik.b.s@intel.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v3 0/5] Asynchronous flip implementation for i915
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
Cc: paulo.r.zanoni@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Without async flip support in the kernel, fullscreen apps where game
resolution is equal to the screen resolution, must perform an extra blit
per frame prior to flipping.

Asynchronous page flips will also boost the FPS of Mesa benchmarks.

v2: Few patches have been squashed and patches have been shuffled as
    per the reviews on the previous version.

v3: Few patches have been squashed and patches have been shuffled as
    per the reviews on the previous version.

Karthik B S (5):
  drm/i915: Add enable/disable flip done and flip done handler
  drm/i915: Add support for async flips in I915
  drm/i915: Add checks specific to async flips
  drm/i915: Do not call drm_crtc_arm_vblank_event in async flips
  drm/i915: Enable async flips in i915

 drivers/gpu/drm/i915/display/intel_display.c | 71 ++++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_sprite.c  |  8 ++-
 drivers/gpu/drm/i915/i915_irq.c              | 52 ++++++++++++++
 drivers/gpu/drm/i915/i915_irq.h              |  2 +
 drivers/gpu/drm/i915/i915_reg.h              |  1 +
 5 files changed, 133 insertions(+), 1 deletion(-)

-- 
2.17.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
