Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3192AB36F8
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 14:31:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6430210E3C0;
	Mon, 12 May 2025 12:31:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="AApLniV4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4E36210E3C0
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 May 2025 12:31:25 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 7D8345C640D;
 Mon, 12 May 2025 12:29:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C39DCC4CEE7;
 Mon, 12 May 2025 12:31:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1747053084;
 bh=INyr+mAR1Tg13M3Topose/U+b20BqNJo1doB5jnAtwA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AApLniV4a7zll24wbh83uE2zWh2h6HI8W21VB/xZSKKujBIGl9zx14kUwH/KYe48d
 BkrORWeb3u/2HdERns8SZ3UTqoeT96SFTXYNmYGGCFkOntzRg3sENGYLVz9Yh9BrbD
 AwacfuqLfN+TBlIrZbtSrhKIYFN9ZeFoVv4N3w7Fy9RCrqH0pHP6L9WlrMy/H/X5Y4
 Y7vWqMLJShmEdDgWaHHqVDU+7jeW/24QMgGBWqBC/WDasJCuEO4moBvljSqM6E1x44
 X6QTpPQ3jCt71AKYUzHgzqmHmuTyV/fuqLeE0oW6fo98OL2at4EJdmn1dR4uYwXrwP
 V3dfYfEcJJPSg==
Date: Mon, 12 May 2025 14:31:20 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@intel.com>, 
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH v3] drm/i915/selftest: allow larger memory allocation
Message-ID: <lqvtxnj2375lzaoixo45zlcgs5x5y7fvn6z2nlik6zb3sirza7@lhhiovyxz7gd>
References: <fptevdfbclvg2lbfuys5ibffbl2baouywkutnr7vdsy5tzcqfk@mpflwlh6jxfd>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fptevdfbclvg2lbfuys5ibffbl2baouywkutnr7vdsy5tzcqfk@mpflwlh6jxfd>
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

H Mikolaj,

On Fri, May 09, 2025 at 09:57:18AM +0200, Mikolaj Wasiak wrote:
> Due to changes in allocator, the size of the allocation for
> contiguous region is not rounded up to a power-of-two and
> instead allocated as is. Thus, change the part of test that
> expected the allocation to fail.
> 
> Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
> Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>

merged to drm-intel-gt-next.

Thanks,
Andi
