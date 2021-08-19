Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2703F178B
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Aug 2021 12:53:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 38CC66E8B0;
	Thu, 19 Aug 2021 10:53:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com
 [IPv6:2a00:1450:4864:20::42d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 173836E7EC
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Aug 2021 10:53:06 +0000 (UTC)
Received: by mail-wr1-x42d.google.com with SMTP id z9so8374786wrh.10
 for <intel-gfx@lists.freedesktop.org>; Thu, 19 Aug 2021 03:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:reply-to:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rkKLc0olkX040pjUzFC5Bcza+SY7P2nXXyB4vFs7svo=;
 b=FtFQXzp9aGhnV7w09o3MDqH1nRBIVPbYwRn8BD6OtNKS65RVRdhqc15XOW6Xjojfzu
 Jbqx+6vWXW7rs50YjCm7HnO6vmRfnf/H4z7pRMaSDxeVehr5yaCzcZSn8SsIrzLh98Vv
 CFRWHk2FoDjduwqPo/+tpXLodhy73NY/6Wld8CBkEd/v08ttdYG+aIMvEKF8No2//fTA
 pI0f17hg94SEM3psxWsZjLMfenxOcCJo484N61P+CjifgmwBC+b2rvC6fiPFYC5bfrb/
 braep7pjOE1rB3g2LlT3ER9NW2uuCtra+a+EEq4mgFiT6qJ807ShYoMiFymxtN9BtIhC
 gCZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:reply-to:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rkKLc0olkX040pjUzFC5Bcza+SY7P2nXXyB4vFs7svo=;
 b=sIksRcpbtdjvh4y51PpkJ4T9ewhaOgZWhQ2qz9gA1rwIPk1Ve8uYQ6w6CfWzZohxBG
 9PscapFbb7TPP+X/VGQzFlqZQyqnWpzT65kiunwaZcdCyowuSrg8MeiCK9mn6pOArUWi
 JV0AazTLmddN13OOutdqk9ED7vfnRowEnxyA1DwJFPjXHfURos1TGJ9mfiDbNQlKVThU
 nd3u8evwZU9VmADWHRCljaLdn3veF2nbpHn9ZJhotV3Tnsl7rHzMsfm7ND7v2fB8BvuB
 KFcqWGZY6RQrFVfjtIQ4d9y1C45DuyWSHBaGap06kZyb9YsEsunCwyPky2+SUDaBD5LK
 7GQQ==
X-Gm-Message-State: AOAM531DTQJxwiDDZGP7UaqoGra7JLW9RS7Z/YgZF6rnsY9oaytPeDjR
 H4YfMFZDbxpD9Rzd4JW5z3qTX/ZVyE+Xaa9b
X-Google-Smtp-Source: ABdhPJxHY3842gr0FHDNPtxffHykZ1IUzPgbyFm8u4MVKqxPSJ1CP/f69sW3/KDx1A9PeEdV3uIAig==
X-Received: by 2002:adf:f285:: with SMTP id k5mr3037725wro.117.1629370384326; 
 Thu, 19 Aug 2021 03:53:04 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.86])
 by smtp.googlemail.com with ESMTPSA id a11sm2585157wrw.67.2021.08.19.03.53.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Aug 2021 03:53:04 -0700 (PDT)
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
References: <20210702204603.596-1-ville.syrjala@linux.intel.com>
 <20210702204603.596-8-ville.syrjala@linux.intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
Message-ID: <1df9034c-2ef7-2e0b-e660-30dbc833e75b@gmail.com>
Date: Thu, 19 Aug 2021 13:52:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210702204603.596-8-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 7/8] drm/i915/fbc: Implement Wa_16011863758
 for icl+
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

Maybe that TODO comment could be moved into the code instead of leaving 
it just into commit message?

Either way, patch look ok to me.

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 2.7.2021 23.46, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> There's some kind of weird corner cases in FBC which requires
> FBC segments to be separated by at least one extra cacheline.
> Make sure that is present.
> 
> TODO: the formula laid out in the spec seem to be semi-nonsense
> so this is mostly my interpretation on what it is actually trying
> to say. Need to wait for clarification from the hw folks to know
> for sure.
> 
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_fbc.c | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index 2da5295092e7..daf2191dd3f6 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -88,6 +88,16 @@ static unsigned int intel_fbc_cfb_stride(struct drm_i915_private *i915,
>   {
>   	unsigned int stride = _intel_fbc_cfb_stride(cache);
>   
> +	/*
> +	 * Wa_16011863758: icl+
> +	 * CFB segment stride needs at least one extra cacheline.
> +	 * We make sure each line has an extra cacheline so that
> +	 * the 4 line segment will have one regarless of the
> +	 * compression limit we choose later.
> +	 */
> +	if (DISPLAY_VER(i915) >= 11)
> +		stride = max(stride, cache->plane.src_w * 4 + 64u);
> +
>   	/*
>   	 * At least some of the platforms require each 4 line segment to
>   	 * be 512 byte aligned. Aligning each line to 512 bytes guarantees
> 
