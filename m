Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aMSPKkWf5mmyywEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 23:48:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32CF54345D5
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Apr 2026 23:48:51 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 812B810E1C8;
	Mon, 20 Apr 2026 21:48:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MpO+3R4a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 108D310E1C8;
 Mon, 20 Apr 2026 21:48:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776721728; x=1808257728;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=yp6zBwWYWzaO9Mkh8oCj8AHQfyJ9bpGHCPnqU4MnHjU=;
 b=MpO+3R4aYCi1L06BYTs9tcn4ouosgFWMVrloN5a04rRWufPdaImKvqnk
 lj1cHRO1sB/3oLE0IxX4Xi6wuVMtinW32/i7dCXXfkgO2b9sU3a0RLLhG
 zO0XbLn555eMdGL19PT2ttxId3I1IWpf/4FtDNlYgqLU7cISsPkrDC1FL
 5jJ6nMpf34j1M7fAXiJ9nu9qhibwNPk+RpuLTlY2ucAnwoAaHLGgsQvMK
 GHtO+pyF3aJ5T3S9ThAPZI29dFp3IQg9/EJer/xfBjpGujG4X6WkL3a8E
 HZWofJOV15N0u+wA1nbKhgKTBwWhTYBE3eatpEnTXLBfGSPtjNCtQA5il g==;
X-CSE-ConnectionGUID: qLvPIuNuQwGU+0SNIyr0yQ==
X-CSE-MsgGUID: sl1PGviSTDy0BR5rV2PXdw==
X-IronPort-AV: E=McAfee;i="6800,10657,11762"; a="81521013"
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="81521013"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2026 14:48:48 -0700
X-CSE-ConnectionGUID: JpGb5Fn3RR2Q9033+IFIaw==
X-CSE-MsgGUID: d3Ea6XpVQqKBTKEeo24fJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,190,1770624000"; d="scan'208";a="233609828"
Received: from amilburn-desk.amilburn-desk (HELO localhost) ([10.245.244.159])
 by fmviesa004-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Apr 2026 14:48:47 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/2] drm/i915/gmbus: Try to fix AUX software timeouts
Date: Tue, 21 Apr 2026 00:48:41 +0300
Message-ID: <20260420214843.17514-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_NONE(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: 32CF54345D5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Looks like the "AUX did not complete or timeout within 10ms" errors
in CI (currently visible on shard-dg1) are caused by GMBUS and AUX
fighting over the same hardware resources. Try to fix that by making
them take turns.

Ville Syrjälä (2):
  drm/i915/gmbus: Lock AUX CH during GMBUS transfers
  drm/i915/gmbus: Swap locks vs. wakeref in intel_gmbus_output_aksv()

 drivers/gpu/drm/i915/display/intel_gmbus.c | 53 ++++++++++++++++++++--
 1 file changed, 50 insertions(+), 3 deletions(-)

-- 
2.52.0

