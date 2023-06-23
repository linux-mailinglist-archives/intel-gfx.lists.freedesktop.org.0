Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4214A73B08C
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jun 2023 08:12:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9379E10E5D5;
	Fri, 23 Jun 2023 06:12:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-qk1-x735.google.com (mail-qk1-x735.google.com
 [IPv6:2607:f8b0:4864:20::735])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7B1110E5D6
 for <intel-gfx@lists.freedesktop.org>; Fri, 23 Jun 2023 06:12:09 +0000 (UTC)
Received: by mail-qk1-x735.google.com with SMTP id
 af79cd13be357-763a2e39b88so19398085a.1
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jun 2023 23:12:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=fromorbit-com.20221208.gappssmtp.com; s=20221208; t=1687500728; x=1690092728;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=g6Rx1Xf0LH0dvCkca5awQZbD4QgAJXvuKCZBBi/mUhU=;
 b=SecpzgOSYBos+0sqL4EbPW75FGWVTx9L5r0t3G2iuevcqFrKG4F/tLNs6eWS22kOmh
 C0PZvcjnf7UYxgnqR+bpG0mTlEGom1YtlVhT3auz/n35x7KxiTrn9uMCHEu7lYc1dP6p
 eY+aw4EnvIi6B8fviKsKoQH1Jzl15W85hgTxNUcsJ3dNHiRrVQFHxysMeC3SWqeWxnsy
 yeeVzTshwEBU92s9eN4WsR3lm2qnu+8pne5nYPYtXC9PnDXRC5K4UnNnq5jjmfz2fAMm
 luXgCfjy27KBowEi38EwnMkC5XGcuX6tyW21/tEwr1FrSp+rGCyLdSsWF3R6DJsSbivl
 1Q3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687500728; x=1690092728;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=g6Rx1Xf0LH0dvCkca5awQZbD4QgAJXvuKCZBBi/mUhU=;
 b=eOm+yf51wzOYejecoAcsnAVG5xC7WgamYcTrdP4V1dUNkoZDieXBwGZYu/yQKFnGVM
 dd4xGnqaiPVrzB20rsXavV1yZRzhh2eDb7pkS1HIy+zyLRzhJH++VIFctVWW3N1iBhUu
 DFEbGRpSEbB7p+dI6rY+vC+1p7t4/AgAC9/5FjPKXi/audmaPnluZCLxVANs1ugOqOhG
 3RALYcedEkbOImgn+37K+pIbMxHpzqCs7wnZCgGT5vJXhJdECsa0kbqDmPAO3B8M+16D
 /Zl3yamqTHcDKGgwqGWApaf/d+pwZIrpQB17bVJTufoK0/toYiIJGmweYxQ5BRtkN7pD
 h09Q==
X-Gm-Message-State: AC+VfDzeMa62OPKU1aAxZOqSKMGc5nnUrf9OKIjwg9SYNbI7aNL3GksR
 w/NUWxCFAmTXhybJp0jUC3elsA==
X-Google-Smtp-Source: ACHHUZ5b6N+FK7PXoTwlvRKh6LsH0vyG6YXCaEWGf5NRL5zfUiNEb8MHT84h6djsafTCO/ahpimwww==
X-Received: by 2002:a05:6214:764:b0:62d:e913:f9ae with SMTP id
 f4-20020a056214076400b0062de913f9aemr22933956qvz.1.1687500727864; 
 Thu, 22 Jun 2023 23:12:07 -0700 (PDT)
Received: from dread.disaster.area (pa49-180-13-202.pa.nsw.optusnet.com.au.
 [49.180.13.202]) by smtp.gmail.com with ESMTPSA id
 p28-20020a634f5c000000b0055387ffef10sm5712930pgl.24.2023.06.22.23.12.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jun 2023 23:12:07 -0700 (PDT)
Received: from dave by dread.disaster.area with local (Exim 4.96)
 (envelope-from <david@fromorbit.com>) id 1qCa1b-00F8aV-2d;
 Fri, 23 Jun 2023 16:12:03 +1000
Date: Fri, 23 Jun 2023 16:12:03 +1000
From: Dave Chinner <david@fromorbit.com>
To: Qi Zheng <zhengqi.arch@bytedance.com>
Message-ID: <ZJU3s8tyGsYTVS8f@dread.disaster.area>
References: <20230622085335.77010-1-zhengqi.arch@bytedance.com>
 <20230622085335.77010-3-zhengqi.arch@bytedance.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230622085335.77010-3-zhengqi.arch@bytedance.com>
