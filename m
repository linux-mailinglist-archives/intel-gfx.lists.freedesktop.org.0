Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id iQw7GSFiMGpfSQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:35:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE45C689E53
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:35:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=P6ZhaLrg;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 48F1D10E6E0;
	Mon, 15 Jun 2026 20:35:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6EDA010E6C6;
 Mon, 15 Jun 2026 20:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781555742; x=1813091742;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LLW9lcK3wMbp8DteoKn8wrFmZX30di6thuM6N7hzuM0=;
 b=P6ZhaLrgAt9ilyNwt7w6T4ZiLCtuRjzCYsiXZv796MOXHqYgdAEGbqUd
 QCc9WVfzh8dndy12YLm9I4bcxPKqSMaYUGFHHvYDo2zTNmLbi5qqSvULj
 rs+0iWeIbs375TaCL5zp8AaCHNecicHjhnMgHtHmuXZGhm+HpOCbM/8jS
 UayoMnnOsWOG1b19sbLUbjUq6MgYfz+BYwRYWn/IdapX1KC9N/nBEhC2O
 1N1pMkOMSh8lmuTp42ZSfGfbFTYocwT4AHIUEczXjDYnSV4vCKx1f89iA
 gLRSuHjqBqENofL4uqn6UNajyYSPPEHG3T6pT/VDaFXNNdsirRegbjScq A==;
X-CSE-ConnectionGUID: gqFKRNpDTxmnlq1iOM13lw==
X-CSE-MsgGUID: idlSBLKBQB2Dx7/3TntEyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="93694714"
X-IronPort-AV: E=Sophos;i="6.24,207,1774335600"; d="scan'208";a="93694714"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2026 13:35:42 -0700
X-CSE-ConnectionGUID: 9BV9iF8uREW4/IGE3x3FGA==
X-CSE-MsgGUID: kam8jrfVQPm84/FZbhtUow==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.190.238.88])
 by fmviesa003.fm.intel.com with ESMTP; 15 Jun 2026 13:35:40 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v9 00/22] CMTG enablement
Date: Tue, 16 Jun 2026 01:33:17 +0530
Message-Id: <20260615200339.885190-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	ALIAS_RESOLVED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BE45C689E53

Common mode timing generator (CMTG) support is added NVL onwards.
Enable CMTG which will be needed by other fearure like dynamic dc
state enablement later.

Testing ongoing, currently counters are incrementing as expected.

Animesh Manna (19):
  drm/i915/cmtg: Add intel_cmtg_is_allowed() for CMTG
  drm/i915/cmtg: Set CMTG clock select
  drm/i915/cmtg: Add CMTG transcoder offset in struct _device_info
  drm/i915/display: Pass target transcoder to
    intel_set_transcoder_timings()
  drm/i915/display: Rename cpu_transcoder parameter to transcoder
  drm/i915/display: Skip DP_MIN_HBLANK_CTL programming for CMTG
    transcoders
  drm/i915/display: Pass transcoder to
    intel_set_transcoder_timings_lrr()
  drm/i915/display: Rename cpu_transcoder parameter to transcoder in LRR
    path
  drm/i915/cmtg: Set timings for CMTG by using transcoder timing helpers
  drm/i915/vrr: Pass transcoder to intel_vrr_set_fixed_rr_timings()
  drm/i915/display: Rename cpu_transcoder parameter to transcoder in VRR
    fixed-rr path
  drm/i915/cmtg: Program VRR fixed-rate timings for CMTG transcoder
  drm/i915/cmtg: Program VRR control register for CMTG transcoder
  drm/i915/cmtg: Set link M/N for CMTG transcoder
  drm/i915/cmtg: Add hook to enable CMTG with sync to port
  drm/i915/cmtg: Add a hook to make eDP transcoder secondary
  drm/i915/cmtg: Add trigger to enable/disable cmtg
  drm/i915/cmtg: Restore CMTG after DC6 exit
  drm/i915/cmtg: Add CMTG interrupt handling

Dibin Moolakadan Subrahmanian (3):
  drm/i915/cmtg: Modify existing hook to disable CMTG
  drm/i915/cmtg: Add CMTG HWGB programming
  drm/i915/cmtg: Add CMTG scan line programming

 drivers/gpu/drm/i915/display/intel_cmtg.c     | 277 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  17 ++
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  24 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  11 +
 drivers/gpu/drm/i915/display/intel_display.c  |  84 ++++--
 drivers/gpu/drm/i915/display/intel_display.h  |   4 +
 .../drm/i915/display/intel_display_device.c   |  14 +
 .../drm/i915/display/intel_display_device.h   |   2 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  19 ++
 .../gpu/drm/i915/display/intel_display_irq.h  |   2 +
 .../drm/i915/display/intel_display_limits.h   |   2 +
 .../drm/i915/display/intel_display_power.c    |  23 ++
 .../drm/i915/display/intel_display_power.h    |   2 +
 .../gpu/drm/i915/display/intel_display_regs.h |   2 +
 .../drm/i915/display/intel_display_types.h    |   4 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |  19 +-
 drivers/gpu/drm/i915/display/intel_vrr.h      |   4 +-
 17 files changed, 460 insertions(+), 50 deletions(-)

-- 
2.29.0

