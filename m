Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC4C4603B11
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 10:02:07 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1DB910F179;
	Wed, 19 Oct 2022 08:02:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 471ED10E9C5
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 08:01:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666166515; x=1697702515;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p61VJo4/RmRvFktHyRNnR84pC2LY7KGpn+6dqLA1Pyo=;
 b=bPv6ySQ7bLtITYMtNbh+bMPU/kVMJ7IObIRomWxUGaE3dCPK3+fGpg8t
 EXHPcfKPL1ilc7oS8Tzq29Ewizv1fxRugeP8xaHLTBOx3WGLOfQMyu79u
 wrIHjI5V9i5dXN2N32H8FSdAwAVJeAuQUdY11fQLQ1+5TeChQW0VwsLAW
 UjBfbMmhDZeHjOqJm5MJYVV0G3Mo8CNPFSWxdDCpRWqWG3BhJxhXogwVf
 7ICltGYYr/+sHGAjK61mjieSyRHkHsaETbBEbXvjHNR/wUpYZu/JKFYzG
 Qt8qqof6SScCfNb/TKORdn4PdjhOagTV7QQQgX4Cqo7jVvbQlJ4tr9xll w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="368390114"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="368390114"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 01:01:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10504"; a="629133400"
X-IronPort-AV: E=Sophos;i="5.95,195,1661842800"; d="scan'208";a="629133400"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga002.jf.intel.com with SMTP; 19 Oct 2022 01:01:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 19 Oct 2022 11:01:49 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Wed, 19 Oct 2022 11:01:48 +0300
Message-Id: <20221019080149.22870-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <Y0+fex0i0vmBL6QX@kroah.com>
References: <Y0+fex0i0vmBL6QX@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH stable-5.19+ 1/2] drm/i915/bios: Validate
 fp_timing terminator presence
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
Cc: Jani Nikula <jani.nikula@intel.com>, Hans de Goede <hdegoede@redhat.com>,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Validate the LFP data block a bit hardwer by making sure the
fp_timing terminators (0xffff) are where we expect them to be.

Cc: <stable@vger.kernel.org> # 5.19.x: 39b1bc4b5bcc: drm/i915: Rename block_size()/block_offset()
Cc: <stable@vger.kernel.org> # 5.19+
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20220818192223.29881-2-ville.syrjala@linux.intel.com
Reviewed-by: Jani Nikula <jani.nikula@intel.com>
(cherry picked from commit 4e78d6023c15c6acce8fbe42e13027c460395522)
---
 drivers/gpu/drm/i915/display/intel_bios.c | 60 ++++++++++++-----------
 1 file changed, 32 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 7d6eb9ad7a02..1a30e645c5a7 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -135,18 +135,6 @@ static u32 raw_block_offset(const void *bdb, enum bdb_block_id section_id)
 	return block - bdb;
 }
 
-/* size of the block excluding the header */
-static u32 raw_block_size(const void *bdb, enum bdb_block_id section_id)
-{
-	const void *block;
-
-	block = find_raw_section(bdb, section_id);
-	if (!block)
-		return 0;
-
-	return get_blocksize(block);
-}
-
 struct bdb_block_entry {
 	struct list_head node;
 	enum bdb_block_id section_id;
@@ -231,9 +219,14 @@ static bool validate_lfp_data_ptrs(const void *bdb,
 {
 	int fp_timing_size, dvo_timing_size, panel_pnp_id_size, panel_name_size;
 	int data_block_size, lfp_data_size;
+	const void *data_block;
 	int i;
 
-	data_block_size = raw_block_size(bdb, BDB_LVDS_LFP_DATA);
+	data_block = find_raw_section(bdb, BDB_LVDS_LFP_DATA);
+	if (!data_block)
+		return false;
+
+	data_block_size = get_blocksize(data_block);
 	if (data_block_size == 0)
 		return false;
 
@@ -261,21 +254,6 @@ static bool validate_lfp_data_ptrs(const void *bdb,
 	if (16 * lfp_data_size > data_block_size)
 		return false;
 
-	/*
-	 * Except for vlv/chv machines all real VBTs seem to have 6
-	 * unaccounted bytes in the fp_timing table. And it doesn't
-	 * appear to be a really intentional hole as the fp_timing
-	 * 0xffff terminator is always within those 6 missing bytes.
-	 */
-	if (fp_timing_size + dvo_timing_size + panel_pnp_id_size != lfp_data_size &&
-	    fp_timing_size + 6 + dvo_timing_size + panel_pnp_id_size != lfp_data_size)
-		return false;
-
-	if (ptrs->ptr[0].fp_timing.offset + fp_timing_size > ptrs->ptr[0].dvo_timing.offset ||
-	    ptrs->ptr[0].dvo_timing.offset + dvo_timing_size != ptrs->ptr[0].panel_pnp_id.offset ||
-	    ptrs->ptr[0].panel_pnp_id.offset + panel_pnp_id_size != lfp_data_size)
-		return false;
-
 	/* make sure the table entries have uniform size */
 	for (i = 1; i < 16; i++) {
 		if (ptrs->ptr[i].fp_timing.table_size != fp_timing_size ||
@@ -289,6 +267,23 @@ static bool validate_lfp_data_ptrs(const void *bdb,
 			return false;
 	}
 
+	/*
+	 * Except for vlv/chv machines all real VBTs seem to have 6
+	 * unaccounted bytes in the fp_timing table. And it doesn't
+	 * appear to be a really intentional hole as the fp_timing
+	 * 0xffff terminator is always within those 6 missing bytes.
+	 */
+	if (fp_timing_size + 6 + dvo_timing_size + panel_pnp_id_size == lfp_data_size)
+		fp_timing_size += 6;
+
+	if (fp_timing_size + dvo_timing_size + panel_pnp_id_size != lfp_data_size)
+		return false;
+
+	if (ptrs->ptr[0].fp_timing.offset + fp_timing_size != ptrs->ptr[0].dvo_timing.offset ||
+	    ptrs->ptr[0].dvo_timing.offset + dvo_timing_size != ptrs->ptr[0].panel_pnp_id.offset ||
+	    ptrs->ptr[0].panel_pnp_id.offset + panel_pnp_id_size != lfp_data_size)
+		return false;
+
 	/* make sure the tables fit inside the data block */
 	for (i = 0; i < 16; i++) {
 		if (ptrs->ptr[i].fp_timing.offset + fp_timing_size > data_block_size ||
@@ -300,6 +295,15 @@ static bool validate_lfp_data_ptrs(const void *bdb,
 	if (ptrs->panel_name.offset + 16 * panel_name_size > data_block_size)
 		return false;
 
+	/* make sure fp_timing terminators are present at expected locations */
+	for (i = 0; i < 16; i++) {
+		const u16 *t = data_block + ptrs->ptr[i].fp_timing.offset +
+			fp_timing_size - 2;
+
+		if (*t != 0xffff)
+			return false;
+	}
+
 	return true;
 }
 
-- 
2.35.1

