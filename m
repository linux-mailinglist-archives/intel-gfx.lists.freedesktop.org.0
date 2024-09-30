Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B99998A9D2
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 18:34:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AEAFE10E54F;
	Mon, 30 Sep 2024 16:33:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="diZd/3Ls";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9AFB110E54B;
 Mon, 30 Sep 2024 16:33:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727714037; x=1759250037;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P52R4SD5Fi/AfTtte9RUU9QzZB1KVGjS+Hf3IpquhZU=;
 b=diZd/3Ls5Z2eAxwGKclk/o8pf0ExGs67m0UvOJY26Qeh9HqLsPPnLs8O
 43RV/wbiPv9S65hurK4EWZWiCkaFV4WIyTDzigCx+cZezIWT2XuHnN/AZ
 I9EiZVh0oCSBKxXG8/b8++lBexw4agDYEJwa2cvBJrwC3/Pn7z6s6y0qg
 EuMhap6SV3Fun17d6awZybLNH7vicdpvXnBKsrxXlpIvDqFAwj1k3pelm
 /bWc6AI8/xsU4fOtsElro0Lu2RUcepbTrNVzGx3oygf6l0Dc27rxai7H4
 MVa2fB6j+r7kS0LNUS/BoazxJLaUK/U1hbd6fy+JIjNbJry6JheIvcs+R Q==;
X-CSE-ConnectionGUID: 6In6vsHzSeSVZ+wpw+1+Uw==
X-CSE-MsgGUID: GADDfBN0TLiTGVZHLOFkDw==
X-IronPort-AV: E=McAfee;i="6700,10204,11211"; a="30700522"
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="30700522"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:33:57 -0700
X-CSE-ConnectionGUID: tg7MX8zmR9uEs6PeE1bQUA==
X-CSE-MsgGUID: ACWXvH9ORgWbqB0DNHQdZQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,166,1725346800"; d="scan'208";a="110839153"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 09:33:56 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 03/13] drm/i915/display: Add macro HAS_ULTRAJOINER()
Date: Mon, 30 Sep 2024 22:05:39 +0530
Message-ID: <20240930163549.416410-4-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
References: <20240930163549.416410-1-ankit.k.nautiyal@intel.com>
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

Add macro to check if platform supports Ultrajoiner.

v2:
-Use check for DISPLAY_VER >= 20, and add bmg as a special case. (Ville)
-Add check for HAS_DSC. (Ville)

Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index 6a5bee59e6aa..220cca6333ee 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -154,6 +154,9 @@ enum intel_display_subplatform {
 #define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
 					  BIT(trans)) != 0)
 #define HAS_UNCOMPRESSED_JOINER(i915)	(DISPLAY_VER(i915) >= 13)
+#define HAS_ULTRAJOINER(i915)		((DISPLAY_VER(i915) >= 20 || \
+					  (IS_DGFX(i915) && DISPLAY_VER(i915) == 14)) && \
+					 HAS_DSC(i915))
 #define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
 #define HAS_AS_SDP(i915)		(DISPLAY_VER(i915) >= 13)
 #define HAS_CMRR(i915)			(DISPLAY_VER(i915) >= 20)
-- 
2.45.2

