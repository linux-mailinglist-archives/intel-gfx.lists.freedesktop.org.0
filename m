Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7D9CCDBBA5
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Dec 2025 10:01:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E18B210E367;
	Wed, 24 Dec 2025 09:01:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dRZArOmp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BE54C10E362;
 Wed, 24 Dec 2025 09:01:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766566863; x=1798102863;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9KVUITN6kjGOqMrbp7lTYE3UxXfkfwsW3O1FtmF3x44=;
 b=dRZArOmpz0ZMMA5087oPh/1jov8+ulOzL0erINEO6du5y4hAwYq392wj
 dUqPMn4VBX7bBndwfJRpYvgXdWzgBe9I4v7TzKu8hDWKEK7QYXp6tx99g
 MkTRvFbCy7ZbuK1WljR4OFkmiTaZBIe5Izgjx+gMBMJ0U8vCuFIo65wIx
 lXFB2t5jC/eFIklhQITK2IVD2jTtpDesV99qmVVlu244/TvEO7apVJXkg
 3q6R8AupMB6QVz4IVYvc55+QZk9L68YK3SJj9R1u1aBRMBHONZq+2BXiw
 geUBWyWesJcRbi/nRjmXyLLWVgqUfnpaq3apGiSEqHMm/fmvJ9GdaGyZK Q==;
X-CSE-ConnectionGUID: clbYPMkdSiaBZHr015SHjQ==
X-CSE-MsgGUID: Db+uCxYwQhqVp2AFt3X5mA==
X-IronPort-AV: E=McAfee;i="6800,10657,11651"; a="79041562"
X-IronPort-AV: E=Sophos;i="6.21,173,1763452800"; d="scan'208";a="79041562"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2025 01:01:02 -0800
X-CSE-ConnectionGUID: r2XC4ZOLRcWnMHEp+sECvA==
X-CSE-MsgGUID: FbdiYdz4RjO5NeVEwnAZHQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,173,1763452800"; d="scan'208";a="199733503"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Dec 2025 01:01:01 -0800
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, ville.syrjala@linux.intel.com,
 animesh.manna@intel.com, Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 =?UTF-8?q?Micha=C5=82=20Grzelak?= <michal.grzelak@intel.com>
Subject: [PATCH 3/5] drm/i915/alpm: Allow LOBF only for platform that have
 Always on VRR TG
Date: Wed, 24 Dec 2025 14:18:36 +0530
Message-ID: <20251224084838.2609537-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20251224084838.2609537-1-ankit.k.nautiyal@intel.com>
References: <20251224084838.2609537-1-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
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

As per bspec the LOBF is allowed when running in fixed refresh rate mode
i.e. when flipline = vmin = vmax and when window1 is non zero. This
implies that we can allow LOBF only when VRR timing generator is running
in the fixed refresh rate mode.

Use the check intel_vrr_always_use_vrr_tg() to avoid LOBF with legacy
timing generator. Also use intel_vrr_is_fixed_rr() to check for fixed
refresh rate mode.

v2: Modify commit message to clarify window1 requirement for LOBF.
(Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Michał Grzelak <michal.grzelak@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 27b26e5813dc..3aeab4bebce2 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -351,8 +351,8 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	if (crtc_state->has_psr)
 		return;
 
-	if (crtc_state->vrr.vmin != crtc_state->vrr.vmax ||
-	    crtc_state->vrr.vmin != crtc_state->vrr.flipline)
+	if (!intel_vrr_always_use_vrr_tg(display) ||
+	    !intel_vrr_is_fixed_rr(crtc_state))
 		return;
 
 	if (!(intel_alpm_aux_wake_supported(intel_dp) ||
-- 
2.45.2

