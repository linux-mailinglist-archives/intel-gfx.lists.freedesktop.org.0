Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uB/1I39EqGkfsAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 15:41:03 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFFC201C22
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 15:41:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF3CC10EA22;
	Wed,  4 Mar 2026 14:41:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hDYWubWa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F056510EA17;
 Wed,  4 Mar 2026 14:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772635260; x=1804171260;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Wi0xU58MwDDZApqGPzC3+ppeAFchr7YSj2b+nQzDPWM=;
 b=hDYWubWap1dXESeJAGstzZqvSn6dtetUEtyt/T4Zk8Pjn9DTvOUdHdlZ
 Ga7eJpDCitdpWUPmG1sMA0uD3w8/HNhWJFVCGX6JWgvW6Bzdp87NO6Azg
 hOetQgfYRRyC+WeN5h56cjWrwNj2NVky2ScqhAENjMaMqEahRXNLQ+ORO
 LhBEQf9NCvmF7sige+gTImxFVB9gvAj3laH219rG2HtgjHp7Sibwej3fK
 KdFmD/QTyyHZUJ/A8lgJElGpo4zKSqyDhUdjv6ElwaUl6qnjwzxVE70ft
 PA3COXi3MHtCTw9aAyIS2m+KlP1rTDwr8QO0P4jEsimVgkVASig7dScMP Q==;
X-CSE-ConnectionGUID: 728K4DvDSNq3WQr8HQanFw==
X-CSE-MsgGUID: aJxy3KbsQHydy7T+VvJ11g==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="84330018"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="84330018"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 06:41:00 -0800
X-CSE-ConnectionGUID: OCjHdQ+WTmCY3ZlItbi21A==
X-CSE-MsgGUID: m2sLyKorT9qORLudFIYSoA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="218479306"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.84])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 06:40:58 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/8] drm/{i915,xe}: sort out step enums between the drivers
Date: Wed,  4 Mar 2026 16:40:45 +0200
Message-ID: <cover.1772635152.git.jani.nikula@intel.com>
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
X-Rspamd-Queue-Id: EBFFC201C22
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

A bunch of cleanup to share step enum across drivers.

Jani Nikula (8):
  drm/i915/dmc: simplify stepping info initialization
  drm/i915/display: add step name in display runtime info
  drm/i915/dmc: use step name from runtime info
  drm/xe/compat: remove intel_step_name macro
  drm/intel: add shared step.h and switch i915 to use it
  drm/xe/step: switch to the shared step definitions with i915
  drm/xe/step: switch from enum xe_step to intel_step naming
  drm/i915/display: switch to including common step file directly

 drivers/gpu/drm/i915/display/intel_cdclk.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_ddi.c      |  2 +-
 .../drm/i915/display/intel_display_device.c   | 30 +++++++--
 .../drm/i915/display/intel_display_device.h   |  1 +
 .../drm/i915/display/intel_display_power.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_dmc.c      | 19 +++---
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  2 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c |  2 +-
 drivers/gpu/drm/i915/display/intel_fbc.c      |  2 +-
 drivers/gpu/drm/i915/display/intel_flipq.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_hdcp.c     |  2 +-
 drivers/gpu/drm/i915/display/intel_pmdemand.c |  2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      |  2 +-
 .../drm/i915/display/skl_universal_plane.c    |  2 +-
 drivers/gpu/drm/i915/intel_step.h             | 57 +----------------
 .../drm/xe/compat-i915-headers/intel_step.h   | 14 -----
 drivers/gpu/drm/xe/tests/xe_pci.c             |  4 +-
 drivers/gpu/drm/xe/xe_step.c                  |  2 +-
 drivers/gpu/drm/xe/xe_step.h                  |  4 +-
 drivers/gpu/drm/xe/xe_step_types.h            | 61 +-----------------
 include/drm/intel/step.h                      | 62 +++++++++++++++++++
 21 files changed, 117 insertions(+), 159 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_step.h
 create mode 100644 include/drm/intel/step.h

-- 
2.47.3

