Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C937CA06F15
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 08:32:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3877D10ED0E;
	Thu,  9 Jan 2025 07:32:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JvRfBgS6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 902BE10ED05;
 Thu,  9 Jan 2025 07:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736407926; x=1767943926;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ImiA70a/tCccpu9ZH6R93IWt4TV7VK59ICQr61ksgcg=;
 b=JvRfBgS6EJgz6gg6Jcjxzezj4nqyxR9rfdV9T6QZG0GMnzDoEyd05hgE
 eyiSGJtO1n/QmTsDnVefXyoZajivMxY06Azxs2BmJn8Omoj3+Pt6+c+kV
 Q0dKeTE8/pzHasB97QXr5IBFb8i38ja01ZA0Gap2fCbOyEKYVGQ8u4XL/
 uVRbvDRLGxNRiIFarKmuY+jPcNGF92+j3JvvSZa2VKeaMtC6BA9Xz3gnQ
 aTxB/pzyvJgIIQlhmpxMrhWXtchz/qv24fxy/zCMzXmkA0CSfy54mu02B
 9SqWBd6T8hdT4iSEE65K11X82+XzvK4tJpgztJXXdJ6YTWT/bg5AT+dyh A==;
X-CSE-ConnectionGUID: c/s90qPaQ3yYYeFW2+e9FQ==
X-CSE-MsgGUID: lEWYcxVzRhirtnxdtS/XwA==
X-IronPort-AV: E=McAfee;i="6700,10204,11309"; a="54200569"
X-IronPort-AV: E=Sophos;i="6.12,300,1728975600"; d="scan'208";a="54200569"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 23:32:05 -0800
X-CSE-ConnectionGUID: wD/O8UY5QXezNxhGoLf+Kw==
X-CSE-MsgGUID: ZsfGPaZxR4Sf405/o11lVw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,300,1728975600"; d="scan'208";a="103297863"
Received: from fpallare-mobl4.ger.corp.intel.com (HELO jhogande-mobl1..)
 ([10.245.245.185])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jan 2025 23:32:04 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 05/10] drm/i915/psr: Use SFF_CTL on invalidate/flush for
 LunarLake onwards
Date: Thu,  9 Jan 2025 09:31:32 +0200
Message-ID: <20250109073137.1977494-6-jouni.hogander@intel.com>
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

In LunarLake we have SFF_CTL register which contains SFF bit ored with
respective SFF bit in PSR2_MAN_TRK_CTL register. Use this register instead
of the bit in PSR2_MAN_TRK_CTL on frontbuffer tracking callbacks. This
helps us avoiding taking psr mutex when performing atomic commit.

We don't need to set the CFF bit as selective update configuration in
PSR2_MAN_TRL_CTL is not overwritten anymore. I.e. we have valid
configuration in PSR2_MAN_TRK_CTL and in plane SEL_FETCH_* registers when
SFF bit gets cleared by the HW in case something triggers "frame change"
event after SFF bit is cleared.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index e6f96a8b4fb0..85ecedd3162d 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2345,7 +2345,7 @@ void intel_psr2_program_trans_man_trk_ctl(const struct intel_crtc_state *crtc_st
 		struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
 
 		lockdep_assert_held(&intel_dp->psr.lock);
-		if (intel_dp->psr.psr2_sel_fetch_cff_enabled)
+		if (DISPLAY_VER(display) < 20 && intel_dp->psr.psr2_sel_fetch_cff_enabled)
 			return;
 		break;
 	}
@@ -3118,12 +3118,16 @@ static void intel_psr_configure_full_frame_update(struct intel_dp *intel_dp)
 	if (!intel_dp->psr.psr2_sel_fetch_enabled)
 		return;
 
-	intel_de_write(display,
-		       PSR2_MAN_TRK_CTL(display, cpu_transcoder),
-		       man_trk_ctl_enable_bit_get(display) |
-		       man_trk_ctl_partial_frame_bit_get(display) |
-		       man_trk_ctl_single_full_frame_bit_get(display) |
-		       man_trk_ctl_continuos_full_frame(display));
+	if (DISPLAY_VER(display) >= 20)
+		intel_de_write(display, LNL_SFF_CTL(cpu_transcoder),
+			       LNL_SFF_CTL_SF_SINGLE_FULL_FRAME);
+	else
+		intel_de_write(display,
+			       PSR2_MAN_TRK_CTL(display, cpu_transcoder),
+			       man_trk_ctl_enable_bit_get(display) |
+			       man_trk_ctl_partial_frame_bit_get(display) |
+			       man_trk_ctl_single_full_frame_bit_get(display) |
+			       man_trk_ctl_continuos_full_frame(display));
 }
 
 static void _psr_invalidate_handle(struct intel_dp *intel_dp)
@@ -3227,6 +3231,10 @@ static void _psr_flush_handle(struct intel_dp *intel_dp)
 		 * Still keep cff bit enabled as we don't have proper SU
 		 * configuration in case update is sent for any reason after
 		 * sff bit gets cleared by the HW on next vblank.
+		 *
+		 * NOTE: Setting cff bit is not needed for LunarLake onwards as
+		 * we have own register for SFF bit and we are not overwriting
+		 * existing SU configuration
 		 */
 		intel_psr_configure_full_frame_update(intel_dp);
 	}
-- 
2.43.0

