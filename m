Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E5861608C
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Nov 2022 11:08:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E2E8910E478;
	Wed,  2 Nov 2022 10:08:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 80E8410E475
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Nov 2022 10:08:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667383721; x=1698919721;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=E2Eqv2GRQZaHmyq+/Et8aFsQcowbDuGrB5OGeVvxeZI=;
 b=b6oaLmLaeR/LQ/1Ow2Dac5GmrUOtf7xm3k/H2qGrOxhd1EdagdR3MmHJ
 xcNFIOjxZp0s6upzPxokRzXyJB7alF/a3WXg11BxZyrpT8vWZWAVR5wRR
 SrL8lnY/Hni23GC/V6uWjqvTUHYWB1W1kxcWxUqY2kPZ/JhE6SB4cMxru
 J7hFVf4gm3jFu9s6eHL727f0+zYjdgfa2/DhxwXGj4jmjKtNWXM2oNPbm
 QW4MNzgw3uK1Dr7ejYRpIVcjocqmAy4AmDPXXfIR1Ri67ADPESrcSHV54
 kTAc9ElXlGwDqQJ/ZrnwObahqoZw1+nW12ur1o9yqihx8o9VeGhILVT9Q Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="296807575"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="296807575"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:08:41 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10518"; a="628899259"
X-IronPort-AV: E=Sophos;i="5.95,232,1661842800"; d="scan'208";a="628899259"
Received: from cjokeeff-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.15.91])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2022 03:08:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed,  2 Nov 2022 12:08:11 +0200
Message-Id: <29b57e168e8af842baad2626959cea258402a2c1.1667383630.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1667383630.git.jani.nikula@intel.com>
References: <cover.1667383630.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v1 03/16] drm/i915: reduce includes in
 intel_fifo_underrun.h
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

Only include what's needed.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fifo_underrun.h | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fifo_underrun.h b/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
index e04f22ac1f49..2e47d7d3c101 100644
--- a/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
+++ b/drivers/gpu/drm/i915/display/intel_fifo_underrun.h
@@ -8,9 +8,8 @@
 
 #include <linux/types.h>
 
-#include "intel_display.h"
-
 struct drm_i915_private;
+enum pipe;
 
 bool intel_set_cpu_fifo_underrun_reporting(struct drm_i915_private *dev_priv,
 					   enum pipe pipe, bool enable);
-- 
2.34.1

