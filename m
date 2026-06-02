Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2OkQIz6VHmrPlAkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 10:33:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 99A9162A96B
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Jun 2026 10:33:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2530A113929;
	Tue,  2 Jun 2026 08:33:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jv+TlsMP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AED45113925;
 Tue,  2 Jun 2026 08:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780389179; x=1811925179;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=xVABDhimVNy0RA5uN+0t4wZtG07oZtKjvS7iufYTD58=;
 b=Jv+TlsMPV4BnkpwQ39sBz9fnqV3mPbJauJ0BONRLeI0xSrKRCkeKJjaZ
 p+Mq6U3tyLLaE64xhJ3y28ySW/CmHJgnEAeliYuySCc1c2W9gLxKIhbRl
 DAcm8xtAGSAiwH8JGRqyi03WEGUaxLUrieJMIWuP93OE3vx1oHOV2B58T
 DBD10JPBB/xhKZxr5et8cgRxZCfKrFSPotNDaQQ5UvYtx8T4uvXvH/mK8
 P0qn0P2UEB5JmSw9C1zDTnbWlyrwsnsmY52i2OLycs2Y1njI40/F8WtP1
 U7HzmTmV9fPRDLKLL460SjH4FNx9n+YKy+b6ecAmqEPmbwS79lreOfFH8 g==;
X-CSE-ConnectionGUID: XDPEgEmGSdC4qPZd4LfFbg==
X-CSE-MsgGUID: RipdLyj6T/e9qeX2t3wcsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="98587279"
X-IronPort-AV: E=Sophos;i="6.24,182,1774335600"; d="scan'208";a="98587279"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 01:32:58 -0700
X-CSE-ConnectionGUID: Nqd+MbpESjmndXFK3K0laA==
X-CSE-MsgGUID: jSc5kreVRQ+msM3DGUJxXA==
X-ExtLoop1: 1
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.253])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jun 2026 01:32:56 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, imre.deak@intel.com, jani.nikula@intel.com
Subject: [CI 00/12] drm/{i915,
 xe}: display (runtime) suspend/resume/shutdown unification, part 2
Date: Tue,  2 Jun 2026 11:32:40 +0300
Message-ID: <cover.1780389001.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [1.49 / 15.00];
	R_DKIM_REJECT(1.00)[intel.com:s=Intel];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_SPAM(0.00)[0.847];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 99A9162A96B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This is the second part of [1] for CI and merging.

This covers patches 6-12 and 14-18. Patch 13 needs additional work, but
it was isolated from the rest so I just dropped it from here.

BR,
Jani.

[1] https://lore.kernel.org/r/cover.1780051905.git.jani.nikula@intel.com


Jani Nikula (12):
  drm/i915/display: add "pm" to intel_display_driver_{suspend,resume}()
    names
  drm/xe/display: rename xe_display_pm_shutdown*() to
    xe_display_shutdown*()
  drm/xe/display: relocate the xe_display_shutdown*() functions
  drm/xe/display: relocate the xe_display_pm_runtime_*() functions
  drm/{i915,xe}: move more calls inside
    intel_display_driver_pm_suspend()
  drm/{i915,xe}: move more calls inside intel_display_driver_pm_resume()
  drm/{i915,xe}: add
    intel_display_driver_pm_{suspend_late,resume_early}()
  drm/{i915,xe}: add intel_display_driver_shutdown_late()
  drm/i915: add intel_display_driver_shutdown()
  drm/i915/display: deduplicate suspend and shutdown a bit
  drm/xe/display: use intel_display_driver_pm_shutdown()
  drm/{i915,xe}: move more stuff to __intel_display_driver_pm_suspend()

 .../drm/i915/display/intel_display_driver.c   | 110 +++++++++-
 .../drm/i915/display/intel_display_driver.h   |   9 +-
 drivers/gpu/drm/i915/i915_driver.c            |  87 ++------
 drivers/gpu/drm/xe/display/xe_display.c       | 194 ++++++------------
 drivers/gpu/drm/xe/display/xe_display.h       |  10 +-
 drivers/gpu/drm/xe/xe_device.c                |   4 +-
 6 files changed, 192 insertions(+), 222 deletions(-)

-- 
2.47.3

