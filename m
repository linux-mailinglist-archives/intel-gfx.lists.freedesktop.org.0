Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E3F4C9195
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Mar 2022 18:32:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80BAA10E784;
	Tue,  1 Mar 2022 17:32:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A66110E784
 for <intel-gfx@lists.freedesktop.org>; Tue,  1 Mar 2022 17:32:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646155945; x=1677691945;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=0XwiPXyJveHlg3m2L//dErFmlpYEwhxDwpv8aQiKS/4=;
 b=WyA5hEF8x+8uQ9mtoE48OeCzLyEDFAfHO0ELmQlPlwhlLGRUvz4YolFf
 2CU1i+5tINcOV8r2neOhIsB+vPj5G3ptQqkPK0P8dA5Hr2Kphvf8upIi4
 TMCR9eJz8Z0f0AE1wpsxUyR1nLS+nTK/uCIWah16I1BGz34D8rJSicUB5
 WIZhwbx5JMPGu2zkT5Ve4M7BFnybOf+sV0Fi/snwqR+GHkDKZpwk0nHSv
 6e66+UR78W2/4Xp/VCgvVUTEurkqPh8WJHJd+5RBSVdzvoYZ8753hYxxt
 daWEg5ju74HUb+ymFkRHuuwoP3/hAEBeDq9NB2l09NaM3Zsyjxooqtw9l Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10273"; a="240605803"
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="240605803"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Mar 2022 09:32:01 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,146,1643702400"; d="scan'208";a="534989050"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.151])
 by orsmga007.jf.intel.com with SMTP; 01 Mar 2022 09:31:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 01 Mar 2022 19:31:58 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  1 Mar 2022 19:31:27 +0200
Message-Id: <20220301173128.6988-11-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
References: <20220301173128.6988-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 10/11] drm/i915: Populate bxt/glk DPLL clock
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
index 693e07a6db80..fee3e2e3a4b7 100644
--- a/drivers/gpu/drm/i915/display/intel_dpll.c
+++ b/drivers/gpu/drm/i915/display/intel_dpll.c
@@ -284,8 +284,7 @@ static const struct intel_limit intel_limits_chv = {
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

