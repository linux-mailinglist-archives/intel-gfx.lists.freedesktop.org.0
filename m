Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5331C805645
	for <lists+intel-gfx@lfdr.de>; Tue,  5 Dec 2023 14:44:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7165610E52F;
	Tue,  5 Dec 2023 13:44:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8306510E52F
 for <intel-gfx@lists.freedesktop.org>; Tue,  5 Dec 2023 13:44:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701783882; x=1733319882;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TVd7eFrJSisd3vAMh3KY2dzRY6O2wMY/+hUjEVjkKgY=;
 b=befl0OE8yF1Y1Yspo8834o/tPVGAjIkUh3BYdZthy1TYKmUDg/hIGCMu
 dL+Kld9bSqFAJ3UjaBr3OFr6/sHDgzQJ+Z+C5FjGwlrfrfW4MwGuRzASF
 tWf27bP5H0CrEs84wTkpmjXY9gB6i0aaH75C4bzGhTy0W21uczenCsPda
 JK+C2mwVEZqKu7fDavsZKxnOqCe4+zBj5fHosM8c/Gw02h1BbHSN36/GC
 2OhRM4VJQ6RRfNjCHGdtwTPXuMdGgMeOBHAExNHt7tvw6CFcEFQDF8OGU
 /v8+9cAajKKBgYq92V8Qjj844rGqXj4WOloQ1+IiJqudKvpmZZs6t3Ury Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="788784"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; 
   d="scan'208";a="788784"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 05:44:42 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="1018223961"
X-IronPort-AV: E=Sophos;i="6.04,252,1695711600"; d="scan'208";a="1018223961"
Received: from pesir-mobl.ger.corp.intel.com (HELO localhost) ([10.252.61.103])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Dec 2023 05:44:39 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <20231205132003.1535960-1-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231205132003.1535960-1-chaitanya.kumar.borah@intel.com>
Date: Tue, 05 Dec 2023 15:44:36 +0200
Message-ID: <87sf4g227v.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [topic/core-for-CI] Revert "debugfs: annotate
 debugfs handlers vs. removal with lockdep"
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
Cc: Johannes Berg <johannes.berg@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, 05 Dec 2023, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> From: Johannes Berg <johannes.berg@intel.com>
>
> This reverts commit f4acfcd4deb1 ("debugfs: annotate debugfs handlers
> vs. removal with lockdep"), it appears to have false positives and
> really shouldn't have been in the -rc series with the fixes anyway.
>
> topic/core-for-CI note: cherry-picked from
> https://patchwork.kernel.org/project/linux-fsdevel/patch/20231202114936.fd55431ab160.I911aa53abeeca138126f690d383a89b13eb05667@changeid/
>
> Signed-off-by: Johannes Berg <johannes.berg@intel.com>
> Acked-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Johannes, Greg, this is for our CI only, please ignore, and sorry for
the noise.

BR,
Jani.

> ---
>  fs/debugfs/file.c     | 10 ----------
>  fs/debugfs/inode.c    |  7 -------
>  fs/debugfs/internal.h |  6 ------
>  3 files changed, 23 deletions(-)
>
> diff --git a/fs/debugfs/file.c b/fs/debugfs/file.c
> index a5ade8c16375..5063434be0fc 100644
> --- a/fs/debugfs/file.c
> +++ b/fs/debugfs/file.c
> @@ -108,12 +108,6 @@ int debugfs_file_get(struct dentry *dentry)
>  			kfree(fsd);
>  			fsd = READ_ONCE(dentry->d_fsdata);
>  		}
> -#ifdef CONFIG_LOCKDEP
> -		fsd->lock_name = kasprintf(GFP_KERNEL, "debugfs:%pd", dentry);
> -		lockdep_register_key(&fsd->key);
> -		lockdep_init_map(&fsd->lockdep_map, fsd->lock_name ?: "debugfs",
> -				 &fsd->key, 0);
> -#endif
>  		INIT_LIST_HEAD(&fsd->cancellations);
>  		mutex_init(&fsd->cancellations_mtx);
>  	}
> @@ -132,8 +126,6 @@ int debugfs_file_get(struct dentry *dentry)
>  	if (!refcount_inc_not_zero(&fsd->active_users))
>  		return -EIO;
>  
> -	lock_map_acquire_read(&fsd->lockdep_map);
> -
>  	return 0;
>  }
>  EXPORT_SYMBOL_GPL(debugfs_file_get);
> @@ -151,8 +143,6 @@ void debugfs_file_put(struct dentry *dentry)
>  {
>  	struct debugfs_fsdata *fsd = READ_ONCE(dentry->d_fsdata);
>  
> -	lock_map_release(&fsd->lockdep_map);
> -
>  	if (refcount_dec_and_test(&fsd->active_users))
>  		complete(&fsd->active_users_drained);
>  }
> diff --git a/fs/debugfs/inode.c b/fs/debugfs/inode.c
> index e4e7fe1bd9fb..034a617cb1a5 100644
> --- a/fs/debugfs/inode.c
> +++ b/fs/debugfs/inode.c
> @@ -243,10 +243,6 @@ static void debugfs_release_dentry(struct dentry *dentry)
>  
>  	/* check it wasn't a dir (no fsdata) or automount (no real_fops) */
>  	if (fsd && fsd->real_fops) {
> -#ifdef CONFIG_LOCKDEP
> -		lockdep_unregister_key(&fsd->key);
> -		kfree(fsd->lock_name);
> -#endif
>  		WARN_ON(!list_empty(&fsd->cancellations));
>  		mutex_destroy(&fsd->cancellations_mtx);
>  	}
> @@ -755,9 +751,6 @@ static void __debugfs_file_removed(struct dentry *dentry)
>  	if ((unsigned long)fsd & DEBUGFS_FSDATA_IS_REAL_FOPS_BIT)
>  		return;
>  
> -	lock_map_acquire(&fsd->lockdep_map);
> -	lock_map_release(&fsd->lockdep_map);
> -
>  	/* if we hit zero, just wait for all to finish */
>  	if (!refcount_dec_and_test(&fsd->active_users)) {
>  		wait_for_completion(&fsd->active_users_drained);
> diff --git a/fs/debugfs/internal.h b/fs/debugfs/internal.h
> index 0c4c68cf161f..dae80c2a469e 100644
> --- a/fs/debugfs/internal.h
> +++ b/fs/debugfs/internal.h
> @@ -7,7 +7,6 @@
>  
>  #ifndef _DEBUGFS_INTERNAL_H_
>  #define _DEBUGFS_INTERNAL_H_
> -#include <linux/lockdep.h>
>  #include <linux/list.h>
>  
>  struct file_operations;
> @@ -25,11 +24,6 @@ struct debugfs_fsdata {
>  		struct {
>  			refcount_t active_users;
>  			struct completion active_users_drained;
> -#ifdef CONFIG_LOCKDEP
> -			struct lockdep_map lockdep_map;
> -			struct lock_class_key key;
> -			char *lock_name;
> -#endif
>  
>  			/* protect cancellations */
>  			struct mutex cancellations_mtx;

-- 
Jani Nikula, Intel
