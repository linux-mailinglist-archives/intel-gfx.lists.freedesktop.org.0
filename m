Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNF2KiE11mlZBwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 12:59:45 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EC5DD3BB079
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 12:59:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D76AD89C48;
	Wed,  8 Apr 2026 10:59:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="c+kC22aD";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AF64689C48;
 Wed,  8 Apr 2026 10:59:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775645982; x=1807181982;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=rI+xEI4plkQhMsH9fK6qESxqKU0IMeOdYAHW6tblm7c=;
 b=c+kC22aDt/PgQJkPP4uZzPYfv5RUGemJ/bZhXTrGq2f1lHevwE48JDvy
 4faFf9WLOt3J/Wvnq6zPW30sgFYAg8w7kTMZiV+nJvoK9h1txJ9lSfX4b
 /7U/EN95kUYzATLKkdsHt0JTnotPknGHQbyVXt/bvYgQtqDEeTZv/emxH
 ajIQsvaD8wMuccQsFzClQlcHvM4Sl8271Piaqu6yfUN2Ibudb7dBhIJSd
 bW32tar0cwUC3batYKGQGzQ4c6lr4uQxzA5df1XadMHV8R9knEBippJZk
 +KoI6IJKan971oKw5tTSNxA9YUyFRQcPL0084K/dtmAhUscBZOLYhlLs7 Q==;
X-CSE-ConnectionGUID: PeSrwQMjRUC7UOdtORxa6w==
X-CSE-MsgGUID: qFhEiarQQjGEyM5JtyI2NQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="87701104"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="87701104"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 03:59:42 -0700
X-CSE-ConnectionGUID: b4QzCCOaRcScvlCqdfutaw==
X-CSE-MsgGUID: iSh5h4d/Txuv7L3ABYmCMQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="258870385"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.245.1])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 03:59:39 -0700
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Cc: Direct Rendering Infrastructure - Development
 <dri-devel@lists.freedesktop.org>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 =?UTF-8?q?Ville=20Syrj=C3=A4l=C3=A4?= <ville.syrjala@linux.intel.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Simona Vetter <simona.vetter@ffwll.ch>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Andi Shyti <andi.shyti@kernel.org>,
 Chris Wilson <chris@chris-wilson.co.uk>
Subject: [PATCH v2] drm/i915/gem: Don't use VMA from wrong VM in EXECBUF
Date: Wed,  8 Apr 2026 13:59:31 +0300
Message-ID: <20260408105932.82810-1-joonas.lahtinen@linux.intel.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[joonas.lahtinen@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,linuxfoundation.org:email,linux.intel.com:mid,ffwll.ch:email,ursulin.net:email];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: EC5DD3BB079
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Do not pick a VMA with non-matching VM (ppGTT) on quick path
of BO handle lookup for a given EXECBUF call. VMA from wrong VM
could be picked if same BO is repeatedly used in EXECBUF
calls on same context with alternating VMs (ppGTTs). However due
to the introduction of proto-ctx that should not be possible since
d4433c7600f7 ("drm/i915/gem: Use the proto-context to handle
 create parameters (v5)").

Also avoids returning a VMA without increasing the refcount,
which may potentially lead to UAF since f7ce8639f6ff ("drm/i915/gem:
Split the context's obj:vma lut into its own mutex") and until
d4433c7600f7 ("drm/i915/gem: Use the proto-context to handle
 create parameters (v5)").

Sima's analysis:

  This check was added in f7ce8639f6ff ("drm/i915/gem: Split the context's
  obj:vma lut into its own mutex") but without any hint in the commit
  message as to why. In another hunk of that commit there's a hint though in
  __eb_add_lut:

          /* user racing with ctx set-vm */

  This would mean that this bug was introduced in e0695db7298e ("drm/i915:
  Create/destroy VM (ppGTT) for use with contexts"), which allowed to change
  the gem_ctx->vm at runtime, opening up the race that was partially fixed
  in the earlier referenced commit about a year later.

  But it cannot be exploited anymore in anything remotely recent because
  with the introduction of proto-contexts we've made gem_ctx->vm invariant
  again, exactly to preemptively close all these potential issues.
  Specifically d4433c7600f7 ("drm/i915/gem: Use the proto-context to handle
  create parameters (v5)") is the vm specific part of the proto-context
  work.

  Despite that this is impossible to exploit I think it's still good to fix,
  but I think for paranoia's sake we should put a WARN_ON_ONCE(vma->vm !=
  vm) in there, since this really should be impossible.

  I don't think there's a  harm in backporting this though, since there's a
  2 year window between the introduction of the ctx->vm change and it's
  complete fix with the proto-ctx work between 2019 and 2021. It's not
  realistic to backport the latter and this here is trivial in case anyone
  is foolish enough to run such an old kernel.

Fixes: f7ce8639f6ff ("drm/i915/gem: Split the context's obj:vma lut into its own mutex")
References: https://lore.kernel.org/all/20260324151741.29338-1-sosohero200@gmail.com/
Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
Cc: Linus Torvalds <torvalds@linuxfoundation.org>
Cc: Simona Vetter <simona.vetter@ffwll.ch>
Cc: Tvrtko Ursulin <tursulin@ursulin.net>
Cc: Andi Shyti <andi.shyti@kernel.org>
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
---
 drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
index bd608cea396f..7463c3262651 100644
--- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
+++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
@@ -897,6 +897,8 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
 		vma = radix_tree_lookup(&eb->gem_context->handles_vma, handle);
 		if (likely(vma && vma->vm == vm))
 			vma = i915_vma_tryget(vma);
+		else
+			vma = NULL;
 		rcu_read_unlock();
 		if (likely(vma))
 			return vma;
-- 
2.53.0

