Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 760716E4DCA
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Apr 2023 17:56:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5FC5F10E418;
	Mon, 17 Apr 2023 15:56:44 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0152510E24D;
 Mon, 17 Apr 2023 15:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681747001; x=1713283001;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=v0q6qBk1finMRPc4VpbFT2NMst6/U62L6g6UmWOKdWk=;
 b=LcctRhNSGBegt0aZ8Ghen6acg0H1DDq8tNsUKocc6OZL9VFX+JE8JjBv
 BHOceXCZnNWjVoqwSHyvMqfT9Os4EaUOCIECzcp10hD5NRXP/pV+9juqW
 zQuCWeyRObl84HJXbyC4lxCWQMkWceg1GPWopuSQKQVJcfGaTbHjHX+2o
 iX7H8yU7GiaFUR7I1AlsDXHSKwNmXiwyLXapXBEHXbF42c5Kr0ppZP/J1
 5OYwVhrUFvkSI1veNv9jIpPLTC0wD5numVCFe+UQKqXdADyH7cF2vCED7
 e+9QwPEfclR/4zn/ddYuKi9AFFsi2UNS4AhP++pa9j0d4IasaAykwPV5d g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="372804657"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="372804657"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 08:56:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10683"; a="690718347"
X-IronPort-AV: E=Sophos;i="5.99,204,1677571200"; d="scan'208";a="690718347"
Received: from gtohallo-mobl.ger.corp.intel.com (HELO localhost.localdomain)
 ([10.213.232.210])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2023 08:56:34 -0700
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
To: Intel-gfx@lists.freedesktop.org,
	dri-devel@lists.freedesktop.org
Date: Mon, 17 Apr 2023 16:56:12 +0100
Message-Id: <20230417155613.4143258-6-tvrtko.ursulin@linux.intel.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20230417155613.4143258-1-tvrtko.ursulin@linux.intel.com>
References: <20230417155613.4143258-1-tvrtko.ursulin@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [RFC 5/6] drm/msm: Add basic memory stats
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
Cc: Rob Clark <robdclark@chromium.org>, Daniel Vetter <daniel.vetter@ffwll.ch>,
 Alex Deucher <alexdeucher@gmail.com>,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Use DRM helpers for implementing basic memory stats.

Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Rob Clark <robdclark@chromium.org>
---
 drivers/gpu/drm/msm/msm_drv.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/msm/msm_drv.c b/drivers/gpu/drm/msm/msm_drv.c
index 060c7689a739..7662103b5999 100644
--- a/drivers/gpu/drm/msm/msm_drv.c
+++ b/drivers/gpu/drm/msm/msm_drv.c
@@ -1090,6 +1090,10 @@ static const struct drm_driver msm_driver = {
 	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
 	.gem_prime_import_sg_table = msm_gem_prime_import_sg_table,
 	.gem_prime_mmap     = msm_gem_prime_mmap,
+#ifdef CONFIG_PROC_FS
+	.query_fdinfo_memory_regions = drm_query_fdinfo_system_region,
+	.query_fdinfo_memory_stats = drm_query_fdinfo_system_memory,
+#endif
 #ifdef CONFIG_DEBUG_FS
 	.debugfs_init       = msm_debugfs_init,
 #endif
-- 
2.37.2

