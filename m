Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D82D395590
	for <lists+intel-gfx@lfdr.de>; Mon, 31 May 2021 08:45:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 90C9C6E48D;
	Mon, 31 May 2021 06:45:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB58C6E48D
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 May 2021 06:45:13 +0000 (UTC)
IronPort-SDR: chmENK1Ji6ib5wNFxUjE1zc23OXL+7WRb044xNNsrYlhFnTYPHpVgkFWcP2h6CPsASOnqTPx81
 4dDoHuxKkE0A==
X-IronPort-AV: E=McAfee;i="6200,9189,10000"; a="190668431"
X-IronPort-AV: E=Sophos;i="5.83,236,1616482800"; d="scan'208";a="190668431"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2021 23:45:13 -0700
IronPort-SDR: 3YyvKmxmQ6mnp5n4JXcNQuuHwQ+7CdYMZmE9tU8JC3NIyE2HEwt2O6HB327QwA+NXVdNO7Doyv
 seSykWWWjbVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,236,1616482800"; d="scan'208";a="444867180"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.91])
 by orsmga008.jf.intel.com with ESMTP; 30 May 2021 23:45:11 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 31 May 2021 09:48:44 +0300
Message-Id: <20210531064845.4389-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.24.1.485.gad05a3d8e5
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Extend QGV point restrict mask to
 0x3
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

According to BSpec there is now also a code 0x02,
which corresponds to QGV point being rejected,
this code so lets extend mask to check this.

Signed-off-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 4979b4965a82..0037e3d4049a 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -9349,7 +9349,7 @@ enum {
 #define     ICL_PCODE_MEM_SS_READ_QGV_POINT_INFO(point)	(((point) << 16) | (0x1 << 8))
 #define   ICL_PCODE_SAGV_DE_MEM_SS_CONFIG	0xe
 #define     ICL_PCODE_POINTS_RESTRICTED		0x0
-#define     ICL_PCODE_POINTS_RESTRICTED_MASK	0x1
+#define     ICL_PCODE_POINTS_RESTRICTED_MASK	0x3
 #define   GEN6_PCODE_READ_D_COMP		0x10
 #define   GEN6_PCODE_WRITE_D_COMP		0x11
 #define   ICL_PCODE_EXIT_TCCOLD			0x12
-- 
2.24.1.485.gad05a3d8e5

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
