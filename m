Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iExvIJpK1mkFDQgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 14:31:22 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F40B93BC16C
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 14:31:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9110A10E630;
	Wed,  8 Apr 2026 12:31:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aIHYIZnX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0C28E10E62E;
 Wed,  8 Apr 2026 12:31:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775651479; x=1807187479;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0TrNJ2gZ1o/Jx1vH2lZDPCohtk+jD1tXvqsSySMBaoU=;
 b=aIHYIZnXXgJJ+h2x5+JnvEJa0RDLei5nOHL5+XtC0OG1Vwm7lbNgF90d
 VLqGi9RFNTXab/O8/5I37JZjCDf8A+Q1HSaGZ7Ds8fjWnuqzmqu+iHk8Y
 +j192vI79APYQOwH5oSlhj1HP8nNaB+49Qbd+Gv2QzAkXHhlsumaWifbV
 87C60kx7rqnUJeyg6eIFKtR8AiX/HG7TsL7k1d80cCH9nBR03qPtJkAy7
 ze89AgTvn5Xwqp5+2ikTBI+/qeUop+L+s6ERacGxS+SgG5bZhryk3vkXm
 m5MrTKFlGqdyg17Mx6R616AdXzhB+h76GP4n0X/GtK3Ma0TffcA+hmimL g==;
X-CSE-ConnectionGUID: uhr3S234RIe1vbS7E8iTpg==
X-CSE-MsgGUID: RJ+/gSeiSh27kAWlt/Bw9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80519048"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="80519048"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 05:31:19 -0700
X-CSE-ConnectionGUID: FFyipkJzSsGNIcDuGLQN4A==
X-CSE-MsgGUID: /1qspGmFTeOA6wLiUI4+Rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="251781942"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.73])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 05:31:17 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH v3 0/9] drm/i915: Fix CDCLK and scaler prefill calculations
Date: Wed,  8 Apr 2026 15:31:05 +0300
Message-ID: <20260408123115.15716-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: F40B93BC16C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reorder stuff enough to allow the prefill vs. vblank checks
to use the real per-crtc min CDCLK and the real scale factors.

v2: Add an early crtc_state->min_cdclk vs. max_cdcdlk_freq check
v3: Rebase

Ville Syrjälä (9):
  drm/i915/scaler: Don't clobber plane scaler scale factors with pfit
    scale factors
  drm/i915/scaler: Adjust pipe scaler scale factors for 4:2:0 ouput
  drm/i915:
    s/intel_atomic_check_crtcs()/intel_atomic_check_crtcs_late()/
  drm/i915: Introduce a new intel_atomic_check_crtcs()
  drm/i915/scaler: Call skl_update_scaler_crtc() earlier
  drm/i915/scaler: Assign scalers earlier
  drm/i915/wm: Do skl_wm_check_vblank() after DDB stuff
  drm/i915/cdclk: Use a more optimal min_cdclk for vblank length check
  drm/i915/scaler: Use the actual scale factors for vblank length check

 drivers/gpu/drm/i915/display/intel_cdclk.c   | 17 +++-
 drivers/gpu/drm/i915/display/intel_display.c | 61 +++++++++-----
 drivers/gpu/drm/i915/display/skl_scaler.c    | 88 +++++++++++++++++---
 drivers/gpu/drm/i915/display/skl_watermark.c |  6 +-
 4 files changed, 139 insertions(+), 33 deletions(-)

-- 
2.52.0

