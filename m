Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E6953596E6A
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Aug 2022 14:26:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8AF8900E1;
	Wed, 17 Aug 2022 12:26:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D555B8FF35
 for <intel-gfx@lists.freedesktop.org>; Wed, 17 Aug 2022 12:26:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1660739190; x=1692275190;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e1cTVhuDRj97GDeS+shATabHuDkfzdphXUZxbvtJQqw=;
 b=bVM4TfgthIwjw75zZteFuyWUliolJUNndGHYlFZ2+7IgEnr7IOVs6rne
 zeZ5TEC/BUu1QilcGK+eVLddlojtg9WkZReueRfa/4vR8O0gsglFtcIxr
 R1fsVnNfLhNpQ9RMcmyiKLxhXorPS7h67MT+fK7S4hhR3zUclK9gvCGsf
 KYG+UgU5hHRw7f6A2vR8U9r8PzqUPGli98CCsLS+0y+veS3zDNab96OZu
 L/06gEGgL4VAHSLffoZY711VHKThE2YAnFrwxqZlNEUU1UvWFRz+nqo8N
 kM5LzpnZknFtsD++zEFDYvg4ii8CQlgqR596ivRKRxjW5SSwemIrZzQd+ w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10441"; a="318487159"
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="318487159"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 05:26:30 -0700
X-IronPort-AV: E=Sophos;i="5.93,243,1654585200"; d="scan'208";a="667593680"
Received: from sbammi-mobl.amr.corp.intel.com (HELO localhost)
 ([10.252.49.167])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2022 05:26:28 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 17 Aug 2022 15:26:24 +0300
Message-Id: <20220817122624.213889-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/mtl: Introduce FBC B
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

MTL introduces a second FBC engine. The two FBC engines can
operate entirely independently, FBC A serving pipe A and
FBC B serving pipe B.

The one place where things might go a bit wrong is the CFB
allocation from stolen. We might have to consider some change
to the allocation strategy to have a better chance of both
engines being able to allocate its CFB. Maybe FBC A should
allocate bottom up and FBC B top down, or something? For the
moment the allocation strategy is DRM_MM_INSERT_BEST for both.

Cc: Mika Kahola <mika.kahola@intel.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.h | 1 +
 drivers/gpu/drm/i915/i915_pci.c          | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.h b/drivers/gpu/drm/i915/display/intel_fbc.h
index db60143295ec..4adb98afe6ff 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.h
+++ b/drivers/gpu/drm/i915/display/intel_fbc.h
@@ -19,6 +19,7 @@ struct intel_plane_state;
 
 enum intel_fbc_id {
 	INTEL_FBC_A,
+	INTEL_FBC_B,
 
 	I915_MAX_FBCS,
 };
diff --git a/drivers/gpu/drm/i915/i915_pci.c b/drivers/gpu/drm/i915/i915_pci.c
index 9fd788e147a3..d8446bb25d5e 100644
--- a/drivers/gpu/drm/i915/i915_pci.c
+++ b/drivers/gpu/drm/i915/i915_pci.c
@@ -1111,7 +1111,8 @@ static const struct intel_device_info pvc_info = {
 #define XE_LPDP_FEATURES	\
 	XE_LPD_FEATURES,	\
 	.display.ver = 14,	\
-	.display.has_cdclk_crawl = 1
+	.display.has_cdclk_crawl = 1, \
+	.display.fbc_mask = BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B)
 
 __maybe_unused
 static const struct intel_device_info mtl_info = {
-- 
2.34.1

