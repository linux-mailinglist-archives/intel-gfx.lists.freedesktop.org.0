Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8Em5IN5Z62nkKwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 13:54:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E6A4145E0E8
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Apr 2026 13:54:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 692A310F3E4;
	Fri, 24 Apr 2026 11:54:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=gmail.com header.i=@gmail.com header.b="jAD1xIsW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EC58410F3E4
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2026 11:54:02 +0000 (UTC)
Received: by mail-pj1-f48.google.com with SMTP id
 98e67ed59e1d1-35fb7c1a455so3029157a91.3
 for <intel-gfx@lists.freedesktop.org>; Fri, 24 Apr 2026 04:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20251104; t=1777031642; x=1777636442; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=S9ZV06dw1Xc2/kOu0yRK7+Q4rZacpv7z7wydikflQkM=;
 b=jAD1xIsWsSVCZXWnW+lX9O2iRukIn5UBPmREPNbbLNSVIj/wwKOiGM9MD4jna4xjCh
 BQJFDTI3GCOOW4i5wuh0SSTcpJOL37zL/GgXrFepwR04WIBC5yzN/Uw/SB7rccFEKLVj
 0rDZCcxdSrnsJ3bMdrA8ldqkI8uN473kRLw7+cQyo3Sw7Vp9EYJsRq5RfcRCAjkPl3FF
 gRvEfvp1hw/ttNSRkz286UEQLMmyvKdEhG0ANwvJ3+NtOU6byzsa3ULA8ULvYy/lda+N
 J/TRkgbNbaN8AqZeHPOFYVlgIqTnIBaLL0f9SYSfZnfko7HoaCCUcwozxa5aw+zsHAOL
 0uRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20251104; t=1777031642; x=1777636442;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=S9ZV06dw1Xc2/kOu0yRK7+Q4rZacpv7z7wydikflQkM=;
 b=agaJk0HgNjz0xaWj2mZA5w0lkQSWGZpPARYA0IM0oOJCatxNKqcZj3W0v9iWdwrkSh
 ++y/KZv3V98D7/i8Smr5MtnxibnVYriT+LcmUKXuvYRxL9ZrMYsBcQv02n6S+nKTARqN
 Mt7wpZ6IiRV9XzLGHnw/587yEsdy/Gor5UyFO4D4v4DVXk3VtwvqoqLqnPvjp9Ukyo+P
 /p051xqBZ2Mb0mURFo2v+fuvNbUTs0vzhGJYdEZUiVXeGtOcJoyJp4i5zR6ZYMyswLPE
 86IW85lyqDs2j5XpUPjtgNxNwXr7nPx9h2RNrTIKfFIAqTWUorKEpBh7SCAUZzEgVx2z
 SjtA==
X-Forwarded-Encrypted: i=1;
 AFNElJ+3Z92BlljeGAEQGNgXOXtBHNwmtmeF/Cf1l03H812sNKjo/LrsaruEFyqTXKCcofYJ41e4INnBvUg=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YyqVE8/VHadMJmRUNn3Fyw9KaTPu57rzB44jN+sadF9ej1eb1F4
 Bb3N+Tz423k0sb1Zl7MKHZWYDXYWr9iyYPyUxmyZotVWRYNZL7XiWWCF
X-Gm-Gg: AeBDievLc5RiMO8DIQdaCbxg03eOOF7cARA/UT2LQbP0BQzbkhEbN9go7rUVXsY60op
 b1FGXZJpcUTmrGNhUx2ZHE8B/Hs8TGATpHW9edlwo5iuANz9bE156X0wbCSfQM7MHLWOkbzEjWG
 U/hXIQKmWtHr+FYjYZO6A9nb/QYcIrZtSAIjSJE9Sc6xqoBPq0LJdFMrqw/gH6BtyUO3Ay8F+J3
 45o13zH0m1NnbBdGBqrvobiNKeTSj0KwpXqSXJurmpX9V8mPSFW473psu4xLT8HD08r8vXhUHbE
 GhsXZ20RdYp/UXPvPNg5Qg/12OAVf5+KAyadPpTEUhO343j+e8NQ2m9zliiBEUa7zEvlLoEv6Tw
 0ahpn3hMsri8PfM1D0I6tqQyWFKKgFE2l8JSVh4ClFApn3Uhd8U4H0vEpMl2ygJYwXZmiPj9tzK
 jJDVbSx1LuY/xz8CFWRj+igIJ+xg0GuhG0ReJaGtPeaOKWdK+fxpjMOHOsc1CwIbosuc0zruy8l
 MLmbHXCPQ==
