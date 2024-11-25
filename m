Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 233939D8905
	for <lists+intel-gfx@lfdr.de>; Mon, 25 Nov 2024 16:19:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 117B410E676;
	Mon, 25 Nov 2024 15:19:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bGyO33Ad";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6B6410E676
 for <intel-gfx@lists.freedesktop.org>; Mon, 25 Nov 2024 15:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732547979; x=1764083979;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=QC032HSCAHbGqpeYFPKzQpg1JXzvM4wSH0MmdNSfa9s=;
 b=bGyO33AdA6lLpapfKTlxw9heOcBaoL1N1qVAaMMsPjhp6FU6fX/qIcDB
 9/jmECiDsmqFaAhvqR70T4a/nUKmr6sPXfDuARVe7+qFn2yiha8WU6HTa
 wxsnMLvcUZe9WVi1AKl5HxupaiIdcQjS+D6hW+k+ZLU+AxRaerlVZw8jm
 9mL78V7W/VYSvjdbWdkkaHPXD22fE5lMLJFRoalG32D+0kEmI6VUGx4bW
 mEKy1MHYsXA9b5sOSpuupx161ZIOTtRr01oR+8s+mKdt7rhU61h067qwc
 HLvunI5ZQjZYv5VKOct5JBh3DbFtHpmyS9fEbrlejYDZDBgGk3QlPoK7i g==;
X-CSE-ConnectionGUID: zkdLSRN3Rc+z5sYkRr6fgA==
X-CSE-MsgGUID: 7E8iBUGBQyK3s2t4Do6OSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11267"; a="36586986"
X-IronPort-AV: E=Sophos;i="6.12,183,1728975600"; d="scan'208";a="36586986"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 07:19:39 -0800
X-CSE-ConnectionGUID: +SNI67lqQUGTjbSUEi1ZxQ==
X-CSE-MsgGUID: 6R0mIFMtTTOEaHQa8EDOnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,183,1728975600"; d="scan'208";a="95399526"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.15])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2024 07:19:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH] drm/i915/mst: add beginnings of DP MST documentation
Date: Mon, 25 Nov 2024 17:19:33 +0200
Message-Id: <20241125151933.2382910-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

Add a little bit of documentation around DP MST. This is nowhere near
complete nor does it have enough detail. But it's better than nothing,
and hopefully gives people a basic grasp of what's going on.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 32 +++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index c59c2c14679c..a9ce8b3a7ff5 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -53,6 +53,38 @@
 #include "intel_vdsc.h"
 #include "skl_scaler.h"
 
+/*
+ * DP MST (DisplayPort Multi-Stream Transport)
+ *
+ * MST support on the source depends on the platform and port. DP initialization
+ * sets up MST for each MST capable encoder. This will become the primary
+ * encoder for the port.
+ *
+ * MST initialization of each primary encoder creates MST stream encoders, one
+ * per pipe, and initializes the MST topology manager. The MST stream encoders
+ * are sometimes called "fake encoders", because they're virtual, not
+ * physical. Thus there are (number of MST capable ports) x (number of pipes)
+ * MST stream encoders in total.
+ *
+ * Decision to use MST for a sink happens at detect on the connector attached to
+ * the primary encoder, and this will not change while the sink is connected. We
+ * always use MST when possible, including for SST sinks with sideband messaging
+ * support.
+ *
+ * The connectors for the MST streams are added and removed dynamically by the
+ * topology manager. Their connection status is also determined by the topology
+ * manager.
+ *
+ * On hardware, each transcoder may be associated with a single DDI
+ * port. Multiple transcoders may be associated with the same DDI port only if
+ * the port is in MST mode.
+ *
+ * On TGL+, all the transcoders streaming on the same DDI port will indicate a
+ * primary transcoder; the TGL_DP_TP_CTL and TGL_DP_TP_STATUS registers are
+ * relevant only on the primary transcoder. Prior to that, they are port
+ * registers.
+ */
+
 /* From fake MST stream encoder to primary encoder */
 static struct intel_encoder *to_primary_encoder(struct intel_encoder *encoder)
 {
-- 
2.39.5

