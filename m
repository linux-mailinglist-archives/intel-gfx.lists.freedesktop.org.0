Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E115A7A077
	for <lists+intel-gfx@lfdr.de>; Thu,  3 Apr 2025 11:51:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F41F10E98C;
	Thu,  3 Apr 2025 09:51:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lGrq/IYP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E4C4D10E98A;
 Thu,  3 Apr 2025 09:51:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743673880; x=1775209880;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JvZ0f6fayvQvRFhmZ8Pun+ihfiDNrnj1h1/thdgQGa8=;
 b=lGrq/IYP9prZTuYo3enQ8az9PuWCjsO/++3G6Kl3g7gE+1PTeVJ/+YYm
 GYS3GpZbRZwgRqSpT4aZ0hNLzVoyOJOq4M0bHLg3OAFsjCieJiZkZETFg
 AHdjyctRy0j+82el8ca8huwW1xbY6CzGGRKG1SrG5efo25MmjmOp8KB0E
 pZ7H1R1dMAMNVdVmOJWICqCd02bAyQrCwVzqJp2a3EO5PjQIBYsENbgcY
 Hovw96VqAzZGEsp7zuBPLj5XHv8F/6CEX3yVYq5hE+vNJaqMqzsMs+wYz
 mML2TGAjCqbi6UMrem7YbFD+Y5VHbEnkbjVZqJdTBmxUIimAL2sIhVgHX Q==;
X-CSE-ConnectionGUID: WechZyPcS5KVtmPcPSiFCA==
X-CSE-MsgGUID: RxCxek34SRaVSp4+pFUXtw==
X-IronPort-AV: E=McAfee;i="6700,10204,11392"; a="45196642"
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="45196642"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Apr 2025 02:51:20 -0700
X-CSE-ConnectionGUID: z7+Enhy8QYeLCcptBT4jNQ==
X-CSE-MsgGUID: Sd8rTjQBSNqJCKDPdRun5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,184,1739865600"; d="scan'208";a="127463735"
Received: from srr4-3-linux-101-amanna.iind.intel.com ([10.223.74.76])
 by fmviesa010.fm.intel.com with ESMTP; 03 Apr 2025 02:51:18 -0700
From: Animesh Manna <animesh.manna@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jani.nikula@intel.com, jeevan.b@intel.com,
 Animesh Manna <animesh.manna@intel.com>
Subject: [PATCH v7 4/8] drm/i915/lobf: Add fixed refresh rate check in
 compute_config()
Date: Thu,  3 Apr 2025 14:58:21 +0530
Message-Id: <20250403092825.484347-5-animesh.manna@intel.com>
X-Mailer: git-send-email 2.29.0
In-Reply-To: <20250403092825.484347-1-animesh.manna@intel.com>
References: <20250403092825.484347-1-animesh.manna@intel.com>
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

LOBF can be enabled with vrr fixed rate mode, so add check
if vmin = vmax = flipline in compute_config().

Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Reviewed-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_alpm.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
index 5072f87d9c80..aae2c322baa7 100644
--- a/drivers/gpu/drm/i915/display/intel_alpm.c
+++ b/drivers/gpu/drm/i915/display/intel_alpm.c
@@ -288,6 +288,10 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
 	if (crtc_state->has_psr)
 		return;
 
+	if (crtc_state->vrr.vmin != crtc_state->vrr.vmax ||
+	    crtc_state->vrr.vmin != crtc_state->vrr.flipline)
+		return;
+
 	if (!(intel_alpm_aux_wake_supported(intel_dp) ||
 	      intel_alpm_aux_less_wake_supported(intel_dp)))
 		return;
-- 
2.29.0

