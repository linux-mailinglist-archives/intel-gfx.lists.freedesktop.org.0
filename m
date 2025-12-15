Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9558CBEA39
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Dec 2025 16:28:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C9BE10E42D;
	Mon, 15 Dec 2025 15:28:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MEhWf0EA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0588D10E42D;
 Mon, 15 Dec 2025 15:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765812516; x=1797348516;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=nQFwTvIO535G8ngNY9l8UV5DB2xIhYPRukXxTLMNSKo=;
 b=MEhWf0EAKHCh/l0oi+Z+yQuVq8D+OHkEOKHdwedSMmtXjceqth+pnIuI
 VIT3sX/3SfNzHlhE8lIZu1gRqyKn1/CFiGPR1OnNpraELD+YTjsj20H1L
 l/f9x23u8DbDx0OlGi0RKxRGcSeMeNNRS1B+iOhs6/QWcu7pj+Pdagh/b
 JgF+APk2Ygye8hQT94Hx/kYI7yjYtW2QkkSz+T9XuboRpiqh6N5J0rRVN
 SM7mvYAbXqWkxtRpMTse7P82mhrVWxQ4R82AqRYTbg+Kxlu3nmnyohrwh
 aaZMGYGrOzhVNwaidZOCTjjNQnWsKN4qAFVPlU7AhRHSb62YaZqH8nLab w==;
X-CSE-ConnectionGUID: 85E0b0w2RSqC6LG36bBBRA==
X-CSE-MsgGUID: A7hDvOpwRAeE/60JA7yhjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11643"; a="78354292"
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="78354292"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:28:36 -0800
X-CSE-ConnectionGUID: D4Wa081DR2enqx2KqA3PJw==
X-CSE-MsgGUID: //+j2KIVRC+T3x6XtGcgPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,151,1763452800"; d="scan'208";a="201931592"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.106])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2025 07:28:33 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 00/15] drm/{i915,
 xe}: clean up and deduplicate initial plane handling
Date: Mon, 15 Dec 2025 17:28:14 +0200
Message-ID: <cover.1765812266.git.jani.nikula@intel.com>
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

The i915 and xe initial plane handling deviate at a too high level,
leading to lots of duplication between the two. This series starts to
clean it up by moving it to display parent interface, and deduplicating
piecemeal.

This is intentionally done in small chunks to ease review and catch
regressions (hopefully none).

There's still more to be done, e.g. it's pointless to have both i915 and
xe call intel_framebuffer_init(), but there's some error path stuff to
figure out before doing this. And I ran out of steam a bit, and the
series got pretty long already.

Anyway, by reducing duplication, the series highlights the differences
between i915 and xe.

BR,
Jani.


Jani Nikula (15):
  drm/i915: move display/intel_plane_initial.c to i915_initial_plane.c
  drm/xe/display: rename xe_plane_initial.c to xe_initial_plane.c
  drm/i915: rename intel_plane_initial.h to intel_initial_plane.h
  drm/{i915,xe}: move initial plane calls to parent interface
  drm/{i915,xe}: deduplicate intel_initial_plane_config() between i915
    and xe
  drm/{i915,xe}: deduplicate plane_config_fini() between i915 and xe
  drm/{i915,xe}: start deduplicating intel_find_initial_plane_obj()
    between i915 and xe
  drm/i915: return plane_state from intel_reuse_initial_plane_obj()
  drm/xe: return plane_state from intel_reuse_initial_plane_obj()
  drm/i915: further deduplicate intel_find_initial_plane_obj()
  drm/{i915,xe}: deduplicate intel_alloc_initial_plane_obj() FB modifier
    checks
  drm/{i915,xe}: deduplicate initial plane setup
  drm/{i915,xe}: pass struct drm_plane_state instead of struct drm_crtc
    to ->setup
  drm/{i915,xe}: pass struct drm_device instead of drm_device to
    ->alloc_obj
  drm/i915: drop dependency on struct intel_display from i915 initial
    plane

 drivers/gpu/drm/i915/Makefile                 |   3 +-
 drivers/gpu/drm/i915/display/intel_display.c  |   8 +-
 .../drm/i915/display/intel_display_driver.c   |   2 +-
 .../drm/i915/display/intel_initial_plane.c    | 193 ++++++++
 ..._plane_initial.h => intel_initial_plane.h} |   6 +-
 .../drm/i915/display/intel_plane_initial.c    | 442 ------------------
 drivers/gpu/drm/i915/i915_driver.c            |   2 +
 drivers/gpu/drm/i915/i915_initial_plane.c     | 290 ++++++++++++
 drivers/gpu/drm/i915/i915_initial_plane.h     |   9 +
 drivers/gpu/drm/xe/Makefile                   |   3 +-
 drivers/gpu/drm/xe/display/xe_display.c       |   2 +
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 189 ++++++++
 drivers/gpu/drm/xe/display/xe_initial_plane.h |   9 +
 drivers/gpu/drm/xe/display/xe_plane_initial.c | 321 -------------
 include/drm/intel/display_parent_interface.h  |  17 +
 15 files changed, 723 insertions(+), 773 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_initial_plane.c
 rename drivers/gpu/drm/i915/display/{intel_plane_initial.h => intel_initial_plane.h} (60%)
 delete mode 100644 drivers/gpu/drm/i915/display/intel_plane_initial.c
 create mode 100644 drivers/gpu/drm/i915/i915_initial_plane.c
 create mode 100644 drivers/gpu/drm/i915/i915_initial_plane.h
 create mode 100644 drivers/gpu/drm/xe/display/xe_initial_plane.c
 create mode 100644 drivers/gpu/drm/xe/display/xe_initial_plane.h
 delete mode 100644 drivers/gpu/drm/xe/display/xe_plane_initial.c

-- 
2.47.3

