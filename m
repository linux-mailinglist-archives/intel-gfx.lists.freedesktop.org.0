Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oGv7IFckemkO3QEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:59:35 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5866AA367A
	for <lists+intel-gfx@lfdr.de>; Wed, 28 Jan 2026 15:59:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E3EDF10E712;
	Wed, 28 Jan 2026 14:59:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="T/eKTSA8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 155CC10E712;
 Wed, 28 Jan 2026 14:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769612373; x=1801148373;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=CiGkUOiEfZWkqrrWtOj1tA3kP66U/7uCwwDeNxbBWGQ=;
 b=T/eKTSA87VxVk9RBQH+fxLQ8rYHx+szDes/r0TPlp145GNO019/Ob2P/
 0k+UYmeJqt+T2epO0FJNBijKXbs37sTzmi3/Rqui69QuHGtmE1e/o0+mW
 lfNZUQIW/AidOa0VYmp0dd7GVgB7huqHx2nJlTscAuj+qe//v328aScfZ
 ZoT3iVd6c2ddt7IzSgYXQIDJk0jJ3IeGp0OeulhHxkzJZj0RuG1Z6UGwt
 nWGaBxOWqjmTYsiJy2nYYsTNCSBE5bNAS1iIiaUA/+oSYRT8R2E0hv0wB
 avwhw/xjs9uTlZKe5Jsp7+F3zoL+BI5U9jYaSjzEmcfowGx6EfzT/GcPw A==;
X-CSE-ConnectionGUID: 9f2xT7tZTX250kPT3xFNdQ==
X-CSE-MsgGUID: T6Pzc+s4SIO8tpQuCr/gPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11684"; a="70728170"
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="70728170"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:59:33 -0800
X-CSE-ConnectionGUID: wyeTYIdJSPSxfurSM1+eiQ==
X-CSE-MsgGUID: CSqSLB7DQo2JizJprXgU3g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,258,1763452800"; d="scan'208";a="212845160"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.207])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jan 2026 06:59:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 3/4] drm/i915/gvt: drop dependency on intel_display_types.h
Date: Wed, 28 Jan 2026 16:59:09 +0200
Message-ID: <2fa5677f5ff3dbeaa75a7984d74fb9855a4ba3d2.1769612208.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1769612208.git.jani.nikula@intel.com>
References: <cover.1769612208.git.jani.nikula@intel.com>
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	HAS_ORG_HEADER(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid]
X-Rspamd-Queue-Id: 5866AA367A
X-Rspamd-Action: no action

Avoid even accidental use of display details by dropping the include of
intel_display_types.h. We'll still have to include intel_dpll_mgt.h for
the DPLL IDs, but at least the surface is smaller.

Add duplicate defines of pipe_name() and port_name() to avoid depending
on display. They're trivial enough to be acceptable.

Cc: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gvt/handlers.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/handlers.c b/drivers/gpu/drm/i915/gvt/handlers.c
index 383b04160559..6f860c320afc 100644
--- a/drivers/gpu/drm/i915/gvt/handlers.c
+++ b/drivers/gpu/drm/i915/gvt/handlers.c
@@ -46,10 +46,10 @@
 #include "display/intel_crt_regs.h"
 #include "display/intel_cursor_regs.h"
 #include "display/intel_display_regs.h"
-#include "display/intel_display_types.h"
 #include "display/intel_dmc_regs.h"
 #include "display/intel_dp_aux_regs.h"
 #include "display/intel_dpio_phy.h"
+#include "display/intel_dpll_mgr.h"
 #include "display/intel_fbc.h"
 #include "display/intel_fdi_regs.h"
 #include "display/intel_pps_regs.h"
@@ -79,6 +79,9 @@
 #define PCH_PP_OFF_DELAYS _MMIO(0xc720c)
 #define PCH_PP_DIVISOR _MMIO(0xc7210)
 
+#define pipe_name(p) ((p) + 'A')
+#define port_name(p) ((p) + 'A')
+
 unsigned long intel_gvt_get_device_type(struct intel_gvt *gvt)
 {
 	struct drm_i915_private *i915 = gvt->gt->i915;
-- 
2.47.3

