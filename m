Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C51EB260A37
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Sep 2020 07:40:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E14086E13A;
	Tue,  8 Sep 2020 05:40:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 34B7A6E13A
 for <intel-gfx@lists.freedesktop.org>; Tue,  8 Sep 2020 05:40:50 +0000 (UTC)
IronPort-SDR: Oy6PUJFtrlXOyBrjl4dtZgYY7K4QAP3oOaMnEFWrZ5TCoTmVmbd9xlu4FbomiszcYVWfEpZLY9
 Rn3uSovHyZvw==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="137592775"
X-IronPort-AV: E=Sophos;i="5.76,404,1592895600"; d="scan'208";a="137592775"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Sep 2020 22:40:50 -0700
IronPort-SDR: XPpqqlytyyA01qGEr8NIvMM5xjLvbAK3YO3vzXXgUTqPiePg4swAKB6E5IbUHpp2Ea/ndlEu70
 8g5zu6KK4Nag==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,404,1592895600"; d="scan'208";a="479874336"
Received: from unknown (HELO amanna.iind.intel.com) ([10.223.74.93])
 by orsmga005.jf.intel.com with ESMTP; 07 Sep 2020 22:40:49 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Sep 2020 10:55:40 +0530
Message-Id: <20200908052540.26905-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH] drm/i915: Disable frontbuffer tracking
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>

Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_frontbuffer.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index d898b370d7a4..0f1d7a34dcf7 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -166,6 +166,9 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 {
 	struct drm_i915_private *i915 = to_i915(front->obj->base.dev);
 
+	if (origin != ORIGIN_FLIP)
+		return;
+
 	if (origin == ORIGIN_CS) {
 		spin_lock(&i915->fb_tracking.lock);
 		i915->fb_tracking.busy_bits |= frontbuffer_bits;
@@ -185,6 +188,9 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
 {
 	struct drm_i915_private *i915 = to_i915(front->obj->base.dev);
 
+	if (origin != ORIGIN_FLIP)
+		return;
+
 	if (origin == ORIGIN_CS) {
 		spin_lock(&i915->fb_tracking.lock);
 		/* Filter out new bits since rendering started. */
-- 
2.26.0

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
