Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sB5PMrYgxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 13:04:06 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ACE6334E33
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 13:04:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB9DF10E9B2;
	Thu, 26 Mar 2026 12:04:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="iD3ucI0L";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9415810E9A0;
 Thu, 26 Mar 2026 12:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774526643; x=1806062643;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=utzU4rlyXmA6qgS8bIQO1GT4JlbkNNYvvWA3J4EPLdk=;
 b=iD3ucI0LcWTSGAc1bNdoqEYL1Hq3Y45zwILcIlNYWXPvX/vmMkj3k2Na
 q5y4XwKQ84WdXXEGJ4ThZAhkQ6RNf0zw51Nr5hkm8lcxBKmrr9kobUNaq
 wSxjrkqrbdrOpISbeTBpKKUHIlxyOQ2+gIVq8IY1PkTbEaWt7N13sv/rd
 xYr+jbiq1cnw8mgTW3PhbR/y+oQ2IyG4daZ+kmBI6zqmgu2QuB4Svvx/l
 X/VsPlm03Sex/n0p7he8kksQxB4HH8/CzgxbR05pfbvx791uhAkastq9X
 zE7R2v0ylTVb/+wDCt6JqEG1lwYSvBTez/ukXcZVrCkgBe70orb6/Y9XQ A==;
X-CSE-ConnectionGUID: 9RVyf1L7QUm/DtGnO4TKpg==
X-CSE-MsgGUID: tMJPKvEJQ6mnMVJkgorZDw==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="86960530"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="86960530"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 05:04:03 -0700
X-CSE-ConnectionGUID: jt0vkpqORnCm9RLWHFWDig==
X-CSE-MsgGUID: zzNRUWDPRH+sXbiiaIUEyg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="224999434"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by orviesa008.jf.intel.com with ESMTP; 26 Mar 2026 05:04:02 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/3]  Make casf updates atomic and dsb ready
Date: Thu, 26 Mar 2026 17:30:26 +0530
Message-Id: <20260326120029.3409676-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset=y
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_THREE(0.00)[3];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 7ACE6334E33
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

  The existing implementation for casf scaler re‑implemented
parts of skl_scaler logic and programmed registers from
pre‑plane update hooks, which caused:
  - updates were not atomic.
  - prevented execution via Display State Buffer.
  - computed state was late.

This series fixes these issues by:
  - consolidating common logic into skl_scaler.c.
  - moving computation into crtc_compute_config().
  - Create a common wrapper for pfit and casf so
    that whenever pipe scaler is done through dsb
    casf can also be dsb compatible

Nemesa Garg (3):
  drm/i915/display: Move casf_compute_config
  drm/i915/display: Introduce skl_pipe_scaler_setup()
  drm/i915/display: Common wrapper for casf and pfit

 drivers/gpu/drm/i915/display/intel_casf.c    |  11 ++
 drivers/gpu/drm/i915/display/intel_casf.h    |   2 +
 drivers/gpu/drm/i915/display/intel_display.c |  36 +++----
 drivers/gpu/drm/i915/display/skl_scaler.c    | 104 +++++++++++--------
 drivers/gpu/drm/i915/display/skl_scaler.h    |   5 +-
 5 files changed, 89 insertions(+), 69 deletions(-)

-- 
2.25.1

