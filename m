Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DE432ACAA
	for <lists+intel-gfx@lfdr.de>; Wed,  3 Mar 2021 01:36:47 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6C6376E069;
	Wed,  3 Mar 2021 00:36:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com
 [IPv6:2607:f8b0:4864:20::62a])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1559F6E069
 for <intel-gfx@lists.freedesktop.org>; Wed,  3 Mar 2021 00:36:43 +0000 (UTC)
Received: by mail-pl1-x62a.google.com with SMTP id g20so13059611plo.2
 for <intel-gfx@lists.freedesktop.org>; Tue, 02 Mar 2021 16:36:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=aajgnUWNqaGRlGbVL5+QFketAj2ruGuR87eJD83xhhs=;
 b=dbDyHoiwyqga3TB0v7kiC5kjy8M8ijk7cjnf+I3y0eFIkGXvuUyCEon7+7mDoy1A55
 /GrciSSsG4y60Ov8huLL60hrBr0Gp/JGq2VOKyTRZ7hyMyyige3K8GVgPgGbYAOYDmJe
 AUE2bzeHj3nHieb3eTFYtgRIpzDANipfolp8IQl4eDGdEKDhvt533M5S/vYdfolL+qhQ
 Tx5kKy4XAtEAseuGm6qWDi0h+5zAKLLLD2Yp6+XUQEp41FHbLkSiVVCO+/Hvg8kjj+5V
 dMlZ/aD+MLWS3etII722EqQcde5oe04JqvMHQ/fwqaz/W3dZN52WYY6Gb7nXIrvcslNB
 dB4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=aajgnUWNqaGRlGbVL5+QFketAj2ruGuR87eJD83xhhs=;
 b=PGq5BX/92shF0ieHQ8iekhfq/VCmc8v5cirMou4cr1kmlNpVFJ12hv7KX3HKsVHzxd
 MVm8pe+Q8QyfX2rCnCZkEurOgDiCujwx2ej0dBQlNiOfZF5Dp/JI1GOBwJp8a3KFAH1M
 ZGbIQ5sCTJ+y8bkgZvWRXqZD/RMErqHdFhnPPoAjoNqbOt2JsPjDWuiU8IPExIGfRu1V
 7zOWMNI4FP+4EZ3QdHDQOb+nlj5iMZj6KMEUidkeuAui8PEhxR4n2YeuStw1wUraw/Yg
 9r4kzpNoZRiwT+4u/og9ZYsqFDoHA/ncst03c1Vm5zcyB8oxuPmwDlCJ3xDxQMfj2YkC
 su0Q==
X-Gm-Message-State: AOAM530WMMqu6AQZvkf4eG2k2S5/pk0k9G9TOluW18A4w2e9tJrWZCev
 11mZMrz+rY3NGa2cuVTK+1dVMpWYt/JT4A==
X-Google-Smtp-Source: ABdhPJwbfIpBJvKJ2ZBoM0bGWEYd2grc3ex2nK791VXyMo/YfRm0Fj/RIB025d3L0TgnF77PAz6mEg==
X-Received: by 2002:a17:90a:5505:: with SMTP id
 b5mr7124610pji.194.1614731802520; 
 Tue, 02 Mar 2021 16:36:42 -0800 (PST)
Received: from [192.168.1.134] ([66.219.217.173])
 by smtp.gmail.com with ESMTPSA id l15sm4712281pjq.9.2021.03.02.16.36.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 02 Mar 2021 16:36:42 -0800 (PST)
From: Jens Axboe <axboe@kernel.dk>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Dave Airlie <airlied@gmail.com>
References: <e12dfaac0aa242f4a10d8c5b920a98db@intel.com>
 <51946a94b1154605bd7dda2c77ab12fc@intel.com>
 <fb8a2d722d4b4c008eeb1ffae87233be@intel.com>
 <CAPM=9tzLJAgjo=+JCNJrVaz3RY3D66tG+zdw_nCCTQGSwFbwCg@mail.gmail.com>
 <CAHk-=whxZJXkuvX2j56QH6ANA_girjWK3nQCPJGuOWwfYEgtag@mail.gmail.com>
 <CAPM=9twngQ=T6WgJBVje9PUtYrSa4LyZgsMZKEykCRc_MObrHw@mail.gmail.com>
 <CAHk-=wjyoO7Evytd_DxEhx1yFKf2GNvBjynhgRkHFkeqyxcQAw@mail.gmail.com>
 <e5eceeca-c13d-efea-bbf7-c1d94ab81685@kernel.dk>
Message-ID: <f436251f-2eab-df40-7d0a-0f32b40f5996@kernel.dk>
Date: Tue, 2 Mar 2021 17:36:39 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <e5eceeca-c13d-efea-bbf7-c1d94ab81685@kernel.dk>
Content-Language: en-US
Subject: Re: [Intel-gfx] Public i915 CI shardruns are disabled
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>, "Sarvela,
 Tomi P" <tomi.p.sarvela@intel.com>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Andrew Morton <akpm@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 3/2/21 5:15 PM, Jens Axboe wrote:
> On 3/2/21 4:56 PM, Linus Torvalds wrote:
>> On Tue, Mar 2, 2021 at 3:38 PM Dave Airlie <airlied@gmail.com> wrote:
>>>
>>> Looks like Jens saw it at least, he posted this on twitter a few mins
>>> ago so I assume it'll be incoming soon.
>>>
>>> https://git.kernel.dk/cgit/linux-block/commit/?h=swap-fix
>>
>> Ahh. You use a swap file. This might be the same thing that I think
>> the phoronix people hit as ext4 corruption this merge window.
>>
>> Jens, if that can get confirmed, please send it my way asap.. Thanks,
> 
> Yep, it's the same issue indeed. Was made aware of it after lunch today
> and emailed Christoph, but then decided to dig into it myself a few
> hours later. Andrew already queued it up I just saw, but I noticed that
> that version will break on !CONFIG_HIBERNATION.
> 
> Patch below if you just want to grab it.

Or if you want a pull, just let me know. Have another misc patch to
flush out anyway that doesn't belong in any of my usual branches.

-- 
Jens Axboe

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
