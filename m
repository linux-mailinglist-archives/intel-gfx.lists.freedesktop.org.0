Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D0AFBC8A796
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Nov 2025 15:55:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B35DF10E653;
	Wed, 26 Nov 2025 14:55:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="dlxCJUIf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (lankhorst.se [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2E17910E653
 for <intel-gfx@lists.freedesktop.org>; Wed, 26 Nov 2025 14:55:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1764168930;
 bh=ehkN2kuX20UM6TqfPVOQyIs9LswyaBVWEiJKEgVf+/k=;
 h=From:To:Cc:Subject:Date:From;
 b=dlxCJUIfoExbgudpIoa3MeYkKqu1ctVgOXxjXt7Na6kIonJD5jqnqQNM3+rmZ1rNL
 GX33d2HWLUqY5CB/dSUefvvWRKuWOpBb7W7n0sS0k3oh+axGXZGn12EEYuIuzibL83
 k8/bPhBTylzLuItsVpq+6Syyq1DWUEE1BgdstgVVJr0OjcBJqRlCRPq8b27LcWjPYX
 bS7nvAqFZZsgWOTRbo5u6VaiZZMlDWFmO42mvQO1GzTH8t2NLS1pi6rUWkcyYmGXle
 Ig+kzbDT3FesmWqwbNnCdfjXsNyjUOXq5hWVdxbMKL96PDpcphT9AamKGWfYL7iOPg
 Gzsz+rXsbS6vQ==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-gfx@lists.freedesktop.org
Cc: Maarten Lankhorst <dev@lankhorst.se>
Subject: DEBUG: Show held locks on failure
Date: Wed, 26 Nov 2025 15:55:24 +0100
Message-ID: <20251126145525.10747-1-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
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

Test why we are regressing?

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 kernel/freezer.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/kernel/freezer.c b/kernel/freezer.c
index ddc11a8bd2ea2..2493b885d886e 100644
--- a/kernel/freezer.c
+++ b/kernel/freezer.c
@@ -135,8 +135,10 @@ static int __set_task_frozen(struct task_struct *p, void *arg)
 	/*
 	 * It's dangerous to freeze with locks held; there be dragons there.
 	 */
-	if (!(state & __TASK_FREEZABLE_UNSAFE))
-		WARN_ON_ONCE(debug_locks && p->lockdep_depth);
+	if (!(state & __TASK_FREEZABLE_UNSAFE)) {
+		if (WARN_ON_ONCE(debug_locks && p->lockdep_depth))
+			debug_show_held_locks(p);
+	}
 #endif
 
 	p->saved_state = p->__state;
