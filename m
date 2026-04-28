Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mMd0CCaD8GlwUQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 11:51:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAFB9481DFF
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Apr 2026 11:51:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DF5510EAC3;
	Tue, 28 Apr 2026 09:51:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bafjLhQj";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7700A10E2FA;
 Tue, 28 Apr 2026 09:51:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777369891; x=1808905891;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=TOgeRtK6fTV7+o1A4i7vaFQZ+JqqAPPHyIgYqvQYJSA=;
 b=bafjLhQji9X90qUb3u+ZLlyKcIkfcUAJ4pLs0x9O2IqU65gRTfVqMbVK
 VcQXZWakN6utzhFMF7IXUYdxaTYkEQ+Hu9m+fyrG81Wtt/oeR4gZfN+0N
 m9hoYkvqIHXMOKz94REQJeizbSq7Z6WEtxgomRkSOg2CdA7RZf6+4EYxY
 dzi2QbOmnbVrtahjRTzYMAbSRTNmVp5WFvjzX6F8AxQ6WFZsubrsoB1WJ
 nLVY0W4BiRxp1OOEdQNCpKZaie4G+oCwVzwMl+v6AGeIRYAWYwbyQxjHL
 sYmYVvQHbfRvhMEsEfaN1XwV3jlLUOIc3gDshEzfR5duAdvIeNSzDzST6 Q==;
X-CSE-ConnectionGUID: qBKYQVN1RqGwog7KKwmDWg==
X-CSE-MsgGUID: NQnwvWYjTA++s4lX4lFawQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11769"; a="78385107"
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="78385107"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 02:51:30 -0700
X-CSE-ConnectionGUID: 8WAD70qtRGOn8tVVWJeHhQ==
X-CSE-MsgGUID: V8qhusHcS7yndzFY/7vMjg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,203,1770624000"; d="scan'208";a="238891824"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO hazy.intel.com)
 ([10.245.244.243])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2026 02:51:28 -0700
From: Luca Coelho <luciano.coelho@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH v5 0/8] drm/i915: move more display dependencies from i915
Date: Tue, 28 Apr 2026 12:48:18 +0300
Message-ID: <20260428095104.818360-1-luciano.coelho@intel.com>
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
X-Rspamd-Queue-Id: AAFB9481DFF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
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
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[luciano.coelho@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid]

This series continues my work of refactoring the clock gating
initialization, so that i915 doesn't do display-specific stuff.

With this, all register dependencies should be gone.

Change in v5:
	* Add SKL_DE_COMPRESSED_HASH_MODE workaround for CFL/CML (Jani).

Please review.

Cheers,
Luca.


Luca Coelho (8):
  drm/i915: move SKL clock gating init to display
  drm/i915: move KBL clock gating init to display
  drm/i915/display: move CFL clock gating init to display
  drm/i915/display: move BXT clock gating init to display
  drm/i915/display: move GLK clock gating init to display
  drm/i915/display: move HSW and BDW clock gating init to display
  drm/i915/display: move pre-HSW clock gating init to display
  drm/i915: remove HAS_PCH_NOP() dependency from clock gating

 drivers/gpu/drm/i915/Makefile                 |   1 +
 .../i915/display/intel_display_clock_gating.c | 270 ++++++++++++++++++
 .../i915/display/intel_display_clock_gating.h |  27 ++
 .../gpu/drm/i915/display/intel_display_regs.h |  31 ++
 drivers/gpu/drm/i915/i915_reg.h               |  31 --
 drivers/gpu/drm/i915/intel_clock_gating.c     | 226 ++-------------
 6 files changed, 346 insertions(+), 240 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_clock_gating.c
 create mode 100644 drivers/gpu/drm/i915/display/intel_display_clock_gating.h

-- 
2.53.0

