Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F743B8B162
	for <lists+intel-gfx@lfdr.de>; Fri, 19 Sep 2025 21:31:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BADFA10EA89;
	Fri, 19 Sep 2025 19:30:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JNm+zhuz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DBFAD10EA87;
 Fri, 19 Sep 2025 19:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758310257; x=1789846257;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=1G0N0SZyFxVJFNP7d6UoBXxZkVnVilwwUrtwdhjGcBQ=;
 b=JNm+zhuz6GfmOJlOKreLJZdQFhw4Yjnws4V6Df31IgnMm1T3h0bnIUzJ
 L7uc4yx5HgJQHE4UKjNIOG+cp7MKzic5823PgEE5CCKhWH4erdY6aCH8V
 XCGkEaBC8F4nLvPl2qeliN54tGINXtQuTntTzhOzjh3SnS3V/Ip64gpyr
 TH9gkcAn9k7O6TXwap1opEw66/kjDeepGQ9PrtulDcN8ZCvz1W8QgF8rp
 6v8XGsrU9ctCn5ZW0jK9eycc5mAcX4lr8XkDt8QvjtV1vxcxboGxMbMkb
 tiMVQwVGBX0tLf4SP15g3Kp0BMw/qUMafrG0JeZ6vA+O54jaF29b7lyWr A==;
X-CSE-ConnectionGUID: XWTsLHxVSKeONGQDArBsXg==
X-CSE-MsgGUID: jNiGgBq0QLq85XA1lMtPFA==
X-IronPort-AV: E=McAfee;i="6800,10657,11558"; a="48240341"
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="48240341"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:57 -0700
X-CSE-ConnectionGUID: VsmkTW4GRj+JvpfRJpKcRQ==
X-CSE-MsgGUID: 1skEh4f9T6SoK/irVy+NCw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,278,1751266800"; d="scan'208";a="175037338"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.112])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2025 12:30:55 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 12/13] drm/i915: Print both the original and adjusted wm
 latencies
Date: Fri, 19 Sep 2025 22:29:59 +0300
Message-ID: <20250919193000.17665-13-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250919193000.17665-1-ville.syrjala@linux.intel.com>
References: <20250919193000.17665-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

In order to help with debugging print both the original wm
latencies read from the mailbox/etc., and the final fixed/adjusted
values.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 2a40c135cb96..9d58c28d3bdf 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3344,9 +3344,11 @@ static void skl_setup_wm_latency(struct intel_display *display)
 	else
 		skl_read_wm_latency(display);
 
+	intel_print_wm_latency(display, "original", display->wm.skl_latency);
+
 	adjust_wm_latency(display);
 
-	intel_print_wm_latency(display, "Gen9 Plane", display->wm.skl_latency);
+	intel_print_wm_latency(display, "adjusted", display->wm.skl_latency);
 }
 
 static struct intel_global_state *intel_dbuf_duplicate_state(struct intel_global_obj *obj)
-- 
2.49.1

