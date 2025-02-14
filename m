Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30DF1A35D75
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Feb 2025 13:22:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE6AE10EC72;
	Fri, 14 Feb 2025 12:22:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pn5Jhfk/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 997DB10EC69;
 Fri, 14 Feb 2025 12:22:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739535765; x=1771071765;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yMZQYKOctiyCsMD/2BUjTQbDNNX62NkLNLdFnnyQQmo=;
 b=Pn5Jhfk/8RB+HVUgnSWFPzBkhOOCI+8gkGqi1z/aYnKIyWGw43thKq20
 rt1KY2nHDu1ThUsD5UH/eeAGaNPrfE/GubRszADk1uC2M5RhJhMqXVgoc
 FyPB9j0byUFBH6DM+CUNjEbNouO1047Qb3TIEzaoHlZE3JJPLos+GaIJ6
 BTrZvOL+X3se6I5m6EliZi30t7ZYCCAH3TtUTta7Q2sGyFi6AR5u9aeYI
 xLu2wOeRqRkTmWClGUxCqYytb/mNhFlhhysWQltn0TndV7AMfazm/kt4O
 HQUGxPKTXHJh2HZHN+BB6hBI3MwFd3OA7GQDXdUZ+a8bHjfEypMls+AmN A==;
X-CSE-ConnectionGUID: xQujim0zQVGL2vy6KRes5A==
X-CSE-MsgGUID: KwS9kUsnQBqg8s0G87S5wQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11345"; a="51256001"
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="51256001"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:44 -0800
X-CSE-ConnectionGUID: zhBWfC+QS0CUmPLwwkZtwA==
X-CSE-MsgGUID: GNbooWmaTLOu6Np5s++MNg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,285,1732608000"; d="scan'208";a="113309563"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2025 04:22:42 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 09/19] drm/i915/display: Enable MSA Ignore Timing PAR only
 when in not fixed_rr mode
Date: Fri, 14 Feb 2025 17:41:19 +0530
Message-ID: <20250214121130.1808451-10-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
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

MSA Ignore Timing PAR enable is set in the DP sink when we enable variable
refresh rate.

Currently for link training we depend on flipline to decide whether we
want to ignore the msa timings. With fixed refresh rate we will still
fill the flipline in all cases whether panel supports VRR or not.

Change the condition for link training to ignore the msa timings if
vrr.in_range.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_link_training.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
index 3cc06c916017..549e4ebd9404 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
@@ -725,7 +725,7 @@ static void intel_dp_update_downspread_ctrl(struct intel_dp *intel_dp,
 					    const struct intel_crtc_state *crtc_state)
 {
 	intel_dp_link_training_set_mode(intel_dp,
-					crtc_state->port_clock, crtc_state->vrr.flipline);
+					crtc_state->port_clock, crtc_state->vrr.in_range);
 }
 
 void intel_dp_link_training_set_bw(struct intel_dp *intel_dp,
-- 
2.45.2

