Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CweNY/M8mmWuQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 05:29:19 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AA97049CE2B
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Apr 2026 05:29:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 319D210F1FB;
	Thu, 30 Apr 2026 03:29:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WaAWEt3D";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E36D10F1F3;
 Thu, 30 Apr 2026 03:29:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777519752; x=1809055752;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8vKgg6GG2BO9fXdaYpD63Hh9sI1RsI8TaomKxxD7GEg=;
 b=WaAWEt3DQdPpxOPhlMDwlb3e154WX6fFDMs6b7kIYRoFWyDrZ+9LlXq3
 8gr3WC1FT3OjRCVfYZVmOC1NlIG1/cP3jzcrPcecb4h21FpBk7HZU1HgP
 2IW8Ks+TndqfYmw7YFQuHAW4f1qhGF7RiaVOe848cytnXnLOJVPSAI/df
 CUOFO4wyKsw83BiWPPp/LICt+O3sRoYArnXlVhThDQklGrffMLKl3976e
 Zx9g0sXLDDEhyn+KMR5We6rYG8QFMHSbczJLCEnuIIAImeNjb8Q280ZvC
 k/627Ox5bmUKmwb7azFt7cSC6FmQyCQ/sv+2YILoUke5CmRNLKH2MtSNG w==;
X-CSE-ConnectionGUID: uyCN+YWLQd+FvoOUiqulmA==
X-CSE-MsgGUID: ZvrRqRbtTSu+aLhjZmKZKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="65993085"
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="65993085"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Apr 2026 20:29:12 -0700
X-CSE-ConnectionGUID: IORm55+CTO2mte+FZ02Mng==
X-CSE-MsgGUID: HV2Hq2vhQEGX1YAHPdOdfg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,207,1770624000"; d="scan'208";a="238431567"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa003.jf.intel.com with ESMTP; 29 Apr 2026 20:29:11 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, fnu.vishwanatha@intel.com,
 santhosh.reddy.guddati@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/hdcp: Drop mgr->base.lock acquisition in
 intel_conn_to_vcpi()
Date: Thu, 30 Apr 2026 08:59:02 +0530
Message-Id: <20260430032902.3409731-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260430032902.3409731-1-suraj.kandpal@intel.com>
References: <20260430032902.3409731-1-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: AA97049CE2B
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

Now that intel_conn_to_vcpi() reads the MST topology state via
drm_atomic_get_new_mst_topology_state(), the topology state belongs
to this atomic commit and is already serialized through the atomic
state's private object machinery. There is no need to additionally
take mgr->base.lock here.
Taking it from the HDCP enable path in commit_tail with
state->base.acquire_ctx is also unsafe: by this point the
acquire_ctx is no longer in a state where new modeset locks may be
acquired through it, which produces a modeset-lock splat on MST +
HDCP. Drop the drm_modeset_lock() call.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_hdcp.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_hdcp.c b/drivers/gpu/drm/i915/display/intel_hdcp.c
index 91d2d7d823cc..a5d4e77f810f 100644
--- a/drivers/gpu/drm/i915/display/intel_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_hdcp.c
@@ -80,9 +80,8 @@ static int intel_conn_to_vcpi(struct intel_atomic_state *state,
 	/* For HDMI this is forced to be 0x0. For DP SST also this is 0x0. */
 	if (!connector->mst.port)
 		return 0;
-	mgr = connector->mst.port->mgr;
 
-	drm_modeset_lock(&mgr->base.lock, state->base.acquire_ctx);
+	mgr = connector->mst.port->mgr;
 	mst_state = drm_atomic_get_new_mst_topology_state(&state->base, mgr);
 	if (!mst_state) {
 		drm_dbg_kms(display->drm, "MST topology still not created\n");
-- 
2.34.1

