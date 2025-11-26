Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 406CBC88B6B
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 09:45:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C013410E0B9;
	Wed, 26 Nov 2025 08:45:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O8SSw7kU";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E763B10E0B9;
 Wed, 26 Nov 2025 08:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764146757; x=1795682757;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DIe9ZBBD8mLdBB5fpxinMpu5SjkTM+gWad6s2uIMszI=;
 b=O8SSw7kUieLUvdZwhnNv/hhza1v0mzQHnhTa8k/MAVkeTKn/DfgHSxwe
 t8UaQ498K2PuWI1TU/LkLrvHBEjpdBDVSJwarF1vSV+DDCGFCrNwJFKXu
 kJwXuQKdemR1hg1euhO7cD/SkmLcQiWIpQ1JK/5lYxxMMc/MDHu9IAg1k
 8w+zzVtDXs3c5JXnAzezSiPA7yx7qtOoPipmMXsX4zQVhL7WtI+XD0srl
 TJrqVaOBy7ADvqjoo8YwZgKC97vKu3o9nI/QPXeVYbwXMGJJTXJfFSLdC
 /+Csbzsft6T1KrlezKdGJJ4Wb424EuxhQ8OLAIxUSLqiM3iL0fshCPoab w==;
X-CSE-ConnectionGUID: mrKmDz1pQu+gpztGeXi8vA==
X-CSE-MsgGUID: trHDjYpOSnS4Y+BH9EC47w==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66063205"
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="66063205"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Nov 2025 00:45:56 -0800
X-CSE-ConnectionGUID: 4J8LNeLvQ+ez3VKWN2aXOg==
X-CSE-MsgGUID: o9LZRwLHTWKXW6Twev2BvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,228,1758610800"; d="scan'208";a="197825398"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa004.fm.intel.com with ESMTP; 26 Nov 2025 00:45:55 -0800
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>
Subject: [PATCH v2] drm/i915/crtc: Expose sharpness only if num_scalers is >= 2
Date: Wed, 26 Nov 2025 14:11:52 +0530
Message-Id: <20251126084152.3905905-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20251124084629.3322714-1-nemesa.garg@intel.com>
References: <20251124084629.3322714-1-nemesa.garg@intel.com>
MIME-Version: 1.0
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

CASF requires the second scaler for sharpness.
Do not expose the SHARPNESS_STRENGTH property if
the CRTC has fewer than two scalers.

v2: Modify header and commit message. [Ankit]

Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/display/intel_crtc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_crtc.c b/drivers/gpu/drm/i915/display/intel_crtc.c
index 153ff4b4b52c..19743ae09f78 100644
--- a/drivers/gpu/drm/i915/display/intel_crtc.c
+++ b/drivers/gpu/drm/i915/display/intel_crtc.c
@@ -395,7 +395,7 @@ int intel_crtc_init(struct intel_display *display, enum pipe pipe)
 
 	drm_WARN_ON(display->drm, drm_crtc_index(&crtc->base) != crtc->pipe);
 
-	if (HAS_CASF(display))
+	if (HAS_CASF(display) && crtc->num_scalers >= 2)
 		drm_crtc_create_sharpness_strength_property(&crtc->base);
 
 	return 0;
-- 
2.25.1

