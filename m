Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 140864FB805
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 11:47:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C61D10F9CF;
	Mon, 11 Apr 2022 09:47:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A16D10F86A;
 Mon, 11 Apr 2022 09:47:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649670465; x=1681206465;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OtDkyGNJI75dSVKuN1HxN3qyhIDQs0bLdtAi38sFg5A=;
 b=g05kqjQBE3+Xe2WlCJNJF7Vc0jSL94yeIS9AwpTk19o0srVhenfTuHoC
 P8HcRpRTVtRPwdrV27c0naWFVkrVXNFn9I6G43h2jN4nuOAm9CnUL+gQa
 JOmaDx+bdd4eAc3CIp3MAoY2mxan+UryoIVG0jY9qNiqFonysEvqXGTzj
 +vmvdfy2hLLBhigseaXTgqTY1q2rMO0CH55SeNG8LwHCwY16PtdERRqZ4
 X9UE6epnZeuBtzL3z5vFfPcAUIONgozGwE/lNGxvyPpOs6PyBsKfMxEQW
 KDW7zjuwBdMrwFXurchKbyHYOuqXDQI5jxkAuQe4WIDVbYa/ayKhZ5EI6 g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10313"; a="287085124"
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="287085124"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 02:47:44 -0700
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="723901988"
Received: from lwit-desk1.ger.corp.intel.com (HELO localhost) ([10.249.143.43])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 02:47:42 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 11 Apr 2022 12:47:22 +0300
Message-Id: <1a9eb9f07702f8ab104e1619ac23f76c4f1989ec.1649670305.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1649670305.git.jani.nikula@intel.com>
References: <cover.1649670305.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v2 01/12] drm/edid: convert edid_is_zero() to
 edid_block_is_zero() for blocks
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

As edid_is_zero() is only ever used on EDID blocks, convert it to
edid_block_is_zero() with implicit block size.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_edid.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 04e818ecd662..f4da3f92f41b 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -1632,9 +1632,9 @@ static int edid_block_tag(const void *_block)
 	return block[0];
 }
 
-static bool edid_is_zero(const void *edid, int length)
+static bool edid_block_is_zero(const void *edid)
 {
-	return !memchr_inv(edid, 0, length);
+	return !memchr_inv(edid, 0, EDID_LENGTH);
 }
 
 /**
@@ -1785,7 +1785,7 @@ bool drm_edid_block_valid(u8 *_block, int block_num, bool print_bad_edid,
 	}
 
 	if (!valid && print_bad_edid) {
-		if (edid_is_zero(block, EDID_LENGTH)) {
+		if (edid_block_is_zero(block)) {
 			pr_notice("EDID block is all zeroes\n");
 		} else {
 			pr_notice("Raw EDID:\n");
@@ -1942,7 +1942,7 @@ static void connector_bad_edid(struct drm_connector *connector,
 		u8 *block = edid + i * EDID_LENGTH;
 		char prefix[20];
 
-		if (edid_is_zero(block, EDID_LENGTH))
+		if (edid_block_is_zero(block))
 			sprintf(prefix, "\t[%02x] ZERO ", i);
 		else if (!drm_edid_block_valid(block, i, false, NULL))
 			sprintf(prefix, "\t[%02x] BAD  ", i);
@@ -2019,7 +2019,7 @@ static struct edid *drm_do_get_edid_base_block(struct drm_connector *connector,
 			goto out;
 		if (drm_edid_block_valid(edid, 0, false, edid_corrupt))
 			break;
-		if (try == 0 && edid_is_zero(edid, EDID_LENGTH)) {
+		if (try == 0 && edid_block_is_zero(edid)) {
 			if (null_edid_counter)
 				(*null_edid_counter)++;
 			goto carp;
-- 
2.30.2

