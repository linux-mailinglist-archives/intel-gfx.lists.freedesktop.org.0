Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E329BA4D67D
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 09:32:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8399F10E539;
	Tue,  4 Mar 2025 08:32:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g4X6AgDU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 886B410E539;
 Tue,  4 Mar 2025 08:32:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741077150; x=1772613150;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YWmI73TmA0Odt/a2tugjrvYJIByk8WEFCxMuXe9Mlsk=;
 b=g4X6AgDUQW0VK0OHIJ6Cv7KrasVPWRvH3tRZ9M2ATjqf3WzMEt2pXLHd
 9YilTrhfAQJvjrD0rkXqvfOTlRo3ckVig14JgZHw0ZfvNzJXlPjnO4dkE
 14XYUPCJrICaLD3H1v3dLPdfrYIMxsHYGzmzmwCq6/tpnZONI2j+ghGJy
 woZaihgBYCKL0Gv1268ysI/DZWOY5aJt5AuRrncikmIj2StWqzhBmwB+U
 gVepk/WARLvcF9Cqqf2KnVqvmQePLUwvmHfy8kPInValb4J38QqsLAUpl
 Xe+Qh6l72rq2/0Yi9B0X9xkYRlMcwciG+jQZQ7We0Jgj1XfV3ebJJ8bkg Q==;
X-CSE-ConnectionGUID: Q7w9gVFwTwKwLZmq2momJg==
X-CSE-MsgGUID: BGGHu+w2QM6Jr5zs2KyigQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11362"; a="45910195"
X-IronPort-AV: E=Sophos;i="6.13,331,1732608000"; d="scan'208";a="45910195"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:32:30 -0800
X-CSE-ConnectionGUID: 1W1cfav0QeW/MDscU5LwUw==
X-CSE-MsgGUID: Izk9tBlfSeKAwDYOLXrurg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="155492253"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 00:32:28 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 17/22] drm/i915/display: Move vrr.guardband/pipeline_full out
 of !fastset block
Date: Tue,  4 Mar 2025 13:49:43 +0530
Message-ID: <20250304081948.3177034-18-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
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

The vrr.guardband/pipeline_full depend on the vrr.vmin. Since we have
set vrr.vmin to adjusted_mode->crtc_vtotal, this shouldn't change on the
fly. With this we can move vrr.guardband/pipeline_full out from !fastset
block.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a885694df90a..3e8ceafcbbb4 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -5411,8 +5411,6 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_I(vrr.vmin);
 		PIPE_CONF_CHECK_I(vrr.vmax);
 		PIPE_CONF_CHECK_I(vrr.flipline);
-		PIPE_CONF_CHECK_I(vrr.pipeline_full);
-		PIPE_CONF_CHECK_I(vrr.guardband);
 		PIPE_CONF_CHECK_I(vrr.vsync_start);
 		PIPE_CONF_CHECK_I(vrr.vsync_end);
 		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
@@ -5420,6 +5418,9 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
 		PIPE_CONF_CHECK_BOOL(cmrr.enable);
 	}
 
+	PIPE_CONF_CHECK_I(vrr.pipeline_full);
+	PIPE_CONF_CHECK_I(vrr.guardband);
+
 #undef PIPE_CONF_CHECK_X
 #undef PIPE_CONF_CHECK_I
 #undef PIPE_CONF_CHECK_LLI
-- 
2.45.2

