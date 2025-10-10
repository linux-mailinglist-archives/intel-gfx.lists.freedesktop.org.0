Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B115BCCCD9
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 13:47:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C406110EB65;
	Fri, 10 Oct 2025 11:47:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T7H4kBDc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5B15E10EB65
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Oct 2025 11:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760096866; x=1791632866;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S1NzKbJwLjJ7PiqU3Pz5MreExLyS87+wpyg0PGlM7HU=;
 b=T7H4kBDcZKAPPG7/pM7LI7xAaojkImYLQsPcPBZhE3n2BJRwBciK6ulp
 cN/Ywxk7a3RtTNKkvTghh187brf23zz095qQ8S333aHtP17xj4ShcqS2q
 Xv4JzalTyElUC/iJ+mKmK4/k7h1boyXmDNn0pggYkV2FNNatbCQUEqah5
 d9IEQ8SmSFazdTmBGtvzaiSvfGAqK9mFFEKqM6QhRhqLWHn8DXb9oNxpT
 ZDHJlIvcU7QvDHoLsmNL0GhwAy5I1mI6SMjurrqpHO0Zh+FHLAuNbw2Cn
 pmEr6Vy1qvUzrKfnTX8SsLegBNb4EW6fiZHD2JDvMUXfrZtiDPy1clbzI w==;
X-CSE-ConnectionGUID: 9zRs3a/BRbepQqnUSWWYUw==
X-CSE-MsgGUID: ct1ufrgwT1iKOqOukTz4zg==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="72571533"
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="72571533"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 04:47:45 -0700
X-CSE-ConnectionGUID: Gf+eu4hrSfWv+bTGlZCUpQ==
X-CSE-MsgGUID: 4uam4WGlTP6roPzIrd88OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="211913375"
Received: from dg2adlp-alder-lake-client-platform.iind.intel.com
 ([10.223.55.76])
 by fmviesa001.fm.intel.com with ESMTP; 10 Oct 2025 04:47:43 -0700
From: Mohammed Thasleem <mohammed.thasleem@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: anshuman.gupta@intel.com, Mohammed Thasleem <mohammed.thasleem@intel.com>
Subject: [PATCH] drm/xe/xe_debugfs: Exposure of G7 state residency counters
 through debugfs
Date: Fri, 10 Oct 2025 17:13:52 +0530
Message-Id: <20251010114352.179143-1-mohammed.thasleem@intel.com>
X-Mailer: git-send-email 2.25.1
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

Add G7 residency counter support to expose G7 package residency counter in
debugfs alongside existing G2/G6/G8/G10 states for complete power state
visibility.

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
index 34f622bef3e0..b3ca48bc90b7 100644
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
2.34.1

