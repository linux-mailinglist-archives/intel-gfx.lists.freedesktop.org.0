Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eIvtHa7Wgml5cQMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 06:18:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0314BE1DB3
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Feb 2026 06:18:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E8F4C10E0C6;
	Wed,  4 Feb 2026 05:18:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V1mA5OfT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53AB510E0A1;
 Wed,  4 Feb 2026 05:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770182314; x=1801718314;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=MBi1JAhXzFoAzvRq3X9c5JQLtLXfrNA2aOB+W/P3b6k=;
 b=V1mA5OfT7wOzt81QWSZibQs+xBOWhV5wBF4Scbq962WuKl/kFmNPvzmn
 qtgkyd36cKo0if22PhFHXQKb82ccubv7XAh1TClK4LZ4UbxTTwJYhlV3z
 aacAYGHO5n3d3nHO7jqB8i6hbX6fadV5qUNMn/PJPe4MYWVDfFhoqkVpa
 aJByD4dwHSQNuaU3BZydC9jXhmY3Ellx5fOEhENNWs33utJoXOyJOqS01
 E/jBgdTetnJ55GbpDvmtaFiFD0rPdZOAQJ+RQrX7nmN51uMGhrlUanca/
 dbuYEQpmTgeR8B3BX7C7YPa6CL3MFHoDGfaZ/Ixj2AY748OncNPTSHPj+ Q==;
X-CSE-ConnectionGUID: yYQaYi3rRui0PYuqNY7iKQ==
X-CSE-MsgGUID: Ebn0QXXTQJG8yLWrHpox3Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="82102817"
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="82102817"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 21:18:34 -0800
X-CSE-ConnectionGUID: APMR2d+qRreukhL5+ObtuA==
X-CSE-MsgGUID: EXELgwdKRxei0bTGRSzwgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,272,1763452800"; d="scan'208";a="210127464"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Feb 2026 21:18:32 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, michal.grzelak@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [RESEND 0/5] LOBF fixes
Date: Wed,  4 Feb 2026 10:32:45 +0530
Message-ID: <20260204050250.762718-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 0314BE1DB3
X-Rspamd-Action: no action

Fix lobf to use computed guardband and set context latency.
Also disable LOBF while switching to LRR/seamlessMN modes.

Rev2:
 - Use is_enabling/disabling macros for lobf checks and other suggested
   changes from Ville.

Rev3:
 - Address comments from Michal.

Rev4:
 - Address comments from Jouni.

Rev5:
 - Rebase

Ankit Nautiyal (5):
  drm/i915/alpm: Compute LOBF late after guardband is already determined
  drm/i915/alpm: Allow LOBF only if window1 > alpm check_entry lines
  drm/i915/alpm: Allow LOBF only for platform that have Always on VRR TG
  drm/i915/alpm: Simplify and align LOBF checks in pre/post plane update
  drm/i915/alpm: Disable LOBF around transitioning for LRR/seamless MN

 drivers/gpu/drm/i915/display/intel_alpm.c    | 144 ++++++++++++-------
 drivers/gpu/drm/i915/display/intel_alpm.h    |   9 +-
 drivers/gpu/drm/i915/display/intel_display.c |  29 +++-
 drivers/gpu/drm/i915/display/intel_dp.c      |   2 +
 drivers/gpu/drm/i915/display/intel_vrr.c     |   2 +
 5 files changed, 129 insertions(+), 57 deletions(-)

-- 
2.45.2

