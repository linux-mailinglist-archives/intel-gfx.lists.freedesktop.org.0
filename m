Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 290A7B384BC
	for <lists+intel-gfx@lfdr.de>; Wed, 27 Aug 2025 16:17:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC11810E119;
	Wed, 27 Aug 2025 14:17:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="RYmvafAc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from tor.source.kernel.org (tor.source.kernel.org [172.105.4.254])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2641E10E119
 for <intel-gfx@lists.freedesktop.org>; Wed, 27 Aug 2025 14:17:43 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by tor.source.kernel.org (Postfix) with ESMTP id 55FFC60266;
 Wed, 27 Aug 2025 14:17:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9A9C4C4CEEB;
 Wed, 27 Aug 2025 14:17:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1756304262;
 bh=4VUy+JLJsj7U6VfLOX4oHAyFHleYUyfKKNLFPwFLj9Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RYmvafAchu2NrY8cyp4s5m6IUoq2dYdO4FFUNA5avflSqWkMz69OMyyS/T6b4LIAU
 hTRwaKxeN9djeazZJxrtHW4yYFF0w/8ZJ6/TzwBc8vel4QA47QcduEYuW6Mi6cSw99
 y5HPUL54rEoG/aSYabo/B5gIDHjd50mE3P9JFGg3nqmZssn1kQOTkStm5jksayj4Bx
 XSuYhmC+0DNovYjiZWvj4n82yFuV/OrnvnZ/kOQCQ8lYH0QLUnsk5s0MkcpXJPxp6J
 WLWb1CZvavNqMc6Xg5WgMp/1NvTIGdAE+7j0bdA7xEGaVReTkz1CSfoj/zzIqPyPR/
 hBJRIdSmtXrIQ==
Date: Wed, 27 Aug 2025 13:17:37 -0100
From: Andi Shyti <andi.shyti@kernel.org>
To: Luca Coelho <luciano.coelho@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.nikula@intel.com
Subject: Re: [PATCH v2] drm/i915: use REG_BIT on FW_BLC_SELF_* macros
Message-ID: <74h4w5535nsjoww3d54nguxfxz7wbb6a3mw4nolah2fhmw2no7@4ftybd2wqc2l>
References: <20250827111109.401604-1-luciano.coelho@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250827111109.401604-1-luciano.coelho@intel.com>
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

Hi Luca,

On Wed, Aug 27, 2025 at 02:10:40PM +0300, Luca Coelho wrote:
> Use REG_BIT() instead of open coding the shift in the FW_BLC_SELF_*
> macro definitions to avoid potentially typing them as 'int'.
> 
> For example, this happens when we pass them to _MASKED_BIT_ENABLE(),
> because of the typeof() construct there.  When we pass 1 << 15 (the
> FW_BLC_SELF_EN macro), we get typeof(1 << 15), which is 'int'.  Then
> the value becomes negative (-2147450880) and we try to assign it to a
> 'u32'.
> 
> In practice this is not a problem though, because when we try to
> assign -2147450880 to the u32, that becomes 0x80008000, which was the
> intended result.
> 
> Signed-off-by: Luca Coelho <luciano.coelho@intel.com>

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com>

Thanks,
Andi
