Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3DB6F683B
	for <lists+intel-gfx@lfdr.de>; Thu,  4 May 2023 11:23:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1EC2F10E40A;
	Thu,  4 May 2023 09:23:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A10810E40A
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 May 2023 09:23:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683192207; x=1714728207;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=qR+2FA7eG36EVpKuk9OCewIEgQnApb0TqLg1nNx/WRc=;
 b=Hv3u03uycOthx+OrvxGtlPNs18K+MgFtirp8NdkpZeUR5QvuYg5bOBG0
 V5AscqCXqXbQ+S20ClHqFBJoXBxs4cLEl4ubbNq450o06/4wiDrMRaBLd
 fVthqnIA0RT3AbPcpuwqShdlkNc9B3tuQnZqH9ayY6KODilGHK4O4+0Cn
 VIXCSpsMcdardqPFcXoljWUAiVYF6wirZbHSTbI73m205LpYtDP4wY3kz
 yfMRp9AjCRnvHLkmBLZg62pBCdQNmQPIkFnrHK4VXonVcv1ZNUBCpLnv1
 w01dF6mwBBB3bcvzSM4zkl1W8g7yg9MhYGQHlIX6WxMbyxp+QTTFJqGHZ w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="329238785"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="329238785"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 02:23:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10699"; a="786455091"
X-IronPort-AV: E=Sophos;i="5.99,249,1677571200"; d="scan'208";a="786455091"
Received: from tferlin-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.61.212])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 02:23:25 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu,  4 May 2023 12:23:20 +0300
Message-Id: <20230504092320.1787627-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2] drm/i915/ttm: fix i915_ttm_to_gem()
 kernel-doc
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drivers/gpu/drm/i915/gem/i915_gem_ttm.h:50: warning: Function parameter or member 'bo' not described in 'i915_ttm_to_gem'

v2: Fix return value documentation while at it (Rodrigo)

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
index f8f6bed1b297..67347e62e29b 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
@@ -42,8 +42,9 @@ static inline bool i915_ttm_is_ghost_object(struct ttm_buffer_object *bo)
 /**
  * i915_ttm_to_gem - Convert a struct ttm_buffer_object to an embedding
  * struct drm_i915_gem_object.
+ * @bo: Pointer to the ttm buffer object
  *
- * Return: Pointer to the embedding struct ttm_buffer_object.
+ * Return: Pointer to the embedding struct drm_i915_gem_object.
  */
 static inline struct drm_i915_gem_object *
 i915_ttm_to_gem(struct ttm_buffer_object *bo)
-- 
2.39.2

