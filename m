Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7562E24A46C
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Aug 2020 18:56:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CE1756E478;
	Wed, 19 Aug 2020 16:56:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com
 [IPv6:2607:f8b0:4864:20::1041])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8542489BF1
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 16:56:15 +0000 (UTC)
Received: by mail-pj1-x1041.google.com with SMTP id nv17so1154200pjb.3
 for <intel-gfx@lists.freedesktop.org>; Wed, 19 Aug 2020 09:56:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=DyPe34DueaqLfEcDqZqm300kn/odPwqy1uJt22bP0Z8=;
 b=XsGUJB1Hdc8az/rXuro1bWhBsdgGdQHjYKQpuunAo8x0WekUdWBNsmSDFJj67GVWVG
 5hPdTKlI6scfsCliWtIOLtIYsVj1YwZaDB5Moe7+6/awpbvAiGHWPGqlMMiQH755AjTS
 vfPiJNDbB+aPu6VjtibhyAOy9LSk3+Tr2jZ+44/eXBtbf+XOZ8K+VQwL9BGEgF8JGQKK
 5KG7zpuu/Xea1f/72jgUaeUpmt4D/ORaIe5NpGI/tYWzxvMEzO/L884n90j+BH7HiH1m
 QMIIcf8a02yI8nCtJ4GjS4kGwrIFsNa8Q8Tri7Y3/f7lv1J5QYlIRrGUMNjHynb2RGMA
 GacA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DyPe34DueaqLfEcDqZqm300kn/odPwqy1uJt22bP0Z8=;
 b=WsMRLHQl5Zma+xt111AN+XYYZrUEwY9HAoA4hAIqzHgDTgnEgbXcoqnu7w9FL6jbX+
 9KGP4NavTUif9x6iQ4AUhV/xP4Dfaen9ShcLc1kC+heY6+50UNZ7/h7vK+U4PXBlwNfg
 5GXgOsgIdzBs4ZZnw9Az6FwecYD0X4zkeSn0KlKUIQ0LaRF+HjEAVuvIaRXnRojQP7mb
 aZcVoUdpnHv5nReF5neB9pl4wtNTh4pvqS2qIO93f2hsFKQb5C/OOV64YJTw6lorEVAZ
 sDIMbod5ulPRi5fsjVh59jF/yMHgr7ndgFTCC5gnEtw0a46So/KBCXvk3HabLqzD84x6
 uHog==
X-Gm-Message-State: AOAM532LDXuth4NE6kAYX+Mf7DnHrXYnUMnX6QAc+B3PSek3hgwyZyHN
 osEvqlwyK4pU7/CUtEEveDK2fA==
X-Google-Smtp-Source: ABdhPJwmU9GVpeA/a5GSwGnni05DgMGKqd87OvDU6WClq1X+wlrKxKnBzQboSPP7uq4T48DrxExHZQ==
X-Received: by 2002:a17:90a:f2c7:: with SMTP id
 gt7mr4669042pjb.204.1597856175023; 
 Wed, 19 Aug 2020 09:56:15 -0700 (PDT)
Received: from [192.168.1.182] ([66.219.217.173])
 by smtp.gmail.com with ESMTPSA id w23sm25765910pgj.5.2020.08.19.09.56.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 19 Aug 2020 09:56:14 -0700 (PDT)
To: Allen <allen.lkml@gmail.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-2-allen.cryptic@gmail.com>
 <b5508ca4-0641-7265-2939-5f03cbfab2e2@kernel.dk>
 <202008171228.29E6B3BB@keescook>
 <161b75f1-4e88-dcdf-42e8-b22504d7525c@kernel.dk>
 <202008171246.80287CDCA@keescook>
 <df645c06-c30b-eafa-4d23-826b84f2ff48@kernel.dk>
 <1597780833.3978.3.camel@HansenPartnership.com>
 <f3312928-430c-25f3-7112-76f2754df080@kernel.dk>
 <1597849185.3875.7.camel@HansenPartnership.com>
 <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <2b1a5987-9b54-d63e-b3da-d3024505776c@kernel.dk>
Date: Wed, 19 Aug 2020 10:56:08 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <CAOMdWSJRR0BhjJK1FxD7UKxNd5sk4ycmEX6TYtJjRNR6UFAj6Q@mail.gmail.com>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] block: convert tasklets to use new
 tasklet_setup() API
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
 linux-atm-general@lists.sourceforge.net, manohar.vanga@gmail.com,
 airlied@linux.ie, linux-hyperv@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 kys@microsoft.com, anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, intel-gfx@lists.freedesktop.org,
 Jakub Kicinski <kuba@kernel.org>, mporter@kernel.crashing.org,
 jdike@addtoit.com, Kees Cook <keescook@chromium.org>, oakad@yahoo.com,
 s.hauer@pengutronix.de, linux-input@vger.kernel.org,
 linux-um@lists.infradead.org, linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, linux-parisc@vger.kernel.org,
 netdev@vger.kernel.org, martyn@welchs.me.uk, dmitry.torokhov@gmail.com,
 linux-mmc@vger.kernel.org, sre@kernel.org, linux-spi@vger.kernel.org,
 alex.bou9@gmail.com, Allen Pais <allen.cryptic@gmail.com>,
 stefanr@s5r6.in-berlin.de, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 8/19/20 9:24 AM, Allen wrote:
>> [...]
>>>> Since both threads seem to have petered out, let me suggest in
>>>> kernel.h:
>>>>
>>>> #define cast_out(ptr, container, member) \
>>>>     container_of(ptr, typeof(*container), member)
>>>>
>>>> It does what you want, the argument order is the same as
>>>> container_of with the only difference being you name the containing
>>>> structure instead of having to specify its type.
>>>
>>> Not to incessantly bike shed on the naming, but I don't like
>>> cast_out, it's not very descriptive. And it has connotations of
>>> getting rid of something, which isn't really true.
>>
>> Um, I thought it was exactly descriptive: you're casting to the outer
>> container.  I thought about following the C++ dynamic casting style, so
>> out_cast(), but that seemed a bit pejorative.  What about outer_cast()?
>>
>>> FWIW, I like the from_ part of the original naming, as it has some
>>> clues as to what is being done here. Why not just from_container()?
>>> That should immediately tell people what it does without having to
>>> look up the implementation, even before this becomes a part of the
>>> accepted coding norm.
>>
>> I'm not opposed to container_from() but it seems a little less
>> descriptive than outer_cast() but I don't really care.  I always have
>> to look up container_of() when I'm using it so this would just be
>> another macro of that type ...
>>
> 
>  So far we have a few which have been suggested as replacement
> for from_tasklet()
> 
> - out_cast() or outer_cast()
> - from_member().
> - container_from() or from_container()
> 
> from_container() sounds fine, would trimming it a bit work? like from_cont().

I like container_from() the most, since it's the closest to contain_of()
which is a well known idiom for years. The lines will already be shorter
without the need to specify the struct, so don't like the idea of
squeezing container into cont for any of them. For most people, cont is
usually short for continue, not container.

-- 
Jens Axboe

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
