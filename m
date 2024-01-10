Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B6C82962D
	for <lists+intel-gfx@lfdr.de>; Wed, 10 Jan 2024 10:21:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 869D810E198;
	Wed, 10 Jan 2024 09:21:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from bombadil.infradead.org (bombadil.infradead.org
 [IPv6:2607:7c80:54:3::133])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8D5F110E57A;
 Wed, 10 Jan 2024 09:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=SRlTQ4JibYJcOmgh50kWG725LphAqsA74nKJKgMAVp4=; b=Dg3kbq00hAKG9Jac9pBCT8H0hY
 gQ8Pe7mzKNIEig0gdVS8L1YQm0lhILIpgErWpRQQhhUxLv9H0RVqQ3mwJIZgCK71qmej5Pzo80Gdc
 esoiR5D75fIZEZkE2YGIQ0nRjdBJgj5NgoZ0u6hyM5l308ERxwn5zQS37wJOuDp3WVhw9DmbPux0P
 jbkJFK7k3ROEFnFSjfok+rePV67Oo3t8DURPYH89imUH1WfUTjQEQmy1GSAcXWYC8OlDc8YzNDXUE
 PvxJ1Yxm5WtS8mPmLMaHV4I181FWwxPbMxc4CbckfiLDECitlWA61LzaC24kAJ/8WbYHany1t520v
 wVR5xXoQ==;
Received: from [2001:4bb8:191:2f6b:27f:45ef:e74a:3466] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.96 #2 (Red Hat Linux))
 id 1rNUly-00AsAw-0n; Wed, 10 Jan 2024 09:21:18 +0000
From: Christoph Hellwig <hch@lst.de>
To: Matthew Wilcox <willy@infradead.org>, Hugh Dickins <hughd@google.com>,
 Chandan Babu R <chandan.babu@oracle.com>
Subject: [PATCH 2/2] xfs: disable large folio support in xfile_create
Date: Wed, 10 Jan 2024 10:21:09 +0100
Message-Id: <20240110092109.1950011-3-hch@lst.de>
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

The xfarray code will crash if large folios are force enabled using:

   echo force > /sys/kernel/mm/transparent_hugepage/shmem_enabled

Fixing this will require a bit of an API change, and prefeably sorting out
the hwpoison story for pages vs folio and where it is placed in the shmem
API.  For now use this one liner to disable large folios.

Reported-by: Darrick J. Wong <djwong@kernel.org>
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 fs/xfs/scrub/xfile.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/xfs/scrub/xfile.c b/fs/xfs/scrub/xfile.c
index 090c3ead43fdf1..1a8d1bedd0b0dc 100644
--- a/fs/xfs/scrub/xfile.c
+++ b/fs/xfs/scrub/xfile.c
@@ -94,6 +94,11 @@ xfile_create(
 
 	lockdep_set_class(&inode->i_rwsem, &xfile_i_mutex_key);
 
+	/*
+	 * We're not quite ready for large folios yet.
+	 */
+	mapping_clear_large_folios(inode->i_mapping);
+
 	trace_xfile_create(xf);
 
 	*xfilep = xf;
-- 
2.39.2

