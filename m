Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4MlsAi3BFmrOqgcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 12:02:21 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7695A5E2529
	for <lists+intel-gfx@lfdr.de>; Wed, 27 May 2026 12:02:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6FEDE10E1D6;
	Wed, 27 May 2026 10:02:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eCPdpsOL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ED80410E4A3;
 Wed, 27 May 2026 10:02:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779876136; x=1811412136;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=pNt1Sa0PwYdFM8KwzIYITHG+b0yRCmMqJM/SSwdFp4I=;
 b=eCPdpsOL5ljre971MDGkPorT/XdlR6AszNQ2BNdvldjnyqiZhb5bAmav
 c+PDakR66DdFKL2gTFV935WIUyGKo4qm9NnK2JSh2iBJHYbWW4Djd+GRd
 KtI7DulBxYUgST5RxwkLMI2wjjGNc++ZN/Z3A8WJbhQbad0YSNzCaobsY
 CbJpAQNCPPHCPmlel6oVIB/I6BI3INs38EL5CF60OQppXK9tr6tL9nksW
 2KHwRk471M3bcjgVhtYjDJNi+EJ32DML2W/beu278TTNDgC7EwC8Zx/YQ
 +XojmBX2dmEWkUvcxQTN+yx3ZZP8MoUKuWl8HNMD1HRZSRNDc2aycR9ks Q==;
X-CSE-ConnectionGUID: e5cxOlX+R+O+zdH40nVyCQ==
X-CSE-MsgGUID: lUQ/UwnKSXaRUacKvKUTZQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11798"; a="98277112"
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="98277112"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2026 03:02:16 -0700
X-CSE-ConnectionGUID: Zase0xv3SQOReQNb9JcoYg==
X-CSE-MsgGUID: UlYA5DCAQXuSmY0HntG9cg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,171,1774335600"; d="scan'208";a="239588864"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.245.38])
 by fmviesa008-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 27 May 2026 03:02:15 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	imre.deak@intel.com
Subject: [PATCH 0/2] drm/i915: .runtime_suspend/.runtime_resume renames for
 clarity
Date: Wed, 27 May 2026 13:02:10 +0300
Message-ID: <cover.1779876087.git.jani.nikula@intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:dkim]
X-Rspamd-Queue-Id: 7695A5E2529
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Jani Nikula (2):
  drm/i915/power: add "runtime" to
    intel_display_power_{suspend,resume}() names
  drm/i915: rename intel_runtime_{suspend,resume} to
    i915_pm_runtime_{suspend,resume}

 drivers/gpu/drm/i915/display/intel_display_power.c |  4 ++--
 drivers/gpu/drm/i915/display/intel_display_power.h |  5 +++--
 drivers/gpu/drm/i915/i915_driver.c                 | 14 +++++++-------
 3 files changed, 12 insertions(+), 11 deletions(-)

-- 
2.47.3

