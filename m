Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1F48CFEA4
	for <lists+intel-gfx@lfdr.de>; Mon, 27 May 2024 13:11:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E74EE10F4BE;
	Mon, 27 May 2024 11:11:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EosFl8ex";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CD7FF10F4C3
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 May 2024 11:11:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716808304; x=1748344304;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=GqMru+csLfZYVoZbOcwC1ReYlvs9kj9oyacRYfeZSxA=;
 b=EosFl8exrBwdUIrlt66BLFI1fZ+QiAVWU9R5Jr87nEcg0BxVG/oHmF0i
 JpjCXF+Cj9VScfvRETVCim5xRlSS+BBSfGWv2Xfa/9KHr9Rwqnt3QUoM0
 Yc3vv9f+3Lm1BunVry0sgozjq28UEdP/Lb7MtJTXhiQE77P5cK9yToYSH
 Hgb8qHersSUpmASbGwwikxx1n3qfdh17+reWJ/xIULXu+NN891whaxwul
 W4wkaPl1kepp5IAsv3v49Y8MHjFjDXh78Xc3XeR7ZdfAO9RQ2YEDKGW4U
 fAVYBZWx/jfpVZbTz5IPk1emOQMgBdnrNlIS4evqmWtS3J9HYZTyYWOHQ A==;
X-CSE-ConnectionGUID: AZnXAt3aQrCjA/J2IwNpJA==
X-CSE-MsgGUID: E/KSbsFvQpiTqjyFsyGq6Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11084"; a="24535609"
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="24535609"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:11:44 -0700
X-CSE-ConnectionGUID: c3ry5r/SRr2JUdP3qlBb8w==
X-CSE-MsgGUID: e2JQjaRWQp67F7QQXOjisA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,192,1712646000"; d="scan'208";a="34620703"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.200])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 04:11:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 10/11] drm/i915: pass dev_priv explicitly to
 ICL_VIDEO_DIP_PPS_ECC
Date: Mon, 27 May 2024 14:10:52 +0300
Message-Id: <620fd2da6eea334bf9a5d1b93717ca1176c4203e.1716808214.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1716808214.git.jani.nikula@intel.com>
References: <cover.1716808214.git.jani.nikula@intel.com>
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
explicitly to the ICL_VIDEO_DIP_PPS_ECC register macro.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 5fe0a0c6514f..57e805dcf4c6 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -3484,7 +3484,7 @@
 #define HSW_TVIDEO_DIP_VSC_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _HSW_VIDEO_DIP_VSC_DATA_A + (i) * 4)
 #define GLK_TVIDEO_DIP_DRM_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _GLK_VIDEO_DIP_DRM_DATA_A + (i) * 4)
 #define ICL_VIDEO_DIP_PPS_DATA(dev_priv, trans, i)	_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_DATA_A + (i) * 4)
-#define ICL_VIDEO_DIP_PPS_ECC(trans, i)		_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_ECC_A + (i) * 4)
+#define ICL_VIDEO_DIP_PPS_ECC(dev_priv, trans, i)		_MMIO_TRANS2(dev_priv, trans, _ICL_VIDEO_DIP_PPS_ECC_A + (i) * 4)
 /*ADLP and later: */
 #define ADL_TVIDEO_DIP_AS_SDP_DATA(trans, i)	_MMIO_TRANS2(dev_priv, trans,\
 							     _ADL_VIDEO_DIP_AS_DATA_A + (i) * 4)
-- 
2.39.2

