Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44523AB100C
	for <lists+intel-gfx@lfdr.de>; Fri,  9 May 2025 12:12:21 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A5A5210E9F7;
	Fri,  9 May 2025 10:12:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="QGrNxZRv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from nyc.source.kernel.org (nyc.source.kernel.org [147.75.193.91])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5308D10E9F7
 for <intel-gfx@lists.freedesktop.org>; Fri,  9 May 2025 10:12:18 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 50D0CA4039A;
 Fri,  9 May 2025 10:12:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7FB0BC4CEE4;
 Fri,  9 May 2025 10:12:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1746785537;
 bh=rWrkwB8qWRQH9EWj1eMT9aFaDuj4kGVbhqBWoxJbDRI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QGrNxZRvjufpJjAXqST4Huhy4ujxK00uzpQN6daeBupQtk7QVyTW/32viP0+y5nmY
 bD2K9ZuvUkQeV91fjdUNqmbbWssIP/nVo7SIcuzbi0hzdiSKxjB3t0HDeakqEHdipQ
 B7kqhB3TQ7xUnvnLsdsXJpjVF12mydc6F/NB/7dFRdv8ZAZdVowETcZKn9iyCCNG4/
 xWof3vZt/UB9S/ueOUIj9exwO2BK1tp1pfw+XLpSKG7gWHjs7GDz3SUk/bJFD4gAg0
 ZF+U3c5lg/xrIevN4s6gKZioaQ9/JvokleInuhgZEldJ0c/OCecYL+3HKx7C2jGP3A
 9SQHl14aognfA==
Date: Fri, 9 May 2025 12:12:13 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@intel.com>, 
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH v3] drm/i915/selftest: allow larger memory allocation
Message-ID: <6og56wmoda2zc6sqb67oapbx23nsb767vaetotjg2rr6k6frda@kqu2hopmh7hg>
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

Hi Mikolaj,

On Fri, May 09, 2025 at 09:57:18AM +0200, Mikolaj Wasiak wrote:
> Due to changes in allocator, the size of the allocation for
> contiguous region is not rounded up to a power-of-two and
> instead allocated as is. Thus, change the part of test that
> expected the allocation to fail.
> 
> Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>
> Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
