Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BEC18CA4BF2
	for <lists+intel-gfx@lfdr.de>; Thu, 04 Dec 2025 18:24:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6D61410E208;
	Thu,  4 Dec 2025 17:24:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ftsp19pM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EAA4110E208;
 Thu,  4 Dec 2025 17:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764869063; x=1796405063;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=N9/x6xQv9ySAsXJ50V662BvQ0w9uQyWVD1mK8lRq3WY=;
 b=Ftsp19pMRRM9b5vvKCFd3scStK3kgNqWp7o8Aa9W7idRkTYAN5a61jV5
 NtR5CJwoRFcY4zpxJSLjLTyEvoT2ukZnYe1eEiJPoP3UKx72lXhbCSUlU
 08mZlgIM68uLtUVUMkhKzOlJmWoWA3VCpcqWPbyUZvu+BscnQfFM5E2cq
 ipCCjiWkbVKZOx6U27umtQ+d5gsMP6NSirsJfjycCTIKKjNDVbYkn/Jko
 kK7f8dKGcxWB3fWPXb9nE/VXvVCOe6aa+iFhpurVO9s4XNH2jENVvHl9X
 lyZRTJps0MOCs4rif4SWmJPwGRt4ldRbGV6cN9ddEBm0jxw0zdBndNTcQ Q==;
X-CSE-ConnectionGUID: sfvOgBbTTzCRe9OJCvuP9Q==
X-CSE-MsgGUID: 8r8GSQaeQwa9yO17fJShrQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11632"; a="67060872"
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="67060872"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 09:24:21 -0800
X-CSE-ConnectionGUID: JZW+bPC9S1KVgEfJ5RXjWA==
X-CSE-MsgGUID: BBsXZsiNRA2O/xVjPTHC1A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,249,1758610800"; d="scan'208";a="200169504"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.11])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2025 09:24:12 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/4] drm/{i915,
 xe}: migrate stolen interface to parent interface, cleanups
Date: Thu,  4 Dec 2025 19:24:03 +0200
Message-ID: <cover.1764868989.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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

Migrate the stolen memory interface to the parent interface.

Jani Nikula (4):
  drm/i915/fbc: let to_intel_display() do its generic magic
  drm/xe/stolen: unify interface with i915
  drm/{i915,xe}/stolen: move stolen memory handling to display parent
    interface
  drm/{i915,xe}/stolen: make insert_node, area_address, area_size
    optional

 drivers/gpu/drm/i915/display/intel_fbc.c      | 103 +++++++++---------
 drivers/gpu/drm/i915/display/intel_parent.c   |  76 +++++++++++++
 drivers/gpu/drm/i915/display/intel_parent.h   |  19 ++++
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |  52 ++++++---
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h    |  23 +---
 drivers/gpu/drm/i915/i915_driver.c            |   1 +
 .../compat-i915-headers/gem/i915_gem_stolen.h |  40 -------
 drivers/gpu/drm/xe/display/xe_display.c       |   4 +-
 drivers/gpu/drm/xe/display/xe_stolen.c        |  62 +++++------
 drivers/gpu/drm/xe/display/xe_stolen.h        |   9 ++
 include/drm/intel/display_parent_interface.h  |  20 ++++
 11 files changed, 242 insertions(+), 167 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/gem/i915_gem_stolen.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_stolen.h

-- 
2.47.3

