Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YPUeE5uTGWrVxggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:24:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 21F79602D13
	for <lists+intel-gfx@lfdr.de>; Fri, 29 May 2026 15:24:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A414210FF1B;
	Fri, 29 May 2026 13:24:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from exchange.fintech.ru (exchange.fintech.ru [195.54.195.159])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F8E110FF1A;
 Fri, 29 May 2026 13:24:37 +0000 (UTC)
Received: from Ex16-01.fintech.ru (10.0.10.18) by exchange.fintech.ru
 (195.54.195.159) with Microsoft SMTP Server (TLS) id 14.3.498.0; Fri, 29 May
 2026 16:24:35 +0300
Received: from localhost (10.0.253.153) by Ex16-01.fintech.ru (10.0.10.18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4; Fri, 29 May
 2026 16:24:34 +0300
From: Nikita Zhandarovich <n.zhandarovich@fintech.ru>
To: Jani Nikula <jani.nikula@linux.intel.com>, Joonas Lahtinen
 <joonas.lahtinen@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Nikita Zhandarovich <n.zhandarovich@fintech.ru>, Zhenyu Wang
 <zhenyuw.linux@gmail.com>, Zhi Wang <zhi.wang.linux@gmail.com>, "Tvrtko
 Ursulin" <tursulin@ursulin.net>, David Airlie <airlied@gmail.com>, "Simona
 Vetter" <simona@ffwll.ch>, <intel-gfx@lists.freedesktop.org>,
 <dri-devel@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
 <lvc-project@linuxtesting.org>
Subject: [PATCH] drm/i915/gvt: validate LRCA-derived guest context range
Date: Fri, 29 May 2026 16:24:27 +0300
Message-ID: <20260529132430.1636603-1-n.zhandarovich@fintech.ru>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.0.253.153]
X-ClientProxiedBy: Ex16-02.fintech.ru (10.0.10.19) To Ex16-01.fintech.ru
 (10.0.10.18)
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
X-Spamd-Result: default: False [2.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[fintech.ru];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[n.zhandarovich@fintech.ru,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[fintech.ru,gmail.com,ursulin.net,ffwll.ch,lists.freedesktop.org,vger.kernel.org,linuxtesting.org];
	HAS_XOIP(0.00)[];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.848];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[fintech.ru:mid,fintech.ru:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Queue-Id: 21F79602D13
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The GVT execlist context handling code derives GGTT page addresses from
desc->lrca in several places:
 - intel_vgpu_create_workload()
 - populate_shadow_context()
 - update_guest_context()

These paths translate addresses based on desc->lrca + page_index, but do
not first verify that the referenced guest context range fits in 32-bit
GMA space.

If desc->lrca is close enough (0xFFFFE, for instance) to the top
encodable page value, the page addition can exceed the representable
32-bit GMA range before the value is shifted and truncated for address
translation.

Fix this by validating the full LRCA-derived context range once during
workload creation, based on the engine context size, and reject invalid
descriptors before any GPA translation is attempted.

Found by Linux Verification Center (linuxtesting.org) with static
analysis tool SVACE.

Fixes: 28c4c6ca7f79 ("drm/i915/gvt: vGPU workload submission")
Signed-off-by: Nikita Zhandarovich <n.zhandarovich@fintech.ru>
---
 drivers/gpu/drm/i915/gvt/scheduler.c | 37 ++++++++++++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
index 15fdd514ca83..b2c028396093 100644
--- a/drivers/gpu/drm/i915/gvt/scheduler.c
+++ b/drivers/gpu/drm/i915/gvt/scheduler.c
@@ -68,6 +68,37 @@ static void set_context_pdp_root_pointer(
 		ring_context->pdps[i].val = pdp[7 - i];
 }
 
+static unsigned long
+intel_vgpu_context_page_num(struct intel_vgpu *vgpu,
+			    const struct intel_engine_cs *engine)
+{
+	unsigned long context_page_num;
+
+	context_page_num = engine->context_size >> PAGE_SHIFT;
+
+	if (IS_BROADWELL(vgpu->gvt->gt->i915) && engine->id == RCS0)
+		context_page_num = 19;
+
+	return context_page_num;
+}
+
+static bool
+intel_vgpu_lrca_range_valid(struct intel_vgpu *vgpu,
+			    const struct intel_engine_cs *engine,
+			    u32 lrca)
+{
+	unsigned long context_page_num;
+	u32 max_lrca;
+
+	context_page_num = intel_vgpu_context_page_num(vgpu, engine);
+	if (!context_page_num)
+		return false;
+
+	max_lrca = (U32_MAX >> I915_GTT_PAGE_SHIFT) - (context_page_num - 1);
+
+	return lrca <= max_lrca;
+}
+
 static void update_shadow_pdps(struct intel_vgpu_workload *workload)
 {
 	struct execlist_ring_context *shadow_ring_context;
@@ -1646,6 +1677,12 @@ intel_vgpu_create_workload(struct intel_vgpu *vgpu,
 	u32 guest_head;
 	int ret;
 
+	if (!intel_vgpu_lrca_range_valid(vgpu, engine, desc->lrca)) {
+		gvt_vgpu_err("invalid guest context LRCA: 0x%x\n",
+			     desc->lrca);
+		return ERR_PTR(-EINVAL);
+	}
+
 	ring_context_gpa = intel_vgpu_gma_to_gpa(vgpu->gtt.ggtt_mm,
 			(u32)((desc->lrca + 1) << I915_GTT_PAGE_SHIFT));
 	if (ring_context_gpa == INTEL_GVT_INVALID_ADDR) {
