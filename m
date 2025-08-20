Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 844DEB2E2DB
	for <lists+intel-gfx@lfdr.de>; Wed, 20 Aug 2025 19:03:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A134510E793;
	Wed, 20 Aug 2025 17:03:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="r/i5HDTV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0DB0A10E793
 for <intel-gfx@lists.freedesktop.org>; Wed, 20 Aug 2025 17:03:48 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 0F3645C6972;
 Wed, 20 Aug 2025 17:03:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 14AC6C4CEE7;
 Wed, 20 Aug 2025 17:03:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1755709427;
 bh=F8pzRaXPC9gDWVwA2CxtyHusLyWewb8f3lbaL+++X+k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=r/i5HDTV2jl50h2a7hFLz1TuEFIBZnzHfAq6lCD30LhaSlBZatmOyZYGj0XTmSvTO
 rswI3c2XTr4N54qAUp+8VMrcDlvpIcGOt8jpcI788lckwwNI37UteDU51bw4roSYqv
 8M3dnEQNGtXk7Q4vuxM/914TTCbMXsnNFXMJ4HBblKjLP/kwhAxqqxH+SRY4MfY7DV
 9hKGoSJAQq0zUpKz2dAkgpYCDw4BXaWxRapCsChisKA4ZKLZzd6X6RSmDbM79AGlA3
 1w+VYDY6EUCQE12eplBcjjtHGsGHnC+7tpGhVPGhRn43bmmLnCOlN2pl1P2OTAi1vU
 mxcpXYt5G8Tgw==
Date: Wed, 20 Aug 2025 16:03:44 -0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
Cc: =?utf-8?B?6ZmI5rab5rab?= Taotao Chen <chentaotao@didiglobal.com>, 
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, 
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "tursulin@ursulin.net" <tursulin@ursulin.net>, 
 "airlied@gmail.com" <airlied@gmail.com>, "simona@ffwll.ch" <simona@ffwll.ch>, 
 "oe-lkp@lists.linux.dev" <oe-lkp@lists.linux.dev>,
 "lkp@intel.com" <lkp@intel.com>, 
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "brauner@kernel.org" <brauner@kernel.org>, 
 "oliver.sang@intel.com" <oliver.sang@intel.com>
Subject: Re: [PATCH 2/2] drm/i915: Fix incorrect error handling in
 shmem_pwrite()
Message-ID: <k53h44tbytos5tvvbg263qpbkl4xzjcsj35fmpzxxie7dn7z65@ombf4w6za4ui>
References: <20250811093050.38930-1-chentaotao@didiglobal.com>
 <20250811093050.38930-2-chentaotao@didiglobal.com>
 <aJtKbg28QMPgvunP@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aJtKbg28QMPgvunP@intel.com>
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

Hi Rodrigo,

...

> > @@ -441,12 +441,12 @@ shmem_pwrite(struct drm_i915_gem_object *obj,
> >  	written = file->f_op->write_iter(&kiocb, &iter);
> >  	BUG_ON(written == -EIOCBQUEUED);
> >  
> > -	if (written != size)
> > -		return -EIO;
> > -
> >  	if (written < 0)
> >  		return written;
> >  
> > +	if (written != size)
> > +		return -EIO;
> 
> That's awkward...
> 
> I mean, you are right that we cannot overwrite what is returned from the
> write_iter function. But perhaps this != check here should be before?
> 
> Or it at least deserves a comment in the code telling what's the intent
> here. why != size is -EIO... but it was already written :/

The check (written < 0) is completely useless after (written !=
size), so that I think the patch is correct.

Andi

> > +
> >  	return 0;
> >  }
> >  
> > -- 
> > 2.34.1
