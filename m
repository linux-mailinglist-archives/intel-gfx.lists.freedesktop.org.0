Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DC746F4771
	for <lists+intel-gfx@lfdr.de>; Tue,  2 May 2023 17:38:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A48CB10E598;
	Tue,  2 May 2023 15:38:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 55B4610E37B
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 May 2023 15:38:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683041918; x=1714577918;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gEli5dxLzSUq0X32JL+HtnoTwHp9RtM1CEHCgeZzhIo=;
 b=NbgTESHBZY/7W4y3v75jDfyE0CHXoUxuUcgXYFFnyYye7nO8w+GCNNt3
 GIG5mFP7gkR1ypSQbdE50kD0N5m24a8ASVtBLHpkMI5GPxE/btC96cZ95
 hkZfdZGXGwvw9qW950sWTZmb9P5QE06NJzinJef47pdQ38TedQe76pDDq
 JIS7DX1i+8oLaC255osx/0PkaHzD1gTZRpO3SNPa3yEabrNZ3aU5DjByO
 eRlpu+xsG+9945G0nTi06BsvIvtK1yAQCsNdYMl+8E7pLVC0qqeeEown4
 3B9PcjRbBr8gzeIPM4D7KBILy4IASkP7HHozRwBpZs7RAB/qi2TWaHMQ4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="337554133"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="337554133"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10698"; a="728976772"
X-IronPort-AV: E=Sophos;i="5.99,244,1677571200"; d="scan'208";a="728976772"
Received: from awojtkie-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.36.50])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 May 2023 08:38:36 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  2 May 2023 18:37:28 +0300
Message-Id: <77a7f3044f603bf9f18b93aa3d44517670c37d67.1683041799.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1683041799.git.jani.nikula@intel.com>
References: <cover.1683041799.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/24] drm/i915/ttm: fix i915_ttm_to_gem()
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

drivers/gpu/drm/i915/gem/i915_gem_ttm.h:50: warning: Function parameter or member 'bo' not described in 'i915_ttm_to_gem'

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_ttm.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
index f8f6bed1b297..70abdc3061a9 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
+++ b/drivers/gpu/drm/i915/gem/i915_gem_ttm.h
@@ -42,6 +42,7 @@ static inline bool i915_ttm_is_ghost_object(struct ttm_buffer_object *bo)
 /**
  * i915_ttm_to_gem - Convert a struct ttm_buffer_object to an embedding
  * struct drm_i915_gem_object.
+ * @bo: Pointer to the ttm buffer object
  *
  * Return: Pointer to the embedding struct ttm_buffer_object.
  */
-- 
2.39.2

