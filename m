Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WGc/JMpf1mkfEwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 16:01:46 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4453BD52B
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 16:01:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EBB410E672;
	Wed,  8 Apr 2026 14:01:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a5lFjncz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3264E10E670;
 Wed,  8 Apr 2026 14:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775656902; x=1807192902;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=LN0ROSp3F49mpSiguoHJzn0qboFLlrBBgtz8bxY/D60=;
 b=a5lFjncz2poFaXp/d58haRhH6NjDMCIetcz6M/1eLRFrjhfxJYlD92YT
 ztsfguOhxg5FFmTIJQyJiep4tR8eRQJfo470lNBVB0JxlmazH99CdS7WC
 jlTE0cabxhUsINP5e+7xZOqMMTlD/dSv2pwx99fTRx7iDmDDv5ObJVrDr
 cbKcOvnN9ErRuAVJZh/rRSxBcD7y2xANv6o6dhtSFOLbBEZ7twuC+uU8u
 mIp5qE7kt2L1zBbUr3gVsmop9hSp6DenfpyQyvS5jfIIHpbBIRy6epgr3
 gFYf35lmLmBkRm4MK+WNmGrT123h/IK9t6QkKsFPo8mnQML2Qo4uywYRE g==;
X-CSE-ConnectionGUID: JnuIudUURXWOsdka8FeRUw==
X-CSE-MsgGUID: GT6/OYAFSQ2v2ts51faudA==
X-IronPort-AV: E=McAfee;i="6800,10657,11753"; a="75811478"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="75811478"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 07:01:19 -0700
X-CSE-ConnectionGUID: mHcFky6gREO2we+HoG7ayg==
X-CSE-MsgGUID: jCdn5CmIR0a/I+ErzB3DYg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="228726648"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.244.251])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 07:01:18 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/6] PSR/Panel Replay/ALPM logging improvements
Date: Wed,  8 Apr 2026 17:00:52 +0300
Message-ID: <20260408140059.252067-1-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 0C4453BD52B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

These patches are adding traces to ease parsing PSR, Panel Replay and
ALPM CRTC state using dmesg. Also printing out DPCD capability/support
registers for these features are dumped out.

Jouni Högander (7):
  drm/i915/psr: Improve PSR state information in crtc state dump
  drm/i915/alpm: Dump out computed ALPM parameters in crtc state dump
  drm/dp: Include PSR2 granularity registers into PSR capability size
    define
  drm/i915/psr: Add new macro for accessing cached PSR DPCD registers
  drm/i915/psr: Read all PSR capability registers at once
  drm/i915/psr: Dump out PSR and Panel Replay DPCD registers
  drm/i915/alpm: Dump out ALPM capability DPCD register

 .../drm/i915/display/intel_crtc_state_dump.c  | 16 +++++-
 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dp.c       |  2 +
 drivers/gpu/drm/i915/display/intel_psr.c      | 55 ++++++++-----------
 include/drm/display/drm_dp.h                  |  2 +-
 5 files changed, 41 insertions(+), 35 deletions(-)

-- 
2.43.0

