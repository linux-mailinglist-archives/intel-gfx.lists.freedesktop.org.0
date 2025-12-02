Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EABC9A77A
	for <lists+intel-gfx@lfdr.de>; Tue, 02 Dec 2025 08:36:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 556EA10E56E;
	Tue,  2 Dec 2025 07:36:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n3qe9Wm/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A651210E56A;
 Tue,  2 Dec 2025 07:36:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764661000; x=1796197000;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=EJXtMuzPjKoCIqIv6XVAMvf8RtgQ/p5jsWczsN2z7d4=;
 b=n3qe9Wm/W/wh1dz6hOS+4rQdJ+vr+p+Lp72p3xWyXr3SFJsc49blTYjD
 QHdp/j9BPi3q1uELcU6SOhARzGv45kLcNeTXpxLTAMZcEyp8T8VuVj5kG
 FK9p62mIdHRxhDwD9cONrOOT46Ls6Jx382JWBOL1tmVdXaB1oCpN09Pvo
 +kUBh9zFLVVoChiSjMXvopAyig+RgJyvkqNtULShci2+0Xx4rvYaGl43t
 RJS4GZ7kIzceLAsvds7aY1xLCtIBMkqkVyj8HdpW2HFi2iO37nbsQuNpD
 FL91EQJuLsk8gOaStQDgxyVAs9ZrNfHWY9A9NmHGyE45N/xnH8aNueTVY w==;
X-CSE-ConnectionGUID: BCaq4ClsT/yyH3i+kySITQ==
X-CSE-MsgGUID: lOAGVom8RseLSN5EY/iBgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11630"; a="84219198"
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="84219198"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Dec 2025 23:36:40 -0800
X-CSE-ConnectionGUID: FftHJm/dRuyJnoEEampdug==
X-CSE-MsgGUID: IofDIimXQSKwnYKHNh3A3A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,242,1758610800"; d="scan'208";a="198504732"
Received: from mgolanimitul-x299-ud4-pro.iind.intel.com ([10.190.239.114])
 by orviesa003.jf.intel.com with ESMTP; 01 Dec 2025 23:36:39 -0800
From: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, mitulkumar.ajitkumar.golani@intel.com,
 ankit.k.nautiyal@intel.com, ville.syrjala@linux.intel.com,
 uma.shankar@intel.com, jani.nikula@intel.com
Subject: [PATCH v10 01/17] drm/i915/display: Add source param for dc balance
Date: Tue,  2 Dec 2025 13:06:36 +0530
Message-ID: <20251202073659.926838-2-mitulkumar.ajitkumar.golani@intel.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
References: <20251202073659.926838-1-mitulkumar.ajitkumar.golani@intel.com>
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

Add source param for dc balance enablement.

--v2:
- Arrange in alphabetic order. (Ankit)
- Update name. (Ankit)

--v3:
- Commit message update. (Ankit)

Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display_device.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
index b559ef43d547..7ad49e9529f2 100644
--- a/drivers/gpu/drm/i915/display/intel_display_device.h
+++ b/drivers/gpu/drm/i915/display/intel_display_device.h
@@ -200,6 +200,7 @@ struct intel_display_platforms {
 #define HAS_ULTRAJOINER(__display)	(((__display)->platform.dgfx && \
 					  DISPLAY_VER(__display) == 14) && HAS_DSC(__display))
 #define HAS_VRR(__display)		(DISPLAY_VER(__display) >= 11)
+#define HAS_VRR_DC_BALANCE(__display)	(DISPLAY_VER(__display) >= 30)
 #define INTEL_NUM_PIPES(__display)	(hweight8(DISPLAY_RUNTIME_INFO(__display)->pipe_mask))
 #define OVERLAY_NEEDS_PHYSICAL(__display)	(DISPLAY_INFO(__display)->overlay_needs_physical)
 #define SUPPORTS_TV(__display)		(DISPLAY_INFO(__display)->supports_tv)
-- 
2.48.1

