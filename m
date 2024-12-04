Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1C909E3DC3
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 16:07:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B6AF10E4BB;
	Wed,  4 Dec 2024 15:07:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yts2A8vc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B252510E296;
 Wed,  4 Dec 2024 15:07:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733324863; x=1764860863;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=mTkoejX5FalHwIEntNF2nt45uUjZSD53owJRWwuDWBg=;
 b=Yts2A8vc18iYcAdt48f7ZgYFsZh5kZ3dIU3rsf0V/A6WLqNIUwcLy2cO
 HIdc+OaYkvrzmbymkDoCzUhvGATiMMBT5rwWvDYZ79NbKQS12SbK9nfYd
 faMuJtPtF7gySCrDdCtAOUCJ0ZJaCw1goh2ks3L8fIrRxGQLrN+ZvJlJ1
 IjQ46bJ3SXs2rP2hYBlAWdQXD2bxWA01SUacAH8/KXLIEPVmIJEQwcsqT
 EYXvUipz3FeNkoksQtPCcY4araK4oofdBRszm0kjM+gkdK+BC705Lxgpd
 w4OdLTeV4/53cvvD1TbxVad/TjKpEIBXaAp/nOdzISvAvbDaFx/Pa2C8Q A==;
X-CSE-ConnectionGUID: FEKKW40rSfi4G+FCCSjYCg==
X-CSE-MsgGUID: sbL7i7NoSeeK7/Ruhwt7jA==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="33745699"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="33745699"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 07:07:43 -0800
X-CSE-ConnectionGUID: pMYUPbcWQ8G2AXp4KfqfoA==
X-CSE-MsgGUID: AspLhDt1QJ6dDwBrJs4y0w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="117038261"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.205])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 07:07:40 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com, Sergey Senozhatsky <senozhatsky@chromium.org>,
 Ville Syrjala <ville.syrjala@linux.intel.com>
Subject: [PATCH v2 3/5] drm/i915/ddi: propagate errors from
 intel_ddi_init_hdmi_connector()
Date: Wed,  4 Dec 2024 17:07:19 +0200
Message-Id: <b7499c7517c867a5c4252f687d6424495f6f6587.1733324735.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <cover.1733324735.git.jani.nikula@intel.com>
References: <cover.1733324735.git.jani.nikula@intel.com>
MIME-Version: 1.0
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

Propagate connector init errors from
intel_ddi_init_hdmi_connector(). The caller already handles the
allocation failures, and this is all similar to
intel_ddi_init_dp_connector().

Cc: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>
Reported-and-tested-by: Sergey Senozhatsky <senozhatsky@chromium.org>
Closes: https://lore.kernel.org/r/20241031105145.2140590-1-senozhatsky@chromium.org
Reviewed-by: Sergey Senozhatsky <senozhatsky@chromium.org>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4f9c50996446..67bbfba58b54 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4759,7 +4759,11 @@ intel_ddi_init_hdmi_connector(struct intel_digital_port *dig_port)
 		return NULL;
 
 	dig_port->hdmi.hdmi_reg = DDI_BUF_CTL(port);
-	intel_hdmi_init_connector(dig_port, connector);
+
+	if (!intel_hdmi_init_connector(dig_port, connector)) {
+		kfree(connector);
+		return NULL;
+	}
 
 	return connector;
 }
-- 
2.39.5

