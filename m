Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 43517B2E781
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 23:31:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44E1410E804;
	Wed, 20 Aug 2025 21:31:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="j3SMjdvp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 868E910E800
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Aug 2025 21:31:55 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 6DE7B61360;
 Wed, 20 Aug 2025 21:31:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1082FC4CEE7;
 Wed, 20 Aug 2025 21:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1755725514;
 bh=zJUri91BEY/rz/OKXIaJA70xWSYlsm2TWcaN+ekl5no=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=j3SMjdvpoytEKqPLGfVHtuTQ2dTjNiVHWsV7EYbfOJv/JScycBNnTe0SPnxhvrr//
 oyLPLoulJLTS9RhjQgBfr9APvvosHCmWdIA3ewP7YatvZand/4uwmNP4WNK/yn194r
 2tdKTG1xkNvxzaGSE/bII1DcBiHx80LP0uSa3tAkRy6wxzku7YH3q6vUna/fJC17Kb
 K3dZK0OyP19BW/qYOOQLobDyO+OoOhOj2avIgd4q6LozYws68YHr0Tsx3SmoHbKk9c
 8/O2dJ5h5sqvmlhx1jm9Qr5S4t/y8ILb0hzBleaWLSyttxW4xVFNoUr+zJy1FA82EQ
 f4qZoAcZrt/Gg==
Date: Wed, 20 Aug 2025 20:31:49 -0100
From: Andi Shyti <andi.shyti@kernel.org>
To: =?utf-8?B?6ZmI5rab5rab?= Taotao Chen <chentaotao@didiglobal.com>
Cc: "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, 
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>, 
 "tursulin@ursulin.net" <tursulin@ursulin.net>,
 "airlied@gmail.com" <airlied@gmail.com>, 
 "simona@ffwll.ch" <simona@ffwll.ch>,
 "oe-lkp@lists.linux.dev" <oe-lkp@lists.linux.dev>, 
 "lkp@intel.com" <lkp@intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "brauner@kernel.org" <brauner@kernel.org>, 
 "oliver.sang@intel.com" <oliver.sang@intel.com>
Subject: Re: [PATCH 1/2] drm/i915: set O_LARGEFILE in __create_shmem()
Message-ID: <r5xlolrlcu76f7c2a2wu75rrdekgdmxgxv6dh7jydpvb3x7ili@bzjzdhokv5xq>
References: <20250811093050.38930-1-chentaotao@didiglobal.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250811093050.38930-1-chentaotao@didiglobal.com>
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

Hi Taotao,

> Reported-by: kernel test robot <oliver.sang@intel.com>
> Closes: https://lore.kernel.org/oe-lkp/202508081029.343192ec-lkp@intel.com

...

> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index e3d188455f67..2b53aad915f5 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -514,6 +514,11 @@ static int __create_shmem(struct drm_i915_private *i915,
>  	if (IS_ERR(filp))
>  		return PTR_ERR(filp);
>  
> +	/*
> +	 * Prevent -EFBIG by allowing large writes beyond MAX_NON_LFS on shmem
> +	 * objects by setting O_LARGEFILE.
> +	 */
> +	filp->f_flags |= O_LARGEFILE;

I don't have anything against this, but is it really fixing the
issue? I thought that O_LARGEFILE is ignored in 64 bit machines,
while here the failure is happening in 64 bit machines.

Besides, where do you see in the LKP logs the -EFBIG error
message?

Andi

>  	obj->filp = filp;
>  	return 0;
>  }
> -- 
> 2.34.1
