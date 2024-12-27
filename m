Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BCB89FD7FD
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Dec 2024 23:37:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69B4D10E072;
	Fri, 27 Dec 2024 22:37:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="MEnMTy/n";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E43A10E072
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Dec 2024 22:37:44 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id B5574A412D9;
 Fri, 27 Dec 2024 22:35:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CA7FC4CED0;
 Fri, 27 Dec 2024 22:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1735339062;
 bh=mnEE8Q9b98wTp4vbCbo8L2/igyQ8PMln8wXQ0vtcWXM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MEnMTy/nKUZh41BUeE7rEDL9VqDCCqBA5+upcaRh6fz+az+G3PpBOmXgP33i0/aBD
 0qBa3n2Za9e0c2VMM6g6WufZ0lQvFxWfOqkagMRqkdIRJTQEFmgRoFliYZU0LTOY/j
 lJ0pI43ISO0yt8aY2+lLrwKiLnE4yu8qvVncT0cWcADpvFAHzjKjfwHYgh4uYOBS3R
 /LV78URQvfV6OCRaYp/xNeuLMIx7KgHSKmg1g5mE9VxJsR61KM6sun+Y9KrNs//i8Z
 CoDDK/ICvZKtfA+5TlZZoecn1AQ5fcy/BDzmm6c8fiKwy3EogAIJpAOHRkQGoKSn++
 PvID6IxRUMoiQ==
Date: Fri, 27 Dec 2024 23:37:38 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Tvrtko Ursulin <tursulin@igalia.com>
Cc: intel-gfx@lists.freedesktop.org, 
 "Dr. David Alan Gilbert" <linux@treblig.org>
Subject: Re: [PATCH 1/3] drm/i915: Remove deadcode
Message-ID: <ijligtsi7rzyiqjt6cbw4zgv75j4e2ua7a5rsgujtcohgef33b@r6d6ckbg4dlq>
References: <20241227113754.25871-1-tursulin@igalia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241227113754.25871-1-tursulin@igalia.com>
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

Hi Tvrtko,

I did plan to take care of these patches, anyway, thanks for
doing it. Just a couple of notes: please add a cover letter to
explain where this comes from and...

On Fri, Dec 27, 2024 at 11:37:52AM +0000, Tvrtko Ursulin wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> i915_active_acquire_for_context() was added in 2020 by
> commit 5d9341370f57 ("drm/i915: Export a preallocate variant of
> i915_active_acquire()") but has never been used.
> 
> The last use of __i915_gem_object_is_lmem() was removed in 2021 by
> commit ff20afc4cee7 ("drm/i915: Update error capture code to avoid using
> the current vma state")
> 
> Remove them.
> 
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>

... your SoB here, as well.

The BATs failed, so that I retriggered the tests.

Thanks,
Andi
