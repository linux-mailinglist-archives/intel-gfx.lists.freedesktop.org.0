Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 290BE9AE63D
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 15:28:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B687C10E93A;
	Thu, 24 Oct 2024 13:28:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V4+QF8xF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ABFE10E940;
 Thu, 24 Oct 2024 13:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729776478; x=1761312478;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=kv3/DDUMPFumamS7WD1We0o9MHBpqinSIKrxe9vmHHA=;
 b=V4+QF8xFJxkczecos0eqOgLLGjQSDUKLDG0vvyDOzdQgOEcXXxD+xs6M
 0tFx1RDwbfQvcXmRhJj75n3N5dnD6RuRjoGI7Lsp6ybLzbim4P14QBint
 vLP61HYZTxjmAfC3r2pegnuGpfoyNFohFuloG7YdaeL0tql9Oh/GUYPe9
 sJMSuk/Y0RSPd5eEJb2mIeiZicIHzLA4PbkRFdYiE271b9hLP2Kk8gsjS
 u31GgCpyKl6EeqtkZr3FcUMIJpETJ9KWezRr/jJJR099fbz4LY6GSh4ED
 MgfTVopsq1sp8ADOtTIz9F7LU6ZIb2Nmw9X3DW9hS4LflrZl/MSIiSlNQ Q==;
X-CSE-ConnectionGUID: 5XIg6WBbQIe+BbyuU5j6+Q==
X-CSE-MsgGUID: 9w131fQ7QueHyNEJ9KRXUw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="51947963"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="51947963"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 06:27:58 -0700
X-CSE-ConnectionGUID: th9YDMadSfS0beE1Wob+cQ==
X-CSE-MsgGUID: 3MkLw5UtRHO/sf+WWML8XA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="80511512"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 06:27:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v2 02/12] drm/i915/cx0: remove unnecessary includes
Date: Thu, 24 Oct 2024 16:27:32 +0300
Message-Id: <ac5f6b94b9ba7b3d1d54d0dc26c9ceff5a88b6f5.1729776384.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1729776384.git.jani.nikula@intel.com>
References: <cover.1729776384.git.jani.nikula@intel.com>
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

There's nothing in the header that requires the bit or bitfield
headers. Remove.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cx0_phy.h | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.h b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
index 9004b99bb51f..3555a9bc1de9 100644
--- a/drivers/gpu/drm/i915/display/intel_cx0_phy.h
+++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.h
@@ -7,8 +7,6 @@
 #define __INTEL_CX0_PHY_H__
 
 #include <linux/types.h>
-#include <linux/bitfield.h>
-#include <linux/bits.h>
 
 enum icl_port_dpll_id;
 struct drm_i915_private;
-- 
2.39.5

