Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IE3pMKN76GmsKwIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 09:41:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 996304430FC
	for <lists+intel-gfx@lfdr.de>; Wed, 22 Apr 2026 09:41:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 27E7810E8C5;
	Wed, 22 Apr 2026 07:41:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Bef2nM+M";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 08DDC10E81D;
 Wed, 22 Apr 2026 07:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776843679; x=1808379679;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=o/XIemyupR2r1kTLWur4NS5aaCR7NH8orfM98108QgY=;
 b=Bef2nM+MPL5DUDkFOkmMq7KuPpnOCiN4S7gDYPGNj9MJisgytzpHTptj
 2KFJx0w0dMFTcM9WSDNpE94Xku8dUDSOTKY7QF4/xZlM+SS/TDIxOUm9Q
 QCG/bf1MwpDWdM4RemG5Vza0nLChrAjHDLRSlyNzPrFcujogUSgVR2lbD
 cLoDwrRSO357kq7pWOS8INscctrgPDktvvkB9qzUJV7OZAZ/QlkahMWhN
 Qf4xqUcYm4vDLrmHshghVccuhGw/0bZ4FW/6KKLNMcBECUxUziIuwg6dX
 Xv8F/UtzX+Eu4gOMiz5ye6wkNyOZ7i5AzifOxwqj7nHpOjYRVxFfIcrd7 Q==;
X-CSE-ConnectionGUID: Es41rH5+TWqmpIJpuPnX6g==
X-CSE-MsgGUID: WQH20ai7SVinRigAz0P5iA==
X-IronPort-AV: E=McAfee;i="6800,10657,11763"; a="89177166"
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="89177166"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2026 00:41:19 -0700
X-CSE-ConnectionGUID: EG1tO9n/QjCEwMRDarQnqw==
X-CSE-MsgGUID: ZRibwt3dS42HQQ/XNx7VFQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,192,1770624000"; d="scan'208";a="229114718"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa007.fm.intel.com with ESMTP; 22 Apr 2026 00:41:17 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH 5/6] drm/i915/cursor: Program secondary cursor planes
Date: Wed, 22 Apr 2026 13:07:21 +0530
Message-Id: <20260422073722.1861494-6-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20260422073722.1861494-1-nemesa.garg@intel.com>
References: <20260422073722.1861494-1-nemesa.garg@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nemesa.garg@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 996304430FC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

During the vblank-evade, program all joiner secondary cursor
planes using intel_plane_update_noarm()/intel_plane_update_arm()
or intel_plane_disable_arm() based on plane visibility.

Assisted-by: Claude:claude-sonnet-4.6
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_cursor.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
index e61a019ba3b0..e03b27f05fc2 100644
--- a/drivers/gpu/drm/i915/display/intel_cursor.c
+++ b/drivers/gpu/drm/i915/display/intel_cursor.c
@@ -1046,6 +1046,24 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
 		intel_plane_disable_arm(NULL, plane, crtc_state);
 	}
 
+	for (int i = 0; i < num_sec; i++) {
+		struct intel_plane *sec_plane = to_intel_plane(new_sec_states[i]->uapi.plane);
+		struct intel_crtc *sec_crtc = to_intel_crtc(new_sec_states[i]->hw.crtc);
+		const struct intel_crtc_state *sec_crtc_state =
+						to_intel_crtc_state(sec_crtc->base.state);
+
+		if (new_sec_states[i]->uapi.visible) {
+			intel_plane_update_noarm(NULL, sec_plane,
+						 sec_crtc_state,
+						 new_sec_states[i]);
+			intel_plane_update_arm(NULL, sec_plane,
+					       sec_crtc_state,
+					       new_sec_states[i]);
+		} else {
+			intel_plane_disable_arm(NULL, sec_plane, sec_crtc_state);
+		}
+	}
+
 	local_irq_enable();
 
 	intel_psr_unlock(crtc_state);
-- 
2.25.1

