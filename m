Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id /FUrM9HTCWqTrgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Sun, 17 May 2026 16:42:25 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F1FE2561B8E
	for <lists+intel-gfx@lfdr.de>; Sun, 17 May 2026 16:42:24 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA3F810E22C;
	Sun, 17 May 2026 14:42:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GvY18K28";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6518910E286;
 Sun, 17 May 2026 14:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779028940; x=1810564940;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=e82iwcJwIofa68u2Ua2drl5sz4qMeAGl3YQyNyHQzS8=;
 b=GvY18K28dRMpI07THEVlLLo5W1LQAhW75tKqwappxt0A5eHK97X+Cqwh
 MhojQv8zT4LvNHpuJKXrinLtspwqW2rtbIpBtHKkuHwhQEZOHMqXCoHPr
 sI6JrVdwwLzlUPKPoVwoKhnHg3Y1wxRUM3KSKRyBNiELzpAu0qjSufBPg
 raOcwcXm2UL4rJBBJfz7Gtz3sd6CQv/sw9qbQ0xds3wNV0rcYkyB/T/nc
 xBtqqCXcZLn6V5kiHD+Rgg07oJIQOZUjqry4S7ViP32jRW1gFcLhAkTrt
 8yjWZT/UOv/8O/jNxPPU2IpadiJmMfMmSUTIGpIkmxhcCUbQB+xEhgpZ1 g==;
X-CSE-ConnectionGUID: luAjOpFBR6WCj1J4+CzyKw==
X-CSE-MsgGUID: yQdjr+jjSjavGwWVtuOOaA==
X-IronPort-AV: E=McAfee;i="6800,10657,11788"; a="102575513"
X-IronPort-AV: E=Sophos;i="6.23,240,1770624000"; d="scan'208";a="102575513"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 07:42:19 -0700
X-CSE-ConnectionGUID: t8W7swayQcyKS+voCmBcjg==
X-CSE-MsgGUID: PDKDQr2iT9SvHJ5O9SL/RA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,240,1770624000"; d="scan'208";a="236552049"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 May 2026 07:42:17 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/2] Refactor and extend SCL handling for VRRTG
Date: Sun, 17 May 2026 19:57:51 +0530
Message-ID: <20260517142753.2813959-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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
X-Rspamd-Queue-Id: F1FE2561B8E
X-Rspamd-Server: lfdr
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
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

Simplify the PSR SCL (Set Context Latency) condition logic, then extend it
to support always-on VRR timing generator where SCL can be 0.

Rev2: Avoid clubbing multiple checks and return early if check fails (Jani)

Ankit Nautiyal (2):
  drm/i915/psr: Simplify the conditions for SCL computation
  drm/i915/psr: Allow SCL=0 on platforms with always-on VRR TG

 drivers/gpu/drm/i915/display/intel_psr.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

-- 
2.45.2

