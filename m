Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YA05DvYn1WnB1gcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:18 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C8C53B1519
	for <lists+intel-gfx@lfdr.de>; Tue, 07 Apr 2026 17:51:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 95DC910E478;
	Tue,  7 Apr 2026 15:51:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="a6ratbIv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6F62410E478;
 Tue,  7 Apr 2026 15:51:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775577075; x=1807113075;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=no2LDq2BQ4Xzyn9tPy5jxjdH0GAm0YBJaf4pr5BuS5M=;
 b=a6ratbIvDzKBE5rg0DiAnbA4/2F3pVwDRh6FbPVfQc+axBNoyYNHPVpq
 +jzZiD3/MInIZw8WrV2UqkdYJPHHehwmJDk9GV7xZ4B9p6404nQfJ3V//
 bV+lKf+1pK7Gj8U/rOEG5Rs3UdobZVDPbFftcIcHO+EgHYRyMiyH0KSC9
 XaZKsgX4yZpOEvsTh8bsSrjeqsIFAPI2XmZRxL6wC0RkiQXi6kcMIhUob
 WPMAiZSJDBDniPs7YsR7jaK8MrF0XeY2GLQHUztc/um4TSGJuIM/iFlAM
 QTsL+z2a36D1rAy5wTqUmDp3n6/UEbZ16EnhwBti5kIEOR+tujzhWh6jt Q==;
X-CSE-ConnectionGUID: H/A0HpfzSxiMB7ke2RAwcw==
X-CSE-MsgGUID: yEVecJmcSoSYTeVEel8keQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="101999130"
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="101999130"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:51:15 -0700
X-CSE-ConnectionGUID: XHKqiiAAQJeFLPh9320ePQ==
X-CSE-MsgGUID: 1ROR7ne0QIi5G9tywqklTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,165,1770624000"; d="scan'208";a="221633766"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.244.211])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2026 08:51:14 -0700
From: Ville Syrjala <ville.syrjala@linux.intel.com>
To: intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org
Subject: [PATCH 05/12] drm/xe/fb: Remove weird VMA end alignemnt
Date: Tue,  7 Apr 2026 18:50:46 +0300
Message-ID: <20260407155053.32156-6-ville.syrjala@linux.intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260407155053.32156-1-ville.syrjala@linux.intel.com>
References: <20260407155053.32156-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[ville.syrjala@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,linux.intel.com:mid]
X-Rspamd-Queue-Id: 0C8C53B1519
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Ville Syrjälä <ville.syrjala@linux.intel.com>

For some reason xe is also alining the end of the vma. That
should not be necessary, so don't.

Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
---
 drivers/gpu/drm/xe/display/xe_fb_pin.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/xe/display/xe_fb_pin.c b/drivers/gpu/drm/xe/display/xe_fb_pin.c
index 35e5c322f8b0..72efafb189f7 100644
--- a/drivers/gpu/drm/xe/display/xe_fb_pin.c
+++ b/drivers/gpu/drm/xe/display/xe_fb_pin.c
@@ -307,8 +307,7 @@ static int __xe_pin_fb_vma_ggtt(const struct intel_framebuffer *fb,
 		size = intel_rotation_info_size(&view->rotated) * XE_PAGE_SIZE;
 
 	pte = xe_ggtt_encode_pte_flags(ggtt, bo, xe->pat.idx[XE_CACHE_NONE]);
-	vma->node = xe_ggtt_insert_node_transform(ggtt, bo, pte,
-						  ALIGN(size, align), align,
+	vma->node = xe_ggtt_insert_node_transform(ggtt, bo, pte, size, align,
 						  view->type == I915_GTT_VIEW_NORMAL ?
 						  NULL : write_ggtt_rotated_node,
 						  &(struct fb_rotate_args){view, bo});
-- 
2.52.0

