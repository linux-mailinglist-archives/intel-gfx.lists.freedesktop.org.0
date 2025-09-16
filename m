Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CFBDAB593E6
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 12:38:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1748B10E7A1;
	Tue, 16 Sep 2025 10:38:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="EotcFjy4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B70D10E7A1
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 10:38:02 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 1ED3E600AE;
 Tue, 16 Sep 2025 10:38:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5A866C4CEEB;
 Tue, 16 Sep 2025 10:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1758019080;
 bh=h5n1Ac6OJ0L4253m1IBInwdgCPPtb58wfDQuEv2Gc3o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EotcFjy4FDpgkbTkPgG0/b7fmrWXXCxuh3UEXH3kvsoQ824x2HGGpPYFutj9qr23Y
 xTOjoy3ZPS3CSL14TvtYhUr1WKiyRw5Ti8el56UrOgKA8B3Dl7nKedECHLDxMj0Fhx
 rfXbUdRZdxPBVU8Ku7tM+kQd945u8c3yNxTLXhzFy0ms6rlyILeJDlMKWJJJne8aBU
 fwHx6TSEPhETa5ivGyCH+AKeWoUitKX83Mkekui50iBNMmF+ThroI8a/QcbD6RDorN
 wu95AOYNRNjmmrKZXxbpWA4GMZSxEzASEVMgDTu2uJ8gVAfVEdr81RlxP+ocnHYLea
 je5eXSjILd0zQ==
Date: Tue, 16 Sep 2025 12:37:57 +0200
From: Andi Shyti <andi.shyti@kernel.org>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: intel-gfx@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>, 
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
Subject: Re: [PATCH v3 3/5] drm: Avoid undefined behavior on u16
 multiplication in drm_vram_helper_mode_valid_internal()
Message-ID: <27p2dy3uhcqfugsdzbhawkhyvz74uxa5k4p7thl4fvqlss65f3@nojfpyge3wqy>
References: <cover.1757576103.git.krzysztof.karas@intel.com>
 <827eb7e52afb3e2a24988e4e12479a2a83b1400e.1757576103.git.krzysztof.karas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <827eb7e52afb3e2a24988e4e12479a2a83b1400e.1757576103.git.krzysztof.karas@intel.com>
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

On Tue, Sep 16, 2025 at 06:34:06AM +0000, Krzysztof Karas wrote:
> Fields hdisplay and vdisplay are defined as u16 and their
> multiplication causes implicit promotion to signed 32-bit value,
> which may overflow and cause undefined behavior.
> 
> Prevent possible undefined behavior by explicitly casting one of
> the operands to (unsigned int) type.
> 
> Fixes: 80f7c3f77697 ("drm/vram: Add helpers to validate a display mode's memory requirements")
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: <stable@vger.kernel.org> # v5.7+
> Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
> ---
>  drivers/gpu/drm/drm_gem_vram_helper.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/drm_gem_vram_helper.c b/drivers/gpu/drm/drm_gem_vram_helper.c
> index b04cde4a60e7..4b144e9603b8 100644
> --- a/drivers/gpu/drm/drm_gem_vram_helper.c
> +++ b/drivers/gpu/drm/drm_gem_vram_helper.c
> @@ -967,7 +967,7 @@ drm_vram_helper_mode_valid_internal(struct drm_device *dev,
>  
>  	max_fbpages = (vmm->vram_size / 2) >> PAGE_SHIFT;
>  
> -	fbsize = mode->hdisplay * mode->vdisplay * max_bpp;
> +	fbsize = (unsigned int)mode->hdisplay * mode->vdisplay * max_bpp;

Why "unsigned int" and not "unsigned long"?

If you are concerned about overflow, you can use
check_mul_overflow(), as well.

If we want to be sure, we can also use u64/u32 types.

(same comment goes for the rest of the patches).

Andi

>  	fbpages = DIV_ROUND_UP(fbsize, PAGE_SIZE);
>  
>  	if (fbpages > max_fbpages)
> -- 
> 2.34.1
> 
> 
> -- 
> Best Regards,
> Krzysztof
