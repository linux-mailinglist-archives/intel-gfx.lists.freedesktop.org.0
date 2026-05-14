Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFcgHqNkBWoZWAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 07:58:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 07DEE53E27C
	for <lists+intel-gfx@lfdr.de>; Thu, 14 May 2026 07:58:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8C8710E370;
	Thu, 14 May 2026 05:58:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dTEMfjCj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 971B410E138;
 Thu, 14 May 2026 05:58:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778738335; x=1810274335;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=7I6T0HIIYSy6kzvSENfJbEfuQfQT4318S1ePO1DVDbo=;
 b=dTEMfjCjv/nAyKaC+E2ZKB7kwG97ZBBcF0lvSUdos4RJf0eSfJvlmyU1
 o1VrC+lR/X5aoVrWBy1JMaQX7/D94LBiAIUeOJ73Jx+o5kRSG3evxnxTQ
 BXtgDlHb4NIjyVkhA8WurWJQ17cHxjqULzMGnS7DRHIza52fIjh5np5+b
 Zl6HG+u5Pq17vHeN8+CgZ7PnOd0yFpodIPcKhRlqqSmLqJUMJBKDdiT6h
 vgsNUxoGw1EBniAuZYVel67yJB3/n3OWrNwweryoSP7cOHflrJLRvWaIz
 LuIDr4rN/1ar9k7TZDiyUoS6zO3xEw0Hg0b+mTl8W5Kf9n791gO3nme2V Q==;
X-CSE-ConnectionGUID: MKVTGSAnSvC6z0t4sQz1+A==
X-CSE-MsgGUID: 0yLlknW1S1C9bN7z0XC0nA==
X-IronPort-AV: E=McAfee;i="6800,10657,11785"; a="67203215"
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="67203215"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2026 22:58:54 -0700
X-CSE-ConnectionGUID: RFsjeCBCTP+dUItm07UvXQ==
X-CSE-MsgGUID: 38xbwQmnRvWct1rEwJu+mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,234,1770624000"; d="scan'208";a="237434211"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa010.jf.intel.com with ESMTP; 13 May 2026 22:58:52 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, arun.r.murthy@intel.com, jani.nikula@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] drm/i915/backlight: Sanitize BIOS-enabled PCH PWM in
 full-AUX VESA path
Date: Thu, 14 May 2026 11:28:46 +0530
Message-Id: <20260514055848.871938-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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
X-Rspamd-Queue-Id: 07DEE53E27C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

In full-AUX VESA mode (aux_enable && aux_set) the driver never touches the
native PCH PWM. If BIOS left the PWM CTL register enabled, the PCH PWM keeps
the system alive during s2idle and blocks S0ix. This series sanitizes that
stale BIOS state on first enable so S0ix is no longer blocked, while keeping
runtime behaviour otherwise unchanged.
Patch 1 is a minor debug-message rename cleanup.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>

Suraj Kandpal (2):
  drm/i915/backlight: Rename debug message in the setup() callback
  drm/i915/backlight: Sanitize BIOS-enabled PCH PWM in full-AUX VESA
    path

 .../gpu/drm/i915/display/intel_backlight.c    | 14 ++++----
 .../drm/i915/display/intel_dp_aux_backlight.c | 32 +++++++++++++------
 2 files changed, 30 insertions(+), 16 deletions(-)

-- 
2.34.1

