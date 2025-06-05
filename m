Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E9DBACEDA0
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Jun 2025 12:29:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 770AD10E8D4;
	Thu,  5 Jun 2025 10:29:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pnwma+a1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FFDA10E870;
 Thu,  5 Jun 2025 10:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749119385; x=1780655385;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=sDHYZDGld161k59mSL9deH1JepFUy6qZ6FOyRqruYKU=;
 b=Pnwma+a1otpaTHI0lQtqL8QnFmAQOI2irvWnVlGk7zNKzJ7OdjqDnUEB
 wu1Ep4Uct+H2jOtkMAKadWk7HPuQWdeICFPIsGlQ8DHOsEr+hoUCkjFBh
 T5aagCum8sWkY7jH2rFZ9hYQWuqNkvmzU6IyPxr38JIbYl0kUezYgoeTY
 S0iJOHzPTDnRU0ewU6bhqcfry6/tsLRXW2XmcxJldzPsaBLyKpxEzl5JZ
 23kyarYlDlbv/GDPB4potq3t+SNigr4khIJmweRj50M9SjyGr23SsVcrE
 9BVXuv+CjbQMedZ+DHVuhDa+jJbBmRwsBoev7f6wnYghoRtKl94o7imqo g==;
X-CSE-ConnectionGUID: kDA0305ARZmjsZBVqaom5A==
X-CSE-MsgGUID: ukY9xf0jRB+tIObGi0pIpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11454"; a="51378071"
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="51378071"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 03:29:45 -0700
X-CSE-ConnectionGUID: +4+8NS9BRsqUC+utX4mlPQ==
X-CSE-MsgGUID: revEYSZLTbu9qkW/u/aKdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,211,1744095600"; d="scan'208";a="168639721"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.67])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2025 03:29:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: lucas.demarchi@intel.com,
	rodrigo.vivi@intel.com,
	jani.nikula@intel.com
Subject: [PATCH 0/6] drm/i915,
 drm/xe: add drm device based pcode interface for display
Date: Thu,  5 Jun 2025 13:29:32 +0300
Message-Id: <cover.1749119274.git.jani.nikula@intel.com>
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

Unify pcode write timeouts between i915 and xe a bit, add drm device
based pcode interface to both i915 and xe, and use it in display and
dram code. This drops more drm_i915_private/uncore dependencies from
display.

BR,
Jani.

Jani Nikula (6):
  drm/i915/pcode: drop fast wait from snb_pcode_write_timeout()
  drm/i915/pcode: add struct drm_device based interface
  drm/xe/pcode: add struct drm_device based interface
  drm/i915/display: switch to struct drm_device based pcode interface
  drm/i915/dram: switch to struct drm_device based pcode interface
  drm/xe/compat: remove old pcode compat interface

 drivers/gpu/drm/i915/display/hsw_ips.c        | 13 ++---
 drivers/gpu/drm/i915/display/intel_bw.c       | 24 ++++----
 drivers/gpu/drm/i915/display/intel_cdclk.c    | 57 +++++++++----------
 .../drm/i915/display/intel_display_power.c    |  4 +-
 .../i915/display/intel_display_power_well.c   |  5 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  3 +-
 drivers/gpu/drm/i915/display/skl_watermark.c  | 30 +++++-----
 drivers/gpu/drm/i915/intel_pcode.c            | 29 +++++++++-
 drivers/gpu/drm/i915/intel_pcode.h            | 15 ++++-
 drivers/gpu/drm/i915/soc/intel_dram.c         |  5 +-
 .../drm/xe/compat-i915-headers/intel_pcode.h  | 31 ----------
 .../drm/xe/compat-i915-headers/intel_uncore.h |  7 ---
 drivers/gpu/drm/xe/xe_pcode.c                 | 26 +++++++++
 drivers/gpu/drm/xe/xe_pcode.h                 | 12 +++-
 14 files changed, 137 insertions(+), 124 deletions(-)

-- 
2.39.5

