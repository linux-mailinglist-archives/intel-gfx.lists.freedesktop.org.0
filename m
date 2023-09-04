Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EE8A791089
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Sep 2023 06:17:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 992F010E28A;
	Mon,  4 Sep 2023 04:16:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 53B3B10E287;
 Mon,  4 Sep 2023 04:16:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693801007; x=1725337007;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=q0FNLZFCv31DhObWokrUuGARIHxCY7P9GHenMrzVxMc=;
 b=kokwkvQrV2ngKdK8ARFV8ZB6zynTb2oMrLWVU2UQP8subC4XQersX9iL
 LEUWiosCTX+TiRBcAonhwMsD8NBMOfRodHDMoLCv8MQx2C8PmYmTH+CrE
 D8skfsFIaPavycc8TDeeT0LFNM6+Skv2XwA2CdTJfuTGVizPyINxRVMcD
 lqi7nCVnjVuT0tWrWylxoKu3tdTaiHfbTB/fhLJgy2yTui3Q5ly6hj3ay
 UD4bHYgMJIzPg7B/DBaQ2TpSu/DsA4ak4eGpJ60diyji65hppEpZc4WFQ
 /Gs7FIpEEVeOLSwIACjJVku/S5Uc4X+roamqI5liPd7h76I3Fj/azvX42 Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="361531448"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="361531448"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Sep 2023 21:16:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10822"; a="883893548"
X-IronPort-AV: E=Sophos;i="6.02,225,1688454000"; d="scan'208";a="883893548"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by fmsmga001.fm.intel.com with SMTP; 03 Sep 2023 21:16:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 04 Sep 2023 07:16:43 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Mon,  4 Sep 2023 07:16:40 +0300
Message-ID: <20230904041640.31297-2-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230904041640.31297-1-ville.syrjala@linux.intel.com>
References: <20230904041640.31297-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 2/2] drm/vblank: Warn when silently
 cancelling vblank works
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
Cc: dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

Silently cancelling vblank works is a bit rude, especially
if said works do any resource management (eg. free memory).
WARN if we ever hit this.

TODO: Maybe drm_crtc_vblank_off() should wait for any
pending work to reach its target vblank before actually
doing anything drastic?

Cc: Lyude Paul <lyude@redhat.com>
Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/drm_vblank_work.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/drm_vblank_work.c b/drivers/gpu/drm/drm_vblank_work.c
index bd481fdd6b87..43cd5c0f4f6f 100644
--- a/drivers/gpu/drm/drm_vblank_work.c
+++ b/drivers/gpu/drm/drm_vblank_work.c
@@ -73,6 +73,9 @@ void drm_vblank_cancel_pending_works(struct drm_vblank_crtc *vblank)
 
 	assert_spin_locked(&vblank->dev->event_lock);
 
+	drm_WARN_ONCE(vblank->dev, !list_empty(&vblank->pending_work),
+		      "Cancelling pending vblank works!\n");
+
 	list_for_each_entry_safe(work, next, &vblank->pending_work, node) {
 		list_del_init(&work->node);
 		drm_vblank_put(vblank->dev, vblank->pipe);
-- 
2.41.0

