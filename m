Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2438A322D9C
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Feb 2021 16:35:29 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 197796E839;
	Tue, 23 Feb 2021 15:35:27 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B0626E9E0
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Feb 2021 15:35:26 +0000 (UTC)
IronPort-SDR: 5qFZ7kRUMSHO0PiCq0yNhv2LAZbhhqDbyB2FgYvETfL1iLEtN+P8SnnwQiOwnA4Z9wf9yScFtp
 7masP1dV2XKg==
X-IronPort-AV: E=McAfee;i="6000,8403,9903"; a="269794005"
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="269794005"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 07:35:25 -0800
IronPort-SDR: Pw8aOu1/yqKADQVmtrjkcb7E7Ik2/f5RCKBKwjW8IOFX0g4rbji+iaLVv+iumedwyfCc7KBKTu
 GreZW0SBOrxg==
X-IronPort-AV: E=Sophos;i="5.81,200,1610438400"; d="scan'208";a="390933473"
Received: from kcushion-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.249.40.63])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Feb 2021 07:35:23 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Tue, 23 Feb 2021 17:35:06 +0200
Message-Id: <7fcf7557fc3c3829dac04637c12fea7c58951da2.1614094093.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <cover.1614094093.git.jani.nikula@intel.com>
References: <cover.1614094093.git.jani.nikula@intel.com>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH v2 1/7] drm/i915: remove unused ADLS_REVID_*
 macros
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
Cc: jani.nikula@intel.com, lucas.demarchi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

It's the adls_revid_step_tbl array indexes that matter.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/i915_drv.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f8413b3b9da8..4b457a3c658f 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -1587,12 +1587,6 @@ tgl_stepping_get(struct drm_i915_private *dev_priv)
 #define IS_DG1_REVID(p, since, until) \
 	(IS_DG1(p) && IS_REVID(p, since, until))
 
-#define ADLS_REVID_A0		0x0
-#define ADLS_REVID_A2		0x1
-#define ADLS_REVID_B0		0x4
-#define ADLS_REVID_G0		0x8
-#define ADLS_REVID_C0		0xC /*Same as H0 ADLS SOC stepping*/
-
 #define IS_ADLS_DISP_STEPPING(p, since, until) \
 	(IS_ALDERLAKE_S(p) && \
 	 tgl_stepping_get(p)->disp_stepping >= (since) && \
-- 
2.20.1

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
