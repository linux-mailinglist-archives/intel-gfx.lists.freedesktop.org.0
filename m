Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 1TmrNq/xC2rnRgUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:14:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 644925775EF
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 07:14:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A17F10E121;
	Tue, 19 May 2026 05:14:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dwoLOlHm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC26510E121
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2026 05:14:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779167660; x=1810703660;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HOvU23p1Z9mrW7MUCCC5JXSFGIMOd5hcslzjOWXlbr8=;
 b=dwoLOlHmjzxFUp5htNv3oW9xkxCkHwhpPquICl8mGICRs+34S9UhiLdN
 RcskeycOHWM3Bq+LNTYTjrHjh6WjJTqtZ1kCm8wSix2RNb1o69RtzeS6p
 w4jDXtKZjPfdykTk2z6Ip9yuvkxuQaiSBWqsg41TrVcp21Ue5n5QmSX5R
 92Rq2b4+XGf29I8Tp/RfjKZ5NoZQ8tvBijx6hUYBup2+5OB0RZ4ZQ86JJ
 7qjJZxPbh9WjwdEIqQK7sLDZ5IoeClWyEDs0cs3nIpeCOOxZ56LsAxf2a
 KN9pqSm04hkZVEE0e2eXLXoVBSiSzPd/pXZTX+KVT//TJDVMgbyskjtlt A==;
X-CSE-ConnectionGUID: wDUSJT7tTAump3azu9Rkzw==
X-CSE-MsgGUID: +6PEeacUSxeoHE8u9r9OYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="97603536"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="97603536"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 22:14:19 -0700
X-CSE-ConnectionGUID: prrLq5MmRBmWIktlX+nOLQ==
X-CSE-MsgGUID: rAnzMMF7RAqKUZMk+hKX/g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="243635792"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 18 May 2026 22:14:18 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: mitulkumar.ajitkumar.golani@intel.com, ankit.k.nautiyal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v1 0/8] Enable CMRR in fixed-RR VRR path
Date: Tue, 19 May 2026 10:33:14 +0530
Message-ID: <20260519050322.3677451-1-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 644925775EF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

CMRR is treated as a fixed-RR case using the VRR timing generator,
where vmin = vmax = flipline and vtotal is derived from a configurable
fractional scaling level.

On CMRR-capable eDP, the fixed-RR timing path computes CMRR vtotal and
programs CMRR M/N based on the configured level.

Mitul Golani (8):
  drm/i915/display: Move CMRR crtc state into vrr state
  drm/i915/vrr: Move CMRR register writes to fix refresh rate path
  drm/i915/display: Introduce CMRR fraction level to vrr crtc state
  drm/i915/display: Add state dump for CMRR params
  i915/display/vrr: Compute CMRR params along with fixed refresh rate
    params
  drm/i915/display: Add per-CRTC debugfs interface for CMRR fraction
    level
  drm/i915/vrr: Compute CMRR vtotal based on configured scaling level
  i915/display/vrr: Enable CMRR

 .../drm/i915/display/intel_crtc_state_dump.c  |   6 +
 drivers/gpu/drm/i915/display/intel_display.c  |  10 +-
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../drm/i915/display/intel_display_types.h    |  17 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 218 ++++++++++++------
 drivers/gpu/drm/i915/display/intel_vrr.h      |   3 +
 7 files changed, 172 insertions(+), 86 deletions(-)

-- 
2.48.1

