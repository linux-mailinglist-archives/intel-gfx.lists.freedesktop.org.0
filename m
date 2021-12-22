Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB1747CDE8
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Dec 2021 09:17:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 03E3B10E65B;
	Wed, 22 Dec 2021 08:17:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 054D910E65B
 for <intel-gfx@lists.freedesktop.org>; Wed, 22 Dec 2021 08:17:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1640161023; x=1671697023;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rPatcYipO6ZXln0Q7Oi/E1bo0QUNfKMmjhJWK8Kwq+M=;
 b=ZcB+MoVjmAT6zEjIAllAV7FW+KCm4bO2ftvWBsqCFm5ViRgclaQB8ICh
 VuIRcsR8mvKQDtQnexsmPZE60TwCyVuGevBA1MkygQjVUvU/mEsJAXCOX
 rv1nhDEXXPT4SxIQv1QGCUito4RjOz11Gn459Q3KL7shmSBuXDHdnNb7b
 gqqhW/h4wIFixJVGLnioShKK0SDa15BaAjjM7AjkWDYscBmXSi8YO3sje
 +ZQzO/PAf7/V+X1Wpk63IL/NSTzQuiMrxj9rK67PaVBtRmj9z7MZKnNI4
 nFzyikF3N34y/Sfmh2uDS8RCOtMkG92BZqWTRdFSo9ZxRw8yg7LeEjWGX A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10205"; a="221250100"
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="221250100"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 00:17:02 -0800
X-IronPort-AV: E=Sophos;i="5.88,225,1635231600"; d="scan'208";a="466592887"
Received: from aravind2-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.9.217])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Dec 2021 00:16:59 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 22 Dec 2021 10:16:54 +0200
Message-Id: <20211222081654.1843211-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/bios: fix slab-out-of-bounds access
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
Cc: jani.nikula@intel.com,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@linux.intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

If VBT size is not a multiple of 4, the last 4-byte store will be out of
bounds of the allocated buffer. Spotted with KASAN. Round up the
allocation size.

v2: Use round_up() intead of roundup() as it's a power of 2 (Thomas)

Reported-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Fixes: a36e7dc0af1c ("drm/i915/dg1: Read OPROM via SPI controller")
Cc: Clint Taylor <clinton.a.taylor@intel.com>
Cc: Lucas De Marchi <lucas.demarchi@intel.com>
Reviewed-by: Thomas Hellström <thomas.hellstrom@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 76a8f001f4c4..c7a8d517ce81 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -2369,7 +2369,7 @@ static struct vbt_header *spi_oprom_get_vbt(struct drm_i915_private *i915)
 	vbt_size = intel_uncore_read(&i915->uncore, PRIMARY_SPI_TRIGGER);
 	vbt_size &= 0xffff;
 
-	vbt = kzalloc(vbt_size, GFP_KERNEL);
+	vbt = kzalloc(round_up(vbt_size, 4), GFP_KERNEL);
 	if (!vbt)
 		goto err_not_found;
 
-- 
2.30.2

