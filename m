Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 52E9634990A
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 19:07:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8909B6EE1D;
	Thu, 25 Mar 2021 18:07:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E5826EE1C
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 18:07:32 +0000 (UTC)
IronPort-SDR: USXQIJVADBF95drlz+e10mrlZNiv7+4JiCLA5x7FI1Dlk/k4ln0xtc2GG96xrJz9u1Pb3M663e
 7rZdc0CWOnUQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="178112539"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="178112539"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:31 -0700
IronPort-SDR: 8H/9TwvcpBi6fSo5cCuxWboaGLSf/bcVyI1KzZHcoFXCfYavnt90m9Q8QxizDpXeIZ+kWeYU1O
 P8JKrGeMUkWw==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="453176621"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:31 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 11:06:52 -0700
Message-Id: <20210325180720.401410-23-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 22/50] drm/i915/adl_p: Extend PLANE_WM bits
 for blocks & lines
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
Cc: me@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

ADL-P further extends the bits in PLANE_WM that represent blocks and
lines; we need to extend our masks accordingly.  Since these bits are
reserved and MBZ on earlier platforms, it's safe to use the larger
bitmask on all platforms.

Bspec: 50419
Cc: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
Reviewed-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index e39c2bbaa490..8a04dcaf056d 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6450,8 +6450,8 @@ enum {
 #define _PLANE_WM_TRANS_2_B	0x71368
 #define   PLANE_WM_EN		(1 << 31)
 #define   PLANE_WM_IGNORE_LINES	(1 << 30)
-#define   PLANE_WM_LINES_MASK	REG_GENMASK(21, 14)
-#define   PLANE_WM_BLOCKS_MASK	0x7ff /* skl+: 10 bits, icl+ 11 bits */
+#define   PLANE_WM_LINES_MASK	REG_GENMASK(26, 14)
+#define   PLANE_WM_BLOCKS_MASK	REG_GENMASK(11, 0)
 
 #define _CUR_WM_0(pipe) _PIPE(pipe, _CUR_WM_A_0, _CUR_WM_B_0)
 #define CUR_WM(pipe, level) _MMIO(_CUR_WM_0(pipe) + ((4) * (level)))
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
