Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KLbRIonM8mmWuQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 05:29:13 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0206A49CE0D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 05:29:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61E5B10F1EF;
	Thu, 30 Apr 2026 03:29:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AVwQ+0bX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B8C6210F1EA;
 Thu, 30 Apr 2026 03:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777519749; x=1809055749;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=a4oeWuCJUd2YltEyT7dE2TppyO4Mbmhge1qPIZzk+Lo=;
 b=AVwQ+0bXS9xlayiC3qL9xn4NlLgvKlyye/JEM4mjckSY0OUMMWw7jrCC
 8U2TFvWcgYMXwCbWupkOhBLMcrMZ4AXwon40k2PGWpIHZEFkVKAXkm+aA
 oy3kHdmcmn54pu8OclocEr7ngqBDheoj0yHbiKb7VcgKSUAFz8lYcwm8i
 ffao9QYIH+Wcd6an3mYYhBum50U2hGK4wfgijkNAEenwvVxBKpQsXqLTL
 mUbwYY5szFlhCOQU8qQgBGgpRpHW7jnGwAm2MUoc+c3t5u8aaT7I582md
 0Jnjow1dkSEWyVXQ4IEzMnB6qulL0uLvqRAz53ipYKxOi8n0CqTg4LiZe w==;
X-CSE-ConnectionGUID: /xUSFtVTTD+pa9iMQN+N4g==
X-CSE-MsgGUID: 3N0xhTegSIalq8ki2TZNFQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="65993082"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="65993082"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 20:29:08 -0700
X-CSE-ConnectionGUID: rer0MSY+RciX4UnW3yCa7w==
X-CSE-MsgGUID: RBPfW1lVSBesPVtuNhSzsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="238431552"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa003.jf.intel.com with ESMTP; 29 Apr 2026 20:29:07 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, fnu.vishwanatha@intel.com,
 santhosh.reddy.guddati@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: Fix MST VCPI lookup and modeset-lock splat
Date: Thu, 30 Apr 2026 08:59:00 +0530
Message-Id: <20260430032902.3409731-1-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: 0206A49CE0D
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

