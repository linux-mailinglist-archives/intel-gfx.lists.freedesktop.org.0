Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD4A58FB66
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Aug 2022 13:33:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 439A2AC39A;
	Thu, 11 Aug 2022 11:32:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7FEC8ABF9B
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Aug 2022 11:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660217569; x=1691753569;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Exu9U2grtitNxSWGh/8ey9kJtvHByhMNPW7HDqdZqeY=;
 b=bLMI2WYVIGxgRMvfkHTT+JYXF28t0abp8mSQ48bSyj/XGvzsOuvRPjDn
 ff+bGiqfjDqtbC6z6cdks/tJLWuNJY0aa28Zg/Pntkh6v9GSw7EThrqh9
 8xu7Cc1PEAsuZvMGefD3cMzGeoYLiTBBjz39byY5xIQLGEuqr1o1r2Xjo
 Wz65rthOXx+/PjbNocWiSWOHl74UG+5rVx1XYGDTQUHWrHaBVn1HECZSd
 nEQ3eLq5TQDDoCgRRt6jUvP1GpFuEJn6C3s5OaHb4A2644fcKxWuwxhvS
 G40PSEottITGUrB1BzuS9hSQiJ0nMAhGjAMkywQCUbNl3hw/mW0Wtl4p/ w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10435"; a="317283931"
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="317283931"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Aug 2022 04:32:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,228,1654585200"; d="scan'208";a="665334182"
Received: from tapas-nuc7i7bnh.iind.intel.com ([10.145.162.50])
 by fmsmga008.fm.intel.com with ESMTP; 11 Aug 2022 04:32:47 -0700
From: Tapas Rana <tapas.rana@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 11 Aug 2022 16:58:02 +0530
Message-Id: <20220811112802.4167768-1-tapas.rana@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] Fixes KW issues for NULL pointer dereference
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
Cc: Tapas Rana <tapas.rana@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

---
 drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
index 9a7e50534b84..0bbf44c34cff 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm_move.c
@@ -435,6 +435,9 @@ i915_ttm_memcpy_work_arm(struct i915_ttm_memcpy_work *work,
 static bool i915_ttm_memcpy_allowed(struct ttm_buffer_object *bo,
 				    struct ttm_resource *dst_mem)
 {
+	if(!bo)
+		return NULL;
+
 	if (i915_gem_object_needs_ccs_pages(i915_ttm_to_gem(bo)))
 		return false;
 
-- 
2.25.1

