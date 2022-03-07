Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C314D0C27
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Mar 2022 00:40:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D309410E1D1;
	Mon,  7 Mar 2022 23:40:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 131C910E1D1
 for <intel-gfx@lists.freedesktop.org>; Mon,  7 Mar 2022 23:40:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646696405; x=1678232405;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=IBGsrOZC2/5cSwZtX0C9zKbYSKULlhIsi18Bjk4SsGY=;
 b=XiXjG1XM+wILp+mBimWw6SaFpZ7vrgyW9CLAuMoNU1E1TLgthWYHLVvv
 NxEk3x7eFRPIxliT680LWX14o4uRuE7cGgPVwp+ijoh1zBYIZ7UvsCaCo
 23Q16SeixYK8NU3kmSyUh6wXkmtuJhLLZEA6sg9rx68b0/Gjwr9ibNrk+
 0nvqWMU9O8YZJ7bu31ZD/RyYKHTkTQVlhrsI4o3XuFNxFawBxERtCc2Et
 7k19tJQWWN6+bU422CLs8TVPs+tTpuOA8CXoJGNAhOWvmHiipDxTl/3Mv
 sqI3JJbY+WOHWtv43lntYHoRnE2Vti+WsHNOC08AFLrSYQSR+qwTUIaor Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10279"; a="254264686"
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="254264686"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2022 15:40:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,163,1643702400"; d="scan'208";a="595685878"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by fmsmga008.fm.intel.com with SMTP; 07 Mar 2022 15:40:01 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 08 Mar 2022 01:40:01 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  8 Mar 2022 01:39:39 +0200
Message-Id: <20220307233940.4161-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
References: <20220307233940.4161-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 7/8] drm/i915: Populate bxt/glk DPLL clock
 limits a bit more
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Set the bxt/glk DPLL min dotclock to 25MHz (HDMI minimum)
and the max to 594 MHz (HDMI max). The supported DP frequencies
(162MHz-540MHz) fit within the same range.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dpll.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dpll.c b/drivers/gpu/drm/i915/display/intel_dpll.c
index f4e5290b86a4..7377f1f009ba 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -285,8 +285,7 @@ static const struct intel_limit intel_limits_chv = {
 };
 
 static const struct intel_limit intel_limits_bxt = {
-	/* FIXME: find real dot limits */
-	.dot = { .min = 0, .max = INT_MAX },
+	.dot = { .min = 25000, .max = 594000 },
 	.vco = { .min = 4800000, .max = 6700000 },
 	.n = { .min = 1, .max = 1 },
 	.m1 = { .min = 2, .max = 2 },
-- 
2.34.1

