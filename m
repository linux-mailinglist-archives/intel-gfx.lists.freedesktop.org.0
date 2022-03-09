Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id DE3FB4D350A
	for <lists+intel-gfx@lfdr.de>; Wed,  9 Mar 2022 18:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E41210E582;
	Wed,  9 Mar 2022 17:02:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E156D10E57F
 for <intel-gfx@lists.freedesktop.org>; Wed,  9 Mar 2022 17:02:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646845346; x=1678381346;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=+2Rr4zgvUokLjzBqc0qzAgKyUtkqyWlwsRwoDTB1RgQ=;
 b=kGc8nQWnsFeVdiikhYL4qA7KUMNUkeKAI+Ll+ehuzqVWRRsLxdwq9pWZ
 R6yYlpQki0MZtgq//fxTf2FkWUXTqyuc9b0TBowqgFOps6u4oMOYpT5jn
 hfokzl3r5Q9mL+Wj7UyLJfVgpdoQSGGppVpEHsbtYkXvtJiBiNRZIU0FU
 33FQdzmILtLXFc/g2nxoYxUOz7b4EdcHlsxo33CprJ2TS5QUOlQVnh7cZ
 uQRwpjhdJ7Fml2n/+knB+Kf8RnwGWB9ASM0vcna/U1WBHtUBF2tuz79A0
 GB9gjqqW+OeW6XGY4LAC8QPE6ZoFdfF766sn+gTclmtOy0vfM++9x6JeN Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10281"; a="255217969"
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="255217969"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Mar 2022 08:50:09 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,167,1643702400"; d="scan'208";a="578449090"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga001.jf.intel.com with SMTP; 09 Mar 2022 08:50:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 09 Mar 2022 18:50:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  9 Mar 2022 18:49:44 +0200
Message-Id: <20220309164948.10671-5-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
References: <20220309164948.10671-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 4/8] drm/i915: Reject excessive SAGV block
 time
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

If the mailbox returns an exceesively large SAGV block time let's just
reject it. This avoids having to worry about overflows when we add the
SAGV block time to the wm0 latency.

We shall put the limit arbitrarily at U16_MAX. >65msec latency
doesn't really make sense to me in any case.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_pm.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/intel_pm.c b/drivers/gpu/drm/i915/intel_pm.c
index 36f5bccabf64..166246fa27e4 100644
--- a/drivers/gpu/drm/i915/intel_pm.c
+++ b/drivers/gpu/drm/i915/intel_pm.c
@@ -3716,6 +3716,12 @@ static void intel_sagv_init(struct drm_i915_private *i915)
 	drm_dbg_kms(&i915->drm, "SAGV supported: %s, original SAGV block time: %u us\n",
 		    str_yes_no(intel_has_sagv(i915)), i915->sagv_block_time_us);
 
+	/* avoid overflow when adding with wm0 latency/etc. */
+	if (drm_WARN(&i915->drm, i915->sagv_block_time_us > U16_MAX,
+		     "Excessive SAGV block time %u, ignoring\n",
+		     i915->sagv_block_time_us))
+		i915->sagv_block_time_us = 0;
+
 	if (!intel_has_sagv(i915))
 		i915->sagv_block_time_us = 0;
 }
-- 
2.34.1

