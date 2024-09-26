Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBE8986D7D
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Sep 2024 09:25:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D88F210EACA;
	Thu, 26 Sep 2024 07:25:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lwSXKEEV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C40C710EAB5;
 Thu, 26 Sep 2024 07:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727335497; x=1758871497;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P52R4SD5Fi/AfTtte9RUU9QzZB1KVGjS+Hf3IpquhZU=;
 b=lwSXKEEVEac2EajD+CL0narBGkcvUyOqHtQaqY8g40f2ReL4CKl7jINW
 RWUVxTJcTaSSzg+u4/Yf4VbqbAb3Rr5khnKyzU5nFi/1BEmuOyN5Us+ee
 TcXYs2F7zBPN/MJx4QHoDvXyTpiV+YoQqwuTnMA7UtvFYKrtlTBFsqx1R
 UbT0tuxjHf/uSBlZynK/wi41ykRWyHHTzAPnTaYqIUGEYF/ZwfctX4Muh
 1IhO9+lO+rnm1W3b/Zz1PUmkkFDu7EKtSfq9EWCAPRqdqa7KtrTTHN2ut
 kIT0AtKc5UPdLicWk1usOLVUfdLAaxSpvDA6rMMGdSxYruYe+4QJpoqfm w==;
X-CSE-ConnectionGUID: OoEV2AIKQwOjgK+DGuSqRw==
X-CSE-MsgGUID: qvAuSXvfTha0AWvG5FVOgg==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="51829452"
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="51829452"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:24:57 -0700
X-CSE-ConnectionGUID: aBRaIoTfRa6/4mSegWqw5Q==
X-CSE-MsgGUID: tfwcfLazRb+uDyhSStj/Sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,259,1719903600"; d="scan'208";a="72334433"
Received: from srr4-3-linux-103-aknautiy.iind.intel.com ([10.223.34.160])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Sep 2024 00:24:56 -0700
From: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 ville.syrjala@linux.intel.com
Subject: [PATCH 07/15] drm/i915/display: Add macro HAS_ULTRAJOINER()
Date: Thu, 26 Sep 2024 12:56:30 +0530
Message-ID: <20240926072638.3689367-8-ankit.k.nautiyal@intel.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
References: <20240926072638.3689367-1-ankit.k.nautiyal@intel.com>
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

