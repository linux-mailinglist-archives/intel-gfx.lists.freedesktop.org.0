Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC93B2F798
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Aug 2025 14:12:16 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A517110E94E;
	Thu, 21 Aug 2025 12:12:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="kBcd87qH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2027B10E94E
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Aug 2025 12:12:14 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id ED6B7A58292;
 Thu, 21 Aug 2025 12:12:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CB5EC4CEEB;
 Thu, 21 Aug 2025 12:12:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1755778332;
 bh=4mcQIE67L3WL6O7IfA8tS3LP/sxMDdtd6haYhNPZpVM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kBcd87qHT4yiIVTOIS5r4ZoI6LAXKOQaKe2wDc02vGrP9K8weG2h++7j804DSRG3W
 O1iTO5lV1PqPABjKyxZP8LkzTwpKc2j0yTPlEm2c/e8+x8MekbefdNN64kiJUGnBSz
 EgxsPy1eEAxmH+8R9QgYiaOm6NSHaf2jALg+IppesXAoEECIh31IVp5AIqQSDV35fN
 gvHFVASnH/1I5KwXAM7l2+YwB38CjRNuHOQb7RjFxG1sG36RpGKwbAV+dLPpmlSacx
 aI0wwHnquXFbIkt2Ls6rbMTVwjA5y9qNrfEMuXfbZh8QSdL7YfR6tYkiaYcyHNfNAU
 TOZUp6j8kUNaA==
Date: Thu, 21 Aug 2025 11:12:07 -0100
From: Andi Shyti <andi.shyti@kernel.org>
To: =?utf-8?B?6ZmI5rab5rab?= Taotao Chen <chentaotao@didiglobal.com>
Cc: "rodrigo.vivi@intel.com" <rodrigo.vivi@intel.com>, 
 "airlied@gmail.com" <airlied@gmail.com>,
 "brauner@kernel.org" <brauner@kernel.org>, 
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>, 
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
 "lkp@intel.com" <lkp@intel.com>,
 "oe-lkp@lists.linux.dev" <oe-lkp@lists.linux.dev>, 
 "oliver.sang@intel.com" <oliver.sang@intel.com>,
 "simona@ffwll.ch" <simona@ffwll.ch>, 
 "tursulin@ursulin.net" <tursulin@ursulin.net>
Subject: Re: [PATCH 1/2] drm/i915: set O_LARGEFILE in __create_shmem()
Message-ID: <zzkl4ozxohkkz6w6himarcecvsvboswwda3bypyj3nv7p56wia@2zn3cvfmzt6i>
References: <nd2sd2vdwif242wslgkaonuvskawho36bp6j6a4caghauzx6f5@dgkaow5idqxt>
 <20250821032156.4946-1-chentaotao@didiglobal.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250821032156.4946-1-chentaotao@didiglobal.com>
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

...

> >> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> >> index e3d188455f67..2b53aad915f5 100644
> >> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> >> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> >> @@ -514,6 +514,11 @@ static int __create_shmem(struct drm_i915_private *i915,
> >>  	if (IS_ERR(filp))
> >>  		return PTR_ERR(filp);
> >>  
> >> +	/*
> >> +	 * Prevent -EFBIG by allowing large writes beyond MAX_NON_LFS on shmem
> >> +	 * objects by setting O_LARGEFILE.
> >> +	 */
> >> +	filp->f_flags |= O_LARGEFILE;
> >
> > I don't have anything against this, but is it really fixing the
> > issue? I thought that O_LARGEFILE is ignored in 64 bit machines,
> > while here the failure is happening in 64 bit machines.
> 
> As mentioned in the commit body, without O_LARGEFILE, file->f_op->write_iter
> calls generic_write_check_limits(), which enforces the 2GB (MAX_NON_LFS) limit
> and causes -EFBIG on large writes.
> 
> On 64-bit systems O_LARGEFILE is still set when opening files (e.g. via open()),
> so we also need to set it here for shmem objects created inside the kernel.
> 
> However, on older 32-bit systems, setting O_LARGEFILE unconditionally may be risky.
> Previously I did not check this, but to reduce the risk a safer approach is to wrap
> it in a check, for example:
> 
> +	if (force_o_largefile())
> +		filp->f_flags |= O_LARGEFILE;

Ack!

> > Besides, where do you see in the LKP logs the -EFBIG error
> > message?
> >
> 
> Due to the previous return order in shmem_pwrite(), this -EFBIG was being overwritten
> by -EIO on short writes. This issue will be fixed in PATCH 2/2.

Yes, correct :-)

Thanks,
Andi
