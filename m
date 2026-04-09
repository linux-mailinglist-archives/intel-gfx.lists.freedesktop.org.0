Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SCcqAlRt12myNggAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 11:11:48 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D7D3C841A
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Apr 2026 11:11:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B11B510E779;
	Thu,  9 Apr 2026 09:11:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin.net header.i=@ursulin.net header.b="YkWeiO21";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com
 [209.85.221.45])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6A49310E778
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Apr 2026 09:11:44 +0000 (UTC)
Received: by mail-wr1-f45.google.com with SMTP id
 ffacd0b85a97d-43cf5ad500fso508470f8f.0
 for <intel-gfx@lists.freedesktop.org>; Thu, 09 Apr 2026 02:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin.net; s=google; t=1775725903; x=1776330703; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=+5wz/BvjEDMd/4gYUrDrwtdKo1HH0lx8NLd29v9vbXc=;
 b=YkWeiO21oFLzHXFrg+mZMErPee5T/rVPJljtVLpAsfiQi3bNSL9uJkKNKHHVkF6YEY
 D8tsjqEsWahon3aG0pdPT/7FouARpzt2i2hEkGyThWYvPX4FaxOPbYVKMqhvu7X19NU6
 R34A1GWAXMi9i7wmSW14dezrYjsnrSHN1+QqSEcOSRRaTOaJ7e7IQMQ4e4mf7IAgTgtD
 O8aI9syJbDhrZDKSkVGgXdb0jHwhBkCK4xeYbARi0CAIAgULJQyul8Xr/au1r088flAZ
 cNW+btCLjm6Z/E9fHVWTTez0b1xFU+oeaory7ySFjKA4Yl/DbPmdAhfDwmDASWveK43X
 AMEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1775725903; x=1776330703;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+5wz/BvjEDMd/4gYUrDrwtdKo1HH0lx8NLd29v9vbXc=;
 b=GB38DhdfY2ObklSfwV4gzOCEf2sGfyF2NPA27/VyxvoMiglave7+xvjPaL0kFHv5/m
 YjFVclOPGLJOxG7tTRWDNzusAdWRURoAt1j3NmwUZKm+J2xllrWmBRuy01OJDD825I7w
 olpQ34BfNAgljUQeYuGHuivBoj5j/m6dMr++GJIxD/1LCvEamBK/pzb6ALfuObES/hoH
 2tWyISlETiVD6pmZo2sxhdsSACHMi/NihEWNTerb6Q1VzoVW7xSaz7rHEfN0H5LCkh7i
 1sYifrQMTdRAZydRom34yHADCwPM3B7DAEJ531At3QwygKjcV4vWJI2odx2sN3ZTqIY6
 YrzQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVduQt65/vBDdxciQlONXnzH5li0LiC2/GZQKWpoXtzcP2SVseyH29f7veixl+v1HyX3LlvTVqFVdk=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Yy7KkBB3LpnU2ay8LGoHvLI2/wVojZ8O/+sGvn+HJHHmmK8CcWq
 TngrpnrifM0K1PmLlinmgCiRIBTsKrquoyd5nHHqMFU7pVC57sbmnY8KwtTpZTRmaO8=
X-Gm-Gg: AeBDieu8tdvPVB3fU1jrOsQLOJraOxmuQXXSfW/S5I8ktAHQ3vvC5llTkvItyYuaNq3
 f17ZYSNL0wk//p/zQjphRhRswgkLQ5ZeeQp8TrqiQ8gvnhLC9BZIbqofVccmkekzdDBKVoE+4Xw
 qp2NedeHHFaFhmJhCRaXdh9kmKUIp8/V0Jyq9rpJrDlu/W49XgauycTqsHvflFShp3tqbb81WMt
 OsS3a7gjjG53V/8jHdT0shhFX1BgYR5TjIxBKBqhhnml13l3b4kE/13SBbighQ8c672khj46h41
 6X5/ttA4o7FAJ2xRt/1TUB86njxw1g/cmSjk74pKie0Puf0xLPWUQnzYXraW5jsIEuAFzkulXDQ
 G9KAobwy54/fXBOU+VXpoOoBonihln5LVq7A9DB7mq4hH+oB8W284HNm+O/lP9WOEMTg5/BiYv5
 bidx7JKVXTFm485vcjSB9tW2UTNH2hV3ClerB0+ix2qLTi
