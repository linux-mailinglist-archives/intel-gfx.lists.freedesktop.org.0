Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFItFk/N8mmWuQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 05:32:31 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DADE149CEEF
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 05:32:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 886EB10F1F3;
	Thu, 30 Apr 2026 03:32:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aWSqQXt4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4D39A10F1EA;
 Thu, 30 Apr 2026 03:32:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777519947; x=1809055947;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a4oeWuCJUd2YltEyT7dE2TppyO4Mbmhge1qPIZzk+Lo=;
 b=aWSqQXt4x3QlSY2vQUZq75r0rZwAVvXliXvIalLElBZNKrPxVm3CDyLz
 ZqgRg67x6XeDnvyiNi+Xx4mcB6XfepaqGi+7VwQD/H2IZ4jgGMMNYw09l
 eQw5n5GXRNxUxncRJdnb6nejQ19OIvkQ+O32r/E2HKMrLlkFWTT91obQF
 JYurQol1PKi2nbs8rwcroME6ypuPzbqABsplZLHeroMlia4dmMCdb8V7a
 ES7XOK8Nz5lIapRkgaHnZ3qGo/4cg+NJ6CGHG1T/WpUAyEUN0OiHqpDM/
 l8P7VpJpzQYyRvkyrWzZ3SCCcwDI610TCC8MIgR6batDbMxU7o/Fjbbo2 A==;
X-CSE-ConnectionGUID: OeJL0CTuTeyxkoxxr8pjLQ==
X-CSE-MsgGUID: mdRRSiNlSm+zB9iBQu6vAw==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="95882094"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="95882094"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 20:32:27 -0700
X-CSE-ConnectionGUID: x5AQ7DpVT7m8XW9pFuE6gg==
X-CSE-MsgGUID: P2/zbxjBQlqBmm29nXHvwA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="227954514"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa009.fm.intel.com with ESMTP; 29 Apr 2026 20:32:24 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, fnu.vishwanatha@intel.com,
 santhosh.reddy.guddati@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 0/2] Fix MST VCPI lookup and modeset-lock splat
Date: Thu, 30 Apr 2026 09:02:20 +0530
Message-Id: <20260430033222.3411174-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
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
X-Rspamd-Queue-Id: DADE149CEEF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

intel_conn_to_vcpi() is called from the HDCP enable path in commit_tail
to look
up the VCPI of the MST stream that HDCP is being enabled on. Today it
reads the
topology state directly from mgr->base.state and takes mgr->base.lock
with the
in-flight state->base.acquire_ctx.

This breaks in two ways on MST + HDCP, especially when an
ALLOCATE_PAYLOAD
transaction is being driven on the mgr just before HDCP enable runs:

- mgr->base.state's payload list is being mutated in place by the MST
  payload code, so drm_atomic_get_mst_payload_state() can fail to find
  the entry for this connector's port. That trips drm_WARN_ON(!payload)
  and HDCP ends up programmed with VCPI 0.

- By the time we reach commit_tail/encoder enable,
  state->base.acquire_ctx
  is no longer valid for acquiring new modeset locks. Taking
  mgr->base.lock here produces a modeset-lock splat.

This series fixes both.

Suraj Kandpal (2):
  drm/915/hdcp: Use new MST topology state in intel_conn_to_vcpi()
  drm/i915/hdcp: Drop mgr->base.lock acquisition in intel_conn_to_vcpi()

 drivers/gpu/drm/i915/display/intel_hdcp.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

-- 
2.34.1

