Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id /l43OSPCRGqe0QoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 09:30:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9056EAA68
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 09:30:43 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=GpCd+XdB;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 900FC10E230;
	Wed,  1 Jul 2026 07:30:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C85DA10E230;
 Wed,  1 Jul 2026 07:30:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782891041; x=1814427041;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=OYZHIPEYhfsH8T3WnWawsBUJdLa7fxv2rMb2oeqcjf4=;
 b=GpCd+XdBX2A3evL7kB5aLasNMspqJesyS/itM1KfFkMIu4zWD5t5vKU7
 GvZZ7qN/oLlJs50vmi8uS5Rruz2tLun6Tdu+uKWFTttkSyOOvHLQ4V0tT
 EBYQkCGJo3HEjbrn8e9NCv3cwZYuRdBCJruE6ELwMZsO8tPYGdQxUjpYg
 e0dlT3MSlASU1UzXt7V7l3Ivp6QlD667uinGvRFtAfN1iMWOWqz0uzmsD
 Ac7I/tivvojSeReB8NuPlqXeHGsg3k1bALGCLhXknC1Ewf9soehG4Z0ac
 xowlFdD+SuIibhm8iG/82/CJBRyuBln8qv/Eh0dtl/5D/Sc2Q12DlaXAj g==;
X-CSE-ConnectionGUID: q2sd37YhReWfdVmIN1dzTA==
X-CSE-MsgGUID: szKh1MJCRgavBXtDfoxwKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11833"; a="94996796"
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="94996796"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 00:30:40 -0700
X-CSE-ConnectionGUID: IEWKBaZ+TW+Od+RCPtAZMQ==
X-CSE-MsgGUID: jDGjoYNlTJmF5eatM12dSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,235,1774335600"; d="scan'208";a="276792913"
Received: from abityuts-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.244.25])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2026 00:30:37 -0700
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
Subject: [PATCH] drm/i915/gem: Do not leak siblings[] on proto context error
Date: Wed,  1 Jul 2026 10:30:30 +0300
Message-ID: <20260701073030.44850-1-joonas.lahtinen@linux.intel.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,igalia.com:email,collabora.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1B9056EAA68

After a successful BALANCE/PARALLEL_SUBMIT extension on context
creation, error during processing of next user extension leaks
the siblings[] array. Fix that.

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
 drivers/gpu/drm/i915/gem/i915_gem_context.c | 22 +++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_context.c b/drivers/gpu/drm/i915/gem/i915_gem_context.c
index aeafe1742d30..87fce2adfeef 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_context.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_context.c
@@ -769,8 +769,8 @@ static int set_proto_ctx_engines(struct drm_i915_file_private *fpriv,
 		struct intel_engine_cs *engine;
 
 		if (copy_from_user(&ci, &user->engines[n], sizeof(ci))) {
-			kfree(set.engines);
-			return -EFAULT;
+			err = -EFAULT;
+			goto err;
 		}
 
 		memset(&set.engines[n], 0, sizeof(set.engines[n]));
@@ -786,8 +786,8 @@ static int set_proto_ctx_engines(struct drm_i915_file_private *fpriv,
 			drm_dbg(&i915->drm,
 				"Invalid engine[%d]: { class:%d, instance:%d }\n",
 				n, ci.engine_class, ci.engine_instance);
-			kfree(set.engines);
-			return -ENOENT;
+			err = -ENOENT;
+			goto err;
 		}
 
 		set.engines[n].type = I915_GEM_ENGINE_TYPE_PHYSICAL;
@@ -800,15 +800,21 @@ static int set_proto_ctx_engines(struct drm_i915_file_private *fpriv,
 					   set_proto_ctx_engines_extensions,
 					   ARRAY_SIZE(set_proto_ctx_engines_extensions),
 					   &set);
-	if (err) {
-		kfree(set.engines);
-		return err;
-	}
+	if (err)
+		goto err_extensions;
 
 	pc->num_user_engines = set.num_engines;
 	pc->user_engines = set.engines;
 
 	return 0;
+
+err_extensions:
+	for (n = 0; n < set.num_engines; n++)
+		kfree(set.engines[n].siblings);
+err:
+	kfree(set.engines);
+
+	return err;
 }
 
 static int set_proto_ctx_sseu(struct drm_i915_file_private *fpriv,
-- 
2.54.0

