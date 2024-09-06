Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E055296EB5B
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 09:00:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40BF610E813;
	Fri,  6 Sep 2024 07:00:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="NpkHNKeB";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1779A10E806
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 07:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725606053; x=1757142053;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=B+AkGGKdBW5AdcphGZh/WYPUVS8UdCB6dHN64Q9NU44=;
 b=NpkHNKeBY1wcdFN7EfFKcVucs1t72siJOwmn7ex3ghTvkYyphXIN7iUb
 nyUxUc5iSERdt/bhMZdDdcvOvWo0wE6d7gM7bX5xC6wynKla6nblDze1a
 RgjdGqECpAB5qkZKtDD5+trA5BRS5sX6d/rTVemsz0APWEGA2e5qctE74
 CD1pAk3eZJfZMTsRQLE5SDeyuE4zLnk7AZYvPjXQOIcA8LCKI/iqAEC/D
 k1wS16yzbQvucN4X29ystDUaCxTs8XMLwMOyYGGrzegm4h4y/dnialrAY
 fyZ+mz8cT/K1KeEfa0lbSYR0RexOYOpM3XAY+4DWFBJh95osyZGyj8hCX g==;
X-CSE-ConnectionGUID: ByX5J6T6RLyr4v7u9rsrgA==
X-CSE-MsgGUID: t6YzxIIrQqGL/MHOAa4MSg==
X-IronPort-AV: E=McAfee;i="6700,10204,11186"; a="28103042"
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="28103042"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 00:00:53 -0700
X-CSE-ConnectionGUID: tQnOKigQTOquuT1r1RClhw==
X-CSE-MsgGUID: fR6nUPeLRuKNctNfaxmWYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,207,1719903600"; d="scan'208";a="70292518"
Received: from dhhellew-desk2.ger.corp.intel.com.ger.corp.intel.com (HELO
 jhogande-mobl1..) ([10.245.244.116])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 00:00:50 -0700
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com, animesh.manna@intel.com,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v2 3/4] drm/i915/psr: Add connector debugfs files for MST
 connector as well
Date: Fri,  6 Sep 2024 10:00:32 +0300
Message-Id: <20240906070033.289015-4-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240906070033.289015-1-jouni.hogander@intel.com>
References: <20240906070033.289015-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
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

Connector debugfs files are currently not add for MST connector. We
can now add them as we have taken into account possibility to have
NULL in connector->encoder in intel_attached_dp.

v2: remove TODO comment
Reviewed-by: Imre Deak <imre.deak@intel.com>

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 drivers/gpu/drm/i915/display/intel_psr.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
index b30fa067ce6e3..581c409ce7309 100644
--- a/drivers/gpu/drm/i915/display/intel_psr.c
+++ b/drivers/gpu/drm/i915/display/intel_psr.c
@@ -3840,10 +3840,8 @@ void intel_psr_connector_debugfs_add(struct intel_connector *connector)
 	struct drm_i915_private *i915 = to_i915(connector->base.dev);
 	struct dentry *root = connector->base.debugfs_entry;
 
-	/* TODO: Add support for MST connectors as well. */
-	if ((connector->base.connector_type != DRM_MODE_CONNECTOR_eDP &&
-	     connector->base.connector_type != DRM_MODE_CONNECTOR_DisplayPort) ||
-	    connector->mst_port)
+	if (connector->base.connector_type != DRM_MODE_CONNECTOR_eDP &&
+	    connector->base.connector_type != DRM_MODE_CONNECTOR_DisplayPort)
 		return;
 
 	debugfs_create_file("i915_psr_sink_status", 0444, root,
-- 
2.34.1

