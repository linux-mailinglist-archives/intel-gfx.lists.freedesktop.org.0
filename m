Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B4478397C2
	for <lists+intel-gfx@lfdr.de>; Tue, 23 Jan 2024 19:34:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE3E810E5DD;
	Tue, 23 Jan 2024 18:34:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C82E10E5DD
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 18:34:32 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id
 4fb4d7f45d1cf-55a5e7fa471so4110611a12.1
 for <intel-gfx@lists.freedesktop.org>; Tue, 23 Jan 2024 10:34:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1706034811; x=1706639611; darn=lists.freedesktop.org;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=q/fSBI+i+T2gVnUUUr0/SyUT5ngKw0EXV3oI7V3DFgg=;
 b=dyzgm7DXinxvEGvotHhq6aLcGrOZADm+5bqMkfOLDgIm005lIwghsx5wMGVhHT0SyA
 mJNl5ROMszKa2e5KX0tzmSObaUENSD/NsL0wZ6krhg4tDLayS6hakL9iKKI03neU34X4
 Nu/gas3+Q6sXGQVwedzOXrun77dDqjh4kOdGBjOn8hexQIA/gtXbJmjh8YEkChNNn0PH
 jZwnPqwxBj/ESat9fLQj9Hj56lhH+2AbTiOitSdqMKNK+Id0eQ+PJ0L1FPklRgGWYqB1
 M3/vrmo8h8Lfligd/+petfbNiCFQkug4eq2Jks+fXXUhilItNBCHQn40efwf8HHMmrIq
 sjlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1706034811; x=1706639611;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:reply-to:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=q/fSBI+i+T2gVnUUUr0/SyUT5ngKw0EXV3oI7V3DFgg=;
 b=Ph4cE03D06iZnZuwNP+Pd+pDS+QcwfRdzim/WDpgvdtfTQf/sX9B9/pBH/h2rzlqAX
 2AUHFFpTadNCQmAGXzXKRUbGdFGBSat/8fu3XwdqDX11XqDl6ZOwI6CxOuDTCLCJVqD5
 7jZXXu7A1Y5cE4rbysR1hrf5uPbLkOymwltbRcvntwteGuxPXGJ5kaZKPgFRY4BdXejy
 VG6QMityNn5UHWMWYaWU6sc6UTl45sLlIQMIxvLEo4+CCNkPT3Zc0rBK3obKqbLI93bb
 ONitYoZkprfX4EzfQZwH07rygf7YgRW69Cl+hrtC2UzNR1n2lAUfrCtIRhut8t90Tyt3
 /qHw==
X-Gm-Message-State: AOJu0YxtVHe9Xksh27UrO+dUv3Ys4hw0yhfVdokuIQVg9WAfPHBlI5NK
 9U5SF+3o0ElWXeQjX4XfFMf/LOHge8Hoq89x2ugUm1aQtAYWRMt+bc53IXkvHTg68g==
X-Google-Smtp-Source: AGHT+IEktOs9w5X+SttxH/AffJ/Pi1dn+E0PGHSp2Je8TD+4XbeQGjFJ3XyjoXUKWjjyjxiNT319rw==
X-Received: by 2002:aa7:d715:0:b0:55a:e43d:7687 with SMTP id
 t21-20020aa7d715000000b0055ae43d7687mr1187961edq.62.1706034810692; 
 Tue, 23 Jan 2024 10:33:30 -0800 (PST)
Received: from [0.0.0.0] ([134.134.137.82])
 by smtp.googlemail.com with ESMTPSA id
 n13-20020a056402060d00b0055a6f7aed17sm5222872edv.34.2024.01.23.10.33.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Jan 2024 10:33:30 -0800 (PST)
Message-ID: <26fb8f3a-9c27-4948-8253-41415d059c13@gmail.com>
Date: Tue, 23 Jan 2024 20:33:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/xe/display: Disable aux ccs framebuffers
Content-Language: en-US
To: Jani Nikula <jani.nikula@linux.intel.com>, intel-gfx@lists.freedesktop.org
References: <20240102182422.3823394-1-juhapekka.heikkila@gmail.com>
 <87bk9cnx3r.fsf@intel.com> <dff353f8-90c8-449c-80e6-edb272176035@gmail.com>
 <87fryolypb.fsf@intel.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <87fryolypb.fsf@intel.com>
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
Reply-To: juhapekka.heikkila@gmail.com
Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 23.1.2024 19.57, Jani Nikula wrote:
> On Tue, 23 Jan 2024, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
>> On 23.1.2024 12.49, Jani Nikula wrote:
>>> On Tue, 02 Jan 2024, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
>>>> Aux ccs framebuffers don't work on Xe driver hence disable them
>>>> from plane capabilities until they are fixed. Flat ccs framebuffers
>>>> work and they are left enabled. Here is separated plane capabilities
>>>> check on i915 so it can behave differencly depending on the driver.
>>>
>>> I still think there's too much going on in this one patch. It refactors
>>> i915 and modifies xe behaviour in one go.
>>>
>>> It adds intel_plane_caps.[ch] in i915, but extracts them from skl+
>>> specific functions and files. xe uses the .h but adds the code in
>>> existing xe_plane_initial.c. There's also intel_plane_initial.c i915
>>> side, but that's not where the functions get moved in i915 side.
>>
>> I was never against splitting it, I can do that.
>>
>>>
>>> I'm trying to look at the actual functional change, and I'm wondering if
>>> it isn't just this:
>>>
>>> index 511dc1544854..8bba6c2e5098 100644
>>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>> @@ -2290,6 +2290,9 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>>>    	if (HAS_4TILE(i915))
>>>    		caps |= INTEL_PLANE_CAP_TILING_4;
>>>    
>>> +	if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(i915))
>>> +		return caps;
>>> +
>>>    	if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
>>>    		caps |= INTEL_PLANE_CAP_CCS_RC;
>>>    		if (DISPLAY_VER(i915) >= 12)
>>>
>>> I'm not saying that's exactly pretty, either, but IIUC this is supposed
>>> to be a temporary measure ("until they are fixed"), I'd rather take this
>>> small thing instead.
>>>
>>
>> Would that work when both i915 and Xe are being built?
> 
> IS_ENABLED(I915) will be false for xe build, true for i915 build. And
> HAS_FLAT_CCS() is defined for both, in different ways.
> 
> It's essentially the same as #ifdef but much less of an eyesore.
> 

ack. I'll put that into a patch that will replace this patch.

/Juha-Pekka

