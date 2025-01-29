Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A5D5AA21933
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 09:44:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4528D10E411;
	Wed, 29 Jan 2025 08:44:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=ursulin-net.20230601.gappssmtp.com header.i=@ursulin-net.20230601.gappssmtp.com header.b="X3X6Pw9w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com
 [209.85.128.47])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D5FA710E40E
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2025 08:44:10 +0000 (UTC)
Received: by mail-wm1-f47.google.com with SMTP id
 5b1f17b1804b1-435f8f29f8aso46594985e9.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Jan 2025 00:44:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ursulin-net.20230601.gappssmtp.com; s=20230601; t=1738140249; x=1738745049;
 darn=lists.freedesktop.org; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=LQ7UQFc0W24PUIHdo7OrS6QM+0vcBB9sQvwA8ufJ07I=;
 b=X3X6Pw9wdwPHLqumh4jvgCpXGr0YZQAGK0Tk9daNnacqQnsQbzgsrVUmKgg6nn4lKj
 PV3bjehVFZeZ1RivsvB+nhrjRkQuv7+edNnxrLr50jZERynPsoAtvaXP0YLVpKdviaSx
 9Qq1UKNeJDFaqBEjFQAX1X3ixkLO7NUqBU0tc+sf/QB2bwPL12+Qd38ZWPG0q8qu5Oyt
 JrDuJ0ld0pWLrvr3ZpnDpvdSUkkcuQzCrf5oqyuzXqxjJ4fXSEI/vjJTRZn12Ouebo/x
 QhTAFHfyI6g9wTSqjWeEi7LRwg0I/0HG4I6W9YPK0s4k4r2BIT8dRbc7s3Jt48d1QAs+
 ptLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1738140249; x=1738745049;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=LQ7UQFc0W24PUIHdo7OrS6QM+0vcBB9sQvwA8ufJ07I=;
 b=Po8gofHZpH7I9oW1Kj57ZQenGZMLhvDsMvFwQ6YjTP0E8WKsK3lRvBAwoE9wJRWjuL
 zS7DoSXMcG5VAzSNRh1DpXLDQACiIRLRzl/cUUpg8wk4pTYslNx+655LnQ3u/SJ0V1VC
 FfCs0TV1mewExrJ0p7mrRt4r/WMRbH9ebaSE3aV9meO3imkOCU0EgwczrVir6ivJRPdT
 EbhxfXK/arGEvuFOkTjbDLu01zWY7knR7BMKb7VnsrkwwIXtdBWPxJzOeUFxPftRnCh1
 S2vPuQSGlH9RLLRcG8UqZZF1EYZVjrmXQgIoopbDPmpUZBNrgsJx6vOuTICUtz8KURGK
 rbeA==
X-Forwarded-Encrypted: i=1;
 AJvYcCU5QTc+beXDfdlEOKFmtRtEoz8/vDv7xkhyoTRqHdygNYHIclV0c7/jBr6A0vGm6U43omkjlwxO1hM=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YwSvg0TxA2Cn3BpqBJmvV+179QQRlO4KubPSAjQtDOTygGhcIfp
 tIM+jAbsmTGNTL58HgcJSn8tCtEZMr0rfA47yLBo1OcF73uKXX5GXekCKDA7hwg=
X-Gm-Gg: ASbGnct+4IXE2Pe7gSxXg1vOsd+U9C3pfm6jEL1hcD5Aa7TngdA/kROzB0tU9O35mCm
 B7c6/kl9XoCXa05ORWGIXs4DyEn3bCWDr6rPVlMBSUiSaiYII2jAVtOx8u8vTn6O8JxNzst75fh
 +IdShrh91ovl5b+6AcO3claugjlVzo8UqpuM7o17BxIB8nAZKIOG3ljwMyxcCa17vK6oFbgJqVY
 y4w0dHVPMAEX6wPrtrrTzxuHWFjvLeR2bqMdS3AYVnwm6iuGceHrj64DU/GgGcrk1ubzzHcYhxW
 EaSSv9RUx2oUjMBIq2WWpEY2BhfKH1s=
