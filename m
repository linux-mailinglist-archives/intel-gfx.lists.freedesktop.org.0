Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OAkXOT84n2m5ZQQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:58:23 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EEF119BE2C
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Feb 2026 18:58:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DF15310E7EB;
	Wed, 25 Feb 2026 17:58:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V+l9vw2N";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA23910E7E7;
 Wed, 25 Feb 2026 17:58:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1772042301; x=1803578301;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=od7yw/8tLh1IQibZ6exSH+Py24GfmJ10LZ+oBvxhaaI=;
 b=V+l9vw2NYM1cYulvisRokJx+UUdr8IiHxhOiU2OPO0SPBD095Aq6ywE4
 sl11DaxEID2pqlDB1kY6wA0ok/rGYTx+YugpMGViwYCXKBJX68BMQIXb3
 Q+ofSdWspwIWajxI1VCv12iQyqNWhkiXcRXU3OuEOYWpZfbGLBQKDyE6a
 GPFx+2dMqzzYpK3gaWVbNHLILsP4C3JMIWgjYsmB8vkDoxz+6NhzBLzrQ
 fad7+9/iIq5g3YD/nL8i31w03QvaLWlqLGs0jAiXAX19aHDhhbI2qJdEU
 Y2IIWcNBldHOluZFe0eyC1TkPy6ln/qZz2Xas4JmR3zbCZKH1s1HYnDIe Q==;
X-CSE-ConnectionGUID: Y8lETCzqSsWhOj20/J38pQ==
X-CSE-MsgGUID: p7ioZVA/TLKoezgGv+HkIg==
X-IronPort-AV: E=McAfee;i="6800,10657,11712"; a="76961578"
X-IronPort-AV: E=Sophos;i="6.21,310,1763452800"; d="scan'208";a="76961578"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:58:20 -0800
X-CSE-ConnectionGUID: ZpOYBupQTW6p9G7vntaBYQ==
X-CSE-MsgGUID: bQbxi1QmQtG20xdsvRToqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,311,1763452800"; d="scan'208";a="220812048"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.68])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Feb 2026 09:57:54 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: intel-gfx@lists.freedesktop.org,
	intel-xe@lists.freedesktop.org
Cc: jani.nikula@intel.com,
	rodrigo.vivi@intel.com
Subject: [PATCH 8/8] drm/i915/gt: prefer _PICK_EVEN() over _PICK()
Date: Wed, 25 Feb 2026 19:57:10 +0200
Message-ID: <f94272fb9e93afa51d9fdb006888b8ebe38580df.1772042022.git.jani.nikula@intel.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <cover.1772042022.git.jani.nikula@intel.com>
References: <cover.1772042022.git.jani.nikula@intel.com>
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
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:mid,intel.com:dkim,intel.com:email]
X-Rspamd-Queue-Id: 8EEF119BE2C
X-Rspamd-Action: no action

There's no need to use _PICK() here. Use the simpler one instead.

Signed-off-by: Jani Nikula <jani.nikula@intel.com>
---
 drivers/gpu/drm/i915/gt/intel_gt_regs.h | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gt/intel_gt_regs.h b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
index 14d31882e9e7..3ba9b2206b79 100644
--- a/drivers/gpu/drm/i915/gt/intel_gt_regs.h
+++ b/drivers/gpu/drm/i915/gt/intel_gt_regs.h
@@ -321,11 +321,9 @@
 #define _RING_FAULT_REG_VCS			0x4194
 #define _RING_FAULT_REG_BCS			0x4294
 #define _RING_FAULT_REG_VECS			0x4394
-#define RING_FAULT_REG(engine)			_MMIO(_PICK((engine)->class, \
-							    _RING_FAULT_REG_RCS, \
-							    _RING_FAULT_REG_VCS, \
-							    _RING_FAULT_REG_VECS, \
-							    _RING_FAULT_REG_BCS))
+#define RING_FAULT_REG(engine)			_MMIO(_PICK_EVEN((engine)->class, \
+								 _RING_FAULT_REG_RCS, \
+								 _RING_FAULT_REG_VCS))
 #define   RING_FAULT_VADDR_MASK			REG_GENMASK(31, 12) /* pre-bdw */
 #define   RING_FAULT_ENGINE_ID_MASK		REG_GENMASK(16, 12) /* bdw+ */
 #define   RING_FAULT_GTTSEL_MASK		REG_BIT(11) /* pre-bdw */
-- 
2.47.3

