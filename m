Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C50D309810
	for <lists+intel-gfx@lfdr.de>; Sat, 30 Jan 2021 20:40:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 670EA6E0C4;
	Sat, 30 Jan 2021 19:40:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 453606E0C4
 for <intel-gfx@lists.freedesktop.org>; Sat, 30 Jan 2021 19:40:44 +0000 (UTC)
IronPort-SDR: CQ6YilOYzd12sFsOuHeBA4pSbXQYGMUK/9AFXNUoDKkUo3MkHscT8lWra8fnqYLdPpdrPwNjuq
 YG/i/SyPL7lA==
X-IronPort-AV: E=McAfee;i="6000,8403,9880"; a="160319430"
X-IronPort-AV: E=Sophos;i="5.79,388,1602572400"; d="scan'208";a="160319430"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2021 11:40:43 -0800
IronPort-SDR: Qs6ZIVlTvr7BYORVUfb5D/0z2GR6QiIMSBSEQ6M71+xRgTOZ6IXZcykO85Yr/mxzcDP2T963eN
 xdVv0tNrWSIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,388,1602572400"; d="scan'208";a="367109042"
Received: from anushasr-mobl6.jf.intel.com ([10.165.21.155])
 by fmsmga008.fm.intel.com with ESMTP; 30 Jan 2021 11:40:43 -0800
From: Anusha Srivatsa <anusha.srivatsa@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sat, 30 Jan 2021 11:40:42 -0800
Message-Id: <20210130194042.3706-1-anusha.srivatsa@intel.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915/dg1: Add  GuC and HuC support
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

Add support to load GuC and HuC firmware for Dg1.

Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
---
 drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
index 67b06fde1225..31e24c3a947e 100644
--- a/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
+++ b/drivers/gpu/drm/i915/gt/uc/intel_uc_fw.c
@@ -47,6 +47,7 @@ void intel_uc_fw_change_status(struct intel_uc_fw *uc_fw,
  * Note that RKL uses the same firmware as TGL.
  */
 #define INTEL_UC_FIRMWARE_DEFS(fw_def, guc_def, huc_def) \
+	fw_def(DG1,	    0, guc_def(dg1, 49, 0, 1), huc_def(dg1,  7, 7, 1)) \
 	fw_def(ROCKETLAKE,  0, guc_def(tgl, 49, 0, 1), huc_def(tgl,  7, 5, 0)) \
 	fw_def(TIGERLAKE,   0, guc_def(tgl, 49, 0, 1), huc_def(tgl,  7, 5, 0)) \
 	fw_def(JASPERLAKE,  0, guc_def(ehl, 49, 0, 1), huc_def(ehl,  9, 0, 0)) \
-- 
2.25.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
