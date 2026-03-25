Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wOEeISXCw2n6twQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:21 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 581F63238AC
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 12:08:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA0F710E862;
	Wed, 25 Mar 2026 11:08:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cERx76jV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 90C9F10E854;
 Wed, 25 Mar 2026 11:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774436895; x=1805972895;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cdmOICKFqJo5FArksuTrNoGoknld2fYTqkl37PhXk4A=;
 b=cERx76jVEJ8p85MSwM+o0jZP3eT7DBaY1xWgdW1PU5Jv4UFyzrNVxRdD
 HyC6lE/uDm/hkeKUANv0rbCKxR2I6ARypPC/nkfNKy6OeyFFnRD9Q4guD
 CK4IfJhj4X0e6HlCzhNUv6Ev7iP6ffBS+OEkeX/zJW0EcaXcNxeVahZ5I
 Pt5yB8ADHZcn6hnNeKXOTOrHfxB14UQ1Pg3BNdkfC6IFCfhE4IY16xW6Q
 KSRexbSHi3pn+4eSCAwFm60K0ir1+Ta4+OoZ9ezqPrI/+QrT27vlLF4SF
 YW9ZH3A7ea1BM/Bh1cGSyPUO/eipeoLuMUf/ZzUIm5drlJPpMH2daJS/L w==;
X-CSE-ConnectionGUID: GIFhKK23TfW+03SuqFHhtg==
X-CSE-MsgGUID: 17TAhZl0Sl+PKaHkwri0pg==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="93047516"
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="93047516"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 04:08:15 -0700
X-CSE-ConnectionGUID: sKakyVafSW+fn5CwItv+pA==
X-CSE-MsgGUID: zTnH6iUUTYWcUTwJOxyGtw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,140,1770624000"; d="scan'208";a="219798361"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by fmviesa006.fm.intel.com with ESMTP; 25 Mar 2026 04:08:13 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v3 10/26] drm/i915/writeback: Add private structure for
 writeback job
Date: Wed, 25 Mar 2026 16:37:28 +0530
Message-Id: <20260325110744.1096786-11-suraj.kandpal@intel.com>
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
X-Rspamd-Queue-Id: 581F63238AC
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Create intel_writeback_job to track drm_writback_job and other structure
we might need to complete the writeback job.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_writeback.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_writeback.c b/drivers/gpu/drm/i915/display/intel_writeback.c
index 1df04538d48c..02c61dfcacba 100644
--- a/drivers/gpu/drm/i915/display/intel_writeback.c
+++ b/drivers/gpu/drm/i915/display/intel_writeback.c
@@ -24,10 +24,17 @@
 struct intel_writeback_connector {
 	struct intel_connector connector;
 	struct intel_encoder encoder;
+	struct intel_writeback_job *job;
 	enum transcoder trans;
 	int frame_num;
 };
 
+struct intel_writeback_job {
+	struct drm_framebuffer *fb;
+	struct drm_writeback_connector *wb_connector;
+	struct i915_vma *vma;
+};
+
 static const u32 writeback_formats[] = {
 	DRM_FORMAT_XYUV8888,
 	DRM_FORMAT_YUYV,
-- 
2.34.1

