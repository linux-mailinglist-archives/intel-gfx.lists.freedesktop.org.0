Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C93506F84FA
	for <lists+intel-gfx@lfdr.de>; Fri,  5 May 2023 16:40:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF25410E622;
	Fri,  5 May 2023 14:40:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C5CB410E622
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 May 2023 14:40:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683297614; x=1714833614;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=RxtkVXhw8ySpXfbjEvXD7JSpLoJlu5PdSr4344K0NsI=;
 b=J2m6RDC0bE66a12cTnEJUIuB4dzmxPeqD5gJcc892vMTAHL1QPyD7LnX
 BReLdhSoQI4y+JkYUOO1gxSlHT9pogJ8fsv94Ahsimw3iT5DJ2nd0JNNZ
 ZyAH06+D2utMW65UPEYwGLZpZF5+0o8zb2MVK6pim20V0WqFyYgO38xYK
 f/FtLhX0pQahMlzf/mFNTFY+LdufwCOint7x7kR4oJztVgLg+ic4/VDn3
 kPnqWvYKUa9GTHqFJaI6XbxknlfdXgImShFWs3G1ghV35aMx9vn5WZkZa
 3t0wCx+ujL+fCieKyi663Da561aAaQIxhveYo+qVn0rlTE/AMCn8G/NyH g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="348042640"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="348042640"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 07:40:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10701"; a="697613355"
X-IronPort-AV: E=Sophos;i="5.99,252,1677571200"; d="scan'208";a="697613355"
Received: from nirmoyda-desk.igk.intel.com ([10.102.138.190])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 May 2023 07:40:11 -0700
From: Nirmoy Das <nirmoy.das@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  5 May 2023 16:40:04 +0200
Message-Id: <20230505144005.23480-1-nirmoy.das@intel.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Organization: Intel Deutschland GmbH, Registered Address: Am Campeon 10,
 85579 Neubiberg, Germany,
 Commercial Register: Amtsgericht Muenchen HRB 186928 
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/mtl: Drop FLAT CCS check
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
Cc: andi.shyti@intel.com, Andrzej Hajda <andrzej.hajda@intel.com>,
 Pallavi Mishra <pallavi.mishra@intel.com>, Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Pallavi Mishra <pallavi.mishra@intel.com>

Remove FLAT CCS check from XY_FAST_COLOR_BLT usage, thus
enabling MTL to use it.

Signed-off-by: Pallavi Mishra <pallavi.mishra@intel.com>
Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_migrate.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_migrate.c b/drivers/gpu/drm/i915/gt/intel_migrate.c
index 3f638f198796..e0998879a0e1 100644
--- a/drivers/gpu/drm/i915/gt/intel_migrate.c
+++ b/drivers/gpu/drm/i915/gt/intel_migrate.c
@@ -920,7 +920,7 @@ static int emit_clear(struct i915_request *rq, u32 offset, int size,
 
 	GEM_BUG_ON(size >> PAGE_SHIFT > S16_MAX);
 
-	if (HAS_FLAT_CCS(i915) && ver >= 12)
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50))
 		ring_sz = XY_FAST_COLOR_BLT_DW;
 	else if (ver >= 8)
 		ring_sz = 8;
@@ -931,7 +931,7 @@ static int emit_clear(struct i915_request *rq, u32 offset, int size,
 	if (IS_ERR(cs))
 		return PTR_ERR(cs);
 
-	if (HAS_FLAT_CCS(i915) && ver >= 12) {
+	if (GRAPHICS_VER_FULL(i915) >= IP_VER(12, 50)) {
 		*cs++ = XY_FAST_COLOR_BLT_CMD | XY_FAST_COLOR_BLT_DEPTH_32 |
 			(XY_FAST_COLOR_BLT_DW - 2);
 		*cs++ = FIELD_PREP(XY_FAST_COLOR_BLT_MOCS_MASK, mocs) |
-- 
2.39.0

