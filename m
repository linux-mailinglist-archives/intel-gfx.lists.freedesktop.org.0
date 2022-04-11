Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AF6C34FB807
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 11:47:56 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4182B10FA01;
	Mon, 11 Apr 2022 09:47:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF01F10F894;
 Mon, 11 Apr 2022 09:47:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649670471; x=1681206471;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=QNHoFBBWXtSyPpVQnFiac5kJ6TlTbdTmJH/pL2VOBH8=;
 b=f6arzSENr+bpP7Z+GcjxdJ4slkp5vUUaKk16L8OxTVrUjbwLUNV24TVZ
 kLuhxHFtArbuIiaBExnfbvNuau53IZWmseTPMGpiSUOqq2XeyBNQGQxu4
 QR2GwVzqtEjwqdYqf39nn9e821/TwQoO52zAouJbZf1PR2pPP4NRzKMRl
 fZHXZlzXLSVDwjn8YpJiMUj+0bZanTcx8QoiUjTcbgdIyGVyNorZmJWaM
 eczlVol2kG2mHqw40/l+7fCwXdTlKlYRlWTTg+G0e6cYsV0vLV0Avp7I0
 rjyudTXstxL0PKa4bbfkSDA9b25sANkVX+t9KlrubToWiHEtv9iv5rL/D g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10313"; a="324990170"
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="324990170"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 02:47:51 -0700
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="659983896"
Received: from lwit-desk1.ger.corp.intel.com (HELO localhost) ([10.249.143.43])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 02:47:48 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 11 Apr 2022 12:47:23 +0300
Message-Id: <3558bb400dcc6b68c44bfc4bbe6f5fd82b15b464.1649670305.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1649670305.git.jani.nikula@intel.com>
References: <cover.1649670305.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v2 02/12] drm/edid: have edid_block_check() detect
 blocks that are all zero
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

We have the check function, have it also detect blocks that are all zero
instead of leaving that to callers.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_edid.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index f4da3f92f41b..f062d1715ec3 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -1671,6 +1671,7 @@ EXPORT_SYMBOL(drm_edid_are_equal);
 enum edid_block_status {
 	EDID_BLOCK_OK = 0,
 	EDID_BLOCK_NULL,
+	EDID_BLOCK_ZERO,
 	EDID_BLOCK_HEADER_CORRUPT,
 	EDID_BLOCK_HEADER_REPAIR,
 	EDID_BLOCK_HEADER_FIXED,
@@ -1689,15 +1690,23 @@ static enum edid_block_status edid_block_check(const void *_block,
 	if (is_base_block) {
 		int score = drm_edid_header_is_valid(block);
 
-		if (score < clamp(edid_fixup, 0, 8))
-			return EDID_BLOCK_HEADER_CORRUPT;
+		if (score < clamp(edid_fixup, 0, 8)) {
+			if (edid_block_is_zero(block))
+				return EDID_BLOCK_ZERO;
+			else
+				return EDID_BLOCK_HEADER_CORRUPT;
+		}
 
 		if (score < 8)
 			return EDID_BLOCK_HEADER_REPAIR;
 	}
 
-	if (edid_block_compute_checksum(block) != edid_block_get_checksum(block))
-		return EDID_BLOCK_CHECKSUM;
+	if (edid_block_compute_checksum(block) != edid_block_get_checksum(block)) {
+		if (edid_block_is_zero(block))
+			return EDID_BLOCK_ZERO;
+		else
+			return EDID_BLOCK_CHECKSUM;
+	}
 
 	if (is_base_block) {
 		if (block->version != 1)
@@ -1785,7 +1794,7 @@ bool drm_edid_block_valid(u8 *_block, int block_num, bool print_bad_edid,
 	}
 
 	if (!valid && print_bad_edid) {
-		if (edid_block_is_zero(block)) {
+		if (status == EDID_BLOCK_ZERO) {
 			pr_notice("EDID block is all zeroes\n");
 		} else {
 			pr_notice("Raw EDID:\n");
-- 
2.30.2

