Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C66898901
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Apr 2024 15:44:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0419910F1EB;
	Thu,  4 Apr 2024 13:44:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Lv5uARAX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD67610F1EB;
 Thu,  4 Apr 2024 13:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712238280; x=1743774280;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=G92tJRI/jB4WFYtbh8R7r60OpqM+OEvxkFbn83KXKFI=;
 b=Lv5uARAXeP6D3cwDqvsKkxp6OVhYmFzwwJWUMK37xIpl5/59f713NpF6
 KRQ43AXJyRcH9P5X/FrD2K8XXJSGkrps24VVoC1vV+EeRrv5T8fpIqFML
 8crgl1NwPutlINKxJkJu/6Z2m1XkJrljuha1nuEMWpo5h1E00biVzBsJ1
 DqFvmPjUKBCQlN8Dk9NC5eqU4g5nPnpUxAJTVZ9J6Nz//+2tmzG+xrZeM
 lieeFUWT/9uBdaoUHNxLivwEr3OulnbfNeBzmS1rDVwuylpluUB9b05yH
 oG6hY65o8UiEa8UQ1A7zNbF7zRhFiTutBPvt140IAAWtv1DQC8BXHSQDV A==;
X-CSE-ConnectionGUID: eCLKG7aYRtifZqEgwBZExg==
X-CSE-MsgGUID: JL1YvO09ROWRi+9aFcgk9Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11033"; a="11320219"
X-IronPort-AV: E=Sophos;i="6.07,178,1708416000"; d="scan'208";a="11320219"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 02:16:59 -0700
X-CSE-ConnectionGUID: +x8xqlKNSuuBh8gE5i5S4w==
X-CSE-MsgGUID: SP4M9B0pQueX6Ns2efdX0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,179,1708416000"; d="scan'208";a="23207157"
Received: from tsonono-mobl.ger.corp.intel.com (HELO hazy.ger.corp.intel.com)
 ([10.252.41.97])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Apr 2024 02:16:57 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ville.syrjala@linux.intel.com,
 jani.nikula@intel.com, gustavo.sousa@intel.com, james.ausmus@intel.com
Subject: [PATCH v5] drm/i915: limit eDP MSO pipe only for display version 20
 and below
Date: Thu,  4 Apr 2024 12:16:46 +0300
Message-Id: <20240404091646.165309-1-luciano.coelho@intel.com>
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

In v5:
   * fixed Ville's name's wrong charset, which prevented patchwork
     from picking this up.

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

