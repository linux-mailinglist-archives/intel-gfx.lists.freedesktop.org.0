Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2EDA59F583
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Aug 2022 10:46:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D97110F09C;
	Wed, 24 Aug 2022 08:46:00 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3018F10F09C;
 Wed, 24 Aug 2022 08:45:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661330735; x=1692866735;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=uWNiR7M8bUT4JAhynBPIOlI6cvuOcXNpkpD1siwzhag=;
 b=bR9Qn8//HPNLY+nH+ZEYu4iwTetoAuUWvrPWDthMaINP6lonhgob7eLv
 r5eiTq5ZWfkl88Zr6STUdkmemLf5zV+23FiF8bSW3qX2GAE9aYjzhd3Li
 enA8ETkYgFSdSO/iDFIaMRn1JqNjx72XNxZSj4/WeXAxPK2UDkwTJfULX
 wtjpjDGOSsFScMWsEsB/VcjnnqJdv1zbVnc0Nk3X6QqlAXP0DKF8coym1
 0RzSTsE6xPzA64tx7pEWREEDNeYru5c76HfP+kmM15D+ud445qafBTjlG
 z4pU0q8tPKASb6zZVmnwBqDyALaGGd24VivAnru0L14uoq637LToTv7Yt A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="291473663"
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="291473663"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 01:45:34 -0700
X-IronPort-AV: E=Sophos;i="5.93,260,1654585200"; d="scan'208";a="785553971"
Received: from yuhsuanc-mobl.gar.corp.intel.com (HELO
 paris.amr.corp.intel.com) ([10.254.38.238])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2022 01:45:31 -0700
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 24 Aug 2022 17:45:08 +0900
Message-Id: <20220824084514.2261614-3-gwan-gyeong.mun@intel.com>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220824084514.2261614-1-gwan-gyeong.mun@intel.com>
References: <20220824084514.2261614-1-gwan-gyeong.mun@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 2/8] util_macros: Add exact_type macro to
 catch type mis-match while compiling
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
Cc: thomas.hellstrom@linux.intel.com, keescook@chromium.org,
 jani.nikula@intel.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, chris@chris-wilson.co.uk, airlied@linux.ie,
 andrzej.hajda@intel.com, matthew.auld@intel.com, daniel@ffwll.ch,
 intel-gfx-trybot@lists.freedesktop.org, mchehab@kernel.org,
 nirmoy.das@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It adds exact_type and exactly_pgoff_t macro to catch type mis-match while
compiling. The existing typecheck() macro outputs build warnings, but the
newly added exact_type() macro uses the BUILD_BUG_ON() macro to generate
a build break when the types are different and can be used to detect
explicit build errors.

v6: Move macro addition location so that it can be used by other than drm
    subsystem (Jani, Mauro, Andi)

Signed-off-by: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Cc: Matthew Auld <matthew.auld@intel.com>
Cc: Nirmoy Das <nirmoy.das@intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>
---
 include/linux/util_macros.h | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/include/linux/util_macros.h b/include/linux/util_macros.h
index 72299f261b25..b6624b275257 100644
--- a/include/linux/util_macros.h
+++ b/include/linux/util_macros.h
@@ -2,6 +2,9 @@
 #ifndef _LINUX_HELPER_MACROS_H_
 #define _LINUX_HELPER_MACROS_H_
 
+#include <linux/types.h>
+#include <linux/bug.h>
+
 #define __find_closest(x, a, as, op)					\
 ({									\
 	typeof(as) __fc_i, __fc_as = (as) - 1;				\
@@ -38,4 +41,26 @@
  */
 #define find_closest_descending(x, a, as) __find_closest(x, a, as, >=)
 
+/**
+ * exact_type - break compile if source type and destination value's type are
+ * not the same
+ * @T: Source type
+ * @n: Destination value
+ *
+ * It is a helper macro for a poor man's -Wconversion: only allow variables of
+ * an exact type. It determines whether the source type and destination value's
+ * type are the same while compiling, and it breaks compile if two types are
+ * not the same
+ */
+#define exact_type(T, n) \
+	BUILD_BUG_ON(!__builtin_constant_p(n) && !__builtin_types_compatible_p(T, typeof(n)))
+
+/**
+ * exactly_pgoff_t - helper to check if the type of a value is pgoff_t
+ * @n: value to compare pgoff_t type
+ *
+ * It breaks compile if the argument value's type is not pgoff_t type.
+ */
+#define exactly_pgoff_t(n) exact_type(pgoff_t, n)
+
 #endif
-- 
2.37.1

