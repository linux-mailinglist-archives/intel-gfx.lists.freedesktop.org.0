Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74F8085BB82
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Feb 2024 13:11:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6099B10E3A0;
	Tue, 20 Feb 2024 12:11:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="R32Q4b+9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E604F10E391
 for <intel-gfx@lists.freedesktop.org>; Tue, 20 Feb 2024 12:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708431086; x=1739967086;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hTNpEPKEePVSou+p2AgcosAh6gEACgE2tlYEXjaEH6E=;
 b=R32Q4b+9kNDWmxIdoMPahQjV/12fY24wX0bn0JrFoRLEwnJfh1+19Tuh
 QeTthwz6ti7dc66GsCOhuG+5AWLmPS7Mlu04/lbVJePiLSMO5TFvckHX8
 /gc3H05cdHj3F5z8q6Gj51jNB0chYzFMLduBkejHR11nVVHLfewjts+/T
 weszHs+yS3FqruSFjC/jbcW52uTQlRw97C6+4WuFURPIHUMQNU+p0VT8v
 ZXFfdoqshbg9WLQA6xFLHL5fIxVNI6iB9FGJeJKJWXniIljCx/I/+vDze
 gajpj0TM1gGjCFMrMMdKKIT2ECyEnPu3O4sZw/8AsDrj/VTVBuXjxcdyM A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10989"; a="24987097"
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; d="scan'208";a="24987097"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 04:11:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,172,1705392000"; 
   d="scan'208";a="9378175"
Received: from sbeleaga-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.43.237])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Feb 2024 04:11:07 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 6/6] drm/i915/psr: Do not write ALPM configuration for PSR1
 or DP2.0 Panel Replay
Date: Tue, 20 Feb 2024 14:10:45 +0200
Message-Id: <20240220121045.2156004-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240220121045.2156004-1-jouni.hogander@intel.com>
References: <20240220121045.2156004-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

No need to write ALPM configuration for DP2.0 Panel Replay or PSR1.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index bf410c4890f4..ed5f62f89027 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1698,7 +1698,8 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
 	struct intel_psr *psr = &intel_dp->psr;
 	u32 alpm_ctl;
 
-	if (DISPLAY_VER(dev_priv) < 20)
+	if (DISPLAY_VER(dev_priv) < 20 || (!intel_dp->psr.psr2_enabled &&
+					   !intel_dp_is_edp(intel_dp)))
 		return;
 
 	if (intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp)) {
-- 
2.34.1

