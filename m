Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1ED2896FDA
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Apr 2024 15:06:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 73A611126D3;
	Wed,  3 Apr 2024 13:05:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Nn1r3em6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19D0B1126D1;
 Wed,  3 Apr 2024 13:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712149558; x=1743685558;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cdcoi3WbEmPgtslCiHd87w9z+w846Pys0ZabgxGhPLc=;
 b=Nn1r3em6sPYwa3a8CaP/Gp7bNyKK1qwGF2qVXTBlg75dKFNSUn1B2/uD
 ewF3vr88rSPW5Ad0FaTwOuhIpUViIGDdWCzS+BxJuBQvgpUNn+4DLSAwk
 z/yFQH3feaLF95lwoWORkw2jYW8Y8gHhvn18bK0r/11b03rj7jQTHlWZA
 OqREAFf8aL3Mnzi6ibmkYh8rlA5cEsRKgDI4RLToGNRJHGORao1GUmbaY
 4hAxQBkgZyQ+D7nnDr0xM3YoEce3BwZHfzr9cL/wF8MiZpBLbMLLEU3H9
 a3bgyVAYJGMUaNBx54MaWJOtJhCGShBG9I/wyLzLUjfSlyJykos4Ls9Yx A==;
X-CSE-ConnectionGUID: oJtqdXFRRweGYsUAhtrMWg==
X-CSE-MsgGUID: HchhfBkeSlq8ssBhiq+CPA==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="7959157"
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; 
   d="scan'208";a="7959157"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 06:05:57 -0700
X-CSE-ConnectionGUID: M2GQepYgS4Gf9K7bn1qEhA==
X-CSE-MsgGUID: yHnz4kggREqYPi+qQuyNew==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,177,1708416000"; d="scan'208";a="49672628"
Received: from iosaarel-mobl.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.58.114])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2024 06:05:56 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com, gustavo.sousa@intel.com, james.ausmus@intel.com
Subject: [PATCH v4] drm/i915: limit eDP MSO pipe only for display version 20
 and below
Date: Wed,  3 Apr 2024 16:05:45 +0300
Message-Id: <20240403130545.21915-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

The pipes that can be used for eDP MSO are limited to pipe A (and
sometimes also pipe B) only for display version 20 and below.

Modify the function that returns the pipe mask for eDP MSO so that
these limitations only apply to version 20 and below, enabling all
pipes otherwise.

Bspec: 68923
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: James Ausmus <james.ausmus@intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---

In v4:
   * actually go back to unrestricting only for > 20.  I sent the
     wrong patch version in v3.

In v3:
   * go back to unrestricing only for > 20, since the change for
     versions 14 to 20 should be tested separately;
   * simplify the if blocks [Ville].

In v2:
   * allow pipes A and B from ver 14 to 20 [Gustavo]

drivers/gpu/drm/i915/display/intel_ddi.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index a3d3d4942eb1..5d2863c43296 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -2336,10 +2336,15 @@ static void intel_ddi_power_up_lanes(struct intel_encoder *encoder,
 	}
 }
 
-/* Splitter enable for eDP MSO is limited to certain pipes. */
+/*
+ * Splitter enable for eDP MSO is limited to certain pipes, on certain
+ * platforms.
+ */
 static u8 intel_ddi_splitter_pipe_mask(struct drm_i915_private *i915)
 {
-	if (IS_ALDERLAKE_P(i915))
+	if (DISPLAY_VER(i915) > 20)
+		return ~0;
+	else if (IS_ALDERLAKE_P(i915))
 		return BIT(PIPE_A) | BIT(PIPE_B);
 	else
 		return BIT(PIPE_A);
-- 
2.39.2

