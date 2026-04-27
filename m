Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4CoYCnma72kbDQEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 19:18:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CDC8E47721B
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Apr 2026 19:18:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5156B10E867;
	Mon, 27 Apr 2026 17:18:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="YS9v5ort";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0972610E869;
 Mon, 27 Apr 2026 17:18:46 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E16F243CD6;
 Mon, 27 Apr 2026 17:18:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5390FC2BCB4;
 Mon, 27 Apr 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1777310325;
 bh=x+yz+Ptlr8yUKihbRCrYsj2OzN4+HDHdWj3mTkeeywo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YS9v5orti9jIm2coPKy7cH4iQCLjTYOH2T4kGrmAKw1lk2UpD8UcWDut4XHtMo5CX
 290KHU3PNOVzMmnTKEL1o/OfzgOnzBVsJnbuGicRbc3HqjVsrjLo1DZ4Ncwz6tafWZ
 SG8/hG1Ct8pUgSHrDrW4chwaJ34uCldA2tlOQo4bI8M4kMxsW5bP0OLNOAC7BeTwPk
 Mil/pgBJA2/iCGWwmbEh5WNZZrQ4Md/gtqmnREocwFdhobkWjiqhIB30lRO/GV15k3
 DZOePxOSt4vdcYmGqKSVWX7R1FegGyxqEmqkjMUEcFWkKzHsBpXNo8/6bbP3EGANbq
 KZwGUUWEURiLg==
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
Subject: [RFC PATCH v1 6/9] uaccess: Change copy_{to/from}_user to return
 -EFAULT
Date: Mon, 27 Apr 2026 19:13:47 +0200
Message-ID: <1a55107abe15dd78450888e2b5327c3a56af29b7.1777306795.git.chleroy@kernel.org>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <cover.1777306795.git.chleroy@kernel.org>
References: <cover.1777306795.git.chleroy@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2416; i=chleroy@kernel.org;
 h=from:subject:message-id; bh=x+yz+Ptlr8yUKihbRCrYsj2OzN4+HDHdWj3mTkeeywo=;
 b=owGbwMvMwCV2d0KB2p7V54MZT6slMWS+nxkjryH88LzkjscmK202zhcwuOPhcJTlidTVNdtCP
 9vs/VPG2lHKwiDGxSArpshy/D/3rhldX1Lzp+7Sh5nDygQyhIGLUwAm0nCN4b9/yT75hpDtr4zk
 9XPfORmtVO2p/XH+8bFg730PPNfMvn6dkWHDjsJSC09Vr9bDobdrxTgfMm1ckveKR+Rkud3skLM
 HLXgA
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
X-Rspamd-Queue-Id: CDC8E47721B
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

Now that copy_{to/from}_user_partial() are used by callers which expect
partial copy with number of not copied bytes as return value, change
copy_{to/from}_user() to return an int, and return -EFAULT when the
copy is not complete.

Signed-off-by: Christophe Leroy (CS GROUP) <chleroy@kernel.org>
---
 include/linux/uaccess.h | 28 ++++++++++++++++++++++++----
 1 file changed, 24 insertions(+), 4 deletions(-)

diff --git a/include/linux/uaccess.h b/include/linux/uaccess.h
index 2d37173782b3..33b7d0f5f808 100644
--- a/include/linux/uaccess.h
+++ b/include/linux/uaccess.h
@@ -211,7 +211,7 @@ extern __must_check unsigned long
 _copy_to_user(void __user *, const void *, unsigned long);
 
 static __always_inline unsigned long __must_check
-copy_from_user(void *to, const void __user *from, unsigned long n)
+copy_from_user_common(void *to, const void __user *from, unsigned long n, bool partial)
 {
 	if (!check_copy_size(to, n, false))
 		return n;
@@ -221,10 +221,20 @@ copy_from_user(void *to, const void __user *from, unsigned long n)
 		return _inline_copy_from_user(to, from, n);
 }
 
-#define copy_from_user_partial copy_from_user
+static __always_inline unsigned long __must_check
+copy_from_user_partial(void *to, const void __user *from, unsigned long n)
+{
+	return copy_from_user_common(to, from, n, true);
+}
+
+static __always_inline int __must_check
+copy_from_user(void *to, const void __user *from, unsigned long n)
+{
+	return copy_from_user_common(to, from, n, false) ? -EFAULT : 0;
+}
 
 static __always_inline unsigned long __must_check
-copy_to_user(void __user *to, const void *from, unsigned long n)
+copy_to_user_common(void __user *to, const void *from, unsigned long n, bool partial)
 {
 	if (!check_copy_size(from, n, true))
 		return n;
@@ -235,7 +245,17 @@ copy_to_user(void __user *to, const void *from, unsigned long n)
 		return _inline_copy_to_user(to, from, n);
 }
 
-#define copy_to_user_partial copy_to_user
+static __always_inline unsigned long __must_check
+copy_to_user_partial(void __user *to, const void *from, unsigned long n)
+{
+	return copy_to_user_common(to, from, n, true);
+}
+
+static __always_inline int __must_check
+copy_to_user(void __user *to, const void *from, unsigned long n)
+{
+	return copy_to_user_common(to, from, n, false) ? -EFAULT : 0;
+}
 
 #ifndef copy_mc_to_kernel
 /*
-- 
2.49.0

