Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dASuNssbRWqM7AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 15:53:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0B86EE614
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 15:53:15 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=axwpOpiU;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C36910E380;
	Wed,  1 Jul 2026 13:53:14 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 49E6710E383;
 Wed,  1 Jul 2026 13:53:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782913993; x=1814449993;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=FVTDbAhCw7j5yqY1VyNcmzbfLnmAr/sX+z8vjTC9A0o=;
 b=axwpOpiUrmnzShB7yss6ETZxLzjPfqJy+vjGPiwszXIOPnjoCiuP75eG
 ddFvXGCho4f1QUJRTHGzVi2FXlh1/vU+yH/crz/nx8bBeev+xWmPUifbB
 nhzKo0o9XLQJSlkM5oUuCVv6cTmtK4G5/4G3BUchjddiZhBmBGTVG5TA6
 Gpj/5e/bTRQGLEYLBAFTcjRZ27fgRlGPLn81QmXJ/I7ugVndhrlMJQRWQ
 A5dEuHQ/rKzzHQI5kGOTlFE4zx49tmcTLAGIBfgcH5z36kjgDNdr1ibHC
 lX4XjveM0Ag4LiqONE1o6DQHsnmJGSkrj86C5txvHTvWBwp48qYRTgY8a A==;
X-CSE-ConnectionGUID: PGEkQrsoTkGKQSXxNYkMUQ==
X-CSE-MsgGUID: xfbuXv0VRoSoUkfW7iVnAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="83733869"
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="83733869"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 06:53:12 -0700
X-CSE-ConnectionGUID: 7TTAG2pYTNyxacHrRjIJZw==
X-CSE-MsgGUID: sSrjJlNzQ0mo8hCtr4vB8g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,141,1779174000"; d="scan'208";a="249207277"
Received: from ettammin-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.61])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 06:53:10 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, ville.syrjala@linux.intel.com,
 rodrigo.vivi@intel.com
Subject: [RESEND v2 0/8] drm/{i915,xe}: unify runtime pm calls
Date: Wed,  1 Jul 2026 16:52:58 +0300
Message-ID: <cover.1782913901.git.jani.nikula@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,intel.com:dkim,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8C0B86EE614

Resend of [1], which is v2 of [2].

[1] https://lore.kernel.org/r/cover.1782311749.git.jani.nikula@intel.com
[2] https://lore.kernel.org/r/cover.1781527161.git.jani.nikula@intel.com

Jani Nikula (8):
  drm/i915: call intel_uncore_runtime_resume() for each gt
  drm/i915: call intel_display_power_runtime_resume() on suspend error
    path
  drm/i915: move some display runtime suspend operations earlier
  drm/i915: add intel_display_driver_pm_runtime*() functions
  drm/{i915,xe}: add new
    intel_display_driver_runtime_pm_{enable,disable}()
  drm/xe/display: separate d3cold handling from
    xe_display_pm_runtime_suspend_late()
  drm/xe/display: add xe_display_pm_runtime_resume_early()
  drm/xe/display: unify runtime suspend/resume with i915 for non-d3cold

 .../drm/i915/display/intel_display_driver.c   | 71 +++++++++++++++++++
 .../drm/i915/display/intel_display_driver.h   |  8 +++
 drivers/gpu/drm/i915/i915_driver.c            | 58 ++++-----------
 drivers/gpu/drm/xe/display/xe_display.c       | 44 ++++++++----
 drivers/gpu/drm/xe/display/xe_display.h       |  1 +
 drivers/gpu/drm/xe/xe_pm.c                    |  2 +
 6 files changed, 125 insertions(+), 59 deletions(-)

-- 
2.47.3

