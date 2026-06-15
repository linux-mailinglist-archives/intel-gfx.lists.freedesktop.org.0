Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id GpBxCz5eMGrISAUAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:19:10 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B8119689C37
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Jun 2026 22:19:09 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=lankhorst.se header.s=default header.b=D++8sIpY;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=lankhorst.se
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A420B10E68F;
	Mon, 15 Jun 2026 20:18:50 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C802F10E625;
 Mon, 15 Jun 2026 20:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1781554728;
 bh=D4AQFB9QtHL9JKfvLIusZbKcqEccrNoj87W28bbggd4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=D++8sIpYzZ4q+fiujgSk7JQUpMYnJDK8+Jio3yAl16rIYCQA9SPss4eh9GaSRd2De
 mQ1uksWxm6RtFpMIggUe7C60Dnvcf6fhybAc2ZW+OEobOeSPhBaodcxZXWyQyUEp+v
 q+Oaplh9lfcW1LLo4OPTgw4ALXoPc5yY6mz538VNDeJifjiGsJQWuL2jOajORYSTkc
 NAaIJ1K9TBxc2e+0cRw3k4+LUS+vfXvkjoAO72CeptlJ3uLs67LPOo57RjqWoZbPEf
 gOnFtU+1Z0uBR0Y4D5F8mnpygUoolKbhj+lsFqGH6X6MEsxfu5j7+seIZiv7OsiJTU
 6RiUnti56qLrA==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org, Maarten Lankhorst <dev@lankhorst.se>,
 Alexander B Slota <alexander.b.slota@intel.com>
Subject: [PATCH v8 26/27] drm/xe/display: Always use system memory on
 PREEMPT_RT for DPT.
Date: Mon, 15 Jun 2026 22:18:44 +0200
Message-ID: <20260615201846.307297-27-dev@lankhorst.se>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260615201846.307297-1-dev@lankhorst.se>
References: <20260615201846.307297-1-dev@lankhorst.se>
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,lists.freedesktop.org:from_smtp,lankhorst.se:dkim,lankhorst.se:email,lankhorst.se:mid,lankhorst.se:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: B8119689C37

We were using stolen memory because it was unused memory, but
on recent platforms this adds extra latency when waking from
RC6, because memory accesses go through the media IP.

Reported-by: Alexander B Slota <alexander.b.slota@intel.com>
Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index f93c98bec5b5f..c4e23926cd06e 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -173,14 +173,6 @@ static int __xe_pin_fb_vma_dpt(struct drm_gem_object *obj,
 						   XE_BO_FLAG_PAGETABLE,
 						   pin_params->alignment, false);
 	else
-		dpt = xe_bo_create_pin_map_at_novm(xe, tile0,
-						   dpt_size,  ~0ull,
-						   ttm_bo_type_kernel,
-						   XE_BO_FLAG_STOLEN |
-						   XE_BO_FLAG_GGTT |
-						   XE_BO_FLAG_PAGETABLE,
-						   pin_params->alignment, false);
-	if (IS_ERR(dpt))
 		dpt = xe_bo_create_pin_map_at_novm(xe, tile0,
 						   dpt_size,  ~0ull,
 						   ttm_bo_type_kernel,
-- 
2.53.0

