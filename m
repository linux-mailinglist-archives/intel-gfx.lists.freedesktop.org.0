Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D432349916
	for <lists+intel-gfx@lfdr.de>; Thu, 25 Mar 2021 19:08:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1E5626EE05;
	Thu, 25 Mar 2021 18:07:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AC11A6EE1E
 for <intel-gfx@lists.freedesktop.org>; Thu, 25 Mar 2021 18:07:35 +0000 (UTC)
IronPort-SDR: 5VuQB25HAF6mT7ZCh4TXpQ3hFPUmoEisP4bBmXMUG00HrfkONRCsyv5KJjpwlygRidm7pz5J+h
 +Sjjcap/SZTQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9934"; a="178112568"
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="178112568"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:35 -0700
IronPort-SDR: wjoMa4rzxOrM74kHhxHmWre9Kbf6YXNMdIy6/oF7nnUpd7ngLFY05QZZvfu/4hAHWR0YtmeMY/
 PdDjajPDXY+w==
X-IronPort-AV: E=Sophos;i="5.81,278,1610438400"; d="scan'208";a="453176732"
Received: from mdroper-desk1.fm.intel.com ([10.1.27.168])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2021 11:07:35 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 25 Mar 2021 11:07:11 -0700
Message-Id: <20210325180720.401410-42-matthew.d.roper@intel.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20210325180720.401410-1-matthew.d.roper@intel.com>
References: <20210325180720.401410-1-matthew.d.roper@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 41/50] drm/i915/bigjoiner: Mode validation
 with uncompressed pipe joiner
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
Cc: me@freedesktop.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Animesh Manna <animesh.manna@intel.com>

No need for checking dsc flag for uncompressed pipe joiner mode
validation.

Cc: Manasi Navare <manasi.d.navare@intel.com>
Signed-off-by: Animesh Manna <animesh.manna@intel.com>
Signed-off-by: Clinton Taylor <Clinton.A.Taylor@intel.com>
Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
---
 drivers/gpu/drm/i915/display/intel_dp.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
index 57a1868475ae..ab9b36a14809 100644
--- a/drivers/gpu/drm/i915/display/intel_dp.c
+++ b/drivers/gpu/drm/i915/display/intel_dp.c
@@ -817,8 +817,11 @@ intel_dp_mode_valid(struct drm_connector *connector,
 		dsc = dsc_max_output_bpp && dsc_slice_count;
 	}
 
-	/* big joiner configuration needs DSC */
-	if (bigjoiner && !dsc)
+	/*
+	 * Big joiner configuration needs DSC for TGL which is not true for
+	 * ADLP where uncompressed joiner is supported.
+	 */
+	if (!(DISPLAY_VER(dev_priv) == 13) && bigjoiner && !dsc)
 		return MODE_CLOCK_HIGH;
 
 	if (mode_rate > max_rate && !dsc)
-- 
2.25.4

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
