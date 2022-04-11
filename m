Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FFE4FB81C
	for <lists+intel-gfx@lfdr.de>; Mon, 11 Apr 2022 11:48:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6F59D10F444;
	Mon, 11 Apr 2022 09:48:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B72F10F138;
 Mon, 11 Apr 2022 09:48:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1649670512; x=1681206512;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=3YjDo7f81ABmljbzA1CfL/dzPIgXuAg7hLX3Gn4gMr8=;
 b=dYCyDemu0btyK4ko71CW16FamrNKEPKbjtBQDkvLsifRB3H15tNjrGgh
 msfjEsH0B8BqoKDffdGBumErV6UmCvHyVUCdJpG9EFkFexKBbfJAdLrOX
 2drggPDyGWFpaT2SZJZFw3/FM8Bi7KwPTTl96EgKCGGlHeLj+kv9Q4HEU
 TM3pMNp57oBqW0zy4p2rQcnVyzD9b2552+4fgKJff+LoHydc2Md53OSum
 cSDE3gdNeI6PwDQSDTaowE9XVm62Ca+mNQtfzS9/29KQLj1vEIe/t7L18
 hL0nvUEQZ45MDMCzUcG3uqNYqkG69+bs9FTrPTWzbFSitulCUNQWewgAk A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10313"; a="261516324"
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="261516324"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 02:48:32 -0700
X-IronPort-AV: E=Sophos;i="5.90,251,1643702400"; d="scan'208";a="551066253"
Received: from lwit-desk1.ger.corp.intel.com (HELO localhost) ([10.249.143.43])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Apr 2022 02:48:30 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: dri-devel@lists.freedesktop.org
Date: Mon, 11 Apr 2022 12:47:31 +0300
Message-Id: <da9b5a230c1613d5e9db73a38d92b5375c7616ee.1649670305.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1649670305.git.jani.nikula@intel.com>
References: <cover.1649670305.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [CI v2 10/12] drm/edid: drop extra local var
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

