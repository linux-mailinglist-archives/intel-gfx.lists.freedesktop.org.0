Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2836948C2C4
	for <lists+intel-gfx@lfdr.de>; Wed, 12 Jan 2022 12:03:48 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42187113EA8;
	Wed, 12 Jan 2022 11:03:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F33C0113EA6
 for <intel-gfx@lists.freedesktop.org>; Wed, 12 Jan 2022 11:03:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641985425; x=1673521425;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eFcgK+oRv0uftSstEwkkw/PcJCV6WXfCXQzqy72RKiU=;
 b=madD9HsZ98JDHblgz7Kwsw0iaLHrJP0DAu96Qr9LfUNjORKlF4ougvu6
 sr7hnAQEGJIkohtraQv71rJoeLWEEXKYSGWmP2DYBOpbTuinChewL7QP5
 VwG3h74qzdLKGPVaOa8DW5iRjK3Io5Z6nJDCBvoJ18l2Kt1QeKkXTquuu
 ugTTWEg3Ns2ok3ewKme5FhM+3X+hKbRkK9Eda50c5V+RQsdfLveCJ+03K
 uqgQkHwCQsiiuCciC3uYzHMuAhmcAwp3EBxJlB8sEDzkpc8g+/BLMZUXh
 oHGmOlV2yWW23xOBOKXAvBt1W2j0MWBuTHtz5RlITDVn3SvNq5rgwSo/i w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10224"; a="243910797"
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="243910797"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 03:03:44 -0800
X-IronPort-AV: E=Sophos;i="5.88,282,1635231600"; d="scan'208";a="515446223"
Received: from pmasonx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.13.224])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Jan 2022 03:03:43 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 12 Jan 2022 13:03:18 +0200
Message-Id: <20220112110319.1172110-6-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220112110319.1172110-1-jani.nikula@intel.com>
References: <20220112110319.1172110-1-jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH RESEND 6/7] drm/i915/mst: ack sink irq ESI for
 link status changes
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

Only specific event status indicators caused the link status to be
acked. Be sure to ack the link status change event.

Arguably we should track which bits to actually clear in ESI instead of
the wholesale approach.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index d8a0ba3a14b7..95e9f7220ab8 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -3699,6 +3699,7 @@ intel_dp_check_mst_status(struct intel_dp *intel_dp)
 		    esi[3] & LINK_STATUS_CHANGED) {
 			if (!intel_dp_mst_link_status(intel_dp))
 				link_ok = false;
+			handled = true;
 		}
 
 		intel_dp_mst_hpd_irq(intel_dp, esi, &handled);
-- 
2.30.2

