Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WE3MKaGpFWpGXgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 16:09:37 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F4C15D718D
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 16:09:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B876B10E4C6;
	Tue, 26 May 2026 14:09:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Tg+hCvBS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6BE710E4C6;
 Tue, 26 May 2026 14:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779804574; x=1811340574;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=6zy68fqOQWwXeJ6XuEC/NgxFeNi8jGZAsJfGf//jDfU=;
 b=Tg+hCvBSYoZJndzLNch7+/PJiSMJJ7t4E6Ivoncm5znv5eWEpceebOhV
 5l67pNJFQA+nZYxSQHI3DG5yce5tJ4vgl/ftZXSIy7mgUfBCoYOJcO660
 JZQXQTU6HhXaZGw3XTSpMjI1olux+hfJSDEjmJsmIfoPwRVE3PyuskH2p
 TI51LAdlEGyl0Xf3FrSwli8CIeioeMtpgDtfx5QroC3S2hinLEM6SW4cX
 kE9W2PyYTyrrZVBPYc6U/LZRgRcvrGkL2ujk+PPym/dV+rocVxc938PL4
 RWekwBafbHltSdN71iCVttqUZWGLi/7O+y+0AJhdON9uSkxNUeH7/FaBe Q==;
X-CSE-ConnectionGUID: uwOAfYczSziMCmUjB54ynA==
X-CSE-MsgGUID: n/Gdg2NpQsuFolEtNap2hg==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="98041694"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="98041694"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 07:09:34 -0700
X-CSE-ConnectionGUID: autP5l33TrWC5nf2K3eI8w==
X-CSE-MsgGUID: 0ozxd3fOSbmOCw4tBFL6oA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="235578066"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa009.fm.intel.com with ESMTP; 26 May 2026 07:09:31 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 ville.syrjala@linux.intel.com, jani.nikula@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 00/15] CMTG enablement
Date: Tue, 26 May 2026 19:07:56 +0530
Message-Id: <20260526133811.2621675-1-animesh.manna@intel.com>
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
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
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:dkim];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 3F4C15D718D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Common mode timing generator (CMTG) support is added NVL onwards.
Enable CMTG which will be needed by other fearure like dynamic dc
state enablement later.

Testing ongoing, currently counters are incrementing as expected.

Animesh Manna (12):
  drm/i915/cmtg: Add intel_cmtg_is_allowed() for CMTG
  drm/i915/cmtg: Set CMTG clock select
  drm/i915/cmtg: Add cmtg transcoder offset in struct _device_info
  drm/i915/cmtg: Set timings for CMTG
  drm/i915/cmtg: Program VRR registers of CMTG
  drm/i915/cmtg: Set transcoder mn for CMTG
  drm/i915/cmtg: Add hook to enable CMTG with sync to port
  drm/i915/cmtg: Add a hook to make eDP transcoder secondary
  drm/i915/cmtg: Add CMTG interrupt handling
  drm/i915/cmtg: Add trigger to enable/disable cmtg
  drm/i915/cmtg: Restore CMTG after DC6 exit
  [Not for Review] Debug patch

Dibin Moolakadan Subrahmanian (3):
  drm/i915/cmtg: Modify existing hook to disable CMTG
  drm/i915/cmtg: Add CMTG HWGB programming
  drm/i915/cmtg: Add CMTG scan line programming

 drivers/gpu/drm/i915/display/intel_cmtg.c     | 318 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  15 +
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  24 +-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |   5 +
 drivers/gpu/drm/i915/display/intel_display.c  |  42 ++-
 .../drm/i915/display/intel_display_device.c   |  14 +
 .../drm/i915/display/intel_display_device.h   |   2 +-
 .../gpu/drm/i915/display/intel_display_irq.c  |  12 +
 .../drm/i915/display/intel_display_limits.h   |   2 +
 .../drm/i915/display/intel_display_power.c    |  17 +
 .../drm/i915/display/intel_display_power.h    |   2 +
 .../gpu/drm/i915/display/intel_display_regs.h |   6 +
 .../drm/i915/display/intel_display_types.h    |   4 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |   5 +
 14 files changed, 456 insertions(+), 12 deletions(-)

-- 
2.29.0

