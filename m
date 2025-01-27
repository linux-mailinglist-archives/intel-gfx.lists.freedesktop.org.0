Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CFCDA1D092
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2025 06:04:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CBBD10E194;
	Mon, 27 Jan 2025 05:04:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=linux.org.uk header.i=@linux.org.uk header.b="jYMJ3F/j";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from zeniv.linux.org.uk (zeniv.linux.org.uk [62.89.141.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E94310E194;
 Mon, 27 Jan 2025 05:04:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=xT9F/RFdKtk5OzK8AQYzsZ/3h+Z8KyH5het+sIQGzCQ=; b=jYMJ3F/j2kGZiATTBD4dvFqwds
 jNwOhE53FvO6ss+ikAuDcFyZ3ZdaXPfu741xu7ZqTPjeWNoyI3cBzRdN26FgVpWIylhpx6zvMQdlS
 U4qonSMd4H6zF02WZud0iQUiL/o8nL9ng2n8MFgwL+U3KU5IKX5CFUnF46qNyXe3hhRabBSI3tFep
 WBDl9tQL4qvaM88srg5gfnvfi/fTJqAaFzAFO8zcbwQnU7THHgcQ3Xpq2z7CeuNE+amtgA6Fex87F
 O33JgG/xDlCCtgTQO3mZLXJMc0nVpr6qHrrxI1PKiI460lJpeOTqtePRND8z8RWfB3cRJvEZIB+yH
 fPIiolXA==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tcHIG-0000000Ct3Q-3b0i; Mon, 27 Jan 2025 05:04:16 +0000
Date: Mon, 27 Jan 2025 05:04:16 +0000
From: Al Viro <viro@zeniv.linux.org.uk>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Kurmi, Suresh Kumar" <suresh.kumar.kurmi@intel.com>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "linux-fsdevel@vger.kernel.org" <linux-fsdevel@vger.kernel.org>,
 Alexander Gordeev <agordeev@linux.ibm.com>
Subject: Re: Regression on linux-next (next-20250120)
Message-ID: <20250127050416.GE1977892@ZenIV>
References: <SJ1PR11MB6129D7DA59A733AD38E081E3B9E02@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <20250123181853.GC1977892@ZenIV>
 <Z5Zazwd0nto-v-RS@tuxmaker.boeblingen.de.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z5Zazwd0nto-v-RS@tuxmaker.boeblingen.de.ibm.com>
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

On Sun, Jan 26, 2025 at 04:54:55PM +0100, Alexander Gordeev wrote:

> > > Since the version next-20250120 [2], we are seeing the following regression
> > 
> > Ugh...  To narrow the things down, could you see if replacing
> >                 fsd = kmalloc(sizeof(*fsd), GFP_KERNEL);
> > with
> >                 fsd = kzalloc(sizeof(*fsd), GFP_KERNEL);
> > in fs/debugfs/file.c:__debugfs_file_get() affects the test?
> 
> This change fixes lots of the below failures in our CI. FWIW:
> 
> Tested-by: Alexander Gordeev <agordeev@linux.ibm.com>

The real fix follows:

[PATCH] Fix the missing initializations in __debugfs_file_get()

both method table pointers in debugfs_fsdata need to be initialized,
obviously...

Fixes: 41a0ecc0997c "debugfs: get rid of dynamically allocation proxy_ops"
Fucked-up-by: Al Viro <viro@zeniv.linux.org.uk>
Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>
---
diff --git a/fs/debugfs/file.c b/fs/debugfs/file.c
index e33cc77699cd..212cd8128e1f 100644
--- a/fs/debugfs/file.c
+++ b/fs/debugfs/file.c
@@ -111,6 +111,7 @@ static int __debugfs_file_get(struct dentry *dentry, enum dbgfs_get_mode mode)
 				fsd->methods |= HAS_READ;
 			if (ops->write)
 				fsd->methods |= HAS_WRITE;
+			fsd->real_fops = NULL;
 		} else {
 			const struct file_operations *ops;
 			ops = fsd->real_fops = DEBUGFS_I(inode)->real_fops;
@@ -124,6 +125,7 @@ static int __debugfs_file_get(struct dentry *dentry, enum dbgfs_get_mode mode)
 				fsd->methods |= HAS_IOCTL;
 			if (ops->poll)
 				fsd->methods |= HAS_POLL;
+			fsd->short_fops = NULL;
 		}
 		refcount_set(&fsd->active_users, 1);
 		init_completion(&fsd->active_users_drained);
