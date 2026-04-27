Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +K4GJaCa72npDAEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 19:19:28 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 31621477362
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 19:19:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9A80910E868;
	Mon, 27 Apr 2026 17:19:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="k8kV5Zhk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9394B10E866;
 Mon, 27 Apr 2026 17:19:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 180046024D;
 Mon, 27 Apr 2026 17:19:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A25EEC2BCB7;
 Mon, 27 Apr 2026 17:19:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1777310364;
 bh=xblTv37x9V4gU3cvmA9ILfz6xXNOv0sNe2zU9C6a5nw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=k8kV5Zhk7HZbxy8X7mxqUL5UgTTJPPuuLtSKHKOe5PwbIiNodL9/7ESxRbcOMv4dB
 NN/pd897F5mMQZv6MW+RM/3mikWvqmJGQCtupbd6YHiobStaCQu79RRkwt3Bs1rL/A
 WmXtcy3vIzgejB2MGSu6MrKJ33itreKKdFlemNypyCUExoUHGXA1bHbqFqaNX4ujdd
 iXZiXWTV/w69yfgs2V8e+zdWAilhhtsvDDxzPIT8CbbievjXPmrPwVloE5aoqLKmYP
 ca2+sf92YJQm2mLHcpyNlGd6mMQP6QhUed6Hx8vk/CloBjO7tSgz4fayv+CeXka+Fz
 NwGM6tvALNVmQ==
From: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>
To: Yury Norov <ynorov@nvidia.com>, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Laight <david.laight.linux@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>
Cc: "Christophe Leroy (CS GROUP)" <chleroy@kernel.org>,
 linux-alpha@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-snps-arc@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linuxppc-dev@lists.ozlabs.org,
 kvm@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-s390@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-um@lists.infradead.org, dmaengine@vger.kernel.org,
 linux-efi@vger.kernel.org, linux-fsi@lists.ozlabs.org,
 amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-wpan@vger.kernel.org,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-media@vger.kernel.org,
 linux-staging@lists.linux.dev, linux-serial@vger.kernel.org,
 linux-usb@vger.kernel.org, xen-devel@lists.xenproject.org,
 linux-fsdevel@vger.kernel.org, ocfs2-devel@lists.linux.dev,
 bpf@vger.kernel.org, kasan-dev@googlegroups.com, linux-mm@kvack.org,
 linux-x25@vger.kernel.org, rust-for-linux@vger.kernel.org,
 linux-sound@vger.kernel.org, sound-open-firmware@alsa-project.org,
 linux-csky@vger.kernel.org, linux-hexagon@vger.kernel.org,
 loongarch@lists.linux.dev, linux-m68k@lists.linux-m68k.org,
 linux-openrisc@vger.kernel.org, linux-parisc@vger.kernel.org,
 linux-sh@vger.kernel.org, linux-arch@vger.kernel.org
Subject: [RFC PATCH v1 9/9] uaccess: Convert small fixed size
 copy_{to/from}_user() to scoped user access
Date: Mon, 27 Apr 2026 19:13:50 +0200
Message-ID: <8780eb2ef80575931a339e5225bc80eb13e9be6c.1777306795.git.chleroy@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <cover.1777306795.git.chleroy@kernel.org>
References: <cover.1777306795.git.chleroy@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=3638; i=chleroy@kernel.org;
 h=from:subject:message-id; bh=xblTv37x9V4gU3cvmA9ILfz6xXNOv0sNe2zU9C6a5nw=;
 b=owGbwMvMwCV2d0KB2p7V54MZT6slMWS+nxlr/n9yu2DE7uwkCZGbl0uCp6Y1JLvZTPpz+P/PY
 xNqPMoaOkpZGMS4GGTFFFmO/+feNaPrS2r+1F36MHNYmUCGMHBxCsBE9HwZ/ns82Ho9PV2Q+7Pp
 5fqvs6O/v3YN+3EgL+Wk4b/co1rlkZ8YGVZxmDl7XFiUcmPSTPW14WGSHT6/1u4pcTY2cjD0U7P
 bzAkA
X-Developer-Key: i=chleroy@kernel.org; a=openpgp;
 fpr=10FFE6F8B390DE17ACC2632368A92FEB01B8DD78
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
X-Rspamd-Queue-Id: 31621477362
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.69 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[49];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[nvidia.com,linux-foundation.org,gmail.com,linutronix.de];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chleroy@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns]

