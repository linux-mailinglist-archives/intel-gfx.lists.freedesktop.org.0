Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0138046EE95
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Dec 2021 17:57:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D8E410E895;
	Thu,  9 Dec 2021 16:53:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2535310E11E
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Dec 2021 13:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1639057889; x=1670593889;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=S9UP+I/W8WM8QlKjzdfkw4Cctb9rG1MCSVIYkM8NHUA=;
 b=mscCLlOKn0Z4oYjjfSj1zpAU+5E12YVgojRvJkPFc+ZBAAE9oW0thOC/
 mA89nVUkZD3bJWe2TcxpjfNX0v4tgxCQgbiEuq9oItLMxtTMOx0k4TM9K
 CrkqOopQPST5R2Uqq50B/YnDSoZ3/mG3FCKV5yjkea5XNr96j+yfmLPHP
 P2+L/xKCuuygB0zvTQ3bZtvSGFUbi4ljiAGHwS/8JpfTY1Jb1LDkMPbTM
 U0qIAVTVdjBXN9rccZDa5Dfx6Xue1Bzgay8y+ksoevAolH232gn5UNzgE
 v7wYP5EiOYP5GQ7UuMxHtA3E4rma5/rBsX5MfvHUt34804cefwIHCp0FS w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10192"; a="238323941"
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="238323941"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:51:28 -0800
X-IronPort-AV: E=Sophos;i="5.88,192,1635231600"; d="scan'208";a="462134784"
Received: from cwilso3-mobl.fi.intel.com (HELO localhost) ([10.252.19.112])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2021 05:51:27 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  9 Dec 2021 15:50:59 +0200
Message-Id: <be0ab67ca2964d11ad9365a5f062a64b8523ee59.1639057801.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1639057801.git.jani.nikula@intel.com>
References: <cover.1639057801.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 4/7] drm/i915/fbc: avoid intel_frontbuffer.h
 include with declaration
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Reduce include dependencies using forward declarations.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index b8d9cda85cfc..07ad0411fcc3 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -8,8 +8,7 @@
 
 #include <linux/types.h>
 
-#include "intel_frontbuffer.h"
-
+enum fb_op_origin;
 struct drm_i915_private;
 struct intel_atomic_state;
 struct intel_crtc;
-- 
2.30.2

