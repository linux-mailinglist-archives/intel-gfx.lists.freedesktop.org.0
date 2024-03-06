Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECC28734AB
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Mar 2024 11:45:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 77D49112C7A;
	Wed,  6 Mar 2024 10:45:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PyRl+9BO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F1FCB112C7A
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Mar 2024 10:45:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709721928; x=1741257928;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8bqMvfSktuw8X4NC6aRNOlnIwmYeucAWsaQxKHC42jw=;
 b=PyRl+9BOiVuhuKQbDdX1lxsDpaEst/GUmltLRUU0EnheqUj1JAan9mu9
 1iGL7W+H7JFwuef8GVFc8Cn0ENMGSxP6ajK8ZSy9P/LYLq2Vj6A90lYvt
 cvEF36SL+Wv/vcyRF+cY/A7X4vmfZGLyur1crVdTk4ZzKvenVX7SuE3xZ
 pf7dI5U7Ux/fSAoSEiBCbsfHR1VgaJ+W1N10AhpGA5+tVIFacvlihzK8e
 TkWvpDYzF2aQt+9lNQnWFO57/TnPJaAwhVLfSiazYEDR7kpB/8zfaO+iZ
 NvBN38kTT1iKsxmbxL1VQz/njJoDhgub98kDrh9S29K+aL91GsL3rVxUk A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11004"; a="26794716"
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="26794716"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 02:45:28 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,208,1705392000"; d="scan'208";a="14206977"
Received: from bdallmer-mobl1.ger.corp.intel.com (HELO
 jhogande-mobl1.intel.com) ([10.251.223.229])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2024 02:45:26 -0800
From: =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Animesh Manna <animesh.manna@intel.com>,
 Arun R Murthy <arun.r.murthy@intel.com>,
 =?UTF-8?q?Jouni=20H=C3=B6gander?= <jouni.hogander@intel.com>
Subject: [PATCH v3 1/6] drm/display: Add missing aux less alpm wake related
 bits
Date: Wed,  6 Mar 2024 12:45:08 +0200
Message-Id: <20240306104513.2129442-2-jouni.hogander@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240306104513.2129442-1-jouni.hogander@intel.com>
References: <20240306104513.2129442-1-jouni.hogander@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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

eDP1.5 adds some more bits into DP_RECEIVER_ALPM_CAP and
DP_RECEIVER_ALPM_CONFIG registers. Add definitions for these.

Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
---
 include/drm/display/drm_dp.h | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/include/drm/display/drm_dp.h b/include/drm/display/drm_dp.h
index 4891bd916d26..651d117d636d 100644
--- a/include/drm/display/drm_dp.h
+++ b/include/drm/display/drm_dp.h
@@ -232,6 +232,8 @@
 
 #define DP_RECEIVER_ALPM_CAP		    0x02e   /* eDP 1.4 */
 # define DP_ALPM_CAP			    (1 << 0)
+# define DP_ALPM_PM_STATE_2A_SUPPORT	    (1 << 1) /* eDP 1.5 */
+# define DP_ALPM_AUX_LESS_CAP		    (1 << 2) /* eDP 1.5 */
 
 #define DP_SINK_DEVICE_AUX_FRAME_SYNC_CAP   0x02f   /* eDP 1.4 */
 # define DP_AUX_FRAME_SYNC_CAP		    (1 << 0)
@@ -677,7 +679,8 @@
 
 #define DP_RECEIVER_ALPM_CONFIG		    0x116   /* eDP 1.4 */
 # define DP_ALPM_ENABLE			    (1 << 0)
-# define DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE  (1 << 1)
+# define DP_ALPM_LOCK_ERROR_IRQ_HPD_ENABLE  (1 << 1) /* eDP 1.5 */
+# define DP_ALPM_MODE_AUX_LESS		    (1 << 2) /* eDP 1.5 */
 
 #define DP_SINK_DEVICE_AUX_FRAME_SYNC_CONF  0x117   /* eDP 1.4 */
 # define DP_AUX_FRAME_SYNC_ENABLE	    (1 << 0)
-- 
2.34.1

