Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 91818B1F171
	for <lists+intel-gfx@lfdr.de>; Sat,  9 Aug 2025 02:13:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D724510E1F6;
	Sat,  9 Aug 2025 00:12:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="jjwEP6aL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7D3510E1F6
 for <intel-gfx@lists.freedesktop.org>; Sat,  9 Aug 2025 00:12:56 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 317215C6286;
 Sat,  9 Aug 2025 00:12:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 271BAC4CEED;
 Sat,  9 Aug 2025 00:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1754698375;
 bh=jcF3zAo7PyUGVEN5zuBrvZA2yl5Wy1mYV5fmwqUwtok=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jjwEP6aLs/DMnSyY87hFs3OsuJKU5wMof32s04taXCWntRWB9rSIWBM5TspkyAqj0
 ql6ibVNuHoYJCU+AdLvgF/2ZTXuhoGQ4oeSBfNZ+RvQxtN1sbpdeHykJr8scy9bpDc
 EWct58NDQnwE2meTK15AHO/LwstDbzmmUFhgbBOVCOrIvJq5GOp2Dwn0V3qHBWcYty
 0okvDNeI8/MitVQP3hn3nXiwnQSvGHq0uMAVdQsUFI9+lJbwLYOX+xpiy64c8S7Q8g
 e5gAJxCB6q9SMumhTMvsacF9xgJz6cqoZed/dTaqf1GZruzAd8uFos55pfb+exMaNq
 q9HXc7Uq1fEUw==
Date: Fri, 8 Aug 2025 23:12:51 -0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH v2 0/2] drm/i915/selftests: Miscellaneous improvements in
 gem mman migration tests
Message-ID: <4ffwdlxmqr7qwowj2h64lmvndx7cissn2jno354helz3byzhkn@nnrvyzs3vlmw>
References: <cover.1753859971.git.krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1753859971.git.krzysztof.karas@intel.com>
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

Hi Krzysztof,

On Wed, Jul 30, 2025 at 07:38:16AM +0000, Krzysztof Karas wrote:
> v2:
>  * Fix threading issue in the series

Next time, please provide an introduction in the cover letter.

> Krzysztof Karas (2):
>   drm/i915/selftests: Do not overwrite error code after
>     intel_context_migrate_clear() call
>   drm/i915/selftests: Do not leak vm_area_struct on early return

Merged to drm-intel-gt-next.

Thanks,
Andi
