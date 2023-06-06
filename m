Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 07595724CDC
	for <lists+intel-gfx@lfdr.de>; Tue,  6 Jun 2023 21:15:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 547F310E3AC;
	Tue,  6 Jun 2023 19:15:55 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1523010E395
 for <intel-gfx@lists.freedesktop.org>; Tue,  6 Jun 2023 19:15:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686078954; x=1717614954;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=N7gj/u0UcuTaDBuKQqxJz21z/20uRFUBQL6yVHtYldw=;
 b=GHU3svo0J+TkL7RtSpa3ZaV6Y51UMHNIoffhqD54DUdaqtPPojTtmP7k
 bRhvD/Ubv8/3IhhXn8Qzf7ulmXn0kUwibn/+/LW8zLTKi1yCm/LGAnXRh
 v0+8tXcuJNcSmJlZyRFmYJEdoDW0hP7wMXSxgV0B4dfC6NV9Qww6Jq0G+
 n71rOSECJuy6UWz6AHDaiwxeNhIOKh3mSWbDYwE45iXIxsi3//3eaXTzA
 Z+vRKe7TbBRINIbyCOm3HBDZc4pZGAjfjuZEKlJKrBrMkXOgbYTpAii6T
 ZGvKzB4Zv4lBvYtDyjAVmFk9vtLOv9c8JQ9Ohjpp1M+ByCHdsDP8OX3uf w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="443146370"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="443146370"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2023 12:15:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10733"; a="709187151"
X-IronPort-AV: E=Sophos;i="6.00,221,1681196400"; d="scan'208";a="709187151"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga002.jf.intel.com with SMTP; 06 Jun 2023 12:15:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 06 Jun 2023 22:15:51 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue,  6 Jun 2023 22:15:00 +0300
Message-Id: <20230606191504.18099-16-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
References: <20230606191504.18099-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH v2 15/19] drm/i915: Introduce
 skl_watermark_max_latency()
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

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

The DSB code will want to know the maximum PkgC latency
it has to contend with. Add a helper to expose that
information.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/skl_watermark.c | 14 ++++++++++++++
 drivers/gpu/drm/i915/display/skl_watermark.h |  2 ++
 2 files changed, 16 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/drm/i915/display/skl_watermark.c
index d1245c847f1c..a31adbca9dbc 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.c
+++ b/drivers/gpu/drm/i915/display/skl_watermark.c
@@ -3719,3 +3719,17 @@ void skl_watermark_debugfs_register(struct drm_i915_private *i915)
 		debugfs_create_file("i915_sagv_status", 0444, minor->debugfs_root, i915,
 				    &intel_sagv_status_fops);
 }
+
+unsigned int skl_watermark_max_latency(struct drm_i915_private *i915)
+{
+	int level;
+
+	for (level = i915->display.wm.num_levels - 1; level >= 0; level--) {
+		unsigned int latency = skl_wm_latency(i915, level, NULL);
+
+		if (latency)
+			return latency;
+	}
+
+	return 0;
+}
diff --git a/drivers/gpu/drm/i915/display/skl_watermark.h b/drivers/gpu/drm/i915/display/skl_watermark.h
index f91a3d4ddc07..edb61e33df83 100644
--- a/drivers/gpu/drm/i915/display/skl_watermark.h
+++ b/drivers/gpu/drm/i915/display/skl_watermark.h
@@ -46,6 +46,8 @@ void skl_watermark_ipc_update(struct drm_i915_private *i915);
 bool skl_watermark_ipc_enabled(struct drm_i915_private *i915);
 void skl_watermark_debugfs_register(struct drm_i915_private *i915);
 
+unsigned int skl_watermark_max_latency(struct drm_i915_private *i915);
+
 void skl_wm_init(struct drm_i915_private *i915);
 
 struct intel_dbuf_state {
-- 
2.39.3

