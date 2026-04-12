Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cVweKwN922mCCgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2026 13:07:47 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 063723E3780
	for <lists+intel-gfx@lfdr.de>; Sun, 12 Apr 2026 13:07:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4349510E0B5;
	Sun, 12 Apr 2026 11:07:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Xuc82rdF";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C146910E0B5;
 Sun, 12 Apr 2026 11:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775992063; x=1807528063;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=wVYKkiAnAEcK6wZhwEH17v1B3JRTU0s4u3ufGI/GuS8=;
 b=Xuc82rdFXFLEGkFuthjxrMI1Udv3xDA23kaRtlWFSq5Axg+wzcLsYLJV
 Evu7vZwR6Tj9p8mgBGc6dmcnobM1Ad9d4XQLJRgyubVGB8xdGzHOV3nr0
 x/bC9YgS6Llx/fkgolq4dJaQX9liTXrYCgjAEQHB/CVWWkgAQtU5kwxji
 SeHhYVCWpXxa1Y+TuFMwnc+flM5S3Ukwo/rWo36m9Q/csQ4vs1PyU8fn7
 AsvnBSA04aXcYKKMM5wOpY5t9LLWT5n12cm9Qqv1nH8VbQCa7JdLvfJLX
 O1V2H0cnwsv7Y1Fx2hf0LSV8s8LwsDpg2eoRJLNZAHVjSyPgRtrpFoXCo w==;
X-CSE-ConnectionGUID: lhfCqKVqQcu0mwvA2fPpYA==
X-CSE-MsgGUID: E/MYHCFzQkOsXQFcQbmRGQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11755"; a="76115111"
X-IronPort-AV: E=Sophos;i="6.23,175,1770624000"; d="scan'208";a="76115111"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Apr 2026 04:07:42 -0700
X-CSE-ConnectionGUID: lX0oV+b0RWmsKG3cN56tjA==
X-CSE-MsgGUID: 6sa2VJFBQreZPFpp4kQu6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,175,1770624000"; d="scan'208";a="267507707"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by orviesa001.jf.intel.com with ESMTP; 12 Apr 2026 04:07:40 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 jani.nikula@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v4 00/13] CMTG enablement
Date: Sun, 12 Apr 2026 16:06:59 +0530
Message-Id: <20260412103712.4021213-1-animesh.manna@intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 063723E3780
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Common mode timing generator (CMTG) support is added NVL onwards.
Enable CMTG which will be needed by other fearure like dynamic dc
state enablement later.

Testing ongoing, currently counters are incrementing as expected.

Animesh Manna (12):
  drm/i915/cmtg: Add intel_cmtg_is_allowed() for CMTG
  drm/i915/cmtg: Set CMTG clock select
  drm/i915/cmtg: Set timings for CMTG
  drm/i915/cmtg: Program VRR registers of CMTG
  drm/i915/cmtg: Set transcoder mn for CMTG
  drm/i915/cmtg: Add hook to enable CMTG with sync to port
  drm/i915/cmtg: Add a hook to make eDP transcoder secondary
  drm/i915/cmtg: Split CMTG support check from intel_cmtg_is_allowed()
  drm/i915/cmtg: Add trigger to enable/disable cmtg
  drm/i915/cmtg: Add CMTG interrupt handling
  drm/i915/cmtg: Disable CMTG if dc3co is not allowed
  drm/i915/cmtg: Set target_dc_state flag for lobf/psr2/pr-alpm

Dibin Moolakadan Subrahmanian (1):
  drm/i915/cmtg: Modify existing hook to disable CMTG

 drivers/gpu/drm/i915/display/intel_cmtg.c     | 260 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_cmtg.h     |  14 +
 .../gpu/drm/i915/display/intel_cmtg_regs.h    |  70 ++++-
 drivers/gpu/drm/i915/display/intel_cx0_phy.c  |   5 +
 drivers/gpu/drm/i915/display/intel_display.c  |  19 ++
 .../gpu/drm/i915/display/intel_display_irq.c  |  12 +
 .../gpu/drm/i915/display/intel_display_regs.h |   6 +
 .../drm/i915/display/intel_display_types.h    |   4 +
 drivers/gpu/drm/i915/display/intel_dp.c       |   8 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |   5 +
 10 files changed, 393 insertions(+), 10 deletions(-)

-- 
2.29.0

