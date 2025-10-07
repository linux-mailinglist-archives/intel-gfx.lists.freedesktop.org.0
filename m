Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 830C2BC0899
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Oct 2025 09:57:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 01DCE10E596;
	Tue,  7 Oct 2025 07:57:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bvVyh7bk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E14D910E592
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Oct 2025 07:57:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759823871; x=1791359871;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W11gCCSQxh4FP1RarZ6/OiIVU6THacl5nR367hwXdXM=;
 b=bvVyh7bkx8ujaL2/XTNWKpzLmFyE80snXwEEjY7cytX2ChTch3tEGaFg
 0vqFhel6osfk8jbyeDLqUUzN+Qxs9aBo8W1X//6kCvBh3/+1N5ZAXlObQ
 dXP2CIbQWiuUvLGcnhwWsLYjtUuq6CSy/2nfFAgFRN1cN9BscrKLg8Th5
 F8habjQfIa8HoLgQFV8wArUGP33DdI5VnXATWMVI4pbktHoBDP2l00Ue9
 CuIqrohJ2V6W0k0yTmFPzmWOekE9PXyIpNF/9q23aQ8DElKVDAtdu8mUL
 53YP2xZSolAq9OvCyFjgLZDG1rls9UyzHPVzP9y0IYjKS3LTQvsem6uOH Q==;
X-CSE-ConnectionGUID: Psxg6yWlT06lg8kn+SpBXA==
X-CSE-MsgGUID: JdqDNL9eQuWkD7mfQqcdhQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11574"; a="73104907"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="73104907"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 00:57:51 -0700
X-CSE-ConnectionGUID: 1Mmb1CufSsesrHCmCwUmQg==
X-CSE-MsgGUID: QyLTr4OJQsymyu4K9ICc6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="180017686"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.206])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 00:57:49 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 3/7] drm/i915/wm: remove stale FIXME in
 skl_needs_memory_bw_wa()
Date: Tue,  7 Oct 2025 10:56:37 +0300
Message-ID: <20251007075729.468669-4-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251007075729.468669-1-luciano.coelho@intel.com>
References: <20251007075729.468669-1-luciano.coelho@intel.com>
MIME-Version: 1.0
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

This FIXME has been there forever and apparently the _proper code_ has
never been added, and, since it's a very old platform alreday, most
likely never will.  It hasn't been a problem to keep the workaround
for all cases, so let's drop the FIXME tag.

Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Signed-off-by: Luca Coelho <luciano.coelho@intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 5e69fe034d6a..3a982458395e 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -83,8 +83,8 @@ u8 intel_enabled_dbuf_slices_mask(struct intel_display *display)
 }
 
 /*
- * FIXME: We still don't have the proper code detect if we need to apply the WA,
- * so assume we'll always need it in order to avoid underruns.
+ * We don't have the proper code detect if we need to apply the WA, so
+ * assume we'll always need it in order to avoid underruns.
  */
 static bool skl_needs_memory_bw_wa(struct intel_display *display)
 {
-- 
2.51.0

