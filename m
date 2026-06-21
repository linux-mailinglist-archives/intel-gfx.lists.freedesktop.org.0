Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id C19iINYORWp/6AoAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:57:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D32E6EDAFE
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Jul 2026 14:57:58 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kHYbAcsD;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=quarantine) header.from=kernel.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4AB6510EFDE;
	Wed,  1 Jul 2026 12:57:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A609210E337;
 Sun, 21 Jun 2026 09:37:53 +0000 (UTC)
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
 by tor.source.kernel.org (Postfix) with ESMTP id BA1C8600AF;
 Sun, 21 Jun 2026 09:37:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4C4931F00A3A;
 Sun, 21 Jun 2026 09:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
 s=k20260515; t=1782034672;
 bh=eq4Jiz0A0s0y1CCaKrigK8iMCmKO2KO/DMw+O1PS1ZY=;
 h=Date:From:To:Cc:Subject:References;
 b=kHYbAcsD3riuZyE8yw/zGyX4OGv8E29ntBrV/psMay3TNT67fA5gNBpeHGFBeZ/12
 2Ay7PRmR+s6HdarptXq0OjoszuRK4hDjuFDr5zqy5M5pwo3OOG5Rfwzz1hG/+dQ1n8
 CM2zwSeAYz4lQYZRNadhemupSTJhYAVEj8Z/JGBsC+uxY4TS20hXDjW9EjrTZX/Dl+
 vMXqPLpJ/wkow6elNFJjsfNE/3ih99IbbRotQdZuC4nu/UA/y3tJKjSTogiiW5YYf5
 87SMm3+n4xuUToS7j7SvNUKsWt0yz2IfUnDNb9wlqNTm+yoVD5272meD4iMEV5O7Pw
 ZebFVZP2gqGBg==
Received: from rostedt by gandalf with local (Exim 4.99.3)
 (envelope-from <rostedt@kernel.org>) id 1wbEd1-00000001qU9-0cPr;
 Sun, 21 Jun 2026 05:38:11 -0400
Message-ID: <20260621093811.007634476@kernel.org>
User-Agent: quilt/0.69
Date: Sun, 21 Jun 2026 05:34:31 -0400
From: Steven Rostedt <rostedt@kernel.org>
To: linux-kernel@vger.kernel.org,
 linux-trace-kernel@vger.kernel.org
Cc: Masami Hiramatsu <mhiramat@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 John Ogness <john.ogness@linutronix.de>, Thomas Gleixner <tglx@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Julia Lawall <julia.lawall@inria.fr>, Yury Norov <yury.norov@gmail.com>,
 linux-doc@vger.kernel.org, linux-kbuild@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, dri-devel@lists.freedesktop.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-rdma@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-ext4@vger.kernel.org,
 linux-nfs@vger.kernel.org, kvm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Subject: [PATCH 1/2] tracing: Move non-trace_printk prototypes back to kernel.h
References: <20260621093430.264983361@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Mailman-Approved-At: Wed, 01 Jul 2026 12:57:46 +0000
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
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[243];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[25];
	FREEMAIL_CC(0.00)[kernel.org,arm.com,efficios.com,linux-foundation.org,linutronix.de,infradead.org,inria.fr,gmail.com,vger.kernel.org,lists.ozlabs.org,lists.freedesktop.org,st-md-mailman.stormreply.com,lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[rostedt@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[goodmis.org:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2D32E6EDAFE

From: Steven Rostedt <rostedt@goodmis.org>

In order to remove the include to trace_printk.h from kernel.h the tracing
control prototypes need to be moved back into kernel.h. That's because
they are used in other common header files like rcu.h. There's no point in
removing trace_printk.h from kernel.h if it just gets added back to other
common headers.

Prototypes are very cheap for the compiler and should not be an issue.

Signed-off-by: Steven Rostedt <rostedt@goodmis.org>
---
 include/linux/kernel.h       | 18 ++++++++++++++++++
 include/linux/trace_printk.h | 17 -----------------
 2 files changed, 18 insertions(+), 17 deletions(-)

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index e5570a16cbb1..c3c68128827c 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -194,4 +194,22 @@ extern enum system_states system_state;
 # define REBUILD_DUE_TO_DYNAMIC_FTRACE
 #endif
 
+#ifdef CONFIG_TRACING
+void tracing_on(void);
+void tracing_off(void);
+int tracing_is_on(void);
+void tracing_snapshot(void);
+void tracing_snapshot_alloc(void);
+void tracing_start(void);
+void tracing_stop(void);
+#else
+static inline void tracing_start(void) { }
+static inline void tracing_stop(void) { }
+static inline void tracing_on(void) { }
+static inline void tracing_off(void) { }
+static inline int tracing_is_on(void) { return 0; }
+static inline void tracing_snapshot(void) { }
+static inline void tracing_snapshot_alloc(void) { }
+#endif
+
 #endif
diff --git a/include/linux/trace_printk.h b/include/linux/trace_printk.h
index 3d54f440dccf..879fed0805fd 100644
--- a/include/linux/trace_printk.h
+++ b/include/linux/trace_printk.h
@@ -35,15 +35,6 @@ enum ftrace_dump_mode {
 };
 
 #ifdef CONFIG_TRACING
-void tracing_on(void);
-void tracing_off(void);
-int tracing_is_on(void);
-void tracing_snapshot(void);
-void tracing_snapshot_alloc(void);
-
-extern void tracing_start(void);
-extern void tracing_stop(void);
-
 static inline __printf(1, 2)
 void ____trace_printk_check_format(const char *fmt, ...)
 {
@@ -176,16 +167,8 @@ __ftrace_vprintk(unsigned long ip, const char *fmt, va_list ap);
 
 extern void ftrace_dump(enum ftrace_dump_mode oops_dump_mode);
 #else
-static inline void tracing_start(void) { }
-static inline void tracing_stop(void) { }
 static inline void trace_dump_stack(int skip) { }
 
-static inline void tracing_on(void) { }
-static inline void tracing_off(void) { }
-static inline int tracing_is_on(void) { return 0; }
-static inline void tracing_snapshot(void) { }
-static inline void tracing_snapshot_alloc(void) { }
-
 static inline __printf(1, 2)
 int trace_printk(const char *fmt, ...)
 {
-- 
2.53.0


