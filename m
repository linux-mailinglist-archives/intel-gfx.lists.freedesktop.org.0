Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E1EDC5BCD43
	for <lists+intel-gfx@lfdr.de>; Mon, 19 Sep 2022 15:30:01 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E0F4C10E65A;
	Mon, 19 Sep 2022 13:29:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5A86F10E660;
 Tue, 13 Sep 2022 23:19:14 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id EF6C5B810DB;
 Tue, 13 Sep 2022 23:19:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CD805C433C1;
 Tue, 13 Sep 2022 23:19:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1663111151;
 bh=6khS5XPU33uH8kkng189ibUp6LbN758Z6u5O1YtiFGA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=GkBVk6Oj0bb1wf0nvQXq3/tf9PvLhEyyK6fPNyUDl2itwvz1JtSpSvWCdE+T03FbG
 ivmD9Hf/JFIp4Ek9eSUvcendL7CvbrBidPmGhUlsQUMP/9U3o6KWXGNLed/XewuQE1
 PEnYfLS77abuxruBI5fi3T7/ylzY7NxK+qxch/NRHuoubzOrFALyA7FF1JpgdNIsWd
 HMQGT79k4SsA0Ail2gUjxdLi83kTmzkhhupBtQZoGblQrcEM0lti9KkB8K93wLWFwh
 e18zCvBnSrBlxNl8l8rAyUSB4AiBnr1z2nMdCdSv9wJxalnPTti55tXmvnz8gyEcMu
 EEK5rQrIag/5Q==
Date: Tue, 13 Sep 2022 16:19:09 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nathan Huckleberry <nhuck@google.com>
Message-ID: <YyEP7W/yZAyhNtTX@dev-arch.thelio-3990X>
References: <20220913205531.155046-1-nhuck@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220913205531.155046-1-nhuck@google.com>
X-Mailman-Approved-At: Mon, 19 Sep 2022 13:29:10 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix return type of mode_valid
 function hook
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, llvm@lists.linux.dev,
 Dan Carpenter <error27@gmail.com>, David Airlie <airlied@linux.ie>,
 Tom Rix <trix@redhat.com>, intel-gfx@lists.freedesktop.org,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Tue, Sep 13, 2022 at 01:55:27PM -0700, Nathan Huckleberry wrote:
> All of the functions used for intel_dvo_dev_ops.mode_valid have a return
> type of enum drm_mode_status, but the mode_valid field in the struct
> definition has a return type of int.
> 
> The mismatched return type breaks forward edge kCFI since the underlying
> function definitions do not match the function hook definition.
> 
> The return type of the mode_valid field should be changed from int to
> enum drm_mode_status.
> 
> Reported-by: Dan Carpenter <error27@gmail.com>
> Link: https://github.com/ClangBuiltLinux/linux/issues/1703
> Cc: llvm@lists.linux.dev
> Signed-off-by: Nathan Huckleberry <nhuck@google.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  drivers/gpu/drm/i915/display/intel_dvo_dev.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dvo_dev.h b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
> index d96c3cc46e50..50205f064d93 100644
> --- a/drivers/gpu/drm/i915/display/intel_dvo_dev.h
> +++ b/drivers/gpu/drm/i915/display/intel_dvo_dev.h
> @@ -75,8 +75,8 @@ struct intel_dvo_dev_ops {
>  	 *
>  	 * \return MODE_OK if the mode is valid, or another MODE_* otherwise.
>  	 */
> -	int (*mode_valid)(struct intel_dvo_device *dvo,
> -			  struct drm_display_mode *mode);
> +	enum drm_mode_status (*mode_valid)(struct intel_dvo_device *dvo,
> +					   struct drm_display_mode *mode);
>  
>  	/*
>  	 * Callback for preparing mode changes on an output
> -- 
> 2.37.2.789.g6183377224-goog
> 
