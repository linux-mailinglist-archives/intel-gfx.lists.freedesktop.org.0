Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BDAB52D568
	for <lists+intel-gfx@lfdr.de>; Thu, 19 May 2022 16:00:17 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E77C810E592;
	Thu, 19 May 2022 14:00:15 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3688410E592
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 May 2022 14:00:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652968814; x=1684504814;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ManDLeUSjg2tzuOvyjjYrVmhEUifdsjCi4Nx1AxzyYY=;
 b=ArYaZyLue12FopUEX2Iw7wlItkVJEwJ/eUsYaxmIDzXOdFtACoPecY4R
 5Xrf64JYZ/cSl7J/M7bTpq9MDNg3C7hgnqUA818YCUVNJ2Av0IcDpw/vQ
 sb+8E4h9b47jkX6H3oCqnwlGjOPicgw0keR7CikwJ4GeaRB5ugQ0Hp9Ag
 7vn+TWkfq6bQibJiM+OJIrjr9qDKKNDojtS6YIobEk37G0gDEnQ9Z/IAn
 4DXoQl+UB4LhQ37ASBJyhw32cOjdJSFeT56hxzxA9mk2lvySiaAcc7L7R
 EjEmNuWApSqC/XrEMKxuPdVJHGx6v9E+OZi1UlZuVfiaB8tHY5NjhOWrv g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10351"; a="259791734"
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="259791734"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2022 07:00:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.91,237,1647327600"; d="scan'208";a="674021517"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.163])
 by fmsmga002.fm.intel.com with SMTP; 19 May 2022 07:00:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 May 2022 17:00:10 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 19 May 2022 17:00:10 +0300
Message-Id: <20220519140010.10600-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: Rename block_size()/block_offset()
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

Give block_size()/block_offset() a "raw_" prefix since they
both operate on the "raw" (as in not duplicated) BDB block
contents.

What actually spurred this was a conflict between intel_bios.c
block_size() vs. block_size() from blkdev.h. That only
happend to me on a custom tree where we somehow manage to
include blkdev.h into intel_bios.c. But I think the rename
makes sense anyway to clarify the purpose of these functions.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 0c5638f5b72b..3ac1860a0b6e 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -123,7 +123,7 @@ find_raw_section(const void *_bdb, enum bdb_block_id section_id)
  * Offset from the start of BDB to the start of the
  * block data (just past the block header).
  */
-static u32 block_offset(const void *bdb, enum bdb_block_id section_id)
+static u32 raw_block_offset(const void *bdb, enum bdb_block_id section_id)
 {
 	const void *block;
 
@@ -135,7 +135,7 @@ static u32 block_offset(const void *bdb, enum bdb_block_id section_id)
 }
 
 /* size of the block excluding the header */
-static u32 block_size(const void *bdb, enum bdb_block_id section_id)
+static u32 raw_block_size(const void *bdb, enum bdb_block_id section_id)
 {
 	const void *block;
 
@@ -232,7 +232,7 @@ static bool validate_lfp_data_ptrs(const void *bdb,
 	int data_block_size, lfp_data_size;
 	int i;
 
-	data_block_size = block_size(bdb, BDB_LVDS_LFP_DATA);
+	data_block_size = raw_block_size(bdb, BDB_LVDS_LFP_DATA);
 	if (data_block_size == 0)
 		return false;
 
@@ -309,7 +309,7 @@ static bool fixup_lfp_data_ptrs(const void *bdb, void *ptrs_block)
 	u32 offset;
 	int i;
 
-	offset = block_offset(bdb, BDB_LVDS_LFP_DATA);
+	offset = raw_block_offset(bdb, BDB_LVDS_LFP_DATA);
 
 	for (i = 0; i < 16; i++) {
 		if (ptrs->ptr[i].fp_timing.offset < offset ||
-- 
2.35.1

