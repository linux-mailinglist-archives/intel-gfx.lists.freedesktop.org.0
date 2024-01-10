Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CB8E82962B
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 10:21:36 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 25FDF10E18B;
	Wed, 10 Jan 2024 09:21:35 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4E9E10E198;
 Wed, 10 Jan 2024 09:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=vemtm26RZJwq2BkJen0DsgudNpnNIQOHTlEDhkpMTMQ=; b=VvT59FfZyGViQ4E9bybilVlr/n
 E58xcBMqiG7yHbZRyzY+MeZqOUO73LE+/oyqen6J0wutWRO0UD5OylhJ4Mqx1GoUwrpWkQ9ockMTO
 zyTTGC4l3K2AVsMneNh/767/v9arpPkmZu6jv9Kpv6xyiCQwY2IKXC2f87wwmXRPgcGR0L6ncNvtJ
 bRz65LMjl5Yq3e1j5b56u9hCiLVBySWQ/Sr/aid4EvqC/7O7zhvFA590kdpkdOalJHAgkUUs+n+Vw
 EHaNxwv8+03GiryNOsM8jEJ2KcP9yx6govhS285icE+S4S6N7L/QIGjZIj5ny8VRfIkY7q9yV3/yB
 MgyUdYOw==;
Received: from [2001:4bb8:191:2f6b:27f:45ef:e74a:3466] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
 id 1rNUlv-00AsAi-1t; Wed, 10 Jan 2024 09:21:16 +0000
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>, Hugh Dickins <hughd@google.com>,
 Chandan Babu R <chandan.babu@oracle.com>
Subject: [PATCH 1/2] mm: add a mapping_clear_large_folios helper
Date: Wed, 10 Jan 2024 10:21:08 +0100
Message-Id: <20240110092109.1950011-2-hch@lst.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240110092109.1950011-1-hch@lst.de>
References: <20240110092109.1950011-1-hch@lst.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
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
Cc: "Darrick J . Wong" <djwong@kernel.org>, dri-devel@lists.freedesktop.org,
 David Howells <dhowells@redhat.com>, linux-mm@kvack.org,
 Huang Rui <ray.huang@amd.com>, David Airlie <airlied@gmail.com>,
 x86@kernel.org, Dave Hansen <dave.hansen@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, intel-gfx@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 linux-sgx@vger.kernel.org, Jarkko Sakkinen <jarkko@kernel.org>,
 keyrings@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Christian Koenig <christian.koenig@amd.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Users of shmem_kernel_file_setup might not be able to deal with large
folios (yet).  Give them a way to disable large folio support on their
mapping.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/pagemap.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/include/linux/pagemap.h b/include/linux/pagemap.h
index 06142ff7f9ce0e..352d1f8423292c 100644
--- a/include/linux/pagemap.h
+++ b/include/linux/pagemap.h
@@ -343,6 +343,20 @@ static inline void mapping_set_large_folios(struct address_space *mapping)
 	__set_bit(AS_LARGE_FOLIO_SUPPORT, &mapping->flags);
 }
 
+/**
+ * mapping_clear_large_folios() - Disable large folio support for a mapping
+ * @mapping: The mapping.
+ *
+ * This can be called to undo the effect of mapping_set_large_folios().
+ *
+ * Context: This should not be called while the inode is active as it
+ * is non-atomic.
+ */
+static inline void mapping_clear_large_folios(struct address_space *mapping)
+{
+	__clear_bit(AS_LARGE_FOLIO_SUPPORT, &mapping->flags);
+}
+
 /*
  * Large folio support currently depends on THP.  These dependencies are
  * being worked on but are not yet fixed.
-- 
2.39.2

