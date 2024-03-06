Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4623C873637
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 13:24:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95A10113110;
	Wed,  6 Mar 2024 12:24:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZIfFRpm1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F5D310FB48;
 Wed,  6 Mar 2024 12:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709727886; x=1741263886;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=I1I05jo2oMaaHdFHae5qNJzPD4AqvEtoTgEfA7l4/+k=;
 b=ZIfFRpm1CoNUmnWSOxrIfQ2AZcLE5ZoiSxvfpFXWuNW8Bb9QvzTaSB2Z
 SGscQR5bCJtH9sPYRuzTzrgNJU9WhagmCrmKSQJWxaV9A/6qS6vIIpjnz
 MzhtPqAT9XvSroz/PQ+x7IJabMEKaxlp4MKECsSajx0u770nv++97OdhC
 a3TXQ5n2QuqTGzlbj0lyAiXjagvXV+O0dj2Do1abmV7pZsdktY1J3DPvr
 GvXl5y+J3EbO/djASNy3zkXaYVxHxZVE5JPOdV+kqw0cys0zkZ2l+tI+y
 XVMtU0k2pZ63w2G1CSu5NOotjC7YV09s2DHm3FaXi7GRDHL4fE5sw5YRk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="4200268"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="4200268"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 04:24:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; 
   d="scan'208";a="9894838"
Received: from rjongalo-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.33.211])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 04:24:42 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: rodrigo.vivi@intel.com, lucas.demarchi@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com
Subject: [RFC v2 0/4] drm/i915: better high level abstraction for display
Date: Wed,  6 Mar 2024 14:24:34 +0200
Message-Id: <cover.1709727127.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
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

This is v2 of [1]. Improve the abstractions for display code.

The main goals are:

1) The display code does not access struct drm_i915_private or struct
   xe_device. It only uses its own struct intel_display instead.

2) The i915 and xe driver cores do not access struct intel_display
   directly. It becomes an opaque pointer to them, stored in struct
   drm_i915_private and struct xe_device, and passed to display code.

This will mean a lot of churn, unfortunately. But it will better
separate the display code from the xe and i915 driver cores, and pave
the way for a) removing -Ddrm_i915_private=xe_device from xe Makefile,
and b) stop building the display code twice.

What's presented here goes a long way, and could get us started. But
there are still opens, such as:

1) How to handle platform checks such as IS_TIGERLAKE().

2) How to handle access to non-display members of i915/xe, such as
   i915->uncore.

There are other similar things, but I believe those are the most
prevalent, and are the biggest blockers for converting a lot of
functions over from i915 -> intel_display.


BR,
Jani.

[1] https://lore.kernel.org/r/cover.1695747484.git.jani.nikula@intel.com


Jani Nikula (4):
  drm/i915/display: ideas for further separating display code from the
    rest
  drm/i915/display: add generic to_intel_display() macro
  drm/i915/display: accept either i915 or display for feature tests
  drm/i915/display: test various to_intel_display() scenarios

 .../gpu/drm/i915/display/intel_display_core.h |  3 ++
 .../drm/i915/display/intel_display_device.c   | 13 ++++++
 .../drm/i915/display/intel_display_device.h   | 10 +++-
 .../drm/i915/display/intel_display_types.h    | 46 +++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.c       |  6 +--
 drivers/gpu/drm/i915/display/intel_hdmi.c     | 13 +++---
 drivers/gpu/drm/i915/i915_drv.h               | 11 ++++-
 drivers/gpu/drm/xe/xe_device_types.h          | 15 +++++-
 8 files changed, 103 insertions(+), 14 deletions(-)

-- 
2.39.2

