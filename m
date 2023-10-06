Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA8C7BB22C
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Oct 2023 09:31:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46A4F10E231;
	Fri,  6 Oct 2023 07:31:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6DA710E231
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Oct 2023 07:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696577487; x=1728113487;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dDlvY/cQptwGL9KP9bhpw1E7fCW9HJx0HfIvJTpU9h0=;
 b=P44A0z4GdZRQ8m74A9l5C4l5PkM1u3OoCePDh2WM1DhuC5LvOsj9uM6T
 VpnX0C07WIiwd+N0gyg75xtp1psIhDtS28EMC/iJBM6N2M2frWaCk2AEL
 9XOsD5tXlIKKjprsGEjVzAoczmuSeDtDaCOClBeXhL9kJ/NdsqMwCQhB1
 JeLb5e4/hshA3/EwobeUTrbF67wygx508QvAeXwoNV6DEfizvCjOd9dM2
 bGgiE4K+FpFeoq04+Tr/zbwDAWk1Kvbg4nh3rrzDMKqbaxjmqIm90KPQK
 9fUy7Ikph1CT20r6vxJD8ZuoY/ZIstLN1UiWcfqKYFHscNs7xd4VXi7v6 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="382570711"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="382570711"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 00:31:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="701967410"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="701967410"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.32])
 by orsmga003.jf.intel.com with ESMTP; 06 Oct 2023 00:31:24 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri,  6 Oct 2023 12:58:31 +0530
Message-Id: <20231006072830.581487-1-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231005111040.578997-1-suraj.kandpal@intel.com>
References: <20231005111040.578997-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/ddi: Remove redundant intel_connector
 NULL check
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

Remove redundant intel_connector NULL check. Having it here just
creates further confusion and also the variable already gets
dereferenced before the aforementioned NULL check

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_ddi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
index 4668de45d6fe..9151d5add960 100644
--- a/drivers/gpu/drm/i915/display/intel_ddi.c
+++ b/drivers/gpu/drm/i915/display/intel_ddi.c
@@ -4333,7 +4333,7 @@ static int intel_hdmi_reset_link(struct intel_encoder *encoder,
 	u8 config;
 	int ret;
 
-	if (!connector || connector->base.status != connector_status_connected)
+	if (connector->base.status != connector_status_connected)
 		return 0;
 
 	ret = drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex,
-- 
2.25.1

