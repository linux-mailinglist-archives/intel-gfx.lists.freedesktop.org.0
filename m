Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE215CC372C
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Dec 2025 15:12:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BA6C110E7CF;
	Tue, 16 Dec 2025 14:12:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="U0+UloLx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1539810E2D4
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Dec 2025 14:12:04 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id D484840BBC;
 Tue, 16 Dec 2025 14:12:03 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A0CAC4CEF1;
 Tue, 16 Dec 2025 14:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1765894323;
 bh=YrPHpZWK3FzAouIaESE9PcvPHDffz4WG3h+dxX21VmE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U0+UloLxKN+QB8fSfRdLz3o3TnFZ2jRJBew2fGX1aONxgvI934vSg5QhQR+q/ow9i
 eFkWRiiVxOmvdTZyN/9Ts3CAKmm01nL/n3BIngDAGlKjT9L8OPVYc3J5vOwJXTagJ9
 PPWd8cGaXL2tVzPzlOC5MSXLCJ2tm/EDZbzwH3eYLi0ZstWsfXUIMWGiWKcduqMF0T
 1WiUbbnMejJFSJMEdj6cyCdJGW1QIrgTikCGyZzK+7jDS5LJ+n90eh4yvyV9bVkZV6
 e2t6zQlFV5cqErxLn/SdvC5eOY5lTmpUqRL6ji0bVUU2oAuZycTOhTcvv2ByozIIfq
 Ukha1pJKMTOBQ==
Date: Tue, 16 Dec 2025 15:11:59 +0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, 
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v5 2/3] drm: Avoid suspicious operations in
 drm_fb_dma_get_gem_addr()
Message-ID: <ygpvfkswgkgnjh6amvjfthqdjbpjdxuztmpk4vpn6hi25gqdu2@6pqtahptblnv>
References: <20251204143827.111428-1-krzysztof.karas@intel.com>
 <20251204143827.111428-3-krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251204143827.111428-3-krzysztof.karas@intel.com>
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

On Thu, Dec 04, 2025 at 02:38:26PM +0000, Krzysztof Karas wrote:
> dma_addr calculations are carried out using 32-bit
> arithmetic, which could cause a truncation of the values
> before they are extended to 64 bits. Cast one of the operands
> to dma_addr_t, so 64-bit arithmetic is used.

dma_addr_t is not always 64 bit. The patch is correct, even
though I don't see a big probability that the issue might show
up. An ack from display people would help.

From my side:

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

with the commit log changed (but if this goes in, I can change it
on the fly).

Thanks,
Andi
