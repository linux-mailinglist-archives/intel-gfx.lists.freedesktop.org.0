Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9898A6D2919
	for <lists+intel-gfx@lfdr.de>; Fri, 31 Mar 2023 22:03:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E735310F2FC;
	Fri, 31 Mar 2023 20:02:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C7ECC10F2FC
 for <intel-gfx@lists.freedesktop.org>; Fri, 31 Mar 2023 20:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680292974; x=1711828974;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ESeEkS4jku4MZm0ihzNu/JgHHyGhG9cIKp535PU1rCw=;
 b=MIkljOg12bjuQagm0R0Brl3SZR5Jxl5yD2AX0algvAiBirCiZgz33Wpu
 rGyjLPPC2bRqApphzIIhB1XwYzppy+9c7YuK5dFjDzFcSEBIsmOh+oC/f
 QzPjthAGyjvmqcbJE7X7dlHDTp8Vpo2bfVvjApffI3cwjhTBAT50J0pmx
 ODcI/mnl2Wv//5ga/+75cj3/cbb4PBq68tm49Eshj+1JjfhnqpkDyiBgy
 xc7dLBrFEFkmCcySEUQ1qSG30RJUihZcLgatz3GVLfAuqxlODLrNcoH3t
 MDf5BxvmedKFjxzP/dAyHdHgKnAllrgeGfdN+YPqo7DP5hDGVTkg+Fgw1 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="321941132"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="321941132"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 13:02:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10666"; a="749749025"
X-IronPort-AV: E=Sophos;i="5.98,307,1673942400"; d="scan'208";a="749749025"
Received: from orsosgc001.jf.intel.com ([10.165.21.138])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2023 13:02:53 -0700
From: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 31 Mar 2023 13:02:53 -0700
Message-Id: <20230331200253.1435236-1-umesh.nerlige.ramappa@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/fdinfo: Enable fdinfo for GuC backends
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

The underlying mechanism used to provide the client specific utilization
in fdinfo is context busyness. When a context switches out, the HW
records the runtime in the specific context field. This information is
accumulated in fdinfo. This information is independent of the scheduling
backend as long as contexts are switching out in reasonable time.

If a context is actively running on the engine, then the active busyness
is calculated by using the delta between current time and the context
switch in time. This part of the calculation depends on the scheduling
backend. For GuC backends, this data comes entirely from GuC FW. The FW
implementation is WIP.

Enable fdinfo for GuC based platforms with the exception that long
running contexts will not provide reliable busyness data unless they
switch out at some reasonable point in time.

Revert "drm/i915: Don't show engine information in fdinfo with GuC submission"
This reverts commit 8d0e3decf26bc423d8b1c42c05636ccc05ea6b17.

Resolves: https://gitlab.freedesktop.org/drm/intel/issues/8303
Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
Test-with: 20230331195915.5839-1-umesh.nerlige.ramappa@intel.com
---
 drivers/gpu/drm/i915/i915_drm_client.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drm_client.c b/drivers/gpu/drm/i915/i915_drm_client.c
index e8fa172ebe5e..d18d0a3ed905 100644
--- a/drivers/gpu/drm/i915/i915_drm_client.c
+++ b/drivers/gpu/drm/i915/i915_drm_client.c
@@ -147,11 +147,7 @@ void i915_drm_client_fdinfo(struct seq_file *m, struct file *f)
 		   PCI_SLOT(pdev->devfn), PCI_FUNC(pdev->devfn));
 	seq_printf(m, "drm-client-id:\t%u\n", client->id);
 
-	/*
-	 * Temporarily skip showing client engine information with GuC submission till
-	 * fetching engine busyness is implemented in the GuC submission backend
-	 */
-	if (GRAPHICS_VER(i915) < 8 || intel_uc_uses_guc_submission(&i915->gt0.uc))
+	if (GRAPHICS_VER(i915) < 8)
 		return;
 
 	for (i = 0; i < ARRAY_SIZE(uabi_class_names); i++)
-- 
2.36.1

