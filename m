Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0006B2B1BD4
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Nov 2020 14:25:24 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FB306E4DE;
	Fri, 13 Nov 2020 13:25:23 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 413156E4D4
 for <Intel-gfx@lists.freedesktop.org>; Fri, 13 Nov 2020 13:25:22 +0000 (UTC)
IronPort-SDR: vR4spXImnuB5nyN9LGM9qCwhA4DvU7u4+AiTXnXBYmVKZfoEvDs3g9Y2yuNmQXaBL+wn1z1dfc
 MGtkOwXOv5Qg==
X-IronPort-AV: E=McAfee;i="6000,8403,9803"; a="158247477"
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="158247477"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 05:25:21 -0800
IronPort-SDR: 4F8ImiyPGQRw+6rBC4AxkBdDjNx7O8YjjMXJrQ/Qrj9+zMTuExWRtKHD3TJXeq2VIquwwnelbS
 NiqboWV+Aaog==
X-IronPort-AV: E=Sophos;i="5.77,475,1596524400"; d="scan'208";a="542655300"
Received: from shalomzo-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.251.180.188])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2020 05:25:19 -0800
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org
Date: Fri, 13 Nov 2020 13:25:10 +0000
Message-Id: <20201113132510.2298483-1-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Avoid memory leak with more than 16
 workarounds on a list
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

I forgot to free the old list when growing past 16 entries.

Luckily, as much as I checked, none of the current platforms has more than
16 workarounds on a single list.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Fixes: 452420d22d5b ("drm/i915: Fuse per-context workaround handling with the common framework")
Reported-by: Chris Wilson <chris@chris-wilson.co.uk>
---
 drivers/gpu/drm/i915/gt/intel_workarounds.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_workarounds.c b/drivers/gpu/drm/i915/gt/intel_workarounds.c
index fed9503a7c4e..adc9a8ea410a 100644
--- a/drivers/gpu/drm/i915/gt/intel_workarounds.c
+++ b/drivers/gpu/drm/i915/gt/intel_workarounds.c
@@ -131,8 +131,10 @@ static void _wa_add(struct i915_wa_list *wal, const struct i915_wa *wa)
 			return;
 		}
 
-		if (wal->list)
+		if (wal->list) {
 			memcpy(list, wal->list, sizeof(*wa) * wal->count);
+			kfree(wal->list);
+		}
 
 		wal->list = list;
 	}
-- 
2.25.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
