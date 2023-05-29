Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A257144BF
	for <lists+intel-gfx@lfdr.de>; Mon, 29 May 2023 08:27:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E5DEF10E222;
	Mon, 29 May 2023 06:27:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D419310E213
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 May 2023 06:27:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685341668; x=1716877668;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yIFro2OixaipKPUBDiH9ufEe7FkQSLIiKfKL8soGkMI=;
 b=GAR+1i499aA7mDI4Rl/LeVi7jNcktInpnoubkkRtqG0v8NJy4hSUmegb
 UAcPjgG0SUgFH0Gna1erhvIPhMDTA7ZHvsqgltvwPmKU5LPnvzDXyQSJp
 hQU9J1BA7Ibqlosd3vMqztlRw7fKE33M7PPyLHfOLgJyCgxc/cdvCtgCw
 dk0hlNuaU+H5TDnecManKaK31xAMlBeENmc7Y0oMyNhx50UI6heU0PUrH
 d7npZZ271aokr2W9uKhDfVJ+kwvN7ULFFGHOSOl4TPwmcYpSoU1o7jULL
 +SfdV/MYlzLiTaUKVJgOR8/sQUPAxmsPC01scHQR49s4Cldw0qdAahUc/ A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="418114389"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="418114389"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 23:27:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10724"; a="739031527"
X-IronPort-AV: E=Sophos;i="6.00,200,1681196400"; d="scan'208";a="739031527"
Received: from ilovin-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.208.33])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2023 23:27:46 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 May 2023 09:27:22 +0300
Message-Id: <20230529062723.1928520-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230529062723.1928520-1-jouni.hogander@intel.com>
References: <20230529062723.1928520-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/4] drm/i915/display: Remove
 i915_gem_object_types.h from intel_frontbuffer.h
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

Now as we have removed all the references to internals of i915_gem_object
from the frontbuffer header we can also remove including
i915_gem_object_types.h.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_frontbuffer.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index eeccc847331d..72d89be3284b 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -28,7 +28,6 @@
 #include <linux/bits.h>
 #include <linux/kref.h>
 
-#include "gem/i915_gem_object_types.h"
 #include "i915_active_types.h"
 
 struct drm_i915_private;
-- 
2.34.1

