Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBB577C7E51
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 09:01:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8AAA410E5BD;
	Fri, 13 Oct 2023 07:01:32 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A57310E5BD
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 07:01:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697180491; x=1728716491;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OxR2SUuExcS9uP/hSmP4NlvxtCNYjO0X4rGJ5gzf4M4=;
 b=j6AP81/MmBhnKxmPMLh+XKh0vAaX79A2LV8R5vFojy8y+sBwi5OeS3dC
 L7JzSXmstOAv3TTFeQ0muuYIo2bfR4XUBiQ5h9LrdU48KGr1a6zSGsm3f
 zgBgtSl8bANBzkpNOiPh9HIns9CwJkpeHeyla/yKSMLozdvCghCwPmqxH
 nihp8bA4lrBS00NyMvMvdSMTLx8KpgaBoUzSIzzVnyAwlNmwFG3ZqX6Os
 sFpu5JPnfbZIRq/875F5cdIxLKp10glOGs3f2ZTTDsX4NjCQeNDeoRb/A
 HyG3UWDtGd+RNwE5mXgm1O5IGN0aDO7R03iRg3qwpw8UQq/mOyZg1q3fQ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="384955111"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="384955111"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 00:01:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="928304037"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="928304037"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by orsmga005.jf.intel.com with ESMTP; 13 Oct 2023 00:01:28 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 13 Oct 2023 09:55:32 +0300
Message-Id: <20231013065532.634872-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/display: Reset message bus after
 each read/write operation
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Every know and then we receive the following error when running
for example IGT test kms_flip.

[drm] *ERROR* PHY G Read 0d80 failed after 3 retries.
[drm] *ERROR* PHY G Write 0d81 failed after 3 retries.

Since the error is sporadic in nature, the patch proposes
to reset the message bus after every successful or unsuccessful
read or write operation. However, the testing revealed that this
alone is not sufficient method and therefore an additional
delay is introduced anything from 200us to 300us to let HW to
settle down. This delay is experimental value and has no
specification to back it up.

v2: Add FIXME's to indicate the experimental nature of
    this workaround (Rodrigo)

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
index 6e6a1818071e..7c48ec5e54bd 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
@@ -221,6 +221,14 @@ static u8 __intel_cx0_read(struct drm_i915_private *i915, enum port port,
 	for (i = 0; i < 3; i++) {
 		status = __intel_cx0_read_once(i915, port, lane, addr);
 
+		/*
+		 * FIXME: Workaround to let HW to settle
+		 * down and let the message bus to end up
+		 * in a known state
+		 */
+		intel_cx0_bus_reset(i915, port, lane);
+		usleep_range(200, 300);
+
 		if (status >= 0)
 			return status;
 	}
@@ -300,6 +308,14 @@ static void __intel_cx0_write(struct drm_i915_private *i915, enum port port,
 	for (i = 0; i < 3; i++) {
 		status = __intel_cx0_write_once(i915, port, lane, addr, data, committed);
 
+		/*
+		 * FIXME: Workaround to let HW to settle
+		 * down and let the message bus to end up
+		 * in a known state
+		 */
+		intel_cx0_bus_reset(i915, port, lane);
+		usleep_range(200, 300);
+
 		if (status == 0)
 			return;
 	}
-- 
2.34.1

