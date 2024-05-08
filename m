Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6FF8C0160
	for <lists+intel-gfx@lfdr.de>; Wed,  8 May 2024 17:48:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF8261126D9;
	Wed,  8 May 2024 15:48:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WKi2Lmqz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2DF5F1126D9
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 May 2024 15:48:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715183307; x=1746719307;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=fpFcFE4eTjEKBmwC5A+Mcv1O6Q/sZgcQ846b0nLVpxs=;
 b=WKi2Lmqz6wqtqqicB5D/vHlmaKhVX87hewu09A1ewaL56KF6zOUE6w80
 hvXpQ7PRDQrA8S71n8Nv6kMYMxU+kx0PXI8RAESvPV1l8fK8+DKz5mD4w
 dvbVxcG7MXTvKpuDnthYSb77Rwrs6ErLsMlpLQg8YaasKaXUci5jhNSBD
 ul8Vc5BKZrZhKiRt06eJtNg4W04hMVk3CjauYaUfeqRcdRArPLwM0PZYC
 EVIWAmPmD4FHrlrKl82rRqxG71IycoQXAy7O2UB2oUg9vTSs8vaVfbR5O
 a36wHpm9rMWxn1Pu6ZkfEpgmVNhVUc4SGswWy+uTVS/9iDLSp8/TK6Qsf Q==;
X-CSE-ConnectionGUID: dtFSdTd6Rq6EePK4AwA1pw==
X-CSE-MsgGUID: dYHS2vp8SAmQqhrYElHBRQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11067"; a="10925017"
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="10925017"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:27 -0700
X-CSE-ConnectionGUID: op54B7bBQc2UVRuGvY5Uuw==
X-CSE-MsgGUID: HDgpSmu8TGKy3Avv1Kjqtg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,145,1712646000"; d="scan'208";a="52137351"
Received: from mklonows-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.105])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 May 2024 08:48:26 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 06/10] drm/i915: pass dev_priv explicitly to
 TRANS_VRR_VTOTAL_PREV
Date: Wed,  8 May 2024 18:47:52 +0300
Message-Id: <de2c305ffef3df1112234baeae944b8dc84d0707.1715183162.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1715183162.git.jani.nikula@intel.com>
References: <cover.1715183162.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Avoid the implicit dev_priv local variable use, and pass dev_priv
explicitly to the TRANS_VRR_VTOTAL_PREV register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index df43b9eb5374..745ef9a32d88 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1291,7 +1291,7 @@
 #define _TRANS_VRR_VTOTAL_PREV_B	0x61480
 #define _TRANS_VRR_VTOTAL_PREV_C	0x62480
 #define _TRANS_VRR_VTOTAL_PREV_D	0x63480
-#define TRANS_VRR_VTOTAL_PREV(trans)	_MMIO_TRANS2(dev_priv, trans, \
+#define TRANS_VRR_VTOTAL_PREV(dev_priv, trans)	_MMIO_TRANS2(dev_priv, trans, \
 					_TRANS_VRR_VTOTAL_PREV_A)
 #define   VRR_VTOTAL_FLIP_BEFR_BNDR	REG_BIT(31)
 #define   VRR_VTOTAL_FLIP_AFTER_BNDR	REG_BIT(30)
-- 
2.39.2

