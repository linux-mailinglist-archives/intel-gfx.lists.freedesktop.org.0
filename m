Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA6EB1D6DC
	for <lists+intel-gfx@lfdr.de>; Thu,  7 Aug 2025 13:44:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BE79510E12D;
	Thu,  7 Aug 2025 11:44:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eTAuD9Fx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 608E410E12D
 for <intel-gfx@lists.freedesktop.org>; Thu,  7 Aug 2025 11:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754567047; x=1786103047;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=HAeoexnWecAfYD/OaaWsTHNQG+TqS+hoZxrsoOMSuCE=;
 b=eTAuD9FxjhmRcUCR5LP4L+3ZXE0DAystv554O+1w05aX7RBNO4UDRxuc
 pZheJsPQhLhGde+AVX5opUO4Jn4vybONTG6NF/lM/MeEOi/Ob6j5mbzXw
 UUrpZaunhb6dTQsxg5XtoTmzo5OWd/YzaYCIISV2D4yql7RQ0b1qE4GmP
 liFkTFiSejQoE5jHCVwqMKaZsGI/XpVy1XMX+w0A8FHw/nLzfFtnI8Xk/
 3O3dkCoVwjq3HmKa3OWEn2ws+ostzx+Rw6fZAakzHy+X0TMhOJuxe0teC
 RwvboZ3GJ4sXnfDtqXwqVl3kT7ZM4aNLnIhxyzx+Hn0UBDnsAN/gJ6HE8 w==;
X-CSE-ConnectionGUID: eGdIXDkaQqCpXnTeUDgRtw==
X-CSE-MsgGUID: uF647hO5TbGCJrIXwgA9Kg==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="74478722"
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="74478722"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Aug 2025 04:44:06 -0700
X-CSE-ConnectionGUID: D/yJ50OQQEyqVcET9jj+SA==
X-CSE-MsgGUID: cHesyLDDQKCzboWRXWVN8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,271,1747724400"; d="scan'208";a="164564514"
Received: from nemesa.iind.intel.com ([10.190.239.22])
 by fmviesa007.fm.intel.com with ESMTP; 07 Aug 2025 04:44:04 -0700
From: Nemesa Garg <nemesa.garg@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: Nemesa Garg <nemesa.garg@intel.com>,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH] drm/i915/scaler: Fix condition for WA_14011503117
Date: Thu,  7 Aug 2025 17:08:55 +0530
Message-Id: <20250807113855.3175435-1-nemesa.garg@intel.com>
X-Mailer: git-send-email 2.25.1
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

As scaler_state can never be null so no need to
check this, only check if scaler_id is less
than 0 or not.

v2: Add scaler_id check [Jani]
v3: Modify commit message[Suraj]

Fixes: 73309ed9d598 ("drm/i915/display: WA_14011503117")
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/skl_scaler.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
index cd7ebbeb9508..c6cccf170ff1 100644
--- a/drivers/gpu/drm/i915/display/skl_scaler.c
+++ b/drivers/gpu/drm/i915/display/skl_scaler.c
@@ -960,7 +960,7 @@ void adl_scaler_ecc_unmask(const struct intel_crtc_state *crtc_state)
 	const struct intel_crtc_scaler_state *scaler_state =
 		&crtc_state->scaler_state;
 
-	if (!scaler_state && scaler_state->scaler_id == -1)
+	if (scaler_state->scaler_id < 0)
 		return;
 
 	intel_de_write_fw(display,
-- 
2.25.1

