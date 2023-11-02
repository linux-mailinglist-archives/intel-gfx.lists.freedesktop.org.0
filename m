Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7431E7DFC1E
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 22:55:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C1C1C10E0D8;
	Thu,  2 Nov 2023 21:55:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E14410E0D8
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Nov 2023 21:55:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698962145; x=1730498145;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uZ4nlaJ4EQ0NUcyeJPQUta2HPN8B12dYxqbwrWFTWdo=;
 b=EnS1I3OM1nBe2h4IDSnYrCaUBsSnfqFsqY+VyR9xpZtJCaW8Oqlb0Sbt
 RATxbuMY2KBiCOa8KGTZj96CjDWcQpN8WUirvpidWt/XcT4Ft/s7NG6xv
 OGYbk4VInV2vEJXIH+EISjy7fgkF3r32wbLqsHaT/m+maNgjlQCRy1rYk
 MuFm6XAErvA5NZSdTnML+JTO3UMPZWs+jv66ihZFp6OW/Zp4nr8H4mNJJ
 gArfi4mXShDuzRmqyDK2GQJuYX51MxQ1yUX3nlI0xOubE616swer6KNQb
 jF6DcReuBL5Coefyx0L5fnoXcw8xP+YE1xcMjVNMHCH5O1zSfZkLui7Ho Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="7464363"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; 
   d="scan'208";a="7464363"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 14:55:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10882"; a="737895710"
X-IronPort-AV: E=Sophos;i="6.03,272,1694761200"; d="scan'208";a="737895710"
Received: from jpauw-mobl1.ger.corp.intel.com (HELO vgovind2-mobl3.intel.com)
 ([10.251.215.30])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 14:55:41 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  2 Nov 2023 23:55:19 +0200
Message-Id: <20231102215519.135847-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231102215519.135847-1-vinod.govindapillai@intel.com>
References: <20231102215519.135847-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 2/2] drm/i915/xe2lpd: prefer FBC for full
 frame fetch in PSR2
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
Cc: ville.syrjala@intel.com, matthew.d.roper@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If the selective fetch is not optimal, use FBC

Bspec: 68881
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index bde12fe62275..1c32d85dc688 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1202,8 +1202,15 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * Bspec: 50422 HSD: 14010260002
 	 */
 	if (DISPLAY_VER(i915) >= 12 && crtc_state->has_psr2) {
-		plane_state->no_fbc_reason = "PSR2 enabled";
-		return 0;
+		if (DISPLAY_VER(i915) >= 20)
+			plane_state->no_fbc_reason =
+				crtc_state->full_frame_fetch ? NULL :
+					"PSR2 selective fetch enabled";
+		else
+			plane_state->no_fbc_reason = "PSR2 enabled";
+
+		if (plane_state->no_fbc_reason)
+			return 0;
 	}
 
 	/* Wa_14016291713 */
-- 
2.34.1

