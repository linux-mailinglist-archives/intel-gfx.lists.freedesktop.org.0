Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBE88CEBDB9
	for <lists+intel-gfx@lfdr.de>; Wed, 31 Dec 2025 12:26:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B884910E0E3;
	Wed, 31 Dec 2025 11:26:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GERGkPz7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D03AC10E0E3
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 Dec 2025 11:26:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1767180378; x=1798716378;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tjasStTtLb5cr2UxVBxy2guqqF8psnf1WhI3/kTEnMk=;
 b=GERGkPz7J5ttww0gzwbIErfWpjkKGa7w/AarJ4mVyQWLQsJm2FAAcSN3
 uCxTn/kdRTU8ddfCrK0Q6cHUTrLSzR0gQ7yEiYQU9n0Xs/pFN22LFjXNx
 v/0JUgyukl6oZwGzyi7VbrTX6kVIxumu1Rxvm4JDJZOb/rIj3tEnZtRmK
 N06pBycxM6tlnF9XFrWk62iXolyd7J7Z1T7S1h3ecj9+kN4OcyQv0E3GC
 ObCH9DiUFFkDdo0EObFuudMVH29NVzaFVMGWJXWao4FU8zut2BONiCTrm
 CUfFnnQCL/2mQUACk29pdfCAL5niQCQYZvMn/EsiwXPsMF/akoSDx0tvW Q==;
X-CSE-ConnectionGUID: 219vNNg3QsqWcCbw0/R9iQ==
X-CSE-MsgGUID: JmFWB/zPTv+LtGBNGv22fQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11657"; a="67946814"
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="67946814"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2025 03:26:17 -0800
X-CSE-ConnectionGUID: 3OWl4tUQRCy9X6azZnaJFg==
X-CSE-MsgGUID: TYelDdxjRcWrK9aHwO6Qxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,191,1763452800"; d="scan'208";a="232505337"
Received: from jkrzyszt-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.201])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Dec 2025 03:26:15 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ankit.k.nautiyal@intel.com
Subject: [PATCH 0/5] drm/i915/gvt: some include cleanups
Date: Wed, 31 Dec 2025 13:26:06 +0200
Message-ID: <cover.1767180318.git.jani.nikula@intel.com>
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

Clean up gvt includes to make it a bit easier to deal with.

Jani Nikula (5):
  drm/i915/gvt: sort and group include directives
  drm/i915/gvt: include sched_policy.h only where needed
  drm/i915/gvt: reduce include of gt/intel_engine_regs.h
  drm/i915/gvt: reduce include of vfio.h
  drm/i915/gvt: include intel_display_limits.h where needed

 drivers/gpu/drm/i915/gvt/aperture_gm.c      |  5 +++--
 drivers/gpu/drm/i915/gvt/cfg_space.c        |  2 +-
 drivers/gpu/drm/i915/gvt/cmd_parser.c       | 22 ++++++++++---------
 drivers/gpu/drm/i915/gvt/debugfs.c          |  4 +++-
 drivers/gpu/drm/i915/gvt/display.c          | 12 +++++------
 drivers/gpu/drm/i915/gvt/display.h          |  2 +-
 drivers/gpu/drm/i915/gvt/dmabuf.c           |  6 +++---
 drivers/gpu/drm/i915/gvt/dmabuf.h           |  7 +++++-
 drivers/gpu/drm/i915/gvt/edid.c             |  1 +
 drivers/gpu/drm/i915/gvt/execlist.c         |  2 +-
 drivers/gpu/drm/i915/gvt/fb_decoder.c       | 12 +++++------
 drivers/gpu/drm/i915/gvt/fb_decoder.h       |  2 --
 drivers/gpu/drm/i915/gvt/firmware.c         |  4 ++--
 drivers/gpu/drm/i915/gvt/gtt.c              |  9 ++++----
 drivers/gpu/drm/i915/gvt/gvt.h              | 24 ++++++++++-----------
 drivers/gpu/drm/i915/gvt/handlers.c         | 19 ++++++++++------
 drivers/gpu/drm/i915/gvt/interrupt.c        |  5 +++--
 drivers/gpu/drm/i915/gvt/kvmgt.c            | 18 ++++++++--------
 drivers/gpu/drm/i915/gvt/mmio.c             | 11 +++++-----
 drivers/gpu/drm/i915/gvt/mmio_context.h     |  5 -----
 drivers/gpu/drm/i915/gvt/opregion.c         |  3 ++-
 drivers/gpu/drm/i915/gvt/page_track.c       |  3 ++-
 drivers/gpu/drm/i915/gvt/sched_policy.c     |  3 ++-
 drivers/gpu/drm/i915/gvt/scheduler.c        |  8 ++++++-
 drivers/gpu/drm/i915/gvt/trace.h            |  2 +-
 drivers/gpu/drm/i915/gvt/trace_points.c     |  2 ++
 drivers/gpu/drm/i915/gvt/vgpu.c             |  6 ++++--
 drivers/gpu/drm/i915/intel_gvt.c            | 11 ++++++----
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c |  4 +++-
 29 files changed, 122 insertions(+), 92 deletions(-)

-- 
2.47.3

