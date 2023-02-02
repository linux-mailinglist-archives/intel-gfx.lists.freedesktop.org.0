Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D670687CD6
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Feb 2023 13:05:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C9A5510E505;
	Thu,  2 Feb 2023 12:05:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 912B010E500
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Feb 2023 12:05:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675339518; x=1706875518;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=IiSWdLB1+xS76J9fAVTtoIzvOs16WZmnYBlrBuqMlf4=;
 b=bXW3skNdIEZq2tNSEplHiyzVTp+MQyBNrH0H2g4+bD+1+j8hWfh+X+r9
 Rx6534dN4ZZym0pRaUbPFx86V/WF81aA7xdiqUBFWuUWuWIE3FyLVcg1Z
 Jdpsf294fN+ZuinlWAEqMoqKxlZTfJh5oIUZ/sqXqnlXMrx+2QZfvE+bU
 12/WswMDTRUflForPleisB2VxVrYYMibqwE6VmuPXtwVrl6piOTUEFe22
 DMxn+FWqHj3VPlH8qxEfKlVvANFm+K4JKW2AaurnUIzcyeFgqSSJ9KQuM
 jxncFk+xbUiiXoCaUSX8gahoMw97+NtTn8y2/DUQ48kKLITbPNXRgeL+4 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="308767248"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="308767248"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 04:05:18 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10608"; a="615255549"
X-IronPort-AV: E=Sophos;i="5.97,267,1669104000"; d="scan'208";a="615255549"
Received: from skopplex-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.34.132])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2023 04:05:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Feb 2023 14:04:52 +0200
Message-Id: <6a349c3a2b2def5fc31a48c9844ebd72ee55a22b.1675339447.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1675339447.git.jani.nikula@intel.com>
References: <cover.1675339447.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/5] drm/i915/dmc: check incoming dmc id validity
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Add validity checks for the dmc ids computed from pipe parameters in
intel_dmc_enable_pipe() and intel_dmc_disable_pipe(). It's slightly
difficult for humans and static analyzers alike to ensure the resulting
dmc ids are within bounds. Just check them and reject invalid ones.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index ab0ad8e3e620..3b8e8193d042 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -415,7 +415,9 @@ static void pipedmc_clock_gating_wa(struct drm_i915_private *i915, bool enable)
 
 void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe)
 {
-	if (!has_dmc_id_fw(i915, PIPE_TO_DMC_ID(pipe)))
+	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
+
+	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(i915, dmc_id))
 		return;
 
 	if (DISPLAY_VER(i915) >= 14)
@@ -426,7 +428,9 @@ void intel_dmc_enable_pipe(struct drm_i915_private *i915, enum pipe pipe)
 
 void intel_dmc_disable_pipe(struct drm_i915_private *i915, enum pipe pipe)
 {
-	if (!has_dmc_id_fw(i915, PIPE_TO_DMC_ID(pipe)))
+	enum intel_dmc_id dmc_id = PIPE_TO_DMC_ID(pipe);
+
+	if (!is_valid_dmc_id(dmc_id) || !has_dmc_id_fw(i915, dmc_id))
 		return;
 
 	if (DISPLAY_VER(i915) >= 14)
-- 
2.34.1

