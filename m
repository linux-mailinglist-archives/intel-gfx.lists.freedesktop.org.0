Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2277F4FBE28
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 16:02:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 61E7510F6D4;
	Mon, 11 Apr 2022 14:01:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8BDAE10F6D4;
 Mon, 11 Apr 2022 14:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649685718; x=1681221718;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3YjDo7f81ABmljbzA1CfL/dzPIgXuAg7hLX3Gn4gMr8=;
 b=VJW36OzwntzZaedqIDGft4YnO0TtHnIy6MYOXJmbW0eU6IY2+SW4DnZh
 KxuS4vddn2ZA1H7Lp52sLy6VixrmTCyefgUhGJhzjCF/hVXcWgFmjGN9U
 9U/Pifo4rFL06jvLGgr7yXTcC47NuOphGoynG3h851scyfjnYOuAkrpWc
 g34tW6sEc9Ba74cpe6lPArE7/7F0PAUPYbW71DbeAvJeMqB/vHOCcLdZ5
 y6lIYZ43qPyiuq7WfIzaWrLyrOgiuuDHJSvTYy1Hx+MFEPIzBgZS1CPxG
 StLZAVkxqJrt2SG13A7vl2SVDGwFZIRUTxCvmqNt3KMb/mpCy0xyKbYet A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10313"; a="261560215"
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="261560215"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 07:01:31 -0700
X-IronPort-AV: E=Sophos;i="5.90,252,1643702400"; d="scan'208";a="525987692"
Received: from lwit-desk1.ger.corp.intel.com (HELO localhost) ([10.249.143.43])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 07:01:29 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 11 Apr 2022 17:00:33 +0300
Message-Id: <4d249173b34758e1d6c4a74eb98518d180f0a8ae.1649685475.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1649685475.git.jani.nikula@intel.com>
References: <cover.1649685475.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v3 10/12] drm/edid: drop extra local var
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

We don't need override as a variable for anything.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_edid.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 8a050b65c06a..5a1906a5c523 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -2102,11 +2102,11 @@ struct edid *drm_do_get_edid(struct drm_connector *connector,
 {
 	enum edid_block_status status;
 	int j, invalid_blocks = 0;
-	struct edid *edid, *new, *override;
+	struct edid *edid, *new;
 
-	override = drm_get_override_edid(connector);
-	if (override)
-		return override;
+	edid = drm_get_override_edid(connector);
+	if (edid)
+		return edid;
 
 	edid = kmalloc(EDID_LENGTH, GFP_KERNEL);
 	if (!edid)
-- 
2.30.2

