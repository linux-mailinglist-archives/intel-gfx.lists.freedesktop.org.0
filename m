Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B3E424832
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 22:46:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E48FF6E558;
	Wed,  6 Oct 2021 20:46:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 70C5D6E558
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 20:46:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="206218368"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="206218368"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 13:46:44 -0700
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="439262175"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 13:46:43 -0700
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Anusha Srivatsa <anusha.srivatsa@intel.com>,
 Imre Deak <imre.deak@intel.com>
Date: Wed,  6 Oct 2021 13:45:47 -0700
Message-Id: <20211006204547.669464-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] i915/display/dmc: Add Support for PipeC and
 PipeD DMC
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

So far we had support for main, PipeA and PipeB
DMC. If we find a binary from PipeA-D, lets load it.

Cc: Imre Deak <imre.deak@intel.com>
Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.h b/drivers/gpu/drm/i915/display/intel_dmc.h
index c3c00ff03869..b20f3441ca60 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.h
+++ b/drivers/gpu/drm/i915/display/intel_dmc.h
@@ -20,6 +20,8 @@ enum {
 	DMC_FW_MAIN = 0,
 	DMC_FW_PIPEA,
 	DMC_FW_PIPEB,
+	DMC_FW_PIPEC,
+	DMC_FW_PIPED,
 	DMC_FW_MAX
 };
 
-- 
2.25.1

