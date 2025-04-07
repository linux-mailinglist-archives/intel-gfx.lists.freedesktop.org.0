Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 266CFA7E20E
	for <lists+intel-gfx@lfdr.de>; Mon,  7 Apr 2025 16:39:25 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9F7F110E4BB;
	Mon,  7 Apr 2025 14:39:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Kb6Hteak";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E23AD10E4B9;
 Mon,  7 Apr 2025 14:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744036762; x=1775572762;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=5Nn1RfBkK6vMPO3CDgAcB9Qt+fDF5OPkBbm1b1jFAMA=;
 b=Kb6HteakOuNpHoaSGwTiflxB/9FuIcWPLF8UB+oZOXpxyjA1tsB6c3uW
 IfSoN4Pfp/6qZejcCg9uGdNuYk6UH879jHzJEPbNrOhdrIEDTBygmsOZB
 OV6HQSfqzSmpL06Bqo8Sqmsm1siHUf18RQYUMkNObYJcRGJ+HzFTgGDH5
 mi0HPgh7+ZfEIBY19VkXvPxzdGXl/W/BpSZgg0q2DVXyuIcUawSRIoTFL
 18HjHBC+6K6qhB308K7KzhNJ0LnyVzk6452v75yrs5iIV7Sl+ahXo6OwY
 LqSPvkNsO8QdRO8FyM+o/DnkT+O9UNQ+1xcUgxmdlD7d8BGIt9Ybc3PZq Q==;
X-CSE-ConnectionGUID: oAShbt0HRGWdettHMhFm9w==
X-CSE-MsgGUID: n5D5ASswRYykmRZ4BTzljg==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="44572423"
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="44572423"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2025 07:39:22 -0700
X-CSE-ConnectionGUID: 7/ZTOKDRSdKp4g4hUQUw1g==
X-CSE-MsgGUID: +jDoXracRm2jEymzCP8FTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,194,1739865600"; d="scan'208";a="158963692"
Received: from dut-2a59.iind.intel.com ([10.190.239.113])
 by fmviesa001.fm.intel.com with ESMTP; 07 Apr 2025 07:39:20 -0700
From: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, animesh.manna@intel.com
Subject: [PATCH 05/11] drm/i915/dsb: add intel_dsb_gosub_finish()
Date: Mon,  7 Apr 2025 19:53:53 +0530
Message-Id: <20250407142359.1398410-6-chaitanya.kumar.borah@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
References: <20250407142359.1398410-1-chaitanya.kumar.borah@intel.com>
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

A DSB buffer which will be used for GOSUB execution does not need
the DEWAKE mechanism but still need to be 64 bit aligned. Add helper
to finish preparation of a dsb buffer to be executed with GOSUB
instruction.

Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 7 +++++++
 drivers/gpu/drm/i915/display/intel_dsb.h | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index 2cda6fc7857b..bffa02a0442c 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -585,6 +585,13 @@ void intel_dsb_gosub(struct intel_dsb *dsb,
 	intel_dsb_align_tail(dsb);
 }
 
+void intel_dsb_gosub_finish(struct intel_dsb *dsb)
+{
+	intel_dsb_align_tail(dsb);
+
+	intel_dsb_buffer_flush_map(&dsb->dsb_buf);
+}
+
 void intel_dsb_finish(struct intel_dsb *dsb)
 {
 	struct intel_crtc *crtc = dsb->crtc;
diff --git a/drivers/gpu/drm/i915/display/intel_dsb.h b/drivers/gpu/drm/i915/display/intel_dsb.h
index 8b2cf0a7b7e6..6900acd603b8 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.h
+++ b/drivers/gpu/drm/i915/display/intel_dsb.h
@@ -31,6 +31,7 @@ struct intel_dsb *intel_dsb_prepare(struct intel_atomic_state *state,
 				    enum intel_dsb_id dsb_id,
 				    unsigned int max_cmds);
 void intel_dsb_finish(struct intel_dsb *dsb);
+void intel_dsb_gosub_finish(struct intel_dsb *dsb);
 void intel_dsb_cleanup(struct intel_dsb *dsb);
 void intel_dsb_reg_write(struct intel_dsb *dsb,
 			 i915_reg_t reg, u32 val);
-- 
2.25.1