Subject: Re: [Intel-gfx] [PATCH 02/29] mm: vmscan: introduce some helpers
 for dynamically allocating shrinker
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
Cc: djwong@kernel.org, roman.gushchin@linux.dev,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linux-mm@kvack.org, dm-devel@redhat.com, linux-ext4@vger.kernel.org,
 paulmck@kernel.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, linux-nfs@vger.kernel.org,
 linux-raid@vger.kernel.org, linux-bcache@vger.kernel.org, vbabka@suse.cz,
 brauner@kernel.org, tytso@mit.edu, linux-kernel@vger.kernel.org,
 linux-xfs@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 akpm@linux-foundation.org, linux-btrfs@vger.kernel.org, tkhai@ya.ru
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jun 22, 2023 at 04:53:08PM +0800, Qi Zheng wrote:
> Introduce some helpers for dynamically allocating shrinker instance,
> and their uses are as follows:
> 
> 1. shrinker_alloc_and_init()
> 
> Used to allocate and initialize a shrinker instance, the priv_data
> parameter is used to pass the pointer of the previously embedded
> structure of the shrinker instance.
> 
> 2. shrinker_free()
> 
> Used to free the shrinker instance when the registration of shrinker
> fails.
> 
> 3. unregister_and_free_shrinker()
> 
> Used to unregister and free the shrinker instance, and the kfree()
> will be changed to kfree_rcu() later.
> 
> Signed-off-by: Qi Zheng <zhengqi.arch@bytedance.com>
> ---
>  include/linux/shrinker.h | 12 ++++++++++++
>  mm/vmscan.c              | 35 +++++++++++++++++++++++++++++++++++
>  2 files changed, 47 insertions(+)
> 
> diff --git a/include/linux/shrinker.h b/include/linux/shrinker.h
> index 43e6fcabbf51..8e9ba6fa3fcc 100644
> --- a/include/linux/shrinker.h
> +++ b/include/linux/shrinker.h
> @@ -107,6 +107,18 @@ extern void unregister_shrinker(struct shrinker *shrinker);
>  extern void free_prealloced_shrinker(struct shrinker *shrinker);
>  extern void synchronize_shrinkers(void);
>  
> +typedef unsigned long (*count_objects_cb)(struct shrinker *s,
> +					  struct shrink_control *sc);
> +typedef unsigned long (*scan_objects_cb)(struct shrinker *s,
> +					 struct shrink_control *sc);
> +
> +struct shrinker *shrinker_alloc_and_init(count_objects_cb count,
> +					 scan_objects_cb scan, long batch,
> +					 int seeks, unsigned flags,
> +					 void *priv_data);
> +void shrinker_free(struct shrinker *shrinker);
> +void unregister_and_free_shrinker(struct shrinker *shrinker);

Hmmmm. Not exactly how I envisioned this to be done.

Ok, this will definitely work, but I don't think it is an
improvement. It's certainly not what I was thinking of when I
suggested dynamically allocating shrinkers.

The main issue is that this doesn't simplify the API - it expands it
and creates a minefield of old and new functions that have to be
used in exactly the right order for the right things to happen.

What I was thinking of was moving the entire shrinker setup code
over to the prealloc/register_prepared() algorithm, where the setup
is already separated from the activation of the shrinker.

That is, we start by renaming prealloc_shrinker() to
shrinker_alloc(), adding a flags field to tell it everything that it
needs to alloc (i.e. the NUMA/MEMCG_AWARE flags) and having it
returned a fully allocated shrinker ready to register. Initially
this also contains an internal flag to say the shrinker was
allocated so that unregister_shrinker() knows to free it.

The caller then fills out the shrinker functions, seeks, etc. just
like the do now, and then calls register_shrinker_prepared() to make
the shrinker active when it wants to turn it on.

When it is time to tear down the shrinker, no API needs to change.
unregister_shrinker() does all the shutdown and frees all the
internal memory like it does now. If the shrinker is also marked as
allocated, it frees the shrinker via RCU, too.

Once everything is converted to this API, we then remove
register_shrinker(), rename register_shrinker_prepared() to
shrinker_register(), rename unregister_shrinker to
shrinker_unregister(), get rid of the internal "allocated" flag
and always free the shrinker.

At the end of the patchset, every shrinker should be set
up in a manner like this:


	sb->shrinker = shrinker_alloc(SHRINKER_MEMCG_AWARE|SHRINKER_NUMA_AWARE,
				"sb-%s", type->name);
	if (!sb->shrinker)
		return -ENOMEM;

	sb->shrinker->count_objects = super_cache_count;
	sb->shrinker->scan_objects = super_cache_scan;
	sb->shrinker->batch = 1024;
	sb->shrinker->private = sb;

	.....

	shrinker_register(sb->shrinker);

And teardown is just a call to shrinker_unregister(sb->shrinker)
as it is now.

i.e. the entire shrinker regsitration API is now just three
functions, down from the current four, and much simpler than the
the seven functions this patch set results in...

The other advantage of this is that it will break all the existing
out of tree code and third party modules using the old API and will
no longer work with a kernel using lockless slab shrinkers. They
need to break (both at the source and binary levels) to stop bad
things from happening due to using uncoverted shrinkers in the new
setup.

-Dave.
-- 
Dave Chinner
david@fromorbit.com
