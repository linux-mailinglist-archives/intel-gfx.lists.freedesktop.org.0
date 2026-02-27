Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kJRxGbXRoWkfwgQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 18:17:41 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 381B31BB521
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 18:17:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B765210EBDD;
	Fri, 27 Feb 2026 17:17:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ntIuvmdL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7639410EBE1;
 Fri, 27 Feb 2026 17:17:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772212659; x=1803748659;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WZOw0xbzSA+WANOCJq1rHIdnJaXzWNqTyXkt1Dl80wg=;
 b=ntIuvmdLLC5ApvdiAgNe+rwXkzKUHdcBD7dAnjYOXqEnEZLc9aOM8us5
 qHBzfh9htGa41NRaMOFJq2+e8Of1W0ujH6hYP4uLh1Ls0UFVm3vTlEI9D
 Ayl0sl7qmFt4UiU8lgDLYZwDC46DOAFsLI+lRSB4TJhgSA41F/ElZP+Xt
 z9POKUfEk2rBaI6eVZkz60h5VBObmoQsRAXjP1esLAaZt+rzYL3vEZKxn
 z5/bee9LT+ID7SJvU3wVm9FcB1U7UPOZ0geUTmk5gZy7TsL7muGW6hFbx
 nL9DNZs+V2a54PqAlKcsxYsEQ/+MolZLbVMe77XTEfcdfAm/isGsZTyhb g==;
X-CSE-ConnectionGUID: C3SNEVsWTGC0jWE3NwVhRQ==
X-CSE-MsgGUID: rLrGa6DQTwCYGCXOuiq41A==
X-IronPort-AV: E=McAfee;i="6800,10657,11714"; a="83932702"
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="83932702"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 09:17:38 -0800
X-CSE-ConnectionGUID: mfeEypzJTMyOIuGsb01wug==
X-CSE-MsgGUID: W9KSyLkzRjGpOFs/BlLJug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,314,1763452800"; d="scan'208";a="216849520"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.202])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Feb 2026 09:17:37 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 4/4] drm/xe/display: clean up xe_initial_plane.c includes
Date: Fri, 27 Feb 2026 19:17:14 +0200
Message-ID: <637eab7df00a540df6b7ca1ca345302864b6342f.1772212579.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772212579.git.jani.nikula@intel.com>
References: <cover.1772212579.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
Content-Type: text/plain; charset=UTF-8
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 381B31BB521
X-Rspamd-Action: no action

Remove excess includes, group and sort include directives.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/xe/display/xe_initial_plane.c | 12 +++---------
 1 file changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_initial_plane.c b/drivers/gpu/drm/xe/display/xe_initial_plane.c
index 4be0cfb6d0c1..65cc0b0c934b 100644
--- a/drivers/gpu/drm/xe/display/xe_initial_plane.c
+++ b/drivers/gpu/drm/xe/display/xe_initial_plane.c
@@ -3,27 +3,21 @@
  * Copyright © 2021 Intel Corporation
  */
 
-/* for ioread64 */
-#include <linux/io-64-nonatomic-lo-hi.h>
-
 #include <drm/intel/display_parent_interface.h>
 
 #include "regs/xe_gtt_defs.h"
-#include "xe_ggtt.h"
-#include "xe_mmio.h"
 
 #include "intel_crtc.h"
 #include "intel_display_regs.h"
 #include "intel_display_types.h"
 #include "intel_fb.h"
-#include "intel_fbdev_fb.h"
 #include "intel_fb_pin.h"
+#include "intel_fbdev_fb.h"
 #include "xe_bo.h"
 #include "xe_display_vma.h"
+#include "xe_ggtt.h"
+#include "xe_mmio.h"
 #include "xe_vram_types.h"
-#include "xe_wa.h"
-
-#include <generated/xe_device_wa_oob.h>
 
 /* Early xe has no irq */
 static void xe_initial_plane_vblank_wait(struct drm_crtc *_crtc)
-- 
2.47.3

