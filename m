Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E65CB9AD6E6
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Oct 2024 23:47:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2C7BA10E87A;
	Wed, 23 Oct 2024 21:47:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E3cJt+Er";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8102110E868;
 Wed, 23 Oct 2024 21:47:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729720026; x=1761256026;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=fsdBg93Uq6zPP1hIZpzYuKjmCeO/W1rTepnAHHkN6QY=;
 b=E3cJt+Er0OSD/DlYUOj2KGmtE0x2M/yiaQfw+bS6gxlzllhsRoDh/QcN
 h1AHyq/DDxqyhYPeBjtpPqxdpmT8uQ06toiQ2JG6s08H26O4h+d39gAzr
 yE3r6uKlIFgH5U550f+UfCu+vWvsS83s/4SLJexQPX2/gsir4iDEQQ1kQ
 dhsc38i+kmObSEIa0MMtckLZapvSgEt7xENhan1TCx4izDqZX9MK5Bewb
 y3HHJjORbnStO/SG6ZlevJXYcob6Re78o1R/TcH439rGV+MXr7+vl9FjJ
 yj76FkXj/uQnAya1DpEyj6h3RBHX4jmXwKK44GZWf08uUigJUM948ZmpE A==;
X-CSE-ConnectionGUID: H7loTn8iQ4eHkzWnU7xnJw==
X-CSE-MsgGUID: D9JKQDC4RQyN3nKaIPekDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11234"; a="54732001"
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="54732001"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:47:05 -0700
X-CSE-ConnectionGUID: MbsEAG0kT26jxoEDV7FvbQ==
X-CSE-MsgGUID: D6jaFU+eSXOrTLwVVrs0Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,227,1725346800"; d="scan'208";a="80809801"
Received: from cataylo2-desk.jf.intel.com ([10.165.21.140])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Oct 2024 14:47:05 -0700
From: Clint Taylor <clinton.a.taylor@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Subject: [PATCH v2 04/12] drm/i915/display/ptl: Fill VRR crtc_state timings
 before other transcoder timings
Date: Wed, 23 Oct 2024 14:46:53 -0700
Message-Id: <20241023214701.963830-5-clinton.a.taylor@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241023214701.963830-1-clinton.a.taylor@intel.com>
References: <20241023214701.963830-1-clinton.a.taylor@intel.com>
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

From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>

In progress to make VRR timing generator as the default timing generator,
rest other timings will be derived based on vrr.vmin and vrr.vmax. Call
intel_vrr_get_config before intel_get_transcoder_timings to accommodate
values getting pre-filled.

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index ef1436146325..01466611eebe 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -4134,13 +4134,13 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
 	intel_joiner_get_config(pipe_config);
 	intel_dsc_get_config(pipe_config);
 
+	if (HAS_VRR(dev_priv) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
+		intel_vrr_get_config(pipe_config);
+
 	if (!transcoder_is_dsi(pipe_config->cpu_transcoder) ||
 	    DISPLAY_VER(dev_priv) >= 11)
 		intel_get_transcoder_timings(crtc, pipe_config);
 
-	if (HAS_VRR(dev_priv) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
-		intel_vrr_get_config(pipe_config);
-
 	intel_get_pipe_src_size(crtc, pipe_config);
 
 	if (IS_HASWELL(dev_priv)) {
-- 
2.25.1

