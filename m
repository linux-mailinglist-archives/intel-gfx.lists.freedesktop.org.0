Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3AFFBE51EA
	for <lists+intel-gfx@lfdr.de>; Thu, 16 Oct 2025 20:54:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B17EB10E340;
	Thu, 16 Oct 2025 18:54:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HilRv/Dm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A5C8410E0B4;
 Thu, 16 Oct 2025 18:54:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760640852; x=1792176852;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=U5A2dcwoKwpDNZ8jOQjJtOTCaGlT+K7JBtMS2zAb5KU=;
 b=HilRv/DmzqMLY98o10e6mZA8/Yy9O8bbk3xWDLT+h4YELpTRALUs6sak
 QWkYS4qGilhzliX7bQz6jFAJ6lPhLf82j9jlBy1nj2bMaEWtbcjcvI/8I
 bt95cdtY/6k9jGKw6Wdf5BTk/7/AAvb5ooZmrF0W11J3R9G8c5KLLAkyk
 k7KctbtLV6+WXtkEV6NChs+FZkvQKrEq0oYOK6I1u4W4dSSwng9+gyvh1
 yFN9CyZ8RNrqfBlXJscIaPlqpI9P3TXjv5MYSp9gHF1d1QX6rl+fJrPD6
 cJR68mAQwpTQV/tBVA8ye0b+kwLRqP3+ek5e7mu2C6CJeXyJ1BpDm/tXB Q==;
X-CSE-ConnectionGUID: jzaRb3lJSqecY1zwCEBaJg==
X-CSE-MsgGUID: w+daDs1rRrGwAk4xsDsreQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="62894795"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="62894795"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:54:12 -0700
X-CSE-ConnectionGUID: eLzK42G2Sfag+7JDBTjZCg==
X-CSE-MsgGUID: 0EpiY8kATw2NCQZzHdbBzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182514505"
Received: from kniemiec-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.12])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 11:54:11 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v2 00/10] drm/i915/frontbuffer: Fix the intel_frontbuffer
 lifetime mess
Date: Thu, 16 Oct 2025 21:53:58 +0300
Message-ID: <20251016185408.22735-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.49.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The attempted piecemeal intel_frontbuffer split between
i915 and xe is not good. Redo it with a bigger shovel.

v2: Rebase

Ville Syrjälä (10):
  drm/i915/overlay: Drop the DIRTYFB flush
  drm/i915/overlay: Switch to intel_frontbuffer_flip()
  drm/i915/frontbuffer: Nuke intel_frontbuffer_flip_{prepare,complete}()
  drm/i915/frontbuffer: Turn intel_bo_flush_if_display() into a
    frontbuffer operation
  drm/i915/frontbuffer: Handle the dirtyfb cache flush inside
    intel_frontbuffer_flush()
  drm/i915/frontbuffef: Split fb_tracking.lock into two
  drm/i915/frontbuffer: Extract intel_frontbuffer_ref()
  drm/i915/frontbuffer: Add intel_frontbuffer::display
  drm/i915/frontbuffer: Fix intel_frontbuffer lifetime handling
  drm/i915/gem:
    s/i915_gem_object_get_frontbuffer/i915_gem_object_frontbuffer_lookup/

 drivers/gpu/drm/i915/Makefile                 |   1 +
 drivers/gpu/drm/i915/display/intel_bo.c       |  40 +++--
 drivers/gpu/drm/i915/display/intel_bo.h       |   8 +-
 .../gpu/drm/i915/display/intel_display_core.h |   5 +-
 .../drm/i915/display/intel_display_debugfs.c  |   3 -
 drivers/gpu/drm/i915/display/intel_fb.c       |   1 -
 .../gpu/drm/i915/display/intel_frontbuffer.c  | 155 +++---------------
 .../gpu/drm/i915/display/intel_frontbuffer.h  |  18 +-
 drivers/gpu/drm/i915/display/intel_overlay.c  |   6 +-
 drivers/gpu/drm/i915/gem/i915_gem_object.c    |  16 +-
 .../i915/gem/i915_gem_object_frontbuffer.c    | 103 ++++++++++++
 .../i915/gem/i915_gem_object_frontbuffer.h    |  54 ++----
 .../gpu/drm/i915/gem/i915_gem_object_types.h  |   2 +-
 drivers/gpu/drm/i915/i915_drv.h               |   2 +
 drivers/gpu/drm/i915/i915_gem.c               |   2 +
 drivers/gpu/drm/i915/i915_vma.c               |   8 +-
 .../gpu/drm/xe/compat-i915-headers/i915_vma.h |   2 -
 drivers/gpu/drm/xe/display/intel_bo.c         |  60 ++++++-
 18 files changed, 257 insertions(+), 229 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.c

-- 
2.49.1

