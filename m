Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E033F518C44
	for <lists+intel-gfx@lfdr.de>; Tue,  3 May 2022 20:24:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0715010E7EB;
	Tue,  3 May 2022 18:24:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA32510E7EB
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 May 2022 18:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1651602240; x=1683138240;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=KKlIhSymoFiAmbsumnBXxe/3YMeKfPCXhNIHjefuutc=;
 b=WJZRjIlAZMjmJVw2suhKQjOh0OfQpi0e7SNraT9YGo67NPDuJvLNTsTr
 SsnML1577X//9DQU3SSEeFnsqcCR0TA8wrCNZvQbI82M7Yim832YNgY7P
 3McjfwI3whdtdOg5KWulYW9aJmG6RywHcOe1hAkLAVRpHnvJa4bNpYJkj
 iPtwsim8v6YDlB1B31GW2j4x3Y62iEk44U5GDjTTurGQvexA/Aq0lA/pl
 QCY4wf2MGxKOHzCE62ejzN/WNBwDvyXD3LSVLAAb/egTBs05vqAYXhAjK
 OeVUV/o/t3/VovlTeSlxCxCJke0StvvJwNte1FArzmukbksHiAU/HUf8l g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10336"; a="255016522"
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="255016522"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2022 11:24:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,195,1647327600"; d="scan'208";a="664085482"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.51])
 by fmsmga002.fm.intel.com with SMTP; 03 May 2022 11:23:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 03 May 2022 21:23:57 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  3 May 2022 21:22:41 +0300
Message-Id: <20220503182242.18797-26-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
References: <20220503182242.18797-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 25/26] drm/i915: Round to closest in M/N
 calculations
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

Rounding to nearest is what we do for most other clock calculations
so should probably do that for M/N too.

TODO: GOP seems to truncate instead so fastboot is going to be
a PITA to get right. Not sure what to do about it yet.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index 89a7c8c1be28..c4257630a3fe 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -2856,7 +2856,7 @@ static void compute_m_n(u32 *ret_m, u32 *ret_n,
 	else
 		*ret_n = min_t(unsigned int, roundup_pow_of_two(n), DATA_LINK_N_MAX);
 
-	*ret_m = div_u64(mul_u32_u32(m, *ret_n), n);
+	*ret_m = DIV_ROUND_CLOSEST_ULL(mul_u32_u32(m, *ret_n), n);
 	intel_reduce_m_n_ratio(ret_m, ret_n);
 }
 
@@ -4602,7 +4602,8 @@ int intel_dotclock_calculate(int link_freq,
 	if (!m_n->link_n)
 		return 0;
 
-	return div_u64(mul_u32_u32(m_n->link_m, link_freq), m_n->link_n);
+	return DIV_ROUND_CLOSEST_ULL(mul_u32_u32(m_n->link_m, link_freq),
+				     m_n->link_n);
 }
 
 /* Returns the currently programmed mode of the given encoder. */
-- 
2.35.1

