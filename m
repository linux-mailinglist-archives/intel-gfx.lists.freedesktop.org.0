Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB52947CD1
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Aug 2024 16:30:03 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B95A10E1EC;
	Mon,  5 Aug 2024 14:30:01 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=redhat.com header.i=@redhat.com header.b="G5ohYZMg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from us-smtp-delivery-124.mimecast.com
 (us-smtp-delivery-124.mimecast.com [170.10.133.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E5E910E1EC
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Aug 2024 14:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1722868198;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type;
 bh=RtjU6xDP7DBZI2y4HhXeYYunS9GB3mC8ewFFz8uLyek=;
 b=G5ohYZMgKBLqbrtFhRpdgszeSKzhXxYNxAmZRWLyykh29oxobVpztzMdWX0+UMx8iovdOC
 U56lPa/F7vYF+FdVjk9+BWVf3TcMubzTp0RYEW4IUYsducEMTX/S2fBa8KEBqCCRu2P/wM
 4APCqMpSpYJvDOCB21l4xKyhX9k3Ap0=
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-482-XFIg4lUZNF-lgSEjWchYNg-1; Mon,
 05 Aug 2024 10:29:55 -0400
X-MC-Unique: XFIg4lUZNF-lgSEjWchYNg-1
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com
 (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
 (No client certificate requested)
 by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 036221955BF6; Mon,  5 Aug 2024 14:29:54 +0000 (UTC)
Received: from file1-rdu.file-001.prod.rdu2.dc.redhat.com (unknown
 [10.11.5.21])
 by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS
 id 889DB1955D44; Mon,  5 Aug 2024 14:29:53 +0000 (UTC)
Received: by file1-rdu.file-001.prod.rdu2.dc.redhat.com (Postfix,
 from userid 12668)
 id 5AA7830F362D; Mon,  5 Aug 2024 14:29:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by file1-rdu.file-001.prod.rdu2.dc.redhat.com (Postfix) with ESMTP id
 524BEF82E; Mon,  5 Aug 2024 16:29:52 +0200 (CEST)
Date: Mon, 5 Aug 2024 16:29:52 +0200 (CEST)
From: Mikulas Patocka <mpatocka@redhat.com>
To: Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>, 
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, intel-gfx@lists.freedesktop.org
cc: Zdenek Kabelac <zkabelac@redhat.com>
Subject: [PATCH] i915: change pr_info to pr_info_ratelimited
Message-ID: <41f16eed-cc12-ad7d-45ae-bb67815d1728@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
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

Zdenek Kabelac reported that his syslog was flooded with many messages:
Purging GPU memory, 0 pages freed, 0 pages still pinned, 2029 pages left available.

It happened when he was testing the VDO device mapper module (which
requires a lot of kernel memory).

This commit changes the message to be ratelimited, so that it doesn't spam 
the syslog.

Signed-off-by: Mikulas Patocka <mpatocka@redhat.com>
Reported-by: Zdenek Kabelac <zkabelac@redhat.com>

---
 drivers/gpu/drm/i915/gem/i915_gem_shrinker.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

Index: linux-2.6/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c
===================================================================
--- linux-2.6.orig/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c	2024-03-11 12:53:59.000000000 +0100
+++ linux-2.6/drivers/gpu/drm/i915/gem/i915_gem_shrinker.c	2024-08-05 16:07:49.000000000 +0200
@@ -375,7 +375,7 @@ i915_gem_shrinker_oom(struct notifier_bl
 	spin_unlock_irqrestore(&i915->mm.obj_lock, flags);
 
 	if (freed_pages || available)
-		pr_info("Purging GPU memory, %lu pages freed, "
+		pr_info_ratelimited("Purging GPU memory, %lu pages freed, "
 			"%lu pages still pinned, %lu pages left available.\n",
 			freed_pages, unevictable, available);
 

