Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E6C6633C22
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:10:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBFDB10E3D4;
	Tue, 22 Nov 2022 12:10:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B15E10E3D2
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:09:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669118994; x=1700654994;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=azseuI5MY0HKU7INMNBF9qcpEhGEECdOcREmVID8cyg=;
 b=H3qldFUwURohONpNHLVyoWkX1f+9qDcTgHA2RuHPzTN4HvLiAR1Bs/7c
 lY7eYKzwb1G1VpRddzm+WFdxlPDzczEg58blBpf7Mf4d6uUQv2mHUKPLK
 25BrLUluSy23E7aXvVAVswZ4fqAGd49mATkJedWPlwC846dTT1lZOubWR
 b/qspZSpk8Dx4xoniCaePy5b4RatkDNqm2N4n59GFvcJIH1lzdxoURRN8
 bpPUsyVHllsH5b3gf0KQBbzJQHFybtHX10a22Vc0n5CNOSj022FBNtVOE
 lIdYZAco0hthZwYa1Kl4I5TAeZ2lJFGSwYRsLJchkAG8E4ah/MRg5CD0q g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="378057379"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="378057379"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:09:53 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="592124215"
X-IronPort-AV: E=Sophos;i="5.96,183,1665471600"; d="scan'208";a="592124215"
Received: from sfflynn-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.18.151])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:09:52 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 22 Nov 2022 14:09:48 +0200
Message-Id: <20221122120948.3436180-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/hti: avoid theoretically possible
 negative shift
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
Cc: jani.nikula@intel.com, coverity-bot <keescook@chromium.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If phy is PHY_NONE, the shift to register bits becomes negative. Check
and warn about this.

Reported-by: coverity-bot <keescook@chromium.org>
References: https://lore.kernel.org/r/202211180848.D39006C@keescook
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hti.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_hti.c b/drivers/gpu/drm/i915/display/intel_hti.c
index 12a1f4ce1a77..c518efebdf77 100644
--- a/drivers/gpu/drm/i915/display/intel_hti.c
+++ b/drivers/gpu/drm/i915/display/intel_hti.c
@@ -21,6 +21,9 @@ void intel_hti_init(struct drm_i915_private *i915)
 
 bool intel_hti_uses_phy(struct drm_i915_private *i915, enum phy phy)
 {
+	if (drm_WARN_ON(&i915->drm, phy == PHY_NONE))
+		return false;
+
 	return i915->display.hti.state & HDPORT_ENABLED &&
 		i915->display.hti.state & HDPORT_DDI_USED(phy);
 }
-- 
2.34.1

