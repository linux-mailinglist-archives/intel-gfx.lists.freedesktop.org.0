Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0686AD896D
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jun 2025 12:23:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1CD4E10E98D;
	Fri, 13 Jun 2025 10:23:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UnpuR+AS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 205FD10E985;
 Fri, 13 Jun 2025 10:23:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749810208; x=1781346208;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=MVuu5y+3gkG05xuksxWU0y7c4dGehJEpVJpMgmyU9Fg=;
 b=UnpuR+AS4Na0//xxCPUxcZzdu4AXfui00tcg61whGIb33ZTvqWnYjrRG
 ffcU4TbNv1Lt9c/q06h93Kk1Lg38qmMQrVh7X0zoEQ8mulo7vGKo+JVTj
 3/nZnjQ4G4JTTykLC3fHmDeRCyxCAaZXKZhjQ0yvwUHHU1YDfPmMl2WZv
 fH+93e/JfAQNra5r0FV+iO9fGo9B7GZrxH8U0ypgUUwOW1AYgEs/pi8ly
 TbPzXpo5kG3ugNIWPQaVIpfz54cVZSI+W09D1hdJNEmDvzkU2WduzlDnQ
 GKW6dulgludCnUfuf/59Bc08TBeDFTfJoRraXWLIeqdMKU8iP/JU5lKfv A==;
X-CSE-ConnectionGUID: vivRIgUuQZu18peLAM/jhQ==
X-CSE-MsgGUID: uQw0d26NSlW/ODh0rlG9bA==
X-IronPort-AV: E=McAfee;i="6800,10657,11462"; a="62673643"
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="62673643"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2025 03:23:27 -0700
X-CSE-ConnectionGUID: bptGXsi3SNeoPzVASPJMQw==
X-CSE-MsgGUID: P+VRkzoxRM+biL4Dqlmwjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,233,1744095600"; d="scan'208";a="152758958"
Received: from dbhadane-mobl1.iind.intel.com ([10.190.239.58])
 by orviesa004.jf.intel.com with ESMTP; 13 Jun 2025 03:23:26 -0700
From: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
To: intel-xe@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org, Matt Roper <matthew.d.roper@intel.com>,
 Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>,
 Tejas Upadhyay <tejas.upadhyay@intel.com>
Subject: [PATCH v6 6/9] drm/xe: Add Wildcat Lake device IDs to PTL list
Date: Fri, 13 Jun 2025 15:52:53 +0530
Message-Id: <20250613102256.3508267-7-dnyaneshwar.bhadane@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250613102256.3508267-1-dnyaneshwar.bhadane@intel.com>
References: <20250613102256.3508267-1-dnyaneshwar.bhadane@intel.com>
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

From: Matt Roper <matthew.d.roper@intel.com>

Introduce wildcat lake device Id.
Wildcat Lake uses slightly different graphics and media IP versions
than Panther Lake, but can still be treated as PTL for general driver
flows.

Bspec: 73951
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Signed-off-by: Dnyaneshwar Bhadane <dnyaneshwar.bhadane@intel.com>
Reviewed-by: Tejas Upadhyay <tejas.upadhyay@intel.com>
---
 include/drm/intel/pciids.h | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/include/drm/intel/pciids.h b/include/drm/intel/pciids.h
index 129c3172aa5f..a0180d10e260 100644
--- a/include/drm/intel/pciids.h
+++ b/include/drm/intel/pciids.h
@@ -871,6 +871,8 @@
 	MACRO__(0xB08F, ## __VA_ARGS__), \
 	MACRO__(0xB090, ## __VA_ARGS__), \
 	MACRO__(0xB0A0, ## __VA_ARGS__), \
-	MACRO__(0xB0B0, ## __VA_ARGS__)
+	MACRO__(0xB0B0, ## __VA_ARGS__), \
+	MACRO__(0xFD80, ## __VA_ARGS__), \
+	MACRO__(0xFD81, ## __VA_ARGS__)
 
 #endif /* __PCIIDS_H__ */
-- 
2.34.1

