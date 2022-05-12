Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 530265252DC
	for <lists+intel-gfx@lfdr.de>; Thu, 12 May 2022 18:43:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 71916112A01;
	Thu, 12 May 2022 16:43:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDE881129EA
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 May 2022 16:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1652373787; x=1683909787;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Ot8OezlXcGI9H3PmIQ8778FAn/3O/yABuInbN3Zq+t0=;
 b=IAeec4UqkKYuj66xTJ9i6HNomxgbZN7wZOCl2BuiQdAyi2JjQKqYSPb3
 PnP8DrA/X2BytX0QJRNqdtJfpy+KK5mmJQEdbyxK3bkOAVPc+sr+LuC7W
 lYYD/w4XDpaFtAqVmKUyRTWfhQt8M19NGncfWx3B8WbtR7smAO8ybqvcs
 AV5ViJepuCddMo3Wk/HgeQeDbuePzefZYY0w55eHzSCjs4ZakanOGIm9z
 WwQC3LifZNsD59rhYiX9mJD3l+LVDjxSF5nzO84HeI44FJJ+JixRTjXme
 qdR6srTfsPxJmHGsFA4EVVOe2fG1T76/sj7FVmjFdqHhFMLRqiOsp0k5m A==;
X-IronPort-AV: E=McAfee;i="6400,9594,10345"; a="295306173"
X-IronPort-AV: E=Sophos;i="5.91,220,1647327600"; d="scan'208";a="295306173"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 09:16:45 -0700
X-IronPort-AV: E=Sophos;i="5.91,220,1647327600"; d="scan'208";a="594735498"
Received: from ksadlows-mobl.ger.corp.intel.com (HELO localhost)
 ([10.249.130.178])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2022 09:16:43 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Thu, 12 May 2022 19:16:38 +0300
Message-Id: <20220512161638.272601-1-jani.nikula@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH] drm/i915/audio: fix audio code enable/disable
 pipe logging
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
Cc: jani.nikula@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Need to use pipe_name(pipe) instead of pipe directly.

Fixes: 1f31e35f2e88 ("drm/i915/audio: unify audio codec enable/disable debug logging")
Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_audio.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_audio.c b/drivers/gpu/drm/i915/display/intel_audio.c
index 1c87bf66b092..f0f0dfce27ce 100644
--- a/drivers/gpu/drm/i915/display/intel_audio.c
+++ b/drivers/gpu/drm/i915/display/intel_audio.c
@@ -827,7 +827,7 @@ void intel_audio_codec_enable(struct intel_encoder *encoder,
 	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Enable audio codec on pipe %c, %u bytes ELD\n",
 		    connector->base.id, connector->name,
 		    encoder->base.base.id, encoder->base.name,
-		    pipe, drm_eld_size(connector->eld));
+		    pipe_name(pipe), drm_eld_size(connector->eld));
 
 	/* FIXME precompute the ELD in .compute_config() */
 	if (!connector->eld[0])
@@ -888,7 +888,7 @@ void intel_audio_codec_disable(struct intel_encoder *encoder,
 
 	drm_dbg_kms(&dev_priv->drm, "[CONNECTOR:%d:%s][ENCODER:%d:%s] Disable audio codec on pipe %c\n",
 		    connector->base.id, connector->name,
-		    encoder->base.base.id, encoder->base.name, pipe);
+		    encoder->base.base.id, encoder->base.name, pipe_name(pipe));
 
 	if (dev_priv->audio.funcs)
 		dev_priv->audio.funcs->audio_codec_disable(encoder,
-- 
2.30.2

