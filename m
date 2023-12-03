Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B0D802375
	for <lists+intel-gfx@lfdr.de>; Sun,  3 Dec 2023 12:49:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D0BC10E2AE;
	Sun,  3 Dec 2023 11:49:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A8BA10E2AB
 for <intel-gfx@lists.freedesktop.org>; Sun,  3 Dec 2023 11:49:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701604151; x=1733140151;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=hSkZLxzW6eY/sati4b26Gxyr2T6/7qy1wTe2jhwtkgI=;
 b=W6qX5jW7Z6a3sx2WPXZZD0HhdyOVqlNSjbTHeXRsCSK2zFwnjXoGATHP
 V8ZhXfsaRYTUKRgLZVv2CsJTcQBzZd5ppoyDvpwN9y4q/KZkuSxdFAxjz
 UlCMboOi9KBoVZ3kDWNP/lLmu9Bilcs9UgpqrBOHzSrBpOmu/J7Co/DnH
 tJrQSU2LG2u59Dv70MJAM+OP3sZPFRaZULinbE6hDj0//3kWb6FB/gDJa
 X5b9KDaOuZniDaxmOAdkIYRzxgfhwGh21IILFg3rghfVAExer+8Mbuvqj
 3die8G0FylmuDIaxyLSTZRHzZ0SY3LPbiY3pViOJ6RdWCUQ38wJUTsCro A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10912"; a="397526367"
X-IronPort-AV: E=Sophos;i="6.04,247,1695711600"; d="scan'208";a="397526367"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2023 03:49:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10912"; a="720038358"
X-IronPort-AV: E=Sophos;i="6.04,247,1695711600"; d="scan'208";a="720038358"
Received: from jamullin-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.249.32.171])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Dec 2023 03:49:06 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Sun,  3 Dec 2023 13:48:36 +0200
Message-Id: <20231203114840.841311-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v9 0/4] Prepare intel_fb for Xe
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

Intel fb creation is differing between Xe and i915 due to different
implementations of backing object. This patch set is splitting i915
specific code into it's own source file. Similar source files will be
introduced for Xe as well.

Also use intel_bo_to_drm_bo instead of directly referring
i915_gem_object->base. One i915_gem_object_put is changed to
drm_gem_object_put.

v9:
  - Use ERR_CAST
v8:
  - return original error code from intel_fb_bo_lookup_valid_bo on failure
v7:
  - drop #include <drm/drm_plane.h>
  - s/user_mode_cmd/mode_cmd/
  - Use passed i915 pointer instead of to_i915(obj->base.dev)
v6: Add missing intel_fb_bo.[ch]
v5:
  - Keep drm_any_plane_has_format check in intel_fb.c
  - Use mode_cmd instead of user_mode_cmd for intel_fb_bo_lookup_valid_bo
  - Use lookup_modifier_or_null in intel_fb_modifier_to_tiling and
    handle null value
v4: Move drm_any_plane_has_format check into intel_fb_bo.c
v3: Fix failure handling in intel_framebuffer_init
v2: Couple of fixes to error value handling

Jouni Högander (4):
  drm/i915/display: use intel_bo_to_drm_bo in intel_fb.c
  drm/i915/display: Convert intel_fb_modifier_to_tiling as non-static
  drm/i915/display: Handle invalid fb_modifier in
    intel_fb_modifier_to_tiling
  drm/i915/display: Split i915 specific code away from intel_fb.c

 drivers/gpu/drm/i915/Makefile              |   1 +
 drivers/gpu/drm/i915/display/intel_fb.c    | 132 +++++++--------------
 drivers/gpu/drm/i915/display/intel_fb.h    |   2 +
 drivers/gpu/drm/i915/display/intel_fb_bo.c |  92 ++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb_bo.h |  24 ++++
 5 files changed, 162 insertions(+), 89 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.h

-- 
2.34.1

