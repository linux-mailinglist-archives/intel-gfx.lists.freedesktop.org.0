Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AEA8ECDE51B
	for <lists+intel-gfx@lfdr.de>; Fri, 26 Dec 2025 05:34:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CFE811381A;
	Fri, 26 Dec 2025 04:34:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MeuvkuAP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C172113238;
 Fri, 26 Dec 2025 04:34:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766723656; x=1798259656;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yIfX5j2j3RXnap3uL+Ibjo1JIj4KFvUhNgHEsEL6VUE=;
 b=MeuvkuAPDsozIyxyOYnQh9LmUCSFnlMMg2v89g+e7IH/lu5G8IIBht6k
 gakmRGwPIGKx/SiYxbW9OinvrQb9bN26eTziKLkpZjenGi8jS3tOOwTdG
 2mt8IGQdPbOsBDPsQypxrKJCdL81HdJeIPwZwk1aI4bzoykIZ8/XAou8A
 dlb0KrLPPBKCPyHLxWfyNkVqtSx6HnKVowsJwXeknJ2uKj0NmxxiC/xDX
 v3LA1zXAFMJ2e2I1lprIaxVJBkQbwdvlBsFln2CgUc7jUMkIwH+cjIl7d
 mSAzzxdCJesL/6hm3rxtb2apgyYfx5lsjhdq+6Ole0YekBYCeh2T4CvWR w==;
X-CSE-ConnectionGUID: uBppyVskSfiEOrnWfVHUjQ==
X-CSE-MsgGUID: zxPuTfB6TcavXAfTXOiooA==
X-IronPort-AV: E=McAfee;i="6800,10657,11652"; a="56060793"
X-IronPort-AV: E=Sophos;i="6.21,177,1763452800"; d="scan'208";a="56060793"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Dec 2025 20:34:12 -0800
X-CSE-ConnectionGUID: ZRufWYVsTJqTL/B7XJyS7w==
X-CSE-MsgGUID: erQkYYuVQi6h4Qg4YB7eZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,177,1763452800"; d="scan'208";a="230986706"
Received: from aknautiy-mobl1.gar.corp.intel.com (HELO
 aknautiy-mobl1.intel.com) ([10.247.80.5])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Dec 2025 20:34:10 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@linux.intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH] drm/i915/quirks: Fix device id for QUIRK_EDP_LIMIT_RATE_HBR2
 entry
Date: Fri, 26 Dec 2025 10:03:59 +0530
Message-Id: <20251226043359.2553-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.34.1
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

Update the device ID for Dell XPS 13 7390 2-in-1 in the quirk
`QUIRK_EDP_LIMIT_RATE_HBR2` entry. The previous ID (0x8a12) was
incorrect; the correct ID is 0x8a52.

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5969
Fixes: 21c586d9233a ("drm/i915/dp: Add device specific quirk to limit eDP rate to HBR2")
Cc: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: <stable@vger.kernel.org> # v6.18+
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_quirks.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_quirks.c b/drivers/gpu/drm/i915/display/intel_quirks.c
index d2e16b79d6be..1abbdd426e58 100644
--- a/drivers/gpu/drm/i915/display/intel_quirks.c
+++ b/drivers/gpu/drm/i915/display/intel_quirks.c
@@ -239,7 +239,7 @@ static struct intel_quirk intel_quirks[] = {
 	{ 0x0f31, 0x103c, 0x220f, quirk_invert_brightness },
 
 	/* Dell XPS 13 7390 2-in-1 */
-	{ 0x8a12, 0x1028, 0x08b0, quirk_edp_limit_rate_hbr2 },
+	{ 0x8a52, 0x1028, 0x08b0, quirk_edp_limit_rate_hbr2 },
 };
 
 static const struct intel_dpcd_quirk intel_dpcd_quirks[] = {
-- 
2.34.1

