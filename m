Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 52ED2ACBB0C
	for <lists+intel-gfx@lfdr.de>; Mon,  2 Jun 2025 20:21:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE58110E0A3;
	Mon,  2 Jun 2025 18:21:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="BwvfGDng";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A3D610E0A3
 for <intel-gfx@lists.freedesktop.org>; Mon,  2 Jun 2025 18:20:59 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 7C6824A213;
 Mon,  2 Jun 2025 18:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5013EC4CEEB;
 Mon,  2 Jun 2025 18:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1748888454;
 bh=O3my166LRHaBSKhIYcdzCfjQsCp0SB3BDG9miz6KYug=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BwvfGDngokneW72eZf83YemJzBLjUKucyMacXdG7AttdAkQctpxFNOTgftS2Bh9bJ
 wQnTY9hUr/TxJym2bo7fUiDpKUaheyRVA00kI9K2kWfzIASfS3QRXZRV63URoUbior
 ZskgeiOSEFmOxY/xPLXzOaUk6VB9A05EhM+Vd7G1u+ZaoSWpWXl6pzqIVL6eXp1oGZ
 bKKxWkjSbD+Y8YwGBUU6xyBGc5zzbzGJCsIzUprq3faUgK4vPOXeTC054p2aYXBmDQ
 vvU1Y7wUUc7ClMTFnWt+7G3h5P+3eS9wbykvlk5Spkm7obdDoWmm/cZLTBYyLRVCO5
 4r+nck5OCWz9A==
Date: Mon, 2 Jun 2025 11:20:51 -0700
From: Kees Cook <kees@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux-hardening@vger.kernel.org, intel-gfx@lists.freedesktop.org
Subject: Re: i915 utils: range_overflows*()
Message-ID: <202506021119.8FD6339F@keescook>
References: <cd0ea72c6cab6c478336cd1bb5b517a9fe7a150d@intel.com>
 <202505301026.126AB6FFC@keescook>
 <d127e624d6a851f488c60631a9bf84f6316748eb@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d127e624d6a851f488c60631a9bf84f6316748eb@intel.com>
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

On Mon, Jun 02, 2025 at 04:10:21PM +0300, Jani Nikula wrote:
> On Fri, 30 May 2025, Kees Cook <kees@kernel.org> wrote:
> > On Fri, May 30, 2025 at 10:44:31AM +0300, Jani Nikula wrote:
> >> 
> >> Hi Kees -
> >> 
> >> drivers/gpu/drm/i915/i915_utils.h has a handful of helper macros for
> >> checking range overflows: range_overflows(), range_overflows_t(),
> >> range_overflows_end(), and range_overflows_end_t().
> >> 
> >> Looks like the first one has also been copy-pasted to
> >> include/drm/drm_buddy.h.
> >> 
> >> Feels like include/linux/overflow.h would be the right place for (some
> >> version of) them.
> >> 
> >> Thoughts?
> >
> > Sure, yes! They need some documentation too. :) And probably some
> > renaming. It looks like range_overflows() is not end-inclusive, but
> > range_overflows_end() is? And the _t variants are forcing explicit
> > types (like max_t, but unlike struct_size_t).
> 
> Ah, naming.
> 
> As we all know, NP in NP-complete actually stands for "naming
> problem". It's hard to come up with a good name, but presented with one,
> it's quick to verify it is indeed good.
> 
> Ideas for the hard part?

Well, since the users already exist with the current names, how about we
skip that for now and just relocate these (with added kern-doc) to
overflow.h and go from there?

-Kees

-- 
Kees Cook
