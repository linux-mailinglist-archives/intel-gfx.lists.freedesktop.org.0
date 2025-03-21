Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BF69A6B7E9
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 10:45:57 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07BBD10E76D;
	Fri, 21 Mar 2025 09:45:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="f3xQPKEn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1DBA10E76D;
 Fri, 21 Mar 2025 09:45:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742550355; x=1774086355;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=bTwJ3bG2L3LjQ242WKkTjZjxQSUt0E1NBq6mKBH5em4=;
 b=f3xQPKEn9VLOqSc/zrwRXqDl/mzNZLOf8avHhpDhieqHIA+iW9x5Zmel
 XShetQh41yxysebHVI8dS7ZVk9djkEXDXTOSD2z9LKIJhDBI06Y+uDesX
 FNwAn/ohor7q/1XWa/o9fKb1BK5As4D+vTS09lXeoJkKKshhkZqwYoy60
 EwpPURuCf0TXNteuIYsu3z9dUMZPTZ8Aa+VJRNsgTs1ky/Zzbpg3lmuZO
 ZUvq2smPS109Skxltu1DOnaKQKDz4ypu5mwb2R86m7rVz5rjRDHPwYqZH
 vAbuEmkhHKgIprR1bMmVqAD+UPE2vx6N7euS4m9N1oSnEoNPnmFweFTQc w==;
X-CSE-ConnectionGUID: ArzgvpRoQ6Ga8wtiBqBh7A==
X-CSE-MsgGUID: iodhk3OcQwCpdd5VSO6GKA==
X-IronPort-AV: E=McAfee;i="6700,10204,11379"; a="43974531"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="43974531"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 02:45:54 -0700
X-CSE-ConnectionGUID: RS1MrXXNQpywInyksiwtdw==
X-CSE-MsgGUID: mh2dccRZR52/DtMjBbjcMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="124132839"
Received: from lfiedoro-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.179])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 02:45:51 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, jouni.hogander@intel.com,
 ville.syrjala@intel.com, uma.shankar@intel.com, jani.saarinen@intel.com,
 jeevan.b@intel.com
Subject: [PATCH v2 2/2] drm/i915/fbc: update the panel_replay dependency in
 fbc wa's
Date: Fri, 21 Mar 2025 11:45:29 +0200
Message-ID: <20250321094529.197397-3-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250321094529.197397-1-vinod.govindapillai@intel.com>
References: <20250321094529.197397-1-vinod.govindapillai@intel.com>
MIME-Version: 1.0
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

There are two panel_replay scenarios fbc wa need to be aware of,
panel replay with and without selective update capability.
Panel replay without selective update don't have any fbc wa.
So keep the fbc psr1 wa as it is.

The current fbc psr2 wa is mainly about selective fetch and we
need to apply the fbc wa if selective fetch is on - irrespective
of panel replay. Hence we can't exclude panel replay from the
fbc psr2 wa.

v1: keep panel_replay exclusion in PSR1 case (Jouni)
    Patch description updated

Bspec: 66624, 50442
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index 92b00da4c0ab..3c72047bf1a2 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -1471,9 +1471,8 @@ static int intel_fbc_check_plane(struct intel_atomic_state *state,
 	 * disabling PSR2, keep FBC disabled in case of selective update is on
 	 * until the selection logic is implemented.
 	 */
-	if (DISPLAY_VER(display) >= 12 && crtc_state->has_sel_update &&
-	    !crtc_state->has_panel_replay) {
-		plane_state->no_fbc_reason = "PSR2 enabled";
+	if (DISPLAY_VER(display) >= 12 && crtc_state->has_sel_update) {
+		plane_state->no_fbc_reason = "Selective update enabled";
 		return 0;
 	}
 
-- 
2.43.0

