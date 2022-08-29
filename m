Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C8FE5A4EAF
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Aug 2022 15:58:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 018EA10F13C;
	Mon, 29 Aug 2022 13:58:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C461710F13C
 for <intel-gfx@lists.freedesktop.org>; Mon, 29 Aug 2022 13:58:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1661781517; x=1693317517;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=foAXf8sIUIu096dssSvjV0luk4lPIOMWX/ySGa35avo=;
 b=lte5ZlC++bhyJ+gbUrXRj3meuvtsjglFTRUXhNLh5lM93bq8HaynI4fr
 r7CDRWx9Ghq/O2puczGJaP3ZmOwgKpT45IC25Y5wRi7KOmVd/ZgSvuDkz
 XUS5FgeQ6pnCgZbfhIswnTaV336k2hP16tV039eZO46BxhaLn/IqhlMXT
 7ZcBWmebWcjifwL+qAD4zjCl4LlGKC7IGW6S9+A9Unn+b322Rz6BZjC9G
 g907awpCDEG2r0X7etA45/4Z4MZh1bczQEb5L5SYOVBdaUc4m90MgcCoq
 Quuc96qtcQl0afxaBbBcGa4XiNEQJqIpbSPWCHs7gMgrXG+ER35Ikd+jD Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10454"; a="292478732"
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="292478732"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Aug 2022 06:58:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,272,1654585200"; d="scan'208";a="672388235"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga008.fm.intel.com with SMTP; 29 Aug 2022 06:58:34 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 29 Aug 2022 16:58:34 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon, 29 Aug 2022 16:58:34 +0300
Message-Id: <20220829135834.8585-1-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/bios: Copy the whole MIPI sequence
 block
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
Cc: stable@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Turns out the MIPI sequence block version number and
new block size fields are considered part of the block
header and are not included in the reported new block size
field itself. Bump up the block size appropriately so that
we'll copy over the last five bytes of the block as well.

For this particular machine those last five bytes included
parts of the GPIO op for the backlight on sequence, causing
the backlight no longer to turn back on:

 		Sequence 6 - MIPI_SEQ_BACKLIGHT_ON
 			Delay: 20000 us
-			GPIO index 0, number 0, set 0 (0x00)
+			GPIO index 1, number 70, set 1 (0x01)

Cc: stable@vger.kernel.org
Fixes: e163cfb4c96d ("drm/i915/bios: Make copies of VBT data blocks")
Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/6652
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_bios.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_bios.c b/drivers/gpu/drm/i915/display/intel_bios.c
index 81d6cfbd2615..d493d04f4049 100644
--- a/drivers/gpu/drm/i915/display/intel_bios.c
+++ b/drivers/gpu/drm/i915/display/intel_bios.c
@@ -479,6 +479,13 @@ init_bdb_block(struct drm_i915_private *i915,
 
 	block_size = get_blocksize(block);
 
+	/*
+	 * Version number and new block size are considered
+	 * part of the header for MIPI sequenece block v3+.
+	 */
+	if (section_id == BDB_MIPI_SEQUENCE && *(const u8 *)block >= 3)
+		block_size += 5;
+
 	entry = kzalloc(struct_size(entry, data, max(min_size, block_size) + 3),
 			GFP_KERNEL);
 	if (!entry) {
-- 
2.35.1

