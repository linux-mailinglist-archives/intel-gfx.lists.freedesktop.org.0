Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B3AC9B59FA5
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 19:43:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E6F9F10E12D;
	Tue, 16 Sep 2025 17:43:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="I0oMa/mN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A773C10E12D
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 17:43:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758044601; x=1789580601;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eqsdFXu6oX7gOlwM4Rb1myFPD+VLCRIcTY99d1Hns6o=;
 b=I0oMa/mNQrOunxENTNqHjdy77FWsLHC4Y3M9oWE/1wUxGJL6p1zj1n1N
 X6EJr67kFTvGOn1UIeoDPB5WVLV4UQxoczHpkFgzBFUxd1aOy5kFTH8tT
 NHh60MjbqdnYFLnksCyFo+KZxgV4J7ztW5oMvH51JNx7qErUmbw6GyRgL
 QhOeTY6XzgVR2C5HFkYLve+3Yp5lB16Ni3ZBHNtVmuPpX1HaICBhG7DBn
 k7gMWtJIgPlyKQGZa4nsTEg4Ayd8E+pKY/8g4d4JVZJAvaCpCYat3vf6d
 NRmWSOVEmE5b6xMnxlCfE4JJNJO4HOfU3xInDBKQfbpo6j7mrzOPvZ2Je w==;
X-CSE-ConnectionGUID: GzLpOUcvTXKUPVQUQUTNcg==
X-CSE-MsgGUID: EanyA5KJQguIZhdcmPqk1A==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="60252289"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="60252289"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 10:43:20 -0700
X-CSE-ConnectionGUID: UUffqFzdRhuqG4kkAI+4FQ==
X-CSE-MsgGUID: ZEjtzrIZTb62KMc6h0LahA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,269,1751266800"; d="scan'208";a="212165764"
Received: from dut4412lnl.fm.intel.com ([10.105.8.90])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2025 10:43:19 -0700
From: Jonathan Cavitt <jonathan.cavitt@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: saurabhg.gupta@intel.com,
	alex.zuo@intel.com,
	jonathan.cavitt@intel.com
Subject: [PATCH 1/2] drm/i915/gvt: Remove unnecessary check in reg_is_mmio
Date: Tue, 16 Sep 2025 17:43:19 +0000
Message-ID: <20250916174317.76521-5-jonathan.cavitt@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250916174317.76521-4-jonathan.cavitt@intel.com>
References: <20250916174317.76521-4-jonathan.cavitt@intel.com>
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

The reg >= 0 check in reg_is_mmio is unnecessary because reg is always
greater than zero in all current use cases.  This is obvious when
checking 'offset' by itself (as offset is defined as an unsigned
integer), but it's also true for the offset + bytes - 1 use case in
intel_vgpu_emulate_mmio_read because bytes > 0.

Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
---
 drivers/gpu/drm/i915/gvt/mmio.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gvt/mmio.c b/drivers/gpu/drm/i915/gvt/mmio.c
index da1135fa7cda..c60d1e548800 100644
--- a/drivers/gpu/drm/i915/gvt/mmio.c
+++ b/drivers/gpu/drm/i915/gvt/mmio.c
@@ -58,7 +58,7 @@ int intel_vgpu_gpa_to_mmio_offset(struct intel_vgpu *vgpu, u64 gpa)
 }
 
 #define reg_is_mmio(gvt, reg)  \
-	(reg >= 0 && reg < gvt->device_info.mmio_size)
+	(reg < gvt->device_info.mmio_size)
 
 #define reg_is_gtt(gvt, reg)   \
 	(reg >= gvt->device_info.gtt_start_offset \
-- 
2.43.0

