Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BDD92F9E27
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 12:30:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CADBA6E1D5;
	Mon, 18 Jan 2021 11:30:20 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ste-pvt-msa2.bahnhof.se (ste-pvt-msa2.bahnhof.se
 [213.80.101.71])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 099436E1D5
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 11:30:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTP id 510393F557;
 Mon, 18 Jan 2021 12:30:18 +0100 (CET)
Authentication-Results: ste-pvt-msa2.bahnhof.se; dkim=pass (1024-bit key;
 unprotected) header.d=shipmail.org header.i=@shipmail.org header.b=mBcXiMoC; 
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at bahnhof.se
X-Spam-Flag: NO
X-Spam-Score: -2.138
X-Spam-Level: 
X-Spam-Status: No, score=-2.138 tagged_above=-999 required=6.31
 tests=[BAYES_00=-1.9, DKIM_SIGNED=0.1, DKIM_VALID=-0.1,
 DKIM_VALID_AU=-0.1, DKIM_VALID_EF=-0.1, NICE_REPLY_A=-0.039,
 URIBL_BLOCKED=0.001] autolearn=ham autolearn_force=no
Authentication-Results: ste-ftg-msa2.bahnhof.se (amavisd-new);
 dkim=pass (1024-bit key) header.d=shipmail.org
Received: from ste-pvt-msa2.bahnhof.se ([127.0.0.1])
 by localhost (ste-ftg-msa2.bahnhof.se [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dqZY6Pzz7jBe; Mon, 18 Jan 2021 12:30:17 +0100 (CET)
Received: by ste-pvt-msa2.bahnhof.se (Postfix) with ESMTPA id CA82A3F373;
 Mon, 18 Jan 2021 12:30:14 +0100 (CET)
Received: from [10.252.7.161] (unknown [134.191.232.70])
 by mail1.shipmail.org (Postfix) with ESMTPSA id 3607B36018C;
 Mon, 18 Jan 2021 12:30:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=shipmail.org; s=mail;
 t=1610969414; bh=J3ILNe84z02MXLz3sWevbG3X6ipJCmvbskUQwFXOFnU=;
 h=Subject:To:References:From:Date:In-Reply-To:From;
 b=mBcXiMoCPW7/QiZFLtBEtHCqKmJQxDhoeJEqncYVO3P1EFmbLSGjj02cL6575MVLD
 kxBZy/FncNVCbJM1xyT/U2wjc+wwqazTcKF4UQ5WHU4oHytEntSPYoURyslg03sxSG
 Mc0w2kZBHjDhB9DTQQX/8iemLyPm5bqymbJZSs3Y=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20210105153558.134272-1-maarten.lankhorst@linux.intel.com>
 <20210105153558.134272-17-maarten.lankhorst@linux.intel.com>
From: =?UTF-8?Q?Thomas_Hellstr=c3=b6m_=28Intel=29?= <thomas_os@shipmail.org>
Message-ID: <5b38d4b5-ded7-9f4d-118e-74f706c6a8ad@shipmail.org>
Date: Mon, 18 Jan 2021 12:30:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210105153558.134272-17-maarten.lankhorst@linux.intel.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH v6 16/64] drm/i915: Fix userptr so we do not
 have to worry about obj->mm.lock, v5.
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On 1/5/21 4:35 PM, Maarten Lankhorst wrote:
> Instead of doing what we do currently, which will never work with
> PROVE_LOCKING, do the same as AMD does, and something similar to
> relocation slowpath. When all locks are dropped, we acquire the
> pages for pinning. When the locks are taken, we transfer those
> pages in .get_pages() to the bo. As a final check before installing
> the fences, we ensure that the mmu notifier was not called; if it is,
> we return -EAGAIN to userspace to signal it has to start over.
>
> Changes since v1:
> - Unbinding is done in submit_init only. submit_begin() removed.
> - MMU_NOTFIER -> MMU_NOTIFIER
> Changes since v2:
> - Make i915->mm.notifier a spinlock.
> Changes since v3:
> - Add WARN_ON if there are any page references left, should have been 0.
> - Return 0 on success in submit_init(), bug from spinlock conversion.
> - Release pvec outside of notifier_lock (Thomas).
> Changes since v4:
> - Mention why we're clearing eb->[i + 1].vma in the code. (Thomas)
> - Actually check all invalidations in eb_move_to_gpu. (Thomas)
> - Do not wait when process is exiting to fix gem_ctx_persistence.userptr.
>
> Signed-off-by: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>


...

>   
> -static int
> -userptr_mn_invalidate_range_start(struct mmu_notifier *_mn,
> -				  const struct mmu_notifier_range *range)
> -{
> -	struct i915_mmu_notifier *mn =
> -		container_of(_mn, struct i915_mmu_notifier, mn);
> -	struct interval_tree_node *it;
> -	unsigned long end;
> -	int ret = 0;
> -
> -	if (RB_EMPTY_ROOT(&mn->objects.rb_root))
> -		return 0;
> -
> -	/* interval ranges are inclusive, but invalidate range is exclusive */
> -	end = range->end - 1;
> -
> -	spin_lock(&mn->lock);
> -	it = interval_tree_iter_first(&mn->objects, range->start, end);
> -	while (it) {
> -		struct drm_i915_gem_object *obj;
> -
> -		if (!mmu_notifier_range_blockable(range)) {
> -			ret = -EAGAIN;
> -			break;
> -		}
> +	spin_lock(&i915->mm.notifier_lock);
>   
> -		/*
> -		 * The mmu_object is released late when destroying the
> -		 * GEM object so it is entirely possible to gain a
> -		 * reference on an object in the process of being freed
> -		 * since our serialisation is via the spinlock and not
> -		 * the struct_mutex - and consequently use it after it
> -		 * is freed and then double free it. To prevent that
> -		 * use-after-free we only acquire a reference on the
> -		 * object if it is not in the process of being destroyed.
> -		 */
> -		obj = container_of(it, struct i915_mmu_object, it)->obj;
> -		if (!kref_get_unless_zero(&obj->base.refcount)) {
> -			it = interval_tree_iter_next(it, range->start, end);
> -			continue;
> -		}
> -		spin_unlock(&mn->lock);
> +	mmu_interval_set_seq(mni, cur_seq);
>   
> -		ret = i915_gem_object_unbind(obj,
> -					     I915_GEM_OBJECT_UNBIND_ACTIVE |
> -					     I915_GEM_OBJECT_UNBIND_BARRIER);
> -		if (ret == 0)
> -			ret = __i915_gem_object_put_pages(obj);
> -		i915_gem_object_put(obj);
> -		if (ret)
> -			return ret;
> +	spin_unlock(&i915->mm.notifier_lock);
>   
> -		spin_lock(&mn->lock);
> +	/* During exit there's no need to wait */
> +	if (current->flags & PF_EXITING)
> +		return true;

Did we ever find out why this is needed, that is why the old userptr 
invalidation called doesn't hang here in a similar way?

/Thomas


_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
