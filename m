Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76886A5F742
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Mar 2025 15:08:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1196310E8A0;
	Thu, 13 Mar 2025 14:08:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="id6Ow8dB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A932710E8A0
 for <intel-gfx@lists.freedesktop.org>; Thu, 13 Mar 2025 14:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741874930; x=1773410930;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8msdfMdkioXXq0gJ/wcKbf4lXU//r30UWUp2uPIjZBc=;
 b=id6Ow8dBjqpAFONkzK5Z6cesucv0IhjLTbGS4WKeNQxPd4rLA1+lMTt7
 Xz4V23Zx9wCVbdeMll4X8VmZ7S/qo+pMbLtpiOkPhD8bUFKJf2BMcOE+r
 Pc3mUTWQBFkGDoG7bpDsvOq/bMm8uJt9tuT/2pAfAMY5vAKpoQtFi3Nyv
 QC7LD6Z0Opd0ULfro9i0pSat/9u49mk9bD+ysq+JmJBjyrSCw/i3JXiSu
 OXKU7noKX/s820/5gtDYeMivjRBs8G8o1SvmGLEPIUxF8TSBu53tqfPDI
 YUaXnGSWsJ9Y4iuRm3T4+ZIRGhyDCOcgStypdWtIiUtyRUP/hcfkSMa5C Q==;
X-CSE-ConnectionGUID: o3gATxUdSqS2U1W1WdfT0g==
X-CSE-MsgGUID: UTVxMe9VSvmB/3wnmdUv9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="42854839"
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="42854839"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2025 07:08:40 -0700
X-CSE-ConnectionGUID: JwcU8YI4RyeXm9buoDv2yQ==
X-CSE-MsgGUID: 1wCkT0o0SZaRJ8e/CrMn7Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,244,1736841600"; d="scan'208";a="126138386"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 13 Mar 2025 07:08:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 13 Mar 2025 16:08:38 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH 00/10] drm/i915: Pimp the initial FB readout
Date: Thu, 13 Mar 2025 16:08:28 +0200
Message-ID: <20250313140838.29742-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.45.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Start validating the dma address of the initial BIOS/GOP FB
on all platforms. Currently we only do it on LMEMBAR systems.

Ville Syrjälä (10):
  drm/i915: Extract intel_memory_type_is_local()
  drm/i915: Expose intel_memory_type_str()
  agp/intel-gtt: Add intel_gmch_gtt_read_entry()
  drm/i915/ggtt: Add intel_ggtt_read_entry()
  drm/i915: Use intel_ggtt_read_entry() in the BIOS FB takeover
  drm/i915: Verify the BIOS FB first PTE on non-LMEMBAR systems
  drm/i915: Use a nicer way to lookup the memory region in BIOS FB
    takeover
  drm/i915: Lookup the memory region first in the BIOS FB takeover
  drm/i915: Use intel_memory_region_type_is_local() in the BIOS FB
    takeover
  drm/i915: Eliminate the initial_plane_phys_{smem,lmem}() duplication

 drivers/char/agp/intel-gtt.c                  |  55 +++++++++
 .../drm/i915/display/intel_plane_initial.c    | 107 +++++++-----------
 drivers/gpu/drm/i915/gem/i915_gem_lmem.c      |   3 +-
 drivers/gpu/drm/i915/gt/intel_ggtt.c          |  56 +++++++++
 drivers/gpu/drm/i915/gt/intel_ggtt_gmch.c     |   8 ++
 drivers/gpu/drm/i915/gt/intel_gtt.h           |   6 +
 drivers/gpu/drm/i915/intel_memory_region.c    |  15 ++-
 drivers/gpu/drm/i915/intel_memory_region.h    |   3 +
 include/drm/intel/intel-gtt.h                 |   2 +
 9 files changed, 185 insertions(+), 70 deletions(-)

-- 
2.45.3

