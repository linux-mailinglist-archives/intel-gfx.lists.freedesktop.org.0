Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F915FAF5E
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Oct 2022 11:31:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A3B2410E206;
	Tue, 11 Oct 2022 09:31:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3488510E206
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Oct 2022 09:31:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1665480673; x=1697016673;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=EO8ukgc3dQH66XLbd2VQr4nHEFlG8ojBi4cvAw0kYTQ=;
 b=UCcRuogJcHhTVBJDk9SLlUj9nneP+BEKXAVCu2qQiU2xrfRh/QM4roYX
 UaGnlZvWyRgYoRogqkjQJ4Ai5kdelRrkaX2Kr08IuLIHY99yCTVZ12xY4
 N9bVDE9vkrXGoJoxae/8aTPOQOKuyoq0RtWEnYSgJ6Sl12E52TFe4Ri45
 HKVo3Bh7k23ls07jC/RdWXzhLLMgq/cCedcg5nQJb+0TikFmqJPQHem5n
 W6klaC3VsTe1JsR+oH63YbqZy/y3WG3gGTJCBj7uYt4gyxQzsYcqA8++B
 2jQK/74KHzu2a5i488OGcu0NCwDUao3R7YotxzojJON3NwUfx2gKZprHw g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="306080941"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="306080941"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 02:31:08 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10496"; a="659473908"
X-IronPort-AV: E=Sophos;i="5.95,176,1661842800"; d="scan'208";a="659473908"
Received: from mlankhor-desk.ger.corp.intel.com (HELO
 vgovind2-mobl3.intel.com) ([10.252.41.37])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2022 02:31:06 -0700
From: Vinod Govindapillai <vinod.govindapillai@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 11 Oct 2022 12:30:48 +0300
Message-Id: <20221011093048.447177-1-vinod.govindapillai@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915: update DSC feature flag handling
 during device init
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
Cc: jani.nikula@intel.com, ville.syrjala@intel.com, lucas.demarchi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

DSC feature information is no longer part of the DFSM register in
some display generations.

Bspec:50075
Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 908ec241fe71..17d2e3293892 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -480,7 +480,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		if (DISPLAY_VER(dev_priv) >= 11 && (dfsm & ICL_DFSM_DMC_DISABLE))
 			runtime->has_dmc = 0;
 
-		if (DISPLAY_VER(dev_priv) >= 10 &&
+		if (IS_DISPLAY_VER(dev_priv, 10, 12) &&
 		    (dfsm & GLK_DFSM_DISPLAY_DSC_DISABLE))
 			runtime->has_dsc = 0;
 	}
-- 
2.34.1

