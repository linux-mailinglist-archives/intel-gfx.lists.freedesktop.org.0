Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gLV2KwfapmnHWgAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 13:54:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 858491EFC1B
	for <lists+intel-gfx@lfdr.de>; Tue, 03 Mar 2026 13:54:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4E6FF10E7F0;
	Tue,  3 Mar 2026 12:54:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UCDYCo0+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9074210E7C6;
 Tue,  3 Mar 2026 12:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772542464; x=1804078464;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=av8+L30nVaapIj3fTDGGcxm5bFsQnh49jSxm9fqFqm4=;
 b=UCDYCo0+YMvPJqD297ZDahgFW97gMx4IcNVIjuePF9j++Y8s55CNjHzg
 2dUvGP53QrhQcWA5lN/pMrk6kp7Ttm0yQu2TdDFmrceBCApW87yuxhACV
 ch+pywc2gUNsnnhchXcX9qdEN0tRqAjrtdUlVpkXLrC4Wj90gRvKgV6iy
 lvbX++99fhDoButliuD3GthYTfDMaTifDgkLM0k5A2V/7Rr0hkm1FWs7L
 ae7AQTMovMjMREV8II6p2XPM/apA9PWyJoxAp3SGyTeoekojuoPo/sLCq
 wvwdHeEXlCKmqG6IotaYu0/l66GlIoNzPHOHzfQTSKyruFOf0jhilDYRg g==;
X-CSE-ConnectionGUID: pNEGYSX2SoOYo/4Eq4piCg==
X-CSE-MsgGUID: fa1GzwTwRHu0I4+zcjfxKg==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="77421786"
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="77421786"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 04:54:23 -0800
X-CSE-ConnectionGUID: BZcKqrMKR7mBjevxrhCzHw==
X-CSE-MsgGUID: h6Z6wsGERdejvIIAIkVQIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,322,1763452800"; d="scan'208";a="222651970"
Received: from egrumbac-mobl6.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.245.74])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Mar 2026 04:54:20 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 0/4] PSR/PR Selective Fetch Early Transport fixes
Date: Tue,  3 Mar 2026 14:54:05 +0200
Message-ID: <20260303125409.503148-1-jouni.hogander@intel.com>
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
X-Rspamd-Queue-Id: 858491EFC1B
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid]
X-Rspamd-Action: no action

This patch set contains fixes for Selective Fetch Early Transport configuration:

  - add necessary DSC Early Transport configuration
  - corner case fix for Selective Update area when Early Transport is
    in use and cursor plane is included into SU are due to alignment.

v2:
  - optimize elignment loop
  - move register definitions to intel_vdsc_regs.h
  - replace patches 3 and 4 with new patches
  - drop patch 5

Jouni Högander (4):
  drm/i915/psr: Repeat Selective Update area alignment
  drm/i915/dsc: Add Selective Update register definitions
  drm/i915/dsc: Add helper for writing DSC Selective Update ET
    parameters
  drm/i915/psr: Write DSC parameters on Selective Update in ET mode

 drivers/gpu/drm/i915/display/intel_psr.c      | 61 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 22 +++++++
 drivers/gpu/drm/i915/display/intel_vdsc.h     |  3 +
 .../gpu/drm/i915/display/intel_vdsc_regs.h    | 12 ++++
 4 files changed, 85 insertions(+), 13 deletions(-)

-- 
2.43.0