copy_{to/from}_user() is a heavy function optimised for copy of large
blocs of memory between user and kernel space.

When the number of bytes to be copied is known at build time and small,
using scoped user access removes the burden of that optimisation.

Signed-off-by: Christophe Leroy (CS GROUP) <chleroy@kernel.org>
---
 include/linux/uaccess.h | 47 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 47 insertions(+)

diff --git a/include/linux/uaccess.h b/include/linux/uaccess.h
index 33b7d0f5f808..3ac544527af2 100644
--- a/include/linux/uaccess.h
+++ b/include/linux/uaccess.h
@@ -50,6 +50,8 @@
  #define mask_user_address(src) (src)
 #endif
 
+#define SMALL_COPY_USER		64
+
 /*
  * Architectures should provide two primitives (raw_copy_{to,from}_user())
  * and get rid of their private instances of copy_{to,from}_user() and
@@ -191,6 +193,9 @@ _inline_copy_from_user(void *to, const void __user *from, unsigned long n)
 	return res;
 }
 
+static __always_inline __must_check unsigned long
+_small_copy_from_user(void *to, const void __user *from, unsigned long n);
+
 extern __must_check unsigned long
 _copy_from_user(void *, const void __user *, unsigned long);
 
@@ -207,6 +212,9 @@ _inline_copy_to_user(void __user *to, const void *from, unsigned long n)
 	return n;
 }
 
+static __always_inline __must_check unsigned long
+_small_copy_to_user(void __user *to, const void *from, unsigned long n);
+
 extern __must_check unsigned long
 _copy_to_user(void __user *, const void *, unsigned long);
 
@@ -215,6 +223,8 @@ copy_from_user_common(void *to, const void __user *from, unsigned long n, bool p
 {
 	if (!check_copy_size(to, n, false))
 		return n;
+	if (!partial && __builtin_constant_p(n) && n <= SMALL_COPY_USER)
+		return _small_copy_from_user(to, from, n);
 	if (IS_ENABLED(ARCH_WANTS_NOINLINE_COPY_USER))
 		return _copy_from_user(to, from, n);
 	else
@@ -239,6 +249,8 @@ copy_to_user_common(void __user *to, const void *from, unsigned long n, bool par
 	if (!check_copy_size(from, n, true))
 		return n;
 
+	if (!partial && __builtin_constant_p(n) && n <= SMALL_COPY_USER)
+		return _small_copy_to_user(to, from, n);
 	if (IS_ENABLED(ARCH_WANTS_NOINLINE_COPY_USER))
 		return _copy_to_user(to, from, n);
 	else
@@ -838,6 +850,41 @@ for (bool done = false; !done; done = true)					\
 #define scoped_user_rw_access(uptr, elbl)				\
 	scoped_user_rw_access_size(uptr, sizeof(*(uptr)), elbl)
 
+static __always_inline __must_check unsigned long
+_small_copy_from_user(void *to, const void __user *from, unsigned long n)
+{
+	might_fault();
+	instrument_copy_from_user_before(to, from, n);
+	scoped_user_read_access_size(from, n, failed) {
+		/*
+		 * Ensure that bad access_ok() speculation will not lead
+		 * to nasty side effects *after* the copy is finished:
+		 */
+		if (!can_do_masked_user_access())
+			barrier_nospec();
+		unsafe_copy_from_user(to, from, n, failed);
+	}
+	instrument_copy_from_user_after(to, from, n, 0);
+	return 0;
+failed:
+	instrument_copy_from_user_after(to, from, n, n);
+	return n;
+}
+
+static __always_inline __must_check unsigned long
+_small_copy_to_user(void __user *to, const void *from, unsigned long n)
+{
+	might_fault();
+	if (should_fail_usercopy())
+		return n;
+	instrument_copy_to_user(to, from, n);
+	scoped_user_write_access_size(to, n, failed)
+		unsafe_copy_to_user(to, from, n, failed);
+	return 0;
+failed:
+	return n;
+}
+
 /**
  * get_user_inline - Read user data inlined
  * @val:	The variable to store the value read from user memory
-- 
2.49.0

