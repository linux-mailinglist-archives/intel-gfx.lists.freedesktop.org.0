Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D52C1B84D5A
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Sep 2025 15:31:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65C3410E8AF;
	Thu, 18 Sep 2025 13:31:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="e9Bb7yjN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CEAAE10E8AF;
 Thu, 18 Sep 2025 13:31:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758202312; x=1789738312;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3imyW3YzJKu6pViAVYSi2hR6W24P6cPVjtgItxHcooo=;
 b=e9Bb7yjNVU7IrmP6CJ5j5nHKR5pPibvDbP3K+O9XfdAwoDLaXTcmCONx
 g438XwJelXh3bZOTTvvkIUOMZerx4H8/XbN+MUSSfuM8v1Z3yUyzXb7Ry
 ugD8D4cTpmbGakkOE7BUUC/3PDQRq1e/L24z7PkznEvc/nGNYSS0W4L8e
 5/wWdyNfivshBwzPvCie06brn5jbyVgGln37eckIAt2LLO6Bz0SCb+dkl
 Gk5a260Oa4y0W7QeNYFlAGchD75zmVrPbMDJ38vvEW7zyd8aho8CIagBx
 Ub39WAPDzFKtEGZD1AWZOQwFMejmC+849exW2immnMXil0dBijEylmvek g==;
X-CSE-ConnectionGUID: 8rSGxlJVTtS3Xr15TP/lyg==
X-CSE-MsgGUID: WZ5zjOcQRLq3BmvewnM77Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11557"; a="60596523"
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="60596523"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 06:31:32 -0700
X-CSE-ConnectionGUID: 3aeop8D0Tam/i6vA2EycSw==
X-CSE-MsgGUID: CSEtjB9BQVaifTMISBkSjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,275,1751266800"; d="scan'208";a="175344958"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.255])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Sep 2025 06:31:30 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [PATCH v2 10/13] drm/i915: Flatten sanitize_wm_latency() a bit
Date: Thu, 18 Sep 2025 16:31:27 +0300
Message-ID: <20250918133127.25323-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250905145832.12097-11-ville.syrjala@linux.intel.com>
References: <20250905145832.12097-11-ville.syrjala@linux.intel.com>
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

Move the inner loop out from the outer loop in
sanitize_wm_latency() to flatten things a bit.
Easier to read flat code.

v2: Move the inner loop out completely (Luca)

Cc: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 12 +++++-------
 1 file changed, 5 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index e3305a399ddf..caeba4274de3 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3228,14 +3228,12 @@ static void sanitize_wm_latency(struct intel_display *display)
 	 * of the punit to satisfy this requirement.
 	 */
 	for (level = 1; level < num_levels; level++) {
-		if (wm[level] == 0) {
-			int i;
-
-			for (i = level + 1; i < num_levels; i++)
-				wm[i] = 0;
-			return;
-		}
+		if (wm[level] == 0)
+			break;
 	}
+
+	for (level = level + 1; level < num_levels; level++)
+		wm[level] = 0;
 }
 
 static void
-- 
2.49.1

