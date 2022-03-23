Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB304E57C9
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Mar 2022 18:46:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F70410E154;
	Wed, 23 Mar 2022 17:46:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 75D8910E154
 for <intel-gfx@lists.freedesktop.org>; Wed, 23 Mar 2022 17:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648057607; x=1679593607;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=M3TsZp7+dbgw9BDQJwexJhvrcw9uBDKSsYiznKI6/YM=;
 b=DDSbmcTH0iuh5FZrkjQZtBTJqXyfvBuFsJnMhyGNowYseGMBFnWsb3fI
 efr4mdv2eGzYoJuPaaLl3jJCmlYCodLgHXYxj9ViYopcvrQeIIoUV2N78
 anKG55ddcFk3PNX7fedkWK+Gx4jluphlH969Ee1D0ofz2Hut4LuqT2WLY
 +G6DYMA+zcwEg/X6eb2N21k0cEMNUhfXpDhMn49awUBWQh4jjT1rAV8Ty
 2zY+zqXfpdk0fRAJ6maYQwAN8Q6bvM7Rdfub+1uE1os7fPkq7ff9Su9PD
 h+cB6Yse8i/kFBmA6ZbHM6cR5b9IGnNTlToX3n1nu3Rek6ljIBNAD2Hxq A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10295"; a="258377441"
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="258377441"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 10:46:47 -0700
X-IronPort-AV: E=Sophos;i="5.90,204,1643702400"; d="scan'208";a="544300303"
Received: from artemmat-mobl.ger.corp.intel.com (HELO localhost)
 ([10.213.11.72])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2022 10:46:46 -0700
From: =?UTF-8?q?Zbigniew=20Kempczy=C5=84ski?= <zbigniew.kempczynski@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 23 Mar 2022 18:46:38 +0100
Message-Id: <20220323174638.11017-1-zbigniew.kempczynski@intel.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] [topic/core-for-CI] Revert "drm/i915/dg2: Add
 relocation exception"
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

