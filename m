Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52867A64FDE
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Mar 2025 13:54:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 80DA510E3E7;
	Mon, 17 Mar 2025 12:54:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="WgEieH7S";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8293810E252
 for <intel-gfx@lists.freedesktop.org>; Mon, 17 Mar 2025 01:08:59 +0000 (UTC)
Received: by mail-pl1-f171.google.com with SMTP id
 d9443c01a7336-2240b4de12bso20214135ad.2
 for <intel-gfx@lists.freedesktop.org>; Sun, 16 Mar 2025 18:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1742173739; x=1742778539; darn=lists.freedesktop.org;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:date:from:from:to
 :cc:subject:date:message-id:reply-to;
 bh=+xgAMxTm7HfigOCMkwcZ9gBPb1kqXdvU5TNojxRRc20=;
 b=WgEieH7SKPFIuGW3KjRLOamoI8BpXVJ2aKakSLbQ0/h7FZ9DGHXlLqECs0thKfKeGO
 Zc1WoQJT1P35JIhDcxkzaaR6StJ+0KPDlB6S+JFvyfQ6qBR1TOhS3g6oTvKst6Hd/mWk
 VR5I7BoXLsN2fa/2uy+k4OIwA8VHVEfgNGywNZW5ECkGYxLvWhB9s+el2Y/4fhIV4sHN
 9DfYACVNs0cEzMS+6QS5NUlBGB0uzZRQltZ2buRBrtbVPgFu9iy2+F+kBnSoPqLik6Mp
 iVoECXxBLQHSSNn2tuLL9ldzSErispLUMyGcNxpl4qJRjrDt69VEO51AG5j4Q/PAtXsF
 QirQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742173739; x=1742778539;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:date:from
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=+xgAMxTm7HfigOCMkwcZ9gBPb1kqXdvU5TNojxRRc20=;
 b=D5ztHvkYGU5dVlCAx+3/UX4zLNzVeOOP7QK1m6GGXK1S5G5/XaOLsDSbzBWO/eVST+
 CApqkZwMw/jS5rUAsdBAIagt4bBtaLLJVDptUPCeXsj31etbbgRHyC0O542kY7uZrgJ6
 63hhdxWYFbLMknb2tNclFKElsDgd8Wpcd4zotalbhmJ1NTRWnYkXnnU5n0DGISzvXEMm
 oobA6Kk5rR5cO+ZSLnvrLNf0Ne/Aqyk6SE/I4VWzwFWldOf0RypRRldCOrvQb+GZNxAc
 T+qOJZ4oOn7A89KuE7lNEIsibt9O67XoR13md+Hme505rgKRb1APxMp2iOxta2Atyy+2
 M6ww==
X-Forwarded-Encrypted: i=1;
 AJvYcCUxABKDq7xEq74ZXaxRQas7idZDtPSuTFUZgepMvQHjb4eeWL9H/slCKBoh+9f9a8funzwmkdhxr6A=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyX7fwiad+l3AS16cG7ZE9GS5nZQK8eea6l+WyOXl2hGr8/EIuR
 mhTAKRBWM4LTTBG4aO8tX4ixZSjJeahoRs++8QNMaf3XcRi22Rzh
X-Gm-Gg: ASbGncsaXLn2+loyS5QmRN487dyRuTYzeX2lTu9tNZZb8Rv4ukB7i5v82cghg1Vdxjq
 umQgJZaKLFbF9rYPMYkIBl2aJKuVLa7fAIzKHpA2jJ+BZs9RAqgKJGR3eanB8TS+xZ28SZ1V3zt
 8j/E92hBYwCcl05y2rMyZNsa5VOx6e84G5Koy0soy0TEM+7RSydoHsiAqZ5GdQ87P7nrtQSGdyy
 LqxX6sAsM6PBu1P7Fn49wjm3EXelDu1ElD3TliJFCjWU/+j90m9JAtHDL/ll5Gvh6bHEpn2CBcf
 eNUTlfgc8zlYvMkmM6emRyQE0yi/6l915Q==
