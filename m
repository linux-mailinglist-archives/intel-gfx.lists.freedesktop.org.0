Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 310778D8121
	for <lists+intel-gfx@lfdr.de>; Mon,  3 Jun 2024 13:26:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4613610E367;
	Mon,  3 Jun 2024 11:25:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MrsRM9dD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5D2C510E362
 for <intel-gfx@lists.freedesktop.org>; Mon,  3 Jun 2024 11:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717413954; x=1748949954;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=eGOSkILIsWCDv58F1qkJAWEe0zZ62GUcgAgCjZSzg78=;
 b=MrsRM9dDZYw/xs0xbV8ImAW0KLzBXAWOtwdYkzLDBZPlzfK+qC9ycJGJ
 DXVUCrOoxl68ZWX4fem1zbkq3pS16+jsvZhYknzYJ3MUY3FQ5FUMeFgK+
 UlkGtlL2F5KhY8xsm4qvqBXDEef+ExtgW/u/17kLp4uP1azCItZD9D3pO
 iFblL/deIxWLNW9uXrr4SOOBLSUDdDM8WKGKDLoJdwW7DKcOsyeUCQRUl
 lptUF7WJKOQIpWsJjGEPK2S/pHZpPz7ZZ/rXFp98Qsx0zmXI/Q3Gzli6K
 q3nhAcWsDw1au+0XvNXnfODdyV442CJxvkLBdgLwwh2UPowRRcxBd+2qN w==;
X-CSE-ConnectionGUID: WF2q3H6RTKmC8sVu7s+8zQ==
X-CSE-MsgGUID: GkL3OXJ4QgSdgnBIBey7ZA==
X-IronPort-AV: E=McAfee;i="6600,9927,11091"; a="39300243"
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="39300243"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2024 04:25:53 -0700
X-CSE-ConnectionGUID: agcFJ1c9TaexjrLlAYokuQ==
X-CSE-MsgGUID: Xf1V8JgDTX6Bl/tBpbwEsA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,211,1712646000"; d="scan'208";a="74342203"
Received: from unknown (HELO slisovsk-Lenovo-ideapad-720S-13IKB.fi.intel.com)
 ([10.237.72.65])
 by orviesa001.jf.intel.com with ESMTP; 03 Jun 2024 04:25:52 -0700
From: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: jani.saarinen@intel.com,
	ville.syrjala@linux.intel.com
Subject: [PATCH 0/3] Ultrajoiner basic functionality series
Date: Mon,  3 Jun 2024 14:25:48 +0300
Message-Id: <20240603112551.6481-1-stanislav.lisovskiy@intel.com>
X-Mailer: git-send-email 2.37.3
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

This series contains renaming of bigjoiner to joiner to further
unify the api, in order to be prepared for ultrajoiner addition,
to aviod additional complexity in naming.
Also here we rename all masters/slaves to primary/secondary pipes
according to BSpec.
Then however we still add some functions, which make it possible
for us to distinguish between bigjoiner primary/secondary pipes,
check if ultrajoiner is used and other essential functions mostly
required for DSC register programming.
In rest of the cases we going to be refering both to Bigjoiner and
Ultrajoiner as "joiner".


Stanislav Lisovskiy (3):
  drm/i915: Rename all bigjoiner to joiner
  drm/i915: Rename bigjoiner master/slave to bigjoiner primary/secondary
  drm/i915: Add some essential functionality for joiners

 .../gpu/drm/i915/display/intel_atomic_plane.c |  22 +-
 drivers/gpu/drm/i915/display/intel_cdclk.c    |   8 +-
 .../drm/i915/display/intel_crtc_state_dump.c  |   8 +-
 drivers/gpu/drm/i915/display/intel_cursor.c   |   4 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  22 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 476 ++++++++++--------
 drivers/gpu/drm/i915/display/intel_display.h  |  14 +-
 .../drm/i915/display/intel_display_debugfs.c  |  10 +-
 .../drm/i915/display/intel_display_types.h    |   4 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |  60 +--
 drivers/gpu/drm/i915/display/intel_dp.h       |   8 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  22 +-
 drivers/gpu/drm/i915/display/intel_drrs.c     |   6 +-
 .../drm/i915/display/intel_modeset_setup.c    |  76 +--
 .../drm/i915/display/intel_modeset_verify.c   |   8 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |   6 +-
 drivers/gpu/drm/i915/display/intel_vdsc.c     |  14 +-
 drivers/gpu/drm/i915/display/intel_vdsc.h     |   2 +-
 .../gpu/drm/i915/display/intel_vdsc_regs.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      |   2 +-
 .../drm/i915/display/skl_universal_plane.c    |   4 +-
 21 files changed, 420 insertions(+), 358 deletions(-)

-- 
2.37.3

