Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D2048C2C1
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 12:03:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8C91113EA0;
	Wed, 12 Jan 2022 11:03:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3653E113E8A
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 11:03:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641985413; x=1673521413;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=yDgncqHa3tldqyj2Ik35362seNxPIaBFUaWCCFsMHj8=;
 b=H9wSYFhvOpCyu3qBr+5+wdpVKb6l9r3U1Ds77y323rqmYqT61UJY4xsp
 kkzbOubZd78uGj/5SwqfQfvzMamHIIVj7UwgGtHmFuZcn2Tg0JlXihc+h
 Pute6bWOp5yyg+zagjuCEmF2zKI5pBSmHPtP9YvFyhicuKAgwbJvSyfQl
 BBOTuh2M1CLuf0jabMqGpQWCKqfGJlwDtZEbTeLKK/KpgCGx7hGU/Sgts
 FDcqCG6sH47eW4fHp00Y9d5a24C5ao2Uxv6hW0LklGWZtP42khxm7kSGz
 omMStijykBY+3EdrGWDGiJhP2WMU3HGqCjr9O0Q28LnqCmVw3s/f+7tnE g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="243665553"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="243665553"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 03:03:32 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="490703192"
Received: from pmasonx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.224])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 03:03:31 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jan 2022 13:03:15 +0200
Message-Id: <20220112110319.1172110-3-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220112110319.1172110-1-jani.nikula@intel.com>
References: <20220112110319.1172110-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH RESEND 3/7] drm/i915/mst: debug log 4 bytes of
 ESI right after reading
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

For whatever reason, the ESI link service irq vector was missing from
the debug output. Add the missing byte, clean up the debug message, and
do the logging right after reading the data.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index a301220ce2ad..6de39056e2f8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3683,6 +3683,8 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 			break;
 		}
 
+		drm_dbg_kms(&i915->drm, "DPRX ESI: %4ph\n", esi);
+
 		/* check link status - esi[10] = 0x200c */
 		if (intel_dp->active_mst_links > 0 && link_ok &&
 		    !drm_dp_channel_eq_ok(&esi[10], intel_dp->lane_count)) {
@@ -3691,8 +3693,6 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 			link_ok = false;
 		}
 
-		drm_dbg_kms(&i915->drm, "got esi %3ph\n", esi);
-
 		intel_dp_mst_hpd_irq(intel_dp, esi, &handled);
 
 		if (!handled)
-- 
2.30.2

