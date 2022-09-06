Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7F065AF626
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Sep 2022 22:34:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEECF10EAC1;
	Tue,  6 Sep 2022 20:34:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A2BD910EAC6
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Sep 2022 20:34:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662496443; x=1694032443;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=w3b8guLbr+b36Qs4ppy9lf4IYmhBLbTvCqjjglDsZB4=;
 b=ZAB6jsk17ZogYGGnQh4HKGoZJAPd7PIwAjDSyYnmz6IIJ0ktLdQvIVi2
 jAsZgSdK7EwdAQCl91SxhtWF/hV++vVekMrEs8O4ioILmNlJruX5EAD9r
 /FJ9ibL6H+VI73i8zPWPIVgv4Z1bKfjgCshieBR0gOwpT0l0MnwcV5pBS
 5kZcNpatFrjKveitYzkZ/pkPaQ0NVFs5IkwHdDQ969L3/U0sxOUWBrV97
 wXoxcgpJarWNRHdyyRHwcO/vo1aAlSS28i1tfxcSB0E2zWQbM4Vx+4AX9
 xwRHzDmpAJeYlCy/c/l2FhaCrk3KBQDy46mNOjfIrXV2WiTkuw+bkzIui w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="277093467"
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="277093467"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 13:33:52 -0700
X-IronPort-AV: E=Sophos;i="5.93,294,1654585200"; d="scan'208";a="717849219"
Received: from fdaei1-mobl.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.212.188.112])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 13:33:51 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Sep 2022 16:33:49 -0400
Message-Id: <20220906203349.177989-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Let's avoid even early init if SLPC
 is used.
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
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

SLPC has its own waiboost variables and lock mechanism.
No need for these extra stuff, in special no need for the
timer.

v2: At early stages we can't use uc's 'uses' function, but the
    'wants' ones in order to make those decisions.

Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 28b399fa1abe..f0c75f088c88 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -57,6 +57,13 @@ static bool rps_uses_slpc(struct intel_rps *rps)
 	return intel_uc_uses_guc_slpc(&gt->uc);
 }
 
+static bool rps_wants_slpc(struct intel_rps *rps)
+{
+	struct intel_gt *gt = rps_to_gt(rps);
+
+	return intel_uc_wants_guc_slpc(&gt->uc);
+}
+
 static u32 rps_pm_sanitize_mask(struct intel_rps *rps, u32 mask)
 {
 	return mask & ~rps->pm_intrmsk_mbz;
@@ -1955,6 +1962,9 @@ void gen5_rps_irq_handler(struct intel_rps *rps)
 
 void intel_rps_init_early(struct intel_rps *rps)
 {
+	if (rps_wants_slpc(rps))
+		return;
+
 	mutex_init(&rps->lock);
 	mutex_init(&rps->power.mutex);
 
-- 
2.37.2

