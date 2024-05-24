Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4C38CE83E
	for <lists+intel-gfx@lfdr.de>; Fri, 24 May 2024 17:50:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C537910F49B;
	Fri, 24 May 2024 15:50:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KgMbgUGA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9DB1510F49B
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 May 2024 15:50:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716565806; x=1748101806;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=S6ujuPG7UygHSnCH/+KDjeZyMGy6yzW1dBDMwT34B+Q=;
 b=KgMbgUGAdN7urt9dkXYkyhpvVaRpgsdoLaxyrpr+4M6RcgsZg2uNr/QL
 qxCqrNJiDI5g/fFZRiebJeTQL6b1GrII2b3DhYtKzZBwmOYz2eF7fhxX0
 PNRZD5TySs7FmrID6KDcOTNcAUw1WQBLpJMRQJCzo1zRD5wX6O+lk8c37
 D9AoCuchotGJ6AIQ7lDrbzvtNdSvqxCw+ms9+B8uxvC0xciDD1JnMuRj6
 K8XPYeSq8fzgHg77qSOsV1UMuAgr8KE8OXmEV8EeDUTyL2R/n7DbCYJt7
 wZxjZAiZARqmjLMqZ3gX5T29UwPut5FV5FatLxKjls41cLOeBfF72+v1Q g==;
X-CSE-ConnectionGUID: JNv8Tm+BTnmJXAu5Emk7rg==
X-CSE-MsgGUID: 3sgdhJW8TRW1yOfcdpaRjA==
X-IronPort-AV: E=McAfee;i="6600,9927,11082"; a="13134711"
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="13134711"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2024 08:50:05 -0700
X-CSE-ConnectionGUID: 8tfRx7qPShSNHWhCPWzfuw==
X-CSE-MsgGUID: cxHDcqipTUSCAOAhpBclkA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,185,1712646000"; d="scan'208";a="34035640"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 24 May 2024 08:50:01 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 24 May 2024 18:50:00 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Jani Nikula <jani.nikula@intel.com>
Subject: [PATCH] drm/i915: Fix SEL_FETCH_{SIZE,OFFSET} registers
Date: Fri, 24 May 2024 18:50:00 +0300
Message-ID: <20240524155000.13358-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.44.1
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Fix up the SEL_FETCH_{SIZE,OFFSET} registers. A classic
copy-paste fail on my part.

I even had a small test to confirm that the old and new register
offsets match, but somehow I must have screwed things up when
running it, and likely just ended up comparing the old defines
against themselves :/

Cc: Jani Nikula <jani.nikula@intel.com>
Fixes: 4bfa8a140db3 ("drm/i915: Define SEL_FETCH_PLANE registers via PICK_EVEN_2RANGES()")
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 .../drm/i915/display/skl_universal_plane_regs.h  | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
index 9904ecc54128..4ddcd7d46bbd 100644
--- a/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
+++ b/drivers/gpu/drm/i915/display/skl_universal_plane_regs.h
@@ -419,10 +419,10 @@
 #define _SEL_FETCH_PLANE_SIZE_5_B		0x71928
 #define _SEL_FETCH_PLANE_SIZE_6_B		0x71948
 #define SEL_FETCH_PLANE_SIZE(pipe, plane)	_MMIO_SEL_FETCH((pipe), (plane),\
-								_SEL_FETCH_PLANE_POS_1_A, _SEL_FETCH_PLANE_POS_1_B, \
-								_SEL_FETCH_PLANE_POS_2_A, _SEL_FETCH_PLANE_POS_2_B, \
-								_SEL_FETCH_PLANE_POS_5_A, _SEL_FETCH_PLANE_POS_5_B, \
-								_SEL_FETCH_PLANE_POS_6_A, _SEL_FETCH_PLANE_POS_6_B)
+								_SEL_FETCH_PLANE_SIZE_1_A, _SEL_FETCH_PLANE_SIZE_1_B, \
+								_SEL_FETCH_PLANE_SIZE_2_A, _SEL_FETCH_PLANE_SIZE_2_B, \
+								_SEL_FETCH_PLANE_SIZE_5_A, _SEL_FETCH_PLANE_SIZE_5_B, \
+								_SEL_FETCH_PLANE_SIZE_6_A, _SEL_FETCH_PLANE_SIZE_6_B)
 
 /* tgl+ */
 #define _SEL_FETCH_PLANE_OFFSET_1_A		0x7089c
@@ -434,9 +434,9 @@
 #define _SEL_FETCH_PLANE_OFFSET_5_B		0x7192c
 #define _SEL_FETCH_PLANE_OFFSET_6_B		0x7194c
 #define SEL_FETCH_PLANE_OFFSET(pipe, plane)	_MMIO_SEL_FETCH((pipe), (plane),\
-								_SEL_FETCH_PLANE_POS_1_A, _SEL_FETCH_PLANE_POS_1_B, \
-								_SEL_FETCH_PLANE_POS_2_A, _SEL_FETCH_PLANE_POS_2_B, \
-								_SEL_FETCH_PLANE_POS_5_A, _SEL_FETCH_PLANE_POS_5_B, \
-								_SEL_FETCH_PLANE_POS_6_A, _SEL_FETCH_PLANE_POS_6_B)
+								_SEL_FETCH_PLANE_OFFSET_1_A, _SEL_FETCH_PLANE_OFFSET_1_B, \
+								_SEL_FETCH_PLANE_OFFSET_2_A, _SEL_FETCH_PLANE_OFFSET_2_B, \
+								_SEL_FETCH_PLANE_OFFSET_5_A, _SEL_FETCH_PLANE_OFFSET_5_B, \
+								_SEL_FETCH_PLANE_OFFSET_6_A, _SEL_FETCH_PLANE_OFFSET_6_B)
 
 #endif /* __SKL_UNIVERSAL_PLANE_REGS_H__ */
-- 
2.44.1

