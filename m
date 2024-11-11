Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D0A9C3A79
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Nov 2024 10:10:10 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1D70810E443;
	Mon, 11 Nov 2024 09:10:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TFbmdX+c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7B01D10E443;
 Mon, 11 Nov 2024 09:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731316208; x=1762852208;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=StZu4SAgdEs5quLcfVUjz2ewu0S3B/zfGv+O+pWqtvQ=;
 b=TFbmdX+csCH94AGq5mgJ9uc7yzpK1lfimbbAmzOB1W0xZM+09hq3StH2
 iytOT9QitkPudEwUnEW9pvynxS/XiaT8Xcy0PEc3tJpXG3fy7lZr6KOE7
 dCHyJsMiYP9uH+fXcO/G/aYbKxuFjkczcWP4cnPgFsnV4Mb/fqdZG9JDw
 t/FRXVXzrL/aZPqL9EsR/SFWwWYiG6XerTLzqNNJK8ghl4ZxKLYUUyCT8
 8hQZJowVZz2kz3RGqPhMryV0bLvdiE7Jf6WAVTAFeSDY2jUyCCC+PSqJX
 x+4QIE3UhyHu2vQe5TvrRuIjyo/g/aNuT4w1b4eJesVlsDKcVIhkmgRhN w==;
X-CSE-ConnectionGUID: FAJAlXaZQsSChLbGqKMWjA==
X-CSE-MsgGUID: EQrNhgRlRJiAMtrjCdVIvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11252"; a="35052334"
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="35052334"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:07 -0800
X-CSE-ConnectionGUID: VWjJdxweQn22cwmwYFPrVg==
X-CSE-MsgGUID: eMAvUg1aTzqvVfGOJNErXw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,144,1728975600"; d="scan'208";a="86762604"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa010-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Nov 2024 01:10:05 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 07/23] drm/i915/display: Add vrr mode to crtc_state dump
Date: Mon, 11 Nov 2024 14:42:05 +0530
Message-ID: <20241111091221.2992818-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
References: <20241111091221.2992818-1-ankit.k.nautiyal@intel.com>
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

Print Vrr mode along with other vrr members in crtc_state dump.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc_state_dump.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
index e2ce417b1990..abec61bb4334 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc_state_dump.c
@@ -296,8 +296,9 @@ void intel_crtc_state_dump(const struct intel_crtc_state *pipe_config,
 		intel_dump_buffer("ELD: ", pipe_config->eld,
 				  drm_eld_size(pipe_config->eld));
 
-	drm_printf(&p, "vrr_tg: %s, vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
+	drm_printf(&p, "vrr_tg: %s, mode: %d vmin: %d, vmax: %d, pipeline full: %d, guardband: %d flipline: %d, vmin vblank: %d, vmax vblank: %d\n",
 		   str_yes_no(pipe_config->vrr.tg_enable),
+		   pipe_config->vrr.mode,
 		   pipe_config->vrr.vmin, pipe_config->vrr.vmax,
 		   pipe_config->vrr.pipeline_full, pipe_config->vrr.guardband,
 		   pipe_config->vrr.flipline,
-- 
2.45.2

