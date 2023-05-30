Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 272E0737418
	for <lists+intel-gfx@lfdr.de>; Tue, 20 Jun 2023 20:28:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 15E9210E380;
	Tue, 20 Jun 2023 18:28:54 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com
 [IPv6:2607:f8b0:4864:20::1034])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B52BE10E12B
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 13:49:16 +0000 (UTC)
Received: by mail-pj1-x1034.google.com with SMTP id
 98e67ed59e1d1-256e1d87998so95074a91.3
 for <intel-gfx@lists.freedesktop.org>; Tue, 30 May 2023 06:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=heitbaum.com; s=google; t=1685454555; x=1688046555;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date:from:to
 :cc:subject:date:message-id:reply-to;
 bh=7p73ODufu1/P74FptI7FRwaCItiP1sKbYRvV3n+M0V0=;
 b=PzarIwSIhRYrd8a9D1iPGmwviHC2XZt4+tfx7iv3dKbXBCvqRWGx9WoPv5WraiCSjm
 zgD8EF2ExxnBmzqJqpZ2xnxBOoQJjgm+v6OMnfUESSyJmbUZtTzVruClSMIw+5cXpChR
 k23PLH32rOaJYk7OJBiywbIPGc16TrY6HegpM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685454555; x=1688046555;
 h=in-reply-to:content-transfer-encoding:content-disposition
 :mime-version:references:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7p73ODufu1/P74FptI7FRwaCItiP1sKbYRvV3n+M0V0=;
 b=hZ4gE6N9DV9KsgRUx0LnhGssx8AHnXkW2amjzYoh6tNw2QHbUgaZQD9vhHp4SQin46
 Gn1D5h9Qi9Ii3odAJUJJSiLvl03Itj08DVtJ8E4MKD7m7r0hkqZg0efYD+Pae67lXscB
 l2fsJU+B2LLm50I5a6kwXLDIctd7j6rSuSURdgL73da7Nh9c1wNYv1XEDYb++IZVx/il
 7HBMd3n7axRXehFhhdzqEVkcZwgec5k6LeF8cr1m71y1tRwFYjBj+SnjHmo/caFOmafB
 olVh+GgyZoe1V2GnKS/h5WgrdE3JjYcW+c59B7DC5BbPQS+DWmTpYzW9i60h7m4kxmYc
 j9Aw==
X-Gm-Message-State: AC+VfDykraHIFCPUUfBerk0BjJR+/tQtWneGH/HWR5QXde0L0oyOhOdb
 8OP0APj3Mhc2VcWAMvbfk9wYP7Psab6Oy8I4G0J9Fg==
X-Google-Smtp-Source: ACHHUZ4XSEbkBWzXynP47Hjpm8/ECtPpTXOj/WE0fHRVvYpYN5zxii/+M2F6b3VEOWryyJa4ue4xRw==
X-Received: by 2002:a17:90a:fe13:b0:255:a8fb:a72a with SMTP id
 ck19-20020a17090afe1300b00255a8fba72amr2573662pjb.32.1685454555527; 
 Tue, 30 May 2023 06:49:15 -0700 (PDT)
Received: from 5e905162a5a7 ([122.199.31.3]) by smtp.gmail.com with ESMTPSA id
 nn6-20020a17090b38c600b002508f0ac3edsm4246116pjb.53.2023.05.30.06.49.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 May 2023 06:49:14 -0700 (PDT)
Date: Tue, 30 May 2023 13:49:07 +0000
From: Rudi Heitbaum <rudi@heitbaum.com>
To: Imre Deak <imre.deak@intel.com>, Dave Airlie <airlied@redhat.com>,
 Dave Airlie <airlied@gmail.com>
Message-ID: <20230530134907.GA8@5e905162a5a7>
References: <20230510103131.1618266-2-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230510103131.1618266-2-imre.deak@intel.com>
X-Mailman-Approved-At: Tue, 20 Jun 2023 18:28:21 +0000
Subject: Re: [Intel-gfx] [v4,
 01/14] drm/i915: Fix PIPEDMC disabling for a bigjoiner configuration
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
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, intel-gfx@lists.freedesktop.org,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Imre/Dave,

Ref: [v4,01/14] drm/i915: Fix PIPEDMC disabling for a bigjoiner configuration
     [git pull] drm fixes for 6.4-rc4
     drm-fixes-2023-05-26:
     drm fixes for 6.4-rc4

This patch has caused a regression between 6.4-rc3 and 6.4-rc4. Other
tested kernels include 6.3.4 work fine. Dropping the patch allows the decode
playback of media via Kodi. Without dropping the patch - the media
starts and stutters then ceases to play.

There is an additional issue that 6.4-rc4 audio playback is also failing
(where 6.4-rc3 was fine), I have not yet tracked this down.

This is all on:
DMI: Intel(R) Client Systems NUC12WSKi7/NUC12WSBi7, BIOS WSADL357.0087.2023.0306.1931 03/06/2023
12th Gen Intel(R) Core(TM) i7-1260P (family: 0x6, model: 0x9a, stepping: 0x3)
microcode: updated early: 0x429 -> 0x42a, date = 2023-02-14

Regards

Rudi

On Wed, May 10, 2023 at 01:31:18PM +0300, Imre Deak wrote:
> For a bigjoiner configuration display->crtc_disable() will be called
> first for the slave CRTCs and then for the master CRTC. However slave
> CRTCs will be actually disabled only after the master CRTC is disabled
> (from the encoder disable hooks called with the master CRTC state).
> Hence the slave PIPEDMCs can be disabled only after the master CRTC is
> disabled, make this so.
> 
> intel_encoders_post_pll_disable() must be called only for the master
> CRTC, as for the other two encoder disable hooks. While at it fix this
> up as well. This didn't cause a problem, since
> intel_encoders_post_pll_disable() will call the corresponding hook only
> for an encoder/connector connected to the given CRTC, however slave
> CRTCs will have no associated encoder/connector.
> 
> Fixes: 3af2ff0840be ("drm/i915: Enable a PIPEDMC whenever its corresponding pipe is enabled")
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 ++++++++++--
>  1 file changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 1d5d42a408035..116fa52290b84 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -1702,9 +1702,17 @@ static void hsw_crtc_disable(struct intel_atomic_state *state,
>  
>  	intel_disable_shared_dpll(old_crtc_state);
>  
> -	intel_encoders_post_pll_disable(state, crtc);
> +	if (!intel_crtc_is_bigjoiner_slave(old_crtc_state)) {
> +		struct intel_crtc *slave_crtc;
> +
> +		intel_encoders_post_pll_disable(state, crtc);
>  
> -	intel_dmc_disable_pipe(i915, crtc->pipe);
> +		intel_dmc_disable_pipe(i915, crtc->pipe);
> +
> +		for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
> +						 intel_crtc_bigjoiner_slave_pipes(old_crtc_state))
> +			intel_dmc_disable_pipe(i915, slave_crtc->pipe);
> +	}
>  }
>  
>  static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state)
