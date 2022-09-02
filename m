Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 520D85AABD5
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Sep 2022 11:51:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C65110E7DC;
	Fri,  2 Sep 2022 09:51:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AD62810E7D5
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Sep 2022 09:51:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662112288; x=1693648288;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=YF22tOYC1ISw8HiLRMEf/TITlCFUYXtwznJeix+npYY=;
 b=M/Uu8E67bGse/sbGB74Ol3XY6LttWAO/9NqcT38fXdEfTrcuyx/+AKpV
 NAmSPzvDDE2krxTYbkSatjN7TUsuxMpD9kWa62AoswAzYyfegaIW+a87+
 gcXcKSYDG2i0O/vVmKyWYgBlAFbg3fh+5hiy+rcF7v1gYoaFEYkOs2Bqs
 JE5xc+HSDXHi5eD7V6dLxLRRhYzrTQDbevgf49Ui3XT+02ZYz7lKoqEPZ
 b+TrAyGqf1BExz4fyKbag9ebGz+dSuiSLjv3RjEQ55Fya8sqYZG5iqFWh
 Bf+csJjoO2UKLbq9f5c33pT5Fxz2TzjK3y9LuiulvnnQywFq6FvXfpiyu Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10457"; a="293523794"
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="293523794"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 02:51:28 -0700
X-IronPort-AV: E=Sophos;i="5.93,283,1654585200"; d="scan'208";a="674291840"
Received: from gquakenb-mobl1.amr.corp.intel.com (HELO rdvivi-mobl4.intel.com)
 ([10.255.36.252])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2022 02:51:27 -0700
From: Rodrigo Vivi <rodrigo.vivi@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Sep 2022 05:51:25 -0400
Message-Id: <20220902095126.373036-1-rodrigo.vivi@intel.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915: Don't try to disable host RPS
 when this was never enabled.
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

Specially in GT reset case this could be triggered and try
to disable things that had never been enabled. Let's add
some protection here.

Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Rodrigo Vivi <rodrigo.vivi@intel.com>
Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_rps.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
index 579ae9ac089c..6fadde4ee7bf 100644
--- a/drivers/gpu/drm/i915/gt/intel_rps.c
+++ b/drivers/gpu/drm/i915/gt/intel_rps.c
@@ -1551,6 +1551,9 @@ void intel_rps_disable(struct intel_rps *rps)
 {
 	struct drm_i915_private *i915 = rps_to_i915(rps);
 
+	if (!intel_rps_is_enabled(rps))
+		return;
+
 	intel_rps_clear_enabled(rps);
 	intel_rps_clear_interrupts(rps);
 	intel_rps_clear_timer(rps);
-- 
2.37.2

