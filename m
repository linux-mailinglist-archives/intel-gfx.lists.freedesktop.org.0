Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E456D4FF6B9
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Apr 2022 14:25:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 12A2810E77F;
	Wed, 13 Apr 2022 12:25:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95AE310E77F;
 Wed, 13 Apr 2022 12:25:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649852752; x=1681388752;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QJZkE/C2k5PNo38Ghb8NsQz3sWC0O7GbQ+rXTmp2Xn8=;
 b=etVqzBCWI1TRaZU9uInJxI606BjuY6WyBb9bzwACYJf6muhCO+y0aFTU
 yCV8eqTM1mmzzAi9CekF8wMTqORYwkmG2fcMoYKFdaOa+IR/VkV/q6DYS
 briapJMfkHrploIwWivJ97XIYhTOQYkL7+z0pMZskprE5ly2DrhTtvTlm
 SlmFVYzB/Ae+y5SHcJ6BJzGOt33IC/rLsn5mGgqo0C6q/0bo7ZF1tg615
 UVnnjm9xddVpwp/1y1l2/7CbySF57hp2eF24s57b7uQcxN2Vt3qeFSxtI
 ac6kye7V/4GiKVnQslwKzwHrFJHAm7m7HkL8ecrnFVlcYc7bHkwe1CQJl w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10315"; a="244536259"
X-IronPort-AV: E=Sophos;i="5.90,256,1643702400"; d="scan'208";a="244536259"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 05:25:52 -0700
X-IronPort-AV: E=Sophos;i="5.90,256,1643702400"; d="scan'208";a="526921726"
Received: from psoltysi-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.149.160])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2022 05:25:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gvt-dev@lists.freedesktop.org
Date: Wed, 13 Apr 2022 15:25:38 +0300
Message-Id: <48b772795b7ab674f609ecad53b4882c66a8262a.1649852517.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1649852517.git.jani.nikula@intel.com>
References: <cover.1649852517.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/gvt: fix trace TRACE_INCLUDE_PATH
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 Zhi Wang <zhi.wang.linux@gmail.com>, Jason Gunthorpe <jgg@nvidia.com>,
 Christoph Hellwig <hch@lst.de>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

TRACE_INCLUDE_PATH should be a path relative to define_trace.h, not the
file including it. (See the comment in include/trace/define_trace.h.)

Cc: Zhi Wang <zhi.wang.linux@gmail.com>
Cc: Christoph Hellwig <hch@lst.de>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gvt/trace.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/trace.h b/drivers/gpu/drm/i915/gvt/trace.h
index 6d787750d279..020f1aa28322 100644
--- a/drivers/gpu/drm/i915/gvt/trace.h
+++ b/drivers/gpu/drm/i915/gvt/trace.h
@@ -377,7 +377,7 @@ TRACE_EVENT(render_mmio,
 
 /* This part must be out of protection */
 #undef TRACE_INCLUDE_PATH
-#define TRACE_INCLUDE_PATH .
 #undef TRACE_INCLUDE_FILE
+#define TRACE_INCLUDE_PATH ../../drivers/gpu/drm/i915/gvt
 #define TRACE_INCLUDE_FILE trace
 #include <trace/define_trace.h>
-- 
2.30.2

