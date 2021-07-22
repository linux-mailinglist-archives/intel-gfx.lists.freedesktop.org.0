Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 360653D2225
	for <lists+intel-gfx@lfdr.de>; Thu, 22 Jul 2021 12:36:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5CF876ECC3;
	Thu, 22 Jul 2021 10:35:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com
 [IPv6:2a00:1450:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CE6C36ECC2
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 10:35:57 +0000 (UTC)
Received: by mail-ej1-x62a.google.com with SMTP id oz7so7693590ejc.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 22 Jul 2021 03:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=GrVJiLCQ2td0LvFK6G+f6bTrOT7qBQ9CowikA35mI6k=;
 b=MPLRAuRMQscjJ1bRSPG4VJjStt0rZUgJLQkjV8Ee74n4JK+gKsZ7E7GbremKpAbXEa
 5RSfjjBngX0otVhG9sMSkQLeikaSoPGMoGGqC4NPQ/xZwSIJGc3C3qKQAjXJzoqHtrnc
 PPUUoOevWpVg4MQ3t0pqVrvjBRHgXApPIqqX0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to;
 bh=GrVJiLCQ2td0LvFK6G+f6bTrOT7qBQ9CowikA35mI6k=;
 b=rAwO/TLAhcxyy0bZHXvN8hlrlIL5CsRgfvRZJmL5zU8fYh2VCtYxAoSO4fJ+6tS+d2
 R+Ax+Ye29oJ7O5nQI99jtR3T65OIQGzBenRX6lUFS0GjD5hhdSe6i2rRRyF9tsvDGgtv
 3yldMKEy1y0EkA/OATSVGC/VQiXsaoKgBlRMEK14WgZUo7wkNszm9GfwAZBxJouqu2Ui
 eUnLFhdOJn3eQrmtm3QR1t/ZY8taJ7e6pyilwrrF2XGnQ2ivQFgzwz7ILuTwHicPDJLj
 pzlx5wwUAgxD4CUTveeNNIqkjnvXX1+R7KYj1Zus0VSDBKESHKBBOymaUVEVNDc1f6+I
 trug==
X-Gm-Message-State: AOAM532U9hTncCF91DzD8BQNNExNDkmPVt07IftKNFRonPJO7uszCWmh
 gdPESSoNJaOLbfy8CK0WhqbOkw==
X-Google-Smtp-Source: ABdhPJzNq6lAT9fVXCqbmiOVhh6CzSJjtq8+tM+DSHEpE5WiLhtvjojRagf8CYVO6eOi+rS6ouALzA==
X-Received: by 2002:a17:906:990f:: with SMTP id
 zl15mr43047702ejb.34.1626950156329; 
 Thu, 22 Jul 2021 03:35:56 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:efd0:b9e5:5ae6:c2fa])
 by smtp.gmail.com with ESMTPSA id i6sm9257113ejr.68.2021.07.22.03.35.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Jul 2021 03:35:55 -0700 (PDT)
Date: Thu, 22 Jul 2021 12:35:53 +0200
From: Daniel Vetter <daniel@ffwll.ch>
To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
Message-ID: <YPlKCc7Sep71xjBC@phenom.ffwll.local>
Mail-Followup-To: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>,
 linux-graphics-maintainer@vmware.com, zackr@vmware.com,
 airlied@linux.ie, maarten.lankhorst@linux.intel.com,
 mripard@kernel.org, tzimmermann@suse.de,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, skhan@linuxfoundation.org,
 gregkh@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org
References: <20210722092929.244629-1-desmondcheongzx@gmail.com>
 <20210722092929.244629-3-desmondcheongzx@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210722092929.244629-3-desmondcheongzx@gmail.com>
X-Operating-System: Linux phenom 5.10.0-7-amd64 
Subject: Re: [Intel-gfx] [PATCH 2/3] drm: clarify lifetime/locking for
 drm_master's lease fields
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
Cc: tzimmermann@suse.de, airlied@linux.ie, gregkh@linuxfoundation.org,
 intel-gfx@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 mripard@kernel.org, linux-graphics-maintainer@vmware.com,
 dri-devel@lists.freedesktop.org, skhan@linuxfoundation.org,
 linux-kernel-mentees@lists.linuxfoundation.org, zackr@vmware.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 22, 2021 at 05:29:28PM +0800, Desmond Cheong Zhi Xi wrote:
