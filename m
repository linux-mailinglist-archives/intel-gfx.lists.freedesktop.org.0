Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3087DA9EFCC
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Apr 2025 13:56:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A52810E3B8;
	Mon, 28 Apr 2025 11:56:10 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DI37T6MS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DCA9B10E3B8;
 Mon, 28 Apr 2025 11:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745841369; x=1777377369;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=DDK2bCSJtU8bWBlVFG2gHN5Z5CRrWNjiWeoI5d2oT/4=;
 b=DI37T6MS9HoLjvVoAAEebis1kn7Rg/3TdYNsN1J9PUZgEwfDCZ2pAO7T
 gklbqJXniiqN1HY+q8b3mz49FUHNo3sisY18pV+HUEIQSh7J7DqZw+8Pp
 fUBFDd/rT3myrvIKEyB4pXLIHY9jZ3u0LqFI0Bfxlp8TKhPZsJ4aGQ+bd
 b1iysYaqcZ7uuuLsz4AG1q+5SAduxlWG8cTG+ZN0d4GNSHhwxdRBC/EvZ
 4uH7QWDaZML6H4ktL7wWDE8GIF3VPcoIQSjf0939LgpQsPyX6BYdNmcUw
 5+z+KRR0OVdR/Qf2AN+eDggTFiId3hRNQX+p0LSEqSdOLGtVUWLFPPYOY g==;
X-CSE-ConnectionGUID: x9chJ+uBT9uLEjZbX1cp7A==
X-CSE-MsgGUID: RN+8hh5fRlOa/2hG7t6ZRg==
X-IronPort-AV: E=McAfee;i="6700,10204,11416"; a="69927092"
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="69927092"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 04:56:09 -0700
X-CSE-ConnectionGUID: A/cFOZ1eRqig/PVR6vYumw==
X-CSE-MsgGUID: ddQD7TZARauxH9Sq/EONMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,246,1739865600"; d="scan'208";a="170722660"
Received: from dprybysh-mobl.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.245.246.159])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Apr 2025 04:56:07 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, juha-pekka.heikkila@intel.com,
 jani.saarinen@intel.com
Subject: [PATCH v2] drm/i915/display: implement wa_14022269668
Date: Mon, 28 Apr 2025 14:55:54 +0300
Message-ID: <20250428115554.116780-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
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

As per the WA, fbc stride need to be programmed always for bmg.
Display driver handles the need to program the fbc stride using
the override stride. So ensure that we always get the override
stride in case of bmg

v2: re-phrase the commit message.

Bspec: 74212
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
---
 drivers/gpu/drm/i915/display/intel_fbc.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
index ce5b1e3f1c20..bed2bba20b55 100644
--- a/drivers/gpu/drm/i915/display/intel_fbc.c
+++ b/drivers/gpu/drm/i915/display/intel_fbc.c
@@ -252,9 +252,12 @@ static u16 intel_fbc_override_cfb_stride(const struct intel_plane_state *plane_s
 	 * Gen9 hw miscalculates cfb stride for linear as
 	 * PLANE_STRIDE*512 instead of PLANE_STRIDE*64, so
 	 * we always need to use the override there.
+	 *
+	 * wa_14022269668 For bmg, always program the FBC_STRIDE before fbc enable
 	 */
 	if (stride != stride_aligned ||
-	    (DISPLAY_VER(display) == 9 && fb->modifier == DRM_FORMAT_MOD_LINEAR))
+	    (DISPLAY_VER(display) == 9 && fb->modifier == DRM_FORMAT_MOD_LINEAR) ||
+	    display->platform.battlemage)
 		return stride_aligned * 4 / 64;
 
 	return 0;
-- 
2.43.0

