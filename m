Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD90559A10
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Jun 2022 15:04:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C8E7710E12B;
	Fri, 24 Jun 2022 13:04:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 78D6A10E12B
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Jun 2022 13:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656075870; x=1687611870;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=osY20LWSpBnvjqOSag5yBOsT/wAhBZecxfnYyaFEacI=;
 b=e0r4ZkmQIIX3byMJ7St4GwrBEMlKaRNh2r7BNGmjffxnDwvMTiVDppL6
 jp6KgzCKa2PYMXLChTPVe4g1c+VzE0zkcWlOkaVLeqCjE+yQv7K+g02eq
 H1FACZaciWOl9T6IvoKye5SEwQd6gUsOWHgvTOYd0xXCnYaYUTnfMhKQO
 SdxF7y+2f3AmQwxL7GXnC8l6dt2aLQrRzAX5Ak+cmHJzKKRRtOxphljvV
 GvXdjDxlARB5ERl5c9qQyt7Ovu+WJcwqwcmlg1ZUwlMj2Lw62A/jtNCWd
 eZe+irQZ9DSWLEQSFtATFnCxrANFY47r4FlZajKv/DWj/J6Iq0w7/amt8 A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10387"; a="306462075"
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="306462075"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 06:04:20 -0700
X-IronPort-AV: E=Sophos;i="5.92,218,1650956400"; d="scan'208";a="656637948"
Received: from josouza-mobl2.fso.intel.com ([10.230.19.134])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2022 06:04:19 -0700
From: =?UTF-8?q?Jos=C3=A9=20Roberto=20de=20Souza?= <jose.souza@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 24 Jun 2022 06:04:06 -0700
Message-Id: <20220624130406.17996-1-jose.souza@intel.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm: i915: fix a possible refcount leak in
 intel_dp_add_mst_connector()
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
Cc: Hangyu Hua <hbh25y@gmail.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Hangyu Hua <hbh25y@gmail.com>

If drm_connector_init fails, intel_connector_free will be called to take
care of proper free. So it is necessary to drop the refcount of port
before intel_connector_free.

Fixes: 091a4f91942a ("drm/i915: Handle drm-layer errors in intel_dp_add_mst_connector")
Signed-off-by: Hangyu Hua <hbh25y@gmail.com>
Reviewed-by: José Roberto de Souza <jose.souza@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp_mst.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
index 061b277e5ce78..14d2a64193b2d 100644
--- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
+++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
@@ -839,6 +839,7 @@ static struct drm_connector *intel_dp_add_mst_connector(struct drm_dp_mst_topolo
 	ret = drm_connector_init(dev, connector, &intel_dp_mst_connector_funcs,
 				 DRM_MODE_CONNECTOR_DisplayPort);
 	if (ret) {
+		drm_dp_mst_put_port_malloc(port);
 		intel_connector_free(intel_connector);
 		return NULL;
 	}
-- 
2.36.1

