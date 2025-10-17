Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0C7BE663A
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Oct 2025 07:15:19 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0BE810EB03;
	Fri, 17 Oct 2025 05:15:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kLFYz9Nw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2A51710EAFB;
 Fri, 17 Oct 2025 05:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760678116; x=1792214116;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=u+LAX4kOKwZGaqEwdDjVO/1DZah5STszPT2UAv7Z1dc=;
 b=kLFYz9Nwz1v2p006Q72R3nTkL/+VLQHMaHzYeR/edFmomAZN3ekvqlYk
 8HRYNBe7AMWExwGv1BOJF06ezdrkzqo0nbD33Gc2/gGvc9QaUlyi6oe6w
 Ps32R2mQ4YDLLOE0RjwG2q12i11h54kLoKHVex5IYIqLq5z3GfCAYw65B
 zd9qmF34XDHxDmKBZAfAHPoSK6nomMEkZdmd9soeGJS26pddiQ9SdDdUP
 Cns9s2p0zaZCuedQVbuxKrRDVqNJHHaot40S2PAUroBRHhDgIn8074B0p
 oz1rI+cr4I4gFWNTZua5NIoLBPNOfUqcdv7Aht1/zs0wzubIU8Pj59kix A==;
X-CSE-ConnectionGUID: UIv7qI/GTUiEkpABqc9VDQ==
X-CSE-MsgGUID: coGwW2NARcmjdaviqwnRrA==
X-IronPort-AV: E=McAfee;i="6800,10657,11584"; a="88352617"
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="88352617"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 22:15:16 -0700
X-CSE-ConnectionGUID: Ari+nXeZRsG7jPDRKcqrQQ==
X-CSE-MsgGUID: Dm0msJ9JQNCJXu2NbsxV+A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,234,1754982000"; d="scan'208";a="182576588"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Oct 2025 22:15:14 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Subject: [PATCH 5/5] drm/i915/vrr: Use optimized guardband whenever VRR TG is
 active
Date: Fri, 17 Oct 2025 10:32:02 +0530
Message-ID: <20251017050202.2211985-6-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
References: <20251017050202.2211985-1-ankit.k.nautiyal@intel.com>
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

Currently the guardband is optimized only for platforms where the
VRR timing generator is always ON.

Extend the usage of optimized guardband to other platforms only when the
VRR is enabled.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index cd7bed358984..eb5aa0d7fc49 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -483,7 +483,7 @@ static bool intel_vrr_use_optimized_guardband(const struct intel_crtc_state *crt
 	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI))
 		return false;
 
-	return intel_vrr_always_use_vrr_tg(display);
+	return intel_vrr_always_use_vrr_tg(display) || crtc_state->vrr.enable;
 }
 
 void intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state)
-- 
2.45.2

