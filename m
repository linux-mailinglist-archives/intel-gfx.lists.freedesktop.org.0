Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YJJKBLpIHWo2YgkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 10:54:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9016061BD98
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 10:54:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 701FA112FF6;
	Mon,  1 Jun 2026 08:54:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jl/j0TF/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9C65F112FF6;
 Mon,  1 Jun 2026 08:54:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780304055; x=1811840055;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=c9HlXcEAdvTM6+CBMhetv2vX5c/8fXhmDAqJ3A10Tfg=;
 b=jl/j0TF/QboseO8L5N+TkQYEYX/shihizMYLsmNbFDB5sG/64auVZoMz
 +gVgEwzxwNJzrgPiP8WoQiblcbAjoe3xFbxgQjxARnjAoEbJi9iuXyVzD
 O+R6fVwGXCf5pG9uTb0rdpdOcpDJXO6qKd99DC2qaLucD5A7EKzGNuLxb
 tG7NdkFhd0Lwzcl68IFztWzrZFvW+eJa+TdOMmd+4u9GGiEKSPiLFaYNs
 d4rQ+3uIE9twqnRKPSrtKMNk1HrNiIP/9r/IucbhRkV6cOcjV8UNX0DaR
 AQFA20qCRgWmISg96DKyf+maO0td53SRMDndEfxGFsYm8vihiLpI2T+/3 A==;
X-CSE-ConnectionGUID: 7lNPdN+RS/6OaO1E2Rw51Q==
X-CSE-MsgGUID: 5ZdiI8NAQ0uziLpLAu8dXw==
X-IronPort-AV: E=McAfee;i="6800,10657,11803"; a="91368913"
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="91368913"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 01:54:14 -0700
X-CSE-ConnectionGUID: RlVy59T6QYCSUpm0bRhQmA==
X-CSE-MsgGUID: aYLuWIu6Tl6Xu12AAiiJ/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,180,1774335600"; d="scan'208";a="239110418"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa006.fm.intel.com with ESMTP; 01 Jun 2026 01:54:12 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, pranay.samala@intel.com
Subject: [v4 0/3] More Fixes for color pipeline
Date: Mon,  1 Jun 2026 13:59:50 +0530
Message-Id: <20260601082953.128539-1-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TO_DN_NONE(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 9016061BD98
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

v4:
- Remove already merged patch
  86ed2d96db19 ("drm/i915/display: Copy color pipeline from plane in the primary joiner pipe")
- drop the extra spaces before ='s (Jani)

v3:
- Re-arrange patches

v2:
- Make dependency on atomic state more explicit (Ville)
- handle blobs in hw state clear

Chaitanya Kumar Borah (3):
  drm/i915/display: Don’t use atomic state back-pointer to derive color
    pipeline
  drm/i915: Avoid programming color HW blocks for NV12 Y planes
  drm/i915: Fix color blob reference handling in intel_plane_state

 drivers/gpu/drm/i915/display/intel_cursor.c   |  2 +-
 .../drm/i915/display/intel_initial_plane.c    |  2 +-
 drivers/gpu/drm/i915/display/intel_plane.c    | 71 ++++++++++++++-----
 drivers/gpu/drm/i915/display/intel_plane.h    |  5 +-
 4 files changed, 58 insertions(+), 22 deletions(-)

-- 
2.25.1