X-Received: by 2002:a17:90a:d40d:b0:35b:e5ce:73bb with SMTP id
 98e67ed59e1d1-361403d61d5mr31485122a91.1.1777031642364; 
 Fri, 24 Apr 2026 04:54:02 -0700 (PDT)
Received: from [134.134.137.78] ([134.134.137.78])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-362bc4f9360sm8049611a91.1.2026.04.24.04.54.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 24 Apr 2026 04:54:01 -0700 (PDT)
Message-ID: <737a684a-5a97-4e2d-9250-69990fb23e91@gmail.com>
Date: Fri, 24 Apr 2026 14:53:57 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] drm/i915/display: enable ccs modifiers on dg2
To: Raag Jadav <raag.jadav@intel.com>, Jani Nikula <jani.nikula@intel.com>
Cc: intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20260423141148.3145665-1-juhapekka.heikkila@gmail.com>
 <92d121173a3e42ef91274f9fa810e47d71b8dd70@intel.com>
 <aetXJXANjinP119i@black.igk.intel.com>
Content-Language: en-US
From: =?UTF-8?Q?Juha-Pekka_Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>
In-Reply-To: <aetXJXANjinP119i@black.igk.intel.com>
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
X-Rspamd-Queue-Id: E6A4145E0E8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.31 / 15.00];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:raag.jadav@intel.com,m:jani.nikula@intel.com,m:intel-xe@lists.freedesktop.org,m:tvrtko.ursulin@igalia.com,m:ville.syrjala@linux.intel.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[juhapekkaheikkila@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[juhapekkaheikkila@gmail.com,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]



On 24/04/2026 14.42, Raag Jadav wrote:
> On Fri, Apr 24, 2026 at 11:44:57AM +0300, Jani Nikula wrote:
>> On Thu, 23 Apr 2026, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
>>> Since Xe driver aux ccs enablement dg2 ccs modifiers have been
>>> disabled on both Xe and i915 drivers. Here allow dg2 to use
>>> ccs again for framebuffers.
>>>
>>> Fixes: 6a99e91a6ca8fec5882450128fb128265f86b32a ("drm/i915/display: Detect AuxCCS support via display parent interface")
>>
>> In kernel, there should be 12 characters of sha1.
> 
> I had a misconception that checkpatch already flags this, but it seems
> not? Or perhaps I'm not much informed about the history (if any)?

What checkpatch says is to use 12+ long sha when sha is shorter, like this:

WARNING: Please use correct Fixes: style 'Fixes: <12+ chars of sha1> 
("<title line>")'

hence I did put the full sha.

/Juha-Pekka


>> 'dim fixes <sha1>' gives you the correct format, and suggests Cc's
>> (though you probably shouldn't actually Cc all of them).
>>
>> For referencing commits in general, I have this handy alias in my
>> .gitconfig:
>>
>> [alias]
>> 	cite = log -1 --abbrev=12 '--format=%h (\"%s\")'
>>
>> $ git cite 6a99e91a6ca8fec5882450128fb128265f86b32a
>> 6a99e91a6ca8 ("drm/i915/display: Detect AuxCCS support via display parent interface")
>>
>> BR,
>> Jani.
>>
>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>>> ---
>>>   drivers/gpu/drm/i915/i915_driver.c | 5 ++---
>>>   1 file changed, 2 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>>> index d31819758f3d..a4bd4f8e18b2 100644
>>> --- a/drivers/gpu/drm/i915/i915_driver.c
>>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>>> @@ -750,9 +750,8 @@ static bool has_auxccs(struct drm_device *drm)
>>>   {
>>>   	struct drm_i915_private *i915 = to_i915(drm);
>>>   
>>> -	return IS_GRAPHICS_VER(i915, 9, 12) ||
>>> -	       IS_ALDERLAKE_P(i915) ||
>>> -	       IS_METEORLAKE(i915);
>>> +	return IS_GRAPHICS_VER(i915, 9, 12) &&
>>> +		!HAS_FLAT_CCS(i915);
>>>   }
>>>   
>>>   static bool has_fenced_regions(struct drm_device *drm)
>>
>> -- 
>> Jani Nikula, Intel

