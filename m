Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C89327FBE43
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Nov 2023 16:39:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15EE510E092;
	Tue, 28 Nov 2023 15:39:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAAB410E092
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Nov 2023 15:39:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701185986; x=1732721986;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ckKMVPl4Wmmau0WByL+74aFJOfQ3vgkTB3iBlXsQ0wo=;
 b=TrW6P5XDm+JSqwGo9fZabAUtxBnt1k9Ql+lU61YJGXTf/Y0Bu4r8TIff
 JhawycIz/iP3ysJ8VJS06MbtH02lw894/anIJh57CTVcWxdXn0DP2i+tg
 zsBdUail5k4kPysJBVvVSl49t3RzD7ycnqBtHG3VSwj7AJB32lTuPaSCH
 E2+F2M6BpSYKYVGdEX6ziNmgxp1MMeVOGNzKEj/CEoIWQlcXDwffZ9KVp
 rBfUNUpzyvR58SaHOG+FafgweaAO2NMsrRVsVtkZ3sOhOwdhwd2a2qa1G
 EHGVN+UYP9e+1k6/51ARUk5FVSBn5mY7rarm+V9tLylcVPS8arqUMzqY6 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="457273194"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="457273194"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 07:39:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10908"; a="744945681"
X-IronPort-AV: E=Sophos;i="6.04,234,1695711600"; d="scan'208";a="744945681"
Received: from aspinu-mobl.ger.corp.intel.com (HELO jhogande-mobl1.intel.com)
 ([10.252.59.67])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2023 07:39:42 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 28 Nov 2023 17:39:16 +0200
Message-Id: <20231128153920.1553148-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v7 0/4] Prepare intel_fb for Xe
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

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Uma Shankar <uma.shankar@intel.com>

Jouni Högander (4):
  drm/i915/display: use intel_bo_to_drm_bo in intel_fb.c
  drm/i915/display: Convert intel_fb_modifier_to_tiling as non-static
  drm/i915/display: Handle invalid fb_modifier in
    intel_fb_modifier_to_tiling
  drm/i915/display: Split i915 specific code away from intel_fb.c

 drivers/gpu/drm/i915/Makefile              |   1 +
 drivers/gpu/drm/i915/display/intel_fb.c    | 128 +++++++--------------
 drivers/gpu/drm/i915/display/intel_fb.h    |   2 +
 drivers/gpu/drm/i915/display/intel_fb_bo.c |  92 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb_bo.h |  24 ++++
 5 files changed, 160 insertions(+), 87 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.h

-- 
2.34.1

