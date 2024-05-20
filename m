Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 054878C9899
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 06:08:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7214D10E1A0;
	Mon, 20 May 2024 04:08:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gOZTqLEk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C477F10E1A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 04:08:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716178117; x=1747714117;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Iex5DNg60l0sKbnw4n2fGnOJprB/a5FueuA9BXfaO/w=;
 b=gOZTqLEkxw3sfsam39xOt18ADOVUo9wBkGp0j1dmEVliFW0nG2CepUNC
 DsDdlCc6OdaYgTjh58ubYZnDf5mDLXueHbkEOTNA6Frg9dKMDZj9eroW5
 ouq+QYfhTqD0jg0IO3XpBZjZIiIlsq/nL84llIORZjDUlUh52N9Cu3qMx
 5kfh/ad+PnAfRgjsYq8VQhIGnq7BuMceYl0ApLRn5PEbBfpN/e5zh82BD
 qBpa+6J0hLG0aAdGEOkGm1SERkILOtYaS8LudyxE1/19yyZK9TfDObsAY
 QIt1rXbLwRbV75G9KsPMgdYBMgh1b1PnPvha2/kpXExWoI6OzwltflzNK w==;
X-CSE-ConnectionGUID: S8euF7VqQk2FzENRqYgkTA==
X-CSE-MsgGUID: 7YHwToarQfqjxr2SEA92xw==
X-IronPort-AV: E=McAfee;i="6600,9927,11077"; a="11598723"
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="11598723"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2024 21:08:37 -0700
X-CSE-ConnectionGUID: fNGm0G0yT3SphH5uuUA5+g==
X-CSE-MsgGUID: nkz+/oEbT1OY6gWFaljVsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,174,1712646000"; d="scan'208";a="37336803"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orviesa004.jf.intel.com with ESMTP; 19 May 2024 21:08:36 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: imre.deak@intel.com,
	Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH 2/2] drm/i915/hdcp: Check mst_port to determine connector type
Date: Mon, 20 May 2024 09:35:53 +0530
Message-ID: <20240520040552.1477481-2-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240507035037.1025012-3-suraj.kandpal@intel.com>
References: <20240507035037.1025012-3-suraj.kandpal@intel.com>
MIME-Version: 1.0
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

Check mst_port field in intel_connector to check connector type
rather than rely on encoder as it may not be attached to connector
at times.

--v2
-Add closes tag [Imre]

Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10898
Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_hdcp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
index 551c862ed7a6..2edffe62f360 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_hdcp.c
@@ -693,7 +693,7 @@ int intel_dp_hdcp_get_remote_capability(struct intel_connector *connector,
 
 	*hdcp_capable = false;
 	*hdcp2_capable = false;
-	if (!intel_encoder_is_mst(connector->encoder))
+	if (!connector->mst_port)
 		return -EINVAL;
 
 	aux = &connector->port->aux;
-- 
2.43.2

