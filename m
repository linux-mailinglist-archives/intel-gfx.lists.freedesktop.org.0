Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F83071FF89
	for <lists+intel-gfx@lfdr.de>; Fri,  2 Jun 2023 12:40:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E224310E655;
	Fri,  2 Jun 2023 10:40:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B906810E655
 for <intel-gfx@lists.freedesktop.org>; Fri,  2 Jun 2023 10:40:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685702413; x=1717238413;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=IF9TX9jkH9hyEdjUxOYH/z4bnfDQSqNUhRtnkzRpEA4=;
 b=GCPuy4fNIXOrb66Eopc742iok6d2HfONCyjMemVl00p4Fw5EQz5iIa56
 Sxzmzo+AYmjWA8y1UgPike7AZN/O1aXsvB9asBkHyVYAKjb8RJkkq8F5g
 9N3s2RGxguwYs1m8d3IK9ROLtD5e/Pf5Jtk3nrLcoaIftYZO2fNT2xv9X
 VyKs4eAIkfmebwDzzy9UOZWMmprkBYhKPcYBbdnRKrjBB/j7XZAWYBz1v
 9ioNfW2BJkfaSL+ic5LnAHhUfdW0KkDnNBaX3jaSC71gR79TywVHUA7NS
 kAdaAIApW05cha1L+4+1Xoy3yV20LQsFAZKKkagqAiBs/ruX7hIGSZg/2 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="340468013"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="340468013"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 03:40:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="685278541"
X-IronPort-AV: E=Sophos;i="6.00,212,1681196400"; d="scan'208";a="685278541"
Received: from amelillo-mobl.ger.corp.intel.com (HELO
 jhogande-mobl1.ger.corp.intel.com) ([10.251.209.93])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2023 03:40:09 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  2 Jun 2023 13:39:18 +0300
Message-Id: <20230602103928.1012470-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v3 00/10] Clean-up Xe FBC additions
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

This patch set cleans up Xe FBC additions. All stolen memory details are
moved to i915_gem_stolen header and source files. Also some fence handling
details are move away from FBC code. This allows removing all ifdefs added
into fbc code.

v3:
  - Move all the ifdef removals to fixup patch
  - Revert as necessary instead of modifying
  - intel_gt_fence_count -> intel_gt_legacy_fencing_support
  - Add !WARN_ON(1) to i915_gem_stolen defines that are not supposed to be
    used in case of Xe
v2: add missing intel_gt_types.h header

Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>

Jouni Högander (10):
  Revert "drm/i915/display: Make FBC check stolen at use time."
  Revert "drm/i915/fbc: set compressed_fb to NULL on error"
  Revert "drm/i915/display: Implement FBC support"
  fixup! drm/i915/display: Remaining changes to make xe compile
  drm/i915: Move stolen memory handling into i915_gem_stolen
  drm/xe: Xe stolen memory handling for fbc support
  drm/xe: Add i915_gem.h compatibility header
  drm/i915/fbc: Make FBC check stolen at use time
  drm/i915/fbc: Moved fence related code away from intel_fbc
  drm/xe: Add Xe implementation for fence checks used by fbc code

 drivers/gpu/drm/i915/display/intel_fbc.c      | 139 ++++--------------
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c    |  37 +++++
 drivers/gpu/drm/i915/gem/i915_gem_stolen.h    |  13 ++
 drivers/gpu/drm/i915/gt/intel_gt_types.h      |   2 +
 drivers/gpu/drm/i915/i915_vma.h               |   5 +
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |   3 +
 .../gpu/drm/xe/compat-i915-headers/i915_gem.h |   9 ++
 .../xe/compat-i915-headers/i915_gem_stolen.h  |  79 ++++++++++
 .../gpu/drm/xe/compat-i915-headers/i915_vma.h |   2 +
 .../xe/compat-i915-headers/intel_gt_types.h   |  11 ++
 10 files changed, 188 insertions(+), 112 deletions(-)
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_gem.h
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/i915_gem_stolen.h
 create mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_gt_types.h

-- 
2.34.1

