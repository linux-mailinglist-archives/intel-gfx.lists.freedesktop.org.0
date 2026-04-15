Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNZbFMwk32lcPQAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 07:40:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B99400834
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Apr 2026 07:40:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4342310E05A;
	Wed, 15 Apr 2026 05:40:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k/Ihi+OP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9370210E05A;
 Wed, 15 Apr 2026 05:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776231624; x=1807767624;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=+2W6lPWhHIYu48Bo+L4CqsG6/1wXuPKqFNaXw3LviqM=;
 b=k/Ihi+OP4/kDbtNXs188hpVnZJxR8bhzHs0fl5p38x++HYJWmQMyafIv
 ioPRNKLUMVSbWI4wnVZHpqZCIrCBB11qYzWZoZO3OR/h5roiqobFOo+bZ
 vbn/jJz64VPr3g55FsIYPOb+y/bSP0/nBvby16wN26F70lNmtMLZYC1da
 HluHBbL21JXClSsHD5/cVN7yk3DWhxIS0UCYh6jdhCDw3gn3S4OSacpZD
 2OQH7VtBCSGdcl5lVrbX0PeTJYBLdDbSoR78QcjzJmZw27/7OastqF19R
 n/SwdlA4vSQE9HEiX+5ZOHrQmk+CcGqdX0Cd/ETc5I5czr9gHEdOq5aq1 Q==;
X-CSE-ConnectionGUID: 75xJf8sOTp+NccGOxTaABg==
X-CSE-MsgGUID: /1WX3rYlQ4WuHdbf0FUeLg==
X-IronPort-AV: E=McAfee;i="6800,10657,11759"; a="102657057"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="102657057"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 22:40:24 -0700
X-CSE-ConnectionGUID: AgFH5CGTRIWBpj6cnAFzYA==
X-CSE-MsgGUID: zIE4Lw7JT/+BbFiMP7qRpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="227129766"
Received: from abityuts-desk.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.244.37])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2026 22:40:23 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 0/4] PSR2 SDP on Prior Scanline workarounds
Date: Wed, 15 Apr 2026 08:39:56 +0300
Message-ID: <20260415054000.400070-1-jouni.hogander@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: B2B99400834
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

This patch set implements two workarounds:

1. There are problem in PSR2 SDP on Prior Scanline implementation in
   several panels due to eDP1.4b spec ambiguity. Two tackle this there is
   Intel specific DPCD register for panel to indicate implementation
   compatibility with Intel source implementation. eDP1.5 doesn't have
   this problem.

2. In NVL there is an HW optimization done. When there is an SU triggered in
   Capture state, Link will be kept ON post Capture CRC SDP. Before valid SU
   pixels Intel source will transmit dummy pixels. Some TCONS are improperly
   considering these dummy pixels as a valid pixel data. Prior NVL link was
   was turned of even if there was SU triggered in Capture state and no dummy
   pixels were transmitted. These dummy pixels are problem only if SDP on
   prior scanline is used and Early Transport is not in use. The workaround is
   to start SU area always at scanline 0.

Jouni Högander (4):
  drm/i915/psr: Add defininitions for INTEL_WA_REGISTER_CAPS DPCD
    register
  drm/i915/psr: Read Intel DPCD workaround register
  drm/i915/psr: Apply Intel DPCD workaround when SDP on prior line used
  drm/i915/psr: Apply SDP on prior scanline workaround for NVL

 .../drm/i915/display/intel_display_types.h    |  1 +
 drivers/gpu/drm/i915/display/intel_dpcd.h     | 15 ++++++
 drivers/gpu/drm/i915/display/intel_psr.c      | 49 +++++++++++++++++--
 3 files changed, 60 insertions(+), 5 deletions(-)
 create mode 100644 drivers/gpu/drm/i915/display/intel_dpcd.h

-- 
2.43.0

