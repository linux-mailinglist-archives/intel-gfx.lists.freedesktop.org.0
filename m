Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 78333949E8F
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Aug 2024 05:46:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A0A9410E11F;
	Wed,  7 Aug 2024 03:46:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; secure) header.d=infradead.org header.i=@infradead.org header.b="kBpsMhbZ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from casper.infradead.org (casper.infradead.org [90.155.50.34])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 22A4C10E11F
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Aug 2024 03:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=Jy5sBXXGr2voNP18guOdqKk17MKFMl8ptCuzk1nlp0Q=; b=kBpsMhbZ+1Pgy99WHBD3YzI4XG
 Hqy0KiWbREOfNTGd4D85Ztw2vyfymYiId0v/fTjNdlVAQK/i5x/NoKEy/QsyytCQ29qGuUAPcq9Qm
 vjWq9+4BtI6nienJ8u7m7JMTT8t8SpdKlmHFaOFuyV61i2voDWVr/HNRi6uBFNEFEKkv5wF5jsRT4
 QsFXi0/Oqo98Wx1ic4RCpOZYs5IrLeuD9EiwRoO7eiq16UpiiqcAEe8uXB9oQygLNDqEwGOxHUSal
 larh/IiUtXsxc/JN3FDf2sNmqYdwc6o9DNqJ+ZGljoforqQ0namjXayDrOo23zksSQNAh0C4Om5cd
 UgGbrBrg==;
Received: from willy by casper.infradead.org with local (Exim 4.97.1 #2 (Red
 Hat Linux)) id 1sbXct-00000006gRT-3Off;
 Wed, 07 Aug 2024 03:46:16 +0000
Date: Wed, 7 Aug 2024 04:46:15 +0100
From: Matthew Wilcox <willy@infradead.org>
To: kernel test robot <oliver.sang@intel.com>,
 Ryan Roberts <ryan.roberts@arm.com>, Christian Brauner <brauner@kernel.org>
Cc: oe-lkp@lists.linux.dev, lkp@intel.com,
 Linux Memory Management List <linux-mm@kvack.org>,
 linux-fsdevel@vger.kernel.org, linux-block@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-bcachefs@vger.kernel.org,
 ceph-devel@vger.kernel.org, ecryptfs@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-um@lists.infradead.org, linux-mtd@lists.infradead.org,
 jfs-discussion@lists.sourceforge.net, linux-nfs@vger.kernel.org,
 linux-nilfs@vger.kernel.org, ntfs3@lists.linux.dev,
 ocfs2-devel@lists.linux.dev,
 linux-karma-devel@lists.sourceforge.net, devel@lists.orangefs.org,
 reiserfs-devel@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [linux-next:master] [fs]  cdc4ad36a8:
 kernel_BUG_at_include/linux/page-flags.h
Message-ID: <ZrLuBz1eBdgFzIyC@casper.infradead.org>
References: <202408062249.2194d51b-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <202408062249.2194d51b-lkp@intel.com>
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

On Tue, Aug 06, 2024 at 10:26:17PM +0800, kernel test robot wrote:
> kernel test robot noticed "kernel_BUG_at_include/linux/page-flags.h" on:
> 
> commit: cdc4ad36a871b7ac43fcc6b2891058d332ce60ce ("fs: Convert aops->write_begin to take a folio")
> https://git.kernel.org/cgit/linux/kernel/git/next/linux-next.git master
> 
> [test failed on linux-next/master 1e391b34f6aa043c7afa40a2103163a0ef06d179]
> 
> in testcase: boot

This patch should fix it.

Christian, can you squash the fix in?


diff --git a/mm/shmem.c b/mm/shmem.c
index 7d28304aea0f..66ff87417090 100644
--- a/mm/shmem.c
+++ b/mm/shmem.c
@@ -2904,7 +2904,8 @@ shmem_write_begin(struct file *file, struct address_space *mapping,
 	if (ret)
 		return ret;
 
-	if (folio_test_has_hwpoisoned(folio)) {
+	if (folio_test_hwpoison(folio) ||
+	    (folio_test_large(folio) && folio_test_has_hwpoisoned(folio))) {
 		folio_unlock(folio);
 		folio_put(folio);
 		return -EIO;
