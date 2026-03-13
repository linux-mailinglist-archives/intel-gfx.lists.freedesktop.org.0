Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0NhtKjI1tGn4igAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 17:02:58 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BBD1D2868E9
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 17:02:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8964710E46B;
	Fri, 13 Mar 2026 16:02:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gcSpRszh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22A1510E45B;
 Fri, 13 Mar 2026 16:02:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773417774; x=1804953774;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=zB3V7bGxksL3/f0fptc8KKbDH2ZQ8vP23RYHUtkxrow=;
 b=gcSpRszhiL3VNLFV+T7u7N+2Fyqk5mtjUiuik46mGHeqCOjWuJywd7ko
 p0Y8ojHseXM1N/my3qMkVtZsh+O6Snhre5GtUvvRyfVckf9glPM5ubm1A
 qx9x5rhWZilu9D5ZsL6NuViMPSznVk+XRRcwOZXT3RczrcNlLG8jZMv1J
 I2fIgbXL0q5QuX8n4Yw7XAA8XhsgnBUp3OUcD9LWuVrI8pqHWq9/y3g5F
 /hLw2mkPQj3tA72/7HIoWSrCCjmgHLAo1GMCXsgF2Gb1pwU8gcXAyepuj
 Dg1bH17+hZiUbn880qGy9U7g8fNxsR4+F/ICjnoRWaFshS1D53x/B8vM/ Q==;
X-CSE-ConnectionGUID: KAsbZ6R4T8aY6i5GYFG0dQ==
X-CSE-MsgGUID: tH7T4YxgSSWDeZnE8vqTaw==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="74715305"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="74715305"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 09:02:54 -0700
X-CSE-ConnectionGUID: VikaKam/RRGrNxNdZ5SxFQ==
X-CSE-MsgGUID: CaMvVLZZR+i8b1nwkWp+vg==
X-ExtLoop1: 1
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa003.fm.intel.com with ESMTP; 13 Mar 2026 09:02:51 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, uma.shankar@intel.com,
 dibin.moolakadan.subrahmanian@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v3 00/12] CMTG enablement
Date: Fri, 13 Mar 2026 21:02:48 +0530
Message-Id: <20260313153300.3530695-1-animesh.manna@intel.com>
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
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: BBD1D2868E9
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Common mode timing generator (CMTG) support is added LNL onwards.
Enable CMTG which will be needed by other fearure like dynamic dc
state enablement later.

Testing ongoing, currently counters are incrementing as expected.

Animesh Manna (11):
  drm/i915/cmtg: add is_enable_allowed() for cmtg
  drm/i915/cmtg: set CMTG clock select
  drm/i915/cmtg: set timings for CMTG
  drm/i915/cmtg: program VRR registers of CMTG
  drm/i915/cmtg: set transcoder mn for CMTG
  drm/i915/cmtg: add hook to enable CMTG with sync to port
  drm/i915/cmtg: add a hook to enable ddi for CMTG
  drm/i915/cmtg: Add trigger to enable/disable cmtg
  drm/i915/cmtg: Add CMTG interrupt handling
  drm/i915/cmtg: set dc3co_enable flag for lobf/psr2/pr-alpm
  drm/i915/cmtg: disable CMTG if dc3co entry condition not met

Dibin Moolakadan Subrahmanian (1):
  drm/i915/cmtg: modify existing hook to disable CMTG

 drivers/gpu/drm/i915/display/intel_cmtg.c     | 248 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  14 +
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  24 +-
 drivers/gpu/drm/i915/display/intel_display.c  |  28 ++
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../gpu/drm/i915/display/intel_display_irq.c  |  12 +
 .../gpu/drm/i915/display/intel_display_regs.h |   6 +
 .../drm/i915/display/intel_display_types.h    |   8 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   8 +
 drivers/gpu/drm/i915/display/intel_lt_phy.c   |   7 +-
 drivers/gpu/drm/i915/display/intel_vrr.c      |   5 +
 11 files changed, 349 insertions(+), 12 deletions(-)

-- 
2.29.0

