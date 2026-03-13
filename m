Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6GZ1CXUBtGnCfAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 13:22:13 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0B3A282E0A
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 13:22:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 26D9A10E357;
	Fri, 13 Mar 2026 12:22:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AOhaCGMv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C10AF10E11E;
 Fri, 13 Mar 2026 12:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773404530; x=1804940530;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=T0iCDYfgU+silQsMHGEo3zfmEzyL7MdvX4oQX72mOZs=;
 b=AOhaCGMvW6RnuTMMerslDziIUSCbInjN8yd3w6dr2IjEku4SXon8YaAp
 Zso+yAkzG0UHvbtPcHaEbX/9HgGNfIZnRrFBiR2l9cdgVARzsCkuuNEHb
 z78U2uo0TZaHiT/xtG5mXmjpC2mTcHOzuXmWQwpcX9g6dEEN9AIV3NEGC
 HSxISiwAUinUNHeHyJwCA4JGnVLNxpQ1aKqtRGFAjxorCvipqV11pSNYV
 qI9WXl1WZ5fWZ2PPzh8xoKtbllHmAnsUcBPM/iLjETH/CFfjWV7R30/Hq
 QvgvOpoAcRr16WNdzb2CMkRwKzx8/EkwPRvz9hzKxShly7AFCMOCiZ5Jb Q==;
X-CSE-ConnectionGUID: f3h+haCiQ+eP7YcXNrkOeA==
X-CSE-MsgGUID: AHxlt6zARlaF8TLNYJxBJQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="77116938"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="77116938"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 05:22:09 -0700
X-CSE-ConnectionGUID: jBj7DviUTTegO0RserRrtA==
X-CSE-MsgGUID: ewTYIhCZQy6ASnAWByrsKA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="225269243"
Received: from amilburn-desk.amilburn-desk (HELO jhogande-mobl3.intel.com)
 ([10.245.245.196])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 05:22:08 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/2] Disable Panel Replay as quirk for LGD panel
Date: Fri, 13 Mar 2026 14:21:43 +0200
Message-ID: <20260313122145.1747175-1-jouni.hogander@intel.com>
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
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: B0B3A282E0A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

We are currently observing problems with Panel Replay on setup having
LGD panel. Due to this disable Panel Replay if this specific panel is detected.

Jouni Högander (2):
  drm/dp: Add quirk to disable Panel Replay on certain panels
  drm/i915/psr: Disable Panel Replay on DP_DPCD_QUIRK_NO_PANEL_REPLAY
    quirk

 drivers/gpu/drm/display/drm_dp_helper.c  | 2 ++
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
 include/drm/display/drm_dp_helper.h      | 8 ++++++++
 3 files changed, 16 insertions(+)

-- 
2.43.0