X-Google-Smtp-Source: AGHT+IEBUc1AFI04kLkOWVHYK0u+8wdNlFR9LHspIVFaCsbs4hRxd3Wttd9cC2GJBb+7SrD3BwveTQ==
X-Received: by 2002:a05:6000:4008:b0:386:459e:655d with SMTP id
 ffacd0b85a97d-38c51952173mr1758736f8f.20.1738140249095; 
 Wed, 29 Jan 2025 00:44:09 -0800 (PST)
Received: from [192.168.0.101] ([90.241.98.187])
 by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-38c2a1bb0c9sm16551520f8f.78.2025.01.29.00.44.08
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 29 Jan 2025 00:44:08 -0800 (PST)
Message-ID: <71c2213c-4445-4285-aab8-6d7ad6f5a723@ursulin.net>
Date: Wed, 29 Jan 2025 08:44:07 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] drm/i915/display: Disable AuxCCS framebuffers if built
 for Xe
To: =?UTF-8?Q?Juha-Pekka_Heikkil=C3=A4?= <juhapekka.heikkila@gmail.com>
Cc: Jani Nikula <jani.nikula@linux.intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 "Souza, Jose" <jose.souza@intel.com>
References: <20240228140225.858145-1-juhapekka.heikkila@gmail.com>
 <875xy01vd8.fsf@intel.com> <72a58a16-d7aa-4b85-bd67-40cd87366b0b@ursulin.net>
 <CAJ=qYWRZZd4FmYXxqaT5hm5RqOQsNow4UbG=fdQFr_odSGUrEQ@mail.gmail.com>
Content-Language: en-GB
From: Tvrtko Ursulin <tursulin@ursulin.net>
In-Reply-To: <CAJ=qYWRZZd4FmYXxqaT5hm5RqOQsNow4UbG=fdQFr_odSGUrEQ@mail.gmail.com>
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


On 28/01/2025 15:55, Juha-Pekka Heikkilä wrote:
> On Tue, Jan 28, 2025 at 3:08 PM Tvrtko Ursulin <tursulin@ursulin.net> wrote:
>>
>>
>> Hi,
>>
>> On 05/03/2024 16:44, Jani Nikula wrote:
>>> On Wed, 28 Feb 2024, Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com> wrote:
>>>> AuxCCS framebuffers don't work on Xe driver hence disable them
>>>> from plane capabilities until they are fixed. FlatCCS framebuffers
>>>> work and they are left enabled. CCS is left untouched for i915
>>>> driver.
>>
>> I couldn't find the answer in the below linked issue or in the thread -
>> is it known what exactly is missing/broken to make this work and are
>> there any plans to do it? Or perhaps not if gen12lp is not intended to
>> be supported?
> 
> As far as I know devices with AuxCCS are not intended to be supported.
> 
> As for this patch, from display point of view these would work the same
> as before, just put compressed fb on screen and enable decompression
> but I figure there are parts missing from gem side to support AuxCCS.

Right, I can dig in and try to figure out what are those missing GEM 
bits but I was hoping someone might know straight away to save me that 
initial digging around.

Regards,

Tvrtko

>>>> Closes: https://gitlab.freedesktop.org/drm/xe/kernel/-/issues/933
>>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>>>
>>> Acked-by: Jani Nikula <jani.nikula@intel.com>
>>>
>>>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/skl_universal_plane.c | 3 +++
>>>>    1 file changed, 3 insertions(+)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/skl_universal_plane.c b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>>> index e941e2e4fd14..860574d04f88 100644
>>>> --- a/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>>> +++ b/drivers/gpu/drm/i915/display/skl_universal_plane.c
>>>> @@ -2295,6 +2295,9 @@ static u8 skl_get_plane_caps(struct drm_i915_private *i915,
>>>>       if (HAS_4TILE(i915))
>>>>               caps |= INTEL_PLANE_CAP_TILING_4;
>>>>
>>>> +    if (!IS_ENABLED(I915) && !HAS_FLAT_CCS(i915))
>>>> +            return caps;
>>>> +
>>>>       if (skl_plane_has_rc_ccs(i915, pipe, plane_id)) {
>>>>               caps |= INTEL_PLANE_CAP_CCS_RC;
>>>>               if (DISPLAY_VER(i915) >= 12)
>>>
