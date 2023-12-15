Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 94F1F814665
	for <lists+intel-gfx@lfdr.de>; Fri, 15 Dec 2023 12:09:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32F3510E9EB;
	Fri, 15 Dec 2023 11:09:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 826C910E9FE
 for <intel-gfx@lists.freedesktop.org>; Fri, 15 Dec 2023 11:09:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1702638587; x=1734174587;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=4FdgGXxrKYlxrDn5aO+3d3a4j4yWEY9Su9mAl9oPVu8=;
 b=BAVgKbJnFrTOcXq+P+XwZ/Lz9oZ0ANQZ+2x0l+s3MjgrwmZEcB530peo
 DEo4rCX7qSGlz0QYs5Zv9xP8tJAzc+IqX1Xpisc4i0Pvo+j+2ud48xZJA
 L8EXO9gEVE/Ri4kaJpAskoXkCUNrrbWnK3Hj57v/I89GV95uVktzPyqIq
 apdZizfvaL/elw2Xbq/z34UBNb5tkyAQI9AsnOy1hcmpPoslQpGK9HfbA
 TEAUBlZTu2HYKFdNzZfTgymvxmV8X6Dmcy9k+RCdTM8lFvje2ED3qGtoj
 kqerJ6Jxe0jt/k9ZNGJO2XKxYLROL9WQTrc5wOpPZf9IrLzHikHBPgn1W Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="394138155"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="394138155"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2023 03:09:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="767946046"
X-IronPort-AV: E=Sophos;i="6.04,278,1695711600"; d="scan'208";a="767946046"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2023 03:09:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 15 Dec 2023 13:09:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 3/3] drm/i915: Pin error_capture to high end of mappable
Date: Fri, 15 Dec 2023 13:09:33 +0200
Message-ID: <20231215110933.9188-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231215110933.9188-1-ville.syrjala@linux.intel.com>
References: <20231215110933.9188-1-ville.syrjala@linux.intel.com>
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

If we fail to pin error_capture to the start of ggtt (which
is likely given the BIOS fb is usually there), we currently
fall back to pinning it at the next available low address.
This seems somewhat sub-optimal to me in case we later discard
the BIOS fb (fairly likely if there are multiple different sized
displays connected at boot). We are then then left with a
permanenly pinned object somewhere in the middle of the mappable
range of ggtt. It seems more sensible to pin the error capture
object to the end of mappable as a fallback, so even if we discard
the BIOS fb we are left with the mappable region mostly in one
piece (potentially allowing for more/larger objects to be pinned
there later).

Though I suppose we are chopping the ggtt address space as a
whole into two chunks in a slightly different way. Essentially
reducing the size of the second (larger) chunk a bit. So perhaps
pinning truly massive objects (which don't strictly need to
be mappable) could become a bit more difficult.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/gt/intel_ggtt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c b/drivers/gpu/drm/i915/gt/intel_ggtt.c
index 21a7e3191c18..f62008962eb5 100644
--- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
+++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
@@ -876,7 +876,7 @@ static int init_ggtt(struct i915_ggtt *ggtt)
 						    ggtt->error_capture.size, 0,
 						    ggtt->error_capture.color,
 						    0, ggtt->mappable_end,
-						    DRM_MM_INSERT_LOW);
+						    DRM_MM_INSERT_HIGH);
 	}
 	if (drm_mm_node_allocated(&ggtt->error_capture)) {
 		u64 start = ggtt->error_capture.start;
-- 
2.41.0

