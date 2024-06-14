Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8230908979
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 12:16:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6016B10ECD5;
	Fri, 14 Jun 2024 10:16:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="laAZ3y1N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F9E710E17D;
 Fri, 14 Jun 2024 10:16:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718360171; x=1749896171;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zis/JYb2tzsrqNaIRgAlEalzUWy187+jm+oqhMGWPjE=;
 b=laAZ3y1NVXrTTZBSbQkypTF3RQi7gjdiumQg0FArroSx5i2eHl2wwGTO
 bmLzAOETI8/IOKBdyrxRMHhf2HqgDObDE52ztziWvUz0SJYdBTpu4AxA5
 ny87K9sI46bt2QD2WaXiXnuVX4ZIbhvMnyqMibknmDGPVP76MPo6Xx1Ze
 yUeTsksdhbbxHGDwSv9lXAVuaLFpyJBAORycSA0Jf6DSMsuNSoT3+baAj
 55QPq6KZWUsc2IyQJsLE8XQoRmJiLwXJWVtXl4O8ysCV2jQU+XT0oOKiT
 mSSkUu2VFTM5dri7C7i0GwyxUfU4ldG0LnfK7dlCbqDveKPbMQwWbGDtB A==;
X-CSE-ConnectionGUID: 5gMkullAR4OTV90bIRgWeg==
X-CSE-MsgGUID: UKU9TwYHRES49exPHsvN7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="25814230"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="25814230"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 03:16:10 -0700
X-CSE-ConnectionGUID: DTpXWOtoSHafg/Rjlpq1uw==
X-CSE-MsgGUID: m2oVNfnJT+ypS4LFfGle0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="63658182"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.221])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 03:16:07 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH v2 0/2] drm/i915: fix MSO vs. joiner issue
Date: Fri, 14 Jun 2024 13:16:02 +0300
Message-Id: <cover.1718360103.git.jani.nikula@intel.com>
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

This superseeds and includes [1].

BR,
Jani.

[1] https://lore.kernel.org/r/20240613150424.262567-1-jani.nikula@intel.com


Jani Nikula (2):
  drm/i915/mso: using joiner is not possible with eDP MSO
  drm/i915/dsc: don't mess up splitter state in joiner or dsc config

 drivers/gpu/drm/i915/display/intel_ddi.c             |  5 ++---
 drivers/gpu/drm/i915/display/intel_display_debugfs.c |  8 ++++++--
 drivers/gpu/drm/i915/display/intel_dp.c              |  4 ++++
 drivers/gpu/drm/i915/display/intel_vdsc.c            | 12 +++++++++---
 drivers/gpu/drm/i915/display/intel_vdsc_regs.h       |  1 +
 5 files changed, 22 insertions(+), 8 deletions(-)

-- 
2.39.2