> In particular, we make it clear that &drm_device.mode_config.idr_mutex
> protects the lease idr and list structures for drm_master. The lessor
> field itself doesn't need to be protected as it doesn't change after
> it's set in drm_lease_create.
> 
> Additionally, we add descriptions for the lifetime of lessors and
> leases to make it easier to reason about them.
> 
> Signed-off-by: Desmond Cheong Zhi Xi <desmondcheongzx@gmail.com>
> ---
>  include/drm/drm_auth.h | 62 ++++++++++++++++++++++++++++++++++--------
>  1 file changed, 51 insertions(+), 11 deletions(-)
> 
> diff --git a/include/drm/drm_auth.h b/include/drm/drm_auth.h
> index f99d3417f304..c978c85464fa 100644
> --- a/include/drm/drm_auth.h
> +++ b/include/drm/drm_auth.h
> @@ -58,12 +58,6 @@ struct drm_lock_data {
>   * @refcount: Refcount for this master object.
>   * @dev: Link back to the DRM device
>   * @driver_priv: Pointer to driver-private information.
> - * @lessor: Lease holder
> - * @lessee_id: id for lessees. Owners always have id 0
> - * @lessee_list: other lessees of the same master
> - * @lessees: drm_masters leasing from this one
> - * @leases: Objects leased to this drm_master.
> - * @lessee_idr: All lessees under this owner (only used where lessor == NULL)
>   *
>   * Note that master structures are only relevant for the legacy/primary device
>   * nodes, hence there can only be one per device, not one per drm_minor.
> @@ -88,17 +82,63 @@ struct drm_master {
>  	struct idr magic_map;
>  	void *driver_priv;
>  
> -	/* Tree of display resource leases, each of which is a drm_master struct
> -	 * All of these get activated simultaneously, so drm_device master points
> -	 * at the top of the tree (for which lessor is NULL). Protected by
> -	 * &drm_device.mode_config.idr_mutex.
> +	/**
> +	 * @lessor:
> +	 *
> +	 * Lease holder. The lessor does not change once it's set in

Lessor is the lease grantor, lessee is the one receiving the lease. Maybe
clarify this with

"Lease grantor, only set if this struct drm_master represents a lessee
holding a lease of objects from @lessor. Full owners of the device have
this set to NULL."

> +	 * drm_lease_create(). Each lessee holds a reference to its lessor that

I also figured it'd be a good idea to link to the drm_lease docs here to
explain the concepts, but alas we don't have those :-( Hence at least
define what we mean with lessor, lessee, lease and owner.

> +	 * it releases upon being destroyed in drm_lease_destroy().
> +	 *
> +	 * Display resource leases form a tree of &struct drm_master. All of

For now we've limited the tree to a depth of 1, you can't create another
lease if yourself are a lease. I guess another reason to update the
drm_lease.c docs.

So maybe add "Currently the lease tree depth is limited to 1."

> +	 * these get activated simultaneously, so &drm_device.master
> +	 * points at the top of the tree (for which lessor is NULL).
>  	 */
> -
>  	struct drm_master *lessor;
> +
> +	/**
> +	 * @lessee_id:
> +	 *
> +	 * ID for lessees. Owners always have ID 0. Protected by

Maybe clarify to "Owners (i.e. @lessor is NULL) ..."

> +	 * &drm_device.mode_config's &drm_mode_config.idr_mutex.
> +	 */
>  	int	lessee_id;
> +
> +	/**
> +	 * @lessee_list:
> +	 *
> +	 * List of lessees of the same master. Protected by

We try to distinguis between list entries and the list, even though it's
the same struct. So maybe

"List entry of lessees of @lessor, where they are linked to @lessee. Not
use for owners."

> +	 * &drm_device.mode_config's &drm_mode_config.idr_mutex.

> +	 */
>  	struct list_head lessee_list;
> +
> +	/**
> +	 * @lessees:
> +	 *
> +	 * List of drm_masters leasing from this one. Protected by
> +	 * &drm_device.mode_config's &drm_mode_config.idr_mutex.
> +	 *
> +	 * This master cannot be destroyed unless this list is empty as lessors
> +	 * are referenced by all their lessees.

Maybe add "this list is empty of no leases have been granted."

> +	 */
>  	struct list_head lessees;
> +
> +	/**
> +	 * @leases:
> +	 *
> +	 * Objects leased to this drm_master. Protected by
> +	 * &drm_device.mode_config's &drm_mode_config.idr_mutex.
> +	 *
> +	 * Objects are leased all together in drm_lease_create(), and are
> +	 * removed all together when the lease is revoked.
> +	 */
>  	struct idr leases;
> +
> +	/**
> +	 * @lessee_idr:
> +	 *
> +	 * All lessees under this owner (only used where lessor is NULL).

@lessor so it's highlighted correctly

> +	 * Protected by &drm_device.mode_config's &drm_mode_config.idr_mutex.
> +	 */
>  	struct idr lessee_idr;
>  	/* private: */

With the nits addressed:

Reviewed-by: Daniel Vetter <daniel.vetter@ffwll.ch>

Thanks for updating the docs!
-Daniel

>  #if IS_ENABLED(CONFIG_DRM_LEGACY)
> -- 
> 2.25.1
> 

-- 
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
