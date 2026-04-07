Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QL2jGC/j1Gn0yQcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:57:51 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BF8C73AD5FE
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 12:57:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4A66B10E3DF;
	Tue,  7 Apr 2026 10:57:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g8CA6q5A";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 903DF10E3DF;
 Tue,  7 Apr 2026 10:57:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775559468; x=1807095468;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LMABcR3jbqRmDm1O6/6zFE/NMFz2z9NJHEWju68KIrA=;
 b=g8CA6q5AcSwt6FUHK7ywTEtpzAvJ7cqNkXybpEd7Q8lleeIDcSCs1S7t
 dLTSA5zsBS8E4tX1eu1oJWCXf6tTF6qqcrzlwadR9TPunYZiUcYGhqcS5
 nUrjMiAmwkwJ60iIgm/Ru5Tj0kJxZnrGnuepswBeH9tq2J5hGn6CwUDec
 DFxnMU5HZf0YkYReGtUjQ6lEo1nQteUqcAtDqvgCAN+A/hVuxzhYJok5b
 Md6c8JQ/WafwAYujgCGAVkFmv2X20kVN8j3ydDBL5Tm/ayGdzMcIfnKmt
 rtAuWxDCaVWF6vMmazyHRqxQ5b0lyBLU4nM3c/96KM2/S0J2DMs2sbhGF Q==;
X-CSE-ConnectionGUID: 8Ms3l+S7Qgmk4GnSXCP5eg==
X-CSE-MsgGUID: y+kE4PuJRpW8xAEcTSW6Ew==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="101972832"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="101972832"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:57:48 -0700
X-CSE-ConnectionGUID: jqh8qkpyQI2Wd459QxcPeg==
X-CSE-MsgGUID: Ah3Ar6ETTIyjadhcoRhcsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="258577952"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.244])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 03:57:46 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 0/3] drm/i915: relocate mchbar and pci regs headers
Date: Tue,  7 Apr 2026 13:57:39 +0300
Message-ID: <cover.1775559414.git.jani.nikula@intel.com>
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
	NEURAL_HAM(-0.00)[-0.997];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: BF8C73AD5FE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Move the MCHBAR and PCI regs headers under include/drm/intel.

Jani Nikula (3):
  drm/i915/mchbar: include intel_mchbar_regs.h from intel_mchbar.h
  drm/i915/mchbar: move intel_mchbar_regs.h under include/drm/intel
  drm/i915/pci: move intel_pci_config.h under include/drm/intel

 drivers/gpu/drm/i915/display/i9xx_display_sr.c              | 2 +-
 drivers/gpu/drm/i915/display/i9xx_wm.c                      | 1 -
 drivers/gpu/drm/i915/display/intel_backlight.c              | 2 +-
 drivers/gpu/drm/i915/display/intel_bw.c                     | 1 -
 drivers/gpu/drm/i915/display/intel_cdclk.c                  | 3 +--
 drivers/gpu/drm/i915/display/intel_display_power.c          | 1 -
 drivers/gpu/drm/i915/display/intel_dram.c                   | 1 -
 drivers/gpu/drm/i915/display/intel_lpe_audio.c              | 2 +-
 drivers/gpu/drm/i915/display/intel_mchbar.c                 | 1 -
 drivers/gpu/drm/i915/display/intel_mchbar.h                 | 2 ++
 drivers/gpu/drm/i915/display/intel_opregion.c               | 2 +-
 drivers/gpu/drm/i915/gem/i915_gem_stolen.c                  | 4 ++--
 drivers/gpu/drm/i915/gt/intel_ggtt.c                        | 2 +-
 drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c                | 2 +-
 drivers/gpu/drm/i915/gt/intel_gt.c                          | 2 +-
 drivers/gpu/drm/i915/gt/intel_gt_pm_debugfs.c               | 2 +-
 drivers/gpu/drm/i915/gt/intel_llc.c                         | 2 +-
 drivers/gpu/drm/i915/gt/intel_region_lmem.c                 | 2 +-
 drivers/gpu/drm/i915/gt/intel_reset.c                       | 5 +++--
 drivers/gpu/drm/i915/gt/intel_rps.c                         | 4 ++--
 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c                 | 2 +-
 drivers/gpu/drm/i915/gvt/cfg_space.c                        | 2 +-
 drivers/gpu/drm/i915/gvt/handlers.c                         | 4 ++--
 drivers/gpu/drm/i915/i915_debugfs.c                         | 2 +-
 drivers/gpu/drm/i915/i915_driver.c                          | 2 +-
 drivers/gpu/drm/i915/i915_freq.c                            | 2 +-
 drivers/gpu/drm/i915/i915_gmch.c                            | 2 +-
 drivers/gpu/drm/i915/i915_hwmon.c                           | 2 +-
 drivers/gpu/drm/i915/i915_overlay.c                         | 2 +-
 drivers/gpu/drm/i915/i915_pci.c                             | 2 +-
 drivers/gpu/drm/i915/intel_clock_gating.c                   | 4 ++--
 drivers/gpu/drm/i915/intel_gvt_mmio_table.c                 | 2 +-
 drivers/gpu/drm/xe/compat-i915-headers/intel_mchbar_regs.h  | 6 ------
 drivers/gpu/drm/xe/compat-i915-headers/intel_pci_config.h   | 6 ------
 .../intel_mchbar_regs.h => include/drm/intel/mchbar_regs.h  | 0
 .../intel_pci_config.h => include/drm/intel/pci_config.h    | 0
 36 files changed, 34 insertions(+), 49 deletions(-)
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_mchbar_regs.h
 delete mode 100644 drivers/gpu/drm/xe/compat-i915-headers/intel_pci_config.h
 rename drivers/gpu/drm/i915/intel_mchbar_regs.h => include/drm/intel/mchbar_regs.h (100%)
 rename drivers/gpu/drm/i915/intel_pci_config.h => include/drm/intel/pci_config.h (100%)

-- 
2.47.3

