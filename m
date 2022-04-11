Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDAF4FBE1E
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 16:01:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A95D710F6C3;
	Mon, 11 Apr 2022 14:01:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 03B2A10F257;
 Mon, 11 Apr 2022 14:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649685703; x=1681221703;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Gp56NpPmP+iA4JNYKh3FzfQpdyY9ywX++fF8huTw2ek=;
 b=DqupPU13Tz8xzQPaeHAIBsApV1G9LgxLA6pCcmZJmSo1B6X8Ji8pumf+
 DXElmkXKTNXwwxnrBVWpouCby5PRVV0ftWAtSrpEfDxHhN/hgR2YYzD8B
 Y1Hnh5KozHzN3mFF9dD25ShG5hd3wN9LDCwryEUWB6IC0YmgDnsCkxy9P
 3paiqIzQFgTtdcAH2Ow0iuJtj0nRms+FQcuKdE4tB2BVVejrbBhsaSld6
 5xTkEO86b+MRELkGRzdqsVipxhLtpN5bCJcgM54jJAHDU3R3rkqPdHlwk
 JFC7TGaEiv2ayAwO/jjvJP+d/EvchCPRbX10eC/BnY5ZNTWyiNB+HkAEj g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10313"; a="260969306"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="260969306"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 07:01:27 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="723980270"
Received: from lwit-desk1.ger.corp.intel.com (HELO localhost) ([10.249.143.43])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 07:01:24 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 11 Apr 2022 17:00:32 +0300
Message-Id: <a6328b898db40235b85ad4635374bc0768b5a970.1649685475.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1649685475.git.jani.nikula@intel.com>
References: <cover.1649685475.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v3 09/12] drm/edid: convert extension block read to
 EDID block read helper
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

Use the EDID block read helper also for extension block reads, making
edid_block_read() the only place with the read retry logic.

Note: We observe that drm_do_get_edid() does not use invalid extension
blocks to flag the EDID as corrupt.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_edid.c | 15 +++++++--------
 1 file changed, 7 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 359d3d6f216e..8a050b65c06a 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -2143,17 +2143,16 @@ struct edid *drm_do_get_edid(struct drm_connector *connector,
 
 	for (j = 1; j <= edid->extensions; j++) {
 		void *block = edid + j;
-		int try;
 
-		for (try = 0; try < 4; try++) {
-			if (read_block(context, block, j, EDID_LENGTH))
-				goto out;
-			if (drm_edid_block_valid(block, j, false, NULL))
-				break;
-		}
+		status = edid_block_read(block, j, read_block, context);
 
-		if (try == 4)
+		edid_block_status_print(status, block, j);
+
+		if (!edid_block_status_valid(status, edid_block_tag(block))) {
+			if (status == EDID_BLOCK_READ_FAIL)
+				goto out;
 			invalid_blocks++;
+		}
 	}
 
 	if (invalid_blocks) {
-- 
2.30.2

