Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7673B823431
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Jan 2024 19:17:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9370710E165;
	Wed,  3 Jan 2024 18:17:21 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E1C010E165
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Jan 2024 18:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704305840; x=1735841840;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f0ugLSuDokCdlfnp2fiMpkLT45kBd0mm8s3qgPj4OQk=;
 b=M92aou3FU7xN6kkMlRfobuG85BCda7F6yeNkI0pBg6mA1KoKmWsQG3xY
 Ya4LXm8bfCW5E74DA36wEX0alfCadPyFhf0p4RVAxSjjXWsxoIaip+ryF
 7hDhzdAGyHQC+LONImULrezCxDTf7jcMv3iTx2E8YFBsNnsVsoXIzX7sN
 fM0xKS/LQfR9+FVv0CHabVBtIgLqlT7C9HYRppd9deDaa8hDwDgG31pr2
 9Z+F8ZB5SFMt1pL32SbHEPIvnHj2JzESHONpdEEybUeLsAM9h83y3ip5a
 zjW3jKZrXc/+cOevRho8KJ1L1+eNtG0c6cfFk6z3BDAwWbvefY+R4/ygB g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="463447020"
X-IronPort-AV: E=Sophos;i="6.04,328,1695711600"; d="scan'208";a="463447020"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 10:17:20 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10942"; a="756280267"
X-IronPort-AV: E=Sophos;i="6.04,328,1695711600"; d="scan'208";a="756280267"
Received: from josouza-mobl2.bz.intel.com ([10.87.243.88])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2024 10:17:18 -0800
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH v2] drm/i915: Disable DSB in Xe KMD
Date: Wed,  3 Jan 2024 10:17:14 -0800
Message-ID: <20240103181714.200828-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.43.0
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Often getting DBS overflows when starting Xorg or Wayland compositors
when running Xe KMD.
Issue was reported but nothing was done, so disabling DSB as whole
until properly fixed in Xe KMD.

v2:
- move check to HAS_DSB(Jani)

Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/989
Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1031
Link: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/1072
Cc: Animesh Manna <animesh.manna@intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index fe42688137863..faa49aced46a5 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -45,7 +45,12 @@ struct drm_printer;
 #define HAS_DP_MST(i915)		(DISPLAY_INFO(i915)->has_dp_mst)
 #define HAS_DP20(i915)			(IS_DG2(i915) || DISPLAY_VER(i915) >= 14)
 #define HAS_DPT(i915)			(DISPLAY_VER(i915) >= 13)
+#ifdef I915
 #define HAS_DSB(i915)			(DISPLAY_INFO(i915)->has_dsb)
+#else
+/* TODO: DSB is broken in Xe KMD, so disabling it until fixed */
+#define HAS_DSB(i915)			(false)
+#endif
 #define HAS_DSC(__i915)			(DISPLAY_RUNTIME_INFO(__i915)->has_dsc)
 #define HAS_FBC(i915)			(DISPLAY_RUNTIME_INFO(i915)->fbc_mask != 0)
 #define HAS_FPGA_DBG_UNCLAIMED(i915)	(DISPLAY_INFO(i915)->has_fpga_dbg)
-- 
2.43.0

