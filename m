Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7E4AF60ED
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 20:16:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 65EFF10E29F;
	Wed,  2 Jul 2025 18:16:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="cUfp+p6P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 19B1510E29F
 for <intel-gfx@lists.freedesktop.org>; Wed,  2 Jul 2025 18:16:20 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 49C706111F;
 Wed,  2 Jul 2025 18:16:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A13FC4CEE7;
 Wed,  2 Jul 2025 18:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1751480179;
 bh=oxFk8nBtUpnr9ArALYj2G+HiGhqQz+KjsgoenrQgazk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cUfp+p6P8NkfOomLDeaOO1AYQfc7YgF5501e/lvU0J7pig7nGbHZS9CvA+gskzaKS
 nlsSw9g+STdIRBpwhVlFiwK/GSEAa8sT878lTIWuTlLaIG2P4TrzT/JgJ9W4KVctLc
 ux7l+sovWqx0qglJyVKhBG6q04DR2h83ccHtFTyB4Unzc4r+YszEyZlrY7SMCKxZrr
 b/xk7Q9exyIzLLZknrip/QxXaEOZOwJIXb1WTO3s1MRlrQsC0qjT70EVL3nv4NLFRI
 UKaCmljRiWHmQXnuPoy9POHvKOgO6CMp/Mi++G3UU4N+kYL5gVjYx5tGMsnGSBBDfU
 nsXCAZICxxUeA==
Date: Wed, 2 Jul 2025 20:16:14 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Jani Nikula <jani.nikula@intel.com>
Cc: linux-kernel@vger.kernel.org, intel-gfx@lists.freedesktop.org, 
 Thomas Gleixner <tglx@linutronix.de>,
 Geert Uytterhoeven <geert+renesas@glider.be>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] iopoll: use fsleep() instead of usleep_range()
Message-ID: <2axg64hx4qjg3hvk27du4yifoojpemkzht2kuxzecuggomrbyv@difktc36et6m>
References: <20250626145119.2048423-1-jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250626145119.2048423-1-jani.nikula@intel.com>
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

Hi Jani,

On Thu, Jun 26, 2025 at 05:51:19PM +0300, Jani Nikula wrote:
> Sometimes it's necessary to poll with long sleeps, and the accuracy of
> usleep_range() is overkill. Use the flexible sleep helper fsleep() for
> sleeping in the read_poll_timeout() family of macros to automatically
> choose the appropriate method of waiting.
> 
> Functionally there are a few consequences for existing users:
> 
> - 10 us and shorter sleeps will use usleep() instead of
>   usleep_range(). Presumably this will not be an issue.
> 
> - When it leads to a slack of less than 25%, msleep() will be used
>   instead of usleep_range(). Presumably this will not be an issue, given
>   the sleeps will be longer in this case.
> 
> - Otherwise, the usleep_range() slack gets switched from the begin of
>   the range to the end of the range, i.e. [sleep/2+1..sleep] ->
>   [sleep..sleep+sleep/2]. In theory, this could be an issue in some
>   cases, but difficult to determine before this hits the real world.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

this patch makes sense to me even with the fixes in the commit
message suggested byt Geert.

Reviewed-by: Andi Shyti <andi.shyti@kernel.org>

Andi
