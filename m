Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id i///Grg0hmlrLAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 19:36:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D02102012
	for <lists+intel-gfx@lfdr.de>; Fri, 06 Feb 2026 19:36:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4899610E8AF;
	Fri,  6 Feb 2026 18:36:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d/vZd7tv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4F65410E8C5;
 Fri,  6 Feb 2026 18:36:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770402997; x=1801938997;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=ljW7Nozb9/rxJVb/CDoGPVUs9y/nNMpLcWf24OqvA9Y=;
 b=d/vZd7tvzysdL6EKKzCIsePPLAkr9hYpRztZZdA49R/6IVw3NT92H/LD
 x7MuZdUWBfELUHtyNThUyVZdtnKNxcMoOyU6ec+naWHsYy1CCBlJ88Njq
 3dBmMT7etPpxJp4wVVlLkR0ePX0JN2Yx+yJepV3hig7REwOlDadJ8RBTr
 bvjSC8DxczyiqUMrP82Je+MoyREU4UrUjZeUZ09mDgu4uloBjy/9RvbsZ
 eyaelQG6fqPBOViLqN7P6tiEaCBhcow3ceB27hGcHpQQVJpqr43KkCtDK
 Rqa8SEIdOWA1DSlBpIfO5bYCbRPMWcA5r9ncDjChgzdPCfQOo7d9oCspx A==;
X-CSE-ConnectionGUID: Vbk/9zcERPuv5k/1HU3WJw==
X-CSE-MsgGUID: Kd92TalZRPu8+B8by8M26w==
X-IronPort-AV: E=McAfee;i="6800,10657,11693"; a="71516936"
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="71516936"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 10:36:37 -0800
X-CSE-ConnectionGUID: c7gjQM3QRBW9VI3x988seQ==
X-CSE-MsgGUID: T5zJRq8IRImYNhSnalYp+w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,276,1763452800"; d="scan'208";a="210224742"
Received: from vverma7-mobl3.amr.corp.intel.com (HELO [192.168.1.16])
 ([10.124.222.159])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Feb 2026 10:36:36 -0800
From: Gustavo Sousa <gustavo.sousa@intel.com>
Date: Fri, 06 Feb 2026 15:36:02 -0300
Subject: [PATCH v3 06/15] drm/xe/xe3p_lpg: Add LRC parsing for additional
 RCS engine state
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260206-nvl-p-upstreaming-v3-6-636e1ad32688@intel.com>
References: <20260206-nvl-p-upstreaming-v3-0-636e1ad32688@intel.com>
In-Reply-To: <20260206-nvl-p-upstreaming-v3-0-636e1ad32688@intel.com>
To: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Gustavo Sousa <gustavo.sousa@intel.com>, 
 Matt Roper <matthew.d.roper@intel.com>, 
 Matt Atwood <matthew.s.atwood@intel.com>
