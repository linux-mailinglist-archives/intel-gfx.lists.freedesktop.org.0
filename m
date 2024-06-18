Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB2990C319
	for <lists+intel-gfx@lfdr.de>; Tue, 18 Jun 2024 07:31:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 947E810E56D;
	Tue, 18 Jun 2024 05:31:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AlLQRpSK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E1D8010E231
 for <intel-gfx@lists.freedesktop.org>; Tue, 18 Jun 2024 05:30:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718688656; x=1750224656;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jIj9ij5DrGMykLZzp4Iadi8eXI53kOUQOx55c/XXF1w=;
 b=AlLQRpSKmT9P0jBus/zwCrzedSEr1jrdl/sRaT5ARs8hdFjtF4aMlTpx
 BwB8kiIQsRCa31jGlAgM57O6//I4VEJOUeqXudU9RyhV1IOY7ZQjtGJoU
 60iSLjsglGmllyC48DftfYWV4EdiY1xEp6FiVY+2YoBSiNzPkeFemDeR0
 W2yRNRAFyxF1lbdjUZdtTeY2/PcSo0OFnIl3CN5Srv0QG8ZPHM8mAXJ/W
 H4NJOPyHSSFK4/mhlT0HTxcF990T1D4Gw47FAymrH0jdl67JPmxB6aduI
 bdQgwle5U+48giqnSzRs3qYE6sF32gbnOV7uCMXkI+NDrmpthI1h0alrN Q==;
X-CSE-ConnectionGUID: 1bL3OeocTTmO+jZUHSSEaA==
X-CSE-MsgGUID: 8rekRL99TumhSzqHfWE2wA==
X-IronPort-AV: E=McAfee;i="6700,10204,11106"; a="33077719"
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="33077719"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:56 -0700
X-CSE-ConnectionGUID: MbzDhq6tTWunZPaxkdoNPw==
X-CSE-MsgGUID: VS3R6OvlSxOctFlL0ilLTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,246,1712646000"; d="scan'208";a="41365156"
Received: from opintica-mobl1 (HELO jhogande-mobl1..) ([10.245.245.27])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2024 22:30:50 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: animesh.manna@intel.com, mika.kahola@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH 8/9] Revert "drm/i915/psr: Disable early transport by default"
Date: Tue, 18 Jun 2024 08:30:25 +0300
Message-Id: <20240618053026.3268759-9-jouni.hogander@intel.com>
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

This reverts commit f3c2031db7dfdf470a2d9bf3bd1efa6edfa72d8d.

We want to notice possible issues faced with PSR2 Region Early Transport as
early as possible -> let's revert patch disabling Region Early Transport by
default. Also eDP 1.5 Panel Replay requires Early Transport.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
Reviewed-by: Animesh Manna <animesh.manna@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index cd76109e928a..a9d9383e4ee5 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3110,9 +3110,6 @@ void intel_psr_init(struct intel_dp *intel_dp)
 	else
 		intel_dp->psr.source_support = true;
 
-	/* Disable early transport for now */
-	intel_dp->psr.debug |= I915_PSR_DEBUG_SU_REGION_ET_DISABLE;
-
 	/* Set link_standby x link_off defaults */
 	if (DISPLAY_VER(dev_priv) < 12)
 		/* For new platforms up to TGL let's respect VBT back again */
-- 
2.34.1

