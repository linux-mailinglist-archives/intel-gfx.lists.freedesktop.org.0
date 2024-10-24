Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DABF49AE4C8
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Oct 2024 14:33:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1F6310E138;
	Thu, 24 Oct 2024 12:33:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DgRS15RU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B1F410E138;
 Thu, 24 Oct 2024 12:33:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729773230; x=1761309230;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dZO0evZA9BX0XAg2oVbitKEi7uNZoWaE8yGLqyj54wQ=;
 b=DgRS15RUMAQvcmMcNclGvkS/jv1GR+EYJqgMyqj5vC1rmO5X9KEY4RVe
 HpzM2vnNeBE1PTYy5ElNsy0yRFgg4UFG5BmohJObLhjuCOWhN+VOs9DJ8
 FJrxthPjknKjwVVkCBaEL5kuSKeFwk2xCeuS9RKVPWDfjHWCp7faaQeyj
 l6dKn1bG4Lk71VYgJyBrSCayXr08VLTxdZRutbm1axN1SqPhyMZsYXw7s
 uZn017uucKaTocFcq6RF2dMMxjfN752vaKFO52SXcEzZdWDqWYkqUldXc
 1jE8/XgM0qCxBmYmWi0NjB0uE9tctmJ5XZ6HFlnscsNJucTZuG5cW03yL A==;
X-CSE-ConnectionGUID: 4gur6yoFRYuXNPwlJxU+uA==
X-CSE-MsgGUID: xebQtbeoTD2f9RF1tfWgHw==
X-IronPort-AV: E=McAfee;i="6700,10204,11235"; a="29512413"
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="29512413"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:33:49 -0700
X-CSE-ConnectionGUID: aAIc+xo9QSqz1ypsKamCWQ==
X-CSE-MsgGUID: 9+nZxnxwQhmC8lQbNLAwbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,229,1725346800"; d="scan'208";a="85138150"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2024 05:33:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 maarten.lankhorst@linux.intel.com
Subject: [CI v4 v4 00/16] drm/i915/display: platform identification with
 display->platform.<platform>
Date: Thu, 24 Oct 2024 15:33:26 +0300
Message-Id: <cover.1729773149.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
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

The last patch was split to two, otherwise the same as before.

Jani Nikula (16):
  drm/i915/display: reindent subplatform initialization
  drm/i915/display: use a macro to initialize subplatforms
  drm/i915/display: use a macro to define platform enumerations
  drm/i915/display: join the platform and subplatform enums
  drm/i915/display: convert display platforms to lower case
  drm/i915/display: add display platforms structure with platform
    members
  drm/i915/display: add platform member to struct intel_display
  drm/i915/display: remove the display platform enum as unnecessary
  drm/i915/display: add platform group for g4x
  drm/i915/display: add subplatform group for HSW/BDW ULT
  drm/i915/bios: use display->platform.<platform> instead of
    IS_<PLATFORM>()
  drm/i915/pps: use display->platform.<platform> instead of
    IS_<PLATFORM>()
  drm/i915/tv: use display->platform.<platform> instead of
    IS_<PLATFORM>()
  drm/i915/vga: use display->platform.<platform> instead of
    IS_<PLATFORM>()
  drm/i915/vblank: drop unnecessary i915 local variable
  drm/i915/vblank: use display->platform.<platform> instead of
    IS_<PLATFORM>()

 drivers/gpu/drm/i915/display/intel_bios.c     |  40 +--
 .../gpu/drm/i915/display/intel_display_core.h |   3 +
 .../drm/i915/display/intel_display_device.c   | 269 +++++++++++++-----
 .../drm/i915/display/intel_display_device.h   | 185 ++++++------
 drivers/gpu/drm/i915/display/intel_pps.c      |  47 ++-
 drivers/gpu/drm/i915/display/intel_tv.c       |  10 +-
 drivers/gpu/drm/i915/display/intel_vblank.c   |  11 +-
 drivers/gpu/drm/i915/display/intel_vga.c      |   4 +-
 8 files changed, 340 insertions(+), 229 deletions(-)

-- 
2.39.5

