Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D7FFB8B0353
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Apr 2024 09:41:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D016D10FDB2;
	Wed, 24 Apr 2024 07:41:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OBhwRHvr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1826A10FDB2
 for <intel-gfx@lists.freedesktop.org>; Wed, 24 Apr 2024 07:41:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713944460; x=1745480460;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cY8fg/wY4y8zUfGN1mq8oJ60r0BahYg60o8/ieUWpCA=;
 b=OBhwRHvrjMUdt3hHZxGhKTYNsOGy4enO6A2MlyE4FcZPRwjvgfF1J/o/
 6TZdPRN9V2r7CQ+SB/SlUE38Ttr/cVCA5BkKtqBn+TrE8rDrU7KtJqWSV
 Ldf6K8XrNJdO5FyAM97wjQfyTQtLSRHGBCGcDrXDxQitMpQGJmzRxmnUd
 ooYkecluRtkCCwkA92rt5Bd/Ya0Wu3IXdLkhxC1yq1xrNPsO22v2+iwcC
 Lk+FW0WpUeP/piyULMFhI1NittEIJBgvUhs1nwXrhMd+8MJpjFW/nzJzV
 dCXbudNr16znBwcHiuVVYS+lA81fu9C+xAeTAbrnZbAwavZsiJQCBdnmv g==;
X-CSE-ConnectionGUID: md9j+W+bRJi+d0Ogywf4Sg==
X-CSE-MsgGUID: YUCewvU8QLKV5S8RXG1sEw==
X-IronPort-AV: E=McAfee;i="6600,9927,11053"; a="13391754"
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="13391754"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2024 00:41:00 -0700
X-CSE-ConnectionGUID: jrlIQivGTzmFPSVmHKPVXQ==
X-CSE-MsgGUID: fMQFRSN3TMmYWxGVXx6www==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,225,1708416000"; d="scan'208";a="29108270"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by fmviesa003.fm.intel.com with ESMTP; 24 Apr 2024 00:40:58 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: arun.r.murthy@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Nemesa Garg <nemesa.garg@intel.com>
Subject: [RFC 1/3] drm/i915: Add Dark screen detection registers
Date: Wed, 24 Apr 2024 13:08:17 +0530
Message-ID: <20240424073829.824312-3-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240424073829.824312-2-suraj.kandpal@intel.com>
References: <20240424073829.824312-2-suraj.kandpal@intel.com>
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

Add Dark screen detection related register and field definitions.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 8eb6c2bf4557..474b1c263517 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -1838,6 +1838,14 @@
 #define VRR_VSYNC_START_MASK		REG_GENMASK(12, 0)
 #define VRR_VSYNC_START(vsync_start)	REG_FIELD_PREP(VRR_VSYNC_START_MASK, (vsync_start))
 
+#define _DARK_SCREEN_PIPE_A		0x60120
+#define DARK_SCREEN(trans)		_MMIO_TRANS2(trans, _DARK_SCREEN_PIPE_A)
+#define   DARK_SCREEN_ENABLE		REG_BIT(31)
+#define   DARK_SCREEN_DETECT		REG_BIT(29)
+#define   DARK_SCREEN_DONE		REG_BIT(28)
+#define DARK_SCREEN_COMPARE_MASK	REG_GENMASK(9, 0)
+#define DARK_SCREEN_COMPARE_VAL(x)	REG_FIELD_PREP(DARK_SCREEN_COMPARE_MASK, (x))
+
 /* VGA port control */
 #define ADPA			_MMIO(0x61100)
 #define PCH_ADPA                _MMIO(0xe1100)
-- 
2.43.2

