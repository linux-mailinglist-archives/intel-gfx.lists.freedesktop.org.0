Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A23A90C313
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 07:30:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37E7010E102;
	Tue, 18 Jun 2024 05:30:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V5JYFOYr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 62C7C10E0D1
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 05:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718688655; x=1750224655;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=YrTlCdfEq3AOHWMENie1Oeemk8NXSD5BmDsq5thEYek=;
 b=V5JYFOYrUEueNHiz2D+shsyiGDtfc8VHpPamXrE/v5FItT1shZlhKd/r
 jhbp65S02TaudSB+EVDGfTKtnnYY0YgaHMoDPjuO7bqgECMj2uAC+TP6t
 jzh9Tpk9cFYV9k9o7RNIvdo2cXw+Abm+2BBbqLpvBYc6JBOAyU63dj0yW
 SGXAOtzh53uIW9KqM0x7joe9eivaJXkiGd2PqMrQ/jz+7GgfFMorTTzJY
 1EFh8aGM5nx5pwVRLDhLGqTUUgYm/blHtYSC1hYWsxpBnB6uBCFiVXvi/
 64KkCtc0XT113xOnlu66453weOefpOpYlRsWiwnTlfH5h5bYuLkK+FoNh g==;
X-CSE-ConnectionGUID: Rt3uxUq0T5Sm/SRdflvGoQ==
X-CSE-MsgGUID: 7mDBNHMETJqSKT5TUNuplw==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="33077705"
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="33077705"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:54 -0700
X-CSE-ConnectionGUID: WHxBIGG4Qwq9dYI6wHSWvQ==
X-CSE-MsgGUID: J3fvtyrBQw6CTacFFwWnFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="41365141"
Received: from opintica-mobl1 (HELO jhogande-mobl1..) ([10.245.245.27])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:39 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 1/9] drm/i915/psr: Set SU area width as pipe src width
Date: Tue, 18 Jun 2024 08:30:18 +0300
Message-Id: <20240618053026.3268759-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240618053026.3268759-1-jouni.hogander@intel.com>
References: <20240618053026.3268759-1-jouni.hogander@intel.com>
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

Currently SU area width is set as MAX_INT. This is causing
problems. Instead set it as pipe src width.

Fixes: 86b26b6aeac7 ("drm/i915/psr: Carry su area in crtc_state")

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index 920186c2264d..3f36b94020ff 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -2316,7 +2316,7 @@ int intel_psr2_sel_fetch_update(struct intel_atomic_state *state,
 
 	crtc_state->psr2_su_area.x1 = 0;
 	crtc_state->psr2_su_area.y1 = -1;
-	crtc_state->psr2_su_area.x2 = INT_MAX;
+	crtc_state->psr2_su_area.x2 = drm_rect_width(&crtc_state->pipe_src);
 	crtc_state->psr2_su_area.y2 = -1;
 
 	/*
-- 
2.34.1

