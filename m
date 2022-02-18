Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id EF41F4BB957
	for <lists+intel-gfx@lfdr.de>; Fri, 18 Feb 2022 13:38:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0919510EB41;
	Fri, 18 Feb 2022 12:38:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com
 [IPv6:2a00:1450:4864:20::42e])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8CA3D10EBF6
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 12:38:44 +0000 (UTC)
Received: by mail-wr1-x42e.google.com with SMTP id e3so14443560wra.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 18 Feb 2022 04:38:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:reply-to:subject
 :content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=7wdV/68n0BEbuj0syXXkZbRS1Go4gEu/qUKd2Rh8ApU=;
 b=CqVR3AgIs05UtTN5nAaO/EpNjYGolDO7iTwOvVMQV445QGsc9Ga+StIMxesjGYis57
 lUta57nkExH33qotw7c8y2rSHOrAONE2of65UFmSGp2EoQJpgxskS6JFTc2fCA2BNYyS
 Lf5aPQNiDzwFvHsffWXWl5lUbmwikgjR44e2q4hhFsXrRofqh3j4CkkOyJWTbCYepoQO
 WNLr0HgTvRjbZToAUElc30hD1wdJFLQU4bBINKYcZN6v97n91Xb3UwD9FwgN1XRE1OsU
 7mHSAiRdvHXQivQ/qeU1ItbVgfmZ0tTynkg4gMdjvV4gY6jb+CgD6r4OB7shM/nYMjfX
 6HRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:reply-to
 :subject:content-language:to:references:from:in-reply-to
 :content-transfer-encoding;
 bh=7wdV/68n0BEbuj0syXXkZbRS1Go4gEu/qUKd2Rh8ApU=;
 b=ZvsT6F5MfxOTd+KXXeCN3Mw96DOH3T/AhHVWvONtAy2aWzmCgdD/vv1fTihLBglT3i
 445z27tZFxLPL92FX++xUIbf5nh27RptcXjKsMvl+CewcKGLQj6YeXO4JVZw882Flg6t
 5hANgBROJyGpSORe905F+olzKF9IgM2h7+u9BRIlChwvM8aPZ2GAXuK1Kc//lE/+cOqs
 t8KAp3UeKz2FUaebryVOYlb2AKC2d/9wmHkAjQqHEi1XSy2wgMYVS46n+HGbDPWcW1q9
 MDED4+cou5kPKsvch0XusogpasYllsZ0ANBqC2MbZArMcCFhtJXA/PSDVmWKsDhZekbt
 3JHg==
X-Gm-Message-State: AOAM532ExUawvEAlvQcO8+IPR99fY6yI7EbnHhoRTAmk2Rh44h/mj7cA
 Tmkxqls4/if2QAZsKIBHq/vZZ0egjRylLlsi
X-Google-Smtp-Source: ABdhPJyqlfXluBDsBVgUUp++f5W3Fvoqh0GOe3LtmZTizcOBtfp1+btO6lgDdvUJjbeyLsgJ4k+cNQ==
X-Received: by 2002:a5d:6b0f:0:b0:1e7:9432:ee8c with SMTP id
 v15-20020a5d6b0f000000b001e79432ee8cmr5602534wrw.216.1645187922776; 
 Fri, 18 Feb 2022 04:38:42 -0800 (PST)
Received: from [0.0.0.0] ([134.134.137.89])
 by smtp.googlemail.com with ESMTPSA id m31sm4471627wms.34.2022.02.18.04.38.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 18 Feb 2022 04:38:42 -0800 (PST)
Message-ID: <be2d1061-a432-1d7a-617c-d1e673056261@gmail.com>
Date: Fri, 18 Feb 2022 14:38:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Content-Language: en-US
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20220202111616.1579-1-ville.syrjala@linux.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20220202111616.1579-1-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915: Move PIPE_CHICKEN RMW out
 from the vblank evade critical section
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
Reply-To: juhapekka.heikkila@gmail.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

This patch set look all ok. That failed cursor test in ci run seem to be 
flip flopping on other runs too on same icl box.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 2.2.2022 13.16, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> We don't want any RMWs in the part of the commit that happens
> under vblank evasion. Eventually we want to use the DSB to
> handle that and it can't read registers at all. Also reads
> are just slowing us down needlessly.
> 
> Let's move the whole PIPE_CHICKEN stuff out from the critical
> section since we don't have anything there that needs to be
> syncrhonized with other plane/pipe registers. If we ever need
> to add such things then we have to move it back, but without
> doing any reads.
> 
> TODO: should look into eliminating the RMW anyway...
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_display.c | 7 ++++---
>   1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index c431076f98a1..05713b64d4bc 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8121,9 +8121,6 @@ static void intel_pipe_fastset(const struct intel_crtc_state *old_crtc_state,
>   	if (DISPLAY_VER(dev_priv) >= 9 ||
>   	    IS_BROADWELL(dev_priv) || IS_HASWELL(dev_priv))
>   		hsw_set_linetime_wm(new_crtc_state);
> -
> -	if (DISPLAY_VER(dev_priv) >= 11)
> -		icl_set_pipe_chicken(new_crtc_state);
>   }
>   
>   static void commit_pipe_pre_planes(struct intel_atomic_state *state,
> @@ -8215,6 +8212,10 @@ static void intel_update_crtc(struct intel_atomic_state *state,
>   
>   		if (new_crtc_state->update_pipe)
>   			intel_encoders_update_pipe(state, crtc);
> +
> +		if (DISPLAY_VER(dev_priv) >= 11 &&
> +		    new_crtc_state->update_pipe)
> +			icl_set_pipe_chicken(new_crtc_state);
>   	}
>   
>   	intel_fbc_update(state, crtc);

