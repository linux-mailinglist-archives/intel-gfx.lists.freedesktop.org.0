Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNk6HYMCgmmYNgMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:13:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BE0DA68C
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Feb 2026 15:13:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 59C6A10E685;
	Tue,  3 Feb 2026 14:13:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PdJiwLCt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44EED10E681;
 Tue,  3 Feb 2026 14:13:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770127998; x=1801663998;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+YV6LIUee58HtjBLaWVlo/8hUkKV+JfcZuDArPrhbTU=;
 b=PdJiwLCtQmTsPCsOabVC5/4ek+ee4Vc3PB4zxh9CGKJYuHKSudp5xa9u
 5AM8mbS3wpbHiLYyfkIWBbT8P7tMw6pDLlaLpDZPy6FH8xP8QxQMbasa+
 mMSx2CFuJgT5AQskFRmZMwFUkOk6AAXF1BwCdz2AdJtVGrLKt7FPfmf3+
 prDcw+4VmlxpnUDY+PeQPFtdt40vpQ4izcootIQoeyif9ZRnCwcoNbl5A
 OGvwvLdC9CG4jdWgHSheafVcdw/47iRNBqNgcUp1/h0p3a5xJRiYroGee
 YSnaa+y6Al7IS8ZqGk6T454SRY7DVV6ulXkX0ZQI2q9klNcmBOs/af+T5 g==;
X-CSE-ConnectionGUID: 8lMPKLx8RFm6TaJhd9GtXA==
X-CSE-MsgGUID: W9arD6OjSFKrNCPV5AF5xQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11690"; a="75156433"
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="75156433"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 06:13:16 -0800
X-CSE-ConnectionGUID: aL8rBZ/fTFKZXg0mHge4gQ==
X-CSE-MsgGUID: ui81IkFxQ0CkKXVHy7hSMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,270,1763452800"; d="scan'208";a="208956286"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa006.jf.intel.com with ESMTP; 03 Feb 2026 06:13:14 -0800
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dibin.moolakadan.subrahmanian@intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 00/10] CMTG enablement
Date: Tue,  3 Feb 2026 19:13:57 +0530
Message-Id: <20260203134407.2823406-1-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
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
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: F0BE0DA68C
X-Rspamd-Action: no action

Common mode timing generator (CMTG) support is added LNL onwards.
Enable CMTG which will be needed by other fearure like dynamic dc
state enablement later.

Testing ongoing, currently counters are incrementing as expected.

Animesh Manna (8):
  drm/i915/cmtg: enable cmtg LNL onwards
  drm/i915/cmtg: cmtg set clock select
  drm/i915/cmtg: set timings for cmtg
  drm/i915/cmtg: program vrr registers of cmtg
  drm/i915/cmtg: program set context latency of cmtg
  drm/i915/cmtg: set transcoder mn for cmtg
  drm/i915/cmtg: program sync to port for cmtg
  drm/i915/cmtg: enable cmtg ctl

Dibin Moolakadan Subrahmanian (2):
  drm/i915/cmtg: enable cmtg in secondary mode
  drm/i915/cmtg: disable CMTG on transcoder disable

 drivers/gpu/drm/i915/display/intel_cmtg.c     | 140 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cmtg.h     |   4 +
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  22 +++
 drivers/gpu/drm/i915/display/intel_crt.c      |   1 +
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |   5 +
 drivers/gpu/drm/i915/display/intel_display.c  |  52 ++++---
 .../drm/i915/display/intel_display_types.h    |   7 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   4 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c   |   9 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      |   4 +
 10 files changed, 225 insertions(+), 23 deletions(-)

-- 
2.29.0

