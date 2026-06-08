Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id nWmxK4i7JmrObwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 14:54:32 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 26432656586
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 14:54:32 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=UBL7UHvX;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5A6A510F35A;
	Mon,  8 Jun 2026 12:54:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACDB910F358;
 Mon,  8 Jun 2026 12:54:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780923268; x=1812459268;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=4Me0ohWrWn3CTiN/3QpM22fHUezTkivbSmrzYmClpf8=;
 b=UBL7UHvX5Y9u6MGM8cAARDv68MKmFFLXJFBIzs7rXqeHt2HyUs9nOd6Y
 ODX6YIG6J3jGwQzmlone7xqJImBBL6ZvSLaffV1geY5oylvo3MEaA4prk
 EiLZLHvSPYRnxUHIuZGMiASn34QBnlrf93IER+7R55tRwl7gZWPcxBQh6
 hy4Lz7FB/xs3V30vL+KyR4tOtyWINugIX8q3o0E8w3E8+pOYRj3Kov6hA
 G8yZ31gzzUIICHuQxNSO+EqBfy8KwRV5F54SPQ29WNoTsXz+CfcMfCWkX
 CfNwnlwAyspwBzILFbWclSguKC8TgmPysZzlJjeQo4j/8og/cPG1w9JSw A==;
X-CSE-ConnectionGUID: N3teSNf7RNq6Au2DNIvR6g==
X-CSE-MsgGUID: q+gex+8cTxC/Vu35Pm2Yhg==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="81401583"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="81401583"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 05:54:28 -0700
X-CSE-ConnectionGUID: +rVb9wCCQb+U1ZCv6c/7IQ==
X-CSE-MsgGUID: M295jJijQpmNUkJ8TBlw8w==
X-ExtLoop1: 1
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa003.fm.intel.com with ESMTP; 08 Jun 2026 05:54:26 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 0/2] Fix pipe fifo underruns during cdclk/DDB transitions
Date: Mon,  8 Jun 2026 18:20:07 +0530
Message-Id: <20260608125009.979672-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:from_mime,intel.com:dkim]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 26432656586

	This series fixes two distinct classes of pipe FIFO underruns
observed during modesets and back-to-back atomic commits.

1. Patch 1 avoids cdclk VCO-change glitches in bxt_modeset_calc_cdclk()
by preferring a same-VCO table entry (pure squash, no DBUF ratio
change) over an intermediate that drops below min_cdclk or flips the
DBUF ratio mid-commit.

2. Patch 2 closes a brief DDB-overlap window when back-to-back commits
reshuffle per-plane PLANE_BUF_CFG sub-ranges without changing the per-pipe
DBUF allocation, MBUS join or slice mask. Shrinking ranges are pre-
programmed and a vblank is awaited so hw retires the old (larger) ranges
before grown/new planes occupy the freed space.

Nemesa Garg (2):
  drm/i915/cdclk: Avoid VCO-change glitches
  drm/i915/wm: wait a vblank before shrinking plane DDB

 drivers/gpu/drm/i915/display/intel_cdclk.c   | 47 +++++++++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.c | 49 ++++++++++++++++++++
 2 files changed, 96 insertions(+)

-- 
2.25.1

