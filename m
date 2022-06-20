Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 81CDD551482
	for <lists+intel-gfx@lfdr.de>; Mon, 20 Jun 2022 11:38:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A31110F71D;
	Mon, 20 Jun 2022 09:38:56 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com
 [IPv6:2a00:1450:4864:20::62d])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C037210F71D
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 09:38:55 +0000 (UTC)
Received: by mail-ej1-x62d.google.com with SMTP id o7so19951126eja.1
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 Jun 2022 02:38:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:reply-to:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=RQqPz9/aMKudKjnGmfYKQ6EOIcBwzJo2GU2OiW9KlEw=;
 b=DHGiHdRtklpDsqgIi4ewPEQj8n7IL/4wGo9Dd48n6z2IFidBVRyTx0wzyCmIhVsS35
 gULc2e7HqaYmtImETCSYwWa0zFkeyn2X0RgzEs3M5sxN3/IyyMcE65Ta+3/Xc0d6aaaq
 JSaLc7jJAkDMAmh+oUPN8IStdSfgxkiWSrTJjOMX4K3h+tzVrIaHdeO5KNTqxY4Acob9
 qci3vg+jPQMEG4A682Gbgy/NJzsH/939sQ9S/KTqQvXfpwfzxsdYkQJbnLml63r8C02i
 bRlo7mfOpYFYzGst6IU1WLM3UEDVCw87p6oKwW97az88Cu4xgqQhXK2o8L3qp9aCX7eQ
 NOQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:reply-to
 :subject:content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=RQqPz9/aMKudKjnGmfYKQ6EOIcBwzJo2GU2OiW9KlEw=;
 b=Ozjg+ISkTiTWSPfGq+7iQe7qkyHo0jE+Ig7N2CKuEc+yaAwOzkXd8QkuhRNzpKU3JG
 cNlV5nhxFIK8TDNtILCbQAm1b7lEbhXUycMg8VnfQcAsDz7xHcT4xmkfcurflZTHzPI8
 oZga5SxTAKPCvXJEAuD42nNCmf4FUR15vL0q0OA+iPHQ8ezaxAM8XYknvWnBCynqIyX7
 LAUXu6ulL08FXquI5maV2dSNxGsTl5giv0d3L9DjlM+M13Nv25jY0VSc8ulQMExm1B/m
 hFD3b8WPzCZCMwLUh91i9XOKluYGu3JrBH2YBoXqM9XO0ZVbUNXjL0OTMc8zsW2BV57x
 rgpg==
X-Gm-Message-State: AJIora/d26+uUUWx/J/cwTEnrE5YagfuDvy2ThfB5b066JbqSZml/6xa
 S0XEJsIFvjFpBXSLLDuVHwGDl5fhGXoy+Aat
X-Google-Smtp-Source: AGRyM1swfVbdTvwYFXVnwodWB70HKd5sughFs5AxtmPkEqvrpHSk+xO44wOO2tstzaf9uIMLiuvV0A==
X-Received: by 2002:a17:907:d24:b0:712:1c03:c04 with SMTP id
 gn36-20020a1709070d2400b007121c030c04mr20390932ejc.375.1655717934040; 
 Mon, 20 Jun 2022 02:38:54 -0700 (PDT)
Received: from [0.0.0.0] ([134.134.137.82])
 by smtp.googlemail.com with ESMTPSA id
 q24-20020aa7d458000000b0042aad9edc9bsm9919398edr.71.2022.06.20.02.38.51
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 20 Jun 2022 02:38:53 -0700 (PDT)
Message-ID: <8cbeb646-9052-6f05-201c-ba00f565691b@gmail.com>
Date: Mon, 20 Jun 2022 12:38:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Content-Language: en-US
To: Matthew Auld <matthew.william.auld@gmail.com>
References: <20220610121205.29645-1-juhapekka.heikkila@gmail.com>
 <20220610121205.29645-2-juhapekka.heikkila@gmail.com>
 <CAM0jSHN+eOh_iMGT9wAOGKNCegjnrKA_5Cen8LE5NfBcZhD0CA@mail.gmail.com>
 <CAM0jSHPY8ehnuFe05QZEset1-10wfk_i0+63iYFEWXmwnugtaw@mail.gmail.com>
From: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
In-Reply-To: <CAM0jSHPY8ehnuFe05QZEset1-10wfk_i0+63iYFEWXmwnugtaw@mail.gmail.com>
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

On 10.6.2022 20.43, Matthew Auld wrote:
> On Fri, 10 Jun 2022 at 15:53, Matthew Auld
> <matthew.william.auld@gmail.com> wrote:
>>
>> On Fri, 10 Jun 2022 at 13:12, Juha-Pekka Heikkila
>> <juhapekka.heikkila@gmail.com> wrote:
>>>
>>> From: CQ Tang <cq.tang@intel.com>
>>>
>>> Display might allocate a smem object and call
>>> i915_vma_pin_iomap(), the existing code will fail.
>>>
>>> This fix was suggested by Chris P Wilson, that we pin
>>> the smem with i915_gem_object_pin_map_unlocked().
>>>
>>> v2 (jheikkil): Change i915_gem_object_pin_map_unlocked to
>>>                 i915_gem_object_pin_map
>>>
>>> Signed-off-by: CQ Tang <cq.tang@intel.com>
>>> Signed-off-by: Juha-Pekka Heikkila <juhapekka.heikkila@gmail.com>
>>> Cc: Chris Wilson <chris.p.wilson@intel.com>
>>> Cc: Jari Tahvanainen <jari.tahvanainen@intel.com>
>> Reviewed-by: Matthew Auld <matthew.auld@intel.com>
> 
> Although maybe consider putting this as patch 1, and then reword the
> commit title/message to be more like "drm/i915: extend
> i915_vma_iomap()" or so, which then becomes a prep patch for
> supporting the dpt fallback to smem. Otherwise it looks like this
> patch is basically just fixing the first patch to not trigger the
> WARN_ON(), which seems iffy IMO. Each patch by itself should ideally
> be functional.

Probably easiest is to put patch 1 in as last, it's the final customer 
for these two other patches. This way if someone will end up doing 
bisecting there would be nothing interesting to see with these.

I did finally get ci to look all green after last weeks outages. I'd 
guess these patches are ready to be pushed but I don't have commit 
rights to drm-tip. Are you able to help with these or I'll go bother 
Imre or Jani to get them into tip?

/Juha-Pekka
