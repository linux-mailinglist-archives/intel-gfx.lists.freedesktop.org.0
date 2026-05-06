Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBJuFBNK+2mYYwMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 16:02:59 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 03CEF4DB978
	for <lists+intel-gfx@lfdr.de>; Wed, 06 May 2026 16:02:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DDB6110EDB6;
	Wed,  6 May 2026 14:02:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin.net header.i=@ursulin.net header.b="To3E5yTm";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
 [209.85.221.51])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A12010EDB6
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 May 2026 14:02:55 +0000 (UTC)
Received: by mail-wr1-f51.google.com with SMTP id
 ffacd0b85a97d-43fe62837baso3604191f8f.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 06 May 2026 07:02:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin.net; s=google; t=1778076173; x=1778680973; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=ZU7cIQBDqBGz1zyh+838EFLvFFU/cxjLVKlbDI2tgmE=;
 b=To3E5yTmvRnvc+UoDUqI4SheUIPYbfI95sL8adPy2gfT380P1Pvx4ZZRI1aBMXlTv/
 EDxnhw0CWXeeoUwdT1dZGB2f3LtBgvgW6ZejqYroUsbxE8uU5uaAIFM5JROwKjB2w0zX
 Kp38mLDt6ntC83LKTupq/nhVbAiG8bKJPz9vj7einKPTVe3b2Yl+D/M9r4rz3FPI7+uZ
 /X3qwn71BZjdmjz/mdKGiWhKc1/Pn9qtAastA7NmmN36TfM5JjSjZnNxOgVqbn76EI3A
 4kcrsZtCDDXzHvtm9VpWkgl56E8hmQXLMRAP1GzLhSeMIVCeegzZKCn8ntfEqwVcwAIM
 kzeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1778076173; x=1778680973;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ZU7cIQBDqBGz1zyh+838EFLvFFU/cxjLVKlbDI2tgmE=;
 b=fENCFIJD3RtTBQkTuNTBus8xijBqYCfF1N2GUMLbX3dM0DHho1vG5OVeatXx4FaF6y
 XZNtjJN17BFNS5+NrpNtNPupQo4PD1eLSl3OIPtz+gl4iRwjH/dyec/xIJWMP1eXxSVJ
 ZWKRS9IPJn/27Jgd3z4/p2f07PjYs4fVOIWkiruXkRSP+0ToTjkL9iRikHUvCbDlOAz8
 jf9pP42nt6LQVFKYVrZRWfNm6APcKN5LIGSfYSqpo0GQOsSOyHIS4puNYLrF2HTH0LNN
 4m1xZiSbHwkeXHKGNoxHVm6veUPLm24m3qycIIq47ICSgOiV0QsMG3UezpOg9CWKbbvE
 hTog==
X-Forwarded-Encrypted: i=1;
 AFNElJ8ZSxzzxzQfMI9VzpbDrJqi6zyBRh2jejwWcqbTn53gWbXoNfMlsoTvXSeSUGYJqK+CCGtyBEzVvvQ=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyUvRAr1OUuU1bSNitY5EhCmr+HVF8EDTgDSPlDntQN2BHJAJZD
 C3CjbPOD2Wbubixz54MsiFAUGzrLa4zZP7y0qT9ZG00y0tBLkg3D6X6KXym6OCrgU6Y=
X-Gm-Gg: AeBDieusCzXOkeV/16F2kkAPqh2pbncqaIoOQIK/dr1dLPGAc9GVsBiZBawNre1/C1u
 dBLO/euyswSkjxIiZTSbP448EJHOPem1qOlaN5/10T0KAXmUl4iqcuec3dcbT/mk44lTd7jXWZb
 rcQh6++crMfWbiobzXSa4gtITwC3oMU07tzuxcS2iGcT4cwIazxnBgOQoS7qQHYpp+Lu38JuUjt
 ec5O6OkOA1xpvzWILLVk0/k+6XmDjxLoiyI8E7Z7T3ubns7qLD2E3SN5YCzbtDtcSjrZP2Qm1pv
 lFKFcjnG5B072loiJUgX+tODq82T4/8kqejk98+cRsww+rG8uCSv3USf2+XgVDaxVwXO+AJwJHi
 x6hxrvVRzmTOlYlIitV6SIXnL0zTNZevWFku9U79ydxH7LnAuDcFoFpe/gcf9YE+cO2UcAoOjdA
 g0hE7jQlvSFiAB9gTqCirkyAgOTwv/a5mRcNQl7t5kD1PtYWOx6v9xeeTZRfakUWsC2g==
X-Received: by 2002:a05:6000:4203:b0:441:36b7:7262 with SMTP id
 ffacd0b85a97d-4515b61ae87mr5916465f8f.13.1778076173020; 
 Wed, 06 May 2026 07:02:53 -0700 (PDT)
Received: from [192.168.0.101] ([90.240.106.137])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-450524834eesm12307766f8f.4.2026.05.06.07.02.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 06 May 2026 07:02:52 -0700 (PDT)
Message-ID: <47e6ca58-59c3-48fa-8563-d27ac67d60f6@ursulin.net>
Date: Wed, 6 May 2026 15:02:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] Revert "drm/i915: replace select with dependency for
 visible DEBUG_OBJECTS"
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Cc: Julian Braha <julianbraha@gmail.com>
References: <20260506101957.202271-1-jani.nikula@intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20260506101957.202271-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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
X-Rspamd-Queue-Id: 03CEF4DB978
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[ursulin.net:s=google];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[ursulin.net];
	FORGED_RECIPIENTS(0.00)[m:jani.nikula@intel.com,m:julianbraha@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[ursulin.net:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	FREEMAIL_CC(0.00)[gmail.com];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email]


On 06/05/2026 11:19, Jani Nikula wrote:
> This reverts commit 025f89b01ed8d5e65d87ed54f231e10c6ac08188.
> 
> 025f89b01ed8 ("drm/i915: replace select with dependency for visible
> DEBUG_OBJECTS") breaks the build in certain scenarios, presumably
> because config DRM_I915_DEBUG selects DRM_I915_SW_FENCE_DEBUG_OBJECTS
> without looking at its dependencies, allowing
> DRM_I915_SW_FENCE_DEBUG_OBJECTS=y and DEBUG_OBJECTS=n.
> 
> Fixes: 025f89b01ed8 ("drm/i915: replace select with dependency for visible DEBUG_OBJECTS")
> Cc: Julian Braha <julianbraha@gmail.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/Kconfig.debug | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/Kconfig.debug b/drivers/gpu/drm/i915/Kconfig.debug
> index 9a2a49284876..3562a02ef7ad 100644
> --- a/drivers/gpu/drm/i915/Kconfig.debug
> +++ b/drivers/gpu/drm/i915/Kconfig.debug
> @@ -153,7 +153,7 @@ config DRM_I915_TRACE_GTT
>   config DRM_I915_SW_FENCE_DEBUG_OBJECTS
>   	bool "Enable additional driver debugging for fence objects"
>   	depends on DRM_I915
> -	depends on DEBUG_OBJECTS
> +	select DEBUG_OBJECTS
>   	default n
>   	help
>   	  Choose this option to turn on extra driver debugging that may affect

Acked-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Regards,

Tvrtko

