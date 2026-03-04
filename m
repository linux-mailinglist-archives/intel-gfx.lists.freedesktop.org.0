Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iFLmDI1EqGkfsAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 15:41:17 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8DA4201C59
	for <lists+intel-gfx@lfdr.de>; Wed, 04 Mar 2026 15:41:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B67310EA26;
	Wed,  4 Mar 2026 14:41:15 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YcPVrXVS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDAB210EA26;
 Wed,  4 Mar 2026 14:41:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772635274; x=1804171274;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JNMFd5jcNcb92RE6/iTrthn4Woz7h05/joqqHhBxXuE=;
 b=YcPVrXVS5LhBNa9atd5hC3PD13ezvaFqheauA/6Vg/vA7Ihma33NE+Pq
 O01I5ouuCm10iuaCkjMdZGtVfW0pVJE2RW8/jZHqXBGbROL8Xctut+rIr
 44XAdkNg4BbmnkjEWqXiYPwjDOiydd8kf8kinpqWtB8JrYs1ljRUSkK0Q
 oiuxjG/VTlq3MJ6LPZb8W6RLG5Y/KcJ2MIz4P2KDHsQxwNoQur4MICyiA
 ynTCRopiWbDzsJBWHG+07AMxvGnylsxtLEcFTPp7OxvEYWL9+HFSc50fs
 XG4DCImtXwsQ72myPj/Cfh2iRaJ+BX3VpqdDurKoEvKVRyQYg1GPymG68 Q==;
X-CSE-ConnectionGUID: 9wuRBVKSS7eXtBIXqbTEAQ==
X-CSE-MsgGUID: 7xf52nK9RGmvJw0jIZBvEQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11719"; a="84330044"
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="84330044"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 06:41:14 -0800
X-CSE-ConnectionGUID: +ypymm1xTQi0PgoaeIIXnw==
X-CSE-MsgGUID: W8ETHzJSQFW3kMCkab5Z9w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,324,1763452800"; d="scan'208";a="218479371"
Received: from krybak-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.84])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2026 06:41:13 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 3/8] drm/i915/dmc: use step name from runtime info
Date: Wed,  4 Mar 2026 16:40:48 +0200
Message-ID: <f084dedf097ba1f842e5a7f710f52681734b33a8.1772635152.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772635152.git.jani.nikula@intel.com>
References: <cover.1772635152.git.jani.nikula@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Queue-Id: B8DA4201C59
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Now that the step name is in runtime info, switch to using it instead of
intel_step_name().

The ** are only relevant for DMC, so make their use explicit.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 4e763f2f17c7..b250d41dc6a1 100644
--- a/drivers/gpu/drm/i915/display/intel_dmc.c
+++ b/drivers/gpu/drm/i915/display/intel_dmc.c
@@ -39,7 +39,6 @@
 #include "intel_dmc.h"
 #include "intel_dmc_regs.h"
 #include "intel_flipq.h"
-#include "intel_step.h"
 
 /**
  * DOC: DMC Firmware Support
@@ -420,10 +419,10 @@ bool intel_dmc_has_payload(struct intel_display *display)
 
 static void initialize_stepping_info(struct intel_display *display, struct stepping_info *si)
 {
-	const char *step_name = intel_step_name(INTEL_DISPLAY_STEP(display));
+	const char *step_name = DISPLAY_RUNTIME_INFO(display)->step_name;
 
-	si->stepping = step_name[0];
-	si->substepping = step_name[1];
+	si->stepping = step_name[0] ?: '*';
+	si->substepping = step_name[1] ?: '*';
 }
 
 static void gen9_set_dc_state_debugmask(struct intel_display *display)
-- 
2.47.3

