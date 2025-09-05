Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE40CB45B4A
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Sep 2025 16:59:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5420110EBD3;
	Fri,  5 Sep 2025 14:59:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RlqpSzvu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 24D9E10EBC7;
 Fri,  5 Sep 2025 14:59:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757084346; x=1788620346;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=M21ph57MMijh8PVjizcExLClJQCrn6I3RhUnTXuiFC4=;
 b=RlqpSzvu1OGhRyiHJBPHKy7qJgSO771u42RSiHPKkm6XT9l6SNkTlF2q
 kURq7gPmW3tvZsi5Treql0b22yEzqPfdI/h/WwmBdrAeaSk7Z0AZ8Xqmg
 +46mKfKgvHHOl2GkwvNfGsTzAwqG4Lidv8EybtiIaujFXTcVHV8NDDOYg
 swVpAG1dDbBzuTMH9s/A9Cw/2wFJcI2pTaJfl2J8B9Ywkh/OxCrUkDdib
 MsXE4G84OCtOhUZ7rVBMt1zYAS5evwjr842yUC284IYlgS0N5y0hInfo6
 YiGjngqKj9LkWRXCMtmtebNgN4BPcyZEBc9Lfz+Tj+SdOu8m10YECKokv Q==;
X-CSE-ConnectionGUID: qkHkum+6Rb6r+q2QRcoNBw==
X-CSE-MsgGUID: aMy3Bv3jQNSrzLKvqf/a8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11544"; a="58469694"
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="58469694"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:59:06 -0700
X-CSE-ConnectionGUID: N6j22nlVSAOLTbHd+I/uKg==
X-CSE-MsgGUID: Al+xUpcFQgmKgjHoERhU9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,241,1751266800"; d="scan'208";a="172105354"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.33])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2025 07:59:04 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 08/13] drm/i915: Use increase_wm_latency() for the 16Gb DIMM
 w/a
Date: Fri,  5 Sep 2025 17:58:27 +0300
Message-ID: <20250905145832.12097-9-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
In-Reply-To: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
References: <20250905145832.12097-1-ville.syrjala@linux.intel.com>
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

Bump the latency for all watermark levels in the
16Gb+ DIMM w/a. The spec does ask us to do it only for level
0, but it seems more sane to bump all the levels. If the actual
memory access is slower then the wakeup (WM1+) should also
potentially happen earlier.

This also avoids the theoretical case that WM0 would get bumped
higher than WM1+. Not that it is likely to happen because the WM0
latency is always significantly lower than the WM1 latency.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index 9eebb908beb8..98a397772678 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3256,7 +3256,7 @@ adjust_wm_latency(struct intel_display *display)
 	 * to avoid any underrun.
 	 */
 	if (need_16gb_dimm_wa(display))
-		wm[0] += 1;
+		increase_wm_latency(display, 1);
 }
 
 static void mtl_read_wm_latency(struct intel_display *display)
-- 
2.49.1

