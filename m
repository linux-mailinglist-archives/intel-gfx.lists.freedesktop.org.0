Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 317657F5979
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Nov 2023 08:41:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E88CC10E6D3;
	Thu, 23 Nov 2023 07:41:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BECAF10E10A
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Nov 2023 07:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700725294; x=1732261294;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=akSIgImWVtmtYi5Ptw2J72A4Fyox6vEhSj91OakO+ZY=;
 b=fDO4nGot+S75TIqwkGsvpz84F4nmwWZWMw8OxVMYG9g8qFAgofbirPEo
 DYp6Lwpu+DgMy1b5S34zMosgQNbhqhHTwmDcnRqZcFHtYvlPKyYwqPrFg
 nJ/n9zv6116sLiASOuJTTttwlRDQbAPwYzGK61eOYXCp5XH7pvnw9kejB
 TZc51dB31HmTUgtzTYF2yqlGoNsiTpphvys6wpowF6/fqt1WwXfA4BLgh
 NKuLTLeY9FYwgBKxY8qIpjSaIMjkUA8eSZsgj9euy7eu9lhc6pS/s9J6Z
 3LLZv61kyPldIis/yu4U0H5UZh5WL7E/a9MSR/VWJXfBfHOSGy/QiqR6M Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="391093267"
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; d="scan'208";a="391093267"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 23:41:34 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10902"; a="884903061"
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; d="scan'208";a="884903061"
Received: from igorhaza-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.39.214])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2023 23:41:31 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 23 Nov 2023 09:41:16 +0200
Message-Id: <20231123074120.1641630-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v6 0/4] Prepare intel_fb for Xe
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
 drivers/gpu/drm/i915/display/intel_fb_bo.c |  93 +++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb_bo.h |  24 ++++
 5 files changed, 161 insertions(+), 87 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.h

-- 
2.34.1

