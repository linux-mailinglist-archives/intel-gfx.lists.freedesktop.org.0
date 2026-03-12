Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILuRC0h7sml/MwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:37:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8D5026F04B
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Mar 2026 09:37:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 31E1010EA1A;
	Thu, 12 Mar 2026 08:37:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HvXwC/4K";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5580010EA19;
 Thu, 12 Mar 2026 08:37:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773304644; x=1804840644;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=aANDWQmwnMhF5ZcIabfbkwtGF2l65vv7/Vo8WVDBec0=;
 b=HvXwC/4KesKvhQS2XGZ9IFCWV8SxPRD3I3heNV3KVgu18kT0lo+YQNKc
 8Gkc3Rw8bVW9Tu1oVXF74HZjND0fborNA5j6V6hpregWpZEjINhGJBaOw
 5QHVORiKkvsWWpxFTrBulMsCCwEWI9vjeDKmUax9jf6PKtlWLqkckx1RR
 GnbcRPGc/G1tjgHxO0EzBNdnRPH801/UclK0W7AoGwhaFUoxDyhnlNTTC
 8R6LQwicLLtkx9IZr+DWvPa8bN/5vA9iW2u1AI0H0ol5+N1BsHwgvZ72I
 2WtxG6KKOcMA24Ahclu0JO5PfoRyHAhjkydi8fnEukch05CcIeh/KMv0d w==;
X-CSE-ConnectionGUID: J44TWn5kSZyhUl0pEkCxVA==
X-CSE-MsgGUID: KYO2KZ3yRLKI1npG1WVlgw==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74280158"
X-IronPort-AV: E=Sophos;i="6.23,115,1770624000"; d="scan'208";a="74280158"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:37:23 -0700
X-CSE-ConnectionGUID: vq4rQYfmRzey6/eCqRyJeg==
X-CSE-MsgGUID: hXwmh1BiS1usaWrEmN4prA==
X-ExtLoop1: 1
Received: from vpanait-mobl.ger.corp.intel.com (HELO jhogande-mobl3.intel.com)
 ([10.245.245.57])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 01:37:21 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/2] PSR parameters handling fixes
Date: Thu, 12 Mar 2026 10:37:08 +0200
Message-ID: <20260312083710.1593781-1-jouni.hogander@intel.com>
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
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: E8D5026F04B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch set contains fixes for PSR parameter handling:

1. Ensure using up-to-date ALPM parameters when e.g. refresh rate is changing
2. Do not compute anything directly into intel_dp:intel_psr

Jouni Högander (2):
  drm/i915/psr: Disable PSR on update_m_n and update_lrr
  drm/i915/psr: Compute psr_entry_setup_frames into intel_crtc_state

 drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
 drivers/gpu/drm/i915/display/intel_psr.c           | 7 +++++--
 2 files changed, 6 insertions(+), 2 deletions(-)

-- 
2.43.0

