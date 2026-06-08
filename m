Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id f9j2AcTNJmpFkwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 16:12:20 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A72656FC8
	for <lists+intel-gfx@lfdr.de>; Mon, 08 Jun 2026 16:12:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=YQ06Yqyk;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1FB0B10F44E;
	Mon,  8 Jun 2026 14:12:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AE7A510F44C;
 Mon,  8 Jun 2026 14:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780927936; x=1812463936;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2LfJpOFJQDWmPPAUg0jJ6VMu58gz/1tf1ZamPn5pAHE=;
 b=YQ06YqyknkssY+KfrdwDOpNFNRHiim+weEaocCDH5/lZKGb5z3WnBak2
 lZGdkBLBF6QtWIpXfAl7X57Gcdn4wPhJkpXbcI7Qfjr2kkQ1U8wdBfTB1
 cWHRp+g1+JZdLIG4sY8saSlwoUGT0KL9UKueUpao8T6ER2onCqS1BKDqx
 ylI3sGC7NI6pevsTsMC7/5RIrLAIkyLks4Oi8F/cxzD6w5IbTRWxJpFxx
 x103lEcDG4piLZ4Tht53DVpxkgJwH/9cbcENUM0O0HaSQg0Iajx2IyT3G
 Td3cJvH85iu626bESRLPfCAYSNsG9ySzLZuxQj6ydpX7i624QoeOwbTqx g==;
X-CSE-ConnectionGUID: pp4rC1I2RDiX/KH6dan1XA==
X-CSE-MsgGUID: 2fkkcFxqSwOetHzIDf7/rQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11810"; a="81781290"
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="81781290"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 07:12:16 -0700
X-CSE-ConnectionGUID: r99k8BmtQlWewM47HMEAIw==
X-CSE-MsgGUID: 1Cej73C3RuCKLmrD+n70mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,194,1774335600"; d="scan'208";a="241113691"
Received: from carterle-desk.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.246.213])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2026 07:12:15 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/7] Enable FEC when using DP Panel Replay
Date: Mon,  8 Jun 2026 17:11:17 +0300
Message-ID: <20260608141124.144878-1-jouni.hogander@intel.com>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	HAS_ORG_HEADER(0.00)[];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_THREE(0.00)[3];
	ALIAS_RESOLVED(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 91A72656FC8

This patch set is doing necessary modifications to enable FEC when DP
Panel Replay is in use. Based on DP specification FEC usage is
mandatory when Panel Replay is enabled.

Jouni Högander (7):
  drm/i915/psr: Check FEC support for DP Panel Replay
  drm/i915/psr: Stop using intel_dsc_enabled_on_link to detect crtc DSC
    status
  drm/i915/display: Rename compression_enabled_on_link and
    link_dsc_pipes
  drm/i915/psr: Split PSR compute config
  drm/i915/psr: Move DP/eDP Panel Replay compute config to pre compute
    config
  drm/i915/psr: Add PSR specific pre compute config
  drm/i915/psr: Enable FEC if using DP Panel Replay

 drivers/gpu/drm/i915/display/intel_display.c  |   2 +-
 .../drm/i915/display/intel_display_types.h    |   2 +-
 drivers/gpu/drm/i915/display/intel_dp.c       |   7 +-
 drivers/gpu/drm/i915/display/intel_dp_mst.c   |  20 ++--
 drivers/gpu/drm/i915/display/intel_link_bw.c  |  16 +--
 drivers/gpu/drm/i915/display/intel_link_bw.h  |   2 +-
 drivers/gpu/drm/i915/display/intel_psr.c      | 108 +++++++++++++-----
 drivers/gpu/drm/i915/display/intel_psr.h      |   3 +
 drivers/gpu/drm/i915/display/intel_vdsc.c     |   8 +-
 drivers/gpu/drm/i915/display/intel_vdsc.h     |   2 +-
 10 files changed, 119 insertions(+), 51 deletions(-)

-- 
2.43.0

