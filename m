Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2606C52BB57
	for <lists+intel-gfx@lfdr.de>; Wed, 18 May 2022 15:08:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0C7010EE22;
	Wed, 18 May 2022 13:07:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7E4B10EDA2
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 May 2022 13:07:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652879273; x=1684415273;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=+pSBa1GnNKNtnpgN8PTvCzu5VMCKneJ23a+NFTDP3ak=;
 b=b8EMdXFrqKn0Yz6M1wVi87OH7baa5T6sZSm9U0V/pihKN+s09d+U0Pz0
 O+VrdjpP71kfDiS4SXqZtfw3jYPRM1jlYFPvuCVkcF2Fm/AOUV9bMKZUn
 7s8EC91vYWL9/YanaASkU1ShrFHBbsDFyJs87nYdZwchZ8HFMaKazNWGK
 r8RHE24C4tmVWn3xaI8w4/Hn7m3o72ZJYYO9bTTIU07mCoJDBPpgDRnP+
 YhPlVs/IWCBtMYHNHJk6rw+W60nPmaBJJ674Lbfz54ZwTqY1yFXzBM5GS
 55yOGNhGbxEvZnUFNg6WraNNMJmVjkHl2pNxwkqHWcnXOcfQ00QeWwvSB w==;
X-IronPort-AV: E=McAfee;i="6400,9594,10350"; a="358071776"
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="358071776"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:07:41 -0700
X-IronPort-AV: E=Sophos;i="5.91,234,1647327600"; d="scan'208";a="742314358"
Received: from srr4-3-linux-105-anshuma1.iind.intel.com ([10.223.74.179])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 May 2022 06:07:38 -0700
From: Anshuman Gupta <anshuman.gupta@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 18 May 2022 18:37:14 +0530
Message-Id: <20220518130716.10936-6-anshuman.gupta@intel.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20220518130716.10936-1-anshuman.gupta@intel.com>
References: <20220518130716.10936-1-anshuman.gupta@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 5/7] drm/i915/pcode: DGFX PCODE MBOX headers
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
Cc: jani.nikula@intel.com, rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DGFX uses similar PCODE MBOX interface as IGFX but
uses distinct COMMAND and PARAM set of bit fields.
Adding those headers Accordingly.

Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Signed-off-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
Signed-off-by: Anshuman Gupta <anshuman.gupta@intel.com>
---
 drivers/gpu/drm/i915/i915_reg.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
index 321a08281a3f..ec2609fa233b 100644
--- a/drivers/gpu/drm/i915/i915_reg.h
+++ b/drivers/gpu/drm/i915/i915_reg.h
@@ -6735,6 +6735,9 @@
 
 #define GEN6_PCODE_MAILBOX			_MMIO(0x138124)
 #define   GEN6_PCODE_READY			(1 << 31)
+#define   GEN6_PCODE_MB_PARAM2                  REG_GENMASK(23, 16)
+#define   GEN6_PCODE_MB_PARAM1                  REG_GENMASK(15, 8)
+#define   GEN6_PCODE_MB_COMMAND                 REG_GENMASK(7, 0)
 #define   GEN6_PCODE_ERROR_MASK			0xFF
 #define     GEN6_PCODE_SUCCESS			0x0
 #define     GEN6_PCODE_ILLEGAL_CMD		0x1
-- 
2.26.2

