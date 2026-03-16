Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0Nb2L1/0t2mfXQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 13:15:27 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 666A52994D2
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Mar 2026 13:15:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAEE410E4F9;
	Mon, 16 Mar 2026 12:15:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ALtxSHVg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A4A8A10E4F9;
 Mon, 16 Mar 2026 12:15:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773663325; x=1805199325;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vs1edKsni+tg9d8B0xeGeF2ErZo1nCaDXMe/Z3BC4IY=;
 b=ALtxSHVgsBaXQV9l9baob360IUWVFzAYu5sVHiq8hJuEIcrblelgelVp
 9erUNSTep3UZMEwSZ/aTpIrQQuZ1QzterVjHRics7wo/I2xgKvu0pCTjN
 vtTpVCcYqI8saOlzHzul+WOsiZFCkxU0UbRfW8gMZp6ld/GP1xqDHP3s4
 D/SPTpHg1tw6n4DAMi6L6rC6/7fjAF86IkRD1vynWnWXPeXFXP2+PVuCJ
 EI0+r1+XGw7Z+pR/K5KJtlLSCv1kUMQxNY2O/1PIS4b8S4TG2xA5xJd+8
 JGz3eP8v8nzdJHei4nOcwShmrRSrqolNkRG1gfPp5f7DygL4MwUGLAHC/ g==;
X-CSE-ConnectionGUID: wsFQM1HtQzSaznSW2gIkaQ==
X-CSE-MsgGUID: 3uxcERgTQD+LszsuSA6+Ww==
X-IronPort-AV: E=McAfee;i="6800,10657,11730"; a="74711453"
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="74711453"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 05:15:25 -0700
X-CSE-ConnectionGUID: Q9+BWa9xRhC62qNGfeDtFA==
X-CSE-MsgGUID: rUlKaH8lT6WkvKzjw7qIwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,124,1770624000"; d="scan'208";a="221846863"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2026 05:15:23 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Luca Coelho <luciano.coelho@intel.com>
Subject: [CI 3/5] drm/i915/dmc: use step name from runtime info
Date: Mon, 16 Mar 2026 14:15:00 +0200
Message-ID: <395906e52e76bc726b9dac69a453583cc6e3f6c1.1773663208.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1773663208.git.jani.nikula@intel.com>
References: <cover.1773663208.git.jani.nikula@intel.com>
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	HAS_ORG_HEADER(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 666A52994D2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Now that the step name is in runtime info, switch to using it instead of
intel_step_name().

The ** are only relevant for DMC, so make their use explicit.

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dmc.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dmc.c b/drivers/gpu/drm/i915/display/intel_dmc.c
index 41842ff7d90f..1667a829e708 100644
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

