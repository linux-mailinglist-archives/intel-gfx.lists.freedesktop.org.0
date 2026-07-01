Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 51uKITLIRGqV0woAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 09:56:34 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3621E6EAE4C
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 09:56:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=A0prOKV8;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8723210E318;
	Wed,  1 Jul 2026 07:56:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9A59F10E310;
 Wed,  1 Jul 2026 07:56:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782892589; x=1814428589;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=cGLe2jx75wNr3SO1dAi4HYYNNyZgWcKZdidD0DgIzm4=;
 b=A0prOKV8F95obfmXL8e4Us8wvW9f7y+MFpgQUCsjWlDUPJqPMBuJoKb5
 mts92D+cVGKlPn5lg2OkhNOPQNph7+RyPGVv/Ged2n2sgAl5Z8r5O4Ovr
 4wwoTo15RruY/IPSwlH75iAtgfJNy/llre30t5M/Szn3KqktutojjcLLr
 O+LIiwedGhohl/qZ5hnCQjXxlExExN1wDqvpuwct8I0Y/Ie/J0ggqrUrZ
 IjH9rFwnguRgnxc0Z6G0Lt8SB1Nuq6YyCoPyYhEix5Z9M1740kGZUrjwP
 re2WCTBNTmv/xvTHILJrd1KI+ocd/e7KTUX6Rip6lDp/ZHLwlNt+mKioR w==;
X-CSE-ConnectionGUID: 0HM1AzMnQkqOk2EbPTGIIw==
X-CSE-MsgGUID: 84zq3rZ6T+WPss2xz3nGvQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="83489029"
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="83489029"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 00:56:29 -0700
X-CSE-ConnectionGUID: KrA5ud6sRq6dQjHeghZzPA==
X-CSE-MsgGUID: VBlF5NDCSt+kGDq48pNYbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="250783155"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.25])
 by orviesa006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 00:56:27 -0700
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Cc: Direct Rendering Infrastructure - Development
 <dri-devel@lists.freedesktop.org>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Martin Hodo <martin.hodo@intel.com>,
 Faith Ekstrand <faith.ekstrand@collabora.com>,
 Simona Vetter <simona.vetter@ffwll.ch>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 stable@vger.kernel.org
Subject: [PATCH] drm/i915/gem: Fix NULL deref in I915_CONTEXT_PARAM_SSEU
Date: Wed,  1 Jul 2026 10:55:55 +0300
Message-ID: <20260701075555.52142-1-joonas.lahtinen@linux.intel.com>
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
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[9];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux.intel.com:mid,linux.intel.com:from_mime,collabora.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,intel.com:dkim,intel.com:email,lists.freedesktop.org:from_smtp,ffwll.ch:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3621E6EAE4C

Setting context engine slot N into I915_ENGINE_CLASS_INVALID /
I915_ENGINE_CLASS_INVALID_NONE and attempting to apply
I915_CONTEXT_PARAM_SSEU to the same slot N will deref NULL.
Fix that.

Discovered using AI-assisted static analysis confirmed by
Intel Product Security.

Reported-by: Martin Hodo <martin.hodo@intel.com>
Fixes: d4433c7600f7 ("drm/i915/gem: Use the proto-context to handle create parameters (v5)")
Cc: Faith Ekstrand <faith.ekstrand@collabora.com>
Cc: Simona Vetter <simona.vetter@ffwll.ch>
Cc: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
Cc: <stable@vger.kernel.org> # v5.15+
Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index aeafe1742d30..347d1f2c05f5 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -850,7 +850,7 @@ static int set_proto_ctx_sseu(struct drm_i915_file_private *fpriv,
 		pe = &pc->user_engines[idx];
 
 		/* Only render engine supports RPCS configuration. */
-		if (pe->engine->class != RENDER_CLASS)
+		if (!pe->engine || pe->engine->class != RENDER_CLASS)
 			return -EINVAL;
 
 		sseu = &pe->sseu;
-- 
2.54.0

