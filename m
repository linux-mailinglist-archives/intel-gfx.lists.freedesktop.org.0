Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB436BEA57
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 14:42:04 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF5A510E139;
	Fri, 17 Mar 2023 13:42:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54B8C10E139
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Mar 2023 13:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679060520; x=1710596520;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EMhSm+1Bi5O6bGLi9GCJWnJMmU1zA/KQqw8Bdp+fZ0k=;
 b=dpUCL54+LnDl10QIq210QMS8TmTWW/qE1qA6TC0FSBH0f6PgMcEN4DXa
 tDWZ7hNRJZOd94rY8rFelhw3lTezD1aQhFPGdhk0dq70krbM5M8AzqP25
 +98ShaEP5meTejp6MGUc04TbsL+ApY3OcaksJoqbeh19mX4POrVVrmVjG
 HHU6V3v9I9A8M/AemJbEGX9zF+mdX8aMCaU12zi80Xu2OsLoF0hVa+xZe
 ws0xrf8hRmXa1Nd87Zs4GjKZd5quF9vdPJJ3E7odyuJquv5PeDUHz4ehx
 nft+Imspwe2iNA07PM3tBl4wxlewkOAyuxeQRhmopcFf6QH6C64I4SY82 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="424532323"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="424532323"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 06:42:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10652"; a="790717034"
X-IronPort-AV: E=Sophos;i="5.98,268,1673942400"; d="scan'208";a="790717034"
Received: from shuchen-mobl.ccr.corp.intel.com (HELO localhost)
 ([10.252.60.191])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2023 06:41:58 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Mar 2023 15:41:44 +0200
Message-Id: <20230317134144.223936-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230317134144.223936-1-jani.nikula@intel.com>
References: <20230317134144.223936-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915/psr: clean up PSR debugfs sink
 status error handling
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Handle errors first and return early, and reduce indentation on the
happy day code path.

Cc: Jouni Högander <jouni.hogander@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index bd1a1a2524b5..31084d95711d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2891,6 +2891,7 @@ static int i915_psr_sink_status_show(struct seq_file *m, void *data)
 		"reserved",
 		"sink internal error",
 	};
+	const char *str;
 	int ret;
 	u8 val;
 
@@ -2903,17 +2904,16 @@ static int i915_psr_sink_status_show(struct seq_file *m, void *data)
 		return -ENODEV;
 
 	ret = drm_dp_dpcd_readb(&intel_dp->aux, DP_PSR_STATUS, &val);
+	if (ret != 1)
+		return ret < 0 ? ret : -EIO;
 
-	if (ret == 1) {
-		const char *str = "unknown";
+	val &= DP_PSR_SINK_STATE_MASK;
+	if (val < ARRAY_SIZE(sink_status))
+		str = sink_status[val];
+	else
+		str = "unknown";
 
-		val &= DP_PSR_SINK_STATE_MASK;
-		if (val < ARRAY_SIZE(sink_status))
-			str = sink_status[val];
-		seq_printf(m, "Sink PSR status: 0x%x [%s]\n", val, str);
-	} else {
-		return ret;
-	}
+	seq_printf(m, "Sink PSR status: 0x%x [%s]\n", val, str);
 
 	return 0;
 }
-- 
2.39.2

