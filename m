Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA5C5BDEFC3
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 16:21:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0D83010E801;
	Wed, 15 Oct 2025 14:21:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bXXEDAmd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1956D10E801
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Oct 2025 14:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760538098; x=1792074098;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Xb151PWgCaV/v+ZOZ7X2XP3PMTxGQS1nK5hTm6k2MxY=;
 b=bXXEDAmdsYmClF47NEhXkBzo7hr3SjnIYYlB/I6gnP88u4QLxZtwQop+
 CUn3Ts7g57Y3pdCDUw5TSoFlvje885eqqaVJsbjJOESgVPkmwmWVseXfF
 U+xUQAAtmkSm3NwIfYA5XCXE6XbTfs52NzxivMXX6fGOOkRvDEbFmMEIN
 MQ+/IjTdNqTgne6AZVhFYNPL3DoxSQ0vAT3gnkQPpFkCesDRGxVKtd5j2
 o5+CGQWTCsBonYVMCIoHVQETi+eSIShTM8VeQs8dva6OLVd2iHn2bUiYc
 vvXwSHzqxndloUjDzVohyltwc7UP5+BauUiJ9iBC6SSn6ybqNEAkjlU8W Q==;
X-CSE-ConnectionGUID: HybJpDpdTN+d/bZygnuLyw==
X-CSE-MsgGUID: InTSjietSkqhAVpzh+wPPg==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="62757164"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="62757164"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 07:21:38 -0700
X-CSE-ConnectionGUID: 4OtafONuRdSTyroWHpWDfw==
X-CSE-MsgGUID: d2PlPT1AQAeALxXxaLVUdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="181402038"
Received: from unknown (HELO linux-Raptor-Lake-Client-Platform.iind.intel.com)
 ([10.227.90.135])
 by orviesa010.jf.intel.com with ESMTP; 15 Oct 2025 07:21:36 -0700
From: Mohammed Thasleem <mohammed.thasleem@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, karthik.poosa@intel.com,
 Mohammed Thasleem <mohammed.thasleem@intel.com>
Subject: [PATCH] drm/xe/xe_debugfs: Expose G7 state residency counter through
 debugfs
Date: Thu, 16 Oct 2025 01:22:00 +0530
Message-ID: <20251015195200.34440-1-mohammed.thasleem@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251010114352.179143-1-mohammed.thasleem@intel.com>
References: <20251010114352.179143-1-mohammed.thasleem@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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

Add G7 package residency counter in debugfs alongside existing G2/G6/G8/G10
states for complete power state visibility.

v2: Update commit subject and description. (Karthik)

Signed-off-by: Mohammed Thasleem <mohammed.thasleem@intel.com>
---
 drivers/gpu/drm/xe/regs/xe_pmt.h | 1 +
 drivers/gpu/drm/xe/xe_debugfs.c  | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/xe/regs/xe_pmt.h b/drivers/gpu/drm/xe/regs/xe_pmt.h
index 264e9baf949c..0f79c0714454 100644
--- a/drivers/gpu/drm/xe/regs/xe_pmt.h
+++ b/drivers/gpu/drm/xe/regs/xe_pmt.h
@@ -24,6 +24,7 @@
 #define BMG_MODS_RESIDENCY_OFFSET		(0x4D0)
 #define BMG_G2_RESIDENCY_OFFSET		(0x530)
 #define BMG_G6_RESIDENCY_OFFSET		(0x538)
+#define BMG_G7_RESIDENCY_OFFSET		(0x4B0)
 #define BMG_G8_RESIDENCY_OFFSET		(0x540)
 #define BMG_G10_RESIDENCY_OFFSET		(0x548)
 
diff --git a/drivers/gpu/drm/xe/xe_debugfs.c b/drivers/gpu/drm/xe/xe_debugfs.c
index d67e32ebbe29..417e6df95e1c 100644
--- a/drivers/gpu/drm/xe/xe_debugfs.c
+++ b/drivers/gpu/drm/xe/xe_debugfs.c
@@ -142,6 +142,7 @@ static int dgfx_pkg_residencies_show(struct seq_file *m, void *data)
 	} residencies[] = {
 		{BMG_G2_RESIDENCY_OFFSET, "Package G2"},
 		{BMG_G6_RESIDENCY_OFFSET, "Package G6"},
+		{BMG_G7_RESIDENCY_OFFSET, "Package G7"},
 		{BMG_G8_RESIDENCY_OFFSET, "Package G8"},
 		{BMG_G10_RESIDENCY_OFFSET, "Package G10"},
 		{BMG_MODS_RESIDENCY_OFFSET, "Package ModS"}
-- 
2.43.0

