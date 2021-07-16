Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C6C23CB255
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jul 2021 08:18:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A63F46E912;
	Fri, 16 Jul 2021 06:18:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org
 [IPv6:2001:8b0:10b:1236::1])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E1236E913;
 Fri, 16 Jul 2021 06:18:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=YF5b8TNXnQcbiaEvFAaNqUDv1lgagsKKhX10bSFvUTo=; b=sqNZerJ2NfaOjzmouDqVOEgUxH
 3oMlW7vdLWOG4TnyeuXQKYg2N1l5qqFACYpROZdmOPyoaqFX35AT9x2rOMe2v/Z/UKbOdhOENcdSV
 v2yInzYd3hKcOEZuzoXG2Tchc8co4oEoNEaJ20LeTASbXvnnlhztW/dilemKPiITr2/8eDWOpQq9n
 d9rIs+jaX8+oo1UrlVwdQzR4OL5gvx8Fm8U2r8ruByVCIQwqQQcvdFMtjJeXdJB73kv4Vnjy7a0KJ
 ON4N4OnkGUiSU3Y/9DVc1mEU3W5nqtMzLed1FojqNAnGuo7NOmoxFYPh04123B/rL4UKC75N/SVyg
 hhVZFMMg==;
Received: from [2001:4bb8:184:8b7c:6b57:320d:f068:19c6] (helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m4H9i-004CsF-5q; Fri, 16 Jul 2021 06:17:12 +0000
From: Christoph Hellwig <hch@lst.de>
To: David Airlie <airlied@linux.ie>,
	Daniel Vetter <daniel@ffwll.ch>
Date: Fri, 16 Jul 2021 08:16:28 +0200
Message-Id: <20210716061634.2446357-2-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210716061634.2446357-1-hch@lst.de>
References: <20210716061634.2446357-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
Subject: [Intel-gfx] [PATCH 1/7] vgaarb: remove VGA_DEFAULT_DEVICE
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
Cc: kvm@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 nouveau@lists.freedesktop.org, dri-devel@lists.freedesktop.org, "Pan,
 Xinhui" <Xinhui.Pan@amd.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Alex Deucher <alexander.deucher@amd.com>, intel-gfx@lists.freedesktop.org,
 =?UTF-8?q?Christian=20K=C3=B6nig?= <christian.koenig@amd.com>,
 Ben Skeggs <bskeggs@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The define is entirely unused.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/vgaarb.h | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/include/linux/vgaarb.h b/include/linux/vgaarb.h
index dc6ddce92066..26ec8a057d2a 100644
--- a/include/linux/vgaarb.h
+++ b/include/linux/vgaarb.h
@@ -42,12 +42,6 @@
 #define VGA_RSRC_NORMAL_IO     0x04
 #define VGA_RSRC_NORMAL_MEM    0x08
 
-/* Passing that instead of a pci_dev to use the system "default"
- * device, that is the one used by vgacon. Archs will probably
- * have to provide their own vga_default_device();
- */
-#define VGA_DEFAULT_DEVICE     (NULL)
-
 struct pci_dev;
 
 /* For use by clients */
-- 
2.30.2

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
