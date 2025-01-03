Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2A6A00A0A
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 14:52:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E179310E8C0;
	Fri,  3 Jan 2025 13:52:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jIz6wHTw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6E07010E8BD;
 Fri,  3 Jan 2025 13:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735912368; x=1767448368;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=/x7AH+/iGsM/K8e/PgrQPuhDqon/5aePJ/vLns4v/6U=;
 b=jIz6wHTwUBGUjai55ARJwr4/5PeQaS4KXEuR+V1qqD1XEaOp93no7YL7
 eZrUey29p4qJ0Av5lLg7N83boKHSDqSjNO7YIqGCwtCg1eU1BImpoj7vp
 f7ddFD7oRl8/sXj3jehN1ZG0sHfAS5VoR9eE+Ni75nBaTuWr8IUdZVRwM
 4TcNGDRSMyNC9MlyKuJWMvXtTifRlJ7T7L9xa3ftCmzw8VXeQXKAjQ3XG
 ISt/HJdXIOONzugP9jI+5ci0uQk7REQ3JgU7L96zdGPGUnRXgv6X2w3CH
 /nMpJajBLqj3g3FPaWb2TCv/FYz9MhsJBCWzVIEd1bkfeERj7VvfD3Uli Q==;
X-CSE-ConnectionGUID: DvJ5aKBnQFuJ0Za3ktaccA==
X-CSE-MsgGUID: 5gYIdq6zTY2VogtsElUIOQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="47573795"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="47573795"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:52:45 -0800
X-CSE-ConnectionGUID: 4ITJGbFIQwaUfH3s0wS4lA==
X-CSE-MsgGUID: IUD1a/BKRPyNkLtuhB2VZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="132716687"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.246.242])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 05:52:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: imre.deak@intel.com,
	jani.nikula@intel.com
Subject: [PATCH v3 00/16] drm/i915/dp: 128b/132b uncompressed SST
Date: Fri,  3 Jan 2025 15:52:23 +0200
Message-Id: <cover.1735912293.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
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

This is v4 of [1], enabling uncompressed 128b/132b UHBR SST.

Address review comments from Imre.

[1] https://lore.kernel.org/r/cover.1734643485.git.jani.nikula@intel.com

Jani Nikula (16):
  drm/mst: remove mgr parameter and debug logging from
    drm_dp_get_vc_payload_bw()
  drm/i915/mst: drop connector parameter from intel_dp_mst_bw_overhead()
  drm/i915/mst: drop connector parameter from intel_dp_mst_compute_m_n()
  drm/i915/mst: change return value of
    mst_stream_find_vcpi_slots_for_bpp()
  drm/i915/mst: remove crtc_state->pbn
  drm/i915/mst: split out a helper for figuring out the TU
  drm/i915/mst: adapt intel_dp_mtp_tu_compute_config() for 128b/132b SST
  drm/i915/ddi: enable 128b/132b TRANS_DDI_FUNC_CTL mode for UHBR SST
  drm/i915/ddi: 128b/132b SST also needs DP_TP_CTL_MODE_MST
  drm/i915/ddi: write payload for 128b/132b SST
  drm/i915/ddi: initialize 128b/132b SST DP2 VFREQ registers
  drm/i915/ddi: enable ACT handling for 128b/132b SST
  drm/i915/ddi: start distinguishing 128b/132b SST and MST at state
    readout
  drm/i915/ddi: handle 128b/132b SST in intel_ddi_read_func_ctl()
  drm/i915/ddi: disable trancoder port select for 128b/132b SST
  drm/i915/dp: compute config for 128b/132b SST w/o DSC

 drivers/gpu/drm/display/drm_dp_mst_topology.c |  10 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      | 122 ++++++++--
 .../drm/i915/display/intel_display_types.h    |   2 -
 drivers/gpu/drm/i915/display/intel_dp.c       |  34 ++-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   | 218 +++++++++---------
 drivers/gpu/drm/i915/display/intel_dp_mst.h   |   7 +
 drivers/gpu/drm/nouveau/dispnv50/disp.c       |   3 +-
 .../gpu/drm/tests/drm_dp_mst_helper_test.c    |  17 +-
 include/drm/display/drm_dp_mst_helper.h       |   3 +-
 9 files changed, 259 insertions(+), 157 deletions(-)

-- 
2.39.5

