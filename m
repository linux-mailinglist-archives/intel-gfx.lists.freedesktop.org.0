Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIv7MhVIDGprdAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 13:23:01 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C65857D7EB
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2026 13:23:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 32F2010EC60;
	Tue, 19 May 2026 11:22:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZEG/q9/g";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C22DD10EC60;
 Tue, 19 May 2026 11:22:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779189779; x=1810725779;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ji0hoJ/VtSJRDpUz4BQDAhKkTpRxJ+CCnepS1++f9rE=;
 b=ZEG/q9/gZ4WUFOhhachgkrA1/Uj7dgT/EL9KzLp/pKyn3e3fAjM4Dz3i
 Upfk6pSTFMyHc/kjmKllTD+aRValaUTFEAP9QXKlWFuioW6YCoZf0jzZZ
 OZaZPr6j48wrjzXg1qYemIhHpgYCn/yAT2HUzVqDHzqO6DDi7N9sAIpIs
 3RAQW0EDT05q5HYsgCt/a+ghCDYc8f25hmcGSLAZec1BqIL852fndIedD
 bskLKzZLi/m0uBKKYfrypq3ZhWTudRf1rmpNI3EL1jbPWdayjkFaEAPIe
 cr35w2K/4fY8ifj6nR5xTLfasrARtiWJJmODqvYhjMvQLL3L+r1nBIw3c A==;
X-CSE-ConnectionGUID: Gu8FsbDUTQ6gdX6S9CgOTw==
X-CSE-MsgGUID: yhgDqAIGRMuZxTJla9f7rw==
X-IronPort-AV: E=McAfee;i="6800,10657,11790"; a="97498501"
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="97498501"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 04:22:58 -0700
X-CSE-ConnectionGUID: czdKCwHmTRWRYQrIB/NmdQ==
X-CSE-MsgGUID: sp1Wst1YRjmO6c8RW4J5Xw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,243,1770624000"; d="scan'208";a="239606387"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.245.12])
 by orviesa008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2026 04:22:57 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/4] drm/i915/display: harden some bit-shifting operations
Date: Tue, 19 May 2026 14:11:12 +0300
Message-ID: <20260519112243.1454375-1-luciano.coelho@intel.com>
X-Mailer: git-send-email 2.53.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:mid,intel.com:dkim];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_TWO(0.00)[2];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 5C65857D7EB
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hi,

This patchset addresses a number of potential undefined behaviors in
bit-shifting operations where the shift amount is derived from an enum
that can in theory hold a negative value (e.g. INVALID_TRANSCODER,
PHY_NONE), as reported by static analyzers.

None of these are actual problems with the current implementation,
because the values are always valid when the code is reached, but
it's more robust to make the shifts always well-defined.

Please review.

Cheers,
Luca.


Luca Coelho (4):
  drm/i915/display: harden masks in HSW_AUD_PIN_ELD_CP_VLD macros
  drm/i915/display: harden shifts in ICL_DPCLKA_CFGCR0_DDI_CLK_SEL
    macros
  drm/i915/display: harden shift in intel_ddi_compute_config_late()
  drm/i915/display: harden shift in intel_pmdemand_update_phys_mask()

 drivers/gpu/drm/i915/display/intel_audio_regs.h  | 16 ++++++++++++----
 drivers/gpu/drm/i915/display/intel_ddi.c         |  4 ++--
 .../gpu/drm/i915/display/intel_display_regs.h    | 13 ++++++++++---
 drivers/gpu/drm/i915/display/intel_pmdemand.c    |  2 +-
 4 files changed, 25 insertions(+), 10 deletions(-)

-- 
2.53.0

