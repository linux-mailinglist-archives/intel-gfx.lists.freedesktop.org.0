Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGBOJz3Cw2kOuAQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:45 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7511C32391B
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:45 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F402D10E877;
	Wed, 25 Mar 2026 11:08:43 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jc2CFKIK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDE5610E877;
 Wed, 25 Mar 2026 11:08:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774436923; x=1805972923;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KgBszGwZZAYZcHealIzxCSUCoChgikF7iKTjT4XdLjQ=;
 b=jc2CFKIKLsfKThKXQ7mDVP+inQGsL5Xevn4d92wEwaW8kgEnSct99fft
 yDluiJ3BJllXm47t9FpsgiyE33W3TGGYHjvB1vuoeAKatcHYHQ6vSrVQl
 BqXN+SKqJaIDR/xsVqx9+GP4L/Dab/gegXamRxVtFDyMWYK90o0McKYO5
 0wSOALnIo+pw2nqzuX8MPoBoXJvRL6KtIsbVyoEVLILPbHlK9ygV79Xrs
 iZJxBgrRjfAmfEqq0umTTtGnc9YfM+x6d2CT2/QMsajTfepcMM3nb/6Gq
 h4D/gvnxg5Xavth0QBIYtQdf+CMIIw7r+iXEui+z8/TjtwCW4x6XUDDOT A==;
X-CSE-ConnectionGUID: WkqXvvHjTtmHmHvti3xK8Q==
X-CSE-MsgGUID: /jC+Oav/RZOySl1Je0SImg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="93047538"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="93047538"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 04:08:43 -0700
X-CSE-ConnectionGUID: VwGTNZhoQEifURAYqos/bg==
X-CSE-MsgGUID: lndjndZ7TQ2rSeiKGXM/cA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="219798430"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 25 Mar 2026 04:08:41 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 21/26] drm/i915/writeback: Configure WD_SURF register
Date: Wed, 25 Mar 2026 16:37:39 +0530
Message-Id: <20260325110744.1096786-22-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325110744.1096786-1-suraj.kandpal@intel.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
MIME-Version: 1.0
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
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]
X-Rspamd-Queue-Id: 7511C32391B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Get the ggtt_offset of the drm_framebuffer which needs to be
written to the surface base address bits of WD_SURF register.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_writeback.c     | 4 ++++
 drivers/gpu/drm/i915/display/intel_writeback_reg.h | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index e2f7c46015d2..54e74450e080 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -267,6 +267,7 @@ static void intel_writeback_capture(struct intel_atomic_state *state,
 	const struct drm_display_mode *adjusted_mode =
 		&crtc_state->hw.adjusted_mode;
 	struct drm_writeback_job *wb_job = conn_state->writeback_job;
+	struct intel_writeback_job *job = conn_state->writeback_job->priv;
 	enum transcoder trans = wb_conn->trans;
 	u32 val = 0;
 	int bpp;
@@ -275,6 +276,9 @@ static void intel_writeback_capture(struct intel_atomic_state *state,
 	val = DIV_ROUND_UP((adjusted_mode->hdisplay * bpp), 64);
 	intel_de_write(display, WD_STRIDE(trans), WD_STRIDE_VAL(val));
 
+	val = intel_get_ggtt_addr(job->vma);
+	intel_de_write(display, WD_SURF(trans), val);
+
 	val = 0;
 	val |= START_TRIGGER_FRAME | WD_FRAME_NUMBER(wb_conn->frame_num);
 	intel_de_rmw(display, WD_TRANS_FUNC_CTL(trans),
diff --git a/drivers/gpu/drm/i915/display/intel_writeback_reg.h b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
index f526af0f9aff..403f9b64015b 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback_reg.h
+++ b/drivers/gpu/drm/i915/display/intel_writeback_reg.h
@@ -81,6 +81,8 @@
 #define WD_SURF(tc)			_MMIO_WD(tc,\
 					_WD_SURF_0,\
 					_WD_SURF_1)
+#define  WD_SURF_ADDR_MASK		REG_GENMASK(31, 12)
+#define  WD_SURF_ADDR(val)		REG_FIELD_PREP(WD_SURF_ADDR_MASK, val)
 
 #define _WD_IMR_0			0x6e560
 #define _WD_IMR_1			0x6ed60
-- 
2.34.1

