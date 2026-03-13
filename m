Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YGwxJXkBtGnCfAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 13:22:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A645282E2F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 13:22:17 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D78810EBD1;
	Fri, 13 Mar 2026 12:22:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bbYcUi+G";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2940410EBCF;
 Fri, 13 Mar 2026 12:22:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773404533; x=1804940533;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Eiz1btDsCpq6cA7cn0d3BPlqbVQv/jCcGf54yHYsjC0=;
 b=bbYcUi+G9yH1fT8O53ed+pHc3TMmBh09KfHk7vkb8omAOeUXy6Dc96s1
 j4Sk7pciAsS8lhB91gDb38aET6mxliujK3lLvdxIPd3yYfD+VRjUKNH3X
 zMovDQtKa+M/WTwo1I3gUx7/XYRftHFzmQEwxufXOIsEUL1CwgZp9lUgK
 nz5u8t811dsVtXw3gh8XbAFHK6V8RyFDMHBQw4LRd6RU+y9v2540x1TdD
 8FuxCFu1U1USWI9dDGda8XTnQ+5vu8jP+Eey3Gk+9TYrKJl91SeDNC6ke
 mKoIWqWfaqt1g8LUS9ZY9b1WbJoZUuKnwRaiGmmX6TyN3ym40F9cJgAwy g==;
X-CSE-ConnectionGUID: mecb4MWpQzGPRiUhdt2b6Q==
X-CSE-MsgGUID: PbYQ0gTzSpKKwXGC/OUrbQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="77116940"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="77116940"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 05:22:13 -0700
X-CSE-ConnectionGUID: Bk31KG1PTpKaG9WZtHKhMA==
X-CSE-MsgGUID: pZ40fZv6TVqs+1eqYG22Lw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="225269263"
Received: from amilburn-desk.amilburn-desk (HELO jhogande-mobl3.intel.com)
 ([10.245.245.196])
 by ORVIESA003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 05:22:12 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 2/2] drm/i915/psr: Disable Panel Replay on
 DP_DPCD_QUIRK_NO_PANEL_REPLAY quirk
Date: Fri, 13 Mar 2026 14:21:45 +0200
Message-ID: <20260313122145.1747175-3-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260313122145.1747175-1-jouni.hogander@intel.com>
References: <20260313122145.1747175-1-jouni.hogander@intel.com>
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
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,gitlab.freedesktop.org:url]
X-Rspamd-Queue-Id: 6A645282E2F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Do not detect Panel Replay support if DP_DPCD_QUIRK_NO_PANEL_REPLAY is set
for panel.

Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/7521
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 5041a5a138d1..a62e0bd10f39 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -609,6 +609,12 @@ static void _panel_replay_init_dpcd(struct intel_dp *intel_dp, struct intel_conn
 	if (intel_dp->mst_detect == DRM_DP_MST)
 		return;
 
+	if (drm_dp_has_quirk(&intel_dp->desc, DP_DPCD_QUIRK_NO_PANEL_REPLAY)) {
+		drm_dbg_kms(display->drm,
+			    "Panel Replay support not currently available for this panel\n");
+		return;
+	}
+
 	ret = drm_dp_dpcd_read_data(&intel_dp->aux, DP_PANEL_REPLAY_CAP_SUPPORT,
 				    &connector->dp.panel_replay_caps.dpcd,
 				    sizeof(connector->dp.panel_replay_caps.dpcd));
-- 
2.43.0

