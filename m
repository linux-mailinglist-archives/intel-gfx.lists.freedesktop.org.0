Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B1FD8A34E6
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Apr 2024 19:38:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BB90610E00F;
	Fri, 12 Apr 2024 17:38:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ACJ4tgae";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2515E10E00F
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Apr 2024 17:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712943486; x=1744479486;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=tKsAUmzj9Kha3GQssJhGZIYEOSarSUiZ4DGxQHFFzUM=;
 b=ACJ4tgae/FgZPzKIFyG9gomgOlt3EbdJQNIWdpbDFWLmDnkhldCLuCYS
 25Z18RYxhfk9AwAhl+6/tcyIityLY831GS1+DqaHv5lK3rr1Tm/CCDKP8
 f2q8zKpliSmbH1BUWs+eoMPRRwPmCKM/DazqTWIytR3vrMNz/UupdK/oW
 brg2wdiVTVU/r2PIieITsStIpRd+yBiVffSvWC/0xzlX9/4I92uFx22sg
 /amsAO0+ltoVr+OxoUo0FuCMsf6VPJuudY9JEZlwQeQSnk/xL7sEXxh+X
 zWZDF25j5K5H1io1oiUOfR8WrpLYYkh6sgky1n36kl9Rme+0ARG8JKqVx w==;
X-CSE-ConnectionGUID: +5T1eLccRCSf6JinCELbeg==
X-CSE-MsgGUID: EHh2Y0FWRMq+1l8zoKw+SQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11042"; a="8513848"
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; 
   d="scan'208";a="8513848"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2024 10:38:06 -0700
X-CSE-ConnectionGUID: gjYl/ipWQ8GTFJjGYsu2nw==
X-CSE-MsgGUID: jaHqO7bbSMeZkQlCzspkqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,196,1708416000"; d="scan'208";a="21366069"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by fmviesa007.fm.intel.com with ESMTP; 12 Apr 2024 10:38:05 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 0/3] Implement CMRR Support
Date: Fri, 12 Apr 2024 23:01:50 +0530
Message-Id: <20240412173153.722804-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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

CMRR is a display feature that uses adaptive sync
framework to vary Vtotal slightly to match the
content rate exactly without frame drops. This
feature is a variation of VRR where it varies Vtotal
slightly (between additional 0 and 1 Vtotal scanlines)
to match content rate exactly without frame drops
using the adaptive sync framework.

enable this feature by programing new registers for
CMRR enable, CMRR_M, CMRR_N, vmin=vmax=flipline.The
CMRR_M/CMRR_N ratio represents the fractional part
in (actual refresh rate/target refresh rate) * origVTotal.

--v6:
- CMRR handling in co-existatnce of LRR and DRRS
- Correct vtotal paramas accuracy and add 2 digit precision.

--v7:
- Rebased patches in-accordance to AS SDP merge.
- Add neccessary gaurd to prevent crtc_state mismatch
during intel_vrr_get_config.

Mitul Golani (3):
  drm/i915: Define and compute Transcoder CMRR registers
  drm/i915: Add Enable/Disable for CMRR based on VRR state
  drm/i915: Compute CMRR and calculate vtotal

 drivers/gpu/drm/i915/display/intel_display.c  |  61 ++++++-
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../drm/i915/display/intel_display_types.h    |   6 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 153 +++++++++++++++---
 drivers/gpu/drm/i915/i915_reg.h               |  10 ++
 5 files changed, 201 insertions(+), 30 deletions(-)

-- 
2.25.1

