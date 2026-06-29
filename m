Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ptbqCNO6QmouAQoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 20:34:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78AC06DE143
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jun 2026 20:34:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=JxeSB2C9;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFAB010E0D1;
	Mon, 29 Jun 2026 18:34:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0CF5E10E0C0;
 Mon, 29 Jun 2026 18:34:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782758095; x=1814294095;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=VhjgJHzcn5c1bTkUXNJe+ClDtIj8+i65Is4zFo+x8C4=;
 b=JxeSB2C9n+YXVTaPLFioGp8It7ER8xBxw9gc8zaIitTv2ObkLjq/HUZG
 uXncoUiPCGeutda6iXL7c75Gw8pTXLqxBC9lRfVAOmS4mGZY1xLV89etH
 jN5vvHhFqE0x8QXG1vLe4bnLdHrvu7VdCXDtPOIZBanDfo9x79k3nBqU1
 hIGBumIdqZQ6eePgBmHr2T76FIjOk3I/aXikkWtWh28HAxE0QAs164pjX
 Ky+SVx7QM3MPY+2XuZXZ41yqD6+97/wumH8OgNdKPAbp4AhQXBctdboxn
 YbC30xDjUOBytQx9qxICqxX9DVpevhY/ybdT5ELg2jpv8jT5AELFmhlaH w==;
X-CSE-ConnectionGUID: +bLUwszxTcm9irF2cjscjQ==
X-CSE-MsgGUID: C3ln9iNxTmu63+ZuHNAAQw==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="86010628"
X-IronPort-AV: E=Sophos;i="6.24,232,1774335600"; d="scan'208";a="86010628"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2026 11:34:55 -0700
X-CSE-ConnectionGUID: yaT4mYY9R7uA7+PNugXE5Q==
X-CSE-MsgGUID: G8pcJS8fT5GR8eItNuGPrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,232,1774335600"; d="scan'208";a="256956670"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.190.238.88])
 by fmviesa005.fm.intel.com with ESMTP; 29 Jun 2026 11:34:53 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: uma.shankar@intel.com, dibin.moolakadan.subrahmanian@intel.com,
 suraj.kandpal@intel.com, Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v2 0/2] Fix array-index-out-of-bounds in intel_cmtg_disable()
Date: Mon, 29 Jun 2026 23:32:34 +0530
Message-Id: <20260629180236.1353704-1-animesh.manna@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[animesh.manna@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,intel.com:from_mime]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 78AC06DE143

intel_cmtg_disable() maps crtc_state->cpu_transcoder to a CMTG transcoder
via to_cmtg_transcoder(), which only returns a valid transcoder for
TRANSCODER_A/B. The disable call sites only checked the sticky
crtc->cmtg.enabled flag, so during a big-joiner reconfiguration that moves
the eDP across pipes intel_cmtg_disable() could be reached with a
cpu_transcoder that does not map to a CMTG transcoder. That led to a
negative register-array index (trans_offsets[-1]) and a UBSAN
array-index-out-of-bounds splat.

v1 fixed this with a silent early return inside intel_cmtg_disable().
Following review feedback, v2 instead gates the call sites with
intel_cmtg_is_allowed() (the actual fix) and keeps a drm_WARN_ON() inside
intel_cmtg_disable() as a backstop that documents the invariant.

The patches are ordered so that the series stays splat-free at every step:
patch 1 prevents any invalid call from reaching intel_cmtg_disable(), and
patch 2 then adds the drm_WARN_ON() that should never fire in normal
operation.

Animesh Manna (2):
  drm/i915/display: Guard CMTG disable with intel_cmtg_is_allowed()
  drm/i915/cmtg: Warn on invalid CMTG transcoder in intel_cmtg_disable()

 drivers/gpu/drm/i915/display/intel_cmtg.c    | 3 +++
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
 2 files changed, 6 insertions(+), 2 deletions(-)

-- 
2.29.0

