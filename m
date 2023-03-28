Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEC656CC378
	for <lists+intel-gfx@lfdr.de>; Tue, 28 Mar 2023 16:54:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6A3EB10E8FA;
	Tue, 28 Mar 2023 14:54:17 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B56C10E8FA
 for <intel-gfx@lists.freedesktop.org>; Tue, 28 Mar 2023 14:54:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 6ED10B81BBF;
 Tue, 28 Mar 2023 14:54:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B459DC433D2;
 Tue, 28 Mar 2023 14:54:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1680015252;
 bh=dU4cXv3GN5nyO7RK1N6UM13F/DcpChRh/3UE/JMFQWw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pxg+5kl0LxbTa7BSR9MpCodqm5fYd+Cc9tajw+Fl/MJO8FJ54atAfrw1d9KMpvz7N
 dZWryGmEtXE3y0InZPLYueBVjg7Je/bYI5GJKOplyoeEvzGlMRhTti6coj+NBSWPAn
 6YAqNZ2xRRbP5zh+h+FSMAWraQCRzexRZV0ARHsk=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: stable@vger.kernel.org
Date: Tue, 28 Mar 2023 16:43:04 +0200
Message-Id: <20230328142628.917550978@linuxfoundation.org>
X-Mailer: git-send-email 2.40.0
In-Reply-To: <20230328142619.643313678@linuxfoundation.org>
References: <20230328142619.643313678@linuxfoundation.org>
User-Agent: quilt/0.67
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: [Intel-gfx] [PATCH 6.2 221/240] drm/i915/active: Fix missing debug
 object activation
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Jani Nikula <jani.nikula@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 intel-gfx@lists.freedesktop.org, patches@lists.linux.dev,
 Chris Wilson <chris@chris-wilson.co.uk>,
 =?UTF-8?q?Thomas=20Hellstr=C3=B6m?= <thomas.hellstrom@intel.com>,
 Nirmoy Das <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

From: Nirmoy Das <nirmoy.das@intel.com>

commit e92eb246feb9019b0b137706c934b8891cdfe3c2 upstream.

debug_active_activate() expected ref->count to be zero
which is not true anymore as __i915_active_activate() calls
debug_active_activate() after incrementing the count.

v2: No need to check for "ref->count == 1" as __i915_active_activate()
already make sure of that(Janusz).

Fixes: 04240e30ed06 ("drm/i915: Skip taking acquire mutex for no ref->active callback")
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Cc: Thomas Hellström <thomas.hellstrom@intel.com>
Cc: Andi Shyti <andi.shyti@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: <stable@vger.kernel.org> # v5.10+
Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Reviewed-by: Andrzej Hajda <andrzej.hajda@intel.com>
Link: https://patchwork.freedesktop.org/patch/msgid/20230313114613.9874-1-nirmoy.das@intel.com
(cherry picked from commit bfad380c542438a9b642f8190b7fd37bc77e2723)
Signed-off-by: Jani Nikula <jani.nikula@intel.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/gpu/drm/i915/i915_active.c |    3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

--- a/drivers/gpu/drm/i915/i915_active.c
+++ b/drivers/gpu/drm/i915/i915_active.c
@@ -92,8 +92,7 @@ static void debug_active_init(struct i91
 static void debug_active_activate(struct i915_active *ref)
 {
 	lockdep_assert_held(&ref->tree_lock);
-	if (!atomic_read(&ref->count)) /* before the first inc */
-		debug_object_activate(ref, &active_debug_desc);
+	debug_object_activate(ref, &active_debug_desc);
 }
 
 static void debug_active_deactivate(struct i915_active *ref)