X-Received: by 2002:a5d:5d08:0:b0:439:b8b2:fabc with SMTP id
 ffacd0b85a97d-43d292a9581mr35950478f8f.21.1775725902114; 
 Thu, 09 Apr 2026 02:11:42 -0700 (PDT)
Received: from [192.168.0.101] ([90.240.106.137])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-43d1e4e6224sm66188510f8f.25.2026.04.09.02.11.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 09 Apr 2026 02:11:41 -0700 (PDT)
Message-ID: <b8d02a4c-e20d-4814-8ba3-eaba6b701b6f@ursulin.net>
Date: Thu, 9 Apr 2026 10:11:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4] drm/i915/gem: Drop check for changed VM in EXECBUF
To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Intel graphics driver community testing & development
 <intel-gfx@lists.freedesktop.org>
Cc: Direct Rendering Infrastructure - Development
 <dri-devel@lists.freedesktop.org>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 Linus Torvalds <torvalds@linuxfoundation.org>,
 Simona Vetter <simona.vetter@ffwll.ch>, Andi Shyti <andi.shyti@kernel.org>
References: <20260409053111.8914-1-joonas.lahtinen@linux.intel.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <20260409053111.8914-1-joonas.lahtinen@linux.intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
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
X-Spamd-Result: default: False [-0.81 / 15.00];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[ursulin.net:s=google];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:joonas.lahtinen@linux.intel.com,m:dri-devel@lists.freedesktop.org,m:ville.syrjala@linux.intel.com,m:torvalds@linuxfoundation.org,m:simona.vetter@ffwll.ch,m:andi.shyti@kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[ursulin.net];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_ALL(0.00)[];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[ursulin.net:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tursulin@ursulin.net,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linuxfoundation.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,ursulin.net:dkim,ursulin.net:email,ursulin.net:mid,ffwll.ch:email]
X-Rspamd-Queue-Id: 62D7D3C841A
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On 09/04/2026 06:31, Joonas Lahtinen wrote:
> Since the introduction of d4433c7600f7 ("drm/i915/gem: Use the proto-context
> to handle create parameters (v5)") it has not been possible for VM to change
> after context creation so the check will never fail.
> 
> Sima's analysis:
> 
>    This check was added in f7ce8639f6ff ("drm/i915/gem: Split the context's
>    obj:vma lut into its own mutex") but without any hint in the commit
>    message as to why. In another hunk of that commit there's a hint though in
>    __eb_add_lut:
> 
>            /* user racing with ctx set-vm */
> 
>    This would mean that this bug was introduced in e0695db7298e ("drm/i915:
>    Create/destroy VM (ppGTT) for use with contexts"), which allowed to change
>    the gem_ctx->vm at runtime, opening up the race that was partially fixed
>    in the earlier referenced commit about a year later.
> 
>    But it cannot be exploited anymore in anything remotely recent because
>    with the introduction of proto-contexts we've made gem_ctx->vm invariant
>    again, exactly to preemptively close all these potential issues.
>    Specifically d4433c7600f7 ("drm/i915/gem: Use the proto-context to handle
>    create parameters (v5)") is the vm specific part of the proto-context
>    work.
> 
> v3:
> - Include Sima's analysis and WARN_ON_ONCE
> 
> v4:
> - Focus only on latest mainline codebase
> 
> References: https://lore.kernel.org/all/20260324151741.29338-1-sosohero200@gmail.com/
> Reported-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Linus Torvalds <torvalds@linuxfoundation.org>
> Cc: Simona Vetter <simona.vetter@ffwll.ch>
> Cc: Tvrtko Ursulin <tursulin@ursulin.net>
> Cc: Andi Shyti <andi.shyti@kernel.org>
> Signed-off-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index bd608cea396f..621f07a55c38 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -895,7 +895,7 @@ static struct i915_vma *eb_lookup_vma(struct i915_execbuffer *eb, u32 handle)
>   
>   		rcu_read_lock();
>   		vma = radix_tree_lookup(&eb->gem_context->handles_vma, handle);
> -		if (likely(vma && vma->vm == vm))
> +		if (likely(vma))
>   			vma = i915_vma_tryget(vma);
>   		rcu_read_unlock();
>   		if (likely(vma))

Analysis reads correct to me.

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@igalia.com>

Regards,

Tvrtko

