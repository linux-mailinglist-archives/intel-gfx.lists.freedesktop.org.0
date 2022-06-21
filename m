Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 074B755399E
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Jun 2022 20:38:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8D82610FF61;
	Tue, 21 Jun 2022 18:38:46 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com
 [IPv6:2a00:1450:4864:20::62f])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DABD510FF3A
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 18:38:44 +0000 (UTC)
Received: by mail-ej1-x62f.google.com with SMTP id h23so29298708ejj.12
 for <intel-gfx@lists.freedesktop.org>; Tue, 21 Jun 2022 11:38:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:reply-to:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=qvUSrQ59HPKrJ9HHULxGhPPqBOkFKp0U+hxWy/BMFp8=;
 b=j+2x62WlHpXScBJgDPVcttLTtrEwyE5vymQqRxBVEIMRHRXKinFK7dd2ZYiQS8tkHD
 KWFdSXJFpUYRffdz8SX431B1UUnMLmokJTg1QI3byetFDyhmyf5RQV7lYP+BjRzPwac4
 Jx/rQMiljj3r3SKvEFy1MHLq/JCL+ch3Mtnub/yqcvA/gYniYs4OxDzbG/V7E7BD6qY0
 S9IUPUK8hBMAA9JAG+dqvuiMAkJDycivboHLsJZvbP/SmeiLY/zS09N2OtDmqdMmv64X
 R1kiTTkxCjHgnPZycyyx2cej3hOcLUST3BYMAnb+akLk9uF89NpNfYKdxXJiPwPZqvAE
 LHTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:reply-to
 :subject:content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=qvUSrQ59HPKrJ9HHULxGhPPqBOkFKp0U+hxWy/BMFp8=;
 b=dGJR9igduskevhF9bQLVS3U4xvDGNIpGRaMeuPvsj1/H2ejCCP4Qz3dXrAQ1x73uML
 RgckOCDNFxeCS1JkDClcpQfw3jLPm+fT0zTW4L6PJiL8VS5DaUMFzus3KiuZg8cORzAv
 M8pCRlXGLpzQB6a1DF147SOFojlw4/LzYpgXqAozYGHlm1qms1Do3ZcU+a209WlSmZvQ
 SqekpKOIea5HV2xFilXu8Dtkw7bCz036X6KEeRJFrUCysW2RIlsx8BG44MOcc9F/9hZO
 91XUwWumaRlF910qGpBPy+SEee3ynK9x/DLrLo7Y7g4RZvcz8MC217fbycZcFxgxXvHD
 FKiA==
X-Gm-Message-State: AJIora88NGZQYPyMeB13ln7OV78xoqPT7dHLhdEhqbOF2gEUgUmFGg+/
 3TsIUXHbyFrnHyQI3F1lefA=
X-Google-Smtp-Source: AGRyM1v4cwv42Fu8+CT9uOVU3v9s9vs4bvv9uS/tmqPp/zKPzdbaKwFX9ua6buoc13BsYZBqatGrPg==
X-Received: by 2002:a17:907:72d2:b0:703:9177:7d1f with SMTP id
 du18-20020a17090772d200b0070391777d1fmr26831923ejc.144.1655836723155; 
 Tue, 21 Jun 2022 11:38:43 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.139.84])
 by smtp.googlemail.com with ESMTPSA id
 lz6-20020a170906fb0600b00722e5e54fc2sm1262660ejb.12.2022.06.21.11.38.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 21 Jun 2022 11:38:42 -0700 (PDT)
Message-ID: <38359ca4-b2e0-e05b-47b3-3ed1faa6b579@gmail.com>
Date: Tue, 21 Jun 2022 21:38:35 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Matthew Auld <matthew.william.auld@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>
References: <20220610121205.29645-1-juhapekka.heikkila@gmail.com>
 <20220610121205.29645-2-juhapekka.heikkila@gmail.com>
 <CAM0jSHN+eOh_iMGT9wAOGKNCegjnrKA_5Cen8LE5NfBcZhD0CA@mail.gmail.com>
 <CAM0jSHPY8ehnuFe05QZEset1-10wfk_i0+63iYFEWXmwnugtaw@mail.gmail.com>
 <8cbeb646-9052-6f05-201c-ba00f565691b@gmail.com>
 <CAM0jSHON77u9gFYf_+Y8DpSfUheOWHUYfSob2n7HYDt6sHoz9Q@mail.gmail.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <CAM0jSHON77u9gFYf_+Y8DpSfUheOWHUYfSob2n7HYDt6sHoz9Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 2/3] drm/i915: Fix i915_vma_pin_iomap()
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
Cc: Intel Graphics Development <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 21.6.2022 13.53, Matthew Auld wrote:
> On Mon, 20 Jun 2022 at 10:38, Juha-Pekka Heikkila
> <juhapekka.heikkila@gmail.com> wrote:
>>
>> On 10.6.2022 20.43, Matthew Auld wrote:
>>> On Fri, 10 Jun 2022 at 15:53, Matthew Auld
>>> <matthew.william.auld@gmail.com> wrote:
>>>>
>>>> On Fri, 10 Jun 2022 at 13:12, Juha-Pekka Heikkila
>>>> <juhapekka.heikkila@gmail.com> wrote:
>>>>>
>>>>> From: CQ Tang <cq.tang@intel.com>
>>>>>
>>>>> Display might allocate a smem object and call
>>>>> i915_vma_pin_iomap(), the existing code will fail.
>>>>>
>>>>> This fix was suggested by Chris P Wilson, that we pin
>>>>> the smem with i915_gem_object_pin_map_unlocked().
>>>>>
>>>>> v2 (jheikkil): Change i915_gem_object_pin_map_unlocked to
>>>>>                  i915_gem_object_pin_map
>>>>>
>>>>> Signed-off-by: CQ Tang <cq.tang@intel.com>
>>>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>>>>> Cc: Chris Wilson <chris.p.wilson@intel.com>
>>>>> Cc: Jari Tahvanainen <jari.tahvanainen@intel.com>
>>>> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
>>>
>>> Although maybe consider putting this as patch 1, and then reword the
>>> commit title/message to be more like "drm/i915: extend
>>> i915_vma_iomap()" or so, which then becomes a prep patch for
>>> supporting the dpt fallback to smem. Otherwise it looks like this
>>> patch is basically just fixing the first patch to not trigger the
>>> WARN_ON(), which seems iffy IMO. Each patch by itself should ideally
>>> be functional.
>>
>> Probably easiest is to put patch 1 in as last, it's the final customer
>> for these two other patches. This way if someone will end up doing
>> bisecting there would be nothing interesting to see with these.
>>
>> I did finally get ci to look all green after last weeks outages. I'd
>> guess these patches are ready to be pushed but I don't have commit
>> rights to drm-tip. Are you able to help with these or I'll go bother
>> Imre or Jani to get them into tip?
> 
> Ok, if no objections I will go ahead and push this to
> drm-intel-gt-next, with the tweaked patch ordering.

No objections. I had this set yet on test run on Imre's wish on try-bot 
with forcing adlp (on bat) to use smem and results were all clean.

/Juha-Pekka
