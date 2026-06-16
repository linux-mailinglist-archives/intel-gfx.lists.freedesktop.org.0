Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5408H11jMWqFiQUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 16:53:17 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C38690AEC
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2026 16:53:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=ACXXwIJA;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACAA010EC22;
	Tue, 16 Jun 2026 14:53:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5F8D110EC1B;
 Tue, 16 Jun 2026 14:53:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1781621593; x=1813157593;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lhHXfYJY4JWiCuEq7Bh/hphDqsisI4gWa35b3gOQZBk=;
 b=ACXXwIJATP1Ak7az0YOJXIQpW2XisbslzZscM2PvUXj1Xjtn2sTbaYou
 s+XDWF40MfA3pjLRJeQyHS4WSGgxWctpqiJPTN4fy+JMrQR2Jz4uOacUv
 lKMOb3PFRI0nZorTbJHqaFbYbeWrzYjeJRXw+PAJ1SdLeIewiUJoXcGQd
 doXYKjBsGi7qkRy7lc9SHfUqdgv/qQ6XsznGqKou27QAWYGoW2oHKJ8bm
 A/u2ibsZd6vzb150bWMFsKU3ywu5+LIbLJ3Vch6xdU2/qhrROBj1XYzBI
 Oys5KyRBWZuiuZzWY84Np5yqz/5/0wgh7AKy+wOaAw5jPVuSpBWlM8DUY g==;
X-CSE-ConnectionGUID: 7WB7cv64QvGq8kezz5/2DA==
X-CSE-MsgGUID: HnKN3QrATtOBdtXsgKXmjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11818"; a="69932807"
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="69932807"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2026 07:53:13 -0700
X-CSE-ConnectionGUID: U8L3UYI0RnCwaVmw9p7rqg==
X-CSE-MsgGUID: fqHshM6qTk6Lw9Wp8JRLCg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,208,1774335600"; d="scan'208";a="285896286"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa001.jf.intel.com with ESMTP; 16 Jun 2026 07:53:11 -0700
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, ankit.k.nautiyal@intel.com,
 chaitanya.kumar.borah@intel.com
Subject: [PATCH v2 00/11] Enable CMRR in fixed-RR VRR path
Date: Tue, 16 Jun 2026 20:12:21 +0530
Message-ID: <20260616144233.832276-1-mitulkumar.ajitkumar.golani@intel.com>
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
X-Rspamd-Action: no action
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
	RCPT_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mitulkumar.ajitkumar.golani@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B8C38690AEC

The existing CMRR fractional-timing code was permanently
disabled (if (!HAS_CMRR || true)), eDP-only, and relied
on a heuristic to guess when the fractional path was needed.
This series reworks it into a generic, debugfs-driven feature,
which later will be controlled via userspace when respective
uapi will be in-palce.

Mitul Golani (11):
  drm/i915/vrr: add per-CRTC vrr/cmrr debugfs control
  drm/i915/vrr: compute CMRR fractional timings generically
  drm/i915/vrr: dump CMRR state in the crtc state dump
  drm/i915/vrr: Move CMRR hw registers to fix refresh rate path
  drm/i915/vrr: Enable/Disable CMRR based on enable/disable
    preconditions
  drm/i915/display: Move CMRR crtc_state members under VRR
  drm/i915/vrr: Fix the CMRR enabling/disabling sequence
  drm/i915/vrr: Compare state and HW registers if platform supports CMRR
  drm/i915/vrr: Remove TODO as CMRR is exclusive to Adaptive mode
  drm/i915/vrr: Return from CMRR compute config in case of PSR2 enabled
  drm/i915/vrr: Enable cmrr

 .../drm/i915/display/intel_crtc_state_dump.c  |   4 +
 drivers/gpu/drm/i915/display/intel_display.c  |   4 +-
 .../drm/i915/display/intel_display_debugfs.c  |   2 +
 .../drm/i915/display/intel_display_types.h    |  12 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   2 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      | 360 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_vrr.h      |   2 +
 7 files changed, 293 insertions(+), 93 deletions(-)

-- 
2.48.1

