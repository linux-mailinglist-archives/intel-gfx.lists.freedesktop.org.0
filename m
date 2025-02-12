Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A803A32069
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Feb 2025 08:58:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E28C110E7EB;
	Wed, 12 Feb 2025 07:58:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jjOIEkJA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6FB7B10E7EB;
 Wed, 12 Feb 2025 07:58:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739347083; x=1770883083;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EEmb+3BnWTeqUAl0jXdf9deM9bGOIm1r5RiZ5GwF3Mk=;
 b=jjOIEkJAI61DSOosL2tvllK+yjrRpQ3msAaRpEc5tEfY1UEAOuqjLe/G
 wfcne+Oqi9iSYHBAM+/7TnKDDKG4gKVzV9AZO4HbDc4WwmO5YjJrvCIq7
 vdlaqMa5OMCOWnnahPUAhFmx9K6od3QYSQ9LSi5nKFl+kHTDUZJhlGWRd
 rQDVZntPhnSJEk8PLAYzr2JqpLub+28ZOFRFCr1/jQ4VBUc0yr6UVH3ix
 ETvBhdEbgLPI7qUpv7DgKq4Qj5tiEUcQVNdd8zkYq+HxgjRB1UJhdXW5h
 Cs5sZLPl/XCH0m/+dymsYArd+9jgX7pDxMI+OslqYynbuFTPvtAu6qIa3 A==;
X-CSE-ConnectionGUID: qjuI8UIGTkGUumvCqAL9FQ==
X-CSE-MsgGUID: umKquKz+Tkir/eXBz1UDVA==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="50973635"
X-IronPort-AV: E=Sophos;i="6.13,279,1732608000"; d="scan'208";a="50973635"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:58:03 -0800
X-CSE-ConnectionGUID: 5jgiE9W+TT+k28p+tNn5+g==
X-CSE-MsgGUID: MtawYhzSSMCwnHBWELYvUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="116836913"
Received: from dalessan-mobl3.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.244.81])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 23:58:02 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 07/13] drm/i915/psr: Changes for PSR2_MAN_TRK_CTL handling
 when DSB is in use
Date: Wed, 12 Feb 2025 09:57:35 +0200
Message-ID: <20250212075742.995022-8-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250212075742.995022-1-jouni.hogander@intel.com>
References: <20250212075742.995022-1-jouni.hogander@intel.com>
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

Do needed changes to handle PSR2_MAN_TRK_CTL correctly when DSB is in use:

1. Write PSR2_MAN_TRK_CTL in commit_pipe_pre_planes only when not using
   DSB.
2. Add PSR2_MAN_TRK_CTL writing into DSB commit in
   intel_atomic_dsb_finish.

Taking PSR lock over DSB commit is not needed because PSR2_MAN_TRK_CTL is
now written only by DSB.

v2: remove checking use_dsb
Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index a1e0fa304d22..cab6852dd9c2 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -7745,6 +7745,8 @@ static void intel_atomic_dsb_finish(struct intel_atomic_state *state,
 					       new_crtc_state);
 		bdw_set_pipe_misc(new_crtc_state->dsb_commit,
 				  new_crtc_state);
+		intel_psr2_program_trans_man_trk_ctl(new_crtc_state->dsb_commit,
+						     new_crtc_state);
 		intel_crtc_planes_update_arm(new_crtc_state->dsb_commit,
 					     state, crtc);
 
-- 
2.43.0

