Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id m0ihOOE3OWoHowcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 15:25:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D51B6AFD5E
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 15:25:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=PaWGlTwT;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 031D510E6E2;
	Mon, 22 Jun 2026 13:25:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 69B4610E6E2
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Jun 2026 13:25:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782134750; x=1813670750;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=2QUMKwujf7HLkTgD6AzwI/dY42nVsxzJ69rsa3pF2ZY=;
 b=PaWGlTwTX1avoqhnhIpfOLPGKuc5a25UVbmYMcGhkCiwMqwr+pDNeVQp
 DdcZrfEAFXSJKFPKhgKECu/yMO7lf+VLztyd+Cwjg2ODzebG0kRYE2Cjd
 lPGSRhg6DeeFjClJ2/83Ge3PxScY7NajWKQLaARYpD1qUm/EIyhpOv9z7
 dk7U5yWXd5KjuNzvIGcckTjlAxgBJvwmZMplAc9R4Dm/eVro6Oo6N2sIe
 QZbxaJ0GuNTukujlF8h0umITUcC/R0tDCVccBNsu243edJ6rYISOEidKB
 CflBOmOKzysmG0f0uEuu4KOgTW5uslY56mTDASL46rxoWYngF33go6UkI A==;
X-CSE-ConnectionGUID: msWRPRNDQ9Wr3NeA6nY6eQ==
X-CSE-MsgGUID: 01dAzq+RTMSUbTXyouP1NA==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="93517993"
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="93517993"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 06:25:50 -0700
X-CSE-ConnectionGUID: 36XNZ+XLRHOCcvPhNpOkmQ==
X-CSE-MsgGUID: AmaekvoyRmShCyvO45PZHQ==
X-ExtLoop1: 1
Received: from fpallare-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.245.245.69])
 by fmviesa003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 06:25:48 -0700
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Martin Hodo <martin.hodo@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Subject: [PATCH] drm/i915/gem: Add missing nospec on parallel submit slot
Date: Mon, 22 Jun 2026 16:25:39 +0300
Message-ID: <20260622132539.165558-1-joonas.lahtinen@linux.intel.com>
X-Mailer: git-send-email 2.54.0
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
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_FIVE(0.00)[5];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	FROM_HAS_DN(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6D51B6AFD5E

Add missing Spectre mitigation for userspace controlled parallel
submission slot.

Discovered using AI-assisted static analysis confirmed by Intel
Product Security.

Reported-by: Martin Hodo <martin.hodo@intel.com>
Fixes: e5e32171a2cf ("drm/i915/guc: Connect UAPI to GuC multi-lrc interface")
Cc: Matthew Brost <matthew.brost@intel.com>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index 6ac0f23570f3..aeafe1742d30 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -613,6 +613,7 @@ set_proto_ctx_engines_parallel_submit(struct i915_user_extension __user *base,
 		return -EINVAL;
 	}
 
+	slot = array_index_nospec(slot, set->num_engines);
 	if (set->engines[slot].type != I915_GEM_ENGINE_TYPE_INVALID) {
 		drm_dbg(&i915->drm,
 			"Invalid placement[%d], already occupied\n", slot);
-- 
2.54.0

