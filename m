Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E3A0A22482
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 20:19:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A93E110E881;
	Wed, 29 Jan 2025 19:19:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=fail reason="signature verification failed" (2048-bit key; unprotected) header.d=linux.org.uk header.i=@linux.org.uk header.b="ROvPplTy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from zeniv.linux.org.uk (zeniv.linux.org.uk [62.89.141.173])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6C96510E175;
 Wed, 29 Jan 2025 19:19:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=linux.org.uk; s=zeniv-20220401; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=bThvo/EiGZ8aTUzk1TuKwifd2aexUrzUY8HyPKaM+UQ=; b=ROvPplTy8EDmNeoblpewkXKoUh
 Zn8rKnyaw7qCMLGgNyidNiz6xQbwkBTTqBod8nTvEbP/WS5iVk9BFToeW8M8/hnrRlKabSh79mjNq
 MSaGmqZOBGOyUPPZFxGpASFKSf3dawH101x2H0hQ/EFi2AUBWJTzjbIrou3dh/kZMB5OnggX4cCQv
 zqzG4k569cMc9kznlh+XkTGHrqB6IzDXXQx0497Dhl5/WPESo/YiQ+dchIUdV4vZriZPTBCv2cnLp
 PXpMeEbhsBA71rjt4TQpYG3qJdc9dubseHb16o7i+ILCZPc2BBqsQJrujvc3UmO8X92TeLFPmvhkD
 fnezl+TQ==;
Received: from viro by zeniv.linux.org.uk with local (Exim 4.98 #2 (Red Hat
 Linux)) id 1tdDb7-0000000FWKg-0PGA; Wed, 29 Jan 2025 19:19:37 +0000
Date: Wed, 29 Jan 2025 19:19:37 +0000
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
Message-ID: <20250129191937.GR1977892@ZenIV>
References: <SJ1PR11MB6129D7DA59A733AD38E081E3B9E02@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <20250123181853.GC1977892@ZenIV>
 <Z5Zazwd0nto-v-RS@tuxmaker.boeblingen.de.ibm.com>
 <20250127050416.GE1977892@ZenIV>
 <SJ1PR11MB6129954089EA5288ED6D963EB9EF2@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <20250129043712.GQ1977892@ZenIV>
 <2025012939-mashing-carport-53bd@gregkh>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2025012939-mashing-carport-53bd@gregkh>
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

On Wed, Jan 29, 2025 at 08:13:02AM +0100, Greg Kroah-Hartman wrote:

> > Both are needed, actually.  Slightly longer term I would rather
> > split full_proxy_{read,write,lseek}() into short and full variant,
> > getting rid of the "check which pointer is non-NULL" and killed
> > the two remaining users of debugfs_real_fops() outside of
> > fs/debugfs/file.c; then we could union these ->..._fops pointers,
> > but until then they need to be initialized.
> > 
> > And yes, ->methods obviously needs to be initialized.
> > 
> > Al, bloody embarrassed ;-/
> 
> No worries, want to send a patch to fix both of these up so we can fix
> up Linus's tree now?

[PATCH] Fix the missing initializations in __debugfs_file_get()
    
both method table pointers in debugfs_fsdata need to be initialized,
obviously, and calculating the bitmap of present methods would also
go better if we start with initialized state.
    
Fixes: 41a0ecc0997c "debugfs: get rid of dynamically allocation proxy_ops"
Fucked-up-by: Al Viro <viro@zeniv.linux.org.uk>
Signed-off-by: Al Viro <viro@zeniv.linux.org.uk>
---
diff --git a/fs/debugfs/file.c b/fs/debugfs/file.c
index e33cc77699cd..69e9ddcb113d 100644
--- a/fs/debugfs/file.c
+++ b/fs/debugfs/file.c
@@ -94,6 +94,7 @@ static int __debugfs_file_get(struct dentry *dentry, enum dbgfs_get_mode mode)
 		fsd = d_fsd;
 	} else {
 		struct inode *inode = dentry->d_inode;
+		unsigned int methods = 0;
 
 		if (WARN_ON(mode == DBGFS_GET_ALREADY))
 			return -EINVAL;
@@ -106,25 +107,28 @@ static int __debugfs_file_get(struct dentry *dentry, enum dbgfs_get_mode mode)
 			const struct debugfs_short_fops *ops;
 			ops = fsd->short_fops = DEBUGFS_I(inode)->short_fops;
 			if (ops->llseek)
-				fsd->methods |= HAS_LSEEK;
+				methods |= HAS_LSEEK;
 			if (ops->read)
-				fsd->methods |= HAS_READ;
+				methods |= HAS_READ;
 			if (ops->write)
-				fsd->methods |= HAS_WRITE;
+				methods |= HAS_WRITE;
+			fsd->real_fops = NULL;
 		} else {
 			const struct file_operations *ops;
 			ops = fsd->real_fops = DEBUGFS_I(inode)->real_fops;
 			if (ops->llseek)
-				fsd->methods |= HAS_LSEEK;
+				methods |= HAS_LSEEK;
 			if (ops->read)
-				fsd->methods |= HAS_READ;
+				methods |= HAS_READ;
 			if (ops->write)
-				fsd->methods |= HAS_WRITE;
+				methods |= HAS_WRITE;
 			if (ops->unlocked_ioctl)
-				fsd->methods |= HAS_IOCTL;
+				methods |= HAS_IOCTL;
 			if (ops->poll)
-				fsd->methods |= HAS_POLL;
+				methods |= HAS_POLL;
+			fsd->short_fops = NULL;
 		}
+		fsd->methods = methods;
 		refcount_set(&fsd->active_users, 1);
 		init_completion(&fsd->active_users_drained);
 		INIT_LIST_HEAD(&fsd->cancellations);
