Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2186655505F
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Jun 2022 17:55:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6133D112D5E;
	Wed, 22 Jun 2022 15:55:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2E371126A9
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Jun 2022 15:55:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655913316; x=1687449316;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=JRfB5trsSpIlUDG1VmB88GeaxFRfjH74Badh5ugGXsM=;
 b=IAa/6rbEHJIC1w+jDlmD7IitSrJ8yLge2Wzbss92ak20GPySZzW9ZgcN
 ul7GJZtIwziLciD9YPvNt+j8rPwtlujswcmEmCu/z8G59I/h3d/xzeSOO
 +GTdrbeKh/XiK3bhvmdFsiOl4tGbJXI9sIxpHHDSZlFipKcjx1Tnpkm8y
 oSQy/9ug782SOYENDGBGOXPK2KaCc9iEHVvxa+JrgWCraiUJuvjiBok4m
 D+Dze2HIX2zaPpITZpEy87qkJu14/YTVTy9ZJKO28UUWTEOE8ZOxRsMYQ
 7kH3fWR/eU2SbYe05s+hyA43M812J4Q5y2noeAElEOs+98G8Xe0YPRRUT Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10386"; a="260278009"
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="260278009"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2022 08:55:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,212,1650956400"; d="scan'208";a="615223388"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by orsmga008.jf.intel.com with SMTP; 22 Jun 2022 08:55:14 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 22 Jun 2022 18:55:13 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Jun 2022 18:54:50 +0300
Message-Id: <20220622155452.32587-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
References: <20220622155452.32587-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/9] drm/i915: Fix pipe gamma enable/disable
 vs. CxSR on gmch platforms
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

Like most other plane control register bits, the pipe gamma
enable bit is also blocked by CxSR. So make sure we kick the
machine out of CxSR before trying to change that bit.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_color.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_color.c b/drivers/gpu/drm/i915/display/intel_color.c
index a27ce874a9e8..bc01a7d3b0d3 100644
--- a/drivers/gpu/drm/i915/display/intel_color.c
+++ b/drivers/gpu/drm/i915/display/intel_color.c
@@ -1305,6 +1305,10 @@ intel_color_add_affected_planes(struct intel_crtc_state *new_crtc_state)
 			return PTR_ERR(plane_state);
 
 		new_crtc_state->update_planes |= BIT(plane->id);
+
+		/* plane control register changes blocked by CxSR */
+		if (HAS_GMCH(dev_priv))
+			new_crtc_state->disable_cxsr = true;
 	}
 
 	return 0;
-- 
2.35.1

