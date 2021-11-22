Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C2B459562
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Nov 2021 20:13:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5474689B78;
	Mon, 22 Nov 2021 19:13:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9D0F389B78
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Nov 2021 19:13:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10176"; a="233576650"
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="233576650"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 11:13:38 -0800
X-IronPort-AV: E=Sophos;i="5.87,255,1631602800"; d="scan'208";a="496992044"
Received: from mikolajk-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.6.157])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2021 11:13:36 -0800
From: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 22 Nov 2021 20:13:14 +0100
Message-Id: <20211122191314.47254-2-zbigniew.kempczynski@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20211122191314.47254-1-zbigniew.kempczynski@intel.com>
References: <20211122191314.47254-1-zbigniew.kempczynski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/1] i915/gem/i915_gem_execbuffer: Disallow
 passing alignment
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Ensure passing alignment is not possible by UMD starting on gens4+.

Inspected UMD code - Mesa, Compute (NEO), Media-Driver, xf86-intel-video
seems to be alignment == 0 ready. Libdrm potentially uses alignment
but it is used in some IGTs which remains intact during libdrm removal
(there's no possibility to properly rewrite those tests due to specific
hw requirement - dual gpus).

Signed-off-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 9f7c6ecadb90..cc012d6ffa02 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -505,6 +505,14 @@ static bool platform_has_relocs_enabled(const struct i915_execbuffer *eb)
 	return false;
 }
 
+static bool platform_allows_pass_alignment(const struct i915_execbuffer *eb)
+{
+	if (GRAPHICS_VER(eb->i915) < 4)
+		return true;
+
+	return false;
+}
+
 static int
 eb_validate_vma(struct i915_execbuffer *eb,
 		struct drm_i915_gem_exec_object2 *entry,
@@ -513,6 +521,9 @@ eb_validate_vma(struct i915_execbuffer *eb,
 	if (entry->relocation_count && !platform_has_relocs_enabled(eb))
 		return -EINVAL;
 
+	if (entry->alignment && !platform_allows_pass_alignment(eb))
+		return -EINVAL;
+
 	if (unlikely(entry->flags & eb->invalid_flags))
 		return -EINVAL;
 
-- 
2.26.0

