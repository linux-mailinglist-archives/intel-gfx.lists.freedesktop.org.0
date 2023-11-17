Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B03147EEC05
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Nov 2023 06:42:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7850910E111;
	Fri, 17 Nov 2023 05:42:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1293410E111
 for <intel-gfx@lists.freedesktop.org>; Fri, 17 Nov 2023 05:42:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700199729; x=1731735729;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ojhHWTTA8TNO89REPLPTkY795VfBBuWK4sqWUW3Ujtg=;
 b=AQPszzHg/8Aefh2B/6LdTPUI56oqBVgobUD7XS4hrSclaG/UL97uGrZE
 6XQC89BGtjZbDyM8je2qH+jj16xzfr78dCkiOxGoovGeo3IMAIaN8u2VD
 aQ8Qz8dvlwvMghlvDIY3RtUQMdFYWYd1cqZ0sb4Ufq4gCiFpzHj0wdoiH
 XjCz+Xrdvvr6gbZkyfGaIhbKJnytnuDxSg//Z//+iWSfnbG2My0uftCtt
 sRADAWjE9jVOAorgNl/JDtYrjVuZz+lZoaUyUHjAhyr7lS8H/1OA2AHmw
 B9LCqLY59vE6esKwv4hgIWFMrAVjiQiML0p5IOn11ZMtEHO7S37ShaPu6 A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="395165343"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="395165343"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 21:42:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10896"; a="909342633"
X-IronPort-AV: E=Sophos;i="6.04,206,1695711600"; d="scan'208";a="909342633"
Received: from ckrassni-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.219.72])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Nov 2023 21:42:05 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 17 Nov 2023 07:41:49 +0200
Message-Id: <20231117054152.542586-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 0/3] Prepare intel_fb for Xe
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
Cc: Jani Nikula <jani.nikula@intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Intel fb creation is differing between Xe and i915 due to different
implementations of backing object. This patch set is splitting i915
specific code into it's own source file. Similar source files will be
introduced for Xe as well.

Also use intel_bo_to_drm_bo instead of directly referring
i915_gem_object->base. One i915_gem_object_put is changed to
drm_gem_object_put.

v3: Fix failure handling in intel_framebuffer_init
v2: Couple of fixes to error value handling

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>

Jouni Högander (3):
  drm/i915/display: use intel_bo_to_drm_bo in intel_fb.c
  drm/i915/display: Convert intel_fb_modifier_to_tiling as non-static
  drm/i915/display: Split i915 specific code away from intel_fb.c

 drivers/gpu/drm/i915/Makefile              |   1 +
 drivers/gpu/drm/i915/display/intel_fb.c    | 120 ++++++---------------
 drivers/gpu/drm/i915/display/intel_fb.h    |   2 +
 drivers/gpu/drm/i915/display/intel_fb_bo.c |  93 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb_bo.h |  24 +++++
 5 files changed, 154 insertions(+), 86 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.h

-- 
2.34.1

