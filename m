Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B1479C4D0
	for <lists+intel-gfx@lfdr.de>; Tue, 12 Sep 2023 06:48:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D621810E2CA;
	Tue, 12 Sep 2023 04:48:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B3A2C10E2A8;
 Tue, 12 Sep 2023 04:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694494112; x=1726030112;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yTyl5epY44h6yKWbP9EBJyHQs2200MBy2CmXN2VRQMc=;
 b=CkYH7uSdQ5cbysRDWt34MEupTiLO/Eg01PPDkN+UBsgGYGkmF45FQUba
 JNtWTFV8f7aQ+0h/LAvqQ2nJ+bofl/QHAvH6HPVFgQEO7AzA+BGnBglUY
 BxHu3ZQCz14qhnRncQlvZemLXQ3covyNOlqFG2CTC9iAL9RlvIHQd94Qb
 DwtDrl8l73wP47GAVqAhK34dXgbuasFLmEimW5s9qDE4hopNBBXJSKJ8K
 rRgwhggNao/9BvP+54A8Mcp136RiKL4/beuddj2uXP6t1Qtv6JeBn8/9t
 hyojBQgq2nbaScWL7Vw//wxXJS0was2bpBofvFo9SHab7LlUObIgt5cmB w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="378182306"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="378182306"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="1074419914"
X-IronPort-AV: E=Sophos;i="6.02,245,1688454000"; d="scan'208";a="1074419914"
Received: from lucas-s2600cw.jf.intel.com ([10.165.21.196])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2023 21:48:31 -0700
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Date: Mon, 11 Sep 2023 21:48:10 -0700
Message-Id: <20230912044837.1672060-3-lucas.demarchi@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230912044837.1672060-1-lucas.demarchi@intel.com>
References: <20230912044837.1672060-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 02/29] drm/i915/lnl: Add display definitions
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>

Add Lunar Lake platform definitions for i915 display. The support for
LNL will be added to the xe driver, with i915 only driving the display
side. Xe2 display is derived from the Xe_LPD+ IP; additional feature
deltas will be introduced in subsequent patches, so here it's just
adding a separate xe2_lpd_display struct.

v2: Use a LPDP_FEATURES macro (Matt Roper)

Signed-off-by: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>
Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers/gpu/drm/i915/display/intel_display_device.c
index ddd938bfe7d9..c915c53068c3 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.c
+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
@@ -760,6 +760,10 @@ static const struct intel_display_device_info xe_lpdp_display = {
 	XE_LPDP_FEATURES,
 };
 
+static const struct intel_display_device_info xe2_lpd_display = {
+	XE_LPDP_FEATURES,
+};
+
 /*
  * Separate detection for no display cases to keep the display id array simple.
  *
@@ -839,6 +843,7 @@ static const struct {
 	const struct intel_display_device_info *display;
 } gmdid_display_map[] = {
 	{ 14,  0, &xe_lpdp_display },
+	{ 20,  0, &xe2_lpd_display },
 };
 
 static const struct intel_display_device_info *
-- 
2.40.1

