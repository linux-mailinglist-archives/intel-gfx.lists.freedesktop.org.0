Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26C128AAC61
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Apr 2024 12:04:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B23D410EC5C;
	Fri, 19 Apr 2024 10:04:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aek3rbEY";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AE8210EC5C
 for <intel-gfx@lists.freedesktop.org>; Fri, 19 Apr 2024 10:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713521059; x=1745057059;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cSb1qQeVGZBRem6f7+0CezJa0uer6NmrxACKbZaVAMw=;
 b=aek3rbEYraf8oYeU8yKxsn76TYFAfr5n3dv6emuuGO4pTUVKJ5hrWqdQ
 4TcBJDyaZ7VpG0OjG0dP5S8V2kyuCeYPQsEfYfASOZ+dvDyX1T+YKJZHt
 gfhVkOSvtrAGIR0buD6or6lSUKclpGfaXvuQAGQP586I+7ctcbB8Mh8wY
 WGTV1R7lyOeblJYL+a1/2HfnMQw+IMKfmIvURfvTW7wajKuzzeB62QHAN
 X8+6QRyU+ZvrQwP0JM9P+vKzmYGyIKtX3rZ8AsQKvMiyqDuBIhC4Y/eRZ
 pfN7/FdipVr2jUiHEOsvu1ahxwe0FKJOyZj64hE/eUXO+4WivP8/lOtSq A==;
X-CSE-ConnectionGUID: p6PGaX1MRsSGpbS6bJ7Uow==
X-CSE-MsgGUID: gIH9cXo8Qx6V596G0iFEXA==
X-IronPort-AV: E=McAfee;i="6600,9927,11047"; a="8975146"
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; 
   d="scan'208";a="8975146"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 03:04:17 -0700
X-CSE-ConnectionGUID: lEzsrpVpRQGdPacllBzIRg==
X-CSE-MsgGUID: vvAqO+4QRna5uN4BpuzBFA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,213,1708416000"; d="scan'208";a="23787987"
Received: from agherasi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.46.119])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Apr 2024 03:04:16 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH v2 1/4] drm/i915/dsi: remove unused _MIPIA_AUTOPWG register
 definition
Date: Fri, 19 Apr 2024 13:04:03 +0300
Message-Id: <57afda02856a68f78fe4d30384d4f7b352b9a812.1713520813.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1713520813.git.jani.nikula@intel.com>
References: <cover.1713520813.git.jani.nikula@intel.com>
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

There are other unused registers, but this is also unusable and
inadequate. Remove.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/vlv_dsi_regs.h | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
index abbe427e462e..b0cdaad7db9c 100644
--- a/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
+++ b/drivers/gpu/drm/i915/display/vlv_dsi_regs.h
@@ -93,9 +93,6 @@
 #define  TEARING_EFFECT_DELAY_SHIFT			0
 #define  TEARING_EFFECT_DELAY_MASK			(0xffff << 0)
 
-/* XXX: all bits reserved */
-#define _MIPIA_AUTOPWG			(VLV_DISPLAY_BASE + 0x611a0)
-
 /* MIPI DSI Controller and D-PHY registers */
 
 #define _MIPIA_DEVICE_READY		(_MIPI_MMIO_BASE(dev_priv) + 0xb000)
-- 
2.39.2

