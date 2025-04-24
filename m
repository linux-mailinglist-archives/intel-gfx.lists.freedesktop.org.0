Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F417AA9B8A9
	for <lists+intel-gfx@lfdr.de>; Thu, 24 Apr 2025 22:01:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B23310E127;
	Thu, 24 Apr 2025 20:01:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bmssctzb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5894510E127;
 Thu, 24 Apr 2025 20:01:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745524912; x=1777060912;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZwV1UVhd2RpT0XiAlnG5a3CR6kLnh5g52rquEieIL+8=;
 b=BmssctzbFuIxtTBbnbB3o1o5IZUvsWTR4pprMdJqU8+YNLtYS0H/9ppf
 CNl+9KSCwfDopcUN+wuzHksg9ldClOkm3/uZ7HLT8Zcq+d4Pk/Z4SrtQj
 OfJwIJxrnIQluYprBK/pKinfoPlZVtVlYfnIu8mHmhskItHTGr9JfEAKN
 RQdkduLKvP5wL8gsXzdZ3q3vsP8ivpxBNEn2Z0C6CeYEqaqYgc+JwAmFS
 0rlWr19+uFyFH+wJp4m79jDfzJ/LcnzWmLU8zw+qfsPpV1jx2KHxSVLW9
 aVPM1xpOYdwA9plQe9KOK0jIzSsqodrjRx39n291LfXGwHFILNk0CqS8B g==;
X-CSE-ConnectionGUID: N0T9CYdiQzKQfnr049ACtw==
X-CSE-MsgGUID: vPw/C294R/mcA2C9RvD9Zw==
X-IronPort-AV: E=McAfee;i="6700,10204,11413"; a="58543367"
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="58543367"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:01:51 -0700
X-CSE-ConnectionGUID: 346C/8ICR8m6RNOasmNOcw==
X-CSE-MsgGUID: TQxH9vV6TWqIK6drva7RiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,237,1739865600"; d="scan'208";a="137788222"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.48])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2025 13:01:49 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 00/10] drm/i915/hdcp: refactor HDCP GSC
Date: Thu, 24 Apr 2025 23:01:32 +0300
Message-Id: <cover.1745524803.git.jani.nikula@intel.com>
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

Reduce duplication, clarify interfaces between parts, and stop using
drm_i915_private in the display parts.

Jani Nikula (10):
  drm/i915/hdcp: remove duplicate declarations
  drm/i915/hdcp: deduplicate and refactor HDCP GSC ops initialization
  drm/i915/hdcp: split HDCP GSC message alloc/save responsibilities
  drm/i915/hdcp: rename struct intel_hdcp_gsc_message to
    intel_hdcp_gsc_context
  drm/i915/hdcp: rename HDCP GSC context alloc/free functions
  drm/i915/hdcp: pass the context to the HDCP GSC message interface
  drm/i915/hdcp: switch the HDCP GSC message interface from u8* to void*
  drm/i915/hdcp: simplify HDCP GSC firmware usage selection
  drm/i915/hdcp: pass struct drm_device to driver specific HDCP GSC code
  drm/i915/hdcp: drop unnecessary include from intel_hdcp_gsc.h

 .../gpu/drm/i915/display/intel_display_core.h |   2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  13 +-
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.c | 124 ++++--------
 drivers/gpu/drm/i915/display/intel_hdcp_gsc.h |  20 +-
 .../drm/i915/display/intel_hdcp_gsc_message.c | 181 ++++++++++++------
 .../drm/i915/display/intel_hdcp_gsc_message.h |  63 +-----
 drivers/gpu/drm/xe/display/xe_hdcp_gsc.c      | 133 ++++---------
 7 files changed, 219 insertions(+), 317 deletions(-)

-- 
2.39.5

