Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WChMLtUXqGmgnwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 12:30:29 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49F2E1FEFE2
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 12:30:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 938DE10E9B7;
	Wed,  4 Mar 2026 11:30:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fFAN8VmX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B9E1510E9B4;
 Wed,  4 Mar 2026 11:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772623826; x=1804159826;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Gd18HaH1p+sEE9ydO9u3ypfkhwFYLNt9h0i64BFO3fg=;
 b=fFAN8VmXdeyG5VBYUNAqOf5wi95Cn+apFB0g/MKFgoVXq9cZ2QiDL8UL
 n7HYu9PGXYF/BOroHBnAjCEptyLCZbL3I9JXCpDGoW7WPH+PJO8sa9eVf
 Inlsx7WLZTlrwOQjESZYvuJVdi32PgHl5PAl0GClwqYQBpCTOVNVn1Sfd
 TF5oqLtszknNshaR/vqtN5cO5qQd9KJ1K28OCaBEdpD1awXuVlkOXACvw
 O8B1reF+nxGQs3IaajwDglgJ/lOAXwRBDJmdy3wXsr6laQ5EIoW/I624V
 NrtJCRSQiNbOOgtryL+yJV9rJMaebocyCYZBkMVcSL9EkNvPKHBwPVGeA Q==;
X-CSE-ConnectionGUID: SFpSDC+iTH2+xHcflQoZLw==
X-CSE-MsgGUID: EK49XsHARbuEWXcR98OO4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11718"; a="91255305"
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="91255305"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 03:30:26 -0800
X-CSE-ConnectionGUID: zcGPgiEGSLKWkfXW7N6HAg==
X-CSE-MsgGUID: VjCAfo8MSQ+nQ5BxuH9Kwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,323,1763452800"; d="scan'208";a="248789991"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl3.intel.com) ([10.245.245.129])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 03:30:24 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 0/4] PSR/PR Selective Fetch Early Transport fixes
Date: Wed,  4 Mar 2026 13:30:07 +0200
Message-ID: <20260304113011.626542-1-jouni.hogander@intel.com>
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
X-Rspamd-Queue-Id: 49F2E1FEFE2
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
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:mid]
X-Rspamd-Action: no action

This patch set contains fixes for Selective Fetch Early Transport configuration:

  - add necessary DSC Early Transport configuration
  - corner case fix for Selective Update area when Early Transport is
    in use and cursor plane is included into SU are due to alignment.

v3:
  - add WARN_ON_ONCE if vdsc instances per pipe > 2
  - instead of checking vdsc instances per pipe being > 1 check == 2
  - move psr2_su_area under skip_sel_fetch_set_loop label
v2:
  - optimize alignment loop
  - move register definitions to intel_vdsc_regs.h
  - replace patches 3 and 4 with new patches
  - drop patch 5

Jouni Högander (4):
  drm/i915/psr: Repeat Selective Update area alignment
  drm/i915/dsc: Add Selective Update register definitions
  drm/i915/dsc: Add helper for writing DSC Selective Update ET
    parameters
  drm/i915/psr: Write DSC parameters on Selective Update in ET mode

 drivers/gpu/drm/i915/display/intel_psr.c      | 60 +++++++++++++++----
 drivers/gpu/drm/i915/display/intel_vdsc.c     | 23 +++++++
 drivers/gpu/drm/i915/display/intel_vdsc.h     |  3 +
 .../gpu/drm/i915/display/intel_vdsc_regs.h    | 12 ++++
 4 files changed, 86 insertions(+), 12 deletions(-)

-- 
2.43.0

