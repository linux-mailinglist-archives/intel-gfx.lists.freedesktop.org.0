Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E6859E408
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Aug 2022 15:09:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 007571123F4;
	Tue, 23 Aug 2022 13:09:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DA934112404
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Aug 2022 13:08:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661260130; x=1692796130;
 h=resent-from:resent-date:resent-message-id:resent-to:from:
 to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ucNa4n2Goez7JvsSI4/OSHLlQ1bFPq9OHaTnFonH+BM=;
 b=PhjlkGWTz90odr36uDAoz/s+WC8SwZF5ce/TzSsky/YShkU2fyEuLKko
 4KH1/KcshitzfJTIQcaE1EDvLW0LDbmyqCqixgQCZ0YoS8DSIV7d7de4+
 McP/BerRlqIBAfVrzageFuGY+8T6VebrcLbB8W8JkXQ4l7hyaQPpvPQB8
 keL4qFHrxG0Sr8vfA0QXqQm4XaTbDh0VZQQ5izboEmek1O1zWa8kCGmAh
 If/U1jkcKmaxWwf+eqTijNSox4VOPqC4x/ci2tTMPT3fhP15swNqr1e+G
 YhYWt8N+lxtu3qHW3TWOFzIVrAzTXDRHOd/IoS4+9aCD2LKaIxDJqshY6 Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10448"; a="291242016"
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="291242016"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Aug 2022 06:08:50 -0700
X-ExtLoopCount2: 2 from 10.237.72.59
X-IronPort-AV: E=Sophos;i="5.93,257,1654585200"; d="scan'208";a="605653579"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.59])
 by orsmga007.jf.intel.com with SMTP; 23 Aug 2022 06:08:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 23 Aug 2022 16:08:47 +0300
Resent-From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Resent-Date: Tue, 23 Aug 2022 16:08:47 +0300
Resent-Message-ID: <YwTRX37EhO/5Fx1i@intel.com>
Resent-To: intel-gfx@lists.freedesktop.org
X-Original-To: ville.syrjala@linux.intel.com
Delivered-To: ville.syrjala@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by stinkbox.stink.local with IMAP (fetchmail-6.4.27)
 for <vsyrjala@localhost> (single-drop); Thu, 18 Aug 2022 22:23:49 +0300 (EEST)
Received: from orsmga006.jf.intel.com (orsmga006.jf.intel.com [10.7.209.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 443F9580C95
 for <ville.syrjala@linux.intel.com>; Thu, 18 Aug 2022 12:22:29 -0700 (PDT)
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,247,1654585200"; d="scan'208";a="584344697"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.59])
 by orsmga006.jf.intel.com with SMTP; 18 Aug 2022 12:22:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 18 Aug 2022 22:22:26 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 18 Aug 2022 22:22:22 +0300
Message-Id: <20220818192223.29881-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220818192223.29881-1-ville.syrjala@linux.intel.com>
References: <20220818192223.29881-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 1/2] drm/i915/bios: Validate fp_timing
 terminator presence
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

Validate the LFP data block a bit hardwer by making sure the
fp_timing terminators (0xffff) are where we expect them to be.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 60 ++++++++++++-----------
 1 file changed, 32 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 198a2f4920cc..f1f861da9e93 100644
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
