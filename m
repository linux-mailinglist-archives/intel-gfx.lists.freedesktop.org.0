Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E22908740
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 11:22:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB1AF10ECA0;
	Fri, 14 Jun 2024 09:22:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J+KBgjJV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0391E10ECA0
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Jun 2024 09:22:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718356972; x=1749892972;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=VFKzk5f9lJmQ3rHyNkzhx0zjZRAvF+FzwRvNgp4z+m0=;
 b=J+KBgjJVNTsgoD/5dJlWB72UmWmq8HVmZ0Fgpd/gl0/cUrpUXt4YsztY
 aZZJhPrKx9TNcJYVhHE94i57OTuk6rZ3j5Iz71VV9AU2Yu2iZDSMySNA7
 rnn4j8qK0lZ5lGThYtqq7SQcfKOd+28lqDm51UQhlBfZwVFF3Ip8aXhzD
 7nqI1YalNYzRGtS6ZPZBVTmozBAcsw3VXF4w+5KP1nzjs4RRqsIDi7D/T
 AJa0UYJHEkCqYhZkbDSNPIMG49vhlmKXWRglQb27Rmc8bmMMm0v+QnM4F
 Vjnyr5VxKl9eXaqrN65CQ2kkOVT3Js6WpZD+TTxYhMZ2FOIxZFh5fhmvN w==;
X-CSE-ConnectionGUID: +hVzZGd6Qke08AuIvNCr9Q==
X-CSE-MsgGUID: AfOxdLfHR0CwZAAvtXzRJw==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="40651060"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40651060"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:22:51 -0700
X-CSE-ConnectionGUID: OpDDPJeqSu2t3jg8hi5usQ==
X-CSE-MsgGUID: rBespoBJRsKTQNAz8Ox2uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="44986794"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.221])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 02:22:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Matt Roper <matthew.d.roper@intel.com>
Subject: [CI 01/11] drm/i915/wm: rename intel_get_cxsr_latency ->
 pnv_get_cxsr_latency
Date: Fri, 14 Jun 2024 12:22:29 +0300
Message-Id: <7d4e3c9a4220ff84af2741e5cd7bb62d1b4f2a44.1718356614.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1718356614.git.jani.nikula@intel.com>
References: <cover.1718356614.git.jani.nikula@intel.com>
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

Clarify that the function is specific to PNV, making subsequent changes
slightly easier to grasp.

Reviewed-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/i9xx_wm.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/i9xx_wm.c b/drivers/gpu/drm/i915/display/i9xx_wm.c
index a12765d9e9e4..ba4a38be7545 100644
--- a/drivers/gpu/drm/i915/display/i9xx_wm.c
+++ b/drivers/gpu/drm/i915/display/i9xx_wm.c
@@ -70,7 +70,7 @@ static const struct cxsr_latency cxsr_latency_table[] = {
 	{0, 1, 400, 800, 6042, 36042, 6584, 36584},    /* DDR3-800 SC */
 };
 
-static const struct cxsr_latency *intel_get_cxsr_latency(struct drm_i915_private *i915)
+static const struct cxsr_latency *pnv_get_cxsr_latency(struct drm_i915_private *i915)
 {
 	int i;
 
@@ -637,7 +637,7 @@ static void pnv_update_wm(struct drm_i915_private *dev_priv)
 	u32 reg;
 	unsigned int wm;
 
-	latency = intel_get_cxsr_latency(dev_priv);
+	latency = pnv_get_cxsr_latency(dev_priv);
 	if (!latency) {
 		drm_dbg_kms(&dev_priv->drm,
 			    "Unknown FSB/MEM found, disable CxSR\n");
@@ -4029,7 +4029,7 @@ void i9xx_wm_init(struct drm_i915_private *dev_priv)
 		g4x_setup_wm_latency(dev_priv);
 		dev_priv->display.funcs.wm = &g4x_wm_funcs;
 	} else if (IS_PINEVIEW(dev_priv)) {
-		if (!intel_get_cxsr_latency(dev_priv)) {
+		if (!pnv_get_cxsr_latency(dev_priv)) {
 			drm_info(&dev_priv->drm,
 				 "failed to find known CxSR latency "
 				 "(found ddr%s fsb freq %d, mem freq %d), "
-- 
2.39.2

