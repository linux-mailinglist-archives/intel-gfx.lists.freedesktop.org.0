Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 19D194EE0F5
	for <lists+intel-gfx@lfdr.de>; Thu, 31 Mar 2022 20:46:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 37C5810F47C;
	Thu, 31 Mar 2022 18:46:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4887810F478;
 Thu, 31 Mar 2022 18:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648752363; x=1680288363;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=R3p5aWr/Rrgl2uqycgY/KbEOcV+eBKqBaQU3u3ZlCC8=;
 b=MqER9pRe7yTho1zsxNPDIyKT4i+Lznfy9Gtmz4r3KqY5A5iGt1x56K4d
 rfvlit17Rwq41PLSqbllrrOwOX2uqtUedlszdmQRU8l76bYxLRGYhoP6C
 GR0O94mF8vV492THE8HuFVNbUhUv+B4Up0hbQyBI32/G4ys6057YhIFdO
 rCsYl3uEScqsp76h2GSFWOSwKMwNIjZZPYqMmfVzE5tAkBEeNX53mqGB1
 ++Ei8gVCw0wRPm1XY71c8f5aEoEf0/DwD1YU9259CVVgsZg+TTvYJnxWc
 dFhcDhqcWigo4muNpsG9ekFDEuLRdaynB7BuDcKPY2M7uuHeoVKtbKmg5 g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10302"; a="259901204"
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="259901204"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 11:45:54 -0700
X-IronPort-AV: E=Sophos;i="5.90,225,1643702400"; d="scan'208";a="720574442"
Received: from gluca-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.48.194])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Mar 2022 11:45:53 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Thu, 31 Mar 2022 21:45:06 +0300
Message-Id: <aa25131c3454c7dbc1e8fdb46549f3787bdf6354.1648752228.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1648752228.git.jani.nikula@intel.com>
References: <cover.1648752228.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 09/12] drm/edid: simplify block check when
 filtering invalid blocks
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

There's no need to handle complicated scenarios or debug log when
filtering blocks that have already been identified as invalid. Simplify
by adding an edid_block_valid() helper that operates on const data and
prints nothing.

(Finally, here's the justification for the previously added separate
edid_block_status_valid() function!)

Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_edid.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index a967e6e65ab5..4803033d44fd 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -1714,6 +1714,12 @@ static bool edid_block_status_valid(enum edid_block_status status, int tag)
 		(status == EDID_BLOCK_CHECKSUM && tag == CEA_EXT);
 }
 
+static bool edid_block_valid(const void *block, bool base)
+{
+	return edid_block_status_valid(edid_block_check(block, base),
+				       edid_block_tag(block));
+}
+
 /**
  * drm_edid_block_valid - Sanity check the EDID block (base or extension)
  * @raw_edid: pointer to raw EDID block
@@ -2080,7 +2086,7 @@ struct edid *drm_do_get_edid(struct drm_connector *connector,
 		for (i = 0; i <= edid->extensions; i++) {
 			void *block = edid + i;
 
-			if (!drm_edid_block_valid(block, i, false, NULL))
+			if (!edid_block_valid(block, i == 0))
 				continue;
 
 			memcpy(dest_block, block, EDID_LENGTH);
-- 
2.30.2

