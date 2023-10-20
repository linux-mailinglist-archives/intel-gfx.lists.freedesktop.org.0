Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D2347D107E
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Oct 2023 15:26:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 41ED810E0E2;
	Fri, 20 Oct 2023 13:26:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com
 [IPv6:2a00:1450:4864:20::436])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 59B3A10E0E2
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 13:26:40 +0000 (UTC)
Received: by mail-wr1-x436.google.com with SMTP id
 ffacd0b85a97d-32003aae100so1191616f8f.0
 for <intel-gfx@lists.freedesktop.org>; Fri, 20 Oct 2023 06:26:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697808399; x=1698413199; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=U4zbgB5wEyMK1dw5a8Bbh5vEUCoN8FCPQXyej62QzFI=;
 b=frw6vLhY10D02GvRbIwmTm7Sy2bB4XoV5xUubEm0/sRI2M4HwSdyStVnca6ee3Z6dm
 p8B39nYKOTKM0AtLw//wc6DAkI9RSPECPA3t2VciNomLCwaQ/W4Y/ufeXAmoXN0ITiw5
 uYIJFhMt+a7RqvX3SrHbI1QHFtVyq4lg3F9rQHye9hJxPQ15/EAqWtAmuVHjctAY8WU7
 uJVMqg4pg8fvsa3iof6OKqpp8B/qXozUs/vZKGJmtqzQ16rVyEh6v8140S/1tgGc3+Oq
 0QVn1+D1h5/k+RKYv9RjMuGKIZNKCXsY+Xy5p0LWq1zELa2kCH9pNjgGpIiySQJ2WU+3
 yOKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697808399; x=1698413199;
 h=content-transfer-encoding:in-reply-to:from:references:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=U4zbgB5wEyMK1dw5a8Bbh5vEUCoN8FCPQXyej62QzFI=;
 b=Usq+QeJso78vSpts/kFAhp5PwcuVVJ9WiICREkHGN/IQ1asbovGz7kkRQdT3QJyi//
 7iF3YPpivrfYNFU0tLANqHufVztBzd59j25/yP3CcbhPoxBbBxokVxC8wpyikchhaAC5
 qnbjGp9/2aCK6KyNIXNPToI1ylXgpMwMfhKjHoDbGggBJklORLj6TAO0CuOlMcw1JRnh
 uQPkb9XXqbSz2TfSqggroWDmwFS3OsAxMhMz+h9+DLPpI+Dw8J1AHPXnEGQjTLaGKTGD
 KMTniO7XwUXmq+oiuV5JflD9xxGD8Ao6rNriHfPVZGNGdNFm9sMRch4wHDpIImlveTog
 23Kw==
X-Gm-Message-State: AOJu0YxJsafqPlvuMytNIbErNusmWOfYvIeZNyDlqaP0aDlDeH4oB3ti
 QCSjtf4hlu4mLixuAhfUSh63/NaO2q1phA==
X-Google-Smtp-Source: AGHT+IHLln26W56EAvtTkfTmNnQiX8xgX7QsxJOdFAn3L3KOnlM4g77u8EpX5nOWqTs6YXGNWMzBoQ==
X-Received: by 2002:a5d:46c9:0:b0:32d:de87:1085 with SMTP id
 g9-20020a5d46c9000000b0032dde871085mr4605682wrs.10.1697808398409; 
 Fri, 20 Oct 2023 06:26:38 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.81])
 by smtp.googlemail.com with ESMTPSA id
 k5-20020a05600c1c8500b003fe15ac0934sm871893wms.1.2023.10.20.06.26.36
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 20 Oct 2023 06:26:38 -0700 (PDT)
Message-ID: <1d4c8a42-275a-4983-b579-4928f91de8a1@gmail.com>
Date: Fri, 20 Oct 2023 16:26:31 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: =?UTF-8?Q?Jouni_H=C3=B6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231012072158.4115795-1-jouni.hogander@intel.com>
 <20231012072158.4115795-2-jouni.hogander@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <20231012072158.4115795-2-jouni.hogander@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/display: Move releasing gem
 object away from fb tracking
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

Reviewed-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>

On 12.10.2023 10.21, Jouni Högander wrote:
> As a preparation for Xe we want to remove all i915_gem_object details away
> from frontbuffer tacking code. Due to this move releasing gem object
> reference to i915_gem_object_set_frontbuffer.
> 
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_frontbuffer.c       | 2 --
>   drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h | 1 +
>   2 files changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> index ec46716b2f49..2ea37c0414a9 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -265,8 +265,6 @@ static void frontbuffer_release(struct kref *ref)
>   	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
>   
>   	i915_active_fini(&front->write);
> -
> -	i915_gem_object_put(obj);
>   	kfree_rcu(front, rcu);
>   }
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
> index e5e870b6f186..9fbf14867a2a 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_object_frontbuffer.h
> @@ -89,6 +89,7 @@ i915_gem_object_set_frontbuffer(struct drm_i915_gem_object *obj,
>   
>   	if (!front) {
>   		RCU_INIT_POINTER(obj->frontbuffer, NULL);
> +		drm_gem_object_put(intel_bo_to_drm_bo(obj));
>   	} else if (rcu_access_pointer(obj->frontbuffer)) {
>   		cur = rcu_dereference_protected(obj->frontbuffer, true);
>   		kref_get(&cur->ref);

