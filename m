Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 881A76F477E
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:39:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF17010E5AC;
	Tue,  2 May 2023 15:39:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 72DB910E5AC
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:39:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041968; x=1714577968;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=HiDtPG1Re/onQ04wFqyLMSa2izVWeVpSaszGl2jH9oM=;
 b=NrteV/gsGxBKDYnQIJfrEFFG1j2k+L+hs9rzmHRUtWPmYAPlf536juas
 pevmHizG6RubIGC6Mfft9gZcKvGh+l0V2XZ4G/xIVHOtoFrtl3dPlHIqs
 KXCEPl5EC8BvLLsijiIh2c/tGibIGOjxxyV80TXG7nO10BVPx7zswTmAS
 mkbUll4tq/qIGLhOd0tclTfCgIWweLMcac9nSZ+C16nhmSEN/id7ZI/8w
 YOgZuIfWe1t2grHKFFIj/WnUkf6d9CHlB/Uv4I2RXdWmOUbofCD4RXAjm
 qVqHW/Wl51TEJrsdFtD4Bxd77+j6MrXI9zFwFpwxEkfLrPLmt17CkZRzZ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="332791057"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="332791057"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:39:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="699016142"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="699016142"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by fmsmga007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:39:27 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:40 +0300
Message-Id: <0b31edbb33116c8002dd1e72d3ad25efe5dd0176.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 23/24] drm/i915/scatterlist: fix kernel-doc
 parameter documentation
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

drivers/gpu/drm/i915/i915_scatterlist.h:164: warning: Function parameter or member 'release' not described in 'i915_refct_sgt_ops'
drivers/gpu/drm/i915/i915_scatterlist.h:187: warning: Function parameter or member 'rsgt' not described in 'i915_refct_sgt_put'
drivers/gpu/drm/i915/i915_scatterlist.h:198: warning: Function parameter or member 'rsgt' not described in 'i915_refct_sgt_get'
drivers/gpu/drm/i915/i915_scatterlist.h:214: warning: Function parameter or member 'rsgt' not described in '__i915_refct_sgt_init'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_scatterlist.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_scatterlist.h b/drivers/gpu/drm/i915/i915_scatterlist.h
index fe9ae863f9b9..5a10c1a31183 100644
--- a/drivers/gpu/drm/i915/i915_scatterlist.h
+++ b/drivers/gpu/drm/i915/i915_scatterlist.h
@@ -180,7 +180,7 @@ struct i915_refct_sgt {
 
 /**
  * i915_refct_sgt_put - Put a refcounted sg-table
- * @rsgt the struct i915_refct_sgt to put.
+ * @rsgt: the struct i915_refct_sgt to put.
  */
 static inline void i915_refct_sgt_put(struct i915_refct_sgt *rsgt)
 {
@@ -190,7 +190,7 @@ static inline void i915_refct_sgt_put(struct i915_refct_sgt *rsgt)
 
 /**
  * i915_refct_sgt_get - Get a refcounted sg-table
- * @rsgt the struct i915_refct_sgt to get.
+ * @rsgt: the struct i915_refct_sgt to get.
  */
 static inline struct i915_refct_sgt *
 i915_refct_sgt_get(struct i915_refct_sgt *rsgt)
@@ -202,7 +202,7 @@ i915_refct_sgt_get(struct i915_refct_sgt *rsgt)
 /**
  * __i915_refct_sgt_init - Initialize a refcounted sg-list with a custom
  * operations structure
- * @rsgt The struct i915_refct_sgt to initialize.
+ * @rsgt: The struct i915_refct_sgt to initialize.
  * @size: Size in bytes of the underlying memory buffer.
  * @ops: A customized operations structure in case the refcounted sg-list
  * is embedded into another structure.
-- 
2.39.2

