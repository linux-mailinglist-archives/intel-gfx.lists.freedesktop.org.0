Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B14B49812D
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Jan 2022 14:32:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4B02310EC4E;
	Mon, 24 Jan 2022 13:32:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk
 [IPv6:2a00:1098:0:82:1000:25:2eeb:e3e3])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8F9EB10E527
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Jan 2022 22:23:29 +0000 (UTC)
Received: from sobremesa.fritz.box (unknown
 [IPv6:2a02:8010:65b5:0:bbb0:f8ec:7bc9:dbe4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: alarumbe)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 0C4E51F465DC;
 Fri, 21 Jan 2022 22:23:28 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1642803808;
 bh=O3v0PZrqH6q/uQ8VdahEWhNAIObVOHNGfAOpFmqhzgs=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Q2ZjTywkqr0POxXvcGJfQRu7nGcxhMD0dWXYd4pj4b13yD5yAH3lMa6KITSs119O2
 5f3Wyzo1xCqxE6reiDNhVnssq3WNP+4M72nerBFnvwFlqw5lOW4aVXIAvRVMMwPBO/
 Ps9YDw85y/qE7xKi/DM7vWd7A9b6oYgw2FzbCTOnv1T8PVqx1ZPZrTUrHgYmZT112G
 nFhaB2THjyLX71/sFxZOJyaWIOHjEDNICq1KZCQSaCI0fTgiDNl6+euNyHBzu4cqEx
 iO9741v4wCyoIoiaM9thQynZp0FAbHjY6s6Wa11nGeh8TUKoMlsCHrFmh2yyK9DRFB
 uA1xHDus73OlQ==
From: Adrian Larumbe <adrian.larumbe@collabora.com>
To: daniel@ffwll.ch, ramalingam.c@intel.com, intel-gfx@lists.freedesktop.org
Date: Fri, 21 Jan 2022 22:22:48 +0000
Message-Id: <20220121222252.3296117-2-adrian.larumbe@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220121222252.3296117-1-adrian.larumbe@collabora.com>
References: <20220121222252.3296117-1-adrian.larumbe@collabora.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 24 Jan 2022 13:32:09 +0000
Subject: [Intel-gfx] [RFC PATCH 1/5] drm/i915/flat-CCS: Add GEM bo structure
 fields for flat-CCS
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
Cc: adrian.larumbe@collabora.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

When a flat-CCS aware bo is evicted from lmem, its control surface will be
written out into smem. This will be done in the shape of a kernel-only bo
attached to the original bo.

Signed-off-by: Adrian Larumbe <adrian.larumbe@collabora.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_object_types.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
index 71e778ecaeb8..9f574e149c58 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_object_types.h
@@ -628,6 +628,16 @@ struct drm_i915_gem_object {
 
 		void *gvt_info;
 	};
+
+	/**
+	 * This is set if the object is lmem-placeable, supports flat
+	 * CCS and is compressed. In that case, a separate block of
+	 * stolen lmem memory will contain its compression data.
+	 */
+	struct {
+		struct drm_i915_gem_object *swap;
+		bool enabled:1;
+	} flat_css;
 };
 
 static inline struct drm_i915_gem_object *
-- 
2.34.1

