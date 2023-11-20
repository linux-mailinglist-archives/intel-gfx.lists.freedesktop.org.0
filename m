Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A917F0FEA
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Nov 2023 11:09:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB48A10E396;
	Mon, 20 Nov 2023 10:09:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C7F210E393
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Nov 2023 10:09:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700474951; x=1732010951;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/dBYHeZnW5r+8uVV1gil7ihjaMjqnoMYSfSfpdVyNxo=;
 b=d0FuQqqGb6Vg/wt7cTit4hd9sZH+dhb2gfnIr7nYwkPwyyrEOlcXo/W1
 1WFHHk5Sd9UDT6yXK1y+XJllKY4QJbyc89+SWiOPQhWSIDUozdnmbyozr
 RFd0isPaNNZPPPQ78jv5ux75U5eW3GsQ4Bws0LBXAdzgiE0Lz6SKG8Otn
 cvuMFN6NNvgwlDDmFsRIPdCMnAHeN9WZ2UP7WPMkpNv9rpsS7/16+CoxV
 DMdJ1BvRRJu+Xk4GBMZgxO8vh/Q0hbzon6QOxBkS2IU84G9vWpRj1rjZE
 3M5asq9Zu3INIxlGQAmrXUaDcdoOpvZ35mNz0TgDHMCZokjTPecWXTQiv w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="455916660"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="455916660"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 02:08:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10899"; a="795429554"
X-IronPort-AV: E=Sophos;i="6.04,213,1695711600"; d="scan'208";a="795429554"
Received: from dbailonh-mobl2.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.252.57.59])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2023 02:08:48 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 20 Nov 2023 12:08:30 +0200
Message-Id: <20231120100833.3221946-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v4 0/3] Prepare intel_fb for Xe
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

v4: Move drm_any_plane_has_format check into intel_fb_bo.c
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
 drivers/gpu/drm/i915/display/intel_fb.c    | 128 ++++++---------------
 drivers/gpu/drm/i915/display/intel_fb.h    |   2 +
 drivers/gpu/drm/i915/display/intel_fb_bo.c | 102 ++++++++++++++++
 drivers/gpu/drm/i915/display/intel_fb_bo.h |  24 ++++
 5 files changed, 162 insertions(+), 95 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_fb_bo.h

-- 
2.34.1