X-Mailer: b4 0.15-dev
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
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[gustavo.sousa@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	NEURAL_HAM(-0.00)[-0.999];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: 06D02102012
X-Rspamd-Action: no action

From: Matt Roper <matthew.d.roper@intel.com>

Xe3p_LPG adds some additional state instructions to the RCS engine's
LRC.  Add support for these to the debugfs LRC parser.

Note that the bspec's LRC description page seems to have a few mistakes
in the name/spelling of these new instructions (e.g.,
"3DSTATE_TASK_DATA_EXT" instead of "3DSTATE_TASK_SHADER_DATA_EXT" or
"3DSTATE_VIEWPORT_STATE_POINTERS_CL_SF_2" instead of
"3DSTATE_VIEWPORT_STATE_POINTERS_SF_CLIP_2").

Bspec: 65182
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
---
 drivers/gpu/drm/xe/instructions/xe_gfxpipe_commands.h | 10 ++++++++++
 drivers/gpu/drm/xe/xe_lrc.c                           | 10 ++++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/gpu/drm/xe/instructions/xe_gfxpipe_commands.h b/drivers/gpu/drm/xe/instructions/xe_gfxpipe_commands.h
index 457881af8af9..4d854c85e588 100644
--- a/drivers/gpu/drm/xe/instructions/xe_gfxpipe_commands.h
+++ b/drivers/gpu/drm/xe/instructions/xe_gfxpipe_commands.h
@@ -55,6 +55,7 @@
 #define PIPELINE_SELECT				GFXPIPE_SINGLE_DW_CMD(0x1, 0x4)
 
 #define CMD_3DSTATE_DRAWING_RECTANGLE_FAST	GFXPIPE_3D_CMD(0x0, 0x0)
+#define CMD_3DSTATE_CUSTOM_SAMPLE_PATTERN	GFXPIPE_3D_CMD(0x0, 0x2)
 #define CMD_3DSTATE_CLEAR_PARAMS		GFXPIPE_3D_CMD(0x0, 0x4)
 #define CMD_3DSTATE_DEPTH_BUFFER		GFXPIPE_3D_CMD(0x0, 0x5)
 #define CMD_3DSTATE_STENCIL_BUFFER		GFXPIPE_3D_CMD(0x0, 0x6)
@@ -138,8 +139,16 @@
 #define CMD_3DSTATE_SBE_MESH			GFXPIPE_3D_CMD(0x0, 0x82)
 #define CMD_3DSTATE_CPSIZE_CONTROL_BUFFER	GFXPIPE_3D_CMD(0x0, 0x83)
 #define CMD_3DSTATE_COARSE_PIXEL		GFXPIPE_3D_CMD(0x0, 0x89)
+#define CMD_3DSTATE_MESH_SHADER_DATA_EXT	GFXPIPE_3D_CMD(0x0, 0x8A)
+#define CMD_3DSTATE_TASK_SHADER_DATA_EXT	GFXPIPE_3D_CMD(0x0, 0x8B)
+#define CMD_3DSTATE_VIEWPORT_STATE_POINTERS_CC_2	GFXPIPE_3D_CMD(0x0, 0x8D)
+#define CMD_3DSTATE_CC_STATE_POINTERS_2		GFXPIPE_3D_CMD(0x0, 0x8E)
+#define CMD_3DSTATE_SCISSOR_STATE_POINTERS_2	GFXPIPE_3D_CMD(0x0, 0x8F)
+#define CMD_3DSTATE_BLEND_STATE_POINTERS_2	GFXPIPE_3D_CMD(0x0, 0xA0)
+#define CMD_3DSTATE_VIEWPORT_STATE_POINTERS_SF_CLIP_2	GFXPIPE_3D_CMD(0x0, 0xA1)
 
 #define CMD_3DSTATE_DRAWING_RECTANGLE		GFXPIPE_3D_CMD(0x1, 0x0)
+#define CMD_3DSTATE_URB_MEMORY			GFXPIPE_3D_CMD(0x1, 0x1)
 #define CMD_3DSTATE_CHROMA_KEY			GFXPIPE_3D_CMD(0x1, 0x4)
 #define CMD_3DSTATE_POLY_STIPPLE_OFFSET		GFXPIPE_3D_CMD(0x1, 0x6)
 #define CMD_3DSTATE_POLY_STIPPLE_PATTERN	GFXPIPE_3D_CMD(0x1, 0x7)
@@ -160,5 +169,6 @@
 #define CMD_3DSTATE_SUBSLICE_HASH_TABLE		GFXPIPE_3D_CMD(0x1, 0x1F)
 #define CMD_3DSTATE_SLICE_TABLE_STATE_POINTERS	GFXPIPE_3D_CMD(0x1, 0x20)
 #define CMD_3DSTATE_PTBR_TILE_PASS_INFO		GFXPIPE_3D_CMD(0x1, 0x22)
+#define CMD_3DSTATE_SLICE_TABLE_STATE_POINTER_2	GFXPIPE_3D_CMD(0x1, 0xA0)
 
 #endif
diff --git a/drivers/gpu/drm/xe/xe_lrc.c b/drivers/gpu/drm/xe/xe_lrc.c
index 3db7968aa5e2..e58eb8b9db78 100644
--- a/drivers/gpu/drm/xe/xe_lrc.c
+++ b/drivers/gpu/drm/xe/xe_lrc.c
@@ -1966,6 +1966,7 @@ static int dump_gfxpipe_command(struct drm_printer *p,
 	MATCH(PIPELINE_SELECT);
 
 	MATCH3D(3DSTATE_DRAWING_RECTANGLE_FAST);
+	MATCH3D(3DSTATE_CUSTOM_SAMPLE_PATTERN);
 	MATCH3D(3DSTATE_CLEAR_PARAMS);
 	MATCH3D(3DSTATE_DEPTH_BUFFER);
 	MATCH3D(3DSTATE_STENCIL_BUFFER);
@@ -2049,8 +2050,16 @@ static int dump_gfxpipe_command(struct drm_printer *p,
 	MATCH3D(3DSTATE_SBE_MESH);
 	MATCH3D(3DSTATE_CPSIZE_CONTROL_BUFFER);
 	MATCH3D(3DSTATE_COARSE_PIXEL);
+	MATCH3D(3DSTATE_MESH_SHADER_DATA_EXT);
+	MATCH3D(3DSTATE_TASK_SHADER_DATA_EXT);
+	MATCH3D(3DSTATE_VIEWPORT_STATE_POINTERS_CC_2);
+	MATCH3D(3DSTATE_CC_STATE_POINTERS_2);
+	MATCH3D(3DSTATE_SCISSOR_STATE_POINTERS_2);
+	MATCH3D(3DSTATE_BLEND_STATE_POINTERS_2);
+	MATCH3D(3DSTATE_VIEWPORT_STATE_POINTERS_SF_CLIP_2);
 
 	MATCH3D(3DSTATE_DRAWING_RECTANGLE);
+	MATCH3D(3DSTATE_URB_MEMORY);
 	MATCH3D(3DSTATE_CHROMA_KEY);
 	MATCH3D(3DSTATE_POLY_STIPPLE_OFFSET);
 	MATCH3D(3DSTATE_POLY_STIPPLE_PATTERN);
@@ -2070,6 +2079,7 @@ static int dump_gfxpipe_command(struct drm_printer *p,
 	MATCH3D(3DSTATE_SUBSLICE_HASH_TABLE);
 	MATCH3D(3DSTATE_SLICE_TABLE_STATE_POINTERS);
 	MATCH3D(3DSTATE_PTBR_TILE_PASS_INFO);
+	MATCH3D(3DSTATE_SLICE_TABLE_STATE_POINTER_2);
 
 	default:
 		drm_printf(p, "[%#010x] unknown GFXPIPE command (pipeline=%#x, opcode=%#x, subopcode=%#x), likely %d dwords\n",

-- 
2.52.0

