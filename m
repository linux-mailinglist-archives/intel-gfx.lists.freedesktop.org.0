Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +PDeFG7UpWmvHAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 19:18:22 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EF96A1DE594
	for <lists+intel-gfx@lfdr.de>; Mon, 02 Mar 2026 19:18:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4128610E58A;
	Mon,  2 Mar 2026 18:18:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Max25J1w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4451610E587;
 Mon,  2 Mar 2026 18:18:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772475498; x=1804011498;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Cp+1S3F+kwe4pQ2kn3xsFFMNJJviKaUyzkA0z/JhdBw=;
 b=Max25J1wOg+jN/m9WWwLUsA/SFxDWP/9nvqF8O0o8A5JMN2BI1sFfrPk
 aHvXJo/RkutvpxEvCXiIOlabtXXib/OQi/D1Q49ZsybjNcvyNq3YEBaf1
 VedPVqIy+N0jnSe3hr6QPCLTnvcRxqvRwzvbPgapOSKrzSDBEGkLqLlMl
 gY6uIyc/FjzOv/kTzU8ijKviKkUbFrtQ/PJDTuBk2iuMgsMgPFKzVl3+U
 VVmnRLD4ZRbAd1l9vp3SfH0yKGz36x8faqmn5jgZoP6BBI2YuMbLcPORb
 +dbZihCt2Vw4Zq+3TuTf2lVouUFrd9KeDXfkDeqvwhD/Titey4zzCSqgl g==;
X-CSE-ConnectionGUID: ePWOdldgS86fikpJjZtRHg==
X-CSE-MsgGUID: m1OIpMPET+e5kJfGuAiscA==
X-IronPort-AV: E=McAfee;i="6800,10657,11717"; a="77362152"
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="77362152"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 10:18:18 -0800
X-CSE-ConnectionGUID: wnpyeuD5Rpa+mPEmEgLd1w==
X-CSE-MsgGUID: IzPFv1EbSPK51D41EM2URQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,320,1763452800"; d="scan'208";a="222378248"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.238])
 by fmviesa005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Mar 2026 10:18:16 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com
Subject: [PATCH 7/7] drm/i915/frontbuffer: reduce fb for frontbuffer
 abbreviation usage
Date: Mon,  2 Mar 2026 20:17:39 +0200
Message-ID: <f7f04d63771891d1c3b1aa280485437bc4a70f20.1772475391.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772475391.git.jani.nikula@intel.com>
References: <cover.1772475391.git.jani.nikula@intel.com>
MIME-Version: 1.0
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
X-Rspamd-Queue-Id: EF96A1DE594
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

Using fb for frontbuffer is a bit misleading, as framebuffer is the more
common fb. Reduce fb usage in frontbuffer function naming.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/display/intel_frontbuffer.c | 12 ++++++------
 drivers/gpu/drm/i915/display/intel_frontbuffer.h | 16 ++++++++--------
 2 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
index 61ce82f85dad..705742e117ca 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
@@ -123,9 +123,9 @@ void intel_frontbuffer_flip(struct intel_display *display,
 	frontbuffer_flush(display, frontbuffer_bits, ORIGIN_FLIP);
 }
 
-void __intel_fb_invalidate(struct intel_frontbuffer *front,
-			   enum fb_op_origin origin,
-			   unsigned int frontbuffer_bits)
+void __intel_frontbuffer_invalidate(struct intel_frontbuffer *front,
+				    enum fb_op_origin origin,
+				    unsigned int frontbuffer_bits)
 {
 	struct intel_display *display = front->display;
 
@@ -143,9 +143,9 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
 	intel_fbc_invalidate(display, frontbuffer_bits, origin);
 }
 
-void __intel_fb_flush(struct intel_frontbuffer *front,
-		      enum fb_op_origin origin,
-		      unsigned int frontbuffer_bits)
+void __intel_frontbuffer_flush(struct intel_frontbuffer *front,
+			       enum fb_op_origin origin,
+			       unsigned int frontbuffer_bits)
 {
 	struct intel_display *display = front->display;
 
diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.h b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
index c9a22b6ccfd6..a89ce352b12b 100644
--- a/drivers/gpu/drm/i915/display/intel_frontbuffer.h
+++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.h
@@ -66,9 +66,9 @@ struct intel_frontbuffer {
 void intel_frontbuffer_flip(struct intel_display *display,
 			    unsigned frontbuffer_bits);
 
-void __intel_fb_invalidate(struct intel_frontbuffer *front,
-			   enum fb_op_origin origin,
-			   unsigned int frontbuffer_bits);
+void __intel_frontbuffer_invalidate(struct intel_frontbuffer *front,
+				    enum fb_op_origin origin,
+				    unsigned int frontbuffer_bits);
 
 /**
  * intel_frontbuffer_invalidate - invalidate frontbuffer object
@@ -93,13 +93,13 @@ static inline bool intel_frontbuffer_invalidate(struct intel_frontbuffer *front,
 	if (!frontbuffer_bits)
 		return false;
 
-	__intel_fb_invalidate(front, origin, frontbuffer_bits);
+	__intel_frontbuffer_invalidate(front, origin, frontbuffer_bits);
 	return true;
 }
 
-void __intel_fb_flush(struct intel_frontbuffer *front,
-		      enum fb_op_origin origin,
-		      unsigned int frontbuffer_bits);
+void __intel_frontbuffer_flush(struct intel_frontbuffer *front,
+			       enum fb_op_origin origin,
+			       unsigned int frontbuffer_bits);
 
 /**
  * intel_frontbuffer_flush - flush frontbuffer object
@@ -121,7 +121,7 @@ static inline void intel_frontbuffer_flush(struct intel_frontbuffer *front,
 	if (!frontbuffer_bits)
 		return;
 
-	__intel_fb_flush(front, origin, frontbuffer_bits);
+	__intel_frontbuffer_flush(front, origin, frontbuffer_bits);
 }
 
 void intel_frontbuffer_queue_flush(struct intel_frontbuffer *front);
-- 
2.47.3

