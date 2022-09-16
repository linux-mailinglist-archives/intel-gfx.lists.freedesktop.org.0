Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B87E55BB14E
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Sep 2022 18:53:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D17810E4E1;
	Fri, 16 Sep 2022 16:53:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45A6A10E4E1
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Sep 2022 16:52:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663347160; x=1694883160;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=6ev/jng47FotZHMqfR3xDBK0BF8qZ58KLYFsfVRdQpM=;
 b=VCp8z4Kg+RcvFEI2BLncGdENYImv8oeZMxvRI+6ywKPpK7tletmBxDh9
 4vYBr6ObmzZC7kKkAIorlgou2606+kbR1P3alYPRH0aB90et6QqXhmDEN
 ypWFMLB2fDjjKXouhwm5pCQeSlPIfb/QwgT3pRJLomTxiMajtkzLPMIj3
 MmOn9mZkmrgIPCu+1QpZEJeq/3oHQJ0gjxZuzaXAz2TZZUVZzoYt8RzwJ
 DYEnxtHkD/0LzUiKZboCVsiGyaE9GR2ueP3vEE4IJGhS5L/b0yT6dMQQf
 fjPFGREKRcwWyLCd7IgedWd8WHkP2Rlc8gi3I66URnPiXsix5wsiUF7lf Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10472"; a="299025048"
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="299025048"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Sep 2022 09:52:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,320,1654585200"; d="scan'208";a="760113520"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga001.fm.intel.com with SMTP; 16 Sep 2022 09:52:13 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Sep 2022 19:52:12 +0300
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Sep 2022 19:52:06 +0300
Message-Id: <20220916165206.1499-3-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220916165206.1499-1-ville.syrjala@linux.intel.com>
References: <20220916165206.1499-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/3] drm/i915: Mark FBC B gone if pipe B is gone
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

If pipe B is fused off we also shouldn't have FBC B.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/intel_device_info.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
index 1434dc33cf49..fbefebc023f1 100644
--- a/drivers/gpu/drm/i915/intel_device_info.c
+++ b/drivers/gpu/drm/i915/intel_device_info.c
@@ -394,6 +394,7 @@ void intel_device_info_runtime_init(struct drm_i915_private *dev_priv)
 		if (dfsm & SKL_DFSM_PIPE_B_DISABLE) {
 			runtime->pipe_mask &= ~BIT(PIPE_B);
 			runtime->cpu_transcoder_mask &= ~BIT(TRANSCODER_B);
+			runtime->fbc_mask &= ~BIT(INTEL_FBC_B);
 		}
 		if (dfsm & SKL_DFSM_PIPE_C_DISABLE) {
 			runtime->pipe_mask &= ~BIT(PIPE_C);
-- 
2.35.1

