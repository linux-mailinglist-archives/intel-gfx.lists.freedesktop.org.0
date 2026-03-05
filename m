Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLZCJasDqWlW0QAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 05:16:43 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C8820AB5F
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Mar 2026 05:16:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 20D8C10EAF3;
	Thu,  5 Mar 2026 04:16:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bFxsRQM4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8512A10EAF3;
 Thu,  5 Mar 2026 04:16:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772684201; x=1804220201;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=lsI8jRMNaGalvoqkwzsumD6BcgJCRwffvZfrHuB1IUI=;
 b=bFxsRQM4P9R4ZxJgb4yVUjTcYXgTxSLePq60fivIpj+hsFBjldJbazlJ
 e9+OPiHKzXoArJuU4meT5l3/LKdKUpGLJ3wUXMiEtdXPimKNG2iW7GdSR
 TatetqcqtYAXPBotL7Z+cKA7Da1y4Q3iBQMlQgXnjU2IYoXPm00cI5OHQ
 hj+JpIZwtHfgybVJBeYPd6YJFP1+Z0Lt4x/t7LNpHOD1zVWGHnxUCTkmy
 81Fr66dPofi5cJTUC/f3t+NA5N4e2xHuLntf+N8iCP7gzowCV+IIo9d+h
 Sq2iNCYSIEHz/Zn8xMJfgYiQ7z7ICzuuYdVB96oQ5tWD1Sz8aLlNeNXsz g==;
X-CSE-ConnectionGUID: BaiACm3WSHOXKa4wZWkQbA==
X-CSE-MsgGUID: +B30eYgfTo6MFX1/f15Tzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="73674694"
X-IronPort-AV: E=Sophos;i="6.21,325,1763452800"; d="scan'208";a="73674694"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 20:16:40 -0800
X-CSE-ConnectionGUID: TOEbgltUQVmAhzmghCkXtw==
X-CSE-MsgGUID: 68A/YmQXRfuyHKaA1OFLqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,325,1763452800"; d="scan'208";a="222705727"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 20:16:37 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, arun.r.murthy@intel.com,
 Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 0/5] Add support for Common SDP Transmission Line
Date: Thu,  5 Mar 2026 09:31:13 +0530
Message-ID: <20260305040118.2576312-1-ankit.k.nautiyal@intel.com>
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
X-Rspamd-Queue-Id: 22C8820AB5F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:mid];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[ankit.k.nautiyal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Action: no action

Xe3p_lpd introduces new register bits to program a common SDP
Transmission line that will be used by the Hardware to position the
SDPs. Along with this, another new register is also added to stagger
the different SDPs.

This series adds support for programming the Common SDP Transmission Line
(CMN_SDP_TL) and its stagger control registers.

Ankit Nautiyal (4):
  drm/i915/dp: Add fields to store CMN_SDP_TL register state in
    crtc_state
  drm/i915/dp: Add helper for AS SDP TL and fix documentation
  drm/i915/dp: Introduce helpers to enable/disable CMN SDP Transmission
    line
  drm/i915/dp: Enable Common SDP Transmission line

Ankit Nautiyal (4):
  drm/i915/dp: Add fields to store CMN_SDP_TL register state in
    crtc_state
  drm/i915/dp: Add helper for AS SDP TL and fix documentation
  drm/i915/dp: Introduce helpers to enable/disable CMN SDP Transmission
    line
  drm/i915/dp: Enable Common SDP Transmission line

Arun R Murthy (1):
  drm/i915/nvl: Add register definitions for common SDP Transmission
    Line

 drivers/gpu/drm/i915/display/intel_ddi.c      |   4 +
 drivers/gpu/drm/i915/display/intel_display.c  |   6 +
 .../drm/i915/display/intel_display_device.h   |   1 +
 .../gpu/drm/i915/display/intel_display_regs.h |  19 +++
 .../drm/i915/display/intel_display_types.h    |   9 ++
 drivers/gpu/drm/i915/display/intel_dp.c       | 123 ++++++++++++++++++
 drivers/gpu/drm/i915/display/intel_dp.h       |   5 +
 drivers/gpu/drm/i915/display/intel_vrr.c      |   4 +-
 8 files changed, 169 insertions(+), 2 deletions(-)

-- 
2.45.2