X-Google-Smtp-Source: AGHT+IE/cCFlfGwrOgbban+cifwtkZH2e1irfVNzdXM6ynsdeqb6iM61hNrMTX1FOVcYWx2Wvv7NZg==
X-Received: by 2002:a17:902:e5cb:b0:21f:7a8b:d675 with SMTP id
 d9443c01a7336-225e0a62f94mr140029755ad.4.1742173739146; 
 Sun, 16 Mar 2025 18:08:59 -0700 (PDT)
Received: from fan ([2601:646:8f03:9fee:1b48:1bbe:f0ea:f17])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-225c6888414sm63116515ad.21.2025.03.16.18.08.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 16 Mar 2025 18:08:58 -0700 (PDT)
From: Fan Ni <nifan.cxl@gmail.com>
X-Google-Original-From: Fan Ni <fan.ni@samsung.com>
Date: Sun, 16 Mar 2025 18:08:52 -0700
To: "Matthew Wilcox (Oracle)" <willy@infradead.org>
Cc: linux-fsdevel@vger.kernel.org, linux-mm@kvack.org,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 11/11] fs: Remove aops->writepage
Message-ID: <Z9d2JH33sLeCuzfE@fan>
References: <20250307135414.2987755-1-willy@infradead.org>
 <20250307135414.2987755-12-willy@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250307135414.2987755-12-willy@infradead.org>
X-Mailman-Approved-At: Mon, 17 Mar 2025 12:54:50 +0000
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

On Fri, Mar 07, 2025 at 01:54:11PM +0000, Matthew Wilcox (Oracle) wrote:
> All callers and implementations are now removed, so remove the operation
> and update the documentation to match.
> 
> Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> ---

Hi Matthew,

Tried to apply the remaining patches in the patchest (Patch 5-11)  which
have not picked up by linux-next. It seems we have more to cleanup.

For example, I hit the following issue when try to compile
----------------------------------------------------------------
drivers/gpu/drm/ttm/ttm_backup.c: In function ‘ttm_backup_backup_page’:
drivers/gpu/drm/ttm/ttm_backup.c:139:39: error: ‘const struct address_space_operations’ has no member named ‘writepage’; did you mean ‘writepages’?
  139 |                 ret = mapping->a_ops->writepage(folio_file_page(to_folio, idx), &wbc);
      |                                       ^~~~~~~~~
      |                                       writepages

----------------------------------------------------------------

Fan

