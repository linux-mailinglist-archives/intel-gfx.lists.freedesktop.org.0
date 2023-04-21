Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2694D6EA9A3
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Apr 2023 13:48:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7D27A10EE0F;
	Fri, 21 Apr 2023 11:48:43 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5488F10EE0F
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Apr 2023 11:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682077722; x=1713613722;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=JH8aIQoBMAhXfshQCjyAu5Ry29Zvoa427HjjtIGoKis=;
 b=O7OlVZKXZzF96cAAX3PaMRhOFU0o5c+iJaccGx5P0Hfq7FAIrodORjrV
 8HD/E7EIM1bFhyW5pEhpnpjSXidkQNa9Vb06HOlgwjXBhufxXTd4tlTGJ
 GX1ju6IjtkB7B7UzUtyX/VPyePu6wXI3NF2OL68NPcpjUCnLFHfS4yRsv
 KDKIpv6P1pol9WbPj8fo7gKmHXIm+t7197SgPQfc43bjVUP8KwBXxqUA9
 V/waQndPhuIhg2kMAJhnzJXbaDJ6F6w3OmBbvHQBih4XlGg1Z7LW75uGW
 rpWtZ6JWi1qZyNc6lXtHmKdus8KcRLQNxF2GrKhwpZxlPf39zUHj7dJU8 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="344730328"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="344730328"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10686"; a="685709525"
X-IronPort-AV: E=Sophos;i="5.99,214,1677571200"; d="scan'208";a="685709525"
Received: from hseyranx-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.32.135])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2023 04:48:40 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 21 Apr 2023 14:47:49 +0300
Message-Id: <0dae95f92108b0c1b6a6a3ae2c13f109afc317cf.1682077472.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <cover.1682077472.git.jani.nikula@intel.com>
References: <cover.1682077472.git.jani.nikula@intel.com>
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 11/13] drm/edid: make drm_edid_duplicate() safe
 to call with NULL parameter
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's a bit tedious to check for NULL before calling
drm_edid_duplicate(). Make it handle NULL parameter graciously.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/drm_edid.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/drm_edid.c b/drivers/gpu/drm/drm_edid.c
index 941f3d53a701..e0dbd9140726 100644
--- a/drivers/gpu/drm/drm_edid.c
+++ b/drivers/gpu/drm/drm_edid.c
@@ -2881,6 +2881,9 @@ EXPORT_SYMBOL(drm_edid_read_switcheroo);
  */
 struct edid *drm_edid_duplicate(const struct edid *edid)
 {
+	if (!edid)
+		return NULL;
+
 	return kmemdup(edid, edid_size(edid), GFP_KERNEL);
 }
 EXPORT_SYMBOL(drm_edid_duplicate);
-- 
2.39.2

