Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 516FDCAAFD1
	for <lists+intel-gfx@lfdr.de>; Sun, 07 Dec 2025 01:38:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7B8DC10E319;
	Sun,  7 Dec 2025 00:37:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="T7ngEJ45";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A46810E319
 for <intel-gfx@lists.freedesktop.org>; Sun,  7 Dec 2025 00:37:58 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id 24A954036C;
 Sun,  7 Dec 2025 00:37:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B906AC4CEF5;
 Sun,  7 Dec 2025 00:37:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1765067878;
 bh=lkfmwv7bjDBKFQgW2WUnqJdUlq2yXVeM3ri/uSUpAUQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=T7ngEJ45t30yyPTbPxk2lUJmQGOrI6owZl4y0Xeqm/7ZlfWM0bdD0nLkCGGwiuHTg
 efaKqghaw4fUM0ZKbaDmjPW01+MBBVu/gLk6BYM/1555QVgN+wJIpAvRGa6Obi3UjA
 M290DtJYb/kDrY5NfMeNV2L2Go6zPDXWVa5Ze8PMQAPCx/W/qf7xEH0yJlp5cqDltx
 cqFViX4/n7XRdOg8MyvZhqNf5ZmE2LvHImj/krEq3fEqDJWlkmg3/KGu92zKC6KsR7
 mwBjRC83WoGU4wRLxnxb+npZvD32wPEoeeYVLQUAP/poMJCSCnD72P2khEezolOquT
 a5yr5+rDDs4Sw==
Date: Sat, 6 Dec 2025 19:37:55 -0500
From: Sasha Levin <sashal@kernel.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, stable@vger.kernel.org,
 intel-gfx@lists.freedesktop.org
Subject: Re: Apply fc7bf4c0d65a342b29fe38c332db3fe900b481b9 to 5.15
Message-ID: <aTTMYz_n-9ck-tSo@laps>
References: <20251204001352.GB468348@ax162>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <20251204001352.GB468348@ax162>
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

On Wed, Dec 03, 2025 at 05:13:52PM -0700, Nathan Chancellor wrote:
>Hi stable folks,
>
>Please apply commit fc7bf4c0d65a ("drm/i915/selftests: Fix inconsistent
>IS_ERR and PTR_ERR") to 5.15, where it resolves a couple of instances of
>-Wuninitialized with clang-21 or newer that were introduced by commit
>cdb35d1ed6d2 ("drm/i915/gem: Migrate to system at dma-buf attach time
>(v7)") in 5.15.
>
>  In file included from drivers/gpu/drm/i915/gem/i915_gem_dmabuf.c:329:
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:105:18: error: variable 'dmabuf' is uninitialized when used here [-Werror,-Wuninitialized]
>    105 |                        PTR_ERR(dmabuf));
>        |                                ^~~~~~
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:94:24: note: initialize the variable 'dmabuf' to silence this warning
>     94 |         struct dma_buf *dmabuf;
>        |                               ^
>        |                                = NULL
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:161:18: error: variable 'dmabuf' is uninitialized when used here [-Werror,-Wuninitialized]
>    161 |                        PTR_ERR(dmabuf));
>        |                                ^~~~~~
>  drivers/gpu/drm/i915/gem/selftests/i915_gem_dmabuf.c:149:24: note: initialize the variable 'dmabuf' to silence this warning
>    149 |         struct dma_buf *dmabuf;
>        |                               ^
>        |                                = NULL
>
>It applies and builds cleanly for me. If there are any issues, please
>let me know.

Queued up, thanks.

-- 
Thanks,
Sasha