>  Documentation/admin-guide/cgroup-v2.rst |  2 +-
>  Documentation/filesystems/fscrypt.rst   |  2 +-
>  Documentation/filesystems/locking.rst   | 54 +------------------------
>  Documentation/filesystems/vfs.rst       | 39 +++++-------------
>  fs/buffer.c                             |  4 +-
>  include/linux/fs.h                      |  1 -
>  mm/vmscan.c                             |  1 -
>  7 files changed, 15 insertions(+), 88 deletions(-)
> 
> diff --git a/Documentation/admin-guide/cgroup-v2.rst b/Documentation/admin-guide/cgroup-v2.rst
> index 77d80a7e975b..4e10b4084381 100644
> --- a/Documentation/admin-guide/cgroup-v2.rst
> +++ b/Documentation/admin-guide/cgroup-v2.rst
> @@ -3028,7 +3028,7 @@ Filesystem Support for Writeback
>  --------------------------------
>  
>  A filesystem can support cgroup writeback by updating
> -address_space_operations->writepage[s]() to annotate bio's using the
> +address_space_operations->writepages() to annotate bio's using the
>  following two functions.
>  
>    wbc_init_bio(@wbc, @bio)
> diff --git a/Documentation/filesystems/fscrypt.rst b/Documentation/filesystems/fscrypt.rst
> index e80329908549..3d22e2db732d 100644
> --- a/Documentation/filesystems/fscrypt.rst
> +++ b/Documentation/filesystems/fscrypt.rst
> @@ -1409,7 +1409,7 @@ read the ciphertext into the page cache and decrypt it in-place.  The
>  folio lock must be held until decryption has finished, to prevent the
>  folio from becoming visible to userspace prematurely.
>  
> -For the write path (->writepage()) of regular files, filesystems
> +For the write path (->writepages()) of regular files, filesystems
>  cannot encrypt data in-place in the page cache, since the cached
>  plaintext must be preserved.  Instead, filesystems must encrypt into a
>  temporary buffer or "bounce page", then write out the temporary
> diff --git a/Documentation/filesystems/locking.rst b/Documentation/filesystems/locking.rst
> index 0ec0bb6eb0fb..2e567e341c3b 100644
> --- a/Documentation/filesystems/locking.rst
> +++ b/Documentation/filesystems/locking.rst
> @@ -249,7 +249,6 @@ address_space_operations
>  ========================
>  prototypes::
>  
> -	int (*writepage)(struct page *page, struct writeback_control *wbc);
>  	int (*read_folio)(struct file *, struct folio *);
>  	int (*writepages)(struct address_space *, struct writeback_control *);
>  	bool (*dirty_folio)(struct address_space *, struct folio *folio);
> @@ -280,7 +279,6 @@ locking rules:
>  ======================	======================== =========	===============
>  ops			folio locked		 i_rwsem	invalidate_lock
>  ======================	======================== =========	===============
> -writepage:		yes, unlocks (see below)
>  read_folio:		yes, unlocks				shared
>  writepages:
>  dirty_folio:		maybe
> @@ -309,54 +307,6 @@ completion.
>  
>  ->readahead() unlocks the folios that I/O is attempted on like ->read_folio().
>  
> -->writepage() is used for two purposes: for "memory cleansing" and for
> -"sync".  These are quite different operations and the behaviour may differ
> -depending upon the mode.
> -
> -If writepage is called for sync (wbc->sync_mode != WBC_SYNC_NONE) then
> -it *must* start I/O against the page, even if that would involve
> -blocking on in-progress I/O.
> -
> -If writepage is called for memory cleansing (sync_mode ==
> -WBC_SYNC_NONE) then its role is to get as much writeout underway as
> -possible.  So writepage should try to avoid blocking against
> -currently-in-progress I/O.
> -
> -If the filesystem is not called for "sync" and it determines that it
> -would need to block against in-progress I/O to be able to start new I/O
> -against the page the filesystem should redirty the page with
> -redirty_page_for_writepage(), then unlock the page and return zero.
> -This may also be done to avoid internal deadlocks, but rarely.
> -
> -If the filesystem is called for sync then it must wait on any
> -in-progress I/O and then start new I/O.
> -
> -The filesystem should unlock the page synchronously, before returning to the
> -caller, unless ->writepage() returns special WRITEPAGE_ACTIVATE
> -value. WRITEPAGE_ACTIVATE means that page cannot really be written out
> -currently, and VM should stop calling ->writepage() on this page for some
> -time. VM does this by moving page to the head of the active list, hence the
> -name.
> -
> -Unless the filesystem is going to redirty_page_for_writepage(), unlock the page
> -and return zero, writepage *must* run set_page_writeback() against the page,
> -followed by unlocking it.  Once set_page_writeback() has been run against the
> -page, write I/O can be submitted and the write I/O completion handler must run
> -end_page_writeback() once the I/O is complete.  If no I/O is submitted, the
> -filesystem must run end_page_writeback() against the page before returning from
> -writepage.
> -
> -That is: after 2.5.12, pages which are under writeout are *not* locked.  Note,
> -if the filesystem needs the page to be locked during writeout, that is ok, too,
> -the page is allowed to be unlocked at any point in time between the calls to
> -set_page_writeback() and end_page_writeback().
> -
> -Note, failure to run either redirty_page_for_writepage() or the combination of
> -set_page_writeback()/end_page_writeback() on a page submitted to writepage
> -will leave the page itself marked clean but it will be tagged as dirty in the
> -radix tree.  This incoherency can lead to all sorts of hard-to-debug problems
> -in the filesystem like having dirty inodes at umount and losing written data.
> -
>  ->writepages() is used for periodic writeback and for syscall-initiated
>  sync operations.  The address_space should start I/O against at least
>  ``*nr_to_write`` pages.  ``*nr_to_write`` must be decremented for each page
> @@ -364,8 +314,8 @@ which is written.  The address_space implementation may write more (or less)
>  pages than ``*nr_to_write`` asks for, but it should try to be reasonably close.
>  If nr_to_write is NULL, all dirty pages must be written.
>  
> -writepages should _only_ write pages which are present on
> -mapping->io_pages.
> +writepages should _only_ write pages which are present in
> +mapping->i_pages.
>  
>  ->dirty_folio() is called from various places in the kernel when
>  the target folio is marked as needing writeback.  The folio cannot be
> diff --git a/Documentation/filesystems/vfs.rst b/Documentation/filesystems/vfs.rst
> index ae79c30b6c0c..f66a4e706b17 100644
> --- a/Documentation/filesystems/vfs.rst
> +++ b/Documentation/filesystems/vfs.rst
> @@ -716,9 +716,8 @@ page lookup by address, and keeping track of pages tagged as Dirty or
>  Writeback.
>  
>  The first can be used independently to the others.  The VM can try to
> -either write dirty pages in order to clean them, or release clean pages
> -in order to reuse them.  To do this it can call the ->writepage method
> -on dirty pages, and ->release_folio on clean folios with the private
> +release clean pages in order to reuse them.  To do this it can call 
> +->release_folio on clean folios with the private
>  flag set.  Clean pages without PagePrivate and with no external references
>  will be released without notice being given to the address_space.
>  
> @@ -731,8 +730,8 @@ maintains information about the PG_Dirty and PG_Writeback status of each
>  page, so that pages with either of these flags can be found quickly.
>  
>  The Dirty tag is primarily used by mpage_writepages - the default
> -->writepages method.  It uses the tag to find dirty pages to call
> -->writepage on.  If mpage_writepages is not used (i.e. the address
> +->writepages method.  It uses the tag to find dirty pages to
> +write back.  If mpage_writepages is not used (i.e. the address
>  provides its own ->writepages) , the PAGECACHE_TAG_DIRTY tag is almost
>  unused.  write_inode_now and sync_inode do use it (through
>  __sync_single_inode) to check if ->writepages has been successful in
> @@ -756,23 +755,23 @@ pages, however the address_space has finer control of write sizes.
>  
>  The read process essentially only requires 'read_folio'.  The write
>  process is more complicated and uses write_begin/write_end or
> -dirty_folio to write data into the address_space, and writepage and
> +dirty_folio to write data into the address_space, and
>  writepages to writeback data to storage.
>  
>  Adding and removing pages to/from an address_space is protected by the
>  inode's i_mutex.
>  
>  When data is written to a page, the PG_Dirty flag should be set.  It
> -typically remains set until writepage asks for it to be written.  This
> +typically remains set until writepages asks for it to be written.  This
>  should clear PG_Dirty and set PG_Writeback.  It can be actually written
>  at any point after PG_Dirty is clear.  Once it is known to be safe,
>  PG_Writeback is cleared.
>  
>  Writeback makes use of a writeback_control structure to direct the
> -operations.  This gives the writepage and writepages operations some
> +operations.  This gives the writepages operation some
>  information about the nature of and reason for the writeback request,
>  and the constraints under which it is being done.  It is also used to
> -return information back to the caller about the result of a writepage or
> +return information back to the caller about the result of a
>  writepages request.
>  
>  
> @@ -819,7 +818,6 @@ cache in your filesystem.  The following members are defined:
>  .. code-block:: c
>  
>  	struct address_space_operations {
> -		int (*writepage)(struct page *page, struct writeback_control *wbc);
>  		int (*read_folio)(struct file *, struct folio *);
>  		int (*writepages)(struct address_space *, struct writeback_control *);
>  		bool (*dirty_folio)(struct address_space *, struct folio *);
> @@ -848,25 +846,6 @@ cache in your filesystem.  The following members are defined:
>  		int (*swap_rw)(struct kiocb *iocb, struct iov_iter *iter);
>  	};
>  
> -``writepage``
> -	called by the VM to write a dirty page to backing store.  This
> -	may happen for data integrity reasons (i.e. 'sync'), or to free
> -	up memory (flush).  The difference can be seen in
> -	wbc->sync_mode.  The PG_Dirty flag has been cleared and
> -	PageLocked is true.  writepage should start writeout, should set
> -	PG_Writeback, and should make sure the page is unlocked, either
> -	synchronously or asynchronously when the write operation
> -	completes.
> -
> -	If wbc->sync_mode is WB_SYNC_NONE, ->writepage doesn't have to
> -	try too hard if there are problems, and may choose to write out
> -	other pages from the mapping if that is easier (e.g. due to
> -	internal dependencies).  If it chooses not to start writeout, it
> -	should return AOP_WRITEPAGE_ACTIVATE so that the VM will not
> -	keep calling ->writepage on that page.
> -
> -	See the file "Locking" for more details.
> -
>  ``read_folio``
>  	Called by the page cache to read a folio from the backing store.
>  	The 'file' argument supplies authentication information to network
> @@ -909,7 +888,7 @@ cache in your filesystem.  The following members are defined:
>  	given and that many pages should be written if possible.  If no
>  	->writepages is given, then mpage_writepages is used instead.
>  	This will choose pages from the address space that are tagged as
> -	DIRTY and will pass them to ->writepage.
> +	DIRTY and will write them back.
>  
>  ``dirty_folio``
>  	called by the VM to mark a folio as dirty.  This is particularly
> diff --git a/fs/buffer.c b/fs/buffer.c
> index c7abb4a029dc..b99dc69dba37 100644
> --- a/fs/buffer.c
> +++ b/fs/buffer.c
> @@ -2695,7 +2695,7 @@ int block_truncate_page(struct address_space *mapping,
>  EXPORT_SYMBOL(block_truncate_page);
>  
>  /*
> - * The generic ->writepage function for buffer-backed address_spaces
> + * The generic write folio function for buffer-backed address_spaces
>   */
>  int block_write_full_folio(struct folio *folio, struct writeback_control *wbc,
>  		void *get_block)
> @@ -2715,7 +2715,7 @@ int block_write_full_folio(struct folio *folio, struct writeback_control *wbc,
>  
>  	/*
>  	 * The folio straddles i_size.  It must be zeroed out on each and every
> -	 * writepage invocation because it may be mmapped.  "A file is mapped
> +	 * writeback invocation because it may be mmapped.  "A file is mapped
>  	 * in multiples of the page size.  For a file that is not a multiple of
>  	 * the page size, the remaining memory is zeroed when mapped, and
>  	 * writes to that region are not written out to the file."
> diff --git a/include/linux/fs.h b/include/linux/fs.h
> index 110d95d04299..26ce65c4a003 100644
> --- a/include/linux/fs.h
> +++ b/include/linux/fs.h
> @@ -433,7 +433,6 @@ static inline bool is_sync_kiocb(struct kiocb *kiocb)
>  }
>  
>  struct address_space_operations {
> -	int (*writepage)(struct page *page, struct writeback_control *wbc);
>  	int (*read_folio)(struct file *, struct folio *);
>  
>  	/* Write back some dirty pages from this mapping. */
> diff --git a/mm/vmscan.c b/mm/vmscan.c
> index e9f84fa31b9a..7e79ca975c9d 100644
> --- a/mm/vmscan.c
> +++ b/mm/vmscan.c
> @@ -643,7 +643,6 @@ typedef enum {
>  
>  /*
>   * pageout is called by shrink_folio_list() for each dirty folio.
> - * Calls ->writepage().
>   */
>  static pageout_t pageout(struct folio *folio, struct address_space *mapping,
>  			 struct swap_iocb **plug, struct list_head *folio_list)
> -- 
> 2.47.2
> 

-- 
Fan Ni
