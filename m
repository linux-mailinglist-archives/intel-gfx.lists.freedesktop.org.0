Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AA4A2F62B
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 18:58:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3430910E5D3;
	Mon, 10 Feb 2025 17:58:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DA7rGD09";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27C0510E5D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 17:58:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739210325; x=1770746325;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=1eGH8zv8Ts06YqTyjBURQfDUXWuKnEF/T6vEfBIDx8Y=;
 b=DA7rGD09KHHXaXyo08JePTw6L0z9NNZQHWxxoZWc1+9kaMN1hqKq24bW
 3Fg3Sbee6y5p63iTwoqn8spjTAjcTBfRUjMHNYPcbr5ELg8K85g5hudno
 XiA2/oLuEYWlpUzkwHUncN3UEGisJ2+Y1CeVeadHczX/GAK0go0mbmZS6
 A+xNDIcflfQy3/LxevOkjZJf0HrZc18Ddok5bUZikXMOZrpVfSZ3zYtKz
 HSBO9wPQLpovOGp/UzdZ8M55fqsvI7ywTuK8g91IPrOH3k2Y08Dez/VLJ
 dTotS4psBV36UXFnW3uXtqEq0V6pjibe1Uf3f905bG413C/3/M49qfKbA Q==;
X-CSE-ConnectionGUID: ZdZ9vtjnQmSiBgVMJXlrgg==
X-CSE-MsgGUID: WvM/DaySQf6Oc8Hq3P3kSA==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="39002995"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="39002995"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 09:58:45 -0800
X-CSE-ConnectionGUID: jBFWW5leROCCOGDEqpJOhQ==
X-CSE-MsgGUID: byt6ni++TISPCV4Q27F1OA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="112480690"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 10 Feb 2025 09:58:43 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 10 Feb 2025 19:58:42 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH xf86-video-intel 2/7] sna: Don't memcpy() between different
 types
Date: Mon, 10 Feb 2025 19:58:31 +0200
Message-ID: <20250210175836.30984-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
In-Reply-To: <20250210175836.30984-1-ville.syrjala@linux.intel.com>
References: <20250210175836.30984-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Currently we're doing a blind memcpy() from a DDXPointRec
into the beginning of a BoxRec. While this apparently works
it's quite dodgy. Get rid of the memcpy() and simply assign
each member by hand.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 src/sna/fb/fbspan.c | 22 +++++++++++++---------
 1 file changed, 13 insertions(+), 9 deletions(-)

diff --git a/src/sna/fb/fbspan.c b/src/sna/fb/fbspan.c
index 18136c200458..0700d8811efe 100644
--- a/src/sna/fb/fbspan.c
+++ b/src/sna/fb/fbspan.c
@@ -37,14 +37,16 @@ fbFillSpans(DrawablePtr drawable, GCPtr gc,
 {
 	DBG(("%s x %d\n", __FUNCTION__, n));
 	while (n--) {
-		BoxRec box;
-
-		memcpy(&box, pt, sizeof(box));
-		box.x2 = box.x1 + *width++;
-		box.y2 = box.y1 + 1;
+		BoxRec box = {
+			.x1 = pt->x,
+			.y1 = pt->y,
+			.x2 = pt->x + *width,
+			.y2 = pt->y + 1,
+		};
 
 		/* XXX fSorted */
 		fbDrawableRun(drawable, gc, &box, fbFillSpan, NULL);
+		width++;
 		pt++;
 	}
 }
@@ -90,12 +92,14 @@ fbSetSpans(DrawablePtr drawable, GCPtr gc,
 
 	data.src = src;
 	while (n--) {
-		BoxRec box;
+		BoxRec box = {
+			.x1 = pt->x,
+			.y1 = pt->y,
+			.x2 = pt->x + *width,
+			.y2 = pt->y + 1,
+		};
 
-		memcpy(&box, pt, sizeof(box));
 		data.pt = *pt;
-		box.x2 = box.x1 + *width;
-		box.y2 = box.y1 + 1;
 
 		fbDrawableRun(drawable, gc, &box, fbSetSpan, &data);
 
-- 
2.45.3

