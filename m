Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 44C2C55FBF8
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jun 2022 11:28:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7874111A594;
	Wed, 29 Jun 2022 09:28:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6290211A5AC;
 Wed, 29 Jun 2022 09:28:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656494925; x=1688030925;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=n4SEc0jyzJMS+D9PeLLWV+3gULHKWjj/IW+riAQLO/A=;
 b=b9Wyb0q0yNjSFsP9MPtTFoWfYYLIRLqh6B61u3OEwiLShfW+zTOf7em9
 qHeQ+ZkHU7rYv5GfP3lb999UtHJOLlCwECG3nBDxCjEJfM4ZitLbMCS82
 L74k/+spJCA8JFIg2w4AKccxtMkt0PftSAkfX923YB+JB6KZCsR5+P43z
 r5/R0axBKJQPaCpNkmKKGdV/97A2PlvUoQ+VXAKdwYkKfvaFTmPZX/sDV
 OJlbE8Ew9h8BVGi7Vu67xk7NrnlQOk+RIa9gGHupsBU4ufjrowhRJr4+i
 2xl6BGpq978gQI10F+KGrRhr8vOVSf3ylKtHfVpmkPLGuDkJvY8HfT8aJ Q==;
X-IronPort-AV: E=McAfee;i="6400,9594,10392"; a="280747337"
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="280747337"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 02:28:44 -0700
X-IronPort-AV: E=Sophos;i="5.92,231,1650956400"; d="scan'208";a="693501576"
Received: from srdoo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.252.63.102])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2022 02:28:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Wed, 29 Jun 2022 12:27:55 +0300
Message-Id: <c31b5796feb05c3ebac067600be2e88e098d7592.1656494768.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1656494768.git.jani.nikula@intel.com>
References: <cover.1656494768.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI RESEND 10/10] drm/edid: take HF-EEODB extension
 count into account
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

Take the HF-EEODB extension count override into account.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_edid.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index fa3a3e294560..bbc25e3b7220 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -1629,6 +1629,19 @@ static int drm_edid_block_count(const struct drm_edid *drm_edid)
 	/* Starting point */
 	num_blocks = edid_block_count(drm_edid->edid);
 
+	/* HF-EEODB override */
+	if (drm_edid->size >= edid_size_by_blocks(2)) {
+		int eeodb;
+
+		/*
+		 * Note: HF-EEODB may specify a smaller extension count than the
+		 * regular one. Unlike in buffer allocation, here we can use it.
+		 */
+		eeodb = edid_hfeeodb_block_count(drm_edid->edid);
+		if (eeodb)
+			num_blocks = eeodb;
+	}
+
 	/* Limit by allocated size */
 	num_blocks = min(num_blocks, (int)drm_edid->size / EDID_LENGTH);
 
-- 
2.30.2

