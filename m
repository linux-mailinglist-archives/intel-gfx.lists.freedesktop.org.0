Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5376A42170
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD8B110E50F;
	Mon, 24 Feb 2025 13:42:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UGPHBUpu";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5BC5410E13C;
 Mon, 24 Feb 2025 06:30:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740378611; x=1771914611;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=sUxPGsVo0yiZwj0KqFYeIw+a9P7WePNohhCRj8uDtKk=;
 b=UGPHBUpuIoPEXdAJ/YYAZnw5s1e0DsgPplsQ8QtmcEFYRvfEDU1xwryC
 iWonVjRIzaswnjSSF4veIOOAP4/1haIlg7wyBfUJVX0+kG0hQQO1HFXBe
 ncZLHzGkb/5xlQ8vLQoh2+HBG0SjGEj9XPZQA/Pp8MZhLYgEVU9ubRDeF
 bhHfx7Dt1Vl9ubp/OHmqdNJE/89XTPiNH8u5sKzYdPai51SefDpd6GLEb
 zwg4a4N2cylxDJ/0sBrolOLkdFVNzdvLy780+oLKA8fdhae5UMw/+b5mN
 7ON4dFv172QdYZw8qiSLqlWKA/OekZ5s0HyqDKK7jT9IbTxUdBwDbrstW Q==;
X-CSE-ConnectionGUID: GFK0Ah8/TdWsnzeDozNjqQ==
X-CSE-MsgGUID: UGNCvvR6ReySIn7n/cVciA==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="28719713"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="28719713"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:30:11 -0800
X-CSE-ConnectionGUID: rQtFTQORSZiH11+1Ja6cQQ==
X-CSE-MsgGUID: Xse6vpYCRl2QT18S+xAxgw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="120076635"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2025 22:30:11 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, jani.nikula@linux.intel.com,
 ville.syrjala@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: [PATCH 19/20] drm/i915/vrr: Always use VRR timing generator for MTL+
Date: Mon, 24 Feb 2025 11:47:16 +0530
Message-ID: <20250224061717.1095226-20-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
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

Currently VRR timing generator is used only when VRR is enabled by
userspace for sinks that support VRR. From MTL+ gradually move away from
the older timing generator and use VRR timing generator for both variable
and fixed timings.

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_vrr.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
index 975fed9930c1..b16d277e78c5 100644
--- a/drivers/gpu/drm/i915/display/intel_vrr.c
+++ b/drivers/gpu/drm/i915/display/intel_vrr.c
@@ -543,7 +543,9 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
 	if (!HAS_VRR(display))
 		return false;
 
-	/* #TODO return true for platforms supporting fixed_rr */
+	if (DISPLAY_VER(display) >= 14)
+		return true;
+
 	return false;
 }
 
-- 
2.45.2

