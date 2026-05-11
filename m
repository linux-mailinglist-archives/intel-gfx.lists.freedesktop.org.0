Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COH1Kr3PAWqKkAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:46:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A3E350E247
	for <lists+intel-gfx@lfdr.de>; Mon, 11 May 2026 14:46:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5166810E701;
	Mon, 11 May 2026 12:46:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PZOMtKRB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D59810E701;
 Mon, 11 May 2026 12:46:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778503610; x=1810039610;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Zvrr48OqUDaLHhyYTx2+OHP2UoSL42OjMwXHoN/F3I8=;
 b=PZOMtKRBiwEdhlXZUpc0Ahm23RT8qGqYIRIvLPIsr6gmk+cPJE66cRU+
 gQiGsrwXO96Ct+kjZ6rWW3PKEzt9hSjvJYbD0fKEwH7g9kwDUviAtmjir
 UNK8/nCiA1PnC3gJ5C8j33QXISVwwwe4EQ7Ixft7tqgI/ymJxlZ8WWAL/
 8NW0V9HO9x+mWX08i8JRZ4INgYXW74k1tZa+AjrrVhGLWJphmz4nQqAti
 5BkHiVqj4mh1AySXLbIq5pQOK9pLyGpCCsag5isjvzIVOz0hw6ntjNshF
 3ThT1l4ZsYRMtD7vY8/bwwY4pNgMwH84pE8CA/STWvKQTUn43OSToF8WX w==;
X-CSE-ConnectionGUID: NMQ0XxkPREaKolUjHV5yuA==
X-CSE-MsgGUID: ORBnd0lXReiSeTh2ZmR5Mg==
X-IronPort-AV: E=McAfee;i="6800,10657,11782"; a="90764811"
X-IronPort-AV: E=Sophos;i="6.23,228,1770624000"; d="scan'208";a="90764811"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:46:50 -0700
X-CSE-ConnectionGUID: lfTTsMjASH6SoLdYNVYwhw==
X-CSE-MsgGUID: Q2cPZT5fSUCrN/KpO253MQ==
X-ExtLoop1: 1
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2026 05:46:48 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/4] drm/i915/dp: Adaptive Sync SDP readback fixes
Date: Mon, 11 May 2026 18:02:14 +0530
Message-ID: <20260511123218.1589830-1-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
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
X-Rspamd-Queue-Id: 4A3E350E247
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,patchwork.freedesktop.org:url];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

This series is a spin-off from the original series [1] addressing AS SDP
handling for Panel Replay and VRR.

It fixes target_rr readback and improves overall Adaptive Sync SDP
readback handling.

Split out for easier review and merging.

[1] https://patchwork.freedesktop.org/series/164512/

Ankit Nautiyal (4):
  drm/i915/dp: Fix readback for target_rr in Adaptive Sync SDP
  drm/i915/dp: Use revision field of AS SDP data structure
  drm/i915/dp: Set sdp_type in AS SDP unpack
  drm/i915/dp: Include all relevant AS SDP fields in comparison

 drivers/gpu/drm/i915/display/intel_display.c |  6 +++++-
 drivers/gpu/drm/i915/display/intel_dp.c      | 10 +++++-----
 2 files changed, 10 insertions(+), 6 deletions(-)

-- 
2.45.2

