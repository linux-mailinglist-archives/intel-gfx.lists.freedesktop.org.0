Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mOfMMJOa72kbDQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 19:19:15 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 555C84772FA
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 19:19:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC0F010E862;
	Mon, 27 Apr 2026 17:19:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="lp9wELlr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DB10B10E862;
 Mon, 27 Apr 2026 17:19:12 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 5077960139;
 Mon, 27 Apr 2026 17:19:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1FAFFC2BCB4;
 Mon, 27 Apr 2026 17:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1777310352;
 bh=vbZIj5I8a11ig9c375SeIMkNInKGe+jckYb8HPag1tw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=lp9wELlrvJvoeuCK0/zMI5UANnrsQ+T4se/gBOunN8iQDrEi1RstW5G65/9vUEPmI
 U9UXqoktuU7EViGdT+8yzDZHjl2N0E5vd9veY8uQePuAD9x0oGHf4CotQwSmAD24go
 gSXTECesL9+kQmgNOk7myjSgr8UboLxcnh/OrEADTLSIqRqZRx4YwXDl6QWc3wVNsO
 sB/2ZwfKCyhos7Vj9aXXCgNggtmoXoIYLpWXmI9TjsLctEcOG8w3vDT/K6+fVh16nS
 /UcGgkCV5vp5qC1VRJeMqVPGsaV7+wscOAZaxlqKS8j4DsLjsIu1iQmtuFIX3tL+zm
 kvFBNXQR3j5iw==
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
Subject: [RFC PATCH v1 8/9] arm64: Add unsafe_copy_from_user()
Date: Mon, 27 Apr 2026 19:13:49 +0200
Message-ID: <5b09e58a84c9edcfe5724db5cd57e45d96a96bfa.1777306795.git.chleroy@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <cover.1777306795.git.chleroy@kernel.org>
References: <cover.1777306795.git.chleroy@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2498; i=chleroy@kernel.org;
 h=from:subject:message-id; bh=vbZIj5I8a11ig9c375SeIMkNInKGe+jckYb8HPag1tw=;
 b=owGbwMvMwCV2d0KB2p7V54MZT6slMWS+nxmbKDOhb/vkF5+62Iv+nzi0lmWmkWf+tSO3HK9yP
 D89hV+LoaOUhUGMi0FWTJHl+H/uXTO6vqTmT92lDzOHlQlkCAMXpwBMJCKWkeGFnFP5dUbGE1cO
 pXr18eg3ndoc9ubDcl2tYxbdt9o1nmkyMvQuDCp+FV4TvfDP3c6+r/YFCyvUNTZlcrea/2SZ/OM
 dBwcA
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
X-Rspamd-Queue-Id: 555C84772FA
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

At the time being, x86 and arm64 are missing unsafe_copy_from_user().

Add it.

Signed-off-by: Christophe Leroy (CS GROUP) <chleroy@kernel.org>
---
 arch/arm64/include/asm/uaccess.h | 29 ++++++++++++++++++++++++-----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index 1e20ec91b56f..adfdb52cd82b 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -437,7 +437,7 @@ static inline void user_access_restore(unsigned long enabled) { }
  * We want the unsafe accessors to always be inlined and use
  * the error labels - thus the macro games.
  */
-#define unsafe_copy_loop(dst, src, len, type, label)				\
+#define unsafe_put_loop(dst, src, len, type, label)				\
 	while (len >= sizeof(type)) {						\
 		unsafe_put_user(*(type *)(src),(type __user *)(dst),label);	\
 		dst += sizeof(type);						\
@@ -450,10 +450,29 @@ do {									\
 	char __user *__ucu_dst = (_dst);				\
 	const char *__ucu_src = (_src);					\
 	size_t __ucu_len = (_len);					\
-	unsafe_copy_loop(__ucu_dst, __ucu_src, __ucu_len, u64, label);	\
-	unsafe_copy_loop(__ucu_dst, __ucu_src, __ucu_len, u32, label);	\
-	unsafe_copy_loop(__ucu_dst, __ucu_src, __ucu_len, u16, label);	\
-	unsafe_copy_loop(__ucu_dst, __ucu_src, __ucu_len, u8, label);	\
+	unsafe_put_loop(__ucu_dst, __ucu_src, __ucu_len, u64, label);	\
+	unsafe_put_loop(__ucu_dst, __ucu_src, __ucu_len, u32, label);	\
+	unsafe_put_loop(__ucu_dst, __ucu_src, __ucu_len, u16, label);	\
+	unsafe_put_loop(__ucu_dst, __ucu_src, __ucu_len, u8, label);	\
+} while (0)
+
+#define unsafe_get_loop(dst, src, len, type, label)				\
+	while (len >= sizeof(type)) {						\
+		unsafe_get_user(*(type __user *)(src),(type *)(dst),label);	\
+		dst += sizeof(type);						\
+		src += sizeof(type);						\
+		len -= sizeof(type);						\
+	}
+
+#define unsafe_copy_from_user(_dst,_src,_len,label)			\
+do {									\
+	char *__ucu_dst = (_dst);					\
+	const char __user *__ucu_src = (_src);				\
+	size_t __ucu_len = (_len);					\
+	unsafe_get_loop(__ucu_dst, __ucu_src, __ucu_len, u64, label);	\
+	unsafe_get_loop(__ucu_dst, __ucu_src, __ucu_len, u32, label);	\
+	unsafe_get_loop(__ucu_dst, __ucu_src, __ucu_len, u16, label);	\
+	unsafe_get_loop(__ucu_dst, __ucu_src, __ucu_len, u8, label);	\
 } while (0)
 
 extern unsigned long __must_check __arch_clear_user(void __user *to, unsigned long n);
-- 
2.49.0

