Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB774ED7BA
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 12:23:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC38B10F309;
	Thu, 31 Mar 2022 10:23:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D1A5810F309
 for <intel-gfx@lists.freedesktop.org>; Thu, 31 Mar 2022 10:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648722187; x=1680258187;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M3TsZp7+dbgw9BDQJwexJhvrcw9uBDKSsYiznKI6/YM=;
 b=HsBvk2EdbosqaQqiXqQbSDyXKBczYY4b9WoGcIsT49uu+GBBe5ghhnwM
 hsght2WtaXycyHoSAHjJFUwnsQsgzdlQA0P4HPavxRWiu0/Vk++G4PBla
 JBbS/Oc9DlcxnkK85TDuMqKFlsh+RYXFaOu7eO47qg4jJxKZoRk7QzR4q
 I3xDHmdxCUV4zP/LEEOC6LHzN9XCBH1m2GGZtJwHkYpnyXsrUTe0PvAEz
 KLuO/lJ4WUGAGkz8T3bb7lVv+ZBx7IotA2J+Yqrh060z4A8TcVGI16sqK
 sH7QLG/XD08zfJzCg2ycFZJLq+vddpkNilpDpJ/qIQmT3B5NNIWxbb3XN A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="258618260"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="258618260"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 03:23:07 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="566347259"
Received: from mkuligo-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.26.86])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 03:23:06 -0700
From: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 31 Mar 2022 12:23:01 +0200
Message-Id: <20220331102301.34913-1-zbigniew.kempczynski@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] Revert "drm/i915/dg2: Add relocation exception"
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

This reverts commit 904ebf2ba89edaeba5c7c10540e43dba63541dc6.

Failures on dg2 tests were caused by invalid alignment when local memory
was in use. Changes which adopt alignment according to gen were already
merged in IGT so lets revert relocation temporary enabler for dg2. Keeping
it is a little bit problematic for IGT because on premerge we would see
results with kernel which supports relocation. To see no-relocation
results we need to send disabler (like this revert), point IGT with
"Test-with" tag what is cumbersome and time consuming so lets do this
permanently. If we will see some failures they need to be fixed instead
of keeping relocation enabler.

Signed-off-by: Zbigniew Kempczyński <zbigniew.kempczynski@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: Dave Airlie <airlied@redhat.com>
Cc: Daniel Vetter <daniel.vetter@intel.com>
Cc: Jason Ekstrand <jason@jlekstrand.net>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index 42a49fd2f2ab..8b0b4aeb6716 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -501,7 +501,7 @@ static bool platform_has_relocs_enabled(const struct i915_execbuffer *eb)
 	 */
 	if (GRAPHICS_VER(eb->i915) < 12 || IS_TIGERLAKE(eb->i915) ||
 	    IS_ROCKETLAKE(eb->i915) || IS_ALDERLAKE_S(eb->i915) ||
-	    IS_ALDERLAKE_P(eb->i915) || IS_DG2(eb->i915))
+	    IS_ALDERLAKE_P(eb->i915))
 		return true;
 
 	return false;
-- 
2.32.0

