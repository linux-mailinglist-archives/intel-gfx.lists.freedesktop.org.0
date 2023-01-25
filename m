Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE65867B9E9
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Jan 2023 19:52:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CF4C10E816;
	Wed, 25 Jan 2023 18:52:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFD3E10E813
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Jan 2023 18:52:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674672767; x=1706208767;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=w1/lLEf79kfUOXC2MKtATZ6BlcwWvHYw29NT8G0L1GA=;
 b=D87ABULMJ34K1ldMNlMG7jZj8/6MLd5jPLSLH6nJWy1ByzBZY4A6Ut5s
 WBg0M0NVDv1ZCeQSfm2ZCetXye+NI3RlcKRBElLEDtDL/o7QcSkeKuLSH
 OT7L4110PgRTFewt2qY2+zVj1dgaa7WEW9AFE1OHuwUZR1rmdEAvm4TTX
 u7NqmKDufEIKjKCA03+BnIN7kyp07tsNmZ4tPvGol4RKKEXPJhe/vEQl4
 0O7FQe9FXp5zxjtw3wYdstGam/rlf/V0EpbVCacyOe9gDdCD/8fspEuvi
 OeaOFHQJx3IzzBVvd0oNEnfoK5MMXPCTG3AdjWhj8yQXjCd1ffnUEG7JM w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="326671509"
X-IronPort-AV: E=Sophos;i="5.97,246,1669104000"; d="scan'208";a="326671509"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2023 10:52:47 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10601"; a="655912167"
X-IronPort-AV: E=Sophos;i="5.97,246,1669104000"; d="scan'208";a="655912167"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.55])
 by orsmga007.jf.intel.com with SMTP; 25 Jan 2023 10:52:45 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Jan 2023 20:52:44 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Wed, 25 Jan 2023 20:52:32 +0200
Message-Id: <20230125185234.21599-4-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230125185234.21599-1-ville.syrjala@linux.intel.com>
References: <20230125185234.21599-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 3/5] drm/i915: Dump PGTBL_ER on gen2/3/4 error
 interrupt
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

PGTBL_ER contains the individual reasons for the page table
error interrupt. Dump it out.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/i915_irq.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/i915_irq.c b/drivers/gpu/drm/i915/i915_irq.c
index b45d426a5bd5..0e90c348175e 100644
--- a/drivers/gpu/drm/i915/i915_irq.c
+++ b/drivers/gpu/drm/i915/i915_irq.c
@@ -3539,6 +3539,9 @@ static void i8xx_error_irq_handler(struct drm_i915_private *dev_priv,
 	if (eir_stuck)
 		drm_dbg(&dev_priv->drm, "EIR stuck: 0x%04x, masked\n",
 			eir_stuck);
+
+	drm_dbg(&dev_priv->drm, "PGTBL_ER: 0x%08x\n",
+		intel_uncore_read(&dev_priv->uncore, PGTBL_ER));
 }
 
 static void i9xx_error_irq_ack(struct drm_i915_private *dev_priv,
@@ -3576,6 +3579,9 @@ static void i9xx_error_irq_handler(struct drm_i915_private *dev_priv,
 	if (eir_stuck)
 		drm_dbg(&dev_priv->drm, "EIR stuck: 0x%08x, masked\n",
 			eir_stuck);
+
+	drm_dbg(&dev_priv->drm, "PGTBL_ER: 0x%08x\n",
+		intel_uncore_read(&dev_priv->uncore, PGTBL_ER));
 }
 
 static irqreturn_t i8xx_irq_handler(int irq, void *arg)
-- 
2.39.1

