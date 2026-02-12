Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOBWOvVTjWlz1AAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 05:15:49 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 471E112A486
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Feb 2026 05:15:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8A5410E6D1;
	Thu, 12 Feb 2026 04:15:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HaoJpUpF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 04E6010E152;
 Thu, 12 Feb 2026 04:15:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770869746; x=1802405746;
 h=from:subject:date:message-id:mime-version:
 content-transfer-encoding:to:cc;
 bh=gKJTLMRvqnDc8t15FROmBwVD4vqQr40xVf9Iv7fKNOc=;
 b=HaoJpUpFV7ZRBguDFE2RBorASbq00T3dHZ20PM/76zSLUbWJcNh6cRqY
 CnJPDfPgqFP0jN5g6UZDYYlEIqtNZo+althnTD1PX55OUdVLljhF80RYg
 64xmJh5NcsHMqhCTA7G13xIQ2GjdYv9Uy+X3Dc4R5zpluDzusCxmy9ja4
 nraW7/rBw7vsXFlk6yAikfFrLrL5ROjfn6eABGBbCQaeAfUzt3JgcT6tX
 jCIGFa0JTcwFIvzJH3kVnPNxiGTHvdmWJ8/fBeDN0/NldAltwbO50ghwk
 ugQMDMjAKUEm5SZB+Z1VwQ58xiFDnyUS6+vE9FpL20WSlbpyF5pJQ41FU g==;
X-CSE-ConnectionGUID: tZtf5PW1QqS9YxSnKy3byA==
X-CSE-MsgGUID: C2B0mOHsTuS6jaRanRR/xA==
X-IronPort-AV: E=McAfee;i="6800,10657,11698"; a="75881019"
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="75881019"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2026 20:15:45 -0800
X-CSE-ConnectionGUID: MtRDM5o+QPG0WEhJvRQ3dg==
X-CSE-MsgGUID: g7MKtThhROCZijQ9XZd0cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,286,1763452800"; d="scan'208";a="235437104"
Received: from srr4-3-linux-106-armuthy.iind.intel.com ([10.190.238.56])
 by fmviesa002.fm.intel.com with ESMTP; 11 Feb 2026 20:15:43 -0800
From: Arun R Murthy <arun.r.murthy@intel.com>
Subject: [PATCH 0/2] Update the PHY timeouts
Date: Thu, 12 Feb 2026 09:44:18 +0530
Message-Id: <20260212-timeout-v1-0-591fa766e8a1@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJpTjWkC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDI0Mj3ZLM3NT80hJdA7PkJCNjozRzw8Q0JaDqgqLUtMwKsEnRsbW1AHa
 hl+pZAAAA
X-Change-ID: 20260212-timeout-06cb232f71af
To: Jani Nikula <jani.nikula@linux.intel.com>, uma.shankar@intel.com, 
 suraj.kandpal@intel.com, ankit.k.nautiyal@intel.com
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org, 
 Arun R Murthy <arun.r.murthy@intel.com>
X-Mailer: b4 0.15-dev
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[arun.r.murthy@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 471E112A486
X-Rspamd-Action: no action

The timeouts mentioned in the spec is the recommendation from the PHY
and doesnt include the turnaround time of SoC and the OS. So ensure that
sufficient overhead is added for SoC and OS along with the PHY
recommended timeouts.

Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
---
Arun R Murthy (2):
      drm/i915/display/cx0_phy_regs: Include Soc and os turnaround time
      drm/i915/display/lt_phy_regs: Add SoC/OS turnaround time

 drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h | 4 ++--
 drivers/gpu/drm/i915/display/intel_lt_phy_regs.h  | 8 ++++----
 2 files changed, 6 insertions(+), 6 deletions(-)
---
base-commit: b4bfe7d753afaf6ea4950111a309a4e2ef5aef68
change-id: 20260212-timeout-06cb232f71af

Best regards,
-- 
Arun R Murthy <arun.r.murthy@intel.com>

