Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id jBnjA1PXJ2rH3AIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 11:05:23 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6172965E187
	for <lists+intel-gfx@lfdr.de>; Tue, 09 Jun 2026 11:05:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=fail reason="SPF not aligned (relaxed), No valid DKIM" header.from=lst.de (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E697E89E33;
	Tue,  9 Jun 2026 09:05:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 580 seconds by postgrey-1.36 at gabe;
 Tue, 09 Jun 2026 09:05:20 UTC
Received: from verein.lst.de (verein.lst.de [213.95.11.211])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0612589E33
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Jun 2026 09:05:20 +0000 (UTC)
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3E29468BEB; Tue,  9 Jun 2026 10:55:35 +0200 (CEST)
Date: Tue, 9 Jun 2026 10:55:34 +0200
From: Christoph Hellwig <hch@lst.de>
To: baoquan.he@linux.dev, akpm@linux-foundation.org, chrisl@kernel.org,
 usama.arif@linux.dev, kasong@tencent.com, nphamcs@gmail.com,
 shikemeng@huaweicloud.com, youngjun.park@lge.com,
 linux-mm@kvack.org, Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Christian Koenig <christian.koenig@amd.com>, Huang Rui <ray.huang@amd.com>,
 Matthew Auld <matthew.auld@intel.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: better shmem writeback interface for drm, was: Re: [PATCH 1/8]
 shmem: provide a shmem_write_folio wrapper
Message-ID: <20260609085534.GA12980@lst.de>
References: <20260601113449.3464734-1-hch@lst.de>
 <20260601113449.3464734-2-hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260601113449.3464734-2-hch@lst.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.51 / 15.00];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[lst.de : SPF not aligned (relaxed), No valid DKIM,none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:baoquan.he@linux.dev,m:akpm@linux-foundation.org,m:chrisl@kernel.org,m:usama.arif@linux.dev,m:kasong@tencent.com,m:nphamcs@gmail.com,m:shikemeng@huaweicloud.com,m:youngjun.park@lge.com,m:linux-mm@kvack.org,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vivi@intel.com,m:tursulin@ursulin.net,m:airlied@gmail.com,m:simona@ffwll.ch,m:christian.koenig@amd.com,m:ray.huang@amd.com,m:matthew.auld@intel.com,m:matthew.brost@intel.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:dri-devel@lists.freedesktop.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[hch@lst.de,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[24];
	FREEMAIL_TO(0.00)[linux.dev,linux-foundation.org,kernel.org,tencent.com,gmail.com,huaweicloud.com,lge.com,kvack.org,linux.intel.com,intel.com,ursulin.net,ffwll.ch,amd.com,suse.de,lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FROM_NEQ_ENVFROM(0.00)[hch@lst.de,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6172965E187

Sashiko complains about a lot of pre-existing issues in i915/ttm here:

https://sashiko.dev/#/patchset/20260601113449.3464734-1-hch%40lst.de

This might be a good time to fix these, and as part of it provide
saner interfaces for drm.  The i915 case look like a plain writeback
range, which looks somewhat easy.  I don't really get what the ttm
code is trying to do.

Any takers to get drm out of messing with these lowlevel shmemfs
internals?

On Mon, Jun 01, 2026 at 01:34:27PM +0200, Christoph Hellwig wrote:
> Provide a wrapper for the shmem abuses in drm to preparare for swap I/O
> refactoring by keepin swap_iocb handling entirely contained in mm/.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/gpu/drm/i915/gem/i915_gem_shmem.c | 2 +-
>  drivers/gpu/drm/ttm/ttm_backup.c          | 2 +-
>  include/linux/shmem_fs.h                  | 5 +----
>  mm/shmem.c                                | 7 ++++++-
>  mm/swap.h                                 | 4 ++++
>  5 files changed, 13 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index 06543ae60706..ef9440166295 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -325,7 +325,7 @@ void __shmem_writeback(size_t size, struct address_space *mapping)
>  		if (folio_mapped(folio))
>  			folio_redirty_for_writepage(&wbc, folio);
>  		else
> -			error = shmem_writeout(folio, NULL, NULL);
> +			error = shmem_write_folio(folio);
>  	}
>  }
>  
> diff --git a/drivers/gpu/drm/ttm/ttm_backup.c b/drivers/gpu/drm/ttm/ttm_backup.c
> index 81df4cb5606b..c5b813a563e7 100644
> --- a/drivers/gpu/drm/ttm/ttm_backup.c
> +++ b/drivers/gpu/drm/ttm/ttm_backup.c
> @@ -117,7 +117,7 @@ ttm_backup_backup_page(struct file *backup, struct page *page,
>  	if (writeback && !folio_mapped(to_folio) &&
>  	    folio_clear_dirty_for_io(to_folio)) {
>  		folio_set_reclaim(to_folio);
> -		ret = shmem_writeout(to_folio, NULL, NULL);
> +		ret = shmem_write_folio(to_folio);
>  		if (!folio_test_writeback(to_folio))
>  			folio_clear_reclaim(to_folio);
>  		/*
> diff --git a/include/linux/shmem_fs.h b/include/linux/shmem_fs.h
> index acb8dd961b45..f35c752f27af 100644
> --- a/include/linux/shmem_fs.h
> +++ b/include/linux/shmem_fs.h
> @@ -12,8 +12,6 @@
>  #include <linux/userfaultfd_k.h>
>  #include <linux/bits.h>
>  
> -struct swap_iocb;
> -
>  /* inode in-kernel data */
>  
>  #ifdef CONFIG_TMPFS_QUOTA
> @@ -122,8 +120,7 @@ static inline bool shmem_mapping(const struct address_space *mapping)
>  void shmem_unlock_mapping(struct address_space *mapping);
>  struct page *shmem_read_mapping_page_gfp(struct address_space *mapping,
>  					pgoff_t index, gfp_t gfp_mask);
> -int shmem_writeout(struct folio *folio, struct swap_iocb **plug,
> -		struct list_head *folio_list);
> +int shmem_write_folio(struct folio *folio);
>  void shmem_truncate_range(struct inode *inode, loff_t start, uoff_t end);
>  int shmem_unuse(unsigned int type);
>  
> diff --git a/mm/shmem.c b/mm/shmem.c
> index 56c23a7b15c7..d10735e49b25 100644
> --- a/mm/shmem.c
> +++ b/mm/shmem.c
> @@ -1738,7 +1738,12 @@ int shmem_writeout(struct folio *folio, struct swap_iocb **plug,
>  	folio_mark_dirty(folio);
>  	return AOP_WRITEPAGE_ACTIVATE;	/* Return with folio locked */
>  }
> -EXPORT_SYMBOL_GPL(shmem_writeout);
> +
> +int shmem_write_folio(struct folio *folio)
> +{
> +	return shmem_writeout(folio, NULL, NULL);
> +}
> +EXPORT_SYMBOL_GPL(shmem_write_folio);
>  
>  #if defined(CONFIG_NUMA) && defined(CONFIG_TMPFS)
>  static void shmem_show_mpol(struct seq_file *seq, struct mempolicy *mpol)
> diff --git a/mm/swap.h b/mm/swap.h
> index 77d2d14eda42..4f86ef338a60 100644
> --- a/mm/swap.h
> +++ b/mm/swap.h
> @@ -473,4 +473,8 @@ static inline unsigned int folio_swap_flags(struct folio *folio)
>  }
>  
>  #endif /* CONFIG_SWAP */
> +
> +int shmem_writeout(struct folio *folio, struct swap_iocb **plug,
> +		struct list_head *folio_list);
> +
>  #endif /* _MM_SWAP_H */
> -- 
> 2.53.0
> 
---end quoted text---
