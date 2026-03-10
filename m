Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KA4LHkQHsGnQegIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 12:57:56 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3DF24BE6E
	for <lists+intel-gfx@lfdr.de>; Tue, 10 Mar 2026 12:57:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC63310E6E5;
	Tue, 10 Mar 2026 11:57:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=lankhorst.se header.i=@lankhorst.se header.b="IpUJ1hyE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from lankhorst.se (unknown [141.105.120.124])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 85EFE10E6E5;
 Tue, 10 Mar 2026 11:57:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lankhorst.se;
 s=default; t=1773143865;
 bh=gZgsUQ3ydkW05IMcaqLfOei9/u0XGN5e4flL9B0GhiU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=IpUJ1hyEvN0wNLzBc3GXeOfSyUn/3M0g3C0xgkAAWQpUY+Lk5iWDY/wtKprIEUtY4
 hOYcMNXUuZdlMsbIZ9TLbPboCikZUUAGjPGNNjB3exl/5RfSvWuq89VEwwdXEn9wAa
 s6SkHQPKuFf4combBhBBmQrEcOaBR9uKQfu7xCJ1Q8YjTcKYFw3e3GxRT74ynKYaKZ
 wN4OGvB9qkh4h6Q862Nb8Tl9SctJ2//qCkYhJfiwDTOlWP9+BBwzInYbsnKdPOEZ7W
 ooVg0gl8FeHS5XZnQXZZf0Ty7PnQqN2SAGhqW4nV/yz2qbtesdbPmSu0g1UljOXQKm
 tsIw5wECL9FRw==
From: Maarten Lankhorst <dev@lankhorst.se>
To: intel-xe@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org
Cc: dri-devel@lists.freedesktop.org,
	Maarten Lankhorst <dev@lankhorst.se>
Subject: [PATCH v7 25/26] FOR-CI: bump MAX_STACK_TRACE_ENTRIES
Date: Tue, 10 Mar 2026 12:57:07 +0100
Message-ID: <20260310115709.2276203-26-dev@lankhorst.se>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20260310115709.2276203-1-dev@lankhorst.se>
References: <20260310115709.2276203-1-dev@lankhorst.se>
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
X-Rspamd-Queue-Id: 4D3DF24BE6E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[lankhorst.se,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[lankhorst.se:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[lankhorst.se:+];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dev@lankhorst.se,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_COUNT_TWO(0.00)[2];
	TAGGED_RCPT(0.00)[intel-gfx];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lankhorst.se:dkim,lankhorst.se:email,lankhorst.se:mid,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo]
X-Rspamd-Action: no action

We're hitting a bug in CI where MAX_STACK_TRACE_ENTRIES is set too low.
My guess is the repeated loading/unloading is creating multiples of the
same entries. As a hack just reset lockdep. This might only be necessary
for CI + PREEMPT_RT.

Signed-off-by: Maarten Lankhorst <dev@lankhorst.se>
---
 lib/Kconfig.debug | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
index 56ec7173cb7b6..b8d7e6dc345e9 100644
--- a/lib/Kconfig.debug
+++ b/lib/Kconfig.debug
@@ -1625,8 +1625,8 @@ config LOCKDEP_CHAINS_BITS
 config LOCKDEP_STACK_TRACE_BITS
 	int "Size for MAX_STACK_TRACE_ENTRIES (as Nth power of 2)"
 	depends on LOCKDEP && !LOCKDEP_SMALL
-	range 10 26
-	default 19
+	range 22 26
+	default 22
 	help
 	  Try increasing this value if you hit "BUG: MAX_STACK_TRACE_ENTRIES too low!" message.
 
-- 
2.51.0

