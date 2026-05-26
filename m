Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SF53BWmYFWqnWgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 14:56:09 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 945625D5DD1
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 14:56:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F2C810E4A8;
	Tue, 26 May 2026 12:56:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cT6UyiY3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7F68C10E49D;
 Tue, 26 May 2026 12:56:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779800165; x=1811336165;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=o/qMlvGGPeyCyyH39L3XonE7unE7hENoW+DvqoEOAvk=;
 b=cT6UyiY3S3/EUFepl2KY96yKwfxQ2zNFJLVmE7YTneEZJqRuIC0Mnc9l
 c4Xc2ZKPSSVPiTce2WyI6r/OzaPIFHSExv0Ya9+ldtiQPdkZb0sb5OtQ5
 VDo+SIR+Gwcal+z2bmFdfPlgH3Zqw0YybVKly5ldUVWfFrSybYNXVI24y
 Q2mLn1fllGuP0MlNAqR8az5+EcnajlDG7cvcruMT9nO6Zw77pOp0LL7xu
 FKNgKHMxA1vA4aqHiNQKhsmHSnMmL6PnEM5qf+nZXBDsxaNcqDf5TiSrD
 yg/xH/yfMe4Y3TvcJ2fCfS+GE2bzfzI3hGqg9HHxfBDlzGRtnvwlS38nd w==;
X-CSE-ConnectionGUID: yHIFHAm2Q26g2VSozMf8WQ==
X-CSE-MsgGUID: BBI1grA6QmutSE98sZeR1g==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="84465956"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="84465956"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 05:56:04 -0700
X-CSE-ConnectionGUID: GPrXYlCkSP+ErGXhuB+lMw==
X-CSE-MsgGUID: lxk46J6zSs+51x4NUObJzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="238897496"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO localhost)
 ([10.245.244.104])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 05:56:02 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 0/3] drm/i915/power: renames, cleanups
Date: Tue, 26 May 2026 15:55:56 +0300
Message-ID: <cover.1779800132.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
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
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Queue-Id: 945625D5DD1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Jani Nikula (3):
  drm/i915/power: make intel_power_domains_{suspend,resume}() static
  drm/i915/power: rename intel_power_domains_*() to
    intel_display_power_*()
  drm/i915/power: drop resume parameter from
    intel_display_power_init_hw()

 .../drm/i915/display/intel_display_driver.c   |  8 +-
 .../drm/i915/display/intel_display_power.c    | 84 ++++++++++---------
 .../drm/i915/display/intel_display_power.h    | 16 ++--
 .../drm/i915/display/intel_modeset_setup.c    |  2 +-
 drivers/gpu/drm/i915/i915_driver.c            | 14 ++--
 drivers/gpu/drm/i915/intel_runtime_pm.c       |  2 +-
 drivers/gpu/drm/xe/display/xe_display.c       | 20 ++---
 7 files changed, 74 insertions(+), 72 deletions(-)

-- 
2.47.3

