Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0jFDJ0iuQ2rcewoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 13:53:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9706E3D89
	for <lists+intel-gfx@lfdr.de>; Tue, 30 Jun 2026 13:53:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=PPKFeseJ;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F41710EC0B;
	Tue, 30 Jun 2026 11:53:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A9EDE10EC38;
 Tue, 30 Jun 2026 11:53:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782820421; x=1814356421;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bQYnf1wladvFHpAezoVK/p32jc2Z349hynexDAVXbZs=;
 b=PPKFeseJG/rIsGpcqdYKBjo3fhn2bv24KlafBJkBAyigQAmsd+e3zzJT
 RklA5U58pBpiY4At22LUM0GghLYBUkHSSOneORQw1QTuzqP8Kd31flzER
 aHp9MMPblN2cPpQfKe2SR01DYGO/qNF5nbbn7VlBwBgFRoW6kYm3Gwo0A
 q+/nv0wdcabhuQIo1tzO4gmCozBdoCNDZs1f605QsoHNJRXFhAe/YbKTn
 IrIyV0rwfvdlXqzsLgb2mSJhLAQynTtOJDpLnGLpyBObNYWXR7xQfN+/U
 +hDoQ4Ehao72PnpfvS/+qnof4J+h9hDUyi6xFjrRgSvfNtqnV9AfyWwLv g==;
X-CSE-ConnectionGUID: 2t2JGFMNR6GPc1VubssCDg==
X-CSE-MsgGUID: MNVX17R0RO6Si7rqA4NjdQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11832"; a="101074292"
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="101074292"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2026 04:53:40 -0700
X-CSE-ConnectionGUID: ENmdHzhKQ0CScFXdE/6Hwg==
X-CSE-MsgGUID: T06JcOPKSB+rdDYu0mAX3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,233,1774335600"; d="scan'208";a="248876755"
Received: from display-adls.igk.intel.com ([10.211.131.198])
 by fmviesa007.fm.intel.com with ESMTP; 30 Jun 2026 04:53:39 -0700
From: Mika Kahola <mika.kahola@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Mika Kahola <mika.kahola@intel.com>
Subject: [PATCH v2 0/4] drm/i915/display: Switch DG2 MPLLB handling to the
 DPLL framework
Date: Tue, 30 Jun 2026 11:53:32 +0000
Message-ID: <20260630115336.1059976-1-mika.kahola@intel.com>
X-Mailer: git-send-email 2.43.0
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	URIBL_MULTI_FAIL(0.00)[gabe.freedesktop.org:server fail,intel.com:server fail,lists.freedesktop.org:server fail];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:mid,intel.com:from_mime,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3A9706E3D89

This is v2 of [1], with the following changes
- use of intel_encoder_is_dig_port() to filter out MST virtual encoders

[1] https://lore.kernel.org/all/20260518103642.3678448-1-mika.kahola@intel.com/

Mika Kahola (4):
  drm/i915/display: Split out DG2 MPLLB enable helper
  drm/i915/display: Add DG2 MPLLB DPLL manager support
  drm/i915/display: Prepare DG2 DDI and compute paths for DPLL framework
  drm/i915/display: Switch DG2 to use DPLL framework

 drivers/gpu/drm/i915/display/intel_ddi.c      |  30 ++-
 drivers/gpu/drm/i915/display/intel_dpll.c     |  22 +-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.c | 221 +++++++++++++++++-
 drivers/gpu/drm/i915/display/intel_dpll_mgr.h |  22 ++
 .../drm/i915/display/intel_modeset_verify.c   |   1 -
 drivers/gpu/drm/i915/display/intel_snps_phy.c |  60 +----
 drivers/gpu/drm/i915/display/intel_snps_phy.h |   2 +
 7 files changed, 276 insertions(+), 82 deletions(-)

-- 
2.43.0

