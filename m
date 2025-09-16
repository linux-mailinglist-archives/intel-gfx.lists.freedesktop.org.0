Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 57FB6B59349
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 12:20:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DC73410E095;
	Tue, 16 Sep 2025 10:20:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="qLQoDPr+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3DA1010E095
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 10:20:24 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 151E46022A;
 Tue, 16 Sep 2025 10:20:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4ED95C4CEF0;
 Tue, 16 Sep 2025 10:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1758018022;
 bh=C8x21iFxlD9LWrc6dbkyr2fsXNfmsSmxuKUBj3gqfsA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qLQoDPr+ctawdEjb7aOtvOXFgb/3Uxd9Y+B2Th7oEiDJdkB/534Nv+AAUtmcADKwp
 ubJ25Zjv37Rs63Cr2No1PUSfdvmTF5K4bXrwMD4DggkB5xLSzBtj7Mvkr4evXFe0Iw
 kY9BbIf/4QlYHJptGxNQ98+NuxNf+axIRYvkQwu5MZm+af2xgI+RgpjjfY0lbCKl+j
 2/Ifh/e9H8otVnvqhvDw8ocTmGmYl/lqFdGeTlq85CiDZkC0GPQsoSW9R/vEdwhbQY
 OBvcEVtvDfWHg17rRVJhO9eGk71HCKlkMDc4nqKSpBhWJlD9/B1ZUpwjqPITgb+EHK
 TvW0/VBKXEiWA==
Date: Tue, 16 Sep 2025 12:20:19 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, 
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v3 1/5] drm: Avoid suspicious operations in
 drm_fb_dma_get_gem_addr()
Message-ID: <37gdqefdlckaqa2kwwcu2wcwfq6vyrxiz43tc2tgornr357ok4@w6vwdtf7p44y>
References: <cover.1757576103.git.krzysztof.karas@intel.com>
 <af178bcb6408ec6395b1102a1429ad49f6bc9f1b.1757576103.git.krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <af178bcb6408ec6395b1102a1429ad49f6bc9f1b.1757576103.git.krzysztof.karas@intel.com>
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

On Tue, Sep 16, 2025 at 06:33:00AM +0000, Krzysztof Karas wrote:
> There are two unsafe scenarios in that function:
>  1) drm_format_info_block_width/height() may return 0 and cause
> division by 0 down the line. Return early if any of these values
> are 0.
>  2) dma_addr calculations are carried out using 32-bit
> arithmetic, which could cause a truncation of the values
> before they are extended to 64 bits. Cast one of the operands
> to dma_addr_t, so 64-bit arithmetic is used.
> 
> Fixes: 8c30eecc6769 ("drm/gem: rename struct drm_gem_dma_object.{paddr => dma_addr}")

This doesn't need the Fixes tag as it's a very unlikely thing to
happen.

> Cc: Danilo Krummrich <dakr@redhat.com>
> Cc: <stable@vger.kernel.org> # v6.1+
> Reviewed-by: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/gpu/drm/drm_fb_dma_helper.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/drm_fb_dma_helper.c b/drivers/gpu/drm/drm_fb_dma_helper.c
> index fd71969d2fb1..00aaad648a33 100644
> --- a/drivers/gpu/drm/drm_fb_dma_helper.c
> +++ b/drivers/gpu/drm/drm_fb_dma_helper.c
> @@ -85,6 +85,9 @@ dma_addr_t drm_fb_dma_get_gem_addr(struct drm_framebuffer *fb,
>  	u32 block_start_y;
>  	u32 num_hblocks;
>  
> +	if (block_w == 0 || block_h == 0)
> +		return 0;

This can't go unnoticed, you make the analyzer happy but you
create bigger issues by silently returning '0'.

If you are really concerned you can place here a BUG_ON or
WARN_ON_ONCE.

Andi

> +
>  	obj = drm_fb_dma_get_gem_obj(fb, plane);
>  	if (!obj)
>  		return 0;
