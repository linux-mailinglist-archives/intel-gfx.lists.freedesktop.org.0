Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 264CC724CD1
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 21:15:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7299110E3A7;
	Tue,  6 Jun 2023 19:15:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D71A610E3A1
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 19:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686078930; x=1717614930;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=uT2Y21VPepy/jiz32BflAJ0mocY8ZR2bZEgwJnHalOQ=;
 b=cllBb//wuVDqJaPPb8I9JKeQ1dVrsRUz7o2q75tbBNBoYqC2lDRRJtM1
 O8TD+69HCboiflsCeXo/OPKy4F8Fj2aaM31a1c8tc51f94f4hDtf1S0tN
 0JEZ35aHjajooGIxUrvLS6zV6to11da1bimnnRuhI43kQwqlif08+6aPe
 po22facW0AZPzM6ujx5PJn8H/qgLKdePIRMYN/iLqgrfRNBkOTI2F5oUV
 MOSFFLH5P0ygWUT9//QxUU8b9EnO5dUvm8134AfE2sX8Zr24Qi48ja+bj
 fkF8cCyWKEv6M8Pc9qbopeoe7K4P2pLnhepcEDXUAOlGkFPJvD0EjiGUw w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443146287"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="443146287"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 12:15:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709187071"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709187071"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 06 Jun 2023 12:15:28 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Jun 2023 22:15:27 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 22:14:52 +0300
Message-Id: <20230606191504.18099-8-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 07/19] drm/i915/dsb: Don't use indexed writes
 when byte enables are not all set
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The indexed write instruction doesn't support byte-enables, so
if the non-indexed write used those we must not convert it to
an indexed write.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index a20ae5313d23..22c716ee75e2 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -149,7 +149,7 @@ static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
 	if (dsb->free_pos == 0)
 		return false;
 
-	prev_opcode = buf[dsb->ins_start_offset + 1] >> DSB_OPCODE_SHIFT;
+	prev_opcode = buf[dsb->ins_start_offset + 1] & ~DSB_REG_VALUE_MASK;
 	prev_reg = buf[dsb->ins_start_offset + 1] & DSB_REG_VALUE_MASK;
 
 	return prev_opcode == opcode && prev_reg == i915_mmio_reg_offset(reg);
@@ -157,12 +157,18 @@ static bool intel_dsb_prev_ins_is_write(struct intel_dsb *dsb,
 
 static bool intel_dsb_prev_ins_is_mmio_write(struct intel_dsb *dsb, i915_reg_t reg)
 {
-	return intel_dsb_prev_ins_is_write(dsb, DSB_OPCODE_MMIO_WRITE, reg);
+	/* only full byte-enables can be converted to indexed writes */
+	return intel_dsb_prev_ins_is_write(dsb,
+					   DSB_OPCODE_MMIO_WRITE << DSB_OPCODE_SHIFT |
+					   DSB_BYTE_EN << DSB_BYTE_EN_SHIFT,
+					   reg);
 }
 
 static bool intel_dsb_prev_ins_is_indexed_write(struct intel_dsb *dsb, i915_reg_t reg)
 {
-	return intel_dsb_prev_ins_is_write(dsb, DSB_OPCODE_INDEXED_WRITE, reg);
+	return intel_dsb_prev_ins_is_write(dsb,
+					   DSB_OPCODE_INDEXED_WRITE << DSB_OPCODE_SHIFT,
+					   reg);
 }
 
 /**
-- 
2.39.3

