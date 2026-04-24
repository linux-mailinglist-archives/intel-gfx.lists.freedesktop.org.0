Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8NcALZk862mWKAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 11:49:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC7145C761
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 11:49:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B92EC10F480;
	Fri, 24 Apr 2026 09:49:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kJYageSc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8220410F480;
 Fri, 24 Apr 2026 09:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777024150; x=1808560150;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=08D5P+AyE7rGBQ7qwlWONRGL+2cm5LGWwy2TbXsuL/U=;
 b=kJYageSc5msFV0Opt+VejWQSx6ft7xKnHWSx3c5OP8w6qHCz12SL/IdB
 ejFLFxarD9joFUrr/R1l3sEjm2ay0xmf9fwyXhfd8Xys6tgpmNtATMe6G
 A2/E1UF1jRZYPjTYn4HeG/unFuSc2cNkikcgOBRPE8uXNtk4IQvquoEQ8
 4QVww/SzDWmbdLyitwO/Irexol1HCaMsPaXjumbpSyjgRtAlqXDns/TUs
 Wqwc2dfoVTqxSf7UpXilX9Ojsj2sIR7pBPsoCplxFSv9rWAy75HivzalG
 /gje18tjTbJ9wt7cGskSveOjRmDyUZnhuU3E+2t6P58T3PSbHhAAmA0aM w==;
X-CSE-ConnectionGUID: pqFDo30FRJO6IExpSVBS3A==
X-CSE-MsgGUID: 5hM4MZPnSlepZCXAvj+QQA==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="88612845"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="88612845"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 02:49:09 -0700
X-CSE-ConnectionGUID: xpFE9/6MQNurQHal6LZvUQ==
X-CSE-MsgGUID: d0DZqdiaQHKJ5AcaoMTkOQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="228575629"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2026 02:49:08 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [RESEND PATCH 0/7] AS SDP cleanups and additions for Panel Replay +
 VRR
Date: Fri, 24 Apr 2026 15:04:17 +0530
Message-ID: <20260424093424.3060805-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 3EC7145C761
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,patchwork.freedesktop.org:url,intel.com:dkim,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]

Resending with dri-devel added to the recipients, which was
missed in the original submission.

This is a subset of patches separated from the series at
https://patchwork.freedesktop.org/series/164512/ for merging.

These are drm-core (drm/dp) patches that clean up and extend the
Adaptive Sync SDP definitions and helpers in preparation for
Panel Replay + VRR support.

Ankit Nautiyal (7):
  drm/dp: Rename and relocate AS SDP payload field masks
  drm/dp: Clean up DPRX feature enumeration macros
  drm/dp: Add bits for AS SDP FAVT Payload Fields Parsing support
  drm/dp: Add DPCD for configuring AS SDP for PR + VRR
  drm/dp: Store coasting vtotal in struct drm_dp_as_sdp
  drm/dp: Add a helper to get the SDP type as a string
  drm/dp: Add target_rr_divider field in AS SDP logging

 drivers/gpu/drm/display/drm_dp_helper.c | 39 ++++++++++++++++++++++---
 drivers/gpu/drm/i915/display/intel_dp.c |  4 +--
 include/drm/display/drm_dp.h            | 20 +++++++++----
 include/drm/display/drm_dp_helper.h     |  1 +
 4 files changed, 52 insertions(+), 12 deletions(-)

-- 
2.45.2

