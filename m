Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DBB75EBE5F
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Sep 2022 11:20:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 49EB210E0C7;
	Tue, 27 Sep 2022 09:20:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 26F6310E0C7
 for <intel-gfx@lists.freedesktop.org>; Tue, 27 Sep 2022 09:20:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1664270448; x=1695806448;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=h9qOVy+Yiw+GnoPZmuq9MY8cyxka9F3419Kp1DsXXOM=;
 b=ky/Kisi35weBxKCsUnAGxqsUp0EmSOFONQr8Ml8fwUMZ/Kz+G6sZmJoq
 WTRUHhJZkcR2kB54n8o2xt4l37YxP8Mk4UAtr776dOSEt/IQ06JThFKw3
 hGo3oSPo/gvOzSw067VRoktx484/n4QWzlBbXJTcysy5qI1FHawtGxUuh
 Zt2/HaqP7MN8yQN71LeQz8869rObsdzNwD0LnngGPCyEVkQiqqy8+T2Sl
 3xf8e0rXqNyccUrN8PiyrG0zV09hbQLFoRI1DhRqXg+yVN6IOqCkYdvpG
 K5+2ElEXNFA5gXoF4G55PWFLalptsn8maL/aleZkjTXSNBzRfJnxF6S/U w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="387555494"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="387555494"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Sep 2022 02:20:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10482"; a="623690572"
X-IronPort-AV: E=Sophos;i="5.93,349,1654585200"; d="scan'208";a="623690572"
Received: from sorvi2.fi.intel.com ([10.237.72.194])
 by fmsmga007.fm.intel.com with ESMTP; 27 Sep 2022 02:20:46 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 27 Sep 2022 12:16:25 +0300
Message-Id: <20220927091625.2127039-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Add check for null dereference
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

fixed_mode in intel_edp_add_properties() function may be NULL
which is used later on in the function. Return early, in case of
fixed_mode is NULL to avoid NULL dereference.

Discovered by klockwork static analysis.

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>

Signed-off-by: Mika Kahola <mika.kahola@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 6ebd6e104b2c..db2541873f9d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -5188,6 +5188,9 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
 	const struct drm_display_mode *fixed_mode =
 		intel_panel_preferred_fixed_mode(connector);
 
+	if (!fixed_mode)
+		return;
+
 	intel_attach_scaling_mode_property(&connector->base);
 
 	drm_connector_set_panel_orientation_with_quirk(&connector->base,
-- 
2.34.1

