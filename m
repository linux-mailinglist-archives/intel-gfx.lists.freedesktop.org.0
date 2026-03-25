Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALmiDfZrw2k7qwQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:00:38 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C4F6B31FCBF
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Mar 2026 06:00:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 46DCE10E792;
	Wed, 25 Mar 2026 05:00:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Mpwa8mcP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4070410E787;
 Wed, 25 Mar 2026 05:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774414826; x=1805950826;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UNnXKbh/lejFgfVwjlv2D09iHs+48NOnF6YmiItj6O4=;
 b=Mpwa8mcPfP4agyt6njQ+9mGJffaNYL4dEzXG96OsSL376LZw5UknQQgb
 rBccx9Gc2KVN8FTemBQbTJInfzYEKw9hLNDYrLdT7s6gNjsIaEYefYOJ+
 m9TxPr+6kY6eRO6qOmBZ++VEBwgvE7qmzv/21lJJZUGjm+nn0huEHtDBZ
 Q2uRg4IwlzzIIQPCsdNIncaYTGCUkKBthWI0oK28ChhTOYh5eiheejDxX
 AWSZbGrxLo8z8nENBbiHCAhLbyuuLWgjqi/FuOTxKafdfGQujkNG3mBZE
 cBIx30d83LMFEymbzpv5hztzZeP4LnEQj470abI5Sgf2mnYbzqDLgxKuR Q==;
X-CSE-ConnectionGUID: Usp55/rATaqQKcfs9iKIRQ==
X-CSE-MsgGUID: sEkLhODVTgWUtaquDckqew==
X-IronPort-AV: E=McAfee;i="6800,10657,11739"; a="86922374"
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="86922374"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2026 22:00:26 -0700
X-CSE-ConnectionGUID: LJlr7hx9S6ShH7L8ofXRCg==
X-CSE-MsgGUID: uA5o0hfURKqYcXiuSt97BA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,139,1770624000"; d="scan'208";a="224580923"
Received: from kandpal-x299-ud4-pro.iind.intel.com ([10.190.239.10])
 by orviesa008.jf.intel.com with ESMTP; 24 Mar 2026 22:00:24 -0700
From: Suraj Kandpal <suraj.kandpal@intel.com>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: sowmiya.s@intel.com, uma.shankar@intel.com, swati2.sharma@intel.com,
 chaitanya.kumar.borah@intel.com, arun.r.murthy@intel.com,
 Suraj Kandpal <suraj.kandpal@intel.com>
Subject: [PATCH v2 23/26] drm/i915/writeback: Initialize writeback encoder.
Date: Wed, 25 Mar 2026 10:29:13 +0530
Message-Id: <20260325045916.984243-24-suraj.kandpal@intel.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260325045916.984243-1-suraj.kandpal@intel.com>
References: <20260325045916.984243-1-suraj.kandpal@intel.com>
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid]
X-Rspamd-Queue-Id: C4F6B31FCBF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Call the init function to initialize the writeback encoder
only for ADLP.

Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
---
 drivers/gpu/drm/i915/display/intel_display.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
index d0fb827d9ae0..6aa74d29d372 100644
--- a/drivers/gpu/drm/i915/display/intel_display.c
+++ b/drivers/gpu/drm/i915/display/intel_display.c
@@ -8055,6 +8055,9 @@ void intel_setup_outputs(struct intel_display *display)
 		intel_dvo_init(display);
 	}
 
+	if (DISPLAY_VER(display) == 13)
+		intel_writeback_init(display);
+
 	for_each_intel_encoder(display->drm, encoder) {
 		encoder->base.possible_crtcs =
 			intel_encoder_possible_crtcs(encoder);
-- 
2.34.1

