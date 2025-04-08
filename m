Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 15400A7FEBA
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 13:15:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4ABC810E65E;
	Tue,  8 Apr 2025 11:15:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A4112HZd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4408110E65B;
 Tue,  8 Apr 2025 11:15:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744110936; x=1775646936;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jxbtKbwMC7KcLaDZ206XXWtVvEAwSlmfPx1myL0UYC8=;
 b=A4112HZdciLO6RY6clwToyVhDB/iyBIAxlc8ueFK99CNnpDFNcud/liE
 tDzbNzJPyEBi9MJ4TvXnYVURm9Xls5L83gdy4K2ggVxziQn16fdE8kKl7
 TMV3PKNw8dEmutladNfxNHg9WFdPMcOX6Q8A1FWo26PPRVfjTNqwQchqp
 dRStMebjT+nRbP/yKvFgs7D9+vGbsAgGQ5pjvhTu7hCCP+i6WicHGKjPm
 qQWLN+3aEr+y/4m+cPBAfRm20ZH2F9TkYOaF9cFnP45r6v+00WnB0QqbO
 e14vo1q/k67KC0FWaGCLITDHfLXK9HihpYWJnYqU/HsZsx6PlcY8N7DQh Q==;
X-CSE-ConnectionGUID: pvn5VfZsSR6p8bZoNgIADA==
X-CSE-MsgGUID: Lxk9MYDzTMG6oFcarad8Ig==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="45655911"
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="45655911"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 04:15:36 -0700
X-CSE-ConnectionGUID: A2wQZU85Sm6eA8hW9FCXvQ==
X-CSE-MsgGUID: BrMGYj9TQdKTF9rh1VDqMg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,197,1739865600"; d="scan'208";a="133209958"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by orviesa004.jf.intel.com with ESMTP; 08 Apr 2025 04:15:34 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: [PATCH 01/11] drm/i915/dsb: Extract intel_dsb_ins_align()
Date: Tue,  8 Apr 2025 16:30:12 +0530
Message-Id: <20250408110022.1907802-2-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
References: <20250408110022.1907802-1-chaitanya.kumar.borah@intel.com>
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Extract the code that alings the next instruction to the next
QW boundary into a small helper. I'll have some more uses for
this later.

Also explain why we don't have to zero out the extra DW.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 0ddcdedf5453..c166e02b8af0 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -228,13 +228,25 @@ static bool is_dsb_busy(struct intel_display *display, enum pipe pipe,
 	return intel_de_read_fw(display, DSB_CTRL(pipe, dsb_id)) & DSB_STATUS_BUSY;
 }
 
+static void intel_dsb_ins_align(struct intel_dsb *dsb)
+{
+	/*
+	 * Every instruction should be 8 byte aligned.
+	 *
+	 * The only way to get unaligned free_pos is via
+	 * intel_dsb_reg_write_indexed() which already
+	 * makes sure the next dword is zeroed, so no need
+	 * to clear it here.
+	 */
+	dsb->free_pos = ALIGN(dsb->free_pos, 2);
+}
+
 static void intel_dsb_emit(struct intel_dsb *dsb, u32 ldw, u32 udw)
 {
 	if (!assert_dsb_has_room(dsb))
 		return;
 
-	/* Every instruction should be 8 byte aligned. */
-	dsb->free_pos = ALIGN(dsb->free_pos, 2);
+	intel_dsb_ins_align(dsb);
 
 	dsb->ins_start_offset = dsb->free_pos;
 	dsb->ins[0] = ldw;
-- 
2.25.1

