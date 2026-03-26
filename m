Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EFhMLQIWxWnr6QQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:18:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB953344A3
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 12:18:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9DD7E10E265;
	Thu, 26 Mar 2026 11:18:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LUxOuh1l";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A802710E1DE;
 Thu, 26 Mar 2026 11:18:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774523904; x=1806059904;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dCiViw1d1jy1OmI2PNEsdTu6VsNZ5oBzRDz9xIpfdRA=;
 b=LUxOuh1lCrNLyOOJa8o57JcvTueubexYSnkmn11g/u8UN5znThmPk0zZ
 dF9GY3Htw6Bx3ufLgn2rkTz/TBEGTDWnigdyG2Ob4+xBPEVoq/VG6ioIU
 NrknhSRgfKqggA+RO/W6smnsrrS/1ENojw+atWlMcuMpo+Qnn8NoyhMne
 NOV0FR/Ne7ItE4OyuTHPIpRr9oBjXYzVHkZNuGhrg+rhKQlv0Z4+6De40
 pZfmBFJcKBVanXjy5U3LqLlYPMg6LYmfGD+H3Q9Vc8TzF6Zu0Xqy6D02B
 0r2TndH7hI847VWmua6XDIytORNPzwNCd13VLGfMayaCumw1Hg+ngD0Pg g==;
X-CSE-ConnectionGUID: yWqSuI/qTxe4E2QlEZ/NlA==
X-CSE-MsgGUID: LtSF7B5dTfa9bNFHX5anyQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75692303"
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="75692303"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:18:18 -0700
X-CSE-ConnectionGUID: rqQJV/aXRE2/UrVBwV3vgg==
X-CSE-MsgGUID: QVANxnqxRvaCWi3c7vH7LA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,142,1770624000"; d="scan'208";a="220127367"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.14])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2026 04:18:17 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 0/5] drm/i915/dsi: Some DSI fixes and improvements
Date: Thu, 26 Mar 2026 13:18:09 +0200
Message-ID: <20260326111814.9800-1-ville.syrjala@linux.intel.com>
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,linux.intel.com:mid]
X-Rspamd-Queue-Id: 4AB953344A3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Fix one div-by-zero on the Huawei Matebook E with DSI command
mode panel, and use a few more confugration bits from the VBT
on TGL/ADL DSI.

Ville Syrjälä (5):
  drm/i915/dsi: Don't do DSC horizontal timing adjustments in command
    mode
  drm/i915/dsi: s/eotp_pkt/eot_pkt/
  drm/i915/dsi: Make 'clock_stop' boolean
  drm/i915/dsi: Fill BLLPs with blanking packets if requested
  drm/i915/dsi: Place clock into LP during LPM if requested

 drivers/gpu/drm/i915/display/icl_dsi.c       | 21 +++++++++++++-------
 drivers/gpu/drm/i915/display/icl_dsi_regs.h  |  3 ++-
 drivers/gpu/drm/i915/display/intel_dsi.h     |  7 ++++---
 drivers/gpu/drm/i915/display/intel_dsi_vbt.c | 12 +++++++----
 drivers/gpu/drm/i915/display/vlv_dsi.c       |  2 +-
 5 files changed, 29 insertions(+), 16 deletions(-)

-- 
2.52.0

