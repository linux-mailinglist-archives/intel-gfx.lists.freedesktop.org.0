Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wLlZO4GyeGkksQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 13:41:37 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 61DA994681
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 13:41:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8789110E556;
	Tue, 27 Jan 2026 12:41:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HakLFWtM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 803B710E55C;
 Tue, 27 Jan 2026 12:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769517694; x=1801053694;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=o6tVEkpAqJfgw4HJ50YcutlKmktbc7BsSaXBOS7eBZo=;
 b=HakLFWtMG7VN2GRlGWqfiRw4UJGNKwN8C2ZQpfa9IJWVxFr/uTFzv8j4
 D0fOt5Ym0A2sFXB0lbHkCTf5NXTLQlSVn0s8vndBTNl9Iq3GhsZ2+PjC/
 YQtoif64kVc4sjmW61l0ivWt3xWBV9cbGjuudkQ/5jOTN/wfsbm8UYJ4x
 JLA8xMEgTk3+9kA+6UIaHu1tbP57s6oJd9hDw6zK5IuDczE+8teZoHv5F
 SNiXegmk1To8odwC0jU7KgN3lscIw8mVJyRSlQmb0hUkkdb8aIJA8JX6L
 UP1XZ9vYKqKzq7GQ2ZihzzkZcLmDCChF05/zaFRXyAMNQk/FGPXRk+ZDu g==;
X-CSE-ConnectionGUID: TdGjPeLDQ+664QLaU6n5FA==
X-CSE-MsgGUID: lreVL71WR8ai5iwEIxHKzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="70767641"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="70767641"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 04:41:34 -0800
X-CSE-ConnectionGUID: IUpxjwR6Sxq0JXr9aQTx+g==
X-CSE-MsgGUID: isWnRvMbSRC1B/qXLIiO5Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="239231213"
Received: from ettammin-desk.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.134])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 04:41:32 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v11 00/11] Use trans push mechanism to generate frame change
 event
Date: Tue, 27 Jan 2026 14:41:09 +0200
Message-ID: <20260127124120.1069026-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 61DA994681
X-Rspamd-Action: no action

Use trans push mechanism to generate frame change event
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo

Currently we are using "automatic" frame change event generation. The
event is generated by any access to plane or pipe registers.

We have option to use "PSR PR Frame Change Enable" bit in TRANS_PUSH
register to enable frame change event generation only when doing trans
push. When this bit is set "automatic" frame change event generation
doesn't work anymore. Benfit from this is more controled updates send
by PSR HW.

This patch set is taking trans push mechanism into use.

v11:
  - moved adding intel_vrr_psr_frame_change_enable to separate patch
  - typos fixed
  - comment and commit message updates
v10:
  - added patch implementing helper for parsing value to be written
    into TRANS_PUSH
  - Adding HAS_PSR_FRAME_CHANGE macro moved to separate patch and
    renamed as HAS_PSR_TRANS_PUSH_FRAME_CHANGE
  - use intel_psr_use_trans_push instead of HAS_PSR_FRAME_CHANGE in
    intel_psr_trigger_frame_change
  - moved calling intel_vrr_psr_frame_change_enable away from this
    patch
  -
v9: always do PSR exit on frontbuffer flush for LunarLake and onwards
v8:
  - rebase
  - Wait for idle only after possible send
v7:
  - added bspec references
  - add HAS_PSR_FRAME_CHANGE macro
  - use TRANS_PUSH in instead of TRAN_VRR_CTL
  - "Do not trigger Frame Change events from frontbuffer flush" patch
    already merged
v6: use AND instead of OR in intel_psr_use_trans_push
v5: add missing patch
v4:
  - add intel_psr_use_trans_push to query if TRANS_PUSH is used
  - set DSB_SKIP_WAITS_EN chicken bit when TRANS_PUSH is used
  - Wait for vblank in case of PSR is using trans push
v3:
  - use rmw when enabling disabling transh push for PSR or VRR
  - rely on crtc_state->has_psr/has_vrr to keep trans push enabled
  - modify frontbuffer flush/invalidate to use disable/enable also for
    SU/SF on recent platforms.
  - send push before waiting for vblank
v2: implement intel_vrr_trans_push_enabled_set_clear and use that
    instead of rmw

Jouni Högander (11):
  drm/i915/psr: Add TRANS_PUSH register bit definition for PSR
  drm/i915/psr: Add intel_psr_use_trans_push to query if TRANS_PUSH is
    used
  drm/i915/vrr: Add helper for parsing value to be written into
    TRANS_PUSH
  drm/i915/vrr: Add helper for PSR to enable Frame Change event on trans
    push
  drm/i915/vrr: Prepare to Use TRANS_PUSH mechanism for PSR frame change
  drm/i915/dsb: Set DSB_SKIP_WAITS_EN chicken bit for LunarLake and
    onwards
  drm/i915/display: Wait for vblank in case of PSR is using trans push
  drm/i915/psr: Wait for idle only after possible send push
  drm/i915/psr: Do PSR exit on frontbuffer flush on LunarLake and
    onwards
  drm/i915/display: Add HAS_PSR_TRANS_PUSH_FRAME_CHANGE macro
  drm/i915/psr: Use TRANS_PUSH to trigger frame change event

 drivers/gpu/drm/i915/display/intel_crtc.c     |  4 +-
 drivers/gpu/drm/i915/display/intel_display.c  | 33 ++++++++++++++--
 .../drm/i915/display/intel_display_device.h   |  1 +
 drivers/gpu/drm/i915/display/intel_dsb.c      | 15 +++++--
 drivers/gpu/drm/i915/display/intel_psr.c      | 36 +++++++++++------
 drivers/gpu/drm/i915/display/intel_psr.h      |  1 +
 drivers/gpu/drm/i915/display/intel_vrr.c      | 39 ++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_vrr.h      |  1 +
 drivers/gpu/drm/i915/display/intel_vrr_regs.h |  1 +
 9 files changed, 106 insertions(+), 25 deletions(-)

-- 
2.43.0

