Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFAB26413F2
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Dec 2022 04:15:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 10A9B10E73C;
	Sat,  3 Dec 2022 03:15:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 05B0D10E73C
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Dec 2022 03:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670037304; x=1701573304;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wjcCQZPWqkcK9RGxzI/bAAsLAEZiHvzblIATiDtz6PA=;
 b=Ojd7LtWum5qfTK/X/XhPNAcnONHCaNnRZSSmjUJLA2eQ/V55JQK99xoz
 d0ZOB4vA2P9dvfqUTALy0djipGle3sptSMVt0f1uisCcWshtQzwtgfyi5
 8YPpyuOGDMJbyyZxBt+u8mIzX3+Ac4slEWkOn1hMxkpH5Qp+LXGWAXpCa
 Bnzdu51z10L6267qcg80ZufjNsdS2Z//4MVmM4cvLukra0PGJeplzU11o
 Srbk0herW9EPFL4OBycEHZ0W2VwOnwrXjctVeGWTyspTUpENFDJcI/W3F
 BtbUvVmM6zgg2edBfV9pJBVXx9Gbn3TACA2/l6dhwmyBftPBhLKEI7VnK w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="378242297"
X-IronPort-AV: E=Sophos;i="5.96,214,1665471600"; d="scan'208";a="378242297"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 19:15:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10549"; a="645238803"
X-IronPort-AV: E=Sophos;i="5.96,214,1665471600"; d="scan'208";a="645238803"
Received: from unerlige-ril.jf.intel.com ([10.165.21.138])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Dec 2022 19:15:02 -0800
From: Ashutosh Dixit <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Dec 2022 19:14:54 -0800
Message-Id: <20221203031454.1280538-1-ashutosh.dixit@intel.com>
X-Mailer: git-send-email 2.38.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hwmon: Silence "mailbox access failed"
 warning in snb_pcode_read
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

hwm_pcode_read_i1 is called during i915 load. This results in the following
warning from snb_pcode_read because POWER_SETUP_SUBCOMMAND_READ_I1 is
unsupported on DG1/DG2.

[drm:snb_pcode_read [i915]] warning: pcode (read from mbox 47c) \
				mailbox access failed for snb_pcode_read_p [i915]: -6

The code handles the unsupported command but the warning in dmesg is a red
herring which has resulted in a couple of bugs being filed. Therefore silence
the warning by avoiding calling snb_pcode_read_p for DG1/DG2.

Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/i915_hwmon.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_hwmon.c b/drivers/gpu/drm/i915/i915_hwmon.c
index c588a17f97e98..cca7a4350ec8f 100644
--- a/drivers/gpu/drm/i915/i915_hwmon.c
+++ b/drivers/gpu/drm/i915/i915_hwmon.c
@@ -293,6 +293,10 @@ static const struct hwmon_channel_info *hwm_gt_info[] = {
 /* I1 is exposed as power_crit or as curr_crit depending on bit 31 */
 static int hwm_pcode_read_i1(struct drm_i915_private *i915, u32 *uval)
 {
+	/* Avoid ILLEGAL_SUBCOMMAND "mailbox access failed" warning in snb_pcode_read */
+	if (IS_DG1(i915) || IS_DG2(i915))
+		return -ENXIO;
+
 	return snb_pcode_read_p(&i915->uncore, PCODE_POWER_SETUP,
 				POWER_SETUP_SUBCOMMAND_READ_I1, 0, uval);
 }
-- 
2.38.0

