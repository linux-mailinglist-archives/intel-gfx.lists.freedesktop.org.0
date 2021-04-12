Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DCE35BBB4
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Apr 2021 10:09:10 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1BC5E6E20F;
	Mon, 12 Apr 2021 08:09:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA8486E20F
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Apr 2021 08:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 Subject:Cc:To:From:Date:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:In-Reply-To;
 bh=a6+zHHfrmNSjnuKpDcqXJsViLAaAf+vjd+fWHfxBxIo=; b=iwOjMpKKyzAFrBidkEKF+HSfqn
 BEsev2o8dOMHA2L1zmtC0v0cDfJ9HOjS5jFS4yuc956dZDcciHG8tfQQIdUNVgs7p31HLXh2UhGNb
 B3pps3OSkNrQ0HcW5nYzgeNDld2ah1kqbkiuJ1h0vNhDTI5TWwqoLKZ2RqEASFl4cPUljMZmb3GsD
 g1TBPdomVhvxlaQ6egk0eFTeeLhj14kQf1qdm6o2RwJeQVQIaTYV9PKUEaCadfElKLH2icgOF5WJP
 z7DRDA90J2bbDAAvPJxdlj96pnVRijnEVnxDLiHHVH9OY+cb7Rv+EUFDV6mS/XDbyT8+lMqgPpz5c
 HKg0/Oog==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by casper.infradead.org with esmtpsa (Exim 4.94 #2 (Red Hat Linux))
 id 1lVrcl-003yd9-Fg; Mon, 12 Apr 2021 08:08:49 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (2048 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id E3D6830026E;
 Mon, 12 Apr 2021 10:08:45 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 0)
 id 4B56525F21533; Mon, 12 Apr 2021 10:08:44 +0200 (CEST)
Message-ID: <20210412080611.902470568@infradead.org>
User-Agent: quilt/0.66
Date: Mon, 12 Apr 2021 10:00:18 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: akpm@linux-foundation.org
References: <20210412080012.357146277@infradead.org>
MIME-Version: 1.0
Subject: [Intel-gfx] [PATCH 6/7] i915: Convert to verify_page_range()
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
Cc: jgross@suse.com, sstabellini@kernel.org, keescook@chromium.org,
 peterz@infradead.org, intel-gfx@lists.freedesktop.org, x86@kernel.org,
 linux-kernel@vger.kernel.org, chris@chris-wilson.co.uk, linux-mm@kvack.org,
 boris.ostrovsky@oracle.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

check_{present,absent}() only need R/O access, use verify_page_range()
instead to remove modular use of apply_to_page_range().

Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
---
 drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c |   16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

--- a/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
+++ b/drivers/gpu/drm/i915/gem/selftests/i915_gem_mman.c
@@ -1225,9 +1225,9 @@ static int igt_mmap_gpu(void *arg)
 	return 0;
 }
 
-static int check_present_pte(pte_t *pte, unsigned long addr, void *data)
+static int check_present_pte(pte_t pte, unsigned long addr, void *data)
 {
-	if (!pte_present(*pte) || pte_none(*pte)) {
+	if (!pte_present(pte) || pte_none(pte)) {
 		pr_err("missing PTE:%lx\n",
 		       (addr - (unsigned long)data) >> PAGE_SHIFT);
 		return -EINVAL;
@@ -1236,9 +1236,9 @@ static int check_present_pte(pte_t *pte,
 	return 0;
 }
 
-static int check_absent_pte(pte_t *pte, unsigned long addr, void *data)
+static int check_absent_pte(pte_t pte, unsigned long addr, void *data)
 {
-	if (pte_present(*pte) && !pte_none(*pte)) {
+	if (pte_present(pte) && !pte_none(pte)) {
 		pr_err("present PTE:%lx; expected to be revoked\n",
 		       (addr - (unsigned long)data) >> PAGE_SHIFT);
 		return -EINVAL;
@@ -1249,14 +1249,14 @@ static int check_absent_pte(pte_t *pte,
 
 static int check_present(unsigned long addr, unsigned long len)
 {
-	return apply_to_page_range(current->mm, addr, len,
-				   check_present_pte, (void *)addr);
+	return verify_page_range(current->mm, addr, len,
+				 check_present_pte, (void *)addr);
 }
 
 static int check_absent(unsigned long addr, unsigned long len)
 {
-	return apply_to_page_range(current->mm, addr, len,
-				   check_absent_pte, (void *)addr);
+	return verify_page_range(current->mm, addr, len,
+				 check_absent_pte, (void *)addr);
 }
 
 static int prefault_range(u64 start, u64 len)


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
