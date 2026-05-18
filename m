Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id jaSMHsHrCmo89gQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 12:36:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 068C556AC99
	for <lists+intel-gfx@lfdr.de>; Mon, 18 May 2026 12:36:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16FB310E7A8;
	Mon, 18 May 2026 10:36:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lOss9v2B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3E4C810E7A1;
 Mon, 18 May 2026 10:36:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779100605; x=1810636605;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aw2Go/j/TLkD19BaLjNH3XvnASCM54yMRgxxLje9A58=;
 b=lOss9v2BPnTFi2SALFAeoP5SVTzuZGFY5Tj3iUCMOrQO/aMMyAepFaEF
 gJUoIl8teF5kk0gkyqgsN1mUSXnExJvFMW0ySrpYfLH/L5ILraDwFJKZ4
 YLTrMvb+WIoLEAvzO7UE2O7XeI1Aw6Z1S7FuYURWdFAafnCM475BXN3ju
 VLnyK0PRGFX6tr1l6rBIPXChccQTyQezp4wJT2aLEVkECK0CmO+Dp1NTH
 GQRO2lTtdLBFAe/9XrA6Jo51lK6SUeWq3tkvDBcSF93TpzhPYP0RrDrKw
 Z2UScFxdFgAX6bLfNWyWC1Xv0kCoEE5vDRFYaCTKX8I8QX6oupzSm2W7W Q==;
X-CSE-ConnectionGUID: CFgHyQBpR5qeXQoqwi9glw==
X-CSE-MsgGUID: 9YRjNXw9THi6Q45WUYb9CQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11789"; a="83820606"
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="83820606"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2026 03:36:45 -0700
X-CSE-ConnectionGUID: uP7emdyMQEyeorPXXLDosg==
X-CSE-MsgGUID: +LbMBoNpTCqO3fzTjTf2Qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,241,1770624000"; d="scan'208";a="263173304"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa001.fm.intel.com with ESMTP; 18 May 2026 03:36:43 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH 0/4] drm/i915/display: Switch DG2 MPLLB handling to the DPLL
 framework
Date: Mon, 18 May 2026 10:36:38 +0000
Message-ID: <20260518103642.3678448-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
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
X-Rspamd-Queue-Id: 068C556AC99
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Action: no action

Move DG2 MPLLB handling over to the shared DPLL framework.

DG2 is not yet integrated into the shared DPLL framework. Instead it
still handles MPLLB setup through DG2-specific paths: clock computation
calls intel_mpllb_calc_state() directly, encoder clock hooks enable and
disable MPLLB directly, and DDI readout reads MPLLB state directly from
the encoder path.

Add a DG2 DPLL manager for MPLLB-backed port PLLs and switch DG2 over
to use the generic DPLL framework compute, reserve, enable, disable,
and readout flow.

Split the series into four steps:
 - refactor the MPLLB enable helper
 - add DG2 DPLL manager support
 - convert DG2 users to framework-style paths
 - switch DG2 over to the DPLL framework and remove the old direct clock
   hooks

Mika Kahola (4):
  drm/i915/display: Split out DG2 MPLLB enable helper
  drm/i915/display: Add DG2 MPLLB DPLL manager support
  drm/i915/display: Prepare DG2 DDI and compute paths for DPLL framework
  drm/i915/display: Switch DG2 to use DPLL framework

 drivers/gpu/drm/i915/display/intel_ddi.c      |  30 ++-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  22 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 238 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  22 ++
 .../drm/i915/display/intel_modeset_verify.c   |   1 -
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  60 +----
 drivers/gpu/drm/i915/display/intel_snps_phy.h |   2 +
 7 files changed, 293 insertions(+), 82 deletions(-)

-- 
2.43.0

