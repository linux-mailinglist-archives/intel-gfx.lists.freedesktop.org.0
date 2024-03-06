Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 603CA8734B3
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 11:45:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE972113041;
	Wed,  6 Mar 2024 10:45:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kqIFegPf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8FF2B113041
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 10:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709721938; x=1741257938;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aZCG/aEC1AZh/tKsIuknn79YXluUwy0oKDEaL5ECEcA=;
 b=kqIFegPfJ2QiNIHctzQtB1apzEzMax4uGYHrzMawg44p9VB8iVPf0bYK
 4MyHqOWNxSB9ERVVfJpP0zk3PbH9Lgmy30sr+4d5Kj9aCar1xNuRhQQ8b
 PXO8T6VqvwxzaCUaDZ0MKQxmd0uAJuz34CBPxLyE/qXxBjz3s6Vk24int
 lu0ndf1WXHDphwcJjlhBn4kvjHq33ff+alAANgVkOFsZNm9m6hl8oRq+7
 yDe1RWxbOg04n5RCitFOdi3SiuTsL60tmaJONKwNtyHzSKP5g5UcEOm20
 Ihl7TJkiKnwXntHFC7irsg/gVYsWDUfJfcTOeI/UUpJlezb03RsHsp88e g==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="26794745"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="26794745"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 02:45:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14206997"
Received: from bdallmer-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.223.229])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 02:45:35 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 6/6] drm/i915/psr: Do not write ALPM configuration for PSR1
 or DP2.0 Panel Replay
Date: Wed,  6 Mar 2024 12:45:13 +0200
Message-Id: <20240306104513.2129442-7-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240306104513.2129442-1-jouni.hogander@intel.com>
References: <20240306104513.2129442-1-jouni.hogander@intel.com>
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
index 4cd2bad5241f..c7bda37444f0 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -1699,7 +1699,8 @@ static void lnl_alpm_configure(struct intel_dp *intel_dp)
 	struct intel_psr *psr = &intel_dp->psr;
 	u32 alpm_ctl;
 
-	if (DISPLAY_VER(dev_priv) < 20)
+	if (DISPLAY_VER(dev_priv) < 20 || (!intel_dp->psr.psr2_enabled &&
+					   !intel_dp_is_edp(intel_dp)))
 		return;
 
 	if (intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp)) {
-- 
2.34.1

