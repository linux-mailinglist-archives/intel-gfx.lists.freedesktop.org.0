Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A67BFB009
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Oct 2025 10:56:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 512B810E6F1;
	Wed, 22 Oct 2025 08:56:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DQ3bSCv7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84D9410E6EA;
 Wed, 22 Oct 2025 08:56:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761123377; x=1792659377;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=BiM4aDlhmGWXaexnEzoSHS0LGWcbNK0+DhbZJIlu19E=;
 b=DQ3bSCv7NSQKGcS7BceDRRil9AbKee7on4cJurw0mAdp7kv6FEKFawuM
 rGlSS53olzvvtYQCAnYMwENYQ4x5VwNngk3Vveubdhr7lxJbJNB1SCe/C
 7KRXeUKeA63b1BCj5uF5f+vURRNUUWozJZpgblCF+wE5IKXdm1bYG1Pl0
 OM/ARs2B8Gksr+4fk5wRQNCChb71dSDshJe8wGoF29+NuddochG0QHLHI
 eyP8zJMn0VDg8pfqGgmwCxoJwTuMRPqpoi7cGlOzFPkZ+R/ein8ICYbhy
 HhjBuTlfzp2jc2xkoyRaEjZZ48aA7zd2S/g+W9DYbknAdh9GWnQlaMJHk g==;
X-CSE-ConnectionGUID: yA++6YWXSCGtC6/beq+VHw==
X-CSE-MsgGUID: +LM56TE/T9OjyZQcKnHBnw==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="62473552"
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="62473552"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:56:17 -0700
X-CSE-ConnectionGUID: wL+AlbkJQFyxCMAzeNfZJQ==
X-CSE-MsgGUID: rVXTA+O7RReZwcezmLlt6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,246,1754982000"; d="scan'208";a="214461268"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl3..)
 ([10.245.244.2])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Oct 2025 01:56:16 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/6] Use display parent interface for runtime pm
Date: Wed, 22 Oct 2025 11:55:42 +0300
Message-ID: <20251022085548.876150-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

Add struct intel_display_parent_interface which is supposed to contain
function pointers passed at display probe. This is supposed to allow
differing implementations between i915 and xe drivers.

Add runtime pm as an example and first set of functions using this new
mechanism. Pass own implementations of runtime from i915 and xe
drivers during probe.

Jani Nikula (1):
  drm/{i915,xe}/display: pass parent interface to display probe

Jouni Högander (5):
  drm/{i915,xe}/display: Add display runtime pm parent interface
  drm/i915/display: Runtime pm wrappers for display parent interface
  drm/xe/display: Runtime pm wrappers for display parent interface
  drm/i915/display: Use display parent interface for i915 runtime pm
  drm/xe/display: Use display parent interface for xe runtime pm

 .../gpu/drm/i915/display/intel_display_core.h |  4 +
 .../drm/i915/display/intel_display_device.c   |  5 +-
 .../drm/i915/display/intel_display_device.h   |  4 +-
 .../gpu/drm/i915/display/intel_display_rpm.c  | 43 +++++----
 drivers/gpu/drm/i915/display/intel_fb.c       |  1 +
 .../drm/i915/display/skl_universal_plane.c    |  1 +
 drivers/gpu/drm/i915/i915_driver.c            | 88 ++++++++++++++++++-
 drivers/gpu/drm/i915/i915_driver.h            |  2 +
 .../gpu/drm/i915/selftests/mock_gem_device.c  |  4 +-
 drivers/gpu/drm/xe/Makefile                   |  2 +-
 .../gpu/drm/xe/compat-i915-headers/i915_drv.h |  1 -
 drivers/gpu/drm/xe/display/xe_display.c       | 82 ++++++++++++++++-
 drivers/gpu/drm/xe/display/xe_display_rpm.c   | 73 ---------------
 include/drm/intel/display_parent_interface.h  | 44 ++++++++++
 14 files changed, 255 insertions(+), 99 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/display/xe_display_rpm.c
 create mode 100644 include/drm/intel/display_parent_interface.h

-- 
2.43.0

