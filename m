Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5034664E544
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Dec 2022 01:39:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B512410E5B2;
	Fri, 16 Dec 2022 00:38:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A818210E5AC
 for <intel-gfx@lists.freedesktop.org>; Fri, 16 Dec 2022 00:38:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671151122; x=1702687122;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2PTNxboDDgWmmcqVhVMOeLH0qSTVFlV675aRYXm1rq0=;
 b=J642uYFVIQqOpYWV2kWWZMqGUjVijlYDQtYzDoRmB9Qqh8R9WCAwUK+L
 GQeankm9B9mAZ2FFiQB12fT7lm5VOEYbjnYdbEFG/g1tXk/KiLzzUzvao
 Pb3FcvaNHCG3272SyIKPVU5IOpWGOV6Jyr28KPJu1aQvWzyW5UhKMQUrM
 upy5Iss98EX1zN11itDPAcQbi3gCYuR8NVyBWsHSRj4hXdKWPQluUpheJ
 hh8wtRd510JQRDaq29lAkdlUemOcPA/GGrKXbiZzJWPtQSG8O4GTod0k/
 qus2gkF2FkRg9IiT4dOGRNxGCMwpDbt3dqFm3gW67qV9O1dbNFFcteBvl g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="405103865"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="405103865"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Dec 2022 16:38:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10562"; a="643100222"
X-IronPort-AV: E=Sophos;i="5.96,248,1665471600"; d="scan'208";a="643100222"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by orsmga007.jf.intel.com with SMTP; 15 Dec 2022 16:38:40 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 16 Dec 2022 02:38:39 +0200
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Date: Fri, 16 Dec 2022 02:38:06 +0200
Message-Id: <20221216003810.13338-10-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.37.4
In-Reply-To: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
References: <20221216003810.13338-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 09/13] drm/i915/dsb: Introduce
 intel_dsb_align_tail()
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

Move the DSB tail cacheline alignment to a helper. No need to pollute
the caller with mundane details like this.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/i915/display/intel_dsb.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
index fa4b808a8134..636c57767f97 100644
--- a/drivers/gpu/drm/i915/display/intel_dsb.c
+++ b/drivers/gpu/drm/i915/display/intel_dsb.c
@@ -187,6 +187,22 @@ void intel_dsb_reg_write(struct intel_dsb *dsb,
 	}
 }
 
+static u32 intel_dsb_align_tail(struct intel_dsb *dsb)
+{
+	u32 aligned_tail, tail;
+
+	tail = dsb->free_pos * 4;
+	aligned_tail = ALIGN(tail, CACHELINE_BYTES);
+
+	if (aligned_tail > tail)
+		memset(&dsb->cmd_buf[dsb->free_pos], 0,
+		       aligned_tail - tail);
+
+	dsb->free_pos = aligned_tail / 4;
+
+	return aligned_tail;
+}
+
 /**
  * intel_dsb_commit() - Trigger workload execution of DSB.
  * @dsb: DSB context
@@ -200,14 +216,10 @@ void intel_dsb_commit(struct intel_dsb *dsb)
 	enum pipe pipe = crtc->pipe;
 	u32 tail;
 
-	if (!(dsb && dsb->free_pos))
+	tail = intel_dsb_align_tail(dsb);
+	if (tail == 0)
 		return;
 
-	tail = ALIGN(dsb->free_pos * 4, CACHELINE_BYTES);
-	if (tail > dsb->free_pos * 4)
-		memset(&dsb->cmd_buf[dsb->free_pos], 0,
-		       (tail - dsb->free_pos * 4));
-
 	if (is_dsb_busy(dev_priv, pipe, dsb->id)) {
 		drm_err(&dev_priv->drm, "DSB engine is busy.\n");
 		goto reset;
-- 
2.37.4

