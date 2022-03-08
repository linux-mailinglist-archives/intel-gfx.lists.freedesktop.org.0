Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D1D484D1BEA
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 16:40:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1AE5A10E257;
	Tue,  8 Mar 2022 15:40:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3706D10E257
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Mar 2022 15:40:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646754045; x=1678290045;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zj+HCNzQfjdcJrmSvYnbK9NeKXnPbXjsp/I0t2NCs60=;
 b=ehdtFSzm3OfS1hGiJY3RdGT1NoB613XOKBjUAntq2UGMH+CW4wLCknlf
 8wG2z/15gQ3xKeNwfzFH2PBjNZw7cWoZ1+BCipi4VO9aC+PBlnDbSKmyG
 St/aq0VuG6oAgQvK8CvI1WAwy5F7swnY8lbkldpK1ZbC1X5bdeFp8L21a
 QkkKg8ugDtLFLP6SIuDZ5STtNQWR5i9BSX9lmVJWrjCPE0OV8qkqweN4k
 HeWfvdzZQGy//kkZLPUw/bqVMiBwobx1D4qnlDzeguDym2SY9KQY2oKOF
 95Q3l3mtJwPDOgXuT9EiKkAZhJvVTyhjuWmEqBD9tY95y3+UNMJnDUozn A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10280"; a="254656227"
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="254656227"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 07:40:44 -0800
X-IronPort-AV: E=Sophos;i="5.90,165,1643702400"; d="scan'208";a="687960756"
Received: from sshamoon-mobl1.amr.corp.intel.com (HELO
 josouza-mobl2.amr.corp.intel.com) ([10.212.47.246])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2022 07:40:42 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Mar 2022 07:41:35 -0800
Message-Id: <20220308154136.406578-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] Revert "drm/i915/edp: Ignore short pulse
 when panel powered off"
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This reverts commit 13ea6db2cf24a797ac8c9922e3079fcb897fd32c.

This patch complete broke eDP short pulse handling as VDD is
only enabled when doing aux transactions or when port is disabled.
Checked on several older kernel versions and that is the behavior
that i915 always had on VDD.

So all legit short pulses done by all the eDP panels are being
ignored and no panel interruption errors are being handled.

Still trying to understand why VDD is not always left enabled but
if it can't, those Sharp panels will need another workaround.

Cc: Anshuman Gupta <anshuman.gupta@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c  |  7 +++----
 drivers/gpu/drm/i915/display/intel_pps.c | 13 -------------
 drivers/gpu/drm/i915/display/intel_pps.h |  1 -
 3 files changed, 3 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 619546441eae5..8ad5788e5375d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -4866,13 +4866,12 @@ intel_dp_hpd_pulse(struct intel_digital_port *dig_port, bool long_hpd)
 	struct drm_i915_private *i915 = to_i915(dig_port->base.base.dev);
 	struct intel_dp *intel_dp = &dig_port->dp;
 
-	if (dig_port->base.type == INTEL_OUTPUT_EDP &&
-	    (long_hpd || !intel_pps_have_power(intel_dp))) {
+	if (long_hpd && dig_port->base.type == INTEL_OUTPUT_EDP) {
 		/*
-		 * vdd off can generate a long/short pulse on eDP which
+		 * vdd off can generate a long pulse on eDP which
 		 * would require vdd on to handle it, and thus we
 		 * would end up in an endless cycle of
-		 * "vdd off -> long/short hpd -> vdd on -> detect -> vdd off -> ..."
+		 * "vdd off -> long hpd -> vdd on -> detect -> vdd off -> ..."
 		 */
 		drm_dbg_kms(&i915->drm,
 			    "ignoring %s hpd on eDP [ENCODER:%d:%s]\n",
diff --git a/drivers/gpu/drm/i915/display/intel_pps.c b/drivers/gpu/drm/i915/display/intel_pps.c
index 9c986e8932f87..724947f57664e 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.c
+++ b/drivers/gpu/drm/i915/display/intel_pps.c
@@ -1075,19 +1075,6 @@ static void intel_pps_vdd_sanitize(struct intel_dp *intel_dp)
 	edp_panel_vdd_schedule_off(intel_dp);
 }
 
-bool intel_pps_have_power(struct intel_dp *intel_dp)
-{
-	intel_wakeref_t wakeref;
-	bool have_power = false;
-
-	with_intel_pps_lock(intel_dp, wakeref) {
-		have_power = edp_have_panel_power(intel_dp) &&
-						  edp_have_panel_vdd(intel_dp);
-	}
-
-	return have_power;
-}
-
 static void pps_init_timestamps(struct intel_dp *intel_dp)
 {
 	intel_dp->pps.panel_power_off_time = ktime_get_boottime();
diff --git a/drivers/gpu/drm/i915/display/intel_pps.h b/drivers/gpu/drm/i915/display/intel_pps.h
index fbb47f6f453e4..799439aba6565 100644
--- a/drivers/gpu/drm/i915/display/intel_pps.h
+++ b/drivers/gpu/drm/i915/display/intel_pps.h
@@ -37,7 +37,6 @@ void intel_pps_vdd_on(struct intel_dp *intel_dp);
 void intel_pps_on(struct intel_dp *intel_dp);
 void intel_pps_off(struct intel_dp *intel_dp);
 void intel_pps_vdd_off_sync(struct intel_dp *intel_dp);
-bool intel_pps_have_power(struct intel_dp *intel_dp);
 void intel_pps_wait_power_cycle(struct intel_dp *intel_dp);
 
 void intel_pps_init(struct intel_dp *intel_dp);
-- 
2.35.1

