Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4663BA06F10
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 08:32:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 245E110ED00;
	Thu,  9 Jan 2025 07:32:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LbBwTdH0";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FBCB10ED00;
 Thu,  9 Jan 2025 07:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736407920; x=1767943920;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+LycbfHECOYT76Qe5K2s9BO9lh87hriNwwutsjfcDDM=;
 b=LbBwTdH0f09yDpoaBQIi82hvuEN0A5EqKcwNh99yKb+KQvJ5QIIleou5
 1aSvstwOOrdPiGWwc0tMji/Wj6CwQdKPZgtsGI7RrhEruogGVAfgaV9XT
 OQGXrL8P+C9JC/5qFAFYiZDTE3SeIk4i2saEYOzyhropm+b8KpMkq1Ukl
 nuAN1IU1ymh9uAWaSbKmnhW/nR6a2+hEZCtQGtLlqbeP2s7/7RV5aRYlh
 fJuyep5PZTu7a2PShZxdYbhIvhsZeNmyPXP8KblXTEjb0fqU2Vn01K6jR
 YjZNTLQd1EP7a8mIxk8xflXQbikitZzNH8T726Gm40ZZkD/EE3aQY0QPu w==;
X-CSE-ConnectionGUID: 9uPM1TU1QX+yUnmpKTHwLw==
X-CSE-MsgGUID: d1IcYV4TSUm2noWY3/739w==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="54200562"
X-IronPort-AV: E=Sophos;i="6.12,300,1728975600"; d="scan'208";a="54200562"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 23:32:00 -0800
X-CSE-ConnectionGUID: FFOXwI+bSumxJkO6E88rDA==
X-CSE-MsgGUID: WLHnGJrLQWmxwbKza2j1Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,300,1728975600"; d="scan'208";a="103297843"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.185])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 23:31:58 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 01/10] drm/i915/psr: Use PSR2_MAN_TRK_CTL CFF bit only to
 send full update
Date: Thu,  9 Jan 2025 09:31:28 +0200
Message-ID: <20250109073137.1977494-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250109073137.1977494-1-jouni.hogander@intel.com>
References: <20250109073137.1977494-1-jouni.hogander@intel.com>
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

We are preparing for a change where only frontbuffer flush will use
single full frame bit of a new register (SFF_CTL) available on LunarLake
onwards.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 0b021acb330f..476305010e11 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2381,7 +2381,6 @@ static void psr2_man_trk_ctl_calc(struct intel_crtc_state *crtc_state,
 	val |= man_trk_ctl_partial_frame_bit_get(display);
 
 	if (full_update) {
-		val |= man_trk_ctl_single_full_frame_bit_get(display);
 		val |= man_trk_ctl_continuos_full_frame(display);
 		goto exit;
 	}
-- 
2.43.0

