Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B16A16AC5C6
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Mar 2023 16:44:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0942410E25A;
	Mon,  6 Mar 2023 15:44:28 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8230C10E25A
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Mar 2023 15:44:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678117465; x=1709653465;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Wbh/w4ZTeatRRy2+GF1gvXl+cU/r63h/G4qR/0wB/d8=;
 b=mfqp2rbajpze8kQ1hn5D4X40HyPtunGTB7elX8tHr9v1uBkKWnHfNjZI
 pTnoy7uHbCxsHjQvHSe4XbxSMp/sCMYZyxGMjmBiGaRD8iVq5hhoRo86X
 eXp/WUi/d/he6y9H9GqScE+xHZTj5A/o1Uu4KzDJcsYGcHudMb3a4que3
 QLDXD98PYRS6vEzwq9705HgfWo5AaJKhAoE+MP8LnULkZh3JoH9rxHywB
 UnImZA9osPUyByGk7P0UHIeqzdo1KJFTbi6pVedRkvY+2FZ5GpeqtEwmG
 aNSt6Ycj6dRLzm8LeqVFOK5ep/1oxXsX72JGDr+EGBhDNg1ujiXy88S3I g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="398165133"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="398165133"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2023 07:44:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10641"; a="676197435"
X-IronPort-AV: E=Sophos;i="5.98,238,1673942400"; d="scan'208";a="676197435"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 06 Mar 2023 07:44:20 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 06 Mar 2023 17:44:19 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  6 Mar 2023 17:44:19 +0200
Message-Id: <20230306154419.23207-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Bump VBT version for expected child
 dev size check
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The most modern VBT I've observed in the wild is version 250.
The child dev size hasn't changed since version 216, so bump
the version number in the expected child dev size check.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index f16887aed56d..e54febd34ca9 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2822,7 +2822,7 @@ parse_general_definitions(struct drm_i915_private *i915)
 		expected_size = 37;
 	} else if (i915->display.vbt.version <= 215) {
 		expected_size = 38;
-	} else if (i915->display.vbt.version <= 237) {
+	} else if (i915->display.vbt.version <= 250) {
 		expected_size = 39;
 	} else {
 		expected_size = sizeof(*child);
-- 
2.39.2

